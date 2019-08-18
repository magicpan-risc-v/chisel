
package cpu;

import chisel3._
import chisel3.util._

// 这个MMU是真的

class MMU extends Module {
  val io = IO(new Bundle{
    val en    = Input(Bool())

    val mem = new MMUOp  // MEM  -> MMU
    val insr = new MMUOp // InstReader -> MMU
    val insr_rst = Input(Bool())

    val csr = Input(new CSR_MMU) // CSR -> MMU

    val if_iom = Flipped(new RAMOp)  // MMU -> IOManager
    val mem_iom = Flipped(new RAMOp)  // MMU -> IOManager
  })

  // MMU 的 IO：
  //   en目前没有被用到，如果在仿真中初始化遇到问题，可以接进来，连CPU的en
  //   mem 和insr分别接MEM和IF段对MMU的接口，包括RAMOp和一个PageFault信号
  //   insr_rst接IF段重置信号，用于在发生跳转时，IOManager访存结束不发回ready而是进行jump后地址的访存，如果需要修改最好直接找我
  //   csr接CSR
  //   if_iom和mem_iom分别接IOManager的两个接口

  // 两个PTW和if_status、mem_status两个状态机，分别控制两路的地址转换
  // waitNone : 空闲状态，受到访存需求时，如果页表开启跳到waitPTW，否则进waitIO
  // waitPTW  : 等待PTW完成的状态
  // waitIO   : 对IOManager发起实地址的访问请求，等待返回的状态
  // 
  // 下面csr、if_mode、mem_mode、if_addr、mem_addr、if_rst都是缓存访问请求的寄存器，以免在访存过程中因为上层需求变化而不稳定
  // if_pha和mem_pha是用来存实地址的寄存器
  val ptw_if  = Module(new PTW)
  val ptw_mem = Module(new PTW)
  val tlb     = Module(new TLB)

  val csr     = RegInit(0.U.asTypeOf(new CSR_MMU))

  val waitNone::waitPTW::waitIO:: Nil = Enum(3)
  val if_status  = RegInit(waitNone)
  val if_mode    = RegInit(15.U(4.W))
  val if_addr    = RegInit(0.U(64.W))
  val if_pha     = RegInit(0.U(64.W))
  val if_rst     = RegInit(false.B)
  val mem_status = RegInit(waitNone)
  val mem_mode   = RegInit(15.U(4.W))
  val mem_addr   = RegInit(0.U(64.W))
  val mem_pha    = RegInit(0.U(64.W))

  val if_free    = if_status === waitNone
  val mem_free   = mem_status === waitNone

  // 当且仅当访存空闲状态下，CSR才会被更新
  // real_csr表示在MMU工作时用到的CSR
  val real_csr   = Mux(if_free && mem_free, io.csr, csr)

  // PTW返回的PTE
  val ptw_if_pte  = ptw_if.io.rsp
  val ptw_mem_pte = ptw_mem.io.rsp

  // e_if和e_mem分别对应的是IF和MEM段的访存是否要pageFault
  // PTW自带的pf接口进行了一部分判断
  // 关于各种触发pageFault的类型，应该没错，如果写错了可以检查手册
  val e_if_user   = real_csr.priv === Priv.U && !ptw_if_pte.U
  val e_if_exec   = !ptw_if_pte.X
  val e_if        = ptw_if.io.pf || e_if_user || e_if_exec

  val e_mem_user  = real_csr.priv === Priv.U && !ptw_mem_pte.U
  val e_mem_read  = MEMT.isRead(io.mem.mode) && !(ptw_mem_pte.R || (ptw_mem_pte.X && real_csr.mxr))
  val e_mem_write = MEMT.isWrite(io.mem.mode) && !ptw_mem_pte.W
  val e_mem_sum   = real_csr.priv === Priv.S && !real_csr.sum && ptw_mem_pte.U
  val e_mem       = ptw_mem.io.pf || e_mem_user || e_mem_read || e_mem_write || e_mem_sum
  
  // MMU使能标志，在去年的代码中他们用了csr.priv =/= Priv.M这个条件，现在这里删掉了
  val mmu_en  = real_csr.satp(63,60) === 8.U(4.W) //&& csr.priv =/= Priv.M//false.B
  val is_mem  = io.mem.mode =/= MEMT.NOP
  val is_if   = io.insr.mode =/= MEMT.NOP && !is_mem

  val offset     = 0xffffffff40000000L.S(64.W).asUInt

  val serial_va  = 0x123456789abcdef0L.S(64.W).asUInt
  val serial_pa  = 0x807ffff8L.U(64.W)

  // enable  MMU : virtual address
  // disable MMU : virtual address ?! - offset

  // 以下分别是：来自上层（经过位移）的地址、PTW读出的地址和TLB读出的地址
  val real_if_addr  = Mux(mmu_en, io.insr.addr, io.insr.addr - offset)
  val real_mem_addr = Mux(mmu_en, io.mem.addr,  io.mem.addr  - offset)
  val ptw_if_addr   = Cat(0.U(25.W), ptw_if_pte.ppn.cat,  if_addr(11,0))
  val ptw_mem_addr  = Cat(0.U(25.W), ptw_mem_pte.ppn.cat, mem_addr(11,0))
  val tlb_if_addr   = Cat(0.U(25.W), tlb.io.query.rsp.ppn.cat, real_if_addr(11,0))
  val tlb_mem_addr  = Cat(0.U(25.W), tlb.io.query.rsp.ppn.cat, real_mem_addr(11,0))

  // 来自SATP的root页号
  val root          = real_csr.satp(26,0).asTypeOf(new PN)
  
  // 以下全都是初始值
  io.if_iom.mode    := MEMT.NOP//io.insr.mode
  io.if_iom.addr    := real_if_addr
  io.if_iom.wdata   := 0.U(64.W)
  io.insr.rdata     := io.if_iom.rdata
  io.mem_iom.mode   := MEMT.NOP//io.mem.mode
  io.mem_iom.addr   := real_mem_addr
  io.mem.rdata      := io.mem_iom.rdata
  io.mem_iom.wdata  := io.mem.wdata

  io.insr.ready     := false.B
  io.mem.ready      := false.B 
  io.insr.pageFault := false.B
  io.mem.pageFault  := false.B

  ptw_if.io.root    := root
  ptw_mem.io.root   := root

  ptw_if.io.mem.ready  := io.if_iom.ready
  ptw_if.io.mem.rdata  := io.if_iom.rdata
  ptw_mem.io.mem.ready := io.mem_iom.ready
  ptw_mem.io.mem.rdata := io.mem_iom.rdata

  ptw_if.io.req.p2 := io.insr.addr(38,30)
  ptw_if.io.req.p1 := io.insr.addr(29,21)
  ptw_if.io.req.p0 := io.insr.addr(20,12)
  ptw_if.io.req.valid := false.B

  ptw_mem.io.req.p2 := io.mem.addr(38,30)
  ptw_mem.io.req.p1 := io.mem.addr(29,21)
  ptw_mem.io.req.p0 := io.mem.addr(20,12)
  ptw_mem.io.req.valid := false.B

  tlb.io.modify.vpn  := 0.U(27.W).asTypeOf(new PN)
  tlb.io.modify.pte  := 0.U(64.W).asTypeOf(new PTE)
  tlb.io.modify.mode := TLBT.NOP

  tlb.io.query.req.p2 := 0.U(9.W)
  tlb.io.query.req.p1 := 0.U(9.W)
  tlb.io.query.req.p0 := 0.U(9.W)
  tlb.io.query.req.valid := false.B

  // 如果MMU关上了，就把TLB清空
  // FENCE指令清TLB现在没做，也是用TLB这个modify接口可以做
  when (!mmu_en) {
    tlb.io.modify.mode := TLBT.CLR
  }

  // 访存空闲时更新CSR寄存器
  when (if_free && mem_free) {
    csr := io.csr
  }

  // 保存if_rst，因为这个信号直接连InsReader的jump，下一个周期可能就没了
  when (io.insr_rst) {
    if_rst := true.B
  }

  // IF的状态机
  switch (if_status) {
    is(waitNone) { 
      when (is_if && mem_free) {
        // 访存空闲且MEM不同时要求访存的情况下，进入IF的访存
        io.if_iom.mode    := io.insr.mode
        if_mode   := io.insr.mode
        if_addr   := real_if_addr
        if_rst    := false.B
        when (mmu_en) {
          // 如果页表打开，首先去查TLB（组合逻辑）
          tlb.io.query.req.p2 := io.insr.addr(38,30)
          tlb.io.query.req.p1 := io.insr.addr(29,21)
          tlb.io.query.req.p0 := io.insr.addr(20,12)
          tlb.io.query.req.valid := true.B

          // TLB没有查到的情况下去查PTW，否则直接跳waitIO
          // 如果页表没打开也是直接跳waitIO
          when (tlb.io.query.miss) {
            if_status := waitPTW
            ptw_if.io.req.valid := true.B
            io.if_iom.mode      := ptw_if.io.mem.mode
            io.if_iom.addr      := ptw_if.io.mem.addr
          } .otherwise {
            // TLB hit
            if_status := waitIO
            io.if_iom.addr      := tlb_if_addr
            if_pha    := tlb_if_addr
          }
        } .otherwise {
          if_status := waitIO
          if_pha    := real_if_addr
        }
      }
    }
    is (waitPTW) {
      // 等待PTW的期间，if_iom一直是和PTW的mem端连着的
      io.if_iom.mode      := ptw_if.io.mem.mode
      io.if_iom.addr      := ptw_if.io.mem.addr
      when (ptw_if.io.ready) {
        // PTW访存结束之后，如果有pageFault，报出来并且直接返回
        //     这个时候rdata的值是无效值
        // 如果没有pageFault，把读出来的地址放在if_pha传到waitIO去
        //     同时更新TLB的一个表项
        when (e_if) {
          io.insr.pageFault  := true.B
          io.insr.ready      := true.B
          if_status          := waitNone
        } .otherwise {
          if_status          := waitIO
          if_pha             := ptw_if_addr

          // update TLB
          tlb.io.modify.mode := TLBT.INS
          tlb.io.modify.vpn  := if_addr(38,12).asTypeOf(new PN)
          tlb.io.modify.pte  := ptw_if_pte
        }
      }
    }

    is (waitIO) { 
      io.if_iom.mode    := if_mode
      io.if_iom.addr := if_pha
      when (io.if_iom.ready) {
        if_status := waitNone
        when (/*if_addr === real_if_addr && */!if_rst && !io.insr_rst) {
          // 之前用作判断的if_addr === real_if_addr这个条件现在不要了，否则会引发无限访存错误
          // 现在的设计下，如果取指过程中发生jump，if_rst或者本周期的io.insr_rst总会提醒这里
          // 那么当rst没有的时候，这里就报一个ready，不然的话用新的addr重新从waitNone开始读一遍
          // if jump, give here a rst and repeat IF
          io.insr.ready := true.B
        } .otherwise {
          if_addr := real_if_addr
          if_pha  := real_if_addr
        }
      }
    }
  }

  switch (mem_status) {
    is (waitNone) { 
      when (is_mem && if_free) {
        io.mem_iom.mode   := io.mem.mode
        mem_mode   := io.mem.mode
        mem_addr   := real_mem_addr

        when (mmu_en) {
          
          when (io.mem.addr === serial_va) {
            mem_status := waitIO
            io.mem_iom.addr      := serial_pa
            mem_pha              := serial_pa
          } .otherwise {
            tlb.io.query.req.p2 := io.mem.addr(38,30)
            tlb.io.query.req.p1 := io.mem.addr(29,21)
            tlb.io.query.req.p0 := io.mem.addr(20,12)
            tlb.io.query.req.valid := true.B

            when (tlb.io.query.miss) {
              mem_status := waitPTW
              ptw_mem.io.req.valid := true.B
              io.mem_iom.mode      := ptw_mem.io.mem.mode
              io.mem_iom.addr      := ptw_mem.io.mem.addr
            } .otherwise {
              mem_status := waitIO
              io.mem_iom.addr      := tlb_mem_addr
              mem_pha    := tlb_mem_addr
            }
          }
          
        } .otherwise {
          mem_status := waitIO
          mem_pha    := real_mem_addr
          // MEM部分的状态机和IF几乎一样
          // 这个地方不太一样，是为了应对源隆那边以前写操作只要一个周期的情况，给了一个立刻返回的功能
          // 在确认无误的状态下，下面这个when可以删掉
          when (io.mem_iom.ready) {
            mem_status    := waitNone
            io.mem.ready  := true.B
          }
        }
      }
    }
    is (waitPTW) {
      io.mem_iom.mode      := ptw_mem.io.mem.mode
      io.mem_iom.addr      := ptw_mem.io.mem.addr
      when (ptw_mem.io.ready) {
        when (e_mem) {
          io.mem.pageFault  := true.B
          io.mem.ready      := true.B
          mem_status        := waitNone
        } .otherwise {
          mem_status        := waitIO
          mem_pha           := ptw_mem_addr

          // update TLB
          tlb.io.modify.mode := TLBT.INS
          tlb.io.modify.vpn  := mem_addr(38,12).asTypeOf(new PN)
          tlb.io.modify.pte  := ptw_mem_pte
        }
      }
    }
    is(waitIO) {
      io.mem_iom.mode   := mem_mode
      io.mem_iom.addr := mem_pha
      when (io.mem_iom.ready) {
        mem_status := waitNone
        io.mem.ready  := true.B
      }
    }
  }
}

package cpu;

import chisel3._
import chisel3.util._

class CSR extends Module {
  val io = IO(new Bundle {
    val id = Flipped(new ID_CSR)
    val mem = Flipped(new MEM_CSR)
    val mmu = new CSR_MMU

    val flush = Output(Bool())  // 清空流水线
    val csrNewPc = Output(UInt(64.W)) // 新的PC

    val external_inter = Input(Valid(UInt(32.W)))  // 外部中断信号
    val inter = Output(Valid(UInt(32.W)))
  })

  val nextPrv = Wire(UInt(2.W))
  val prv     = RegNext(nextPrv, init=Priv.M) // 维护当前特权级
  nextPrv := prv

  val csr = Mem(0x400, UInt(64.W))  // all csrs
  object ADDR {
    // M Info
    val mvendorid = "hF11".U
    val marchid   = "hF12".U
    val mimpid    = "hF13".U
    val mhartid   = "hF14".U
    //M Trap Setup
    val mstatus   = "h300".U
    val misa      = "h301".U
    val medeleg   = "h302".U
    val mideleg   = "h303".U
    val mie       = "h304".U
    val mtvec     = "h305".U
    val mcounteren= "h306".U
    //M Trap Hangding
    val mscratch  = "h340".U
    val mepc      = "h341".U
    val mcause    = "h342".U
    val mtval     = "h343".U
    val mip       = "h344".U
    //S Trap Setup
    val sstatus   = "h100".U
    val sedeleg   = "h102".U
    val sideleg   = "h103".U
    val sie       = "h104".U
    val stvec     = "h105".U
    val scounteren= "h106".U
    //S Trap Hangding
    val sscratch  = "h140".U
    val sepc      = "h141".U
    val scause    = "h142".U
    val stval     = "h143".U
    val sip       = "h144".U
    // S Protection and Translation
    val satp      = "h180".U
    // U Trap Setup
    val utvec     = "h005".U
    // U Trap Hangding
    val uscratch  = "h040".U
    val uepc      = "h041".U
    val ucause    = "h042".U
    val utval     = "h043".U
    val uip       = "h044".U
    // emmmm..
    val mtimecmp  = "h321".U
    // time
    val time      = "hC01".U
    val cycle     = "hC00".U
  }

  class MStatus extends Bundle {
    val SD = Bool()
    val zero1 = UInt(27.W)
    val SXL = UInt(2.W)
    val UXL = UInt(2.W)
    val TSR = Bool()
    val zero2 = UInt(9.W)
    val TW = Bool()
    val TVM = Bool()
    val MXR = Bool()
    val SUM = Bool()
    val MPriv = Bool()
    val XS = UInt(2.W)
    val FS = UInt(2.W)
    val MPP = UInt(2.W)
    val old_HPP = UInt(2.W)
    val SPP = UInt(1.W)
    val MPIE = Bool()
    val old_HPIE = Bool()
    val SPIE = Bool()
    val UPIE = Bool()
    val MIE = Bool()
    val old_HIE = Bool()
    val SIE = Bool()
    val UIE = Bool()
  }
  val mstatus = RegInit(0.U.asTypeOf(new MStatus))
  val mtime   = RegInit(0.U(64.W))
  mtime := mtime + 1.U

  io.id.rdata := MuxLookup(io.id.addr, csr(io.id.addr), Seq(
    ADDR.mvendorid -> 2333.U(64.W),
    ADDR.marchid -> "h8fffffff".U(32.W),
    ADDR.mimpid -> 2333.U(64.W),
    ADDR.mhartid -> 0.U(64.W),
    ADDR.misa -> 0.U(64.W),
    ADDR.mstatus -> mstatus.asUInt,
    ADDR.sstatus -> mstatus.asUInt,
    ADDR.sie -> csr(ADDR.mie),
    ADDR.sip -> csr(ADDR.mip),
    ADDR.time -> mtime,
    ADDR.cycle -> mtime
  ))
  io.id.priv := prv

  io.mmu.satp := csr(ADDR.satp)
  io.mmu.priv := prv
  io.mmu.sum  := mstatus.SUM
  io.mmu.mxr  := mstatus.MXR

  val csr_ids = ADDR.getClass.getDeclaredFields.map(f => {
    f.setAccessible(true)
    f.get(ADDR).asInstanceOf[UInt]
  })
  when(io.mem.wrCSROp.valid) {
    for(i <- csr_ids) {
      when(i === io.mem.wrCSROp.csr_idx) {
        csr(i) := io.mem.wrCSROp.csr_data
        printf("set csr[%x] = 0x%x\n", i, io.mem.wrCSROp.csr_data)
        printf("mtime %x \n", mtime)
      }
    }
    when(io.mem.wrCSROp.csr_idx === ADDR.mstatus) {
      mstatus := io.mem.wrCSROp.csr_data.asTypeOf(new MStatus)
    }
    when(io.mem.wrCSROp.csr_idx === ADDR.sstatus) {
      mstatus := io.mem.wrCSROp.csr_data.asTypeOf(new MStatus)
    }
  }

  // Alias
  val mepc = csr(ADDR.mepc)
  val sepc = csr(ADDR.sepc)
  val uepc = csr(ADDR.uepc)
  val mcause = csr(ADDR.mcause)
  val scause = csr(ADDR.scause)
  val ucause = csr(ADDR.ucause)
  val mtvec  = csr(ADDR.mtvec)
  val stvec  = csr(ADDR.stvec)
  val utvec  = csr(ADDR.utvec)
  val mtval  = csr(ADDR.mtval)
  val stval  = csr(ADDR.stval)
  val utval  = csr(ADDR.utval)
  val medeleg = csr(ADDR.medeleg)
  val mideleg = csr(ADDR.mideleg)
  val sedeleg = csr(ADDR.sedeleg)
  val sideleg = csr(ADDR.sideleg)
  val mie     = csr(ADDR.mie)
  val mip     = csr(ADDR.mip)
  val mtimecmp = csr(ADDR.mtimecmp)

  val ie = MuxLookup(prv, false.B, Seq(
    Priv.M -> mstatus.MIE,
    Priv.S -> mstatus.SIE,
    Priv.U -> mstatus.UIE
  ))
  val ei = io.external_inter.valid
  val time_inter = (mtime >= mtimecmp)

  csr(ADDR.mip) := Cat(
    0.U(52.W),
    (prv === Priv.M) && ei,
    0.U(1.W),
    (prv === Priv.S) && ei,
    (prv === Priv.U) && ei,

    (prv === Priv.M) && time_inter,
    0.U(1.W),
    (prv === Priv.S) && time_inter,
    (prv === Priv.U) && time_inter,
    mip(3,0)
  )

    val ipie = mip & mie
    val ipie_m = ipie & ~mideleg
    val ipie_s = ipie & mideleg
    // interrupt code
    val ic = PriorityMux(Seq(
      (ipie_m(11),  11.U),
      (ipie_m( 9),   9.U),
      (ipie_m( 8),   8.U),

      (ipie_m( 7),   7.U),
      (ipie_m( 5),   5.U),
      (ipie_m( 4),   4.U),

      (ipie_m( 3),   3.U),
      (ipie_m( 1),   1.U),
      (ipie_m( 0),   0.U),

      (ipie_s(11),  11.U),
      (ipie_s( 9),   9.U),
      (ipie_s( 8),   8.U),

      (ipie_s( 7),   7.U),
      (ipie_s( 5),   5.U),
      (ipie_s( 4),   4.U),

      (ipie_s( 3),   3.U),
      (ipie_s( 1),   1.U),
      (ipie_s( 0),   0.U),

      (true.B,     0.U)
    ))
    
    val inter_new_mode = Mux( mideleg(ic), Priv.S, Priv.M)
    val inter_enable   = (inter_new_mode > prv) || ((inter_new_mode === prv) && ie)

    io.inter.valid := inter_enable && ipie.orR
    io.inter.bits  := (Cause.Interrupt << 31) | ic

    val epc = io.mem.excep.pc
    val have_excep = io.mem.excep.valid
    val cause = io.mem.excep.code

    io.flush := have_excep
    io.csrNewPc := 0.U

    when(have_excep) {
      when(Cause.isRet(cause)) {  // xRET
        switch(Cause.retX(cause)) {
          is(Priv.M) {
            mstatus.MIE := mstatus.MPIE
            mstatus.MPIE := 1.U
            mstatus.MPP := Priv.U
            nextPrv := mstatus.MPP
            io.csrNewPc := mepc
          }
          is(Priv.S) {
            mstatus.SIE := mstatus.SPIE
            mstatus.SPIE := 1.U
            mstatus.SPP := 0.U
            nextPrv := mstatus.SPP
            io.csrNewPc := sepc
          }
          is(Priv.U) {
            mstatus.UIE := mstatus.MPIE
            mstatus.UPIE := 1.U
            nextPrv := Priv.U
            io.csrNewPc := uepc
          }
        }
      }.elsewhen(cause.asUInt === Cause.SFenceOne || cause.asUInt === Cause.SFenceAll) {  // SFence 语句
      }.otherwise{  // Interrupt or Exception
        val epc = io.mem.excep.pc
        val tval = io.mem.excep.value
        nextPrv := PriorityMux(Seq(
          (!cause(31) && !medeleg(cause(4,0)), Priv.M),
          ( cause(31) && !mideleg(cause(4,0)), Priv.M),
          (!cause(31) && !sedeleg(cause(4,0)), Priv.S),
          ( cause(31) && !sideleg(cause(4,0)), Priv.S),
          (true.B,                             Priv.U)
        ))
        switch(nextPrv) {
          is(Priv.M) {
            mstatus.MPIE := mstatus.MIE
            mstatus.MIE  := 0.U
            mepc := epc
            mcause := cause
            mtval := tval
          }
          is(Priv.S) {
            mstatus.SPIE := mstatus.SIE
            mstatus.SIE  := 0.U
            sepc := epc
            scause := cause
            stval := tval
          }
          is(Priv.U) {
            mstatus.UPIE := mstatus.UIE
            mstatus.UIE  := 0.U
            uepc := epc
            ucause := cause
            utval := tval
          }
        }
        val xtvec = MuxLookup(nextPrv, 0.U, Seq(
          Priv.M -> mtvec,
          Priv.S -> stvec,
          Priv.U -> utvec
        ))

        val pcA4 = Cat(xtvec(31,2), 0.U(2.W))
        io.csrNewPc := Mux(xtvec(1,0) === 0.U,
          pcA4,
          pcA4 + 4.U * cause
        )
      }
    }
}

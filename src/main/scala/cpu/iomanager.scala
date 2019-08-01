package cpu;

import chisel3._
import chisel3.util._

object MemoryRegionExt {
  val RAM_BEGIN    = 0x80000000L.U(64.W)
  // val RAM_END      = 0x00800000L.U(64.W)
  // val SERIAL_BEGIN = 0x10000000L.U(64.W)
  // val SERIAL_END   = 0x10000008L.U(64.W)
  val RAM_END      = 0x807ffff8L.U(64.W)
  val SERIAL_BEGIN = 0x807ffff8L.U(64.W)
  val SERIAL_END   = 0x80800000L.U(64.W)

  implicit def region(addr: UInt) = new {
    def atRAM = addr >= RAM_BEGIN && addr < RAM_END
    def atSerial = addr >= SERIAL_BEGIN && addr < SERIAL_END
  }
}

class IOManager extends Module {
    val io =  IO(new Bundle {
        val mem_if  = new RAMOp // IF段的需求
        val mem_mem = new RAMOp // MEM段的需求
        val mem_out = Flipped(new RAMOp) // 传递给RAM的需求
        val serial_out = Flipped(new RAMOp) // 传递给Serial的需求

        val debug_if_wait  = Output(UInt(2.W))
        val debug_mem_wait = Output(UInt(2.W))
        val debug_if_ready = Output(Bool())
        val debug_mem_ready = Output(Bool())
    })
    // 定义空设备，初始化是所有接口接入到空设备
    val null_dev = Module(new Module{
      val io = IO(new RAMOp)
      io.ready := false.B
      io.rdata := 0.U
    })

    val null_user = Module(new Module{
      val io = IO(Flipped(new RAMOp))
      io.mode := 15.U(4.W)
      io.addr := 0.U
      io.wdata := 0.U
    })
    io.mem_mem <> null_dev.io
    io.mem_if  <> null_dev.io
    io.mem_out     <> null_user.io
    io.serial_out  <> null_user.io

    import MemoryRegionExt.region
    
    // 定义关于IF段和MEM段访存状态的状态机
    val waitNone :: waitRAM :: waitSerial :: Nil = Enum(3)
    val ifWait = RegInit(waitNone)
    val memWait = RegInit(waitNone)
    private val mem = io.mem_mem
    private val if_ = io.mem_if

    // 将device的输出绑定为user的输入
    def bindOutput(user: RAMOp, device: RAMOp): Unit = {
      user.rdata := device.rdata
      user.ready := device.ready
    }  
    // 将device的输入绑定为user的输出
    def bindInput(user: RAMOp, device: RAMOp): Unit = {
      device.wdata := user.wdata
      device.mode  := user.mode
      device.addr  := user.addr
    }  
    def handleOutput(status: UInt, user: RAMOp): Unit = {
      switch(status) {
        is(waitRAM)     { bindOutput(user, io.mem_out) }
        is(waitSerial)  { bindOutput(user, io.serial_out) }
      }
    }
    handleOutput(ifWait, if_)
    handleOutput(memWait, mem)

    ifWait := Mux(ifWait =/= waitNone && !if_.ready, ifWait, waitNone)
    memWait := Mux(memWait =/= waitNone && !mem.ready, memWait, waitNone)

    when (true.B) {
      // printf("mode  = %d\n", io.mem_if.mode)
      // printf("addr  = %x\n", io.mem_if.addr)
      // printf("ready = %d\n", io.mem_if.ready)
      // printf("rdata = %x\n", io.mem_if.rdata)
      // printf("status = %d\n", ifWait)
    }

    // 整合时序逻辑，优先访存，然后取指令
    
    when(memWait === waitNone && ifWait === waitNone && mem.mode =/= MEMT.NOP) {
      when(mem.addr.atRAM) {
        bindInput(mem, io.mem_out)

        // when(MEMT.isWrite(mem.mode)) {
        //     memWait := waitNone
        //     mem.ready := true.B
        // }.otherwise {
            memWait := waitRAM
            mem.ready := false.B
        //}
      }.elsewhen(mem.addr.atSerial) {
        bindInput(mem, io.serial_out)
        // when(MEMT.isWrite(mem.mode)) {
        //     memWait := waitNone
        //     mem.ready := true.B
        // }.otherwise {
            memWait := waitSerial
            mem.ready := false.B
        //}
      }.otherwise {
        printf("[IO] MEM access invalid address: %x\n", mem.addr)
      }
    }

    // Handle IF only when MEM is none
    when(ifWait === waitNone && memWait === waitNone && mem.mode === MEMT.NOP && if_.mode =/= MEMT.NOP) {
        when(if_.addr.atRAM) {
            bindInput(if_, io.mem_out)
            ifWait := waitRAM     // Readonly, always wait
            if_.ready := false.B
        }.otherwise {
            printf("[IO] IF access invalid address: %x\n", if_.addr)
        }
    }

    // debug
    io.debug_if_wait := ifWait
    io.debug_if_ready := if_.ready
    io.debug_mem_wait := memWait
    io.debug_mem_ready := mem.ready


/*
    val nmn = io.mem_mem.mode === MEMT.NOP // no MEM need

    io.mem_if.rdata  := Mux(nmn, io.mem_out.rdata, 0.U(64.W))
    io.mem_mem.rdata := Mux(nmn, 0.U(64.W), io.mem_out.rdata)
    io.mem_out.mode  := Mux(nmn, io.mem_if.mode,  io.mem_mem.mode)
    io.mem_out.addr := Mux(nmn, io.mem_if.addr, io.mem_mem.addr)
    //io.mem_out.waddr := io.mem_mem.waddr
    io.mem_out.wdata := io.mem_mem.wdata
    */
}

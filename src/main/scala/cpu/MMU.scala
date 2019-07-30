package cpu;

import chisel3._
import chisel3.util._

class MMU extends Module {
  val io = IO(new Bundle{
    val insr = new IF_MMU // InstReader -> MMU
    val mem = new MEM_MMU  // MEM  -> MMU
    val if_iom = Flipped(new RAMOp)  // MMU -> IOManager
    val mem_iom = Flipped(new RAMOp)  // MMU -> IOManager
  })

  val if_addr = RegInit(0.U(64.W))
  val real_addr = io.insr.addr -  0xC0020000L.U(64.W)

  // FIXME 
  io.if_iom.mode    := io.insr.mode
  io.if_iom.addr   := real_addr
  io.if_iom.wdata    := 0.U(64.W)
  io.insr.rdata     := io.if_iom.rdata
  io.mem_iom.mode   := io.mem.mode
  io.mem_iom.addr  := io.mem.addr - 0xC0020000L.U(64.W)
  io.mem.rdata      := io.mem_iom.rdata
  io.mem_iom.wdata  := io.mem.wdata

  io.insr.ready  := io.if_iom.ready && (if_addr === real_addr)
  io.mem.ready  := io.mem_iom.ready

  when (io.if_iom.ready) {
    if_addr       := real_addr
  }
  
  //io.insr.pageFault := false.B
  //io.mem.pageFault  := false.B
}

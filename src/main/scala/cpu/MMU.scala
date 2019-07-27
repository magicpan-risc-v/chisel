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

  // FIXME 
  io.if_iom.mode    := io.insr.mode
  io.if_iom.raddr   := io.insr.raddr
  io.insr.rdata     := io.if_iom.rdata
  io.mem_iom.mode   := io.mem.mode
  io.mem_iom.raddr  := io.mem.raddr
  io.mem.rdata      := io.mem_iom.rdata
  io.mem_iom.waddr  := io.mem.waddr
  io.mem_iom.wdata  := io.mem.wdata
  //io.insr.pageFault := false.B
  //io.mem.pageFault  := false.B
}

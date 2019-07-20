package cpu;

import chisel3._
import chisel3.util._

class MMU extends Module {
  val io = IO(new Bundle{
    val insr = Flipped(new MMUOp) // InstReader -> MMU
    val mem = Flipped(new MMUOp)  // MEM  -> MMU
    val iom = new Memory  // MMU -> IOManager
  })
}

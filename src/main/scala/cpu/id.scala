package cpu;

import chisel3._
import chisel3.util._

class ID extends Module {
  val io = IO(new Bundle {
  })
  val decoder = new Decoder
}

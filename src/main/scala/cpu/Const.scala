package cpu;

import chisel3._
import chisel3.util._

// for CSRs  BEGIN

object CSRMODE {
  val NOP = 0.U(2.W)
  val RW  = 1.U(2.W)
  val RS  = 2.U(2.W)
  val RC  = 3.U(2.W)
}

object Priv {
  val M = 3.U(2.W)
  val S = 1.U(2.W)
  val U = 0.U(2.W)
}

// for CSRs  END

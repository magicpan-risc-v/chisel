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

object Cause {
  val Interrupt = 1.U(1.W)
  val Exception = 0.U(1.W)

  // software interrupt
  val USI = 0.U
  val SSI = 1.U
  val HSI = 2.U
  val MSI = 3.U

  // timer interrupt
  val UTI = 4.U
  val STI = 5.U
  val HTI = 6.U
  val MTI = 7.U

  // External interrupt
  val UEI = 8.U
  val SEI = 9.U
  val HEI = 10.U
  val MEI = 11.U

  val InstAddressMisaligned  = 0.U
  val InstAccessFault        = 1.U
  val IllegalInstruction     = 2.U
  val BreakPoint             = 3.U
  val LoadAddressMisaligned  = 4.U
  val LoadAccessFault        = 5.U
  val StoreAddressMisaligned = 6.U
  val StoreAccessFault       = 7.U
  val ECallU                 = 8.U
  val ECallS                 = 9.U
  val ECallM                 = 11.U
  val InstPageFault          = 12.U
  val LoadPageFault          = 13.U
  val StorePageFault         = 15.U

  // Internal use
  val URet      = 16.U
  val SRet      = 17.U
  val MRet      = 19.U
  val SFenceOne = 20.U
  val SFenceAll = 21.U

  // Helper
  def ecallX(prv: UInt) = 8.U | prv(1, 0)
  def xRet(prv: UInt) = 16.U | prv(1, 0)
  def isRet(cause: UInt) = cause(31,2) === 16.U(32.W)(31,2)
  def retX(cause: UInt) = cause(1,0)
}

object SYS_INST_P2 { // bits(24:20)
  def ECALL  = "b00000".U
  def EBREAK = "b00001".U
  def xRET   = "b00010".U
/*
  def URET   = "b0000000000100000000000000".U
  def SRET   = "b0001000000100000000000000".U
  def MRET   = "b0011000000100000000000000".U
*/
}

object SYS_INST_P1 { //bits(31:25)
  def SFENCE_VMA = "b0001001".U

}
// for CSRs  END

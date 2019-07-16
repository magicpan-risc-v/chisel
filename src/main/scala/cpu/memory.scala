package cpu;

import chisel3._
import chisel3.util._

object MEMT {
    val NOP = "b1111".U(4.W)
    val LB  = "b1000".U(4.W)
    val LBU = "b1100".U(4.W)
    val LH  = "b1001".U(4.W)
    val LHU = "b1101".U(4.W)
    val LW  = "b1010".U(4.W)
    val LWU = "b1110".U(4.W)
    val LD  = "b1011".U(4.W)
    val SB  = "b0000".U(4.W)
    val SH  = "b0001".U(4.W)
    val SW  = "b0010".U(4.W)
    val SD  = "b0011".U(4.W)
}

class Memory extends Bundle {

    val mode = Input(UInt(4.W))

    // reader
    val raddr = Input(UInt(64.W))
    val rdata = Output(UInt(64.W))
    
    // writer
    val waddr = Input(UInt(64.W))
    val wdata = Input(UInt(64.W))

}


package cpu;

import chisel3._
import chisel3.util._

class Memory extends Bundle {

    // reader
    val ren   = Input(Bool())
    val raddr = Input(UInt(64.W))
    val rdata = Output(UInt(64.W))
    val rok   = Output(Bool())
    
    // writer
    val wen   = Input(Bool())
    val waddr = Input(UInt(64.W))
    val wdata = Input(UInt(64.W))
    val wok   = Output(Bool())
}


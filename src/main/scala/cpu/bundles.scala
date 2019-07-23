package cpu;

import chisel3._
import chisel3.util._

// Register related
class RegReader extends Bundle {
    val r1 = Input(UInt(5.W))
    val r2 = Input(UInt(5.W))
    val r1d = Output(UInt(64.W))
    val r2d = Output(UInt(64.W))
}

class RegWriter extends Bundle {
    val wen = Input(Bool()) // 使能端
    val w = Input(UInt(5.W))
    val wd = Input(UInt(64.W))
}

class Reg extends Bundle {
    val r = new RegReader
    val w = new RegWriter
}

class WriteBackReg extends Bundle {
    val wbrv     = Output(Bool()) // write back reg valid
    val wbri     = Output(UInt(5.W)) // write back reg index
    val wbrd     = Output(UInt(64.W)) // write back reg data
}

class RAMRead extends Bundle {
    val mode = Input(UInt(4.W))

    // reader
    val raddr = Input(UInt(64.W))
    val rdata = Output(UInt(64.W))
}

// Read/Write Memory
class RAMOp extends RAMRead {
    // writer
    val waddr = Input(UInt(64.W))
    val wdata = Input(UInt(64.W))
}

class IF_MMU extends RAMRead {
  //val pageFault = Output(Bool())
}

class MEM_MMU extends RAMOp {
  //val pageFault = Output(Bool())
}

// Instruction Decoder <> RegFile
class DecoderReg extends Bundle {
    val rs1_valid = Output(Bool())
    val rs2_valid = Output(Bool())
    val rs1_index = Output(UInt(5.W))
    val rs2_index = Output(UInt(5.W))
    val rs1_value = Output(UInt(64.W))
    val rs2_value = Output(UInt(64.W))
    
    val rd_valid  = Output(Bool())
    val rd_index  = Output(UInt(5.W))
}

class CoreIO extends Bundle {
  val iff = new RAMRead()
  val mem = new RAMOp()
}

class ID_CSR extends Bundle {
  val addr = Output(UInt(12.W)) // 要读取的CSR的编号
  val rdata = Input(UInt(64.W)) // 读取到的CSR的内容
  val priv  = Input(UInt(2.W)) // 当前的特权级
}

class LastLoadInfo extends Bundle {
  val valid = Output(Bool())
  val index = Output(UInt(5.W))
}

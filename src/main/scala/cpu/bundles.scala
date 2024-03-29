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

    val pass = Input(Bool())
}

class WriteBackReg extends Bundle {
    val wbrv     = Output(Bool()) // write back reg valid
    val wbri     = Output(UInt(5.W)) // write back reg index
    val wbrd     = Output(UInt(64.W)) // write back reg data
}

class RAMRead extends Bundle {
    val mode = Input(UInt(4.W))
    val ready = Output(Bool())

    // reader
    val addr = Input(UInt(64.W))
    val rdata = Output(UInt(64.W))
}

// Read/Write Memory
class RAMOp extends RAMRead {
    // writer
    //val waddr = Input(UInt(64.W))
    val wdata = Input(UInt(64.W))
}

class MMUOp extends RAMOp {
    val pageFault = Output(Bool())
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

class WrCsrReg extends Bundle {
  val valid = Input(Bool())
  val csr_idx = Input(UInt(12.W))
  val csr_data = Input(UInt(64.W))
}

class CsrWriteBack extends Bundle {
  val valid = Input(Bool())
  val index = Input(UInt(12.W))
  val data  = Input(UInt(64.W))
}

class LastLoadInfo extends Bundle {
  val valid = Output(Bool())
  val index = Output(UInt(5.W))
}

class MEM_CSR extends Bundle {
  val wrCSROp = Output(new WrCsrReg)
  val excep   = Output(new Exception)
  // TODO inter exception code
}

class CSR_MMU extends Bundle {
  val satp = UInt(64.W)
  val priv = UInt(2.W)
  val mxr  = Bool()
  val sum  = Bool()
}

class Exception extends Bundle {
  val valid = Output(Bool())    // 是否确实发生异常
  val code  = Output(UInt(64.W))  // 异常号
  val value = Output(UInt(64.W))  // 写入xtval中的信息
  val pc    = Output(UInt(64.W))  // pc
  val inst_valid = Output(Bool())
}

//class CSR_MMU extends Bundle {
  //val satp  = Output(UInt(32.W))  // 虚拟内存模式，Bare or Sv39 or Sv48
  //val flush = Output(new FlushOp) // 清空部件
  //val priv  = Output(UInt(2.W)) // 当前所处的特权模式
  //val mxr   = Output(Bool())    // 可执行部分是否可读
  //val sum   = Output(Bool())    // 监管者模式下是否可以处理用户态代码
//}

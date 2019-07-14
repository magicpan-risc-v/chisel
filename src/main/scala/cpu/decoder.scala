package cpu;

import chisel3._
import chisel3.util._

class Decoder extends Module {
    val io =  IO(new Bundle {
        val ins  = Input(UInt(32.W))
        val imm  = Output(UInt(64.W))
        val ALUOp    = Output(UInt(4.W))
        val ins_type = Output(UInt(3.W))
    })

    val itype = Module(new InsType)
    val immg = Module(new ImmGen)
    val alug = Module(new ALUGen)
    
    itype.io.ins      <> io.ins
    immg.io.ins       <> io.ins
    alug.io.ins       <> io.ins
    itype.io.ins_type <> immg.io.ins_type
    itype.io.ins_type <> alug.io.ins_type
    immg.io.imm       <> io.imm
    alug.io.ALUOp     <> io.ALUOp
    

}
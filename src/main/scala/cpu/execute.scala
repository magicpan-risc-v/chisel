package cpu;

import chisel3._
import chisel3.util._

class WriteBackReg extends Bundle {
    val wbrv     = Output(Bool()) // write back reg valid
    val wbri     = Output(UInt(5.W)) // write back reg index
    val wbrd     = Output(UInt(64.W)) // write back reg data
}

class Execute extends Module {
    val io =  IO(new Bundle {
        val imm  = Input(UInt(64.W))
        val ALUOp    = Input(UInt(4.W))
        val ins_type = Input(UInt(3.W))
        val exe_type = Input(UInt(3.W))

        val dreg = Flipped(new DecoderReg)

        val wreg = new WriteBackReg
    })

    val alu = Module(new ALU)
    val alu_inputB = Mux(io.dreg.rs2_valid, io.imm, io.dreg.rs2_value)

    alu.io.ALUOp  <> io.ALUOp
    alu.io.inputA <> io.dreg.rs1_value
    alu.io.inputB <> alu_inputB
    alu.io.output <> io.wreg.wbrd
    
    io.wreg.wbrv := io.dreg.rd_valid
    io.wreg.wbri := io.dreg.rd_index

}
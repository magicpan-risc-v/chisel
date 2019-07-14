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
        val en   = Input(Bool())
        val imm  = Input(UInt(64.W))
        val ALUOp    = Input(UInt(4.W))
        val ins_type = Input(UInt(3.W))
        val exe_type = Input(UInt(3.W))

        val dreg = Flipped(new DecoderReg)

        val wreg = new WriteBackReg
    })

    val alu = Module(new ALU)
    val alu_inputB = Mux(io.dreg.rs2_valid, io.dreg.rs2_value, io.imm)

    val rd_valid = RegInit(false.B)
    val rd_index = RegInit(0.U(5.W))
    val rd_value = RegInit(0.U(64.W))

    alu.io.ALUOp  <> io.ALUOp
    alu.io.inputA <> io.dreg.rs1_value
    alu.io.inputB <> alu_inputB

    when (io.en) {
        rd_valid := io.dreg.rd_valid
        rd_index := io.dreg.rd_index
        rd_value := alu.io.output
    }

    io.wreg.wbrv := rd_valid
    io.wreg.wbri := rd_index
    io.wreg.wbrd := rd_value

}
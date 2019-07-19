package cpu;

import chisel3._
import chisel3.util._

class Execute extends Module {
    val io =  IO(new Bundle {
        val imm      = Input(UInt(64.W))
        val ALUOp    = Input(UInt(4.W))
        val pc       = Input(UInt(64.W))
        val exe_type = Input(UInt(3.W))
        val br_type  = Input(UInt(3.W))
        val op32     = Input(Bool())

        val dreg = Flipped(new DecoderReg)

        val nls  = Output(Bool())
        val addr = Output(UInt(64.W)) // addr for load or write
        val data = Output(UInt(64.W)) // data for write
        val jump = Output(Bool())
        val jdest = Output(UInt(64.W))
        val wreg = new WriteBackReg
    })

    val alu = Module(new ALU)
    val los = Module(new LoadStore)
    val bra = Module(new Branch)
    val alu_inputB = Mux(io.dreg.rs2_valid, io.dreg.rs2_value, io.imm)
    val bvalid = io.exe_type === EXT.BRANCH

    alu.io.ALUOp  <> io.ALUOp
    alu.io.inputA <> io.dreg.rs1_value
    alu.io.inputB <> alu_inputB
    alu.io.op32   <> io.op32
    io.wreg.wbrv  <> io.dreg.rd_valid
    io.wreg.wbri  <> io.dreg.rd_index
    io.wreg.wbrd  <> alu.io.output

    los.io.dreg   <> io.dreg
    los.io.aluo   <> alu.io.output
    los.io.addr   <> io.addr
    los.io.data   <> io.data
    
    bra.io.bvalid <> bvalid
    bra.io.branch_type <> io.br_type
    bra.io.input1 <> io.dreg.rs1_value
    bra.io.input2 <> io.dreg.rs2_value
    bra.io.pc     <> io.pc
    bra.io.imm    <> io.imm
    bra.io.jump   <> io.jump
    bra.io.jdest  <> io.jdest

    io.nls := io.exe_type === EXT.LOS
}

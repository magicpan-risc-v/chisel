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

        val dreg  = Flipped(new DecoderReg)
        val lreg  = Flipped(new WriteBackReg)
        val llreg = Flipped(new WriteBackReg)

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
    val rsl = Module(new RegSelector)

    val alu_inputB = Mux(rsl.io.sreg.rs2_valid, rsl.io.sreg.rs2_value, io.imm)
    val bvalid = io.exe_type === EXT.BRANCH
    val jvalid = io.exe_type === EXT.JUMP
    val nls  = io.exe_type === EXT.LOS
    val wbrv = rsl.io.sreg.rd_valid && !nls // 是否在EX阶段取到了写回值
    val wbrd = MuxLookup(io.exe_type, alu.io.output, Seq(
        EXT.JUMP  -> Mux(rsl.io.sreg.rd_index === 0.U, 0.U(64.W), io.pc + 4.U),
        EXT.LUI   -> io.imm,
        EXT.AUIPC -> (io.imm + io.pc)
    ))
    val jump = bra.io.jump || jvalid
    val jdest = Mux(jvalid, 
        Mux(rsl.io.sreg.rs1_valid, rsl.io.sreg.rs1_value + io.imm, io.pc + io.imm),
        bra.io.jdest
    )

    rsl.io.dreg   <> io.dreg
    rsl.io.lreg   <> io.lreg
    rsl.io.llreg  <> io.llreg

    alu.io.ALUOp  <> io.ALUOp
    alu.io.inputA <> rsl.io.sreg.rs1_value
    alu.io.inputB <> alu_inputB
    alu.io.op32   <> io.op32

    io.wreg.wbrv  <> wbrv
    io.wreg.wbri  <> rsl.io.sreg.rd_index
    io.wreg.wbrd  <> wbrd

    los.io.dreg   <> rsl.io.sreg
    los.io.aluo   <> alu.io.output
    los.io.addr   <> io.addr
    los.io.data   <> io.data
    
    bra.io.bvalid <> bvalid
    bra.io.branch_type <> io.br_type
    bra.io.input1 <> rsl.io.sreg.rs1_value
    bra.io.input2 <> rsl.io.sreg.rs2_value
    bra.io.pc     <> io.pc
    bra.io.imm    <> io.imm

    io.jump       <> jump
    io.jdest      <> jdest

    io.nls := nls
}

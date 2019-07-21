package cpu;

import chisel3._
import chisel3.util._

class Decoder extends Module {
    val io =  IO(new Bundle {
        val ins  = Input(UInt(32.W))
        val llv  = Input(Bool())
        val lli  = Input(UInt(5.W))

        val imm  = Output(UInt(64.W))
        val ALUOp    = Output(UInt(4.W))
        val exe_type = Output(UInt(3.W))
        val ls_mode  = Output(UInt(4.W))
        val br_type  = Output(UInt(3.W))
        val op32     = Output(Bool())
        val load_valid = Output(Bool())
        val load_index = Output(UInt(5.W))
        val bubble   = Output(Bool()) // IF: bubble

        val regr = Flipped(new RegReader)
        val dreg = new DecoderReg
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
    immg.io.uns       <> itype.io.uns
    alug.io.ALUOp     <> io.ALUOp
    io.exe_type       <> itype.io.exe_type
    io.op32           <> itype.io.op32

    val rs1_index = io.ins(19,15)
    val rs2_index = io.ins(24,20)
    val rd_index  = io.ins(11,7)
    val rs2_valid = (itype.io.ins_type === INST.R_TYPE || itype.io.ins_type === INST.S_TYPE || itype.io.ins_type === INST.B_TYPE)
    val rs1_valid = rs2_valid || itype.io.ins_type === INST.I_TYPE
    val rd_valid  = (itype.io.ins_type === INST.R_TYPE || itype.io.ins_type === INST.I_TYPE || itype.io.ins_type === INST.U_TYPE || itype.io.ins_type === INST.J_TYPE)
    val ls_mode   = Mux(
        itype.io.exe_type === EXT.LOS,
        Cat(!io.ins(5), io.ins(14,12)),
        MEMT.NOP
    )
    val bubble    = io.llv && ((rs1_valid && io.lli === rs1_index) || (rs2_valid && io.lli === rs2_index))

    io.dreg.rs2_valid := rs2_valid
    io.dreg.rs1_valid := rs1_valid
    io.dreg.rd_valid  := rd_valid
    io.dreg.rd_index  := rd_index
    io.dreg.rs1_index := rs1_index
    io.dreg.rs2_index := rs2_index
    io.regr.r1        := rs1_index
    io.regr.r2        := rs2_index
    io.dreg.rs1_value := io.regr.r1d
    io.dreg.rs2_value := io.regr.r2d

    io.ls_mode        := ls_mode
    io.br_type        := io.ins(14,12)
    io.load_valid     := ls_mode =/= MEMT.NOP && ls_mode(3)
    io.load_index     := rd_index
    io.bubble         := bubble
}

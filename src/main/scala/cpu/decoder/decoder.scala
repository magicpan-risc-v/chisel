package cpu;

import chisel3._
import chisel3.util._

class Decoder extends Module {
    val io =  IO(new Bundle {
        val ins  = Input(UInt(32.W))

        val lastload = Flipped(new LastLoadInfo)
        val loadinfo = new LastLoadInfo

        val imm  = Output(UInt(64.W))
        val ALUOp    = Output(UInt(4.W))
        val exe_type = Output(UInt(3.W))
        val ls_mode  = Output(UInt(4.W))
        val br_type  = Output(UInt(3.W))
        val op32     = Output(Bool())
        val bubble   = Output(Bool()) // IF: bubble

        val regr = Flipped(new RegReader)
        val dreg = new DecoderReg

        val csr = new ID_CSR
        val csr_content = Flipped(new WrCsrReg)
        val csr_cal = Output(Bool())
        val csr_imm = Output(Bool())

        val csr_from_ex = new WrCsrReg
        val csr_from_mem = new WrCsrReg
        val csr_from_wb = new WrCsrReg

        val exWrReg = Flipped(new WriteBackReg)
        val memWrReg = Flipped(new WriteBackReg)

        //val excep = Output(new Exception)
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
    io.exe_type       <> itype.io.exe_type
    io.op32           <> itype.io.op32

    val rs1_index = io.ins(19,15)
    val rs2_index = io.ins(24,20)
    val rs1_value = PriorityMux(Seq(
      (io.exWrReg.wbrv && io.exWrReg.wbri === rs1_index,    io.exWrReg.wbrd),
      (io.memWrReg.wbrv && io.memWrReg.wbri === rs1_index, io.memWrReg.wbrd),
      (true.B,                                                  io.regr.r1d)
    ))
    val rs2_value = PriorityMux(Seq(
      (io.exWrReg.wbrv && io.exWrReg.wbri === rs2_index,    io.exWrReg.wbrd),
      (io.memWrReg.wbrv && io.memWrReg.wbri === rs2_index, io.memWrReg.wbrd),
      (true.B,                                                  io.regr.r2d)
    ))
    val rd_index  = io.ins(11,7)
    val rs2_valid = (itype.io.ins_type === INST.R_TYPE || itype.io.ins_type === INST.S_TYPE || itype.io.ins_type === INST.B_TYPE)
    val rs1_valid = rs2_valid || itype.io.ins_type === INST.I_TYPE
    val rd_valid  = 
      (itype.io.ins_type === INST.R_TYPE || itype.io.ins_type === INST.I_TYPE || itype.io.ins_type === INST.U_TYPE || itype.io.ins_type === INST.J_TYPE) && 
      (rd_index =/= 0.U) &&
      !itype.io.is_ecall && !itype.io.is_ebreak
    val ls_mode   = Mux(
        itype.io.exe_type === EXT.LOS,
        Cat(!io.ins(5), io.ins(14,12)),
        MEMT.NOP
    )
    val bubble    = io.lastload.valid && ((rs1_valid && io.lastload.index === rs1_index) || (rs2_valid && io.lastload.index === rs2_index))

    val csr_valid = itype.io.exe_type === EXT.SYS && io.ins(14,12).orR


    io.dreg.rs2_valid := rs2_valid
    io.dreg.rs1_valid := rs1_valid
    io.dreg.rd_valid  := rd_valid
    io.dreg.rd_index  := rd_index
    io.regr.r1        := rs1_index
    io.regr.r2        := rs2_index
    io.dreg.rs1_value := rs1_value
    io.dreg.rs2_value := rs2_value

    io.ls_mode        := ls_mode
    io.br_type        := io.ins(14,12)
    io.loadinfo.valid     := ls_mode =/= MEMT.NOP && ls_mode(3)
    io.loadinfo.index     := rd_index
    io.bubble         := bubble

    io.csr.addr       := io.ins(31,20)
    io.csr_imm        := itype.io.csr_imm
    io.csr_cal        := itype.io.csr_cal
    io.csr_content.valid    := csr_valid
    io.csr_content.csr_idx     := io.ins(31,20)

    io.csr_content.csr_data := PriorityMux(Seq(
        (io.csr.addr === io.csr_from_ex.csr_idx && io.csr_from_ex.valid, io.csr_from_ex.csr_data),
        (io.csr.addr === io.csr_from_mem.csr_idx && io.csr_from_mem.valid, io.csr_from_mem.csr_data),
        (true.B,io.csr.rdata)
    ))
}

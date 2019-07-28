package cpu;

import chisel3._
import chisel3.util._

class CPU extends Module {
    val io =  IO(new Bundle {
        val en  = Input(Bool())
        val mem = Flipped(new RAMOp)
        val serial = Flipped(new RAMOp)
    })

    val insr = Module(new InsReader)
    val insd = Module(new Decoder)
    val exec = Module(new Execute)
    val memc = Module(new MemoryCtrl)
    val wrbk = Module(new WriteBack)
    val regc = Module(new RegCtrl)
    val mmu  = Module(new MMU)
    val iomn = Module(new IOManager)
    val if_id  = Module(new IF_ID)
    val id_ex  = Module(new ID_EX)
    val ex_mem = Module(new EX_MEM)
    val mem_wb = Module(new MEM_WB)
    val csr    = Module(new CSR)
    
    // IO
    insr.io.mmu    <> mmu.io.insr
    mmu.io.if_iom  <> iomn.io.mem_if
    memc.io.mem    <> mmu.io.mem
    mmu.io.mem_iom <> iomn.io.mem_mem
    io.mem         <> iomn.io.mem_out
    io.serial      <> iomn.io.serial_out

    // Reg
    insd.io.regr  <> regc.io.r
    wrbk.io.reg   <> regc.io.w

    // RegSelector
    insd.io.exWrReg  <> exec.io.wreg
    insd.io.memWrReg <> memc.io.wreg

    // IF
    insr.io.jump   := csr.io.flush | exec.io.jump
    insr.io.jdest  := Mux(csr.io.flush, csr.io.csrNewPc,  exec.io.jdest)
    insr.io.jdest  <> exec.io.jdest
    insr.io.nls    <> ex_mem.io.nlso
    insr.io.bubble <> insd.io.bubble

    // pass
    if_id.io.pass  <> memc.io.ready
    id_ex.io.pass  <> memc.io.ready
    ex_mem.io.pass <> memc.io.ready
    mem_wb.io.pass <> memc.io.ready
    regc.io.pass   <> memc.io.ready

    // IF_ID
    if_id.io.en    <> io.en
    if_id.io.insci <> insr.io.insn
    if_id.io.icdi  <> insr.io.insnd
    if_id.io.insi  <> insr.io.ins
    if_id.io.pci   <> insr.io.pc
    if_id.io.lastloadin <> insd.io.loadinfo
    if_id.io.excep_i    <> insr.io.excep

    if_id.io.pco   <> insr.io.lpc
    if_id.io.inso  <> insd.io.ins
    if_id.io.insco <> insr.io.insp
    if_id.io.icdo  <> insr.io.inspd
    if_id.io.lastloadout <> insd.io.lastload
    if_id.io.excep_o     <> insd.io.if_excep

    // ID_EX
    id_ex.io.en     <> io.en
    id_ex.io.bid    <> insd.io.bubble
    id_ex.io.bex    <> exec.io.jump

    id_ex.io.immi   <> insd.io.imm
    id_ex.io.ALUOpi <> insd.io.ALUOp
    id_ex.io.exeti  <> insd.io.exe_type
    id_ex.io.pci    <> if_id.io.pco
    id_ex.io.dregi  <> insd.io.dreg
    id_ex.io.lsmi   <> insd.io.ls_mode
    id_ex.io.op32i  <> insd.io.op32
    id_ex.io.csr_wb_i  <> insd.io.csr_content
    id_ex.io.excep_i   <> insd.io.ex_excep
    
    id_ex.io.immo   <> exec.io.imm
    id_ex.io.ALUOpo <> exec.io.ALUOp
    id_ex.io.exeto  <> exec.io.exe_type
    id_ex.io.pco    <> exec.io.pc
    id_ex.io.drego  <> exec.io.dreg
    id_ex.io.op32o  <> exec.io.op32
    id_ex.io.csr_wb_o  <> exec.io.csr_op
    id_ex.io.excep_o   <> exec.io.id_excep

    // EX_MEM
    ex_mem.io.en    <> io.en
    ex_mem.io.lsmi  <> id_ex.io.lsmo
    ex_mem.io.nlsi  <> exec.io.nls
    ex_mem.io.wregi <> exec.io.wreg
    ex_mem.io.addri <> exec.io.addr
    ex_mem.io.datai <> exec.io.data
    ex_mem.io.csr_wb_i <> exec.io.wcsr
    ex_mem.io.excep_i  <> exec.io.mem_excep
    ex_mem.io.inter_i  <> csr.io.inter

    ex_mem.io.nlso  <> memc.io.nls
    ex_mem.io.wrego <> memc.io.ereg
    ex_mem.io.lsmo  <> memc.io.lsm
    ex_mem.io.addro <> memc.io.addr
    ex_mem.io.datao <> memc.io.data
    ex_mem.io.csr_wb_o <> memc.io.csr_wb
    ex_mem.io.excep_o  <> memc.io.excep
    ex_mem.io.inter_o  <> memc.io.inter

    // MEM_WB
    mem_wb.io.en    <> io.en
    mem_wb.io.wregi <> memc.io.wreg
    mem_wb.io.wrego <> wrbk.io.wreg

    // CSR round
    insd.io.csr_from_ex <> exec.io.wcsr
    insd.io.csr_from_mem <> ex_mem.io.csr_wb_o

    // CSR
    insd.io.csr     <> csr.io.id
    memc.io.csr     <> csr.io.mem
    csr.io.external_inter.valid := false.B  // 忽略外部中断，不实现
    csr.io.external_inter.bits  := 0.U

    // flush
    if_id.io.pass   := !csr.io.flush
    id_ex.io.flush  <> csr.io.flush
}

object CPU extends App {
    chisel3.Driver.execute(args, () => new CPU);
}

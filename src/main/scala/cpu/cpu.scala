package cpu;

import chisel3._
import chisel3.util._

class CPU extends Module {
    val io =  IO(new Bundle {
        val en  = Input(Bool())
        val mem = Flipped(new RAMOp)
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
    
    // IO
    insr.io.mmu    <> mmu.io.insr
    mmu.io.if_iom  <> iomn.io.mem_if
    memc.io.mem    <> mmu.io.mem
    mmu.io.mem_iom <> iomn.io.mem_mem
    io.mem         <> iomn.io.mem_out

    // Reg
    insd.io.regr  <> regc.io.r
    wrbk.io.reg   <> regc.io.w

    // RegSelector
    exec.io.lreg  <> ex_mem.io.wrego
    exec.io.llreg <> mem_wb.io.wrego

    // IF
    insr.io.jump   <> exec.io.jump
    insr.io.jdest  <> exec.io.jdest
    insr.io.nls    <> ex_mem.io.nlso
    insr.io.bubble <> insd.io.bubble

    // IF_ID
    if_id.io.en    <> io.en
    if_id.io.insci <> insr.io.insn
    if_id.io.insi  <> insr.io.ins
    if_id.io.pci   <> insr.io.pc
    if_id.io.lvi   <> insd.io.load_valid
    if_id.io.lii   <> insd.io.load_index

    if_id.io.pco   <> insr.io.lpc
    if_id.io.inso  <> insd.io.ins
    if_id.io.insco <> insr.io.insp
    if_id.io.lvo   <> insd.io.llv
    if_id.io.lio   <> insd.io.lli

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
    id_ex.io.brti   <> insd.io.br_type
    id_ex.io.op32i  <> insd.io.op32
    
    id_ex.io.immo   <> exec.io.imm
    id_ex.io.ALUOpo <> exec.io.ALUOp
    id_ex.io.exeto  <> exec.io.exe_type
    id_ex.io.pco    <> exec.io.pc
    id_ex.io.drego  <> exec.io.dreg
    id_ex.io.brto   <> exec.io.br_type
    id_ex.io.op32o  <> exec.io.op32

    // EX_MEM
    ex_mem.io.en    <> io.en
    ex_mem.io.lsmi  <> id_ex.io.lsmo
    ex_mem.io.nlsi  <> exec.io.nls
    ex_mem.io.wregi <> exec.io.wreg
    ex_mem.io.addri <> exec.io.addr
    ex_mem.io.datai <> exec.io.data

    ex_mem.io.nlso  <> memc.io.nls
    ex_mem.io.wrego <> memc.io.ereg
    ex_mem.io.lsmo  <> memc.io.lsm
    ex_mem.io.addro <> memc.io.addr
    ex_mem.io.datao <> memc.io.data

    // MEM_WB
    mem_wb.io.en    <> io.en
    mem_wb.io.wregi <> memc.io.wreg
    mem_wb.io.wrego <> wrbk.io.wreg

    //// 貌似一定要在writeback连一根线，不然这些模块都会被优化掉
    //io.wbd        <> wrbk.io.reg.wd//insd.io.dreg.rs2_valid
}

object CPU extends App {
    chisel3.Driver.execute(args, () => new CPU);
}

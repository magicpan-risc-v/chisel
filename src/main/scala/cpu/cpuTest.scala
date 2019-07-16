package cpu;

import chisel3._
import chisel3.util._

// 用于测试的CPU
class CPUTest extends Module {
    val io =  IO(new Bundle {
        val en   = Input(Bool())
        val init = Input(Bool()) 
        val dd   = Input(UInt(8.W))

        val wbd  = Output(UInt(64.W)) // 无意义输出
    })

    val insr = Module(new InsReader)
    val insd = Module(new Decoder)
    val exec = Module(new Execute)
    val memc = Module(new MemoryCtrl)
    val wrbk = Module(new WriteBack)
    val regc = Module(new RegCtrl)
    val iomn = Module(new IOManager)
    //val if_id = Module(new IF_ID) // IF_ID段封装在InsReader内部
    val id_ex  = Module(new ID_EX)
    val ex_mem = Module(new EX_MEM)
    val mem_wb = Module(new MEM_WB)
    
    // IO
    insr.io.mem   <> iomn.io.mem_if
    memc.io.mem   <> iomn.io.mem_mem

    // Reg
    insd.io.regr  <> regc.io.r
    wrbk.io.reg   <> regc.io.w

    // IF
    insr.io.jump  <> exec.io.jump
    insr.io.jdest <> exec.io.jdest
    insr.io.nls   <> ex_mem.io.nlso

    // IF_ID
    insr.io.en    <> io.en
    insr.io.ins   <> insd.io.ins

    // ID_EX
    id_ex.io.en     <> io.en
    id_ex.io.immi   <> insd.io.imm
    id_ex.io.ALUOpi <> insd.io.ALUOp
    id_ex.io.exeti  <> insd.io.exe_type
    id_ex.io.pci    <> insr.io.pc
    id_ex.io.dregi  <> insd.io.dreg
    id_ex.io.lsmi   <> insd.io.ls_mode
    id_ex.io.brti   <> insd.io.br_type
    
    id_ex.io.immo   <> exec.io.imm
    id_ex.io.ALUOpo <> exec.io.ALUOp
    id_ex.io.exeto  <> exec.io.exe_type
    id_ex.io.pco    <> exec.io.pc
    id_ex.io.drego  <> exec.io.dreg
    id_ex.io.brto   <> exec.io.br_type

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

    // for test
    val memt = Module(new MemoryTest)
    memt.io.mem   <> iomn.io.mem_out
    io.init       <> memt.io.init
    io.dd         <> memt.io.dd

    // 貌似一定要在writeback连一根线，不然这些模块都会被优化掉
    io.wbd        <> wrbk.io.reg.wd//insd.io.dreg.rs2_valid
}

object CPUTest extends App {
    chisel3.Driver.execute(args, () => new CPUTest);
}
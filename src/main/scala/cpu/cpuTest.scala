package cpu;

import chisel3._
import chisel3.util._

// 用于测试的CPU
class CPUTest extends Module {
    val io =  IO(new Bundle {
        //val mem = Flipped(new Memory)
        
        // for test
        val en   = Input(Bool())
        val init = Input(Bool()) 
        val wbd  = Output(UInt(64.W))
    })

    val insr = Module(new InsReader)
    val insd = Module(new Decoder)
    val exec = Module(new Execute)
    val memc = Module(new MemoryCtrl)
    val wrbk = Module(new WriteBack)
    val regc = Module(new RegCtrl)
    val iomn = Module(new IOManager)
    //val if_id = Module(new IF_ID) // IF_ID段封装在InsReader内部
    val id_ex = Module(new ID_EX)
    
    // IO
    insr.io.mem   <> iomn.io.mem_if
    memc.io.mem   <> iomn.io.mem_mem

    // Reg
    insd.io.regr  <> regc.io.r
    wrbk.io.reg   <> regc.io.w

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
    
    id_ex.io.immo   <> exec.io.imm
    id_ex.io.ALUOpo <> exec.io.ALUOp
    id_ex.io.exeto  <> exec.io.exe_type
    id_ex.io.pco    <> exec.io.pc
    id_ex.io.drego  <> exec.io.dreg


    exec.io.wreg  <> memc.io.ereg
    memc.io.wreg  <> wrbk.io.wreg


    // for test
    val memt = Module(new MemoryTest)
    memt.io.mem   <> iomn.io.mem_out
    io.init       <> memt.io.init

    // 貌似一定要在writeback连一根线，不然这些模块都会被优化掉
    io.wbd        <> wrbk.io.reg.wd//insd.io.dreg.rs2_valid
}

object CPUTest extends App {
    chisel3.Driver.execute(args, () => new CPUTest);
}
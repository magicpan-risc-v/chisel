package cpu;

import chisel3._
import chisel3.util._

class CPU extends Module {
    val io =  IO(new Bundle {
       // val mem = Flipped(new Memory)
        
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
    
    //insr.io.mem   <> io.mem
    //insr.io.pc
    insr.io.ins   <> insd.io.ins
    insd.io.regr  <> regc.io.r
    insd.io.imm   <> exec.io.imm
    insd.io.ALUOp <> exec.io.ALUOp
    insd.io.ins_type <> exec.io.ins_type
    insd.io.exe_type <> exec.io.exe_type
    insd.io.dreg  <> exec.io.dreg
    exec.io.wreg  <> memc.io.ereg
    memc.io.wreg  <> wrbk.io.wreg
    wrbk.io.reg   <> regc.io.w


    // for test
    val memt = Module(new MemoryTest)
    memt.io.mem   <> insr.io.mem
    io.init       <> memt.io.init
    io.wbd        <> insr.io.ins//wrbk.io.reg.wd//insd.io.dreg.rs2_valid

    insr.io.en    <> io.en
    exec.io.en    <> io.en

    insr.io.jump  := false.B
    insr.io.jdest := 0.U(64.W)
}
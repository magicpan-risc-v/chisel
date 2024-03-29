package cpu;

import chisel3._
import chisel3.util._

class ID_EX extends Module {
    val io =  IO(new Bundle {
        val en    = Input(Bool())
        val bid   = Input(Bool()) // from Decoder, bubble all
        val bex   = Input(Bool()) // from EX
        val flush = Input(Bool())

        val pass  = Input(Bool())

        val immi   = Input(UInt(64.W))
        val ALUOpi = Input(UInt(5.W))
        val exeti  = Input(UInt(4.W))
        val pci    = Input(UInt(64.W))
        val lsmi   = Input(UInt(4.W))
        val op32i  = Input(Bool())
        val csr_wb_i = new WrCsrReg
        val dregi  = Flipped(new DecoderReg)
        val excep_i = Flipped(new Exception)
        val mul_div_i = Input(Bool())

        val immo   = Output(UInt(64.W))
        val ALUOpo = Output(UInt(5.W))
        val exeto  = Output(UInt(4.W))
        val pco    = Output(UInt(64.W))
        val lsmo   = Output(UInt(4.W))
        val op32o  = Output(Bool())
        val csr_wb_o  = Flipped(new WrCsrReg)
        val drego  = new DecoderReg
        val excep_o = new Exception
        val ready  = Output(Bool())
    })

    val imm   = RegInit(0.U(64.W))
    val ALUOp = RegInit(0.U(4.W))
    val exet  = RegInit(0.U(4.W))
    val pc    = RegInit(0.U(64.W))
    val regInfo = RegInit(0.U.asTypeOf(new DecoderReg))
    val lsm   = RegInit(15.U(4.W))
    val op32  = RegInit(false.B)

    val bubble = io.bid || io.bex || io.flush
    val bm     = Mux(bubble, 0.U(64.W), 0xffffffffffffffffL.S(64.W).asUInt)

    val csr_wb  = RegInit(0.U.asTypeOf(new WrCsrReg))
    val excep  = RegInit(0.U.asTypeOf(new Exception))

    val mul_counter = RegInit(0.U(3.W))   // 乘除运算计时器

    io.immo   := imm
    io.ALUOpo := ALUOp
    io.exeto  := exet
    io.pco    := pc
    io.drego := regInfo
    io.lsmo   := lsm
    io.op32o  := op32
    io.csr_wb_o  := csr_wb
    io.excep_o := excep

    when (io.en && io.pass) {
        imm   := io.immi   & bm
        ALUOp := io.ALUOpi & bm(3,0)
        exet  := io.exeti  & bm(3,0)
        pc    := io.pci
        regInfo := Mux(bm(0), io.dregi, 0.U.asTypeOf(new DecoderReg))
        lsm   := Mux(bubble, MEMT.NOP, io.lsmi)
        op32  := io.op32i && bm(0)
        when(bubble) {
          csr_wb := 0.U.asTypeOf(new WrCsrReg)
        }.otherwise {
          csr_wb  := io.csr_wb_i
        }
        excep.code := Mux(bm(0), io.excep_i.code, 0.U(32.W))
        excep.value := Mux(bm(0), io.excep_i.value, 0.U(32.W))
        excep.valid := Mux(bm(0), io.excep_i.valid, false.B)
        excep.pc := io.excep_i.pc
        excep.inst_valid := Mux(bm(0), io.excep_i.inst_valid, false.B)

        mul_counter := Mux(io.mul_div_i, 7.U(3.W), 0.U(3.W))

        //printf("ID_EX  : ALUOp = %d\n", ALUOp)
        
        //printf("ID_EX  : op32  = %d\n", op32)
        //printf("ID_EX  : rs1d  = %x\n", regInfo.rs1_value)
        //printf("ID_EX  : rs2d  = %x\n", regInfo.rs2_value)
        //printf("ID_EX  : lsm   = %d\n", lsm)
        //printf("ID_EX  : exet  = %d\n", io.exeti)
        //printf("ID_EX : pcInExcep = %x \n", excep.pc)
    }

    when (io.en) {
       // printf("ID_EX  : imm   = %x (pass= %d)\n", imm, io.pass)
    }

    when (mul_counter =/= 0.U) {
      io.ready := false.B
      mul_counter := mul_counter - 1.U
    }.otherwise {
      io.ready := true.B
    }
    
}

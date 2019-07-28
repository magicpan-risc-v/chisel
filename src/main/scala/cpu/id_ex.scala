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
        val ALUOpi = Input(UInt(4.W))
        val exeti  = Input(UInt(4.W))
        val pci    = Input(UInt(64.W))
        val lsmi   = Input(UInt(4.W))
        val op32i  = Input(Bool())
        val csr_wb_i = new WrCsrReg
        val dregi  = Flipped(new DecoderReg)
        val excep_i = Flipped(new Exception)

        val immo   = Output(UInt(64.W))
        val ALUOpo = Output(UInt(4.W))
        val exeto  = Output(UInt(4.W))
        val pco    = Output(UInt(64.W))
        val lsmo   = Output(UInt(4.W))
        val op32o  = Output(Bool())
        val csr_wb_o  = Flipped(new WrCsrReg)
        val drego  = new DecoderReg
        val excep_o = new Exception
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
        pc    := io.pci    & bm
        regInfo := Mux(bm(0), io.dregi, 0.U.asTypeOf(new DecoderReg))
        lsm   := Mux(bubble, MEMT.NOP, io.lsmi)
        op32  := io.op32i && bm(0)
        csr_wb  := io.csr_wb_i
        excep := Mux(bm(0), io.excep_i, 0.U.asTypeOf(new Exception))

        //printf("ID_EX  : ALUOp = %d\n", ALUOp)
        //printf("ID_EX  : imm   = %x\n", imm)
        //printf("ID_EX  : op32  = %d\n", op32)
        //printf("ID_EX  : rs1d  = %x\n", regInfo.rs1_value)
        //printf("ID_EX  : rs2d  = %x\n", regInfo.rs2_value)
        //printf("ID_EX  : lsm   = %d\n", lsm)
        //printf("ID_EX  : exet  = %d\n", io.exeti)
    }
}

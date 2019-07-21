package cpu;

import chisel3._
import chisel3.util._

class ID_EX extends Module {
    val io =  IO(new Bundle {
        val en    = Input(Bool())
        val bid   = Input(Bool()) // from Decoder, bubble all
        val bex   = Input(Bool()) // from EX

        val immi   = Input(UInt(64.W))
        val ALUOpi = Input(UInt(4.W))
        val exeti  = Input(UInt(3.W))
        val pci    = Input(UInt(64.W))
        val lsmi   = Input(UInt(4.W))
        val brti   = Input(UInt(3.W))
        val op32i  = Input(Bool())
        val dregi  = Flipped(new DecoderReg)

        val immo   = Output(UInt(64.W))
        val ALUOpo = Output(UInt(4.W))
        val exeto  = Output(UInt(3.W))
        val pco    = Output(UInt(64.W))
        val lsmo   = Output(UInt(4.W))
        val brto   = Output(UInt(3.W))
        val op32o  = Output(Bool())
        val drego  = new DecoderReg
    })

    val imm   = RegInit(0.U(64.W))
    val ALUOp = RegInit(0.U(4.W))
    val exet  = RegInit(0.U(3.W))
    val pc    = RegInit(0.U(64.W))
    val rs1v  = RegInit(false.B)
    val rs1i  = RegInit(0.U(5.W))
    val rs1d  = RegInit(0.U(64.W))
    val rs2v  = RegInit(false.B)
    val rs2i  = RegInit(0.U(5.W))
    val rs2d  = RegInit(0.U(64.W))
    val rdv   = RegInit(false.B)
    val rdi   = RegInit(0.U(5.W))
    val lsm   = RegInit(0.U(4.W))
    val brt   = RegInit(0.U(3.W))
    val op32  = RegInit(false.B)

    val bubble = io.bid || io.bex
    val bm     = Mux(bubble, 0.U(64.W), 0xffffffffffffffffL.S(64.W).asUInt)

    io.immo   := imm
    io.ALUOpo := ALUOp
    io.exeto  := exet
    io.pco    := pc
    io.drego.rs1_valid := rs1v
    io.drego.rs2_valid := rs2v
    io.drego.rs1_index := rs1i
    io.drego.rs2_index := rs2i
    io.drego.rs1_value := rs1d
    io.drego.rs2_value := rs2d
    io.drego.rd_valid  := rdv
    io.drego.rd_index  := rdi
    io.lsmo   := Mux(bubble, MEMT.NOP, lsm)
    io.brto   := brt
    io.op32o  := op32

    when (io.en) {
        imm   := io.immi   & bm
        ALUOp := io.ALUOpi & bm(3,0)
        exet  := io.exeti  & bm(2,0)
        pc    := io.pci    & bm
        rs1v  := io.dregi.rs1_valid && bm(0)
        rs2v  := io.dregi.rs2_valid && bm(0)
        rs1i  := io.dregi.rs1_index &  bm(4,0)
        rs2i  := io.dregi.rs2_index &  bm(4,0)
        rs1d  := io.dregi.rs1_value &  bm
        rs2d  := io.dregi.rs2_value &  bm
        rdv   := io.dregi.rd_valid  && bm(0)
        rdi   := io.dregi.rd_index  &  bm(4,0)
        lsm   := Mux(bubble, MEMT.NOP, lsm)
        brt   := io.brti   & bm(2,0)
        op32  := io.op32i && bm(0)

        //printf("ID_EX  : ALUOp = %d\n", ALUOp)
        //printf("ID_EX  : imm   = %d\n", imm)
        //printf("ID_EX  : rs1d  = %d\n", rs1d)
    }
}
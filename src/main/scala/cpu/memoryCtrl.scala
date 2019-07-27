package cpu;

import chisel3._
import chisel3.util._

object MEMT {
    val NOP = "b1111".U(4.W)
    val LB  = "b1000".U(4.W)
    val LBU = "b1100".U(4.W)
    val LH  = "b1001".U(4.W)
    val LHU = "b1101".U(4.W)
    val LW  = "b1010".U(4.W)
    val LWU = "b1110".U(4.W)
    val LD  = "b1011".U(4.W)
    val SB  = "b0000".U(4.W)
    val SH  = "b0001".U(4.W)
    val SW  = "b0010".U(4.W)
    val SD  = "b0011".U(4.W)
}

class MemoryCtrl extends Module {
    val io =  IO(new Bundle {
        val nls  = Input(Bool())
        val lsm  = Input(UInt(4.W))
        val addr = Input(UInt(64.W))
        val data = Input(UInt(64.W))

        val ready = Output(Bool())

        val ereg = Flipped(new WriteBackReg)
        val wreg = new WriteBackReg

        val mem  = Flipped(new MEM_MMU)
    })

    io.mem.mode  := Mux(io.nls, io.lsm, MEMT.NOP)
    io.mem.addr := io.addr
    io.mem.wdata := io.data

    io.ready     := !io.nls || io.mem.ready

    io.wreg.wbrv := io.ereg.wbrv || (io.lsm =/= MEMT.NOP && io.lsm(3))
    io.wreg.wbri := io.ereg.wbri
    io.wreg.wbrd := Mux(io.nls, io.mem.rdata, io.ereg.wbrd)
}

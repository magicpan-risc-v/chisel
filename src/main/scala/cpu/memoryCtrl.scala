package cpu;

import chisel3._
import chisel3.util._

class MemoryCtrl extends Module {
    val io =  IO(new Bundle {
        val nls  = Input(Bool())
        val lsm  = Input(UInt(4.W))
        val addr = Input(UInt(64.W))
        val data = Input(UInt(64.W))

        val ereg = Flipped(new WriteBackReg)
        val wreg = new WriteBackReg

        val mem  = Flipped(new Memory)
    })

    io.mem.mode  := Mux(io.nls, io.lsm, MEMT.NOP)
    io.mem.raddr := io.addr
    io.mem.waddr := io.addr
    io.mem.wdata := io.data

    io.wreg.wbrv := io.ereg.wbrv
    io.wreg.wbri := io.ereg.wbri
    io.wreg.wbrd := Mux(io.nls, io.mem.rdata, io.ereg.wbrd)
}
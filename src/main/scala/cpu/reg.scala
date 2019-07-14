package cpu;

import chisel3._
import chisel3.util._

class Reg extends Bundle {
    val r1 = Input(UInt(5.W))
    val r2 = Input(UInt(5.W))
    val r1d = Output(UInt(64.W))
    val r2d = Output(UInt(64.W))

    val wen = Input(Bool()) // 使能端
    val w = Input(UInt(5.W))
    val wd = Input(UInt(64.W))
}

class RegCtrl extends Module {
    val io = IO(new Reg)

    val regs = Mem(32, UInt(64.W))
    io.r1d := regs(io.r1)
    io.r2d := regs(io.r2)
    when (io.wen) {
        regs(io.w) := io.wd
    }
}
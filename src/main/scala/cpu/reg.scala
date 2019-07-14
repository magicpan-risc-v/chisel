package cpu;

import chisel3._
import chisel3.util._

class RegReader extends Bundle {
    val r1 = Input(UInt(5.W))
    val r2 = Input(UInt(5.W))
    val r1d = Output(UInt(64.W))
    val r2d = Output(UInt(64.W))
}

class RegWriter extends Bundle {
    val wen = Input(Bool()) // 使能端
    val w = Input(UInt(5.W))
    val wd = Input(UInt(64.W))
}

class Reg extends Bundle {
    val r = new RegReader
    val w = new RegWriter
}

class RegCtrl extends Module {
    val io = IO(new Reg)

    val regs = Mem(32, UInt(64.W))
    io.r.r1d := regs(io.r.r1)
    io.r.r2d := regs(io.r.r2)
    when (io.w.wen) {
        regs(io.w.w) := io.w.wd
    }
}

object RegCtrl extends App {
    chisel3.Driver.execute(args, () => new RegCtrl);
}
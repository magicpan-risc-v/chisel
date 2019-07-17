package cpu;

import chisel3._
import chisel3.util._

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

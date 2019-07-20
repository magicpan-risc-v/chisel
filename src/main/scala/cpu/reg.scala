package cpu;

import chisel3._
import chisel3.util._

class RegCtrl extends Module {
    val io = IO(new Reg)

    val regs = Mem(32, UInt(64.W))
    io.r.r1d := Mux(
        io.w.wen && io.r.r1 === io.w.w,
        io.w.wd,
        regs(io.r.r1)
    )
    io.r.r2d := Mux(
        io.w.wen && io.r.r2 === io.w.w,
        io.w.wd,
        regs(io.r.r2)
    )
    when (io.w.wen) {
        regs(io.w.w) := io.w.wd
        printf("set reg[%d] = %d\n", io.w.w, io.w.wd)

        //printf("reg[12] = %d\n", regs(12))
    }
}

object RegCtrl extends App {
    chisel3.Driver.execute(args, () => new RegCtrl);
}

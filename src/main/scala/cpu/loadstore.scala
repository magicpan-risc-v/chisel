package cpu;

import chisel3._
import chisel3.util._

// 用于进行L/S操作
class LoadStore extends Module {
    val io =  IO(new Bundle {

        val mem = Flipped(new Memory)
    })

    io.mem.raddr := 0.U(64.W)
    io.mem.mode  := MEMT.NOP
    io.mem.waddr := 0.U(64.W)
    io.mem.wdata := 0.U(64.W)
}
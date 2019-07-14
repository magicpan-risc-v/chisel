package cpu;

import chisel3._
import chisel3.util._

class InsReader extends Module {
    val io =  IO(new Bundle {
        val en    = Input(Bool())
        val jump  = Input(Bool())
        val jdest = Input(UInt(64.W))

        val ins   = Output(UInt(32.W))
        val pc    = Output(UInt(64.W))
        val mem   = Flipped(new Memory)
    })

    val pc    = RegInit(0.U(64.W))
    val npc   = RegInit(0.U(64.W))
    val insc  = RegInit(0.U(32.W)) // 预读入的指令

    val nread = RegInit(false.B) // 是否需要读取指令
    val next  = Mux(io.jump, io.jdest, npc)

    // 每个周期更新PC
    when (io.en) {
        pc    := next
        npc   := next + 4.U
        nread := !nread || io.jump
    }

    when (io.en && nread) {
        insc  := io.mem.rdata(63,32)
    }

    io.mem.ren   := nread
    io.mem.raddr := pc
    io.mem.wen   := false.B
    io.mem.waddr := 0.U(64.W)
    io.mem.wdata := 0.U(64.W)
    io.pc   := pc
    io.ins  := Mux(nread, io.mem.rdata(31,0), insc)
}
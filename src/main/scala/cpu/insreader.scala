package cpu;

import chisel3._
import chisel3.util._

class InsReader extends Module {
    val io =  IO(new Bundle {
        val en    = Input(Bool())
        val jump  = Input(Bool()) // EX jump
        val jdest = Input(UInt(64.W)) // EX jdest
        val nls   = Input(Bool()) // EX_MEM need load or store

        val ins   = Output(UInt(32.W))
        val pc    = Output(UInt(64.W))

        val mem   = Flipped(new Memory)
    })

    val pc    = RegInit(0.U(64.W))
    val npc   = RegInit(0.U(64.W))
    val insc  = RegInit(0.U(32.W)) // 预读入的指令

    val nread = RegInit(false.B) // 是否需要读取指令
    val next  = Mux(io.jump, io.jdest, npc)

    val raddr = Mux(pc(2), pc-4.U, pc)
    val mode  = MEMT.LD

    // 每个周期更新PC
    // 如果NLS打开则不读取
    when (io.en && !io.nls) {
        pc           := next
        npc          := next + 4.U
        nread        := !next(2) || io.jump
    }

    // 上个周期读入之后，insc存储低32位
    when (io.en && nread && !io.nls) {
        insc  := io.mem.rdata(63, 32)
    }

    // 如果io.nls为false，则读取指令，否则不读取
    io.mem.raddr := Mux(io.nls, 0.U(64.W), Mux(
        pc(2), pc - 4.U, pc
    ))
    io.mem.mode  := Mux(io.nls || !nread, MEMT.NOP, MEMT.LD)
    io.mem.waddr := 0.U(64.W)
    io.mem.wdata := 0.U(64.W)
    io.pc   := pc
    io.ins  := Mux(
        io.nls,
        0.U(64.W), // 如果冲突，插入一个NOP
        Mux(nread, Mux(pc(2), io.mem.rdata(63,32), io.mem.rdata(31,0)), insc)
    )
}
package cpu;

import chisel3._
import chisel3.util._

class InsReader extends Module {
    val io =  IO(new Bundle {
        val jump  = Input(Bool()) // EX jump
        val jdest = Input(UInt(64.W)) // EX jdest
        val nls   = Input(Bool()) // EX_MEM need load or store
        val lpc   = Input(UInt(64.W)) // last PC
        val insp  = Input(UInt(32.W)) // pre-loaded instruction

        val ins   = Output(UInt(32.W))
        val pc    = Output(UInt(64.W))
        val insn  = Output(UInt(32.W)) // 预读取的指令

        val mem   = Flipped(new Memory) // MEMC-IF
    })

    val npc   = io.lpc + 4.U
    val pco   = Mux(io.nls, io.lpc, Mux(io.jump, io.jdest, npc)) // 下一个PC
    val nread = Mux(io.nls, false.B, !pco(2) || io.jump) // 是否需要读取
    val ins   = Mux(
        io.nls,
        0.U(64.W), // 如果冲突，插入一个NOP
        Mux(nread, Mux(pco(2), io.mem.rdata(63,32), io.mem.rdata(31,0)), io.insp)
    )
    val raddr = Mux(pco(2), pco-4.U, pco)

    io.mem.raddr := Mux(io.nls, 0.U(64.W), Mux(
        pco(2), pco - 4.U, pco
    ))
    io.mem.mode  := Mux(io.nls || !nread, MEMT.NOP, MEMT.LD)
    io.mem.waddr := 0.U(64.W)
    io.mem.wdata := 0.U(64.W)

    io.pc   := pco
    io.ins  := ins
    io.insn := io.mem.rdata(63,32)
}
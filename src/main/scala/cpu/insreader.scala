package cpu;

import chisel3._
import chisel3.util._

class InsReader extends Module {
    val io =  IO(new Bundle {
        val en    = Input(Bool())
        val jump  = Input(Bool())
        val jdest = Input(UInt(64.W))

        val inst  = Output(UInt(32.W))
        val pc    = Output(UInt(64.W))
        val ok    = Output(Bool())

        val mem   = Flipped(new Memory)
    })

    val pc    = RegInit(0.U(64.W))
    val npc   = RegInit(0.U(64.W))
    val inst  = RegInit(0x1300000013.U(64.W)) // 两条NOP

    val nnread = pc(3).asBool
    val nread = !nnread // 是否需要读取指令

    when (io.en) {
        pc := Mux(io.jump, io.jdest, npc)
    }

    when (nread) {
        inst := io.mem.rdata
    }

    when (nnread || io.mem.ok) {
        npc   := pc + 4.U
        io.ok := true.B
    } .otherwise {
        io.ok := false.B
    }

    io.mem.ren  := nread
    io.mem.addr := pc
    io.pc   := pc
    io.inst := Mux(pc(3).asBool, inst(63,32), inst(31,0))
}
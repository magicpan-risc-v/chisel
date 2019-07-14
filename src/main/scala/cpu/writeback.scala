package cpu;

import chisel3._
import chisel3.util._

class WriteBack extends Module {
    val io = IO(new Bundle {
        val en = Input(Bool())
        val w  = Input(UInt(5.W))
        val wd = Input(UInt(64.W))
        val ok = Output(Bool())

        val reg = Flipped(new Reg)
    })

    io.reg.wen := io.en
    io.reg.w   := io.w
    io.reg.wd  := io.wd

    when (io.en) {
        io.ok := true.B
    } .otherwise {
        io.ok := false.B
    }
}
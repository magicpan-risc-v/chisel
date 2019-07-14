package cpu;

import chisel3._
import chisel3.util._

class WriteBack extends Module {
    val io = IO(new Bundle {
        val wreg = Flipped(new WriteBackReg)
        val reg = Flipped(new RegWriter)
    })

    io.reg.wen := io.wreg.wbrv
    io.reg.w   := io.wreg.wbri
    io.reg.wd  := io.wreg.wbrd

}
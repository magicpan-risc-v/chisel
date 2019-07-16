package cpu;

import chisel3._
import chisel3.util._

class MemoryCtrl extends Module {
    val io =  IO(new Bundle {
        val ereg = Flipped(new WriteBackReg)
        val wreg = new WriteBackReg

       // val mem  = Flipped(new Memory)
    })

    // 暂时不写
    io.ereg <> io.wreg
}
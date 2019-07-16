package cpu;

import chisel3._
import chisel3.util._

class IF_ID extends Module {
    val io =  IO(new Bundle {
        val en    = Input(Bool())

        val insi  = Input(UInt(32.W))
        val pci   = Input(UInt(64.W))
        val inso  = Output(UInt(32.W))
        val pco   = Output(UInt(64.W))
    })

    val ins = RegInit(0.U(32.W))
    val pc  = RegInit(0.U(64.W))

    io.inso := ins
    io.pco  := pc

    when (io.en) {
        ins := io.insi
        pc  := io.pci
    }
}
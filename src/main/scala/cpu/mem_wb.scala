package cpu;

import chisel3._
import chisel3.util._

class MEM_WB extends Module {
    val io =  IO(new Bundle {
        val en    = Input(Bool())

        val wregi = Flipped(new WriteBackReg)
        val wrego = new WriteBackReg
    })

    val wbrv = RegInit(false.B)
    val wbrd = RegInit(0.U(64.W))
    val wbri = RegInit(0.U(5.W))

    io.wrego.wbrd := wbrd
    io.wrego.wbrv := wbrv
    io.wrego.wbri := wbri

    when (io.en) {
        wbri  := io.wregi.wbri
        wbrv  := io.wregi.wbrv
        wbrd  := io.wregi.wbrd

        //printf("MEM_WB : wbri = %d\n", wbri)
        //printf("MEM_WB : wbrv = %d\n", wbrv)
        //printf("MEM_WB : wbrd = %d\n", wbrd)
    }
}
package cpu;

import chisel3._
import chisel3.util._

class IF_ID extends Module {
    val io =  IO(new Bundle {
        val en    = Input(Bool())

        val insi  = Input(UInt(32.W))
        val pci   = Input(UInt(64.W))
        val insci = Input(UInt(32.W))

        val inso  = Output(UInt(32.W))
        val pco   = Output(UInt(64.W))
        val insco = Output(UInt(32.W))
    })

    val ins  = RegInit(0.U(32.W))
    val pc   = RegInit((-4L.S(64.W)).asUInt)
    val insc = RegInit(0.U(32.W))

    io.inso  := ins
    io.pco   := pc
    io.insco := insc

    when (io.en) {
        ins  := io.insi
        pc   := io.pci
        insc := io.insci

        
        //printf("IF_ID  : ins  = %d\n", ins)
        //printf("IF_ID  : pc   = %d\n", pc)
    }
}
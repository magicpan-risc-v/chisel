package cpu;

import chisel3._
import chisel3.util._

class IF_ID extends Module {
    val io =  IO(new Bundle {
        val en    = Input(Bool())

        val insi  = Input(UInt(32.W))
        val pci   = Input(UInt(64.W))
        val insci = Input(UInt(64.W))
        val lvi   = Input(Bool())
        val lii   = Input(UInt(5.W))

        val inso  = Output(UInt(32.W))
        val pco   = Output(UInt(64.W))
        val insco = Output(UInt(64.W))
        val lvo   = Output(Bool())
        val lio   = Output(UInt(5.W))
    })

    val ins  = RegInit(0.U(32.W))
    val pc   = RegInit((-4L.S(64.W)).asUInt)
    val insc = RegInit(0.U(64.W))
    val lv   = RegInit(false.B)
    val li   = RegInit(0.U(5.W))

    io.inso  := ins
    io.pco   := pc
    io.insco := insc
    io.lvo   := lv
    io.lio   := li

    when (io.en) {
        ins  := io.insi
        pc   := io.pci
        insc := io.insci
        lv   := io.lvi
        li   := io.lii

        
        //printf("IF_ID  : ins  = %d\n", ins)
        //printf("IF_ID  : pc   = %d\n", pc)
        //printf("IF_ID  : insc = %d;%d\n", insc(63,32),insc(31,0))
    }
}
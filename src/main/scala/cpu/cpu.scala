package cpu;

import chisel3._
import chisel3.util._

class CPU extends Module {
    val io =  IO(new Bundle {
        val mem = Flipped(new Memory)
    })

    val insr = Module(new InsReader)
    val insd = Module(new Decoder)

    
}
package cpu;

import chisel3._
import chisel3.util._

// 用于进行L/S操作
class LoadStore extends Module {
    val io =  IO(new Bundle {
        val dreg = Flipped(new DecoderReg)
        
        val aluo = Input(UInt(64.W)) // ALU Output
        val addr = Output(UInt(64.W))
        val data = Output(UInt(64.W))
    })

    io.addr := io.aluo
    io.data := io.dreg.rs2_value
}
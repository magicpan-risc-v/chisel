package cpu;

import chisel3._
import chisel3.util._

// 用于进行L/S操作
class LoadStore extends Module {
    val io =  IO(new Bundle {
        val dreg = Flipped(new DecoderReg)
        
        val imm  = Input(UInt(64.W))
        val addr = Output(UInt(64.W))
        val data = Output(UInt(64.W))
    })

    io.addr := io.dreg.rs1_value + io.imm
    io.data := io.dreg.rs2_value
}
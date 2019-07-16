package cpu;

import chisel3._
import chisel3.util._

class MemoryTest extends Module {

    val io = IO(new Bundle {
        val mem = new Memory
        val init = Input(Bool())
    })

    // 这个地方写程序
    // very ugly... but works?

    val program = Mem(32, UInt(32.W))

    val inited = RegInit(false.B)
    
    when (!inited && io.init) {
        program(0) := 1.U(32.W) //0x00108193
        program(1) := 2.U(32.W)
        program(2) := 3.U(32.W)
        program(3) := 0.U(32.W) // 补正
        inited     := true.B
    }
    
    val program_length = 3.U
    val rs = io.mem.raddr >> 2

    io.mem.rdata := Mux(
        io.mem.mode === MEMT.LD && inited && rs < program_length,
        Cat(program(rs+1.U), program(rs)),
        0.U(64.W)
    )
}

object MemoryTest extends App {
    chisel3.Driver.execute(args, () => new MemoryTest);
}
package cpu;

import chisel3._
import chisel3.util._

// 用于测试的CPU
class CPUTest extends Module {
    val io =  IO(new Bundle {
        val en   = Input(Bool())
        val init = Input(Bool()) 
        val init_serial  = Input(Bool())
        val dd   = Input(UInt(32.W))

        val wbd  = Output(UInt(64.W))
    })
    val real_cpu = Module(new CPU)
    
    // for test
    val memt = Module(new MemoryTest)
    memt.io.mem   <> real_cpu.io.mem
    io.en         <> real_cpu.io.en
    io.init       <> memt.io.init
    io.init_serial <> memt.io.init_serial
    io.dd         <> memt.io.dd

    io.wbd        <> real_cpu.io.mem.wdata

    real_cpu.io.serial.rdata := 0.U(64.W)
    real_cpu.io.serial.ready := false.B
}

object CPUTest extends App {
    chisel3.Driver.execute(args, () => new CPUTest);
}

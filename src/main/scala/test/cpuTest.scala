package cpu;

import chisel3._
import chisel3.util._

// 用于测试的CPU
class CPUTest extends Module {
    val io =  IO(new Bundle {
        val en   = Input(Bool())
        val init = Input(Bool()) 
        val dd   = Input(UInt(8.W))
    })
    val real_cpu = Module(new CPU)
    
    // for test
    val memt = Module(new MemoryTest)
    memt.io.mem   <> real_cpu.io.mem
    io.en         <> real_cpu.io.en
    io.init       <> memt.io.init
    io.dd         <> memt.io.dd

}

object CPUTest extends App {
    chisel3.Driver.execute(args, () => new CPUTest);
}

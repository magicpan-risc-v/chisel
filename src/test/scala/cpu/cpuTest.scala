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
        val dd_serial = Input(UInt(8.W))

        val wbd  = Output(UInt(64.W))
    })
    val real_cpu = Module(new CPU)
    
    // for test
    val memt = Module(new MemoryTest)
    val sert = Module(new SerialTest)
    memt.io.mem   <> real_cpu.io.mem
    sert.io.mem   <> real_cpu.io.serial

    io.en         <> real_cpu.io.en
    io.init       <> memt.io.init
    io.init_serial <> sert.io.init
    io.dd         <> memt.io.dd
    io.dd_serial  <> sert.io.dd

    io.wbd        <> real_cpu.io.mem.wdata

}

object CPUTest extends App {
    chisel3.Driver.execute(args, () => new CPUTest);
}

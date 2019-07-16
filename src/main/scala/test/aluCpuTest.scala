package cpu;

import chisel3._
import chisel3.util._
import chisel3.iotesters.{Driver, PeekPokeTester}

class ALUCPUTest(c: CPUTest) extends PeekPokeTester(c) {
    RAMTest.loadFile(this, c, "tests/test1.bin")
}

object ALUCPUTest extends App {
    chisel3.iotesters.Driver.execute(args, () => new CPUTest()) (
        (c) => new ALUCPUTest(c)
    )
}
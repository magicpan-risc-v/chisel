package cpu;

import chisel3._
import chisel3.util._
import chisel3.iotesters.{Driver, PeekPokeTester}

class ALUCPUTest(c: CPUTest) extends PeekPokeTester(c) {
    poke(c.io.en, false)
    RAMTest.loadFile(this, c, "tests/rv_tests/isa/rv64ui-p-blt")
    //RAMTest.loadFile(this, c, "tests/serial_test.bin")
    //RAMTest.loadFile(this, c, "monitor/monitor.bin")
    //RAMTest.loadFile(this, c, "tests/test1.bin")
    RAMTest.loadSerial(this, c, "tests/test-serial.txt")
    poke(c.io.en, true)
    for (i <- 1 until 2000) {
        //print("cycle "+i + " / ")
        step(1)
    }
}

object ALUCPUTest extends App {
    chisel3.iotesters.Driver.execute(args, () => new CPUTest()) (
        (c) => new ALUCPUTest(c)
    )
}

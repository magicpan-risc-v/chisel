package cpu;

import java.io.File

import chisel3._
import chisel3.iotesters._
import chisel3.util._

class ALUCPUTest(c: CPUTest, fname: String) extends PeekPokeTester(c) {
    System.out.println("Test Name " + fname);
    poke(c.io.en, false)
    RAMTest.loadFile(this, c, fname)
    RAMTest.loadSerial(this, c, "tests/test-serial.txt")
    poke(c.io.en, true)
    for (i <- 1 until 100) {
        //print("cycle "+i + " / ")
        step(1)
    }
}

class RiscvTester extends ChiselFlatSpec {
    val args = Array[String]()
    val names = new File("tests/riscv").listFiles().map(f => f.getName)
    for(name <- names) {
      name should "pass test" in {
        iotesters.Driver.execute(args, () => new CPUTest) {
          c => new ALUCPUTest(c, s"tests/riscv/$name")
        } should be (true)
      }
    }
}

class SingleTester extends ChiselFlatSpec {
    val args = Array[String]()
    iotesters.Driver.execute(args, () => new CPUTest) {
      c => new ALUCPUTest(c, s"tests/test_csrrw.bin")
    } should be (true)
}

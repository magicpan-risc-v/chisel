package cpu;

import chisel3._
import chisel3.experimental.MultiIOModule
import chisel3.iotesters.{Driver, PeekPokeTester}

import java.nio.ByteBuffer
import java.nio.file.{Files, Paths}

object TestUtil {
  def loadRAM[T <: MultiIOModule](tester: PeekPokeTester[T], ready: Bits,
                                  ram_init: RAMOp, data: Seq[Long]) {
    tester.poke(ready, 0)
    tester.poke(ram_init.mode, 3) // SD

    for(i <- data.indices) {
      if(data(i) != 0) {
        tester.poke(ram_init.waddr, i * 4)
        tester.poke(ram_init.wdata, data(i))
        tester.step(1)
      }
    }
    tester.poke(ram_init.mode, 15)
    tester.step(5)
    tester.poke(ready, 1)
  }

  def read_insts(fname: String): Seq[Long] = {
    if (fname.isEmpty) {
      // this should not happen because it means
      //  either using simulational MMU in verilog generation
      //  or that fname is not set up
      val NOP = 0x13
      return Seq(NOP, NOP)
    }
    Files.readAllBytes(Paths.get(fname))
      .grouped(8).map(b => ByteBuffer.wrap(b.reverse).getLong)
      .toSeq
  }
}

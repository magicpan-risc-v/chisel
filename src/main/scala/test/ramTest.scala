package cpu;

import chisel3._
import chisel3.util._
import chisel3.iotesters.{Driver, PeekPokeTester}
import java.nio.ByteBuffer
import java.nio.file.{Files, Paths}

object RAMTest {
    def loadFile(tester: PeekPokeTester[CPUTest], c: CPUTest, fname: String) {
        val data = Files.readAllBytes(Paths.get(fname)).grouped(1).map(b => ByteBuffer.wrap(Array.fill(8-b.length)(0.toByte) ++ b.reverse).getLong).toSeq

        tester.poke(c.io.init, 1)
        for (i <- data.indices) {
            tester.poke(c.io.dd, data(i))
            tester.step(1)
            //println(data(i))
        }
        tester.poke(c.io.init, 0)
        tester.step(1)
    }
}
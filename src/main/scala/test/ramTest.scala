package cpu;

import chisel3._
import chisel3.util._
import chisel3.iotesters.{Driver, PeekPokeTester}
import java.nio.ByteBuffer
import java.nio.file.{Files, Paths}

object RAMTest {
    def loadFile(tester: PeekPokeTester[CPUTest], c: CPUTest, fname: String) {
        val data = Files.readAllBytes(Paths.get(fname)).grouped(4).map(b => ByteBuffer.wrap(Array.fill(8-b.length)(0.toByte) ++ b.reverse).getLong).toSeq

        tester.poke(c.io.init, true)
        for (i <- data.indices) {
            if (data(i) != 0) {
                tester.poke(c.io.dd, data(i))
                tester.step(1)
                println(data(i))
            }
        }
        tester.poke(c.io.dd, 0)
        tester.step(1)
    }
}
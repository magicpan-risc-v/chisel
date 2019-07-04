package cpu;

import chisel3._
import chisel3.iotesters.{Driver, PeekPokeTester}

class ALUTester(c: ALU) extends PeekPokeTester(c) {
    for (i <- 0 to 20) {
        for (j <- 0 to 20) {
            poke(c.io.inputA, i)
            poke(c.io.inputB, j)
            poke(c.io.ALUOp, 0)
            step(1)
            expect(c.io.output, 0)

            poke(c.io.ALUOp, 1)
            step(1)
            expect(c.io.output, i)

            poke(c.io.ALUOp, 2)
            step(1)
            expect(c.io.output, j)

            poke(c.io.ALUOp, 3)
            step(1)
            expect(c.io.output, i+j)

            poke(c.io.ALUOp, 4)
            step(1)
            expect(c.io.output, i&j)

            poke(c.io.ALUOp, 5)
            step(1)
            expect(c.io.output, i|j)

            poke(c.io.ALUOp, 6)
            step(1)
            expect(c.io.output, i^j)

            poke(c.io.ALUOp, 7)
            step(1)
            var x = 0;
            if (i<j) {
                x = 1;
            }
            expect(c.io.output, x)

            poke(c.io.ALUOp, 8)
            step(1)
            expect(c.io.output, i<<j)

            poke(c.io.ALUOp, 9)
            step(1)
            expect(c.io.output, i>>>j)

            poke(c.io.ALUOp, 10)
            step(1)
            expect(c.io.output, i>>j)
        }
    }
}

object ALUTester extends App {
    chisel3.iotesters.Driver.execute(args, () => new ALU()) (
        (c) => new ALUTester(c)
    )
}
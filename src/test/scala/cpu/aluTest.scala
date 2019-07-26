package cpu;

import scala.math.BigInt
import chisel3._
import chisel3.iotesters.{Driver, PeekPokeTester}

class ALUTester(c: ALU) extends PeekPokeTester(c) {

    def test(x:BigInt, y:BigInt, op:Int, o:BigInt) {
        poke(c.io.inputA, x);
        poke(c.io.inputB, y);
        poke(c.io.ALUOp, op);
        step(1)
        expect(c.io.output, o);
    }

    val m :BigInt = 9223372036854775807L;

    test(1,1,0,0)
    test(1,0,1,1)
    test(0,1,2,1)
    test(2,3,3,5) // 2+3=5
    test(m,m,3,m+m) // M+M=-2
    test(-m,m,3,0)
    test(-m,-m,3,2)
    test(m,1,3,m+1)
    
    for (i <- 0L to 1L) {
        for (j <- 0L to 1L) {
            test(i, j, 4, i&j)
            test(i, j, 5, i|j)
            test(i, j, 6, i^j)
        }
    }
    test(2,3,7,1)
    test(2,2,7,0)
    test(m,-m,7,1)
    test(1,-1,7,1)
    test(-1,-m,7,0)
    test(m,31,8,m+m+1-2147483647)
    test(-1,31,8,m+m+1-2147483647)
    test(m,160,9,2147483647)
    test(-1,48,9,65535)
    test(m,32,10,2147483647)
    test(-1,64,10,m+m+1)
}

object ALUTester extends App {
    chisel3.iotesters.Driver.execute(args, () => new ALU()) (
        (c) => new ALUTester(c)
    )
}
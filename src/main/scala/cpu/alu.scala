package cpu;

import chisel3._
import chisel3.util._

/*
0000 : output 0
0001 : output inputA
0010 : output inputB
0011 : ADD
0100 : AND
0101 : OR
0110 : XOR
0111 : SLT
1000 : SLL
1001 : SRL
1010 : SRA
 */

class ALU extends Module {
    val io = IO(new Bundle {
        val ALUOp  = Input(UInt(4.W))
        val inputA = Input(UInt(64.W))
        val inputB = Input(UInt(64.W))
        val output = Output(UInt(64.W))
    })
    val shamt = io.inputB(5,0)
    io.output := MuxLookup(
        io.ALUOp,
        0.U(64.W),
        Seq(
            "b0000".U -> 0.U(64.W),
            "b0001".U -> io.inputA,
            "b0010".U -> io.inputB,
            "b0011".U -> (io.inputA + io.inputB),
            "b0100".U -> (io.inputA & io.inputB),
            "b0101".U -> (io.inputA | io.inputB),
            "b0110".U -> (io.inputA ^ io.inputB),
            "b0111".U -> ((io.inputA < io.inputB).asUInt),
            "b1000".U -> (io.inputA << shamt),
            "b1001".U -> (io.inputA >> shamt),
            "b1010".U -> ((io.inputA.asSInt >> shamt).asUInt)
        )
    )
}

object ALU extends App {
  chisel3.Driver.execute(args, () => new ALU);
}
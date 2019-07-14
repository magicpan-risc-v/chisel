package cpu;

import chisel3._
import chisel3.util._
import chisel3.iotesters.{Driver, PeekPokeTester}

class ALUCPUTest(c: CPU) extends PeekPokeTester(c) {

    poke(c.io.init, true);
    step(1);

    poke(c.io.en, true); 
    step(1); // IF
    expect(c.io.wbd, 1);
    step(1); // ID
    expect(c.io.wbd, 1);
    step(1); // EX
    expect(c.io.wbd, 1);
    step(1); // MEM
    expect(c.io.wbd, 1);
    step(1); // WB
    expect(c.io.wbd, 1);
    step(1);
    expect(c.io.wbd, 1);
}

object ALUCPUTest extends App {
    chisel3.iotesters.Driver.execute(args, () => new CPU()) (
        (c) => new ALUCPUTest(c)
    )
}
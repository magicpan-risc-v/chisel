package cpu;

import chisel3._
import chisel3.iotesters.{Driver, PeekPokeTester}

class MemoryTestTester(c: MemoryTest) extends PeekPokeTester(c) {

    poke(c.io.init, 1);
    step(1);

    poke(c.io.mem.ren, true);
    expect(c.io.mem.rok, false);
    
    poke(c.io.mem.raddr, 4);
    expect(c.io.mem.rdata, 0);
    step(1);
    expect(c.io.mem.rok, true);
    expect(c.io.mem.rdata, 0x300000002L);
    poke(c.io.mem.raddr, 0);
    expect(c.io.mem.rdata, 0x300000002L);
    step(1);
    expect(c.io.mem.rdata, 0x200000001L);
}

object MemoryTestTester extends App {
    chisel3.iotesters.Driver.execute(args, () => new MemoryTest()) (
        (c) => new MemoryTestTester(c)
    )
}
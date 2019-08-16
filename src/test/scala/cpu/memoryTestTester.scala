package cpu;

import chisel3._
import chisel3.iotesters.{Driver, PeekPokeTester}

class MemoryTestTester(c: MemoryTest) extends PeekPokeTester(c) {

    poke(c.io.init, true);
    step(1);

    poke(c.io.mem.mode, MEMT.LD);
    //expect(c.io.mem.rok, true);
    
    poke(c.io.mem.addr, 4);
    expect(c.io.mem.rdata, 0x300000002L);
    step(1);
    //expect(c.io.mem.rok, true);
    expect(c.io.mem.rdata, 0x300000002L);
    poke(c.io.mem.addr, 0);
    expect(c.io.mem.rdata, 0x200000001L);
    step(1);
    expect(c.io.mem.rdata, 0x200000001L);
}

object MemoryTestTester extends App {
    chisel3.iotesters.Driver.execute(args, () => new MemoryTest()) (
        (c) => new MemoryTestTester(c)
    )
}

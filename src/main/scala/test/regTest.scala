package cpu;

import chisel3._
import chisel3.iotesters.{Driver, PeekPokeTester}

class RegTester(c: RegCtrl) extends PeekPokeTester(c) {

    poke(c.io.r1, 1);
    expect(c.io.r1d, 0);

    poke(c.io.w, 1);
    poke(c.io.wen, true);
    poke(c.io.wd, 1);
    step(1);
    expect(c.io.r1d, 1);
    poke(c.io.r2, 1);
    expect(c.io.r2d, 1);
}

object RegTester extends App {
    chisel3.iotesters.Driver.execute(args, () => new RegCtrl()) (
        (c) => new RegTester(c)
    )
}
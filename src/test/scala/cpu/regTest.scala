package cpu;

import chisel3._
import chisel3.iotesters.{Driver, PeekPokeTester}

class RegTester(c: RegCtrl) extends PeekPokeTester(c) {

    poke(c.io.r.r1, 1);
    expect(c.io.r.r1d, 0);

    poke(c.io.w.w, 1);
    poke(c.io.w.wen, true);
    poke(c.io.w.wd, 1);
    step(1);
    expect(c.io.r.r1d, 1);
    poke(c.io.r.r2, 1);
    expect(c.io.r.r2d, 1);
}

object RegTester extends App {
    chisel3.iotesters.Driver.execute(args, () => new RegCtrl()) (
        (c) => new RegTester(c)
    )
}
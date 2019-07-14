package cpu;

import chisel3._
import chisel3.util._
import chisel3.iotesters.{Driver, PeekPokeTester}

class InsReaderTest extends Module {
    val io =  IO(new Bundle {
        val en    = Input(Bool())
        val jump  = Input(Bool())
        val jdest = Input(UInt(64.W))
        val init  = Input(Bool())

        val ins   = Output(UInt(32.W))
        val pc    = Output(UInt(64.W))
    })

    val insr = Module(new InsReader)
    val memt = Module(new MemoryTest)

    insr.io.en    <> io.en
    insr.io.jump  <> io.jump
    insr.io.jdest <> io.jdest
    insr.io.ins   <> io.ins
    insr.io.pc    <> io.pc
    insr.io.mem   <> memt.io.mem
    memt.io.init  <> io.init

}

class InsReaderTester(c: InsReaderTest) extends PeekPokeTester(c) {

    poke(c.io.init, true);
    step(1);

    poke(c.io.en, true);
    poke(c.io.jump, false);
    poke(c.io.jdest, 0);
    step(1);
    expect(c.io.ins, 1);
    expect(c.io.pc, 0);
    step(1);
    expect(c.io.ins, 2);
    expect(c.io.pc, 4);
    step(1);
    expect(c.io.ins, 3);
    expect(c.io.pc, 8);
    step(1);
    expect(c.io.ins, 0);
    expect(c.io.pc, 12);
    step(1);
    poke(c.io.jump, true);
    expect(c.io.ins, 0);
    expect(c.io.pc, 16);
    step(1);
    poke(c.io.jdest, 4);
    expect(c.io.ins, 1);
    expect(c.io.pc, 0);
    step(1);
    poke(c.io.jump, false);
    expect(c.io.ins, 2);
    expect(c.io.pc, 4);
    step(1);
    expect(c.io.ins, 3);
    expect(c.io.pc, 8);
    step(1);
    expect(c.io.ins, 0);
    expect(c.io.pc, 12);
}

object InsReaderTester extends App {
    chisel3.iotesters.Driver.execute(args, () => new InsReaderTest()) (
        (c) => new InsReaderTester(c)
    )
}
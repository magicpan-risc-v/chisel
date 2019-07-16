package cpu;

import chisel3._
import chisel3.util._
import chisel3.iotesters.{Driver, PeekPokeTester}

// 已通过的测试样例
/*
class InsReaderTest extends Module {
    
    val io =  IO(new Bundle {
        val en    = Input(Bool())
        val init  = Input(Bool())
        val jump  = Input(Bool())
        val jdest = Input(UInt(64.W))

        val ins   = Output(UInt(32.W))
        val pc    = Output(UInt(64.W))
        //val obs   = Output(UInt(64.W))
    })

    val insr = Module(new InsReader)
    val iom  = Module(new IOManager)
    val ls   = Module(new LoadStore)
    val memt = Module(new MemoryTest)

    insr.io.en    <> io.en
    insr.io.jump  <> io.jump
    insr.io.jdest <> io.jdest
    insr.io.ins   <> io.ins
    insr.io.pc    <> io.pc
    insr.io.mem   <> iom.io.mem_if
    memt.io.init  <> io.init
    ls.io.mem     <> iom.io.mem_mem
    memt.io.mem   <> iom.io.mem_out

    insr.io.nls   := false.B
    //insr.io.obs   <> io.obs


    //insr.io.mem.waddr := 0.U(64.W)
    //insr.io.mem.wdata := 0.U(64.W)
    

}*/
/*
class InsReaderTester(c: InsReaderTest) extends PeekPokeTester(c) {

    poke(c.io.init, true);
    step(1);

    poke(c.io.en, true);
    poke(c.io.jump, false);
    poke(c.io.jdest, 0);
    //expect(c.io.obs, 1000);
    step(1);
    expect(c.io.ins, 1);
    expect(c.io.pc, 0);
    //expect(c.io.obs, 1000);//2
    step(1);
    expect(c.io.ins, 2);
    expect(c.io.pc, 4);
    //expect(c.io.obs, 1000);//3
    step(1);
    expect(c.io.ins, 3);
    expect(c.io.pc, 8);
    //expect(c.io.obs, 1000);//4
    step(1);
    //expect(c.io.obs, 1000);//5
    expect(c.io.ins, 0);
    expect(c.io.pc, 12);
    step(1);
    //expect(c.io.obs, 1000);//6
    poke(c.io.jump, true);
    expect(c.io.ins, 0);
    expect(c.io.pc, 16);
    step(1);
    //expect(c.io.obs, 1000);//7
    poke(c.io.jdest, 4);
    expect(c.io.ins, 1);
    expect(c.io.pc, 0);
    step(1);
    //expect(c.io.obs, 1000);//8
    poke(c.io.jump, false);
    expect(c.io.ins, 2);
    expect(c.io.pc, 4);
    step(1);
    //expect(c.io.obs, 1000);//9
    expect(c.io.ins, 3);
    expect(c.io.pc, 8);
    step(1);
    //expect(c.io.obs, 1000);
    expect(c.io.ins, 0);
    expect(c.io.pc, 12);
    
}

object InsReaderTester extends App {
    chisel3.iotesters.Driver.execute(args, () => new InsReaderTest()) (
        (c) => new InsReaderTester(c)
    )
}*/
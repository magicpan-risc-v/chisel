package cpu;

import chisel3._
import chisel3.util._

class MockRam(printLog: Boolean = true) extends Module {
  val io = IO(new RAMOp)

  val program = Mem(0x800000, UInt(8.W))
  val rs = io.raddr
  val ws = io.waddr

  val data = Cat(
      program(rs+7.U),
      program(rs+6.U),
      program(rs+5.U),
      program(rs+4.U),
      program(rs+3.U),
      program(rs+2.U), 
      program(rs+1.U),
      program(rs)
  )

  when (io.mode === MEMT.SD) {
      for (i <- 0 until 8) {
          program(ws+i.U) := io.wdata(i*8+7, i*8)
      }
  }

  when (io.mode === MEMT.SW) {
      for (i <- 0 until 4) {
          program(ws+i.U) := io.wdata(i*8+7, i*8)
      }
  }

  when (io.mode === MEMT.SH) {
      for (i <- 0 until 2) {
          program(ws+i.U) := io.wdata(i*8+7, i*8)
      }
  }

  when (io.mode === MEMT.SB) {
      printf("%x \n", ws)
      program(ws) := io.wdata(7,0)
  }

  io.rdata := Mux(
      io.mode(3),
      MuxLookup(
          io.mode,
          0.U(64.W),
          Seq(
              MEMT.LD  -> data,
              MEMT.LWU -> Cat(0.U(32.W), data(31,0)),
              MEMT.LHU -> Cat(0.U(48.W), data(15,0)),
              //MEMT.LBU -> Mux(rs === serial_addr, serial(scnt), Cat(0.U(56.W), data(7,0))),
              MEMT.LBU  -> Cat(Mux(data(7), 0xffffffffffffffL.U(56.W), 0.U(56.W)), data(7,0)),
              MEMT.LW  -> Cat(Mux(data(31), 0xffffffffL.U(32.W), 0.U(32.W)), data(31,0)),
              MEMT.LH  -> Cat(Mux(data(15), 0xffffffffffffL.U(48.W), 0.U(48.W)), data(15,0)),
              MEMT.LB  -> Cat(Mux(data(7), 0xffffffffffffffL.U(56.W), 0.U(56.W)), data(7,0))
          )
      ),
      0.U(64.W)
  )
}

package cpu;

import chisel3._
import chisel3.util._

class MemoryTest extends Module {

    val io = IO(new Bundle {
        val mem  = new Memory
        val init = Input(Bool())
        val dd   = Input(UInt(32.W)) // default data
    })

    val program = Mem(0x1000, UInt(32.W))

    val inited = RegInit(false.B)
    val dindex = RegInit(0.U(32.W))

    val program_length = dindex
    val rs = io.mem.raddr >> 2
    val rm = (io.mem.raddr & 3.U) << 3
    val rd = (io.mem.raddr & 2.U) << 3
    val ws = io.mem.waddr >> 2
    
    when (!inited && io.init) {
        program(dindex) := io.dd
        dindex := Mux(io.dd === 0.U, dindex, dindex + 1.U)
    }
    
    when (inited && io.mem.mode == MEMT.SD) {
        program(ws+1.U) := io.mem.wdata(63,32)
        program(ws) := io.mem.wdata(31,0)
    }

    when (inited && io.mem.mode == MEMT.SW) {
        program(ws) := io.mem.wdata(31,0)
    }

    when (inited && io.mem.mode == MEMT.SH) {
        program(ws)(15,0) := io.mem.wdata(15,0)
    }

    when (inited && io.mem.mode == MEMT.SB) {
        program(ws)(7,0) := io.mem.wdata(7,0)
    }

    when (!inited && io.init && io.dd === 0.U) {
        inited := true.B
    }

    io.mem.rdata := Mux(
        io.mem.mode === MEMT.LD && inited && rs < program_length,
        MuxLookup(
            io.mem.mode,
            0.U(64.W),
            Seq(
                MEMT.LD  -> Cat(program(rs+1.U), program(rs)),
                MEMT.LWU -> Cat(0.U(32.W), program(rs)),
                MEMT.LHU -> Cat(0.U(48.W), program(rs)(rm+15,rm))
                MEMT.LBU -> Cat(0.U(56.W), program(rs)(rm+7, rm))
                MEMT.LW  -> Cat(Mux(program(rs)(31), 0xffffffff.U(32.W), 0.U(32.W)), program(rs))
                MEMT.LH  -> Cat(Mux(program(rs)(rm+15), 0xffffffffffffL.U(48.W), 0.U(48.W)), program(rs)(rm+15,rm))
                MEMT.LB  -> Cat(Mux(program(rs)(rm+7), 0xffffffffffffffL.U(56.W), 0.U(56.W)), program(rs)(rm+7,rm))
            )
        ),
        0.U(64.W)
    )
}

object MemoryTest extends App {
    chisel3.Driver.execute(args, () => new MemoryTest);
}
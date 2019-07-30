package cpu;

import chisel3._
import chisel3.util._

class MemoryTest extends Module {

    val io = IO(new Bundle {
        val mem  = new RAMOp
        val init = Input(Bool())
     //   val init_serial  = Input(Bool())
        val dd   = Input(UInt(32.W)) // default data
    })

    val program = Mem(0x800000, UInt(8.W))
   // val serial  = Mem(0x10000, UInt(8.W))

    val inited = RegInit(false.B)
    val dindex = RegInit(0.U(32.W))
   // val sindex = RegInit(0.U(32.W))
    val scnt   = RegInit(0.U(32.W))

    val program_length = dindex
    val rs = io.mem.addr
    val ws = io.mem.addr

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

    val serial_addr = "b00000000011111111111111111111000".U(64.W)
    val tohost = "h00001000".U(64.W)

    when (inited) {
        //printf("IN %x  %x %x , mode %x\n", ws, io.mem.wdata, io.mem.rdata, io.mem.mode)
    }

    when (!inited && io.init) {
        program(dindex+3.U) := io.dd(31,24)
        program(dindex+2.U) := io.dd(23,16)
        program(dindex+1.U) := io.dd(15,8)
        program(dindex) := io.dd(7,0)
        dindex := dindex + 4.U
    }

    when (inited && io.mem.mode === MEMT.SD) {
        for (i <- 0 until 8) {
            program(ws+i.U) := io.mem.wdata(i*8+7, i*8)
        }
    }

    when (inited && io.mem.mode === MEMT.SW) {
        when(ws === tohost) {
          printf("[RESULT]: write to host !!! %x \n ", io.mem.wdata)
        }
        for (i <- 0 until 4) {
            program(ws+i.U) := io.mem.wdata(i*8+7, i*8)
        }
    }

    when (inited && io.mem.mode === MEMT.SH) {
        for (i <- 0 until 2) {
            program(ws+i.U) := io.mem.wdata(i*8+7, i*8)
        }
    }

    when (inited && io.mem.mode === MEMT.SB) {
        program(ws) := io.mem.wdata(7,0)
    }

    when (!inited && !io.init) {
        inited := true.B
        for (i <- 0 until 15) {
            program(dindex+i.U) := 0.U(8.W)
        }
    }

    val rdata_temp = Mux(
        io.mem.mode(3) && inited,
        MuxLookup(
            io.mem.mode,
            0.U(64.W),
            Seq(
                MEMT.LD  -> data,
                MEMT.LWU -> Cat(0.U(32.W), data(31,0)),
                MEMT.LHU -> Cat(0.U(48.W), data(15,0)),
                MEMT.LBU -> //Mux(rs === serial_addr, serial(scnt), Cat(0.U(56.W), data(7,0))),
                Cat(0.U(56.W), data(7,0)),
                MEMT.LW  -> Cat(Mux(data(31), 0xffffffffL.U(32.W), 0.U(32.W)), data(31,0)),
                MEMT.LH  -> Cat(Mux(data(15), 0xffffffffffffL.U(48.W), 0.U(48.W)), data(15,0)),
                MEMT.LB  -> Cat(Mux(data(7), 0xffffffffffffffL.U(56.W), 0.U(56.W)), data(7,0))
            )
        ),
        0.U(64.W)
    )

    // when (inited && io.mem.mode === MEMT.LBU && rs === serial_addr) {
    //     printf("%c", serial(scnt))
    //     scnt := scnt + 1.U
    // }
    val working = io.mem.mode =/= MEMT.NOP
    val rdata = RegInit(0.U(64.W))

    when (working) { 
        rdata := rdata_temp
    }

    io.mem.ready := true.B
    io.mem.rdata  := rdata
}

object MemoryTest extends App {
    chisel3.Driver.execute(args, () => new MemoryTest);
}

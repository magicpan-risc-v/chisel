package cpu;

import chisel3._
import chisel3.util._

class IOManager extends Module {
    val io =  IO(new Bundle {
        val mem_if  = new Memory // IF段的需求
        val mem_mem = new Memory // MEM段的需求
        val mem_out = Flipped(new Memory) // 传递给RAM的需求
    })

    val nmn = io.mem_mem.mode === MEMT.NOP // no MEM need

    io.mem_if.rdata  := io.mem_out.rdata
    io.mem_mem.rdata := io.mem_out.rdata
    io.mem_out.mode  := Mux(nmn, io.mem_if.mode,  io.mem_mem.mode)
    io.mem_out.raddr := Mux(nmn, io.mem_if.raddr, io.mem_mem.raddr)
    io.mem_out.waddr := io.mem_mem.waddr
    io.mem_out.wdata := io.mem_mem.wdata
}
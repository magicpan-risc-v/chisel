package cpu;

import chisel3._
import chisel3.util._

class IOManager extends Module {
    val io =  IO(new Bundle {
        val mem_if  = new RAMOp // IF段的需求
        val mem_mem = new RAMOp // MEM段的需求
        val mem_out = Flipped(new RAMOp) // 传递给RAM的需求

        val serial_out = Flipped(new RAMOp)
    })

    val nmn = io.mem_mem.mode === MEMT.NOP // no MEM need

    io.mem_if.rdata  := Mux(nmn, io.mem_out.rdata, 0.U(64.W))
    io.mem_mem.rdata := Mux(nmn, 0.U(64.W), io.mem_out.rdata)
    io.mem_out.mode  := Mux(nmn, io.mem_if.mode,  io.mem_mem.mode)
    io.mem_out.addr := Mux(nmn, io.mem_if.addr, io.mem_mem.addr)
    //io.mem_out.waddr := io.mem_mem.waddr
    io.mem_out.wdata := io.mem_mem.wdata

    io.serial_out.mode  := MEMT.NOP
    io.serial_out.addr  := 0.U(64.W)
    io.serial_out.wdata := 0.U(64.W)

    io.mem_if.ready  := nmn && io.mem_out.ready
    io.mem_mem.ready := io.mem_out.ready
}

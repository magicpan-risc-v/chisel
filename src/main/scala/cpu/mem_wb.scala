package cpu;

import chisel3._
import chisel3.util._

class MEM_WB extends Module {
    val io =  IO(new Bundle {
        val en    = Input(Bool())
        val pass  = Input(Bool())

        val wregi = Flipped(new WriteBackReg)
        val csr_wb_i = new WrCsrReg
        val wrego = new WriteBackReg
        val csr_wb_o  = Flipped(new WrCsrReg)
    })

    val wbrv = RegInit(false.B)
    val wbrd = RegInit(0.U(64.W))
    val wbri = RegInit(0.U(5.W))
    val csr_wb  = RegInit(0.U.asTypeOf(new WrCsrReg))

    io.wrego.wbrd := wbrd
    io.wrego.wbrv := wbrv
    io.wrego.wbri := wbri
    io.csr_wb_o  := csr_wb

    when (io.en && io.pass) {
        wbri  := io.wregi.wbri
        wbrv  := io.wregi.wbrv
        wbrd  := io.wregi.wbrd
        csr_wb  := io.csr_wb_i

        //printf("MEM_WB : wbri = %d\n", wbri)
        //printf("MEM_WB : wbrv = %d\n", wbrv)
        //printf("MEM_WB : wbrd = %d\n", wbrd)
    }
}

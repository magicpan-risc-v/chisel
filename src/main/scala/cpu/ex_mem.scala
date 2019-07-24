package cpu;

import chisel3._
import chisel3.util._

class EX_MEM extends Module {
    val io =  IO(new Bundle {
        val en    = Input(Bool())

        val nlsi  = Input(Bool())
        val lsmi  = Input(UInt(4.W))
        val addri = Input(UInt(64.W))
        val datai = Input(UInt(64.W))
        val wregi = Flipped(new WriteBackReg)
        val csr_wb_i = new WrCsrReg
        
        val nlso  = Output(Bool())
        val lsmo  = Output(UInt(4.W))
        val addro = Output(UInt(64.W))
        val datao = Output(UInt(64.W))
        val wrego = new WriteBackReg
        val csr_wb_o = Flipped(new WrCsrReg)
    })

    val nls  = RegInit(false.B)
    val wbrv = RegInit(false.B)
    val wbrd = RegInit(0.U(64.W))
    val wbri = RegInit(0.U(5.W))
    val lsm  = RegInit(15.U(4.W))
    val addr = RegInit(0.U(64.W))
    val data = RegInit(0.U(64.W))
    val csr_wb  = RegInit(0.U.asTypeOf(new WrCsrReg))

    io.nlso := nls
    io.wrego.wbrd := wbrd
    io.wrego.wbrv := wbrv
    io.wrego.wbri := wbri
    io.lsmo := lsm
    io.addro := addr
    io.datao := data
    io.csr_wb_o  := csr_wb

    when (io.en) {
        nls   := io.nlsi
        wbri  := io.wregi.wbri
        wbrv  := io.wregi.wbrv
        wbrd  := io.wregi.wbrd
        lsm   := io.lsmi
        addr  := io.addri
        data  := io.datai
        csr_wb  := io.csr_wb_i

        
        //printf("EX_MEM : nls   = %d\n", nls)
        //printf("EX_MEM : wbri  = %d\n", wbri)
        //printf("EX_MEM : wbrv  = %d\n", wbrv)
        //printf("EX_MEM : wbrd  = %d\n", wbrd)
        //printf("EX_MEM : lsm   = %d\n", lsm)
        //printf("EX_MEM : addr  = %d\n", addr)
        //printf("EX_MEM : data  = %d\n", data)
        
    }
}

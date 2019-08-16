package cpu;

import chisel3._
import chisel3.util._

class EX_MEM extends Module {
    val io =  IO(new Bundle {
        val en    = Input(Bool())
        val pass  = Input(Bool())
        val flush = Input(Bool())

        val nlsi  = Input(Bool())
        val lsmi  = Input(UInt(4.W))
        val addri = Input(UInt(64.W))
        val datai = Input(UInt(64.W))
        val wregi = Flipped(new WriteBackReg)
        val csr_wb_i = new WrCsrReg
        val excep_i  = Flipped(new Exception)
        val inter_i = Input(Valid(UInt(32.W)))
        
        val nlso  = Output(Bool())
        val lsmo  = Output(UInt(4.W))
        val addro = Output(UInt(64.W))
        val datao = Output(UInt(64.W))
        val wrego = new WriteBackReg
        val csr_wb_o = Flipped(new WrCsrReg)
        val excep_o  = new Exception
        val inter_o = Output(Valid(UInt(32.W)))
    })

    val nls  = RegInit(false.B)
    val wbrv = RegInit(false.B)
    val wbrd = RegInit(0.U(64.W))
    val wbri = RegInit(0.U(5.W))
    val lsm  = RegInit(15.U(4.W))
    val addr = RegInit(0.U(64.W))
    val data = RegInit(0.U(64.W))
    val csr_wb  = RegInit(0.U.asTypeOf(new WrCsrReg))
    val excep   = RegInit(0.U.asTypeOf(new Exception))
    val inter   = RegInit(0.U.asTypeOf(Valid(UInt(32.W))))

    io.nlso := nls
    io.wrego.wbrd := wbrd
    io.wrego.wbrv := wbrv
    io.wrego.wbri := wbri
    io.lsmo := lsm
    io.addro := addr
    io.datao := data
    io.csr_wb_o  := csr_wb
    io.excep_o   := excep
    io.inter_o   := inter

    when (io.en && io.pass) {
        val have_excep = ( io.excep_i.valid || io.inter_i.valid ) && io.excep_i.inst_valid
        nls   := Mux(io.flush || have_excep, false.B, io.nlsi)
        wbri  := Mux(io.flush, 0.U(5.W), io.wregi.wbri)
        wbrv  := Mux(io.flush, false.B, Mux(have_excep, false.B, io.wregi.wbrv))
        wbrd  := Mux(io.flush, 0.U(64.W), io.wregi.wbrd)
        lsm   := Mux(io.flush, MEMT.NOP, Mux(have_excep, MEMT.NOP, io.lsmi))
        addr  := Mux(io.flush, -1.S(64.W).asUInt, io.addri)
        data  := Mux(io.flush, 0.U(64.W), io.datai)

        csr_wb.valid    := Mux(io.flush, false.B, Mux(have_excep, true.B, io.csr_wb_i.valid))
        csr_wb.csr_idx  := io.csr_wb_i.csr_idx
        csr_wb.csr_data := io.csr_wb_i.csr_data
        excep   := io.excep_i
        inter   := io.inter_i

        when(io.flush) {
          excep.valid := false.B
          excep.inst_valid := false.B
          inter.valid := false.B
        }
    }
}

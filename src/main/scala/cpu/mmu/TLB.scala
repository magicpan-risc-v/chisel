package cpu;

import chisel3._
import chisel3.util._

class TLBQuery extends Bundle {
    val req  = Input(new PNReq)
    val rsp  = Output(new PTE)
    val miss = Output(Bool())
}

class TLBModify extends Bundle {
    val mode = Input(UInt(2.W))
    val vpn  = Input(new PN)
    val pte  = Input(new PTE)
}

object TLBT {
    val NOP = 0.U(2.W)
    val INS = 1.U(2.W)
    val RM = 2.U(2.W)
    val CLR = 3.U(2.W)
}

class TLBEntry extends Bundle {
    val vpn   = new PN
    val pte   = new PTE
}

class TLB extends Module {
    val io =  IO(new Bundle {
        val query  = new TLBQuery
        val modify = new TLBModify
    })

    val entries = Mem(32, new TLBEntry)
    val entries_valid = RegInit(0.U(32.W))

    val req_index = io.query.req.p0(4,0)
    val req_entry = entries(req_index)
    val req_valid = io.query.req.valid && entries_valid(req_index)

    val modify_index = io.modify.vpn.p0(4,0)

    io.query.rsp  := 0.U(64.W).asTypeOf(new PTE)
    io.query.miss := true.B

    // query
    when (req_valid && req_entry.vpn.cat === io.query.req.cat) {
        // TLB hit
        io.query.rsp  := req_entry.pte
        io.query.miss := true.B
    }

    // modify
    switch (io.modify.mode) {
        is (TLBT.CLR) {
            entries_valid := 0.U(32.W)
        }
        is (TLBT.INS) {
            entries_valid := entries_valid | (1L.U << modify_index)

            entries(modify_index).vpn := io.modify.vpn
            entries(modify_index).pte := io.modify.pte
        }
        is (TLBT.RM) {
            when (entries(modify_index).vpn.cat === io.modify.vpn.cat) {
                entries_valid := entries_valid & ~(1L.U << modify_index)
            }
        }
    }
}
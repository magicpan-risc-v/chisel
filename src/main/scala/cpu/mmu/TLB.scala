package cpu;

import chisel3._
import chisel3.util._

// TLB 接了两个，一个是Query一个是Modify

class TLBQuery extends Bundle {
    val req  = Input(new PNReq) // 接受到的VPN请求
    val rsp  = Output(new PTE)  // 返回的PTE
    val miss = Output(Bool())   // 是否没有查到
}

class TLBModify extends Bundle {
    val mode = Input(UInt(2.W)) // 修改的MODE，下面两个是INS的参数
    val vpn  = Input(new PN)
    val pte  = Input(new PTE)
}

object TLBT {
    val NOP = 0.U(2.W)
    val INS = 1.U(2.W) // 插入对应的TLB项(vpn,pte)
    val RM = 2.U(2.W)  // 删掉一个TLB项
    val CLR = 3.U(2.W) // 删掉所有TLB项
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

    // 一共32个TLB项，entries_valid用来表征TLB项是否有效
    // 要删掉TLB项的时候直接操作valid就可以
    val entries = Mem(32, new TLBEntry)
    val entries_valid = RegInit(0.U(32.W))

    val req_index = io.query.req.p0(4,0)
    val req_entry = entries(req_index)
    val req_valid = io.query.req.valid && entries_valid(req_index)

    // 每个TLB项用VPN的p0最后5位映射
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
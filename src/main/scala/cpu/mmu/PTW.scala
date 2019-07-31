package cpu;

import chisel3._
import chisel3.util._

class PN extends Bundle{
    val p2 = UInt(9.W)
    val p1 = UInt(9.W)
    val p0 = UInt(9.W)

    def cat: UInt = Cat(p2,p1,p0)
}

class PTE extends Bundle {
    val reserve = UInt(10.W)
    val zero    = UInt(17.W)
    val ppn     = new PN
    val RSW     = UInt(2.W)
    
    val D = Bool()
    val A = Bool()
    val G = Bool()
    val U = Bool()
    val X = Bool()
    val W = Bool()
    val R = Bool()
    val V = Bool()
}

class PNReq extends PN {
    val valid = Bool() // 表示请求是否有效
}

class PTW extends Module {
    val io =  IO(new Bundle {
        val root  = Input(new PN) // 最上层页表的页码
        val req   = Input(new PNReq) // 接收到的VPN请求
        val rsp   = Output(new PTE) 
        val ready = Output(Bool()) // 是否完成
        val pf    = Output(Bool()) // page fault
        val mem   = Flipped(new RAMOp) // MMU -> IOManager
    })

    val waitNone::wait2::wait1::wait0::Nil = Enum(4)
    val wait_status = RegInit(waitNone)

    // 缓存的请求
    val req  = RegInit(0.U(27.W).asTypeOf(new PN))
    val read = RegInit(false.B)
    val addr = RegInit(0.U(32.W))
    
    val pte = io.mem.rdata.asTypeOf(new PTE)
    val pte_invalid = !pte.V || (!pte.R && pte.W)
    val pte_leaf    = pte.R  || pte.X
    val addr2    = Cat(io.root.cat, io.req.p2, 0.U(3.W))
    val addr1    = Cat(pte.ppn.cat, req.p1, 0.U(3.W))
    val addr0    = Cat(pte.ppn.cat, req.p0, 0.U(3.W))

    // 默认输出
    io.mem.mode  := Mux(read, MEMT.LD, MEMT.NOP)
    io.mem.addr  := addr
    io.mem.wdata := 0.U(64.W)
    io.rsp       := 0.U(64.W).asTypeOf(new PTE)
    io.pf        := false.B
    io.ready     := false.B

    switch (wait_status) {
        is (waitNone) { 
            // 初始状态
            when (io.req.valid) {
                wait_status := wait2
                io.mem.mode := MEMT.LD
                io.mem.addr := addr2

                // 缓存请求
                req.p2      := io.req.p2
                req.p1      := io.req.p1
                req.p0      := io.req.p0
                addr        := addr2
                read        := true.B
            }
        }
        is (wait2) {
            // 正在查第一级页表
            when (io.mem.ready) {
                when (pte_invalid) {
                    // invalid, raise a page-fault
                    wait_status := waitNone
                    io.pf       := true.B
                    io.ready    := true.B
                    read        := false.B
                } .elsewhen (pte_leaf) {
                    wait_status := waitNone
                    io.rsp      := pte
                    // misaligned superpage
                    io.pf       := !(pte.ppn.p1.orR || pte.ppn.p0.orR)
                    io.ready    := true.B
                    read        := false.B
                } .otherwise {
                    // 进入下一级页表
                    wait_status := wait1
                    addr        := addr1
                }
            }
        }
        is (wait1) {
            // 正在查第二级页表
            when (io.mem.ready) {
                when (pte_invalid) {
                    // invalid, raise a page-fault
                    wait_status := waitNone
                    io.pf       := true.B
                    io.ready    := true.B
                    read        := false.B
                } .elsewhen (pte_leaf) {
                    wait_status := waitNone
                    io.rsp      := pte
                    // misaligned superpage
                    io.pf       := !pte.ppn.p0.orR
                    io.ready    := true.B
                    read        := false.B
                } .otherwise {
                    // 进入下一级页表
                    wait_status := wait0
                    addr        := addr0
                }
            }
        }
        is (wait0) {
            // 正在查第三级页表
            when (io.mem.ready) {
                wait_status := waitNone
                read        := false.B
                io.ready    := true.B
                when (pte_invalid || !pte_leaf) {
                    io.pf       := true.B
                } .otherwise {
                    io.rsp      := pte
                }
            }
        }
    }
}
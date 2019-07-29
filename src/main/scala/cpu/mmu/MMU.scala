package cpu;

import chisel3._
import chisel3.util._

class MMU extends Module {
    val io =  IO(new Bundle {
        val en    = Input(Bool())

        val insr = new MMUOp // InstReader -> MMU
        val mem = new MMUOp  // MEM  -> MMU

        val csr = Flipped(new CSR_MMU) // CSR -> MMU

        val if_iom = Flipped(new RAMOp)  // MMU -> IOManager
        val mem_iom = Flipped(new RAMOp)  // MMU -> IOManager
    })

    val ptw_if  = Module(new PTW)
    val ptw_mem = Module(new PTW) 
    val csr = RegInit(0.U.asTypeOf(new CSR_MMU))

    //val en  = csr.satp(63,60) === 8.U(4.W) && csr.priv =/= Priv.M
    val en     = false.B
    val is_mem = io.mem.mode =/= MEMT.NOP
    val is_if  = io.insr.mode =/= MEMT.NOP && !is_mem

    val waitNone::waitPTW::waitIO::Nil = Enum(3)
    val wait_status = RegInit(waitNone)
    val mode = RegInit(0.U(4.W))
    val addr = RegInit(0.U(64.W))
    val wdata = RegInit(0.U(64.W))
    
    // 从SATP中获取页表基地址
    val root   = csr.satp(26, 0).asTypeOf(new PN)
    val ready  = wait_status === waitNone

    io.insr.ready   := ready
    io.mem.ready    := ready
    io.insr.rdata   := io.if_iom.rdata
    io.mem.rdata    := io.mem_iom.rdata
    io.insr.pageFault := false.B
    io.mem.pageFault  := false.B

    ptw_if.io.root  := root
    ptw_mem.io.root := root

    ptw_if.io.mem.ready := io.if_iom.ready
    ptw_if.io.mem.rdata := io.if_iom.rdata
    
    ptw_mem.io.mem.ready := io.mem_iom.ready
    ptw_mem.io.mem.rdata := io.mem_iom.rdata

    io.if_iom.mode    := Mux(
        wait_status === waitPTW,
        ptw_if.io.mem.mode,
        io.insr.mode
    )
    io.if_iom.wdata   := 0.U(64.W)
    io.if_iom.addr    := Mux(
        wait_status === waitPTW,
        ptw_if.io.mem.addr,
        io.insr.addr
    )
    
    io.mem_iom.mode  := Mux(
        wait_status === waitPTW,
        ptw_mem.io.mem.mode,
        io.mem.mode
    )
    io.mem_iom.wdata := Mux(
        wait_status === waitPTW,
        0.U(64.W),
        io.mem.wdata
    )
    io.mem_iom.addr  := Mux(
        wait_status === waitPTW,
        ptw_mem.io.mem.addr,
        io.mem.addr
    )

    ptw_if.io.req.p2 := io.insr.addr(38,30)
    ptw_if.io.req.p1 := io.insr.addr(29,21)
    ptw_if.io.req.p0 := io.insr.addr(20,12)
    ptw_if.io.req.valid := is_if

    ptw_mem.io.req.p2 := io.mem.addr(38,30)
    ptw_mem.io.req.p1 := io.mem.addr(29,21)
    ptw_mem.io.req.p0 := io.mem.addr(20,12)
    ptw_mem.io.req.valid := is_mem

    val ptw_if_ready  = is_if && ptw_if.io.ready
    val ptw_mem_ready = is_mem && ptw_mem.io.ready
    val pte = PriorityMux(Seq(
        (ptw_if_ready  , ptw_if.io.rsp),
        (ptw_mem_ready , ptw_mem.io.rsp),
        (true.B        , 0.U(64.W).asTypeOf(new PTE))
    ))
    val pf  = PriorityMux(Seq(
        (ptw_if_ready  , ptw_if.io.pf),
        (ptw_mem_ready , ptw_mem.io.pf),
        (true.B        , false.B)
    ))
    val e_user  = csr.priv === Priv.U && !pte.U
    val e_exec  = !pte.X
    val e_read  = MEMT.isRead(io.mem.mode) && !(pte.R || (pte.X && csr.mxr))
    val e_write = MEMT.isWrite(io.mem.mode) && !pte.W
    val e_sum   = csr.priv === Priv.S && !csr.sum & pte.U
    val e_if    = pf || e_user || e_exec
    val e_mem   = pf || e_user || e_read || e_write || e_sum

    when (true.B) {
        printf("wait_status = %d\n", wait_status)
    }

    when (io.en) {
        switch (wait_status) {
            is (waitNone) { 
                when (is_if || is_mem) {
                    wait_status := Mux(en, waitPTW, waitIO)
                }
            }

            is (waitPTW) {
                when (ptw_if_ready) { 
                    io.insr.pageFault := e_if
                    wait_status := Mux(e_if, waitNone, waitIO)
                }
                when (ptw_mem_ready) {
                    io.mem.pageFault  := e_mem
                    wait_status := Mux(e_mem, waitNone, waitIO)
                }
            }

            is (waitIO) {
                when (io.if_iom.ready && io.mem_iom.ready) {
                    wait_status := waitNone
                }
            }
        }
    }
    
    
}
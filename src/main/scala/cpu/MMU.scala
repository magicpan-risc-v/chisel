
package cpu;

import chisel3._
import chisel3.util._

class MMU extends Module {
  val io = IO(new Bundle{
    val en    = Input(Bool())

    val insr = new MMUOp // InstReader -> MMU
    val insr_rst = Input(Bool())
    val mem = new MMUOp  // MEM  -> MMU

    val csr = Flipped(new CSR_MMU) // CSR -> MMU

    val if_iom = Flipped(new RAMOp)  // MMU -> IOManager
    val mem_iom = Flipped(new RAMOp)  // MMU -> IOManager
  })

  val waitNone::waitIO:: Nil = Enum(2)
  val if_status = RegInit(waitNone)
  val if_addr  = RegInit(0.U(64.W))

  // FIXME 
  io.if_iom.mode    := io.insr.mode
  io.if_iom.addr   := io.insr.addr -  0xC0020000L.U(64.W)
  io.if_iom.wdata    := 0.U(64.W)
  io.insr.rdata     := io.if_iom.rdata
  io.mem_iom.mode   := io.mem.mode
  io.mem_iom.addr  := io.mem.addr - 0xC0020000L.U(64.W)
  io.mem.rdata      := io.mem_iom.rdata
  io.mem_iom.wdata  := io.mem.wdata

  io.insr.ready  := false.B//io.insr.mode =/= MEMT.NOP && if_status =/= waitNone && io.if_iom.ready //(if_addr === io.insr.addr)
  io.mem.ready  := io.mem_iom.ready

  switch (if_status) {
    is(waitNone) { 
      when (io.insr.mode =/= MEMT.NOP && io.mem.mode === MEMT.NOP) {
        if_status := waitIO
        if_addr   := io.insr.addr
      }
    }
    is (waitIO) { 
      when (io.if_iom.ready) {
        if_status := waitNone
        when (if_addr === io.insr.addr && !io.insr_rst) {
          io.insr.ready := true.B
        } .otherwise {
          // when (io.insr.mode === MEMT.NOP) {
          //   if_status := waitNone
          // }
          if_addr := io.insr.addr
        }
      }
    }
  }

  when (io.en) {
    // // when (io.if_iom.ready || if_status === waitNone) {d
    // //   if_addr       := io.insr.addr
    // // }
    // when (if_status === waitNone && io.insr.mode =/= MEMT.NOP) {
    //   if_status := waitIO
    //   if_addr   := io.insr.addr
    // }
    // when (if_status === waitIO && (io.if_iom.ready || io.insr.mode === MEMT.NOP)) {
    //   when (if_addr === io.insr.addr || io.insr.mode === MEMT.NOP) {
    //     if_status := waitNone
    //   } .otherwise {
    //     if_addr       := io.insr.addr
    //   }
    // }
      
    //  printf("mmu_in_addr = %x\n", io.insr.addr)
    // printf("mmu_if_mode  = %d\n", io.insr.mode)
    //   printf("mmu_mem_mode = %d\n", io.mem.mode)
    //   printf("mmu_mem_rdata  = %x\n", io.mem.rdata)
    //  printf("mmu_in_ready = %d\n", io.insr.ready)
    // // printf("if_addr     = %x\n", if_addr)
    //   printf("if_status   = %d\n", if_status)
    // printf("mmu_outd    = %d\n", io.if_iom.rdata)
  }
  
  io.insr.pageFault := false.B
  io.mem.pageFault  := false.B
}

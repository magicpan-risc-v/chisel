package cpu;

import chisel3._
import chisel3.util._

class InsReader extends Module {
    val io =  IO(new Bundle {
        val jump   = Input(Bool()) // EX jump
        val jdest  = Input(UInt(64.W)) // EX jdest
        val nls    = Input(Bool()) // EX_MEM need load or store
        val lpc    = Input(UInt(64.W)) // last PC
        val insp   = Input(UInt(64.W)) // pre-loaded 
        val inspd  = Input(UInt(64.W))

        val bubble = Input(Bool()) // from decoder, still at the same PC

        val ins   = Output(UInt(32.W))
        val pc    = Output(UInt(64.W))
        val insn  = Output(UInt(64.W)) // 预读取的指令
        val insnd = Output(UInt(64.W)) // 预读取的指令所在地址

        val mmu   = Flipped(new IF_MMU) // Self -> MMU
        val excep = new Exception
    })

    val npc   = io.lpc + 4.U
    val cnrc  = io.jump || io.inspd(63,3) =/= npc(63,3) // can not read from cache
    /*val pco   = Mux(
        io.bubble, io.lpc,
        Mux(
            cnrc, Mux(
                io.nls, io.lpc, Mux(io.jump, io.jdest, npc)
            ), npc
        )
    )*/
    val pco   = Mux(
        io.bubble, io.lpc,
        Mux(
            cnrc, Mux(io.jump, io.jdest, npc), npc
        )
    )
    val nread = !(io.bubble || io.nls) && cnrc
    val ins   = Mux(
        io.bubble || !cnrc, Mux(
            pco(2), io.insp(63,32), io.insp(31,0)
        ), Mux(
            io.nls,
            0.U(32.W), // NOP
            Mux(
                pco(2), io.mmu.rdata(63,32), io.mmu.rdata(31,0)
            )
        )
    )
    val insn  = Mux(nread, io.mmu.rdata, io.insp)
    val jnpc  = Mux(io.jump, io.jdest, pco)
    val addr = jnpc & 0xfffffffffffffff8L.S(64.W).asUInt

    io.mmu.addr := Mux(nread, addr, 0.U(64.W))
    io.mmu.mode  := Mux(nread, MEMT.LD, MEMT.NOP)
    
    // TODO just default case, we need to do more here
    io.excep.pc := io.pc
    io.excep.valid := false.B
    io.excep.code  := 0.U
    io.excep.value := 0.U

    io.pc   := Mux(!cnrc || io.mmu.ready, jnpc, jnpc - 4.U)
    io.ins  := Mux(!cnrc || io.mmu.ready, ins,  0.U(64.W))
    io.insn := Mux(!cnrc || io.mmu.ready, insn, io.insp)
    io.insnd := Mux(io.mmu.ready && nread, addr, io.inspd)

    when (true.B) {
        //printf("if_ready = %d \n", io.mmu.ready)
        //printf("nread    = %d \n", nread)
        //printf("addr     = %x \n", io.mmu.addr)
        //printf("rdata    = %x \n", io.mmu.rdata)
        //printf("jnpc     = %x \n", jnpc)
    }
}

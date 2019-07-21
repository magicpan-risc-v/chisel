package cpu;

import chisel3._
import chisel3.util._

class InsReader extends Module {
    val io =  IO(new Bundle {
        val jump   = Input(Bool()) // EX jump
        val jdest  = Input(UInt(64.W)) // EX jdest
        val nls    = Input(Bool()) // EX_MEM need load or store
        val lpc    = Input(UInt(64.W)) // last PC
        val insp   = Input(UInt(64.W)) // pre-loaded instruction
        val bubble = Input(Bool()) // from decoder, still at the same PC

        val ins   = Output(UInt(32.W))
        val pc    = Output(UInt(64.W))
        val insn  = Output(UInt(64.W)) // 预读取的指令

        val mmu   = Flipped(new IF_MMU) // Self -> MMU
    })

    val npc   = io.lpc + 4.U
    val cnrc  = !npc(2) || io.jump // can not read from cache
    val pco   = Mux(
        io.bubble, io.lpc,
        Mux(
            cnrc, Mux(
                io.nls, io.lpc, Mux(io.jump, io.jdest, npc)
            ), npc
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
    val raddr = pco & 0xfffffffffffffff8L.S(64.W).asUInt

    io.mmu.raddr := Mux(nread, raddr, 0.U(64.W))
    io.mmu.mode  := Mux(nread, MEMT.LD, MEMT.NOP)

    io.pc   := Mux(io.jump && pco =/= io.jdest, io.jdest - 4.U, pco)
    io.ins  := ins
    io.insn := insn
}

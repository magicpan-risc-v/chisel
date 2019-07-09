package cpu;

import chisel3._
import chisel3.util._

class ImmGen extends Module {
    val io =  IO(new Bundle {
        val ins = Input(UInt(32.W))
        val ins_type = Input(UInt(3.W))
        val imm = Output(UInt(64.W))
    })

    io.ins_type := MuxLookup(
        ins_type,
        0.U(64.W),
        Seq(
            INST.R_TYPE -> 0.U(64.W),
            INST.I_TYPE -> Cat(0.U(52.W), ins(31,20)),
            INST.S_TYPE -> Cat(0.U(52,W), ins(31,25), ins(11, 7)),
            INST.B_TYPE -> Cat(0.U(52.W), ins(31), ins(7), ins(30,25), ins(11,8), 0.U(1.W)),
            INST.U_TYPE -> Cat(0.U(32.W), ins(31,12), 0.U(12.W)),
            INST.J_TYPE -> Cat(0.U(43.W), ins(31), ins(19,12), ins(20), ins(30,21), 0.U(1.W))
        )
    )
}
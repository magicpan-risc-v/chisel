package cpu;

import chisel3._
import chisel3.util._

class ImmGen extends Module {
    val io =  IO(new Bundle {
        val uns = Input(Bool())
        val ins = Input(UInt(32.W))
        val ins_type = Input(UInt(3.W))
        val imm = Output(UInt(64.W))
    })

    val sign = !io.uns && io.ins(31)

    io.imm := MuxLookup(
        io.ins_type,
        0.U(64.W),
        Seq(
            INST.R_TYPE -> 0.U(64.W),
            INST.I_TYPE -> Cat(Mux(sign, 0xfffffffffffffL.U(52.W), 0.U(52.W)), io.ins(31,20)),
            INST.S_TYPE -> Cat(Mux(sign, 0xfffffffffffffL.U(52.W), 0.U(52.W)), io.ins(31,25), io.ins(11, 7)),
            INST.B_TYPE -> Cat(Mux(sign, 0xfffffffffffffL.U(52.W), 0.U(52.W)), io.ins(31), io.ins(7), io.ins(30,25), io.ins(11,8), 0.U(1.W)),
            INST.U_TYPE -> Cat(Mux(sign, 0xffffffffL.U(32.W), 0.U(32.W)), io.ins(31,12), 0.U(12.W)),
            INST.J_TYPE -> Cat(Mux(sign, 0x7ffffffffffL.U(43.W), 0.U(43.W)), io.ins(31), io.ins(19,12), io.ins(20), io.ins(30,21), 0.U(1.W))
        )
    )
}
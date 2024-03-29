package cpu;

import chisel3._
import chisel3.util._

class ImmGen extends Module {
    val io =  IO(new Bundle {
        //val uns = Input(Bool())
        val ins = Input(UInt(32.W))
        val ins_type = Input(UInt(3.W))
        val imm = Output(UInt(64.W))
    })

    val sign = io.ins(31)

    io.imm := MuxLookup(
        io.ins_type,
        0.U(64.W),
        Seq(
            INST.R_TYPE -> 0.U(64.W),
            INST.I_TYPE -> Mux(
              Cat(io.ins(6), io.ins(4)).andR,      // for CSR*, imm is uimm in [19:15]
              Cat(0.U(59.W), io.ins(19,15)),
              Cat(Fill(52, sign), io.ins(31,20))
            ),
            INST.S_TYPE -> Cat(Fill(52, sign), io.ins(31,25), io.ins(11, 7)),
            INST.B_TYPE -> Cat(Fill(52, sign), io.ins(31), io.ins(7), io.ins(30,25), io.ins(11,8), 0.U(1.W)),
            INST.U_TYPE -> Cat(Fill(32, sign), io.ins(31,12), 0.U(12.W)),
            INST.J_TYPE -> Cat(Fill(43, sign), io.ins(31), io.ins(19,12), io.ins(20), io.ins(30,21), 0.U(1.W))
        )
    )
}

package cpu;

import chisel3._
import chisel3.util._

class ALUGen extends Module {
    val io =  IO(new Bundle {
        val ins = Input(UInt(32.W))
        val ins_type = Input(UInt(3.W))
        val ALUOp = Output(UInt(4.W))
    })

    io.ALUOp := MuxLookup(
        io.ins_type,
        0.U(4.W),
        Seq(
            INST.R_TYPE -> MuxLookup(
                Cat(io.ins(30), io.ins(14,12)),
                0.U(4.W),
                Seq(
                    "b0000".U -> ALUT.ALU_ADD, // or ADDW
                    "b1000".U -> ALUT.ALU_SUB, // or SUBW
                    "b0001".U -> ALUT.ALU_SLL, // or SLLW
                    "b0010".U -> ALUT.ALU_SLT,
                    "b0011".U -> ALUT.ALU_SLT, //SLTU
                    "b0100".U -> ALUT.ALU_XOR,
                    "b0101".U -> ALUT.ALU_SRL, // or SRLW
                    "b1101".U -> ALUT.ALU_SRA, // or SRAW
                    "b0110".U -> ALUT.ALU_OR,
                    "b0111".U -> ALUT.ALU_AND
                )
            ),
            INST.I_TYPE -> MuxLookup(
                Cat(io.ins(2), io.ins(14,12)),
                0.U(4.W),
                Seq(
                    "b1000".U -> ALUT.ALU_ADD,
                    "b1010".U -> ALUT.ALU_SLT,
                    "b1011".U -> ALUT.ALU_SLT,
                    "b1100".U -> ALUT.ALU_XOR,
                    "b1110".U -> ALUT.ALU_OR,
                    "b1111".U -> ALUT.ALU_AND,
                    "b1001".U -> ALUT.ALU_SLL,
                    "b1101".U -> Mux(
                        io.ins(30),
                        ALUT.ALU_SRA,
                        ALUT.ALU_SRL
                    )
                )
            )
        )
    )
}
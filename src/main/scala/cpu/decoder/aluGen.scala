package cpu;

import chisel3._
import chisel3.util._

class ALUGen extends Module {
    val io =  IO(new Bundle {
        val ins = Input(UInt(32.W))
        val ins_type = Input(UInt(3.W))
        val ALUOp = Output(UInt(5.W))
    })

    io.ALUOp := MuxLookup(
        io.ins_type,
        0.U(4.W),
        Seq(
            INST.S_TYPE -> ALUT.ALU_ADD,
            INST.R_TYPE -> MuxLookup(
                Cat(io.ins(30), io.ins(14,12)),
                0.U(4.W),
                Seq(
                    "b0000".U -> ALUT.ALU_ADD, // or ADDW
                    "b1000".U -> ALUT.ALU_SUB, // or SUBW
                    "b0001".U -> ALUT.ALU_SLL, // or SLLW
                    "b0010".U -> ALUT.ALU_SLT,
                    "b0011".U -> ALUT.ALU_SLTU,
                    "b0100".U -> ALUT.ALU_XOR,
                    "b0101".U -> ALUT.ALU_SRL, // or SRLW
                    "b1101".U -> ALUT.ALU_SRA, // or SRAW
                    "b0110".U -> ALUT.ALU_OR,
                    "b0111".U -> ALUT.ALU_AND
                )
            ),
            INST.I_TYPE -> MuxLookup(
                Cat(io.ins(6), Cat(io.ins(4), io.ins(14,12))),
                ALUT.ALU_ADD, // L* or JALR
                Seq(
                    "b01000".U -> ALUT.ALU_ADD,
                    "b01010".U -> ALUT.ALU_SLT,
                    "b01011".U -> ALUT.ALU_SLTU,
                    "b01100".U -> ALUT.ALU_XOR,
                    "b01110".U -> ALUT.ALU_OR,
                    "b01111".U -> ALUT.ALU_AND,
                    "b01001".U -> ALUT.ALU_SLL,
                    "b01101".U -> Mux(
                        io.ins(30),
                        ALUT.ALU_SRA,
                        ALUT.ALU_SRL
                    ),
                    "b11010".U -> ALUT.ALU_OR, // CSRRS
                    "b11110".U -> ALUT.ALU_OR, // CSRRSI
                    "b11011".U -> ALUT.ALU_NOR, // CSRRC
                    "b11111".U -> ALUT.ALU_NOR,  // CSRRCI
                    "b11001".U -> ALUT.ALU_OUTA,  // CSRRW
                    "b11101".U -> ALUT.ALU_OUTA  // CSRRWI
                )
            )
        )
    )
}

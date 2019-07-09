package cpu;

import chisel3._
import chisel3.util._

/*
ins_type:
0: default
1: R-type
2: I-type
3: S-type
4: B-type
5: U-type
6: J-type
*/

object INST {
    val D_TYPE = 0.U(3.W)
    val R_TYPE = 1.U(3.W)
    val I_TYPE = 2.U(3.W)
    val S_TYPE = 3.U(3.W)
    val B_TYPE = 4.U(3.W)
    val U_TYPE = 5.U(3.W)
    val J_TYPE = 6.U(3.W)
}

class InsType extends Module {
    val io =  IO(new Bundle {
        val ins  = Input(UInt(32.W))
        val ins_type = Output(UInt(3.W))
    })

    io.ins_type := MuxLookup(
        io.ins(6,2),
        INST.D_TYPE,
        Seq(
            "b01100".U -> INST.R_TYPE, // ADD, SUB, SLL, SLT, SLTU, XOR, SRL, SRA, OR, AND
            'b01110'.U -> INST.R_TYPE, // ADDW, SUBW, SLLW, SRLW, SRAW

            "b00000".U -> INST.I_TYPE, // LB, LH, LW, LBU, LHU, *LWU, *LD
            "b00100".U -> INST.I_TYPE, // ADDI, SLTI, SLTIU, XORI, ORI, ANDI, SLLI, SRLI, SRAI, *SLLI, *SRLI, *SRAI
            "b11001".U -> INST.I_TYPE, // JALR
            'b00110'.U -> INST.I_TYPE, // (*)ADDIW, SLLIW, SRLIW, SRAIW

            "b01000".U -> INST.S_TYPE, // SB, SH, SW, *SD

            "b11000".U -> INST.B_TYPE, // BEQ, BNE, BLT, BGE, BLTU, BGEU

            "b00101".U -> INST.U_TYPE, // AUIPC
            "b01101".U -> INST.U_TYPE, // LUI
            
            "b11011".U -> INST.J_TYPE, // JAL

            /*
            CSRR* ECALL, EBREAK: 11100
            FENCE, FENCE.I: 00011
            */
        )
    )
}
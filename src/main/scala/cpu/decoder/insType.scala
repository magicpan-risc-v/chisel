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

object EXT {
    val ALU    = 0.U(3.W)
    val BRANCH = 1.U(3.W)
    val JUMP   = 2.U(3.W)
    val LOS    = 3.U(3.W) // load or store
    val AUIPC  = 4.U(3.W)
    val LUI    = 5.U(3.W)
    val FENCE  = 6.U(3.W)
    val SYS    = 7.U(3.W)
}

class InsType extends Module {
    val io =  IO(new Bundle {
        val ins  = Input(UInt(32.W))
        val ins_type = Output(UInt(3.W))
        val exe_type = Output(UInt(3.W))
        val op32 = Output(Bool())
        val csr_cal = Output(Bool())    // 当前这条CSR指令是否需要进行计算（CSRWR不需要）
        val csr_imm = Output(Bool())    // 当前这条CSR指令是否直接使用立即数进行运算
        val is_ecall = Output(Bool())   // 当前这条指令是否为ecall
        val is_ebreak = Output(Bool())  // 当前这条指令是否为ebreak
    })

    val funct3 = io.ins(14,12)
    val opcode = io.ins(6,2)

    io.op32 := (opcode === "b01110".U || opcode === "b00110".U) // 操作数是否是32位

    io.is_ecall := io.ins === "h00000073".U(32.W)
    io.is_ebreak := io.ins === "h00100073".U(32.W)

    io.csr_cal := MuxLookup(
        Cat(funct3, opcode),
        false.B,
        Seq(
            "b01011100".U -> true.B,  // CSRRS
            "b01111100".U -> true.B,  // CSRRC
            "b01011100".U -> true.B,  // CSRRSI
            "b11111100".U -> true.B   // CSRRCI
        )
    )

    io.csr_imm := MuxLookup(
        Cat(funct3, opcode),
        false.B,
        Seq(
            "b10111100".U -> true.B,  // CSRRWI
            "b11011100".U -> true.B,  // CSRRSI
            "b11111100".U -> true.B   // CSRRCI
        )
    )

    io.exe_type := Mux(io.ins(0), MuxLookup(
        opcode,
        EXT.ALU,
        Seq(
            "b01100".U -> EXT.ALU, // ADD, SUB, SLL, SLT, SLTU, XOR, SRL, SRA, OR, AND
            "b01110".U -> EXT.ALU, // ADDW, SUBW, SLLW, SRLW, SRAW

            "b00000".U -> EXT.LOS, // LB, LH, LW, LBU, LHU, *LWU, *LD
            "b00100".U -> EXT.ALU, // ADDI, SLTI, SLTIU, XORI, ORI, ANDI, SLLI, SRLI, SRAI, *SLLI, *SRLI, *SRAI
            "b00110".U -> EXT.ALU, // (*)ADDIW, SLLIW, SRLIW, SRAIW

            "b01000".U -> EXT.LOS, // SB, SH, SW, *SD

            "b11000".U -> EXT.BRANCH, // BEQ, BNE, BLT, BGE, BLTU, BGEU

            "b00101".U -> EXT.AUIPC, // AUIPC
            "b01101".U -> EXT.LUI, // LUI
            
            "b11011".U -> EXT.JUMP, // JAL
            "b11001".U -> EXT.JUMP, // JALR
            
            "b11100".U -> EXT.SYS, // CSRR* ECALL, EBREAK
            "b00011".U -> EXT.FENCE // FENCE[.I]
        )
    ), EXT.ALU)

    io.ins_type :=  Mux(io.ins(0), MuxLookup(
        opcode,
        INST.D_TYPE,
        Seq(
            "b01100".U -> INST.R_TYPE, // ADD, SUB, SLL, SLT, SLTU, XOR, SRL, SRA, OR, AND
            "b01110".U -> INST.R_TYPE, // ADDW, SUBW, SLLW, SRLW, SRAW

            "b00000".U -> INST.I_TYPE, // LB, LH, LW, LBU, LHU, *LWU, *LD
            "b00100".U -> INST.I_TYPE, // ADDI, SLTI, SLTIU, XORI, ORI, ANDI, SLLI, SRLI, SRAI, *SLLI, *SRLI, *SRAI
            "b11001".U -> INST.I_TYPE, // JALR
            "b00110".U -> INST.I_TYPE, // (*)ADDIW, SLLIW, SRLIW, SRAIW

            "b01000".U -> INST.S_TYPE, // SB, SH, SW, *SD

            "b11000".U -> INST.B_TYPE, // BEQ, BNE, BLT, BGE, BLTU, BGEU

            "b00101".U -> INST.U_TYPE, // AUIPC
            "b01101".U -> INST.U_TYPE, // LUI
            
            "b11011".U -> INST.J_TYPE, // JAL

            "b11100".U -> INST.I_TYPE  // CSRR* ECALL, EBREAK
            /*
            CSRR* ECALL, EBREAK: 11100
            FENCE, FENCE.I: 00011
            */
        )
    ), INST.D_TYPE)
}

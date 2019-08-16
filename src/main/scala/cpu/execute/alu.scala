package cpu;

import chisel3._
import chisel3.util._

object ALUT {
    val ALU_ZERO = 0.U(5.W)
    val ALU_OUTA = 1.U(5.W)
    val ALU_OUTB = 2.U(5.W)
    val ALU_ADD  = 3.U(5.W)
    val ALU_AND  = 4.U(5.W)
    val ALU_OR   = 5.U(5.W)
    val ALU_XOR  = 6.U(5.W)
    val ALU_SLT  = 7.U(5.W)
    val ALU_SLL  = 8.U(5.W)
    val ALU_SRL  = 9.U(5.W)
    val ALU_SRA  = 10.U(5.W)
    val ALU_SUB  = 11.U(5.W)
    val ALU_SLTU = 12.U(5.W)
    val ALU_NOR  = 13.U(5.W)
    val ALU_MUL  = 14.U(5.W)    // M extension
    val ALU_MULH = 15.U(5.W)
    val ALU_MULHU = 16.U(5.W)
    val ALU_MULHSU = 17.U(5.W)
    val ALU_DIV  = 19.U(5.W)
    val ALU_DIVU = 21.U(5.W)
    val ALU_REM  = 23.U(5.W)
    val ALU_REMU = 24.U(5.W)
}

class ALU extends Module {
    val io = IO(new Bundle {
        val ALUOp  = Input(UInt(5.W))
        val op32   = Input(Bool())
        val inputA = Input(UInt(64.W))
        val inputB = Input(UInt(64.W))
        val output = Output(UInt(64.W))
    })
    
    val shamt = io.inputB(5,0)
    val shamt32 = io.inputB(4,0)
    val inputA32 = io.inputA(31,0)
    val inputB32 = io.inputB(31,0)
    val op32res = MuxLookup(
        io.ALUOp,
        0.U(32.W),
        Seq(
            ALUT.ALU_ADD -> (inputA32 + inputB32),
            ALUT.ALU_SLL -> (inputA32 << shamt32),
            ALUT.ALU_SRL-> (inputA32 >> shamt32),
            ALUT.ALU_SRA -> ((inputA32.asSInt >> shamt32).asUInt),
            ALUT.ALU_SUB -> (inputA32 - inputB32),
            ALUT.ALU_MUL -> ( inputA32 * inputB32)(31,0),
            ALUT.ALU_DIV -> ( inputA32.asSInt / inputB32.asSInt)(31,0).asUInt,
            ALUT.ALU_DIVU -> ( inputA32 / inputB32 )(31,0),
            ALUT.ALU_REM  -> ( inputA32.asSInt % inputB32.asSInt )(31,0).asUInt,
            ALUT.ALU_REMU -> ( inputA32 % inputB32 )(31,0)
        )
    )
    io.output := Mux(io.op32, 
        Cat(Fill(32, op32res(31)), op32res(31,0)),
        MuxLookup(
            io.ALUOp,
            0.U(64.W),
            Seq(
                ALUT.ALU_ZERO -> 0.U(64.W),
                ALUT.ALU_OUTA -> io.inputA,
                ALUT.ALU_OUTB -> io.inputB,
                ALUT.ALU_ADD -> (io.inputA + io.inputB),
                ALUT.ALU_AND -> (io.inputA & io.inputB),
                ALUT.ALU_OR -> (io.inputA | io.inputB),
                ALUT.ALU_XOR -> (io.inputA ^ io.inputB),
                ALUT.ALU_SLTU -> ((io.inputA < io.inputB).asUInt),
                ALUT.ALU_SLT -> ((io.inputA.asSInt < io.inputB.asSInt).asUInt),
                ALUT.ALU_SLL -> (io.inputA << shamt),
                ALUT.ALU_SRL-> (io.inputA >> shamt),
                ALUT.ALU_SRA -> ((io.inputA.asSInt >> shamt).asUInt),
                ALUT.ALU_SUB -> (io.inputA - io.inputB),
                ALUT.ALU_NOR -> (~io.inputA & io.inputB),
                ALUT.ALU_MUL -> ( io.inputA.asSInt * io.inputB.asSInt)(63,0).asUInt,
                ALUT.ALU_MULH -> ( io.inputA.asSInt * io.inputB.asSInt)(127, 64).asUInt,
                ALUT.ALU_MULHU -> ( io.inputA * io.inputB)(127, 64).asUInt,
                ALUT.ALU_MULHSU -> ( io.inputA.asSInt * io.inputB)(127, 64).asUInt,
                ALUT.ALU_DIV -> ( io.inputA.asSInt / io.inputB.asSInt).asUInt,
                ALUT.ALU_DIVU -> ( io.inputA / io.inputB ),
                ALUT.ALU_REM  -> ( io.inputA.asSInt % io.inputB.asSInt ).asUInt,
                ALUT.ALU_REMU -> ( io.inputA % io.inputB )
            )
        )
    )
    when (true.B) {
        // printf("ALU:  inputA  = %x\n", io.inputA)
        // printf("ALU:  inputB  = %x\n", io.inputB)
        // printf("ALU  :op32    = %x\n", io.op32)
        // printf("ALU  :ALUOp   = %x\n", io.ALUOp)
        // printf("ALU  :res     = %x\n", io.output)
        // printf("ALU  :inputA32  = %x\n", inputA32)
        // printf("ALU  :inputB32  = %x\n", inputB32)
        // printf("ALU  :op32res  = %x\n", op32res)
    }
}

object ALU extends App {
    chisel3.Driver.execute(args, () => new ALU);
}

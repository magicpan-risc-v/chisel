package cpu;

import chisel3._
import chisel3.util._

// ins[14:12]
object BRT {
    val JUMP = 8.U(4.W)
    val B_EQ = 9.U(4.W)
    val B_NE = 10.U(4.W)
    val B_LT = 11.U(4.W)
    val B_GE = 12.U(4.W)
    val B_LTU = 13.U(4.W)
    val B_GEU = 14.U(4.W)
}

class BranchCtrl extends Module {
    val io =  IO(new Bundle {
        val exeType = Input(UInt(4.W))
        val input1 = Input(UInt(64.W))
        val input2 = Input(UInt(64.W))

        val jump = Output(Bool())
    })

    val x   = io.input1 - io.input2
    val ne  = x.orR
    val eq  = !ne
    val st  = io.input1(63) === io.input2(62) // 是否符号相同
    val lt  = Mux(st, x(63), io.input1(63))
    val ge  = !lt
    val ltu = Mux(st, x(63), io.input2(63))
    val geu = !ltu

    io.jump := MuxLookup(
        io.exeType,
        false.B,
        Seq(
            BRT.JUMP  -> true.B,
            BRT.B_EQ  -> eq,
            BRT.B_NE  -> ne,
            BRT.B_LT  -> lt,
            BRT.B_GE  -> ge,
            BRT.B_LTU -> ltu,
            BRT.B_GEU -> geu
        )
    )
}

class Branch extends Module {
    val io =  IO(new Bundle {
        val exeType= Input(UInt(4.W))
        val input1 = Input(UInt(64.W))
        val input2 = Input(UInt(64.W))
        val pc     = Input(UInt(64.W))
        val imm    = Input(UInt(64.W)) // delta_PC

        val jump   = Output(Bool()) // 是否跳转
        val jdest  = Output(UInt(64.W)) // 跳转目标
    })

    val bctrl = Module(new BranchCtrl)
    
    //bctrl.io.branch_type <> io.branch_type
    bctrl.io.exeType     <> io.exeType
    bctrl.io.input1      <> io.input1
    bctrl.io.input2      <> io.input2
    bctrl.io.jump        <> io.jump
    //bctrl.io.bvalid      <> io.bvalid

    //io.jdest := io.pc + io.imm
    io.jdest := Mux( io.exeType === EXT.JALR, io.input1 + io.imm, io.pc + io.imm)
}

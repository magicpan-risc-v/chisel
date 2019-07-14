package cpu;

import chisel3._
import chisel3.util._

// ins[14:12]
object BRT {
    val B_EQ = 0.U(3.W)
    val B_NE = 1.U(3.W)
    val B_LT = 4.U(3.W)
    val B_GE = 5.U(3.W)
    val B_LTU = 6.U(3.W)
    val B_GEU = 7.U(3.W)
}

class BranchCtrl extends Module {
    val io =  IO(new Bundle {
        val branch_type = Input(UInt(3.W))
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
        io.branch_type,
        false.B,
        Seq(
            BRT.B_EQ  -> eq,
            BRT.B_NE  -> ne,
            BRT.B_LT  -> lt,
            BRT.B_GE  -> ge,
            BRT.B_LTU -> ltu,
            BRT.B_GEU -> geu
        )
    )
}
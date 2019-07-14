package cpu;

import chisel3._
import chisel3.util._

class Branch extends Module {
    val io =  IO(new Bundle {
        val branch_type = Input(UInt(3.W))
        val input1 = Input(UInt(64.W))
        val input2 = Input(UInt(64.W))
        val pc     = Input(UInt(64.W))
        val imm    = Input(UInt(64.W)) // delta_PC

        val jump   = Output(Bool()) // 是否跳转
        val jdest  = Output(UInt(64.W)) // 跳转目标
    })

    val bctrl = Module(new BranchCtrl)
    
    bctrl.io.branch_type <> io.branch_type
    bctrl.io.input1      <> io.input1
    bctrl.io.input2      <> io.input2
    bctrl.io.jump        <> io.jump

    io.jdest := io.pc + io.imm
}
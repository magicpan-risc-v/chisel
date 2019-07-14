package cpu;

import chisel3._
import chisel3.util._

class Execute extends Module {
    val io =  IO(new Bundle {
        val en = Input(Bool())
        val pc = Input(UInt(32.W))
        
        val inst = Input(UInt(32.W))
        val jmp  = Output(Bool())
        
        val rd   = Output(UInt(6.W))
        val data = Output(UInt(32.W))
        
    })

    /*
    可能执行多种操作：
        ALU: inputA,inputB,op -> output
        Branch: input1,input2,btype,imm,pc -> jmp,jdest

        Load
        Store

        FENCE
        CSR
    */

}
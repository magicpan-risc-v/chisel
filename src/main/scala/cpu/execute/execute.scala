package cpu;

import chisel3._
import chisel3.util._

class Execute extends Module {
    val io =  IO(new Bundle {
        val imm      = Input(UInt(64.W))
        val ALUOp    = Input(UInt(4.W))
        val pc       = Input(UInt(64.W))
        val exe_type = Input(UInt(3.W))
        val br_type  = Input(UInt(3.W))
        val op32     = Input(Bool())
        val csr_cal  = Input(Bool())
        val csr_imm  = Input(Bool())

        val dreg  = Flipped(new DecoderReg) // 解码得到的寄存器信息
        val lreg  = Flipped(new WriteBackReg)
        val llreg = Flipped(new WriteBackReg)

        val nls  = Output(Bool())     // 本条指令需要访存
        val addr = Output(UInt(64.W)) // addr for load or write
        val data = Output(UInt(64.W)) // data for write
        val jump = Output(Bool())
        val jdest = Output(UInt(64.W))
        val wreg = new WriteBackReg

        val wcsr = Flipped(new WrCsrReg)  // 写回CSR
        val csr_op = new WrCsrReg         // 来自ID阶段的CSR操作数的信息
    })

    val alu = Module(new ALU)
    val bra = Module(new Branch)
    val rsl = Module(new RegSelector)

    val alu_inputA = Mux(io.csr_imm, // 根据csr指令是否带立即数来判断
          io.imm,
          rsl.io.sreg.rs1_value
    )
    // 对于CSR指令，需要进行运算时将alu的第二个输入定义为读出的CSR的值
    val alu_inputB = Mux(io.exe_type === EXT.SYS, 
          io.csr_op.csr_data,
          Mux(rsl.io.sreg.rs2_valid, rsl.io.sreg.rs2_value, io.imm)
    )
    val bvalid = io.exe_type === EXT.BRANCH
    val jvalid = io.exe_type === EXT.JUMP
    val nls  = io.exe_type === EXT.LOS
    val wbrv = rsl.io.sreg.rd_valid && !nls // 是否在EX阶段取到了写回值
    val wbrd = MuxLookup(io.exe_type, alu.io.output, Seq(   // 要写回到目标寄存器rd的值
        EXT.JUMP  -> Mux(rsl.io.sreg.rd_index === 0.U, 0.U(64.W), io.pc + 4.U),
        EXT.LUI   -> io.imm,
        EXT.AUIPC -> (io.imm + io.pc),
        EXT.SYS   -> io.csr_op.csr_data
    ))
    val jump = bra.io.jump || jvalid
    val jdest = Mux(jvalid, 
        Mux(rsl.io.sreg.rs1_valid, rsl.io.sreg.rs1_value + io.imm, io.pc + io.imm),
        bra.io.jdest
    )

    rsl.io.dreg   <> io.dreg
    rsl.io.lreg   <> io.lreg
    rsl.io.llreg  <> io.llreg

    alu.io.ALUOp  <> io.ALUOp
    alu.io.inputA <> alu_inputA
    alu.io.inputB <> alu_inputB
    alu.io.op32   <> io.op32

    io.wreg.wbrv  <> wbrv
    io.wreg.wbri  <> rsl.io.sreg.rd_index
    io.wreg.wbrd  <> wbrd

    io.addr := rsl.io.sreg.rs1_value + io.imm
    io.data := rsl.io.sreg.rs2_value
    
    bra.io.bvalid <> bvalid
    bra.io.branch_type <> io.br_type
    bra.io.input1 <> rsl.io.sreg.rs1_value
    bra.io.input2 <> rsl.io.sreg.rs2_value
    bra.io.pc     <> io.pc
    bra.io.imm    <> io.imm

    io.jump       <> jump
    io.jdest      <> jdest

    io.nls := nls

    // TOFIXME 这个地方的valid判断条件不足，data也应该根据csr指令类型判断是否写入ALU结果/操作数
    io.wcsr.valid := io.csr_op.valid && rsl.io.dreg.rs1_index.orR   // 当rs1不等于x0时，对CSR的写操作有效
    io.wcsr.csr_idx := io.csr_op.csr_idx // CSR编号
    io.wcsr.csr_data := Mux(io.csr_cal, alu.io.output, alu_inputA)
}

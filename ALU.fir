;buildInfoPackage: chisel3, version: 3.1.7, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2019-03-20 22:15:13.399, builtAtMillis: 1553120113399
circuit ALU : 
  module ALU : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip ALUOp : UInt<4>, flip inputA : UInt<64>, flip inputB : UInt<64>, output : UInt<64>}
    
    node shamt = bits(io.inputB, 5, 0) @[alu.scala 27:26]
    node _T_19 = add(io.inputA, io.inputB) @[alu.scala 35:37]
    node _T_20 = tail(_T_19, 1) @[alu.scala 35:37]
    node _T_22 = and(io.inputA, io.inputB) @[alu.scala 36:37]
    node _T_24 = or(io.inputA, io.inputB) @[alu.scala 37:37]
    node _T_26 = xor(io.inputA, io.inputB) @[alu.scala 38:37]
    node _T_28 = lt(io.inputA, io.inputB) @[alu.scala 39:38]
    node _T_30 = dshl(io.inputA, shamt) @[alu.scala 40:37]
    node _T_32 = dshr(io.inputA, shamt) @[alu.scala 41:37]
    node _T_34 = asSInt(io.inputA) @[alu.scala 42:38]
    node _T_35 = dshr(_T_34, shamt) @[alu.scala 42:45]
    node _T_36 = asUInt(_T_35) @[alu.scala 42:55]
    node _T_37 = eq(UInt<4>("h0a"), io.ALUOp) @[Mux.scala 46:19]
    node _T_38 = mux(_T_37, _T_36, UInt<64>("h00")) @[Mux.scala 46:16]
    node _T_39 = eq(UInt<4>("h09"), io.ALUOp) @[Mux.scala 46:19]
    node _T_40 = mux(_T_39, _T_32, _T_38) @[Mux.scala 46:16]
    node _T_41 = eq(UInt<4>("h08"), io.ALUOp) @[Mux.scala 46:19]
    node _T_42 = mux(_T_41, _T_30, _T_40) @[Mux.scala 46:16]
    node _T_43 = eq(UInt<3>("h07"), io.ALUOp) @[Mux.scala 46:19]
    node _T_44 = mux(_T_43, _T_28, _T_42) @[Mux.scala 46:16]
    node _T_45 = eq(UInt<3>("h06"), io.ALUOp) @[Mux.scala 46:19]
    node _T_46 = mux(_T_45, _T_26, _T_44) @[Mux.scala 46:16]
    node _T_47 = eq(UInt<3>("h05"), io.ALUOp) @[Mux.scala 46:19]
    node _T_48 = mux(_T_47, _T_24, _T_46) @[Mux.scala 46:16]
    node _T_49 = eq(UInt<3>("h04"), io.ALUOp) @[Mux.scala 46:19]
    node _T_50 = mux(_T_49, _T_22, _T_48) @[Mux.scala 46:16]
    node _T_51 = eq(UInt<2>("h03"), io.ALUOp) @[Mux.scala 46:19]
    node _T_52 = mux(_T_51, _T_20, _T_50) @[Mux.scala 46:16]
    node _T_53 = eq(UInt<2>("h02"), io.ALUOp) @[Mux.scala 46:19]
    node _T_54 = mux(_T_53, io.inputB, _T_52) @[Mux.scala 46:16]
    node _T_55 = eq(UInt<1>("h01"), io.ALUOp) @[Mux.scala 46:19]
    node _T_56 = mux(_T_55, io.inputA, _T_54) @[Mux.scala 46:16]
    node _T_57 = eq(UInt<1>("h00"), io.ALUOp) @[Mux.scala 46:19]
    node _T_58 = mux(_T_57, UInt<64>("h00"), _T_56) @[Mux.scala 46:16]
    io.output <= _T_58 @[alu.scala 28:15]
    

package cpu;

import chisel3._
import chisel3.util._

// select proper reg values
class RegSelector extends Module {
    val io =  IO(new Bundle {
        val dreg  = Flipped(new DecoderReg)   // ID_EX  out
        val rs1_index = Input(UInt(5.W))
        val lreg  = Flipped(new WriteBackReg) // MEMC   out
        val llreg = Flipped(new WriteBackReg) // MEM_WB out

        val sreg = new DecoderReg
    })

    //io.sreg.rs1_valid := io.dreg.rs1_valid
    //io.sreg.rs2_valid := io.dreg.rs2_valid
    //io.sreg.rs1_index := io.dreg.rs1_index
    //io.sreg.rs2_index := io.dreg.rs2_index
    //io.sreg.rd_valid  := io.dreg.rd_valid
    //io.sreg.rd_index  := io.dreg.rd_index

    //io.sreg.rs1_value := Mux(
        //io.lreg.wbrv && io.lreg.wbri === io.dreg.rs1_index,
        //io.lreg.wbrd,
        //Mux(
            //io.llreg.wbrv && io.llreg.wbri === io.dreg.rs1_index,
            //io.llreg.wbrd,
            //io.dreg.rs1_value
        //)
    //)

    //io.sreg.rs2_value := Mux(
        //io.lreg.wbrv && io.lreg.wbri === io.dreg.rs2_index,
        //io.lreg.wbrd,
        //Mux(
            //io.llreg.wbrv && io.llreg.wbri === io.dreg.rs2_index,
            //io.llreg.wbrd,
            //io.dreg.rs2_value
        //)
    //)
}

package cpu;

import chisel3._
import chisel3.util._

class IF_ID extends Module {
    val io =  IO(new Bundle {
        val en    = Input(Bool())
        val pass  = Input(Bool())
        val flush = Input(Bool())

        val insi  = Input(UInt(32.W))
        val pci   = Input(UInt(64.W))
        val insci = Input(UInt(64.W))
        val icdi  = Input(UInt(64.W))
        val lastloadin = Flipped(new LastLoadInfo)
        val excep_i = Input(Flipped(new Exception))

        val inso  = Output(UInt(32.W))
        val pco   = Output(UInt(64.W))
        val insco = Output(UInt(64.W))
        val icdo  = Output(UInt(64.W))
        val lastloadout = new LastLoadInfo
        val excep_o = Output(new Exception)
    })

    val ins  = RegInit(0.U(32.W))
    //val pc   = RegInit(0xffffffffc0000000L.S(64.W).asUInt)
    //val pc   = RegInit(0xffffffffc0001000L.S(64.W).asUInt)
    val pc   = RegInit((0xC0020000L.S(64.W)).asUInt)
    //val pc   = RegInit((-4L.S(64.W)).asUInt)
    val insc = RegInit(0.U(64.W))
    val icd  = RegInit(-1L.S(64.W).asUInt)
    val lastload_valid   = RegInit(false.B)
    val lastload_index   = RegInit(0.U(5.W))
    val excep = RegInit(0.U.asTypeOf(new Exception))

    io.inso  := ins
    io.pco   := pc
    io.insco := insc
    io.icdo  := icd
    io.lastloadout.valid   := lastload_valid
    io.lastloadout.index   := lastload_index
    io.excep_o := excep

    when (io.en && io.pass) {
        ins  := Mux(io.flush, 0.U(32.W), io.insi)
        pc   := io.pci
        insc := Mux(io.flush, 0.U(64.W), io.insci)
        icd  := Mux(io.flush, 0.U(64.W), io.icdi)
        lastload_valid   := Mux(io.flush, false.B , io.lastloadin.valid)
        lastload_index   := Mux(io.flush, 0.U(5.W), io.lastloadin.index)
        when (io.flush) {
            excep.valid := false.B
            excep.code  := 0.U(32.W)
            excep.value  := 0.U(32.W)
            excep.inst_valid  := false.B
        } .otherwise {
            excep := io.excep_i
        }
    }    
        //  printf("IF_ID  : ins  = %x\n", ins)
        //printf("IF_ID  : insc = %x;%x\n", insc(63,32),insc(31,0))
    // }.elsewhen(io.flush){
    //     ins  := 0.U(32.W)
    //     insc := 0.U(64.W)
    //     icd  := -1L.S(64.W).asUInt
    //     lastload_valid   := false.B
    //     lastload_index   := 0.U(5.W)
    //     excep.valid := false.B
    //     excep.code  := 0.U(32.W)
    //     excep.value  := 0.U(32.W)
    // }

    when ( io.en ) {
       //printf("IF_ID  : pc   = %x\n", pc)
    }

}

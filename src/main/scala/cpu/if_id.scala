package cpu;

import chisel3._
import chisel3.util._

class IF_ID extends Module {
    val io =  IO(new Bundle {
        val en    = Input(Bool())
        val pass  = Input(Bool())

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
    //val pc   = RegInit((-4L.S(64.W)).asUInt)
    val pc   = RegInit((4092L.S(64.W)).asUInt)
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
        ins  := io.insi
        pc   := io.pci
        insc := io.insci
        icd  := io.icdi
        lastload_valid   := io.lastloadin.valid
        lastload_index   := io.lastloadin.index
        excep := io.excep_i
        
        //printf("IF_ID  : ins  = %x\n", ins)
        //printf("IF_ID  : pc   = %x\n", pc)
        //printf("IF_ID  : insc = %x;%x\n", insc(63,32),insc(31,0))
    }otherwise{
        ins  := 0.U(32.W)
        insc := 0.U(64.W)
        icd  := 0.U(64.W)
        lastload_valid   := false.B
        lastload_index   := 0.U(5.W)
        excep := 0.U.asTypeOf(new Exception)
    }

}

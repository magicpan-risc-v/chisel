package cpu;

import chisel3._
import chisel3.util._

class SerialTest extends Module {

    val io = IO(new Bundle {
        val mem  = new RAMOp
        val init = Input(Bool())
       // val init_serial  = Input(Bool())
        val dd   = Input(UInt(32.W)) // default data
    })

 //   val program = Mem(0x800000, UInt(8.W))
    val serial  = Mem(0x10000, UInt(8.W))

    //val inited = RegInit(false.B)
    val sindex = RegInit(0.U(32.W))
    val scnt   = RegInit(0.U(32.W))

    //val program_length = dindex
    val rs = io.mem.addr
    val ws = io.mem.addr

    val serial_addr = "b00000000011111111111111111111000".U(64.W)
    val tohost = "h00001000".U(64.W)

    // when (true.B) {
    //     printf("get ? = %d with %d,%d\n", io.dd, io.init, inited)
    // }

    // when (inited) {
    //     // printf("rdata= %x\n", io.mem.rdata)
    //     // printf("addr = %x\n", io.mem.addr)
    //     // printf("mode = %d\n", io.mem.mode)
    // }

    // when (!inited && io.init) {
    //     program(dindex+3.U) := io.dd(31,24)
    //     program(dindex+2.U) := io.dd(23,16)
    //     program(dindex+1.U) := io.dd(15,8)
    //     program(dindex) := io.dd(7,0)
    //     dindex := dindex + 4.U
    // }

    when (io.init) {
        serial(sindex) := io.dd(7,0)
        //printf("read %d\n", io.dd(7,0))
        sindex := sindex + 1.U
    }
    
    // when (inited && io.mem.mode === MEMT.SD) {
    //     for (i <- 0 until 8) {
    //         program(ws+i.U) := io.mem.wdata(i*8+7, i*8)
    //     }
    // }

    // when (inited && io.mem.mode === MEMT.SW) {
    //     when(ws === tohost) {
    //       printf("[RESULT]: write to host !!! %x \n ", io.mem.wdata)
    //     }
    //     for (i <- 0 until 4) {
    //         program(ws+i.U) := io.mem.wdata(i*8+7, i*8)
    //     }
    // }

    // when (inited && io.mem.mode === MEMT.SH) {
    //     for (i <- 0 until 2) {
    //         program(ws+i.U) := io.mem.wdata(i*8+7, i*8)
    //     }
    // }

    when (io.mem.mode === MEMT.SB) {
        printf("%c", io.mem.wdata(7,0))
    }

    // when (!inited && !io.init) {
    //     inited := true.B
    //     // for (i <- 0 until 15) {
    //     //     program(dindex+i.U) := 0.U(8.W)
    //     // }
    // }

    val rdata_temp = Mux(
        io.mem.mode(3),
        Cat(0.U(56.W), serial(scnt)),
        0.U(64.W)
    )

    when (io.mem.mode === MEMT.LBU) {
        printf("%c(%d)", serial(scnt), serial(scnt))
        scnt := scnt + 1.U
    }

    val working = io.mem.mode =/= MEMT.NOP
    val rdata = RegInit(0.U(64.W))
    val status = RegInit(true.B)

    when (working) { 
        rdata := rdata_temp
        when (status) {
            status := !status
        }
    }

    io.mem.ready := status
    io.mem.rdata  := rdata
}

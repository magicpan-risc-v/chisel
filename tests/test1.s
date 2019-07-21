.global _start
_start:
    li s0,200
    sw zero,-20(s0)
    j what
    li a4,7
    nop
    nop
    nop
what:
    lw a5,-20(s0)
    sext.w a4,a5
    li a5,7
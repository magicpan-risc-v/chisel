.global _start
_start:
    sw x1,40(x1)
    j what
    addi a5,x0,1
    addi a4,x0,4
what:
    nop
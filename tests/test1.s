.global _start
_start:
    lui a5, 0x800
    addi a5,a5,-8
    lb x2,0(a5)
    add x1,x1,x2
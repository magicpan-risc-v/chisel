.global _start
_start:
    lui a5,0x800
    addi a5,a5,-8
    li a4,0x41
    sb a4, 0(a5)
    sb a4, 0(a5)
    sb a4, 0(a5)

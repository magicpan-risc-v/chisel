.global _start
_start:
    nop
    lui a5, 0xc082;
    slli a5,a5,4;
#    li a4, 10;
    addi a5, a5, -8;
    lbu a0, 0(a5);
cyc:
    #beq a0,a4,end;
    sb a0, 0(a5);
    nop
    nop
    nop
    nop
    nop
    j cyc;
#end:
#   ret;

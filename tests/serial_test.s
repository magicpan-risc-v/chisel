        .globl _start;
_start:
		lui a5, 0x10000;
cyc:
		lbu a0, 0(a5);
		addi a0, a0, 1;
		sb a0, 0(a5);
		j cyc;

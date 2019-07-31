        .globl _start;
_start:
		lui a5, 0x800;
		addi a5, a5, -8;
cyc:
		lbu a0, 0(a5);
		addi a0, a0, 1;
		sb a0, 0(a5);
		j cyc;

.global _start
_start:
	li x10, 10
	li x2, 1
	li x1, 1
cyc:
	add x1,x1,x2
	add x2,x1,x2
	addi x10,x10,-1
	bne x10,x0,cyc
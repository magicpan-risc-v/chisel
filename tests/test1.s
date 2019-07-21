.global _start
_start:
	li x10, 10
cyc:
	addi x10,x10,-1
	beq x10,x0,end
	bne x10,x0,cyc
end:
	li x10,10
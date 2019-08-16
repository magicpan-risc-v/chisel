.global _start
_start:
	csrr x2, time
	addi x1, x2, 0x50
	csrw 0x321, x1
	csrr x3, mie
	ori x3, x3, 0xff
	csrw mie, x3
	csrw mstatus, x3
	bne x0, x1, what

what:
	li x2, 100
	j what

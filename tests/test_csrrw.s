.global _start
_start:
	li x1, 10
	csrrw x2, mie, x1
	csrrw x3, mie, x1
	csrrw x4, mie, x0

.global _start
_start:
	li x3, 0x20
	li x1, 0x12
	sw x1, 4(x3)
	lw x2, 4(x3)
	
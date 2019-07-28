.global _start
_start:
	li x1, 0
	li t1, 255
	csrw mie, t1
	li s1, 0x1050
	csrw 0x321,s1
	csrwi 0x322, 0
	auipc t1, 0
	addi t1, t1, 16
	csrw mtvec, t1
	j next
trap_vector:
	li t1, 2147483652
	csrr t2, mcause
	bne t1,t2, fail
	addi x1, x1, 1
	csrr t1, 0x321
	add  t1, t1, s1
	csrw 0x321, t1
	mret
next:
	auipc t1,0
	addi t1, t1, 16
	csrw mepc, t1
	mret
u_mode:
	
end:
	lui a5, 0x800;
	addi a5, a5, -8
	li a4, 0x59
	sb a4, 0(a5)
	sb a4, 0(a5)
	sb a4, 0(a5)
	j end

fail:
	lui a5, 0x800;
	addi a5, a5, -8
	li a4, 0x41
	sb a4, 0(a5)
	sb a4, 0(a5)
	sb a4, 0(a5)
	nop
	nop
	nop
	nop
	nop

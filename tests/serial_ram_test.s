.globl _start;
_start:
  NOP
  lui a5, 0xc082;
  lui a4, 0xc003;
  slli a5, a5, 4;
  slli a4, a4, 4;
  addi a5, a5, -8;
  li  t0, 0x30;
cyc:
  lbu a0, 0(a5);	# read serial
  beq a0, t0, wtf;	# judge,
  addi a4, a4, 1;
  sb  a0, 0(a4);	# sotre value to ram
  lbu a0, 0(a4);	# to see value in (a4)
  sb a0, 0(a5);
  j cyc;

wtf:
  lbu a0, 0(a4);	# to see value in (a4)
  sb a0, 0(a5);
  addi a4, a4, -1;
  j cyc;

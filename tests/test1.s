.global _start
_start:
    li	t1, 12
    li	t1, 12
    li	t1, 12
    li	t1, 12
    li	t1, 12
    li	t1, 12
    li	t1, 12
    li	t1, 12
    li	t1, 12
    li	t1, 12
    li	t1, 12
    li	t1, 12
    jalr	t0,t1
    j	fail
    li a5,20
fail:
    li a5,10
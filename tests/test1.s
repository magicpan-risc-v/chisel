.global _start
_start:
    li	gp,3
    li	ra,1
    li	sp,0
    bne	ra,sp,l1
    bne	zero,gp,fail
l2:
    bne	zero,gp,pass
l1:
    bne	ra,sp,l2
    bne	zero,gp,fail
fail:
    li a5,1
pass:
    li a5,2
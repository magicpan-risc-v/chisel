.global _start
_start:
    lui	ra,0x80000
    lui	sp,0xffff8
    add	t5,ra,sp
    lui	t4,0xffff0
    addiw	t4,t4,-1
    slli	t4,t4,0xf

out.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000020000 <_start>:
   20000:	00000013          	nop
   20004:	00018193          	mv	gp,gp
   20008:	00030137          	lui	sp,0x30
   2000c:	7f10106f          	j	21ffc <start>

0000000000020010 <_entry>:
   20010:	f8410113          	addi	sp,sp,-124 # 2ff84 <__global_pointer$+0xce14>
   20014:	00112023          	sw	ra,0(sp)
   20018:	00212223          	sw	sp,4(sp)
   2001c:	00312423          	sw	gp,8(sp)
   20020:	00412623          	sw	tp,12(sp)
   20024:	00512823          	sw	t0,16(sp)
   20028:	00612a23          	sw	t1,20(sp)
   2002c:	00712c23          	sw	t2,24(sp)
   20030:	00812e23          	sw	s0,28(sp)
   20034:	02912023          	sw	s1,32(sp)
   20038:	02a12223          	sw	a0,36(sp)
   2003c:	02b12423          	sw	a1,40(sp)
   20040:	02c12623          	sw	a2,44(sp)
   20044:	02d12823          	sw	a3,48(sp)
   20048:	02e12a23          	sw	a4,52(sp)
   2004c:	02f12c23          	sw	a5,56(sp)
   20050:	03012e23          	sw	a6,60(sp)
   20054:	05112023          	sw	a7,64(sp)
   20058:	05212223          	sw	s2,68(sp)
   2005c:	05312423          	sw	s3,72(sp)
   20060:	05412623          	sw	s4,76(sp)
   20064:	05512823          	sw	s5,80(sp)
   20068:	05612a23          	sw	s6,84(sp)
   2006c:	05712c23          	sw	s7,88(sp)
   20070:	05812e23          	sw	s8,92(sp)
   20074:	07912023          	sw	s9,96(sp)
   20078:	07a12223          	sw	s10,100(sp)
   2007c:	07b12423          	sw	s11,104(sp)
   20080:	07c12623          	sw	t3,108(sp)
   20084:	07d12823          	sw	t4,112(sp)
   20088:	07e12a23          	sw	t5,116(sp)
   2008c:	07f12c23          	sw	t6,120(sp)
   20090:	00050093          	mv	ra,a0
   20094:	00003617          	auipc	a2,0x3
   20098:	8dc60613          	addi	a2,a2,-1828 # 22970 <__DATA_BEGIN__>
   2009c:	00262023          	sw	sp,0(a2)
   200a0:	00000113          	li	sp,0
   200a4:	00000193          	li	gp,0
   200a8:	00000213          	li	tp,0
   200ac:	00000293          	li	t0,0
   200b0:	00000313          	li	t1,0
   200b4:	00000393          	li	t2,0
   200b8:	00000413          	li	s0,0
   200bc:	00000493          	li	s1,0
   200c0:	00000513          	li	a0,0
   200c4:	00000593          	li	a1,0
   200c8:	00000613          	li	a2,0
   200cc:	00000693          	li	a3,0
   200d0:	00000713          	li	a4,0
   200d4:	00000793          	li	a5,0
   200d8:	00000813          	li	a6,0
   200dc:	00000893          	li	a7,0
   200e0:	00000913          	li	s2,0
   200e4:	00000993          	li	s3,0
   200e8:	00000a13          	li	s4,0
   200ec:	00000a93          	li	s5,0
   200f0:	00000b13          	li	s6,0
   200f4:	00000b93          	li	s7,0
   200f8:	00000c13          	li	s8,0
   200fc:	00000c93          	li	s9,0
   20100:	00000d13          	li	s10,0
   20104:	00000d93          	li	s11,0
   20108:	00000e13          	li	t3,0
   2010c:	00000e93          	li	t4,0
   20110:	00003f17          	auipc	t5,0x3
   20114:	868f0f13          	addi	t5,t5,-1944 # 22978 <time_count>
   20118:	000f2023          	sw	zero,0(t5)
   2011c:	00003f17          	auipc	t5,0x3
   20120:	858f0f13          	addi	t5,t5,-1960 # 22974 <in_user>
   20124:	00100f93          	li	t6,1
   20128:	01ff2023          	sw	t6,0(t5)
   2012c:	00000f13          	li	t5,0
   20130:	00000f93          	li	t6,0
   20134:	000080e7          	jalr	ra

0000000000020138 <_exit>:
   20138:	8a818093          	addi	ra,gp,-1880 # 22a18 <regs>
   2013c:	07f0ae23          	sw	t6,124(ra)
   20140:	07e0ac23          	sw	t5,120(ra)
   20144:	00003f97          	auipc	t6,0x3
   20148:	830f8f93          	addi	t6,t6,-2000 # 22974 <in_user>
   2014c:	000fa023          	sw	zero,0(t6)
   20150:	07d0aa23          	sw	t4,116(ra)
   20154:	07c0a823          	sw	t3,112(ra)
   20158:	07b0a623          	sw	s11,108(ra)
   2015c:	07a0a423          	sw	s10,104(ra)
   20160:	0790a223          	sw	s9,100(ra)
   20164:	0780a023          	sw	s8,96(ra)
   20168:	0570ae23          	sw	s7,92(ra)
   2016c:	0560ac23          	sw	s6,88(ra)
   20170:	0550aa23          	sw	s5,84(ra)
   20174:	0540a823          	sw	s4,80(ra)
   20178:	0530a623          	sw	s3,76(ra)
   2017c:	0520a423          	sw	s2,72(ra)
   20180:	0510a223          	sw	a7,68(ra)
   20184:	0500a023          	sw	a6,64(ra)
   20188:	02f0ae23          	sw	a5,60(ra)
   2018c:	02e0ac23          	sw	a4,56(ra)
   20190:	02d0aa23          	sw	a3,52(ra)
   20194:	02c0a823          	sw	a2,48(ra)
   20198:	02b0a623          	sw	a1,44(ra)
   2019c:	02a0a423          	sw	a0,40(ra)
   201a0:	0290a223          	sw	s1,36(ra)
   201a4:	0280a023          	sw	s0,32(ra)
   201a8:	0070ae23          	sw	t2,28(ra)
   201ac:	0060ac23          	sw	t1,24(ra)
   201b0:	0050aa23          	sw	t0,20(ra)
   201b4:	0040a823          	sw	tp,16(ra)
   201b8:	0030a623          	sw	gp,12(ra)
   201bc:	0020a423          	sw	sp,8(ra)
   201c0:	0010a223          	sw	ra,4(ra)
   201c4:	0000a023          	sw	zero,0(ra)
   201c8:	00002117          	auipc	sp,0x2
   201cc:	7a810113          	addi	sp,sp,1960 # 22970 <__DATA_BEGIN__>
   201d0:	00012103          	lw	sp,0(sp)
   201d4:	00012083          	lw	ra,0(sp)
   201d8:	00412103          	lw	sp,4(sp)
   201dc:	00812183          	lw	gp,8(sp)
   201e0:	00c12203          	lw	tp,12(sp)
   201e4:	01012283          	lw	t0,16(sp)
   201e8:	01412303          	lw	t1,20(sp)
   201ec:	01812383          	lw	t2,24(sp)
   201f0:	01c12403          	lw	s0,28(sp)
   201f4:	02012483          	lw	s1,32(sp)
   201f8:	02412503          	lw	a0,36(sp)
   201fc:	02812583          	lw	a1,40(sp)
   20200:	02c12603          	lw	a2,44(sp)
   20204:	03012683          	lw	a3,48(sp)
   20208:	03412703          	lw	a4,52(sp)
   2020c:	03812783          	lw	a5,56(sp)
   20210:	03c12803          	lw	a6,60(sp)
   20214:	04012883          	lw	a7,64(sp)
   20218:	04412903          	lw	s2,68(sp)
   2021c:	04812983          	lw	s3,72(sp)
   20220:	04c12a03          	lw	s4,76(sp)
   20224:	05012a83          	lw	s5,80(sp)
   20228:	05412b03          	lw	s6,84(sp)
   2022c:	05812b83          	lw	s7,88(sp)
   20230:	05c12c03          	lw	s8,92(sp)
   20234:	06012c83          	lw	s9,96(sp)
   20238:	06412d03          	lw	s10,100(sp)
   2023c:	06812d83          	lw	s11,104(sp)
   20240:	06c12e03          	lw	t3,108(sp)
   20244:	07012e83          	lw	t4,112(sp)
   20248:	07412f03          	lw	t5,116(sp)
   2024c:	07812f83          	lw	t6,120(sp)
   20250:	07c10113          	addi	sp,sp,124
   20254:	00008067          	ret

0000000000020258 <_trap_entry>:
   20258:	34011173          	csrrw	sp,mscratch,sp
   2025c:	f8410113          	addi	sp,sp,-124
   20260:	00112023          	sw	ra,0(sp)
   20264:	00212223          	sw	sp,4(sp)
   20268:	00312423          	sw	gp,8(sp)
   2026c:	00412623          	sw	tp,12(sp)
   20270:	00512823          	sw	t0,16(sp)
   20274:	00612a23          	sw	t1,20(sp)
   20278:	00712c23          	sw	t2,24(sp)
   2027c:	00812e23          	sw	s0,28(sp)
   20280:	02912023          	sw	s1,32(sp)
   20284:	02a12223          	sw	a0,36(sp)
   20288:	02b12423          	sw	a1,40(sp)
   2028c:	02c12623          	sw	a2,44(sp)
   20290:	02d12823          	sw	a3,48(sp)
   20294:	02e12a23          	sw	a4,52(sp)
   20298:	02f12c23          	sw	a5,56(sp)
   2029c:	03012e23          	sw	a6,60(sp)
   202a0:	05112023          	sw	a7,64(sp)
   202a4:	05212223          	sw	s2,68(sp)
   202a8:	05312423          	sw	s3,72(sp)
   202ac:	05412623          	sw	s4,76(sp)
   202b0:	05512823          	sw	s5,80(sp)
   202b4:	05612a23          	sw	s6,84(sp)
   202b8:	05712c23          	sw	s7,88(sp)
   202bc:	05812e23          	sw	s8,92(sp)
   202c0:	07912023          	sw	s9,96(sp)
   202c4:	07a12223          	sw	s10,100(sp)
   202c8:	07b12423          	sw	s11,104(sp)
   202cc:	07c12623          	sw	t3,108(sp)
   202d0:	07d12823          	sw	t4,112(sp)
   202d4:	07e12a23          	sw	t5,116(sp)
   202d8:	07f12c23          	sw	t6,120(sp)
   202dc:	81018093          	addi	ra,gp,-2032 # 22980 <trap_frame>
   202e0:	0020a023          	sw	sp,0(ra)
   202e4:	00000097          	auipc	ra,0x0
   202e8:	55c08093          	addi	ra,ra,1372 # 20840 <trap>
   202ec:	000080e7          	jalr	ra
   202f0:	00012083          	lw	ra,0(sp)
   202f4:	00412103          	lw	sp,4(sp)
   202f8:	00812183          	lw	gp,8(sp)
   202fc:	00c12203          	lw	tp,12(sp)
   20300:	01012283          	lw	t0,16(sp)
   20304:	01412303          	lw	t1,20(sp)
   20308:	01812383          	lw	t2,24(sp)
   2030c:	01c12403          	lw	s0,28(sp)
   20310:	02012483          	lw	s1,32(sp)
   20314:	02412503          	lw	a0,36(sp)
   20318:	02812583          	lw	a1,40(sp)
   2031c:	02c12603          	lw	a2,44(sp)
   20320:	03012683          	lw	a3,48(sp)
   20324:	03412703          	lw	a4,52(sp)
   20328:	03812783          	lw	a5,56(sp)
   2032c:	03c12803          	lw	a6,60(sp)
   20330:	04012883          	lw	a7,64(sp)
   20334:	04412903          	lw	s2,68(sp)
   20338:	04812983          	lw	s3,72(sp)
   2033c:	04c12a03          	lw	s4,76(sp)
   20340:	05012a83          	lw	s5,80(sp)
   20344:	05412b03          	lw	s6,84(sp)
   20348:	05812b83          	lw	s7,88(sp)
   2034c:	05c12c03          	lw	s8,92(sp)
   20350:	06012c83          	lw	s9,96(sp)
   20354:	06412d03          	lw	s10,100(sp)
   20358:	06812d83          	lw	s11,104(sp)
   2035c:	06c12e03          	lw	t3,108(sp)
   20360:	07012e83          	lw	t4,112(sp)
   20364:	07412f03          	lw	t5,116(sp)
   20368:	07812f83          	lw	t6,120(sp)
   2036c:	07c10113          	addi	sp,sp,124
   20370:	34011173          	csrrw	sp,mscratch,sp
   20374:	30200073          	mret

0000000000020378 <print>:
   20378:	fd010113          	addi	sp,sp,-48
   2037c:	02813423          	sd	s0,40(sp)
   20380:	03010413          	addi	s0,sp,48
   20384:	fca43c23          	sd	a0,-40(s0)
   20388:	fe042623          	sw	zero,-20(s0)
   2038c:	02c0006f          	j	203b8 <print+0x40>
   20390:	fec42783          	lw	a5,-20(s0)
   20394:	fd843703          	ld	a4,-40(s0)
   20398:	00f70733          	add	a4,a4,a5
   2039c:	008007b7          	lui	a5,0x800
   203a0:	ff878793          	addi	a5,a5,-8 # 7ffff8 <__global_pointer$+0x7dce88>
   203a4:	00074703          	lbu	a4,0(a4)
   203a8:	00e78023          	sb	a4,0(a5)
   203ac:	fec42783          	lw	a5,-20(s0)
   203b0:	0017879b          	addiw	a5,a5,1
   203b4:	fef42623          	sw	a5,-20(s0)
   203b8:	fec42783          	lw	a5,-20(s0)
   203bc:	fd843703          	ld	a4,-40(s0)
   203c0:	00f707b3          	add	a5,a4,a5
   203c4:	0007c783          	lbu	a5,0(a5)
   203c8:	fc0794e3          	bnez	a5,20390 <print+0x18>
   203cc:	00000013          	nop
   203d0:	02813403          	ld	s0,40(sp)
   203d4:	03010113          	addi	sp,sp,48
   203d8:	00008067          	ret

00000000000203dc <strcmp>:
   203dc:	fd010113          	addi	sp,sp,-48
   203e0:	02813423          	sd	s0,40(sp)
   203e4:	03010413          	addi	s0,sp,48
   203e8:	fca43c23          	sd	a0,-40(s0)
   203ec:	fcb43823          	sd	a1,-48(s0)
   203f0:	fe042623          	sw	zero,-20(s0)
   203f4:	0100006f          	j	20404 <strcmp+0x28>
   203f8:	fec42783          	lw	a5,-20(s0)
   203fc:	0017879b          	addiw	a5,a5,1
   20400:	fef42623          	sw	a5,-20(s0)
   20404:	fec42783          	lw	a5,-20(s0)
   20408:	fd843703          	ld	a4,-40(s0)
   2040c:	00f707b3          	add	a5,a4,a5
   20410:	0007c783          	lbu	a5,0(a5)
   20414:	04078063          	beqz	a5,20454 <strcmp+0x78>
   20418:	fec42783          	lw	a5,-20(s0)
   2041c:	fd043703          	ld	a4,-48(s0)
   20420:	00f707b3          	add	a5,a4,a5
   20424:	0007c783          	lbu	a5,0(a5)
   20428:	02078663          	beqz	a5,20454 <strcmp+0x78>
   2042c:	fec42783          	lw	a5,-20(s0)
   20430:	fd843703          	ld	a4,-40(s0)
   20434:	00f707b3          	add	a5,a4,a5
   20438:	0007c683          	lbu	a3,0(a5)
   2043c:	fec42783          	lw	a5,-20(s0)
   20440:	fd043703          	ld	a4,-48(s0)
   20444:	00f707b3          	add	a5,a4,a5
   20448:	0007c783          	lbu	a5,0(a5)
   2044c:	00068713          	mv	a4,a3
   20450:	faf704e3          	beq	a4,a5,203f8 <strcmp+0x1c>
   20454:	fec42783          	lw	a5,-20(s0)
   20458:	fd843703          	ld	a4,-40(s0)
   2045c:	00f707b3          	add	a5,a4,a5
   20460:	0007c783          	lbu	a5,0(a5)
   20464:	02078063          	beqz	a5,20484 <strcmp+0xa8>
   20468:	fec42783          	lw	a5,-20(s0)
   2046c:	fd043703          	ld	a4,-48(s0)
   20470:	00f707b3          	add	a5,a4,a5
   20474:	0007c783          	lbu	a5,0(a5)
   20478:	00078663          	beqz	a5,20484 <strcmp+0xa8>
   2047c:	00100793          	li	a5,1
   20480:	0080006f          	j	20488 <strcmp+0xac>
   20484:	00000793          	li	a5,0
   20488:	00078513          	mv	a0,a5
   2048c:	02813403          	ld	s0,40(sp)
   20490:	03010113          	addi	sp,sp,48
   20494:	00008067          	ret

0000000000020498 <get_line>:
   20498:	fe010113          	addi	sp,sp,-32
   2049c:	00813c23          	sd	s0,24(sp)
   204a0:	02010413          	addi	s0,sp,32
   204a4:	fff00793          	li	a5,-1
   204a8:	fef42623          	sw	a5,-20(s0)
   204ac:	fec42783          	lw	a5,-20(s0)
   204b0:	0017879b          	addiw	a5,a5,1
   204b4:	fef42623          	sw	a5,-20(s0)
   204b8:	00000013          	nop
   204bc:	8a01a703          	lw	a4,-1888(gp) # 22a10 <bufh>
   204c0:	8581a783          	lw	a5,-1960(gp) # 229c8 <buft>
   204c4:	fef70ce3          	beq	a4,a5,204bc <get_line+0x24>
   204c8:	8a01a783          	lw	a5,-1888(gp) # 22a10 <bufh>
   204cc:	0017871b          	addiw	a4,a5,1
   204d0:	0007069b          	sext.w	a3,a4
   204d4:	8ad1a023          	sw	a3,-1888(gp) # 22a10 <bufh>
   204d8:	00023737          	lui	a4,0x23
   204dc:	98870713          	addi	a4,a4,-1656 # 22988 <input_buffer>
   204e0:	00e787b3          	add	a5,a5,a4
   204e4:	0007c703          	lbu	a4,0(a5)
   204e8:	fec42683          	lw	a3,-20(s0)
   204ec:	86018793          	addi	a5,gp,-1952 # 229d0 <buffer>
   204f0:	00f687b3          	add	a5,a3,a5
   204f4:	00e78023          	sb	a4,0(a5)
   204f8:	8a01a783          	lw	a5,-1888(gp) # 22a10 <bufh>
   204fc:	00078713          	mv	a4,a5
   20500:	04000793          	li	a5,64
   20504:	00f71463          	bne	a4,a5,2050c <get_line+0x74>
   20508:	8a01a023          	sw	zero,-1888(gp) # 22a10 <bufh>
   2050c:	fec42703          	lw	a4,-20(s0)
   20510:	86018793          	addi	a5,gp,-1952 # 229d0 <buffer>
   20514:	00f707b3          	add	a5,a4,a5
   20518:	0007c783          	lbu	a5,0(a5)
   2051c:	00078713          	mv	a4,a5
   20520:	00a00793          	li	a5,10
   20524:	f8f714e3          	bne	a4,a5,204ac <get_line+0x14>
   20528:	fec42783          	lw	a5,-20(s0)
   2052c:	0007879b          	sext.w	a5,a5
   20530:	02f05a63          	blez	a5,20564 <get_line+0xcc>
   20534:	fec42783          	lw	a5,-20(s0)
   20538:	fff7879b          	addiw	a5,a5,-1
   2053c:	0007871b          	sext.w	a4,a5
   20540:	86018793          	addi	a5,gp,-1952 # 229d0 <buffer>
   20544:	00f707b3          	add	a5,a4,a5
   20548:	0007c783          	lbu	a5,0(a5)
   2054c:	00078713          	mv	a4,a5
   20550:	00d00793          	li	a5,13
   20554:	00f71863          	bne	a4,a5,20564 <get_line+0xcc>
   20558:	fec42783          	lw	a5,-20(s0)
   2055c:	fff7879b          	addiw	a5,a5,-1
   20560:	fef42623          	sw	a5,-20(s0)
   20564:	fec42703          	lw	a4,-20(s0)
   20568:	86018793          	addi	a5,gp,-1952 # 229d0 <buffer>
   2056c:	00f707b3          	add	a5,a4,a5
   20570:	00078023          	sb	zero,0(a5)
   20574:	00000013          	nop
   20578:	01813403          	ld	s0,24(sp)
   2057c:	02010113          	addi	sp,sp,32
   20580:	00008067          	ret

0000000000020584 <hex2str>:
   20584:	fd010113          	addi	sp,sp,-48
   20588:	02813423          	sd	s0,40(sp)
   2058c:	03010413          	addi	s0,sp,48
   20590:	00050793          	mv	a5,a0
   20594:	fcb43823          	sd	a1,-48(s0)
   20598:	fcf42e23          	sw	a5,-36(s0)
   2059c:	fd043783          	ld	a5,-48(s0)
   205a0:	03000713          	li	a4,48
   205a4:	00e78023          	sb	a4,0(a5)
   205a8:	fd043783          	ld	a5,-48(s0)
   205ac:	00178793          	addi	a5,a5,1
   205b0:	07800713          	li	a4,120
   205b4:	00e78023          	sb	a4,0(a5)
   205b8:	fe042623          	sw	zero,-20(s0)
   205bc:	0740006f          	j	20630 <hex2str+0xac>
   205c0:	00700713          	li	a4,7
   205c4:	fec42783          	lw	a5,-20(s0)
   205c8:	40f707bb          	subw	a5,a4,a5
   205cc:	0007879b          	sext.w	a5,a5
   205d0:	0027979b          	slliw	a5,a5,0x2
   205d4:	0007879b          	sext.w	a5,a5
   205d8:	00078713          	mv	a4,a5
   205dc:	fdc42783          	lw	a5,-36(s0)
   205e0:	00e7d7bb          	srlw	a5,a5,a4
   205e4:	0007879b          	sext.w	a5,a5
   205e8:	00f7f793          	andi	a5,a5,15
   205ec:	0007869b          	sext.w	a3,a5
   205f0:	fec42783          	lw	a5,-20(s0)
   205f4:	0027879b          	addiw	a5,a5,2
   205f8:	0007879b          	sext.w	a5,a5
   205fc:	00078713          	mv	a4,a5
   20600:	fd043783          	ld	a5,-48(s0)
   20604:	00e787b3          	add	a5,a5,a4
   20608:	00022737          	lui	a4,0x22
   2060c:	02069693          	slli	a3,a3,0x20
   20610:	0206d693          	srli	a3,a3,0x20
   20614:	4e070713          	addi	a4,a4,1248 # 224e0 <INST_CONFIG+0x260>
   20618:	00e68733          	add	a4,a3,a4
   2061c:	00074703          	lbu	a4,0(a4)
   20620:	00e78023          	sb	a4,0(a5)
   20624:	fec42783          	lw	a5,-20(s0)
   20628:	0017879b          	addiw	a5,a5,1
   2062c:	fef42623          	sw	a5,-20(s0)
   20630:	fec42783          	lw	a5,-20(s0)
   20634:	0007871b          	sext.w	a4,a5
   20638:	00700793          	li	a5,7
   2063c:	f8e7d2e3          	bge	a5,a4,205c0 <hex2str+0x3c>
   20640:	fd043783          	ld	a5,-48(s0)
   20644:	00a78793          	addi	a5,a5,10
   20648:	00078023          	sb	zero,0(a5)
   2064c:	00000013          	nop
   20650:	02813403          	ld	s0,40(sp)
   20654:	03010113          	addi	sp,sp,48
   20658:	00008067          	ret

000000000002065c <print_hex>:
   2065c:	fd010113          	addi	sp,sp,-48
   20660:	02113423          	sd	ra,40(sp)
   20664:	02813023          	sd	s0,32(sp)
   20668:	03010413          	addi	s0,sp,48
   2066c:	00050793          	mv	a5,a0
   20670:	fcf42e23          	sw	a5,-36(s0)
   20674:	fe040713          	addi	a4,s0,-32
   20678:	fdc42783          	lw	a5,-36(s0)
   2067c:	00070593          	mv	a1,a4
   20680:	00078513          	mv	a0,a5
   20684:	f01ff0ef          	jal	ra,20584 <hex2str>
   20688:	fe040793          	addi	a5,s0,-32
   2068c:	00078513          	mv	a0,a5
   20690:	ce9ff0ef          	jal	ra,20378 <print>
   20694:	00000013          	nop
   20698:	02813083          	ld	ra,40(sp)
   2069c:	02013403          	ld	s0,32(sp)
   206a0:	03010113          	addi	sp,sp,48
   206a4:	00008067          	ret

00000000000206a8 <hexchar2int>:
   206a8:	fe010113          	addi	sp,sp,-32
   206ac:	00813c23          	sd	s0,24(sp)
   206b0:	02010413          	addi	s0,sp,32
   206b4:	00050793          	mv	a5,a0
   206b8:	fef407a3          	sb	a5,-17(s0)
   206bc:	fef44783          	lbu	a5,-17(s0)
   206c0:	0ff7f713          	andi	a4,a5,255
   206c4:	02f00793          	li	a5,47
   206c8:	02e7f663          	bgeu	a5,a4,206f4 <hexchar2int+0x4c>
   206cc:	fef44783          	lbu	a5,-17(s0)
   206d0:	0ff7f713          	andi	a4,a5,255
   206d4:	03900793          	li	a5,57
   206d8:	00e7ee63          	bltu	a5,a4,206f4 <hexchar2int+0x4c>
   206dc:	fef44783          	lbu	a5,-17(s0)
   206e0:	0007879b          	sext.w	a5,a5
   206e4:	fd07879b          	addiw	a5,a5,-48
   206e8:	0007879b          	sext.w	a5,a5
   206ec:	0007879b          	sext.w	a5,a5
   206f0:	0180006f          	j	20708 <hexchar2int+0x60>
   206f4:	fef44783          	lbu	a5,-17(s0)
   206f8:	0007879b          	sext.w	a5,a5
   206fc:	fa97879b          	addiw	a5,a5,-87
   20700:	0007879b          	sext.w	a5,a5
   20704:	0007879b          	sext.w	a5,a5
   20708:	00078513          	mv	a0,a5
   2070c:	01813403          	ld	s0,24(sp)
   20710:	02010113          	addi	sp,sp,32
   20714:	00008067          	ret

0000000000020718 <str2hex>:
   20718:	fc010113          	addi	sp,sp,-64
   2071c:	02113c23          	sd	ra,56(sp)
   20720:	02813823          	sd	s0,48(sp)
   20724:	02913423          	sd	s1,40(sp)
   20728:	04010413          	addi	s0,sp,64
   2072c:	fca43423          	sd	a0,-56(s0)
   20730:	fc843783          	ld	a5,-56(s0)
   20734:	00278793          	addi	a5,a5,2
   20738:	fcf43423          	sd	a5,-56(s0)
   2073c:	fc042e23          	sw	zero,-36(s0)
   20740:	0400006f          	j	20780 <str2hex+0x68>
   20744:	fdc42783          	lw	a5,-36(s0)
   20748:	0047979b          	slliw	a5,a5,0x4
   2074c:	0007849b          	sext.w	s1,a5
   20750:	fc843783          	ld	a5,-56(s0)
   20754:	0007c783          	lbu	a5,0(a5)
   20758:	00078513          	mv	a0,a5
   2075c:	f4dff0ef          	jal	ra,206a8 <hexchar2int>
   20760:	00050793          	mv	a5,a0
   20764:	0007879b          	sext.w	a5,a5
   20768:	00048713          	mv	a4,s1
   2076c:	00f767b3          	or	a5,a4,a5
   20770:	fcf42e23          	sw	a5,-36(s0)
   20774:	fc843783          	ld	a5,-56(s0)
   20778:	00178793          	addi	a5,a5,1
   2077c:	fcf43423          	sd	a5,-56(s0)
   20780:	fc843783          	ld	a5,-56(s0)
   20784:	0007c783          	lbu	a5,0(a5)
   20788:	00078c63          	beqz	a5,207a0 <str2hex+0x88>
   2078c:	fc843783          	ld	a5,-56(s0)
   20790:	0007c783          	lbu	a5,0(a5)
   20794:	00078713          	mv	a4,a5
   20798:	02000793          	li	a5,32
   2079c:	faf714e3          	bne	a4,a5,20744 <str2hex+0x2c>
   207a0:	fdc42783          	lw	a5,-36(s0)
   207a4:	00078513          	mv	a0,a5
   207a8:	03813083          	ld	ra,56(sp)
   207ac:	03013403          	ld	s0,48(sp)
   207b0:	02813483          	ld	s1,40(sp)
   207b4:	04010113          	addi	sp,sp,64
   207b8:	00008067          	ret

00000000000207bc <print_help>:
   207bc:	ff010113          	addi	sp,sp,-16
   207c0:	00113423          	sd	ra,8(sp)
   207c4:	00813023          	sd	s0,0(sp)
   207c8:	01010413          	addi	s0,sp,16
   207cc:	000227b7          	lui	a5,0x22
   207d0:	4f878513          	addi	a0,a5,1272 # 224f8 <INST_CONFIG+0x278>
   207d4:	ba5ff0ef          	jal	ra,20378 <print>
   207d8:	000227b7          	lui	a5,0x22
   207dc:	50878513          	addi	a0,a5,1288 # 22508 <INST_CONFIG+0x288>
   207e0:	b99ff0ef          	jal	ra,20378 <print>
   207e4:	000227b7          	lui	a5,0x22
   207e8:	53078513          	addi	a0,a5,1328 # 22530 <INST_CONFIG+0x2b0>
   207ec:	b8dff0ef          	jal	ra,20378 <print>
   207f0:	000227b7          	lui	a5,0x22
   207f4:	56878513          	addi	a0,a5,1384 # 22568 <INST_CONFIG+0x2e8>
   207f8:	b81ff0ef          	jal	ra,20378 <print>
   207fc:	000227b7          	lui	a5,0x22
   20800:	59878513          	addi	a0,a5,1432 # 22598 <INST_CONFIG+0x318>
   20804:	b75ff0ef          	jal	ra,20378 <print>
   20808:	000227b7          	lui	a5,0x22
   2080c:	5d078513          	addi	a0,a5,1488 # 225d0 <INST_CONFIG+0x350>
   20810:	b69ff0ef          	jal	ra,20378 <print>
   20814:	000227b7          	lui	a5,0x22
   20818:	60878513          	addi	a0,a5,1544 # 22608 <INST_CONFIG+0x388>
   2081c:	b5dff0ef          	jal	ra,20378 <print>
   20820:	000227b7          	lui	a5,0x22
   20824:	64878513          	addi	a0,a5,1608 # 22648 <INST_CONFIG+0x3c8>
   20828:	b51ff0ef          	jal	ra,20378 <print>
   2082c:	00000013          	nop
   20830:	00813083          	ld	ra,8(sp)
   20834:	00013403          	ld	s0,0(sp)
   20838:	01010113          	addi	sp,sp,16
   2083c:	00008067          	ret

0000000000020840 <trap>:
   20840:	fa010113          	addi	sp,sp,-96
   20844:	04113c23          	sd	ra,88(sp)
   20848:	04813823          	sd	s0,80(sp)
   2084c:	06010413          	addi	s0,sp,96
   20850:	342027f3          	csrr	a5,mcause
   20854:	fef43023          	sd	a5,-32(s0)
   20858:	fe043783          	ld	a5,-32(s0)
   2085c:	fcf42e23          	sw	a5,-36(s0)
   20860:	fe042623          	sw	zero,-20(s0)
   20864:	fdc42783          	lw	a5,-36(s0)
   20868:	1a07de63          	bgez	a5,20a24 <trap+0x1e4>
   2086c:	fdc42703          	lw	a4,-36(s0)
   20870:	800007b7          	lui	a5,0x80000
   20874:	fff7c793          	not	a5,a5
   20878:	00f777b3          	and	a5,a4,a5
   2087c:	0007871b          	sext.w	a4,a5
   20880:	00070693          	mv	a3,a4
   20884:	00700793          	li	a5,7
   20888:	00f68863          	beq	a3,a5,20898 <trap+0x58>
   2088c:	00b00793          	li	a5,11
   20890:	06f70263          	beq	a4,a5,208f4 <trap+0xb4>
   20894:	0f40006f          	j	20988 <trap+0x148>
   20898:	008007b7          	lui	a5,0x800
   2089c:	fcc78793          	addi	a5,a5,-52 # 7fffcc <__global_pointer$+0x7dce5c>
   208a0:	0007a023          	sw	zero,0(a5)
   208a4:	008007b7          	lui	a5,0x800
   208a8:	fc878793          	addi	a5,a5,-56 # 7fffc8 <__global_pointer$+0x7dce58>
   208ac:	0007a023          	sw	zero,0(a5)
   208b0:	000237b7          	lui	a5,0x23
   208b4:	9747a783          	lw	a5,-1676(a5) # 22974 <in_user>
   208b8:	12078e63          	beqz	a5,209f4 <trap+0x1b4>
   208bc:	000237b7          	lui	a5,0x23
   208c0:	9787a783          	lw	a5,-1672(a5) # 22978 <time_count>
   208c4:	0017879b          	addiw	a5,a5,1
   208c8:	0007871b          	sext.w	a4,a5
   208cc:	000237b7          	lui	a5,0x23
   208d0:	96e7ac23          	sw	a4,-1672(a5) # 22978 <time_count>
   208d4:	000237b7          	lui	a5,0x23
   208d8:	9787a703          	lw	a4,-1672(a5) # 22978 <time_count>
   208dc:	000237b7          	lui	a5,0x23
   208e0:	97c7a783          	lw	a5,-1668(a5) # 2297c <time_lim>
   208e4:	10f76863          	bltu	a4,a5,209f4 <trap+0x1b4>
   208e8:	00100793          	li	a5,1
   208ec:	fef42623          	sw	a5,-20(s0)
   208f0:	1040006f          	j	209f4 <trap+0x1b4>
   208f4:	008007b7          	lui	a5,0x800
   208f8:	ff078793          	addi	a5,a5,-16 # 7ffff0 <__global_pointer$+0x7dce80>
   208fc:	0007a783          	lw	a5,0(a5)
   20900:	fcf42c23          	sw	a5,-40(s0)
   20904:	fd842783          	lw	a5,-40(s0)
   20908:	0007871b          	sext.w	a4,a5
   2090c:	00100793          	li	a5,1
   20910:	06f71263          	bne	a4,a5,20974 <trap+0x134>
   20914:	0440006f          	j	20958 <trap+0x118>
   20918:	008007b7          	lui	a5,0x800
   2091c:	ff878713          	addi	a4,a5,-8 # 7ffff8 <__global_pointer$+0x7dce88>
   20920:	8581a783          	lw	a5,-1960(gp) # 229c8 <buft>
   20924:	0017869b          	addiw	a3,a5,1
   20928:	0006861b          	sext.w	a2,a3
   2092c:	84c1ac23          	sw	a2,-1960(gp) # 229c8 <buft>
   20930:	00074703          	lbu	a4,0(a4)
   20934:	000236b7          	lui	a3,0x23
   20938:	98868693          	addi	a3,a3,-1656 # 22988 <input_buffer>
   2093c:	00d787b3          	add	a5,a5,a3
   20940:	00e78023          	sb	a4,0(a5)
   20944:	8581a783          	lw	a5,-1960(gp) # 229c8 <buft>
   20948:	00078713          	mv	a4,a5
   2094c:	04000793          	li	a5,64
   20950:	00f71463          	bne	a4,a5,20958 <trap+0x118>
   20954:	8401ac23          	sw	zero,-1960(gp) # 229c8 <buft>
   20958:	008007b7          	lui	a5,0x800
   2095c:	ffc78793          	addi	a5,a5,-4 # 7ffffc <__global_pointer$+0x7dce8c>
   20960:	0007a783          	lw	a5,0(a5)
   20964:	0f07f793          	andi	a5,a5,240
   20968:	0007879b          	sext.w	a5,a5
   2096c:	fa0796e3          	bnez	a5,20918 <trap+0xd8>
   20970:	00000013          	nop
   20974:	008007b7          	lui	a5,0x800
   20978:	ff078793          	addi	a5,a5,-16 # 7ffff0 <__global_pointer$+0x7dce80>
   2097c:	fd842703          	lw	a4,-40(s0)
   20980:	00e7a023          	sw	a4,0(a5)
   20984:	0740006f          	j	209f8 <trap+0x1b8>
   20988:	000227b7          	lui	a5,0x22
   2098c:	6b878513          	addi	a0,a5,1720 # 226b8 <INST_CONFIG+0x438>
   20990:	9e9ff0ef          	jal	ra,20378 <print>
   20994:	000227b7          	lui	a5,0x22
   20998:	6e078513          	addi	a0,a5,1760 # 226e0 <INST_CONFIG+0x460>
   2099c:	9ddff0ef          	jal	ra,20378 <print>
   209a0:	fdc42783          	lw	a5,-36(s0)
   209a4:	00078513          	mv	a0,a5
   209a8:	cb5ff0ef          	jal	ra,2065c <print_hex>
   209ac:	000227b7          	lui	a5,0x22
   209b0:	6e878513          	addi	a0,a5,1768 # 226e8 <INST_CONFIG+0x468>
   209b4:	9c5ff0ef          	jal	ra,20378 <print>
   209b8:	000227b7          	lui	a5,0x22
   209bc:	6f078513          	addi	a0,a5,1776 # 226f0 <INST_CONFIG+0x470>
   209c0:	9b9ff0ef          	jal	ra,20378 <print>
   209c4:	341027f3          	csrr	a5,mepc
   209c8:	fcf43823          	sd	a5,-48(s0)
   209cc:	fd043783          	ld	a5,-48(s0)
   209d0:	0007879b          	sext.w	a5,a5
   209d4:	00078513          	mv	a0,a5
   209d8:	c85ff0ef          	jal	ra,2065c <print_hex>
   209dc:	000227b7          	lui	a5,0x22
   209e0:	6e878513          	addi	a0,a5,1768 # 226e8 <INST_CONFIG+0x468>
   209e4:	995ff0ef          	jal	ra,20378 <print>
   209e8:	00100793          	li	a5,1
   209ec:	fef42623          	sw	a5,-20(s0)
   209f0:	0080006f          	j	209f8 <trap+0x1b8>
   209f4:	00000013          	nop
   209f8:	fdc42703          	lw	a4,-36(s0)
   209fc:	800007b7          	lui	a5,0x80000
   20a00:	fff7c793          	not	a5,a5
   20a04:	00f777b3          	and	a5,a4,a5
   20a08:	0007879b          	sext.w	a5,a5
   20a0c:	00100713          	li	a4,1
   20a10:	00f717bb          	sllw	a5,a4,a5
   20a14:	0007879b          	sext.w	a5,a5
   20a18:	3447b7f3          	csrrc	a5,mip,a5
   20a1c:	fcf43423          	sd	a5,-56(s0)
   20a20:	2180006f          	j	20c38 <trap+0x3f8>
   20a24:	fdc42783          	lw	a5,-36(s0)
   20a28:	0007871b          	sext.w	a4,a5
   20a2c:	00b00793          	li	a5,11
   20a30:	1ae7e063          	bltu	a5,a4,20bd0 <trap+0x390>
   20a34:	fdc46783          	lwu	a5,-36(s0)
   20a38:	00279713          	slli	a4,a5,0x2
   20a3c:	000227b7          	lui	a5,0x22
   20a40:	7c078793          	addi	a5,a5,1984 # 227c0 <INST_CONFIG+0x540>
   20a44:	00f707b3          	add	a5,a4,a5
   20a48:	0007a783          	lw	a5,0(a5)
   20a4c:	00078067          	jr	a5
   20a50:	000227b7          	lui	a5,0x22
   20a54:	6f878513          	addi	a0,a5,1784 # 226f8 <INST_CONFIG+0x478>
   20a58:	921ff0ef          	jal	ra,20378 <print>
   20a5c:	343027f3          	csrr	a5,mtval
   20a60:	fcf43023          	sd	a5,-64(s0)
   20a64:	fc043783          	ld	a5,-64(s0)
   20a68:	0007879b          	sext.w	a5,a5
   20a6c:	00078513          	mv	a0,a5
   20a70:	bedff0ef          	jal	ra,2065c <print_hex>
   20a74:	000227b7          	lui	a5,0x22
   20a78:	6e878513          	addi	a0,a5,1768 # 226e8 <INST_CONFIG+0x468>
   20a7c:	8fdff0ef          	jal	ra,20378 <print>
   20a80:	00100793          	li	a5,1
   20a84:	fef42623          	sw	a5,-20(s0)
   20a88:	1b00006f          	j	20c38 <trap+0x3f8>
   20a8c:	000227b7          	lui	a5,0x22
   20a90:	72078513          	addi	a0,a5,1824 # 22720 <INST_CONFIG+0x4a0>
   20a94:	8e5ff0ef          	jal	ra,20378 <print>
   20a98:	00100793          	li	a5,1
   20a9c:	fef42623          	sw	a5,-20(s0)
   20aa0:	1980006f          	j	20c38 <trap+0x3f8>
   20aa4:	000227b7          	lui	a5,0x22
   20aa8:	74078513          	addi	a0,a5,1856 # 22740 <INST_CONFIG+0x4c0>
   20aac:	8cdff0ef          	jal	ra,20378 <print>
   20ab0:	343027f3          	csrr	a5,mtval
   20ab4:	faf43c23          	sd	a5,-72(s0)
   20ab8:	fb843783          	ld	a5,-72(s0)
   20abc:	0007879b          	sext.w	a5,a5
   20ac0:	00078513          	mv	a0,a5
   20ac4:	b99ff0ef          	jal	ra,2065c <print_hex>
   20ac8:	000227b7          	lui	a5,0x22
   20acc:	6e878513          	addi	a0,a5,1768 # 226e8 <INST_CONFIG+0x468>
   20ad0:	8a9ff0ef          	jal	ra,20378 <print>
   20ad4:	1640006f          	j	20c38 <trap+0x3f8>
   20ad8:	000227b7          	lui	a5,0x22
   20adc:	76078513          	addi	a0,a5,1888 # 22760 <INST_CONFIG+0x4e0>
   20ae0:	899ff0ef          	jal	ra,20378 <print>
   20ae4:	343027f3          	csrr	a5,mtval
   20ae8:	faf43823          	sd	a5,-80(s0)
   20aec:	fb043783          	ld	a5,-80(s0)
   20af0:	0007879b          	sext.w	a5,a5
   20af4:	00078513          	mv	a0,a5
   20af8:	b65ff0ef          	jal	ra,2065c <print_hex>
   20afc:	000227b7          	lui	a5,0x22
   20b00:	6e878513          	addi	a0,a5,1768 # 226e8 <INST_CONFIG+0x468>
   20b04:	875ff0ef          	jal	ra,20378 <print>
   20b08:	00100793          	li	a5,1
   20b0c:	fef42623          	sw	a5,-20(s0)
   20b10:	1280006f          	j	20c38 <trap+0x3f8>
   20b14:	8101b783          	ld	a5,-2032(gp) # 22980 <trap_frame>
   20b18:	02878793          	addi	a5,a5,40
   20b1c:	0007a783          	lw	a5,0(a5)
   20b20:	00078693          	mv	a3,a5
   20b24:	00100713          	li	a4,1
   20b28:	02e68463          	beq	a3,a4,20b50 <trap+0x310>
   20b2c:	00078713          	mv	a4,a5
   20b30:	00070a63          	beqz	a4,20b44 <trap+0x304>
   20b34:	00078713          	mv	a4,a5
   20b38:	00200793          	li	a5,2
   20b3c:	02f70a63          	beq	a4,a5,20b70 <trap+0x330>
   20b40:	0440006f          	j	20b84 <trap+0x344>
   20b44:	00100793          	li	a5,1
   20b48:	fef42623          	sw	a5,-20(s0)
   20b4c:	06c0006f          	j	20bb8 <trap+0x378>
   20b50:	8101b783          	ld	a5,-2032(gp) # 22980 <trap_frame>
   20b54:	02c78793          	addi	a5,a5,44
   20b58:	0007a703          	lw	a4,0(a5)
   20b5c:	008007b7          	lui	a5,0x800
   20b60:	ff878793          	addi	a5,a5,-8 # 7ffff8 <__global_pointer$+0x7dce88>
   20b64:	0ff77713          	andi	a4,a4,255
   20b68:	00e78023          	sb	a4,0(a5)
   20b6c:	04c0006f          	j	20bb8 <trap+0x378>
   20b70:	8101b783          	ld	a5,-2032(gp) # 22980 <trap_frame>
   20b74:	02478793          	addi	a5,a5,36
   20b78:	04100713          	li	a4,65
   20b7c:	00e7a023          	sw	a4,0(a5)
   20b80:	0380006f          	j	20bb8 <trap+0x378>
   20b84:	000227b7          	lui	a5,0x22
   20b88:	78078513          	addi	a0,a5,1920 # 22780 <INST_CONFIG+0x500>
   20b8c:	fecff0ef          	jal	ra,20378 <print>
   20b90:	8101b783          	ld	a5,-2032(gp) # 22980 <trap_frame>
   20b94:	02878793          	addi	a5,a5,40
   20b98:	0007a783          	lw	a5,0(a5)
   20b9c:	00078513          	mv	a0,a5
   20ba0:	abdff0ef          	jal	ra,2065c <print_hex>
   20ba4:	000227b7          	lui	a5,0x22
   20ba8:	6e878513          	addi	a0,a5,1768 # 226e8 <INST_CONFIG+0x468>
   20bac:	fccff0ef          	jal	ra,20378 <print>
   20bb0:	00100793          	li	a5,1
   20bb4:	fef42623          	sw	a5,-20(s0)
   20bb8:	341027f3          	csrr	a5,mepc
   20bbc:	faf43423          	sd	a5,-88(s0)
   20bc0:	fa843783          	ld	a5,-88(s0)
   20bc4:	00478793          	addi	a5,a5,4
   20bc8:	34179073          	csrw	mepc,a5
   20bcc:	06c0006f          	j	20c38 <trap+0x3f8>
   20bd0:	000227b7          	lui	a5,0x22
   20bd4:	79878513          	addi	a0,a5,1944 # 22798 <INST_CONFIG+0x518>
   20bd8:	fa0ff0ef          	jal	ra,20378 <print>
   20bdc:	000227b7          	lui	a5,0x22
   20be0:	6e078513          	addi	a0,a5,1760 # 226e0 <INST_CONFIG+0x460>
   20be4:	f94ff0ef          	jal	ra,20378 <print>
   20be8:	fdc42783          	lw	a5,-36(s0)
   20bec:	00078513          	mv	a0,a5
   20bf0:	a6dff0ef          	jal	ra,2065c <print_hex>
   20bf4:	000227b7          	lui	a5,0x22
   20bf8:	6e878513          	addi	a0,a5,1768 # 226e8 <INST_CONFIG+0x468>
   20bfc:	f7cff0ef          	jal	ra,20378 <print>
   20c00:	000227b7          	lui	a5,0x22
   20c04:	6f078513          	addi	a0,a5,1776 # 226f0 <INST_CONFIG+0x470>
   20c08:	f70ff0ef          	jal	ra,20378 <print>
   20c0c:	341027f3          	csrr	a5,mepc
   20c10:	faf43023          	sd	a5,-96(s0)
   20c14:	fa043783          	ld	a5,-96(s0)
   20c18:	0007879b          	sext.w	a5,a5
   20c1c:	00078513          	mv	a0,a5
   20c20:	a3dff0ef          	jal	ra,2065c <print_hex>
   20c24:	000227b7          	lui	a5,0x22
   20c28:	6e878513          	addi	a0,a5,1768 # 226e8 <INST_CONFIG+0x468>
   20c2c:	f4cff0ef          	jal	ra,20378 <print>
   20c30:	00100793          	li	a5,1
   20c34:	fef42623          	sw	a5,-20(s0)
   20c38:	fec42783          	lw	a5,-20(s0)
   20c3c:	0007879b          	sext.w	a5,a5
   20c40:	00078e63          	beqz	a5,20c5c <trap+0x41c>
   20c44:	000237b7          	lui	a5,0x23
   20c48:	9747a783          	lw	a5,-1676(a5) # 22974 <in_user>
   20c4c:	00078863          	beqz	a5,20c5c <trap+0x41c>
   20c50:	000207b7          	lui	a5,0x20
   20c54:	13878793          	addi	a5,a5,312 # 20138 <_exit>
   20c58:	34179073          	csrw	mepc,a5
   20c5c:	00000013          	nop
   20c60:	05813083          	ld	ra,88(sp)
   20c64:	05013403          	ld	s0,80(sp)
   20c68:	06010113          	addi	sp,sp,96
   20c6c:	00008067          	ret

0000000000020c70 <init>:
   20c70:	fd010113          	addi	sp,sp,-48
   20c74:	02813423          	sd	s0,40(sp)
   20c78:	03010413          	addi	s0,sp,48
   20c7c:	8401ac23          	sw	zero,-1960(gp) # 229c8 <buft>
   20c80:	8581a703          	lw	a4,-1960(gp) # 229c8 <buft>
   20c84:	8ae1a023          	sw	a4,-1888(gp) # 22a10 <bufh>
   20c88:	000407b7          	lui	a5,0x40
   20c8c:	34079073          	csrw	mscratch,a5
   20c90:	000207b7          	lui	a5,0x20
   20c94:	25878793          	addi	a5,a5,600 # 20258 <_trap_entry>
   20c98:	30579073          	csrw	mtvec,a5
   20c9c:	300467f3          	csrrsi	a5,mstatus,8
   20ca0:	fef43023          	sd	a5,-32(s0)
   20ca4:	008007b7          	lui	a5,0x800
   20ca8:	fc478793          	addi	a5,a5,-60 # 7fffc4 <__global_pointer$+0x7dce54>
   20cac:	0007a023          	sw	zero,0(a5)
   20cb0:	008007b7          	lui	a5,0x800
   20cb4:	fc078793          	addi	a5,a5,-64 # 7fffc0 <__global_pointer$+0x7dce50>
   20cb8:	0001f737          	lui	a4,0x1f
   20cbc:	8487071b          	addiw	a4,a4,-1976
   20cc0:	00e7a023          	sw	a4,0(a5)
   20cc4:	008007b7          	lui	a5,0x800
   20cc8:	fcc78793          	addi	a5,a5,-52 # 7fffcc <__global_pointer$+0x7dce5c>
   20ccc:	0007a023          	sw	zero,0(a5)
   20cd0:	008007b7          	lui	a5,0x800
   20cd4:	fc878793          	addi	a5,a5,-56 # 7fffc8 <__global_pointer$+0x7dce58>
   20cd8:	0007a023          	sw	zero,0(a5)
   20cdc:	000017b7          	lui	a5,0x1
   20ce0:	8807879b          	addiw	a5,a5,-1920
   20ce4:	3047a7f3          	csrrs	a5,mie,a5
   20ce8:	fcf43c23          	sd	a5,-40(s0)
   20cec:	000237b7          	lui	a5,0x23
   20cf0:	9607aa23          	sw	zero,-1676(a5) # 22974 <in_user>
   20cf4:	000237b7          	lui	a5,0x23
   20cf8:	06400713          	li	a4,100
   20cfc:	96e7ae23          	sw	a4,-1668(a5) # 2297c <time_lim>
   20d00:	fe042623          	sw	zero,-20(s0)
   20d04:	0240006f          	j	20d28 <init+0xb8>
   20d08:	fec42703          	lw	a4,-20(s0)
   20d0c:	00271713          	slli	a4,a4,0x2
   20d10:	8a818793          	addi	a5,gp,-1880 # 22a18 <regs>
   20d14:	00f707b3          	add	a5,a4,a5
   20d18:	0007a023          	sw	zero,0(a5)
   20d1c:	fec42783          	lw	a5,-20(s0)
   20d20:	0017879b          	addiw	a5,a5,1
   20d24:	fef42623          	sw	a5,-20(s0)
   20d28:	fec42783          	lw	a5,-20(s0)
   20d2c:	0007871b          	sext.w	a4,a5
   20d30:	01f00793          	li	a5,31
   20d34:	fce7dae3          	bge	a5,a4,20d08 <init+0x98>
   20d38:	00000013          	nop
   20d3c:	02813403          	ld	s0,40(sp)
   20d40:	03010113          	addi	sp,sp,48
   20d44:	00008067          	ret

0000000000020d48 <next_word>:
   20d48:	fe010113          	addi	sp,sp,-32
   20d4c:	00813c23          	sd	s0,24(sp)
   20d50:	02010413          	addi	s0,sp,32
   20d54:	fea43423          	sd	a0,-24(s0)
   20d58:	0100006f          	j	20d68 <next_word+0x20>
   20d5c:	fe843783          	ld	a5,-24(s0)
   20d60:	00178793          	addi	a5,a5,1
   20d64:	fef43423          	sd	a5,-24(s0)
   20d68:	fe843783          	ld	a5,-24(s0)
   20d6c:	0007c783          	lbu	a5,0(a5)
   20d70:	02078463          	beqz	a5,20d98 <next_word+0x50>
   20d74:	fe843783          	ld	a5,-24(s0)
   20d78:	0007c783          	lbu	a5,0(a5)
   20d7c:	00078713          	mv	a4,a5
   20d80:	02000793          	li	a5,32
   20d84:	fcf71ce3          	bne	a4,a5,20d5c <next_word+0x14>
   20d88:	0100006f          	j	20d98 <next_word+0x50>
   20d8c:	fe843783          	ld	a5,-24(s0)
   20d90:	00178793          	addi	a5,a5,1
   20d94:	fef43423          	sd	a5,-24(s0)
   20d98:	fe843783          	ld	a5,-24(s0)
   20d9c:	0007c783          	lbu	a5,0(a5)
   20da0:	00078c63          	beqz	a5,20db8 <next_word+0x70>
   20da4:	fe843783          	ld	a5,-24(s0)
   20da8:	0007c783          	lbu	a5,0(a5)
   20dac:	00078713          	mv	a4,a5
   20db0:	02000793          	li	a5,32
   20db4:	fcf70ce3          	beq	a4,a5,20d8c <next_word+0x44>
   20db8:	fe843783          	ld	a5,-24(s0)
   20dbc:	00078513          	mv	a0,a5
   20dc0:	01813403          	ld	s0,24(sp)
   20dc4:	02010113          	addi	sp,sp,32
   20dc8:	00008067          	ret

0000000000020dcc <jump_exe>:
   20dcc:	fe010113          	addi	sp,sp,-32
   20dd0:	00113c23          	sd	ra,24(sp)
   20dd4:	00813823          	sd	s0,16(sp)
   20dd8:	02010413          	addi	s0,sp,32
   20ddc:	86018513          	addi	a0,gp,-1952 # 229d0 <buffer>
   20de0:	f69ff0ef          	jal	ra,20d48 <next_word>
   20de4:	fea43423          	sd	a0,-24(s0)
   20de8:	fe843783          	ld	a5,-24(s0)
   20dec:	0007c783          	lbu	a5,0(a5)
   20df0:	0a078263          	beqz	a5,20e94 <jump_exe+0xc8>
   20df4:	fe843783          	ld	a5,-24(s0)
   20df8:	00178793          	addi	a5,a5,1
   20dfc:	0007c783          	lbu	a5,0(a5)
   20e00:	08078a63          	beqz	a5,20e94 <jump_exe+0xc8>
   20e04:	fe843503          	ld	a0,-24(s0)
   20e08:	911ff0ef          	jal	ra,20718 <str2hex>
   20e0c:	00050793          	mv	a5,a0
   20e10:	fef42223          	sw	a5,-28(s0)
   20e14:	fe442783          	lw	a5,-28(s0)
   20e18:	00078513          	mv	a0,a5
   20e1c:	9f4ff0ef          	jal	ra,20010 <_entry>
   20e20:	000237b7          	lui	a5,0x23
   20e24:	97c7a703          	lw	a4,-1668(a5) # 2297c <time_lim>
   20e28:	000237b7          	lui	a5,0x23
   20e2c:	9787a783          	lw	a5,-1672(a5) # 22978 <time_count>
   20e30:	00e7e863          	bltu	a5,a4,20e40 <jump_exe+0x74>
   20e34:	000227b7          	lui	a5,0x22
   20e38:	7f078513          	addi	a0,a5,2032 # 227f0 <INST_CONFIG+0x570>
   20e3c:	d3cff0ef          	jal	ra,20378 <print>
   20e40:	000237b7          	lui	a5,0x23
   20e44:	83078513          	addi	a0,a5,-2000 # 22830 <INST_CONFIG+0x5b0>
   20e48:	d30ff0ef          	jal	ra,20378 <print>
   20e4c:	000237b7          	lui	a5,0x23
   20e50:	9787a783          	lw	a5,-1672(a5) # 22978 <time_count>
   20e54:	00078513          	mv	a0,a5
   20e58:	805ff0ef          	jal	ra,2065c <print_hex>
   20e5c:	000237b7          	lui	a5,0x23
   20e60:	84878513          	addi	a0,a5,-1976 # 22848 <INST_CONFIG+0x5c8>
   20e64:	d14ff0ef          	jal	ra,20378 <print>
   20e68:	000237b7          	lui	a5,0x23
   20e6c:	85078513          	addi	a0,a5,-1968 # 22850 <INST_CONFIG+0x5d0>
   20e70:	d08ff0ef          	jal	ra,20378 <print>
   20e74:	000237b7          	lui	a5,0x23
   20e78:	97c7a783          	lw	a5,-1668(a5) # 2297c <time_lim>
   20e7c:	00078513          	mv	a0,a5
   20e80:	fdcff0ef          	jal	ra,2065c <print_hex>
   20e84:	000237b7          	lui	a5,0x23
   20e88:	84878513          	addi	a0,a5,-1976 # 22848 <INST_CONFIG+0x5c8>
   20e8c:	cecff0ef          	jal	ra,20378 <print>
   20e90:	0080006f          	j	20e98 <jump_exe+0xcc>
   20e94:	00000013          	nop
   20e98:	01813083          	ld	ra,24(sp)
   20e9c:	01013403          	ld	s0,16(sp)
   20ea0:	02010113          	addi	sp,sp,32
   20ea4:	00008067          	ret

0000000000020ea8 <reg_exe>:
   20ea8:	fe010113          	addi	sp,sp,-32
   20eac:	00113c23          	sd	ra,24(sp)
   20eb0:	00813823          	sd	s0,16(sp)
   20eb4:	02010413          	addi	s0,sp,32
   20eb8:	fe042623          	sw	zero,-20(s0)
   20ebc:	05c0006f          	j	20f18 <reg_exe+0x70>
   20ec0:	000237b7          	lui	a5,0x23
   20ec4:	86878513          	addi	a0,a5,-1944 # 22868 <INST_CONFIG+0x5e8>
   20ec8:	cb0ff0ef          	jal	ra,20378 <print>
   20ecc:	fec42783          	lw	a5,-20(s0)
   20ed0:	00078513          	mv	a0,a5
   20ed4:	f88ff0ef          	jal	ra,2065c <print_hex>
   20ed8:	000237b7          	lui	a5,0x23
   20edc:	87078513          	addi	a0,a5,-1936 # 22870 <INST_CONFIG+0x5f0>
   20ee0:	c98ff0ef          	jal	ra,20378 <print>
   20ee4:	fec42703          	lw	a4,-20(s0)
   20ee8:	00271713          	slli	a4,a4,0x2
   20eec:	8a818793          	addi	a5,gp,-1880 # 22a18 <regs>
   20ef0:	00f707b3          	add	a5,a4,a5
   20ef4:	0007a783          	lw	a5,0(a5)
   20ef8:	00078513          	mv	a0,a5
   20efc:	f60ff0ef          	jal	ra,2065c <print_hex>
   20f00:	000227b7          	lui	a5,0x22
   20f04:	6e878513          	addi	a0,a5,1768 # 226e8 <INST_CONFIG+0x468>
   20f08:	c70ff0ef          	jal	ra,20378 <print>
   20f0c:	fec42783          	lw	a5,-20(s0)
   20f10:	0017879b          	addiw	a5,a5,1
   20f14:	fef42623          	sw	a5,-20(s0)
   20f18:	fec42783          	lw	a5,-20(s0)
   20f1c:	0007871b          	sext.w	a4,a5
   20f20:	01f00793          	li	a5,31
   20f24:	f8e7dee3          	bge	a5,a4,20ec0 <reg_exe+0x18>
   20f28:	00000013          	nop
   20f2c:	01813083          	ld	ra,24(sp)
   20f30:	01013403          	ld	s0,16(sp)
   20f34:	02010113          	addi	sp,sp,32
   20f38:	00008067          	ret

0000000000020f3c <edit_exe>:
   20f3c:	fd010113          	addi	sp,sp,-48
   20f40:	02113423          	sd	ra,40(sp)
   20f44:	02813023          	sd	s0,32(sp)
   20f48:	03010413          	addi	s0,sp,48
   20f4c:	86018513          	addi	a0,gp,-1952 # 229d0 <buffer>
   20f50:	df9ff0ef          	jal	ra,20d48 <next_word>
   20f54:	fea43023          	sd	a0,-32(s0)
   20f58:	fe043783          	ld	a5,-32(s0)
   20f5c:	0007c783          	lbu	a5,0(a5)
   20f60:	08078863          	beqz	a5,20ff0 <edit_exe+0xb4>
   20f64:	fe043783          	ld	a5,-32(s0)
   20f68:	00178793          	addi	a5,a5,1
   20f6c:	0007c783          	lbu	a5,0(a5)
   20f70:	08078063          	beqz	a5,20ff0 <edit_exe+0xb4>
   20f74:	fe043503          	ld	a0,-32(s0)
   20f78:	fa0ff0ef          	jal	ra,20718 <str2hex>
   20f7c:	00050793          	mv	a5,a0
   20f80:	fef42623          	sw	a5,-20(s0)
   20f84:	000237b7          	lui	a5,0x23
   20f88:	87878513          	addi	a0,a5,-1928 # 22878 <INST_CONFIG+0x5f8>
   20f8c:	becff0ef          	jal	ra,20378 <print>
   20f90:	fec42783          	lw	a5,-20(s0)
   20f94:	00078513          	mv	a0,a5
   20f98:	ec4ff0ef          	jal	ra,2065c <print_hex>
   20f9c:	000237b7          	lui	a5,0x23
   20fa0:	88078513          	addi	a0,a5,-1920 # 22880 <INST_CONFIG+0x600>
   20fa4:	bd4ff0ef          	jal	ra,20378 <print>
   20fa8:	cf0ff0ef          	jal	ra,20498 <get_line>
   20fac:	8601c783          	lbu	a5,-1952(gp) # 229d0 <buffer>
   20fb0:	04078263          	beqz	a5,20ff4 <edit_exe+0xb8>
   20fb4:	86018793          	addi	a5,gp,-1952 # 229d0 <buffer>
   20fb8:	0017c783          	lbu	a5,1(a5)
   20fbc:	02078c63          	beqz	a5,20ff4 <edit_exe+0xb8>
   20fc0:	86018513          	addi	a0,gp,-1952 # 229d0 <buffer>
   20fc4:	f54ff0ef          	jal	ra,20718 <str2hex>
   20fc8:	00050793          	mv	a5,a0
   20fcc:	fcf42e23          	sw	a5,-36(s0)
   20fd0:	fec46783          	lwu	a5,-20(s0)
   20fd4:	00078713          	mv	a4,a5
   20fd8:	fdc42783          	lw	a5,-36(s0)
   20fdc:	00f72023          	sw	a5,0(a4) # 1f000 <_start-0x1000>
   20fe0:	fec42783          	lw	a5,-20(s0)
   20fe4:	0047879b          	addiw	a5,a5,4
   20fe8:	fef42623          	sw	a5,-20(s0)
   20fec:	f99ff06f          	j	20f84 <edit_exe+0x48>
   20ff0:	00000013          	nop
   20ff4:	02813083          	ld	ra,40(sp)
   20ff8:	02013403          	ld	s0,32(sp)
   20ffc:	03010113          	addi	sp,sp,48
   21000:	00008067          	ret

0000000000021004 <parse_arg>:
   21004:	fe010113          	addi	sp,sp,-32
   21008:	00113c23          	sd	ra,24(sp)
   2100c:	00813823          	sd	s0,16(sp)
   21010:	02010413          	addi	s0,sp,32
   21014:	fea43423          	sd	a0,-24(s0)
   21018:	feb43023          	sd	a1,-32(s0)
   2101c:	fe843783          	ld	a5,-24(s0)
   21020:	0007c783          	lbu	a5,0(a5)
   21024:	00078a63          	beqz	a5,21038 <parse_arg+0x34>
   21028:	fe843783          	ld	a5,-24(s0)
   2102c:	00178793          	addi	a5,a5,1
   21030:	0007c783          	lbu	a5,0(a5)
   21034:	00079663          	bnez	a5,21040 <parse_arg+0x3c>
   21038:	00000793          	li	a5,0
   2103c:	0b40006f          	j	210f0 <parse_arg+0xec>
   21040:	fe843783          	ld	a5,-24(s0)
   21044:	0007c783          	lbu	a5,0(a5)
   21048:	00078713          	mv	a4,a5
   2104c:	03000793          	li	a5,48
   21050:	02f71c63          	bne	a4,a5,21088 <parse_arg+0x84>
   21054:	fe843783          	ld	a5,-24(s0)
   21058:	00178793          	addi	a5,a5,1
   2105c:	0007c783          	lbu	a5,0(a5)
   21060:	00078713          	mv	a4,a5
   21064:	07800793          	li	a5,120
   21068:	02f71063          	bne	a4,a5,21088 <parse_arg+0x84>
   2106c:	fe843503          	ld	a0,-24(s0)
   21070:	ea8ff0ef          	jal	ra,20718 <str2hex>
   21074:	00050793          	mv	a5,a0
   21078:	0007871b          	sext.w	a4,a5
   2107c:	fe043783          	ld	a5,-32(s0)
   21080:	00e7a023          	sw	a4,0(a5)
   21084:	0680006f          	j	210ec <parse_arg+0xe8>
   21088:	fe843783          	ld	a5,-24(s0)
   2108c:	0007c783          	lbu	a5,0(a5)
   21090:	00078713          	mv	a4,a5
   21094:	07800793          	li	a5,120
   21098:	04f71a63          	bne	a4,a5,210ec <parse_arg+0xe8>
   2109c:	fe843783          	ld	a5,-24(s0)
   210a0:	00178793          	addi	a5,a5,1
   210a4:	0007c783          	lbu	a5,0(a5)
   210a8:	00078713          	mv	a4,a5
   210ac:	03000793          	li	a5,48
   210b0:	02f71e63          	bne	a4,a5,210ec <parse_arg+0xe8>
   210b4:	fe843783          	ld	a5,-24(s0)
   210b8:	00278793          	addi	a5,a5,2
   210bc:	0007c783          	lbu	a5,0(a5)
   210c0:	00078713          	mv	a4,a5
   210c4:	07800793          	li	a5,120
   210c8:	02f71263          	bne	a4,a5,210ec <parse_arg+0xe8>
   210cc:	fe843783          	ld	a5,-24(s0)
   210d0:	00178793          	addi	a5,a5,1
   210d4:	00078513          	mv	a0,a5
   210d8:	e40ff0ef          	jal	ra,20718 <str2hex>
   210dc:	00050793          	mv	a5,a0
   210e0:	0007871b          	sext.w	a4,a5
   210e4:	fe043783          	ld	a5,-32(s0)
   210e8:	00e7a023          	sw	a4,0(a5)
   210ec:	00100793          	li	a5,1
   210f0:	00078513          	mv	a0,a5
   210f4:	01813083          	ld	ra,24(sp)
   210f8:	01013403          	ld	s0,16(sp)
   210fc:	02010113          	addi	sp,sp,32
   21100:	00008067          	ret

0000000000021104 <inst2int>:
   21104:	fc010113          	addi	sp,sp,-64
   21108:	02113c23          	sd	ra,56(sp)
   2110c:	02813823          	sd	s0,48(sp)
   21110:	04010413          	addi	s0,sp,64
   21114:	fca43423          	sd	a0,-56(s0)
   21118:	fe042623          	sw	zero,-20(s0)
   2111c:	1000006f          	j	2121c <inst2int+0x118>
   21120:	fe042423          	sw	zero,-24(s0)
   21124:	0100006f          	j	21134 <inst2int+0x30>
   21128:	fe842783          	lw	a5,-24(s0)
   2112c:	0017879b          	addiw	a5,a5,1
   21130:	fef42423          	sw	a5,-24(s0)
   21134:	00022637          	lui	a2,0x22
   21138:	fe842683          	lw	a3,-24(s0)
   2113c:	fec42703          	lw	a4,-20(s0)
   21140:	00070793          	mv	a5,a4
   21144:	00379793          	slli	a5,a5,0x3
   21148:	40e787b3          	sub	a5,a5,a4
   2114c:	17060713          	addi	a4,a2,368 # 22170 <INST_NAMES>
   21150:	00e787b3          	add	a5,a5,a4
   21154:	00d787b3          	add	a5,a5,a3
   21158:	0007c783          	lbu	a5,0(a5)
   2115c:	04078c63          	beqz	a5,211b4 <inst2int+0xb0>
   21160:	fe842783          	lw	a5,-24(s0)
   21164:	fc843703          	ld	a4,-56(s0)
   21168:	00f707b3          	add	a5,a4,a5
   2116c:	0007c783          	lbu	a5,0(a5)
   21170:	04078263          	beqz	a5,211b4 <inst2int+0xb0>
   21174:	00022637          	lui	a2,0x22
   21178:	fe842683          	lw	a3,-24(s0)
   2117c:	fec42703          	lw	a4,-20(s0)
   21180:	00070793          	mv	a5,a4
   21184:	00379793          	slli	a5,a5,0x3
   21188:	40e787b3          	sub	a5,a5,a4
   2118c:	17060713          	addi	a4,a2,368 # 22170 <INST_NAMES>
   21190:	00e787b3          	add	a5,a5,a4
   21194:	00d787b3          	add	a5,a5,a3
   21198:	0007c683          	lbu	a3,0(a5)
   2119c:	fe842783          	lw	a5,-24(s0)
   211a0:	fc843703          	ld	a4,-56(s0)
   211a4:	00f707b3          	add	a5,a4,a5
   211a8:	0007c783          	lbu	a5,0(a5)
   211ac:	00068713          	mv	a4,a3
   211b0:	f6f70ce3          	beq	a4,a5,21128 <inst2int+0x24>
   211b4:	00022637          	lui	a2,0x22
   211b8:	fe842683          	lw	a3,-24(s0)
   211bc:	fec42703          	lw	a4,-20(s0)
   211c0:	00070793          	mv	a5,a4
   211c4:	00379793          	slli	a5,a5,0x3
   211c8:	40e787b3          	sub	a5,a5,a4
   211cc:	17060713          	addi	a4,a2,368 # 22170 <INST_NAMES>
   211d0:	00e787b3          	add	a5,a5,a4
   211d4:	00d787b3          	add	a5,a5,a3
   211d8:	0007c783          	lbu	a5,0(a5)
   211dc:	02079a63          	bnez	a5,21210 <inst2int+0x10c>
   211e0:	fe842783          	lw	a5,-24(s0)
   211e4:	fc843703          	ld	a4,-56(s0)
   211e8:	00f707b3          	add	a5,a4,a5
   211ec:	0007c783          	lbu	a5,0(a5)
   211f0:	02078e63          	beqz	a5,2122c <inst2int+0x128>
   211f4:	fe842783          	lw	a5,-24(s0)
   211f8:	fc843703          	ld	a4,-56(s0)
   211fc:	00f707b3          	add	a5,a4,a5
   21200:	0007c783          	lbu	a5,0(a5)
   21204:	00078713          	mv	a4,a5
   21208:	02000793          	li	a5,32
   2120c:	02f70063          	beq	a4,a5,2122c <inst2int+0x128>
   21210:	fec42783          	lw	a5,-20(s0)
   21214:	0017879b          	addiw	a5,a5,1
   21218:	fef42623          	sw	a5,-20(s0)
   2121c:	fec42783          	lw	a5,-20(s0)
   21220:	0007871b          	sext.w	a4,a5
   21224:	02500793          	li	a5,37
   21228:	eee7dce3          	bge	a5,a4,21120 <inst2int+0x1c>
   2122c:	fec42783          	lw	a5,-20(s0)
   21230:	0007871b          	sext.w	a4,a5
   21234:	02600793          	li	a5,38
   21238:	00f71663          	bne	a4,a5,21244 <inst2int+0x140>
   2123c:	00000793          	li	a5,0
   21240:	55c0006f          	j	2179c <inst2int+0x698>
   21244:	000227b7          	lui	a5,0x22
   21248:	fec42703          	lw	a4,-20(s0)
   2124c:	00471713          	slli	a4,a4,0x4
   21250:	28078793          	addi	a5,a5,640 # 22280 <INST_CONFIG>
   21254:	00f707b3          	add	a5,a4,a5
   21258:	0047a783          	lw	a5,4(a5)
   2125c:	fef42223          	sw	a5,-28(s0)
   21260:	000227b7          	lui	a5,0x22
   21264:	fec42703          	lw	a4,-20(s0)
   21268:	00471713          	slli	a4,a4,0x4
   2126c:	28078793          	addi	a5,a5,640 # 22280 <INST_CONFIG>
   21270:	00f707b3          	add	a5,a4,a5
   21274:	0007a783          	lw	a5,0(a5)
   21278:	fef42023          	sw	a5,-32(s0)
   2127c:	fe042783          	lw	a5,-32(s0)
   21280:	0007871b          	sext.w	a4,a5
   21284:	00600793          	li	a5,6
   21288:	02f71863          	bne	a4,a5,212b8 <inst2int+0x1b4>
   2128c:	000227b7          	lui	a5,0x22
   21290:	fec42703          	lw	a4,-20(s0)
   21294:	00471713          	slli	a4,a4,0x4
   21298:	28078793          	addi	a5,a5,640 # 22280 <INST_CONFIG>
   2129c:	00f707b3          	add	a5,a4,a5
   212a0:	0087a783          	lw	a5,8(a5)
   212a4:	0077979b          	slliw	a5,a5,0x7
   212a8:	0007871b          	sext.w	a4,a5
   212ac:	fe442783          	lw	a5,-28(s0)
   212b0:	00e7e7b3          	or	a5,a5,a4
   212b4:	fef42223          	sw	a5,-28(s0)
   212b8:	fe042783          	lw	a5,-32(s0)
   212bc:	0007879b          	sext.w	a5,a5
   212c0:	02078a63          	beqz	a5,212f4 <inst2int+0x1f0>
   212c4:	fe042783          	lw	a5,-32(s0)
   212c8:	0007871b          	sext.w	a4,a5
   212cc:	00100793          	li	a5,1
   212d0:	02f70263          	beq	a4,a5,212f4 <inst2int+0x1f0>
   212d4:	fe042783          	lw	a5,-32(s0)
   212d8:	0007871b          	sext.w	a4,a5
   212dc:	00200793          	li	a5,2
   212e0:	00f70a63          	beq	a4,a5,212f4 <inst2int+0x1f0>
   212e4:	fe042783          	lw	a5,-32(s0)
   212e8:	0007871b          	sext.w	a4,a5
   212ec:	00300793          	li	a5,3
   212f0:	04f71063          	bne	a4,a5,21330 <inst2int+0x22c>
   212f4:	000227b7          	lui	a5,0x22
   212f8:	fec42703          	lw	a4,-20(s0)
   212fc:	00471713          	slli	a4,a4,0x4
   21300:	28078793          	addi	a5,a5,640 # 22280 <INST_CONFIG>
   21304:	00f707b3          	add	a5,a4,a5
   21308:	0087a783          	lw	a5,8(a5)
   2130c:	00c7979b          	slliw	a5,a5,0xc
   21310:	0007879b          	sext.w	a5,a5
   21314:	00078713          	mv	a4,a5
   21318:	000077b7          	lui	a5,0x7
   2131c:	00f777b3          	and	a5,a4,a5
   21320:	0007871b          	sext.w	a4,a5
   21324:	fe442783          	lw	a5,-28(s0)
   21328:	00e7e7b3          	or	a5,a5,a4
   2132c:	fef42223          	sw	a5,-28(s0)
   21330:	fe042783          	lw	a5,-32(s0)
   21334:	0007879b          	sext.w	a5,a5
   21338:	02079863          	bnez	a5,21368 <inst2int+0x264>
   2133c:	000227b7          	lui	a5,0x22
   21340:	fec42703          	lw	a4,-20(s0)
   21344:	00471713          	slli	a4,a4,0x4
   21348:	28078793          	addi	a5,a5,640 # 22280 <INST_CONFIG>
   2134c:	00f707b3          	add	a5,a4,a5
   21350:	00c7a783          	lw	a5,12(a5)
   21354:	0197979b          	slliw	a5,a5,0x19
   21358:	0007871b          	sext.w	a4,a5
   2135c:	fe442783          	lw	a5,-28(s0)
   21360:	00e7e7b3          	or	a5,a5,a4
   21364:	fef42223          	sw	a5,-28(s0)
   21368:	fe042783          	lw	a5,-32(s0)
   2136c:	0007879b          	sext.w	a5,a5
   21370:	02078a63          	beqz	a5,213a4 <inst2int+0x2a0>
   21374:	fe042783          	lw	a5,-32(s0)
   21378:	0007871b          	sext.w	a4,a5
   2137c:	00100793          	li	a5,1
   21380:	02f70263          	beq	a4,a5,213a4 <inst2int+0x2a0>
   21384:	fe042783          	lw	a5,-32(s0)
   21388:	0007871b          	sext.w	a4,a5
   2138c:	00400793          	li	a5,4
   21390:	00f70a63          	beq	a4,a5,213a4 <inst2int+0x2a0>
   21394:	fe042783          	lw	a5,-32(s0)
   21398:	0007871b          	sext.w	a4,a5
   2139c:	00500793          	li	a5,5
   213a0:	06f71463          	bne	a4,a5,21408 <inst2int+0x304>
   213a4:	fc843503          	ld	a0,-56(s0)
   213a8:	9a1ff0ef          	jal	ra,20d48 <next_word>
   213ac:	fca43423          	sd	a0,-56(s0)
   213b0:	fd840793          	addi	a5,s0,-40
   213b4:	00078593          	mv	a1,a5
   213b8:	fc843503          	ld	a0,-56(s0)
   213bc:	c49ff0ef          	jal	ra,21004 <parse_arg>
   213c0:	00050793          	mv	a5,a0
   213c4:	fcf42e23          	sw	a5,-36(s0)
   213c8:	fdc42783          	lw	a5,-36(s0)
   213cc:	0007879b          	sext.w	a5,a5
   213d0:	00079663          	bnez	a5,213dc <inst2int+0x2d8>
   213d4:	00000793          	li	a5,0
   213d8:	3c40006f          	j	2179c <inst2int+0x698>
   213dc:	fd842783          	lw	a5,-40(s0)
   213e0:	0077979b          	slliw	a5,a5,0x7
   213e4:	0007879b          	sext.w	a5,a5
   213e8:	00078713          	mv	a4,a5
   213ec:	000017b7          	lui	a5,0x1
   213f0:	f8078793          	addi	a5,a5,-128 # f80 <_start-0x1f080>
   213f4:	00f777b3          	and	a5,a4,a5
   213f8:	0007871b          	sext.w	a4,a5
   213fc:	fe442783          	lw	a5,-28(s0)
   21400:	00e7e7b3          	or	a5,a5,a4
   21404:	fef42223          	sw	a5,-28(s0)
   21408:	fe042783          	lw	a5,-32(s0)
   2140c:	0007879b          	sext.w	a5,a5
   21410:	02078a63          	beqz	a5,21444 <inst2int+0x340>
   21414:	fe042783          	lw	a5,-32(s0)
   21418:	0007871b          	sext.w	a4,a5
   2141c:	00100793          	li	a5,1
   21420:	02f70263          	beq	a4,a5,21444 <inst2int+0x340>
   21424:	fe042783          	lw	a5,-32(s0)
   21428:	0007871b          	sext.w	a4,a5
   2142c:	00200793          	li	a5,2
   21430:	00f70a63          	beq	a4,a5,21444 <inst2int+0x340>
   21434:	fe042783          	lw	a5,-32(s0)
   21438:	0007871b          	sext.w	a4,a5
   2143c:	00300793          	li	a5,3
   21440:	06f71263          	bne	a4,a5,214a4 <inst2int+0x3a0>
   21444:	fc843503          	ld	a0,-56(s0)
   21448:	901ff0ef          	jal	ra,20d48 <next_word>
   2144c:	fca43423          	sd	a0,-56(s0)
   21450:	fd840793          	addi	a5,s0,-40
   21454:	00078593          	mv	a1,a5
   21458:	fc843503          	ld	a0,-56(s0)
   2145c:	ba9ff0ef          	jal	ra,21004 <parse_arg>
   21460:	00050793          	mv	a5,a0
   21464:	fcf42e23          	sw	a5,-36(s0)
   21468:	fdc42783          	lw	a5,-36(s0)
   2146c:	0007879b          	sext.w	a5,a5
   21470:	00079663          	bnez	a5,2147c <inst2int+0x378>
   21474:	00000793          	li	a5,0
   21478:	3240006f          	j	2179c <inst2int+0x698>
   2147c:	fd842783          	lw	a5,-40(s0)
   21480:	00f7979b          	slliw	a5,a5,0xf
   21484:	0007879b          	sext.w	a5,a5
   21488:	00078713          	mv	a4,a5
   2148c:	000f87b7          	lui	a5,0xf8
   21490:	00f777b3          	and	a5,a4,a5
   21494:	0007871b          	sext.w	a4,a5
   21498:	fe442783          	lw	a5,-28(s0)
   2149c:	00e7e7b3          	or	a5,a5,a4
   214a0:	fef42223          	sw	a5,-28(s0)
   214a4:	fe042783          	lw	a5,-32(s0)
   214a8:	0007879b          	sext.w	a5,a5
   214ac:	02078263          	beqz	a5,214d0 <inst2int+0x3cc>
   214b0:	fe042783          	lw	a5,-32(s0)
   214b4:	0007871b          	sext.w	a4,a5
   214b8:	00200793          	li	a5,2
   214bc:	00f70a63          	beq	a4,a5,214d0 <inst2int+0x3cc>
   214c0:	fe042783          	lw	a5,-32(s0)
   214c4:	0007871b          	sext.w	a4,a5
   214c8:	00300793          	li	a5,3
   214cc:	06f71263          	bne	a4,a5,21530 <inst2int+0x42c>
   214d0:	fc843503          	ld	a0,-56(s0)
   214d4:	875ff0ef          	jal	ra,20d48 <next_word>
   214d8:	fca43423          	sd	a0,-56(s0)
   214dc:	fd840793          	addi	a5,s0,-40
   214e0:	00078593          	mv	a1,a5
   214e4:	fc843503          	ld	a0,-56(s0)
   214e8:	b1dff0ef          	jal	ra,21004 <parse_arg>
   214ec:	00050793          	mv	a5,a0
   214f0:	fcf42e23          	sw	a5,-36(s0)
   214f4:	fdc42783          	lw	a5,-36(s0)
   214f8:	0007879b          	sext.w	a5,a5
   214fc:	00079663          	bnez	a5,21508 <inst2int+0x404>
   21500:	00000793          	li	a5,0
   21504:	2980006f          	j	2179c <inst2int+0x698>
   21508:	fd842783          	lw	a5,-40(s0)
   2150c:	0147979b          	slliw	a5,a5,0x14
   21510:	0007879b          	sext.w	a5,a5
   21514:	00078713          	mv	a4,a5
   21518:	01f007b7          	lui	a5,0x1f00
   2151c:	00f777b3          	and	a5,a4,a5
   21520:	0007871b          	sext.w	a4,a5
   21524:	fe442783          	lw	a5,-28(s0)
   21528:	00e7e7b3          	or	a5,a5,a4
   2152c:	fef42223          	sw	a5,-28(s0)
   21530:	fe042783          	lw	a5,-32(s0)
   21534:	0007879b          	sext.w	a5,a5
   21538:	24078e63          	beqz	a5,21794 <inst2int+0x690>
   2153c:	fe042783          	lw	a5,-32(s0)
   21540:	0007871b          	sext.w	a4,a5
   21544:	00600793          	li	a5,6
   21548:	24f70663          	beq	a4,a5,21794 <inst2int+0x690>
   2154c:	fc843503          	ld	a0,-56(s0)
   21550:	ff8ff0ef          	jal	ra,20d48 <next_word>
   21554:	fca43423          	sd	a0,-56(s0)
   21558:	fd840793          	addi	a5,s0,-40
   2155c:	00078593          	mv	a1,a5
   21560:	fc843503          	ld	a0,-56(s0)
   21564:	aa1ff0ef          	jal	ra,21004 <parse_arg>
   21568:	00050793          	mv	a5,a0
   2156c:	fcf42e23          	sw	a5,-36(s0)
   21570:	fdc42783          	lw	a5,-36(s0)
   21574:	0007879b          	sext.w	a5,a5
   21578:	00079663          	bnez	a5,21584 <inst2int+0x480>
   2157c:	00000793          	li	a5,0
   21580:	21c0006f          	j	2179c <inst2int+0x698>
   21584:	fe042783          	lw	a5,-32(s0)
   21588:	0007871b          	sext.w	a4,a5
   2158c:	00500793          	li	a5,5
   21590:	20e7e463          	bltu	a5,a4,21798 <inst2int+0x694>
   21594:	fe046783          	lwu	a5,-32(s0)
   21598:	00279713          	slli	a4,a5,0x2
   2159c:	000237b7          	lui	a5,0x23
   215a0:	88478793          	addi	a5,a5,-1916 # 22884 <INST_CONFIG+0x604>
   215a4:	00f707b3          	add	a5,a4,a5
   215a8:	0007a783          	lw	a5,0(a5)
   215ac:	00078067          	jr	a5
   215b0:	fd842783          	lw	a5,-40(s0)
   215b4:	0147979b          	slliw	a5,a5,0x14
   215b8:	0007871b          	sext.w	a4,a5
   215bc:	fe442783          	lw	a5,-28(s0)
   215c0:	00e7e7b3          	or	a5,a5,a4
   215c4:	fef42223          	sw	a5,-28(s0)
   215c8:	1d00006f          	j	21798 <inst2int+0x694>
   215cc:	fd842783          	lw	a5,-40(s0)
   215d0:	0077979b          	slliw	a5,a5,0x7
   215d4:	0007879b          	sext.w	a5,a5
   215d8:	00078713          	mv	a4,a5
   215dc:	000017b7          	lui	a5,0x1
   215e0:	f8078793          	addi	a5,a5,-128 # f80 <_start-0x1f080>
   215e4:	00f777b3          	and	a5,a4,a5
   215e8:	0007871b          	sext.w	a4,a5
   215ec:	fe442783          	lw	a5,-28(s0)
   215f0:	00e7e7b3          	or	a5,a5,a4
   215f4:	fef42223          	sw	a5,-28(s0)
   215f8:	fd842783          	lw	a5,-40(s0)
   215fc:	0057d79b          	srliw	a5,a5,0x5
   21600:	0007879b          	sext.w	a5,a5
   21604:	0197979b          	slliw	a5,a5,0x19
   21608:	0007871b          	sext.w	a4,a5
   2160c:	fe442783          	lw	a5,-28(s0)
   21610:	00e7e7b3          	or	a5,a5,a4
   21614:	fef42223          	sw	a5,-28(s0)
   21618:	1800006f          	j	21798 <inst2int+0x694>
   2161c:	fd842783          	lw	a5,-40(s0)
   21620:	00b7d79b          	srliw	a5,a5,0xb
   21624:	0007879b          	sext.w	a5,a5
   21628:	0077979b          	slliw	a5,a5,0x7
   2162c:	0007879b          	sext.w	a5,a5
   21630:	0ff7f793          	andi	a5,a5,255
   21634:	0007871b          	sext.w	a4,a5
   21638:	fe442783          	lw	a5,-28(s0)
   2163c:	00e7e7b3          	or	a5,a5,a4
   21640:	fef42223          	sw	a5,-28(s0)
   21644:	fd842783          	lw	a5,-40(s0)
   21648:	0017d79b          	srliw	a5,a5,0x1
   2164c:	0007879b          	sext.w	a5,a5
   21650:	0087979b          	slliw	a5,a5,0x8
   21654:	0007879b          	sext.w	a5,a5
   21658:	00078713          	mv	a4,a5
   2165c:	000017b7          	lui	a5,0x1
   21660:	f0078793          	addi	a5,a5,-256 # f00 <_start-0x1f100>
   21664:	00f777b3          	and	a5,a4,a5
   21668:	0007871b          	sext.w	a4,a5
   2166c:	fe442783          	lw	a5,-28(s0)
   21670:	00e7e7b3          	or	a5,a5,a4
   21674:	fef42223          	sw	a5,-28(s0)
   21678:	fd842783          	lw	a5,-40(s0)
   2167c:	0057d79b          	srliw	a5,a5,0x5
   21680:	0007879b          	sext.w	a5,a5
   21684:	0197979b          	slliw	a5,a5,0x19
   21688:	0007879b          	sext.w	a5,a5
   2168c:	00078713          	mv	a4,a5
   21690:	7e0007b7          	lui	a5,0x7e000
   21694:	00f777b3          	and	a5,a4,a5
   21698:	0007871b          	sext.w	a4,a5
   2169c:	fe442783          	lw	a5,-28(s0)
   216a0:	00e7e7b3          	or	a5,a5,a4
   216a4:	fef42223          	sw	a5,-28(s0)
   216a8:	fd842783          	lw	a5,-40(s0)
   216ac:	00c7d79b          	srliw	a5,a5,0xc
   216b0:	0007879b          	sext.w	a5,a5
   216b4:	01f7979b          	slliw	a5,a5,0x1f
   216b8:	0007871b          	sext.w	a4,a5
   216bc:	fe442783          	lw	a5,-28(s0)
   216c0:	00e7e7b3          	or	a5,a5,a4
   216c4:	fef42223          	sw	a5,-28(s0)
   216c8:	0d00006f          	j	21798 <inst2int+0x694>
   216cc:	fd842783          	lw	a5,-40(s0)
   216d0:	00078713          	mv	a4,a5
   216d4:	fffff7b7          	lui	a5,0xfffff
   216d8:	00f777b3          	and	a5,a4,a5
   216dc:	0007871b          	sext.w	a4,a5
   216e0:	fe442783          	lw	a5,-28(s0)
   216e4:	00e7e7b3          	or	a5,a5,a4
   216e8:	fef42223          	sw	a5,-28(s0)
   216ec:	0ac0006f          	j	21798 <inst2int+0x694>
   216f0:	fd842783          	lw	a5,-40(s0)
   216f4:	00078713          	mv	a4,a5
   216f8:	000ff7b7          	lui	a5,0xff
   216fc:	00f777b3          	and	a5,a4,a5
   21700:	0007871b          	sext.w	a4,a5
   21704:	fe442783          	lw	a5,-28(s0)
   21708:	00e7e7b3          	or	a5,a5,a4
   2170c:	fef42223          	sw	a5,-28(s0)
   21710:	fd842783          	lw	a5,-40(s0)
   21714:	00b7d79b          	srliw	a5,a5,0xb
   21718:	0007879b          	sext.w	a5,a5
   2171c:	0147979b          	slliw	a5,a5,0x14
   21720:	0007879b          	sext.w	a5,a5
   21724:	00078713          	mv	a4,a5
   21728:	001007b7          	lui	a5,0x100
   2172c:	00f777b3          	and	a5,a4,a5
   21730:	0007871b          	sext.w	a4,a5
   21734:	fe442783          	lw	a5,-28(s0)
   21738:	00e7e7b3          	or	a5,a5,a4
   2173c:	fef42223          	sw	a5,-28(s0)
   21740:	fd842783          	lw	a5,-40(s0)
   21744:	0017d79b          	srliw	a5,a5,0x1
   21748:	0007879b          	sext.w	a5,a5
   2174c:	0157979b          	slliw	a5,a5,0x15
   21750:	0007879b          	sext.w	a5,a5
   21754:	00078713          	mv	a4,a5
   21758:	7fe007b7          	lui	a5,0x7fe00
   2175c:	00f777b3          	and	a5,a4,a5
   21760:	0007871b          	sext.w	a4,a5
   21764:	fe442783          	lw	a5,-28(s0)
   21768:	00e7e7b3          	or	a5,a5,a4
   2176c:	fef42223          	sw	a5,-28(s0)
   21770:	fd842783          	lw	a5,-40(s0)
   21774:	0147d79b          	srliw	a5,a5,0x14
   21778:	0007879b          	sext.w	a5,a5
   2177c:	01f7979b          	slliw	a5,a5,0x1f
   21780:	0007871b          	sext.w	a4,a5
   21784:	fe442783          	lw	a5,-28(s0)
   21788:	00e7e7b3          	or	a5,a5,a4
   2178c:	fef42223          	sw	a5,-28(s0)
   21790:	0080006f          	j	21798 <inst2int+0x694>
   21794:	00000013          	nop
   21798:	fe442783          	lw	a5,-28(s0)
   2179c:	00078513          	mv	a0,a5
   217a0:	03813083          	ld	ra,56(sp)
   217a4:	03013403          	ld	s0,48(sp)
   217a8:	04010113          	addi	sp,sp,64
   217ac:	00008067          	ret

00000000000217b0 <inst_exe>:
   217b0:	fd010113          	addi	sp,sp,-48
   217b4:	02113423          	sd	ra,40(sp)
   217b8:	02813023          	sd	s0,32(sp)
   217bc:	03010413          	addi	s0,sp,48
   217c0:	86018513          	addi	a0,gp,-1952 # 229d0 <buffer>
   217c4:	d84ff0ef          	jal	ra,20d48 <next_word>
   217c8:	fea43023          	sd	a0,-32(s0)
   217cc:	fe043783          	ld	a5,-32(s0)
   217d0:	0007c783          	lbu	a5,0(a5) # 7fe00000 <__global_pointer$+0x7fddce90>
   217d4:	08078463          	beqz	a5,2185c <inst_exe+0xac>
   217d8:	fe043783          	ld	a5,-32(s0)
   217dc:	00178793          	addi	a5,a5,1
   217e0:	0007c783          	lbu	a5,0(a5)
   217e4:	06078c63          	beqz	a5,2185c <inst_exe+0xac>
   217e8:	fe043503          	ld	a0,-32(s0)
   217ec:	f2dfe0ef          	jal	ra,20718 <str2hex>
   217f0:	00050793          	mv	a5,a0
   217f4:	fef42623          	sw	a5,-20(s0)
   217f8:	000237b7          	lui	a5,0x23
   217fc:	87878513          	addi	a0,a5,-1928 # 22878 <INST_CONFIG+0x5f8>
   21800:	b79fe0ef          	jal	ra,20378 <print>
   21804:	fec42783          	lw	a5,-20(s0)
   21808:	00078513          	mv	a0,a5
   2180c:	e51fe0ef          	jal	ra,2065c <print_hex>
   21810:	000237b7          	lui	a5,0x23
   21814:	88078513          	addi	a0,a5,-1920 # 22880 <INST_CONFIG+0x600>
   21818:	b61fe0ef          	jal	ra,20378 <print>
   2181c:	c7dfe0ef          	jal	ra,20498 <get_line>
   21820:	86018513          	addi	a0,gp,-1952 # 229d0 <buffer>
   21824:	8e1ff0ef          	jal	ra,21104 <inst2int>
   21828:	00050793          	mv	a5,a0
   2182c:	fcf42e23          	sw	a5,-36(s0)
   21830:	fdc42783          	lw	a5,-36(s0)
   21834:	0007879b          	sext.w	a5,a5
   21838:	02078663          	beqz	a5,21864 <inst_exe+0xb4>
   2183c:	fec46783          	lwu	a5,-20(s0)
   21840:	00078713          	mv	a4,a5
   21844:	fdc42783          	lw	a5,-36(s0)
   21848:	00f72023          	sw	a5,0(a4)
   2184c:	fec42783          	lw	a5,-20(s0)
   21850:	0047879b          	addiw	a5,a5,4
   21854:	fef42623          	sw	a5,-20(s0)
   21858:	fa1ff06f          	j	217f8 <inst_exe+0x48>
   2185c:	00000013          	nop
   21860:	0080006f          	j	21868 <inst_exe+0xb8>
   21864:	00000013          	nop
   21868:	02813083          	ld	ra,40(sp)
   2186c:	02013403          	ld	s0,32(sp)
   21870:	03010113          	addi	sp,sp,48
   21874:	00008067          	ret

0000000000021878 <view_exe>:
   21878:	fd010113          	addi	sp,sp,-48
   2187c:	02113423          	sd	ra,40(sp)
   21880:	02813023          	sd	s0,32(sp)
   21884:	03010413          	addi	s0,sp,48
   21888:	86018513          	addi	a0,gp,-1952 # 229d0 <buffer>
   2188c:	cbcff0ef          	jal	ra,20d48 <next_word>
   21890:	fea43023          	sd	a0,-32(s0)
   21894:	fe043783          	ld	a5,-32(s0)
   21898:	0007c783          	lbu	a5,0(a5)
   2189c:	0c078463          	beqz	a5,21964 <view_exe+0xec>
   218a0:	fe043783          	ld	a5,-32(s0)
   218a4:	00178793          	addi	a5,a5,1
   218a8:	0007c783          	lbu	a5,0(a5)
   218ac:	0a078c63          	beqz	a5,21964 <view_exe+0xec>
   218b0:	fe043503          	ld	a0,-32(s0)
   218b4:	e65fe0ef          	jal	ra,20718 <str2hex>
   218b8:	00050793          	mv	a5,a0
   218bc:	fef42623          	sw	a5,-20(s0)
   218c0:	fe043503          	ld	a0,-32(s0)
   218c4:	c84ff0ef          	jal	ra,20d48 <next_word>
   218c8:	fea43023          	sd	a0,-32(s0)
   218cc:	fe043783          	ld	a5,-32(s0)
   218d0:	0007c783          	lbu	a5,0(a5)
   218d4:	08078c63          	beqz	a5,2196c <view_exe+0xf4>
   218d8:	fe043783          	ld	a5,-32(s0)
   218dc:	00178793          	addi	a5,a5,1
   218e0:	0007c783          	lbu	a5,0(a5)
   218e4:	08078463          	beqz	a5,2196c <view_exe+0xf4>
   218e8:	fe043503          	ld	a0,-32(s0)
   218ec:	e2dfe0ef          	jal	ra,20718 <str2hex>
   218f0:	00050793          	mv	a5,a0
   218f4:	fef42423          	sw	a5,-24(s0)
   218f8:	0580006f          	j	21950 <view_exe+0xd8>
   218fc:	000237b7          	lui	a5,0x23
   21900:	87878513          	addi	a0,a5,-1928 # 22878 <INST_CONFIG+0x5f8>
   21904:	a75fe0ef          	jal	ra,20378 <print>
   21908:	fec42783          	lw	a5,-20(s0)
   2190c:	00078513          	mv	a0,a5
   21910:	d4dfe0ef          	jal	ra,2065c <print_hex>
   21914:	000237b7          	lui	a5,0x23
   21918:	88078513          	addi	a0,a5,-1920 # 22880 <INST_CONFIG+0x600>
   2191c:	a5dfe0ef          	jal	ra,20378 <print>
   21920:	fec46783          	lwu	a5,-20(s0)
   21924:	0007a783          	lw	a5,0(a5)
   21928:	fcf42e23          	sw	a5,-36(s0)
   2192c:	fdc42783          	lw	a5,-36(s0)
   21930:	00078513          	mv	a0,a5
   21934:	d29fe0ef          	jal	ra,2065c <print_hex>
   21938:	000227b7          	lui	a5,0x22
   2193c:	6e878513          	addi	a0,a5,1768 # 226e8 <INST_CONFIG+0x468>
   21940:	a39fe0ef          	jal	ra,20378 <print>
   21944:	fec42783          	lw	a5,-20(s0)
   21948:	0047879b          	addiw	a5,a5,4
   2194c:	fef42623          	sw	a5,-20(s0)
   21950:	fe842783          	lw	a5,-24(s0)
   21954:	fff7871b          	addiw	a4,a5,-1
   21958:	fee42423          	sw	a4,-24(s0)
   2195c:	fa0790e3          	bnez	a5,218fc <view_exe+0x84>
   21960:	0100006f          	j	21970 <view_exe+0xf8>
   21964:	00000013          	nop
   21968:	0080006f          	j	21970 <view_exe+0xf8>
   2196c:	00000013          	nop
   21970:	02813083          	ld	ra,40(sp)
   21974:	02013403          	ld	s0,32(sp)
   21978:	03010113          	addi	sp,sp,48
   2197c:	00008067          	ret

0000000000021980 <print_int2inst>:
   21980:	fd010113          	addi	sp,sp,-48
   21984:	02113423          	sd	ra,40(sp)
   21988:	02813023          	sd	s0,32(sp)
   2198c:	03010413          	addi	s0,sp,48
   21990:	00050793          	mv	a5,a0
   21994:	fcf42e23          	sw	a5,-36(s0)
   21998:	fe042623          	sw	zero,-20(s0)
   2199c:	1440006f          	j	21ae0 <print_int2inst+0x160>
   219a0:	000227b7          	lui	a5,0x22
   219a4:	fec42703          	lw	a4,-20(s0)
   219a8:	00471713          	slli	a4,a4,0x4
   219ac:	28078793          	addi	a5,a5,640 # 22280 <INST_CONFIG>
   219b0:	00f707b3          	add	a5,a4,a5
   219b4:	0047a703          	lw	a4,4(a5)
   219b8:	fdc42783          	lw	a5,-36(s0)
   219bc:	07f7f793          	andi	a5,a5,127
   219c0:	0007879b          	sext.w	a5,a5
   219c4:	0ef71e63          	bne	a4,a5,21ac0 <print_int2inst+0x140>
   219c8:	000227b7          	lui	a5,0x22
   219cc:	fec42703          	lw	a4,-20(s0)
   219d0:	00471713          	slli	a4,a4,0x4
   219d4:	28078793          	addi	a5,a5,640 # 22280 <INST_CONFIG>
   219d8:	00f707b3          	add	a5,a4,a5
   219dc:	0007a783          	lw	a5,0(a5)
   219e0:	fef42423          	sw	a5,-24(s0)
   219e4:	fe842783          	lw	a5,-24(s0)
   219e8:	0007879b          	sext.w	a5,a5
   219ec:	02079663          	bnez	a5,21a18 <print_int2inst+0x98>
   219f0:	000227b7          	lui	a5,0x22
   219f4:	fec42703          	lw	a4,-20(s0)
   219f8:	00471713          	slli	a4,a4,0x4
   219fc:	28078793          	addi	a5,a5,640 # 22280 <INST_CONFIG>
   21a00:	00f707b3          	add	a5,a4,a5
   21a04:	00c7a703          	lw	a4,12(a5)
   21a08:	fdc42783          	lw	a5,-36(s0)
   21a0c:	0197d79b          	srliw	a5,a5,0x19
   21a10:	0007879b          	sext.w	a5,a5
   21a14:	0af71a63          	bne	a4,a5,21ac8 <print_int2inst+0x148>
   21a18:	fe842783          	lw	a5,-24(s0)
   21a1c:	0007879b          	sext.w	a5,a5
   21a20:	02078a63          	beqz	a5,21a54 <print_int2inst+0xd4>
   21a24:	fe842783          	lw	a5,-24(s0)
   21a28:	0007871b          	sext.w	a4,a5
   21a2c:	00100793          	li	a5,1
   21a30:	02f70263          	beq	a4,a5,21a54 <print_int2inst+0xd4>
   21a34:	fe842783          	lw	a5,-24(s0)
   21a38:	0007871b          	sext.w	a4,a5
   21a3c:	00200793          	li	a5,2
   21a40:	00f70a63          	beq	a4,a5,21a54 <print_int2inst+0xd4>
   21a44:	fe842783          	lw	a5,-24(s0)
   21a48:	0007871b          	sext.w	a4,a5
   21a4c:	00300793          	li	a5,3
   21a50:	02f71a63          	bne	a4,a5,21a84 <print_int2inst+0x104>
   21a54:	000227b7          	lui	a5,0x22
   21a58:	fec42703          	lw	a4,-20(s0)
   21a5c:	00471713          	slli	a4,a4,0x4
   21a60:	28078793          	addi	a5,a5,640 # 22280 <INST_CONFIG>
   21a64:	00f707b3          	add	a5,a4,a5
   21a68:	0087a703          	lw	a4,8(a5)
   21a6c:	fdc42783          	lw	a5,-36(s0)
   21a70:	00c7d79b          	srliw	a5,a5,0xc
   21a74:	0007879b          	sext.w	a5,a5
   21a78:	0077f793          	andi	a5,a5,7
   21a7c:	0007879b          	sext.w	a5,a5
   21a80:	04f71863          	bne	a4,a5,21ad0 <print_int2inst+0x150>
   21a84:	fe842783          	lw	a5,-24(s0)
   21a88:	0007871b          	sext.w	a4,a5
   21a8c:	00600793          	li	a5,6
   21a90:	06f71263          	bne	a4,a5,21af4 <print_int2inst+0x174>
   21a94:	000227b7          	lui	a5,0x22
   21a98:	fec42703          	lw	a4,-20(s0)
   21a9c:	00471713          	slli	a4,a4,0x4
   21aa0:	28078793          	addi	a5,a5,640 # 22280 <INST_CONFIG>
   21aa4:	00f707b3          	add	a5,a4,a5
   21aa8:	0087a703          	lw	a4,8(a5)
   21aac:	fdc42783          	lw	a5,-36(s0)
   21ab0:	0077d79b          	srliw	a5,a5,0x7
   21ab4:	0007879b          	sext.w	a5,a5
   21ab8:	02f70e63          	beq	a4,a5,21af4 <print_int2inst+0x174>
   21abc:	0180006f          	j	21ad4 <print_int2inst+0x154>
   21ac0:	00000013          	nop
   21ac4:	0100006f          	j	21ad4 <print_int2inst+0x154>
   21ac8:	00000013          	nop
   21acc:	0080006f          	j	21ad4 <print_int2inst+0x154>
   21ad0:	00000013          	nop
   21ad4:	fec42783          	lw	a5,-20(s0)
   21ad8:	0017879b          	addiw	a5,a5,1
   21adc:	fef42623          	sw	a5,-20(s0)
   21ae0:	fec42783          	lw	a5,-20(s0)
   21ae4:	0007871b          	sext.w	a4,a5
   21ae8:	02500793          	li	a5,37
   21aec:	eae7dae3          	bge	a5,a4,219a0 <print_int2inst+0x20>
   21af0:	0080006f          	j	21af8 <print_int2inst+0x178>
   21af4:	00000013          	nop
   21af8:	fec42783          	lw	a5,-20(s0)
   21afc:	0007871b          	sext.w	a4,a5
   21b00:	02600793          	li	a5,38
   21b04:	00f71a63          	bne	a4,a5,21b18 <print_int2inst+0x198>
   21b08:	000237b7          	lui	a5,0x23
   21b0c:	8a078513          	addi	a0,a5,-1888 # 228a0 <INST_CONFIG+0x620>
   21b10:	869fe0ef          	jal	ra,20378 <print>
   21b14:	3400006f          	j	21e54 <print_int2inst+0x4d4>
   21b18:	fec42703          	lw	a4,-20(s0)
   21b1c:	00070793          	mv	a5,a4
   21b20:	00379793          	slli	a5,a5,0x3
   21b24:	40e787b3          	sub	a5,a5,a4
   21b28:	00022737          	lui	a4,0x22
   21b2c:	17070713          	addi	a4,a4,368 # 22170 <INST_NAMES>
   21b30:	00e787b3          	add	a5,a5,a4
   21b34:	00078513          	mv	a0,a5
   21b38:	841fe0ef          	jal	ra,20378 <print>
   21b3c:	fe842783          	lw	a5,-24(s0)
   21b40:	0007879b          	sext.w	a5,a5
   21b44:	02078a63          	beqz	a5,21b78 <print_int2inst+0x1f8>
   21b48:	fe842783          	lw	a5,-24(s0)
   21b4c:	0007871b          	sext.w	a4,a5
   21b50:	00100793          	li	a5,1
   21b54:	02f70263          	beq	a4,a5,21b78 <print_int2inst+0x1f8>
   21b58:	fe842783          	lw	a5,-24(s0)
   21b5c:	0007871b          	sext.w	a4,a5
   21b60:	00400793          	li	a5,4
   21b64:	00f70a63          	beq	a4,a5,21b78 <print_int2inst+0x1f8>
   21b68:	fe842783          	lw	a5,-24(s0)
   21b6c:	0007871b          	sext.w	a4,a5
   21b70:	00500793          	li	a5,5
   21b74:	02f71663          	bne	a4,a5,21ba0 <print_int2inst+0x220>
   21b78:	000237b7          	lui	a5,0x23
   21b7c:	8b078513          	addi	a0,a5,-1872 # 228b0 <INST_CONFIG+0x630>
   21b80:	ff8fe0ef          	jal	ra,20378 <print>
   21b84:	fdc42783          	lw	a5,-36(s0)
   21b88:	0077d79b          	srliw	a5,a5,0x7
   21b8c:	0007879b          	sext.w	a5,a5
   21b90:	01f7f793          	andi	a5,a5,31
   21b94:	0007879b          	sext.w	a5,a5
   21b98:	00078513          	mv	a0,a5
   21b9c:	ac1fe0ef          	jal	ra,2065c <print_hex>
   21ba0:	fe842783          	lw	a5,-24(s0)
   21ba4:	0007879b          	sext.w	a5,a5
   21ba8:	02078a63          	beqz	a5,21bdc <print_int2inst+0x25c>
   21bac:	fe842783          	lw	a5,-24(s0)
   21bb0:	0007871b          	sext.w	a4,a5
   21bb4:	00100793          	li	a5,1
   21bb8:	02f70263          	beq	a4,a5,21bdc <print_int2inst+0x25c>
   21bbc:	fe842783          	lw	a5,-24(s0)
   21bc0:	0007871b          	sext.w	a4,a5
   21bc4:	00200793          	li	a5,2
   21bc8:	00f70a63          	beq	a4,a5,21bdc <print_int2inst+0x25c>
   21bcc:	fe842783          	lw	a5,-24(s0)
   21bd0:	0007871b          	sext.w	a4,a5
   21bd4:	00300793          	li	a5,3
   21bd8:	02f71663          	bne	a4,a5,21c04 <print_int2inst+0x284>
   21bdc:	000237b7          	lui	a5,0x23
   21be0:	8b078513          	addi	a0,a5,-1872 # 228b0 <INST_CONFIG+0x630>
   21be4:	f94fe0ef          	jal	ra,20378 <print>
   21be8:	fdc42783          	lw	a5,-36(s0)
   21bec:	00f7d79b          	srliw	a5,a5,0xf
   21bf0:	0007879b          	sext.w	a5,a5
   21bf4:	01f7f793          	andi	a5,a5,31
   21bf8:	0007879b          	sext.w	a5,a5
   21bfc:	00078513          	mv	a0,a5
   21c00:	a5dfe0ef          	jal	ra,2065c <print_hex>
   21c04:	fe842783          	lw	a5,-24(s0)
   21c08:	0007879b          	sext.w	a5,a5
   21c0c:	02078263          	beqz	a5,21c30 <print_int2inst+0x2b0>
   21c10:	fe842783          	lw	a5,-24(s0)
   21c14:	0007871b          	sext.w	a4,a5
   21c18:	00200793          	li	a5,2
   21c1c:	00f70a63          	beq	a4,a5,21c30 <print_int2inst+0x2b0>
   21c20:	fe842783          	lw	a5,-24(s0)
   21c24:	0007871b          	sext.w	a4,a5
   21c28:	00300793          	li	a5,3
   21c2c:	02f71663          	bne	a4,a5,21c58 <print_int2inst+0x2d8>
   21c30:	000237b7          	lui	a5,0x23
   21c34:	8b078513          	addi	a0,a5,-1872 # 228b0 <INST_CONFIG+0x630>
   21c38:	f40fe0ef          	jal	ra,20378 <print>
   21c3c:	fdc42783          	lw	a5,-36(s0)
   21c40:	0147d79b          	srliw	a5,a5,0x14
   21c44:	0007879b          	sext.w	a5,a5
   21c48:	01f7f793          	andi	a5,a5,31
   21c4c:	0007879b          	sext.w	a5,a5
   21c50:	00078513          	mv	a0,a5
   21c54:	a09fe0ef          	jal	ra,2065c <print_hex>
   21c58:	fe042223          	sw	zero,-28(s0)
   21c5c:	fe842783          	lw	a5,-24(s0)
   21c60:	0007879b          	sext.w	a5,a5
   21c64:	1e078863          	beqz	a5,21e54 <print_int2inst+0x4d4>
   21c68:	fe842783          	lw	a5,-24(s0)
   21c6c:	0007871b          	sext.w	a4,a5
   21c70:	00600793          	li	a5,6
   21c74:	1ef70063          	beq	a4,a5,21e54 <print_int2inst+0x4d4>
   21c78:	fe842783          	lw	a5,-24(s0)
   21c7c:	0007871b          	sext.w	a4,a5
   21c80:	00500793          	li	a5,5
   21c84:	1ae7ec63          	bltu	a5,a4,21e3c <print_int2inst+0x4bc>
   21c88:	fe846783          	lwu	a5,-24(s0)
   21c8c:	00279713          	slli	a4,a5,0x2
   21c90:	000237b7          	lui	a5,0x23
   21c94:	8b478793          	addi	a5,a5,-1868 # 228b4 <INST_CONFIG+0x634>
   21c98:	00f707b3          	add	a5,a4,a5
   21c9c:	0007a783          	lw	a5,0(a5)
   21ca0:	00078067          	jr	a5
   21ca4:	fdc42783          	lw	a5,-36(s0)
   21ca8:	0147d79b          	srliw	a5,a5,0x14
   21cac:	fef42223          	sw	a5,-28(s0)
   21cb0:	18c0006f          	j	21e3c <print_int2inst+0x4bc>
   21cb4:	fdc42783          	lw	a5,-36(s0)
   21cb8:	0077d79b          	srliw	a5,a5,0x7
   21cbc:	0007879b          	sext.w	a5,a5
   21cc0:	01f7f793          	andi	a5,a5,31
   21cc4:	0007871b          	sext.w	a4,a5
   21cc8:	fdc42783          	lw	a5,-36(s0)
   21ccc:	0197d79b          	srliw	a5,a5,0x19
   21cd0:	0007879b          	sext.w	a5,a5
   21cd4:	0057979b          	slliw	a5,a5,0x5
   21cd8:	0007879b          	sext.w	a5,a5
   21cdc:	00f767b3          	or	a5,a4,a5
   21ce0:	fef42223          	sw	a5,-28(s0)
   21ce4:	1580006f          	j	21e3c <print_int2inst+0x4bc>
   21ce8:	fdc42783          	lw	a5,-36(s0)
   21cec:	0077d79b          	srliw	a5,a5,0x7
   21cf0:	0007879b          	sext.w	a5,a5
   21cf4:	00b7979b          	slliw	a5,a5,0xb
   21cf8:	0007879b          	sext.w	a5,a5
   21cfc:	00078713          	mv	a4,a5
   21d00:	000017b7          	lui	a5,0x1
   21d04:	80078793          	addi	a5,a5,-2048 # 800 <_start-0x1f800>
   21d08:	00f777b3          	and	a5,a4,a5
   21d0c:	0007871b          	sext.w	a4,a5
   21d10:	fe442783          	lw	a5,-28(s0)
   21d14:	00e7e7b3          	or	a5,a5,a4
   21d18:	fef42223          	sw	a5,-28(s0)
   21d1c:	fdc42783          	lw	a5,-36(s0)
   21d20:	0087d79b          	srliw	a5,a5,0x8
   21d24:	0007879b          	sext.w	a5,a5
   21d28:	0017979b          	slliw	a5,a5,0x1
   21d2c:	0007879b          	sext.w	a5,a5
   21d30:	01e7f793          	andi	a5,a5,30
   21d34:	0007871b          	sext.w	a4,a5
   21d38:	fe442783          	lw	a5,-28(s0)
   21d3c:	00e7e7b3          	or	a5,a5,a4
   21d40:	fef42223          	sw	a5,-28(s0)
   21d44:	fdc42783          	lw	a5,-36(s0)
   21d48:	0197d79b          	srliw	a5,a5,0x19
   21d4c:	0007879b          	sext.w	a5,a5
   21d50:	0057979b          	slliw	a5,a5,0x5
   21d54:	0007879b          	sext.w	a5,a5
   21d58:	7e07f793          	andi	a5,a5,2016
   21d5c:	0007871b          	sext.w	a4,a5
   21d60:	fe442783          	lw	a5,-28(s0)
   21d64:	00e7e7b3          	or	a5,a5,a4
   21d68:	fef42223          	sw	a5,-28(s0)
   21d6c:	fdc42783          	lw	a5,-36(s0)
   21d70:	01f7d79b          	srliw	a5,a5,0x1f
   21d74:	0007879b          	sext.w	a5,a5
   21d78:	00c7979b          	slliw	a5,a5,0xc
   21d7c:	0007871b          	sext.w	a4,a5
   21d80:	fe442783          	lw	a5,-28(s0)
   21d84:	00e7e7b3          	or	a5,a5,a4
   21d88:	fef42223          	sw	a5,-28(s0)
   21d8c:	0b00006f          	j	21e3c <print_int2inst+0x4bc>
   21d90:	fdc42703          	lw	a4,-36(s0)
   21d94:	fffff7b7          	lui	a5,0xfffff
   21d98:	00f777b3          	and	a5,a4,a5
   21d9c:	fef42223          	sw	a5,-28(s0)
   21da0:	09c0006f          	j	21e3c <print_int2inst+0x4bc>
   21da4:	fdc42703          	lw	a4,-36(s0)
   21da8:	000ff7b7          	lui	a5,0xff
   21dac:	00f777b3          	and	a5,a4,a5
   21db0:	0007871b          	sext.w	a4,a5
   21db4:	fe442783          	lw	a5,-28(s0)
   21db8:	00e7e7b3          	or	a5,a5,a4
   21dbc:	fef42223          	sw	a5,-28(s0)
   21dc0:	fdc42783          	lw	a5,-36(s0)
   21dc4:	0147d79b          	srliw	a5,a5,0x14
   21dc8:	0007879b          	sext.w	a5,a5
   21dcc:	00b7979b          	slliw	a5,a5,0xb
   21dd0:	0007879b          	sext.w	a5,a5
   21dd4:	00078713          	mv	a4,a5
   21dd8:	000017b7          	lui	a5,0x1
   21ddc:	80078793          	addi	a5,a5,-2048 # 800 <_start-0x1f800>
   21de0:	00f777b3          	and	a5,a4,a5
   21de4:	0007871b          	sext.w	a4,a5
   21de8:	fe442783          	lw	a5,-28(s0)
   21dec:	00e7e7b3          	or	a5,a5,a4
   21df0:	fef42223          	sw	a5,-28(s0)
   21df4:	fdc42783          	lw	a5,-36(s0)
   21df8:	0157d79b          	srliw	a5,a5,0x15
   21dfc:	0007879b          	sext.w	a5,a5
   21e00:	0017979b          	slliw	a5,a5,0x1
   21e04:	0007879b          	sext.w	a5,a5
   21e08:	7fe7f793          	andi	a5,a5,2046
   21e0c:	0007871b          	sext.w	a4,a5
   21e10:	fe442783          	lw	a5,-28(s0)
   21e14:	00e7e7b3          	or	a5,a5,a4
   21e18:	fef42223          	sw	a5,-28(s0)
   21e1c:	fdc42783          	lw	a5,-36(s0)
   21e20:	01f7d79b          	srliw	a5,a5,0x1f
   21e24:	0007879b          	sext.w	a5,a5
   21e28:	0147979b          	slliw	a5,a5,0x14
   21e2c:	0007871b          	sext.w	a4,a5
   21e30:	fe442783          	lw	a5,-28(s0)
   21e34:	00e7e7b3          	or	a5,a5,a4
   21e38:	fef42223          	sw	a5,-28(s0)
   21e3c:	000237b7          	lui	a5,0x23
   21e40:	8b078513          	addi	a0,a5,-1872 # 228b0 <INST_CONFIG+0x630>
   21e44:	d34fe0ef          	jal	ra,20378 <print>
   21e48:	fe442783          	lw	a5,-28(s0)
   21e4c:	00078513          	mv	a0,a5
   21e50:	80dfe0ef          	jal	ra,2065c <print_hex>
   21e54:	02813083          	ld	ra,40(sp)
   21e58:	02013403          	ld	s0,32(sp)
   21e5c:	03010113          	addi	sp,sp,48
   21e60:	00008067          	ret

0000000000021e64 <timelim_exe>:
   21e64:	fe010113          	addi	sp,sp,-32
   21e68:	00113c23          	sd	ra,24(sp)
   21e6c:	00813823          	sd	s0,16(sp)
   21e70:	02010413          	addi	s0,sp,32
   21e74:	86018513          	addi	a0,gp,-1952 # 229d0 <buffer>
   21e78:	ed1fe0ef          	jal	ra,20d48 <next_word>
   21e7c:	fea43423          	sd	a0,-24(s0)
   21e80:	fe843783          	ld	a5,-24(s0)
   21e84:	0007c783          	lbu	a5,0(a5)
   21e88:	00078a63          	beqz	a5,21e9c <timelim_exe+0x38>
   21e8c:	fe843783          	ld	a5,-24(s0)
   21e90:	00178793          	addi	a5,a5,1
   21e94:	0007c783          	lbu	a5,0(a5)
   21e98:	02079863          	bnez	a5,21ec8 <timelim_exe+0x64>
   21e9c:	000237b7          	lui	a5,0x23
   21ea0:	85078513          	addi	a0,a5,-1968 # 22850 <INST_CONFIG+0x5d0>
   21ea4:	cd4fe0ef          	jal	ra,20378 <print>
   21ea8:	000237b7          	lui	a5,0x23
   21eac:	97c7a783          	lw	a5,-1668(a5) # 2297c <time_lim>
   21eb0:	00078513          	mv	a0,a5
   21eb4:	fa8fe0ef          	jal	ra,2065c <print_hex>
   21eb8:	000237b7          	lui	a5,0x23
   21ebc:	84878513          	addi	a0,a5,-1976 # 22848 <INST_CONFIG+0x5c8>
   21ec0:	cb8fe0ef          	jal	ra,20378 <print>
   21ec4:	01c0006f          	j	21ee0 <timelim_exe+0x7c>
   21ec8:	fe843503          	ld	a0,-24(s0)
   21ecc:	84dfe0ef          	jal	ra,20718 <str2hex>
   21ed0:	00050793          	mv	a5,a0
   21ed4:	0007871b          	sext.w	a4,a5
   21ed8:	000237b7          	lui	a5,0x23
   21edc:	96e7ae23          	sw	a4,-1668(a5) # 2297c <time_lim>
   21ee0:	00000013          	nop
   21ee4:	01813083          	ld	ra,24(sp)
   21ee8:	01013403          	ld	s0,16(sp)
   21eec:	02010113          	addi	sp,sp,32
   21ef0:	00008067          	ret

0000000000021ef4 <disas_exe>:
   21ef4:	fd010113          	addi	sp,sp,-48
   21ef8:	02113423          	sd	ra,40(sp)
   21efc:	02813023          	sd	s0,32(sp)
   21f00:	03010413          	addi	s0,sp,48
   21f04:	86018513          	addi	a0,gp,-1952 # 229d0 <buffer>
   21f08:	e41fe0ef          	jal	ra,20d48 <next_word>
   21f0c:	fea43023          	sd	a0,-32(s0)
   21f10:	fe043783          	ld	a5,-32(s0)
   21f14:	0007c783          	lbu	a5,0(a5)
   21f18:	0c078463          	beqz	a5,21fe0 <disas_exe+0xec>
   21f1c:	fe043783          	ld	a5,-32(s0)
   21f20:	00178793          	addi	a5,a5,1
   21f24:	0007c783          	lbu	a5,0(a5)
   21f28:	0a078c63          	beqz	a5,21fe0 <disas_exe+0xec>
   21f2c:	fe043503          	ld	a0,-32(s0)
   21f30:	fe8fe0ef          	jal	ra,20718 <str2hex>
   21f34:	00050793          	mv	a5,a0
   21f38:	fef42623          	sw	a5,-20(s0)
   21f3c:	fe043503          	ld	a0,-32(s0)
   21f40:	e09fe0ef          	jal	ra,20d48 <next_word>
   21f44:	fea43023          	sd	a0,-32(s0)
   21f48:	fe043783          	ld	a5,-32(s0)
   21f4c:	0007c783          	lbu	a5,0(a5)
   21f50:	08078c63          	beqz	a5,21fe8 <disas_exe+0xf4>
   21f54:	fe043783          	ld	a5,-32(s0)
   21f58:	00178793          	addi	a5,a5,1
   21f5c:	0007c783          	lbu	a5,0(a5)
   21f60:	08078463          	beqz	a5,21fe8 <disas_exe+0xf4>
   21f64:	fe043503          	ld	a0,-32(s0)
   21f68:	fb0fe0ef          	jal	ra,20718 <str2hex>
   21f6c:	00050793          	mv	a5,a0
   21f70:	fef42423          	sw	a5,-24(s0)
   21f74:	0580006f          	j	21fcc <disas_exe+0xd8>
   21f78:	000237b7          	lui	a5,0x23
   21f7c:	87878513          	addi	a0,a5,-1928 # 22878 <INST_CONFIG+0x5f8>
   21f80:	bf8fe0ef          	jal	ra,20378 <print>
   21f84:	fec42783          	lw	a5,-20(s0)
   21f88:	00078513          	mv	a0,a5
   21f8c:	ed0fe0ef          	jal	ra,2065c <print_hex>
   21f90:	000237b7          	lui	a5,0x23
   21f94:	88078513          	addi	a0,a5,-1920 # 22880 <INST_CONFIG+0x600>
   21f98:	be0fe0ef          	jal	ra,20378 <print>
   21f9c:	fec46783          	lwu	a5,-20(s0)
   21fa0:	0007a783          	lw	a5,0(a5)
   21fa4:	fcf42e23          	sw	a5,-36(s0)
   21fa8:	fdc42783          	lw	a5,-36(s0)
   21fac:	00078513          	mv	a0,a5
   21fb0:	9d1ff0ef          	jal	ra,21980 <print_int2inst>
   21fb4:	000227b7          	lui	a5,0x22
   21fb8:	6e878513          	addi	a0,a5,1768 # 226e8 <INST_CONFIG+0x468>
   21fbc:	bbcfe0ef          	jal	ra,20378 <print>
   21fc0:	fec42783          	lw	a5,-20(s0)
   21fc4:	0047879b          	addiw	a5,a5,4
   21fc8:	fef42623          	sw	a5,-20(s0)
   21fcc:	fe842783          	lw	a5,-24(s0)
   21fd0:	fff7871b          	addiw	a4,a5,-1
   21fd4:	fee42423          	sw	a4,-24(s0)
   21fd8:	fa0790e3          	bnez	a5,21f78 <disas_exe+0x84>
   21fdc:	0100006f          	j	21fec <disas_exe+0xf8>
   21fe0:	00000013          	nop
   21fe4:	0080006f          	j	21fec <disas_exe+0xf8>
   21fe8:	00000013          	nop
   21fec:	02813083          	ld	ra,40(sp)
   21ff0:	02013403          	ld	s0,32(sp)
   21ff4:	03010113          	addi	sp,sp,48
   21ff8:	00008067          	ret

0000000000021ffc <start>:
   21ffc:	ff010113          	addi	sp,sp,-16
   22000:	00113423          	sd	ra,8(sp)
   22004:	00813023          	sd	s0,0(sp)
   22008:	01010413          	addi	s0,sp,16
   2200c:	000237b7          	lui	a5,0x23
   22010:	8d078513          	addi	a0,a5,-1840 # 228d0 <INST_CONFIG+0x650>
   22014:	b64fe0ef          	jal	ra,20378 <print>
   22018:	000237b7          	lui	a5,0x23
   2201c:	8f078513          	addi	a0,a5,-1808 # 228f0 <INST_CONFIG+0x670>
   22020:	b58fe0ef          	jal	ra,20378 <print>
   22024:	000237b7          	lui	a5,0x23
   22028:	90078513          	addi	a0,a5,-1792 # 22900 <INST_CONFIG+0x680>
   2202c:	b4cfe0ef          	jal	ra,20378 <print>
   22030:	000237b7          	lui	a5,0x23
   22034:	91078513          	addi	a0,a5,-1776 # 22910 <INST_CONFIG+0x690>
   22038:	b40fe0ef          	jal	ra,20378 <print>
   2203c:	000237b7          	lui	a5,0x23
   22040:	92078513          	addi	a0,a5,-1760 # 22920 <INST_CONFIG+0x6a0>
   22044:	b34fe0ef          	jal	ra,20378 <print>
   22048:	000237b7          	lui	a5,0x23
   2204c:	92878513          	addi	a0,a5,-1752 # 22928 <INST_CONFIG+0x6a8>
   22050:	b28fe0ef          	jal	ra,20378 <print>
   22054:	000237b7          	lui	a5,0x23
   22058:	92078513          	addi	a0,a5,-1760 # 22920 <INST_CONFIG+0x6a0>
   2205c:	b1cfe0ef          	jal	ra,20378 <print>
   22060:	000237b7          	lui	a5,0x23
   22064:	94078513          	addi	a0,a5,-1728 # 22940 <INST_CONFIG+0x6c0>
   22068:	b10fe0ef          	jal	ra,20378 <print>
   2206c:	000237b7          	lui	a5,0x23
   22070:	92078513          	addi	a0,a5,-1760 # 22920 <INST_CONFIG+0x6a0>
   22074:	b04fe0ef          	jal	ra,20378 <print>
   22078:	000237b7          	lui	a5,0x23
   2207c:	95078513          	addi	a0,a5,-1712 # 22950 <INST_CONFIG+0x6d0>
   22080:	af8fe0ef          	jal	ra,20378 <print>
   22084:	000237b7          	lui	a5,0x23
   22088:	92078513          	addi	a0,a5,-1760 # 22920 <INST_CONFIG+0x6a0>
   2208c:	aecfe0ef          	jal	ra,20378 <print>
   22090:	be1fe0ef          	jal	ra,20c70 <init>
   22094:	000237b7          	lui	a5,0x23
   22098:	96078513          	addi	a0,a5,-1696 # 22960 <INST_CONFIG+0x6e0>
   2209c:	adcfe0ef          	jal	ra,20378 <print>
   220a0:	bf8fe0ef          	jal	ra,20498 <get_line>
   220a4:	8601c783          	lbu	a5,-1952(gp) # 229d0 <buffer>
   220a8:	0007879b          	sext.w	a5,a5
   220ac:	00078693          	mv	a3,a5
   220b0:	04900713          	li	a4,73
   220b4:	08e68663          	beq	a3,a4,22140 <start+0x144>
   220b8:	00078693          	mv	a3,a5
   220bc:	04900713          	li	a4,73
   220c0:	02d74263          	blt	a4,a3,220e4 <start+0xe8>
   220c4:	00078693          	mv	a3,a5
   220c8:	04400713          	li	a4,68
   220cc:	08e68263          	beq	a3,a4,22150 <start+0x154>
   220d0:	00078693          	mv	a3,a5
   220d4:	04500713          	li	a4,69
   220d8:	06e68063          	beq	a3,a4,22138 <start+0x13c>
   220dc:	08078663          	beqz	a5,22168 <start+0x16c>
   220e0:	0800006f          	j	22160 <start+0x164>
   220e4:	00078693          	mv	a3,a5
   220e8:	05200713          	li	a4,82
   220ec:	04e68263          	beq	a3,a4,22130 <start+0x134>
   220f0:	00078693          	mv	a3,a5
   220f4:	05200713          	li	a4,82
   220f8:	00d74a63          	blt	a4,a3,2210c <start+0x110>
   220fc:	00078713          	mv	a4,a5
   22100:	04a00793          	li	a5,74
   22104:	02f70263          	beq	a4,a5,22128 <start+0x12c>
   22108:	0580006f          	j	22160 <start+0x164>
   2210c:	00078693          	mv	a3,a5
   22110:	05400713          	li	a4,84
   22114:	04e68263          	beq	a3,a4,22158 <start+0x15c>
   22118:	00078713          	mv	a4,a5
   2211c:	05600793          	li	a5,86
   22120:	02f70463          	beq	a4,a5,22148 <start+0x14c>
   22124:	03c0006f          	j	22160 <start+0x164>
   22128:	ca5fe0ef          	jal	ra,20dcc <jump_exe>
   2212c:	0400006f          	j	2216c <start+0x170>
   22130:	d79fe0ef          	jal	ra,20ea8 <reg_exe>
   22134:	0380006f          	j	2216c <start+0x170>
   22138:	e05fe0ef          	jal	ra,20f3c <edit_exe>
   2213c:	0300006f          	j	2216c <start+0x170>
   22140:	e70ff0ef          	jal	ra,217b0 <inst_exe>
   22144:	0280006f          	j	2216c <start+0x170>
   22148:	f30ff0ef          	jal	ra,21878 <view_exe>
   2214c:	0200006f          	j	2216c <start+0x170>
   22150:	da5ff0ef          	jal	ra,21ef4 <disas_exe>
   22154:	0180006f          	j	2216c <start+0x170>
   22158:	d0dff0ef          	jal	ra,21e64 <timelim_exe>
   2215c:	0100006f          	j	2216c <start+0x170>
   22160:	e5cfe0ef          	jal	ra,207bc <print_help>
   22164:	f31ff06f          	j	22094 <start+0x98>
   22168:	00000013          	nop
   2216c:	f29ff06f          	j	22094 <start+0x98>

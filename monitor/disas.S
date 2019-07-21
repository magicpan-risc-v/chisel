
out.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000020000 <_start>:
   20000:	00000013          	nop
   20004:	00018193          	mv	gp,gp
   20008:	00030137          	lui	sp,0x30
   2000c:	0500206f          	j	2205c <start>

0000000000020010 <_entry>:
   20010:	f8410113          	addi	sp,sp,-124 # 2ff84 <__global_pointer$+0xcdb4>
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
   20098:	93c60613          	addi	a2,a2,-1732 # 229d0 <__DATA_BEGIN__>
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
   20114:	8c8f0f13          	addi	t5,t5,-1848 # 229d8 <time_count>
   20118:	000f2023          	sw	zero,0(t5)
   2011c:	00003f17          	auipc	t5,0x3
   20120:	8b8f0f13          	addi	t5,t5,-1864 # 229d4 <in_user>
   20124:	00100f93          	li	t6,1
   20128:	01ff2023          	sw	t6,0(t5)
   2012c:	00000f13          	li	t5,0
   20130:	00000f93          	li	t6,0
   20134:	000080e7          	jalr	ra

0000000000020138 <_exit>:
   20138:	8a818093          	addi	ra,gp,-1880 # 22a78 <regs>
   2013c:	07f0ae23          	sw	t6,124(ra)
   20140:	07e0ac23          	sw	t5,120(ra)
   20144:	00003f97          	auipc	t6,0x3
   20148:	890f8f93          	addi	t6,t6,-1904 # 229d4 <in_user>
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
   201c8:	00003117          	auipc	sp,0x3
   201cc:	80810113          	addi	sp,sp,-2040 # 229d0 <__DATA_BEGIN__>
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
   202dc:	81018093          	addi	ra,gp,-2032 # 229e0 <trap_frame>
   202e0:	0020a023          	sw	sp,0(ra)
   202e4:	00000097          	auipc	ra,0x0
   202e8:	57808093          	addi	ra,ra,1400 # 2085c <trap>
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
   2038c:	0480006f          	j	203d4 <print+0x5c>
   20390:	00000013          	nop
   20394:	008007b7          	lui	a5,0x800
   20398:	ffc78793          	addi	a5,a5,-4 # 7ffffc <__global_pointer$+0x7dce2c>
   2039c:	0007a783          	lw	a5,0(a5)
   203a0:	00f7f793          	andi	a5,a5,15
   203a4:	0007879b          	sext.w	a5,a5
   203a8:	fe0786e3          	beqz	a5,20394 <print+0x1c>
   203ac:	fec42783          	lw	a5,-20(s0)
   203b0:	fd843703          	ld	a4,-40(s0)
   203b4:	00f70733          	add	a4,a4,a5
   203b8:	008007b7          	lui	a5,0x800
   203bc:	ff878793          	addi	a5,a5,-8 # 7ffff8 <__global_pointer$+0x7dce28>
   203c0:	00074703          	lbu	a4,0(a4)
   203c4:	00e78023          	sb	a4,0(a5)
   203c8:	fec42783          	lw	a5,-20(s0)
   203cc:	0017879b          	addiw	a5,a5,1
   203d0:	fef42623          	sw	a5,-20(s0)
   203d4:	fec42783          	lw	a5,-20(s0)
   203d8:	fd843703          	ld	a4,-40(s0)
   203dc:	00f707b3          	add	a5,a4,a5
   203e0:	0007c783          	lbu	a5,0(a5)
   203e4:	fa0796e3          	bnez	a5,20390 <print+0x18>
   203e8:	00000013          	nop
   203ec:	02813403          	ld	s0,40(sp)
   203f0:	03010113          	addi	sp,sp,48
   203f4:	00008067          	ret

00000000000203f8 <strcmp>:
   203f8:	fd010113          	addi	sp,sp,-48
   203fc:	02813423          	sd	s0,40(sp)
   20400:	03010413          	addi	s0,sp,48
   20404:	fca43c23          	sd	a0,-40(s0)
   20408:	fcb43823          	sd	a1,-48(s0)
   2040c:	fe042623          	sw	zero,-20(s0)
   20410:	0100006f          	j	20420 <strcmp+0x28>
   20414:	fec42783          	lw	a5,-20(s0)
   20418:	0017879b          	addiw	a5,a5,1
   2041c:	fef42623          	sw	a5,-20(s0)
   20420:	fec42783          	lw	a5,-20(s0)
   20424:	fd843703          	ld	a4,-40(s0)
   20428:	00f707b3          	add	a5,a4,a5
   2042c:	0007c783          	lbu	a5,0(a5)
   20430:	04078063          	beqz	a5,20470 <strcmp+0x78>
   20434:	fec42783          	lw	a5,-20(s0)
   20438:	fd043703          	ld	a4,-48(s0)
   2043c:	00f707b3          	add	a5,a4,a5
   20440:	0007c783          	lbu	a5,0(a5)
   20444:	02078663          	beqz	a5,20470 <strcmp+0x78>
   20448:	fec42783          	lw	a5,-20(s0)
   2044c:	fd843703          	ld	a4,-40(s0)
   20450:	00f707b3          	add	a5,a4,a5
   20454:	0007c683          	lbu	a3,0(a5)
   20458:	fec42783          	lw	a5,-20(s0)
   2045c:	fd043703          	ld	a4,-48(s0)
   20460:	00f707b3          	add	a5,a4,a5
   20464:	0007c783          	lbu	a5,0(a5)
   20468:	00068713          	mv	a4,a3
   2046c:	faf704e3          	beq	a4,a5,20414 <strcmp+0x1c>
   20470:	fec42783          	lw	a5,-20(s0)
   20474:	fd843703          	ld	a4,-40(s0)
   20478:	00f707b3          	add	a5,a4,a5
   2047c:	0007c783          	lbu	a5,0(a5)
   20480:	02078063          	beqz	a5,204a0 <strcmp+0xa8>
   20484:	fec42783          	lw	a5,-20(s0)
   20488:	fd043703          	ld	a4,-48(s0)
   2048c:	00f707b3          	add	a5,a4,a5
   20490:	0007c783          	lbu	a5,0(a5)
   20494:	00078663          	beqz	a5,204a0 <strcmp+0xa8>
   20498:	00100793          	li	a5,1
   2049c:	0080006f          	j	204a4 <strcmp+0xac>
   204a0:	00000793          	li	a5,0
   204a4:	00078513          	mv	a0,a5
   204a8:	02813403          	ld	s0,40(sp)
   204ac:	03010113          	addi	sp,sp,48
   204b0:	00008067          	ret

00000000000204b4 <get_line>:
   204b4:	fe010113          	addi	sp,sp,-32
   204b8:	00813c23          	sd	s0,24(sp)
   204bc:	02010413          	addi	s0,sp,32
   204c0:	fff00793          	li	a5,-1
   204c4:	fef42623          	sw	a5,-20(s0)
   204c8:	fec42783          	lw	a5,-20(s0)
   204cc:	0017879b          	addiw	a5,a5,1
   204d0:	fef42623          	sw	a5,-20(s0)
   204d4:	00000013          	nop
   204d8:	8a01a703          	lw	a4,-1888(gp) # 22a70 <bufh>
   204dc:	8581a783          	lw	a5,-1960(gp) # 22a28 <buft>
   204e0:	fef70ce3          	beq	a4,a5,204d8 <get_line+0x24>
   204e4:	8a01a783          	lw	a5,-1888(gp) # 22a70 <bufh>
   204e8:	0017871b          	addiw	a4,a5,1
   204ec:	0007069b          	sext.w	a3,a4
   204f0:	8ad1a023          	sw	a3,-1888(gp) # 22a70 <bufh>
   204f4:	00023737          	lui	a4,0x23
   204f8:	9e870713          	addi	a4,a4,-1560 # 229e8 <input_buffer>
   204fc:	00e787b3          	add	a5,a5,a4
   20500:	0007c703          	lbu	a4,0(a5)
   20504:	fec42683          	lw	a3,-20(s0)
   20508:	86018793          	addi	a5,gp,-1952 # 22a30 <buffer>
   2050c:	00f687b3          	add	a5,a3,a5
   20510:	00e78023          	sb	a4,0(a5)
   20514:	8a01a783          	lw	a5,-1888(gp) # 22a70 <bufh>
   20518:	00078713          	mv	a4,a5
   2051c:	04000793          	li	a5,64
   20520:	00f71463          	bne	a4,a5,20528 <get_line+0x74>
   20524:	8a01a023          	sw	zero,-1888(gp) # 22a70 <bufh>
   20528:	fec42703          	lw	a4,-20(s0)
   2052c:	86018793          	addi	a5,gp,-1952 # 22a30 <buffer>
   20530:	00f707b3          	add	a5,a4,a5
   20534:	0007c783          	lbu	a5,0(a5)
   20538:	00078713          	mv	a4,a5
   2053c:	00a00793          	li	a5,10
   20540:	f8f714e3          	bne	a4,a5,204c8 <get_line+0x14>
   20544:	fec42783          	lw	a5,-20(s0)
   20548:	0007879b          	sext.w	a5,a5
   2054c:	02f05a63          	blez	a5,20580 <get_line+0xcc>
   20550:	fec42783          	lw	a5,-20(s0)
   20554:	fff7879b          	addiw	a5,a5,-1
   20558:	0007871b          	sext.w	a4,a5
   2055c:	86018793          	addi	a5,gp,-1952 # 22a30 <buffer>
   20560:	00f707b3          	add	a5,a4,a5
   20564:	0007c783          	lbu	a5,0(a5)
   20568:	00078713          	mv	a4,a5
   2056c:	00d00793          	li	a5,13
   20570:	00f71863          	bne	a4,a5,20580 <get_line+0xcc>
   20574:	fec42783          	lw	a5,-20(s0)
   20578:	fff7879b          	addiw	a5,a5,-1
   2057c:	fef42623          	sw	a5,-20(s0)
   20580:	fec42703          	lw	a4,-20(s0)
   20584:	86018793          	addi	a5,gp,-1952 # 22a30 <buffer>
   20588:	00f707b3          	add	a5,a4,a5
   2058c:	00078023          	sb	zero,0(a5)
   20590:	00000013          	nop
   20594:	01813403          	ld	s0,24(sp)
   20598:	02010113          	addi	sp,sp,32
   2059c:	00008067          	ret

00000000000205a0 <hex2str>:
   205a0:	fd010113          	addi	sp,sp,-48
   205a4:	02813423          	sd	s0,40(sp)
   205a8:	03010413          	addi	s0,sp,48
   205ac:	00050793          	mv	a5,a0
   205b0:	fcb43823          	sd	a1,-48(s0)
   205b4:	fcf42e23          	sw	a5,-36(s0)
   205b8:	fd043783          	ld	a5,-48(s0)
   205bc:	03000713          	li	a4,48
   205c0:	00e78023          	sb	a4,0(a5)
   205c4:	fd043783          	ld	a5,-48(s0)
   205c8:	00178793          	addi	a5,a5,1
   205cc:	07800713          	li	a4,120
   205d0:	00e78023          	sb	a4,0(a5)
   205d4:	fe042623          	sw	zero,-20(s0)
   205d8:	0740006f          	j	2064c <hex2str+0xac>
   205dc:	00700713          	li	a4,7
   205e0:	fec42783          	lw	a5,-20(s0)
   205e4:	40f707bb          	subw	a5,a4,a5
   205e8:	0007879b          	sext.w	a5,a5
   205ec:	0027979b          	slliw	a5,a5,0x2
   205f0:	0007879b          	sext.w	a5,a5
   205f4:	00078713          	mv	a4,a5
   205f8:	fdc42783          	lw	a5,-36(s0)
   205fc:	00e7d7bb          	srlw	a5,a5,a4
   20600:	0007879b          	sext.w	a5,a5
   20604:	00f7f793          	andi	a5,a5,15
   20608:	0007869b          	sext.w	a3,a5
   2060c:	fec42783          	lw	a5,-20(s0)
   20610:	0027879b          	addiw	a5,a5,2
   20614:	0007879b          	sext.w	a5,a5
   20618:	00078713          	mv	a4,a5
   2061c:	fd043783          	ld	a5,-48(s0)
   20620:	00e787b3          	add	a5,a5,a4
   20624:	00022737          	lui	a4,0x22
   20628:	02069693          	slli	a3,a3,0x20
   2062c:	0206d693          	srli	a3,a3,0x20
   20630:	54070713          	addi	a4,a4,1344 # 22540 <INST_CONFIG+0x260>
   20634:	00e68733          	add	a4,a3,a4
   20638:	00074703          	lbu	a4,0(a4)
   2063c:	00e78023          	sb	a4,0(a5)
   20640:	fec42783          	lw	a5,-20(s0)
   20644:	0017879b          	addiw	a5,a5,1
   20648:	fef42623          	sw	a5,-20(s0)
   2064c:	fec42783          	lw	a5,-20(s0)
   20650:	0007871b          	sext.w	a4,a5
   20654:	00700793          	li	a5,7
   20658:	f8e7d2e3          	bge	a5,a4,205dc <hex2str+0x3c>
   2065c:	fd043783          	ld	a5,-48(s0)
   20660:	00a78793          	addi	a5,a5,10
   20664:	00078023          	sb	zero,0(a5)
   20668:	00000013          	nop
   2066c:	02813403          	ld	s0,40(sp)
   20670:	03010113          	addi	sp,sp,48
   20674:	00008067          	ret

0000000000020678 <print_hex>:
   20678:	fd010113          	addi	sp,sp,-48
   2067c:	02113423          	sd	ra,40(sp)
   20680:	02813023          	sd	s0,32(sp)
   20684:	03010413          	addi	s0,sp,48
   20688:	00050793          	mv	a5,a0
   2068c:	fcf42e23          	sw	a5,-36(s0)
   20690:	fe040713          	addi	a4,s0,-32
   20694:	fdc42783          	lw	a5,-36(s0)
   20698:	00070593          	mv	a1,a4
   2069c:	00078513          	mv	a0,a5
   206a0:	f01ff0ef          	jal	ra,205a0 <hex2str>
   206a4:	fe040793          	addi	a5,s0,-32
   206a8:	00078513          	mv	a0,a5
   206ac:	ccdff0ef          	jal	ra,20378 <print>
   206b0:	00000013          	nop
   206b4:	02813083          	ld	ra,40(sp)
   206b8:	02013403          	ld	s0,32(sp)
   206bc:	03010113          	addi	sp,sp,48
   206c0:	00008067          	ret

00000000000206c4 <hexchar2int>:
   206c4:	fe010113          	addi	sp,sp,-32
   206c8:	00813c23          	sd	s0,24(sp)
   206cc:	02010413          	addi	s0,sp,32
   206d0:	00050793          	mv	a5,a0
   206d4:	fef407a3          	sb	a5,-17(s0)
   206d8:	fef44783          	lbu	a5,-17(s0)
   206dc:	0ff7f713          	andi	a4,a5,255
   206e0:	02f00793          	li	a5,47
   206e4:	02e7f663          	bgeu	a5,a4,20710 <hexchar2int+0x4c>
   206e8:	fef44783          	lbu	a5,-17(s0)
   206ec:	0ff7f713          	andi	a4,a5,255
   206f0:	03900793          	li	a5,57
   206f4:	00e7ee63          	bltu	a5,a4,20710 <hexchar2int+0x4c>
   206f8:	fef44783          	lbu	a5,-17(s0)
   206fc:	0007879b          	sext.w	a5,a5
   20700:	fd07879b          	addiw	a5,a5,-48
   20704:	0007879b          	sext.w	a5,a5
   20708:	0007879b          	sext.w	a5,a5
   2070c:	0180006f          	j	20724 <hexchar2int+0x60>
   20710:	fef44783          	lbu	a5,-17(s0)
   20714:	0007879b          	sext.w	a5,a5
   20718:	fa97879b          	addiw	a5,a5,-87
   2071c:	0007879b          	sext.w	a5,a5
   20720:	0007879b          	sext.w	a5,a5
   20724:	00078513          	mv	a0,a5
   20728:	01813403          	ld	s0,24(sp)
   2072c:	02010113          	addi	sp,sp,32
   20730:	00008067          	ret

0000000000020734 <str2hex>:
   20734:	fc010113          	addi	sp,sp,-64
   20738:	02113c23          	sd	ra,56(sp)
   2073c:	02813823          	sd	s0,48(sp)
   20740:	02913423          	sd	s1,40(sp)
   20744:	04010413          	addi	s0,sp,64
   20748:	fca43423          	sd	a0,-56(s0)
   2074c:	fc843783          	ld	a5,-56(s0)
   20750:	00278793          	addi	a5,a5,2
   20754:	fcf43423          	sd	a5,-56(s0)
   20758:	fc042e23          	sw	zero,-36(s0)
   2075c:	0400006f          	j	2079c <str2hex+0x68>
   20760:	fdc42783          	lw	a5,-36(s0)
   20764:	0047979b          	slliw	a5,a5,0x4
   20768:	0007849b          	sext.w	s1,a5
   2076c:	fc843783          	ld	a5,-56(s0)
   20770:	0007c783          	lbu	a5,0(a5)
   20774:	00078513          	mv	a0,a5
   20778:	f4dff0ef          	jal	ra,206c4 <hexchar2int>
   2077c:	00050793          	mv	a5,a0
   20780:	0007879b          	sext.w	a5,a5
   20784:	00048713          	mv	a4,s1
   20788:	00f767b3          	or	a5,a4,a5
   2078c:	fcf42e23          	sw	a5,-36(s0)
   20790:	fc843783          	ld	a5,-56(s0)
   20794:	00178793          	addi	a5,a5,1
   20798:	fcf43423          	sd	a5,-56(s0)
   2079c:	fc843783          	ld	a5,-56(s0)
   207a0:	0007c783          	lbu	a5,0(a5)
   207a4:	00078c63          	beqz	a5,207bc <str2hex+0x88>
   207a8:	fc843783          	ld	a5,-56(s0)
   207ac:	0007c783          	lbu	a5,0(a5)
   207b0:	00078713          	mv	a4,a5
   207b4:	02000793          	li	a5,32
   207b8:	faf714e3          	bne	a4,a5,20760 <str2hex+0x2c>
   207bc:	fdc42783          	lw	a5,-36(s0)
   207c0:	00078513          	mv	a0,a5
   207c4:	03813083          	ld	ra,56(sp)
   207c8:	03013403          	ld	s0,48(sp)
   207cc:	02813483          	ld	s1,40(sp)
   207d0:	04010113          	addi	sp,sp,64
   207d4:	00008067          	ret

00000000000207d8 <print_help>:
   207d8:	ff010113          	addi	sp,sp,-16
   207dc:	00113423          	sd	ra,8(sp)
   207e0:	00813023          	sd	s0,0(sp)
   207e4:	01010413          	addi	s0,sp,16
   207e8:	000227b7          	lui	a5,0x22
   207ec:	55878513          	addi	a0,a5,1368 # 22558 <INST_CONFIG+0x278>
   207f0:	b89ff0ef          	jal	ra,20378 <print>
   207f4:	000227b7          	lui	a5,0x22
   207f8:	56878513          	addi	a0,a5,1384 # 22568 <INST_CONFIG+0x288>
   207fc:	b7dff0ef          	jal	ra,20378 <print>
   20800:	000227b7          	lui	a5,0x22
   20804:	59078513          	addi	a0,a5,1424 # 22590 <INST_CONFIG+0x2b0>
   20808:	b71ff0ef          	jal	ra,20378 <print>
   2080c:	000227b7          	lui	a5,0x22
   20810:	5c878513          	addi	a0,a5,1480 # 225c8 <INST_CONFIG+0x2e8>
   20814:	b65ff0ef          	jal	ra,20378 <print>
   20818:	000227b7          	lui	a5,0x22
   2081c:	5f878513          	addi	a0,a5,1528 # 225f8 <INST_CONFIG+0x318>
   20820:	b59ff0ef          	jal	ra,20378 <print>
   20824:	000227b7          	lui	a5,0x22
   20828:	63078513          	addi	a0,a5,1584 # 22630 <INST_CONFIG+0x350>
   2082c:	b4dff0ef          	jal	ra,20378 <print>
   20830:	000227b7          	lui	a5,0x22
   20834:	66878513          	addi	a0,a5,1640 # 22668 <INST_CONFIG+0x388>
   20838:	b41ff0ef          	jal	ra,20378 <print>
   2083c:	000227b7          	lui	a5,0x22
   20840:	6a878513          	addi	a0,a5,1704 # 226a8 <INST_CONFIG+0x3c8>
   20844:	b35ff0ef          	jal	ra,20378 <print>
   20848:	00000013          	nop
   2084c:	00813083          	ld	ra,8(sp)
   20850:	00013403          	ld	s0,0(sp)
   20854:	01010113          	addi	sp,sp,16
   20858:	00008067          	ret

000000000002085c <trap>:
   2085c:	fa010113          	addi	sp,sp,-96
   20860:	04113c23          	sd	ra,88(sp)
   20864:	04813823          	sd	s0,80(sp)
   20868:	06010413          	addi	s0,sp,96
   2086c:	342027f3          	csrr	a5,mcause
   20870:	fef43023          	sd	a5,-32(s0)
   20874:	fe043783          	ld	a5,-32(s0)
   20878:	fcf42e23          	sw	a5,-36(s0)
   2087c:	fe042623          	sw	zero,-20(s0)
   20880:	fdc42783          	lw	a5,-36(s0)
   20884:	1a07de63          	bgez	a5,20a40 <trap+0x1e4>
   20888:	fdc42703          	lw	a4,-36(s0)
   2088c:	800007b7          	lui	a5,0x80000
   20890:	fff7c793          	not	a5,a5
   20894:	00f777b3          	and	a5,a4,a5
   20898:	0007871b          	sext.w	a4,a5
   2089c:	00070693          	mv	a3,a4
   208a0:	00700793          	li	a5,7
   208a4:	00f68863          	beq	a3,a5,208b4 <trap+0x58>
   208a8:	00b00793          	li	a5,11
   208ac:	06f70263          	beq	a4,a5,20910 <trap+0xb4>
   208b0:	0f40006f          	j	209a4 <trap+0x148>
   208b4:	008007b7          	lui	a5,0x800
   208b8:	fcc78793          	addi	a5,a5,-52 # 7fffcc <__global_pointer$+0x7dcdfc>
   208bc:	0007a023          	sw	zero,0(a5)
   208c0:	008007b7          	lui	a5,0x800
   208c4:	fc878793          	addi	a5,a5,-56 # 7fffc8 <__global_pointer$+0x7dcdf8>
   208c8:	0007a023          	sw	zero,0(a5)
   208cc:	000237b7          	lui	a5,0x23
   208d0:	9d47a783          	lw	a5,-1580(a5) # 229d4 <in_user>
   208d4:	12078e63          	beqz	a5,20a10 <trap+0x1b4>
   208d8:	000237b7          	lui	a5,0x23
   208dc:	9d87a783          	lw	a5,-1576(a5) # 229d8 <time_count>
   208e0:	0017879b          	addiw	a5,a5,1
   208e4:	0007871b          	sext.w	a4,a5
   208e8:	000237b7          	lui	a5,0x23
   208ec:	9ce7ac23          	sw	a4,-1576(a5) # 229d8 <time_count>
   208f0:	000237b7          	lui	a5,0x23
   208f4:	9d87a703          	lw	a4,-1576(a5) # 229d8 <time_count>
   208f8:	000237b7          	lui	a5,0x23
   208fc:	9dc7a783          	lw	a5,-1572(a5) # 229dc <time_lim>
   20900:	10f76863          	bltu	a4,a5,20a10 <trap+0x1b4>
   20904:	00100793          	li	a5,1
   20908:	fef42623          	sw	a5,-20(s0)
   2090c:	1040006f          	j	20a10 <trap+0x1b4>
   20910:	008007b7          	lui	a5,0x800
   20914:	ff078793          	addi	a5,a5,-16 # 7ffff0 <__global_pointer$+0x7dce20>
   20918:	0007a783          	lw	a5,0(a5)
   2091c:	fcf42c23          	sw	a5,-40(s0)
   20920:	fd842783          	lw	a5,-40(s0)
   20924:	0007871b          	sext.w	a4,a5
   20928:	00100793          	li	a5,1
   2092c:	06f71263          	bne	a4,a5,20990 <trap+0x134>
   20930:	0440006f          	j	20974 <trap+0x118>
   20934:	008007b7          	lui	a5,0x800
   20938:	ff878713          	addi	a4,a5,-8 # 7ffff8 <__global_pointer$+0x7dce28>
   2093c:	8581a783          	lw	a5,-1960(gp) # 22a28 <buft>
   20940:	0017869b          	addiw	a3,a5,1
   20944:	0006861b          	sext.w	a2,a3
   20948:	84c1ac23          	sw	a2,-1960(gp) # 22a28 <buft>
   2094c:	00074703          	lbu	a4,0(a4)
   20950:	000236b7          	lui	a3,0x23
   20954:	9e868693          	addi	a3,a3,-1560 # 229e8 <input_buffer>
   20958:	00d787b3          	add	a5,a5,a3
   2095c:	00e78023          	sb	a4,0(a5)
   20960:	8581a783          	lw	a5,-1960(gp) # 22a28 <buft>
   20964:	00078713          	mv	a4,a5
   20968:	04000793          	li	a5,64
   2096c:	00f71463          	bne	a4,a5,20974 <trap+0x118>
   20970:	8401ac23          	sw	zero,-1960(gp) # 22a28 <buft>
   20974:	008007b7          	lui	a5,0x800
   20978:	ffc78793          	addi	a5,a5,-4 # 7ffffc <__global_pointer$+0x7dce2c>
   2097c:	0007a783          	lw	a5,0(a5)
   20980:	0f07f793          	andi	a5,a5,240
   20984:	0007879b          	sext.w	a5,a5
   20988:	fa0796e3          	bnez	a5,20934 <trap+0xd8>
   2098c:	00000013          	nop
   20990:	008007b7          	lui	a5,0x800
   20994:	ff078793          	addi	a5,a5,-16 # 7ffff0 <__global_pointer$+0x7dce20>
   20998:	fd842703          	lw	a4,-40(s0)
   2099c:	00e7a023          	sw	a4,0(a5)
   209a0:	0740006f          	j	20a14 <trap+0x1b8>
   209a4:	000227b7          	lui	a5,0x22
   209a8:	71878513          	addi	a0,a5,1816 # 22718 <INST_CONFIG+0x438>
   209ac:	9cdff0ef          	jal	ra,20378 <print>
   209b0:	000227b7          	lui	a5,0x22
   209b4:	74078513          	addi	a0,a5,1856 # 22740 <INST_CONFIG+0x460>
   209b8:	9c1ff0ef          	jal	ra,20378 <print>
   209bc:	fdc42783          	lw	a5,-36(s0)
   209c0:	00078513          	mv	a0,a5
   209c4:	cb5ff0ef          	jal	ra,20678 <print_hex>
   209c8:	000227b7          	lui	a5,0x22
   209cc:	74878513          	addi	a0,a5,1864 # 22748 <INST_CONFIG+0x468>
   209d0:	9a9ff0ef          	jal	ra,20378 <print>
   209d4:	000227b7          	lui	a5,0x22
   209d8:	75078513          	addi	a0,a5,1872 # 22750 <INST_CONFIG+0x470>
   209dc:	99dff0ef          	jal	ra,20378 <print>
   209e0:	341027f3          	csrr	a5,mepc
   209e4:	fcf43823          	sd	a5,-48(s0)
   209e8:	fd043783          	ld	a5,-48(s0)
   209ec:	0007879b          	sext.w	a5,a5
   209f0:	00078513          	mv	a0,a5
   209f4:	c85ff0ef          	jal	ra,20678 <print_hex>
   209f8:	000227b7          	lui	a5,0x22
   209fc:	74878513          	addi	a0,a5,1864 # 22748 <INST_CONFIG+0x468>
   20a00:	979ff0ef          	jal	ra,20378 <print>
   20a04:	00100793          	li	a5,1
   20a08:	fef42623          	sw	a5,-20(s0)
   20a0c:	0080006f          	j	20a14 <trap+0x1b8>
   20a10:	00000013          	nop
   20a14:	fdc42703          	lw	a4,-36(s0)
   20a18:	800007b7          	lui	a5,0x80000
   20a1c:	fff7c793          	not	a5,a5
   20a20:	00f777b3          	and	a5,a4,a5
   20a24:	0007879b          	sext.w	a5,a5
   20a28:	00100713          	li	a4,1
   20a2c:	00f717bb          	sllw	a5,a4,a5
   20a30:	0007879b          	sext.w	a5,a5
   20a34:	3447b7f3          	csrrc	a5,mip,a5
   20a38:	fcf43423          	sd	a5,-56(s0)
   20a3c:	25c0006f          	j	20c98 <trap+0x43c>
   20a40:	fdc42783          	lw	a5,-36(s0)
   20a44:	0007871b          	sext.w	a4,a5
   20a48:	00b00793          	li	a5,11
   20a4c:	1ee7e263          	bltu	a5,a4,20c30 <trap+0x3d4>
   20a50:	fdc46783          	lwu	a5,-36(s0)
   20a54:	00279713          	slli	a4,a5,0x2
   20a58:	000237b7          	lui	a5,0x23
   20a5c:	82078793          	addi	a5,a5,-2016 # 22820 <INST_CONFIG+0x540>
   20a60:	00f707b3          	add	a5,a4,a5
   20a64:	0007a783          	lw	a5,0(a5)
   20a68:	00078067          	jr	a5
   20a6c:	000227b7          	lui	a5,0x22
   20a70:	75878513          	addi	a0,a5,1880 # 22758 <INST_CONFIG+0x478>
   20a74:	905ff0ef          	jal	ra,20378 <print>
   20a78:	343027f3          	csrr	a5,mtval
   20a7c:	fcf43023          	sd	a5,-64(s0)
   20a80:	fc043783          	ld	a5,-64(s0)
   20a84:	0007879b          	sext.w	a5,a5
   20a88:	00078513          	mv	a0,a5
   20a8c:	bedff0ef          	jal	ra,20678 <print_hex>
   20a90:	000227b7          	lui	a5,0x22
   20a94:	74878513          	addi	a0,a5,1864 # 22748 <INST_CONFIG+0x468>
   20a98:	8e1ff0ef          	jal	ra,20378 <print>
   20a9c:	00100793          	li	a5,1
   20aa0:	fef42623          	sw	a5,-20(s0)
   20aa4:	1f40006f          	j	20c98 <trap+0x43c>
   20aa8:	000227b7          	lui	a5,0x22
   20aac:	78078513          	addi	a0,a5,1920 # 22780 <INST_CONFIG+0x4a0>
   20ab0:	8c9ff0ef          	jal	ra,20378 <print>
   20ab4:	00100793          	li	a5,1
   20ab8:	fef42623          	sw	a5,-20(s0)
   20abc:	1dc0006f          	j	20c98 <trap+0x43c>
   20ac0:	000227b7          	lui	a5,0x22
   20ac4:	7a078513          	addi	a0,a5,1952 # 227a0 <INST_CONFIG+0x4c0>
   20ac8:	8b1ff0ef          	jal	ra,20378 <print>
   20acc:	343027f3          	csrr	a5,mtval
   20ad0:	faf43c23          	sd	a5,-72(s0)
   20ad4:	fb843783          	ld	a5,-72(s0)
   20ad8:	0007879b          	sext.w	a5,a5
   20adc:	00078513          	mv	a0,a5
   20ae0:	b99ff0ef          	jal	ra,20678 <print_hex>
   20ae4:	000227b7          	lui	a5,0x22
   20ae8:	74878513          	addi	a0,a5,1864 # 22748 <INST_CONFIG+0x468>
   20aec:	88dff0ef          	jal	ra,20378 <print>
   20af0:	1a80006f          	j	20c98 <trap+0x43c>
   20af4:	000227b7          	lui	a5,0x22
   20af8:	7c078513          	addi	a0,a5,1984 # 227c0 <INST_CONFIG+0x4e0>
   20afc:	87dff0ef          	jal	ra,20378 <print>
   20b00:	343027f3          	csrr	a5,mtval
   20b04:	faf43823          	sd	a5,-80(s0)
   20b08:	fb043783          	ld	a5,-80(s0)
   20b0c:	0007879b          	sext.w	a5,a5
   20b10:	00078513          	mv	a0,a5
   20b14:	b65ff0ef          	jal	ra,20678 <print_hex>
   20b18:	000227b7          	lui	a5,0x22
   20b1c:	74878513          	addi	a0,a5,1864 # 22748 <INST_CONFIG+0x468>
   20b20:	859ff0ef          	jal	ra,20378 <print>
   20b24:	00100793          	li	a5,1
   20b28:	fef42623          	sw	a5,-20(s0)
   20b2c:	16c0006f          	j	20c98 <trap+0x43c>
   20b30:	8101b783          	ld	a5,-2032(gp) # 229e0 <trap_frame>
   20b34:	02878793          	addi	a5,a5,40
   20b38:	0007a783          	lw	a5,0(a5)
   20b3c:	00078693          	mv	a3,a5
   20b40:	00100713          	li	a4,1
   20b44:	02e68463          	beq	a3,a4,20b6c <trap+0x310>
   20b48:	00078713          	mv	a4,a5
   20b4c:	00070a63          	beqz	a4,20b60 <trap+0x304>
   20b50:	00078713          	mv	a4,a5
   20b54:	00200793          	li	a5,2
   20b58:	04f70863          	beq	a4,a5,20ba8 <trap+0x34c>
   20b5c:	0880006f          	j	20be4 <trap+0x388>
   20b60:	00100793          	li	a5,1
   20b64:	fef42623          	sw	a5,-20(s0)
   20b68:	0b00006f          	j	20c18 <trap+0x3bc>
   20b6c:	00000013          	nop
   20b70:	008007b7          	lui	a5,0x800
   20b74:	ffc78793          	addi	a5,a5,-4 # 7ffffc <__global_pointer$+0x7dce2c>
   20b78:	0007a783          	lw	a5,0(a5)
   20b7c:	00f7f793          	andi	a5,a5,15
   20b80:	0007879b          	sext.w	a5,a5
   20b84:	fe0786e3          	beqz	a5,20b70 <trap+0x314>
   20b88:	8101b783          	ld	a5,-2032(gp) # 229e0 <trap_frame>
   20b8c:	02c78793          	addi	a5,a5,44
   20b90:	0007a703          	lw	a4,0(a5)
   20b94:	008007b7          	lui	a5,0x800
   20b98:	ff878793          	addi	a5,a5,-8 # 7ffff8 <__global_pointer$+0x7dce28>
   20b9c:	0ff77713          	andi	a4,a4,255
   20ba0:	00e78023          	sb	a4,0(a5)
   20ba4:	0740006f          	j	20c18 <trap+0x3bc>
   20ba8:	00000013          	nop
   20bac:	008007b7          	lui	a5,0x800
   20bb0:	ffc78793          	addi	a5,a5,-4 # 7ffffc <__global_pointer$+0x7dce2c>
   20bb4:	0007a783          	lw	a5,0(a5)
   20bb8:	0f07f793          	andi	a5,a5,240
   20bbc:	0007879b          	sext.w	a5,a5
   20bc0:	fe0786e3          	beqz	a5,20bac <trap+0x350>
   20bc4:	008007b7          	lui	a5,0x800
   20bc8:	ff878793          	addi	a5,a5,-8 # 7ffff8 <__global_pointer$+0x7dce28>
   20bcc:	0007c703          	lbu	a4,0(a5)
   20bd0:	8101b783          	ld	a5,-2032(gp) # 229e0 <trap_frame>
   20bd4:	02478793          	addi	a5,a5,36
   20bd8:	0007071b          	sext.w	a4,a4
   20bdc:	00e7a023          	sw	a4,0(a5)
   20be0:	0380006f          	j	20c18 <trap+0x3bc>
   20be4:	000227b7          	lui	a5,0x22
   20be8:	7e078513          	addi	a0,a5,2016 # 227e0 <INST_CONFIG+0x500>
   20bec:	f8cff0ef          	jal	ra,20378 <print>
   20bf0:	8101b783          	ld	a5,-2032(gp) # 229e0 <trap_frame>
   20bf4:	02878793          	addi	a5,a5,40
   20bf8:	0007a783          	lw	a5,0(a5)
   20bfc:	00078513          	mv	a0,a5
   20c00:	a79ff0ef          	jal	ra,20678 <print_hex>
   20c04:	000227b7          	lui	a5,0x22
   20c08:	74878513          	addi	a0,a5,1864 # 22748 <INST_CONFIG+0x468>
   20c0c:	f6cff0ef          	jal	ra,20378 <print>
   20c10:	00100793          	li	a5,1
   20c14:	fef42623          	sw	a5,-20(s0)
   20c18:	341027f3          	csrr	a5,mepc
   20c1c:	faf43423          	sd	a5,-88(s0)
   20c20:	fa843783          	ld	a5,-88(s0)
   20c24:	00478793          	addi	a5,a5,4
   20c28:	34179073          	csrw	mepc,a5
   20c2c:	06c0006f          	j	20c98 <trap+0x43c>
   20c30:	000227b7          	lui	a5,0x22
   20c34:	7f878513          	addi	a0,a5,2040 # 227f8 <INST_CONFIG+0x518>
   20c38:	f40ff0ef          	jal	ra,20378 <print>
   20c3c:	000227b7          	lui	a5,0x22
   20c40:	74078513          	addi	a0,a5,1856 # 22740 <INST_CONFIG+0x460>
   20c44:	f34ff0ef          	jal	ra,20378 <print>
   20c48:	fdc42783          	lw	a5,-36(s0)
   20c4c:	00078513          	mv	a0,a5
   20c50:	a29ff0ef          	jal	ra,20678 <print_hex>
   20c54:	000227b7          	lui	a5,0x22
   20c58:	74878513          	addi	a0,a5,1864 # 22748 <INST_CONFIG+0x468>
   20c5c:	f1cff0ef          	jal	ra,20378 <print>
   20c60:	000227b7          	lui	a5,0x22
   20c64:	75078513          	addi	a0,a5,1872 # 22750 <INST_CONFIG+0x470>
   20c68:	f10ff0ef          	jal	ra,20378 <print>
   20c6c:	341027f3          	csrr	a5,mepc
   20c70:	faf43023          	sd	a5,-96(s0)
   20c74:	fa043783          	ld	a5,-96(s0)
   20c78:	0007879b          	sext.w	a5,a5
   20c7c:	00078513          	mv	a0,a5
   20c80:	9f9ff0ef          	jal	ra,20678 <print_hex>
   20c84:	000227b7          	lui	a5,0x22
   20c88:	74878513          	addi	a0,a5,1864 # 22748 <INST_CONFIG+0x468>
   20c8c:	eecff0ef          	jal	ra,20378 <print>
   20c90:	00100793          	li	a5,1
   20c94:	fef42623          	sw	a5,-20(s0)
   20c98:	fec42783          	lw	a5,-20(s0)
   20c9c:	0007879b          	sext.w	a5,a5
   20ca0:	00078e63          	beqz	a5,20cbc <trap+0x460>
   20ca4:	000237b7          	lui	a5,0x23
   20ca8:	9d47a783          	lw	a5,-1580(a5) # 229d4 <in_user>
   20cac:	00078863          	beqz	a5,20cbc <trap+0x460>
   20cb0:	000207b7          	lui	a5,0x20
   20cb4:	13878793          	addi	a5,a5,312 # 20138 <_exit>
   20cb8:	34179073          	csrw	mepc,a5
   20cbc:	00000013          	nop
   20cc0:	05813083          	ld	ra,88(sp)
   20cc4:	05013403          	ld	s0,80(sp)
   20cc8:	06010113          	addi	sp,sp,96
   20ccc:	00008067          	ret

0000000000020cd0 <init>:
   20cd0:	fd010113          	addi	sp,sp,-48
   20cd4:	02813423          	sd	s0,40(sp)
   20cd8:	03010413          	addi	s0,sp,48
   20cdc:	8401ac23          	sw	zero,-1960(gp) # 22a28 <buft>
   20ce0:	8581a703          	lw	a4,-1960(gp) # 22a28 <buft>
   20ce4:	8ae1a023          	sw	a4,-1888(gp) # 22a70 <bufh>
   20ce8:	000407b7          	lui	a5,0x40
   20cec:	34079073          	csrw	mscratch,a5
   20cf0:	000207b7          	lui	a5,0x20
   20cf4:	25878793          	addi	a5,a5,600 # 20258 <_trap_entry>
   20cf8:	30579073          	csrw	mtvec,a5
   20cfc:	300467f3          	csrrsi	a5,mstatus,8
   20d00:	fef43023          	sd	a5,-32(s0)
   20d04:	008007b7          	lui	a5,0x800
   20d08:	fc478793          	addi	a5,a5,-60 # 7fffc4 <__global_pointer$+0x7dcdf4>
   20d0c:	0007a023          	sw	zero,0(a5)
   20d10:	008007b7          	lui	a5,0x800
   20d14:	fc078793          	addi	a5,a5,-64 # 7fffc0 <__global_pointer$+0x7dcdf0>
   20d18:	0001f737          	lui	a4,0x1f
   20d1c:	8487071b          	addiw	a4,a4,-1976
   20d20:	00e7a023          	sw	a4,0(a5)
   20d24:	008007b7          	lui	a5,0x800
   20d28:	fcc78793          	addi	a5,a5,-52 # 7fffcc <__global_pointer$+0x7dcdfc>
   20d2c:	0007a023          	sw	zero,0(a5)
   20d30:	008007b7          	lui	a5,0x800
   20d34:	fc878793          	addi	a5,a5,-56 # 7fffc8 <__global_pointer$+0x7dcdf8>
   20d38:	0007a023          	sw	zero,0(a5)
   20d3c:	000017b7          	lui	a5,0x1
   20d40:	8807879b          	addiw	a5,a5,-1920
   20d44:	3047a7f3          	csrrs	a5,mie,a5
   20d48:	fcf43c23          	sd	a5,-40(s0)
   20d4c:	000237b7          	lui	a5,0x23
   20d50:	9c07aa23          	sw	zero,-1580(a5) # 229d4 <in_user>
   20d54:	000237b7          	lui	a5,0x23
   20d58:	06400713          	li	a4,100
   20d5c:	9ce7ae23          	sw	a4,-1572(a5) # 229dc <time_lim>
   20d60:	fe042623          	sw	zero,-20(s0)
   20d64:	0240006f          	j	20d88 <init+0xb8>
   20d68:	fec42703          	lw	a4,-20(s0)
   20d6c:	00271713          	slli	a4,a4,0x2
   20d70:	8a818793          	addi	a5,gp,-1880 # 22a78 <regs>
   20d74:	00f707b3          	add	a5,a4,a5
   20d78:	0007a023          	sw	zero,0(a5)
   20d7c:	fec42783          	lw	a5,-20(s0)
   20d80:	0017879b          	addiw	a5,a5,1
   20d84:	fef42623          	sw	a5,-20(s0)
   20d88:	fec42783          	lw	a5,-20(s0)
   20d8c:	0007871b          	sext.w	a4,a5
   20d90:	01f00793          	li	a5,31
   20d94:	fce7dae3          	bge	a5,a4,20d68 <init+0x98>
   20d98:	00000013          	nop
   20d9c:	02813403          	ld	s0,40(sp)
   20da0:	03010113          	addi	sp,sp,48
   20da4:	00008067          	ret

0000000000020da8 <next_word>:
   20da8:	fe010113          	addi	sp,sp,-32
   20dac:	00813c23          	sd	s0,24(sp)
   20db0:	02010413          	addi	s0,sp,32
   20db4:	fea43423          	sd	a0,-24(s0)
   20db8:	0100006f          	j	20dc8 <next_word+0x20>
   20dbc:	fe843783          	ld	a5,-24(s0)
   20dc0:	00178793          	addi	a5,a5,1
   20dc4:	fef43423          	sd	a5,-24(s0)
   20dc8:	fe843783          	ld	a5,-24(s0)
   20dcc:	0007c783          	lbu	a5,0(a5)
   20dd0:	02078463          	beqz	a5,20df8 <next_word+0x50>
   20dd4:	fe843783          	ld	a5,-24(s0)
   20dd8:	0007c783          	lbu	a5,0(a5)
   20ddc:	00078713          	mv	a4,a5
   20de0:	02000793          	li	a5,32
   20de4:	fcf71ce3          	bne	a4,a5,20dbc <next_word+0x14>
   20de8:	0100006f          	j	20df8 <next_word+0x50>
   20dec:	fe843783          	ld	a5,-24(s0)
   20df0:	00178793          	addi	a5,a5,1
   20df4:	fef43423          	sd	a5,-24(s0)
   20df8:	fe843783          	ld	a5,-24(s0)
   20dfc:	0007c783          	lbu	a5,0(a5)
   20e00:	00078c63          	beqz	a5,20e18 <next_word+0x70>
   20e04:	fe843783          	ld	a5,-24(s0)
   20e08:	0007c783          	lbu	a5,0(a5)
   20e0c:	00078713          	mv	a4,a5
   20e10:	02000793          	li	a5,32
   20e14:	fcf70ce3          	beq	a4,a5,20dec <next_word+0x44>
   20e18:	fe843783          	ld	a5,-24(s0)
   20e1c:	00078513          	mv	a0,a5
   20e20:	01813403          	ld	s0,24(sp)
   20e24:	02010113          	addi	sp,sp,32
   20e28:	00008067          	ret

0000000000020e2c <jump_exe>:
   20e2c:	fe010113          	addi	sp,sp,-32
   20e30:	00113c23          	sd	ra,24(sp)
   20e34:	00813823          	sd	s0,16(sp)
   20e38:	02010413          	addi	s0,sp,32
   20e3c:	86018513          	addi	a0,gp,-1952 # 22a30 <buffer>
   20e40:	f69ff0ef          	jal	ra,20da8 <next_word>
   20e44:	fea43423          	sd	a0,-24(s0)
   20e48:	fe843783          	ld	a5,-24(s0)
   20e4c:	0007c783          	lbu	a5,0(a5)
   20e50:	0a078263          	beqz	a5,20ef4 <jump_exe+0xc8>
   20e54:	fe843783          	ld	a5,-24(s0)
   20e58:	00178793          	addi	a5,a5,1
   20e5c:	0007c783          	lbu	a5,0(a5)
   20e60:	08078a63          	beqz	a5,20ef4 <jump_exe+0xc8>
   20e64:	fe843503          	ld	a0,-24(s0)
   20e68:	8cdff0ef          	jal	ra,20734 <str2hex>
   20e6c:	00050793          	mv	a5,a0
   20e70:	fef42223          	sw	a5,-28(s0)
   20e74:	fe442783          	lw	a5,-28(s0)
   20e78:	00078513          	mv	a0,a5
   20e7c:	994ff0ef          	jal	ra,20010 <_entry>
   20e80:	000237b7          	lui	a5,0x23
   20e84:	9dc7a703          	lw	a4,-1572(a5) # 229dc <time_lim>
   20e88:	000237b7          	lui	a5,0x23
   20e8c:	9d87a783          	lw	a5,-1576(a5) # 229d8 <time_count>
   20e90:	00e7e863          	bltu	a5,a4,20ea0 <jump_exe+0x74>
   20e94:	000237b7          	lui	a5,0x23
   20e98:	85078513          	addi	a0,a5,-1968 # 22850 <INST_CONFIG+0x570>
   20e9c:	cdcff0ef          	jal	ra,20378 <print>
   20ea0:	000237b7          	lui	a5,0x23
   20ea4:	89078513          	addi	a0,a5,-1904 # 22890 <INST_CONFIG+0x5b0>
   20ea8:	cd0ff0ef          	jal	ra,20378 <print>
   20eac:	000237b7          	lui	a5,0x23
   20eb0:	9d87a783          	lw	a5,-1576(a5) # 229d8 <time_count>
   20eb4:	00078513          	mv	a0,a5
   20eb8:	fc0ff0ef          	jal	ra,20678 <print_hex>
   20ebc:	000237b7          	lui	a5,0x23
   20ec0:	8a878513          	addi	a0,a5,-1880 # 228a8 <INST_CONFIG+0x5c8>
   20ec4:	cb4ff0ef          	jal	ra,20378 <print>
   20ec8:	000237b7          	lui	a5,0x23
   20ecc:	8b078513          	addi	a0,a5,-1872 # 228b0 <INST_CONFIG+0x5d0>
   20ed0:	ca8ff0ef          	jal	ra,20378 <print>
   20ed4:	000237b7          	lui	a5,0x23
   20ed8:	9dc7a783          	lw	a5,-1572(a5) # 229dc <time_lim>
   20edc:	00078513          	mv	a0,a5
   20ee0:	f98ff0ef          	jal	ra,20678 <print_hex>
   20ee4:	000237b7          	lui	a5,0x23
   20ee8:	8a878513          	addi	a0,a5,-1880 # 228a8 <INST_CONFIG+0x5c8>
   20eec:	c8cff0ef          	jal	ra,20378 <print>
   20ef0:	0080006f          	j	20ef8 <jump_exe+0xcc>
   20ef4:	00000013          	nop
   20ef8:	01813083          	ld	ra,24(sp)
   20efc:	01013403          	ld	s0,16(sp)
   20f00:	02010113          	addi	sp,sp,32
   20f04:	00008067          	ret

0000000000020f08 <reg_exe>:
   20f08:	fe010113          	addi	sp,sp,-32
   20f0c:	00113c23          	sd	ra,24(sp)
   20f10:	00813823          	sd	s0,16(sp)
   20f14:	02010413          	addi	s0,sp,32
   20f18:	fe042623          	sw	zero,-20(s0)
   20f1c:	05c0006f          	j	20f78 <reg_exe+0x70>
   20f20:	000237b7          	lui	a5,0x23
   20f24:	8c878513          	addi	a0,a5,-1848 # 228c8 <INST_CONFIG+0x5e8>
   20f28:	c50ff0ef          	jal	ra,20378 <print>
   20f2c:	fec42783          	lw	a5,-20(s0)
   20f30:	00078513          	mv	a0,a5
   20f34:	f44ff0ef          	jal	ra,20678 <print_hex>
   20f38:	000237b7          	lui	a5,0x23
   20f3c:	8d078513          	addi	a0,a5,-1840 # 228d0 <INST_CONFIG+0x5f0>
   20f40:	c38ff0ef          	jal	ra,20378 <print>
   20f44:	fec42703          	lw	a4,-20(s0)
   20f48:	00271713          	slli	a4,a4,0x2
   20f4c:	8a818793          	addi	a5,gp,-1880 # 22a78 <regs>
   20f50:	00f707b3          	add	a5,a4,a5
   20f54:	0007a783          	lw	a5,0(a5)
   20f58:	00078513          	mv	a0,a5
   20f5c:	f1cff0ef          	jal	ra,20678 <print_hex>
   20f60:	000227b7          	lui	a5,0x22
   20f64:	74878513          	addi	a0,a5,1864 # 22748 <INST_CONFIG+0x468>
   20f68:	c10ff0ef          	jal	ra,20378 <print>
   20f6c:	fec42783          	lw	a5,-20(s0)
   20f70:	0017879b          	addiw	a5,a5,1
   20f74:	fef42623          	sw	a5,-20(s0)
   20f78:	fec42783          	lw	a5,-20(s0)
   20f7c:	0007871b          	sext.w	a4,a5
   20f80:	01f00793          	li	a5,31
   20f84:	f8e7dee3          	bge	a5,a4,20f20 <reg_exe+0x18>
   20f88:	00000013          	nop
   20f8c:	01813083          	ld	ra,24(sp)
   20f90:	01013403          	ld	s0,16(sp)
   20f94:	02010113          	addi	sp,sp,32
   20f98:	00008067          	ret

0000000000020f9c <edit_exe>:
   20f9c:	fd010113          	addi	sp,sp,-48
   20fa0:	02113423          	sd	ra,40(sp)
   20fa4:	02813023          	sd	s0,32(sp)
   20fa8:	03010413          	addi	s0,sp,48
   20fac:	86018513          	addi	a0,gp,-1952 # 22a30 <buffer>
   20fb0:	df9ff0ef          	jal	ra,20da8 <next_word>
   20fb4:	fea43023          	sd	a0,-32(s0)
   20fb8:	fe043783          	ld	a5,-32(s0)
   20fbc:	0007c783          	lbu	a5,0(a5)
   20fc0:	08078863          	beqz	a5,21050 <edit_exe+0xb4>
   20fc4:	fe043783          	ld	a5,-32(s0)
   20fc8:	00178793          	addi	a5,a5,1
   20fcc:	0007c783          	lbu	a5,0(a5)
   20fd0:	08078063          	beqz	a5,21050 <edit_exe+0xb4>
   20fd4:	fe043503          	ld	a0,-32(s0)
   20fd8:	f5cff0ef          	jal	ra,20734 <str2hex>
   20fdc:	00050793          	mv	a5,a0
   20fe0:	fef42623          	sw	a5,-20(s0)
   20fe4:	000237b7          	lui	a5,0x23
   20fe8:	8d878513          	addi	a0,a5,-1832 # 228d8 <INST_CONFIG+0x5f8>
   20fec:	b8cff0ef          	jal	ra,20378 <print>
   20ff0:	fec42783          	lw	a5,-20(s0)
   20ff4:	00078513          	mv	a0,a5
   20ff8:	e80ff0ef          	jal	ra,20678 <print_hex>
   20ffc:	000237b7          	lui	a5,0x23
   21000:	8e078513          	addi	a0,a5,-1824 # 228e0 <INST_CONFIG+0x600>
   21004:	b74ff0ef          	jal	ra,20378 <print>
   21008:	cacff0ef          	jal	ra,204b4 <get_line>
   2100c:	8601c783          	lbu	a5,-1952(gp) # 22a30 <buffer>
   21010:	04078263          	beqz	a5,21054 <edit_exe+0xb8>
   21014:	86018793          	addi	a5,gp,-1952 # 22a30 <buffer>
   21018:	0017c783          	lbu	a5,1(a5)
   2101c:	02078c63          	beqz	a5,21054 <edit_exe+0xb8>
   21020:	86018513          	addi	a0,gp,-1952 # 22a30 <buffer>
   21024:	f10ff0ef          	jal	ra,20734 <str2hex>
   21028:	00050793          	mv	a5,a0
   2102c:	fcf42e23          	sw	a5,-36(s0)
   21030:	fec46783          	lwu	a5,-20(s0)
   21034:	00078713          	mv	a4,a5
   21038:	fdc42783          	lw	a5,-36(s0)
   2103c:	00f72023          	sw	a5,0(a4) # 1f000 <_start-0x1000>
   21040:	fec42783          	lw	a5,-20(s0)
   21044:	0047879b          	addiw	a5,a5,4
   21048:	fef42623          	sw	a5,-20(s0)
   2104c:	f99ff06f          	j	20fe4 <edit_exe+0x48>
   21050:	00000013          	nop
   21054:	02813083          	ld	ra,40(sp)
   21058:	02013403          	ld	s0,32(sp)
   2105c:	03010113          	addi	sp,sp,48
   21060:	00008067          	ret

0000000000021064 <parse_arg>:
   21064:	fe010113          	addi	sp,sp,-32
   21068:	00113c23          	sd	ra,24(sp)
   2106c:	00813823          	sd	s0,16(sp)
   21070:	02010413          	addi	s0,sp,32
   21074:	fea43423          	sd	a0,-24(s0)
   21078:	feb43023          	sd	a1,-32(s0)
   2107c:	fe843783          	ld	a5,-24(s0)
   21080:	0007c783          	lbu	a5,0(a5)
   21084:	00078a63          	beqz	a5,21098 <parse_arg+0x34>
   21088:	fe843783          	ld	a5,-24(s0)
   2108c:	00178793          	addi	a5,a5,1
   21090:	0007c783          	lbu	a5,0(a5)
   21094:	00079663          	bnez	a5,210a0 <parse_arg+0x3c>
   21098:	00000793          	li	a5,0
   2109c:	0b40006f          	j	21150 <parse_arg+0xec>
   210a0:	fe843783          	ld	a5,-24(s0)
   210a4:	0007c783          	lbu	a5,0(a5)
   210a8:	00078713          	mv	a4,a5
   210ac:	03000793          	li	a5,48
   210b0:	02f71c63          	bne	a4,a5,210e8 <parse_arg+0x84>
   210b4:	fe843783          	ld	a5,-24(s0)
   210b8:	00178793          	addi	a5,a5,1
   210bc:	0007c783          	lbu	a5,0(a5)
   210c0:	00078713          	mv	a4,a5
   210c4:	07800793          	li	a5,120
   210c8:	02f71063          	bne	a4,a5,210e8 <parse_arg+0x84>
   210cc:	fe843503          	ld	a0,-24(s0)
   210d0:	e64ff0ef          	jal	ra,20734 <str2hex>
   210d4:	00050793          	mv	a5,a0
   210d8:	0007871b          	sext.w	a4,a5
   210dc:	fe043783          	ld	a5,-32(s0)
   210e0:	00e7a023          	sw	a4,0(a5)
   210e4:	0680006f          	j	2114c <parse_arg+0xe8>
   210e8:	fe843783          	ld	a5,-24(s0)
   210ec:	0007c783          	lbu	a5,0(a5)
   210f0:	00078713          	mv	a4,a5
   210f4:	07800793          	li	a5,120
   210f8:	04f71a63          	bne	a4,a5,2114c <parse_arg+0xe8>
   210fc:	fe843783          	ld	a5,-24(s0)
   21100:	00178793          	addi	a5,a5,1
   21104:	0007c783          	lbu	a5,0(a5)
   21108:	00078713          	mv	a4,a5
   2110c:	03000793          	li	a5,48
   21110:	02f71e63          	bne	a4,a5,2114c <parse_arg+0xe8>
   21114:	fe843783          	ld	a5,-24(s0)
   21118:	00278793          	addi	a5,a5,2
   2111c:	0007c783          	lbu	a5,0(a5)
   21120:	00078713          	mv	a4,a5
   21124:	07800793          	li	a5,120
   21128:	02f71263          	bne	a4,a5,2114c <parse_arg+0xe8>
   2112c:	fe843783          	ld	a5,-24(s0)
   21130:	00178793          	addi	a5,a5,1
   21134:	00078513          	mv	a0,a5
   21138:	dfcff0ef          	jal	ra,20734 <str2hex>
   2113c:	00050793          	mv	a5,a0
   21140:	0007871b          	sext.w	a4,a5
   21144:	fe043783          	ld	a5,-32(s0)
   21148:	00e7a023          	sw	a4,0(a5)
   2114c:	00100793          	li	a5,1
   21150:	00078513          	mv	a0,a5
   21154:	01813083          	ld	ra,24(sp)
   21158:	01013403          	ld	s0,16(sp)
   2115c:	02010113          	addi	sp,sp,32
   21160:	00008067          	ret

0000000000021164 <inst2int>:
   21164:	fc010113          	addi	sp,sp,-64
   21168:	02113c23          	sd	ra,56(sp)
   2116c:	02813823          	sd	s0,48(sp)
   21170:	04010413          	addi	s0,sp,64
   21174:	fca43423          	sd	a0,-56(s0)
   21178:	fe042623          	sw	zero,-20(s0)
   2117c:	1000006f          	j	2127c <inst2int+0x118>
   21180:	fe042423          	sw	zero,-24(s0)
   21184:	0100006f          	j	21194 <inst2int+0x30>
   21188:	fe842783          	lw	a5,-24(s0)
   2118c:	0017879b          	addiw	a5,a5,1
   21190:	fef42423          	sw	a5,-24(s0)
   21194:	00022637          	lui	a2,0x22
   21198:	fe842683          	lw	a3,-24(s0)
   2119c:	fec42703          	lw	a4,-20(s0)
   211a0:	00070793          	mv	a5,a4
   211a4:	00379793          	slli	a5,a5,0x3
   211a8:	40e787b3          	sub	a5,a5,a4
   211ac:	1d060713          	addi	a4,a2,464 # 221d0 <INST_NAMES>
   211b0:	00e787b3          	add	a5,a5,a4
   211b4:	00d787b3          	add	a5,a5,a3
   211b8:	0007c783          	lbu	a5,0(a5)
   211bc:	04078c63          	beqz	a5,21214 <inst2int+0xb0>
   211c0:	fe842783          	lw	a5,-24(s0)
   211c4:	fc843703          	ld	a4,-56(s0)
   211c8:	00f707b3          	add	a5,a4,a5
   211cc:	0007c783          	lbu	a5,0(a5)
   211d0:	04078263          	beqz	a5,21214 <inst2int+0xb0>
   211d4:	00022637          	lui	a2,0x22
   211d8:	fe842683          	lw	a3,-24(s0)
   211dc:	fec42703          	lw	a4,-20(s0)
   211e0:	00070793          	mv	a5,a4
   211e4:	00379793          	slli	a5,a5,0x3
   211e8:	40e787b3          	sub	a5,a5,a4
   211ec:	1d060713          	addi	a4,a2,464 # 221d0 <INST_NAMES>
   211f0:	00e787b3          	add	a5,a5,a4
   211f4:	00d787b3          	add	a5,a5,a3
   211f8:	0007c683          	lbu	a3,0(a5)
   211fc:	fe842783          	lw	a5,-24(s0)
   21200:	fc843703          	ld	a4,-56(s0)
   21204:	00f707b3          	add	a5,a4,a5
   21208:	0007c783          	lbu	a5,0(a5)
   2120c:	00068713          	mv	a4,a3
   21210:	f6f70ce3          	beq	a4,a5,21188 <inst2int+0x24>
   21214:	00022637          	lui	a2,0x22
   21218:	fe842683          	lw	a3,-24(s0)
   2121c:	fec42703          	lw	a4,-20(s0)
   21220:	00070793          	mv	a5,a4
   21224:	00379793          	slli	a5,a5,0x3
   21228:	40e787b3          	sub	a5,a5,a4
   2122c:	1d060713          	addi	a4,a2,464 # 221d0 <INST_NAMES>
   21230:	00e787b3          	add	a5,a5,a4
   21234:	00d787b3          	add	a5,a5,a3
   21238:	0007c783          	lbu	a5,0(a5)
   2123c:	02079a63          	bnez	a5,21270 <inst2int+0x10c>
   21240:	fe842783          	lw	a5,-24(s0)
   21244:	fc843703          	ld	a4,-56(s0)
   21248:	00f707b3          	add	a5,a4,a5
   2124c:	0007c783          	lbu	a5,0(a5)
   21250:	02078e63          	beqz	a5,2128c <inst2int+0x128>
   21254:	fe842783          	lw	a5,-24(s0)
   21258:	fc843703          	ld	a4,-56(s0)
   2125c:	00f707b3          	add	a5,a4,a5
   21260:	0007c783          	lbu	a5,0(a5)
   21264:	00078713          	mv	a4,a5
   21268:	02000793          	li	a5,32
   2126c:	02f70063          	beq	a4,a5,2128c <inst2int+0x128>
   21270:	fec42783          	lw	a5,-20(s0)
   21274:	0017879b          	addiw	a5,a5,1
   21278:	fef42623          	sw	a5,-20(s0)
   2127c:	fec42783          	lw	a5,-20(s0)
   21280:	0007871b          	sext.w	a4,a5
   21284:	02500793          	li	a5,37
   21288:	eee7dce3          	bge	a5,a4,21180 <inst2int+0x1c>
   2128c:	fec42783          	lw	a5,-20(s0)
   21290:	0007871b          	sext.w	a4,a5
   21294:	02600793          	li	a5,38
   21298:	00f71663          	bne	a4,a5,212a4 <inst2int+0x140>
   2129c:	00000793          	li	a5,0
   212a0:	55c0006f          	j	217fc <inst2int+0x698>
   212a4:	000227b7          	lui	a5,0x22
   212a8:	fec42703          	lw	a4,-20(s0)
   212ac:	00471713          	slli	a4,a4,0x4
   212b0:	2e078793          	addi	a5,a5,736 # 222e0 <INST_CONFIG>
   212b4:	00f707b3          	add	a5,a4,a5
   212b8:	0047a783          	lw	a5,4(a5)
   212bc:	fef42223          	sw	a5,-28(s0)
   212c0:	000227b7          	lui	a5,0x22
   212c4:	fec42703          	lw	a4,-20(s0)
   212c8:	00471713          	slli	a4,a4,0x4
   212cc:	2e078793          	addi	a5,a5,736 # 222e0 <INST_CONFIG>
   212d0:	00f707b3          	add	a5,a4,a5
   212d4:	0007a783          	lw	a5,0(a5)
   212d8:	fef42023          	sw	a5,-32(s0)
   212dc:	fe042783          	lw	a5,-32(s0)
   212e0:	0007871b          	sext.w	a4,a5
   212e4:	00600793          	li	a5,6
   212e8:	02f71863          	bne	a4,a5,21318 <inst2int+0x1b4>
   212ec:	000227b7          	lui	a5,0x22
   212f0:	fec42703          	lw	a4,-20(s0)
   212f4:	00471713          	slli	a4,a4,0x4
   212f8:	2e078793          	addi	a5,a5,736 # 222e0 <INST_CONFIG>
   212fc:	00f707b3          	add	a5,a4,a5
   21300:	0087a783          	lw	a5,8(a5)
   21304:	0077979b          	slliw	a5,a5,0x7
   21308:	0007871b          	sext.w	a4,a5
   2130c:	fe442783          	lw	a5,-28(s0)
   21310:	00e7e7b3          	or	a5,a5,a4
   21314:	fef42223          	sw	a5,-28(s0)
   21318:	fe042783          	lw	a5,-32(s0)
   2131c:	0007879b          	sext.w	a5,a5
   21320:	02078a63          	beqz	a5,21354 <inst2int+0x1f0>
   21324:	fe042783          	lw	a5,-32(s0)
   21328:	0007871b          	sext.w	a4,a5
   2132c:	00100793          	li	a5,1
   21330:	02f70263          	beq	a4,a5,21354 <inst2int+0x1f0>
   21334:	fe042783          	lw	a5,-32(s0)
   21338:	0007871b          	sext.w	a4,a5
   2133c:	00200793          	li	a5,2
   21340:	00f70a63          	beq	a4,a5,21354 <inst2int+0x1f0>
   21344:	fe042783          	lw	a5,-32(s0)
   21348:	0007871b          	sext.w	a4,a5
   2134c:	00300793          	li	a5,3
   21350:	04f71063          	bne	a4,a5,21390 <inst2int+0x22c>
   21354:	000227b7          	lui	a5,0x22
   21358:	fec42703          	lw	a4,-20(s0)
   2135c:	00471713          	slli	a4,a4,0x4
   21360:	2e078793          	addi	a5,a5,736 # 222e0 <INST_CONFIG>
   21364:	00f707b3          	add	a5,a4,a5
   21368:	0087a783          	lw	a5,8(a5)
   2136c:	00c7979b          	slliw	a5,a5,0xc
   21370:	0007879b          	sext.w	a5,a5
   21374:	00078713          	mv	a4,a5
   21378:	000077b7          	lui	a5,0x7
   2137c:	00f777b3          	and	a5,a4,a5
   21380:	0007871b          	sext.w	a4,a5
   21384:	fe442783          	lw	a5,-28(s0)
   21388:	00e7e7b3          	or	a5,a5,a4
   2138c:	fef42223          	sw	a5,-28(s0)
   21390:	fe042783          	lw	a5,-32(s0)
   21394:	0007879b          	sext.w	a5,a5
   21398:	02079863          	bnez	a5,213c8 <inst2int+0x264>
   2139c:	000227b7          	lui	a5,0x22
   213a0:	fec42703          	lw	a4,-20(s0)
   213a4:	00471713          	slli	a4,a4,0x4
   213a8:	2e078793          	addi	a5,a5,736 # 222e0 <INST_CONFIG>
   213ac:	00f707b3          	add	a5,a4,a5
   213b0:	00c7a783          	lw	a5,12(a5)
   213b4:	0197979b          	slliw	a5,a5,0x19
   213b8:	0007871b          	sext.w	a4,a5
   213bc:	fe442783          	lw	a5,-28(s0)
   213c0:	00e7e7b3          	or	a5,a5,a4
   213c4:	fef42223          	sw	a5,-28(s0)
   213c8:	fe042783          	lw	a5,-32(s0)
   213cc:	0007879b          	sext.w	a5,a5
   213d0:	02078a63          	beqz	a5,21404 <inst2int+0x2a0>
   213d4:	fe042783          	lw	a5,-32(s0)
   213d8:	0007871b          	sext.w	a4,a5
   213dc:	00100793          	li	a5,1
   213e0:	02f70263          	beq	a4,a5,21404 <inst2int+0x2a0>
   213e4:	fe042783          	lw	a5,-32(s0)
   213e8:	0007871b          	sext.w	a4,a5
   213ec:	00400793          	li	a5,4
   213f0:	00f70a63          	beq	a4,a5,21404 <inst2int+0x2a0>
   213f4:	fe042783          	lw	a5,-32(s0)
   213f8:	0007871b          	sext.w	a4,a5
   213fc:	00500793          	li	a5,5
   21400:	06f71463          	bne	a4,a5,21468 <inst2int+0x304>
   21404:	fc843503          	ld	a0,-56(s0)
   21408:	9a1ff0ef          	jal	ra,20da8 <next_word>
   2140c:	fca43423          	sd	a0,-56(s0)
   21410:	fd840793          	addi	a5,s0,-40
   21414:	00078593          	mv	a1,a5
   21418:	fc843503          	ld	a0,-56(s0)
   2141c:	c49ff0ef          	jal	ra,21064 <parse_arg>
   21420:	00050793          	mv	a5,a0
   21424:	fcf42e23          	sw	a5,-36(s0)
   21428:	fdc42783          	lw	a5,-36(s0)
   2142c:	0007879b          	sext.w	a5,a5
   21430:	00079663          	bnez	a5,2143c <inst2int+0x2d8>
   21434:	00000793          	li	a5,0
   21438:	3c40006f          	j	217fc <inst2int+0x698>
   2143c:	fd842783          	lw	a5,-40(s0)
   21440:	0077979b          	slliw	a5,a5,0x7
   21444:	0007879b          	sext.w	a5,a5
   21448:	00078713          	mv	a4,a5
   2144c:	000017b7          	lui	a5,0x1
   21450:	f8078793          	addi	a5,a5,-128 # f80 <_start-0x1f080>
   21454:	00f777b3          	and	a5,a4,a5
   21458:	0007871b          	sext.w	a4,a5
   2145c:	fe442783          	lw	a5,-28(s0)
   21460:	00e7e7b3          	or	a5,a5,a4
   21464:	fef42223          	sw	a5,-28(s0)
   21468:	fe042783          	lw	a5,-32(s0)
   2146c:	0007879b          	sext.w	a5,a5
   21470:	02078a63          	beqz	a5,214a4 <inst2int+0x340>
   21474:	fe042783          	lw	a5,-32(s0)
   21478:	0007871b          	sext.w	a4,a5
   2147c:	00100793          	li	a5,1
   21480:	02f70263          	beq	a4,a5,214a4 <inst2int+0x340>
   21484:	fe042783          	lw	a5,-32(s0)
   21488:	0007871b          	sext.w	a4,a5
   2148c:	00200793          	li	a5,2
   21490:	00f70a63          	beq	a4,a5,214a4 <inst2int+0x340>
   21494:	fe042783          	lw	a5,-32(s0)
   21498:	0007871b          	sext.w	a4,a5
   2149c:	00300793          	li	a5,3
   214a0:	06f71263          	bne	a4,a5,21504 <inst2int+0x3a0>
   214a4:	fc843503          	ld	a0,-56(s0)
   214a8:	901ff0ef          	jal	ra,20da8 <next_word>
   214ac:	fca43423          	sd	a0,-56(s0)
   214b0:	fd840793          	addi	a5,s0,-40
   214b4:	00078593          	mv	a1,a5
   214b8:	fc843503          	ld	a0,-56(s0)
   214bc:	ba9ff0ef          	jal	ra,21064 <parse_arg>
   214c0:	00050793          	mv	a5,a0
   214c4:	fcf42e23          	sw	a5,-36(s0)
   214c8:	fdc42783          	lw	a5,-36(s0)
   214cc:	0007879b          	sext.w	a5,a5
   214d0:	00079663          	bnez	a5,214dc <inst2int+0x378>
   214d4:	00000793          	li	a5,0
   214d8:	3240006f          	j	217fc <inst2int+0x698>
   214dc:	fd842783          	lw	a5,-40(s0)
   214e0:	00f7979b          	slliw	a5,a5,0xf
   214e4:	0007879b          	sext.w	a5,a5
   214e8:	00078713          	mv	a4,a5
   214ec:	000f87b7          	lui	a5,0xf8
   214f0:	00f777b3          	and	a5,a4,a5
   214f4:	0007871b          	sext.w	a4,a5
   214f8:	fe442783          	lw	a5,-28(s0)
   214fc:	00e7e7b3          	or	a5,a5,a4
   21500:	fef42223          	sw	a5,-28(s0)
   21504:	fe042783          	lw	a5,-32(s0)
   21508:	0007879b          	sext.w	a5,a5
   2150c:	02078263          	beqz	a5,21530 <inst2int+0x3cc>
   21510:	fe042783          	lw	a5,-32(s0)
   21514:	0007871b          	sext.w	a4,a5
   21518:	00200793          	li	a5,2
   2151c:	00f70a63          	beq	a4,a5,21530 <inst2int+0x3cc>
   21520:	fe042783          	lw	a5,-32(s0)
   21524:	0007871b          	sext.w	a4,a5
   21528:	00300793          	li	a5,3
   2152c:	06f71263          	bne	a4,a5,21590 <inst2int+0x42c>
   21530:	fc843503          	ld	a0,-56(s0)
   21534:	875ff0ef          	jal	ra,20da8 <next_word>
   21538:	fca43423          	sd	a0,-56(s0)
   2153c:	fd840793          	addi	a5,s0,-40
   21540:	00078593          	mv	a1,a5
   21544:	fc843503          	ld	a0,-56(s0)
   21548:	b1dff0ef          	jal	ra,21064 <parse_arg>
   2154c:	00050793          	mv	a5,a0
   21550:	fcf42e23          	sw	a5,-36(s0)
   21554:	fdc42783          	lw	a5,-36(s0)
   21558:	0007879b          	sext.w	a5,a5
   2155c:	00079663          	bnez	a5,21568 <inst2int+0x404>
   21560:	00000793          	li	a5,0
   21564:	2980006f          	j	217fc <inst2int+0x698>
   21568:	fd842783          	lw	a5,-40(s0)
   2156c:	0147979b          	slliw	a5,a5,0x14
   21570:	0007879b          	sext.w	a5,a5
   21574:	00078713          	mv	a4,a5
   21578:	01f007b7          	lui	a5,0x1f00
   2157c:	00f777b3          	and	a5,a4,a5
   21580:	0007871b          	sext.w	a4,a5
   21584:	fe442783          	lw	a5,-28(s0)
   21588:	00e7e7b3          	or	a5,a5,a4
   2158c:	fef42223          	sw	a5,-28(s0)
   21590:	fe042783          	lw	a5,-32(s0)
   21594:	0007879b          	sext.w	a5,a5
   21598:	24078e63          	beqz	a5,217f4 <inst2int+0x690>
   2159c:	fe042783          	lw	a5,-32(s0)
   215a0:	0007871b          	sext.w	a4,a5
   215a4:	00600793          	li	a5,6
   215a8:	24f70663          	beq	a4,a5,217f4 <inst2int+0x690>
   215ac:	fc843503          	ld	a0,-56(s0)
   215b0:	ff8ff0ef          	jal	ra,20da8 <next_word>
   215b4:	fca43423          	sd	a0,-56(s0)
   215b8:	fd840793          	addi	a5,s0,-40
   215bc:	00078593          	mv	a1,a5
   215c0:	fc843503          	ld	a0,-56(s0)
   215c4:	aa1ff0ef          	jal	ra,21064 <parse_arg>
   215c8:	00050793          	mv	a5,a0
   215cc:	fcf42e23          	sw	a5,-36(s0)
   215d0:	fdc42783          	lw	a5,-36(s0)
   215d4:	0007879b          	sext.w	a5,a5
   215d8:	00079663          	bnez	a5,215e4 <inst2int+0x480>
   215dc:	00000793          	li	a5,0
   215e0:	21c0006f          	j	217fc <inst2int+0x698>
   215e4:	fe042783          	lw	a5,-32(s0)
   215e8:	0007871b          	sext.w	a4,a5
   215ec:	00500793          	li	a5,5
   215f0:	20e7e463          	bltu	a5,a4,217f8 <inst2int+0x694>
   215f4:	fe046783          	lwu	a5,-32(s0)
   215f8:	00279713          	slli	a4,a5,0x2
   215fc:	000237b7          	lui	a5,0x23
   21600:	8e478793          	addi	a5,a5,-1820 # 228e4 <INST_CONFIG+0x604>
   21604:	00f707b3          	add	a5,a4,a5
   21608:	0007a783          	lw	a5,0(a5)
   2160c:	00078067          	jr	a5
   21610:	fd842783          	lw	a5,-40(s0)
   21614:	0147979b          	slliw	a5,a5,0x14
   21618:	0007871b          	sext.w	a4,a5
   2161c:	fe442783          	lw	a5,-28(s0)
   21620:	00e7e7b3          	or	a5,a5,a4
   21624:	fef42223          	sw	a5,-28(s0)
   21628:	1d00006f          	j	217f8 <inst2int+0x694>
   2162c:	fd842783          	lw	a5,-40(s0)
   21630:	0077979b          	slliw	a5,a5,0x7
   21634:	0007879b          	sext.w	a5,a5
   21638:	00078713          	mv	a4,a5
   2163c:	000017b7          	lui	a5,0x1
   21640:	f8078793          	addi	a5,a5,-128 # f80 <_start-0x1f080>
   21644:	00f777b3          	and	a5,a4,a5
   21648:	0007871b          	sext.w	a4,a5
   2164c:	fe442783          	lw	a5,-28(s0)
   21650:	00e7e7b3          	or	a5,a5,a4
   21654:	fef42223          	sw	a5,-28(s0)
   21658:	fd842783          	lw	a5,-40(s0)
   2165c:	0057d79b          	srliw	a5,a5,0x5
   21660:	0007879b          	sext.w	a5,a5
   21664:	0197979b          	slliw	a5,a5,0x19
   21668:	0007871b          	sext.w	a4,a5
   2166c:	fe442783          	lw	a5,-28(s0)
   21670:	00e7e7b3          	or	a5,a5,a4
   21674:	fef42223          	sw	a5,-28(s0)
   21678:	1800006f          	j	217f8 <inst2int+0x694>
   2167c:	fd842783          	lw	a5,-40(s0)
   21680:	00b7d79b          	srliw	a5,a5,0xb
   21684:	0007879b          	sext.w	a5,a5
   21688:	0077979b          	slliw	a5,a5,0x7
   2168c:	0007879b          	sext.w	a5,a5
   21690:	0ff7f793          	andi	a5,a5,255
   21694:	0007871b          	sext.w	a4,a5
   21698:	fe442783          	lw	a5,-28(s0)
   2169c:	00e7e7b3          	or	a5,a5,a4
   216a0:	fef42223          	sw	a5,-28(s0)
   216a4:	fd842783          	lw	a5,-40(s0)
   216a8:	0017d79b          	srliw	a5,a5,0x1
   216ac:	0007879b          	sext.w	a5,a5
   216b0:	0087979b          	slliw	a5,a5,0x8
   216b4:	0007879b          	sext.w	a5,a5
   216b8:	00078713          	mv	a4,a5
   216bc:	000017b7          	lui	a5,0x1
   216c0:	f0078793          	addi	a5,a5,-256 # f00 <_start-0x1f100>
   216c4:	00f777b3          	and	a5,a4,a5
   216c8:	0007871b          	sext.w	a4,a5
   216cc:	fe442783          	lw	a5,-28(s0)
   216d0:	00e7e7b3          	or	a5,a5,a4
   216d4:	fef42223          	sw	a5,-28(s0)
   216d8:	fd842783          	lw	a5,-40(s0)
   216dc:	0057d79b          	srliw	a5,a5,0x5
   216e0:	0007879b          	sext.w	a5,a5
   216e4:	0197979b          	slliw	a5,a5,0x19
   216e8:	0007879b          	sext.w	a5,a5
   216ec:	00078713          	mv	a4,a5
   216f0:	7e0007b7          	lui	a5,0x7e000
   216f4:	00f777b3          	and	a5,a4,a5
   216f8:	0007871b          	sext.w	a4,a5
   216fc:	fe442783          	lw	a5,-28(s0)
   21700:	00e7e7b3          	or	a5,a5,a4
   21704:	fef42223          	sw	a5,-28(s0)
   21708:	fd842783          	lw	a5,-40(s0)
   2170c:	00c7d79b          	srliw	a5,a5,0xc
   21710:	0007879b          	sext.w	a5,a5
   21714:	01f7979b          	slliw	a5,a5,0x1f
   21718:	0007871b          	sext.w	a4,a5
   2171c:	fe442783          	lw	a5,-28(s0)
   21720:	00e7e7b3          	or	a5,a5,a4
   21724:	fef42223          	sw	a5,-28(s0)
   21728:	0d00006f          	j	217f8 <inst2int+0x694>
   2172c:	fd842783          	lw	a5,-40(s0)
   21730:	00078713          	mv	a4,a5
   21734:	fffff7b7          	lui	a5,0xfffff
   21738:	00f777b3          	and	a5,a4,a5
   2173c:	0007871b          	sext.w	a4,a5
   21740:	fe442783          	lw	a5,-28(s0)
   21744:	00e7e7b3          	or	a5,a5,a4
   21748:	fef42223          	sw	a5,-28(s0)
   2174c:	0ac0006f          	j	217f8 <inst2int+0x694>
   21750:	fd842783          	lw	a5,-40(s0)
   21754:	00078713          	mv	a4,a5
   21758:	000ff7b7          	lui	a5,0xff
   2175c:	00f777b3          	and	a5,a4,a5
   21760:	0007871b          	sext.w	a4,a5
   21764:	fe442783          	lw	a5,-28(s0)
   21768:	00e7e7b3          	or	a5,a5,a4
   2176c:	fef42223          	sw	a5,-28(s0)
   21770:	fd842783          	lw	a5,-40(s0)
   21774:	00b7d79b          	srliw	a5,a5,0xb
   21778:	0007879b          	sext.w	a5,a5
   2177c:	0147979b          	slliw	a5,a5,0x14
   21780:	0007879b          	sext.w	a5,a5
   21784:	00078713          	mv	a4,a5
   21788:	001007b7          	lui	a5,0x100
   2178c:	00f777b3          	and	a5,a4,a5
   21790:	0007871b          	sext.w	a4,a5
   21794:	fe442783          	lw	a5,-28(s0)
   21798:	00e7e7b3          	or	a5,a5,a4
   2179c:	fef42223          	sw	a5,-28(s0)
   217a0:	fd842783          	lw	a5,-40(s0)
   217a4:	0017d79b          	srliw	a5,a5,0x1
   217a8:	0007879b          	sext.w	a5,a5
   217ac:	0157979b          	slliw	a5,a5,0x15
   217b0:	0007879b          	sext.w	a5,a5
   217b4:	00078713          	mv	a4,a5
   217b8:	7fe007b7          	lui	a5,0x7fe00
   217bc:	00f777b3          	and	a5,a4,a5
   217c0:	0007871b          	sext.w	a4,a5
   217c4:	fe442783          	lw	a5,-28(s0)
   217c8:	00e7e7b3          	or	a5,a5,a4
   217cc:	fef42223          	sw	a5,-28(s0)
   217d0:	fd842783          	lw	a5,-40(s0)
   217d4:	0147d79b          	srliw	a5,a5,0x14
   217d8:	0007879b          	sext.w	a5,a5
   217dc:	01f7979b          	slliw	a5,a5,0x1f
   217e0:	0007871b          	sext.w	a4,a5
   217e4:	fe442783          	lw	a5,-28(s0)
   217e8:	00e7e7b3          	or	a5,a5,a4
   217ec:	fef42223          	sw	a5,-28(s0)
   217f0:	0080006f          	j	217f8 <inst2int+0x694>
   217f4:	00000013          	nop
   217f8:	fe442783          	lw	a5,-28(s0)
   217fc:	00078513          	mv	a0,a5
   21800:	03813083          	ld	ra,56(sp)
   21804:	03013403          	ld	s0,48(sp)
   21808:	04010113          	addi	sp,sp,64
   2180c:	00008067          	ret

0000000000021810 <inst_exe>:
   21810:	fd010113          	addi	sp,sp,-48
   21814:	02113423          	sd	ra,40(sp)
   21818:	02813023          	sd	s0,32(sp)
   2181c:	03010413          	addi	s0,sp,48
   21820:	86018513          	addi	a0,gp,-1952 # 22a30 <buffer>
   21824:	d84ff0ef          	jal	ra,20da8 <next_word>
   21828:	fea43023          	sd	a0,-32(s0)
   2182c:	fe043783          	ld	a5,-32(s0)
   21830:	0007c783          	lbu	a5,0(a5) # 7fe00000 <__global_pointer$+0x7fddce30>
   21834:	08078463          	beqz	a5,218bc <inst_exe+0xac>
   21838:	fe043783          	ld	a5,-32(s0)
   2183c:	00178793          	addi	a5,a5,1
   21840:	0007c783          	lbu	a5,0(a5)
   21844:	06078c63          	beqz	a5,218bc <inst_exe+0xac>
   21848:	fe043503          	ld	a0,-32(s0)
   2184c:	ee9fe0ef          	jal	ra,20734 <str2hex>
   21850:	00050793          	mv	a5,a0
   21854:	fef42623          	sw	a5,-20(s0)
   21858:	000237b7          	lui	a5,0x23
   2185c:	8d878513          	addi	a0,a5,-1832 # 228d8 <INST_CONFIG+0x5f8>
   21860:	b19fe0ef          	jal	ra,20378 <print>
   21864:	fec42783          	lw	a5,-20(s0)
   21868:	00078513          	mv	a0,a5
   2186c:	e0dfe0ef          	jal	ra,20678 <print_hex>
   21870:	000237b7          	lui	a5,0x23
   21874:	8e078513          	addi	a0,a5,-1824 # 228e0 <INST_CONFIG+0x600>
   21878:	b01fe0ef          	jal	ra,20378 <print>
   2187c:	c39fe0ef          	jal	ra,204b4 <get_line>
   21880:	86018513          	addi	a0,gp,-1952 # 22a30 <buffer>
   21884:	8e1ff0ef          	jal	ra,21164 <inst2int>
   21888:	00050793          	mv	a5,a0
   2188c:	fcf42e23          	sw	a5,-36(s0)
   21890:	fdc42783          	lw	a5,-36(s0)
   21894:	0007879b          	sext.w	a5,a5
   21898:	02078663          	beqz	a5,218c4 <inst_exe+0xb4>
   2189c:	fec46783          	lwu	a5,-20(s0)
   218a0:	00078713          	mv	a4,a5
   218a4:	fdc42783          	lw	a5,-36(s0)
   218a8:	00f72023          	sw	a5,0(a4)
   218ac:	fec42783          	lw	a5,-20(s0)
   218b0:	0047879b          	addiw	a5,a5,4
   218b4:	fef42623          	sw	a5,-20(s0)
   218b8:	fa1ff06f          	j	21858 <inst_exe+0x48>
   218bc:	00000013          	nop
   218c0:	0080006f          	j	218c8 <inst_exe+0xb8>
   218c4:	00000013          	nop
   218c8:	02813083          	ld	ra,40(sp)
   218cc:	02013403          	ld	s0,32(sp)
   218d0:	03010113          	addi	sp,sp,48
   218d4:	00008067          	ret

00000000000218d8 <view_exe>:
   218d8:	fd010113          	addi	sp,sp,-48
   218dc:	02113423          	sd	ra,40(sp)
   218e0:	02813023          	sd	s0,32(sp)
   218e4:	03010413          	addi	s0,sp,48
   218e8:	86018513          	addi	a0,gp,-1952 # 22a30 <buffer>
   218ec:	cbcff0ef          	jal	ra,20da8 <next_word>
   218f0:	fea43023          	sd	a0,-32(s0)
   218f4:	fe043783          	ld	a5,-32(s0)
   218f8:	0007c783          	lbu	a5,0(a5)
   218fc:	0c078463          	beqz	a5,219c4 <view_exe+0xec>
   21900:	fe043783          	ld	a5,-32(s0)
   21904:	00178793          	addi	a5,a5,1
   21908:	0007c783          	lbu	a5,0(a5)
   2190c:	0a078c63          	beqz	a5,219c4 <view_exe+0xec>
   21910:	fe043503          	ld	a0,-32(s0)
   21914:	e21fe0ef          	jal	ra,20734 <str2hex>
   21918:	00050793          	mv	a5,a0
   2191c:	fef42623          	sw	a5,-20(s0)
   21920:	fe043503          	ld	a0,-32(s0)
   21924:	c84ff0ef          	jal	ra,20da8 <next_word>
   21928:	fea43023          	sd	a0,-32(s0)
   2192c:	fe043783          	ld	a5,-32(s0)
   21930:	0007c783          	lbu	a5,0(a5)
   21934:	08078c63          	beqz	a5,219cc <view_exe+0xf4>
   21938:	fe043783          	ld	a5,-32(s0)
   2193c:	00178793          	addi	a5,a5,1
   21940:	0007c783          	lbu	a5,0(a5)
   21944:	08078463          	beqz	a5,219cc <view_exe+0xf4>
   21948:	fe043503          	ld	a0,-32(s0)
   2194c:	de9fe0ef          	jal	ra,20734 <str2hex>
   21950:	00050793          	mv	a5,a0
   21954:	fef42423          	sw	a5,-24(s0)
   21958:	0580006f          	j	219b0 <view_exe+0xd8>
   2195c:	000237b7          	lui	a5,0x23
   21960:	8d878513          	addi	a0,a5,-1832 # 228d8 <INST_CONFIG+0x5f8>
   21964:	a15fe0ef          	jal	ra,20378 <print>
   21968:	fec42783          	lw	a5,-20(s0)
   2196c:	00078513          	mv	a0,a5
   21970:	d09fe0ef          	jal	ra,20678 <print_hex>
   21974:	000237b7          	lui	a5,0x23
   21978:	8e078513          	addi	a0,a5,-1824 # 228e0 <INST_CONFIG+0x600>
   2197c:	9fdfe0ef          	jal	ra,20378 <print>
   21980:	fec46783          	lwu	a5,-20(s0)
   21984:	0007a783          	lw	a5,0(a5)
   21988:	fcf42e23          	sw	a5,-36(s0)
   2198c:	fdc42783          	lw	a5,-36(s0)
   21990:	00078513          	mv	a0,a5
   21994:	ce5fe0ef          	jal	ra,20678 <print_hex>
   21998:	000227b7          	lui	a5,0x22
   2199c:	74878513          	addi	a0,a5,1864 # 22748 <INST_CONFIG+0x468>
   219a0:	9d9fe0ef          	jal	ra,20378 <print>
   219a4:	fec42783          	lw	a5,-20(s0)
   219a8:	0047879b          	addiw	a5,a5,4
   219ac:	fef42623          	sw	a5,-20(s0)
   219b0:	fe842783          	lw	a5,-24(s0)
   219b4:	fff7871b          	addiw	a4,a5,-1
   219b8:	fee42423          	sw	a4,-24(s0)
   219bc:	fa0790e3          	bnez	a5,2195c <view_exe+0x84>
   219c0:	0100006f          	j	219d0 <view_exe+0xf8>
   219c4:	00000013          	nop
   219c8:	0080006f          	j	219d0 <view_exe+0xf8>
   219cc:	00000013          	nop
   219d0:	02813083          	ld	ra,40(sp)
   219d4:	02013403          	ld	s0,32(sp)
   219d8:	03010113          	addi	sp,sp,48
   219dc:	00008067          	ret

00000000000219e0 <print_int2inst>:
   219e0:	fd010113          	addi	sp,sp,-48
   219e4:	02113423          	sd	ra,40(sp)
   219e8:	02813023          	sd	s0,32(sp)
   219ec:	03010413          	addi	s0,sp,48
   219f0:	00050793          	mv	a5,a0
   219f4:	fcf42e23          	sw	a5,-36(s0)
   219f8:	fe042623          	sw	zero,-20(s0)
   219fc:	1440006f          	j	21b40 <print_int2inst+0x160>
   21a00:	000227b7          	lui	a5,0x22
   21a04:	fec42703          	lw	a4,-20(s0)
   21a08:	00471713          	slli	a4,a4,0x4
   21a0c:	2e078793          	addi	a5,a5,736 # 222e0 <INST_CONFIG>
   21a10:	00f707b3          	add	a5,a4,a5
   21a14:	0047a703          	lw	a4,4(a5)
   21a18:	fdc42783          	lw	a5,-36(s0)
   21a1c:	07f7f793          	andi	a5,a5,127
   21a20:	0007879b          	sext.w	a5,a5
   21a24:	0ef71e63          	bne	a4,a5,21b20 <print_int2inst+0x140>
   21a28:	000227b7          	lui	a5,0x22
   21a2c:	fec42703          	lw	a4,-20(s0)
   21a30:	00471713          	slli	a4,a4,0x4
   21a34:	2e078793          	addi	a5,a5,736 # 222e0 <INST_CONFIG>
   21a38:	00f707b3          	add	a5,a4,a5
   21a3c:	0007a783          	lw	a5,0(a5)
   21a40:	fef42423          	sw	a5,-24(s0)
   21a44:	fe842783          	lw	a5,-24(s0)
   21a48:	0007879b          	sext.w	a5,a5
   21a4c:	02079663          	bnez	a5,21a78 <print_int2inst+0x98>
   21a50:	000227b7          	lui	a5,0x22
   21a54:	fec42703          	lw	a4,-20(s0)
   21a58:	00471713          	slli	a4,a4,0x4
   21a5c:	2e078793          	addi	a5,a5,736 # 222e0 <INST_CONFIG>
   21a60:	00f707b3          	add	a5,a4,a5
   21a64:	00c7a703          	lw	a4,12(a5)
   21a68:	fdc42783          	lw	a5,-36(s0)
   21a6c:	0197d79b          	srliw	a5,a5,0x19
   21a70:	0007879b          	sext.w	a5,a5
   21a74:	0af71a63          	bne	a4,a5,21b28 <print_int2inst+0x148>
   21a78:	fe842783          	lw	a5,-24(s0)
   21a7c:	0007879b          	sext.w	a5,a5
   21a80:	02078a63          	beqz	a5,21ab4 <print_int2inst+0xd4>
   21a84:	fe842783          	lw	a5,-24(s0)
   21a88:	0007871b          	sext.w	a4,a5
   21a8c:	00100793          	li	a5,1
   21a90:	02f70263          	beq	a4,a5,21ab4 <print_int2inst+0xd4>
   21a94:	fe842783          	lw	a5,-24(s0)
   21a98:	0007871b          	sext.w	a4,a5
   21a9c:	00200793          	li	a5,2
   21aa0:	00f70a63          	beq	a4,a5,21ab4 <print_int2inst+0xd4>
   21aa4:	fe842783          	lw	a5,-24(s0)
   21aa8:	0007871b          	sext.w	a4,a5
   21aac:	00300793          	li	a5,3
   21ab0:	02f71a63          	bne	a4,a5,21ae4 <print_int2inst+0x104>
   21ab4:	000227b7          	lui	a5,0x22
   21ab8:	fec42703          	lw	a4,-20(s0)
   21abc:	00471713          	slli	a4,a4,0x4
   21ac0:	2e078793          	addi	a5,a5,736 # 222e0 <INST_CONFIG>
   21ac4:	00f707b3          	add	a5,a4,a5
   21ac8:	0087a703          	lw	a4,8(a5)
   21acc:	fdc42783          	lw	a5,-36(s0)
   21ad0:	00c7d79b          	srliw	a5,a5,0xc
   21ad4:	0007879b          	sext.w	a5,a5
   21ad8:	0077f793          	andi	a5,a5,7
   21adc:	0007879b          	sext.w	a5,a5
   21ae0:	04f71863          	bne	a4,a5,21b30 <print_int2inst+0x150>
   21ae4:	fe842783          	lw	a5,-24(s0)
   21ae8:	0007871b          	sext.w	a4,a5
   21aec:	00600793          	li	a5,6
   21af0:	06f71263          	bne	a4,a5,21b54 <print_int2inst+0x174>
   21af4:	000227b7          	lui	a5,0x22
   21af8:	fec42703          	lw	a4,-20(s0)
   21afc:	00471713          	slli	a4,a4,0x4
   21b00:	2e078793          	addi	a5,a5,736 # 222e0 <INST_CONFIG>
   21b04:	00f707b3          	add	a5,a4,a5
   21b08:	0087a703          	lw	a4,8(a5)
   21b0c:	fdc42783          	lw	a5,-36(s0)
   21b10:	0077d79b          	srliw	a5,a5,0x7
   21b14:	0007879b          	sext.w	a5,a5
   21b18:	02f70e63          	beq	a4,a5,21b54 <print_int2inst+0x174>
   21b1c:	0180006f          	j	21b34 <print_int2inst+0x154>
   21b20:	00000013          	nop
   21b24:	0100006f          	j	21b34 <print_int2inst+0x154>
   21b28:	00000013          	nop
   21b2c:	0080006f          	j	21b34 <print_int2inst+0x154>
   21b30:	00000013          	nop
   21b34:	fec42783          	lw	a5,-20(s0)
   21b38:	0017879b          	addiw	a5,a5,1
   21b3c:	fef42623          	sw	a5,-20(s0)
   21b40:	fec42783          	lw	a5,-20(s0)
   21b44:	0007871b          	sext.w	a4,a5
   21b48:	02500793          	li	a5,37
   21b4c:	eae7dae3          	bge	a5,a4,21a00 <print_int2inst+0x20>
   21b50:	0080006f          	j	21b58 <print_int2inst+0x178>
   21b54:	00000013          	nop
   21b58:	fec42783          	lw	a5,-20(s0)
   21b5c:	0007871b          	sext.w	a4,a5
   21b60:	02600793          	li	a5,38
   21b64:	00f71a63          	bne	a4,a5,21b78 <print_int2inst+0x198>
   21b68:	000237b7          	lui	a5,0x23
   21b6c:	90078513          	addi	a0,a5,-1792 # 22900 <INST_CONFIG+0x620>
   21b70:	809fe0ef          	jal	ra,20378 <print>
   21b74:	3400006f          	j	21eb4 <print_int2inst+0x4d4>
   21b78:	fec42703          	lw	a4,-20(s0)
   21b7c:	00070793          	mv	a5,a4
   21b80:	00379793          	slli	a5,a5,0x3
   21b84:	40e787b3          	sub	a5,a5,a4
   21b88:	00022737          	lui	a4,0x22
   21b8c:	1d070713          	addi	a4,a4,464 # 221d0 <INST_NAMES>
   21b90:	00e787b3          	add	a5,a5,a4
   21b94:	00078513          	mv	a0,a5
   21b98:	fe0fe0ef          	jal	ra,20378 <print>
   21b9c:	fe842783          	lw	a5,-24(s0)
   21ba0:	0007879b          	sext.w	a5,a5
   21ba4:	02078a63          	beqz	a5,21bd8 <print_int2inst+0x1f8>
   21ba8:	fe842783          	lw	a5,-24(s0)
   21bac:	0007871b          	sext.w	a4,a5
   21bb0:	00100793          	li	a5,1
   21bb4:	02f70263          	beq	a4,a5,21bd8 <print_int2inst+0x1f8>
   21bb8:	fe842783          	lw	a5,-24(s0)
   21bbc:	0007871b          	sext.w	a4,a5
   21bc0:	00400793          	li	a5,4
   21bc4:	00f70a63          	beq	a4,a5,21bd8 <print_int2inst+0x1f8>
   21bc8:	fe842783          	lw	a5,-24(s0)
   21bcc:	0007871b          	sext.w	a4,a5
   21bd0:	00500793          	li	a5,5
   21bd4:	02f71663          	bne	a4,a5,21c00 <print_int2inst+0x220>
   21bd8:	000237b7          	lui	a5,0x23
   21bdc:	91078513          	addi	a0,a5,-1776 # 22910 <INST_CONFIG+0x630>
   21be0:	f98fe0ef          	jal	ra,20378 <print>
   21be4:	fdc42783          	lw	a5,-36(s0)
   21be8:	0077d79b          	srliw	a5,a5,0x7
   21bec:	0007879b          	sext.w	a5,a5
   21bf0:	01f7f793          	andi	a5,a5,31
   21bf4:	0007879b          	sext.w	a5,a5
   21bf8:	00078513          	mv	a0,a5
   21bfc:	a7dfe0ef          	jal	ra,20678 <print_hex>
   21c00:	fe842783          	lw	a5,-24(s0)
   21c04:	0007879b          	sext.w	a5,a5
   21c08:	02078a63          	beqz	a5,21c3c <print_int2inst+0x25c>
   21c0c:	fe842783          	lw	a5,-24(s0)
   21c10:	0007871b          	sext.w	a4,a5
   21c14:	00100793          	li	a5,1
   21c18:	02f70263          	beq	a4,a5,21c3c <print_int2inst+0x25c>
   21c1c:	fe842783          	lw	a5,-24(s0)
   21c20:	0007871b          	sext.w	a4,a5
   21c24:	00200793          	li	a5,2
   21c28:	00f70a63          	beq	a4,a5,21c3c <print_int2inst+0x25c>
   21c2c:	fe842783          	lw	a5,-24(s0)
   21c30:	0007871b          	sext.w	a4,a5
   21c34:	00300793          	li	a5,3
   21c38:	02f71663          	bne	a4,a5,21c64 <print_int2inst+0x284>
   21c3c:	000237b7          	lui	a5,0x23
   21c40:	91078513          	addi	a0,a5,-1776 # 22910 <INST_CONFIG+0x630>
   21c44:	f34fe0ef          	jal	ra,20378 <print>
   21c48:	fdc42783          	lw	a5,-36(s0)
   21c4c:	00f7d79b          	srliw	a5,a5,0xf
   21c50:	0007879b          	sext.w	a5,a5
   21c54:	01f7f793          	andi	a5,a5,31
   21c58:	0007879b          	sext.w	a5,a5
   21c5c:	00078513          	mv	a0,a5
   21c60:	a19fe0ef          	jal	ra,20678 <print_hex>
   21c64:	fe842783          	lw	a5,-24(s0)
   21c68:	0007879b          	sext.w	a5,a5
   21c6c:	02078263          	beqz	a5,21c90 <print_int2inst+0x2b0>
   21c70:	fe842783          	lw	a5,-24(s0)
   21c74:	0007871b          	sext.w	a4,a5
   21c78:	00200793          	li	a5,2
   21c7c:	00f70a63          	beq	a4,a5,21c90 <print_int2inst+0x2b0>
   21c80:	fe842783          	lw	a5,-24(s0)
   21c84:	0007871b          	sext.w	a4,a5
   21c88:	00300793          	li	a5,3
   21c8c:	02f71663          	bne	a4,a5,21cb8 <print_int2inst+0x2d8>
   21c90:	000237b7          	lui	a5,0x23
   21c94:	91078513          	addi	a0,a5,-1776 # 22910 <INST_CONFIG+0x630>
   21c98:	ee0fe0ef          	jal	ra,20378 <print>
   21c9c:	fdc42783          	lw	a5,-36(s0)
   21ca0:	0147d79b          	srliw	a5,a5,0x14
   21ca4:	0007879b          	sext.w	a5,a5
   21ca8:	01f7f793          	andi	a5,a5,31
   21cac:	0007879b          	sext.w	a5,a5
   21cb0:	00078513          	mv	a0,a5
   21cb4:	9c5fe0ef          	jal	ra,20678 <print_hex>
   21cb8:	fe042223          	sw	zero,-28(s0)
   21cbc:	fe842783          	lw	a5,-24(s0)
   21cc0:	0007879b          	sext.w	a5,a5
   21cc4:	1e078863          	beqz	a5,21eb4 <print_int2inst+0x4d4>
   21cc8:	fe842783          	lw	a5,-24(s0)
   21ccc:	0007871b          	sext.w	a4,a5
   21cd0:	00600793          	li	a5,6
   21cd4:	1ef70063          	beq	a4,a5,21eb4 <print_int2inst+0x4d4>
   21cd8:	fe842783          	lw	a5,-24(s0)
   21cdc:	0007871b          	sext.w	a4,a5
   21ce0:	00500793          	li	a5,5
   21ce4:	1ae7ec63          	bltu	a5,a4,21e9c <print_int2inst+0x4bc>
   21ce8:	fe846783          	lwu	a5,-24(s0)
   21cec:	00279713          	slli	a4,a5,0x2
   21cf0:	000237b7          	lui	a5,0x23
   21cf4:	91478793          	addi	a5,a5,-1772 # 22914 <INST_CONFIG+0x634>
   21cf8:	00f707b3          	add	a5,a4,a5
   21cfc:	0007a783          	lw	a5,0(a5)
   21d00:	00078067          	jr	a5
   21d04:	fdc42783          	lw	a5,-36(s0)
   21d08:	0147d79b          	srliw	a5,a5,0x14
   21d0c:	fef42223          	sw	a5,-28(s0)
   21d10:	18c0006f          	j	21e9c <print_int2inst+0x4bc>
   21d14:	fdc42783          	lw	a5,-36(s0)
   21d18:	0077d79b          	srliw	a5,a5,0x7
   21d1c:	0007879b          	sext.w	a5,a5
   21d20:	01f7f793          	andi	a5,a5,31
   21d24:	0007871b          	sext.w	a4,a5
   21d28:	fdc42783          	lw	a5,-36(s0)
   21d2c:	0197d79b          	srliw	a5,a5,0x19
   21d30:	0007879b          	sext.w	a5,a5
   21d34:	0057979b          	slliw	a5,a5,0x5
   21d38:	0007879b          	sext.w	a5,a5
   21d3c:	00f767b3          	or	a5,a4,a5
   21d40:	fef42223          	sw	a5,-28(s0)
   21d44:	1580006f          	j	21e9c <print_int2inst+0x4bc>
   21d48:	fdc42783          	lw	a5,-36(s0)
   21d4c:	0077d79b          	srliw	a5,a5,0x7
   21d50:	0007879b          	sext.w	a5,a5
   21d54:	00b7979b          	slliw	a5,a5,0xb
   21d58:	0007879b          	sext.w	a5,a5
   21d5c:	00078713          	mv	a4,a5
   21d60:	000017b7          	lui	a5,0x1
   21d64:	80078793          	addi	a5,a5,-2048 # 800 <_start-0x1f800>
   21d68:	00f777b3          	and	a5,a4,a5
   21d6c:	0007871b          	sext.w	a4,a5
   21d70:	fe442783          	lw	a5,-28(s0)
   21d74:	00e7e7b3          	or	a5,a5,a4
   21d78:	fef42223          	sw	a5,-28(s0)
   21d7c:	fdc42783          	lw	a5,-36(s0)
   21d80:	0087d79b          	srliw	a5,a5,0x8
   21d84:	0007879b          	sext.w	a5,a5
   21d88:	0017979b          	slliw	a5,a5,0x1
   21d8c:	0007879b          	sext.w	a5,a5
   21d90:	01e7f793          	andi	a5,a5,30
   21d94:	0007871b          	sext.w	a4,a5
   21d98:	fe442783          	lw	a5,-28(s0)
   21d9c:	00e7e7b3          	or	a5,a5,a4
   21da0:	fef42223          	sw	a5,-28(s0)
   21da4:	fdc42783          	lw	a5,-36(s0)
   21da8:	0197d79b          	srliw	a5,a5,0x19
   21dac:	0007879b          	sext.w	a5,a5
   21db0:	0057979b          	slliw	a5,a5,0x5
   21db4:	0007879b          	sext.w	a5,a5
   21db8:	7e07f793          	andi	a5,a5,2016
   21dbc:	0007871b          	sext.w	a4,a5
   21dc0:	fe442783          	lw	a5,-28(s0)
   21dc4:	00e7e7b3          	or	a5,a5,a4
   21dc8:	fef42223          	sw	a5,-28(s0)
   21dcc:	fdc42783          	lw	a5,-36(s0)
   21dd0:	01f7d79b          	srliw	a5,a5,0x1f
   21dd4:	0007879b          	sext.w	a5,a5
   21dd8:	00c7979b          	slliw	a5,a5,0xc
   21ddc:	0007871b          	sext.w	a4,a5
   21de0:	fe442783          	lw	a5,-28(s0)
   21de4:	00e7e7b3          	or	a5,a5,a4
   21de8:	fef42223          	sw	a5,-28(s0)
   21dec:	0b00006f          	j	21e9c <print_int2inst+0x4bc>
   21df0:	fdc42703          	lw	a4,-36(s0)
   21df4:	fffff7b7          	lui	a5,0xfffff
   21df8:	00f777b3          	and	a5,a4,a5
   21dfc:	fef42223          	sw	a5,-28(s0)
   21e00:	09c0006f          	j	21e9c <print_int2inst+0x4bc>
   21e04:	fdc42703          	lw	a4,-36(s0)
   21e08:	000ff7b7          	lui	a5,0xff
   21e0c:	00f777b3          	and	a5,a4,a5
   21e10:	0007871b          	sext.w	a4,a5
   21e14:	fe442783          	lw	a5,-28(s0)
   21e18:	00e7e7b3          	or	a5,a5,a4
   21e1c:	fef42223          	sw	a5,-28(s0)
   21e20:	fdc42783          	lw	a5,-36(s0)
   21e24:	0147d79b          	srliw	a5,a5,0x14
   21e28:	0007879b          	sext.w	a5,a5
   21e2c:	00b7979b          	slliw	a5,a5,0xb
   21e30:	0007879b          	sext.w	a5,a5
   21e34:	00078713          	mv	a4,a5
   21e38:	000017b7          	lui	a5,0x1
   21e3c:	80078793          	addi	a5,a5,-2048 # 800 <_start-0x1f800>
   21e40:	00f777b3          	and	a5,a4,a5
   21e44:	0007871b          	sext.w	a4,a5
   21e48:	fe442783          	lw	a5,-28(s0)
   21e4c:	00e7e7b3          	or	a5,a5,a4
   21e50:	fef42223          	sw	a5,-28(s0)
   21e54:	fdc42783          	lw	a5,-36(s0)
   21e58:	0157d79b          	srliw	a5,a5,0x15
   21e5c:	0007879b          	sext.w	a5,a5
   21e60:	0017979b          	slliw	a5,a5,0x1
   21e64:	0007879b          	sext.w	a5,a5
   21e68:	7fe7f793          	andi	a5,a5,2046
   21e6c:	0007871b          	sext.w	a4,a5
   21e70:	fe442783          	lw	a5,-28(s0)
   21e74:	00e7e7b3          	or	a5,a5,a4
   21e78:	fef42223          	sw	a5,-28(s0)
   21e7c:	fdc42783          	lw	a5,-36(s0)
   21e80:	01f7d79b          	srliw	a5,a5,0x1f
   21e84:	0007879b          	sext.w	a5,a5
   21e88:	0147979b          	slliw	a5,a5,0x14
   21e8c:	0007871b          	sext.w	a4,a5
   21e90:	fe442783          	lw	a5,-28(s0)
   21e94:	00e7e7b3          	or	a5,a5,a4
   21e98:	fef42223          	sw	a5,-28(s0)
   21e9c:	000237b7          	lui	a5,0x23
   21ea0:	91078513          	addi	a0,a5,-1776 # 22910 <INST_CONFIG+0x630>
   21ea4:	cd4fe0ef          	jal	ra,20378 <print>
   21ea8:	fe442783          	lw	a5,-28(s0)
   21eac:	00078513          	mv	a0,a5
   21eb0:	fc8fe0ef          	jal	ra,20678 <print_hex>
   21eb4:	02813083          	ld	ra,40(sp)
   21eb8:	02013403          	ld	s0,32(sp)
   21ebc:	03010113          	addi	sp,sp,48
   21ec0:	00008067          	ret

0000000000021ec4 <timelim_exe>:
   21ec4:	fe010113          	addi	sp,sp,-32
   21ec8:	00113c23          	sd	ra,24(sp)
   21ecc:	00813823          	sd	s0,16(sp)
   21ed0:	02010413          	addi	s0,sp,32
   21ed4:	86018513          	addi	a0,gp,-1952 # 22a30 <buffer>
   21ed8:	ed1fe0ef          	jal	ra,20da8 <next_word>
   21edc:	fea43423          	sd	a0,-24(s0)
   21ee0:	fe843783          	ld	a5,-24(s0)
   21ee4:	0007c783          	lbu	a5,0(a5)
   21ee8:	00078a63          	beqz	a5,21efc <timelim_exe+0x38>
   21eec:	fe843783          	ld	a5,-24(s0)
   21ef0:	00178793          	addi	a5,a5,1
   21ef4:	0007c783          	lbu	a5,0(a5)
   21ef8:	02079863          	bnez	a5,21f28 <timelim_exe+0x64>
   21efc:	000237b7          	lui	a5,0x23
   21f00:	8b078513          	addi	a0,a5,-1872 # 228b0 <INST_CONFIG+0x5d0>
   21f04:	c74fe0ef          	jal	ra,20378 <print>
   21f08:	000237b7          	lui	a5,0x23
   21f0c:	9dc7a783          	lw	a5,-1572(a5) # 229dc <time_lim>
   21f10:	00078513          	mv	a0,a5
   21f14:	f64fe0ef          	jal	ra,20678 <print_hex>
   21f18:	000237b7          	lui	a5,0x23
   21f1c:	8a878513          	addi	a0,a5,-1880 # 228a8 <INST_CONFIG+0x5c8>
   21f20:	c58fe0ef          	jal	ra,20378 <print>
   21f24:	01c0006f          	j	21f40 <timelim_exe+0x7c>
   21f28:	fe843503          	ld	a0,-24(s0)
   21f2c:	809fe0ef          	jal	ra,20734 <str2hex>
   21f30:	00050793          	mv	a5,a0
   21f34:	0007871b          	sext.w	a4,a5
   21f38:	000237b7          	lui	a5,0x23
   21f3c:	9ce7ae23          	sw	a4,-1572(a5) # 229dc <time_lim>
   21f40:	00000013          	nop
   21f44:	01813083          	ld	ra,24(sp)
   21f48:	01013403          	ld	s0,16(sp)
   21f4c:	02010113          	addi	sp,sp,32
   21f50:	00008067          	ret

0000000000021f54 <disas_exe>:
   21f54:	fd010113          	addi	sp,sp,-48
   21f58:	02113423          	sd	ra,40(sp)
   21f5c:	02813023          	sd	s0,32(sp)
   21f60:	03010413          	addi	s0,sp,48
   21f64:	86018513          	addi	a0,gp,-1952 # 22a30 <buffer>
   21f68:	e41fe0ef          	jal	ra,20da8 <next_word>
   21f6c:	fea43023          	sd	a0,-32(s0)
   21f70:	fe043783          	ld	a5,-32(s0)
   21f74:	0007c783          	lbu	a5,0(a5)
   21f78:	0c078463          	beqz	a5,22040 <disas_exe+0xec>
   21f7c:	fe043783          	ld	a5,-32(s0)
   21f80:	00178793          	addi	a5,a5,1
   21f84:	0007c783          	lbu	a5,0(a5)
   21f88:	0a078c63          	beqz	a5,22040 <disas_exe+0xec>
   21f8c:	fe043503          	ld	a0,-32(s0)
   21f90:	fa4fe0ef          	jal	ra,20734 <str2hex>
   21f94:	00050793          	mv	a5,a0
   21f98:	fef42623          	sw	a5,-20(s0)
   21f9c:	fe043503          	ld	a0,-32(s0)
   21fa0:	e09fe0ef          	jal	ra,20da8 <next_word>
   21fa4:	fea43023          	sd	a0,-32(s0)
   21fa8:	fe043783          	ld	a5,-32(s0)
   21fac:	0007c783          	lbu	a5,0(a5)
   21fb0:	08078c63          	beqz	a5,22048 <disas_exe+0xf4>
   21fb4:	fe043783          	ld	a5,-32(s0)
   21fb8:	00178793          	addi	a5,a5,1
   21fbc:	0007c783          	lbu	a5,0(a5)
   21fc0:	08078463          	beqz	a5,22048 <disas_exe+0xf4>
   21fc4:	fe043503          	ld	a0,-32(s0)
   21fc8:	f6cfe0ef          	jal	ra,20734 <str2hex>
   21fcc:	00050793          	mv	a5,a0
   21fd0:	fef42423          	sw	a5,-24(s0)
   21fd4:	0580006f          	j	2202c <disas_exe+0xd8>
   21fd8:	000237b7          	lui	a5,0x23
   21fdc:	8d878513          	addi	a0,a5,-1832 # 228d8 <INST_CONFIG+0x5f8>
   21fe0:	b98fe0ef          	jal	ra,20378 <print>
   21fe4:	fec42783          	lw	a5,-20(s0)
   21fe8:	00078513          	mv	a0,a5
   21fec:	e8cfe0ef          	jal	ra,20678 <print_hex>
   21ff0:	000237b7          	lui	a5,0x23
   21ff4:	8e078513          	addi	a0,a5,-1824 # 228e0 <INST_CONFIG+0x600>
   21ff8:	b80fe0ef          	jal	ra,20378 <print>
   21ffc:	fec46783          	lwu	a5,-20(s0)
   22000:	0007a783          	lw	a5,0(a5)
   22004:	fcf42e23          	sw	a5,-36(s0)
   22008:	fdc42783          	lw	a5,-36(s0)
   2200c:	00078513          	mv	a0,a5
   22010:	9d1ff0ef          	jal	ra,219e0 <print_int2inst>
   22014:	000227b7          	lui	a5,0x22
   22018:	74878513          	addi	a0,a5,1864 # 22748 <INST_CONFIG+0x468>
   2201c:	b5cfe0ef          	jal	ra,20378 <print>
   22020:	fec42783          	lw	a5,-20(s0)
   22024:	0047879b          	addiw	a5,a5,4
   22028:	fef42623          	sw	a5,-20(s0)
   2202c:	fe842783          	lw	a5,-24(s0)
   22030:	fff7871b          	addiw	a4,a5,-1
   22034:	fee42423          	sw	a4,-24(s0)
   22038:	fa0790e3          	bnez	a5,21fd8 <disas_exe+0x84>
   2203c:	0100006f          	j	2204c <disas_exe+0xf8>
   22040:	00000013          	nop
   22044:	0080006f          	j	2204c <disas_exe+0xf8>
   22048:	00000013          	nop
   2204c:	02813083          	ld	ra,40(sp)
   22050:	02013403          	ld	s0,32(sp)
   22054:	03010113          	addi	sp,sp,48
   22058:	00008067          	ret

000000000002205c <start>:
   2205c:	ff010113          	addi	sp,sp,-16
   22060:	00113423          	sd	ra,8(sp)
   22064:	00813023          	sd	s0,0(sp)
   22068:	01010413          	addi	s0,sp,16
   2206c:	000237b7          	lui	a5,0x23
   22070:	93078513          	addi	a0,a5,-1744 # 22930 <INST_CONFIG+0x650>
   22074:	b04fe0ef          	jal	ra,20378 <print>
   22078:	000237b7          	lui	a5,0x23
   2207c:	95078513          	addi	a0,a5,-1712 # 22950 <INST_CONFIG+0x670>
   22080:	af8fe0ef          	jal	ra,20378 <print>
   22084:	000237b7          	lui	a5,0x23
   22088:	96078513          	addi	a0,a5,-1696 # 22960 <INST_CONFIG+0x680>
   2208c:	aecfe0ef          	jal	ra,20378 <print>
   22090:	000237b7          	lui	a5,0x23
   22094:	97078513          	addi	a0,a5,-1680 # 22970 <INST_CONFIG+0x690>
   22098:	ae0fe0ef          	jal	ra,20378 <print>
   2209c:	000237b7          	lui	a5,0x23
   220a0:	98078513          	addi	a0,a5,-1664 # 22980 <INST_CONFIG+0x6a0>
   220a4:	ad4fe0ef          	jal	ra,20378 <print>
   220a8:	000237b7          	lui	a5,0x23
   220ac:	98878513          	addi	a0,a5,-1656 # 22988 <INST_CONFIG+0x6a8>
   220b0:	ac8fe0ef          	jal	ra,20378 <print>
   220b4:	000237b7          	lui	a5,0x23
   220b8:	98078513          	addi	a0,a5,-1664 # 22980 <INST_CONFIG+0x6a0>
   220bc:	abcfe0ef          	jal	ra,20378 <print>
   220c0:	000237b7          	lui	a5,0x23
   220c4:	9a078513          	addi	a0,a5,-1632 # 229a0 <INST_CONFIG+0x6c0>
   220c8:	ab0fe0ef          	jal	ra,20378 <print>
   220cc:	000237b7          	lui	a5,0x23
   220d0:	98078513          	addi	a0,a5,-1664 # 22980 <INST_CONFIG+0x6a0>
   220d4:	aa4fe0ef          	jal	ra,20378 <print>
   220d8:	000237b7          	lui	a5,0x23
   220dc:	9b078513          	addi	a0,a5,-1616 # 229b0 <INST_CONFIG+0x6d0>
   220e0:	a98fe0ef          	jal	ra,20378 <print>
   220e4:	000237b7          	lui	a5,0x23
   220e8:	98078513          	addi	a0,a5,-1664 # 22980 <INST_CONFIG+0x6a0>
   220ec:	a8cfe0ef          	jal	ra,20378 <print>
   220f0:	be1fe0ef          	jal	ra,20cd0 <init>
   220f4:	000237b7          	lui	a5,0x23
   220f8:	9c078513          	addi	a0,a5,-1600 # 229c0 <INST_CONFIG+0x6e0>
   220fc:	a7cfe0ef          	jal	ra,20378 <print>
   22100:	bb4fe0ef          	jal	ra,204b4 <get_line>
   22104:	8601c783          	lbu	a5,-1952(gp) # 22a30 <buffer>
   22108:	0007879b          	sext.w	a5,a5
   2210c:	00078693          	mv	a3,a5
   22110:	04900713          	li	a4,73
   22114:	08e68663          	beq	a3,a4,221a0 <start+0x144>
   22118:	00078693          	mv	a3,a5
   2211c:	04900713          	li	a4,73
   22120:	02d74263          	blt	a4,a3,22144 <start+0xe8>
   22124:	00078693          	mv	a3,a5
   22128:	04400713          	li	a4,68
   2212c:	08e68263          	beq	a3,a4,221b0 <start+0x154>
   22130:	00078693          	mv	a3,a5
   22134:	04500713          	li	a4,69
   22138:	06e68063          	beq	a3,a4,22198 <start+0x13c>
   2213c:	08078663          	beqz	a5,221c8 <start+0x16c>
   22140:	0800006f          	j	221c0 <start+0x164>
   22144:	00078693          	mv	a3,a5
   22148:	05200713          	li	a4,82
   2214c:	04e68263          	beq	a3,a4,22190 <start+0x134>
   22150:	00078693          	mv	a3,a5
   22154:	05200713          	li	a4,82
   22158:	00d74a63          	blt	a4,a3,2216c <start+0x110>
   2215c:	00078713          	mv	a4,a5
   22160:	04a00793          	li	a5,74
   22164:	02f70263          	beq	a4,a5,22188 <start+0x12c>
   22168:	0580006f          	j	221c0 <start+0x164>
   2216c:	00078693          	mv	a3,a5
   22170:	05400713          	li	a4,84
   22174:	04e68263          	beq	a3,a4,221b8 <start+0x15c>
   22178:	00078713          	mv	a4,a5
   2217c:	05600793          	li	a5,86
   22180:	02f70463          	beq	a4,a5,221a8 <start+0x14c>
   22184:	03c0006f          	j	221c0 <start+0x164>
   22188:	ca5fe0ef          	jal	ra,20e2c <jump_exe>
   2218c:	0400006f          	j	221cc <start+0x170>
   22190:	d79fe0ef          	jal	ra,20f08 <reg_exe>
   22194:	0380006f          	j	221cc <start+0x170>
   22198:	e05fe0ef          	jal	ra,20f9c <edit_exe>
   2219c:	0300006f          	j	221cc <start+0x170>
   221a0:	e70ff0ef          	jal	ra,21810 <inst_exe>
   221a4:	0280006f          	j	221cc <start+0x170>
   221a8:	f30ff0ef          	jal	ra,218d8 <view_exe>
   221ac:	0200006f          	j	221cc <start+0x170>
   221b0:	da5ff0ef          	jal	ra,21f54 <disas_exe>
   221b4:	0180006f          	j	221cc <start+0x170>
   221b8:	d0dff0ef          	jal	ra,21ec4 <timelim_exe>
   221bc:	0100006f          	j	221cc <start+0x170>
   221c0:	e18fe0ef          	jal	ra,207d8 <print_help>
   221c4:	f31ff06f          	j	220f4 <start+0x98>
   221c8:	00000013          	nop
   221cc:	f29ff06f          	j	220f4 <start+0x98>

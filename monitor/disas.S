
out.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <_start>:
       0:	00000013          	nop
       4:	00018193          	mv	gp,gp
       8:	00030137          	lui	sp,0x30
       c:	7f10106f          	j	1ffc <start>

0000000000000010 <_entry>:
      10:	f8410113          	addi	sp,sp,-124 # 2ff84 <__global_pointer$+0x2ce14>
      14:	00112023          	sw	ra,0(sp)
      18:	00212223          	sw	sp,4(sp)
      1c:	00312423          	sw	gp,8(sp)
      20:	00412623          	sw	tp,12(sp)
      24:	00512823          	sw	t0,16(sp)
      28:	00612a23          	sw	t1,20(sp)
      2c:	00712c23          	sw	t2,24(sp)
      30:	00812e23          	sw	s0,28(sp)
      34:	02912023          	sw	s1,32(sp)
      38:	02a12223          	sw	a0,36(sp)
      3c:	02b12423          	sw	a1,40(sp)
      40:	02c12623          	sw	a2,44(sp)
      44:	02d12823          	sw	a3,48(sp)
      48:	02e12a23          	sw	a4,52(sp)
      4c:	02f12c23          	sw	a5,56(sp)
      50:	03012e23          	sw	a6,60(sp)
      54:	05112023          	sw	a7,64(sp)
      58:	05212223          	sw	s2,68(sp)
      5c:	05312423          	sw	s3,72(sp)
      60:	05412623          	sw	s4,76(sp)
      64:	05512823          	sw	s5,80(sp)
      68:	05612a23          	sw	s6,84(sp)
      6c:	05712c23          	sw	s7,88(sp)
      70:	05812e23          	sw	s8,92(sp)
      74:	07912023          	sw	s9,96(sp)
      78:	07a12223          	sw	s10,100(sp)
      7c:	07b12423          	sw	s11,104(sp)
      80:	07c12623          	sw	t3,108(sp)
      84:	07d12823          	sw	t4,112(sp)
      88:	07e12a23          	sw	t5,116(sp)
      8c:	07f12c23          	sw	t6,120(sp)
      90:	00050093          	mv	ra,a0
      94:	00003617          	auipc	a2,0x3
      98:	8dc60613          	addi	a2,a2,-1828 # 2970 <__DATA_BEGIN__>
      9c:	00262023          	sw	sp,0(a2)
      a0:	00000113          	li	sp,0
      a4:	00000193          	li	gp,0
      a8:	00000213          	li	tp,0
      ac:	00000293          	li	t0,0
      b0:	00000313          	li	t1,0
      b4:	00000393          	li	t2,0
      b8:	00000413          	li	s0,0
      bc:	00000493          	li	s1,0
      c0:	00000513          	li	a0,0
      c4:	00000593          	li	a1,0
      c8:	00000613          	li	a2,0
      cc:	00000693          	li	a3,0
      d0:	00000713          	li	a4,0
      d4:	00000793          	li	a5,0
      d8:	00000813          	li	a6,0
      dc:	00000893          	li	a7,0
      e0:	00000913          	li	s2,0
      e4:	00000993          	li	s3,0
      e8:	00000a13          	li	s4,0
      ec:	00000a93          	li	s5,0
      f0:	00000b13          	li	s6,0
      f4:	00000b93          	li	s7,0
      f8:	00000c13          	li	s8,0
      fc:	00000c93          	li	s9,0
     100:	00000d13          	li	s10,0
     104:	00000d93          	li	s11,0
     108:	00000e13          	li	t3,0
     10c:	00000e93          	li	t4,0
     110:	00003f17          	auipc	t5,0x3
     114:	868f0f13          	addi	t5,t5,-1944 # 2978 <time_count>
     118:	000f2023          	sw	zero,0(t5)
     11c:	00003f17          	auipc	t5,0x3
     120:	858f0f13          	addi	t5,t5,-1960 # 2974 <in_user>
     124:	00100f93          	li	t6,1
     128:	01ff2023          	sw	t6,0(t5)
     12c:	00000f13          	li	t5,0
     130:	00000f93          	li	t6,0
     134:	000080e7          	jalr	ra

0000000000000138 <_exit>:
     138:	8a818093          	addi	ra,gp,-1880 # 2a18 <regs>
     13c:	07f0ae23          	sw	t6,124(ra)
     140:	07e0ac23          	sw	t5,120(ra)
     144:	00003f97          	auipc	t6,0x3
     148:	830f8f93          	addi	t6,t6,-2000 # 2974 <in_user>
     14c:	000fa023          	sw	zero,0(t6)
     150:	07d0aa23          	sw	t4,116(ra)
     154:	07c0a823          	sw	t3,112(ra)
     158:	07b0a623          	sw	s11,108(ra)
     15c:	07a0a423          	sw	s10,104(ra)
     160:	0790a223          	sw	s9,100(ra)
     164:	0780a023          	sw	s8,96(ra)
     168:	0570ae23          	sw	s7,92(ra)
     16c:	0560ac23          	sw	s6,88(ra)
     170:	0550aa23          	sw	s5,84(ra)
     174:	0540a823          	sw	s4,80(ra)
     178:	0530a623          	sw	s3,76(ra)
     17c:	0520a423          	sw	s2,72(ra)
     180:	0510a223          	sw	a7,68(ra)
     184:	0500a023          	sw	a6,64(ra)
     188:	02f0ae23          	sw	a5,60(ra)
     18c:	02e0ac23          	sw	a4,56(ra)
     190:	02d0aa23          	sw	a3,52(ra)
     194:	02c0a823          	sw	a2,48(ra)
     198:	02b0a623          	sw	a1,44(ra)
     19c:	02a0a423          	sw	a0,40(ra)
     1a0:	0290a223          	sw	s1,36(ra)
     1a4:	0280a023          	sw	s0,32(ra)
     1a8:	0070ae23          	sw	t2,28(ra)
     1ac:	0060ac23          	sw	t1,24(ra)
     1b0:	0050aa23          	sw	t0,20(ra)
     1b4:	0040a823          	sw	tp,16(ra)
     1b8:	0030a623          	sw	gp,12(ra)
     1bc:	0020a423          	sw	sp,8(ra)
     1c0:	0010a223          	sw	ra,4(ra)
     1c4:	0000a023          	sw	zero,0(ra)
     1c8:	00002117          	auipc	sp,0x2
     1cc:	7a810113          	addi	sp,sp,1960 # 2970 <__DATA_BEGIN__>
     1d0:	00012103          	lw	sp,0(sp)
     1d4:	00012083          	lw	ra,0(sp)
     1d8:	00412103          	lw	sp,4(sp)
     1dc:	00812183          	lw	gp,8(sp)
     1e0:	00c12203          	lw	tp,12(sp)
     1e4:	01012283          	lw	t0,16(sp)
     1e8:	01412303          	lw	t1,20(sp)
     1ec:	01812383          	lw	t2,24(sp)
     1f0:	01c12403          	lw	s0,28(sp)
     1f4:	02012483          	lw	s1,32(sp)
     1f8:	02412503          	lw	a0,36(sp)
     1fc:	02812583          	lw	a1,40(sp)
     200:	02c12603          	lw	a2,44(sp)
     204:	03012683          	lw	a3,48(sp)
     208:	03412703          	lw	a4,52(sp)
     20c:	03812783          	lw	a5,56(sp)
     210:	03c12803          	lw	a6,60(sp)
     214:	04012883          	lw	a7,64(sp)
     218:	04412903          	lw	s2,68(sp)
     21c:	04812983          	lw	s3,72(sp)
     220:	04c12a03          	lw	s4,76(sp)
     224:	05012a83          	lw	s5,80(sp)
     228:	05412b03          	lw	s6,84(sp)
     22c:	05812b83          	lw	s7,88(sp)
     230:	05c12c03          	lw	s8,92(sp)
     234:	06012c83          	lw	s9,96(sp)
     238:	06412d03          	lw	s10,100(sp)
     23c:	06812d83          	lw	s11,104(sp)
     240:	06c12e03          	lw	t3,108(sp)
     244:	07012e83          	lw	t4,112(sp)
     248:	07412f03          	lw	t5,116(sp)
     24c:	07812f83          	lw	t6,120(sp)
     250:	07c10113          	addi	sp,sp,124
     254:	00008067          	ret

0000000000000258 <_trap_entry>:
     258:	34011173          	csrrw	sp,mscratch,sp
     25c:	f8410113          	addi	sp,sp,-124
     260:	00112023          	sw	ra,0(sp)
     264:	00212223          	sw	sp,4(sp)
     268:	00312423          	sw	gp,8(sp)
     26c:	00412623          	sw	tp,12(sp)
     270:	00512823          	sw	t0,16(sp)
     274:	00612a23          	sw	t1,20(sp)
     278:	00712c23          	sw	t2,24(sp)
     27c:	00812e23          	sw	s0,28(sp)
     280:	02912023          	sw	s1,32(sp)
     284:	02a12223          	sw	a0,36(sp)
     288:	02b12423          	sw	a1,40(sp)
     28c:	02c12623          	sw	a2,44(sp)
     290:	02d12823          	sw	a3,48(sp)
     294:	02e12a23          	sw	a4,52(sp)
     298:	02f12c23          	sw	a5,56(sp)
     29c:	03012e23          	sw	a6,60(sp)
     2a0:	05112023          	sw	a7,64(sp)
     2a4:	05212223          	sw	s2,68(sp)
     2a8:	05312423          	sw	s3,72(sp)
     2ac:	05412623          	sw	s4,76(sp)
     2b0:	05512823          	sw	s5,80(sp)
     2b4:	05612a23          	sw	s6,84(sp)
     2b8:	05712c23          	sw	s7,88(sp)
     2bc:	05812e23          	sw	s8,92(sp)
     2c0:	07912023          	sw	s9,96(sp)
     2c4:	07a12223          	sw	s10,100(sp)
     2c8:	07b12423          	sw	s11,104(sp)
     2cc:	07c12623          	sw	t3,108(sp)
     2d0:	07d12823          	sw	t4,112(sp)
     2d4:	07e12a23          	sw	t5,116(sp)
     2d8:	07f12c23          	sw	t6,120(sp)
     2dc:	81018093          	addi	ra,gp,-2032 # 2980 <trap_frame>
     2e0:	0020a023          	sw	sp,0(ra)
     2e4:	00000097          	auipc	ra,0x0
     2e8:	55c08093          	addi	ra,ra,1372 # 840 <trap>
     2ec:	000080e7          	jalr	ra
     2f0:	00012083          	lw	ra,0(sp)
     2f4:	00412103          	lw	sp,4(sp)
     2f8:	00812183          	lw	gp,8(sp)
     2fc:	00c12203          	lw	tp,12(sp)
     300:	01012283          	lw	t0,16(sp)
     304:	01412303          	lw	t1,20(sp)
     308:	01812383          	lw	t2,24(sp)
     30c:	01c12403          	lw	s0,28(sp)
     310:	02012483          	lw	s1,32(sp)
     314:	02412503          	lw	a0,36(sp)
     318:	02812583          	lw	a1,40(sp)
     31c:	02c12603          	lw	a2,44(sp)
     320:	03012683          	lw	a3,48(sp)
     324:	03412703          	lw	a4,52(sp)
     328:	03812783          	lw	a5,56(sp)
     32c:	03c12803          	lw	a6,60(sp)
     330:	04012883          	lw	a7,64(sp)
     334:	04412903          	lw	s2,68(sp)
     338:	04812983          	lw	s3,72(sp)
     33c:	04c12a03          	lw	s4,76(sp)
     340:	05012a83          	lw	s5,80(sp)
     344:	05412b03          	lw	s6,84(sp)
     348:	05812b83          	lw	s7,88(sp)
     34c:	05c12c03          	lw	s8,92(sp)
     350:	06012c83          	lw	s9,96(sp)
     354:	06412d03          	lw	s10,100(sp)
     358:	06812d83          	lw	s11,104(sp)
     35c:	06c12e03          	lw	t3,108(sp)
     360:	07012e83          	lw	t4,112(sp)
     364:	07412f03          	lw	t5,116(sp)
     368:	07812f83          	lw	t6,120(sp)
     36c:	07c10113          	addi	sp,sp,124
     370:	34011173          	csrrw	sp,mscratch,sp
     374:	30200073          	mret

0000000000000378 <print>:
     378:	fd010113          	addi	sp,sp,-48
     37c:	02813423          	sd	s0,40(sp)
     380:	03010413          	addi	s0,sp,48
     384:	fca43c23          	sd	a0,-40(s0)
     388:	fe042623          	sw	zero,-20(s0)
     38c:	02c0006f          	j	3b8 <print+0x40>
     390:	fec42783          	lw	a5,-20(s0)
     394:	fd843703          	ld	a4,-40(s0)
     398:	00f70733          	add	a4,a4,a5
     39c:	008007b7          	lui	a5,0x800
     3a0:	ff878793          	addi	a5,a5,-8 # 7ffff8 <__global_pointer$+0x7fce88>
     3a4:	00074703          	lbu	a4,0(a4)
     3a8:	00e78023          	sb	a4,0(a5)
     3ac:	fec42783          	lw	a5,-20(s0)
     3b0:	0017879b          	addiw	a5,a5,1
     3b4:	fef42623          	sw	a5,-20(s0)
     3b8:	fec42783          	lw	a5,-20(s0)
     3bc:	fd843703          	ld	a4,-40(s0)
     3c0:	00f707b3          	add	a5,a4,a5
     3c4:	0007c783          	lbu	a5,0(a5)
     3c8:	fc0794e3          	bnez	a5,390 <print+0x18>
     3cc:	00000013          	nop
     3d0:	02813403          	ld	s0,40(sp)
     3d4:	03010113          	addi	sp,sp,48
     3d8:	00008067          	ret

00000000000003dc <strcmp>:
     3dc:	fd010113          	addi	sp,sp,-48
     3e0:	02813423          	sd	s0,40(sp)
     3e4:	03010413          	addi	s0,sp,48
     3e8:	fca43c23          	sd	a0,-40(s0)
     3ec:	fcb43823          	sd	a1,-48(s0)
     3f0:	fe042623          	sw	zero,-20(s0)
     3f4:	0100006f          	j	404 <strcmp+0x28>
     3f8:	fec42783          	lw	a5,-20(s0)
     3fc:	0017879b          	addiw	a5,a5,1
     400:	fef42623          	sw	a5,-20(s0)
     404:	fec42783          	lw	a5,-20(s0)
     408:	fd843703          	ld	a4,-40(s0)
     40c:	00f707b3          	add	a5,a4,a5
     410:	0007c783          	lbu	a5,0(a5)
     414:	04078063          	beqz	a5,454 <strcmp+0x78>
     418:	fec42783          	lw	a5,-20(s0)
     41c:	fd043703          	ld	a4,-48(s0)
     420:	00f707b3          	add	a5,a4,a5
     424:	0007c783          	lbu	a5,0(a5)
     428:	02078663          	beqz	a5,454 <strcmp+0x78>
     42c:	fec42783          	lw	a5,-20(s0)
     430:	fd843703          	ld	a4,-40(s0)
     434:	00f707b3          	add	a5,a4,a5
     438:	0007c683          	lbu	a3,0(a5)
     43c:	fec42783          	lw	a5,-20(s0)
     440:	fd043703          	ld	a4,-48(s0)
     444:	00f707b3          	add	a5,a4,a5
     448:	0007c783          	lbu	a5,0(a5)
     44c:	00068713          	mv	a4,a3
     450:	faf704e3          	beq	a4,a5,3f8 <strcmp+0x1c>
     454:	fec42783          	lw	a5,-20(s0)
     458:	fd843703          	ld	a4,-40(s0)
     45c:	00f707b3          	add	a5,a4,a5
     460:	0007c783          	lbu	a5,0(a5)
     464:	02078063          	beqz	a5,484 <strcmp+0xa8>
     468:	fec42783          	lw	a5,-20(s0)
     46c:	fd043703          	ld	a4,-48(s0)
     470:	00f707b3          	add	a5,a4,a5
     474:	0007c783          	lbu	a5,0(a5)
     478:	00078663          	beqz	a5,484 <strcmp+0xa8>
     47c:	00100793          	li	a5,1
     480:	0080006f          	j	488 <strcmp+0xac>
     484:	00000793          	li	a5,0
     488:	00078513          	mv	a0,a5
     48c:	02813403          	ld	s0,40(sp)
     490:	03010113          	addi	sp,sp,48
     494:	00008067          	ret

0000000000000498 <get_line>:
     498:	fe010113          	addi	sp,sp,-32
     49c:	00813c23          	sd	s0,24(sp)
     4a0:	02010413          	addi	s0,sp,32
     4a4:	fff00793          	li	a5,-1
     4a8:	fef42623          	sw	a5,-20(s0)
     4ac:	fec42783          	lw	a5,-20(s0)
     4b0:	0017879b          	addiw	a5,a5,1
     4b4:	fef42623          	sw	a5,-20(s0)
     4b8:	00000013          	nop
     4bc:	8a01a703          	lw	a4,-1888(gp) # 2a10 <bufh>
     4c0:	8581a783          	lw	a5,-1960(gp) # 29c8 <buft>
     4c4:	fef70ce3          	beq	a4,a5,4bc <get_line+0x24>
     4c8:	8a01a783          	lw	a5,-1888(gp) # 2a10 <bufh>
     4cc:	0017871b          	addiw	a4,a5,1
     4d0:	0007069b          	sext.w	a3,a4
     4d4:	8ad1a023          	sw	a3,-1888(gp) # 2a10 <bufh>
     4d8:	00003737          	lui	a4,0x3
     4dc:	98870713          	addi	a4,a4,-1656 # 2988 <input_buffer>
     4e0:	00e787b3          	add	a5,a5,a4
     4e4:	0007c703          	lbu	a4,0(a5)
     4e8:	fec42683          	lw	a3,-20(s0)
     4ec:	86018793          	addi	a5,gp,-1952 # 29d0 <buffer>
     4f0:	00f687b3          	add	a5,a3,a5
     4f4:	00e78023          	sb	a4,0(a5)
     4f8:	8a01a783          	lw	a5,-1888(gp) # 2a10 <bufh>
     4fc:	00078713          	mv	a4,a5
     500:	04000793          	li	a5,64
     504:	00f71463          	bne	a4,a5,50c <get_line+0x74>
     508:	8a01a023          	sw	zero,-1888(gp) # 2a10 <bufh>
     50c:	fec42703          	lw	a4,-20(s0)
     510:	86018793          	addi	a5,gp,-1952 # 29d0 <buffer>
     514:	00f707b3          	add	a5,a4,a5
     518:	0007c783          	lbu	a5,0(a5)
     51c:	00078713          	mv	a4,a5
     520:	00a00793          	li	a5,10
     524:	f8f714e3          	bne	a4,a5,4ac <get_line+0x14>
     528:	fec42783          	lw	a5,-20(s0)
     52c:	0007879b          	sext.w	a5,a5
     530:	02f05a63          	blez	a5,564 <get_line+0xcc>
     534:	fec42783          	lw	a5,-20(s0)
     538:	fff7879b          	addiw	a5,a5,-1
     53c:	0007871b          	sext.w	a4,a5
     540:	86018793          	addi	a5,gp,-1952 # 29d0 <buffer>
     544:	00f707b3          	add	a5,a4,a5
     548:	0007c783          	lbu	a5,0(a5)
     54c:	00078713          	mv	a4,a5
     550:	00d00793          	li	a5,13
     554:	00f71863          	bne	a4,a5,564 <get_line+0xcc>
     558:	fec42783          	lw	a5,-20(s0)
     55c:	fff7879b          	addiw	a5,a5,-1
     560:	fef42623          	sw	a5,-20(s0)
     564:	fec42703          	lw	a4,-20(s0)
     568:	86018793          	addi	a5,gp,-1952 # 29d0 <buffer>
     56c:	00f707b3          	add	a5,a4,a5
     570:	00078023          	sb	zero,0(a5)
     574:	00000013          	nop
     578:	01813403          	ld	s0,24(sp)
     57c:	02010113          	addi	sp,sp,32
     580:	00008067          	ret

0000000000000584 <hex2str>:
     584:	fd010113          	addi	sp,sp,-48
     588:	02813423          	sd	s0,40(sp)
     58c:	03010413          	addi	s0,sp,48
     590:	00050793          	mv	a5,a0
     594:	fcb43823          	sd	a1,-48(s0)
     598:	fcf42e23          	sw	a5,-36(s0)
     59c:	fd043783          	ld	a5,-48(s0)
     5a0:	03000713          	li	a4,48
     5a4:	00e78023          	sb	a4,0(a5)
     5a8:	fd043783          	ld	a5,-48(s0)
     5ac:	00178793          	addi	a5,a5,1
     5b0:	07800713          	li	a4,120
     5b4:	00e78023          	sb	a4,0(a5)
     5b8:	fe042623          	sw	zero,-20(s0)
     5bc:	0740006f          	j	630 <hex2str+0xac>
     5c0:	00700713          	li	a4,7
     5c4:	fec42783          	lw	a5,-20(s0)
     5c8:	40f707bb          	subw	a5,a4,a5
     5cc:	0007879b          	sext.w	a5,a5
     5d0:	0027979b          	slliw	a5,a5,0x2
     5d4:	0007879b          	sext.w	a5,a5
     5d8:	00078713          	mv	a4,a5
     5dc:	fdc42783          	lw	a5,-36(s0)
     5e0:	00e7d7bb          	srlw	a5,a5,a4
     5e4:	0007879b          	sext.w	a5,a5
     5e8:	00f7f793          	andi	a5,a5,15
     5ec:	0007869b          	sext.w	a3,a5
     5f0:	fec42783          	lw	a5,-20(s0)
     5f4:	0027879b          	addiw	a5,a5,2
     5f8:	0007879b          	sext.w	a5,a5
     5fc:	00078713          	mv	a4,a5
     600:	fd043783          	ld	a5,-48(s0)
     604:	00e787b3          	add	a5,a5,a4
     608:	00002737          	lui	a4,0x2
     60c:	02069693          	slli	a3,a3,0x20
     610:	0206d693          	srli	a3,a3,0x20
     614:	4e070713          	addi	a4,a4,1248 # 24e0 <INST_CONFIG+0x260>
     618:	00e68733          	add	a4,a3,a4
     61c:	00074703          	lbu	a4,0(a4)
     620:	00e78023          	sb	a4,0(a5)
     624:	fec42783          	lw	a5,-20(s0)
     628:	0017879b          	addiw	a5,a5,1
     62c:	fef42623          	sw	a5,-20(s0)
     630:	fec42783          	lw	a5,-20(s0)
     634:	0007871b          	sext.w	a4,a5
     638:	00700793          	li	a5,7
     63c:	f8e7d2e3          	bge	a5,a4,5c0 <hex2str+0x3c>
     640:	fd043783          	ld	a5,-48(s0)
     644:	00a78793          	addi	a5,a5,10
     648:	00078023          	sb	zero,0(a5)
     64c:	00000013          	nop
     650:	02813403          	ld	s0,40(sp)
     654:	03010113          	addi	sp,sp,48
     658:	00008067          	ret

000000000000065c <print_hex>:
     65c:	fd010113          	addi	sp,sp,-48
     660:	02113423          	sd	ra,40(sp)
     664:	02813023          	sd	s0,32(sp)
     668:	03010413          	addi	s0,sp,48
     66c:	00050793          	mv	a5,a0
     670:	fcf42e23          	sw	a5,-36(s0)
     674:	fe040713          	addi	a4,s0,-32
     678:	fdc42783          	lw	a5,-36(s0)
     67c:	00070593          	mv	a1,a4
     680:	00078513          	mv	a0,a5
     684:	f01ff0ef          	jal	ra,584 <hex2str>
     688:	fe040793          	addi	a5,s0,-32
     68c:	00078513          	mv	a0,a5
     690:	ce9ff0ef          	jal	ra,378 <print>
     694:	00000013          	nop
     698:	02813083          	ld	ra,40(sp)
     69c:	02013403          	ld	s0,32(sp)
     6a0:	03010113          	addi	sp,sp,48
     6a4:	00008067          	ret

00000000000006a8 <hexchar2int>:
     6a8:	fe010113          	addi	sp,sp,-32
     6ac:	00813c23          	sd	s0,24(sp)
     6b0:	02010413          	addi	s0,sp,32
     6b4:	00050793          	mv	a5,a0
     6b8:	fef407a3          	sb	a5,-17(s0)
     6bc:	fef44783          	lbu	a5,-17(s0)
     6c0:	0ff7f713          	andi	a4,a5,255
     6c4:	02f00793          	li	a5,47
     6c8:	02e7f663          	bgeu	a5,a4,6f4 <hexchar2int+0x4c>
     6cc:	fef44783          	lbu	a5,-17(s0)
     6d0:	0ff7f713          	andi	a4,a5,255
     6d4:	03900793          	li	a5,57
     6d8:	00e7ee63          	bltu	a5,a4,6f4 <hexchar2int+0x4c>
     6dc:	fef44783          	lbu	a5,-17(s0)
     6e0:	0007879b          	sext.w	a5,a5
     6e4:	fd07879b          	addiw	a5,a5,-48
     6e8:	0007879b          	sext.w	a5,a5
     6ec:	0007879b          	sext.w	a5,a5
     6f0:	0180006f          	j	708 <hexchar2int+0x60>
     6f4:	fef44783          	lbu	a5,-17(s0)
     6f8:	0007879b          	sext.w	a5,a5
     6fc:	fa97879b          	addiw	a5,a5,-87
     700:	0007879b          	sext.w	a5,a5
     704:	0007879b          	sext.w	a5,a5
     708:	00078513          	mv	a0,a5
     70c:	01813403          	ld	s0,24(sp)
     710:	02010113          	addi	sp,sp,32
     714:	00008067          	ret

0000000000000718 <str2hex>:
     718:	fc010113          	addi	sp,sp,-64
     71c:	02113c23          	sd	ra,56(sp)
     720:	02813823          	sd	s0,48(sp)
     724:	02913423          	sd	s1,40(sp)
     728:	04010413          	addi	s0,sp,64
     72c:	fca43423          	sd	a0,-56(s0)
     730:	fc843783          	ld	a5,-56(s0)
     734:	00278793          	addi	a5,a5,2
     738:	fcf43423          	sd	a5,-56(s0)
     73c:	fc042e23          	sw	zero,-36(s0)
     740:	0400006f          	j	780 <str2hex+0x68>
     744:	fdc42783          	lw	a5,-36(s0)
     748:	0047979b          	slliw	a5,a5,0x4
     74c:	0007849b          	sext.w	s1,a5
     750:	fc843783          	ld	a5,-56(s0)
     754:	0007c783          	lbu	a5,0(a5)
     758:	00078513          	mv	a0,a5
     75c:	f4dff0ef          	jal	ra,6a8 <hexchar2int>
     760:	00050793          	mv	a5,a0
     764:	0007879b          	sext.w	a5,a5
     768:	00048713          	mv	a4,s1
     76c:	00f767b3          	or	a5,a4,a5
     770:	fcf42e23          	sw	a5,-36(s0)
     774:	fc843783          	ld	a5,-56(s0)
     778:	00178793          	addi	a5,a5,1
     77c:	fcf43423          	sd	a5,-56(s0)
     780:	fc843783          	ld	a5,-56(s0)
     784:	0007c783          	lbu	a5,0(a5)
     788:	00078c63          	beqz	a5,7a0 <str2hex+0x88>
     78c:	fc843783          	ld	a5,-56(s0)
     790:	0007c783          	lbu	a5,0(a5)
     794:	00078713          	mv	a4,a5
     798:	02000793          	li	a5,32
     79c:	faf714e3          	bne	a4,a5,744 <str2hex+0x2c>
     7a0:	fdc42783          	lw	a5,-36(s0)
     7a4:	00078513          	mv	a0,a5
     7a8:	03813083          	ld	ra,56(sp)
     7ac:	03013403          	ld	s0,48(sp)
     7b0:	02813483          	ld	s1,40(sp)
     7b4:	04010113          	addi	sp,sp,64
     7b8:	00008067          	ret

00000000000007bc <print_help>:
     7bc:	ff010113          	addi	sp,sp,-16
     7c0:	00113423          	sd	ra,8(sp)
     7c4:	00813023          	sd	s0,0(sp)
     7c8:	01010413          	addi	s0,sp,16
     7cc:	000027b7          	lui	a5,0x2
     7d0:	4f878513          	addi	a0,a5,1272 # 24f8 <INST_CONFIG+0x278>
     7d4:	ba5ff0ef          	jal	ra,378 <print>
     7d8:	000027b7          	lui	a5,0x2
     7dc:	50878513          	addi	a0,a5,1288 # 2508 <INST_CONFIG+0x288>
     7e0:	b99ff0ef          	jal	ra,378 <print>
     7e4:	000027b7          	lui	a5,0x2
     7e8:	53078513          	addi	a0,a5,1328 # 2530 <INST_CONFIG+0x2b0>
     7ec:	b8dff0ef          	jal	ra,378 <print>
     7f0:	000027b7          	lui	a5,0x2
     7f4:	56878513          	addi	a0,a5,1384 # 2568 <INST_CONFIG+0x2e8>
     7f8:	b81ff0ef          	jal	ra,378 <print>
     7fc:	000027b7          	lui	a5,0x2
     800:	59878513          	addi	a0,a5,1432 # 2598 <INST_CONFIG+0x318>
     804:	b75ff0ef          	jal	ra,378 <print>
     808:	000027b7          	lui	a5,0x2
     80c:	5d078513          	addi	a0,a5,1488 # 25d0 <INST_CONFIG+0x350>
     810:	b69ff0ef          	jal	ra,378 <print>
     814:	000027b7          	lui	a5,0x2
     818:	60878513          	addi	a0,a5,1544 # 2608 <INST_CONFIG+0x388>
     81c:	b5dff0ef          	jal	ra,378 <print>
     820:	000027b7          	lui	a5,0x2
     824:	64878513          	addi	a0,a5,1608 # 2648 <INST_CONFIG+0x3c8>
     828:	b51ff0ef          	jal	ra,378 <print>
     82c:	00000013          	nop
     830:	00813083          	ld	ra,8(sp)
     834:	00013403          	ld	s0,0(sp)
     838:	01010113          	addi	sp,sp,16
     83c:	00008067          	ret

0000000000000840 <trap>:
     840:	fa010113          	addi	sp,sp,-96
     844:	04113c23          	sd	ra,88(sp)
     848:	04813823          	sd	s0,80(sp)
     84c:	06010413          	addi	s0,sp,96
     850:	342027f3          	csrr	a5,mcause
     854:	fef43023          	sd	a5,-32(s0)
     858:	fe043783          	ld	a5,-32(s0)
     85c:	fcf42e23          	sw	a5,-36(s0)
     860:	fe042623          	sw	zero,-20(s0)
     864:	fdc42783          	lw	a5,-36(s0)
     868:	1a07de63          	bgez	a5,a24 <trap+0x1e4>
     86c:	fdc42703          	lw	a4,-36(s0)
     870:	800007b7          	lui	a5,0x80000
     874:	fff7c793          	not	a5,a5
     878:	00f777b3          	and	a5,a4,a5
     87c:	0007871b          	sext.w	a4,a5
     880:	00070693          	mv	a3,a4
     884:	00700793          	li	a5,7
     888:	00f68863          	beq	a3,a5,898 <trap+0x58>
     88c:	00b00793          	li	a5,11
     890:	06f70263          	beq	a4,a5,8f4 <trap+0xb4>
     894:	0f40006f          	j	988 <trap+0x148>
     898:	008007b7          	lui	a5,0x800
     89c:	fcc78793          	addi	a5,a5,-52 # 7fffcc <__global_pointer$+0x7fce5c>
     8a0:	0007a023          	sw	zero,0(a5)
     8a4:	008007b7          	lui	a5,0x800
     8a8:	fc878793          	addi	a5,a5,-56 # 7fffc8 <__global_pointer$+0x7fce58>
     8ac:	0007a023          	sw	zero,0(a5)
     8b0:	000037b7          	lui	a5,0x3
     8b4:	9747a783          	lw	a5,-1676(a5) # 2974 <in_user>
     8b8:	12078e63          	beqz	a5,9f4 <trap+0x1b4>
     8bc:	000037b7          	lui	a5,0x3
     8c0:	9787a783          	lw	a5,-1672(a5) # 2978 <time_count>
     8c4:	0017879b          	addiw	a5,a5,1
     8c8:	0007871b          	sext.w	a4,a5
     8cc:	000037b7          	lui	a5,0x3
     8d0:	96e7ac23          	sw	a4,-1672(a5) # 2978 <time_count>
     8d4:	000037b7          	lui	a5,0x3
     8d8:	9787a703          	lw	a4,-1672(a5) # 2978 <time_count>
     8dc:	000037b7          	lui	a5,0x3
     8e0:	97c7a783          	lw	a5,-1668(a5) # 297c <time_lim>
     8e4:	10f76863          	bltu	a4,a5,9f4 <trap+0x1b4>
     8e8:	00100793          	li	a5,1
     8ec:	fef42623          	sw	a5,-20(s0)
     8f0:	1040006f          	j	9f4 <trap+0x1b4>
     8f4:	008007b7          	lui	a5,0x800
     8f8:	ff078793          	addi	a5,a5,-16 # 7ffff0 <__global_pointer$+0x7fce80>
     8fc:	0007a783          	lw	a5,0(a5)
     900:	fcf42c23          	sw	a5,-40(s0)
     904:	fd842783          	lw	a5,-40(s0)
     908:	0007871b          	sext.w	a4,a5
     90c:	00100793          	li	a5,1
     910:	06f71263          	bne	a4,a5,974 <trap+0x134>
     914:	0440006f          	j	958 <trap+0x118>
     918:	008007b7          	lui	a5,0x800
     91c:	ff878713          	addi	a4,a5,-8 # 7ffff8 <__global_pointer$+0x7fce88>
     920:	8581a783          	lw	a5,-1960(gp) # 29c8 <buft>
     924:	0017869b          	addiw	a3,a5,1
     928:	0006861b          	sext.w	a2,a3
     92c:	84c1ac23          	sw	a2,-1960(gp) # 29c8 <buft>
     930:	00074703          	lbu	a4,0(a4)
     934:	000036b7          	lui	a3,0x3
     938:	98868693          	addi	a3,a3,-1656 # 2988 <input_buffer>
     93c:	00d787b3          	add	a5,a5,a3
     940:	00e78023          	sb	a4,0(a5)
     944:	8581a783          	lw	a5,-1960(gp) # 29c8 <buft>
     948:	00078713          	mv	a4,a5
     94c:	04000793          	li	a5,64
     950:	00f71463          	bne	a4,a5,958 <trap+0x118>
     954:	8401ac23          	sw	zero,-1960(gp) # 29c8 <buft>
     958:	008007b7          	lui	a5,0x800
     95c:	ffc78793          	addi	a5,a5,-4 # 7ffffc <__global_pointer$+0x7fce8c>
     960:	0007a783          	lw	a5,0(a5)
     964:	0f07f793          	andi	a5,a5,240
     968:	0007879b          	sext.w	a5,a5
     96c:	fa0796e3          	bnez	a5,918 <trap+0xd8>
     970:	00000013          	nop
     974:	008007b7          	lui	a5,0x800
     978:	ff078793          	addi	a5,a5,-16 # 7ffff0 <__global_pointer$+0x7fce80>
     97c:	fd842703          	lw	a4,-40(s0)
     980:	00e7a023          	sw	a4,0(a5)
     984:	0740006f          	j	9f8 <trap+0x1b8>
     988:	000027b7          	lui	a5,0x2
     98c:	6b878513          	addi	a0,a5,1720 # 26b8 <INST_CONFIG+0x438>
     990:	9e9ff0ef          	jal	ra,378 <print>
     994:	000027b7          	lui	a5,0x2
     998:	6e078513          	addi	a0,a5,1760 # 26e0 <INST_CONFIG+0x460>
     99c:	9ddff0ef          	jal	ra,378 <print>
     9a0:	fdc42783          	lw	a5,-36(s0)
     9a4:	00078513          	mv	a0,a5
     9a8:	cb5ff0ef          	jal	ra,65c <print_hex>
     9ac:	000027b7          	lui	a5,0x2
     9b0:	6e878513          	addi	a0,a5,1768 # 26e8 <INST_CONFIG+0x468>
     9b4:	9c5ff0ef          	jal	ra,378 <print>
     9b8:	000027b7          	lui	a5,0x2
     9bc:	6f078513          	addi	a0,a5,1776 # 26f0 <INST_CONFIG+0x470>
     9c0:	9b9ff0ef          	jal	ra,378 <print>
     9c4:	341027f3          	csrr	a5,mepc
     9c8:	fcf43823          	sd	a5,-48(s0)
     9cc:	fd043783          	ld	a5,-48(s0)
     9d0:	0007879b          	sext.w	a5,a5
     9d4:	00078513          	mv	a0,a5
     9d8:	c85ff0ef          	jal	ra,65c <print_hex>
     9dc:	000027b7          	lui	a5,0x2
     9e0:	6e878513          	addi	a0,a5,1768 # 26e8 <INST_CONFIG+0x468>
     9e4:	995ff0ef          	jal	ra,378 <print>
     9e8:	00100793          	li	a5,1
     9ec:	fef42623          	sw	a5,-20(s0)
     9f0:	0080006f          	j	9f8 <trap+0x1b8>
     9f4:	00000013          	nop
     9f8:	fdc42703          	lw	a4,-36(s0)
     9fc:	800007b7          	lui	a5,0x80000
     a00:	fff7c793          	not	a5,a5
     a04:	00f777b3          	and	a5,a4,a5
     a08:	0007879b          	sext.w	a5,a5
     a0c:	00100713          	li	a4,1
     a10:	00f717bb          	sllw	a5,a4,a5
     a14:	0007879b          	sext.w	a5,a5
     a18:	3447b7f3          	csrrc	a5,mip,a5
     a1c:	fcf43423          	sd	a5,-56(s0)
     a20:	2180006f          	j	c38 <trap+0x3f8>
     a24:	fdc42783          	lw	a5,-36(s0)
     a28:	0007871b          	sext.w	a4,a5
     a2c:	00b00793          	li	a5,11
     a30:	1ae7e063          	bltu	a5,a4,bd0 <trap+0x390>
     a34:	fdc46783          	lwu	a5,-36(s0)
     a38:	00279713          	slli	a4,a5,0x2
     a3c:	000027b7          	lui	a5,0x2
     a40:	7c078793          	addi	a5,a5,1984 # 27c0 <INST_CONFIG+0x540>
     a44:	00f707b3          	add	a5,a4,a5
     a48:	0007a783          	lw	a5,0(a5)
     a4c:	00078067          	jr	a5
     a50:	000027b7          	lui	a5,0x2
     a54:	6f878513          	addi	a0,a5,1784 # 26f8 <INST_CONFIG+0x478>
     a58:	921ff0ef          	jal	ra,378 <print>
     a5c:	343027f3          	csrr	a5,mtval
     a60:	fcf43023          	sd	a5,-64(s0)
     a64:	fc043783          	ld	a5,-64(s0)
     a68:	0007879b          	sext.w	a5,a5
     a6c:	00078513          	mv	a0,a5
     a70:	bedff0ef          	jal	ra,65c <print_hex>
     a74:	000027b7          	lui	a5,0x2
     a78:	6e878513          	addi	a0,a5,1768 # 26e8 <INST_CONFIG+0x468>
     a7c:	8fdff0ef          	jal	ra,378 <print>
     a80:	00100793          	li	a5,1
     a84:	fef42623          	sw	a5,-20(s0)
     a88:	1b00006f          	j	c38 <trap+0x3f8>
     a8c:	000027b7          	lui	a5,0x2
     a90:	72078513          	addi	a0,a5,1824 # 2720 <INST_CONFIG+0x4a0>
     a94:	8e5ff0ef          	jal	ra,378 <print>
     a98:	00100793          	li	a5,1
     a9c:	fef42623          	sw	a5,-20(s0)
     aa0:	1980006f          	j	c38 <trap+0x3f8>
     aa4:	000027b7          	lui	a5,0x2
     aa8:	74078513          	addi	a0,a5,1856 # 2740 <INST_CONFIG+0x4c0>
     aac:	8cdff0ef          	jal	ra,378 <print>
     ab0:	343027f3          	csrr	a5,mtval
     ab4:	faf43c23          	sd	a5,-72(s0)
     ab8:	fb843783          	ld	a5,-72(s0)
     abc:	0007879b          	sext.w	a5,a5
     ac0:	00078513          	mv	a0,a5
     ac4:	b99ff0ef          	jal	ra,65c <print_hex>
     ac8:	000027b7          	lui	a5,0x2
     acc:	6e878513          	addi	a0,a5,1768 # 26e8 <INST_CONFIG+0x468>
     ad0:	8a9ff0ef          	jal	ra,378 <print>
     ad4:	1640006f          	j	c38 <trap+0x3f8>
     ad8:	000027b7          	lui	a5,0x2
     adc:	76078513          	addi	a0,a5,1888 # 2760 <INST_CONFIG+0x4e0>
     ae0:	899ff0ef          	jal	ra,378 <print>
     ae4:	343027f3          	csrr	a5,mtval
     ae8:	faf43823          	sd	a5,-80(s0)
     aec:	fb043783          	ld	a5,-80(s0)
     af0:	0007879b          	sext.w	a5,a5
     af4:	00078513          	mv	a0,a5
     af8:	b65ff0ef          	jal	ra,65c <print_hex>
     afc:	000027b7          	lui	a5,0x2
     b00:	6e878513          	addi	a0,a5,1768 # 26e8 <INST_CONFIG+0x468>
     b04:	875ff0ef          	jal	ra,378 <print>
     b08:	00100793          	li	a5,1
     b0c:	fef42623          	sw	a5,-20(s0)
     b10:	1280006f          	j	c38 <trap+0x3f8>
     b14:	8101b783          	ld	a5,-2032(gp) # 2980 <trap_frame>
     b18:	02878793          	addi	a5,a5,40
     b1c:	0007a783          	lw	a5,0(a5)
     b20:	00078693          	mv	a3,a5
     b24:	00100713          	li	a4,1
     b28:	02e68463          	beq	a3,a4,b50 <trap+0x310>
     b2c:	00078713          	mv	a4,a5
     b30:	00070a63          	beqz	a4,b44 <trap+0x304>
     b34:	00078713          	mv	a4,a5
     b38:	00200793          	li	a5,2
     b3c:	02f70a63          	beq	a4,a5,b70 <trap+0x330>
     b40:	0440006f          	j	b84 <trap+0x344>
     b44:	00100793          	li	a5,1
     b48:	fef42623          	sw	a5,-20(s0)
     b4c:	06c0006f          	j	bb8 <trap+0x378>
     b50:	8101b783          	ld	a5,-2032(gp) # 2980 <trap_frame>
     b54:	02c78793          	addi	a5,a5,44
     b58:	0007a703          	lw	a4,0(a5)
     b5c:	008007b7          	lui	a5,0x800
     b60:	ff878793          	addi	a5,a5,-8 # 7ffff8 <__global_pointer$+0x7fce88>
     b64:	0ff77713          	andi	a4,a4,255
     b68:	00e78023          	sb	a4,0(a5)
     b6c:	04c0006f          	j	bb8 <trap+0x378>
     b70:	8101b783          	ld	a5,-2032(gp) # 2980 <trap_frame>
     b74:	02478793          	addi	a5,a5,36
     b78:	04100713          	li	a4,65
     b7c:	00e7a023          	sw	a4,0(a5)
     b80:	0380006f          	j	bb8 <trap+0x378>
     b84:	000027b7          	lui	a5,0x2
     b88:	78078513          	addi	a0,a5,1920 # 2780 <INST_CONFIG+0x500>
     b8c:	fecff0ef          	jal	ra,378 <print>
     b90:	8101b783          	ld	a5,-2032(gp) # 2980 <trap_frame>
     b94:	02878793          	addi	a5,a5,40
     b98:	0007a783          	lw	a5,0(a5)
     b9c:	00078513          	mv	a0,a5
     ba0:	abdff0ef          	jal	ra,65c <print_hex>
     ba4:	000027b7          	lui	a5,0x2
     ba8:	6e878513          	addi	a0,a5,1768 # 26e8 <INST_CONFIG+0x468>
     bac:	fccff0ef          	jal	ra,378 <print>
     bb0:	00100793          	li	a5,1
     bb4:	fef42623          	sw	a5,-20(s0)
     bb8:	341027f3          	csrr	a5,mepc
     bbc:	faf43423          	sd	a5,-88(s0)
     bc0:	fa843783          	ld	a5,-88(s0)
     bc4:	00478793          	addi	a5,a5,4
     bc8:	34179073          	csrw	mepc,a5
     bcc:	06c0006f          	j	c38 <trap+0x3f8>
     bd0:	000027b7          	lui	a5,0x2
     bd4:	79878513          	addi	a0,a5,1944 # 2798 <INST_CONFIG+0x518>
     bd8:	fa0ff0ef          	jal	ra,378 <print>
     bdc:	000027b7          	lui	a5,0x2
     be0:	6e078513          	addi	a0,a5,1760 # 26e0 <INST_CONFIG+0x460>
     be4:	f94ff0ef          	jal	ra,378 <print>
     be8:	fdc42783          	lw	a5,-36(s0)
     bec:	00078513          	mv	a0,a5
     bf0:	a6dff0ef          	jal	ra,65c <print_hex>
     bf4:	000027b7          	lui	a5,0x2
     bf8:	6e878513          	addi	a0,a5,1768 # 26e8 <INST_CONFIG+0x468>
     bfc:	f7cff0ef          	jal	ra,378 <print>
     c00:	000027b7          	lui	a5,0x2
     c04:	6f078513          	addi	a0,a5,1776 # 26f0 <INST_CONFIG+0x470>
     c08:	f70ff0ef          	jal	ra,378 <print>
     c0c:	341027f3          	csrr	a5,mepc
     c10:	faf43023          	sd	a5,-96(s0)
     c14:	fa043783          	ld	a5,-96(s0)
     c18:	0007879b          	sext.w	a5,a5
     c1c:	00078513          	mv	a0,a5
     c20:	a3dff0ef          	jal	ra,65c <print_hex>
     c24:	000027b7          	lui	a5,0x2
     c28:	6e878513          	addi	a0,a5,1768 # 26e8 <INST_CONFIG+0x468>
     c2c:	f4cff0ef          	jal	ra,378 <print>
     c30:	00100793          	li	a5,1
     c34:	fef42623          	sw	a5,-20(s0)
     c38:	fec42783          	lw	a5,-20(s0)
     c3c:	0007879b          	sext.w	a5,a5
     c40:	00078e63          	beqz	a5,c5c <trap+0x41c>
     c44:	000037b7          	lui	a5,0x3
     c48:	9747a783          	lw	a5,-1676(a5) # 2974 <in_user>
     c4c:	00078863          	beqz	a5,c5c <trap+0x41c>
     c50:	000007b7          	lui	a5,0x0
     c54:	13878793          	addi	a5,a5,312 # 138 <_exit>
     c58:	34179073          	csrw	mepc,a5
     c5c:	00000013          	nop
     c60:	05813083          	ld	ra,88(sp)
     c64:	05013403          	ld	s0,80(sp)
     c68:	06010113          	addi	sp,sp,96
     c6c:	00008067          	ret

0000000000000c70 <init>:
     c70:	fd010113          	addi	sp,sp,-48
     c74:	02813423          	sd	s0,40(sp)
     c78:	03010413          	addi	s0,sp,48
     c7c:	8401ac23          	sw	zero,-1960(gp) # 29c8 <buft>
     c80:	8581a703          	lw	a4,-1960(gp) # 29c8 <buft>
     c84:	8ae1a023          	sw	a4,-1888(gp) # 2a10 <bufh>
     c88:	000407b7          	lui	a5,0x40
     c8c:	34079073          	csrw	mscratch,a5
     c90:	000007b7          	lui	a5,0x0
     c94:	25878793          	addi	a5,a5,600 # 258 <_trap_entry>
     c98:	30579073          	csrw	mtvec,a5
     c9c:	300467f3          	csrrsi	a5,mstatus,8
     ca0:	fef43023          	sd	a5,-32(s0)
     ca4:	008007b7          	lui	a5,0x800
     ca8:	fc478793          	addi	a5,a5,-60 # 7fffc4 <__global_pointer$+0x7fce54>
     cac:	0007a023          	sw	zero,0(a5)
     cb0:	008007b7          	lui	a5,0x800
     cb4:	fc078793          	addi	a5,a5,-64 # 7fffc0 <__global_pointer$+0x7fce50>
     cb8:	0001f737          	lui	a4,0x1f
     cbc:	8487071b          	addiw	a4,a4,-1976
     cc0:	00e7a023          	sw	a4,0(a5)
     cc4:	008007b7          	lui	a5,0x800
     cc8:	fcc78793          	addi	a5,a5,-52 # 7fffcc <__global_pointer$+0x7fce5c>
     ccc:	0007a023          	sw	zero,0(a5)
     cd0:	008007b7          	lui	a5,0x800
     cd4:	fc878793          	addi	a5,a5,-56 # 7fffc8 <__global_pointer$+0x7fce58>
     cd8:	0007a023          	sw	zero,0(a5)
     cdc:	000017b7          	lui	a5,0x1
     ce0:	8807879b          	addiw	a5,a5,-1920
     ce4:	3047a7f3          	csrrs	a5,mie,a5
     ce8:	fcf43c23          	sd	a5,-40(s0)
     cec:	000037b7          	lui	a5,0x3
     cf0:	9607aa23          	sw	zero,-1676(a5) # 2974 <in_user>
     cf4:	000037b7          	lui	a5,0x3
     cf8:	06400713          	li	a4,100
     cfc:	96e7ae23          	sw	a4,-1668(a5) # 297c <time_lim>
     d00:	fe042623          	sw	zero,-20(s0)
     d04:	0240006f          	j	d28 <init+0xb8>
     d08:	fec42703          	lw	a4,-20(s0)
     d0c:	00271713          	slli	a4,a4,0x2
     d10:	8a818793          	addi	a5,gp,-1880 # 2a18 <regs>
     d14:	00f707b3          	add	a5,a4,a5
     d18:	0007a023          	sw	zero,0(a5)
     d1c:	fec42783          	lw	a5,-20(s0)
     d20:	0017879b          	addiw	a5,a5,1
     d24:	fef42623          	sw	a5,-20(s0)
     d28:	fec42783          	lw	a5,-20(s0)
     d2c:	0007871b          	sext.w	a4,a5
     d30:	01f00793          	li	a5,31
     d34:	fce7dae3          	bge	a5,a4,d08 <init+0x98>
     d38:	00000013          	nop
     d3c:	02813403          	ld	s0,40(sp)
     d40:	03010113          	addi	sp,sp,48
     d44:	00008067          	ret

0000000000000d48 <next_word>:
     d48:	fe010113          	addi	sp,sp,-32
     d4c:	00813c23          	sd	s0,24(sp)
     d50:	02010413          	addi	s0,sp,32
     d54:	fea43423          	sd	a0,-24(s0)
     d58:	0100006f          	j	d68 <next_word+0x20>
     d5c:	fe843783          	ld	a5,-24(s0)
     d60:	00178793          	addi	a5,a5,1
     d64:	fef43423          	sd	a5,-24(s0)
     d68:	fe843783          	ld	a5,-24(s0)
     d6c:	0007c783          	lbu	a5,0(a5)
     d70:	02078463          	beqz	a5,d98 <next_word+0x50>
     d74:	fe843783          	ld	a5,-24(s0)
     d78:	0007c783          	lbu	a5,0(a5)
     d7c:	00078713          	mv	a4,a5
     d80:	02000793          	li	a5,32
     d84:	fcf71ce3          	bne	a4,a5,d5c <next_word+0x14>
     d88:	0100006f          	j	d98 <next_word+0x50>
     d8c:	fe843783          	ld	a5,-24(s0)
     d90:	00178793          	addi	a5,a5,1
     d94:	fef43423          	sd	a5,-24(s0)
     d98:	fe843783          	ld	a5,-24(s0)
     d9c:	0007c783          	lbu	a5,0(a5)
     da0:	00078c63          	beqz	a5,db8 <next_word+0x70>
     da4:	fe843783          	ld	a5,-24(s0)
     da8:	0007c783          	lbu	a5,0(a5)
     dac:	00078713          	mv	a4,a5
     db0:	02000793          	li	a5,32
     db4:	fcf70ce3          	beq	a4,a5,d8c <next_word+0x44>
     db8:	fe843783          	ld	a5,-24(s0)
     dbc:	00078513          	mv	a0,a5
     dc0:	01813403          	ld	s0,24(sp)
     dc4:	02010113          	addi	sp,sp,32
     dc8:	00008067          	ret

0000000000000dcc <jump_exe>:
     dcc:	fe010113          	addi	sp,sp,-32
     dd0:	00113c23          	sd	ra,24(sp)
     dd4:	00813823          	sd	s0,16(sp)
     dd8:	02010413          	addi	s0,sp,32
     ddc:	86018513          	addi	a0,gp,-1952 # 29d0 <buffer>
     de0:	f69ff0ef          	jal	ra,d48 <next_word>
     de4:	fea43423          	sd	a0,-24(s0)
     de8:	fe843783          	ld	a5,-24(s0)
     dec:	0007c783          	lbu	a5,0(a5)
     df0:	0a078263          	beqz	a5,e94 <jump_exe+0xc8>
     df4:	fe843783          	ld	a5,-24(s0)
     df8:	00178793          	addi	a5,a5,1
     dfc:	0007c783          	lbu	a5,0(a5)
     e00:	08078a63          	beqz	a5,e94 <jump_exe+0xc8>
     e04:	fe843503          	ld	a0,-24(s0)
     e08:	911ff0ef          	jal	ra,718 <str2hex>
     e0c:	00050793          	mv	a5,a0
     e10:	fef42223          	sw	a5,-28(s0)
     e14:	fe442783          	lw	a5,-28(s0)
     e18:	00078513          	mv	a0,a5
     e1c:	9f4ff0ef          	jal	ra,10 <_entry>
     e20:	000037b7          	lui	a5,0x3
     e24:	97c7a703          	lw	a4,-1668(a5) # 297c <time_lim>
     e28:	000037b7          	lui	a5,0x3
     e2c:	9787a783          	lw	a5,-1672(a5) # 2978 <time_count>
     e30:	00e7e863          	bltu	a5,a4,e40 <jump_exe+0x74>
     e34:	000027b7          	lui	a5,0x2
     e38:	7f078513          	addi	a0,a5,2032 # 27f0 <INST_CONFIG+0x570>
     e3c:	d3cff0ef          	jal	ra,378 <print>
     e40:	000037b7          	lui	a5,0x3
     e44:	83078513          	addi	a0,a5,-2000 # 2830 <INST_CONFIG+0x5b0>
     e48:	d30ff0ef          	jal	ra,378 <print>
     e4c:	000037b7          	lui	a5,0x3
     e50:	9787a783          	lw	a5,-1672(a5) # 2978 <time_count>
     e54:	00078513          	mv	a0,a5
     e58:	805ff0ef          	jal	ra,65c <print_hex>
     e5c:	000037b7          	lui	a5,0x3
     e60:	84878513          	addi	a0,a5,-1976 # 2848 <INST_CONFIG+0x5c8>
     e64:	d14ff0ef          	jal	ra,378 <print>
     e68:	000037b7          	lui	a5,0x3
     e6c:	85078513          	addi	a0,a5,-1968 # 2850 <INST_CONFIG+0x5d0>
     e70:	d08ff0ef          	jal	ra,378 <print>
     e74:	000037b7          	lui	a5,0x3
     e78:	97c7a783          	lw	a5,-1668(a5) # 297c <time_lim>
     e7c:	00078513          	mv	a0,a5
     e80:	fdcff0ef          	jal	ra,65c <print_hex>
     e84:	000037b7          	lui	a5,0x3
     e88:	84878513          	addi	a0,a5,-1976 # 2848 <INST_CONFIG+0x5c8>
     e8c:	cecff0ef          	jal	ra,378 <print>
     e90:	0080006f          	j	e98 <jump_exe+0xcc>
     e94:	00000013          	nop
     e98:	01813083          	ld	ra,24(sp)
     e9c:	01013403          	ld	s0,16(sp)
     ea0:	02010113          	addi	sp,sp,32
     ea4:	00008067          	ret

0000000000000ea8 <reg_exe>:
     ea8:	fe010113          	addi	sp,sp,-32
     eac:	00113c23          	sd	ra,24(sp)
     eb0:	00813823          	sd	s0,16(sp)
     eb4:	02010413          	addi	s0,sp,32
     eb8:	fe042623          	sw	zero,-20(s0)
     ebc:	05c0006f          	j	f18 <reg_exe+0x70>
     ec0:	000037b7          	lui	a5,0x3
     ec4:	86878513          	addi	a0,a5,-1944 # 2868 <INST_CONFIG+0x5e8>
     ec8:	cb0ff0ef          	jal	ra,378 <print>
     ecc:	fec42783          	lw	a5,-20(s0)
     ed0:	00078513          	mv	a0,a5
     ed4:	f88ff0ef          	jal	ra,65c <print_hex>
     ed8:	000037b7          	lui	a5,0x3
     edc:	87078513          	addi	a0,a5,-1936 # 2870 <INST_CONFIG+0x5f0>
     ee0:	c98ff0ef          	jal	ra,378 <print>
     ee4:	fec42703          	lw	a4,-20(s0)
     ee8:	00271713          	slli	a4,a4,0x2
     eec:	8a818793          	addi	a5,gp,-1880 # 2a18 <regs>
     ef0:	00f707b3          	add	a5,a4,a5
     ef4:	0007a783          	lw	a5,0(a5)
     ef8:	00078513          	mv	a0,a5
     efc:	f60ff0ef          	jal	ra,65c <print_hex>
     f00:	000027b7          	lui	a5,0x2
     f04:	6e878513          	addi	a0,a5,1768 # 26e8 <INST_CONFIG+0x468>
     f08:	c70ff0ef          	jal	ra,378 <print>
     f0c:	fec42783          	lw	a5,-20(s0)
     f10:	0017879b          	addiw	a5,a5,1
     f14:	fef42623          	sw	a5,-20(s0)
     f18:	fec42783          	lw	a5,-20(s0)
     f1c:	0007871b          	sext.w	a4,a5
     f20:	01f00793          	li	a5,31
     f24:	f8e7dee3          	bge	a5,a4,ec0 <reg_exe+0x18>
     f28:	00000013          	nop
     f2c:	01813083          	ld	ra,24(sp)
     f30:	01013403          	ld	s0,16(sp)
     f34:	02010113          	addi	sp,sp,32
     f38:	00008067          	ret

0000000000000f3c <edit_exe>:
     f3c:	fd010113          	addi	sp,sp,-48
     f40:	02113423          	sd	ra,40(sp)
     f44:	02813023          	sd	s0,32(sp)
     f48:	03010413          	addi	s0,sp,48
     f4c:	86018513          	addi	a0,gp,-1952 # 29d0 <buffer>
     f50:	df9ff0ef          	jal	ra,d48 <next_word>
     f54:	fea43023          	sd	a0,-32(s0)
     f58:	fe043783          	ld	a5,-32(s0)
     f5c:	0007c783          	lbu	a5,0(a5)
     f60:	08078863          	beqz	a5,ff0 <edit_exe+0xb4>
     f64:	fe043783          	ld	a5,-32(s0)
     f68:	00178793          	addi	a5,a5,1
     f6c:	0007c783          	lbu	a5,0(a5)
     f70:	08078063          	beqz	a5,ff0 <edit_exe+0xb4>
     f74:	fe043503          	ld	a0,-32(s0)
     f78:	fa0ff0ef          	jal	ra,718 <str2hex>
     f7c:	00050793          	mv	a5,a0
     f80:	fef42623          	sw	a5,-20(s0)
     f84:	000037b7          	lui	a5,0x3
     f88:	87878513          	addi	a0,a5,-1928 # 2878 <INST_CONFIG+0x5f8>
     f8c:	becff0ef          	jal	ra,378 <print>
     f90:	fec42783          	lw	a5,-20(s0)
     f94:	00078513          	mv	a0,a5
     f98:	ec4ff0ef          	jal	ra,65c <print_hex>
     f9c:	000037b7          	lui	a5,0x3
     fa0:	88078513          	addi	a0,a5,-1920 # 2880 <INST_CONFIG+0x600>
     fa4:	bd4ff0ef          	jal	ra,378 <print>
     fa8:	cf0ff0ef          	jal	ra,498 <get_line>
     fac:	8601c783          	lbu	a5,-1952(gp) # 29d0 <buffer>
     fb0:	04078263          	beqz	a5,ff4 <edit_exe+0xb8>
     fb4:	86018793          	addi	a5,gp,-1952 # 29d0 <buffer>
     fb8:	0017c783          	lbu	a5,1(a5)
     fbc:	02078c63          	beqz	a5,ff4 <edit_exe+0xb8>
     fc0:	86018513          	addi	a0,gp,-1952 # 29d0 <buffer>
     fc4:	f54ff0ef          	jal	ra,718 <str2hex>
     fc8:	00050793          	mv	a5,a0
     fcc:	fcf42e23          	sw	a5,-36(s0)
     fd0:	fec46783          	lwu	a5,-20(s0)
     fd4:	00078713          	mv	a4,a5
     fd8:	fdc42783          	lw	a5,-36(s0)
     fdc:	00f72023          	sw	a5,0(a4) # 1f000 <__global_pointer$+0x1be90>
     fe0:	fec42783          	lw	a5,-20(s0)
     fe4:	0047879b          	addiw	a5,a5,4
     fe8:	fef42623          	sw	a5,-20(s0)
     fec:	f99ff06f          	j	f84 <edit_exe+0x48>
     ff0:	00000013          	nop
     ff4:	02813083          	ld	ra,40(sp)
     ff8:	02013403          	ld	s0,32(sp)
     ffc:	03010113          	addi	sp,sp,48
    1000:	00008067          	ret

0000000000001004 <parse_arg>:
    1004:	fe010113          	addi	sp,sp,-32
    1008:	00113c23          	sd	ra,24(sp)
    100c:	00813823          	sd	s0,16(sp)
    1010:	02010413          	addi	s0,sp,32
    1014:	fea43423          	sd	a0,-24(s0)
    1018:	feb43023          	sd	a1,-32(s0)
    101c:	fe843783          	ld	a5,-24(s0)
    1020:	0007c783          	lbu	a5,0(a5)
    1024:	00078a63          	beqz	a5,1038 <parse_arg+0x34>
    1028:	fe843783          	ld	a5,-24(s0)
    102c:	00178793          	addi	a5,a5,1
    1030:	0007c783          	lbu	a5,0(a5)
    1034:	00079663          	bnez	a5,1040 <parse_arg+0x3c>
    1038:	00000793          	li	a5,0
    103c:	0b40006f          	j	10f0 <parse_arg+0xec>
    1040:	fe843783          	ld	a5,-24(s0)
    1044:	0007c783          	lbu	a5,0(a5)
    1048:	00078713          	mv	a4,a5
    104c:	03000793          	li	a5,48
    1050:	02f71c63          	bne	a4,a5,1088 <parse_arg+0x84>
    1054:	fe843783          	ld	a5,-24(s0)
    1058:	00178793          	addi	a5,a5,1
    105c:	0007c783          	lbu	a5,0(a5)
    1060:	00078713          	mv	a4,a5
    1064:	07800793          	li	a5,120
    1068:	02f71063          	bne	a4,a5,1088 <parse_arg+0x84>
    106c:	fe843503          	ld	a0,-24(s0)
    1070:	ea8ff0ef          	jal	ra,718 <str2hex>
    1074:	00050793          	mv	a5,a0
    1078:	0007871b          	sext.w	a4,a5
    107c:	fe043783          	ld	a5,-32(s0)
    1080:	00e7a023          	sw	a4,0(a5)
    1084:	0680006f          	j	10ec <parse_arg+0xe8>
    1088:	fe843783          	ld	a5,-24(s0)
    108c:	0007c783          	lbu	a5,0(a5)
    1090:	00078713          	mv	a4,a5
    1094:	07800793          	li	a5,120
    1098:	04f71a63          	bne	a4,a5,10ec <parse_arg+0xe8>
    109c:	fe843783          	ld	a5,-24(s0)
    10a0:	00178793          	addi	a5,a5,1
    10a4:	0007c783          	lbu	a5,0(a5)
    10a8:	00078713          	mv	a4,a5
    10ac:	03000793          	li	a5,48
    10b0:	02f71e63          	bne	a4,a5,10ec <parse_arg+0xe8>
    10b4:	fe843783          	ld	a5,-24(s0)
    10b8:	00278793          	addi	a5,a5,2
    10bc:	0007c783          	lbu	a5,0(a5)
    10c0:	00078713          	mv	a4,a5
    10c4:	07800793          	li	a5,120
    10c8:	02f71263          	bne	a4,a5,10ec <parse_arg+0xe8>
    10cc:	fe843783          	ld	a5,-24(s0)
    10d0:	00178793          	addi	a5,a5,1
    10d4:	00078513          	mv	a0,a5
    10d8:	e40ff0ef          	jal	ra,718 <str2hex>
    10dc:	00050793          	mv	a5,a0
    10e0:	0007871b          	sext.w	a4,a5
    10e4:	fe043783          	ld	a5,-32(s0)
    10e8:	00e7a023          	sw	a4,0(a5)
    10ec:	00100793          	li	a5,1
    10f0:	00078513          	mv	a0,a5
    10f4:	01813083          	ld	ra,24(sp)
    10f8:	01013403          	ld	s0,16(sp)
    10fc:	02010113          	addi	sp,sp,32
    1100:	00008067          	ret

0000000000001104 <inst2int>:
    1104:	fc010113          	addi	sp,sp,-64
    1108:	02113c23          	sd	ra,56(sp)
    110c:	02813823          	sd	s0,48(sp)
    1110:	04010413          	addi	s0,sp,64
    1114:	fca43423          	sd	a0,-56(s0)
    1118:	fe042623          	sw	zero,-20(s0)
    111c:	1000006f          	j	121c <inst2int+0x118>
    1120:	fe042423          	sw	zero,-24(s0)
    1124:	0100006f          	j	1134 <inst2int+0x30>
    1128:	fe842783          	lw	a5,-24(s0)
    112c:	0017879b          	addiw	a5,a5,1
    1130:	fef42423          	sw	a5,-24(s0)
    1134:	00002637          	lui	a2,0x2
    1138:	fe842683          	lw	a3,-24(s0)
    113c:	fec42703          	lw	a4,-20(s0)
    1140:	00070793          	mv	a5,a4
    1144:	00379793          	slli	a5,a5,0x3
    1148:	40e787b3          	sub	a5,a5,a4
    114c:	17060713          	addi	a4,a2,368 # 2170 <INST_NAMES>
    1150:	00e787b3          	add	a5,a5,a4
    1154:	00d787b3          	add	a5,a5,a3
    1158:	0007c783          	lbu	a5,0(a5)
    115c:	04078c63          	beqz	a5,11b4 <inst2int+0xb0>
    1160:	fe842783          	lw	a5,-24(s0)
    1164:	fc843703          	ld	a4,-56(s0)
    1168:	00f707b3          	add	a5,a4,a5
    116c:	0007c783          	lbu	a5,0(a5)
    1170:	04078263          	beqz	a5,11b4 <inst2int+0xb0>
    1174:	00002637          	lui	a2,0x2
    1178:	fe842683          	lw	a3,-24(s0)
    117c:	fec42703          	lw	a4,-20(s0)
    1180:	00070793          	mv	a5,a4
    1184:	00379793          	slli	a5,a5,0x3
    1188:	40e787b3          	sub	a5,a5,a4
    118c:	17060713          	addi	a4,a2,368 # 2170 <INST_NAMES>
    1190:	00e787b3          	add	a5,a5,a4
    1194:	00d787b3          	add	a5,a5,a3
    1198:	0007c683          	lbu	a3,0(a5)
    119c:	fe842783          	lw	a5,-24(s0)
    11a0:	fc843703          	ld	a4,-56(s0)
    11a4:	00f707b3          	add	a5,a4,a5
    11a8:	0007c783          	lbu	a5,0(a5)
    11ac:	00068713          	mv	a4,a3
    11b0:	f6f70ce3          	beq	a4,a5,1128 <inst2int+0x24>
    11b4:	00002637          	lui	a2,0x2
    11b8:	fe842683          	lw	a3,-24(s0)
    11bc:	fec42703          	lw	a4,-20(s0)
    11c0:	00070793          	mv	a5,a4
    11c4:	00379793          	slli	a5,a5,0x3
    11c8:	40e787b3          	sub	a5,a5,a4
    11cc:	17060713          	addi	a4,a2,368 # 2170 <INST_NAMES>
    11d0:	00e787b3          	add	a5,a5,a4
    11d4:	00d787b3          	add	a5,a5,a3
    11d8:	0007c783          	lbu	a5,0(a5)
    11dc:	02079a63          	bnez	a5,1210 <inst2int+0x10c>
    11e0:	fe842783          	lw	a5,-24(s0)
    11e4:	fc843703          	ld	a4,-56(s0)
    11e8:	00f707b3          	add	a5,a4,a5
    11ec:	0007c783          	lbu	a5,0(a5)
    11f0:	02078e63          	beqz	a5,122c <inst2int+0x128>
    11f4:	fe842783          	lw	a5,-24(s0)
    11f8:	fc843703          	ld	a4,-56(s0)
    11fc:	00f707b3          	add	a5,a4,a5
    1200:	0007c783          	lbu	a5,0(a5)
    1204:	00078713          	mv	a4,a5
    1208:	02000793          	li	a5,32
    120c:	02f70063          	beq	a4,a5,122c <inst2int+0x128>
    1210:	fec42783          	lw	a5,-20(s0)
    1214:	0017879b          	addiw	a5,a5,1
    1218:	fef42623          	sw	a5,-20(s0)
    121c:	fec42783          	lw	a5,-20(s0)
    1220:	0007871b          	sext.w	a4,a5
    1224:	02500793          	li	a5,37
    1228:	eee7dce3          	bge	a5,a4,1120 <inst2int+0x1c>
    122c:	fec42783          	lw	a5,-20(s0)
    1230:	0007871b          	sext.w	a4,a5
    1234:	02600793          	li	a5,38
    1238:	00f71663          	bne	a4,a5,1244 <inst2int+0x140>
    123c:	00000793          	li	a5,0
    1240:	55c0006f          	j	179c <inst2int+0x698>
    1244:	000027b7          	lui	a5,0x2
    1248:	fec42703          	lw	a4,-20(s0)
    124c:	00471713          	slli	a4,a4,0x4
    1250:	28078793          	addi	a5,a5,640 # 2280 <INST_CONFIG>
    1254:	00f707b3          	add	a5,a4,a5
    1258:	0047a783          	lw	a5,4(a5)
    125c:	fef42223          	sw	a5,-28(s0)
    1260:	000027b7          	lui	a5,0x2
    1264:	fec42703          	lw	a4,-20(s0)
    1268:	00471713          	slli	a4,a4,0x4
    126c:	28078793          	addi	a5,a5,640 # 2280 <INST_CONFIG>
    1270:	00f707b3          	add	a5,a4,a5
    1274:	0007a783          	lw	a5,0(a5)
    1278:	fef42023          	sw	a5,-32(s0)
    127c:	fe042783          	lw	a5,-32(s0)
    1280:	0007871b          	sext.w	a4,a5
    1284:	00600793          	li	a5,6
    1288:	02f71863          	bne	a4,a5,12b8 <inst2int+0x1b4>
    128c:	000027b7          	lui	a5,0x2
    1290:	fec42703          	lw	a4,-20(s0)
    1294:	00471713          	slli	a4,a4,0x4
    1298:	28078793          	addi	a5,a5,640 # 2280 <INST_CONFIG>
    129c:	00f707b3          	add	a5,a4,a5
    12a0:	0087a783          	lw	a5,8(a5)
    12a4:	0077979b          	slliw	a5,a5,0x7
    12a8:	0007871b          	sext.w	a4,a5
    12ac:	fe442783          	lw	a5,-28(s0)
    12b0:	00e7e7b3          	or	a5,a5,a4
    12b4:	fef42223          	sw	a5,-28(s0)
    12b8:	fe042783          	lw	a5,-32(s0)
    12bc:	0007879b          	sext.w	a5,a5
    12c0:	02078a63          	beqz	a5,12f4 <inst2int+0x1f0>
    12c4:	fe042783          	lw	a5,-32(s0)
    12c8:	0007871b          	sext.w	a4,a5
    12cc:	00100793          	li	a5,1
    12d0:	02f70263          	beq	a4,a5,12f4 <inst2int+0x1f0>
    12d4:	fe042783          	lw	a5,-32(s0)
    12d8:	0007871b          	sext.w	a4,a5
    12dc:	00200793          	li	a5,2
    12e0:	00f70a63          	beq	a4,a5,12f4 <inst2int+0x1f0>
    12e4:	fe042783          	lw	a5,-32(s0)
    12e8:	0007871b          	sext.w	a4,a5
    12ec:	00300793          	li	a5,3
    12f0:	04f71063          	bne	a4,a5,1330 <inst2int+0x22c>
    12f4:	000027b7          	lui	a5,0x2
    12f8:	fec42703          	lw	a4,-20(s0)
    12fc:	00471713          	slli	a4,a4,0x4
    1300:	28078793          	addi	a5,a5,640 # 2280 <INST_CONFIG>
    1304:	00f707b3          	add	a5,a4,a5
    1308:	0087a783          	lw	a5,8(a5)
    130c:	00c7979b          	slliw	a5,a5,0xc
    1310:	0007879b          	sext.w	a5,a5
    1314:	00078713          	mv	a4,a5
    1318:	000077b7          	lui	a5,0x7
    131c:	00f777b3          	and	a5,a4,a5
    1320:	0007871b          	sext.w	a4,a5
    1324:	fe442783          	lw	a5,-28(s0)
    1328:	00e7e7b3          	or	a5,a5,a4
    132c:	fef42223          	sw	a5,-28(s0)
    1330:	fe042783          	lw	a5,-32(s0)
    1334:	0007879b          	sext.w	a5,a5
    1338:	02079863          	bnez	a5,1368 <inst2int+0x264>
    133c:	000027b7          	lui	a5,0x2
    1340:	fec42703          	lw	a4,-20(s0)
    1344:	00471713          	slli	a4,a4,0x4
    1348:	28078793          	addi	a5,a5,640 # 2280 <INST_CONFIG>
    134c:	00f707b3          	add	a5,a4,a5
    1350:	00c7a783          	lw	a5,12(a5)
    1354:	0197979b          	slliw	a5,a5,0x19
    1358:	0007871b          	sext.w	a4,a5
    135c:	fe442783          	lw	a5,-28(s0)
    1360:	00e7e7b3          	or	a5,a5,a4
    1364:	fef42223          	sw	a5,-28(s0)
    1368:	fe042783          	lw	a5,-32(s0)
    136c:	0007879b          	sext.w	a5,a5
    1370:	02078a63          	beqz	a5,13a4 <inst2int+0x2a0>
    1374:	fe042783          	lw	a5,-32(s0)
    1378:	0007871b          	sext.w	a4,a5
    137c:	00100793          	li	a5,1
    1380:	02f70263          	beq	a4,a5,13a4 <inst2int+0x2a0>
    1384:	fe042783          	lw	a5,-32(s0)
    1388:	0007871b          	sext.w	a4,a5
    138c:	00400793          	li	a5,4
    1390:	00f70a63          	beq	a4,a5,13a4 <inst2int+0x2a0>
    1394:	fe042783          	lw	a5,-32(s0)
    1398:	0007871b          	sext.w	a4,a5
    139c:	00500793          	li	a5,5
    13a0:	06f71463          	bne	a4,a5,1408 <inst2int+0x304>
    13a4:	fc843503          	ld	a0,-56(s0)
    13a8:	9a1ff0ef          	jal	ra,d48 <next_word>
    13ac:	fca43423          	sd	a0,-56(s0)
    13b0:	fd840793          	addi	a5,s0,-40
    13b4:	00078593          	mv	a1,a5
    13b8:	fc843503          	ld	a0,-56(s0)
    13bc:	c49ff0ef          	jal	ra,1004 <parse_arg>
    13c0:	00050793          	mv	a5,a0
    13c4:	fcf42e23          	sw	a5,-36(s0)
    13c8:	fdc42783          	lw	a5,-36(s0)
    13cc:	0007879b          	sext.w	a5,a5
    13d0:	00079663          	bnez	a5,13dc <inst2int+0x2d8>
    13d4:	00000793          	li	a5,0
    13d8:	3c40006f          	j	179c <inst2int+0x698>
    13dc:	fd842783          	lw	a5,-40(s0)
    13e0:	0077979b          	slliw	a5,a5,0x7
    13e4:	0007879b          	sext.w	a5,a5
    13e8:	00078713          	mv	a4,a5
    13ec:	000017b7          	lui	a5,0x1
    13f0:	f8078793          	addi	a5,a5,-128 # f80 <edit_exe+0x44>
    13f4:	00f777b3          	and	a5,a4,a5
    13f8:	0007871b          	sext.w	a4,a5
    13fc:	fe442783          	lw	a5,-28(s0)
    1400:	00e7e7b3          	or	a5,a5,a4
    1404:	fef42223          	sw	a5,-28(s0)
    1408:	fe042783          	lw	a5,-32(s0)
    140c:	0007879b          	sext.w	a5,a5
    1410:	02078a63          	beqz	a5,1444 <inst2int+0x340>
    1414:	fe042783          	lw	a5,-32(s0)
    1418:	0007871b          	sext.w	a4,a5
    141c:	00100793          	li	a5,1
    1420:	02f70263          	beq	a4,a5,1444 <inst2int+0x340>
    1424:	fe042783          	lw	a5,-32(s0)
    1428:	0007871b          	sext.w	a4,a5
    142c:	00200793          	li	a5,2
    1430:	00f70a63          	beq	a4,a5,1444 <inst2int+0x340>
    1434:	fe042783          	lw	a5,-32(s0)
    1438:	0007871b          	sext.w	a4,a5
    143c:	00300793          	li	a5,3
    1440:	06f71263          	bne	a4,a5,14a4 <inst2int+0x3a0>
    1444:	fc843503          	ld	a0,-56(s0)
    1448:	901ff0ef          	jal	ra,d48 <next_word>
    144c:	fca43423          	sd	a0,-56(s0)
    1450:	fd840793          	addi	a5,s0,-40
    1454:	00078593          	mv	a1,a5
    1458:	fc843503          	ld	a0,-56(s0)
    145c:	ba9ff0ef          	jal	ra,1004 <parse_arg>
    1460:	00050793          	mv	a5,a0
    1464:	fcf42e23          	sw	a5,-36(s0)
    1468:	fdc42783          	lw	a5,-36(s0)
    146c:	0007879b          	sext.w	a5,a5
    1470:	00079663          	bnez	a5,147c <inst2int+0x378>
    1474:	00000793          	li	a5,0
    1478:	3240006f          	j	179c <inst2int+0x698>
    147c:	fd842783          	lw	a5,-40(s0)
    1480:	00f7979b          	slliw	a5,a5,0xf
    1484:	0007879b          	sext.w	a5,a5
    1488:	00078713          	mv	a4,a5
    148c:	000f87b7          	lui	a5,0xf8
    1490:	00f777b3          	and	a5,a4,a5
    1494:	0007871b          	sext.w	a4,a5
    1498:	fe442783          	lw	a5,-28(s0)
    149c:	00e7e7b3          	or	a5,a5,a4
    14a0:	fef42223          	sw	a5,-28(s0)
    14a4:	fe042783          	lw	a5,-32(s0)
    14a8:	0007879b          	sext.w	a5,a5
    14ac:	02078263          	beqz	a5,14d0 <inst2int+0x3cc>
    14b0:	fe042783          	lw	a5,-32(s0)
    14b4:	0007871b          	sext.w	a4,a5
    14b8:	00200793          	li	a5,2
    14bc:	00f70a63          	beq	a4,a5,14d0 <inst2int+0x3cc>
    14c0:	fe042783          	lw	a5,-32(s0)
    14c4:	0007871b          	sext.w	a4,a5
    14c8:	00300793          	li	a5,3
    14cc:	06f71263          	bne	a4,a5,1530 <inst2int+0x42c>
    14d0:	fc843503          	ld	a0,-56(s0)
    14d4:	875ff0ef          	jal	ra,d48 <next_word>
    14d8:	fca43423          	sd	a0,-56(s0)
    14dc:	fd840793          	addi	a5,s0,-40
    14e0:	00078593          	mv	a1,a5
    14e4:	fc843503          	ld	a0,-56(s0)
    14e8:	b1dff0ef          	jal	ra,1004 <parse_arg>
    14ec:	00050793          	mv	a5,a0
    14f0:	fcf42e23          	sw	a5,-36(s0)
    14f4:	fdc42783          	lw	a5,-36(s0)
    14f8:	0007879b          	sext.w	a5,a5
    14fc:	00079663          	bnez	a5,1508 <inst2int+0x404>
    1500:	00000793          	li	a5,0
    1504:	2980006f          	j	179c <inst2int+0x698>
    1508:	fd842783          	lw	a5,-40(s0)
    150c:	0147979b          	slliw	a5,a5,0x14
    1510:	0007879b          	sext.w	a5,a5
    1514:	00078713          	mv	a4,a5
    1518:	01f007b7          	lui	a5,0x1f00
    151c:	00f777b3          	and	a5,a4,a5
    1520:	0007871b          	sext.w	a4,a5
    1524:	fe442783          	lw	a5,-28(s0)
    1528:	00e7e7b3          	or	a5,a5,a4
    152c:	fef42223          	sw	a5,-28(s0)
    1530:	fe042783          	lw	a5,-32(s0)
    1534:	0007879b          	sext.w	a5,a5
    1538:	24078e63          	beqz	a5,1794 <inst2int+0x690>
    153c:	fe042783          	lw	a5,-32(s0)
    1540:	0007871b          	sext.w	a4,a5
    1544:	00600793          	li	a5,6
    1548:	24f70663          	beq	a4,a5,1794 <inst2int+0x690>
    154c:	fc843503          	ld	a0,-56(s0)
    1550:	ff8ff0ef          	jal	ra,d48 <next_word>
    1554:	fca43423          	sd	a0,-56(s0)
    1558:	fd840793          	addi	a5,s0,-40
    155c:	00078593          	mv	a1,a5
    1560:	fc843503          	ld	a0,-56(s0)
    1564:	aa1ff0ef          	jal	ra,1004 <parse_arg>
    1568:	00050793          	mv	a5,a0
    156c:	fcf42e23          	sw	a5,-36(s0)
    1570:	fdc42783          	lw	a5,-36(s0)
    1574:	0007879b          	sext.w	a5,a5
    1578:	00079663          	bnez	a5,1584 <inst2int+0x480>
    157c:	00000793          	li	a5,0
    1580:	21c0006f          	j	179c <inst2int+0x698>
    1584:	fe042783          	lw	a5,-32(s0)
    1588:	0007871b          	sext.w	a4,a5
    158c:	00500793          	li	a5,5
    1590:	20e7e463          	bltu	a5,a4,1798 <inst2int+0x694>
    1594:	fe046783          	lwu	a5,-32(s0)
    1598:	00279713          	slli	a4,a5,0x2
    159c:	000037b7          	lui	a5,0x3
    15a0:	88478793          	addi	a5,a5,-1916 # 2884 <INST_CONFIG+0x604>
    15a4:	00f707b3          	add	a5,a4,a5
    15a8:	0007a783          	lw	a5,0(a5)
    15ac:	00078067          	jr	a5
    15b0:	fd842783          	lw	a5,-40(s0)
    15b4:	0147979b          	slliw	a5,a5,0x14
    15b8:	0007871b          	sext.w	a4,a5
    15bc:	fe442783          	lw	a5,-28(s0)
    15c0:	00e7e7b3          	or	a5,a5,a4
    15c4:	fef42223          	sw	a5,-28(s0)
    15c8:	1d00006f          	j	1798 <inst2int+0x694>
    15cc:	fd842783          	lw	a5,-40(s0)
    15d0:	0077979b          	slliw	a5,a5,0x7
    15d4:	0007879b          	sext.w	a5,a5
    15d8:	00078713          	mv	a4,a5
    15dc:	000017b7          	lui	a5,0x1
    15e0:	f8078793          	addi	a5,a5,-128 # f80 <edit_exe+0x44>
    15e4:	00f777b3          	and	a5,a4,a5
    15e8:	0007871b          	sext.w	a4,a5
    15ec:	fe442783          	lw	a5,-28(s0)
    15f0:	00e7e7b3          	or	a5,a5,a4
    15f4:	fef42223          	sw	a5,-28(s0)
    15f8:	fd842783          	lw	a5,-40(s0)
    15fc:	0057d79b          	srliw	a5,a5,0x5
    1600:	0007879b          	sext.w	a5,a5
    1604:	0197979b          	slliw	a5,a5,0x19
    1608:	0007871b          	sext.w	a4,a5
    160c:	fe442783          	lw	a5,-28(s0)
    1610:	00e7e7b3          	or	a5,a5,a4
    1614:	fef42223          	sw	a5,-28(s0)
    1618:	1800006f          	j	1798 <inst2int+0x694>
    161c:	fd842783          	lw	a5,-40(s0)
    1620:	00b7d79b          	srliw	a5,a5,0xb
    1624:	0007879b          	sext.w	a5,a5
    1628:	0077979b          	slliw	a5,a5,0x7
    162c:	0007879b          	sext.w	a5,a5
    1630:	0ff7f793          	andi	a5,a5,255
    1634:	0007871b          	sext.w	a4,a5
    1638:	fe442783          	lw	a5,-28(s0)
    163c:	00e7e7b3          	or	a5,a5,a4
    1640:	fef42223          	sw	a5,-28(s0)
    1644:	fd842783          	lw	a5,-40(s0)
    1648:	0017d79b          	srliw	a5,a5,0x1
    164c:	0007879b          	sext.w	a5,a5
    1650:	0087979b          	slliw	a5,a5,0x8
    1654:	0007879b          	sext.w	a5,a5
    1658:	00078713          	mv	a4,a5
    165c:	000017b7          	lui	a5,0x1
    1660:	f0078793          	addi	a5,a5,-256 # f00 <reg_exe+0x58>
    1664:	00f777b3          	and	a5,a4,a5
    1668:	0007871b          	sext.w	a4,a5
    166c:	fe442783          	lw	a5,-28(s0)
    1670:	00e7e7b3          	or	a5,a5,a4
    1674:	fef42223          	sw	a5,-28(s0)
    1678:	fd842783          	lw	a5,-40(s0)
    167c:	0057d79b          	srliw	a5,a5,0x5
    1680:	0007879b          	sext.w	a5,a5
    1684:	0197979b          	slliw	a5,a5,0x19
    1688:	0007879b          	sext.w	a5,a5
    168c:	00078713          	mv	a4,a5
    1690:	7e0007b7          	lui	a5,0x7e000
    1694:	00f777b3          	and	a5,a4,a5
    1698:	0007871b          	sext.w	a4,a5
    169c:	fe442783          	lw	a5,-28(s0)
    16a0:	00e7e7b3          	or	a5,a5,a4
    16a4:	fef42223          	sw	a5,-28(s0)
    16a8:	fd842783          	lw	a5,-40(s0)
    16ac:	00c7d79b          	srliw	a5,a5,0xc
    16b0:	0007879b          	sext.w	a5,a5
    16b4:	01f7979b          	slliw	a5,a5,0x1f
    16b8:	0007871b          	sext.w	a4,a5
    16bc:	fe442783          	lw	a5,-28(s0)
    16c0:	00e7e7b3          	or	a5,a5,a4
    16c4:	fef42223          	sw	a5,-28(s0)
    16c8:	0d00006f          	j	1798 <inst2int+0x694>
    16cc:	fd842783          	lw	a5,-40(s0)
    16d0:	00078713          	mv	a4,a5
    16d4:	fffff7b7          	lui	a5,0xfffff
    16d8:	00f777b3          	and	a5,a4,a5
    16dc:	0007871b          	sext.w	a4,a5
    16e0:	fe442783          	lw	a5,-28(s0)
    16e4:	00e7e7b3          	or	a5,a5,a4
    16e8:	fef42223          	sw	a5,-28(s0)
    16ec:	0ac0006f          	j	1798 <inst2int+0x694>
    16f0:	fd842783          	lw	a5,-40(s0)
    16f4:	00078713          	mv	a4,a5
    16f8:	000ff7b7          	lui	a5,0xff
    16fc:	00f777b3          	and	a5,a4,a5
    1700:	0007871b          	sext.w	a4,a5
    1704:	fe442783          	lw	a5,-28(s0)
    1708:	00e7e7b3          	or	a5,a5,a4
    170c:	fef42223          	sw	a5,-28(s0)
    1710:	fd842783          	lw	a5,-40(s0)
    1714:	00b7d79b          	srliw	a5,a5,0xb
    1718:	0007879b          	sext.w	a5,a5
    171c:	0147979b          	slliw	a5,a5,0x14
    1720:	0007879b          	sext.w	a5,a5
    1724:	00078713          	mv	a4,a5
    1728:	001007b7          	lui	a5,0x100
    172c:	00f777b3          	and	a5,a4,a5
    1730:	0007871b          	sext.w	a4,a5
    1734:	fe442783          	lw	a5,-28(s0)
    1738:	00e7e7b3          	or	a5,a5,a4
    173c:	fef42223          	sw	a5,-28(s0)
    1740:	fd842783          	lw	a5,-40(s0)
    1744:	0017d79b          	srliw	a5,a5,0x1
    1748:	0007879b          	sext.w	a5,a5
    174c:	0157979b          	slliw	a5,a5,0x15
    1750:	0007879b          	sext.w	a5,a5
    1754:	00078713          	mv	a4,a5
    1758:	7fe007b7          	lui	a5,0x7fe00
    175c:	00f777b3          	and	a5,a4,a5
    1760:	0007871b          	sext.w	a4,a5
    1764:	fe442783          	lw	a5,-28(s0)
    1768:	00e7e7b3          	or	a5,a5,a4
    176c:	fef42223          	sw	a5,-28(s0)
    1770:	fd842783          	lw	a5,-40(s0)
    1774:	0147d79b          	srliw	a5,a5,0x14
    1778:	0007879b          	sext.w	a5,a5
    177c:	01f7979b          	slliw	a5,a5,0x1f
    1780:	0007871b          	sext.w	a4,a5
    1784:	fe442783          	lw	a5,-28(s0)
    1788:	00e7e7b3          	or	a5,a5,a4
    178c:	fef42223          	sw	a5,-28(s0)
    1790:	0080006f          	j	1798 <inst2int+0x694>
    1794:	00000013          	nop
    1798:	fe442783          	lw	a5,-28(s0)
    179c:	00078513          	mv	a0,a5
    17a0:	03813083          	ld	ra,56(sp)
    17a4:	03013403          	ld	s0,48(sp)
    17a8:	04010113          	addi	sp,sp,64
    17ac:	00008067          	ret

00000000000017b0 <inst_exe>:
    17b0:	fd010113          	addi	sp,sp,-48
    17b4:	02113423          	sd	ra,40(sp)
    17b8:	02813023          	sd	s0,32(sp)
    17bc:	03010413          	addi	s0,sp,48
    17c0:	86018513          	addi	a0,gp,-1952 # 29d0 <buffer>
    17c4:	d84ff0ef          	jal	ra,d48 <next_word>
    17c8:	fea43023          	sd	a0,-32(s0)
    17cc:	fe043783          	ld	a5,-32(s0)
    17d0:	0007c783          	lbu	a5,0(a5) # 7fe00000 <__global_pointer$+0x7fdfce90>
    17d4:	08078463          	beqz	a5,185c <inst_exe+0xac>
    17d8:	fe043783          	ld	a5,-32(s0)
    17dc:	00178793          	addi	a5,a5,1
    17e0:	0007c783          	lbu	a5,0(a5)
    17e4:	06078c63          	beqz	a5,185c <inst_exe+0xac>
    17e8:	fe043503          	ld	a0,-32(s0)
    17ec:	f2dfe0ef          	jal	ra,718 <str2hex>
    17f0:	00050793          	mv	a5,a0
    17f4:	fef42623          	sw	a5,-20(s0)
    17f8:	000037b7          	lui	a5,0x3
    17fc:	87878513          	addi	a0,a5,-1928 # 2878 <INST_CONFIG+0x5f8>
    1800:	b79fe0ef          	jal	ra,378 <print>
    1804:	fec42783          	lw	a5,-20(s0)
    1808:	00078513          	mv	a0,a5
    180c:	e51fe0ef          	jal	ra,65c <print_hex>
    1810:	000037b7          	lui	a5,0x3
    1814:	88078513          	addi	a0,a5,-1920 # 2880 <INST_CONFIG+0x600>
    1818:	b61fe0ef          	jal	ra,378 <print>
    181c:	c7dfe0ef          	jal	ra,498 <get_line>
    1820:	86018513          	addi	a0,gp,-1952 # 29d0 <buffer>
    1824:	8e1ff0ef          	jal	ra,1104 <inst2int>
    1828:	00050793          	mv	a5,a0
    182c:	fcf42e23          	sw	a5,-36(s0)
    1830:	fdc42783          	lw	a5,-36(s0)
    1834:	0007879b          	sext.w	a5,a5
    1838:	02078663          	beqz	a5,1864 <inst_exe+0xb4>
    183c:	fec46783          	lwu	a5,-20(s0)
    1840:	00078713          	mv	a4,a5
    1844:	fdc42783          	lw	a5,-36(s0)
    1848:	00f72023          	sw	a5,0(a4)
    184c:	fec42783          	lw	a5,-20(s0)
    1850:	0047879b          	addiw	a5,a5,4
    1854:	fef42623          	sw	a5,-20(s0)
    1858:	fa1ff06f          	j	17f8 <inst_exe+0x48>
    185c:	00000013          	nop
    1860:	0080006f          	j	1868 <inst_exe+0xb8>
    1864:	00000013          	nop
    1868:	02813083          	ld	ra,40(sp)
    186c:	02013403          	ld	s0,32(sp)
    1870:	03010113          	addi	sp,sp,48
    1874:	00008067          	ret

0000000000001878 <view_exe>:
    1878:	fd010113          	addi	sp,sp,-48
    187c:	02113423          	sd	ra,40(sp)
    1880:	02813023          	sd	s0,32(sp)
    1884:	03010413          	addi	s0,sp,48
    1888:	86018513          	addi	a0,gp,-1952 # 29d0 <buffer>
    188c:	cbcff0ef          	jal	ra,d48 <next_word>
    1890:	fea43023          	sd	a0,-32(s0)
    1894:	fe043783          	ld	a5,-32(s0)
    1898:	0007c783          	lbu	a5,0(a5)
    189c:	0c078463          	beqz	a5,1964 <view_exe+0xec>
    18a0:	fe043783          	ld	a5,-32(s0)
    18a4:	00178793          	addi	a5,a5,1
    18a8:	0007c783          	lbu	a5,0(a5)
    18ac:	0a078c63          	beqz	a5,1964 <view_exe+0xec>
    18b0:	fe043503          	ld	a0,-32(s0)
    18b4:	e65fe0ef          	jal	ra,718 <str2hex>
    18b8:	00050793          	mv	a5,a0
    18bc:	fef42623          	sw	a5,-20(s0)
    18c0:	fe043503          	ld	a0,-32(s0)
    18c4:	c84ff0ef          	jal	ra,d48 <next_word>
    18c8:	fea43023          	sd	a0,-32(s0)
    18cc:	fe043783          	ld	a5,-32(s0)
    18d0:	0007c783          	lbu	a5,0(a5)
    18d4:	08078c63          	beqz	a5,196c <view_exe+0xf4>
    18d8:	fe043783          	ld	a5,-32(s0)
    18dc:	00178793          	addi	a5,a5,1
    18e0:	0007c783          	lbu	a5,0(a5)
    18e4:	08078463          	beqz	a5,196c <view_exe+0xf4>
    18e8:	fe043503          	ld	a0,-32(s0)
    18ec:	e2dfe0ef          	jal	ra,718 <str2hex>
    18f0:	00050793          	mv	a5,a0
    18f4:	fef42423          	sw	a5,-24(s0)
    18f8:	0580006f          	j	1950 <view_exe+0xd8>
    18fc:	000037b7          	lui	a5,0x3
    1900:	87878513          	addi	a0,a5,-1928 # 2878 <INST_CONFIG+0x5f8>
    1904:	a75fe0ef          	jal	ra,378 <print>
    1908:	fec42783          	lw	a5,-20(s0)
    190c:	00078513          	mv	a0,a5
    1910:	d4dfe0ef          	jal	ra,65c <print_hex>
    1914:	000037b7          	lui	a5,0x3
    1918:	88078513          	addi	a0,a5,-1920 # 2880 <INST_CONFIG+0x600>
    191c:	a5dfe0ef          	jal	ra,378 <print>
    1920:	fec46783          	lwu	a5,-20(s0)
    1924:	0007a783          	lw	a5,0(a5)
    1928:	fcf42e23          	sw	a5,-36(s0)
    192c:	fdc42783          	lw	a5,-36(s0)
    1930:	00078513          	mv	a0,a5
    1934:	d29fe0ef          	jal	ra,65c <print_hex>
    1938:	000027b7          	lui	a5,0x2
    193c:	6e878513          	addi	a0,a5,1768 # 26e8 <INST_CONFIG+0x468>
    1940:	a39fe0ef          	jal	ra,378 <print>
    1944:	fec42783          	lw	a5,-20(s0)
    1948:	0047879b          	addiw	a5,a5,4
    194c:	fef42623          	sw	a5,-20(s0)
    1950:	fe842783          	lw	a5,-24(s0)
    1954:	fff7871b          	addiw	a4,a5,-1
    1958:	fee42423          	sw	a4,-24(s0)
    195c:	fa0790e3          	bnez	a5,18fc <view_exe+0x84>
    1960:	0100006f          	j	1970 <view_exe+0xf8>
    1964:	00000013          	nop
    1968:	0080006f          	j	1970 <view_exe+0xf8>
    196c:	00000013          	nop
    1970:	02813083          	ld	ra,40(sp)
    1974:	02013403          	ld	s0,32(sp)
    1978:	03010113          	addi	sp,sp,48
    197c:	00008067          	ret

0000000000001980 <print_int2inst>:
    1980:	fd010113          	addi	sp,sp,-48
    1984:	02113423          	sd	ra,40(sp)
    1988:	02813023          	sd	s0,32(sp)
    198c:	03010413          	addi	s0,sp,48
    1990:	00050793          	mv	a5,a0
    1994:	fcf42e23          	sw	a5,-36(s0)
    1998:	fe042623          	sw	zero,-20(s0)
    199c:	1440006f          	j	1ae0 <print_int2inst+0x160>
    19a0:	000027b7          	lui	a5,0x2
    19a4:	fec42703          	lw	a4,-20(s0)
    19a8:	00471713          	slli	a4,a4,0x4
    19ac:	28078793          	addi	a5,a5,640 # 2280 <INST_CONFIG>
    19b0:	00f707b3          	add	a5,a4,a5
    19b4:	0047a703          	lw	a4,4(a5)
    19b8:	fdc42783          	lw	a5,-36(s0)
    19bc:	07f7f793          	andi	a5,a5,127
    19c0:	0007879b          	sext.w	a5,a5
    19c4:	0ef71e63          	bne	a4,a5,1ac0 <print_int2inst+0x140>
    19c8:	000027b7          	lui	a5,0x2
    19cc:	fec42703          	lw	a4,-20(s0)
    19d0:	00471713          	slli	a4,a4,0x4
    19d4:	28078793          	addi	a5,a5,640 # 2280 <INST_CONFIG>
    19d8:	00f707b3          	add	a5,a4,a5
    19dc:	0007a783          	lw	a5,0(a5)
    19e0:	fef42423          	sw	a5,-24(s0)
    19e4:	fe842783          	lw	a5,-24(s0)
    19e8:	0007879b          	sext.w	a5,a5
    19ec:	02079663          	bnez	a5,1a18 <print_int2inst+0x98>
    19f0:	000027b7          	lui	a5,0x2
    19f4:	fec42703          	lw	a4,-20(s0)
    19f8:	00471713          	slli	a4,a4,0x4
    19fc:	28078793          	addi	a5,a5,640 # 2280 <INST_CONFIG>
    1a00:	00f707b3          	add	a5,a4,a5
    1a04:	00c7a703          	lw	a4,12(a5)
    1a08:	fdc42783          	lw	a5,-36(s0)
    1a0c:	0197d79b          	srliw	a5,a5,0x19
    1a10:	0007879b          	sext.w	a5,a5
    1a14:	0af71a63          	bne	a4,a5,1ac8 <print_int2inst+0x148>
    1a18:	fe842783          	lw	a5,-24(s0)
    1a1c:	0007879b          	sext.w	a5,a5
    1a20:	02078a63          	beqz	a5,1a54 <print_int2inst+0xd4>
    1a24:	fe842783          	lw	a5,-24(s0)
    1a28:	0007871b          	sext.w	a4,a5
    1a2c:	00100793          	li	a5,1
    1a30:	02f70263          	beq	a4,a5,1a54 <print_int2inst+0xd4>
    1a34:	fe842783          	lw	a5,-24(s0)
    1a38:	0007871b          	sext.w	a4,a5
    1a3c:	00200793          	li	a5,2
    1a40:	00f70a63          	beq	a4,a5,1a54 <print_int2inst+0xd4>
    1a44:	fe842783          	lw	a5,-24(s0)
    1a48:	0007871b          	sext.w	a4,a5
    1a4c:	00300793          	li	a5,3
    1a50:	02f71a63          	bne	a4,a5,1a84 <print_int2inst+0x104>
    1a54:	000027b7          	lui	a5,0x2
    1a58:	fec42703          	lw	a4,-20(s0)
    1a5c:	00471713          	slli	a4,a4,0x4
    1a60:	28078793          	addi	a5,a5,640 # 2280 <INST_CONFIG>
    1a64:	00f707b3          	add	a5,a4,a5
    1a68:	0087a703          	lw	a4,8(a5)
    1a6c:	fdc42783          	lw	a5,-36(s0)
    1a70:	00c7d79b          	srliw	a5,a5,0xc
    1a74:	0007879b          	sext.w	a5,a5
    1a78:	0077f793          	andi	a5,a5,7
    1a7c:	0007879b          	sext.w	a5,a5
    1a80:	04f71863          	bne	a4,a5,1ad0 <print_int2inst+0x150>
    1a84:	fe842783          	lw	a5,-24(s0)
    1a88:	0007871b          	sext.w	a4,a5
    1a8c:	00600793          	li	a5,6
    1a90:	06f71263          	bne	a4,a5,1af4 <print_int2inst+0x174>
    1a94:	000027b7          	lui	a5,0x2
    1a98:	fec42703          	lw	a4,-20(s0)
    1a9c:	00471713          	slli	a4,a4,0x4
    1aa0:	28078793          	addi	a5,a5,640 # 2280 <INST_CONFIG>
    1aa4:	00f707b3          	add	a5,a4,a5
    1aa8:	0087a703          	lw	a4,8(a5)
    1aac:	fdc42783          	lw	a5,-36(s0)
    1ab0:	0077d79b          	srliw	a5,a5,0x7
    1ab4:	0007879b          	sext.w	a5,a5
    1ab8:	02f70e63          	beq	a4,a5,1af4 <print_int2inst+0x174>
    1abc:	0180006f          	j	1ad4 <print_int2inst+0x154>
    1ac0:	00000013          	nop
    1ac4:	0100006f          	j	1ad4 <print_int2inst+0x154>
    1ac8:	00000013          	nop
    1acc:	0080006f          	j	1ad4 <print_int2inst+0x154>
    1ad0:	00000013          	nop
    1ad4:	fec42783          	lw	a5,-20(s0)
    1ad8:	0017879b          	addiw	a5,a5,1
    1adc:	fef42623          	sw	a5,-20(s0)
    1ae0:	fec42783          	lw	a5,-20(s0)
    1ae4:	0007871b          	sext.w	a4,a5
    1ae8:	02500793          	li	a5,37
    1aec:	eae7dae3          	bge	a5,a4,19a0 <print_int2inst+0x20>
    1af0:	0080006f          	j	1af8 <print_int2inst+0x178>
    1af4:	00000013          	nop
    1af8:	fec42783          	lw	a5,-20(s0)
    1afc:	0007871b          	sext.w	a4,a5
    1b00:	02600793          	li	a5,38
    1b04:	00f71a63          	bne	a4,a5,1b18 <print_int2inst+0x198>
    1b08:	000037b7          	lui	a5,0x3
    1b0c:	8a078513          	addi	a0,a5,-1888 # 28a0 <INST_CONFIG+0x620>
    1b10:	869fe0ef          	jal	ra,378 <print>
    1b14:	3400006f          	j	1e54 <print_int2inst+0x4d4>
    1b18:	fec42703          	lw	a4,-20(s0)
    1b1c:	00070793          	mv	a5,a4
    1b20:	00379793          	slli	a5,a5,0x3
    1b24:	40e787b3          	sub	a5,a5,a4
    1b28:	00002737          	lui	a4,0x2
    1b2c:	17070713          	addi	a4,a4,368 # 2170 <INST_NAMES>
    1b30:	00e787b3          	add	a5,a5,a4
    1b34:	00078513          	mv	a0,a5
    1b38:	841fe0ef          	jal	ra,378 <print>
    1b3c:	fe842783          	lw	a5,-24(s0)
    1b40:	0007879b          	sext.w	a5,a5
    1b44:	02078a63          	beqz	a5,1b78 <print_int2inst+0x1f8>
    1b48:	fe842783          	lw	a5,-24(s0)
    1b4c:	0007871b          	sext.w	a4,a5
    1b50:	00100793          	li	a5,1
    1b54:	02f70263          	beq	a4,a5,1b78 <print_int2inst+0x1f8>
    1b58:	fe842783          	lw	a5,-24(s0)
    1b5c:	0007871b          	sext.w	a4,a5
    1b60:	00400793          	li	a5,4
    1b64:	00f70a63          	beq	a4,a5,1b78 <print_int2inst+0x1f8>
    1b68:	fe842783          	lw	a5,-24(s0)
    1b6c:	0007871b          	sext.w	a4,a5
    1b70:	00500793          	li	a5,5
    1b74:	02f71663          	bne	a4,a5,1ba0 <print_int2inst+0x220>
    1b78:	000037b7          	lui	a5,0x3
    1b7c:	8b078513          	addi	a0,a5,-1872 # 28b0 <INST_CONFIG+0x630>
    1b80:	ff8fe0ef          	jal	ra,378 <print>
    1b84:	fdc42783          	lw	a5,-36(s0)
    1b88:	0077d79b          	srliw	a5,a5,0x7
    1b8c:	0007879b          	sext.w	a5,a5
    1b90:	01f7f793          	andi	a5,a5,31
    1b94:	0007879b          	sext.w	a5,a5
    1b98:	00078513          	mv	a0,a5
    1b9c:	ac1fe0ef          	jal	ra,65c <print_hex>
    1ba0:	fe842783          	lw	a5,-24(s0)
    1ba4:	0007879b          	sext.w	a5,a5
    1ba8:	02078a63          	beqz	a5,1bdc <print_int2inst+0x25c>
    1bac:	fe842783          	lw	a5,-24(s0)
    1bb0:	0007871b          	sext.w	a4,a5
    1bb4:	00100793          	li	a5,1
    1bb8:	02f70263          	beq	a4,a5,1bdc <print_int2inst+0x25c>
    1bbc:	fe842783          	lw	a5,-24(s0)
    1bc0:	0007871b          	sext.w	a4,a5
    1bc4:	00200793          	li	a5,2
    1bc8:	00f70a63          	beq	a4,a5,1bdc <print_int2inst+0x25c>
    1bcc:	fe842783          	lw	a5,-24(s0)
    1bd0:	0007871b          	sext.w	a4,a5
    1bd4:	00300793          	li	a5,3
    1bd8:	02f71663          	bne	a4,a5,1c04 <print_int2inst+0x284>
    1bdc:	000037b7          	lui	a5,0x3
    1be0:	8b078513          	addi	a0,a5,-1872 # 28b0 <INST_CONFIG+0x630>
    1be4:	f94fe0ef          	jal	ra,378 <print>
    1be8:	fdc42783          	lw	a5,-36(s0)
    1bec:	00f7d79b          	srliw	a5,a5,0xf
    1bf0:	0007879b          	sext.w	a5,a5
    1bf4:	01f7f793          	andi	a5,a5,31
    1bf8:	0007879b          	sext.w	a5,a5
    1bfc:	00078513          	mv	a0,a5
    1c00:	a5dfe0ef          	jal	ra,65c <print_hex>
    1c04:	fe842783          	lw	a5,-24(s0)
    1c08:	0007879b          	sext.w	a5,a5
    1c0c:	02078263          	beqz	a5,1c30 <print_int2inst+0x2b0>
    1c10:	fe842783          	lw	a5,-24(s0)
    1c14:	0007871b          	sext.w	a4,a5
    1c18:	00200793          	li	a5,2
    1c1c:	00f70a63          	beq	a4,a5,1c30 <print_int2inst+0x2b0>
    1c20:	fe842783          	lw	a5,-24(s0)
    1c24:	0007871b          	sext.w	a4,a5
    1c28:	00300793          	li	a5,3
    1c2c:	02f71663          	bne	a4,a5,1c58 <print_int2inst+0x2d8>
    1c30:	000037b7          	lui	a5,0x3
    1c34:	8b078513          	addi	a0,a5,-1872 # 28b0 <INST_CONFIG+0x630>
    1c38:	f40fe0ef          	jal	ra,378 <print>
    1c3c:	fdc42783          	lw	a5,-36(s0)
    1c40:	0147d79b          	srliw	a5,a5,0x14
    1c44:	0007879b          	sext.w	a5,a5
    1c48:	01f7f793          	andi	a5,a5,31
    1c4c:	0007879b          	sext.w	a5,a5
    1c50:	00078513          	mv	a0,a5
    1c54:	a09fe0ef          	jal	ra,65c <print_hex>
    1c58:	fe042223          	sw	zero,-28(s0)
    1c5c:	fe842783          	lw	a5,-24(s0)
    1c60:	0007879b          	sext.w	a5,a5
    1c64:	1e078863          	beqz	a5,1e54 <print_int2inst+0x4d4>
    1c68:	fe842783          	lw	a5,-24(s0)
    1c6c:	0007871b          	sext.w	a4,a5
    1c70:	00600793          	li	a5,6
    1c74:	1ef70063          	beq	a4,a5,1e54 <print_int2inst+0x4d4>
    1c78:	fe842783          	lw	a5,-24(s0)
    1c7c:	0007871b          	sext.w	a4,a5
    1c80:	00500793          	li	a5,5
    1c84:	1ae7ec63          	bltu	a5,a4,1e3c <print_int2inst+0x4bc>
    1c88:	fe846783          	lwu	a5,-24(s0)
    1c8c:	00279713          	slli	a4,a5,0x2
    1c90:	000037b7          	lui	a5,0x3
    1c94:	8b478793          	addi	a5,a5,-1868 # 28b4 <INST_CONFIG+0x634>
    1c98:	00f707b3          	add	a5,a4,a5
    1c9c:	0007a783          	lw	a5,0(a5)
    1ca0:	00078067          	jr	a5
    1ca4:	fdc42783          	lw	a5,-36(s0)
    1ca8:	0147d79b          	srliw	a5,a5,0x14
    1cac:	fef42223          	sw	a5,-28(s0)
    1cb0:	18c0006f          	j	1e3c <print_int2inst+0x4bc>
    1cb4:	fdc42783          	lw	a5,-36(s0)
    1cb8:	0077d79b          	srliw	a5,a5,0x7
    1cbc:	0007879b          	sext.w	a5,a5
    1cc0:	01f7f793          	andi	a5,a5,31
    1cc4:	0007871b          	sext.w	a4,a5
    1cc8:	fdc42783          	lw	a5,-36(s0)
    1ccc:	0197d79b          	srliw	a5,a5,0x19
    1cd0:	0007879b          	sext.w	a5,a5
    1cd4:	0057979b          	slliw	a5,a5,0x5
    1cd8:	0007879b          	sext.w	a5,a5
    1cdc:	00f767b3          	or	a5,a4,a5
    1ce0:	fef42223          	sw	a5,-28(s0)
    1ce4:	1580006f          	j	1e3c <print_int2inst+0x4bc>
    1ce8:	fdc42783          	lw	a5,-36(s0)
    1cec:	0077d79b          	srliw	a5,a5,0x7
    1cf0:	0007879b          	sext.w	a5,a5
    1cf4:	00b7979b          	slliw	a5,a5,0xb
    1cf8:	0007879b          	sext.w	a5,a5
    1cfc:	00078713          	mv	a4,a5
    1d00:	000017b7          	lui	a5,0x1
    1d04:	80078793          	addi	a5,a5,-2048 # 800 <print_help+0x44>
    1d08:	00f777b3          	and	a5,a4,a5
    1d0c:	0007871b          	sext.w	a4,a5
    1d10:	fe442783          	lw	a5,-28(s0)
    1d14:	00e7e7b3          	or	a5,a5,a4
    1d18:	fef42223          	sw	a5,-28(s0)
    1d1c:	fdc42783          	lw	a5,-36(s0)
    1d20:	0087d79b          	srliw	a5,a5,0x8
    1d24:	0007879b          	sext.w	a5,a5
    1d28:	0017979b          	slliw	a5,a5,0x1
    1d2c:	0007879b          	sext.w	a5,a5
    1d30:	01e7f793          	andi	a5,a5,30
    1d34:	0007871b          	sext.w	a4,a5
    1d38:	fe442783          	lw	a5,-28(s0)
    1d3c:	00e7e7b3          	or	a5,a5,a4
    1d40:	fef42223          	sw	a5,-28(s0)
    1d44:	fdc42783          	lw	a5,-36(s0)
    1d48:	0197d79b          	srliw	a5,a5,0x19
    1d4c:	0007879b          	sext.w	a5,a5
    1d50:	0057979b          	slliw	a5,a5,0x5
    1d54:	0007879b          	sext.w	a5,a5
    1d58:	7e07f793          	andi	a5,a5,2016
    1d5c:	0007871b          	sext.w	a4,a5
    1d60:	fe442783          	lw	a5,-28(s0)
    1d64:	00e7e7b3          	or	a5,a5,a4
    1d68:	fef42223          	sw	a5,-28(s0)
    1d6c:	fdc42783          	lw	a5,-36(s0)
    1d70:	01f7d79b          	srliw	a5,a5,0x1f
    1d74:	0007879b          	sext.w	a5,a5
    1d78:	00c7979b          	slliw	a5,a5,0xc
    1d7c:	0007871b          	sext.w	a4,a5
    1d80:	fe442783          	lw	a5,-28(s0)
    1d84:	00e7e7b3          	or	a5,a5,a4
    1d88:	fef42223          	sw	a5,-28(s0)
    1d8c:	0b00006f          	j	1e3c <print_int2inst+0x4bc>
    1d90:	fdc42703          	lw	a4,-36(s0)
    1d94:	fffff7b7          	lui	a5,0xfffff
    1d98:	00f777b3          	and	a5,a4,a5
    1d9c:	fef42223          	sw	a5,-28(s0)
    1da0:	09c0006f          	j	1e3c <print_int2inst+0x4bc>
    1da4:	fdc42703          	lw	a4,-36(s0)
    1da8:	000ff7b7          	lui	a5,0xff
    1dac:	00f777b3          	and	a5,a4,a5
    1db0:	0007871b          	sext.w	a4,a5
    1db4:	fe442783          	lw	a5,-28(s0)
    1db8:	00e7e7b3          	or	a5,a5,a4
    1dbc:	fef42223          	sw	a5,-28(s0)
    1dc0:	fdc42783          	lw	a5,-36(s0)
    1dc4:	0147d79b          	srliw	a5,a5,0x14
    1dc8:	0007879b          	sext.w	a5,a5
    1dcc:	00b7979b          	slliw	a5,a5,0xb
    1dd0:	0007879b          	sext.w	a5,a5
    1dd4:	00078713          	mv	a4,a5
    1dd8:	000017b7          	lui	a5,0x1
    1ddc:	80078793          	addi	a5,a5,-2048 # 800 <print_help+0x44>
    1de0:	00f777b3          	and	a5,a4,a5
    1de4:	0007871b          	sext.w	a4,a5
    1de8:	fe442783          	lw	a5,-28(s0)
    1dec:	00e7e7b3          	or	a5,a5,a4
    1df0:	fef42223          	sw	a5,-28(s0)
    1df4:	fdc42783          	lw	a5,-36(s0)
    1df8:	0157d79b          	srliw	a5,a5,0x15
    1dfc:	0007879b          	sext.w	a5,a5
    1e00:	0017979b          	slliw	a5,a5,0x1
    1e04:	0007879b          	sext.w	a5,a5
    1e08:	7fe7f793          	andi	a5,a5,2046
    1e0c:	0007871b          	sext.w	a4,a5
    1e10:	fe442783          	lw	a5,-28(s0)
    1e14:	00e7e7b3          	or	a5,a5,a4
    1e18:	fef42223          	sw	a5,-28(s0)
    1e1c:	fdc42783          	lw	a5,-36(s0)
    1e20:	01f7d79b          	srliw	a5,a5,0x1f
    1e24:	0007879b          	sext.w	a5,a5
    1e28:	0147979b          	slliw	a5,a5,0x14
    1e2c:	0007871b          	sext.w	a4,a5
    1e30:	fe442783          	lw	a5,-28(s0)
    1e34:	00e7e7b3          	or	a5,a5,a4
    1e38:	fef42223          	sw	a5,-28(s0)
    1e3c:	000037b7          	lui	a5,0x3
    1e40:	8b078513          	addi	a0,a5,-1872 # 28b0 <INST_CONFIG+0x630>
    1e44:	d34fe0ef          	jal	ra,378 <print>
    1e48:	fe442783          	lw	a5,-28(s0)
    1e4c:	00078513          	mv	a0,a5
    1e50:	80dfe0ef          	jal	ra,65c <print_hex>
    1e54:	02813083          	ld	ra,40(sp)
    1e58:	02013403          	ld	s0,32(sp)
    1e5c:	03010113          	addi	sp,sp,48
    1e60:	00008067          	ret

0000000000001e64 <timelim_exe>:
    1e64:	fe010113          	addi	sp,sp,-32
    1e68:	00113c23          	sd	ra,24(sp)
    1e6c:	00813823          	sd	s0,16(sp)
    1e70:	02010413          	addi	s0,sp,32
    1e74:	86018513          	addi	a0,gp,-1952 # 29d0 <buffer>
    1e78:	ed1fe0ef          	jal	ra,d48 <next_word>
    1e7c:	fea43423          	sd	a0,-24(s0)
    1e80:	fe843783          	ld	a5,-24(s0)
    1e84:	0007c783          	lbu	a5,0(a5)
    1e88:	00078a63          	beqz	a5,1e9c <timelim_exe+0x38>
    1e8c:	fe843783          	ld	a5,-24(s0)
    1e90:	00178793          	addi	a5,a5,1
    1e94:	0007c783          	lbu	a5,0(a5)
    1e98:	02079863          	bnez	a5,1ec8 <timelim_exe+0x64>
    1e9c:	000037b7          	lui	a5,0x3
    1ea0:	85078513          	addi	a0,a5,-1968 # 2850 <INST_CONFIG+0x5d0>
    1ea4:	cd4fe0ef          	jal	ra,378 <print>
    1ea8:	000037b7          	lui	a5,0x3
    1eac:	97c7a783          	lw	a5,-1668(a5) # 297c <time_lim>
    1eb0:	00078513          	mv	a0,a5
    1eb4:	fa8fe0ef          	jal	ra,65c <print_hex>
    1eb8:	000037b7          	lui	a5,0x3
    1ebc:	84878513          	addi	a0,a5,-1976 # 2848 <INST_CONFIG+0x5c8>
    1ec0:	cb8fe0ef          	jal	ra,378 <print>
    1ec4:	01c0006f          	j	1ee0 <timelim_exe+0x7c>
    1ec8:	fe843503          	ld	a0,-24(s0)
    1ecc:	84dfe0ef          	jal	ra,718 <str2hex>
    1ed0:	00050793          	mv	a5,a0
    1ed4:	0007871b          	sext.w	a4,a5
    1ed8:	000037b7          	lui	a5,0x3
    1edc:	96e7ae23          	sw	a4,-1668(a5) # 297c <time_lim>
    1ee0:	00000013          	nop
    1ee4:	01813083          	ld	ra,24(sp)
    1ee8:	01013403          	ld	s0,16(sp)
    1eec:	02010113          	addi	sp,sp,32
    1ef0:	00008067          	ret

0000000000001ef4 <disas_exe>:
    1ef4:	fd010113          	addi	sp,sp,-48
    1ef8:	02113423          	sd	ra,40(sp)
    1efc:	02813023          	sd	s0,32(sp)
    1f00:	03010413          	addi	s0,sp,48
    1f04:	86018513          	addi	a0,gp,-1952 # 29d0 <buffer>
    1f08:	e41fe0ef          	jal	ra,d48 <next_word>
    1f0c:	fea43023          	sd	a0,-32(s0)
    1f10:	fe043783          	ld	a5,-32(s0)
    1f14:	0007c783          	lbu	a5,0(a5)
    1f18:	0c078463          	beqz	a5,1fe0 <disas_exe+0xec>
    1f1c:	fe043783          	ld	a5,-32(s0)
    1f20:	00178793          	addi	a5,a5,1
    1f24:	0007c783          	lbu	a5,0(a5)
    1f28:	0a078c63          	beqz	a5,1fe0 <disas_exe+0xec>
    1f2c:	fe043503          	ld	a0,-32(s0)
    1f30:	fe8fe0ef          	jal	ra,718 <str2hex>
    1f34:	00050793          	mv	a5,a0
    1f38:	fef42623          	sw	a5,-20(s0)
    1f3c:	fe043503          	ld	a0,-32(s0)
    1f40:	e09fe0ef          	jal	ra,d48 <next_word>
    1f44:	fea43023          	sd	a0,-32(s0)
    1f48:	fe043783          	ld	a5,-32(s0)
    1f4c:	0007c783          	lbu	a5,0(a5)
    1f50:	08078c63          	beqz	a5,1fe8 <disas_exe+0xf4>
    1f54:	fe043783          	ld	a5,-32(s0)
    1f58:	00178793          	addi	a5,a5,1
    1f5c:	0007c783          	lbu	a5,0(a5)
    1f60:	08078463          	beqz	a5,1fe8 <disas_exe+0xf4>
    1f64:	fe043503          	ld	a0,-32(s0)
    1f68:	fb0fe0ef          	jal	ra,718 <str2hex>
    1f6c:	00050793          	mv	a5,a0
    1f70:	fef42423          	sw	a5,-24(s0)
    1f74:	0580006f          	j	1fcc <disas_exe+0xd8>
    1f78:	000037b7          	lui	a5,0x3
    1f7c:	87878513          	addi	a0,a5,-1928 # 2878 <INST_CONFIG+0x5f8>
    1f80:	bf8fe0ef          	jal	ra,378 <print>
    1f84:	fec42783          	lw	a5,-20(s0)
    1f88:	00078513          	mv	a0,a5
    1f8c:	ed0fe0ef          	jal	ra,65c <print_hex>
    1f90:	000037b7          	lui	a5,0x3
    1f94:	88078513          	addi	a0,a5,-1920 # 2880 <INST_CONFIG+0x600>
    1f98:	be0fe0ef          	jal	ra,378 <print>
    1f9c:	fec46783          	lwu	a5,-20(s0)
    1fa0:	0007a783          	lw	a5,0(a5)
    1fa4:	fcf42e23          	sw	a5,-36(s0)
    1fa8:	fdc42783          	lw	a5,-36(s0)
    1fac:	00078513          	mv	a0,a5
    1fb0:	9d1ff0ef          	jal	ra,1980 <print_int2inst>
    1fb4:	000027b7          	lui	a5,0x2
    1fb8:	6e878513          	addi	a0,a5,1768 # 26e8 <INST_CONFIG+0x468>
    1fbc:	bbcfe0ef          	jal	ra,378 <print>
    1fc0:	fec42783          	lw	a5,-20(s0)
    1fc4:	0047879b          	addiw	a5,a5,4
    1fc8:	fef42623          	sw	a5,-20(s0)
    1fcc:	fe842783          	lw	a5,-24(s0)
    1fd0:	fff7871b          	addiw	a4,a5,-1
    1fd4:	fee42423          	sw	a4,-24(s0)
    1fd8:	fa0790e3          	bnez	a5,1f78 <disas_exe+0x84>
    1fdc:	0100006f          	j	1fec <disas_exe+0xf8>
    1fe0:	00000013          	nop
    1fe4:	0080006f          	j	1fec <disas_exe+0xf8>
    1fe8:	00000013          	nop
    1fec:	02813083          	ld	ra,40(sp)
    1ff0:	02013403          	ld	s0,32(sp)
    1ff4:	03010113          	addi	sp,sp,48
    1ff8:	00008067          	ret

0000000000001ffc <start>:
    1ffc:	ff010113          	addi	sp,sp,-16
    2000:	00113423          	sd	ra,8(sp)
    2004:	00813023          	sd	s0,0(sp)
    2008:	01010413          	addi	s0,sp,16
    200c:	000037b7          	lui	a5,0x3
    2010:	8d078513          	addi	a0,a5,-1840 # 28d0 <INST_CONFIG+0x650>
    2014:	b64fe0ef          	jal	ra,378 <print>
    2018:	000037b7          	lui	a5,0x3
    201c:	8f078513          	addi	a0,a5,-1808 # 28f0 <INST_CONFIG+0x670>
    2020:	b58fe0ef          	jal	ra,378 <print>
    2024:	000037b7          	lui	a5,0x3
    2028:	90078513          	addi	a0,a5,-1792 # 2900 <INST_CONFIG+0x680>
    202c:	b4cfe0ef          	jal	ra,378 <print>
    2030:	000037b7          	lui	a5,0x3
    2034:	91078513          	addi	a0,a5,-1776 # 2910 <INST_CONFIG+0x690>
    2038:	b40fe0ef          	jal	ra,378 <print>
    203c:	000037b7          	lui	a5,0x3
    2040:	92078513          	addi	a0,a5,-1760 # 2920 <INST_CONFIG+0x6a0>
    2044:	b34fe0ef          	jal	ra,378 <print>
    2048:	000037b7          	lui	a5,0x3
    204c:	92878513          	addi	a0,a5,-1752 # 2928 <INST_CONFIG+0x6a8>
    2050:	b28fe0ef          	jal	ra,378 <print>
    2054:	000037b7          	lui	a5,0x3
    2058:	92078513          	addi	a0,a5,-1760 # 2920 <INST_CONFIG+0x6a0>
    205c:	b1cfe0ef          	jal	ra,378 <print>
    2060:	000037b7          	lui	a5,0x3
    2064:	94078513          	addi	a0,a5,-1728 # 2940 <INST_CONFIG+0x6c0>
    2068:	b10fe0ef          	jal	ra,378 <print>
    206c:	000037b7          	lui	a5,0x3
    2070:	92078513          	addi	a0,a5,-1760 # 2920 <INST_CONFIG+0x6a0>
    2074:	b04fe0ef          	jal	ra,378 <print>
    2078:	000037b7          	lui	a5,0x3
    207c:	95078513          	addi	a0,a5,-1712 # 2950 <INST_CONFIG+0x6d0>
    2080:	af8fe0ef          	jal	ra,378 <print>
    2084:	000037b7          	lui	a5,0x3
    2088:	92078513          	addi	a0,a5,-1760 # 2920 <INST_CONFIG+0x6a0>
    208c:	aecfe0ef          	jal	ra,378 <print>
    2090:	be1fe0ef          	jal	ra,c70 <init>
    2094:	000037b7          	lui	a5,0x3
    2098:	96078513          	addi	a0,a5,-1696 # 2960 <INST_CONFIG+0x6e0>
    209c:	adcfe0ef          	jal	ra,378 <print>
    20a0:	bf8fe0ef          	jal	ra,498 <get_line>
    20a4:	8601c783          	lbu	a5,-1952(gp) # 29d0 <buffer>
    20a8:	0007879b          	sext.w	a5,a5
    20ac:	00078693          	mv	a3,a5
    20b0:	04900713          	li	a4,73
    20b4:	08e68663          	beq	a3,a4,2140 <start+0x144>
    20b8:	00078693          	mv	a3,a5
    20bc:	04900713          	li	a4,73
    20c0:	02d74263          	blt	a4,a3,20e4 <start+0xe8>
    20c4:	00078693          	mv	a3,a5
    20c8:	04400713          	li	a4,68
    20cc:	08e68263          	beq	a3,a4,2150 <start+0x154>
    20d0:	00078693          	mv	a3,a5
    20d4:	04500713          	li	a4,69
    20d8:	06e68063          	beq	a3,a4,2138 <start+0x13c>
    20dc:	08078663          	beqz	a5,2168 <start+0x16c>
    20e0:	0800006f          	j	2160 <start+0x164>
    20e4:	00078693          	mv	a3,a5
    20e8:	05200713          	li	a4,82
    20ec:	04e68263          	beq	a3,a4,2130 <start+0x134>
    20f0:	00078693          	mv	a3,a5
    20f4:	05200713          	li	a4,82
    20f8:	00d74a63          	blt	a4,a3,210c <start+0x110>
    20fc:	00078713          	mv	a4,a5
    2100:	04a00793          	li	a5,74
    2104:	02f70263          	beq	a4,a5,2128 <start+0x12c>
    2108:	0580006f          	j	2160 <start+0x164>
    210c:	00078693          	mv	a3,a5
    2110:	05400713          	li	a4,84
    2114:	04e68263          	beq	a3,a4,2158 <start+0x15c>
    2118:	00078713          	mv	a4,a5
    211c:	05600793          	li	a5,86
    2120:	02f70463          	beq	a4,a5,2148 <start+0x14c>
    2124:	03c0006f          	j	2160 <start+0x164>
    2128:	ca5fe0ef          	jal	ra,dcc <jump_exe>
    212c:	0400006f          	j	216c <start+0x170>
    2130:	d79fe0ef          	jal	ra,ea8 <reg_exe>
    2134:	0380006f          	j	216c <start+0x170>
    2138:	e05fe0ef          	jal	ra,f3c <edit_exe>
    213c:	0300006f          	j	216c <start+0x170>
    2140:	e70ff0ef          	jal	ra,17b0 <inst_exe>
    2144:	0280006f          	j	216c <start+0x170>
    2148:	f30ff0ef          	jal	ra,1878 <view_exe>
    214c:	0200006f          	j	216c <start+0x170>
    2150:	da5ff0ef          	jal	ra,1ef4 <disas_exe>
    2154:	0180006f          	j	216c <start+0x170>
    2158:	d0dff0ef          	jal	ra,1e64 <timelim_exe>
    215c:	0100006f          	j	216c <start+0x170>
    2160:	e5cfe0ef          	jal	ra,7bc <print_help>
    2164:	f31ff06f          	j	2094 <start+0x98>
    2168:	00000013          	nop
    216c:	f29ff06f          	j	2094 <start+0x98>

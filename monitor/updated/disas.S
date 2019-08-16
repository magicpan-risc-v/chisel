
out.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <_start>:
       0:	00000013          	nop
       4:	00018193          	mv	gp,gp
       8:	00030137          	lui	sp,0x30
       c:	7fd0106f          	j	2008 <start>

0000000000000010 <_entry>:
      10:	f8410113          	addi	sp,sp,-124 # 2ff84 <__global_pointer$+0x2ce04>
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
      98:	8ec60613          	addi	a2,a2,-1812 # 2980 <__DATA_BEGIN__>
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
     114:	878f0f13          	addi	t5,t5,-1928 # 2988 <time_count>
     118:	000f2023          	sw	zero,0(t5)
     11c:	00003f17          	auipc	t5,0x3
     120:	868f0f13          	addi	t5,t5,-1944 # 2984 <in_user>
     124:	00100f93          	li	t6,1
     128:	01ff2023          	sw	t6,0(t5)
     12c:	00000f13          	li	t5,0
     130:	00000f93          	li	t6,0
     134:	000080e7          	jalr	ra

0000000000000138 <_exit>:
     138:	8a818093          	addi	ra,gp,-1880 # 2a28 <regs>
     13c:	07f0ae23          	sw	t6,124(ra)
     140:	07e0ac23          	sw	t5,120(ra)
     144:	00003f97          	auipc	t6,0x3
     148:	840f8f93          	addi	t6,t6,-1984 # 2984 <in_user>
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
     1cc:	7b810113          	addi	sp,sp,1976 # 2980 <__DATA_BEGIN__>
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
     2dc:	81018093          	addi	ra,gp,-2032 # 2990 <trap_frame>
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
     3a0:	ff878793          	addi	a5,a5,-8 # 7ffff8 <__global_pointer$+0x7fce78>
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
     4bc:	8a01a703          	lw	a4,-1888(gp) # 2a20 <bufh>
     4c0:	8581a783          	lw	a5,-1960(gp) # 29d8 <buft>
     4c4:	fef70ce3          	beq	a4,a5,4bc <get_line+0x24>
     4c8:	8a01a783          	lw	a5,-1888(gp) # 2a20 <bufh>
     4cc:	0017871b          	addiw	a4,a5,1
     4d0:	0007069b          	sext.w	a3,a4
     4d4:	8ad1a023          	sw	a3,-1888(gp) # 2a20 <bufh>
     4d8:	00003737          	lui	a4,0x3
     4dc:	99870713          	addi	a4,a4,-1640 # 2998 <input_buffer>
     4e0:	00e787b3          	add	a5,a5,a4
     4e4:	0007c703          	lbu	a4,0(a5)
     4e8:	fec42683          	lw	a3,-20(s0)
     4ec:	86018793          	addi	a5,gp,-1952 # 29e0 <buffer>
     4f0:	00f687b3          	add	a5,a3,a5
     4f4:	00e78023          	sb	a4,0(a5)
     4f8:	8a01a783          	lw	a5,-1888(gp) # 2a20 <bufh>
     4fc:	00078713          	mv	a4,a5
     500:	04000793          	li	a5,64
     504:	00f71463          	bne	a4,a5,50c <get_line+0x74>
     508:	8a01a023          	sw	zero,-1888(gp) # 2a20 <bufh>
     50c:	fec42703          	lw	a4,-20(s0)
     510:	86018793          	addi	a5,gp,-1952 # 29e0 <buffer>
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
     540:	86018793          	addi	a5,gp,-1952 # 29e0 <buffer>
     544:	00f707b3          	add	a5,a4,a5
     548:	0007c783          	lbu	a5,0(a5)
     54c:	00078713          	mv	a4,a5
     550:	00d00793          	li	a5,13
     554:	00f71863          	bne	a4,a5,564 <get_line+0xcc>
     558:	fec42783          	lw	a5,-20(s0)
     55c:	fff7879b          	addiw	a5,a5,-1
     560:	fef42623          	sw	a5,-20(s0)
     564:	fec42703          	lw	a4,-20(s0)
     568:	86018793          	addi	a5,gp,-1952 # 29e0 <buffer>
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
     614:	4f070713          	addi	a4,a4,1264 # 24f0 <INST_CONFIG+0x260>
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
     7d0:	50878513          	addi	a0,a5,1288 # 2508 <INST_CONFIG+0x278>
     7d4:	ba5ff0ef          	jal	ra,378 <print>
     7d8:	000027b7          	lui	a5,0x2
     7dc:	51878513          	addi	a0,a5,1304 # 2518 <INST_CONFIG+0x288>
     7e0:	b99ff0ef          	jal	ra,378 <print>
     7e4:	000027b7          	lui	a5,0x2
     7e8:	54078513          	addi	a0,a5,1344 # 2540 <INST_CONFIG+0x2b0>
     7ec:	b8dff0ef          	jal	ra,378 <print>
     7f0:	000027b7          	lui	a5,0x2
     7f4:	57878513          	addi	a0,a5,1400 # 2578 <INST_CONFIG+0x2e8>
     7f8:	b81ff0ef          	jal	ra,378 <print>
     7fc:	000027b7          	lui	a5,0x2
     800:	5a878513          	addi	a0,a5,1448 # 25a8 <INST_CONFIG+0x318>
     804:	b75ff0ef          	jal	ra,378 <print>
     808:	000027b7          	lui	a5,0x2
     80c:	5e078513          	addi	a0,a5,1504 # 25e0 <INST_CONFIG+0x350>
     810:	b69ff0ef          	jal	ra,378 <print>
     814:	000027b7          	lui	a5,0x2
     818:	61878513          	addi	a0,a5,1560 # 2618 <INST_CONFIG+0x388>
     81c:	b5dff0ef          	jal	ra,378 <print>
     820:	000027b7          	lui	a5,0x2
     824:	65878513          	addi	a0,a5,1624 # 2658 <INST_CONFIG+0x3c8>
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
     89c:	fcc78793          	addi	a5,a5,-52 # 7fffcc <__global_pointer$+0x7fce4c>
     8a0:	0007a023          	sw	zero,0(a5)
     8a4:	008007b7          	lui	a5,0x800
     8a8:	fc878793          	addi	a5,a5,-56 # 7fffc8 <__global_pointer$+0x7fce48>
     8ac:	0007a023          	sw	zero,0(a5)
     8b0:	000037b7          	lui	a5,0x3
     8b4:	9847a783          	lw	a5,-1660(a5) # 2984 <in_user>
     8b8:	12078e63          	beqz	a5,9f4 <trap+0x1b4>
     8bc:	000037b7          	lui	a5,0x3
     8c0:	9887a783          	lw	a5,-1656(a5) # 2988 <time_count>
     8c4:	0017879b          	addiw	a5,a5,1
     8c8:	0007871b          	sext.w	a4,a5
     8cc:	000037b7          	lui	a5,0x3
     8d0:	98e7a423          	sw	a4,-1656(a5) # 2988 <time_count>
     8d4:	000037b7          	lui	a5,0x3
     8d8:	9887a703          	lw	a4,-1656(a5) # 2988 <time_count>
     8dc:	000037b7          	lui	a5,0x3
     8e0:	98c7a783          	lw	a5,-1652(a5) # 298c <time_lim>
     8e4:	10f76863          	bltu	a4,a5,9f4 <trap+0x1b4>
     8e8:	00100793          	li	a5,1
     8ec:	fef42623          	sw	a5,-20(s0)
     8f0:	1040006f          	j	9f4 <trap+0x1b4>
     8f4:	008007b7          	lui	a5,0x800
     8f8:	ff078793          	addi	a5,a5,-16 # 7ffff0 <__global_pointer$+0x7fce70>
     8fc:	0007a783          	lw	a5,0(a5)
     900:	fcf42c23          	sw	a5,-40(s0)
     904:	fd842783          	lw	a5,-40(s0)
     908:	0007871b          	sext.w	a4,a5
     90c:	00100793          	li	a5,1
     910:	06f71263          	bne	a4,a5,974 <trap+0x134>
     914:	0440006f          	j	958 <trap+0x118>
     918:	008007b7          	lui	a5,0x800
     91c:	ff878713          	addi	a4,a5,-8 # 7ffff8 <__global_pointer$+0x7fce78>
     920:	8581a783          	lw	a5,-1960(gp) # 29d8 <buft>
     924:	0017869b          	addiw	a3,a5,1
     928:	0006861b          	sext.w	a2,a3
     92c:	84c1ac23          	sw	a2,-1960(gp) # 29d8 <buft>
     930:	00074703          	lbu	a4,0(a4)
     934:	000036b7          	lui	a3,0x3
     938:	99868693          	addi	a3,a3,-1640 # 2998 <input_buffer>
     93c:	00d787b3          	add	a5,a5,a3
     940:	00e78023          	sb	a4,0(a5)
     944:	8581a783          	lw	a5,-1960(gp) # 29d8 <buft>
     948:	00078713          	mv	a4,a5
     94c:	04000793          	li	a5,64
     950:	00f71463          	bne	a4,a5,958 <trap+0x118>
     954:	8401ac23          	sw	zero,-1960(gp) # 29d8 <buft>
     958:	008007b7          	lui	a5,0x800
     95c:	ffc78793          	addi	a5,a5,-4 # 7ffffc <__global_pointer$+0x7fce7c>
     960:	0007a783          	lw	a5,0(a5)
     964:	0f07f793          	andi	a5,a5,240
     968:	0007879b          	sext.w	a5,a5
     96c:	fa0796e3          	bnez	a5,918 <trap+0xd8>
     970:	00000013          	nop
     974:	008007b7          	lui	a5,0x800
     978:	ff078793          	addi	a5,a5,-16 # 7ffff0 <__global_pointer$+0x7fce70>
     97c:	fd842703          	lw	a4,-40(s0)
     980:	00e7a023          	sw	a4,0(a5)
     984:	0740006f          	j	9f8 <trap+0x1b8>
     988:	000027b7          	lui	a5,0x2
     98c:	6c878513          	addi	a0,a5,1736 # 26c8 <INST_CONFIG+0x438>
     990:	9e9ff0ef          	jal	ra,378 <print>
     994:	000027b7          	lui	a5,0x2
     998:	6f078513          	addi	a0,a5,1776 # 26f0 <INST_CONFIG+0x460>
     99c:	9ddff0ef          	jal	ra,378 <print>
     9a0:	fdc42783          	lw	a5,-36(s0)
     9a4:	00078513          	mv	a0,a5
     9a8:	cb5ff0ef          	jal	ra,65c <print_hex>
     9ac:	000027b7          	lui	a5,0x2
     9b0:	6f878513          	addi	a0,a5,1784 # 26f8 <INST_CONFIG+0x468>
     9b4:	9c5ff0ef          	jal	ra,378 <print>
     9b8:	000027b7          	lui	a5,0x2
     9bc:	70078513          	addi	a0,a5,1792 # 2700 <INST_CONFIG+0x470>
     9c0:	9b9ff0ef          	jal	ra,378 <print>
     9c4:	341027f3          	csrr	a5,mepc
     9c8:	fcf43823          	sd	a5,-48(s0)
     9cc:	fd043783          	ld	a5,-48(s0)
     9d0:	0007879b          	sext.w	a5,a5
     9d4:	00078513          	mv	a0,a5
     9d8:	c85ff0ef          	jal	ra,65c <print_hex>
     9dc:	000027b7          	lui	a5,0x2
     9e0:	6f878513          	addi	a0,a5,1784 # 26f8 <INST_CONFIG+0x468>
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
     a20:	2240006f          	j	c44 <trap+0x404>
     a24:	fdc42783          	lw	a5,-36(s0)
     a28:	0007871b          	sext.w	a4,a5
     a2c:	00b00793          	li	a5,11
     a30:	1ae7e663          	bltu	a5,a4,bdc <trap+0x39c>
     a34:	fdc46783          	lwu	a5,-36(s0)
     a38:	00279713          	slli	a4,a5,0x2
     a3c:	000027b7          	lui	a5,0x2
     a40:	7d078793          	addi	a5,a5,2000 # 27d0 <INST_CONFIG+0x540>
     a44:	00f707b3          	add	a5,a4,a5
     a48:	0007a783          	lw	a5,0(a5)
     a4c:	00078067          	jr	a5
     a50:	000027b7          	lui	a5,0x2
     a54:	70878513          	addi	a0,a5,1800 # 2708 <INST_CONFIG+0x478>
     a58:	921ff0ef          	jal	ra,378 <print>
     a5c:	343027f3          	csrr	a5,mtval
     a60:	fcf43023          	sd	a5,-64(s0)
     a64:	fc043783          	ld	a5,-64(s0)
     a68:	0007879b          	sext.w	a5,a5
     a6c:	00078513          	mv	a0,a5
     a70:	bedff0ef          	jal	ra,65c <print_hex>
     a74:	000027b7          	lui	a5,0x2
     a78:	6f878513          	addi	a0,a5,1784 # 26f8 <INST_CONFIG+0x468>
     a7c:	8fdff0ef          	jal	ra,378 <print>
     a80:	00100793          	li	a5,1
     a84:	fef42623          	sw	a5,-20(s0)
     a88:	1bc0006f          	j	c44 <trap+0x404>
     a8c:	000027b7          	lui	a5,0x2
     a90:	73078513          	addi	a0,a5,1840 # 2730 <INST_CONFIG+0x4a0>
     a94:	8e5ff0ef          	jal	ra,378 <print>
     a98:	00100793          	li	a5,1
     a9c:	fef42623          	sw	a5,-20(s0)
     aa0:	1a40006f          	j	c44 <trap+0x404>
     aa4:	000027b7          	lui	a5,0x2
     aa8:	75078513          	addi	a0,a5,1872 # 2750 <INST_CONFIG+0x4c0>
     aac:	8cdff0ef          	jal	ra,378 <print>
     ab0:	343027f3          	csrr	a5,mtval
     ab4:	faf43c23          	sd	a5,-72(s0)
     ab8:	fb843783          	ld	a5,-72(s0)
     abc:	0007879b          	sext.w	a5,a5
     ac0:	00078513          	mv	a0,a5
     ac4:	b99ff0ef          	jal	ra,65c <print_hex>
     ac8:	000027b7          	lui	a5,0x2
     acc:	6f878513          	addi	a0,a5,1784 # 26f8 <INST_CONFIG+0x468>
     ad0:	8a9ff0ef          	jal	ra,378 <print>
     ad4:	1700006f          	j	c44 <trap+0x404>
     ad8:	000027b7          	lui	a5,0x2
     adc:	77078513          	addi	a0,a5,1904 # 2770 <INST_CONFIG+0x4e0>
     ae0:	899ff0ef          	jal	ra,378 <print>
     ae4:	343027f3          	csrr	a5,mtval
     ae8:	faf43823          	sd	a5,-80(s0)
     aec:	fb043783          	ld	a5,-80(s0)
     af0:	0007879b          	sext.w	a5,a5
     af4:	00078513          	mv	a0,a5
     af8:	b65ff0ef          	jal	ra,65c <print_hex>
     afc:	000027b7          	lui	a5,0x2
     b00:	6f878513          	addi	a0,a5,1784 # 26f8 <INST_CONFIG+0x468>
     b04:	875ff0ef          	jal	ra,378 <print>
     b08:	00100793          	li	a5,1
     b0c:	fef42623          	sw	a5,-20(s0)
     b10:	1340006f          	j	c44 <trap+0x404>
     b14:	8101b783          	ld	a5,-2032(gp) # 2990 <trap_frame>
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
     b40:	0500006f          	j	b90 <trap+0x350>
     b44:	00100793          	li	a5,1
     b48:	fef42623          	sw	a5,-20(s0)
     b4c:	0780006f          	j	bc4 <trap+0x384>
     b50:	8101b783          	ld	a5,-2032(gp) # 2990 <trap_frame>
     b54:	02c78793          	addi	a5,a5,44
     b58:	0007a703          	lw	a4,0(a5)
     b5c:	008007b7          	lui	a5,0x800
     b60:	ff878793          	addi	a5,a5,-8 # 7ffff8 <__global_pointer$+0x7fce78>
     b64:	0ff77713          	andi	a4,a4,255
     b68:	00e78023          	sb	a4,0(a5)
     b6c:	0580006f          	j	bc4 <trap+0x384>
     b70:	008007b7          	lui	a5,0x800
     b74:	ff878793          	addi	a5,a5,-8 # 7ffff8 <__global_pointer$+0x7fce78>
     b78:	0007c703          	lbu	a4,0(a5)
     b7c:	8101b783          	ld	a5,-2032(gp) # 2990 <trap_frame>
     b80:	02478793          	addi	a5,a5,36
     b84:	0007071b          	sext.w	a4,a4
     b88:	00e7a023          	sw	a4,0(a5)
     b8c:	0380006f          	j	bc4 <trap+0x384>
     b90:	000027b7          	lui	a5,0x2
     b94:	79078513          	addi	a0,a5,1936 # 2790 <INST_CONFIG+0x500>
     b98:	fe0ff0ef          	jal	ra,378 <print>
     b9c:	8101b783          	ld	a5,-2032(gp) # 2990 <trap_frame>
     ba0:	02878793          	addi	a5,a5,40
     ba4:	0007a783          	lw	a5,0(a5)
     ba8:	00078513          	mv	a0,a5
     bac:	ab1ff0ef          	jal	ra,65c <print_hex>
     bb0:	000027b7          	lui	a5,0x2
     bb4:	6f878513          	addi	a0,a5,1784 # 26f8 <INST_CONFIG+0x468>
     bb8:	fc0ff0ef          	jal	ra,378 <print>
     bbc:	00100793          	li	a5,1
     bc0:	fef42623          	sw	a5,-20(s0)
     bc4:	341027f3          	csrr	a5,mepc
     bc8:	faf43423          	sd	a5,-88(s0)
     bcc:	fa843783          	ld	a5,-88(s0)
     bd0:	00478793          	addi	a5,a5,4
     bd4:	34179073          	csrw	mepc,a5
     bd8:	06c0006f          	j	c44 <trap+0x404>
     bdc:	000027b7          	lui	a5,0x2
     be0:	7a878513          	addi	a0,a5,1960 # 27a8 <INST_CONFIG+0x518>
     be4:	f94ff0ef          	jal	ra,378 <print>
     be8:	000027b7          	lui	a5,0x2
     bec:	6f078513          	addi	a0,a5,1776 # 26f0 <INST_CONFIG+0x460>
     bf0:	f88ff0ef          	jal	ra,378 <print>
     bf4:	fdc42783          	lw	a5,-36(s0)
     bf8:	00078513          	mv	a0,a5
     bfc:	a61ff0ef          	jal	ra,65c <print_hex>
     c00:	000027b7          	lui	a5,0x2
     c04:	6f878513          	addi	a0,a5,1784 # 26f8 <INST_CONFIG+0x468>
     c08:	f70ff0ef          	jal	ra,378 <print>
     c0c:	000027b7          	lui	a5,0x2
     c10:	70078513          	addi	a0,a5,1792 # 2700 <INST_CONFIG+0x470>
     c14:	f64ff0ef          	jal	ra,378 <print>
     c18:	341027f3          	csrr	a5,mepc
     c1c:	faf43023          	sd	a5,-96(s0)
     c20:	fa043783          	ld	a5,-96(s0)
     c24:	0007879b          	sext.w	a5,a5
     c28:	00078513          	mv	a0,a5
     c2c:	a31ff0ef          	jal	ra,65c <print_hex>
     c30:	000027b7          	lui	a5,0x2
     c34:	6f878513          	addi	a0,a5,1784 # 26f8 <INST_CONFIG+0x468>
     c38:	f40ff0ef          	jal	ra,378 <print>
     c3c:	00100793          	li	a5,1
     c40:	fef42623          	sw	a5,-20(s0)
     c44:	fec42783          	lw	a5,-20(s0)
     c48:	0007879b          	sext.w	a5,a5
     c4c:	00078e63          	beqz	a5,c68 <trap+0x428>
     c50:	000037b7          	lui	a5,0x3
     c54:	9847a783          	lw	a5,-1660(a5) # 2984 <in_user>
     c58:	00078863          	beqz	a5,c68 <trap+0x428>
     c5c:	000007b7          	lui	a5,0x0
     c60:	13878793          	addi	a5,a5,312 # 138 <_exit>
     c64:	34179073          	csrw	mepc,a5
     c68:	00000013          	nop
     c6c:	05813083          	ld	ra,88(sp)
     c70:	05013403          	ld	s0,80(sp)
     c74:	06010113          	addi	sp,sp,96
     c78:	00008067          	ret

0000000000000c7c <init>:
     c7c:	fd010113          	addi	sp,sp,-48
     c80:	02813423          	sd	s0,40(sp)
     c84:	03010413          	addi	s0,sp,48
     c88:	8401ac23          	sw	zero,-1960(gp) # 29d8 <buft>
     c8c:	8581a703          	lw	a4,-1960(gp) # 29d8 <buft>
     c90:	8ae1a023          	sw	a4,-1888(gp) # 2a20 <bufh>
     c94:	000407b7          	lui	a5,0x40
     c98:	34079073          	csrw	mscratch,a5
     c9c:	000007b7          	lui	a5,0x0
     ca0:	25878793          	addi	a5,a5,600 # 258 <_trap_entry>
     ca4:	30579073          	csrw	mtvec,a5
     ca8:	300467f3          	csrrsi	a5,mstatus,8
     cac:	fef43023          	sd	a5,-32(s0)
     cb0:	008007b7          	lui	a5,0x800
     cb4:	fc478793          	addi	a5,a5,-60 # 7fffc4 <__global_pointer$+0x7fce44>
     cb8:	0007a023          	sw	zero,0(a5)
     cbc:	008007b7          	lui	a5,0x800
     cc0:	fc078793          	addi	a5,a5,-64 # 7fffc0 <__global_pointer$+0x7fce40>
     cc4:	0001f737          	lui	a4,0x1f
     cc8:	8487071b          	addiw	a4,a4,-1976
     ccc:	00e7a023          	sw	a4,0(a5)
     cd0:	008007b7          	lui	a5,0x800
     cd4:	fcc78793          	addi	a5,a5,-52 # 7fffcc <__global_pointer$+0x7fce4c>
     cd8:	0007a023          	sw	zero,0(a5)
     cdc:	008007b7          	lui	a5,0x800
     ce0:	fc878793          	addi	a5,a5,-56 # 7fffc8 <__global_pointer$+0x7fce48>
     ce4:	0007a023          	sw	zero,0(a5)
     ce8:	000017b7          	lui	a5,0x1
     cec:	8807879b          	addiw	a5,a5,-1920
     cf0:	3047a7f3          	csrrs	a5,mie,a5
     cf4:	fcf43c23          	sd	a5,-40(s0)
     cf8:	000037b7          	lui	a5,0x3
     cfc:	9807a223          	sw	zero,-1660(a5) # 2984 <in_user>
     d00:	000037b7          	lui	a5,0x3
     d04:	06400713          	li	a4,100
     d08:	98e7a623          	sw	a4,-1652(a5) # 298c <time_lim>
     d0c:	fe042623          	sw	zero,-20(s0)
     d10:	0240006f          	j	d34 <init+0xb8>
     d14:	fec42703          	lw	a4,-20(s0)
     d18:	00271713          	slli	a4,a4,0x2
     d1c:	8a818793          	addi	a5,gp,-1880 # 2a28 <regs>
     d20:	00f707b3          	add	a5,a4,a5
     d24:	0007a023          	sw	zero,0(a5)
     d28:	fec42783          	lw	a5,-20(s0)
     d2c:	0017879b          	addiw	a5,a5,1
     d30:	fef42623          	sw	a5,-20(s0)
     d34:	fec42783          	lw	a5,-20(s0)
     d38:	0007871b          	sext.w	a4,a5
     d3c:	01f00793          	li	a5,31
     d40:	fce7dae3          	bge	a5,a4,d14 <init+0x98>
     d44:	00000013          	nop
     d48:	02813403          	ld	s0,40(sp)
     d4c:	03010113          	addi	sp,sp,48
     d50:	00008067          	ret

0000000000000d54 <next_word>:
     d54:	fe010113          	addi	sp,sp,-32
     d58:	00813c23          	sd	s0,24(sp)
     d5c:	02010413          	addi	s0,sp,32
     d60:	fea43423          	sd	a0,-24(s0)
     d64:	0100006f          	j	d74 <next_word+0x20>
     d68:	fe843783          	ld	a5,-24(s0)
     d6c:	00178793          	addi	a5,a5,1
     d70:	fef43423          	sd	a5,-24(s0)
     d74:	fe843783          	ld	a5,-24(s0)
     d78:	0007c783          	lbu	a5,0(a5)
     d7c:	02078463          	beqz	a5,da4 <next_word+0x50>
     d80:	fe843783          	ld	a5,-24(s0)
     d84:	0007c783          	lbu	a5,0(a5)
     d88:	00078713          	mv	a4,a5
     d8c:	02000793          	li	a5,32
     d90:	fcf71ce3          	bne	a4,a5,d68 <next_word+0x14>
     d94:	0100006f          	j	da4 <next_word+0x50>
     d98:	fe843783          	ld	a5,-24(s0)
     d9c:	00178793          	addi	a5,a5,1
     da0:	fef43423          	sd	a5,-24(s0)
     da4:	fe843783          	ld	a5,-24(s0)
     da8:	0007c783          	lbu	a5,0(a5)
     dac:	00078c63          	beqz	a5,dc4 <next_word+0x70>
     db0:	fe843783          	ld	a5,-24(s0)
     db4:	0007c783          	lbu	a5,0(a5)
     db8:	00078713          	mv	a4,a5
     dbc:	02000793          	li	a5,32
     dc0:	fcf70ce3          	beq	a4,a5,d98 <next_word+0x44>
     dc4:	fe843783          	ld	a5,-24(s0)
     dc8:	00078513          	mv	a0,a5
     dcc:	01813403          	ld	s0,24(sp)
     dd0:	02010113          	addi	sp,sp,32
     dd4:	00008067          	ret

0000000000000dd8 <jump_exe>:
     dd8:	fe010113          	addi	sp,sp,-32
     ddc:	00113c23          	sd	ra,24(sp)
     de0:	00813823          	sd	s0,16(sp)
     de4:	02010413          	addi	s0,sp,32
     de8:	86018513          	addi	a0,gp,-1952 # 29e0 <buffer>
     dec:	f69ff0ef          	jal	ra,d54 <next_word>
     df0:	fea43423          	sd	a0,-24(s0)
     df4:	fe843783          	ld	a5,-24(s0)
     df8:	0007c783          	lbu	a5,0(a5)
     dfc:	0a078263          	beqz	a5,ea0 <jump_exe+0xc8>
     e00:	fe843783          	ld	a5,-24(s0)
     e04:	00178793          	addi	a5,a5,1
     e08:	0007c783          	lbu	a5,0(a5)
     e0c:	08078a63          	beqz	a5,ea0 <jump_exe+0xc8>
     e10:	fe843503          	ld	a0,-24(s0)
     e14:	905ff0ef          	jal	ra,718 <str2hex>
     e18:	00050793          	mv	a5,a0
     e1c:	fef42223          	sw	a5,-28(s0)
     e20:	fe442783          	lw	a5,-28(s0)
     e24:	00078513          	mv	a0,a5
     e28:	9e8ff0ef          	jal	ra,10 <_entry>
     e2c:	000037b7          	lui	a5,0x3
     e30:	98c7a703          	lw	a4,-1652(a5) # 298c <time_lim>
     e34:	000037b7          	lui	a5,0x3
     e38:	9887a783          	lw	a5,-1656(a5) # 2988 <time_count>
     e3c:	00e7e863          	bltu	a5,a4,e4c <jump_exe+0x74>
     e40:	000037b7          	lui	a5,0x3
     e44:	80078513          	addi	a0,a5,-2048 # 2800 <INST_CONFIG+0x570>
     e48:	d30ff0ef          	jal	ra,378 <print>
     e4c:	000037b7          	lui	a5,0x3
     e50:	84078513          	addi	a0,a5,-1984 # 2840 <INST_CONFIG+0x5b0>
     e54:	d24ff0ef          	jal	ra,378 <print>
     e58:	000037b7          	lui	a5,0x3
     e5c:	9887a783          	lw	a5,-1656(a5) # 2988 <time_count>
     e60:	00078513          	mv	a0,a5
     e64:	ff8ff0ef          	jal	ra,65c <print_hex>
     e68:	000037b7          	lui	a5,0x3
     e6c:	85878513          	addi	a0,a5,-1960 # 2858 <INST_CONFIG+0x5c8>
     e70:	d08ff0ef          	jal	ra,378 <print>
     e74:	000037b7          	lui	a5,0x3
     e78:	86078513          	addi	a0,a5,-1952 # 2860 <INST_CONFIG+0x5d0>
     e7c:	cfcff0ef          	jal	ra,378 <print>
     e80:	000037b7          	lui	a5,0x3
     e84:	98c7a783          	lw	a5,-1652(a5) # 298c <time_lim>
     e88:	00078513          	mv	a0,a5
     e8c:	fd0ff0ef          	jal	ra,65c <print_hex>
     e90:	000037b7          	lui	a5,0x3
     e94:	85878513          	addi	a0,a5,-1960 # 2858 <INST_CONFIG+0x5c8>
     e98:	ce0ff0ef          	jal	ra,378 <print>
     e9c:	0080006f          	j	ea4 <jump_exe+0xcc>
     ea0:	00000013          	nop
     ea4:	01813083          	ld	ra,24(sp)
     ea8:	01013403          	ld	s0,16(sp)
     eac:	02010113          	addi	sp,sp,32
     eb0:	00008067          	ret

0000000000000eb4 <reg_exe>:
     eb4:	fe010113          	addi	sp,sp,-32
     eb8:	00113c23          	sd	ra,24(sp)
     ebc:	00813823          	sd	s0,16(sp)
     ec0:	02010413          	addi	s0,sp,32
     ec4:	fe042623          	sw	zero,-20(s0)
     ec8:	05c0006f          	j	f24 <reg_exe+0x70>
     ecc:	000037b7          	lui	a5,0x3
     ed0:	87878513          	addi	a0,a5,-1928 # 2878 <INST_CONFIG+0x5e8>
     ed4:	ca4ff0ef          	jal	ra,378 <print>
     ed8:	fec42783          	lw	a5,-20(s0)
     edc:	00078513          	mv	a0,a5
     ee0:	f7cff0ef          	jal	ra,65c <print_hex>
     ee4:	000037b7          	lui	a5,0x3
     ee8:	88078513          	addi	a0,a5,-1920 # 2880 <INST_CONFIG+0x5f0>
     eec:	c8cff0ef          	jal	ra,378 <print>
     ef0:	fec42703          	lw	a4,-20(s0)
     ef4:	00271713          	slli	a4,a4,0x2
     ef8:	8a818793          	addi	a5,gp,-1880 # 2a28 <regs>
     efc:	00f707b3          	add	a5,a4,a5
     f00:	0007a783          	lw	a5,0(a5)
     f04:	00078513          	mv	a0,a5
     f08:	f54ff0ef          	jal	ra,65c <print_hex>
     f0c:	000027b7          	lui	a5,0x2
     f10:	6f878513          	addi	a0,a5,1784 # 26f8 <INST_CONFIG+0x468>
     f14:	c64ff0ef          	jal	ra,378 <print>
     f18:	fec42783          	lw	a5,-20(s0)
     f1c:	0017879b          	addiw	a5,a5,1
     f20:	fef42623          	sw	a5,-20(s0)
     f24:	fec42783          	lw	a5,-20(s0)
     f28:	0007871b          	sext.w	a4,a5
     f2c:	01f00793          	li	a5,31
     f30:	f8e7dee3          	bge	a5,a4,ecc <reg_exe+0x18>
     f34:	00000013          	nop
     f38:	01813083          	ld	ra,24(sp)
     f3c:	01013403          	ld	s0,16(sp)
     f40:	02010113          	addi	sp,sp,32
     f44:	00008067          	ret

0000000000000f48 <edit_exe>:
     f48:	fd010113          	addi	sp,sp,-48
     f4c:	02113423          	sd	ra,40(sp)
     f50:	02813023          	sd	s0,32(sp)
     f54:	03010413          	addi	s0,sp,48
     f58:	86018513          	addi	a0,gp,-1952 # 29e0 <buffer>
     f5c:	df9ff0ef          	jal	ra,d54 <next_word>
     f60:	fea43023          	sd	a0,-32(s0)
     f64:	fe043783          	ld	a5,-32(s0)
     f68:	0007c783          	lbu	a5,0(a5)
     f6c:	08078863          	beqz	a5,ffc <edit_exe+0xb4>
     f70:	fe043783          	ld	a5,-32(s0)
     f74:	00178793          	addi	a5,a5,1
     f78:	0007c783          	lbu	a5,0(a5)
     f7c:	08078063          	beqz	a5,ffc <edit_exe+0xb4>
     f80:	fe043503          	ld	a0,-32(s0)
     f84:	f94ff0ef          	jal	ra,718 <str2hex>
     f88:	00050793          	mv	a5,a0
     f8c:	fef42623          	sw	a5,-20(s0)
     f90:	000037b7          	lui	a5,0x3
     f94:	88878513          	addi	a0,a5,-1912 # 2888 <INST_CONFIG+0x5f8>
     f98:	be0ff0ef          	jal	ra,378 <print>
     f9c:	fec42783          	lw	a5,-20(s0)
     fa0:	00078513          	mv	a0,a5
     fa4:	eb8ff0ef          	jal	ra,65c <print_hex>
     fa8:	000037b7          	lui	a5,0x3
     fac:	89078513          	addi	a0,a5,-1904 # 2890 <INST_CONFIG+0x600>
     fb0:	bc8ff0ef          	jal	ra,378 <print>
     fb4:	ce4ff0ef          	jal	ra,498 <get_line>
     fb8:	8601c783          	lbu	a5,-1952(gp) # 29e0 <buffer>
     fbc:	04078263          	beqz	a5,1000 <edit_exe+0xb8>
     fc0:	86018793          	addi	a5,gp,-1952 # 29e0 <buffer>
     fc4:	0017c783          	lbu	a5,1(a5)
     fc8:	02078c63          	beqz	a5,1000 <edit_exe+0xb8>
     fcc:	86018513          	addi	a0,gp,-1952 # 29e0 <buffer>
     fd0:	f48ff0ef          	jal	ra,718 <str2hex>
     fd4:	00050793          	mv	a5,a0
     fd8:	fcf42e23          	sw	a5,-36(s0)
     fdc:	fec46783          	lwu	a5,-20(s0)
     fe0:	00078713          	mv	a4,a5
     fe4:	fdc42783          	lw	a5,-36(s0)
     fe8:	00f72023          	sw	a5,0(a4) # 1f000 <__global_pointer$+0x1be80>
     fec:	fec42783          	lw	a5,-20(s0)
     ff0:	0047879b          	addiw	a5,a5,4
     ff4:	fef42623          	sw	a5,-20(s0)
     ff8:	f99ff06f          	j	f90 <edit_exe+0x48>
     ffc:	00000013          	nop
    1000:	02813083          	ld	ra,40(sp)
    1004:	02013403          	ld	s0,32(sp)
    1008:	03010113          	addi	sp,sp,48
    100c:	00008067          	ret

0000000000001010 <parse_arg>:
    1010:	fe010113          	addi	sp,sp,-32
    1014:	00113c23          	sd	ra,24(sp)
    1018:	00813823          	sd	s0,16(sp)
    101c:	02010413          	addi	s0,sp,32
    1020:	fea43423          	sd	a0,-24(s0)
    1024:	feb43023          	sd	a1,-32(s0)
    1028:	fe843783          	ld	a5,-24(s0)
    102c:	0007c783          	lbu	a5,0(a5)
    1030:	00078a63          	beqz	a5,1044 <parse_arg+0x34>
    1034:	fe843783          	ld	a5,-24(s0)
    1038:	00178793          	addi	a5,a5,1
    103c:	0007c783          	lbu	a5,0(a5)
    1040:	00079663          	bnez	a5,104c <parse_arg+0x3c>
    1044:	00000793          	li	a5,0
    1048:	0b40006f          	j	10fc <parse_arg+0xec>
    104c:	fe843783          	ld	a5,-24(s0)
    1050:	0007c783          	lbu	a5,0(a5)
    1054:	00078713          	mv	a4,a5
    1058:	03000793          	li	a5,48
    105c:	02f71c63          	bne	a4,a5,1094 <parse_arg+0x84>
    1060:	fe843783          	ld	a5,-24(s0)
    1064:	00178793          	addi	a5,a5,1
    1068:	0007c783          	lbu	a5,0(a5)
    106c:	00078713          	mv	a4,a5
    1070:	07800793          	li	a5,120
    1074:	02f71063          	bne	a4,a5,1094 <parse_arg+0x84>
    1078:	fe843503          	ld	a0,-24(s0)
    107c:	e9cff0ef          	jal	ra,718 <str2hex>
    1080:	00050793          	mv	a5,a0
    1084:	0007871b          	sext.w	a4,a5
    1088:	fe043783          	ld	a5,-32(s0)
    108c:	00e7a023          	sw	a4,0(a5)
    1090:	0680006f          	j	10f8 <parse_arg+0xe8>
    1094:	fe843783          	ld	a5,-24(s0)
    1098:	0007c783          	lbu	a5,0(a5)
    109c:	00078713          	mv	a4,a5
    10a0:	07800793          	li	a5,120
    10a4:	04f71a63          	bne	a4,a5,10f8 <parse_arg+0xe8>
    10a8:	fe843783          	ld	a5,-24(s0)
    10ac:	00178793          	addi	a5,a5,1
    10b0:	0007c783          	lbu	a5,0(a5)
    10b4:	00078713          	mv	a4,a5
    10b8:	03000793          	li	a5,48
    10bc:	02f71e63          	bne	a4,a5,10f8 <parse_arg+0xe8>
    10c0:	fe843783          	ld	a5,-24(s0)
    10c4:	00278793          	addi	a5,a5,2
    10c8:	0007c783          	lbu	a5,0(a5)
    10cc:	00078713          	mv	a4,a5
    10d0:	07800793          	li	a5,120
    10d4:	02f71263          	bne	a4,a5,10f8 <parse_arg+0xe8>
    10d8:	fe843783          	ld	a5,-24(s0)
    10dc:	00178793          	addi	a5,a5,1
    10e0:	00078513          	mv	a0,a5
    10e4:	e34ff0ef          	jal	ra,718 <str2hex>
    10e8:	00050793          	mv	a5,a0
    10ec:	0007871b          	sext.w	a4,a5
    10f0:	fe043783          	ld	a5,-32(s0)
    10f4:	00e7a023          	sw	a4,0(a5)
    10f8:	00100793          	li	a5,1
    10fc:	00078513          	mv	a0,a5
    1100:	01813083          	ld	ra,24(sp)
    1104:	01013403          	ld	s0,16(sp)
    1108:	02010113          	addi	sp,sp,32
    110c:	00008067          	ret

0000000000001110 <inst2int>:
    1110:	fc010113          	addi	sp,sp,-64
    1114:	02113c23          	sd	ra,56(sp)
    1118:	02813823          	sd	s0,48(sp)
    111c:	04010413          	addi	s0,sp,64
    1120:	fca43423          	sd	a0,-56(s0)
    1124:	fe042623          	sw	zero,-20(s0)
    1128:	1000006f          	j	1228 <inst2int+0x118>
    112c:	fe042423          	sw	zero,-24(s0)
    1130:	0100006f          	j	1140 <inst2int+0x30>
    1134:	fe842783          	lw	a5,-24(s0)
    1138:	0017879b          	addiw	a5,a5,1
    113c:	fef42423          	sw	a5,-24(s0)
    1140:	00002637          	lui	a2,0x2
    1144:	fe842683          	lw	a3,-24(s0)
    1148:	fec42703          	lw	a4,-20(s0)
    114c:	00070793          	mv	a5,a4
    1150:	00379793          	slli	a5,a5,0x3
    1154:	40e787b3          	sub	a5,a5,a4
    1158:	18060713          	addi	a4,a2,384 # 2180 <INST_NAMES>
    115c:	00e787b3          	add	a5,a5,a4
    1160:	00d787b3          	add	a5,a5,a3
    1164:	0007c783          	lbu	a5,0(a5)
    1168:	04078c63          	beqz	a5,11c0 <inst2int+0xb0>
    116c:	fe842783          	lw	a5,-24(s0)
    1170:	fc843703          	ld	a4,-56(s0)
    1174:	00f707b3          	add	a5,a4,a5
    1178:	0007c783          	lbu	a5,0(a5)
    117c:	04078263          	beqz	a5,11c0 <inst2int+0xb0>
    1180:	00002637          	lui	a2,0x2
    1184:	fe842683          	lw	a3,-24(s0)
    1188:	fec42703          	lw	a4,-20(s0)
    118c:	00070793          	mv	a5,a4
    1190:	00379793          	slli	a5,a5,0x3
    1194:	40e787b3          	sub	a5,a5,a4
    1198:	18060713          	addi	a4,a2,384 # 2180 <INST_NAMES>
    119c:	00e787b3          	add	a5,a5,a4
    11a0:	00d787b3          	add	a5,a5,a3
    11a4:	0007c683          	lbu	a3,0(a5)
    11a8:	fe842783          	lw	a5,-24(s0)
    11ac:	fc843703          	ld	a4,-56(s0)
    11b0:	00f707b3          	add	a5,a4,a5
    11b4:	0007c783          	lbu	a5,0(a5)
    11b8:	00068713          	mv	a4,a3
    11bc:	f6f70ce3          	beq	a4,a5,1134 <inst2int+0x24>
    11c0:	00002637          	lui	a2,0x2
    11c4:	fe842683          	lw	a3,-24(s0)
    11c8:	fec42703          	lw	a4,-20(s0)
    11cc:	00070793          	mv	a5,a4
    11d0:	00379793          	slli	a5,a5,0x3
    11d4:	40e787b3          	sub	a5,a5,a4
    11d8:	18060713          	addi	a4,a2,384 # 2180 <INST_NAMES>
    11dc:	00e787b3          	add	a5,a5,a4
    11e0:	00d787b3          	add	a5,a5,a3
    11e4:	0007c783          	lbu	a5,0(a5)
    11e8:	02079a63          	bnez	a5,121c <inst2int+0x10c>
    11ec:	fe842783          	lw	a5,-24(s0)
    11f0:	fc843703          	ld	a4,-56(s0)
    11f4:	00f707b3          	add	a5,a4,a5
    11f8:	0007c783          	lbu	a5,0(a5)
    11fc:	02078e63          	beqz	a5,1238 <inst2int+0x128>
    1200:	fe842783          	lw	a5,-24(s0)
    1204:	fc843703          	ld	a4,-56(s0)
    1208:	00f707b3          	add	a5,a4,a5
    120c:	0007c783          	lbu	a5,0(a5)
    1210:	00078713          	mv	a4,a5
    1214:	02000793          	li	a5,32
    1218:	02f70063          	beq	a4,a5,1238 <inst2int+0x128>
    121c:	fec42783          	lw	a5,-20(s0)
    1220:	0017879b          	addiw	a5,a5,1
    1224:	fef42623          	sw	a5,-20(s0)
    1228:	fec42783          	lw	a5,-20(s0)
    122c:	0007871b          	sext.w	a4,a5
    1230:	02500793          	li	a5,37
    1234:	eee7dce3          	bge	a5,a4,112c <inst2int+0x1c>
    1238:	fec42783          	lw	a5,-20(s0)
    123c:	0007871b          	sext.w	a4,a5
    1240:	02600793          	li	a5,38
    1244:	00f71663          	bne	a4,a5,1250 <inst2int+0x140>
    1248:	00000793          	li	a5,0
    124c:	55c0006f          	j	17a8 <inst2int+0x698>
    1250:	000027b7          	lui	a5,0x2
    1254:	fec42703          	lw	a4,-20(s0)
    1258:	00471713          	slli	a4,a4,0x4
    125c:	29078793          	addi	a5,a5,656 # 2290 <INST_CONFIG>
    1260:	00f707b3          	add	a5,a4,a5
    1264:	0047a783          	lw	a5,4(a5)
    1268:	fef42223          	sw	a5,-28(s0)
    126c:	000027b7          	lui	a5,0x2
    1270:	fec42703          	lw	a4,-20(s0)
    1274:	00471713          	slli	a4,a4,0x4
    1278:	29078793          	addi	a5,a5,656 # 2290 <INST_CONFIG>
    127c:	00f707b3          	add	a5,a4,a5
    1280:	0007a783          	lw	a5,0(a5)
    1284:	fef42023          	sw	a5,-32(s0)
    1288:	fe042783          	lw	a5,-32(s0)
    128c:	0007871b          	sext.w	a4,a5
    1290:	00600793          	li	a5,6
    1294:	02f71863          	bne	a4,a5,12c4 <inst2int+0x1b4>
    1298:	000027b7          	lui	a5,0x2
    129c:	fec42703          	lw	a4,-20(s0)
    12a0:	00471713          	slli	a4,a4,0x4
    12a4:	29078793          	addi	a5,a5,656 # 2290 <INST_CONFIG>
    12a8:	00f707b3          	add	a5,a4,a5
    12ac:	0087a783          	lw	a5,8(a5)
    12b0:	0077979b          	slliw	a5,a5,0x7
    12b4:	0007871b          	sext.w	a4,a5
    12b8:	fe442783          	lw	a5,-28(s0)
    12bc:	00e7e7b3          	or	a5,a5,a4
    12c0:	fef42223          	sw	a5,-28(s0)
    12c4:	fe042783          	lw	a5,-32(s0)
    12c8:	0007879b          	sext.w	a5,a5
    12cc:	02078a63          	beqz	a5,1300 <inst2int+0x1f0>
    12d0:	fe042783          	lw	a5,-32(s0)
    12d4:	0007871b          	sext.w	a4,a5
    12d8:	00100793          	li	a5,1
    12dc:	02f70263          	beq	a4,a5,1300 <inst2int+0x1f0>
    12e0:	fe042783          	lw	a5,-32(s0)
    12e4:	0007871b          	sext.w	a4,a5
    12e8:	00200793          	li	a5,2
    12ec:	00f70a63          	beq	a4,a5,1300 <inst2int+0x1f0>
    12f0:	fe042783          	lw	a5,-32(s0)
    12f4:	0007871b          	sext.w	a4,a5
    12f8:	00300793          	li	a5,3
    12fc:	04f71063          	bne	a4,a5,133c <inst2int+0x22c>
    1300:	000027b7          	lui	a5,0x2
    1304:	fec42703          	lw	a4,-20(s0)
    1308:	00471713          	slli	a4,a4,0x4
    130c:	29078793          	addi	a5,a5,656 # 2290 <INST_CONFIG>
    1310:	00f707b3          	add	a5,a4,a5
    1314:	0087a783          	lw	a5,8(a5)
    1318:	00c7979b          	slliw	a5,a5,0xc
    131c:	0007879b          	sext.w	a5,a5
    1320:	00078713          	mv	a4,a5
    1324:	000077b7          	lui	a5,0x7
    1328:	00f777b3          	and	a5,a4,a5
    132c:	0007871b          	sext.w	a4,a5
    1330:	fe442783          	lw	a5,-28(s0)
    1334:	00e7e7b3          	or	a5,a5,a4
    1338:	fef42223          	sw	a5,-28(s0)
    133c:	fe042783          	lw	a5,-32(s0)
    1340:	0007879b          	sext.w	a5,a5
    1344:	02079863          	bnez	a5,1374 <inst2int+0x264>
    1348:	000027b7          	lui	a5,0x2
    134c:	fec42703          	lw	a4,-20(s0)
    1350:	00471713          	slli	a4,a4,0x4
    1354:	29078793          	addi	a5,a5,656 # 2290 <INST_CONFIG>
    1358:	00f707b3          	add	a5,a4,a5
    135c:	00c7a783          	lw	a5,12(a5)
    1360:	0197979b          	slliw	a5,a5,0x19
    1364:	0007871b          	sext.w	a4,a5
    1368:	fe442783          	lw	a5,-28(s0)
    136c:	00e7e7b3          	or	a5,a5,a4
    1370:	fef42223          	sw	a5,-28(s0)
    1374:	fe042783          	lw	a5,-32(s0)
    1378:	0007879b          	sext.w	a5,a5
    137c:	02078a63          	beqz	a5,13b0 <inst2int+0x2a0>
    1380:	fe042783          	lw	a5,-32(s0)
    1384:	0007871b          	sext.w	a4,a5
    1388:	00100793          	li	a5,1
    138c:	02f70263          	beq	a4,a5,13b0 <inst2int+0x2a0>
    1390:	fe042783          	lw	a5,-32(s0)
    1394:	0007871b          	sext.w	a4,a5
    1398:	00400793          	li	a5,4
    139c:	00f70a63          	beq	a4,a5,13b0 <inst2int+0x2a0>
    13a0:	fe042783          	lw	a5,-32(s0)
    13a4:	0007871b          	sext.w	a4,a5
    13a8:	00500793          	li	a5,5
    13ac:	06f71463          	bne	a4,a5,1414 <inst2int+0x304>
    13b0:	fc843503          	ld	a0,-56(s0)
    13b4:	9a1ff0ef          	jal	ra,d54 <next_word>
    13b8:	fca43423          	sd	a0,-56(s0)
    13bc:	fd840793          	addi	a5,s0,-40
    13c0:	00078593          	mv	a1,a5
    13c4:	fc843503          	ld	a0,-56(s0)
    13c8:	c49ff0ef          	jal	ra,1010 <parse_arg>
    13cc:	00050793          	mv	a5,a0
    13d0:	fcf42e23          	sw	a5,-36(s0)
    13d4:	fdc42783          	lw	a5,-36(s0)
    13d8:	0007879b          	sext.w	a5,a5
    13dc:	00079663          	bnez	a5,13e8 <inst2int+0x2d8>
    13e0:	00000793          	li	a5,0
    13e4:	3c40006f          	j	17a8 <inst2int+0x698>
    13e8:	fd842783          	lw	a5,-40(s0)
    13ec:	0077979b          	slliw	a5,a5,0x7
    13f0:	0007879b          	sext.w	a5,a5
    13f4:	00078713          	mv	a4,a5
    13f8:	000017b7          	lui	a5,0x1
    13fc:	f8078793          	addi	a5,a5,-128 # f80 <edit_exe+0x38>
    1400:	00f777b3          	and	a5,a4,a5
    1404:	0007871b          	sext.w	a4,a5
    1408:	fe442783          	lw	a5,-28(s0)
    140c:	00e7e7b3          	or	a5,a5,a4
    1410:	fef42223          	sw	a5,-28(s0)
    1414:	fe042783          	lw	a5,-32(s0)
    1418:	0007879b          	sext.w	a5,a5
    141c:	02078a63          	beqz	a5,1450 <inst2int+0x340>
    1420:	fe042783          	lw	a5,-32(s0)
    1424:	0007871b          	sext.w	a4,a5
    1428:	00100793          	li	a5,1
    142c:	02f70263          	beq	a4,a5,1450 <inst2int+0x340>
    1430:	fe042783          	lw	a5,-32(s0)
    1434:	0007871b          	sext.w	a4,a5
    1438:	00200793          	li	a5,2
    143c:	00f70a63          	beq	a4,a5,1450 <inst2int+0x340>
    1440:	fe042783          	lw	a5,-32(s0)
    1444:	0007871b          	sext.w	a4,a5
    1448:	00300793          	li	a5,3
    144c:	06f71263          	bne	a4,a5,14b0 <inst2int+0x3a0>
    1450:	fc843503          	ld	a0,-56(s0)
    1454:	901ff0ef          	jal	ra,d54 <next_word>
    1458:	fca43423          	sd	a0,-56(s0)
    145c:	fd840793          	addi	a5,s0,-40
    1460:	00078593          	mv	a1,a5
    1464:	fc843503          	ld	a0,-56(s0)
    1468:	ba9ff0ef          	jal	ra,1010 <parse_arg>
    146c:	00050793          	mv	a5,a0
    1470:	fcf42e23          	sw	a5,-36(s0)
    1474:	fdc42783          	lw	a5,-36(s0)
    1478:	0007879b          	sext.w	a5,a5
    147c:	00079663          	bnez	a5,1488 <inst2int+0x378>
    1480:	00000793          	li	a5,0
    1484:	3240006f          	j	17a8 <inst2int+0x698>
    1488:	fd842783          	lw	a5,-40(s0)
    148c:	00f7979b          	slliw	a5,a5,0xf
    1490:	0007879b          	sext.w	a5,a5
    1494:	00078713          	mv	a4,a5
    1498:	000f87b7          	lui	a5,0xf8
    149c:	00f777b3          	and	a5,a4,a5
    14a0:	0007871b          	sext.w	a4,a5
    14a4:	fe442783          	lw	a5,-28(s0)
    14a8:	00e7e7b3          	or	a5,a5,a4
    14ac:	fef42223          	sw	a5,-28(s0)
    14b0:	fe042783          	lw	a5,-32(s0)
    14b4:	0007879b          	sext.w	a5,a5
    14b8:	02078263          	beqz	a5,14dc <inst2int+0x3cc>
    14bc:	fe042783          	lw	a5,-32(s0)
    14c0:	0007871b          	sext.w	a4,a5
    14c4:	00200793          	li	a5,2
    14c8:	00f70a63          	beq	a4,a5,14dc <inst2int+0x3cc>
    14cc:	fe042783          	lw	a5,-32(s0)
    14d0:	0007871b          	sext.w	a4,a5
    14d4:	00300793          	li	a5,3
    14d8:	06f71263          	bne	a4,a5,153c <inst2int+0x42c>
    14dc:	fc843503          	ld	a0,-56(s0)
    14e0:	875ff0ef          	jal	ra,d54 <next_word>
    14e4:	fca43423          	sd	a0,-56(s0)
    14e8:	fd840793          	addi	a5,s0,-40
    14ec:	00078593          	mv	a1,a5
    14f0:	fc843503          	ld	a0,-56(s0)
    14f4:	b1dff0ef          	jal	ra,1010 <parse_arg>
    14f8:	00050793          	mv	a5,a0
    14fc:	fcf42e23          	sw	a5,-36(s0)
    1500:	fdc42783          	lw	a5,-36(s0)
    1504:	0007879b          	sext.w	a5,a5
    1508:	00079663          	bnez	a5,1514 <inst2int+0x404>
    150c:	00000793          	li	a5,0
    1510:	2980006f          	j	17a8 <inst2int+0x698>
    1514:	fd842783          	lw	a5,-40(s0)
    1518:	0147979b          	slliw	a5,a5,0x14
    151c:	0007879b          	sext.w	a5,a5
    1520:	00078713          	mv	a4,a5
    1524:	01f007b7          	lui	a5,0x1f00
    1528:	00f777b3          	and	a5,a4,a5
    152c:	0007871b          	sext.w	a4,a5
    1530:	fe442783          	lw	a5,-28(s0)
    1534:	00e7e7b3          	or	a5,a5,a4
    1538:	fef42223          	sw	a5,-28(s0)
    153c:	fe042783          	lw	a5,-32(s0)
    1540:	0007879b          	sext.w	a5,a5
    1544:	24078e63          	beqz	a5,17a0 <inst2int+0x690>
    1548:	fe042783          	lw	a5,-32(s0)
    154c:	0007871b          	sext.w	a4,a5
    1550:	00600793          	li	a5,6
    1554:	24f70663          	beq	a4,a5,17a0 <inst2int+0x690>
    1558:	fc843503          	ld	a0,-56(s0)
    155c:	ff8ff0ef          	jal	ra,d54 <next_word>
    1560:	fca43423          	sd	a0,-56(s0)
    1564:	fd840793          	addi	a5,s0,-40
    1568:	00078593          	mv	a1,a5
    156c:	fc843503          	ld	a0,-56(s0)
    1570:	aa1ff0ef          	jal	ra,1010 <parse_arg>
    1574:	00050793          	mv	a5,a0
    1578:	fcf42e23          	sw	a5,-36(s0)
    157c:	fdc42783          	lw	a5,-36(s0)
    1580:	0007879b          	sext.w	a5,a5
    1584:	00079663          	bnez	a5,1590 <inst2int+0x480>
    1588:	00000793          	li	a5,0
    158c:	21c0006f          	j	17a8 <inst2int+0x698>
    1590:	fe042783          	lw	a5,-32(s0)
    1594:	0007871b          	sext.w	a4,a5
    1598:	00500793          	li	a5,5
    159c:	20e7e463          	bltu	a5,a4,17a4 <inst2int+0x694>
    15a0:	fe046783          	lwu	a5,-32(s0)
    15a4:	00279713          	slli	a4,a5,0x2
    15a8:	000037b7          	lui	a5,0x3
    15ac:	89478793          	addi	a5,a5,-1900 # 2894 <INST_CONFIG+0x604>
    15b0:	00f707b3          	add	a5,a4,a5
    15b4:	0007a783          	lw	a5,0(a5)
    15b8:	00078067          	jr	a5
    15bc:	fd842783          	lw	a5,-40(s0)
    15c0:	0147979b          	slliw	a5,a5,0x14
    15c4:	0007871b          	sext.w	a4,a5
    15c8:	fe442783          	lw	a5,-28(s0)
    15cc:	00e7e7b3          	or	a5,a5,a4
    15d0:	fef42223          	sw	a5,-28(s0)
    15d4:	1d00006f          	j	17a4 <inst2int+0x694>
    15d8:	fd842783          	lw	a5,-40(s0)
    15dc:	0077979b          	slliw	a5,a5,0x7
    15e0:	0007879b          	sext.w	a5,a5
    15e4:	00078713          	mv	a4,a5
    15e8:	000017b7          	lui	a5,0x1
    15ec:	f8078793          	addi	a5,a5,-128 # f80 <edit_exe+0x38>
    15f0:	00f777b3          	and	a5,a4,a5
    15f4:	0007871b          	sext.w	a4,a5
    15f8:	fe442783          	lw	a5,-28(s0)
    15fc:	00e7e7b3          	or	a5,a5,a4
    1600:	fef42223          	sw	a5,-28(s0)
    1604:	fd842783          	lw	a5,-40(s0)
    1608:	0057d79b          	srliw	a5,a5,0x5
    160c:	0007879b          	sext.w	a5,a5
    1610:	0197979b          	slliw	a5,a5,0x19
    1614:	0007871b          	sext.w	a4,a5
    1618:	fe442783          	lw	a5,-28(s0)
    161c:	00e7e7b3          	or	a5,a5,a4
    1620:	fef42223          	sw	a5,-28(s0)
    1624:	1800006f          	j	17a4 <inst2int+0x694>
    1628:	fd842783          	lw	a5,-40(s0)
    162c:	00b7d79b          	srliw	a5,a5,0xb
    1630:	0007879b          	sext.w	a5,a5
    1634:	0077979b          	slliw	a5,a5,0x7
    1638:	0007879b          	sext.w	a5,a5
    163c:	0ff7f793          	andi	a5,a5,255
    1640:	0007871b          	sext.w	a4,a5
    1644:	fe442783          	lw	a5,-28(s0)
    1648:	00e7e7b3          	or	a5,a5,a4
    164c:	fef42223          	sw	a5,-28(s0)
    1650:	fd842783          	lw	a5,-40(s0)
    1654:	0017d79b          	srliw	a5,a5,0x1
    1658:	0007879b          	sext.w	a5,a5
    165c:	0087979b          	slliw	a5,a5,0x8
    1660:	0007879b          	sext.w	a5,a5
    1664:	00078713          	mv	a4,a5
    1668:	000017b7          	lui	a5,0x1
    166c:	f0078793          	addi	a5,a5,-256 # f00 <reg_exe+0x4c>
    1670:	00f777b3          	and	a5,a4,a5
    1674:	0007871b          	sext.w	a4,a5
    1678:	fe442783          	lw	a5,-28(s0)
    167c:	00e7e7b3          	or	a5,a5,a4
    1680:	fef42223          	sw	a5,-28(s0)
    1684:	fd842783          	lw	a5,-40(s0)
    1688:	0057d79b          	srliw	a5,a5,0x5
    168c:	0007879b          	sext.w	a5,a5
    1690:	0197979b          	slliw	a5,a5,0x19
    1694:	0007879b          	sext.w	a5,a5
    1698:	00078713          	mv	a4,a5
    169c:	7e0007b7          	lui	a5,0x7e000
    16a0:	00f777b3          	and	a5,a4,a5
    16a4:	0007871b          	sext.w	a4,a5
    16a8:	fe442783          	lw	a5,-28(s0)
    16ac:	00e7e7b3          	or	a5,a5,a4
    16b0:	fef42223          	sw	a5,-28(s0)
    16b4:	fd842783          	lw	a5,-40(s0)
    16b8:	00c7d79b          	srliw	a5,a5,0xc
    16bc:	0007879b          	sext.w	a5,a5
    16c0:	01f7979b          	slliw	a5,a5,0x1f
    16c4:	0007871b          	sext.w	a4,a5
    16c8:	fe442783          	lw	a5,-28(s0)
    16cc:	00e7e7b3          	or	a5,a5,a4
    16d0:	fef42223          	sw	a5,-28(s0)
    16d4:	0d00006f          	j	17a4 <inst2int+0x694>
    16d8:	fd842783          	lw	a5,-40(s0)
    16dc:	00078713          	mv	a4,a5
    16e0:	fffff7b7          	lui	a5,0xfffff
    16e4:	00f777b3          	and	a5,a4,a5
    16e8:	0007871b          	sext.w	a4,a5
    16ec:	fe442783          	lw	a5,-28(s0)
    16f0:	00e7e7b3          	or	a5,a5,a4
    16f4:	fef42223          	sw	a5,-28(s0)
    16f8:	0ac0006f          	j	17a4 <inst2int+0x694>
    16fc:	fd842783          	lw	a5,-40(s0)
    1700:	00078713          	mv	a4,a5
    1704:	000ff7b7          	lui	a5,0xff
    1708:	00f777b3          	and	a5,a4,a5
    170c:	0007871b          	sext.w	a4,a5
    1710:	fe442783          	lw	a5,-28(s0)
    1714:	00e7e7b3          	or	a5,a5,a4
    1718:	fef42223          	sw	a5,-28(s0)
    171c:	fd842783          	lw	a5,-40(s0)
    1720:	00b7d79b          	srliw	a5,a5,0xb
    1724:	0007879b          	sext.w	a5,a5
    1728:	0147979b          	slliw	a5,a5,0x14
    172c:	0007879b          	sext.w	a5,a5
    1730:	00078713          	mv	a4,a5
    1734:	001007b7          	lui	a5,0x100
    1738:	00f777b3          	and	a5,a4,a5
    173c:	0007871b          	sext.w	a4,a5
    1740:	fe442783          	lw	a5,-28(s0)
    1744:	00e7e7b3          	or	a5,a5,a4
    1748:	fef42223          	sw	a5,-28(s0)
    174c:	fd842783          	lw	a5,-40(s0)
    1750:	0017d79b          	srliw	a5,a5,0x1
    1754:	0007879b          	sext.w	a5,a5
    1758:	0157979b          	slliw	a5,a5,0x15
    175c:	0007879b          	sext.w	a5,a5
    1760:	00078713          	mv	a4,a5
    1764:	7fe007b7          	lui	a5,0x7fe00
    1768:	00f777b3          	and	a5,a4,a5
    176c:	0007871b          	sext.w	a4,a5
    1770:	fe442783          	lw	a5,-28(s0)
    1774:	00e7e7b3          	or	a5,a5,a4
    1778:	fef42223          	sw	a5,-28(s0)
    177c:	fd842783          	lw	a5,-40(s0)
    1780:	0147d79b          	srliw	a5,a5,0x14
    1784:	0007879b          	sext.w	a5,a5
    1788:	01f7979b          	slliw	a5,a5,0x1f
    178c:	0007871b          	sext.w	a4,a5
    1790:	fe442783          	lw	a5,-28(s0)
    1794:	00e7e7b3          	or	a5,a5,a4
    1798:	fef42223          	sw	a5,-28(s0)
    179c:	0080006f          	j	17a4 <inst2int+0x694>
    17a0:	00000013          	nop
    17a4:	fe442783          	lw	a5,-28(s0)
    17a8:	00078513          	mv	a0,a5
    17ac:	03813083          	ld	ra,56(sp)
    17b0:	03013403          	ld	s0,48(sp)
    17b4:	04010113          	addi	sp,sp,64
    17b8:	00008067          	ret

00000000000017bc <inst_exe>:
    17bc:	fd010113          	addi	sp,sp,-48
    17c0:	02113423          	sd	ra,40(sp)
    17c4:	02813023          	sd	s0,32(sp)
    17c8:	03010413          	addi	s0,sp,48
    17cc:	86018513          	addi	a0,gp,-1952 # 29e0 <buffer>
    17d0:	d84ff0ef          	jal	ra,d54 <next_word>
    17d4:	fea43023          	sd	a0,-32(s0)
    17d8:	fe043783          	ld	a5,-32(s0)
    17dc:	0007c783          	lbu	a5,0(a5) # 7fe00000 <__global_pointer$+0x7fdfce80>
    17e0:	08078463          	beqz	a5,1868 <inst_exe+0xac>
    17e4:	fe043783          	ld	a5,-32(s0)
    17e8:	00178793          	addi	a5,a5,1
    17ec:	0007c783          	lbu	a5,0(a5)
    17f0:	06078c63          	beqz	a5,1868 <inst_exe+0xac>
    17f4:	fe043503          	ld	a0,-32(s0)
    17f8:	f21fe0ef          	jal	ra,718 <str2hex>
    17fc:	00050793          	mv	a5,a0
    1800:	fef42623          	sw	a5,-20(s0)
    1804:	000037b7          	lui	a5,0x3
    1808:	88878513          	addi	a0,a5,-1912 # 2888 <INST_CONFIG+0x5f8>
    180c:	b6dfe0ef          	jal	ra,378 <print>
    1810:	fec42783          	lw	a5,-20(s0)
    1814:	00078513          	mv	a0,a5
    1818:	e45fe0ef          	jal	ra,65c <print_hex>
    181c:	000037b7          	lui	a5,0x3
    1820:	89078513          	addi	a0,a5,-1904 # 2890 <INST_CONFIG+0x600>
    1824:	b55fe0ef          	jal	ra,378 <print>
    1828:	c71fe0ef          	jal	ra,498 <get_line>
    182c:	86018513          	addi	a0,gp,-1952 # 29e0 <buffer>
    1830:	8e1ff0ef          	jal	ra,1110 <inst2int>
    1834:	00050793          	mv	a5,a0
    1838:	fcf42e23          	sw	a5,-36(s0)
    183c:	fdc42783          	lw	a5,-36(s0)
    1840:	0007879b          	sext.w	a5,a5
    1844:	02078663          	beqz	a5,1870 <inst_exe+0xb4>
    1848:	fec46783          	lwu	a5,-20(s0)
    184c:	00078713          	mv	a4,a5
    1850:	fdc42783          	lw	a5,-36(s0)
    1854:	00f72023          	sw	a5,0(a4)
    1858:	fec42783          	lw	a5,-20(s0)
    185c:	0047879b          	addiw	a5,a5,4
    1860:	fef42623          	sw	a5,-20(s0)
    1864:	fa1ff06f          	j	1804 <inst_exe+0x48>
    1868:	00000013          	nop
    186c:	0080006f          	j	1874 <inst_exe+0xb8>
    1870:	00000013          	nop
    1874:	02813083          	ld	ra,40(sp)
    1878:	02013403          	ld	s0,32(sp)
    187c:	03010113          	addi	sp,sp,48
    1880:	00008067          	ret

0000000000001884 <view_exe>:
    1884:	fd010113          	addi	sp,sp,-48
    1888:	02113423          	sd	ra,40(sp)
    188c:	02813023          	sd	s0,32(sp)
    1890:	03010413          	addi	s0,sp,48
    1894:	86018513          	addi	a0,gp,-1952 # 29e0 <buffer>
    1898:	cbcff0ef          	jal	ra,d54 <next_word>
    189c:	fea43023          	sd	a0,-32(s0)
    18a0:	fe043783          	ld	a5,-32(s0)
    18a4:	0007c783          	lbu	a5,0(a5)
    18a8:	0c078463          	beqz	a5,1970 <view_exe+0xec>
    18ac:	fe043783          	ld	a5,-32(s0)
    18b0:	00178793          	addi	a5,a5,1
    18b4:	0007c783          	lbu	a5,0(a5)
    18b8:	0a078c63          	beqz	a5,1970 <view_exe+0xec>
    18bc:	fe043503          	ld	a0,-32(s0)
    18c0:	e59fe0ef          	jal	ra,718 <str2hex>
    18c4:	00050793          	mv	a5,a0
    18c8:	fef42623          	sw	a5,-20(s0)
    18cc:	fe043503          	ld	a0,-32(s0)
    18d0:	c84ff0ef          	jal	ra,d54 <next_word>
    18d4:	fea43023          	sd	a0,-32(s0)
    18d8:	fe043783          	ld	a5,-32(s0)
    18dc:	0007c783          	lbu	a5,0(a5)
    18e0:	08078c63          	beqz	a5,1978 <view_exe+0xf4>
    18e4:	fe043783          	ld	a5,-32(s0)
    18e8:	00178793          	addi	a5,a5,1
    18ec:	0007c783          	lbu	a5,0(a5)
    18f0:	08078463          	beqz	a5,1978 <view_exe+0xf4>
    18f4:	fe043503          	ld	a0,-32(s0)
    18f8:	e21fe0ef          	jal	ra,718 <str2hex>
    18fc:	00050793          	mv	a5,a0
    1900:	fef42423          	sw	a5,-24(s0)
    1904:	0580006f          	j	195c <view_exe+0xd8>
    1908:	000037b7          	lui	a5,0x3
    190c:	88878513          	addi	a0,a5,-1912 # 2888 <INST_CONFIG+0x5f8>
    1910:	a69fe0ef          	jal	ra,378 <print>
    1914:	fec42783          	lw	a5,-20(s0)
    1918:	00078513          	mv	a0,a5
    191c:	d41fe0ef          	jal	ra,65c <print_hex>
    1920:	000037b7          	lui	a5,0x3
    1924:	89078513          	addi	a0,a5,-1904 # 2890 <INST_CONFIG+0x600>
    1928:	a51fe0ef          	jal	ra,378 <print>
    192c:	fec46783          	lwu	a5,-20(s0)
    1930:	0007a783          	lw	a5,0(a5)
    1934:	fcf42e23          	sw	a5,-36(s0)
    1938:	fdc42783          	lw	a5,-36(s0)
    193c:	00078513          	mv	a0,a5
    1940:	d1dfe0ef          	jal	ra,65c <print_hex>
    1944:	000027b7          	lui	a5,0x2
    1948:	6f878513          	addi	a0,a5,1784 # 26f8 <INST_CONFIG+0x468>
    194c:	a2dfe0ef          	jal	ra,378 <print>
    1950:	fec42783          	lw	a5,-20(s0)
    1954:	0047879b          	addiw	a5,a5,4
    1958:	fef42623          	sw	a5,-20(s0)
    195c:	fe842783          	lw	a5,-24(s0)
    1960:	fff7871b          	addiw	a4,a5,-1
    1964:	fee42423          	sw	a4,-24(s0)
    1968:	fa0790e3          	bnez	a5,1908 <view_exe+0x84>
    196c:	0100006f          	j	197c <view_exe+0xf8>
    1970:	00000013          	nop
    1974:	0080006f          	j	197c <view_exe+0xf8>
    1978:	00000013          	nop
    197c:	02813083          	ld	ra,40(sp)
    1980:	02013403          	ld	s0,32(sp)
    1984:	03010113          	addi	sp,sp,48
    1988:	00008067          	ret

000000000000198c <print_int2inst>:
    198c:	fd010113          	addi	sp,sp,-48
    1990:	02113423          	sd	ra,40(sp)
    1994:	02813023          	sd	s0,32(sp)
    1998:	03010413          	addi	s0,sp,48
    199c:	00050793          	mv	a5,a0
    19a0:	fcf42e23          	sw	a5,-36(s0)
    19a4:	fe042623          	sw	zero,-20(s0)
    19a8:	1440006f          	j	1aec <print_int2inst+0x160>
    19ac:	000027b7          	lui	a5,0x2
    19b0:	fec42703          	lw	a4,-20(s0)
    19b4:	00471713          	slli	a4,a4,0x4
    19b8:	29078793          	addi	a5,a5,656 # 2290 <INST_CONFIG>
    19bc:	00f707b3          	add	a5,a4,a5
    19c0:	0047a703          	lw	a4,4(a5)
    19c4:	fdc42783          	lw	a5,-36(s0)
    19c8:	07f7f793          	andi	a5,a5,127
    19cc:	0007879b          	sext.w	a5,a5
    19d0:	0ef71e63          	bne	a4,a5,1acc <print_int2inst+0x140>
    19d4:	000027b7          	lui	a5,0x2
    19d8:	fec42703          	lw	a4,-20(s0)
    19dc:	00471713          	slli	a4,a4,0x4
    19e0:	29078793          	addi	a5,a5,656 # 2290 <INST_CONFIG>
    19e4:	00f707b3          	add	a5,a4,a5
    19e8:	0007a783          	lw	a5,0(a5)
    19ec:	fef42423          	sw	a5,-24(s0)
    19f0:	fe842783          	lw	a5,-24(s0)
    19f4:	0007879b          	sext.w	a5,a5
    19f8:	02079663          	bnez	a5,1a24 <print_int2inst+0x98>
    19fc:	000027b7          	lui	a5,0x2
    1a00:	fec42703          	lw	a4,-20(s0)
    1a04:	00471713          	slli	a4,a4,0x4
    1a08:	29078793          	addi	a5,a5,656 # 2290 <INST_CONFIG>
    1a0c:	00f707b3          	add	a5,a4,a5
    1a10:	00c7a703          	lw	a4,12(a5)
    1a14:	fdc42783          	lw	a5,-36(s0)
    1a18:	0197d79b          	srliw	a5,a5,0x19
    1a1c:	0007879b          	sext.w	a5,a5
    1a20:	0af71a63          	bne	a4,a5,1ad4 <print_int2inst+0x148>
    1a24:	fe842783          	lw	a5,-24(s0)
    1a28:	0007879b          	sext.w	a5,a5
    1a2c:	02078a63          	beqz	a5,1a60 <print_int2inst+0xd4>
    1a30:	fe842783          	lw	a5,-24(s0)
    1a34:	0007871b          	sext.w	a4,a5
    1a38:	00100793          	li	a5,1
    1a3c:	02f70263          	beq	a4,a5,1a60 <print_int2inst+0xd4>
    1a40:	fe842783          	lw	a5,-24(s0)
    1a44:	0007871b          	sext.w	a4,a5
    1a48:	00200793          	li	a5,2
    1a4c:	00f70a63          	beq	a4,a5,1a60 <print_int2inst+0xd4>
    1a50:	fe842783          	lw	a5,-24(s0)
    1a54:	0007871b          	sext.w	a4,a5
    1a58:	00300793          	li	a5,3
    1a5c:	02f71a63          	bne	a4,a5,1a90 <print_int2inst+0x104>
    1a60:	000027b7          	lui	a5,0x2
    1a64:	fec42703          	lw	a4,-20(s0)
    1a68:	00471713          	slli	a4,a4,0x4
    1a6c:	29078793          	addi	a5,a5,656 # 2290 <INST_CONFIG>
    1a70:	00f707b3          	add	a5,a4,a5
    1a74:	0087a703          	lw	a4,8(a5)
    1a78:	fdc42783          	lw	a5,-36(s0)
    1a7c:	00c7d79b          	srliw	a5,a5,0xc
    1a80:	0007879b          	sext.w	a5,a5
    1a84:	0077f793          	andi	a5,a5,7
    1a88:	0007879b          	sext.w	a5,a5
    1a8c:	04f71863          	bne	a4,a5,1adc <print_int2inst+0x150>
    1a90:	fe842783          	lw	a5,-24(s0)
    1a94:	0007871b          	sext.w	a4,a5
    1a98:	00600793          	li	a5,6
    1a9c:	06f71263          	bne	a4,a5,1b00 <print_int2inst+0x174>
    1aa0:	000027b7          	lui	a5,0x2
    1aa4:	fec42703          	lw	a4,-20(s0)
    1aa8:	00471713          	slli	a4,a4,0x4
    1aac:	29078793          	addi	a5,a5,656 # 2290 <INST_CONFIG>
    1ab0:	00f707b3          	add	a5,a4,a5
    1ab4:	0087a703          	lw	a4,8(a5)
    1ab8:	fdc42783          	lw	a5,-36(s0)
    1abc:	0077d79b          	srliw	a5,a5,0x7
    1ac0:	0007879b          	sext.w	a5,a5
    1ac4:	02f70e63          	beq	a4,a5,1b00 <print_int2inst+0x174>
    1ac8:	0180006f          	j	1ae0 <print_int2inst+0x154>
    1acc:	00000013          	nop
    1ad0:	0100006f          	j	1ae0 <print_int2inst+0x154>
    1ad4:	00000013          	nop
    1ad8:	0080006f          	j	1ae0 <print_int2inst+0x154>
    1adc:	00000013          	nop
    1ae0:	fec42783          	lw	a5,-20(s0)
    1ae4:	0017879b          	addiw	a5,a5,1
    1ae8:	fef42623          	sw	a5,-20(s0)
    1aec:	fec42783          	lw	a5,-20(s0)
    1af0:	0007871b          	sext.w	a4,a5
    1af4:	02500793          	li	a5,37
    1af8:	eae7dae3          	bge	a5,a4,19ac <print_int2inst+0x20>
    1afc:	0080006f          	j	1b04 <print_int2inst+0x178>
    1b00:	00000013          	nop
    1b04:	fec42783          	lw	a5,-20(s0)
    1b08:	0007871b          	sext.w	a4,a5
    1b0c:	02600793          	li	a5,38
    1b10:	00f71a63          	bne	a4,a5,1b24 <print_int2inst+0x198>
    1b14:	000037b7          	lui	a5,0x3
    1b18:	8b078513          	addi	a0,a5,-1872 # 28b0 <INST_CONFIG+0x620>
    1b1c:	85dfe0ef          	jal	ra,378 <print>
    1b20:	3400006f          	j	1e60 <print_int2inst+0x4d4>
    1b24:	fec42703          	lw	a4,-20(s0)
    1b28:	00070793          	mv	a5,a4
    1b2c:	00379793          	slli	a5,a5,0x3
    1b30:	40e787b3          	sub	a5,a5,a4
    1b34:	00002737          	lui	a4,0x2
    1b38:	18070713          	addi	a4,a4,384 # 2180 <INST_NAMES>
    1b3c:	00e787b3          	add	a5,a5,a4
    1b40:	00078513          	mv	a0,a5
    1b44:	835fe0ef          	jal	ra,378 <print>
    1b48:	fe842783          	lw	a5,-24(s0)
    1b4c:	0007879b          	sext.w	a5,a5
    1b50:	02078a63          	beqz	a5,1b84 <print_int2inst+0x1f8>
    1b54:	fe842783          	lw	a5,-24(s0)
    1b58:	0007871b          	sext.w	a4,a5
    1b5c:	00100793          	li	a5,1
    1b60:	02f70263          	beq	a4,a5,1b84 <print_int2inst+0x1f8>
    1b64:	fe842783          	lw	a5,-24(s0)
    1b68:	0007871b          	sext.w	a4,a5
    1b6c:	00400793          	li	a5,4
    1b70:	00f70a63          	beq	a4,a5,1b84 <print_int2inst+0x1f8>
    1b74:	fe842783          	lw	a5,-24(s0)
    1b78:	0007871b          	sext.w	a4,a5
    1b7c:	00500793          	li	a5,5
    1b80:	02f71663          	bne	a4,a5,1bac <print_int2inst+0x220>
    1b84:	000037b7          	lui	a5,0x3
    1b88:	8c078513          	addi	a0,a5,-1856 # 28c0 <INST_CONFIG+0x630>
    1b8c:	fecfe0ef          	jal	ra,378 <print>
    1b90:	fdc42783          	lw	a5,-36(s0)
    1b94:	0077d79b          	srliw	a5,a5,0x7
    1b98:	0007879b          	sext.w	a5,a5
    1b9c:	01f7f793          	andi	a5,a5,31
    1ba0:	0007879b          	sext.w	a5,a5
    1ba4:	00078513          	mv	a0,a5
    1ba8:	ab5fe0ef          	jal	ra,65c <print_hex>
    1bac:	fe842783          	lw	a5,-24(s0)
    1bb0:	0007879b          	sext.w	a5,a5
    1bb4:	02078a63          	beqz	a5,1be8 <print_int2inst+0x25c>
    1bb8:	fe842783          	lw	a5,-24(s0)
    1bbc:	0007871b          	sext.w	a4,a5
    1bc0:	00100793          	li	a5,1
    1bc4:	02f70263          	beq	a4,a5,1be8 <print_int2inst+0x25c>
    1bc8:	fe842783          	lw	a5,-24(s0)
    1bcc:	0007871b          	sext.w	a4,a5
    1bd0:	00200793          	li	a5,2
    1bd4:	00f70a63          	beq	a4,a5,1be8 <print_int2inst+0x25c>
    1bd8:	fe842783          	lw	a5,-24(s0)
    1bdc:	0007871b          	sext.w	a4,a5
    1be0:	00300793          	li	a5,3
    1be4:	02f71663          	bne	a4,a5,1c10 <print_int2inst+0x284>
    1be8:	000037b7          	lui	a5,0x3
    1bec:	8c078513          	addi	a0,a5,-1856 # 28c0 <INST_CONFIG+0x630>
    1bf0:	f88fe0ef          	jal	ra,378 <print>
    1bf4:	fdc42783          	lw	a5,-36(s0)
    1bf8:	00f7d79b          	srliw	a5,a5,0xf
    1bfc:	0007879b          	sext.w	a5,a5
    1c00:	01f7f793          	andi	a5,a5,31
    1c04:	0007879b          	sext.w	a5,a5
    1c08:	00078513          	mv	a0,a5
    1c0c:	a51fe0ef          	jal	ra,65c <print_hex>
    1c10:	fe842783          	lw	a5,-24(s0)
    1c14:	0007879b          	sext.w	a5,a5
    1c18:	02078263          	beqz	a5,1c3c <print_int2inst+0x2b0>
    1c1c:	fe842783          	lw	a5,-24(s0)
    1c20:	0007871b          	sext.w	a4,a5
    1c24:	00200793          	li	a5,2
    1c28:	00f70a63          	beq	a4,a5,1c3c <print_int2inst+0x2b0>
    1c2c:	fe842783          	lw	a5,-24(s0)
    1c30:	0007871b          	sext.w	a4,a5
    1c34:	00300793          	li	a5,3
    1c38:	02f71663          	bne	a4,a5,1c64 <print_int2inst+0x2d8>
    1c3c:	000037b7          	lui	a5,0x3
    1c40:	8c078513          	addi	a0,a5,-1856 # 28c0 <INST_CONFIG+0x630>
    1c44:	f34fe0ef          	jal	ra,378 <print>
    1c48:	fdc42783          	lw	a5,-36(s0)
    1c4c:	0147d79b          	srliw	a5,a5,0x14
    1c50:	0007879b          	sext.w	a5,a5
    1c54:	01f7f793          	andi	a5,a5,31
    1c58:	0007879b          	sext.w	a5,a5
    1c5c:	00078513          	mv	a0,a5
    1c60:	9fdfe0ef          	jal	ra,65c <print_hex>
    1c64:	fe042223          	sw	zero,-28(s0)
    1c68:	fe842783          	lw	a5,-24(s0)
    1c6c:	0007879b          	sext.w	a5,a5
    1c70:	1e078863          	beqz	a5,1e60 <print_int2inst+0x4d4>
    1c74:	fe842783          	lw	a5,-24(s0)
    1c78:	0007871b          	sext.w	a4,a5
    1c7c:	00600793          	li	a5,6
    1c80:	1ef70063          	beq	a4,a5,1e60 <print_int2inst+0x4d4>
    1c84:	fe842783          	lw	a5,-24(s0)
    1c88:	0007871b          	sext.w	a4,a5
    1c8c:	00500793          	li	a5,5
    1c90:	1ae7ec63          	bltu	a5,a4,1e48 <print_int2inst+0x4bc>
    1c94:	fe846783          	lwu	a5,-24(s0)
    1c98:	00279713          	slli	a4,a5,0x2
    1c9c:	000037b7          	lui	a5,0x3
    1ca0:	8c478793          	addi	a5,a5,-1852 # 28c4 <INST_CONFIG+0x634>
    1ca4:	00f707b3          	add	a5,a4,a5
    1ca8:	0007a783          	lw	a5,0(a5)
    1cac:	00078067          	jr	a5
    1cb0:	fdc42783          	lw	a5,-36(s0)
    1cb4:	0147d79b          	srliw	a5,a5,0x14
    1cb8:	fef42223          	sw	a5,-28(s0)
    1cbc:	18c0006f          	j	1e48 <print_int2inst+0x4bc>
    1cc0:	fdc42783          	lw	a5,-36(s0)
    1cc4:	0077d79b          	srliw	a5,a5,0x7
    1cc8:	0007879b          	sext.w	a5,a5
    1ccc:	01f7f793          	andi	a5,a5,31
    1cd0:	0007871b          	sext.w	a4,a5
    1cd4:	fdc42783          	lw	a5,-36(s0)
    1cd8:	0197d79b          	srliw	a5,a5,0x19
    1cdc:	0007879b          	sext.w	a5,a5
    1ce0:	0057979b          	slliw	a5,a5,0x5
    1ce4:	0007879b          	sext.w	a5,a5
    1ce8:	00f767b3          	or	a5,a4,a5
    1cec:	fef42223          	sw	a5,-28(s0)
    1cf0:	1580006f          	j	1e48 <print_int2inst+0x4bc>
    1cf4:	fdc42783          	lw	a5,-36(s0)
    1cf8:	0077d79b          	srliw	a5,a5,0x7
    1cfc:	0007879b          	sext.w	a5,a5
    1d00:	00b7979b          	slliw	a5,a5,0xb
    1d04:	0007879b          	sext.w	a5,a5
    1d08:	00078713          	mv	a4,a5
    1d0c:	000017b7          	lui	a5,0x1
    1d10:	80078793          	addi	a5,a5,-2048 # 800 <print_help+0x44>
    1d14:	00f777b3          	and	a5,a4,a5
    1d18:	0007871b          	sext.w	a4,a5
    1d1c:	fe442783          	lw	a5,-28(s0)
    1d20:	00e7e7b3          	or	a5,a5,a4
    1d24:	fef42223          	sw	a5,-28(s0)
    1d28:	fdc42783          	lw	a5,-36(s0)
    1d2c:	0087d79b          	srliw	a5,a5,0x8
    1d30:	0007879b          	sext.w	a5,a5
    1d34:	0017979b          	slliw	a5,a5,0x1
    1d38:	0007879b          	sext.w	a5,a5
    1d3c:	01e7f793          	andi	a5,a5,30
    1d40:	0007871b          	sext.w	a4,a5
    1d44:	fe442783          	lw	a5,-28(s0)
    1d48:	00e7e7b3          	or	a5,a5,a4
    1d4c:	fef42223          	sw	a5,-28(s0)
    1d50:	fdc42783          	lw	a5,-36(s0)
    1d54:	0197d79b          	srliw	a5,a5,0x19
    1d58:	0007879b          	sext.w	a5,a5
    1d5c:	0057979b          	slliw	a5,a5,0x5
    1d60:	0007879b          	sext.w	a5,a5
    1d64:	7e07f793          	andi	a5,a5,2016
    1d68:	0007871b          	sext.w	a4,a5
    1d6c:	fe442783          	lw	a5,-28(s0)
    1d70:	00e7e7b3          	or	a5,a5,a4
    1d74:	fef42223          	sw	a5,-28(s0)
    1d78:	fdc42783          	lw	a5,-36(s0)
    1d7c:	01f7d79b          	srliw	a5,a5,0x1f
    1d80:	0007879b          	sext.w	a5,a5
    1d84:	00c7979b          	slliw	a5,a5,0xc
    1d88:	0007871b          	sext.w	a4,a5
    1d8c:	fe442783          	lw	a5,-28(s0)
    1d90:	00e7e7b3          	or	a5,a5,a4
    1d94:	fef42223          	sw	a5,-28(s0)
    1d98:	0b00006f          	j	1e48 <print_int2inst+0x4bc>
    1d9c:	fdc42703          	lw	a4,-36(s0)
    1da0:	fffff7b7          	lui	a5,0xfffff
    1da4:	00f777b3          	and	a5,a4,a5
    1da8:	fef42223          	sw	a5,-28(s0)
    1dac:	09c0006f          	j	1e48 <print_int2inst+0x4bc>
    1db0:	fdc42703          	lw	a4,-36(s0)
    1db4:	000ff7b7          	lui	a5,0xff
    1db8:	00f777b3          	and	a5,a4,a5
    1dbc:	0007871b          	sext.w	a4,a5
    1dc0:	fe442783          	lw	a5,-28(s0)
    1dc4:	00e7e7b3          	or	a5,a5,a4
    1dc8:	fef42223          	sw	a5,-28(s0)
    1dcc:	fdc42783          	lw	a5,-36(s0)
    1dd0:	0147d79b          	srliw	a5,a5,0x14
    1dd4:	0007879b          	sext.w	a5,a5
    1dd8:	00b7979b          	slliw	a5,a5,0xb
    1ddc:	0007879b          	sext.w	a5,a5
    1de0:	00078713          	mv	a4,a5
    1de4:	000017b7          	lui	a5,0x1
    1de8:	80078793          	addi	a5,a5,-2048 # 800 <print_help+0x44>
    1dec:	00f777b3          	and	a5,a4,a5
    1df0:	0007871b          	sext.w	a4,a5
    1df4:	fe442783          	lw	a5,-28(s0)
    1df8:	00e7e7b3          	or	a5,a5,a4
    1dfc:	fef42223          	sw	a5,-28(s0)
    1e00:	fdc42783          	lw	a5,-36(s0)
    1e04:	0157d79b          	srliw	a5,a5,0x15
    1e08:	0007879b          	sext.w	a5,a5
    1e0c:	0017979b          	slliw	a5,a5,0x1
    1e10:	0007879b          	sext.w	a5,a5
    1e14:	7fe7f793          	andi	a5,a5,2046
    1e18:	0007871b          	sext.w	a4,a5
    1e1c:	fe442783          	lw	a5,-28(s0)
    1e20:	00e7e7b3          	or	a5,a5,a4
    1e24:	fef42223          	sw	a5,-28(s0)
    1e28:	fdc42783          	lw	a5,-36(s0)
    1e2c:	01f7d79b          	srliw	a5,a5,0x1f
    1e30:	0007879b          	sext.w	a5,a5
    1e34:	0147979b          	slliw	a5,a5,0x14
    1e38:	0007871b          	sext.w	a4,a5
    1e3c:	fe442783          	lw	a5,-28(s0)
    1e40:	00e7e7b3          	or	a5,a5,a4
    1e44:	fef42223          	sw	a5,-28(s0)
    1e48:	000037b7          	lui	a5,0x3
    1e4c:	8c078513          	addi	a0,a5,-1856 # 28c0 <INST_CONFIG+0x630>
    1e50:	d28fe0ef          	jal	ra,378 <print>
    1e54:	fe442783          	lw	a5,-28(s0)
    1e58:	00078513          	mv	a0,a5
    1e5c:	801fe0ef          	jal	ra,65c <print_hex>
    1e60:	02813083          	ld	ra,40(sp)
    1e64:	02013403          	ld	s0,32(sp)
    1e68:	03010113          	addi	sp,sp,48
    1e6c:	00008067          	ret

0000000000001e70 <timelim_exe>:
    1e70:	fe010113          	addi	sp,sp,-32
    1e74:	00113c23          	sd	ra,24(sp)
    1e78:	00813823          	sd	s0,16(sp)
    1e7c:	02010413          	addi	s0,sp,32
    1e80:	86018513          	addi	a0,gp,-1952 # 29e0 <buffer>
    1e84:	ed1fe0ef          	jal	ra,d54 <next_word>
    1e88:	fea43423          	sd	a0,-24(s0)
    1e8c:	fe843783          	ld	a5,-24(s0)
    1e90:	0007c783          	lbu	a5,0(a5)
    1e94:	00078a63          	beqz	a5,1ea8 <timelim_exe+0x38>
    1e98:	fe843783          	ld	a5,-24(s0)
    1e9c:	00178793          	addi	a5,a5,1
    1ea0:	0007c783          	lbu	a5,0(a5)
    1ea4:	02079863          	bnez	a5,1ed4 <timelim_exe+0x64>
    1ea8:	000037b7          	lui	a5,0x3
    1eac:	86078513          	addi	a0,a5,-1952 # 2860 <INST_CONFIG+0x5d0>
    1eb0:	cc8fe0ef          	jal	ra,378 <print>
    1eb4:	000037b7          	lui	a5,0x3
    1eb8:	98c7a783          	lw	a5,-1652(a5) # 298c <time_lim>
    1ebc:	00078513          	mv	a0,a5
    1ec0:	f9cfe0ef          	jal	ra,65c <print_hex>
    1ec4:	000037b7          	lui	a5,0x3
    1ec8:	85878513          	addi	a0,a5,-1960 # 2858 <INST_CONFIG+0x5c8>
    1ecc:	cacfe0ef          	jal	ra,378 <print>
    1ed0:	01c0006f          	j	1eec <timelim_exe+0x7c>
    1ed4:	fe843503          	ld	a0,-24(s0)
    1ed8:	841fe0ef          	jal	ra,718 <str2hex>
    1edc:	00050793          	mv	a5,a0
    1ee0:	0007871b          	sext.w	a4,a5
    1ee4:	000037b7          	lui	a5,0x3
    1ee8:	98e7a623          	sw	a4,-1652(a5) # 298c <time_lim>
    1eec:	00000013          	nop
    1ef0:	01813083          	ld	ra,24(sp)
    1ef4:	01013403          	ld	s0,16(sp)
    1ef8:	02010113          	addi	sp,sp,32
    1efc:	00008067          	ret

0000000000001f00 <disas_exe>:
    1f00:	fd010113          	addi	sp,sp,-48
    1f04:	02113423          	sd	ra,40(sp)
    1f08:	02813023          	sd	s0,32(sp)
    1f0c:	03010413          	addi	s0,sp,48
    1f10:	86018513          	addi	a0,gp,-1952 # 29e0 <buffer>
    1f14:	e41fe0ef          	jal	ra,d54 <next_word>
    1f18:	fea43023          	sd	a0,-32(s0)
    1f1c:	fe043783          	ld	a5,-32(s0)
    1f20:	0007c783          	lbu	a5,0(a5)
    1f24:	0c078463          	beqz	a5,1fec <disas_exe+0xec>
    1f28:	fe043783          	ld	a5,-32(s0)
    1f2c:	00178793          	addi	a5,a5,1
    1f30:	0007c783          	lbu	a5,0(a5)
    1f34:	0a078c63          	beqz	a5,1fec <disas_exe+0xec>
    1f38:	fe043503          	ld	a0,-32(s0)
    1f3c:	fdcfe0ef          	jal	ra,718 <str2hex>
    1f40:	00050793          	mv	a5,a0
    1f44:	fef42623          	sw	a5,-20(s0)
    1f48:	fe043503          	ld	a0,-32(s0)
    1f4c:	e09fe0ef          	jal	ra,d54 <next_word>
    1f50:	fea43023          	sd	a0,-32(s0)
    1f54:	fe043783          	ld	a5,-32(s0)
    1f58:	0007c783          	lbu	a5,0(a5)
    1f5c:	08078c63          	beqz	a5,1ff4 <disas_exe+0xf4>
    1f60:	fe043783          	ld	a5,-32(s0)
    1f64:	00178793          	addi	a5,a5,1
    1f68:	0007c783          	lbu	a5,0(a5)
    1f6c:	08078463          	beqz	a5,1ff4 <disas_exe+0xf4>
    1f70:	fe043503          	ld	a0,-32(s0)
    1f74:	fa4fe0ef          	jal	ra,718 <str2hex>
    1f78:	00050793          	mv	a5,a0
    1f7c:	fef42423          	sw	a5,-24(s0)
    1f80:	0580006f          	j	1fd8 <disas_exe+0xd8>
    1f84:	000037b7          	lui	a5,0x3
    1f88:	88878513          	addi	a0,a5,-1912 # 2888 <INST_CONFIG+0x5f8>
    1f8c:	becfe0ef          	jal	ra,378 <print>
    1f90:	fec42783          	lw	a5,-20(s0)
    1f94:	00078513          	mv	a0,a5
    1f98:	ec4fe0ef          	jal	ra,65c <print_hex>
    1f9c:	000037b7          	lui	a5,0x3
    1fa0:	89078513          	addi	a0,a5,-1904 # 2890 <INST_CONFIG+0x600>
    1fa4:	bd4fe0ef          	jal	ra,378 <print>
    1fa8:	fec46783          	lwu	a5,-20(s0)
    1fac:	0007a783          	lw	a5,0(a5)
    1fb0:	fcf42e23          	sw	a5,-36(s0)
    1fb4:	fdc42783          	lw	a5,-36(s0)
    1fb8:	00078513          	mv	a0,a5
    1fbc:	9d1ff0ef          	jal	ra,198c <print_int2inst>
    1fc0:	000027b7          	lui	a5,0x2
    1fc4:	6f878513          	addi	a0,a5,1784 # 26f8 <INST_CONFIG+0x468>
    1fc8:	bb0fe0ef          	jal	ra,378 <print>
    1fcc:	fec42783          	lw	a5,-20(s0)
    1fd0:	0047879b          	addiw	a5,a5,4
    1fd4:	fef42623          	sw	a5,-20(s0)
    1fd8:	fe842783          	lw	a5,-24(s0)
    1fdc:	fff7871b          	addiw	a4,a5,-1
    1fe0:	fee42423          	sw	a4,-24(s0)
    1fe4:	fa0790e3          	bnez	a5,1f84 <disas_exe+0x84>
    1fe8:	0100006f          	j	1ff8 <disas_exe+0xf8>
    1fec:	00000013          	nop
    1ff0:	0080006f          	j	1ff8 <disas_exe+0xf8>
    1ff4:	00000013          	nop
    1ff8:	02813083          	ld	ra,40(sp)
    1ffc:	02013403          	ld	s0,32(sp)
    2000:	03010113          	addi	sp,sp,48
    2004:	00008067          	ret

0000000000002008 <start>:
    2008:	ff010113          	addi	sp,sp,-16
    200c:	00113423          	sd	ra,8(sp)
    2010:	00813023          	sd	s0,0(sp)
    2014:	01010413          	addi	s0,sp,16
    2018:	000037b7          	lui	a5,0x3
    201c:	8e078513          	addi	a0,a5,-1824 # 28e0 <INST_CONFIG+0x650>
    2020:	b58fe0ef          	jal	ra,378 <print>
    2024:	000037b7          	lui	a5,0x3
    2028:	90078513          	addi	a0,a5,-1792 # 2900 <INST_CONFIG+0x670>
    202c:	b4cfe0ef          	jal	ra,378 <print>
    2030:	000037b7          	lui	a5,0x3
    2034:	91078513          	addi	a0,a5,-1776 # 2910 <INST_CONFIG+0x680>
    2038:	b40fe0ef          	jal	ra,378 <print>
    203c:	000037b7          	lui	a5,0x3
    2040:	92078513          	addi	a0,a5,-1760 # 2920 <INST_CONFIG+0x690>
    2044:	b34fe0ef          	jal	ra,378 <print>
    2048:	000037b7          	lui	a5,0x3
    204c:	93078513          	addi	a0,a5,-1744 # 2930 <INST_CONFIG+0x6a0>
    2050:	b28fe0ef          	jal	ra,378 <print>
    2054:	000037b7          	lui	a5,0x3
    2058:	93878513          	addi	a0,a5,-1736 # 2938 <INST_CONFIG+0x6a8>
    205c:	b1cfe0ef          	jal	ra,378 <print>
    2060:	000037b7          	lui	a5,0x3
    2064:	93078513          	addi	a0,a5,-1744 # 2930 <INST_CONFIG+0x6a0>
    2068:	b10fe0ef          	jal	ra,378 <print>
    206c:	000037b7          	lui	a5,0x3
    2070:	95078513          	addi	a0,a5,-1712 # 2950 <INST_CONFIG+0x6c0>
    2074:	b04fe0ef          	jal	ra,378 <print>
    2078:	000037b7          	lui	a5,0x3
    207c:	93078513          	addi	a0,a5,-1744 # 2930 <INST_CONFIG+0x6a0>
    2080:	af8fe0ef          	jal	ra,378 <print>
    2084:	000037b7          	lui	a5,0x3
    2088:	96078513          	addi	a0,a5,-1696 # 2960 <INST_CONFIG+0x6d0>
    208c:	aecfe0ef          	jal	ra,378 <print>
    2090:	000037b7          	lui	a5,0x3
    2094:	93078513          	addi	a0,a5,-1744 # 2930 <INST_CONFIG+0x6a0>
    2098:	ae0fe0ef          	jal	ra,378 <print>
    209c:	be1fe0ef          	jal	ra,c7c <init>
    20a0:	000037b7          	lui	a5,0x3
    20a4:	97078513          	addi	a0,a5,-1680 # 2970 <INST_CONFIG+0x6e0>
    20a8:	ad0fe0ef          	jal	ra,378 <print>
    20ac:	becfe0ef          	jal	ra,498 <get_line>
    20b0:	8601c783          	lbu	a5,-1952(gp) # 29e0 <buffer>
    20b4:	0007879b          	sext.w	a5,a5
    20b8:	00078693          	mv	a3,a5
    20bc:	04900713          	li	a4,73
    20c0:	08e68663          	beq	a3,a4,214c <start+0x144>
    20c4:	00078693          	mv	a3,a5
    20c8:	04900713          	li	a4,73
    20cc:	02d74263          	blt	a4,a3,20f0 <start+0xe8>
    20d0:	00078693          	mv	a3,a5
    20d4:	04400713          	li	a4,68
    20d8:	08e68263          	beq	a3,a4,215c <start+0x154>
    20dc:	00078693          	mv	a3,a5
    20e0:	04500713          	li	a4,69
    20e4:	06e68063          	beq	a3,a4,2144 <start+0x13c>
    20e8:	08078663          	beqz	a5,2174 <start+0x16c>
    20ec:	0800006f          	j	216c <start+0x164>
    20f0:	00078693          	mv	a3,a5
    20f4:	05200713          	li	a4,82
    20f8:	04e68263          	beq	a3,a4,213c <start+0x134>
    20fc:	00078693          	mv	a3,a5
    2100:	05200713          	li	a4,82
    2104:	00d74a63          	blt	a4,a3,2118 <start+0x110>
    2108:	00078713          	mv	a4,a5
    210c:	04a00793          	li	a5,74
    2110:	02f70263          	beq	a4,a5,2134 <start+0x12c>
    2114:	0580006f          	j	216c <start+0x164>
    2118:	00078693          	mv	a3,a5
    211c:	05400713          	li	a4,84
    2120:	04e68263          	beq	a3,a4,2164 <start+0x15c>
    2124:	00078713          	mv	a4,a5
    2128:	05600793          	li	a5,86
    212c:	02f70463          	beq	a4,a5,2154 <start+0x14c>
    2130:	03c0006f          	j	216c <start+0x164>
    2134:	ca5fe0ef          	jal	ra,dd8 <jump_exe>
    2138:	0400006f          	j	2178 <start+0x170>
    213c:	d79fe0ef          	jal	ra,eb4 <reg_exe>
    2140:	0380006f          	j	2178 <start+0x170>
    2144:	e05fe0ef          	jal	ra,f48 <edit_exe>
    2148:	0300006f          	j	2178 <start+0x170>
    214c:	e70ff0ef          	jal	ra,17bc <inst_exe>
    2150:	0280006f          	j	2178 <start+0x170>
    2154:	f30ff0ef          	jal	ra,1884 <view_exe>
    2158:	0200006f          	j	2178 <start+0x170>
    215c:	da5ff0ef          	jal	ra,1f00 <disas_exe>
    2160:	0180006f          	j	2178 <start+0x170>
    2164:	d0dff0ef          	jal	ra,1e70 <timelim_exe>
    2168:	0100006f          	j	2178 <start+0x170>
    216c:	e50fe0ef          	jal	ra,7bc <print_help>
    2170:	f31ff06f          	j	20a0 <start+0x98>
    2174:	00000013          	nop
    2178:	f29ff06f          	j	20a0 <start+0x98>

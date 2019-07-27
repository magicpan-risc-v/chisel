
out.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <_start>:
       0:	00000013          	nop
       4:	00018193          	mv	gp,gp
       8:	00030137          	lui	sp,0x30
       c:	0f10106f          	j	18fc <start>

0000000000000010 <_entry>:
      10:	f8410113          	addi	sp,sp,-124 # 2ff84 <__global_pointer$+0x2d754>
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
      94:	00002617          	auipc	a2,0x2
      98:	f9c60613          	addi	a2,a2,-100 # 2030 <__DATA_BEGIN__>
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
     110:	00000f13          	li	t5,0
     114:	00000f93          	li	t6,0
     118:	000080e7          	jalr	ra

000000000000011c <_exit>:
     11c:	00002097          	auipc	ra,0x2
     120:	f5c08093          	addi	ra,ra,-164 # 2078 <regs>
     124:	07f0ae23          	sw	t6,124(ra)
     128:	07e0ac23          	sw	t5,120(ra)
     12c:	07d0aa23          	sw	t4,116(ra)
     130:	07c0a823          	sw	t3,112(ra)
     134:	07b0a623          	sw	s11,108(ra)
     138:	07a0a423          	sw	s10,104(ra)
     13c:	0790a223          	sw	s9,100(ra)
     140:	0780a023          	sw	s8,96(ra)
     144:	0570ae23          	sw	s7,92(ra)
     148:	0560ac23          	sw	s6,88(ra)
     14c:	0550aa23          	sw	s5,84(ra)
     150:	0540a823          	sw	s4,80(ra)
     154:	0530a623          	sw	s3,76(ra)
     158:	0520a423          	sw	s2,72(ra)
     15c:	0510a223          	sw	a7,68(ra)
     160:	0500a023          	sw	a6,64(ra)
     164:	02f0ae23          	sw	a5,60(ra)
     168:	02e0ac23          	sw	a4,56(ra)
     16c:	02d0aa23          	sw	a3,52(ra)
     170:	02c0a823          	sw	a2,48(ra)
     174:	02b0a623          	sw	a1,44(ra)
     178:	02a0a423          	sw	a0,40(ra)
     17c:	0290a223          	sw	s1,36(ra)
     180:	0280a023          	sw	s0,32(ra)
     184:	0070ae23          	sw	t2,28(ra)
     188:	0060ac23          	sw	t1,24(ra)
     18c:	0050aa23          	sw	t0,20(ra)
     190:	0040a823          	sw	tp,16(ra)
     194:	0030a623          	sw	gp,12(ra)
     198:	0020a423          	sw	sp,8(ra)
     19c:	0010a223          	sw	ra,4(ra)
     1a0:	0000a023          	sw	zero,0(ra)
     1a4:	00002117          	auipc	sp,0x2
     1a8:	e8c10113          	addi	sp,sp,-372 # 2030 <__DATA_BEGIN__>
     1ac:	00012103          	lw	sp,0(sp)
     1b0:	00012083          	lw	ra,0(sp)
     1b4:	00412103          	lw	sp,4(sp)
     1b8:	00812183          	lw	gp,8(sp)
     1bc:	00c12203          	lw	tp,12(sp)
     1c0:	01012283          	lw	t0,16(sp)
     1c4:	01412303          	lw	t1,20(sp)
     1c8:	01812383          	lw	t2,24(sp)
     1cc:	01c12403          	lw	s0,28(sp)
     1d0:	02012483          	lw	s1,32(sp)
     1d4:	02412503          	lw	a0,36(sp)
     1d8:	02812583          	lw	a1,40(sp)
     1dc:	02c12603          	lw	a2,44(sp)
     1e0:	03012683          	lw	a3,48(sp)
     1e4:	03412703          	lw	a4,52(sp)
     1e8:	03812783          	lw	a5,56(sp)
     1ec:	03c12803          	lw	a6,60(sp)
     1f0:	04012883          	lw	a7,64(sp)
     1f4:	04412903          	lw	s2,68(sp)
     1f8:	04812983          	lw	s3,72(sp)
     1fc:	04c12a03          	lw	s4,76(sp)
     200:	05012a83          	lw	s5,80(sp)
     204:	05412b03          	lw	s6,84(sp)
     208:	05812b83          	lw	s7,88(sp)
     20c:	05c12c03          	lw	s8,92(sp)
     210:	06012c83          	lw	s9,96(sp)
     214:	06412d03          	lw	s10,100(sp)
     218:	06812d83          	lw	s11,104(sp)
     21c:	06c12e03          	lw	t3,108(sp)
     220:	07012e83          	lw	t4,112(sp)
     224:	07412f03          	lw	t5,116(sp)
     228:	07812f83          	lw	t6,120(sp)
     22c:	07c10113          	addi	sp,sp,124
     230:	00008067          	ret

0000000000000234 <print>:
     234:	fd010113          	addi	sp,sp,-48
     238:	02813423          	sd	s0,40(sp)
     23c:	03010413          	addi	s0,sp,48
     240:	fca43c23          	sd	a0,-40(s0)
     244:	fe042623          	sw	zero,-20(s0)
     248:	02c0006f          	j	274 <print+0x40>
     24c:	fec42783          	lw	a5,-20(s0)
     250:	fd843703          	ld	a4,-40(s0)
     254:	00f70733          	add	a4,a4,a5
     258:	008007b7          	lui	a5,0x800
     25c:	ff878793          	addi	a5,a5,-8 # 7ffff8 <__global_pointer$+0x7fd7c8>
     260:	00074703          	lbu	a4,0(a4)
     264:	00e78023          	sb	a4,0(a5)
     268:	fec42783          	lw	a5,-20(s0)
     26c:	0017879b          	addiw	a5,a5,1
     270:	fef42623          	sw	a5,-20(s0)
     274:	fec42783          	lw	a5,-20(s0)
     278:	fd843703          	ld	a4,-40(s0)
     27c:	00f707b3          	add	a5,a4,a5
     280:	0007c783          	lbu	a5,0(a5)
     284:	fc0794e3          	bnez	a5,24c <print+0x18>
     288:	00000013          	nop
     28c:	02813403          	ld	s0,40(sp)
     290:	03010113          	addi	sp,sp,48
     294:	00008067          	ret

0000000000000298 <strcmp>:
     298:	fd010113          	addi	sp,sp,-48
     29c:	02813423          	sd	s0,40(sp)
     2a0:	03010413          	addi	s0,sp,48
     2a4:	fca43c23          	sd	a0,-40(s0)
     2a8:	fcb43823          	sd	a1,-48(s0)
     2ac:	fe042623          	sw	zero,-20(s0)
     2b0:	0100006f          	j	2c0 <strcmp+0x28>
     2b4:	fec42783          	lw	a5,-20(s0)
     2b8:	0017879b          	addiw	a5,a5,1
     2bc:	fef42623          	sw	a5,-20(s0)
     2c0:	fec42783          	lw	a5,-20(s0)
     2c4:	fd843703          	ld	a4,-40(s0)
     2c8:	00f707b3          	add	a5,a4,a5
     2cc:	0007c783          	lbu	a5,0(a5)
     2d0:	04078063          	beqz	a5,310 <strcmp+0x78>
     2d4:	fec42783          	lw	a5,-20(s0)
     2d8:	fd043703          	ld	a4,-48(s0)
     2dc:	00f707b3          	add	a5,a4,a5
     2e0:	0007c783          	lbu	a5,0(a5)
     2e4:	02078663          	beqz	a5,310 <strcmp+0x78>
     2e8:	fec42783          	lw	a5,-20(s0)
     2ec:	fd843703          	ld	a4,-40(s0)
     2f0:	00f707b3          	add	a5,a4,a5
     2f4:	0007c683          	lbu	a3,0(a5)
     2f8:	fec42783          	lw	a5,-20(s0)
     2fc:	fd043703          	ld	a4,-48(s0)
     300:	00f707b3          	add	a5,a4,a5
     304:	0007c783          	lbu	a5,0(a5)
     308:	00068713          	mv	a4,a3
     30c:	faf704e3          	beq	a4,a5,2b4 <strcmp+0x1c>
     310:	fec42783          	lw	a5,-20(s0)
     314:	fd843703          	ld	a4,-40(s0)
     318:	00f707b3          	add	a5,a4,a5
     31c:	0007c783          	lbu	a5,0(a5)
     320:	02078063          	beqz	a5,340 <strcmp+0xa8>
     324:	fec42783          	lw	a5,-20(s0)
     328:	fd043703          	ld	a4,-48(s0)
     32c:	00f707b3          	add	a5,a4,a5
     330:	0007c783          	lbu	a5,0(a5)
     334:	00078663          	beqz	a5,340 <strcmp+0xa8>
     338:	00100793          	li	a5,1
     33c:	0080006f          	j	344 <strcmp+0xac>
     340:	00000793          	li	a5,0
     344:	00078513          	mv	a0,a5
     348:	02813403          	ld	s0,40(sp)
     34c:	03010113          	addi	sp,sp,48
     350:	00008067          	ret

0000000000000354 <get_line>:
     354:	fe010113          	addi	sp,sp,-32
     358:	00813c23          	sd	s0,24(sp)
     35c:	02010413          	addi	s0,sp,32
     360:	fff00793          	li	a5,-1
     364:	fef42623          	sw	a5,-20(s0)
     368:	fec42783          	lw	a5,-20(s0)
     36c:	0017879b          	addiw	a5,a5,1
     370:	fef42623          	sw	a5,-20(s0)
     374:	008007b7          	lui	a5,0x800
     378:	ff878793          	addi	a5,a5,-8 # 7ffff8 <__global_pointer$+0x7fd7c8>
     37c:	0007c703          	lbu	a4,0(a5)
     380:	000027b7          	lui	a5,0x2
     384:	fec42683          	lw	a3,-20(s0)
     388:	03878793          	addi	a5,a5,56 # 2038 <buffer>
     38c:	00f687b3          	add	a5,a3,a5
     390:	00e78023          	sb	a4,0(a5)
     394:	000027b7          	lui	a5,0x2
     398:	fec42703          	lw	a4,-20(s0)
     39c:	03878793          	addi	a5,a5,56 # 2038 <buffer>
     3a0:	00f707b3          	add	a5,a4,a5
     3a4:	0007c783          	lbu	a5,0(a5)
     3a8:	00078713          	mv	a4,a5
     3ac:	00a00793          	li	a5,10
     3b0:	faf71ce3          	bne	a4,a5,368 <get_line+0x14>
     3b4:	fec42783          	lw	a5,-20(s0)
     3b8:	0007879b          	sext.w	a5,a5
     3bc:	02f05c63          	blez	a5,3f4 <get_line+0xa0>
     3c0:	fec42783          	lw	a5,-20(s0)
     3c4:	fff7879b          	addiw	a5,a5,-1
     3c8:	0007871b          	sext.w	a4,a5
     3cc:	000027b7          	lui	a5,0x2
     3d0:	03878793          	addi	a5,a5,56 # 2038 <buffer>
     3d4:	00f707b3          	add	a5,a4,a5
     3d8:	0007c783          	lbu	a5,0(a5)
     3dc:	00078713          	mv	a4,a5
     3e0:	00d00793          	li	a5,13
     3e4:	00f71863          	bne	a4,a5,3f4 <get_line+0xa0>
     3e8:	fec42783          	lw	a5,-20(s0)
     3ec:	fff7879b          	addiw	a5,a5,-1
     3f0:	fef42623          	sw	a5,-20(s0)
     3f4:	000027b7          	lui	a5,0x2
     3f8:	fec42703          	lw	a4,-20(s0)
     3fc:	03878793          	addi	a5,a5,56 # 2038 <buffer>
     400:	00f707b3          	add	a5,a4,a5
     404:	00078023          	sb	zero,0(a5)
     408:	00000013          	nop
     40c:	01813403          	ld	s0,24(sp)
     410:	02010113          	addi	sp,sp,32
     414:	00008067          	ret

0000000000000418 <hex2str>:
     418:	fd010113          	addi	sp,sp,-48
     41c:	02813423          	sd	s0,40(sp)
     420:	03010413          	addi	s0,sp,48
     424:	00050793          	mv	a5,a0
     428:	fcb43823          	sd	a1,-48(s0)
     42c:	fcf42e23          	sw	a5,-36(s0)
     430:	fd043783          	ld	a5,-48(s0)
     434:	03000713          	li	a4,48
     438:	00e78023          	sb	a4,0(a5)
     43c:	fd043783          	ld	a5,-48(s0)
     440:	00178793          	addi	a5,a5,1
     444:	07800713          	li	a4,120
     448:	00e78023          	sb	a4,0(a5)
     44c:	fe042623          	sw	zero,-20(s0)
     450:	0740006f          	j	4c4 <hex2str+0xac>
     454:	00700713          	li	a4,7
     458:	fec42783          	lw	a5,-20(s0)
     45c:	40f707bb          	subw	a5,a4,a5
     460:	0007879b          	sext.w	a5,a5
     464:	0027979b          	slliw	a5,a5,0x2
     468:	0007879b          	sext.w	a5,a5
     46c:	00078713          	mv	a4,a5
     470:	fdc42783          	lw	a5,-36(s0)
     474:	00e7d7bb          	srlw	a5,a5,a4
     478:	0007879b          	sext.w	a5,a5
     47c:	00f7f793          	andi	a5,a5,15
     480:	0007869b          	sext.w	a3,a5
     484:	fec42783          	lw	a5,-20(s0)
     488:	0027879b          	addiw	a5,a5,2
     48c:	0007879b          	sext.w	a5,a5
     490:	00078713          	mv	a4,a5
     494:	fd043783          	ld	a5,-48(s0)
     498:	00e787b3          	add	a5,a5,a4
     49c:	00002737          	lui	a4,0x2
     4a0:	02069693          	slli	a3,a3,0x20
     4a4:	0206d693          	srli	a3,a3,0x20
     4a8:	dc070713          	addi	a4,a4,-576 # 1dc0 <INST_CONFIG+0x260>
     4ac:	00e68733          	add	a4,a3,a4
     4b0:	00074703          	lbu	a4,0(a4)
     4b4:	00e78023          	sb	a4,0(a5)
     4b8:	fec42783          	lw	a5,-20(s0)
     4bc:	0017879b          	addiw	a5,a5,1
     4c0:	fef42623          	sw	a5,-20(s0)
     4c4:	fec42783          	lw	a5,-20(s0)
     4c8:	0007871b          	sext.w	a4,a5
     4cc:	00700793          	li	a5,7
     4d0:	f8e7d2e3          	bge	a5,a4,454 <hex2str+0x3c>
     4d4:	fd043783          	ld	a5,-48(s0)
     4d8:	00a78793          	addi	a5,a5,10
     4dc:	00078023          	sb	zero,0(a5)
     4e0:	00000013          	nop
     4e4:	02813403          	ld	s0,40(sp)
     4e8:	03010113          	addi	sp,sp,48
     4ec:	00008067          	ret

00000000000004f0 <print_hex>:
     4f0:	fd010113          	addi	sp,sp,-48
     4f4:	02113423          	sd	ra,40(sp)
     4f8:	02813023          	sd	s0,32(sp)
     4fc:	03010413          	addi	s0,sp,48
     500:	00050793          	mv	a5,a0
     504:	fcf42e23          	sw	a5,-36(s0)
     508:	fe040713          	addi	a4,s0,-32
     50c:	fdc42783          	lw	a5,-36(s0)
     510:	00070593          	mv	a1,a4
     514:	00078513          	mv	a0,a5
     518:	f01ff0ef          	jal	ra,418 <hex2str>
     51c:	fe040793          	addi	a5,s0,-32
     520:	00078513          	mv	a0,a5
     524:	d11ff0ef          	jal	ra,234 <print>
     528:	00000013          	nop
     52c:	02813083          	ld	ra,40(sp)
     530:	02013403          	ld	s0,32(sp)
     534:	03010113          	addi	sp,sp,48
     538:	00008067          	ret

000000000000053c <hexchar2int>:
     53c:	fe010113          	addi	sp,sp,-32
     540:	00813c23          	sd	s0,24(sp)
     544:	02010413          	addi	s0,sp,32
     548:	00050793          	mv	a5,a0
     54c:	fef407a3          	sb	a5,-17(s0)
     550:	fef44783          	lbu	a5,-17(s0)
     554:	0ff7f713          	andi	a4,a5,255
     558:	02f00793          	li	a5,47
     55c:	02e7f663          	bgeu	a5,a4,588 <hexchar2int+0x4c>
     560:	fef44783          	lbu	a5,-17(s0)
     564:	0ff7f713          	andi	a4,a5,255
     568:	03900793          	li	a5,57
     56c:	00e7ee63          	bltu	a5,a4,588 <hexchar2int+0x4c>
     570:	fef44783          	lbu	a5,-17(s0)
     574:	0007879b          	sext.w	a5,a5
     578:	fd07879b          	addiw	a5,a5,-48
     57c:	0007879b          	sext.w	a5,a5
     580:	0007879b          	sext.w	a5,a5
     584:	0180006f          	j	59c <hexchar2int+0x60>
     588:	fef44783          	lbu	a5,-17(s0)
     58c:	0007879b          	sext.w	a5,a5
     590:	fa97879b          	addiw	a5,a5,-87
     594:	0007879b          	sext.w	a5,a5
     598:	0007879b          	sext.w	a5,a5
     59c:	00078513          	mv	a0,a5
     5a0:	01813403          	ld	s0,24(sp)
     5a4:	02010113          	addi	sp,sp,32
     5a8:	00008067          	ret

00000000000005ac <str2hex>:
     5ac:	fc010113          	addi	sp,sp,-64
     5b0:	02113c23          	sd	ra,56(sp)
     5b4:	02813823          	sd	s0,48(sp)
     5b8:	02913423          	sd	s1,40(sp)
     5bc:	04010413          	addi	s0,sp,64
     5c0:	fca43423          	sd	a0,-56(s0)
     5c4:	fc843783          	ld	a5,-56(s0)
     5c8:	00278793          	addi	a5,a5,2
     5cc:	fcf43423          	sd	a5,-56(s0)
     5d0:	fc042e23          	sw	zero,-36(s0)
     5d4:	0400006f          	j	614 <str2hex+0x68>
     5d8:	fdc42783          	lw	a5,-36(s0)
     5dc:	0047979b          	slliw	a5,a5,0x4
     5e0:	0007849b          	sext.w	s1,a5
     5e4:	fc843783          	ld	a5,-56(s0)
     5e8:	0007c783          	lbu	a5,0(a5)
     5ec:	00078513          	mv	a0,a5
     5f0:	f4dff0ef          	jal	ra,53c <hexchar2int>
     5f4:	00050793          	mv	a5,a0
     5f8:	0007879b          	sext.w	a5,a5
     5fc:	00048713          	mv	a4,s1
     600:	00f767b3          	or	a5,a4,a5
     604:	fcf42e23          	sw	a5,-36(s0)
     608:	fc843783          	ld	a5,-56(s0)
     60c:	00178793          	addi	a5,a5,1
     610:	fcf43423          	sd	a5,-56(s0)
     614:	fc843783          	ld	a5,-56(s0)
     618:	0007c783          	lbu	a5,0(a5)
     61c:	00078c63          	beqz	a5,634 <str2hex+0x88>
     620:	fc843783          	ld	a5,-56(s0)
     624:	0007c783          	lbu	a5,0(a5)
     628:	00078713          	mv	a4,a5
     62c:	02000793          	li	a5,32
     630:	faf714e3          	bne	a4,a5,5d8 <str2hex+0x2c>
     634:	fdc42783          	lw	a5,-36(s0)
     638:	00078513          	mv	a0,a5
     63c:	03813083          	ld	ra,56(sp)
     640:	03013403          	ld	s0,48(sp)
     644:	02813483          	ld	s1,40(sp)
     648:	04010113          	addi	sp,sp,64
     64c:	00008067          	ret

0000000000000650 <print_help>:
     650:	ff010113          	addi	sp,sp,-16
     654:	00113423          	sd	ra,8(sp)
     658:	00813023          	sd	s0,0(sp)
     65c:	01010413          	addi	s0,sp,16
     660:	000027b7          	lui	a5,0x2
     664:	dd878513          	addi	a0,a5,-552 # 1dd8 <INST_CONFIG+0x278>
     668:	bcdff0ef          	jal	ra,234 <print>
     66c:	000027b7          	lui	a5,0x2
     670:	de878513          	addi	a0,a5,-536 # 1de8 <INST_CONFIG+0x288>
     674:	bc1ff0ef          	jal	ra,234 <print>
     678:	000027b7          	lui	a5,0x2
     67c:	e1078513          	addi	a0,a5,-496 # 1e10 <INST_CONFIG+0x2b0>
     680:	bb5ff0ef          	jal	ra,234 <print>
     684:	000027b7          	lui	a5,0x2
     688:	e4878513          	addi	a0,a5,-440 # 1e48 <INST_CONFIG+0x2e8>
     68c:	ba9ff0ef          	jal	ra,234 <print>
     690:	000027b7          	lui	a5,0x2
     694:	e7878513          	addi	a0,a5,-392 # 1e78 <INST_CONFIG+0x318>
     698:	b9dff0ef          	jal	ra,234 <print>
     69c:	000027b7          	lui	a5,0x2
     6a0:	eb078513          	addi	a0,a5,-336 # 1eb0 <INST_CONFIG+0x350>
     6a4:	b91ff0ef          	jal	ra,234 <print>
     6a8:	000027b7          	lui	a5,0x2
     6ac:	ee878513          	addi	a0,a5,-280 # 1ee8 <INST_CONFIG+0x388>
     6b0:	b85ff0ef          	jal	ra,234 <print>
     6b4:	00000013          	nop
     6b8:	00813083          	ld	ra,8(sp)
     6bc:	00013403          	ld	s0,0(sp)
     6c0:	01010113          	addi	sp,sp,16
     6c4:	00008067          	ret

00000000000006c8 <init>:
     6c8:	fe010113          	addi	sp,sp,-32
     6cc:	00813c23          	sd	s0,24(sp)
     6d0:	02010413          	addi	s0,sp,32
     6d4:	fe042623          	sw	zero,-20(s0)
     6d8:	0280006f          	j	700 <init+0x38>
     6dc:	000027b7          	lui	a5,0x2
     6e0:	fec42703          	lw	a4,-20(s0)
     6e4:	00271713          	slli	a4,a4,0x2
     6e8:	07878793          	addi	a5,a5,120 # 2078 <regs>
     6ec:	00f707b3          	add	a5,a4,a5
     6f0:	0007a023          	sw	zero,0(a5)
     6f4:	fec42783          	lw	a5,-20(s0)
     6f8:	0017879b          	addiw	a5,a5,1
     6fc:	fef42623          	sw	a5,-20(s0)
     700:	fec42783          	lw	a5,-20(s0)
     704:	0007871b          	sext.w	a4,a5
     708:	01f00793          	li	a5,31
     70c:	fce7d8e3          	bge	a5,a4,6dc <init+0x14>
     710:	00000013          	nop
     714:	01813403          	ld	s0,24(sp)
     718:	02010113          	addi	sp,sp,32
     71c:	00008067          	ret

0000000000000720 <next_word>:
     720:	fe010113          	addi	sp,sp,-32
     724:	00813c23          	sd	s0,24(sp)
     728:	02010413          	addi	s0,sp,32
     72c:	fea43423          	sd	a0,-24(s0)
     730:	0100006f          	j	740 <next_word+0x20>
     734:	fe843783          	ld	a5,-24(s0)
     738:	00178793          	addi	a5,a5,1
     73c:	fef43423          	sd	a5,-24(s0)
     740:	fe843783          	ld	a5,-24(s0)
     744:	0007c783          	lbu	a5,0(a5)
     748:	02078463          	beqz	a5,770 <next_word+0x50>
     74c:	fe843783          	ld	a5,-24(s0)
     750:	0007c783          	lbu	a5,0(a5)
     754:	00078713          	mv	a4,a5
     758:	02000793          	li	a5,32
     75c:	fcf71ce3          	bne	a4,a5,734 <next_word+0x14>
     760:	0100006f          	j	770 <next_word+0x50>
     764:	fe843783          	ld	a5,-24(s0)
     768:	00178793          	addi	a5,a5,1
     76c:	fef43423          	sd	a5,-24(s0)
     770:	fe843783          	ld	a5,-24(s0)
     774:	0007c783          	lbu	a5,0(a5)
     778:	00078c63          	beqz	a5,790 <next_word+0x70>
     77c:	fe843783          	ld	a5,-24(s0)
     780:	0007c783          	lbu	a5,0(a5)
     784:	00078713          	mv	a4,a5
     788:	02000793          	li	a5,32
     78c:	fcf70ce3          	beq	a4,a5,764 <next_word+0x44>
     790:	fe843783          	ld	a5,-24(s0)
     794:	00078513          	mv	a0,a5
     798:	01813403          	ld	s0,24(sp)
     79c:	02010113          	addi	sp,sp,32
     7a0:	00008067          	ret

00000000000007a4 <jump_exe>:
     7a4:	fe010113          	addi	sp,sp,-32
     7a8:	00113c23          	sd	ra,24(sp)
     7ac:	00813823          	sd	s0,16(sp)
     7b0:	02010413          	addi	s0,sp,32
     7b4:	000027b7          	lui	a5,0x2
     7b8:	03878513          	addi	a0,a5,56 # 2038 <buffer>
     7bc:	f65ff0ef          	jal	ra,720 <next_word>
     7c0:	fea43423          	sd	a0,-24(s0)
     7c4:	fe843783          	ld	a5,-24(s0)
     7c8:	0007c783          	lbu	a5,0(a5)
     7cc:	02078a63          	beqz	a5,800 <jump_exe+0x5c>
     7d0:	fe843783          	ld	a5,-24(s0)
     7d4:	00178793          	addi	a5,a5,1
     7d8:	0007c783          	lbu	a5,0(a5)
     7dc:	02078263          	beqz	a5,800 <jump_exe+0x5c>
     7e0:	fe843503          	ld	a0,-24(s0)
     7e4:	dc9ff0ef          	jal	ra,5ac <str2hex>
     7e8:	00050793          	mv	a5,a0
     7ec:	fef42223          	sw	a5,-28(s0)
     7f0:	fe442783          	lw	a5,-28(s0)
     7f4:	00078513          	mv	a0,a5
     7f8:	819ff0ef          	jal	ra,10 <_entry>
     7fc:	0080006f          	j	804 <jump_exe+0x60>
     800:	00000013          	nop
     804:	01813083          	ld	ra,24(sp)
     808:	01013403          	ld	s0,16(sp)
     80c:	02010113          	addi	sp,sp,32
     810:	00008067          	ret

0000000000000814 <reg_exe>:
     814:	fe010113          	addi	sp,sp,-32
     818:	00113c23          	sd	ra,24(sp)
     81c:	00813823          	sd	s0,16(sp)
     820:	02010413          	addi	s0,sp,32
     824:	fe042623          	sw	zero,-20(s0)
     828:	0600006f          	j	888 <reg_exe+0x74>
     82c:	000027b7          	lui	a5,0x2
     830:	f2878513          	addi	a0,a5,-216 # 1f28 <INST_CONFIG+0x3c8>
     834:	a01ff0ef          	jal	ra,234 <print>
     838:	fec42783          	lw	a5,-20(s0)
     83c:	00078513          	mv	a0,a5
     840:	cb1ff0ef          	jal	ra,4f0 <print_hex>
     844:	000027b7          	lui	a5,0x2
     848:	f3078513          	addi	a0,a5,-208 # 1f30 <INST_CONFIG+0x3d0>
     84c:	9e9ff0ef          	jal	ra,234 <print>
     850:	000027b7          	lui	a5,0x2
     854:	fec42703          	lw	a4,-20(s0)
     858:	00271713          	slli	a4,a4,0x2
     85c:	07878793          	addi	a5,a5,120 # 2078 <regs>
     860:	00f707b3          	add	a5,a4,a5
     864:	0007a783          	lw	a5,0(a5)
     868:	00078513          	mv	a0,a5
     86c:	c85ff0ef          	jal	ra,4f0 <print_hex>
     870:	000027b7          	lui	a5,0x2
     874:	f3878513          	addi	a0,a5,-200 # 1f38 <INST_CONFIG+0x3d8>
     878:	9bdff0ef          	jal	ra,234 <print>
     87c:	fec42783          	lw	a5,-20(s0)
     880:	0017879b          	addiw	a5,a5,1
     884:	fef42623          	sw	a5,-20(s0)
     888:	fec42783          	lw	a5,-20(s0)
     88c:	0007871b          	sext.w	a4,a5
     890:	01f00793          	li	a5,31
     894:	f8e7dce3          	bge	a5,a4,82c <reg_exe+0x18>
     898:	00000013          	nop
     89c:	01813083          	ld	ra,24(sp)
     8a0:	01013403          	ld	s0,16(sp)
     8a4:	02010113          	addi	sp,sp,32
     8a8:	00008067          	ret

00000000000008ac <edit_exe>:
     8ac:	fd010113          	addi	sp,sp,-48
     8b0:	02113423          	sd	ra,40(sp)
     8b4:	02813023          	sd	s0,32(sp)
     8b8:	03010413          	addi	s0,sp,48
     8bc:	000027b7          	lui	a5,0x2
     8c0:	03878513          	addi	a0,a5,56 # 2038 <buffer>
     8c4:	e5dff0ef          	jal	ra,720 <next_word>
     8c8:	fea43023          	sd	a0,-32(s0)
     8cc:	fe043783          	ld	a5,-32(s0)
     8d0:	0007c783          	lbu	a5,0(a5)
     8d4:	08078e63          	beqz	a5,970 <edit_exe+0xc4>
     8d8:	fe043783          	ld	a5,-32(s0)
     8dc:	00178793          	addi	a5,a5,1
     8e0:	0007c783          	lbu	a5,0(a5)
     8e4:	08078663          	beqz	a5,970 <edit_exe+0xc4>
     8e8:	fe043503          	ld	a0,-32(s0)
     8ec:	cc1ff0ef          	jal	ra,5ac <str2hex>
     8f0:	00050793          	mv	a5,a0
     8f4:	fef42623          	sw	a5,-20(s0)
     8f8:	000027b7          	lui	a5,0x2
     8fc:	f4078513          	addi	a0,a5,-192 # 1f40 <INST_CONFIG+0x3e0>
     900:	935ff0ef          	jal	ra,234 <print>
     904:	fec42783          	lw	a5,-20(s0)
     908:	00078513          	mv	a0,a5
     90c:	be5ff0ef          	jal	ra,4f0 <print_hex>
     910:	000027b7          	lui	a5,0x2
     914:	f4878513          	addi	a0,a5,-184 # 1f48 <INST_CONFIG+0x3e8>
     918:	91dff0ef          	jal	ra,234 <print>
     91c:	a39ff0ef          	jal	ra,354 <get_line>
     920:	000027b7          	lui	a5,0x2
     924:	0387c783          	lbu	a5,56(a5) # 2038 <buffer>
     928:	04078663          	beqz	a5,974 <edit_exe+0xc8>
     92c:	000027b7          	lui	a5,0x2
     930:	03878793          	addi	a5,a5,56 # 2038 <buffer>
     934:	0017c783          	lbu	a5,1(a5)
     938:	02078e63          	beqz	a5,974 <edit_exe+0xc8>
     93c:	000027b7          	lui	a5,0x2
     940:	03878513          	addi	a0,a5,56 # 2038 <buffer>
     944:	c69ff0ef          	jal	ra,5ac <str2hex>
     948:	00050793          	mv	a5,a0
     94c:	fcf42e23          	sw	a5,-36(s0)
     950:	fec46783          	lwu	a5,-20(s0)
     954:	00078713          	mv	a4,a5
     958:	fdc42783          	lw	a5,-36(s0)
     95c:	00f72023          	sw	a5,0(a4)
     960:	fec42783          	lw	a5,-20(s0)
     964:	0047879b          	addiw	a5,a5,4
     968:	fef42623          	sw	a5,-20(s0)
     96c:	f8dff06f          	j	8f8 <edit_exe+0x4c>
     970:	00000013          	nop
     974:	02813083          	ld	ra,40(sp)
     978:	02013403          	ld	s0,32(sp)
     97c:	03010113          	addi	sp,sp,48
     980:	00008067          	ret

0000000000000984 <parse_arg>:
     984:	fe010113          	addi	sp,sp,-32
     988:	00113c23          	sd	ra,24(sp)
     98c:	00813823          	sd	s0,16(sp)
     990:	02010413          	addi	s0,sp,32
     994:	fea43423          	sd	a0,-24(s0)
     998:	feb43023          	sd	a1,-32(s0)
     99c:	fe843783          	ld	a5,-24(s0)
     9a0:	0007c783          	lbu	a5,0(a5)
     9a4:	00078a63          	beqz	a5,9b8 <parse_arg+0x34>
     9a8:	fe843783          	ld	a5,-24(s0)
     9ac:	00178793          	addi	a5,a5,1
     9b0:	0007c783          	lbu	a5,0(a5)
     9b4:	00079663          	bnez	a5,9c0 <parse_arg+0x3c>
     9b8:	00000793          	li	a5,0
     9bc:	0b40006f          	j	a70 <parse_arg+0xec>
     9c0:	fe843783          	ld	a5,-24(s0)
     9c4:	0007c783          	lbu	a5,0(a5)
     9c8:	00078713          	mv	a4,a5
     9cc:	03000793          	li	a5,48
     9d0:	02f71c63          	bne	a4,a5,a08 <parse_arg+0x84>
     9d4:	fe843783          	ld	a5,-24(s0)
     9d8:	00178793          	addi	a5,a5,1
     9dc:	0007c783          	lbu	a5,0(a5)
     9e0:	00078713          	mv	a4,a5
     9e4:	07800793          	li	a5,120
     9e8:	02f71063          	bne	a4,a5,a08 <parse_arg+0x84>
     9ec:	fe843503          	ld	a0,-24(s0)
     9f0:	bbdff0ef          	jal	ra,5ac <str2hex>
     9f4:	00050793          	mv	a5,a0
     9f8:	0007871b          	sext.w	a4,a5
     9fc:	fe043783          	ld	a5,-32(s0)
     a00:	00e7a023          	sw	a4,0(a5)
     a04:	0680006f          	j	a6c <parse_arg+0xe8>
     a08:	fe843783          	ld	a5,-24(s0)
     a0c:	0007c783          	lbu	a5,0(a5)
     a10:	00078713          	mv	a4,a5
     a14:	07800793          	li	a5,120
     a18:	04f71a63          	bne	a4,a5,a6c <parse_arg+0xe8>
     a1c:	fe843783          	ld	a5,-24(s0)
     a20:	00178793          	addi	a5,a5,1
     a24:	0007c783          	lbu	a5,0(a5)
     a28:	00078713          	mv	a4,a5
     a2c:	03000793          	li	a5,48
     a30:	02f71e63          	bne	a4,a5,a6c <parse_arg+0xe8>
     a34:	fe843783          	ld	a5,-24(s0)
     a38:	00278793          	addi	a5,a5,2
     a3c:	0007c783          	lbu	a5,0(a5)
     a40:	00078713          	mv	a4,a5
     a44:	07800793          	li	a5,120
     a48:	02f71263          	bne	a4,a5,a6c <parse_arg+0xe8>
     a4c:	fe843783          	ld	a5,-24(s0)
     a50:	00178793          	addi	a5,a5,1
     a54:	00078513          	mv	a0,a5
     a58:	b55ff0ef          	jal	ra,5ac <str2hex>
     a5c:	00050793          	mv	a5,a0
     a60:	0007871b          	sext.w	a4,a5
     a64:	fe043783          	ld	a5,-32(s0)
     a68:	00e7a023          	sw	a4,0(a5)
     a6c:	00100793          	li	a5,1
     a70:	00078513          	mv	a0,a5
     a74:	01813083          	ld	ra,24(sp)
     a78:	01013403          	ld	s0,16(sp)
     a7c:	02010113          	addi	sp,sp,32
     a80:	00008067          	ret

0000000000000a84 <inst2int>:
     a84:	fc010113          	addi	sp,sp,-64
     a88:	02113c23          	sd	ra,56(sp)
     a8c:	02813823          	sd	s0,48(sp)
     a90:	04010413          	addi	s0,sp,64
     a94:	fca43423          	sd	a0,-56(s0)
     a98:	fe042623          	sw	zero,-20(s0)
     a9c:	1000006f          	j	b9c <inst2int+0x118>
     aa0:	fe042423          	sw	zero,-24(s0)
     aa4:	0100006f          	j	ab4 <inst2int+0x30>
     aa8:	fe842783          	lw	a5,-24(s0)
     aac:	0017879b          	addiw	a5,a5,1
     ab0:	fef42423          	sw	a5,-24(s0)
     ab4:	00002637          	lui	a2,0x2
     ab8:	fe842683          	lw	a3,-24(s0)
     abc:	fec42703          	lw	a4,-20(s0)
     ac0:	00070793          	mv	a5,a4
     ac4:	00379793          	slli	a5,a5,0x3
     ac8:	40e787b3          	sub	a5,a5,a4
     acc:	a5060713          	addi	a4,a2,-1456 # 1a50 <INST_NAMES>
     ad0:	00e787b3          	add	a5,a5,a4
     ad4:	00d787b3          	add	a5,a5,a3
     ad8:	0007c783          	lbu	a5,0(a5)
     adc:	04078c63          	beqz	a5,b34 <inst2int+0xb0>
     ae0:	fe842783          	lw	a5,-24(s0)
     ae4:	fc843703          	ld	a4,-56(s0)
     ae8:	00f707b3          	add	a5,a4,a5
     aec:	0007c783          	lbu	a5,0(a5)
     af0:	04078263          	beqz	a5,b34 <inst2int+0xb0>
     af4:	00002637          	lui	a2,0x2
     af8:	fe842683          	lw	a3,-24(s0)
     afc:	fec42703          	lw	a4,-20(s0)
     b00:	00070793          	mv	a5,a4
     b04:	00379793          	slli	a5,a5,0x3
     b08:	40e787b3          	sub	a5,a5,a4
     b0c:	a5060713          	addi	a4,a2,-1456 # 1a50 <INST_NAMES>
     b10:	00e787b3          	add	a5,a5,a4
     b14:	00d787b3          	add	a5,a5,a3
     b18:	0007c683          	lbu	a3,0(a5)
     b1c:	fe842783          	lw	a5,-24(s0)
     b20:	fc843703          	ld	a4,-56(s0)
     b24:	00f707b3          	add	a5,a4,a5
     b28:	0007c783          	lbu	a5,0(a5)
     b2c:	00068713          	mv	a4,a3
     b30:	f6f70ce3          	beq	a4,a5,aa8 <inst2int+0x24>
     b34:	00002637          	lui	a2,0x2
     b38:	fe842683          	lw	a3,-24(s0)
     b3c:	fec42703          	lw	a4,-20(s0)
     b40:	00070793          	mv	a5,a4
     b44:	00379793          	slli	a5,a5,0x3
     b48:	40e787b3          	sub	a5,a5,a4
     b4c:	a5060713          	addi	a4,a2,-1456 # 1a50 <INST_NAMES>
     b50:	00e787b3          	add	a5,a5,a4
     b54:	00d787b3          	add	a5,a5,a3
     b58:	0007c783          	lbu	a5,0(a5)
     b5c:	02079a63          	bnez	a5,b90 <inst2int+0x10c>
     b60:	fe842783          	lw	a5,-24(s0)
     b64:	fc843703          	ld	a4,-56(s0)
     b68:	00f707b3          	add	a5,a4,a5
     b6c:	0007c783          	lbu	a5,0(a5)
     b70:	02078e63          	beqz	a5,bac <inst2int+0x128>
     b74:	fe842783          	lw	a5,-24(s0)
     b78:	fc843703          	ld	a4,-56(s0)
     b7c:	00f707b3          	add	a5,a4,a5
     b80:	0007c783          	lbu	a5,0(a5)
     b84:	00078713          	mv	a4,a5
     b88:	02000793          	li	a5,32
     b8c:	02f70063          	beq	a4,a5,bac <inst2int+0x128>
     b90:	fec42783          	lw	a5,-20(s0)
     b94:	0017879b          	addiw	a5,a5,1
     b98:	fef42623          	sw	a5,-20(s0)
     b9c:	fec42783          	lw	a5,-20(s0)
     ba0:	0007871b          	sext.w	a4,a5
     ba4:	02500793          	li	a5,37
     ba8:	eee7dce3          	bge	a5,a4,aa0 <inst2int+0x1c>
     bac:	fec42783          	lw	a5,-20(s0)
     bb0:	0007871b          	sext.w	a4,a5
     bb4:	02600793          	li	a5,38
     bb8:	00f71663          	bne	a4,a5,bc4 <inst2int+0x140>
     bbc:	00000793          	li	a5,0
     bc0:	55c0006f          	j	111c <inst2int+0x698>
     bc4:	000027b7          	lui	a5,0x2
     bc8:	fec42703          	lw	a4,-20(s0)
     bcc:	00471713          	slli	a4,a4,0x4
     bd0:	b6078793          	addi	a5,a5,-1184 # 1b60 <INST_CONFIG>
     bd4:	00f707b3          	add	a5,a4,a5
     bd8:	0047a783          	lw	a5,4(a5)
     bdc:	fef42223          	sw	a5,-28(s0)
     be0:	000027b7          	lui	a5,0x2
     be4:	fec42703          	lw	a4,-20(s0)
     be8:	00471713          	slli	a4,a4,0x4
     bec:	b6078793          	addi	a5,a5,-1184 # 1b60 <INST_CONFIG>
     bf0:	00f707b3          	add	a5,a4,a5
     bf4:	0007a783          	lw	a5,0(a5)
     bf8:	fef42023          	sw	a5,-32(s0)
     bfc:	fe042783          	lw	a5,-32(s0)
     c00:	0007871b          	sext.w	a4,a5
     c04:	00600793          	li	a5,6
     c08:	02f71863          	bne	a4,a5,c38 <inst2int+0x1b4>
     c0c:	000027b7          	lui	a5,0x2
     c10:	fec42703          	lw	a4,-20(s0)
     c14:	00471713          	slli	a4,a4,0x4
     c18:	b6078793          	addi	a5,a5,-1184 # 1b60 <INST_CONFIG>
     c1c:	00f707b3          	add	a5,a4,a5
     c20:	0087a783          	lw	a5,8(a5)
     c24:	0077979b          	slliw	a5,a5,0x7
     c28:	0007871b          	sext.w	a4,a5
     c2c:	fe442783          	lw	a5,-28(s0)
     c30:	00e7e7b3          	or	a5,a5,a4
     c34:	fef42223          	sw	a5,-28(s0)
     c38:	fe042783          	lw	a5,-32(s0)
     c3c:	0007879b          	sext.w	a5,a5
     c40:	02078a63          	beqz	a5,c74 <inst2int+0x1f0>
     c44:	fe042783          	lw	a5,-32(s0)
     c48:	0007871b          	sext.w	a4,a5
     c4c:	00100793          	li	a5,1
     c50:	02f70263          	beq	a4,a5,c74 <inst2int+0x1f0>
     c54:	fe042783          	lw	a5,-32(s0)
     c58:	0007871b          	sext.w	a4,a5
     c5c:	00200793          	li	a5,2
     c60:	00f70a63          	beq	a4,a5,c74 <inst2int+0x1f0>
     c64:	fe042783          	lw	a5,-32(s0)
     c68:	0007871b          	sext.w	a4,a5
     c6c:	00300793          	li	a5,3
     c70:	04f71063          	bne	a4,a5,cb0 <inst2int+0x22c>
     c74:	000027b7          	lui	a5,0x2
     c78:	fec42703          	lw	a4,-20(s0)
     c7c:	00471713          	slli	a4,a4,0x4
     c80:	b6078793          	addi	a5,a5,-1184 # 1b60 <INST_CONFIG>
     c84:	00f707b3          	add	a5,a4,a5
     c88:	0087a783          	lw	a5,8(a5)
     c8c:	00c7979b          	slliw	a5,a5,0xc
     c90:	0007879b          	sext.w	a5,a5
     c94:	00078713          	mv	a4,a5
     c98:	000077b7          	lui	a5,0x7
     c9c:	00f777b3          	and	a5,a4,a5
     ca0:	0007871b          	sext.w	a4,a5
     ca4:	fe442783          	lw	a5,-28(s0)
     ca8:	00e7e7b3          	or	a5,a5,a4
     cac:	fef42223          	sw	a5,-28(s0)
     cb0:	fe042783          	lw	a5,-32(s0)
     cb4:	0007879b          	sext.w	a5,a5
     cb8:	02079863          	bnez	a5,ce8 <inst2int+0x264>
     cbc:	000027b7          	lui	a5,0x2
     cc0:	fec42703          	lw	a4,-20(s0)
     cc4:	00471713          	slli	a4,a4,0x4
     cc8:	b6078793          	addi	a5,a5,-1184 # 1b60 <INST_CONFIG>
     ccc:	00f707b3          	add	a5,a4,a5
     cd0:	00c7a783          	lw	a5,12(a5)
     cd4:	0197979b          	slliw	a5,a5,0x19
     cd8:	0007871b          	sext.w	a4,a5
     cdc:	fe442783          	lw	a5,-28(s0)
     ce0:	00e7e7b3          	or	a5,a5,a4
     ce4:	fef42223          	sw	a5,-28(s0)
     ce8:	fe042783          	lw	a5,-32(s0)
     cec:	0007879b          	sext.w	a5,a5
     cf0:	02078a63          	beqz	a5,d24 <inst2int+0x2a0>
     cf4:	fe042783          	lw	a5,-32(s0)
     cf8:	0007871b          	sext.w	a4,a5
     cfc:	00100793          	li	a5,1
     d00:	02f70263          	beq	a4,a5,d24 <inst2int+0x2a0>
     d04:	fe042783          	lw	a5,-32(s0)
     d08:	0007871b          	sext.w	a4,a5
     d0c:	00400793          	li	a5,4
     d10:	00f70a63          	beq	a4,a5,d24 <inst2int+0x2a0>
     d14:	fe042783          	lw	a5,-32(s0)
     d18:	0007871b          	sext.w	a4,a5
     d1c:	00500793          	li	a5,5
     d20:	06f71463          	bne	a4,a5,d88 <inst2int+0x304>
     d24:	fc843503          	ld	a0,-56(s0)
     d28:	9f9ff0ef          	jal	ra,720 <next_word>
     d2c:	fca43423          	sd	a0,-56(s0)
     d30:	fd840793          	addi	a5,s0,-40
     d34:	00078593          	mv	a1,a5
     d38:	fc843503          	ld	a0,-56(s0)
     d3c:	c49ff0ef          	jal	ra,984 <parse_arg>
     d40:	00050793          	mv	a5,a0
     d44:	fcf42e23          	sw	a5,-36(s0)
     d48:	fdc42783          	lw	a5,-36(s0)
     d4c:	0007879b          	sext.w	a5,a5
     d50:	00079663          	bnez	a5,d5c <inst2int+0x2d8>
     d54:	00000793          	li	a5,0
     d58:	3c40006f          	j	111c <inst2int+0x698>
     d5c:	fd842783          	lw	a5,-40(s0)
     d60:	0077979b          	slliw	a5,a5,0x7
     d64:	0007879b          	sext.w	a5,a5
     d68:	00078713          	mv	a4,a5
     d6c:	000017b7          	lui	a5,0x1
     d70:	f8078793          	addi	a5,a5,-128 # f80 <inst2int+0x4fc>
     d74:	00f777b3          	and	a5,a4,a5
     d78:	0007871b          	sext.w	a4,a5
     d7c:	fe442783          	lw	a5,-28(s0)
     d80:	00e7e7b3          	or	a5,a5,a4
     d84:	fef42223          	sw	a5,-28(s0)
     d88:	fe042783          	lw	a5,-32(s0)
     d8c:	0007879b          	sext.w	a5,a5
     d90:	02078a63          	beqz	a5,dc4 <inst2int+0x340>
     d94:	fe042783          	lw	a5,-32(s0)
     d98:	0007871b          	sext.w	a4,a5
     d9c:	00100793          	li	a5,1
     da0:	02f70263          	beq	a4,a5,dc4 <inst2int+0x340>
     da4:	fe042783          	lw	a5,-32(s0)
     da8:	0007871b          	sext.w	a4,a5
     dac:	00200793          	li	a5,2
     db0:	00f70a63          	beq	a4,a5,dc4 <inst2int+0x340>
     db4:	fe042783          	lw	a5,-32(s0)
     db8:	0007871b          	sext.w	a4,a5
     dbc:	00300793          	li	a5,3
     dc0:	06f71263          	bne	a4,a5,e24 <inst2int+0x3a0>
     dc4:	fc843503          	ld	a0,-56(s0)
     dc8:	959ff0ef          	jal	ra,720 <next_word>
     dcc:	fca43423          	sd	a0,-56(s0)
     dd0:	fd840793          	addi	a5,s0,-40
     dd4:	00078593          	mv	a1,a5
     dd8:	fc843503          	ld	a0,-56(s0)
     ddc:	ba9ff0ef          	jal	ra,984 <parse_arg>
     de0:	00050793          	mv	a5,a0
     de4:	fcf42e23          	sw	a5,-36(s0)
     de8:	fdc42783          	lw	a5,-36(s0)
     dec:	0007879b          	sext.w	a5,a5
     df0:	00079663          	bnez	a5,dfc <inst2int+0x378>
     df4:	00000793          	li	a5,0
     df8:	3240006f          	j	111c <inst2int+0x698>
     dfc:	fd842783          	lw	a5,-40(s0)
     e00:	00f7979b          	slliw	a5,a5,0xf
     e04:	0007879b          	sext.w	a5,a5
     e08:	00078713          	mv	a4,a5
     e0c:	000f87b7          	lui	a5,0xf8
     e10:	00f777b3          	and	a5,a4,a5
     e14:	0007871b          	sext.w	a4,a5
     e18:	fe442783          	lw	a5,-28(s0)
     e1c:	00e7e7b3          	or	a5,a5,a4
     e20:	fef42223          	sw	a5,-28(s0)
     e24:	fe042783          	lw	a5,-32(s0)
     e28:	0007879b          	sext.w	a5,a5
     e2c:	02078263          	beqz	a5,e50 <inst2int+0x3cc>
     e30:	fe042783          	lw	a5,-32(s0)
     e34:	0007871b          	sext.w	a4,a5
     e38:	00200793          	li	a5,2
     e3c:	00f70a63          	beq	a4,a5,e50 <inst2int+0x3cc>
     e40:	fe042783          	lw	a5,-32(s0)
     e44:	0007871b          	sext.w	a4,a5
     e48:	00300793          	li	a5,3
     e4c:	06f71263          	bne	a4,a5,eb0 <inst2int+0x42c>
     e50:	fc843503          	ld	a0,-56(s0)
     e54:	8cdff0ef          	jal	ra,720 <next_word>
     e58:	fca43423          	sd	a0,-56(s0)
     e5c:	fd840793          	addi	a5,s0,-40
     e60:	00078593          	mv	a1,a5
     e64:	fc843503          	ld	a0,-56(s0)
     e68:	b1dff0ef          	jal	ra,984 <parse_arg>
     e6c:	00050793          	mv	a5,a0
     e70:	fcf42e23          	sw	a5,-36(s0)
     e74:	fdc42783          	lw	a5,-36(s0)
     e78:	0007879b          	sext.w	a5,a5
     e7c:	00079663          	bnez	a5,e88 <inst2int+0x404>
     e80:	00000793          	li	a5,0
     e84:	2980006f          	j	111c <inst2int+0x698>
     e88:	fd842783          	lw	a5,-40(s0)
     e8c:	0147979b          	slliw	a5,a5,0x14
     e90:	0007879b          	sext.w	a5,a5
     e94:	00078713          	mv	a4,a5
     e98:	01f007b7          	lui	a5,0x1f00
     e9c:	00f777b3          	and	a5,a4,a5
     ea0:	0007871b          	sext.w	a4,a5
     ea4:	fe442783          	lw	a5,-28(s0)
     ea8:	00e7e7b3          	or	a5,a5,a4
     eac:	fef42223          	sw	a5,-28(s0)
     eb0:	fe042783          	lw	a5,-32(s0)
     eb4:	0007879b          	sext.w	a5,a5
     eb8:	24078e63          	beqz	a5,1114 <inst2int+0x690>
     ebc:	fe042783          	lw	a5,-32(s0)
     ec0:	0007871b          	sext.w	a4,a5
     ec4:	00600793          	li	a5,6
     ec8:	24f70663          	beq	a4,a5,1114 <inst2int+0x690>
     ecc:	fc843503          	ld	a0,-56(s0)
     ed0:	851ff0ef          	jal	ra,720 <next_word>
     ed4:	fca43423          	sd	a0,-56(s0)
     ed8:	fd840793          	addi	a5,s0,-40
     edc:	00078593          	mv	a1,a5
     ee0:	fc843503          	ld	a0,-56(s0)
     ee4:	aa1ff0ef          	jal	ra,984 <parse_arg>
     ee8:	00050793          	mv	a5,a0
     eec:	fcf42e23          	sw	a5,-36(s0)
     ef0:	fdc42783          	lw	a5,-36(s0)
     ef4:	0007879b          	sext.w	a5,a5
     ef8:	00079663          	bnez	a5,f04 <inst2int+0x480>
     efc:	00000793          	li	a5,0
     f00:	21c0006f          	j	111c <inst2int+0x698>
     f04:	fe042783          	lw	a5,-32(s0)
     f08:	0007871b          	sext.w	a4,a5
     f0c:	00500793          	li	a5,5
     f10:	20e7e463          	bltu	a5,a4,1118 <inst2int+0x694>
     f14:	fe046783          	lwu	a5,-32(s0)
     f18:	00279713          	slli	a4,a5,0x2
     f1c:	000027b7          	lui	a5,0x2
     f20:	f4c78793          	addi	a5,a5,-180 # 1f4c <INST_CONFIG+0x3ec>
     f24:	00f707b3          	add	a5,a4,a5
     f28:	0007a783          	lw	a5,0(a5)
     f2c:	00078067          	jr	a5
     f30:	fd842783          	lw	a5,-40(s0)
     f34:	0147979b          	slliw	a5,a5,0x14
     f38:	0007871b          	sext.w	a4,a5
     f3c:	fe442783          	lw	a5,-28(s0)
     f40:	00e7e7b3          	or	a5,a5,a4
     f44:	fef42223          	sw	a5,-28(s0)
     f48:	1d00006f          	j	1118 <inst2int+0x694>
     f4c:	fd842783          	lw	a5,-40(s0)
     f50:	0077979b          	slliw	a5,a5,0x7
     f54:	0007879b          	sext.w	a5,a5
     f58:	00078713          	mv	a4,a5
     f5c:	000017b7          	lui	a5,0x1
     f60:	f8078793          	addi	a5,a5,-128 # f80 <inst2int+0x4fc>
     f64:	00f777b3          	and	a5,a4,a5
     f68:	0007871b          	sext.w	a4,a5
     f6c:	fe442783          	lw	a5,-28(s0)
     f70:	00e7e7b3          	or	a5,a5,a4
     f74:	fef42223          	sw	a5,-28(s0)
     f78:	fd842783          	lw	a5,-40(s0)
     f7c:	0057d79b          	srliw	a5,a5,0x5
     f80:	0007879b          	sext.w	a5,a5
     f84:	0197979b          	slliw	a5,a5,0x19
     f88:	0007871b          	sext.w	a4,a5
     f8c:	fe442783          	lw	a5,-28(s0)
     f90:	00e7e7b3          	or	a5,a5,a4
     f94:	fef42223          	sw	a5,-28(s0)
     f98:	1800006f          	j	1118 <inst2int+0x694>
     f9c:	fd842783          	lw	a5,-40(s0)
     fa0:	00b7d79b          	srliw	a5,a5,0xb
     fa4:	0007879b          	sext.w	a5,a5
     fa8:	0077979b          	slliw	a5,a5,0x7
     fac:	0007879b          	sext.w	a5,a5
     fb0:	0ff7f793          	andi	a5,a5,255
     fb4:	0007871b          	sext.w	a4,a5
     fb8:	fe442783          	lw	a5,-28(s0)
     fbc:	00e7e7b3          	or	a5,a5,a4
     fc0:	fef42223          	sw	a5,-28(s0)
     fc4:	fd842783          	lw	a5,-40(s0)
     fc8:	0017d79b          	srliw	a5,a5,0x1
     fcc:	0007879b          	sext.w	a5,a5
     fd0:	0087979b          	slliw	a5,a5,0x8
     fd4:	0007879b          	sext.w	a5,a5
     fd8:	00078713          	mv	a4,a5
     fdc:	000017b7          	lui	a5,0x1
     fe0:	f0078793          	addi	a5,a5,-256 # f00 <inst2int+0x47c>
     fe4:	00f777b3          	and	a5,a4,a5
     fe8:	0007871b          	sext.w	a4,a5
     fec:	fe442783          	lw	a5,-28(s0)
     ff0:	00e7e7b3          	or	a5,a5,a4
     ff4:	fef42223          	sw	a5,-28(s0)
     ff8:	fd842783          	lw	a5,-40(s0)
     ffc:	0057d79b          	srliw	a5,a5,0x5
    1000:	0007879b          	sext.w	a5,a5
    1004:	0197979b          	slliw	a5,a5,0x19
    1008:	0007879b          	sext.w	a5,a5
    100c:	00078713          	mv	a4,a5
    1010:	7e0007b7          	lui	a5,0x7e000
    1014:	00f777b3          	and	a5,a4,a5
    1018:	0007871b          	sext.w	a4,a5
    101c:	fe442783          	lw	a5,-28(s0)
    1020:	00e7e7b3          	or	a5,a5,a4
    1024:	fef42223          	sw	a5,-28(s0)
    1028:	fd842783          	lw	a5,-40(s0)
    102c:	00c7d79b          	srliw	a5,a5,0xc
    1030:	0007879b          	sext.w	a5,a5
    1034:	01f7979b          	slliw	a5,a5,0x1f
    1038:	0007871b          	sext.w	a4,a5
    103c:	fe442783          	lw	a5,-28(s0)
    1040:	00e7e7b3          	or	a5,a5,a4
    1044:	fef42223          	sw	a5,-28(s0)
    1048:	0d00006f          	j	1118 <inst2int+0x694>
    104c:	fd842783          	lw	a5,-40(s0)
    1050:	00078713          	mv	a4,a5
    1054:	fffff7b7          	lui	a5,0xfffff
    1058:	00f777b3          	and	a5,a4,a5
    105c:	0007871b          	sext.w	a4,a5
    1060:	fe442783          	lw	a5,-28(s0)
    1064:	00e7e7b3          	or	a5,a5,a4
    1068:	fef42223          	sw	a5,-28(s0)
    106c:	0ac0006f          	j	1118 <inst2int+0x694>
    1070:	fd842783          	lw	a5,-40(s0)
    1074:	00078713          	mv	a4,a5
    1078:	000ff7b7          	lui	a5,0xff
    107c:	00f777b3          	and	a5,a4,a5
    1080:	0007871b          	sext.w	a4,a5
    1084:	fe442783          	lw	a5,-28(s0)
    1088:	00e7e7b3          	or	a5,a5,a4
    108c:	fef42223          	sw	a5,-28(s0)
    1090:	fd842783          	lw	a5,-40(s0)
    1094:	00b7d79b          	srliw	a5,a5,0xb
    1098:	0007879b          	sext.w	a5,a5
    109c:	0147979b          	slliw	a5,a5,0x14
    10a0:	0007879b          	sext.w	a5,a5
    10a4:	00078713          	mv	a4,a5
    10a8:	001007b7          	lui	a5,0x100
    10ac:	00f777b3          	and	a5,a4,a5
    10b0:	0007871b          	sext.w	a4,a5
    10b4:	fe442783          	lw	a5,-28(s0)
    10b8:	00e7e7b3          	or	a5,a5,a4
    10bc:	fef42223          	sw	a5,-28(s0)
    10c0:	fd842783          	lw	a5,-40(s0)
    10c4:	0017d79b          	srliw	a5,a5,0x1
    10c8:	0007879b          	sext.w	a5,a5
    10cc:	0157979b          	slliw	a5,a5,0x15
    10d0:	0007879b          	sext.w	a5,a5
    10d4:	00078713          	mv	a4,a5
    10d8:	7fe007b7          	lui	a5,0x7fe00
    10dc:	00f777b3          	and	a5,a4,a5
    10e0:	0007871b          	sext.w	a4,a5
    10e4:	fe442783          	lw	a5,-28(s0)
    10e8:	00e7e7b3          	or	a5,a5,a4
    10ec:	fef42223          	sw	a5,-28(s0)
    10f0:	fd842783          	lw	a5,-40(s0)
    10f4:	0147d79b          	srliw	a5,a5,0x14
    10f8:	0007879b          	sext.w	a5,a5
    10fc:	01f7979b          	slliw	a5,a5,0x1f
    1100:	0007871b          	sext.w	a4,a5
    1104:	fe442783          	lw	a5,-28(s0)
    1108:	00e7e7b3          	or	a5,a5,a4
    110c:	fef42223          	sw	a5,-28(s0)
    1110:	0080006f          	j	1118 <inst2int+0x694>
    1114:	00000013          	nop
    1118:	fe442783          	lw	a5,-28(s0)
    111c:	00078513          	mv	a0,a5
    1120:	03813083          	ld	ra,56(sp)
    1124:	03013403          	ld	s0,48(sp)
    1128:	04010113          	addi	sp,sp,64
    112c:	00008067          	ret

0000000000001130 <inst_exe>:
    1130:	fd010113          	addi	sp,sp,-48
    1134:	02113423          	sd	ra,40(sp)
    1138:	02813023          	sd	s0,32(sp)
    113c:	03010413          	addi	s0,sp,48
    1140:	000027b7          	lui	a5,0x2
    1144:	03878513          	addi	a0,a5,56 # 2038 <buffer>
    1148:	dd8ff0ef          	jal	ra,720 <next_word>
    114c:	fea43023          	sd	a0,-32(s0)
    1150:	fe043783          	ld	a5,-32(s0)
    1154:	0007c783          	lbu	a5,0(a5)
    1158:	08078663          	beqz	a5,11e4 <inst_exe+0xb4>
    115c:	fe043783          	ld	a5,-32(s0)
    1160:	00178793          	addi	a5,a5,1
    1164:	0007c783          	lbu	a5,0(a5)
    1168:	06078e63          	beqz	a5,11e4 <inst_exe+0xb4>
    116c:	fe043503          	ld	a0,-32(s0)
    1170:	c3cff0ef          	jal	ra,5ac <str2hex>
    1174:	00050793          	mv	a5,a0
    1178:	fef42623          	sw	a5,-20(s0)
    117c:	000027b7          	lui	a5,0x2
    1180:	f4078513          	addi	a0,a5,-192 # 1f40 <INST_CONFIG+0x3e0>
    1184:	8b0ff0ef          	jal	ra,234 <print>
    1188:	fec42783          	lw	a5,-20(s0)
    118c:	00078513          	mv	a0,a5
    1190:	b60ff0ef          	jal	ra,4f0 <print_hex>
    1194:	000027b7          	lui	a5,0x2
    1198:	f4878513          	addi	a0,a5,-184 # 1f48 <INST_CONFIG+0x3e8>
    119c:	898ff0ef          	jal	ra,234 <print>
    11a0:	9b4ff0ef          	jal	ra,354 <get_line>
    11a4:	000027b7          	lui	a5,0x2
    11a8:	03878513          	addi	a0,a5,56 # 2038 <buffer>
    11ac:	8d9ff0ef          	jal	ra,a84 <inst2int>
    11b0:	00050793          	mv	a5,a0
    11b4:	fcf42e23          	sw	a5,-36(s0)
    11b8:	fdc42783          	lw	a5,-36(s0)
    11bc:	0007879b          	sext.w	a5,a5
    11c0:	02078663          	beqz	a5,11ec <inst_exe+0xbc>
    11c4:	fec46783          	lwu	a5,-20(s0)
    11c8:	00078713          	mv	a4,a5
    11cc:	fdc42783          	lw	a5,-36(s0)
    11d0:	00f72023          	sw	a5,0(a4)
    11d4:	fec42783          	lw	a5,-20(s0)
    11d8:	0047879b          	addiw	a5,a5,4
    11dc:	fef42623          	sw	a5,-20(s0)
    11e0:	f9dff06f          	j	117c <inst_exe+0x4c>
    11e4:	00000013          	nop
    11e8:	0080006f          	j	11f0 <inst_exe+0xc0>
    11ec:	00000013          	nop
    11f0:	02813083          	ld	ra,40(sp)
    11f4:	02013403          	ld	s0,32(sp)
    11f8:	03010113          	addi	sp,sp,48
    11fc:	00008067          	ret

0000000000001200 <view_exe>:
    1200:	fd010113          	addi	sp,sp,-48
    1204:	02113423          	sd	ra,40(sp)
    1208:	02813023          	sd	s0,32(sp)
    120c:	03010413          	addi	s0,sp,48
    1210:	000027b7          	lui	a5,0x2
    1214:	03878513          	addi	a0,a5,56 # 2038 <buffer>
    1218:	d08ff0ef          	jal	ra,720 <next_word>
    121c:	fea43023          	sd	a0,-32(s0)
    1220:	fe043783          	ld	a5,-32(s0)
    1224:	0007c783          	lbu	a5,0(a5)
    1228:	0c078463          	beqz	a5,12f0 <view_exe+0xf0>
    122c:	fe043783          	ld	a5,-32(s0)
    1230:	00178793          	addi	a5,a5,1
    1234:	0007c783          	lbu	a5,0(a5)
    1238:	0a078c63          	beqz	a5,12f0 <view_exe+0xf0>
    123c:	fe043503          	ld	a0,-32(s0)
    1240:	b6cff0ef          	jal	ra,5ac <str2hex>
    1244:	00050793          	mv	a5,a0
    1248:	fef42623          	sw	a5,-20(s0)
    124c:	fe043503          	ld	a0,-32(s0)
    1250:	cd0ff0ef          	jal	ra,720 <next_word>
    1254:	fea43023          	sd	a0,-32(s0)
    1258:	fe043783          	ld	a5,-32(s0)
    125c:	0007c783          	lbu	a5,0(a5)
    1260:	08078c63          	beqz	a5,12f8 <view_exe+0xf8>
    1264:	fe043783          	ld	a5,-32(s0)
    1268:	00178793          	addi	a5,a5,1
    126c:	0007c783          	lbu	a5,0(a5)
    1270:	08078463          	beqz	a5,12f8 <view_exe+0xf8>
    1274:	fe043503          	ld	a0,-32(s0)
    1278:	b34ff0ef          	jal	ra,5ac <str2hex>
    127c:	00050793          	mv	a5,a0
    1280:	fef42423          	sw	a5,-24(s0)
    1284:	0580006f          	j	12dc <view_exe+0xdc>
    1288:	000027b7          	lui	a5,0x2
    128c:	f4078513          	addi	a0,a5,-192 # 1f40 <INST_CONFIG+0x3e0>
    1290:	fa5fe0ef          	jal	ra,234 <print>
    1294:	fec42783          	lw	a5,-20(s0)
    1298:	00078513          	mv	a0,a5
    129c:	a54ff0ef          	jal	ra,4f0 <print_hex>
    12a0:	000027b7          	lui	a5,0x2
    12a4:	f4878513          	addi	a0,a5,-184 # 1f48 <INST_CONFIG+0x3e8>
    12a8:	f8dfe0ef          	jal	ra,234 <print>
    12ac:	fec46783          	lwu	a5,-20(s0)
    12b0:	0007a783          	lw	a5,0(a5)
    12b4:	fcf42e23          	sw	a5,-36(s0)
    12b8:	fdc42783          	lw	a5,-36(s0)
    12bc:	00078513          	mv	a0,a5
    12c0:	a30ff0ef          	jal	ra,4f0 <print_hex>
    12c4:	000027b7          	lui	a5,0x2
    12c8:	f3878513          	addi	a0,a5,-200 # 1f38 <INST_CONFIG+0x3d8>
    12cc:	f69fe0ef          	jal	ra,234 <print>
    12d0:	fec42783          	lw	a5,-20(s0)
    12d4:	0047879b          	addiw	a5,a5,4
    12d8:	fef42623          	sw	a5,-20(s0)
    12dc:	fe842783          	lw	a5,-24(s0)
    12e0:	fff7871b          	addiw	a4,a5,-1
    12e4:	fee42423          	sw	a4,-24(s0)
    12e8:	fa0790e3          	bnez	a5,1288 <view_exe+0x88>
    12ec:	0100006f          	j	12fc <view_exe+0xfc>
    12f0:	00000013          	nop
    12f4:	0080006f          	j	12fc <view_exe+0xfc>
    12f8:	00000013          	nop
    12fc:	02813083          	ld	ra,40(sp)
    1300:	02013403          	ld	s0,32(sp)
    1304:	03010113          	addi	sp,sp,48
    1308:	00008067          	ret

000000000000130c <print_int2inst>:
    130c:	fd010113          	addi	sp,sp,-48
    1310:	02113423          	sd	ra,40(sp)
    1314:	02813023          	sd	s0,32(sp)
    1318:	03010413          	addi	s0,sp,48
    131c:	00050793          	mv	a5,a0
    1320:	fcf42e23          	sw	a5,-36(s0)
    1324:	fe042623          	sw	zero,-20(s0)
    1328:	1440006f          	j	146c <print_int2inst+0x160>
    132c:	000027b7          	lui	a5,0x2
    1330:	fec42703          	lw	a4,-20(s0)
    1334:	00471713          	slli	a4,a4,0x4
    1338:	b6078793          	addi	a5,a5,-1184 # 1b60 <INST_CONFIG>
    133c:	00f707b3          	add	a5,a4,a5
    1340:	0047a703          	lw	a4,4(a5)
    1344:	fdc42783          	lw	a5,-36(s0)
    1348:	07f7f793          	andi	a5,a5,127
    134c:	0007879b          	sext.w	a5,a5
    1350:	0ef71e63          	bne	a4,a5,144c <print_int2inst+0x140>
    1354:	000027b7          	lui	a5,0x2
    1358:	fec42703          	lw	a4,-20(s0)
    135c:	00471713          	slli	a4,a4,0x4
    1360:	b6078793          	addi	a5,a5,-1184 # 1b60 <INST_CONFIG>
    1364:	00f707b3          	add	a5,a4,a5
    1368:	0007a783          	lw	a5,0(a5)
    136c:	fef42423          	sw	a5,-24(s0)
    1370:	fe842783          	lw	a5,-24(s0)
    1374:	0007879b          	sext.w	a5,a5
    1378:	02079663          	bnez	a5,13a4 <print_int2inst+0x98>
    137c:	000027b7          	lui	a5,0x2
    1380:	fec42703          	lw	a4,-20(s0)
    1384:	00471713          	slli	a4,a4,0x4
    1388:	b6078793          	addi	a5,a5,-1184 # 1b60 <INST_CONFIG>
    138c:	00f707b3          	add	a5,a4,a5
    1390:	00c7a703          	lw	a4,12(a5)
    1394:	fdc42783          	lw	a5,-36(s0)
    1398:	0197d79b          	srliw	a5,a5,0x19
    139c:	0007879b          	sext.w	a5,a5
    13a0:	0af71a63          	bne	a4,a5,1454 <print_int2inst+0x148>
    13a4:	fe842783          	lw	a5,-24(s0)
    13a8:	0007879b          	sext.w	a5,a5
    13ac:	02078a63          	beqz	a5,13e0 <print_int2inst+0xd4>
    13b0:	fe842783          	lw	a5,-24(s0)
    13b4:	0007871b          	sext.w	a4,a5
    13b8:	00100793          	li	a5,1
    13bc:	02f70263          	beq	a4,a5,13e0 <print_int2inst+0xd4>
    13c0:	fe842783          	lw	a5,-24(s0)
    13c4:	0007871b          	sext.w	a4,a5
    13c8:	00200793          	li	a5,2
    13cc:	00f70a63          	beq	a4,a5,13e0 <print_int2inst+0xd4>
    13d0:	fe842783          	lw	a5,-24(s0)
    13d4:	0007871b          	sext.w	a4,a5
    13d8:	00300793          	li	a5,3
    13dc:	02f71a63          	bne	a4,a5,1410 <print_int2inst+0x104>
    13e0:	000027b7          	lui	a5,0x2
    13e4:	fec42703          	lw	a4,-20(s0)
    13e8:	00471713          	slli	a4,a4,0x4
    13ec:	b6078793          	addi	a5,a5,-1184 # 1b60 <INST_CONFIG>
    13f0:	00f707b3          	add	a5,a4,a5
    13f4:	0087a703          	lw	a4,8(a5)
    13f8:	fdc42783          	lw	a5,-36(s0)
    13fc:	00c7d79b          	srliw	a5,a5,0xc
    1400:	0007879b          	sext.w	a5,a5
    1404:	0077f793          	andi	a5,a5,7
    1408:	0007879b          	sext.w	a5,a5
    140c:	04f71863          	bne	a4,a5,145c <print_int2inst+0x150>
    1410:	fe842783          	lw	a5,-24(s0)
    1414:	0007871b          	sext.w	a4,a5
    1418:	00600793          	li	a5,6
    141c:	06f71263          	bne	a4,a5,1480 <print_int2inst+0x174>
    1420:	000027b7          	lui	a5,0x2
    1424:	fec42703          	lw	a4,-20(s0)
    1428:	00471713          	slli	a4,a4,0x4
    142c:	b6078793          	addi	a5,a5,-1184 # 1b60 <INST_CONFIG>
    1430:	00f707b3          	add	a5,a4,a5
    1434:	0087a703          	lw	a4,8(a5)
    1438:	fdc42783          	lw	a5,-36(s0)
    143c:	0077d79b          	srliw	a5,a5,0x7
    1440:	0007879b          	sext.w	a5,a5
    1444:	02f70e63          	beq	a4,a5,1480 <print_int2inst+0x174>
    1448:	0180006f          	j	1460 <print_int2inst+0x154>
    144c:	00000013          	nop
    1450:	0100006f          	j	1460 <print_int2inst+0x154>
    1454:	00000013          	nop
    1458:	0080006f          	j	1460 <print_int2inst+0x154>
    145c:	00000013          	nop
    1460:	fec42783          	lw	a5,-20(s0)
    1464:	0017879b          	addiw	a5,a5,1
    1468:	fef42623          	sw	a5,-20(s0)
    146c:	fec42783          	lw	a5,-20(s0)
    1470:	0007871b          	sext.w	a4,a5
    1474:	02500793          	li	a5,37
    1478:	eae7dae3          	bge	a5,a4,132c <print_int2inst+0x20>
    147c:	0080006f          	j	1484 <print_int2inst+0x178>
    1480:	00000013          	nop
    1484:	fec42783          	lw	a5,-20(s0)
    1488:	0007871b          	sext.w	a4,a5
    148c:	02600793          	li	a5,38
    1490:	00f71a63          	bne	a4,a5,14a4 <print_int2inst+0x198>
    1494:	000027b7          	lui	a5,0x2
    1498:	f6878513          	addi	a0,a5,-152 # 1f68 <INST_CONFIG+0x408>
    149c:	d99fe0ef          	jal	ra,234 <print>
    14a0:	3400006f          	j	17e0 <print_int2inst+0x4d4>
    14a4:	fec42703          	lw	a4,-20(s0)
    14a8:	00070793          	mv	a5,a4
    14ac:	00379793          	slli	a5,a5,0x3
    14b0:	40e787b3          	sub	a5,a5,a4
    14b4:	00002737          	lui	a4,0x2
    14b8:	a5070713          	addi	a4,a4,-1456 # 1a50 <INST_NAMES>
    14bc:	00e787b3          	add	a5,a5,a4
    14c0:	00078513          	mv	a0,a5
    14c4:	d71fe0ef          	jal	ra,234 <print>
    14c8:	fe842783          	lw	a5,-24(s0)
    14cc:	0007879b          	sext.w	a5,a5
    14d0:	02078a63          	beqz	a5,1504 <print_int2inst+0x1f8>
    14d4:	fe842783          	lw	a5,-24(s0)
    14d8:	0007871b          	sext.w	a4,a5
    14dc:	00100793          	li	a5,1
    14e0:	02f70263          	beq	a4,a5,1504 <print_int2inst+0x1f8>
    14e4:	fe842783          	lw	a5,-24(s0)
    14e8:	0007871b          	sext.w	a4,a5
    14ec:	00400793          	li	a5,4
    14f0:	00f70a63          	beq	a4,a5,1504 <print_int2inst+0x1f8>
    14f4:	fe842783          	lw	a5,-24(s0)
    14f8:	0007871b          	sext.w	a4,a5
    14fc:	00500793          	li	a5,5
    1500:	02f71663          	bne	a4,a5,152c <print_int2inst+0x220>
    1504:	000027b7          	lui	a5,0x2
    1508:	f7878513          	addi	a0,a5,-136 # 1f78 <INST_CONFIG+0x418>
    150c:	d29fe0ef          	jal	ra,234 <print>
    1510:	fdc42783          	lw	a5,-36(s0)
    1514:	0077d79b          	srliw	a5,a5,0x7
    1518:	0007879b          	sext.w	a5,a5
    151c:	01f7f793          	andi	a5,a5,31
    1520:	0007879b          	sext.w	a5,a5
    1524:	00078513          	mv	a0,a5
    1528:	fc9fe0ef          	jal	ra,4f0 <print_hex>
    152c:	fe842783          	lw	a5,-24(s0)
    1530:	0007879b          	sext.w	a5,a5
    1534:	02078a63          	beqz	a5,1568 <print_int2inst+0x25c>
    1538:	fe842783          	lw	a5,-24(s0)
    153c:	0007871b          	sext.w	a4,a5
    1540:	00100793          	li	a5,1
    1544:	02f70263          	beq	a4,a5,1568 <print_int2inst+0x25c>
    1548:	fe842783          	lw	a5,-24(s0)
    154c:	0007871b          	sext.w	a4,a5
    1550:	00200793          	li	a5,2
    1554:	00f70a63          	beq	a4,a5,1568 <print_int2inst+0x25c>
    1558:	fe842783          	lw	a5,-24(s0)
    155c:	0007871b          	sext.w	a4,a5
    1560:	00300793          	li	a5,3
    1564:	02f71663          	bne	a4,a5,1590 <print_int2inst+0x284>
    1568:	000027b7          	lui	a5,0x2
    156c:	f7878513          	addi	a0,a5,-136 # 1f78 <INST_CONFIG+0x418>
    1570:	cc5fe0ef          	jal	ra,234 <print>
    1574:	fdc42783          	lw	a5,-36(s0)
    1578:	00f7d79b          	srliw	a5,a5,0xf
    157c:	0007879b          	sext.w	a5,a5
    1580:	01f7f793          	andi	a5,a5,31
    1584:	0007879b          	sext.w	a5,a5
    1588:	00078513          	mv	a0,a5
    158c:	f65fe0ef          	jal	ra,4f0 <print_hex>
    1590:	fe842783          	lw	a5,-24(s0)
    1594:	0007879b          	sext.w	a5,a5
    1598:	02078263          	beqz	a5,15bc <print_int2inst+0x2b0>
    159c:	fe842783          	lw	a5,-24(s0)
    15a0:	0007871b          	sext.w	a4,a5
    15a4:	00200793          	li	a5,2
    15a8:	00f70a63          	beq	a4,a5,15bc <print_int2inst+0x2b0>
    15ac:	fe842783          	lw	a5,-24(s0)
    15b0:	0007871b          	sext.w	a4,a5
    15b4:	00300793          	li	a5,3
    15b8:	02f71663          	bne	a4,a5,15e4 <print_int2inst+0x2d8>
    15bc:	000027b7          	lui	a5,0x2
    15c0:	f7878513          	addi	a0,a5,-136 # 1f78 <INST_CONFIG+0x418>
    15c4:	c71fe0ef          	jal	ra,234 <print>
    15c8:	fdc42783          	lw	a5,-36(s0)
    15cc:	0147d79b          	srliw	a5,a5,0x14
    15d0:	0007879b          	sext.w	a5,a5
    15d4:	01f7f793          	andi	a5,a5,31
    15d8:	0007879b          	sext.w	a5,a5
    15dc:	00078513          	mv	a0,a5
    15e0:	f11fe0ef          	jal	ra,4f0 <print_hex>
    15e4:	fe042223          	sw	zero,-28(s0)
    15e8:	fe842783          	lw	a5,-24(s0)
    15ec:	0007879b          	sext.w	a5,a5
    15f0:	1e078863          	beqz	a5,17e0 <print_int2inst+0x4d4>
    15f4:	fe842783          	lw	a5,-24(s0)
    15f8:	0007871b          	sext.w	a4,a5
    15fc:	00600793          	li	a5,6
    1600:	1ef70063          	beq	a4,a5,17e0 <print_int2inst+0x4d4>
    1604:	fe842783          	lw	a5,-24(s0)
    1608:	0007871b          	sext.w	a4,a5
    160c:	00500793          	li	a5,5
    1610:	1ae7ec63          	bltu	a5,a4,17c8 <print_int2inst+0x4bc>
    1614:	fe846783          	lwu	a5,-24(s0)
    1618:	00279713          	slli	a4,a5,0x2
    161c:	000027b7          	lui	a5,0x2
    1620:	f7c78793          	addi	a5,a5,-132 # 1f7c <INST_CONFIG+0x41c>
    1624:	00f707b3          	add	a5,a4,a5
    1628:	0007a783          	lw	a5,0(a5)
    162c:	00078067          	jr	a5
    1630:	fdc42783          	lw	a5,-36(s0)
    1634:	0147d79b          	srliw	a5,a5,0x14
    1638:	fef42223          	sw	a5,-28(s0)
    163c:	18c0006f          	j	17c8 <print_int2inst+0x4bc>
    1640:	fdc42783          	lw	a5,-36(s0)
    1644:	0077d79b          	srliw	a5,a5,0x7
    1648:	0007879b          	sext.w	a5,a5
    164c:	01f7f793          	andi	a5,a5,31
    1650:	0007871b          	sext.w	a4,a5
    1654:	fdc42783          	lw	a5,-36(s0)
    1658:	0197d79b          	srliw	a5,a5,0x19
    165c:	0007879b          	sext.w	a5,a5
    1660:	0057979b          	slliw	a5,a5,0x5
    1664:	0007879b          	sext.w	a5,a5
    1668:	00f767b3          	or	a5,a4,a5
    166c:	fef42223          	sw	a5,-28(s0)
    1670:	1580006f          	j	17c8 <print_int2inst+0x4bc>
    1674:	fdc42783          	lw	a5,-36(s0)
    1678:	0077d79b          	srliw	a5,a5,0x7
    167c:	0007879b          	sext.w	a5,a5
    1680:	00b7979b          	slliw	a5,a5,0xb
    1684:	0007879b          	sext.w	a5,a5
    1688:	00078713          	mv	a4,a5
    168c:	000017b7          	lui	a5,0x1
    1690:	80078793          	addi	a5,a5,-2048 # 800 <jump_exe+0x5c>
    1694:	00f777b3          	and	a5,a4,a5
    1698:	0007871b          	sext.w	a4,a5
    169c:	fe442783          	lw	a5,-28(s0)
    16a0:	00e7e7b3          	or	a5,a5,a4
    16a4:	fef42223          	sw	a5,-28(s0)
    16a8:	fdc42783          	lw	a5,-36(s0)
    16ac:	0087d79b          	srliw	a5,a5,0x8
    16b0:	0007879b          	sext.w	a5,a5
    16b4:	0017979b          	slliw	a5,a5,0x1
    16b8:	0007879b          	sext.w	a5,a5
    16bc:	01e7f793          	andi	a5,a5,30
    16c0:	0007871b          	sext.w	a4,a5
    16c4:	fe442783          	lw	a5,-28(s0)
    16c8:	00e7e7b3          	or	a5,a5,a4
    16cc:	fef42223          	sw	a5,-28(s0)
    16d0:	fdc42783          	lw	a5,-36(s0)
    16d4:	0197d79b          	srliw	a5,a5,0x19
    16d8:	0007879b          	sext.w	a5,a5
    16dc:	0057979b          	slliw	a5,a5,0x5
    16e0:	0007879b          	sext.w	a5,a5
    16e4:	7e07f793          	andi	a5,a5,2016
    16e8:	0007871b          	sext.w	a4,a5
    16ec:	fe442783          	lw	a5,-28(s0)
    16f0:	00e7e7b3          	or	a5,a5,a4
    16f4:	fef42223          	sw	a5,-28(s0)
    16f8:	fdc42783          	lw	a5,-36(s0)
    16fc:	01f7d79b          	srliw	a5,a5,0x1f
    1700:	0007879b          	sext.w	a5,a5
    1704:	00c7979b          	slliw	a5,a5,0xc
    1708:	0007871b          	sext.w	a4,a5
    170c:	fe442783          	lw	a5,-28(s0)
    1710:	00e7e7b3          	or	a5,a5,a4
    1714:	fef42223          	sw	a5,-28(s0)
    1718:	0b00006f          	j	17c8 <print_int2inst+0x4bc>
    171c:	fdc42703          	lw	a4,-36(s0)
    1720:	fffff7b7          	lui	a5,0xfffff
    1724:	00f777b3          	and	a5,a4,a5
    1728:	fef42223          	sw	a5,-28(s0)
    172c:	09c0006f          	j	17c8 <print_int2inst+0x4bc>
    1730:	fdc42703          	lw	a4,-36(s0)
    1734:	000ff7b7          	lui	a5,0xff
    1738:	00f777b3          	and	a5,a4,a5
    173c:	0007871b          	sext.w	a4,a5
    1740:	fe442783          	lw	a5,-28(s0)
    1744:	00e7e7b3          	or	a5,a5,a4
    1748:	fef42223          	sw	a5,-28(s0)
    174c:	fdc42783          	lw	a5,-36(s0)
    1750:	0147d79b          	srliw	a5,a5,0x14
    1754:	0007879b          	sext.w	a5,a5
    1758:	00b7979b          	slliw	a5,a5,0xb
    175c:	0007879b          	sext.w	a5,a5
    1760:	00078713          	mv	a4,a5
    1764:	000017b7          	lui	a5,0x1
    1768:	80078793          	addi	a5,a5,-2048 # 800 <jump_exe+0x5c>
    176c:	00f777b3          	and	a5,a4,a5
    1770:	0007871b          	sext.w	a4,a5
    1774:	fe442783          	lw	a5,-28(s0)
    1778:	00e7e7b3          	or	a5,a5,a4
    177c:	fef42223          	sw	a5,-28(s0)
    1780:	fdc42783          	lw	a5,-36(s0)
    1784:	0157d79b          	srliw	a5,a5,0x15
    1788:	0007879b          	sext.w	a5,a5
    178c:	0017979b          	slliw	a5,a5,0x1
    1790:	0007879b          	sext.w	a5,a5
    1794:	7fe7f793          	andi	a5,a5,2046
    1798:	0007871b          	sext.w	a4,a5
    179c:	fe442783          	lw	a5,-28(s0)
    17a0:	00e7e7b3          	or	a5,a5,a4
    17a4:	fef42223          	sw	a5,-28(s0)
    17a8:	fdc42783          	lw	a5,-36(s0)
    17ac:	01f7d79b          	srliw	a5,a5,0x1f
    17b0:	0007879b          	sext.w	a5,a5
    17b4:	0147979b          	slliw	a5,a5,0x14
    17b8:	0007871b          	sext.w	a4,a5
    17bc:	fe442783          	lw	a5,-28(s0)
    17c0:	00e7e7b3          	or	a5,a5,a4
    17c4:	fef42223          	sw	a5,-28(s0)
    17c8:	000027b7          	lui	a5,0x2
    17cc:	f7878513          	addi	a0,a5,-136 # 1f78 <INST_CONFIG+0x418>
    17d0:	a65fe0ef          	jal	ra,234 <print>
    17d4:	fe442783          	lw	a5,-28(s0)
    17d8:	00078513          	mv	a0,a5
    17dc:	d15fe0ef          	jal	ra,4f0 <print_hex>
    17e0:	02813083          	ld	ra,40(sp)
    17e4:	02013403          	ld	s0,32(sp)
    17e8:	03010113          	addi	sp,sp,48
    17ec:	00008067          	ret

00000000000017f0 <disas_exe>:
    17f0:	fd010113          	addi	sp,sp,-48
    17f4:	02113423          	sd	ra,40(sp)
    17f8:	02813023          	sd	s0,32(sp)
    17fc:	03010413          	addi	s0,sp,48
    1800:	000027b7          	lui	a5,0x2
    1804:	03878513          	addi	a0,a5,56 # 2038 <buffer>
    1808:	f19fe0ef          	jal	ra,720 <next_word>
    180c:	fea43023          	sd	a0,-32(s0)
    1810:	fe043783          	ld	a5,-32(s0)
    1814:	0007c783          	lbu	a5,0(a5)
    1818:	0c078463          	beqz	a5,18e0 <disas_exe+0xf0>
    181c:	fe043783          	ld	a5,-32(s0)
    1820:	00178793          	addi	a5,a5,1
    1824:	0007c783          	lbu	a5,0(a5)
    1828:	0a078c63          	beqz	a5,18e0 <disas_exe+0xf0>
    182c:	fe043503          	ld	a0,-32(s0)
    1830:	d7dfe0ef          	jal	ra,5ac <str2hex>
    1834:	00050793          	mv	a5,a0
    1838:	fef42623          	sw	a5,-20(s0)
    183c:	fe043503          	ld	a0,-32(s0)
    1840:	ee1fe0ef          	jal	ra,720 <next_word>
    1844:	fea43023          	sd	a0,-32(s0)
    1848:	fe043783          	ld	a5,-32(s0)
    184c:	0007c783          	lbu	a5,0(a5)
    1850:	08078c63          	beqz	a5,18e8 <disas_exe+0xf8>
    1854:	fe043783          	ld	a5,-32(s0)
    1858:	00178793          	addi	a5,a5,1
    185c:	0007c783          	lbu	a5,0(a5)
    1860:	08078463          	beqz	a5,18e8 <disas_exe+0xf8>
    1864:	fe043503          	ld	a0,-32(s0)
    1868:	d45fe0ef          	jal	ra,5ac <str2hex>
    186c:	00050793          	mv	a5,a0
    1870:	fef42423          	sw	a5,-24(s0)
    1874:	0580006f          	j	18cc <disas_exe+0xdc>
    1878:	000027b7          	lui	a5,0x2
    187c:	f4078513          	addi	a0,a5,-192 # 1f40 <INST_CONFIG+0x3e0>
    1880:	9b5fe0ef          	jal	ra,234 <print>
    1884:	fec42783          	lw	a5,-20(s0)
    1888:	00078513          	mv	a0,a5
    188c:	c65fe0ef          	jal	ra,4f0 <print_hex>
    1890:	000027b7          	lui	a5,0x2
    1894:	f4878513          	addi	a0,a5,-184 # 1f48 <INST_CONFIG+0x3e8>
    1898:	99dfe0ef          	jal	ra,234 <print>
    189c:	fec46783          	lwu	a5,-20(s0)
    18a0:	0007a783          	lw	a5,0(a5)
    18a4:	fcf42e23          	sw	a5,-36(s0)
    18a8:	fdc42783          	lw	a5,-36(s0)
    18ac:	00078513          	mv	a0,a5
    18b0:	a5dff0ef          	jal	ra,130c <print_int2inst>
    18b4:	000027b7          	lui	a5,0x2
    18b8:	f3878513          	addi	a0,a5,-200 # 1f38 <INST_CONFIG+0x3d8>
    18bc:	979fe0ef          	jal	ra,234 <print>
    18c0:	fec42783          	lw	a5,-20(s0)
    18c4:	0047879b          	addiw	a5,a5,4
    18c8:	fef42623          	sw	a5,-20(s0)
    18cc:	fe842783          	lw	a5,-24(s0)
    18d0:	fff7871b          	addiw	a4,a5,-1
    18d4:	fee42423          	sw	a4,-24(s0)
    18d8:	fa0790e3          	bnez	a5,1878 <disas_exe+0x88>
    18dc:	0100006f          	j	18ec <disas_exe+0xfc>
    18e0:	00000013          	nop
    18e4:	0080006f          	j	18ec <disas_exe+0xfc>
    18e8:	00000013          	nop
    18ec:	02813083          	ld	ra,40(sp)
    18f0:	02013403          	ld	s0,32(sp)
    18f4:	03010113          	addi	sp,sp,48
    18f8:	00008067          	ret

00000000000018fc <start>:
    18fc:	ff010113          	addi	sp,sp,-16
    1900:	00113423          	sd	ra,8(sp)
    1904:	00813023          	sd	s0,0(sp)
    1908:	01010413          	addi	s0,sp,16
    190c:	000027b7          	lui	a5,0x2
    1910:	f9878513          	addi	a0,a5,-104 # 1f98 <INST_CONFIG+0x438>
    1914:	921fe0ef          	jal	ra,234 <print>
    1918:	000027b7          	lui	a5,0x2
    191c:	fb878513          	addi	a0,a5,-72 # 1fb8 <INST_CONFIG+0x458>
    1920:	915fe0ef          	jal	ra,234 <print>
    1924:	000027b7          	lui	a5,0x2
    1928:	fc878513          	addi	a0,a5,-56 # 1fc8 <INST_CONFIG+0x468>
    192c:	909fe0ef          	jal	ra,234 <print>
    1930:	000027b7          	lui	a5,0x2
    1934:	fd878513          	addi	a0,a5,-40 # 1fd8 <INST_CONFIG+0x478>
    1938:	8fdfe0ef          	jal	ra,234 <print>
    193c:	000027b7          	lui	a5,0x2
    1940:	fe878513          	addi	a0,a5,-24 # 1fe8 <INST_CONFIG+0x488>
    1944:	8f1fe0ef          	jal	ra,234 <print>
    1948:	000027b7          	lui	a5,0x2
    194c:	ff078513          	addi	a0,a5,-16 # 1ff0 <INST_CONFIG+0x490>
    1950:	8e5fe0ef          	jal	ra,234 <print>
    1954:	000027b7          	lui	a5,0x2
    1958:	fe878513          	addi	a0,a5,-24 # 1fe8 <INST_CONFIG+0x488>
    195c:	8d9fe0ef          	jal	ra,234 <print>
    1960:	000027b7          	lui	a5,0x2
    1964:	00878513          	addi	a0,a5,8 # 2008 <INST_CONFIG+0x4a8>
    1968:	8cdfe0ef          	jal	ra,234 <print>
    196c:	000027b7          	lui	a5,0x2
    1970:	fe878513          	addi	a0,a5,-24 # 1fe8 <INST_CONFIG+0x488>
    1974:	8c1fe0ef          	jal	ra,234 <print>
    1978:	000027b7          	lui	a5,0x2
    197c:	01878513          	addi	a0,a5,24 # 2018 <INST_CONFIG+0x4b8>
    1980:	8b5fe0ef          	jal	ra,234 <print>
    1984:	000027b7          	lui	a5,0x2
    1988:	fe878513          	addi	a0,a5,-24 # 1fe8 <INST_CONFIG+0x488>
    198c:	8a9fe0ef          	jal	ra,234 <print>
    1990:	d39fe0ef          	jal	ra,6c8 <init>
    1994:	000027b7          	lui	a5,0x2
    1998:	02878513          	addi	a0,a5,40 # 2028 <INST_CONFIG+0x4c8>
    199c:	899fe0ef          	jal	ra,234 <print>
    19a0:	9b5fe0ef          	jal	ra,354 <get_line>
    19a4:	000027b7          	lui	a5,0x2
    19a8:	0387c783          	lbu	a5,56(a5) # 2038 <buffer>
    19ac:	0007879b          	sext.w	a5,a5
    19b0:	00078693          	mv	a3,a5
    19b4:	04900713          	li	a4,73
    19b8:	06e68663          	beq	a3,a4,1a24 <start+0x128>
    19bc:	00078693          	mv	a3,a5
    19c0:	04900713          	li	a4,73
    19c4:	02d74263          	blt	a4,a3,19e8 <start+0xec>
    19c8:	00078693          	mv	a3,a5
    19cc:	04400713          	li	a4,68
    19d0:	06e68263          	beq	a3,a4,1a34 <start+0x138>
    19d4:	00078693          	mv	a3,a5
    19d8:	04500713          	li	a4,69
    19dc:	04e68063          	beq	a3,a4,1a1c <start+0x120>
    19e0:	06078263          	beqz	a5,1a44 <start+0x148>
    19e4:	0580006f          	j	1a3c <start+0x140>
    19e8:	00078693          	mv	a3,a5
    19ec:	05200713          	li	a4,82
    19f0:	02e68263          	beq	a3,a4,1a14 <start+0x118>
    19f4:	00078693          	mv	a3,a5
    19f8:	05600713          	li	a4,86
    19fc:	02e68863          	beq	a3,a4,1a2c <start+0x130>
    1a00:	00078713          	mv	a4,a5
    1a04:	04a00793          	li	a5,74
    1a08:	02f71a63          	bne	a4,a5,1a3c <start+0x140>
    1a0c:	d99fe0ef          	jal	ra,7a4 <jump_exe>
    1a10:	0380006f          	j	1a48 <start+0x14c>
    1a14:	e01fe0ef          	jal	ra,814 <reg_exe>
    1a18:	0300006f          	j	1a48 <start+0x14c>
    1a1c:	e91fe0ef          	jal	ra,8ac <edit_exe>
    1a20:	0280006f          	j	1a48 <start+0x14c>
    1a24:	f0cff0ef          	jal	ra,1130 <inst_exe>
    1a28:	0200006f          	j	1a48 <start+0x14c>
    1a2c:	fd4ff0ef          	jal	ra,1200 <view_exe>
    1a30:	0180006f          	j	1a48 <start+0x14c>
    1a34:	dbdff0ef          	jal	ra,17f0 <disas_exe>
    1a38:	0100006f          	j	1a48 <start+0x14c>
    1a3c:	c15fe0ef          	jal	ra,650 <print_help>
    1a40:	f55ff06f          	j	1994 <start+0x98>
    1a44:	00000013          	nop
    1a48:	f4dff06f          	j	1994 <start+0x98>

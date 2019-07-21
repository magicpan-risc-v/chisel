
out.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <_start>:
       0:	00000013          	nop
       4:	00018193          	mv	gp,gp
       8:	00030137          	lui	sp,0x30
       c:	0e90106f          	j	18f4 <start>

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
     374:	000027b7          	lui	a5,0x2
     378:	fec42703          	lw	a4,-20(s0)
     37c:	03878793          	addi	a5,a5,56 # 2038 <buffer>
     380:	00f707b3          	add	a5,a4,a5
     384:	00a00713          	li	a4,10
     388:	00e78023          	sb	a4,0(a5)
     38c:	000027b7          	lui	a5,0x2
     390:	fec42703          	lw	a4,-20(s0)
     394:	03878793          	addi	a5,a5,56 # 2038 <buffer>
     398:	00f707b3          	add	a5,a4,a5
     39c:	0007c783          	lbu	a5,0(a5)
     3a0:	00078713          	mv	a4,a5
     3a4:	00a00793          	li	a5,10
     3a8:	fcf710e3          	bne	a4,a5,368 <get_line+0x14>
     3ac:	fec42783          	lw	a5,-20(s0)
     3b0:	0007879b          	sext.w	a5,a5
     3b4:	02f05c63          	blez	a5,3ec <get_line+0x98>
     3b8:	fec42783          	lw	a5,-20(s0)
     3bc:	fff7879b          	addiw	a5,a5,-1
     3c0:	0007871b          	sext.w	a4,a5
     3c4:	000027b7          	lui	a5,0x2
     3c8:	03878793          	addi	a5,a5,56 # 2038 <buffer>
     3cc:	00f707b3          	add	a5,a4,a5
     3d0:	0007c783          	lbu	a5,0(a5)
     3d4:	00078713          	mv	a4,a5
     3d8:	00d00793          	li	a5,13
     3dc:	00f71863          	bne	a4,a5,3ec <get_line+0x98>
     3e0:	fec42783          	lw	a5,-20(s0)
     3e4:	fff7879b          	addiw	a5,a5,-1
     3e8:	fef42623          	sw	a5,-20(s0)
     3ec:	000027b7          	lui	a5,0x2
     3f0:	fec42703          	lw	a4,-20(s0)
     3f4:	03878793          	addi	a5,a5,56 # 2038 <buffer>
     3f8:	00f707b3          	add	a5,a4,a5
     3fc:	00078023          	sb	zero,0(a5)
     400:	00000013          	nop
     404:	01813403          	ld	s0,24(sp)
     408:	02010113          	addi	sp,sp,32
     40c:	00008067          	ret

0000000000000410 <hex2str>:
     410:	fd010113          	addi	sp,sp,-48
     414:	02813423          	sd	s0,40(sp)
     418:	03010413          	addi	s0,sp,48
     41c:	00050793          	mv	a5,a0
     420:	fcb43823          	sd	a1,-48(s0)
     424:	fcf42e23          	sw	a5,-36(s0)
     428:	fd043783          	ld	a5,-48(s0)
     42c:	03000713          	li	a4,48
     430:	00e78023          	sb	a4,0(a5)
     434:	fd043783          	ld	a5,-48(s0)
     438:	00178793          	addi	a5,a5,1
     43c:	07800713          	li	a4,120
     440:	00e78023          	sb	a4,0(a5)
     444:	fe042623          	sw	zero,-20(s0)
     448:	0740006f          	j	4bc <hex2str+0xac>
     44c:	00700713          	li	a4,7
     450:	fec42783          	lw	a5,-20(s0)
     454:	40f707bb          	subw	a5,a4,a5
     458:	0007879b          	sext.w	a5,a5
     45c:	0027979b          	slliw	a5,a5,0x2
     460:	0007879b          	sext.w	a5,a5
     464:	00078713          	mv	a4,a5
     468:	fdc42783          	lw	a5,-36(s0)
     46c:	00e7d7bb          	srlw	a5,a5,a4
     470:	0007879b          	sext.w	a5,a5
     474:	00f7f793          	andi	a5,a5,15
     478:	0007869b          	sext.w	a3,a5
     47c:	fec42783          	lw	a5,-20(s0)
     480:	0027879b          	addiw	a5,a5,2
     484:	0007879b          	sext.w	a5,a5
     488:	00078713          	mv	a4,a5
     48c:	fd043783          	ld	a5,-48(s0)
     490:	00e787b3          	add	a5,a5,a4
     494:	00002737          	lui	a4,0x2
     498:	02069693          	slli	a3,a3,0x20
     49c:	0206d693          	srli	a3,a3,0x20
     4a0:	db870713          	addi	a4,a4,-584 # 1db8 <INST_CONFIG+0x260>
     4a4:	00e68733          	add	a4,a3,a4
     4a8:	00074703          	lbu	a4,0(a4)
     4ac:	00e78023          	sb	a4,0(a5)
     4b0:	fec42783          	lw	a5,-20(s0)
     4b4:	0017879b          	addiw	a5,a5,1
     4b8:	fef42623          	sw	a5,-20(s0)
     4bc:	fec42783          	lw	a5,-20(s0)
     4c0:	0007871b          	sext.w	a4,a5
     4c4:	00700793          	li	a5,7
     4c8:	f8e7d2e3          	bge	a5,a4,44c <hex2str+0x3c>
     4cc:	fd043783          	ld	a5,-48(s0)
     4d0:	00a78793          	addi	a5,a5,10
     4d4:	00078023          	sb	zero,0(a5)
     4d8:	00000013          	nop
     4dc:	02813403          	ld	s0,40(sp)
     4e0:	03010113          	addi	sp,sp,48
     4e4:	00008067          	ret

00000000000004e8 <print_hex>:
     4e8:	fd010113          	addi	sp,sp,-48
     4ec:	02113423          	sd	ra,40(sp)
     4f0:	02813023          	sd	s0,32(sp)
     4f4:	03010413          	addi	s0,sp,48
     4f8:	00050793          	mv	a5,a0
     4fc:	fcf42e23          	sw	a5,-36(s0)
     500:	fe040713          	addi	a4,s0,-32
     504:	fdc42783          	lw	a5,-36(s0)
     508:	00070593          	mv	a1,a4
     50c:	00078513          	mv	a0,a5
     510:	f01ff0ef          	jal	ra,410 <hex2str>
     514:	fe040793          	addi	a5,s0,-32
     518:	00078513          	mv	a0,a5
     51c:	d19ff0ef          	jal	ra,234 <print>
     520:	00000013          	nop
     524:	02813083          	ld	ra,40(sp)
     528:	02013403          	ld	s0,32(sp)
     52c:	03010113          	addi	sp,sp,48
     530:	00008067          	ret

0000000000000534 <hexchar2int>:
     534:	fe010113          	addi	sp,sp,-32
     538:	00813c23          	sd	s0,24(sp)
     53c:	02010413          	addi	s0,sp,32
     540:	00050793          	mv	a5,a0
     544:	fef407a3          	sb	a5,-17(s0)
     548:	fef44783          	lbu	a5,-17(s0)
     54c:	0ff7f713          	andi	a4,a5,255
     550:	02f00793          	li	a5,47
     554:	02e7f663          	bgeu	a5,a4,580 <hexchar2int+0x4c>
     558:	fef44783          	lbu	a5,-17(s0)
     55c:	0ff7f713          	andi	a4,a5,255
     560:	03900793          	li	a5,57
     564:	00e7ee63          	bltu	a5,a4,580 <hexchar2int+0x4c>
     568:	fef44783          	lbu	a5,-17(s0)
     56c:	0007879b          	sext.w	a5,a5
     570:	fd07879b          	addiw	a5,a5,-48
     574:	0007879b          	sext.w	a5,a5
     578:	0007879b          	sext.w	a5,a5
     57c:	0180006f          	j	594 <hexchar2int+0x60>
     580:	fef44783          	lbu	a5,-17(s0)
     584:	0007879b          	sext.w	a5,a5
     588:	fa97879b          	addiw	a5,a5,-87
     58c:	0007879b          	sext.w	a5,a5
     590:	0007879b          	sext.w	a5,a5
     594:	00078513          	mv	a0,a5
     598:	01813403          	ld	s0,24(sp)
     59c:	02010113          	addi	sp,sp,32
     5a0:	00008067          	ret

00000000000005a4 <str2hex>:
     5a4:	fc010113          	addi	sp,sp,-64
     5a8:	02113c23          	sd	ra,56(sp)
     5ac:	02813823          	sd	s0,48(sp)
     5b0:	02913423          	sd	s1,40(sp)
     5b4:	04010413          	addi	s0,sp,64
     5b8:	fca43423          	sd	a0,-56(s0)
     5bc:	fc843783          	ld	a5,-56(s0)
     5c0:	00278793          	addi	a5,a5,2
     5c4:	fcf43423          	sd	a5,-56(s0)
     5c8:	fc042e23          	sw	zero,-36(s0)
     5cc:	0400006f          	j	60c <str2hex+0x68>
     5d0:	fdc42783          	lw	a5,-36(s0)
     5d4:	0047979b          	slliw	a5,a5,0x4
     5d8:	0007849b          	sext.w	s1,a5
     5dc:	fc843783          	ld	a5,-56(s0)
     5e0:	0007c783          	lbu	a5,0(a5)
     5e4:	00078513          	mv	a0,a5
     5e8:	f4dff0ef          	jal	ra,534 <hexchar2int>
     5ec:	00050793          	mv	a5,a0
     5f0:	0007879b          	sext.w	a5,a5
     5f4:	00048713          	mv	a4,s1
     5f8:	00f767b3          	or	a5,a4,a5
     5fc:	fcf42e23          	sw	a5,-36(s0)
     600:	fc843783          	ld	a5,-56(s0)
     604:	00178793          	addi	a5,a5,1
     608:	fcf43423          	sd	a5,-56(s0)
     60c:	fc843783          	ld	a5,-56(s0)
     610:	0007c783          	lbu	a5,0(a5)
     614:	00078c63          	beqz	a5,62c <str2hex+0x88>
     618:	fc843783          	ld	a5,-56(s0)
     61c:	0007c783          	lbu	a5,0(a5)
     620:	00078713          	mv	a4,a5
     624:	02000793          	li	a5,32
     628:	faf714e3          	bne	a4,a5,5d0 <str2hex+0x2c>
     62c:	fdc42783          	lw	a5,-36(s0)
     630:	00078513          	mv	a0,a5
     634:	03813083          	ld	ra,56(sp)
     638:	03013403          	ld	s0,48(sp)
     63c:	02813483          	ld	s1,40(sp)
     640:	04010113          	addi	sp,sp,64
     644:	00008067          	ret

0000000000000648 <print_help>:
     648:	ff010113          	addi	sp,sp,-16
     64c:	00113423          	sd	ra,8(sp)
     650:	00813023          	sd	s0,0(sp)
     654:	01010413          	addi	s0,sp,16
     658:	000027b7          	lui	a5,0x2
     65c:	dd078513          	addi	a0,a5,-560 # 1dd0 <INST_CONFIG+0x278>
     660:	bd5ff0ef          	jal	ra,234 <print>
     664:	000027b7          	lui	a5,0x2
     668:	de078513          	addi	a0,a5,-544 # 1de0 <INST_CONFIG+0x288>
     66c:	bc9ff0ef          	jal	ra,234 <print>
     670:	000027b7          	lui	a5,0x2
     674:	e0878513          	addi	a0,a5,-504 # 1e08 <INST_CONFIG+0x2b0>
     678:	bbdff0ef          	jal	ra,234 <print>
     67c:	000027b7          	lui	a5,0x2
     680:	e4078513          	addi	a0,a5,-448 # 1e40 <INST_CONFIG+0x2e8>
     684:	bb1ff0ef          	jal	ra,234 <print>
     688:	000027b7          	lui	a5,0x2
     68c:	e7078513          	addi	a0,a5,-400 # 1e70 <INST_CONFIG+0x318>
     690:	ba5ff0ef          	jal	ra,234 <print>
     694:	000027b7          	lui	a5,0x2
     698:	ea878513          	addi	a0,a5,-344 # 1ea8 <INST_CONFIG+0x350>
     69c:	b99ff0ef          	jal	ra,234 <print>
     6a0:	000027b7          	lui	a5,0x2
     6a4:	ee078513          	addi	a0,a5,-288 # 1ee0 <INST_CONFIG+0x388>
     6a8:	b8dff0ef          	jal	ra,234 <print>
     6ac:	00000013          	nop
     6b0:	00813083          	ld	ra,8(sp)
     6b4:	00013403          	ld	s0,0(sp)
     6b8:	01010113          	addi	sp,sp,16
     6bc:	00008067          	ret

00000000000006c0 <init>:
     6c0:	fe010113          	addi	sp,sp,-32
     6c4:	00813c23          	sd	s0,24(sp)
     6c8:	02010413          	addi	s0,sp,32
     6cc:	fe042623          	sw	zero,-20(s0)
     6d0:	0280006f          	j	6f8 <init+0x38>
     6d4:	000027b7          	lui	a5,0x2
     6d8:	fec42703          	lw	a4,-20(s0)
     6dc:	00271713          	slli	a4,a4,0x2
     6e0:	07878793          	addi	a5,a5,120 # 2078 <regs>
     6e4:	00f707b3          	add	a5,a4,a5
     6e8:	0007a023          	sw	zero,0(a5)
     6ec:	fec42783          	lw	a5,-20(s0)
     6f0:	0017879b          	addiw	a5,a5,1
     6f4:	fef42623          	sw	a5,-20(s0)
     6f8:	fec42783          	lw	a5,-20(s0)
     6fc:	0007871b          	sext.w	a4,a5
     700:	01f00793          	li	a5,31
     704:	fce7d8e3          	bge	a5,a4,6d4 <init+0x14>
     708:	00000013          	nop
     70c:	01813403          	ld	s0,24(sp)
     710:	02010113          	addi	sp,sp,32
     714:	00008067          	ret

0000000000000718 <next_word>:
     718:	fe010113          	addi	sp,sp,-32
     71c:	00813c23          	sd	s0,24(sp)
     720:	02010413          	addi	s0,sp,32
     724:	fea43423          	sd	a0,-24(s0)
     728:	0100006f          	j	738 <next_word+0x20>
     72c:	fe843783          	ld	a5,-24(s0)
     730:	00178793          	addi	a5,a5,1
     734:	fef43423          	sd	a5,-24(s0)
     738:	fe843783          	ld	a5,-24(s0)
     73c:	0007c783          	lbu	a5,0(a5)
     740:	02078463          	beqz	a5,768 <next_word+0x50>
     744:	fe843783          	ld	a5,-24(s0)
     748:	0007c783          	lbu	a5,0(a5)
     74c:	00078713          	mv	a4,a5
     750:	02000793          	li	a5,32
     754:	fcf71ce3          	bne	a4,a5,72c <next_word+0x14>
     758:	0100006f          	j	768 <next_word+0x50>
     75c:	fe843783          	ld	a5,-24(s0)
     760:	00178793          	addi	a5,a5,1
     764:	fef43423          	sd	a5,-24(s0)
     768:	fe843783          	ld	a5,-24(s0)
     76c:	0007c783          	lbu	a5,0(a5)
     770:	00078c63          	beqz	a5,788 <next_word+0x70>
     774:	fe843783          	ld	a5,-24(s0)
     778:	0007c783          	lbu	a5,0(a5)
     77c:	00078713          	mv	a4,a5
     780:	02000793          	li	a5,32
     784:	fcf70ce3          	beq	a4,a5,75c <next_word+0x44>
     788:	fe843783          	ld	a5,-24(s0)
     78c:	00078513          	mv	a0,a5
     790:	01813403          	ld	s0,24(sp)
     794:	02010113          	addi	sp,sp,32
     798:	00008067          	ret

000000000000079c <jump_exe>:
     79c:	fe010113          	addi	sp,sp,-32
     7a0:	00113c23          	sd	ra,24(sp)
     7a4:	00813823          	sd	s0,16(sp)
     7a8:	02010413          	addi	s0,sp,32
     7ac:	000027b7          	lui	a5,0x2
     7b0:	03878513          	addi	a0,a5,56 # 2038 <buffer>
     7b4:	f65ff0ef          	jal	ra,718 <next_word>
     7b8:	fea43423          	sd	a0,-24(s0)
     7bc:	fe843783          	ld	a5,-24(s0)
     7c0:	0007c783          	lbu	a5,0(a5)
     7c4:	02078a63          	beqz	a5,7f8 <jump_exe+0x5c>
     7c8:	fe843783          	ld	a5,-24(s0)
     7cc:	00178793          	addi	a5,a5,1
     7d0:	0007c783          	lbu	a5,0(a5)
     7d4:	02078263          	beqz	a5,7f8 <jump_exe+0x5c>
     7d8:	fe843503          	ld	a0,-24(s0)
     7dc:	dc9ff0ef          	jal	ra,5a4 <str2hex>
     7e0:	00050793          	mv	a5,a0
     7e4:	fef42223          	sw	a5,-28(s0)
     7e8:	fe442783          	lw	a5,-28(s0)
     7ec:	00078513          	mv	a0,a5
     7f0:	821ff0ef          	jal	ra,10 <_entry>
     7f4:	0080006f          	j	7fc <jump_exe+0x60>
     7f8:	00000013          	nop
     7fc:	01813083          	ld	ra,24(sp)
     800:	01013403          	ld	s0,16(sp)
     804:	02010113          	addi	sp,sp,32
     808:	00008067          	ret

000000000000080c <reg_exe>:
     80c:	fe010113          	addi	sp,sp,-32
     810:	00113c23          	sd	ra,24(sp)
     814:	00813823          	sd	s0,16(sp)
     818:	02010413          	addi	s0,sp,32
     81c:	fe042623          	sw	zero,-20(s0)
     820:	0600006f          	j	880 <reg_exe+0x74>
     824:	000027b7          	lui	a5,0x2
     828:	f2078513          	addi	a0,a5,-224 # 1f20 <INST_CONFIG+0x3c8>
     82c:	a09ff0ef          	jal	ra,234 <print>
     830:	fec42783          	lw	a5,-20(s0)
     834:	00078513          	mv	a0,a5
     838:	cb1ff0ef          	jal	ra,4e8 <print_hex>
     83c:	000027b7          	lui	a5,0x2
     840:	f2878513          	addi	a0,a5,-216 # 1f28 <INST_CONFIG+0x3d0>
     844:	9f1ff0ef          	jal	ra,234 <print>
     848:	000027b7          	lui	a5,0x2
     84c:	fec42703          	lw	a4,-20(s0)
     850:	00271713          	slli	a4,a4,0x2
     854:	07878793          	addi	a5,a5,120 # 2078 <regs>
     858:	00f707b3          	add	a5,a4,a5
     85c:	0007a783          	lw	a5,0(a5)
     860:	00078513          	mv	a0,a5
     864:	c85ff0ef          	jal	ra,4e8 <print_hex>
     868:	000027b7          	lui	a5,0x2
     86c:	f3078513          	addi	a0,a5,-208 # 1f30 <INST_CONFIG+0x3d8>
     870:	9c5ff0ef          	jal	ra,234 <print>
     874:	fec42783          	lw	a5,-20(s0)
     878:	0017879b          	addiw	a5,a5,1
     87c:	fef42623          	sw	a5,-20(s0)
     880:	fec42783          	lw	a5,-20(s0)
     884:	0007871b          	sext.w	a4,a5
     888:	01f00793          	li	a5,31
     88c:	f8e7dce3          	bge	a5,a4,824 <reg_exe+0x18>
     890:	00000013          	nop
     894:	01813083          	ld	ra,24(sp)
     898:	01013403          	ld	s0,16(sp)
     89c:	02010113          	addi	sp,sp,32
     8a0:	00008067          	ret

00000000000008a4 <edit_exe>:
     8a4:	fd010113          	addi	sp,sp,-48
     8a8:	02113423          	sd	ra,40(sp)
     8ac:	02813023          	sd	s0,32(sp)
     8b0:	03010413          	addi	s0,sp,48
     8b4:	000027b7          	lui	a5,0x2
     8b8:	03878513          	addi	a0,a5,56 # 2038 <buffer>
     8bc:	e5dff0ef          	jal	ra,718 <next_word>
     8c0:	fea43023          	sd	a0,-32(s0)
     8c4:	fe043783          	ld	a5,-32(s0)
     8c8:	0007c783          	lbu	a5,0(a5)
     8cc:	08078e63          	beqz	a5,968 <edit_exe+0xc4>
     8d0:	fe043783          	ld	a5,-32(s0)
     8d4:	00178793          	addi	a5,a5,1
     8d8:	0007c783          	lbu	a5,0(a5)
     8dc:	08078663          	beqz	a5,968 <edit_exe+0xc4>
     8e0:	fe043503          	ld	a0,-32(s0)
     8e4:	cc1ff0ef          	jal	ra,5a4 <str2hex>
     8e8:	00050793          	mv	a5,a0
     8ec:	fef42623          	sw	a5,-20(s0)
     8f0:	000027b7          	lui	a5,0x2
     8f4:	f3878513          	addi	a0,a5,-200 # 1f38 <INST_CONFIG+0x3e0>
     8f8:	93dff0ef          	jal	ra,234 <print>
     8fc:	fec42783          	lw	a5,-20(s0)
     900:	00078513          	mv	a0,a5
     904:	be5ff0ef          	jal	ra,4e8 <print_hex>
     908:	000027b7          	lui	a5,0x2
     90c:	f4078513          	addi	a0,a5,-192 # 1f40 <INST_CONFIG+0x3e8>
     910:	925ff0ef          	jal	ra,234 <print>
     914:	a41ff0ef          	jal	ra,354 <get_line>
     918:	000027b7          	lui	a5,0x2
     91c:	0387c783          	lbu	a5,56(a5) # 2038 <buffer>
     920:	04078663          	beqz	a5,96c <edit_exe+0xc8>
     924:	000027b7          	lui	a5,0x2
     928:	03878793          	addi	a5,a5,56 # 2038 <buffer>
     92c:	0017c783          	lbu	a5,1(a5)
     930:	02078e63          	beqz	a5,96c <edit_exe+0xc8>
     934:	000027b7          	lui	a5,0x2
     938:	03878513          	addi	a0,a5,56 # 2038 <buffer>
     93c:	c69ff0ef          	jal	ra,5a4 <str2hex>
     940:	00050793          	mv	a5,a0
     944:	fcf42e23          	sw	a5,-36(s0)
     948:	fec46783          	lwu	a5,-20(s0)
     94c:	00078713          	mv	a4,a5
     950:	fdc42783          	lw	a5,-36(s0)
     954:	00f72023          	sw	a5,0(a4)
     958:	fec42783          	lw	a5,-20(s0)
     95c:	0047879b          	addiw	a5,a5,4
     960:	fef42623          	sw	a5,-20(s0)
     964:	f8dff06f          	j	8f0 <edit_exe+0x4c>
     968:	00000013          	nop
     96c:	02813083          	ld	ra,40(sp)
     970:	02013403          	ld	s0,32(sp)
     974:	03010113          	addi	sp,sp,48
     978:	00008067          	ret

000000000000097c <parse_arg>:
     97c:	fe010113          	addi	sp,sp,-32
     980:	00113c23          	sd	ra,24(sp)
     984:	00813823          	sd	s0,16(sp)
     988:	02010413          	addi	s0,sp,32
     98c:	fea43423          	sd	a0,-24(s0)
     990:	feb43023          	sd	a1,-32(s0)
     994:	fe843783          	ld	a5,-24(s0)
     998:	0007c783          	lbu	a5,0(a5)
     99c:	00078a63          	beqz	a5,9b0 <parse_arg+0x34>
     9a0:	fe843783          	ld	a5,-24(s0)
     9a4:	00178793          	addi	a5,a5,1
     9a8:	0007c783          	lbu	a5,0(a5)
     9ac:	00079663          	bnez	a5,9b8 <parse_arg+0x3c>
     9b0:	00000793          	li	a5,0
     9b4:	0b40006f          	j	a68 <parse_arg+0xec>
     9b8:	fe843783          	ld	a5,-24(s0)
     9bc:	0007c783          	lbu	a5,0(a5)
     9c0:	00078713          	mv	a4,a5
     9c4:	03000793          	li	a5,48
     9c8:	02f71c63          	bne	a4,a5,a00 <parse_arg+0x84>
     9cc:	fe843783          	ld	a5,-24(s0)
     9d0:	00178793          	addi	a5,a5,1
     9d4:	0007c783          	lbu	a5,0(a5)
     9d8:	00078713          	mv	a4,a5
     9dc:	07800793          	li	a5,120
     9e0:	02f71063          	bne	a4,a5,a00 <parse_arg+0x84>
     9e4:	fe843503          	ld	a0,-24(s0)
     9e8:	bbdff0ef          	jal	ra,5a4 <str2hex>
     9ec:	00050793          	mv	a5,a0
     9f0:	0007871b          	sext.w	a4,a5
     9f4:	fe043783          	ld	a5,-32(s0)
     9f8:	00e7a023          	sw	a4,0(a5)
     9fc:	0680006f          	j	a64 <parse_arg+0xe8>
     a00:	fe843783          	ld	a5,-24(s0)
     a04:	0007c783          	lbu	a5,0(a5)
     a08:	00078713          	mv	a4,a5
     a0c:	07800793          	li	a5,120
     a10:	04f71a63          	bne	a4,a5,a64 <parse_arg+0xe8>
     a14:	fe843783          	ld	a5,-24(s0)
     a18:	00178793          	addi	a5,a5,1
     a1c:	0007c783          	lbu	a5,0(a5)
     a20:	00078713          	mv	a4,a5
     a24:	03000793          	li	a5,48
     a28:	02f71e63          	bne	a4,a5,a64 <parse_arg+0xe8>
     a2c:	fe843783          	ld	a5,-24(s0)
     a30:	00278793          	addi	a5,a5,2
     a34:	0007c783          	lbu	a5,0(a5)
     a38:	00078713          	mv	a4,a5
     a3c:	07800793          	li	a5,120
     a40:	02f71263          	bne	a4,a5,a64 <parse_arg+0xe8>
     a44:	fe843783          	ld	a5,-24(s0)
     a48:	00178793          	addi	a5,a5,1
     a4c:	00078513          	mv	a0,a5
     a50:	b55ff0ef          	jal	ra,5a4 <str2hex>
     a54:	00050793          	mv	a5,a0
     a58:	0007871b          	sext.w	a4,a5
     a5c:	fe043783          	ld	a5,-32(s0)
     a60:	00e7a023          	sw	a4,0(a5)
     a64:	00100793          	li	a5,1
     a68:	00078513          	mv	a0,a5
     a6c:	01813083          	ld	ra,24(sp)
     a70:	01013403          	ld	s0,16(sp)
     a74:	02010113          	addi	sp,sp,32
     a78:	00008067          	ret

0000000000000a7c <inst2int>:
     a7c:	fc010113          	addi	sp,sp,-64
     a80:	02113c23          	sd	ra,56(sp)
     a84:	02813823          	sd	s0,48(sp)
     a88:	04010413          	addi	s0,sp,64
     a8c:	fca43423          	sd	a0,-56(s0)
     a90:	fe042623          	sw	zero,-20(s0)
     a94:	1000006f          	j	b94 <inst2int+0x118>
     a98:	fe042423          	sw	zero,-24(s0)
     a9c:	0100006f          	j	aac <inst2int+0x30>
     aa0:	fe842783          	lw	a5,-24(s0)
     aa4:	0017879b          	addiw	a5,a5,1
     aa8:	fef42423          	sw	a5,-24(s0)
     aac:	00002637          	lui	a2,0x2
     ab0:	fe842683          	lw	a3,-24(s0)
     ab4:	fec42703          	lw	a4,-20(s0)
     ab8:	00070793          	mv	a5,a4
     abc:	00379793          	slli	a5,a5,0x3
     ac0:	40e787b3          	sub	a5,a5,a4
     ac4:	a4860713          	addi	a4,a2,-1464 # 1a48 <INST_NAMES>
     ac8:	00e787b3          	add	a5,a5,a4
     acc:	00d787b3          	add	a5,a5,a3
     ad0:	0007c783          	lbu	a5,0(a5)
     ad4:	04078c63          	beqz	a5,b2c <inst2int+0xb0>
     ad8:	fe842783          	lw	a5,-24(s0)
     adc:	fc843703          	ld	a4,-56(s0)
     ae0:	00f707b3          	add	a5,a4,a5
     ae4:	0007c783          	lbu	a5,0(a5)
     ae8:	04078263          	beqz	a5,b2c <inst2int+0xb0>
     aec:	00002637          	lui	a2,0x2
     af0:	fe842683          	lw	a3,-24(s0)
     af4:	fec42703          	lw	a4,-20(s0)
     af8:	00070793          	mv	a5,a4
     afc:	00379793          	slli	a5,a5,0x3
     b00:	40e787b3          	sub	a5,a5,a4
     b04:	a4860713          	addi	a4,a2,-1464 # 1a48 <INST_NAMES>
     b08:	00e787b3          	add	a5,a5,a4
     b0c:	00d787b3          	add	a5,a5,a3
     b10:	0007c683          	lbu	a3,0(a5)
     b14:	fe842783          	lw	a5,-24(s0)
     b18:	fc843703          	ld	a4,-56(s0)
     b1c:	00f707b3          	add	a5,a4,a5
     b20:	0007c783          	lbu	a5,0(a5)
     b24:	00068713          	mv	a4,a3
     b28:	f6f70ce3          	beq	a4,a5,aa0 <inst2int+0x24>
     b2c:	00002637          	lui	a2,0x2
     b30:	fe842683          	lw	a3,-24(s0)
     b34:	fec42703          	lw	a4,-20(s0)
     b38:	00070793          	mv	a5,a4
     b3c:	00379793          	slli	a5,a5,0x3
     b40:	40e787b3          	sub	a5,a5,a4
     b44:	a4860713          	addi	a4,a2,-1464 # 1a48 <INST_NAMES>
     b48:	00e787b3          	add	a5,a5,a4
     b4c:	00d787b3          	add	a5,a5,a3
     b50:	0007c783          	lbu	a5,0(a5)
     b54:	02079a63          	bnez	a5,b88 <inst2int+0x10c>
     b58:	fe842783          	lw	a5,-24(s0)
     b5c:	fc843703          	ld	a4,-56(s0)
     b60:	00f707b3          	add	a5,a4,a5
     b64:	0007c783          	lbu	a5,0(a5)
     b68:	02078e63          	beqz	a5,ba4 <inst2int+0x128>
     b6c:	fe842783          	lw	a5,-24(s0)
     b70:	fc843703          	ld	a4,-56(s0)
     b74:	00f707b3          	add	a5,a4,a5
     b78:	0007c783          	lbu	a5,0(a5)
     b7c:	00078713          	mv	a4,a5
     b80:	02000793          	li	a5,32
     b84:	02f70063          	beq	a4,a5,ba4 <inst2int+0x128>
     b88:	fec42783          	lw	a5,-20(s0)
     b8c:	0017879b          	addiw	a5,a5,1
     b90:	fef42623          	sw	a5,-20(s0)
     b94:	fec42783          	lw	a5,-20(s0)
     b98:	0007871b          	sext.w	a4,a5
     b9c:	02500793          	li	a5,37
     ba0:	eee7dce3          	bge	a5,a4,a98 <inst2int+0x1c>
     ba4:	fec42783          	lw	a5,-20(s0)
     ba8:	0007871b          	sext.w	a4,a5
     bac:	02600793          	li	a5,38
     bb0:	00f71663          	bne	a4,a5,bbc <inst2int+0x140>
     bb4:	00000793          	li	a5,0
     bb8:	55c0006f          	j	1114 <inst2int+0x698>
     bbc:	000027b7          	lui	a5,0x2
     bc0:	fec42703          	lw	a4,-20(s0)
     bc4:	00471713          	slli	a4,a4,0x4
     bc8:	b5878793          	addi	a5,a5,-1192 # 1b58 <INST_CONFIG>
     bcc:	00f707b3          	add	a5,a4,a5
     bd0:	0047a783          	lw	a5,4(a5)
     bd4:	fef42223          	sw	a5,-28(s0)
     bd8:	000027b7          	lui	a5,0x2
     bdc:	fec42703          	lw	a4,-20(s0)
     be0:	00471713          	slli	a4,a4,0x4
     be4:	b5878793          	addi	a5,a5,-1192 # 1b58 <INST_CONFIG>
     be8:	00f707b3          	add	a5,a4,a5
     bec:	0007a783          	lw	a5,0(a5)
     bf0:	fef42023          	sw	a5,-32(s0)
     bf4:	fe042783          	lw	a5,-32(s0)
     bf8:	0007871b          	sext.w	a4,a5
     bfc:	00600793          	li	a5,6
     c00:	02f71863          	bne	a4,a5,c30 <inst2int+0x1b4>
     c04:	000027b7          	lui	a5,0x2
     c08:	fec42703          	lw	a4,-20(s0)
     c0c:	00471713          	slli	a4,a4,0x4
     c10:	b5878793          	addi	a5,a5,-1192 # 1b58 <INST_CONFIG>
     c14:	00f707b3          	add	a5,a4,a5
     c18:	0087a783          	lw	a5,8(a5)
     c1c:	0077979b          	slliw	a5,a5,0x7
     c20:	0007871b          	sext.w	a4,a5
     c24:	fe442783          	lw	a5,-28(s0)
     c28:	00e7e7b3          	or	a5,a5,a4
     c2c:	fef42223          	sw	a5,-28(s0)
     c30:	fe042783          	lw	a5,-32(s0)
     c34:	0007879b          	sext.w	a5,a5
     c38:	02078a63          	beqz	a5,c6c <inst2int+0x1f0>
     c3c:	fe042783          	lw	a5,-32(s0)
     c40:	0007871b          	sext.w	a4,a5
     c44:	00100793          	li	a5,1
     c48:	02f70263          	beq	a4,a5,c6c <inst2int+0x1f0>
     c4c:	fe042783          	lw	a5,-32(s0)
     c50:	0007871b          	sext.w	a4,a5
     c54:	00200793          	li	a5,2
     c58:	00f70a63          	beq	a4,a5,c6c <inst2int+0x1f0>
     c5c:	fe042783          	lw	a5,-32(s0)
     c60:	0007871b          	sext.w	a4,a5
     c64:	00300793          	li	a5,3
     c68:	04f71063          	bne	a4,a5,ca8 <inst2int+0x22c>
     c6c:	000027b7          	lui	a5,0x2
     c70:	fec42703          	lw	a4,-20(s0)
     c74:	00471713          	slli	a4,a4,0x4
     c78:	b5878793          	addi	a5,a5,-1192 # 1b58 <INST_CONFIG>
     c7c:	00f707b3          	add	a5,a4,a5
     c80:	0087a783          	lw	a5,8(a5)
     c84:	00c7979b          	slliw	a5,a5,0xc
     c88:	0007879b          	sext.w	a5,a5
     c8c:	00078713          	mv	a4,a5
     c90:	000077b7          	lui	a5,0x7
     c94:	00f777b3          	and	a5,a4,a5
     c98:	0007871b          	sext.w	a4,a5
     c9c:	fe442783          	lw	a5,-28(s0)
     ca0:	00e7e7b3          	or	a5,a5,a4
     ca4:	fef42223          	sw	a5,-28(s0)
     ca8:	fe042783          	lw	a5,-32(s0)
     cac:	0007879b          	sext.w	a5,a5
     cb0:	02079863          	bnez	a5,ce0 <inst2int+0x264>
     cb4:	000027b7          	lui	a5,0x2
     cb8:	fec42703          	lw	a4,-20(s0)
     cbc:	00471713          	slli	a4,a4,0x4
     cc0:	b5878793          	addi	a5,a5,-1192 # 1b58 <INST_CONFIG>
     cc4:	00f707b3          	add	a5,a4,a5
     cc8:	00c7a783          	lw	a5,12(a5)
     ccc:	0197979b          	slliw	a5,a5,0x19
     cd0:	0007871b          	sext.w	a4,a5
     cd4:	fe442783          	lw	a5,-28(s0)
     cd8:	00e7e7b3          	or	a5,a5,a4
     cdc:	fef42223          	sw	a5,-28(s0)
     ce0:	fe042783          	lw	a5,-32(s0)
     ce4:	0007879b          	sext.w	a5,a5
     ce8:	02078a63          	beqz	a5,d1c <inst2int+0x2a0>
     cec:	fe042783          	lw	a5,-32(s0)
     cf0:	0007871b          	sext.w	a4,a5
     cf4:	00100793          	li	a5,1
     cf8:	02f70263          	beq	a4,a5,d1c <inst2int+0x2a0>
     cfc:	fe042783          	lw	a5,-32(s0)
     d00:	0007871b          	sext.w	a4,a5
     d04:	00400793          	li	a5,4
     d08:	00f70a63          	beq	a4,a5,d1c <inst2int+0x2a0>
     d0c:	fe042783          	lw	a5,-32(s0)
     d10:	0007871b          	sext.w	a4,a5
     d14:	00500793          	li	a5,5
     d18:	06f71463          	bne	a4,a5,d80 <inst2int+0x304>
     d1c:	fc843503          	ld	a0,-56(s0)
     d20:	9f9ff0ef          	jal	ra,718 <next_word>
     d24:	fca43423          	sd	a0,-56(s0)
     d28:	fd840793          	addi	a5,s0,-40
     d2c:	00078593          	mv	a1,a5
     d30:	fc843503          	ld	a0,-56(s0)
     d34:	c49ff0ef          	jal	ra,97c <parse_arg>
     d38:	00050793          	mv	a5,a0
     d3c:	fcf42e23          	sw	a5,-36(s0)
     d40:	fdc42783          	lw	a5,-36(s0)
     d44:	0007879b          	sext.w	a5,a5
     d48:	00079663          	bnez	a5,d54 <inst2int+0x2d8>
     d4c:	00000793          	li	a5,0
     d50:	3c40006f          	j	1114 <inst2int+0x698>
     d54:	fd842783          	lw	a5,-40(s0)
     d58:	0077979b          	slliw	a5,a5,0x7
     d5c:	0007879b          	sext.w	a5,a5
     d60:	00078713          	mv	a4,a5
     d64:	000017b7          	lui	a5,0x1
     d68:	f8078793          	addi	a5,a5,-128 # f80 <inst2int+0x504>
     d6c:	00f777b3          	and	a5,a4,a5
     d70:	0007871b          	sext.w	a4,a5
     d74:	fe442783          	lw	a5,-28(s0)
     d78:	00e7e7b3          	or	a5,a5,a4
     d7c:	fef42223          	sw	a5,-28(s0)
     d80:	fe042783          	lw	a5,-32(s0)
     d84:	0007879b          	sext.w	a5,a5
     d88:	02078a63          	beqz	a5,dbc <inst2int+0x340>
     d8c:	fe042783          	lw	a5,-32(s0)
     d90:	0007871b          	sext.w	a4,a5
     d94:	00100793          	li	a5,1
     d98:	02f70263          	beq	a4,a5,dbc <inst2int+0x340>
     d9c:	fe042783          	lw	a5,-32(s0)
     da0:	0007871b          	sext.w	a4,a5
     da4:	00200793          	li	a5,2
     da8:	00f70a63          	beq	a4,a5,dbc <inst2int+0x340>
     dac:	fe042783          	lw	a5,-32(s0)
     db0:	0007871b          	sext.w	a4,a5
     db4:	00300793          	li	a5,3
     db8:	06f71263          	bne	a4,a5,e1c <inst2int+0x3a0>
     dbc:	fc843503          	ld	a0,-56(s0)
     dc0:	959ff0ef          	jal	ra,718 <next_word>
     dc4:	fca43423          	sd	a0,-56(s0)
     dc8:	fd840793          	addi	a5,s0,-40
     dcc:	00078593          	mv	a1,a5
     dd0:	fc843503          	ld	a0,-56(s0)
     dd4:	ba9ff0ef          	jal	ra,97c <parse_arg>
     dd8:	00050793          	mv	a5,a0
     ddc:	fcf42e23          	sw	a5,-36(s0)
     de0:	fdc42783          	lw	a5,-36(s0)
     de4:	0007879b          	sext.w	a5,a5
     de8:	00079663          	bnez	a5,df4 <inst2int+0x378>
     dec:	00000793          	li	a5,0
     df0:	3240006f          	j	1114 <inst2int+0x698>
     df4:	fd842783          	lw	a5,-40(s0)
     df8:	00f7979b          	slliw	a5,a5,0xf
     dfc:	0007879b          	sext.w	a5,a5
     e00:	00078713          	mv	a4,a5
     e04:	000f87b7          	lui	a5,0xf8
     e08:	00f777b3          	and	a5,a4,a5
     e0c:	0007871b          	sext.w	a4,a5
     e10:	fe442783          	lw	a5,-28(s0)
     e14:	00e7e7b3          	or	a5,a5,a4
     e18:	fef42223          	sw	a5,-28(s0)
     e1c:	fe042783          	lw	a5,-32(s0)
     e20:	0007879b          	sext.w	a5,a5
     e24:	02078263          	beqz	a5,e48 <inst2int+0x3cc>
     e28:	fe042783          	lw	a5,-32(s0)
     e2c:	0007871b          	sext.w	a4,a5
     e30:	00200793          	li	a5,2
     e34:	00f70a63          	beq	a4,a5,e48 <inst2int+0x3cc>
     e38:	fe042783          	lw	a5,-32(s0)
     e3c:	0007871b          	sext.w	a4,a5
     e40:	00300793          	li	a5,3
     e44:	06f71263          	bne	a4,a5,ea8 <inst2int+0x42c>
     e48:	fc843503          	ld	a0,-56(s0)
     e4c:	8cdff0ef          	jal	ra,718 <next_word>
     e50:	fca43423          	sd	a0,-56(s0)
     e54:	fd840793          	addi	a5,s0,-40
     e58:	00078593          	mv	a1,a5
     e5c:	fc843503          	ld	a0,-56(s0)
     e60:	b1dff0ef          	jal	ra,97c <parse_arg>
     e64:	00050793          	mv	a5,a0
     e68:	fcf42e23          	sw	a5,-36(s0)
     e6c:	fdc42783          	lw	a5,-36(s0)
     e70:	0007879b          	sext.w	a5,a5
     e74:	00079663          	bnez	a5,e80 <inst2int+0x404>
     e78:	00000793          	li	a5,0
     e7c:	2980006f          	j	1114 <inst2int+0x698>
     e80:	fd842783          	lw	a5,-40(s0)
     e84:	0147979b          	slliw	a5,a5,0x14
     e88:	0007879b          	sext.w	a5,a5
     e8c:	00078713          	mv	a4,a5
     e90:	01f007b7          	lui	a5,0x1f00
     e94:	00f777b3          	and	a5,a4,a5
     e98:	0007871b          	sext.w	a4,a5
     e9c:	fe442783          	lw	a5,-28(s0)
     ea0:	00e7e7b3          	or	a5,a5,a4
     ea4:	fef42223          	sw	a5,-28(s0)
     ea8:	fe042783          	lw	a5,-32(s0)
     eac:	0007879b          	sext.w	a5,a5
     eb0:	24078e63          	beqz	a5,110c <inst2int+0x690>
     eb4:	fe042783          	lw	a5,-32(s0)
     eb8:	0007871b          	sext.w	a4,a5
     ebc:	00600793          	li	a5,6
     ec0:	24f70663          	beq	a4,a5,110c <inst2int+0x690>
     ec4:	fc843503          	ld	a0,-56(s0)
     ec8:	851ff0ef          	jal	ra,718 <next_word>
     ecc:	fca43423          	sd	a0,-56(s0)
     ed0:	fd840793          	addi	a5,s0,-40
     ed4:	00078593          	mv	a1,a5
     ed8:	fc843503          	ld	a0,-56(s0)
     edc:	aa1ff0ef          	jal	ra,97c <parse_arg>
     ee0:	00050793          	mv	a5,a0
     ee4:	fcf42e23          	sw	a5,-36(s0)
     ee8:	fdc42783          	lw	a5,-36(s0)
     eec:	0007879b          	sext.w	a5,a5
     ef0:	00079663          	bnez	a5,efc <inst2int+0x480>
     ef4:	00000793          	li	a5,0
     ef8:	21c0006f          	j	1114 <inst2int+0x698>
     efc:	fe042783          	lw	a5,-32(s0)
     f00:	0007871b          	sext.w	a4,a5
     f04:	00500793          	li	a5,5
     f08:	20e7e463          	bltu	a5,a4,1110 <inst2int+0x694>
     f0c:	fe046783          	lwu	a5,-32(s0)
     f10:	00279713          	slli	a4,a5,0x2
     f14:	000027b7          	lui	a5,0x2
     f18:	f4478793          	addi	a5,a5,-188 # 1f44 <INST_CONFIG+0x3ec>
     f1c:	00f707b3          	add	a5,a4,a5
     f20:	0007a783          	lw	a5,0(a5)
     f24:	00078067          	jr	a5
     f28:	fd842783          	lw	a5,-40(s0)
     f2c:	0147979b          	slliw	a5,a5,0x14
     f30:	0007871b          	sext.w	a4,a5
     f34:	fe442783          	lw	a5,-28(s0)
     f38:	00e7e7b3          	or	a5,a5,a4
     f3c:	fef42223          	sw	a5,-28(s0)
     f40:	1d00006f          	j	1110 <inst2int+0x694>
     f44:	fd842783          	lw	a5,-40(s0)
     f48:	0077979b          	slliw	a5,a5,0x7
     f4c:	0007879b          	sext.w	a5,a5
     f50:	00078713          	mv	a4,a5
     f54:	000017b7          	lui	a5,0x1
     f58:	f8078793          	addi	a5,a5,-128 # f80 <inst2int+0x504>
     f5c:	00f777b3          	and	a5,a4,a5
     f60:	0007871b          	sext.w	a4,a5
     f64:	fe442783          	lw	a5,-28(s0)
     f68:	00e7e7b3          	or	a5,a5,a4
     f6c:	fef42223          	sw	a5,-28(s0)
     f70:	fd842783          	lw	a5,-40(s0)
     f74:	0057d79b          	srliw	a5,a5,0x5
     f78:	0007879b          	sext.w	a5,a5
     f7c:	0197979b          	slliw	a5,a5,0x19
     f80:	0007871b          	sext.w	a4,a5
     f84:	fe442783          	lw	a5,-28(s0)
     f88:	00e7e7b3          	or	a5,a5,a4
     f8c:	fef42223          	sw	a5,-28(s0)
     f90:	1800006f          	j	1110 <inst2int+0x694>
     f94:	fd842783          	lw	a5,-40(s0)
     f98:	00b7d79b          	srliw	a5,a5,0xb
     f9c:	0007879b          	sext.w	a5,a5
     fa0:	0077979b          	slliw	a5,a5,0x7
     fa4:	0007879b          	sext.w	a5,a5
     fa8:	0ff7f793          	andi	a5,a5,255
     fac:	0007871b          	sext.w	a4,a5
     fb0:	fe442783          	lw	a5,-28(s0)
     fb4:	00e7e7b3          	or	a5,a5,a4
     fb8:	fef42223          	sw	a5,-28(s0)
     fbc:	fd842783          	lw	a5,-40(s0)
     fc0:	0017d79b          	srliw	a5,a5,0x1
     fc4:	0007879b          	sext.w	a5,a5
     fc8:	0087979b          	slliw	a5,a5,0x8
     fcc:	0007879b          	sext.w	a5,a5
     fd0:	00078713          	mv	a4,a5
     fd4:	000017b7          	lui	a5,0x1
     fd8:	f0078793          	addi	a5,a5,-256 # f00 <inst2int+0x484>
     fdc:	00f777b3          	and	a5,a4,a5
     fe0:	0007871b          	sext.w	a4,a5
     fe4:	fe442783          	lw	a5,-28(s0)
     fe8:	00e7e7b3          	or	a5,a5,a4
     fec:	fef42223          	sw	a5,-28(s0)
     ff0:	fd842783          	lw	a5,-40(s0)
     ff4:	0057d79b          	srliw	a5,a5,0x5
     ff8:	0007879b          	sext.w	a5,a5
     ffc:	0197979b          	slliw	a5,a5,0x19
    1000:	0007879b          	sext.w	a5,a5
    1004:	00078713          	mv	a4,a5
    1008:	7e0007b7          	lui	a5,0x7e000
    100c:	00f777b3          	and	a5,a4,a5
    1010:	0007871b          	sext.w	a4,a5
    1014:	fe442783          	lw	a5,-28(s0)
    1018:	00e7e7b3          	or	a5,a5,a4
    101c:	fef42223          	sw	a5,-28(s0)
    1020:	fd842783          	lw	a5,-40(s0)
    1024:	00c7d79b          	srliw	a5,a5,0xc
    1028:	0007879b          	sext.w	a5,a5
    102c:	01f7979b          	slliw	a5,a5,0x1f
    1030:	0007871b          	sext.w	a4,a5
    1034:	fe442783          	lw	a5,-28(s0)
    1038:	00e7e7b3          	or	a5,a5,a4
    103c:	fef42223          	sw	a5,-28(s0)
    1040:	0d00006f          	j	1110 <inst2int+0x694>
    1044:	fd842783          	lw	a5,-40(s0)
    1048:	00078713          	mv	a4,a5
    104c:	fffff7b7          	lui	a5,0xfffff
    1050:	00f777b3          	and	a5,a4,a5
    1054:	0007871b          	sext.w	a4,a5
    1058:	fe442783          	lw	a5,-28(s0)
    105c:	00e7e7b3          	or	a5,a5,a4
    1060:	fef42223          	sw	a5,-28(s0)
    1064:	0ac0006f          	j	1110 <inst2int+0x694>
    1068:	fd842783          	lw	a5,-40(s0)
    106c:	00078713          	mv	a4,a5
    1070:	000ff7b7          	lui	a5,0xff
    1074:	00f777b3          	and	a5,a4,a5
    1078:	0007871b          	sext.w	a4,a5
    107c:	fe442783          	lw	a5,-28(s0)
    1080:	00e7e7b3          	or	a5,a5,a4
    1084:	fef42223          	sw	a5,-28(s0)
    1088:	fd842783          	lw	a5,-40(s0)
    108c:	00b7d79b          	srliw	a5,a5,0xb
    1090:	0007879b          	sext.w	a5,a5
    1094:	0147979b          	slliw	a5,a5,0x14
    1098:	0007879b          	sext.w	a5,a5
    109c:	00078713          	mv	a4,a5
    10a0:	001007b7          	lui	a5,0x100
    10a4:	00f777b3          	and	a5,a4,a5
    10a8:	0007871b          	sext.w	a4,a5
    10ac:	fe442783          	lw	a5,-28(s0)
    10b0:	00e7e7b3          	or	a5,a5,a4
    10b4:	fef42223          	sw	a5,-28(s0)
    10b8:	fd842783          	lw	a5,-40(s0)
    10bc:	0017d79b          	srliw	a5,a5,0x1
    10c0:	0007879b          	sext.w	a5,a5
    10c4:	0157979b          	slliw	a5,a5,0x15
    10c8:	0007879b          	sext.w	a5,a5
    10cc:	00078713          	mv	a4,a5
    10d0:	7fe007b7          	lui	a5,0x7fe00
    10d4:	00f777b3          	and	a5,a4,a5
    10d8:	0007871b          	sext.w	a4,a5
    10dc:	fe442783          	lw	a5,-28(s0)
    10e0:	00e7e7b3          	or	a5,a5,a4
    10e4:	fef42223          	sw	a5,-28(s0)
    10e8:	fd842783          	lw	a5,-40(s0)
    10ec:	0147d79b          	srliw	a5,a5,0x14
    10f0:	0007879b          	sext.w	a5,a5
    10f4:	01f7979b          	slliw	a5,a5,0x1f
    10f8:	0007871b          	sext.w	a4,a5
    10fc:	fe442783          	lw	a5,-28(s0)
    1100:	00e7e7b3          	or	a5,a5,a4
    1104:	fef42223          	sw	a5,-28(s0)
    1108:	0080006f          	j	1110 <inst2int+0x694>
    110c:	00000013          	nop
    1110:	fe442783          	lw	a5,-28(s0)
    1114:	00078513          	mv	a0,a5
    1118:	03813083          	ld	ra,56(sp)
    111c:	03013403          	ld	s0,48(sp)
    1120:	04010113          	addi	sp,sp,64
    1124:	00008067          	ret

0000000000001128 <inst_exe>:
    1128:	fd010113          	addi	sp,sp,-48
    112c:	02113423          	sd	ra,40(sp)
    1130:	02813023          	sd	s0,32(sp)
    1134:	03010413          	addi	s0,sp,48
    1138:	000027b7          	lui	a5,0x2
    113c:	03878513          	addi	a0,a5,56 # 2038 <buffer>
    1140:	dd8ff0ef          	jal	ra,718 <next_word>
    1144:	fea43023          	sd	a0,-32(s0)
    1148:	fe043783          	ld	a5,-32(s0)
    114c:	0007c783          	lbu	a5,0(a5)
    1150:	08078663          	beqz	a5,11dc <inst_exe+0xb4>
    1154:	fe043783          	ld	a5,-32(s0)
    1158:	00178793          	addi	a5,a5,1
    115c:	0007c783          	lbu	a5,0(a5)
    1160:	06078e63          	beqz	a5,11dc <inst_exe+0xb4>
    1164:	fe043503          	ld	a0,-32(s0)
    1168:	c3cff0ef          	jal	ra,5a4 <str2hex>
    116c:	00050793          	mv	a5,a0
    1170:	fef42623          	sw	a5,-20(s0)
    1174:	000027b7          	lui	a5,0x2
    1178:	f3878513          	addi	a0,a5,-200 # 1f38 <INST_CONFIG+0x3e0>
    117c:	8b8ff0ef          	jal	ra,234 <print>
    1180:	fec42783          	lw	a5,-20(s0)
    1184:	00078513          	mv	a0,a5
    1188:	b60ff0ef          	jal	ra,4e8 <print_hex>
    118c:	000027b7          	lui	a5,0x2
    1190:	f4078513          	addi	a0,a5,-192 # 1f40 <INST_CONFIG+0x3e8>
    1194:	8a0ff0ef          	jal	ra,234 <print>
    1198:	9bcff0ef          	jal	ra,354 <get_line>
    119c:	000027b7          	lui	a5,0x2
    11a0:	03878513          	addi	a0,a5,56 # 2038 <buffer>
    11a4:	8d9ff0ef          	jal	ra,a7c <inst2int>
    11a8:	00050793          	mv	a5,a0
    11ac:	fcf42e23          	sw	a5,-36(s0)
    11b0:	fdc42783          	lw	a5,-36(s0)
    11b4:	0007879b          	sext.w	a5,a5
    11b8:	02078663          	beqz	a5,11e4 <inst_exe+0xbc>
    11bc:	fec46783          	lwu	a5,-20(s0)
    11c0:	00078713          	mv	a4,a5
    11c4:	fdc42783          	lw	a5,-36(s0)
    11c8:	00f72023          	sw	a5,0(a4)
    11cc:	fec42783          	lw	a5,-20(s0)
    11d0:	0047879b          	addiw	a5,a5,4
    11d4:	fef42623          	sw	a5,-20(s0)
    11d8:	f9dff06f          	j	1174 <inst_exe+0x4c>
    11dc:	00000013          	nop
    11e0:	0080006f          	j	11e8 <inst_exe+0xc0>
    11e4:	00000013          	nop
    11e8:	02813083          	ld	ra,40(sp)
    11ec:	02013403          	ld	s0,32(sp)
    11f0:	03010113          	addi	sp,sp,48
    11f4:	00008067          	ret

00000000000011f8 <view_exe>:
    11f8:	fd010113          	addi	sp,sp,-48
    11fc:	02113423          	sd	ra,40(sp)
    1200:	02813023          	sd	s0,32(sp)
    1204:	03010413          	addi	s0,sp,48
    1208:	000027b7          	lui	a5,0x2
    120c:	03878513          	addi	a0,a5,56 # 2038 <buffer>
    1210:	d08ff0ef          	jal	ra,718 <next_word>
    1214:	fea43023          	sd	a0,-32(s0)
    1218:	fe043783          	ld	a5,-32(s0)
    121c:	0007c783          	lbu	a5,0(a5)
    1220:	0c078463          	beqz	a5,12e8 <view_exe+0xf0>
    1224:	fe043783          	ld	a5,-32(s0)
    1228:	00178793          	addi	a5,a5,1
    122c:	0007c783          	lbu	a5,0(a5)
    1230:	0a078c63          	beqz	a5,12e8 <view_exe+0xf0>
    1234:	fe043503          	ld	a0,-32(s0)
    1238:	b6cff0ef          	jal	ra,5a4 <str2hex>
    123c:	00050793          	mv	a5,a0
    1240:	fef42623          	sw	a5,-20(s0)
    1244:	fe043503          	ld	a0,-32(s0)
    1248:	cd0ff0ef          	jal	ra,718 <next_word>
    124c:	fea43023          	sd	a0,-32(s0)
    1250:	fe043783          	ld	a5,-32(s0)
    1254:	0007c783          	lbu	a5,0(a5)
    1258:	08078c63          	beqz	a5,12f0 <view_exe+0xf8>
    125c:	fe043783          	ld	a5,-32(s0)
    1260:	00178793          	addi	a5,a5,1
    1264:	0007c783          	lbu	a5,0(a5)
    1268:	08078463          	beqz	a5,12f0 <view_exe+0xf8>
    126c:	fe043503          	ld	a0,-32(s0)
    1270:	b34ff0ef          	jal	ra,5a4 <str2hex>
    1274:	00050793          	mv	a5,a0
    1278:	fef42423          	sw	a5,-24(s0)
    127c:	0580006f          	j	12d4 <view_exe+0xdc>
    1280:	000027b7          	lui	a5,0x2
    1284:	f3878513          	addi	a0,a5,-200 # 1f38 <INST_CONFIG+0x3e0>
    1288:	fadfe0ef          	jal	ra,234 <print>
    128c:	fec42783          	lw	a5,-20(s0)
    1290:	00078513          	mv	a0,a5
    1294:	a54ff0ef          	jal	ra,4e8 <print_hex>
    1298:	000027b7          	lui	a5,0x2
    129c:	f4078513          	addi	a0,a5,-192 # 1f40 <INST_CONFIG+0x3e8>
    12a0:	f95fe0ef          	jal	ra,234 <print>
    12a4:	fec46783          	lwu	a5,-20(s0)
    12a8:	0007a783          	lw	a5,0(a5)
    12ac:	fcf42e23          	sw	a5,-36(s0)
    12b0:	fdc42783          	lw	a5,-36(s0)
    12b4:	00078513          	mv	a0,a5
    12b8:	a30ff0ef          	jal	ra,4e8 <print_hex>
    12bc:	000027b7          	lui	a5,0x2
    12c0:	f3078513          	addi	a0,a5,-208 # 1f30 <INST_CONFIG+0x3d8>
    12c4:	f71fe0ef          	jal	ra,234 <print>
    12c8:	fec42783          	lw	a5,-20(s0)
    12cc:	0047879b          	addiw	a5,a5,4
    12d0:	fef42623          	sw	a5,-20(s0)
    12d4:	fe842783          	lw	a5,-24(s0)
    12d8:	fff7871b          	addiw	a4,a5,-1
    12dc:	fee42423          	sw	a4,-24(s0)
    12e0:	fa0790e3          	bnez	a5,1280 <view_exe+0x88>
    12e4:	0100006f          	j	12f4 <view_exe+0xfc>
    12e8:	00000013          	nop
    12ec:	0080006f          	j	12f4 <view_exe+0xfc>
    12f0:	00000013          	nop
    12f4:	02813083          	ld	ra,40(sp)
    12f8:	02013403          	ld	s0,32(sp)
    12fc:	03010113          	addi	sp,sp,48
    1300:	00008067          	ret

0000000000001304 <print_int2inst>:
    1304:	fd010113          	addi	sp,sp,-48
    1308:	02113423          	sd	ra,40(sp)
    130c:	02813023          	sd	s0,32(sp)
    1310:	03010413          	addi	s0,sp,48
    1314:	00050793          	mv	a5,a0
    1318:	fcf42e23          	sw	a5,-36(s0)
    131c:	fe042623          	sw	zero,-20(s0)
    1320:	1440006f          	j	1464 <print_int2inst+0x160>
    1324:	000027b7          	lui	a5,0x2
    1328:	fec42703          	lw	a4,-20(s0)
    132c:	00471713          	slli	a4,a4,0x4
    1330:	b5878793          	addi	a5,a5,-1192 # 1b58 <INST_CONFIG>
    1334:	00f707b3          	add	a5,a4,a5
    1338:	0047a703          	lw	a4,4(a5)
    133c:	fdc42783          	lw	a5,-36(s0)
    1340:	07f7f793          	andi	a5,a5,127
    1344:	0007879b          	sext.w	a5,a5
    1348:	0ef71e63          	bne	a4,a5,1444 <print_int2inst+0x140>
    134c:	000027b7          	lui	a5,0x2
    1350:	fec42703          	lw	a4,-20(s0)
    1354:	00471713          	slli	a4,a4,0x4
    1358:	b5878793          	addi	a5,a5,-1192 # 1b58 <INST_CONFIG>
    135c:	00f707b3          	add	a5,a4,a5
    1360:	0007a783          	lw	a5,0(a5)
    1364:	fef42423          	sw	a5,-24(s0)
    1368:	fe842783          	lw	a5,-24(s0)
    136c:	0007879b          	sext.w	a5,a5
    1370:	02079663          	bnez	a5,139c <print_int2inst+0x98>
    1374:	000027b7          	lui	a5,0x2
    1378:	fec42703          	lw	a4,-20(s0)
    137c:	00471713          	slli	a4,a4,0x4
    1380:	b5878793          	addi	a5,a5,-1192 # 1b58 <INST_CONFIG>
    1384:	00f707b3          	add	a5,a4,a5
    1388:	00c7a703          	lw	a4,12(a5)
    138c:	fdc42783          	lw	a5,-36(s0)
    1390:	0197d79b          	srliw	a5,a5,0x19
    1394:	0007879b          	sext.w	a5,a5
    1398:	0af71a63          	bne	a4,a5,144c <print_int2inst+0x148>
    139c:	fe842783          	lw	a5,-24(s0)
    13a0:	0007879b          	sext.w	a5,a5
    13a4:	02078a63          	beqz	a5,13d8 <print_int2inst+0xd4>
    13a8:	fe842783          	lw	a5,-24(s0)
    13ac:	0007871b          	sext.w	a4,a5
    13b0:	00100793          	li	a5,1
    13b4:	02f70263          	beq	a4,a5,13d8 <print_int2inst+0xd4>
    13b8:	fe842783          	lw	a5,-24(s0)
    13bc:	0007871b          	sext.w	a4,a5
    13c0:	00200793          	li	a5,2
    13c4:	00f70a63          	beq	a4,a5,13d8 <print_int2inst+0xd4>
    13c8:	fe842783          	lw	a5,-24(s0)
    13cc:	0007871b          	sext.w	a4,a5
    13d0:	00300793          	li	a5,3
    13d4:	02f71a63          	bne	a4,a5,1408 <print_int2inst+0x104>
    13d8:	000027b7          	lui	a5,0x2
    13dc:	fec42703          	lw	a4,-20(s0)
    13e0:	00471713          	slli	a4,a4,0x4
    13e4:	b5878793          	addi	a5,a5,-1192 # 1b58 <INST_CONFIG>
    13e8:	00f707b3          	add	a5,a4,a5
    13ec:	0087a703          	lw	a4,8(a5)
    13f0:	fdc42783          	lw	a5,-36(s0)
    13f4:	00c7d79b          	srliw	a5,a5,0xc
    13f8:	0007879b          	sext.w	a5,a5
    13fc:	0077f793          	andi	a5,a5,7
    1400:	0007879b          	sext.w	a5,a5
    1404:	04f71863          	bne	a4,a5,1454 <print_int2inst+0x150>
    1408:	fe842783          	lw	a5,-24(s0)
    140c:	0007871b          	sext.w	a4,a5
    1410:	00600793          	li	a5,6
    1414:	06f71263          	bne	a4,a5,1478 <print_int2inst+0x174>
    1418:	000027b7          	lui	a5,0x2
    141c:	fec42703          	lw	a4,-20(s0)
    1420:	00471713          	slli	a4,a4,0x4
    1424:	b5878793          	addi	a5,a5,-1192 # 1b58 <INST_CONFIG>
    1428:	00f707b3          	add	a5,a4,a5
    142c:	0087a703          	lw	a4,8(a5)
    1430:	fdc42783          	lw	a5,-36(s0)
    1434:	0077d79b          	srliw	a5,a5,0x7
    1438:	0007879b          	sext.w	a5,a5
    143c:	02f70e63          	beq	a4,a5,1478 <print_int2inst+0x174>
    1440:	0180006f          	j	1458 <print_int2inst+0x154>
    1444:	00000013          	nop
    1448:	0100006f          	j	1458 <print_int2inst+0x154>
    144c:	00000013          	nop
    1450:	0080006f          	j	1458 <print_int2inst+0x154>
    1454:	00000013          	nop
    1458:	fec42783          	lw	a5,-20(s0)
    145c:	0017879b          	addiw	a5,a5,1
    1460:	fef42623          	sw	a5,-20(s0)
    1464:	fec42783          	lw	a5,-20(s0)
    1468:	0007871b          	sext.w	a4,a5
    146c:	02500793          	li	a5,37
    1470:	eae7dae3          	bge	a5,a4,1324 <print_int2inst+0x20>
    1474:	0080006f          	j	147c <print_int2inst+0x178>
    1478:	00000013          	nop
    147c:	fec42783          	lw	a5,-20(s0)
    1480:	0007871b          	sext.w	a4,a5
    1484:	02600793          	li	a5,38
    1488:	00f71a63          	bne	a4,a5,149c <print_int2inst+0x198>
    148c:	000027b7          	lui	a5,0x2
    1490:	f6078513          	addi	a0,a5,-160 # 1f60 <INST_CONFIG+0x408>
    1494:	da1fe0ef          	jal	ra,234 <print>
    1498:	3400006f          	j	17d8 <print_int2inst+0x4d4>
    149c:	fec42703          	lw	a4,-20(s0)
    14a0:	00070793          	mv	a5,a4
    14a4:	00379793          	slli	a5,a5,0x3
    14a8:	40e787b3          	sub	a5,a5,a4
    14ac:	00002737          	lui	a4,0x2
    14b0:	a4870713          	addi	a4,a4,-1464 # 1a48 <INST_NAMES>
    14b4:	00e787b3          	add	a5,a5,a4
    14b8:	00078513          	mv	a0,a5
    14bc:	d79fe0ef          	jal	ra,234 <print>
    14c0:	fe842783          	lw	a5,-24(s0)
    14c4:	0007879b          	sext.w	a5,a5
    14c8:	02078a63          	beqz	a5,14fc <print_int2inst+0x1f8>
    14cc:	fe842783          	lw	a5,-24(s0)
    14d0:	0007871b          	sext.w	a4,a5
    14d4:	00100793          	li	a5,1
    14d8:	02f70263          	beq	a4,a5,14fc <print_int2inst+0x1f8>
    14dc:	fe842783          	lw	a5,-24(s0)
    14e0:	0007871b          	sext.w	a4,a5
    14e4:	00400793          	li	a5,4
    14e8:	00f70a63          	beq	a4,a5,14fc <print_int2inst+0x1f8>
    14ec:	fe842783          	lw	a5,-24(s0)
    14f0:	0007871b          	sext.w	a4,a5
    14f4:	00500793          	li	a5,5
    14f8:	02f71663          	bne	a4,a5,1524 <print_int2inst+0x220>
    14fc:	000027b7          	lui	a5,0x2
    1500:	f7078513          	addi	a0,a5,-144 # 1f70 <INST_CONFIG+0x418>
    1504:	d31fe0ef          	jal	ra,234 <print>
    1508:	fdc42783          	lw	a5,-36(s0)
    150c:	0077d79b          	srliw	a5,a5,0x7
    1510:	0007879b          	sext.w	a5,a5
    1514:	01f7f793          	andi	a5,a5,31
    1518:	0007879b          	sext.w	a5,a5
    151c:	00078513          	mv	a0,a5
    1520:	fc9fe0ef          	jal	ra,4e8 <print_hex>
    1524:	fe842783          	lw	a5,-24(s0)
    1528:	0007879b          	sext.w	a5,a5
    152c:	02078a63          	beqz	a5,1560 <print_int2inst+0x25c>
    1530:	fe842783          	lw	a5,-24(s0)
    1534:	0007871b          	sext.w	a4,a5
    1538:	00100793          	li	a5,1
    153c:	02f70263          	beq	a4,a5,1560 <print_int2inst+0x25c>
    1540:	fe842783          	lw	a5,-24(s0)
    1544:	0007871b          	sext.w	a4,a5
    1548:	00200793          	li	a5,2
    154c:	00f70a63          	beq	a4,a5,1560 <print_int2inst+0x25c>
    1550:	fe842783          	lw	a5,-24(s0)
    1554:	0007871b          	sext.w	a4,a5
    1558:	00300793          	li	a5,3
    155c:	02f71663          	bne	a4,a5,1588 <print_int2inst+0x284>
    1560:	000027b7          	lui	a5,0x2
    1564:	f7078513          	addi	a0,a5,-144 # 1f70 <INST_CONFIG+0x418>
    1568:	ccdfe0ef          	jal	ra,234 <print>
    156c:	fdc42783          	lw	a5,-36(s0)
    1570:	00f7d79b          	srliw	a5,a5,0xf
    1574:	0007879b          	sext.w	a5,a5
    1578:	01f7f793          	andi	a5,a5,31
    157c:	0007879b          	sext.w	a5,a5
    1580:	00078513          	mv	a0,a5
    1584:	f65fe0ef          	jal	ra,4e8 <print_hex>
    1588:	fe842783          	lw	a5,-24(s0)
    158c:	0007879b          	sext.w	a5,a5
    1590:	02078263          	beqz	a5,15b4 <print_int2inst+0x2b0>
    1594:	fe842783          	lw	a5,-24(s0)
    1598:	0007871b          	sext.w	a4,a5
    159c:	00200793          	li	a5,2
    15a0:	00f70a63          	beq	a4,a5,15b4 <print_int2inst+0x2b0>
    15a4:	fe842783          	lw	a5,-24(s0)
    15a8:	0007871b          	sext.w	a4,a5
    15ac:	00300793          	li	a5,3
    15b0:	02f71663          	bne	a4,a5,15dc <print_int2inst+0x2d8>
    15b4:	000027b7          	lui	a5,0x2
    15b8:	f7078513          	addi	a0,a5,-144 # 1f70 <INST_CONFIG+0x418>
    15bc:	c79fe0ef          	jal	ra,234 <print>
    15c0:	fdc42783          	lw	a5,-36(s0)
    15c4:	0147d79b          	srliw	a5,a5,0x14
    15c8:	0007879b          	sext.w	a5,a5
    15cc:	01f7f793          	andi	a5,a5,31
    15d0:	0007879b          	sext.w	a5,a5
    15d4:	00078513          	mv	a0,a5
    15d8:	f11fe0ef          	jal	ra,4e8 <print_hex>
    15dc:	fe042223          	sw	zero,-28(s0)
    15e0:	fe842783          	lw	a5,-24(s0)
    15e4:	0007879b          	sext.w	a5,a5
    15e8:	1e078863          	beqz	a5,17d8 <print_int2inst+0x4d4>
    15ec:	fe842783          	lw	a5,-24(s0)
    15f0:	0007871b          	sext.w	a4,a5
    15f4:	00600793          	li	a5,6
    15f8:	1ef70063          	beq	a4,a5,17d8 <print_int2inst+0x4d4>
    15fc:	fe842783          	lw	a5,-24(s0)
    1600:	0007871b          	sext.w	a4,a5
    1604:	00500793          	li	a5,5
    1608:	1ae7ec63          	bltu	a5,a4,17c0 <print_int2inst+0x4bc>
    160c:	fe846783          	lwu	a5,-24(s0)
    1610:	00279713          	slli	a4,a5,0x2
    1614:	000027b7          	lui	a5,0x2
    1618:	f7478793          	addi	a5,a5,-140 # 1f74 <INST_CONFIG+0x41c>
    161c:	00f707b3          	add	a5,a4,a5
    1620:	0007a783          	lw	a5,0(a5)
    1624:	00078067          	jr	a5
    1628:	fdc42783          	lw	a5,-36(s0)
    162c:	0147d79b          	srliw	a5,a5,0x14
    1630:	fef42223          	sw	a5,-28(s0)
    1634:	18c0006f          	j	17c0 <print_int2inst+0x4bc>
    1638:	fdc42783          	lw	a5,-36(s0)
    163c:	0077d79b          	srliw	a5,a5,0x7
    1640:	0007879b          	sext.w	a5,a5
    1644:	01f7f793          	andi	a5,a5,31
    1648:	0007871b          	sext.w	a4,a5
    164c:	fdc42783          	lw	a5,-36(s0)
    1650:	0197d79b          	srliw	a5,a5,0x19
    1654:	0007879b          	sext.w	a5,a5
    1658:	0057979b          	slliw	a5,a5,0x5
    165c:	0007879b          	sext.w	a5,a5
    1660:	00f767b3          	or	a5,a4,a5
    1664:	fef42223          	sw	a5,-28(s0)
    1668:	1580006f          	j	17c0 <print_int2inst+0x4bc>
    166c:	fdc42783          	lw	a5,-36(s0)
    1670:	0077d79b          	srliw	a5,a5,0x7
    1674:	0007879b          	sext.w	a5,a5
    1678:	00b7979b          	slliw	a5,a5,0xb
    167c:	0007879b          	sext.w	a5,a5
    1680:	00078713          	mv	a4,a5
    1684:	000017b7          	lui	a5,0x1
    1688:	80078793          	addi	a5,a5,-2048 # 800 <jump_exe+0x64>
    168c:	00f777b3          	and	a5,a4,a5
    1690:	0007871b          	sext.w	a4,a5
    1694:	fe442783          	lw	a5,-28(s0)
    1698:	00e7e7b3          	or	a5,a5,a4
    169c:	fef42223          	sw	a5,-28(s0)
    16a0:	fdc42783          	lw	a5,-36(s0)
    16a4:	0087d79b          	srliw	a5,a5,0x8
    16a8:	0007879b          	sext.w	a5,a5
    16ac:	0017979b          	slliw	a5,a5,0x1
    16b0:	0007879b          	sext.w	a5,a5
    16b4:	01e7f793          	andi	a5,a5,30
    16b8:	0007871b          	sext.w	a4,a5
    16bc:	fe442783          	lw	a5,-28(s0)
    16c0:	00e7e7b3          	or	a5,a5,a4
    16c4:	fef42223          	sw	a5,-28(s0)
    16c8:	fdc42783          	lw	a5,-36(s0)
    16cc:	0197d79b          	srliw	a5,a5,0x19
    16d0:	0007879b          	sext.w	a5,a5
    16d4:	0057979b          	slliw	a5,a5,0x5
    16d8:	0007879b          	sext.w	a5,a5
    16dc:	7e07f793          	andi	a5,a5,2016
    16e0:	0007871b          	sext.w	a4,a5
    16e4:	fe442783          	lw	a5,-28(s0)
    16e8:	00e7e7b3          	or	a5,a5,a4
    16ec:	fef42223          	sw	a5,-28(s0)
    16f0:	fdc42783          	lw	a5,-36(s0)
    16f4:	01f7d79b          	srliw	a5,a5,0x1f
    16f8:	0007879b          	sext.w	a5,a5
    16fc:	00c7979b          	slliw	a5,a5,0xc
    1700:	0007871b          	sext.w	a4,a5
    1704:	fe442783          	lw	a5,-28(s0)
    1708:	00e7e7b3          	or	a5,a5,a4
    170c:	fef42223          	sw	a5,-28(s0)
    1710:	0b00006f          	j	17c0 <print_int2inst+0x4bc>
    1714:	fdc42703          	lw	a4,-36(s0)
    1718:	fffff7b7          	lui	a5,0xfffff
    171c:	00f777b3          	and	a5,a4,a5
    1720:	fef42223          	sw	a5,-28(s0)
    1724:	09c0006f          	j	17c0 <print_int2inst+0x4bc>
    1728:	fdc42703          	lw	a4,-36(s0)
    172c:	000ff7b7          	lui	a5,0xff
    1730:	00f777b3          	and	a5,a4,a5
    1734:	0007871b          	sext.w	a4,a5
    1738:	fe442783          	lw	a5,-28(s0)
    173c:	00e7e7b3          	or	a5,a5,a4
    1740:	fef42223          	sw	a5,-28(s0)
    1744:	fdc42783          	lw	a5,-36(s0)
    1748:	0147d79b          	srliw	a5,a5,0x14
    174c:	0007879b          	sext.w	a5,a5
    1750:	00b7979b          	slliw	a5,a5,0xb
    1754:	0007879b          	sext.w	a5,a5
    1758:	00078713          	mv	a4,a5
    175c:	000017b7          	lui	a5,0x1
    1760:	80078793          	addi	a5,a5,-2048 # 800 <jump_exe+0x64>
    1764:	00f777b3          	and	a5,a4,a5
    1768:	0007871b          	sext.w	a4,a5
    176c:	fe442783          	lw	a5,-28(s0)
    1770:	00e7e7b3          	or	a5,a5,a4
    1774:	fef42223          	sw	a5,-28(s0)
    1778:	fdc42783          	lw	a5,-36(s0)
    177c:	0157d79b          	srliw	a5,a5,0x15
    1780:	0007879b          	sext.w	a5,a5
    1784:	0017979b          	slliw	a5,a5,0x1
    1788:	0007879b          	sext.w	a5,a5
    178c:	7fe7f793          	andi	a5,a5,2046
    1790:	0007871b          	sext.w	a4,a5
    1794:	fe442783          	lw	a5,-28(s0)
    1798:	00e7e7b3          	or	a5,a5,a4
    179c:	fef42223          	sw	a5,-28(s0)
    17a0:	fdc42783          	lw	a5,-36(s0)
    17a4:	01f7d79b          	srliw	a5,a5,0x1f
    17a8:	0007879b          	sext.w	a5,a5
    17ac:	0147979b          	slliw	a5,a5,0x14
    17b0:	0007871b          	sext.w	a4,a5
    17b4:	fe442783          	lw	a5,-28(s0)
    17b8:	00e7e7b3          	or	a5,a5,a4
    17bc:	fef42223          	sw	a5,-28(s0)
    17c0:	000027b7          	lui	a5,0x2
    17c4:	f7078513          	addi	a0,a5,-144 # 1f70 <INST_CONFIG+0x418>
    17c8:	a6dfe0ef          	jal	ra,234 <print>
    17cc:	fe442783          	lw	a5,-28(s0)
    17d0:	00078513          	mv	a0,a5
    17d4:	d15fe0ef          	jal	ra,4e8 <print_hex>
    17d8:	02813083          	ld	ra,40(sp)
    17dc:	02013403          	ld	s0,32(sp)
    17e0:	03010113          	addi	sp,sp,48
    17e4:	00008067          	ret

00000000000017e8 <disas_exe>:
    17e8:	fd010113          	addi	sp,sp,-48
    17ec:	02113423          	sd	ra,40(sp)
    17f0:	02813023          	sd	s0,32(sp)
    17f4:	03010413          	addi	s0,sp,48
    17f8:	000027b7          	lui	a5,0x2
    17fc:	03878513          	addi	a0,a5,56 # 2038 <buffer>
    1800:	f19fe0ef          	jal	ra,718 <next_word>
    1804:	fea43023          	sd	a0,-32(s0)
    1808:	fe043783          	ld	a5,-32(s0)
    180c:	0007c783          	lbu	a5,0(a5)
    1810:	0c078463          	beqz	a5,18d8 <disas_exe+0xf0>
    1814:	fe043783          	ld	a5,-32(s0)
    1818:	00178793          	addi	a5,a5,1
    181c:	0007c783          	lbu	a5,0(a5)
    1820:	0a078c63          	beqz	a5,18d8 <disas_exe+0xf0>
    1824:	fe043503          	ld	a0,-32(s0)
    1828:	d7dfe0ef          	jal	ra,5a4 <str2hex>
    182c:	00050793          	mv	a5,a0
    1830:	fef42623          	sw	a5,-20(s0)
    1834:	fe043503          	ld	a0,-32(s0)
    1838:	ee1fe0ef          	jal	ra,718 <next_word>
    183c:	fea43023          	sd	a0,-32(s0)
    1840:	fe043783          	ld	a5,-32(s0)
    1844:	0007c783          	lbu	a5,0(a5)
    1848:	08078c63          	beqz	a5,18e0 <disas_exe+0xf8>
    184c:	fe043783          	ld	a5,-32(s0)
    1850:	00178793          	addi	a5,a5,1
    1854:	0007c783          	lbu	a5,0(a5)
    1858:	08078463          	beqz	a5,18e0 <disas_exe+0xf8>
    185c:	fe043503          	ld	a0,-32(s0)
    1860:	d45fe0ef          	jal	ra,5a4 <str2hex>
    1864:	00050793          	mv	a5,a0
    1868:	fef42423          	sw	a5,-24(s0)
    186c:	0580006f          	j	18c4 <disas_exe+0xdc>
    1870:	000027b7          	lui	a5,0x2
    1874:	f3878513          	addi	a0,a5,-200 # 1f38 <INST_CONFIG+0x3e0>
    1878:	9bdfe0ef          	jal	ra,234 <print>
    187c:	fec42783          	lw	a5,-20(s0)
    1880:	00078513          	mv	a0,a5
    1884:	c65fe0ef          	jal	ra,4e8 <print_hex>
    1888:	000027b7          	lui	a5,0x2
    188c:	f4078513          	addi	a0,a5,-192 # 1f40 <INST_CONFIG+0x3e8>
    1890:	9a5fe0ef          	jal	ra,234 <print>
    1894:	fec46783          	lwu	a5,-20(s0)
    1898:	0007a783          	lw	a5,0(a5)
    189c:	fcf42e23          	sw	a5,-36(s0)
    18a0:	fdc42783          	lw	a5,-36(s0)
    18a4:	00078513          	mv	a0,a5
    18a8:	a5dff0ef          	jal	ra,1304 <print_int2inst>
    18ac:	000027b7          	lui	a5,0x2
    18b0:	f3078513          	addi	a0,a5,-208 # 1f30 <INST_CONFIG+0x3d8>
    18b4:	981fe0ef          	jal	ra,234 <print>
    18b8:	fec42783          	lw	a5,-20(s0)
    18bc:	0047879b          	addiw	a5,a5,4
    18c0:	fef42623          	sw	a5,-20(s0)
    18c4:	fe842783          	lw	a5,-24(s0)
    18c8:	fff7871b          	addiw	a4,a5,-1
    18cc:	fee42423          	sw	a4,-24(s0)
    18d0:	fa0790e3          	bnez	a5,1870 <disas_exe+0x88>
    18d4:	0100006f          	j	18e4 <disas_exe+0xfc>
    18d8:	00000013          	nop
    18dc:	0080006f          	j	18e4 <disas_exe+0xfc>
    18e0:	00000013          	nop
    18e4:	02813083          	ld	ra,40(sp)
    18e8:	02013403          	ld	s0,32(sp)
    18ec:	03010113          	addi	sp,sp,48
    18f0:	00008067          	ret

00000000000018f4 <start>:
    18f4:	ff010113          	addi	sp,sp,-16
    18f8:	00113423          	sd	ra,8(sp)
    18fc:	00813023          	sd	s0,0(sp)
    1900:	01010413          	addi	s0,sp,16
    1904:	000027b7          	lui	a5,0x2
    1908:	f9078513          	addi	a0,a5,-112 # 1f90 <INST_CONFIG+0x438>
    190c:	929fe0ef          	jal	ra,234 <print>
    1910:	000027b7          	lui	a5,0x2
    1914:	fb078513          	addi	a0,a5,-80 # 1fb0 <INST_CONFIG+0x458>
    1918:	91dfe0ef          	jal	ra,234 <print>
    191c:	000027b7          	lui	a5,0x2
    1920:	fc078513          	addi	a0,a5,-64 # 1fc0 <INST_CONFIG+0x468>
    1924:	911fe0ef          	jal	ra,234 <print>
    1928:	000027b7          	lui	a5,0x2
    192c:	fd078513          	addi	a0,a5,-48 # 1fd0 <INST_CONFIG+0x478>
    1930:	905fe0ef          	jal	ra,234 <print>
    1934:	000027b7          	lui	a5,0x2
    1938:	fe078513          	addi	a0,a5,-32 # 1fe0 <INST_CONFIG+0x488>
    193c:	8f9fe0ef          	jal	ra,234 <print>
    1940:	000027b7          	lui	a5,0x2
    1944:	fe878513          	addi	a0,a5,-24 # 1fe8 <INST_CONFIG+0x490>
    1948:	8edfe0ef          	jal	ra,234 <print>
    194c:	000027b7          	lui	a5,0x2
    1950:	fe078513          	addi	a0,a5,-32 # 1fe0 <INST_CONFIG+0x488>
    1954:	8e1fe0ef          	jal	ra,234 <print>
    1958:	000027b7          	lui	a5,0x2
    195c:	00078513          	mv	a0,a5
    1960:	8d5fe0ef          	jal	ra,234 <print>
    1964:	000027b7          	lui	a5,0x2
    1968:	fe078513          	addi	a0,a5,-32 # 1fe0 <INST_CONFIG+0x488>
    196c:	8c9fe0ef          	jal	ra,234 <print>
    1970:	000027b7          	lui	a5,0x2
    1974:	01078513          	addi	a0,a5,16 # 2010 <INST_CONFIG+0x4b8>
    1978:	8bdfe0ef          	jal	ra,234 <print>
    197c:	000027b7          	lui	a5,0x2
    1980:	fe078513          	addi	a0,a5,-32 # 1fe0 <INST_CONFIG+0x488>
    1984:	8b1fe0ef          	jal	ra,234 <print>
    1988:	d39fe0ef          	jal	ra,6c0 <init>
    198c:	000027b7          	lui	a5,0x2
    1990:	02078513          	addi	a0,a5,32 # 2020 <INST_CONFIG+0x4c8>
    1994:	8a1fe0ef          	jal	ra,234 <print>
    1998:	9bdfe0ef          	jal	ra,354 <get_line>
    199c:	000027b7          	lui	a5,0x2
    19a0:	0387c783          	lbu	a5,56(a5) # 2038 <buffer>
    19a4:	0007879b          	sext.w	a5,a5
    19a8:	00078693          	mv	a3,a5
    19ac:	04900713          	li	a4,73
    19b0:	06e68663          	beq	a3,a4,1a1c <start+0x128>
    19b4:	00078693          	mv	a3,a5
    19b8:	04900713          	li	a4,73
    19bc:	02d74263          	blt	a4,a3,19e0 <start+0xec>
    19c0:	00078693          	mv	a3,a5
    19c4:	04400713          	li	a4,68
    19c8:	06e68263          	beq	a3,a4,1a2c <start+0x138>
    19cc:	00078693          	mv	a3,a5
    19d0:	04500713          	li	a4,69
    19d4:	04e68063          	beq	a3,a4,1a14 <start+0x120>
    19d8:	06078263          	beqz	a5,1a3c <start+0x148>
    19dc:	0580006f          	j	1a34 <start+0x140>
    19e0:	00078693          	mv	a3,a5
    19e4:	05200713          	li	a4,82
    19e8:	02e68263          	beq	a3,a4,1a0c <start+0x118>
    19ec:	00078693          	mv	a3,a5
    19f0:	05600713          	li	a4,86
    19f4:	02e68863          	beq	a3,a4,1a24 <start+0x130>
    19f8:	00078713          	mv	a4,a5
    19fc:	04a00793          	li	a5,74
    1a00:	02f71a63          	bne	a4,a5,1a34 <start+0x140>
    1a04:	d99fe0ef          	jal	ra,79c <jump_exe>
    1a08:	0380006f          	j	1a40 <start+0x14c>
    1a0c:	e01fe0ef          	jal	ra,80c <reg_exe>
    1a10:	0300006f          	j	1a40 <start+0x14c>
    1a14:	e91fe0ef          	jal	ra,8a4 <edit_exe>
    1a18:	0280006f          	j	1a40 <start+0x14c>
    1a1c:	f0cff0ef          	jal	ra,1128 <inst_exe>
    1a20:	0200006f          	j	1a40 <start+0x14c>
    1a24:	fd4ff0ef          	jal	ra,11f8 <view_exe>
    1a28:	0180006f          	j	1a40 <start+0x14c>
    1a2c:	dbdff0ef          	jal	ra,17e8 <disas_exe>
    1a30:	0100006f          	j	1a40 <start+0x14c>
    1a34:	c15fe0ef          	jal	ra,648 <print_help>
    1a38:	f55ff06f          	j	198c <start+0x98>
    1a3c:	00000013          	nop
    1a40:	f4dff06f          	j	198c <start+0x98>

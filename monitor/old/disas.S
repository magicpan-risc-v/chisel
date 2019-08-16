
out.o:     file format elf64-littleriscv


Disassembly of section .text:

00000000c0020000 <_start>:
    c0020000:	00000013          	nop
    c0020004:	00003197          	auipc	gp,0x3
    c0020008:	7fc18193          	addi	gp,gp,2044 # c0023800 <__global_pointer$>
    c002000c:	0000c137          	lui	sp,0xc
    c0020010:	0051011b          	addiw	sp,sp,5
    c0020014:	01011113          	slli	sp,sp,0x10
    c0020018:	77d0106f          	j	c0021f94 <start>

00000000c002001c <_entry>:
    c002001c:	f0810113          	addi	sp,sp,-248 # bf08 <_start-0xc00140f8>
    c0020020:	00113023          	sd	ra,0(sp)
    c0020024:	00213423          	sd	sp,8(sp)
    c0020028:	00313823          	sd	gp,16(sp)
    c002002c:	00413c23          	sd	tp,24(sp)
    c0020030:	02513023          	sd	t0,32(sp)
    c0020034:	02613423          	sd	t1,40(sp)
    c0020038:	02713823          	sd	t2,48(sp)
    c002003c:	02813c23          	sd	s0,56(sp)
    c0020040:	04913023          	sd	s1,64(sp)
    c0020044:	04a13423          	sd	a0,72(sp)
    c0020048:	04b13823          	sd	a1,80(sp)
    c002004c:	04c13c23          	sd	a2,88(sp)
    c0020050:	06d13023          	sd	a3,96(sp)
    c0020054:	06e13423          	sd	a4,104(sp)
    c0020058:	06f13823          	sd	a5,112(sp)
    c002005c:	07013c23          	sd	a6,120(sp)
    c0020060:	09113023          	sd	a7,128(sp)
    c0020064:	09213423          	sd	s2,136(sp)
    c0020068:	09313823          	sd	s3,144(sp)
    c002006c:	09413c23          	sd	s4,152(sp)
    c0020070:	0b513023          	sd	s5,160(sp)
    c0020074:	0b613423          	sd	s6,168(sp)
    c0020078:	0b713823          	sd	s7,176(sp)
    c002007c:	0b813c23          	sd	s8,184(sp)
    c0020080:	0d913023          	sd	s9,192(sp)
    c0020084:	0da13423          	sd	s10,200(sp)
    c0020088:	0db13823          	sd	s11,208(sp)
    c002008c:	0dc13c23          	sd	t3,216(sp)
    c0020090:	0fd13023          	sd	t4,224(sp)
    c0020094:	0fe13423          	sd	t5,232(sp)
    c0020098:	0ff13823          	sd	t6,240(sp)
    c002009c:	00050093          	mv	ra,a0
    c00200a0:	00003617          	auipc	a2,0x3
    c00200a4:	f6060613          	addi	a2,a2,-160 # c0023000 <stack_top>
    c00200a8:	00263023          	sd	sp,0(a2)
    c00200ac:	00000113          	li	sp,0
    c00200b0:	00000193          	li	gp,0
    c00200b4:	00000213          	li	tp,0
    c00200b8:	00000293          	li	t0,0
    c00200bc:	00000313          	li	t1,0
    c00200c0:	00000393          	li	t2,0
    c00200c4:	00000413          	li	s0,0
    c00200c8:	00000493          	li	s1,0
    c00200cc:	00000513          	li	a0,0
    c00200d0:	00000593          	li	a1,0
    c00200d4:	00000613          	li	a2,0
    c00200d8:	00000693          	li	a3,0
    c00200dc:	00000713          	li	a4,0
    c00200e0:	00000793          	li	a5,0
    c00200e4:	00000813          	li	a6,0
    c00200e8:	00000893          	li	a7,0
    c00200ec:	00000913          	li	s2,0
    c00200f0:	00000993          	li	s3,0
    c00200f4:	00000a13          	li	s4,0
    c00200f8:	00000a93          	li	s5,0
    c00200fc:	00000b13          	li	s6,0
    c0020100:	00000b93          	li	s7,0
    c0020104:	00000c13          	li	s8,0
    c0020108:	00000c93          	li	s9,0
    c002010c:	00000d13          	li	s10,0
    c0020110:	00000d93          	li	s11,0
    c0020114:	00000e13          	li	t3,0
    c0020118:	00000e93          	li	t4,0
    c002011c:	81018f13          	addi	t5,gp,-2032 # c0023010 <time_count>
    c0020120:	000f3023          	sd	zero,0(t5)
    c0020124:	00003f17          	auipc	t5,0x3
    c0020128:	ee4f0f13          	addi	t5,t5,-284 # c0023008 <in_user>
    c002012c:	00100f93          	li	t6,1
    c0020130:	01ff3023          	sd	t6,0(t5)
    c0020134:	00000f13          	li	t5,0
    c0020138:	00000f93          	li	t6,0
    c002013c:	000080e7          	jalr	ra

00000000c0020140 <_exit>:
    c0020140:	00003097          	auipc	ra,0x3
    c0020144:	f2808093          	addi	ra,ra,-216 # c0023068 <regs>
    c0020148:	07f0be23          	sd	t6,124(ra)
    c002014c:	07e0bc23          	sd	t5,120(ra)
    c0020150:	00003f97          	auipc	t6,0x3
    c0020154:	eb8f8f93          	addi	t6,t6,-328 # c0023008 <in_user>
    c0020158:	000fb023          	sd	zero,0(t6)
    c002015c:	0fd0b423          	sd	t4,232(ra)
    c0020160:	0fc0b023          	sd	t3,224(ra)
    c0020164:	0db0bc23          	sd	s11,216(ra)
    c0020168:	0da0b823          	sd	s10,208(ra)
    c002016c:	0d90b423          	sd	s9,200(ra)
    c0020170:	0d80b023          	sd	s8,192(ra)
    c0020174:	0b70bc23          	sd	s7,184(ra)
    c0020178:	0b60b823          	sd	s6,176(ra)
    c002017c:	0b50b423          	sd	s5,168(ra)
    c0020180:	0b40b023          	sd	s4,160(ra)
    c0020184:	0930bc23          	sd	s3,152(ra)
    c0020188:	0920b823          	sd	s2,144(ra)
    c002018c:	0910b423          	sd	a7,136(ra)
    c0020190:	0900b023          	sd	a6,128(ra)
    c0020194:	06f0bc23          	sd	a5,120(ra)
    c0020198:	06e0b823          	sd	a4,112(ra)
    c002019c:	06d0b423          	sd	a3,104(ra)
    c00201a0:	06c0b023          	sd	a2,96(ra)
    c00201a4:	04b0bc23          	sd	a1,88(ra)
    c00201a8:	04a0b823          	sd	a0,80(ra)
    c00201ac:	0490b423          	sd	s1,72(ra)
    c00201b0:	0480b023          	sd	s0,64(ra)
    c00201b4:	0270bc23          	sd	t2,56(ra)
    c00201b8:	0260b823          	sd	t1,48(ra)
    c00201bc:	0250b423          	sd	t0,40(ra)
    c00201c0:	0240b023          	sd	tp,32(ra)
    c00201c4:	0030bc23          	sd	gp,24(ra)
    c00201c8:	0020b823          	sd	sp,16(ra)
    c00201cc:	0010b423          	sd	ra,8(ra)
    c00201d0:	0000b023          	sd	zero,0(ra)
    c00201d4:	00003117          	auipc	sp,0x3
    c00201d8:	e2c10113          	addi	sp,sp,-468 # c0023000 <stack_top>
    c00201dc:	00013103          	ld	sp,0(sp)
    c00201e0:	00013083          	ld	ra,0(sp)
    c00201e4:	00813103          	ld	sp,8(sp)
    c00201e8:	01013183          	ld	gp,16(sp)
    c00201ec:	01813203          	ld	tp,24(sp)
    c00201f0:	02013283          	ld	t0,32(sp)
    c00201f4:	02813303          	ld	t1,40(sp)
    c00201f8:	03013383          	ld	t2,48(sp)
    c00201fc:	03813403          	ld	s0,56(sp)
    c0020200:	04013483          	ld	s1,64(sp)
    c0020204:	04813503          	ld	a0,72(sp)
    c0020208:	05013583          	ld	a1,80(sp)
    c002020c:	05813603          	ld	a2,88(sp)
    c0020210:	06013683          	ld	a3,96(sp)
    c0020214:	06813703          	ld	a4,104(sp)
    c0020218:	07013783          	ld	a5,112(sp)
    c002021c:	07813803          	ld	a6,120(sp)
    c0020220:	08013883          	ld	a7,128(sp)
    c0020224:	08813903          	ld	s2,136(sp)
    c0020228:	09013983          	ld	s3,144(sp)
    c002022c:	09813a03          	ld	s4,152(sp)
    c0020230:	0a013a83          	ld	s5,160(sp)
    c0020234:	0a813b03          	ld	s6,168(sp)
    c0020238:	0b013b83          	ld	s7,176(sp)
    c002023c:	0b813c03          	ld	s8,184(sp)
    c0020240:	0c013c83          	ld	s9,192(sp)
    c0020244:	0c813d03          	ld	s10,200(sp)
    c0020248:	0d013d83          	ld	s11,208(sp)
    c002024c:	0d813e03          	ld	t3,216(sp)
    c0020250:	0e013e83          	ld	t4,224(sp)
    c0020254:	0e813f03          	ld	t5,232(sp)
    c0020258:	0f013f83          	ld	t6,240(sp)
    c002025c:	0f810113          	addi	sp,sp,248
    c0020260:	00008067          	ret

00000000c0020264 <_trap_entry>:
    c0020264:	34011173          	csrrw	sp,mscratch,sp
    c0020268:	f0810113          	addi	sp,sp,-248
    c002026c:	00113023          	sd	ra,0(sp)
    c0020270:	00213423          	sd	sp,8(sp)
    c0020274:	00313823          	sd	gp,16(sp)
    c0020278:	00413c23          	sd	tp,24(sp)
    c002027c:	02513023          	sd	t0,32(sp)
    c0020280:	02613423          	sd	t1,40(sp)
    c0020284:	02713823          	sd	t2,48(sp)
    c0020288:	02813c23          	sd	s0,56(sp)
    c002028c:	04913023          	sd	s1,64(sp)
    c0020290:	04a13423          	sd	a0,72(sp)
    c0020294:	04b13823          	sd	a1,80(sp)
    c0020298:	04c13c23          	sd	a2,88(sp)
    c002029c:	06d13023          	sd	a3,96(sp)
    c00202a0:	06e13423          	sd	a4,104(sp)
    c00202a4:	06f13823          	sd	a5,112(sp)
    c00202a8:	07013c23          	sd	a6,120(sp)
    c00202ac:	09113023          	sd	a7,128(sp)
    c00202b0:	09213423          	sd	s2,136(sp)
    c00202b4:	09313823          	sd	s3,144(sp)
    c00202b8:	09413c23          	sd	s4,152(sp)
    c00202bc:	0b513023          	sd	s5,160(sp)
    c00202c0:	0b613423          	sd	s6,168(sp)
    c00202c4:	0b713823          	sd	s7,176(sp)
    c00202c8:	0b813c23          	sd	s8,184(sp)
    c00202cc:	0d913023          	sd	s9,192(sp)
    c00202d0:	0da13423          	sd	s10,200(sp)
    c00202d4:	0db13823          	sd	s11,208(sp)
    c00202d8:	0dc13c23          	sd	t3,216(sp)
    c00202dc:	0fd13023          	sd	t4,224(sp)
    c00202e0:	0fe13423          	sd	t5,232(sp)
    c00202e4:	0ff13823          	sd	t6,240(sp)
    c00202e8:	82018093          	addi	ra,gp,-2016 # c0023020 <trap_frame>
    c00202ec:	0020b023          	sd	sp,0(ra)
    c00202f0:	00000097          	auipc	ra,0x0
    c00202f4:	53c08093          	addi	ra,ra,1340 # c002082c <trap>
    c00202f8:	000080e7          	jalr	ra
    c00202fc:	00013083          	ld	ra,0(sp)
    c0020300:	00813103          	ld	sp,8(sp)
    c0020304:	01013183          	ld	gp,16(sp)
    c0020308:	01813203          	ld	tp,24(sp)
    c002030c:	02013283          	ld	t0,32(sp)
    c0020310:	02813303          	ld	t1,40(sp)
    c0020314:	03013383          	ld	t2,48(sp)
    c0020318:	03813403          	ld	s0,56(sp)
    c002031c:	04013483          	ld	s1,64(sp)
    c0020320:	04813503          	ld	a0,72(sp)
    c0020324:	05013583          	ld	a1,80(sp)
    c0020328:	05813603          	ld	a2,88(sp)
    c002032c:	06013683          	ld	a3,96(sp)
    c0020330:	06813703          	ld	a4,104(sp)
    c0020334:	07013783          	ld	a5,112(sp)
    c0020338:	07813803          	ld	a6,120(sp)
    c002033c:	08013883          	ld	a7,128(sp)
    c0020340:	08813903          	ld	s2,136(sp)
    c0020344:	09013983          	ld	s3,144(sp)
    c0020348:	09813a03          	ld	s4,152(sp)
    c002034c:	0a013a83          	ld	s5,160(sp)
    c0020350:	0a813b03          	ld	s6,168(sp)
    c0020354:	0b013b83          	ld	s7,176(sp)
    c0020358:	0b813c03          	ld	s8,184(sp)
    c002035c:	0c013c83          	ld	s9,192(sp)
    c0020360:	0c813d03          	ld	s10,200(sp)
    c0020364:	0d013d83          	ld	s11,208(sp)
    c0020368:	0d813e03          	ld	t3,216(sp)
    c002036c:	0e013e83          	ld	t4,224(sp)
    c0020370:	0e813f03          	ld	t5,232(sp)
    c0020374:	0f013f83          	ld	t6,240(sp)
    c0020378:	0f810113          	addi	sp,sp,248
    c002037c:	34011173          	csrrw	sp,mscratch,sp
    c0020380:	30200073          	mret

00000000c0020384 <print>:
    c0020384:	fd010113          	addi	sp,sp,-48
    c0020388:	02813423          	sd	s0,40(sp)
    c002038c:	03010413          	addi	s0,sp,48
    c0020390:	fca43c23          	sd	a0,-40(s0)
    c0020394:	fe042623          	sw	zero,-20(s0)
    c0020398:	0300006f          	j	c00203c8 <print+0x44>
    c002039c:	fec42783          	lw	a5,-20(s0)
    c00203a0:	fd843703          	ld	a4,-40(s0)
    c00203a4:	00f70733          	add	a4,a4,a5
    c00203a8:	060417b7          	lui	a5,0x6041
    c00203ac:	00579793          	slli	a5,a5,0x5
    c00203b0:	ff878793          	addi	a5,a5,-8 # 6040ff8 <_start-0xb9fdf008>
    c00203b4:	00074703          	lbu	a4,0(a4)
    c00203b8:	00e78023          	sb	a4,0(a5)
    c00203bc:	fec42783          	lw	a5,-20(s0)
    c00203c0:	0017879b          	addiw	a5,a5,1
    c00203c4:	fef42623          	sw	a5,-20(s0)
    c00203c8:	fec42783          	lw	a5,-20(s0)
    c00203cc:	fd843703          	ld	a4,-40(s0)
    c00203d0:	00f707b3          	add	a5,a4,a5
    c00203d4:	0007c783          	lbu	a5,0(a5)
    c00203d8:	fc0792e3          	bnez	a5,c002039c <print+0x18>
    c00203dc:	00000013          	nop
    c00203e0:	02813403          	ld	s0,40(sp)
    c00203e4:	03010113          	addi	sp,sp,48
    c00203e8:	00008067          	ret

00000000c00203ec <strcmp>:
    c00203ec:	fd010113          	addi	sp,sp,-48
    c00203f0:	02813423          	sd	s0,40(sp)
    c00203f4:	03010413          	addi	s0,sp,48
    c00203f8:	fca43c23          	sd	a0,-40(s0)
    c00203fc:	fcb43823          	sd	a1,-48(s0)
    c0020400:	fe042623          	sw	zero,-20(s0)
    c0020404:	0100006f          	j	c0020414 <strcmp+0x28>
    c0020408:	fec42783          	lw	a5,-20(s0)
    c002040c:	0017879b          	addiw	a5,a5,1
    c0020410:	fef42623          	sw	a5,-20(s0)
    c0020414:	fec42783          	lw	a5,-20(s0)
    c0020418:	fd843703          	ld	a4,-40(s0)
    c002041c:	00f707b3          	add	a5,a4,a5
    c0020420:	0007c783          	lbu	a5,0(a5)
    c0020424:	04078063          	beqz	a5,c0020464 <strcmp+0x78>
    c0020428:	fec42783          	lw	a5,-20(s0)
    c002042c:	fd043703          	ld	a4,-48(s0)
    c0020430:	00f707b3          	add	a5,a4,a5
    c0020434:	0007c783          	lbu	a5,0(a5)
    c0020438:	02078663          	beqz	a5,c0020464 <strcmp+0x78>
    c002043c:	fec42783          	lw	a5,-20(s0)
    c0020440:	fd843703          	ld	a4,-40(s0)
    c0020444:	00f707b3          	add	a5,a4,a5
    c0020448:	0007c683          	lbu	a3,0(a5)
    c002044c:	fec42783          	lw	a5,-20(s0)
    c0020450:	fd043703          	ld	a4,-48(s0)
    c0020454:	00f707b3          	add	a5,a4,a5
    c0020458:	0007c783          	lbu	a5,0(a5)
    c002045c:	00068713          	mv	a4,a3
    c0020460:	faf704e3          	beq	a4,a5,c0020408 <strcmp+0x1c>
    c0020464:	fec42783          	lw	a5,-20(s0)
    c0020468:	fd843703          	ld	a4,-40(s0)
    c002046c:	00f707b3          	add	a5,a4,a5
    c0020470:	0007c783          	lbu	a5,0(a5)
    c0020474:	02078063          	beqz	a5,c0020494 <strcmp+0xa8>
    c0020478:	fec42783          	lw	a5,-20(s0)
    c002047c:	fd043703          	ld	a4,-48(s0)
    c0020480:	00f707b3          	add	a5,a4,a5
    c0020484:	0007c783          	lbu	a5,0(a5)
    c0020488:	00078663          	beqz	a5,c0020494 <strcmp+0xa8>
    c002048c:	00100793          	li	a5,1
    c0020490:	0080006f          	j	c0020498 <strcmp+0xac>
    c0020494:	00000793          	li	a5,0
    c0020498:	00078513          	mv	a0,a5
    c002049c:	02813403          	ld	s0,40(sp)
    c00204a0:	03010113          	addi	sp,sp,48
    c00204a4:	00008067          	ret

00000000c00204a8 <get_line>:
    c00204a8:	fe010113          	addi	sp,sp,-32
    c00204ac:	00813c23          	sd	s0,24(sp)
    c00204b0:	02010413          	addi	s0,sp,32
    c00204b4:	fff00793          	li	a5,-1
    c00204b8:	fef42623          	sw	a5,-20(s0)
    c00204bc:	fec42783          	lw	a5,-20(s0)
    c00204c0:	0017879b          	addiw	a5,a5,1
    c00204c4:	fef42623          	sw	a5,-20(s0)
    c00204c8:	060417b7          	lui	a5,0x6041
    c00204cc:	00579793          	slli	a5,a5,0x5
    c00204d0:	ff878793          	addi	a5,a5,-8 # 6040ff8 <_start-0xb9fdf008>
    c00204d4:	0007c703          	lbu	a4,0(a5)
    c00204d8:	00003697          	auipc	a3,0x3
    c00204dc:	b5068693          	addi	a3,a3,-1200 # c0023028 <buffer>
    c00204e0:	fec42783          	lw	a5,-20(s0)
    c00204e4:	00f687b3          	add	a5,a3,a5
    c00204e8:	00e78023          	sb	a4,0(a5)
    c00204ec:	00003717          	auipc	a4,0x3
    c00204f0:	b3c70713          	addi	a4,a4,-1220 # c0023028 <buffer>
    c00204f4:	fec42783          	lw	a5,-20(s0)
    c00204f8:	00f707b3          	add	a5,a4,a5
    c00204fc:	0007c783          	lbu	a5,0(a5)
    c0020500:	00078713          	mv	a4,a5
    c0020504:	00a00793          	li	a5,10
    c0020508:	faf71ae3          	bne	a4,a5,c00204bc <get_line+0x14>
    c002050c:	fec42783          	lw	a5,-20(s0)
    c0020510:	0007879b          	sext.w	a5,a5
    c0020514:	02f05c63          	blez	a5,c002054c <get_line+0xa4>
    c0020518:	fec42783          	lw	a5,-20(s0)
    c002051c:	fff7879b          	addiw	a5,a5,-1
    c0020520:	0007879b          	sext.w	a5,a5
    c0020524:	00003717          	auipc	a4,0x3
    c0020528:	b0470713          	addi	a4,a4,-1276 # c0023028 <buffer>
    c002052c:	00f707b3          	add	a5,a4,a5
    c0020530:	0007c783          	lbu	a5,0(a5)
    c0020534:	00078713          	mv	a4,a5
    c0020538:	00d00793          	li	a5,13
    c002053c:	00f71863          	bne	a4,a5,c002054c <get_line+0xa4>
    c0020540:	fec42783          	lw	a5,-20(s0)
    c0020544:	fff7879b          	addiw	a5,a5,-1
    c0020548:	fef42623          	sw	a5,-20(s0)
    c002054c:	00003717          	auipc	a4,0x3
    c0020550:	adc70713          	addi	a4,a4,-1316 # c0023028 <buffer>
    c0020554:	fec42783          	lw	a5,-20(s0)
    c0020558:	00f707b3          	add	a5,a4,a5
    c002055c:	00078023          	sb	zero,0(a5)
    c0020560:	00000013          	nop
    c0020564:	01813403          	ld	s0,24(sp)
    c0020568:	02010113          	addi	sp,sp,32
    c002056c:	00008067          	ret

00000000c0020570 <hex2str>:
    c0020570:	fd010113          	addi	sp,sp,-48
    c0020574:	02813423          	sd	s0,40(sp)
    c0020578:	03010413          	addi	s0,sp,48
    c002057c:	00050793          	mv	a5,a0
    c0020580:	fcb43823          	sd	a1,-48(s0)
    c0020584:	fcf42e23          	sw	a5,-36(s0)
    c0020588:	fd043783          	ld	a5,-48(s0)
    c002058c:	03000713          	li	a4,48
    c0020590:	00e78023          	sb	a4,0(a5)
    c0020594:	fd043783          	ld	a5,-48(s0)
    c0020598:	00178793          	addi	a5,a5,1
    c002059c:	07800713          	li	a4,120
    c00205a0:	00e78023          	sb	a4,0(a5)
    c00205a4:	fe042623          	sw	zero,-20(s0)
    c00205a8:	0740006f          	j	c002061c <hex2str+0xac>
    c00205ac:	00700713          	li	a4,7
    c00205b0:	fec42783          	lw	a5,-20(s0)
    c00205b4:	40f707bb          	subw	a5,a4,a5
    c00205b8:	0007879b          	sext.w	a5,a5
    c00205bc:	0027979b          	slliw	a5,a5,0x2
    c00205c0:	0007879b          	sext.w	a5,a5
    c00205c4:	00078713          	mv	a4,a5
    c00205c8:	fdc42783          	lw	a5,-36(s0)
    c00205cc:	00e7d7bb          	srlw	a5,a5,a4
    c00205d0:	0007879b          	sext.w	a5,a5
    c00205d4:	00f7f793          	andi	a5,a5,15
    c00205d8:	0007871b          	sext.w	a4,a5
    c00205dc:	fec42783          	lw	a5,-20(s0)
    c00205e0:	0027879b          	addiw	a5,a5,2
    c00205e4:	0007879b          	sext.w	a5,a5
    c00205e8:	00078693          	mv	a3,a5
    c00205ec:	fd043783          	ld	a5,-48(s0)
    c00205f0:	00d787b3          	add	a5,a5,a3
    c00205f4:	00002697          	auipc	a3,0x2
    c00205f8:	eb468693          	addi	a3,a3,-332 # c00224a8 <INST_CONFIG+0x280>
    c00205fc:	02071713          	slli	a4,a4,0x20
    c0020600:	02075713          	srli	a4,a4,0x20
    c0020604:	00e68733          	add	a4,a3,a4
    c0020608:	00074703          	lbu	a4,0(a4)
    c002060c:	00e78023          	sb	a4,0(a5)
    c0020610:	fec42783          	lw	a5,-20(s0)
    c0020614:	0017879b          	addiw	a5,a5,1
    c0020618:	fef42623          	sw	a5,-20(s0)
    c002061c:	fec42783          	lw	a5,-20(s0)
    c0020620:	0007871b          	sext.w	a4,a5
    c0020624:	00700793          	li	a5,7
    c0020628:	f8e7d2e3          	bge	a5,a4,c00205ac <hex2str+0x3c>
    c002062c:	fd043783          	ld	a5,-48(s0)
    c0020630:	00a78793          	addi	a5,a5,10
    c0020634:	00078023          	sb	zero,0(a5)
    c0020638:	00000013          	nop
    c002063c:	02813403          	ld	s0,40(sp)
    c0020640:	03010113          	addi	sp,sp,48
    c0020644:	00008067          	ret

00000000c0020648 <print_hex>:
    c0020648:	fd010113          	addi	sp,sp,-48
    c002064c:	02113423          	sd	ra,40(sp)
    c0020650:	02813023          	sd	s0,32(sp)
    c0020654:	03010413          	addi	s0,sp,48
    c0020658:	00050793          	mv	a5,a0
    c002065c:	fcf42e23          	sw	a5,-36(s0)
    c0020660:	fe040713          	addi	a4,s0,-32
    c0020664:	fdc42783          	lw	a5,-36(s0)
    c0020668:	00070593          	mv	a1,a4
    c002066c:	00078513          	mv	a0,a5
    c0020670:	f01ff0ef          	jal	ra,c0020570 <hex2str>
    c0020674:	fe040793          	addi	a5,s0,-32
    c0020678:	00078513          	mv	a0,a5
    c002067c:	d09ff0ef          	jal	ra,c0020384 <print>
    c0020680:	00000013          	nop
    c0020684:	02813083          	ld	ra,40(sp)
    c0020688:	02013403          	ld	s0,32(sp)
    c002068c:	03010113          	addi	sp,sp,48
    c0020690:	00008067          	ret

00000000c0020694 <hexchar2int>:
    c0020694:	fe010113          	addi	sp,sp,-32
    c0020698:	00813c23          	sd	s0,24(sp)
    c002069c:	02010413          	addi	s0,sp,32
    c00206a0:	00050793          	mv	a5,a0
    c00206a4:	fef407a3          	sb	a5,-17(s0)
    c00206a8:	fef44783          	lbu	a5,-17(s0)
    c00206ac:	0ff7f713          	andi	a4,a5,255
    c00206b0:	02f00793          	li	a5,47
    c00206b4:	02e7f663          	bgeu	a5,a4,c00206e0 <hexchar2int+0x4c>
    c00206b8:	fef44783          	lbu	a5,-17(s0)
    c00206bc:	0ff7f713          	andi	a4,a5,255
    c00206c0:	03900793          	li	a5,57
    c00206c4:	00e7ee63          	bltu	a5,a4,c00206e0 <hexchar2int+0x4c>
    c00206c8:	fef44783          	lbu	a5,-17(s0)
    c00206cc:	0007879b          	sext.w	a5,a5
    c00206d0:	fd07879b          	addiw	a5,a5,-48
    c00206d4:	0007879b          	sext.w	a5,a5
    c00206d8:	0007879b          	sext.w	a5,a5
    c00206dc:	0180006f          	j	c00206f4 <hexchar2int+0x60>
    c00206e0:	fef44783          	lbu	a5,-17(s0)
    c00206e4:	0007879b          	sext.w	a5,a5
    c00206e8:	fa97879b          	addiw	a5,a5,-87
    c00206ec:	0007879b          	sext.w	a5,a5
    c00206f0:	0007879b          	sext.w	a5,a5
    c00206f4:	00078513          	mv	a0,a5
    c00206f8:	01813403          	ld	s0,24(sp)
    c00206fc:	02010113          	addi	sp,sp,32
    c0020700:	00008067          	ret

00000000c0020704 <str2hex>:
    c0020704:	fc010113          	addi	sp,sp,-64
    c0020708:	02113c23          	sd	ra,56(sp)
    c002070c:	02813823          	sd	s0,48(sp)
    c0020710:	02913423          	sd	s1,40(sp)
    c0020714:	04010413          	addi	s0,sp,64
    c0020718:	fca43423          	sd	a0,-56(s0)
    c002071c:	fc843783          	ld	a5,-56(s0)
    c0020720:	00278793          	addi	a5,a5,2
    c0020724:	fcf43423          	sd	a5,-56(s0)
    c0020728:	fc042e23          	sw	zero,-36(s0)
    c002072c:	0400006f          	j	c002076c <str2hex+0x68>
    c0020730:	fdc42783          	lw	a5,-36(s0)
    c0020734:	0047979b          	slliw	a5,a5,0x4
    c0020738:	0007849b          	sext.w	s1,a5
    c002073c:	fc843783          	ld	a5,-56(s0)
    c0020740:	0007c783          	lbu	a5,0(a5)
    c0020744:	00078513          	mv	a0,a5
    c0020748:	f4dff0ef          	jal	ra,c0020694 <hexchar2int>
    c002074c:	00050793          	mv	a5,a0
    c0020750:	0007879b          	sext.w	a5,a5
    c0020754:	00048713          	mv	a4,s1
    c0020758:	00f767b3          	or	a5,a4,a5
    c002075c:	fcf42e23          	sw	a5,-36(s0)
    c0020760:	fc843783          	ld	a5,-56(s0)
    c0020764:	00178793          	addi	a5,a5,1
    c0020768:	fcf43423          	sd	a5,-56(s0)
    c002076c:	fc843783          	ld	a5,-56(s0)
    c0020770:	0007c783          	lbu	a5,0(a5)
    c0020774:	00078c63          	beqz	a5,c002078c <str2hex+0x88>
    c0020778:	fc843783          	ld	a5,-56(s0)
    c002077c:	0007c783          	lbu	a5,0(a5)
    c0020780:	00078713          	mv	a4,a5
    c0020784:	02000793          	li	a5,32
    c0020788:	faf714e3          	bne	a4,a5,c0020730 <str2hex+0x2c>
    c002078c:	fdc42783          	lw	a5,-36(s0)
    c0020790:	00078513          	mv	a0,a5
    c0020794:	03813083          	ld	ra,56(sp)
    c0020798:	03013403          	ld	s0,48(sp)
    c002079c:	02813483          	ld	s1,40(sp)
    c00207a0:	04010113          	addi	sp,sp,64
    c00207a4:	00008067          	ret

00000000c00207a8 <print_help>:
    c00207a8:	ff010113          	addi	sp,sp,-16
    c00207ac:	00113423          	sd	ra,8(sp)
    c00207b0:	00813023          	sd	s0,0(sp)
    c00207b4:	01010413          	addi	s0,sp,16
    c00207b8:	00002517          	auipc	a0,0x2
    c00207bc:	d0850513          	addi	a0,a0,-760 # c00224c0 <INST_CONFIG+0x298>
    c00207c0:	bc5ff0ef          	jal	ra,c0020384 <print>
    c00207c4:	00002517          	auipc	a0,0x2
    c00207c8:	d0c50513          	addi	a0,a0,-756 # c00224d0 <INST_CONFIG+0x2a8>
    c00207cc:	bb9ff0ef          	jal	ra,c0020384 <print>
    c00207d0:	00002517          	auipc	a0,0x2
    c00207d4:	d2850513          	addi	a0,a0,-728 # c00224f8 <INST_CONFIG+0x2d0>
    c00207d8:	badff0ef          	jal	ra,c0020384 <print>
    c00207dc:	00002517          	auipc	a0,0x2
    c00207e0:	d5450513          	addi	a0,a0,-684 # c0022530 <INST_CONFIG+0x308>
    c00207e4:	ba1ff0ef          	jal	ra,c0020384 <print>
    c00207e8:	00002517          	auipc	a0,0x2
    c00207ec:	d7850513          	addi	a0,a0,-648 # c0022560 <INST_CONFIG+0x338>
    c00207f0:	b95ff0ef          	jal	ra,c0020384 <print>
    c00207f4:	00002517          	auipc	a0,0x2
    c00207f8:	da450513          	addi	a0,a0,-604 # c0022598 <INST_CONFIG+0x370>
    c00207fc:	b89ff0ef          	jal	ra,c0020384 <print>
    c0020800:	00002517          	auipc	a0,0x2
    c0020804:	dd050513          	addi	a0,a0,-560 # c00225d0 <INST_CONFIG+0x3a8>
    c0020808:	b7dff0ef          	jal	ra,c0020384 <print>
    c002080c:	00002517          	auipc	a0,0x2
    c0020810:	e0450513          	addi	a0,a0,-508 # c0022610 <INST_CONFIG+0x3e8>
    c0020814:	b71ff0ef          	jal	ra,c0020384 <print>
    c0020818:	00000013          	nop
    c002081c:	00813083          	ld	ra,8(sp)
    c0020820:	00013403          	ld	s0,0(sp)
    c0020824:	01010113          	addi	sp,sp,16
    c0020828:	00008067          	ret

00000000c002082c <trap>:
    c002082c:	f9010113          	addi	sp,sp,-112
    c0020830:	06113423          	sd	ra,104(sp)
    c0020834:	06813023          	sd	s0,96(sp)
    c0020838:	07010413          	addi	s0,sp,112
    c002083c:	342027f3          	csrr	a5,mcause
    c0020840:	fef43023          	sd	a5,-32(s0)
    c0020844:	fe043783          	ld	a5,-32(s0)
    c0020848:	fcf42e23          	sw	a5,-36(s0)
    c002084c:	fc043823          	sd	zero,-48(s0)
    c0020850:	fe042623          	sw	zero,-20(s0)
    c0020854:	fdc42783          	lw	a5,-36(s0)
    c0020858:	0e07d463          	bgez	a5,c0020940 <trap+0x114>
    c002085c:	fdc42703          	lw	a4,-36(s0)
    c0020860:	800007b7          	lui	a5,0x80000
    c0020864:	fff7c793          	not	a5,a5
    c0020868:	00f777b3          	and	a5,a4,a5
    c002086c:	0007879b          	sext.w	a5,a5
    c0020870:	00078713          	mv	a4,a5
    c0020874:	00700793          	li	a5,7
    c0020878:	02f71a63          	bne	a4,a5,c00208ac <trap+0x80>
    c002087c:	c01027f3          	rdtime	a5
    c0020880:	fcf43823          	sd	a5,-48(s0)
    c0020884:	fd043703          	ld	a4,-48(s0)
    c0020888:	000017b7          	lui	a5,0x1
    c002088c:	00f707b3          	add	a5,a4,a5
    c0020890:	fcf43423          	sd	a5,-56(s0)
    c0020894:	fc843783          	ld	a5,-56(s0)
    c0020898:	32179073          	csrw	mscounteren,a5
    c002089c:	00002517          	auipc	a0,0x2
    c00208a0:	de450513          	addi	a0,a0,-540 # c0022680 <INST_CONFIG+0x458>
    c00208a4:	ae1ff0ef          	jal	ra,c0020384 <print>
    c00208a8:	06c0006f          	j	c0020914 <trap+0xe8>
    c00208ac:	00002517          	auipc	a0,0x2
    c00208b0:	df450513          	addi	a0,a0,-524 # c00226a0 <INST_CONFIG+0x478>
    c00208b4:	ad1ff0ef          	jal	ra,c0020384 <print>
    c00208b8:	00002517          	auipc	a0,0x2
    c00208bc:	e1050513          	addi	a0,a0,-496 # c00226c8 <INST_CONFIG+0x4a0>
    c00208c0:	ac5ff0ef          	jal	ra,c0020384 <print>
    c00208c4:	fdc42783          	lw	a5,-36(s0)
    c00208c8:	00078513          	mv	a0,a5
    c00208cc:	d7dff0ef          	jal	ra,c0020648 <print_hex>
    c00208d0:	00002517          	auipc	a0,0x2
    c00208d4:	e0050513          	addi	a0,a0,-512 # c00226d0 <INST_CONFIG+0x4a8>
    c00208d8:	aadff0ef          	jal	ra,c0020384 <print>
    c00208dc:	00002517          	auipc	a0,0x2
    c00208e0:	dfc50513          	addi	a0,a0,-516 # c00226d8 <INST_CONFIG+0x4b0>
    c00208e4:	aa1ff0ef          	jal	ra,c0020384 <print>
    c00208e8:	341027f3          	csrr	a5,mepc
    c00208ec:	fcf43023          	sd	a5,-64(s0)
    c00208f0:	fc043783          	ld	a5,-64(s0)
    c00208f4:	0007879b          	sext.w	a5,a5
    c00208f8:	00078513          	mv	a0,a5
    c00208fc:	d4dff0ef          	jal	ra,c0020648 <print_hex>
    c0020900:	00002517          	auipc	a0,0x2
    c0020904:	dd050513          	addi	a0,a0,-560 # c00226d0 <INST_CONFIG+0x4a8>
    c0020908:	a7dff0ef          	jal	ra,c0020384 <print>
    c002090c:	00100793          	li	a5,1
    c0020910:	fef42623          	sw	a5,-20(s0)
    c0020914:	fdc42703          	lw	a4,-36(s0)
    c0020918:	800007b7          	lui	a5,0x80000
    c002091c:	fff7c793          	not	a5,a5
    c0020920:	00f777b3          	and	a5,a4,a5
    c0020924:	0007879b          	sext.w	a5,a5
    c0020928:	00100713          	li	a4,1
    c002092c:	00f717bb          	sllw	a5,a4,a5
    c0020930:	0007879b          	sext.w	a5,a5
    c0020934:	3447b7f3          	csrrc	a5,mip,a5
    c0020938:	faf43c23          	sd	a5,-72(s0)
    c002093c:	24c0006f          	j	c0020b88 <trap+0x35c>
    c0020940:	fdc42783          	lw	a5,-36(s0)
    c0020944:	0007871b          	sext.w	a4,a5
    c0020948:	00b00793          	li	a5,11
    c002094c:	1ce7ea63          	bltu	a5,a4,c0020b20 <trap+0x2f4>
    c0020950:	fdc46783          	lwu	a5,-36(s0)
    c0020954:	00279713          	slli	a4,a5,0x2
    c0020958:	00002797          	auipc	a5,0x2
    c002095c:	e6478793          	addi	a5,a5,-412 # c00227bc <INST_CONFIG+0x594>
    c0020960:	00f707b3          	add	a5,a4,a5
    c0020964:	0007a783          	lw	a5,0(a5)
    c0020968:	0007871b          	sext.w	a4,a5
    c002096c:	00002797          	auipc	a5,0x2
    c0020970:	e5078793          	addi	a5,a5,-432 # c00227bc <INST_CONFIG+0x594>
    c0020974:	00f707b3          	add	a5,a4,a5
    c0020978:	00078067          	jr	a5
    c002097c:	00002517          	auipc	a0,0x2
    c0020980:	d6450513          	addi	a0,a0,-668 # c00226e0 <INST_CONFIG+0x4b8>
    c0020984:	a01ff0ef          	jal	ra,c0020384 <print>
    c0020988:	343027f3          	csrr	a5,mtval
    c002098c:	faf43823          	sd	a5,-80(s0)
    c0020990:	fb043783          	ld	a5,-80(s0)
    c0020994:	0007879b          	sext.w	a5,a5
    c0020998:	00078513          	mv	a0,a5
    c002099c:	cadff0ef          	jal	ra,c0020648 <print_hex>
    c00209a0:	00002517          	auipc	a0,0x2
    c00209a4:	d3050513          	addi	a0,a0,-720 # c00226d0 <INST_CONFIG+0x4a8>
    c00209a8:	9ddff0ef          	jal	ra,c0020384 <print>
    c00209ac:	00100793          	li	a5,1
    c00209b0:	fef42623          	sw	a5,-20(s0)
    c00209b4:	1d40006f          	j	c0020b88 <trap+0x35c>
    c00209b8:	00002517          	auipc	a0,0x2
    c00209bc:	d5050513          	addi	a0,a0,-688 # c0022708 <INST_CONFIG+0x4e0>
    c00209c0:	9c5ff0ef          	jal	ra,c0020384 <print>
    c00209c4:	00100793          	li	a5,1
    c00209c8:	fef42623          	sw	a5,-20(s0)
    c00209cc:	1bc0006f          	j	c0020b88 <trap+0x35c>
    c00209d0:	00002517          	auipc	a0,0x2
    c00209d4:	d5850513          	addi	a0,a0,-680 # c0022728 <INST_CONFIG+0x500>
    c00209d8:	9adff0ef          	jal	ra,c0020384 <print>
    c00209dc:	343027f3          	csrr	a5,mtval
    c00209e0:	faf43423          	sd	a5,-88(s0)
    c00209e4:	fa843783          	ld	a5,-88(s0)
    c00209e8:	0007879b          	sext.w	a5,a5
    c00209ec:	00078513          	mv	a0,a5
    c00209f0:	c59ff0ef          	jal	ra,c0020648 <print_hex>
    c00209f4:	00002517          	auipc	a0,0x2
    c00209f8:	cdc50513          	addi	a0,a0,-804 # c00226d0 <INST_CONFIG+0x4a8>
    c00209fc:	989ff0ef          	jal	ra,c0020384 <print>
    c0020a00:	1880006f          	j	c0020b88 <trap+0x35c>
    c0020a04:	00002517          	auipc	a0,0x2
    c0020a08:	d4450513          	addi	a0,a0,-700 # c0022748 <INST_CONFIG+0x520>
    c0020a0c:	979ff0ef          	jal	ra,c0020384 <print>
    c0020a10:	343027f3          	csrr	a5,mtval
    c0020a14:	faf43023          	sd	a5,-96(s0)
    c0020a18:	fa043783          	ld	a5,-96(s0)
    c0020a1c:	0007879b          	sext.w	a5,a5
    c0020a20:	00078513          	mv	a0,a5
    c0020a24:	c25ff0ef          	jal	ra,c0020648 <print_hex>
    c0020a28:	00002517          	auipc	a0,0x2
    c0020a2c:	ca850513          	addi	a0,a0,-856 # c00226d0 <INST_CONFIG+0x4a8>
    c0020a30:	955ff0ef          	jal	ra,c0020384 <print>
    c0020a34:	00100793          	li	a5,1
    c0020a38:	fef42623          	sw	a5,-20(s0)
    c0020a3c:	14c0006f          	j	c0020b88 <trap+0x35c>
    c0020a40:	82018793          	addi	a5,gp,-2016 # c0023020 <trap_frame>
    c0020a44:	0007b783          	ld	a5,0(a5)
    c0020a48:	02878793          	addi	a5,a5,40
    c0020a4c:	0007a783          	lw	a5,0(a5)
    c0020a50:	00078693          	mv	a3,a5
    c0020a54:	00100713          	li	a4,1
    c0020a58:	02e68463          	beq	a3,a4,c0020a80 <trap+0x254>
    c0020a5c:	00078713          	mv	a4,a5
    c0020a60:	00070a63          	beqz	a4,c0020a74 <trap+0x248>
    c0020a64:	00078713          	mv	a4,a5
    c0020a68:	00200793          	li	a5,2
    c0020a6c:	02f70e63          	beq	a4,a5,c0020aa8 <trap+0x27c>
    c0020a70:	0600006f          	j	c0020ad0 <trap+0x2a4>
    c0020a74:	00100793          	li	a5,1
    c0020a78:	fef42623          	sw	a5,-20(s0)
    c0020a7c:	08c0006f          	j	c0020b08 <trap+0x2dc>
    c0020a80:	82018793          	addi	a5,gp,-2016 # c0023020 <trap_frame>
    c0020a84:	0007b783          	ld	a5,0(a5)
    c0020a88:	02c78793          	addi	a5,a5,44
    c0020a8c:	0007a703          	lw	a4,0(a5)
    c0020a90:	060417b7          	lui	a5,0x6041
    c0020a94:	00579793          	slli	a5,a5,0x5
    c0020a98:	ff878793          	addi	a5,a5,-8 # 6040ff8 <_start-0xb9fdf008>
    c0020a9c:	0ff77713          	andi	a4,a4,255
    c0020aa0:	00e78023          	sb	a4,0(a5)
    c0020aa4:	0640006f          	j	c0020b08 <trap+0x2dc>
    c0020aa8:	060417b7          	lui	a5,0x6041
    c0020aac:	00579793          	slli	a5,a5,0x5
    c0020ab0:	ff878793          	addi	a5,a5,-8 # 6040ff8 <_start-0xb9fdf008>
    c0020ab4:	0007c703          	lbu	a4,0(a5)
    c0020ab8:	82018793          	addi	a5,gp,-2016 # c0023020 <trap_frame>
    c0020abc:	0007b783          	ld	a5,0(a5)
    c0020ac0:	02478793          	addi	a5,a5,36
    c0020ac4:	0007071b          	sext.w	a4,a4
    c0020ac8:	00e7a023          	sw	a4,0(a5)
    c0020acc:	03c0006f          	j	c0020b08 <trap+0x2dc>
    c0020ad0:	00002517          	auipc	a0,0x2
    c0020ad4:	c9850513          	addi	a0,a0,-872 # c0022768 <INST_CONFIG+0x540>
    c0020ad8:	8adff0ef          	jal	ra,c0020384 <print>
    c0020adc:	82018793          	addi	a5,gp,-2016 # c0023020 <trap_frame>
    c0020ae0:	0007b783          	ld	a5,0(a5)
    c0020ae4:	02878793          	addi	a5,a5,40
    c0020ae8:	0007a783          	lw	a5,0(a5)
    c0020aec:	00078513          	mv	a0,a5
    c0020af0:	b59ff0ef          	jal	ra,c0020648 <print_hex>
    c0020af4:	00002517          	auipc	a0,0x2
    c0020af8:	bdc50513          	addi	a0,a0,-1060 # c00226d0 <INST_CONFIG+0x4a8>
    c0020afc:	889ff0ef          	jal	ra,c0020384 <print>
    c0020b00:	00100793          	li	a5,1
    c0020b04:	fef42623          	sw	a5,-20(s0)
    c0020b08:	341027f3          	csrr	a5,mepc
    c0020b0c:	f8f43c23          	sd	a5,-104(s0)
    c0020b10:	f9843783          	ld	a5,-104(s0)
    c0020b14:	00478793          	addi	a5,a5,4
    c0020b18:	34179073          	csrw	mepc,a5
    c0020b1c:	06c0006f          	j	c0020b88 <trap+0x35c>
    c0020b20:	00002517          	auipc	a0,0x2
    c0020b24:	c6050513          	addi	a0,a0,-928 # c0022780 <INST_CONFIG+0x558>
    c0020b28:	85dff0ef          	jal	ra,c0020384 <print>
    c0020b2c:	00002517          	auipc	a0,0x2
    c0020b30:	b9c50513          	addi	a0,a0,-1124 # c00226c8 <INST_CONFIG+0x4a0>
    c0020b34:	851ff0ef          	jal	ra,c0020384 <print>
    c0020b38:	fdc42783          	lw	a5,-36(s0)
    c0020b3c:	00078513          	mv	a0,a5
    c0020b40:	b09ff0ef          	jal	ra,c0020648 <print_hex>
    c0020b44:	00002517          	auipc	a0,0x2
    c0020b48:	b8c50513          	addi	a0,a0,-1140 # c00226d0 <INST_CONFIG+0x4a8>
    c0020b4c:	839ff0ef          	jal	ra,c0020384 <print>
    c0020b50:	00002517          	auipc	a0,0x2
    c0020b54:	b8850513          	addi	a0,a0,-1144 # c00226d8 <INST_CONFIG+0x4b0>
    c0020b58:	82dff0ef          	jal	ra,c0020384 <print>
    c0020b5c:	341027f3          	csrr	a5,mepc
    c0020b60:	f8f43823          	sd	a5,-112(s0)
    c0020b64:	f9043783          	ld	a5,-112(s0)
    c0020b68:	0007879b          	sext.w	a5,a5
    c0020b6c:	00078513          	mv	a0,a5
    c0020b70:	ad9ff0ef          	jal	ra,c0020648 <print_hex>
    c0020b74:	00002517          	auipc	a0,0x2
    c0020b78:	b5c50513          	addi	a0,a0,-1188 # c00226d0 <INST_CONFIG+0x4a8>
    c0020b7c:	809ff0ef          	jal	ra,c0020384 <print>
    c0020b80:	00100793          	li	a5,1
    c0020b84:	fef42623          	sw	a5,-20(s0)
    c0020b88:	fec42783          	lw	a5,-20(s0)
    c0020b8c:	0007879b          	sext.w	a5,a5
    c0020b90:	02078663          	beqz	a5,c0020bbc <trap+0x390>
    c0020b94:	00002797          	auipc	a5,0x2
    c0020b98:	47478793          	addi	a5,a5,1140 # c0023008 <in_user>
    c0020b9c:	0007a783          	lw	a5,0(a5)
    c0020ba0:	00078e63          	beqz	a5,c0020bbc <trap+0x390>
    c0020ba4:	fffff797          	auipc	a5,0xfffff
    c0020ba8:	59c78793          	addi	a5,a5,1436 # c0020140 <_exit>
    c0020bac:	34179073          	csrw	mepc,a5
    c0020bb0:	00002517          	auipc	a0,0x2
    c0020bb4:	bf850513          	addi	a0,a0,-1032 # c00227a8 <INST_CONFIG+0x580>
    c0020bb8:	fccff0ef          	jal	ra,c0020384 <print>
    c0020bbc:	00000013          	nop
    c0020bc0:	06813083          	ld	ra,104(sp)
    c0020bc4:	06013403          	ld	s0,96(sp)
    c0020bc8:	07010113          	addi	sp,sp,112
    c0020bcc:	00008067          	ret

00000000c0020bd0 <init>:
    c0020bd0:	fd010113          	addi	sp,sp,-48
    c0020bd4:	02813423          	sd	s0,40(sp)
    c0020bd8:	03010413          	addi	s0,sp,48
    c0020bdc:	060037b7          	lui	a5,0x6003
    c0020be0:	00579793          	slli	a5,a5,0x5
    c0020be4:	34079073          	csrw	mscratch,a5
    c0020be8:	fffff797          	auipc	a5,0xfffff
    c0020bec:	67c78793          	addi	a5,a5,1660 # c0020264 <_trap_entry>
    c0020bf0:	30579073          	csrw	mtvec,a5
    c0020bf4:	300467f3          	csrrsi	a5,mstatus,8
    c0020bf8:	fef43023          	sd	a5,-32(s0)
    c0020bfc:	060417b7          	lui	a5,0x6041
    c0020c00:	00579793          	slli	a5,a5,0x5
    c0020c04:	fc078793          	addi	a5,a5,-64 # 6040fc0 <_start-0xb9fdf040>
    c0020c08:	0007b023          	sd	zero,0(a5)
    c0020c0c:	060417b7          	lui	a5,0x6041
    c0020c10:	00579793          	slli	a5,a5,0x5
    c0020c14:	fc878793          	addi	a5,a5,-56 # 6040fc8 <_start-0xb9fdf038>
    c0020c18:	0007b023          	sd	zero,0(a5)
    c0020c1c:	000017b7          	lui	a5,0x1
    c0020c20:	8807879b          	addiw	a5,a5,-1920
    c0020c24:	3047a7f3          	csrrs	a5,mie,a5
    c0020c28:	fcf43c23          	sd	a5,-40(s0)
    c0020c2c:	00002797          	auipc	a5,0x2
    c0020c30:	3dc78793          	addi	a5,a5,988 # c0023008 <in_user>
    c0020c34:	0007a023          	sw	zero,0(a5)
    c0020c38:	81818793          	addi	a5,gp,-2024 # c0023018 <time_lim>
    c0020c3c:	06400713          	li	a4,100
    c0020c40:	00e7a023          	sw	a4,0(a5)
    c0020c44:	fe042623          	sw	zero,-20(s0)
    c0020c48:	0280006f          	j	c0020c70 <init+0xa0>
    c0020c4c:	00002717          	auipc	a4,0x2
    c0020c50:	41c70713          	addi	a4,a4,1052 # c0023068 <regs>
    c0020c54:	fec42783          	lw	a5,-20(s0)
    c0020c58:	00279793          	slli	a5,a5,0x2
    c0020c5c:	00f707b3          	add	a5,a4,a5
    c0020c60:	0007a023          	sw	zero,0(a5)
    c0020c64:	fec42783          	lw	a5,-20(s0)
    c0020c68:	0017879b          	addiw	a5,a5,1
    c0020c6c:	fef42623          	sw	a5,-20(s0)
    c0020c70:	fec42783          	lw	a5,-20(s0)
    c0020c74:	0007871b          	sext.w	a4,a5
    c0020c78:	01f00793          	li	a5,31
    c0020c7c:	fce7d8e3          	bge	a5,a4,c0020c4c <init+0x7c>
    c0020c80:	00000013          	nop
    c0020c84:	02813403          	ld	s0,40(sp)
    c0020c88:	03010113          	addi	sp,sp,48
    c0020c8c:	00008067          	ret

00000000c0020c90 <next_word>:
    c0020c90:	fe010113          	addi	sp,sp,-32
    c0020c94:	00813c23          	sd	s0,24(sp)
    c0020c98:	02010413          	addi	s0,sp,32
    c0020c9c:	fea43423          	sd	a0,-24(s0)
    c0020ca0:	0100006f          	j	c0020cb0 <next_word+0x20>
    c0020ca4:	fe843783          	ld	a5,-24(s0)
    c0020ca8:	00178793          	addi	a5,a5,1
    c0020cac:	fef43423          	sd	a5,-24(s0)
    c0020cb0:	fe843783          	ld	a5,-24(s0)
    c0020cb4:	0007c783          	lbu	a5,0(a5)
    c0020cb8:	02078463          	beqz	a5,c0020ce0 <next_word+0x50>
    c0020cbc:	fe843783          	ld	a5,-24(s0)
    c0020cc0:	0007c783          	lbu	a5,0(a5)
    c0020cc4:	00078713          	mv	a4,a5
    c0020cc8:	02000793          	li	a5,32
    c0020ccc:	fcf71ce3          	bne	a4,a5,c0020ca4 <next_word+0x14>
    c0020cd0:	0100006f          	j	c0020ce0 <next_word+0x50>
    c0020cd4:	fe843783          	ld	a5,-24(s0)
    c0020cd8:	00178793          	addi	a5,a5,1
    c0020cdc:	fef43423          	sd	a5,-24(s0)
    c0020ce0:	fe843783          	ld	a5,-24(s0)
    c0020ce4:	0007c783          	lbu	a5,0(a5)
    c0020ce8:	00078c63          	beqz	a5,c0020d00 <next_word+0x70>
    c0020cec:	fe843783          	ld	a5,-24(s0)
    c0020cf0:	0007c783          	lbu	a5,0(a5)
    c0020cf4:	00078713          	mv	a4,a5
    c0020cf8:	02000793          	li	a5,32
    c0020cfc:	fcf70ce3          	beq	a4,a5,c0020cd4 <next_word+0x44>
    c0020d00:	fe843783          	ld	a5,-24(s0)
    c0020d04:	00078513          	mv	a0,a5
    c0020d08:	01813403          	ld	s0,24(sp)
    c0020d0c:	02010113          	addi	sp,sp,32
    c0020d10:	00008067          	ret

00000000c0020d14 <jump_exe>:
    c0020d14:	fe010113          	addi	sp,sp,-32
    c0020d18:	00113c23          	sd	ra,24(sp)
    c0020d1c:	00813823          	sd	s0,16(sp)
    c0020d20:	02010413          	addi	s0,sp,32
    c0020d24:	00002517          	auipc	a0,0x2
    c0020d28:	30450513          	addi	a0,a0,772 # c0023028 <buffer>
    c0020d2c:	f65ff0ef          	jal	ra,c0020c90 <next_word>
    c0020d30:	fea43423          	sd	a0,-24(s0)
    c0020d34:	fe843783          	ld	a5,-24(s0)
    c0020d38:	0007c783          	lbu	a5,0(a5)
    c0020d3c:	0a078263          	beqz	a5,c0020de0 <jump_exe+0xcc>
    c0020d40:	fe843783          	ld	a5,-24(s0)
    c0020d44:	00178793          	addi	a5,a5,1
    c0020d48:	0007c783          	lbu	a5,0(a5)
    c0020d4c:	08078a63          	beqz	a5,c0020de0 <jump_exe+0xcc>
    c0020d50:	fe843503          	ld	a0,-24(s0)
    c0020d54:	9b1ff0ef          	jal	ra,c0020704 <str2hex>
    c0020d58:	00050793          	mv	a5,a0
    c0020d5c:	fef42223          	sw	a5,-28(s0)
    c0020d60:	fe442783          	lw	a5,-28(s0)
    c0020d64:	00078513          	mv	a0,a5
    c0020d68:	ab4ff0ef          	jal	ra,c002001c <_entry>
    c0020d6c:	81818793          	addi	a5,gp,-2024 # c0023018 <time_lim>
    c0020d70:	0007a703          	lw	a4,0(a5)
    c0020d74:	81018793          	addi	a5,gp,-2032 # c0023010 <time_count>
    c0020d78:	0007a783          	lw	a5,0(a5)
    c0020d7c:	00e7e863          	bltu	a5,a4,c0020d8c <jump_exe+0x78>
    c0020d80:	00002517          	auipc	a0,0x2
    c0020d84:	a7050513          	addi	a0,a0,-1424 # c00227f0 <INST_CONFIG+0x5c8>
    c0020d88:	dfcff0ef          	jal	ra,c0020384 <print>
    c0020d8c:	00002517          	auipc	a0,0x2
    c0020d90:	aa450513          	addi	a0,a0,-1372 # c0022830 <INST_CONFIG+0x608>
    c0020d94:	df0ff0ef          	jal	ra,c0020384 <print>
    c0020d98:	81018793          	addi	a5,gp,-2032 # c0023010 <time_count>
    c0020d9c:	0007a783          	lw	a5,0(a5)
    c0020da0:	00078513          	mv	a0,a5
    c0020da4:	8a5ff0ef          	jal	ra,c0020648 <print_hex>
    c0020da8:	00002517          	auipc	a0,0x2
    c0020dac:	aa050513          	addi	a0,a0,-1376 # c0022848 <INST_CONFIG+0x620>
    c0020db0:	dd4ff0ef          	jal	ra,c0020384 <print>
    c0020db4:	00002517          	auipc	a0,0x2
    c0020db8:	a9c50513          	addi	a0,a0,-1380 # c0022850 <INST_CONFIG+0x628>
    c0020dbc:	dc8ff0ef          	jal	ra,c0020384 <print>
    c0020dc0:	81818793          	addi	a5,gp,-2024 # c0023018 <time_lim>
    c0020dc4:	0007a783          	lw	a5,0(a5)
    c0020dc8:	00078513          	mv	a0,a5
    c0020dcc:	87dff0ef          	jal	ra,c0020648 <print_hex>
    c0020dd0:	00002517          	auipc	a0,0x2
    c0020dd4:	a7850513          	addi	a0,a0,-1416 # c0022848 <INST_CONFIG+0x620>
    c0020dd8:	dacff0ef          	jal	ra,c0020384 <print>
    c0020ddc:	0080006f          	j	c0020de4 <jump_exe+0xd0>
    c0020de0:	00000013          	nop
    c0020de4:	01813083          	ld	ra,24(sp)
    c0020de8:	01013403          	ld	s0,16(sp)
    c0020dec:	02010113          	addi	sp,sp,32
    c0020df0:	00008067          	ret

00000000c0020df4 <reg_exe>:
    c0020df4:	fe010113          	addi	sp,sp,-32
    c0020df8:	00113c23          	sd	ra,24(sp)
    c0020dfc:	00813823          	sd	s0,16(sp)
    c0020e00:	02010413          	addi	s0,sp,32
    c0020e04:	fe042623          	sw	zero,-20(s0)
    c0020e08:	0600006f          	j	c0020e68 <reg_exe+0x74>
    c0020e0c:	00002517          	auipc	a0,0x2
    c0020e10:	a5c50513          	addi	a0,a0,-1444 # c0022868 <INST_CONFIG+0x640>
    c0020e14:	d70ff0ef          	jal	ra,c0020384 <print>
    c0020e18:	fec42783          	lw	a5,-20(s0)
    c0020e1c:	00078513          	mv	a0,a5
    c0020e20:	829ff0ef          	jal	ra,c0020648 <print_hex>
    c0020e24:	00002517          	auipc	a0,0x2
    c0020e28:	a4c50513          	addi	a0,a0,-1460 # c0022870 <INST_CONFIG+0x648>
    c0020e2c:	d58ff0ef          	jal	ra,c0020384 <print>
    c0020e30:	00002717          	auipc	a4,0x2
    c0020e34:	23870713          	addi	a4,a4,568 # c0023068 <regs>
    c0020e38:	fec42783          	lw	a5,-20(s0)
    c0020e3c:	00279793          	slli	a5,a5,0x2
    c0020e40:	00f707b3          	add	a5,a4,a5
    c0020e44:	0007a783          	lw	a5,0(a5)
    c0020e48:	00078513          	mv	a0,a5
    c0020e4c:	ffcff0ef          	jal	ra,c0020648 <print_hex>
    c0020e50:	00002517          	auipc	a0,0x2
    c0020e54:	88050513          	addi	a0,a0,-1920 # c00226d0 <INST_CONFIG+0x4a8>
    c0020e58:	d2cff0ef          	jal	ra,c0020384 <print>
    c0020e5c:	fec42783          	lw	a5,-20(s0)
    c0020e60:	0017879b          	addiw	a5,a5,1
    c0020e64:	fef42623          	sw	a5,-20(s0)
    c0020e68:	fec42783          	lw	a5,-20(s0)
    c0020e6c:	0007871b          	sext.w	a4,a5
    c0020e70:	01f00793          	li	a5,31
    c0020e74:	f8e7dce3          	bge	a5,a4,c0020e0c <reg_exe+0x18>
    c0020e78:	00000013          	nop
    c0020e7c:	01813083          	ld	ra,24(sp)
    c0020e80:	01013403          	ld	s0,16(sp)
    c0020e84:	02010113          	addi	sp,sp,32
    c0020e88:	00008067          	ret

00000000c0020e8c <edit_exe>:
    c0020e8c:	fd010113          	addi	sp,sp,-48
    c0020e90:	02113423          	sd	ra,40(sp)
    c0020e94:	02813023          	sd	s0,32(sp)
    c0020e98:	03010413          	addi	s0,sp,48
    c0020e9c:	00002517          	auipc	a0,0x2
    c0020ea0:	18c50513          	addi	a0,a0,396 # c0023028 <buffer>
    c0020ea4:	dedff0ef          	jal	ra,c0020c90 <next_word>
    c0020ea8:	fea43023          	sd	a0,-32(s0)
    c0020eac:	fe043783          	ld	a5,-32(s0)
    c0020eb0:	0007c783          	lbu	a5,0(a5)
    c0020eb4:	0a078063          	beqz	a5,c0020f54 <edit_exe+0xc8>
    c0020eb8:	fe043783          	ld	a5,-32(s0)
    c0020ebc:	00178793          	addi	a5,a5,1
    c0020ec0:	0007c783          	lbu	a5,0(a5)
    c0020ec4:	08078863          	beqz	a5,c0020f54 <edit_exe+0xc8>
    c0020ec8:	fe043503          	ld	a0,-32(s0)
    c0020ecc:	839ff0ef          	jal	ra,c0020704 <str2hex>
    c0020ed0:	00050793          	mv	a5,a0
    c0020ed4:	fef42623          	sw	a5,-20(s0)
    c0020ed8:	00002517          	auipc	a0,0x2
    c0020edc:	9a050513          	addi	a0,a0,-1632 # c0022878 <INST_CONFIG+0x650>
    c0020ee0:	ca4ff0ef          	jal	ra,c0020384 <print>
    c0020ee4:	fec42783          	lw	a5,-20(s0)
    c0020ee8:	00078513          	mv	a0,a5
    c0020eec:	f5cff0ef          	jal	ra,c0020648 <print_hex>
    c0020ef0:	00002517          	auipc	a0,0x2
    c0020ef4:	99050513          	addi	a0,a0,-1648 # c0022880 <INST_CONFIG+0x658>
    c0020ef8:	c8cff0ef          	jal	ra,c0020384 <print>
    c0020efc:	dacff0ef          	jal	ra,c00204a8 <get_line>
    c0020f00:	00002797          	auipc	a5,0x2
    c0020f04:	12878793          	addi	a5,a5,296 # c0023028 <buffer>
    c0020f08:	0007c783          	lbu	a5,0(a5)
    c0020f0c:	04078663          	beqz	a5,c0020f58 <edit_exe+0xcc>
    c0020f10:	00002797          	auipc	a5,0x2
    c0020f14:	11878793          	addi	a5,a5,280 # c0023028 <buffer>
    c0020f18:	0017c783          	lbu	a5,1(a5)
    c0020f1c:	02078e63          	beqz	a5,c0020f58 <edit_exe+0xcc>
    c0020f20:	00002517          	auipc	a0,0x2
    c0020f24:	10850513          	addi	a0,a0,264 # c0023028 <buffer>
    c0020f28:	fdcff0ef          	jal	ra,c0020704 <str2hex>
    c0020f2c:	00050793          	mv	a5,a0
    c0020f30:	fcf42e23          	sw	a5,-36(s0)
    c0020f34:	fec46783          	lwu	a5,-20(s0)
    c0020f38:	00078713          	mv	a4,a5
    c0020f3c:	fdc42783          	lw	a5,-36(s0)
    c0020f40:	00f72023          	sw	a5,0(a4)
    c0020f44:	fec42783          	lw	a5,-20(s0)
    c0020f48:	0047879b          	addiw	a5,a5,4
    c0020f4c:	fef42623          	sw	a5,-20(s0)
    c0020f50:	f89ff06f          	j	c0020ed8 <edit_exe+0x4c>
    c0020f54:	00000013          	nop
    c0020f58:	02813083          	ld	ra,40(sp)
    c0020f5c:	02013403          	ld	s0,32(sp)
    c0020f60:	03010113          	addi	sp,sp,48
    c0020f64:	00008067          	ret

00000000c0020f68 <parse_arg>:
    c0020f68:	fe010113          	addi	sp,sp,-32
    c0020f6c:	00113c23          	sd	ra,24(sp)
    c0020f70:	00813823          	sd	s0,16(sp)
    c0020f74:	02010413          	addi	s0,sp,32
    c0020f78:	fea43423          	sd	a0,-24(s0)
    c0020f7c:	feb43023          	sd	a1,-32(s0)
    c0020f80:	fe843783          	ld	a5,-24(s0)
    c0020f84:	0007c783          	lbu	a5,0(a5)
    c0020f88:	00078a63          	beqz	a5,c0020f9c <parse_arg+0x34>
    c0020f8c:	fe843783          	ld	a5,-24(s0)
    c0020f90:	00178793          	addi	a5,a5,1
    c0020f94:	0007c783          	lbu	a5,0(a5)
    c0020f98:	00079663          	bnez	a5,c0020fa4 <parse_arg+0x3c>
    c0020f9c:	00000793          	li	a5,0
    c0020fa0:	0b40006f          	j	c0021054 <parse_arg+0xec>
    c0020fa4:	fe843783          	ld	a5,-24(s0)
    c0020fa8:	0007c783          	lbu	a5,0(a5)
    c0020fac:	00078713          	mv	a4,a5
    c0020fb0:	03000793          	li	a5,48
    c0020fb4:	02f71c63          	bne	a4,a5,c0020fec <parse_arg+0x84>
    c0020fb8:	fe843783          	ld	a5,-24(s0)
    c0020fbc:	00178793          	addi	a5,a5,1
    c0020fc0:	0007c783          	lbu	a5,0(a5)
    c0020fc4:	00078713          	mv	a4,a5
    c0020fc8:	07800793          	li	a5,120
    c0020fcc:	02f71063          	bne	a4,a5,c0020fec <parse_arg+0x84>
    c0020fd0:	fe843503          	ld	a0,-24(s0)
    c0020fd4:	f30ff0ef          	jal	ra,c0020704 <str2hex>
    c0020fd8:	00050793          	mv	a5,a0
    c0020fdc:	0007871b          	sext.w	a4,a5
    c0020fe0:	fe043783          	ld	a5,-32(s0)
    c0020fe4:	00e7a023          	sw	a4,0(a5)
    c0020fe8:	0680006f          	j	c0021050 <parse_arg+0xe8>
    c0020fec:	fe843783          	ld	a5,-24(s0)
    c0020ff0:	0007c783          	lbu	a5,0(a5)
    c0020ff4:	00078713          	mv	a4,a5
    c0020ff8:	07800793          	li	a5,120
    c0020ffc:	04f71a63          	bne	a4,a5,c0021050 <parse_arg+0xe8>
    c0021000:	fe843783          	ld	a5,-24(s0)
    c0021004:	00178793          	addi	a5,a5,1
    c0021008:	0007c783          	lbu	a5,0(a5)
    c002100c:	00078713          	mv	a4,a5
    c0021010:	03000793          	li	a5,48
    c0021014:	02f71e63          	bne	a4,a5,c0021050 <parse_arg+0xe8>
    c0021018:	fe843783          	ld	a5,-24(s0)
    c002101c:	00278793          	addi	a5,a5,2
    c0021020:	0007c783          	lbu	a5,0(a5)
    c0021024:	00078713          	mv	a4,a5
    c0021028:	07800793          	li	a5,120
    c002102c:	02f71263          	bne	a4,a5,c0021050 <parse_arg+0xe8>
    c0021030:	fe843783          	ld	a5,-24(s0)
    c0021034:	00178793          	addi	a5,a5,1
    c0021038:	00078513          	mv	a0,a5
    c002103c:	ec8ff0ef          	jal	ra,c0020704 <str2hex>
    c0021040:	00050793          	mv	a5,a0
    c0021044:	0007871b          	sext.w	a4,a5
    c0021048:	fe043783          	ld	a5,-32(s0)
    c002104c:	00e7a023          	sw	a4,0(a5)
    c0021050:	00100793          	li	a5,1
    c0021054:	00078513          	mv	a0,a5
    c0021058:	01813083          	ld	ra,24(sp)
    c002105c:	01013403          	ld	s0,16(sp)
    c0021060:	02010113          	addi	sp,sp,32
    c0021064:	00008067          	ret

00000000c0021068 <inst2int>:
    c0021068:	fc010113          	addi	sp,sp,-64
    c002106c:	02113c23          	sd	ra,56(sp)
    c0021070:	02813823          	sd	s0,48(sp)
    c0021074:	04010413          	addi	s0,sp,64
    c0021078:	fca43423          	sd	a0,-56(s0)
    c002107c:	fe042623          	sw	zero,-20(s0)
    c0021080:	1000006f          	j	c0021180 <inst2int+0x118>
    c0021084:	fe042423          	sw	zero,-24(s0)
    c0021088:	0100006f          	j	c0021098 <inst2int+0x30>
    c002108c:	fe842783          	lw	a5,-24(s0)
    c0021090:	0017879b          	addiw	a5,a5,1
    c0021094:	fef42423          	sw	a5,-24(s0)
    c0021098:	00001617          	auipc	a2,0x1
    c002109c:	07860613          	addi	a2,a2,120 # c0022110 <INST_NAMES>
    c00210a0:	fe842683          	lw	a3,-24(s0)
    c00210a4:	fec42703          	lw	a4,-20(s0)
    c00210a8:	00070793          	mv	a5,a4
    c00210ac:	00379793          	slli	a5,a5,0x3
    c00210b0:	40e787b3          	sub	a5,a5,a4
    c00210b4:	00f607b3          	add	a5,a2,a5
    c00210b8:	00d787b3          	add	a5,a5,a3
    c00210bc:	0007c783          	lbu	a5,0(a5)
    c00210c0:	04078c63          	beqz	a5,c0021118 <inst2int+0xb0>
    c00210c4:	fe842783          	lw	a5,-24(s0)
    c00210c8:	fc843703          	ld	a4,-56(s0)
    c00210cc:	00f707b3          	add	a5,a4,a5
    c00210d0:	0007c783          	lbu	a5,0(a5)
    c00210d4:	04078263          	beqz	a5,c0021118 <inst2int+0xb0>
    c00210d8:	00001617          	auipc	a2,0x1
    c00210dc:	03860613          	addi	a2,a2,56 # c0022110 <INST_NAMES>
    c00210e0:	fe842683          	lw	a3,-24(s0)
    c00210e4:	fec42703          	lw	a4,-20(s0)
    c00210e8:	00070793          	mv	a5,a4
    c00210ec:	00379793          	slli	a5,a5,0x3
    c00210f0:	40e787b3          	sub	a5,a5,a4
    c00210f4:	00f607b3          	add	a5,a2,a5
    c00210f8:	00d787b3          	add	a5,a5,a3
    c00210fc:	0007c683          	lbu	a3,0(a5)
    c0021100:	fe842783          	lw	a5,-24(s0)
    c0021104:	fc843703          	ld	a4,-56(s0)
    c0021108:	00f707b3          	add	a5,a4,a5
    c002110c:	0007c783          	lbu	a5,0(a5)
    c0021110:	00068713          	mv	a4,a3
    c0021114:	f6f70ce3          	beq	a4,a5,c002108c <inst2int+0x24>
    c0021118:	00001617          	auipc	a2,0x1
    c002111c:	ff860613          	addi	a2,a2,-8 # c0022110 <INST_NAMES>
    c0021120:	fe842683          	lw	a3,-24(s0)
    c0021124:	fec42703          	lw	a4,-20(s0)
    c0021128:	00070793          	mv	a5,a4
    c002112c:	00379793          	slli	a5,a5,0x3
    c0021130:	40e787b3          	sub	a5,a5,a4
    c0021134:	00f607b3          	add	a5,a2,a5
    c0021138:	00d787b3          	add	a5,a5,a3
    c002113c:	0007c783          	lbu	a5,0(a5)
    c0021140:	02079a63          	bnez	a5,c0021174 <inst2int+0x10c>
    c0021144:	fe842783          	lw	a5,-24(s0)
    c0021148:	fc843703          	ld	a4,-56(s0)
    c002114c:	00f707b3          	add	a5,a4,a5
    c0021150:	0007c783          	lbu	a5,0(a5)
    c0021154:	02078e63          	beqz	a5,c0021190 <inst2int+0x128>
    c0021158:	fe842783          	lw	a5,-24(s0)
    c002115c:	fc843703          	ld	a4,-56(s0)
    c0021160:	00f707b3          	add	a5,a4,a5
    c0021164:	0007c783          	lbu	a5,0(a5)
    c0021168:	00078713          	mv	a4,a5
    c002116c:	02000793          	li	a5,32
    c0021170:	02f70063          	beq	a4,a5,c0021190 <inst2int+0x128>
    c0021174:	fec42783          	lw	a5,-20(s0)
    c0021178:	0017879b          	addiw	a5,a5,1
    c002117c:	fef42623          	sw	a5,-20(s0)
    c0021180:	fec42783          	lw	a5,-20(s0)
    c0021184:	0007871b          	sext.w	a4,a5
    c0021188:	02700793          	li	a5,39
    c002118c:	eee7dce3          	bge	a5,a4,c0021084 <inst2int+0x1c>
    c0021190:	fec42783          	lw	a5,-20(s0)
    c0021194:	0007871b          	sext.w	a4,a5
    c0021198:	02800793          	li	a5,40
    c002119c:	00f71663          	bne	a4,a5,c00211a8 <inst2int+0x140>
    c00211a0:	00000793          	li	a5,0
    c00211a4:	56c0006f          	j	c0021710 <inst2int+0x6a8>
    c00211a8:	00001717          	auipc	a4,0x1
    c00211ac:	08070713          	addi	a4,a4,128 # c0022228 <INST_CONFIG>
    c00211b0:	fec42783          	lw	a5,-20(s0)
    c00211b4:	00479793          	slli	a5,a5,0x4
    c00211b8:	00f707b3          	add	a5,a4,a5
    c00211bc:	0047a783          	lw	a5,4(a5)
    c00211c0:	fef42223          	sw	a5,-28(s0)
    c00211c4:	00001717          	auipc	a4,0x1
    c00211c8:	06470713          	addi	a4,a4,100 # c0022228 <INST_CONFIG>
    c00211cc:	fec42783          	lw	a5,-20(s0)
    c00211d0:	00479793          	slli	a5,a5,0x4
    c00211d4:	00f707b3          	add	a5,a4,a5
    c00211d8:	0007a783          	lw	a5,0(a5)
    c00211dc:	fef42023          	sw	a5,-32(s0)
    c00211e0:	fe042783          	lw	a5,-32(s0)
    c00211e4:	0007871b          	sext.w	a4,a5
    c00211e8:	00600793          	li	a5,6
    c00211ec:	02f71863          	bne	a4,a5,c002121c <inst2int+0x1b4>
    c00211f0:	00001717          	auipc	a4,0x1
    c00211f4:	03870713          	addi	a4,a4,56 # c0022228 <INST_CONFIG>
    c00211f8:	fec42783          	lw	a5,-20(s0)
    c00211fc:	00479793          	slli	a5,a5,0x4
    c0021200:	00f707b3          	add	a5,a4,a5
    c0021204:	0087a783          	lw	a5,8(a5)
    c0021208:	0077979b          	slliw	a5,a5,0x7
    c002120c:	0007871b          	sext.w	a4,a5
    c0021210:	fe442783          	lw	a5,-28(s0)
    c0021214:	00e7e7b3          	or	a5,a5,a4
    c0021218:	fef42223          	sw	a5,-28(s0)
    c002121c:	fe042783          	lw	a5,-32(s0)
    c0021220:	0007879b          	sext.w	a5,a5
    c0021224:	02078a63          	beqz	a5,c0021258 <inst2int+0x1f0>
    c0021228:	fe042783          	lw	a5,-32(s0)
    c002122c:	0007871b          	sext.w	a4,a5
    c0021230:	00100793          	li	a5,1
    c0021234:	02f70263          	beq	a4,a5,c0021258 <inst2int+0x1f0>
    c0021238:	fe042783          	lw	a5,-32(s0)
    c002123c:	0007871b          	sext.w	a4,a5
    c0021240:	00200793          	li	a5,2
    c0021244:	00f70a63          	beq	a4,a5,c0021258 <inst2int+0x1f0>
    c0021248:	fe042783          	lw	a5,-32(s0)
    c002124c:	0007871b          	sext.w	a4,a5
    c0021250:	00300793          	li	a5,3
    c0021254:	04f71063          	bne	a4,a5,c0021294 <inst2int+0x22c>
    c0021258:	00001717          	auipc	a4,0x1
    c002125c:	fd070713          	addi	a4,a4,-48 # c0022228 <INST_CONFIG>
    c0021260:	fec42783          	lw	a5,-20(s0)
    c0021264:	00479793          	slli	a5,a5,0x4
    c0021268:	00f707b3          	add	a5,a4,a5
    c002126c:	0087a783          	lw	a5,8(a5)
    c0021270:	00c7979b          	slliw	a5,a5,0xc
    c0021274:	0007879b          	sext.w	a5,a5
    c0021278:	00078713          	mv	a4,a5
    c002127c:	000077b7          	lui	a5,0x7
    c0021280:	00f777b3          	and	a5,a4,a5
    c0021284:	0007871b          	sext.w	a4,a5
    c0021288:	fe442783          	lw	a5,-28(s0)
    c002128c:	00e7e7b3          	or	a5,a5,a4
    c0021290:	fef42223          	sw	a5,-28(s0)
    c0021294:	fe042783          	lw	a5,-32(s0)
    c0021298:	0007879b          	sext.w	a5,a5
    c002129c:	02079863          	bnez	a5,c00212cc <inst2int+0x264>
    c00212a0:	00001717          	auipc	a4,0x1
    c00212a4:	f8870713          	addi	a4,a4,-120 # c0022228 <INST_CONFIG>
    c00212a8:	fec42783          	lw	a5,-20(s0)
    c00212ac:	00479793          	slli	a5,a5,0x4
    c00212b0:	00f707b3          	add	a5,a4,a5
    c00212b4:	00c7a783          	lw	a5,12(a5) # 700c <_start-0xc0018ff4>
    c00212b8:	0197979b          	slliw	a5,a5,0x19
    c00212bc:	0007871b          	sext.w	a4,a5
    c00212c0:	fe442783          	lw	a5,-28(s0)
    c00212c4:	00e7e7b3          	or	a5,a5,a4
    c00212c8:	fef42223          	sw	a5,-28(s0)
    c00212cc:	fe042783          	lw	a5,-32(s0)
    c00212d0:	0007879b          	sext.w	a5,a5
    c00212d4:	02078a63          	beqz	a5,c0021308 <inst2int+0x2a0>
    c00212d8:	fe042783          	lw	a5,-32(s0)
    c00212dc:	0007871b          	sext.w	a4,a5
    c00212e0:	00100793          	li	a5,1
    c00212e4:	02f70263          	beq	a4,a5,c0021308 <inst2int+0x2a0>
    c00212e8:	fe042783          	lw	a5,-32(s0)
    c00212ec:	0007871b          	sext.w	a4,a5
    c00212f0:	00400793          	li	a5,4
    c00212f4:	00f70a63          	beq	a4,a5,c0021308 <inst2int+0x2a0>
    c00212f8:	fe042783          	lw	a5,-32(s0)
    c00212fc:	0007871b          	sext.w	a4,a5
    c0021300:	00500793          	li	a5,5
    c0021304:	06f71463          	bne	a4,a5,c002136c <inst2int+0x304>
    c0021308:	fc843503          	ld	a0,-56(s0)
    c002130c:	985ff0ef          	jal	ra,c0020c90 <next_word>
    c0021310:	fca43423          	sd	a0,-56(s0)
    c0021314:	fd840793          	addi	a5,s0,-40
    c0021318:	00078593          	mv	a1,a5
    c002131c:	fc843503          	ld	a0,-56(s0)
    c0021320:	c49ff0ef          	jal	ra,c0020f68 <parse_arg>
    c0021324:	00050793          	mv	a5,a0
    c0021328:	fcf42e23          	sw	a5,-36(s0)
    c002132c:	fdc42783          	lw	a5,-36(s0)
    c0021330:	0007879b          	sext.w	a5,a5
    c0021334:	00079663          	bnez	a5,c0021340 <inst2int+0x2d8>
    c0021338:	00000793          	li	a5,0
    c002133c:	3d40006f          	j	c0021710 <inst2int+0x6a8>
    c0021340:	fd842783          	lw	a5,-40(s0)
    c0021344:	0077979b          	slliw	a5,a5,0x7
    c0021348:	0007879b          	sext.w	a5,a5
    c002134c:	00078713          	mv	a4,a5
    c0021350:	000017b7          	lui	a5,0x1
    c0021354:	f8078793          	addi	a5,a5,-128 # f80 <_start-0xc001f080>
    c0021358:	00f777b3          	and	a5,a4,a5
    c002135c:	0007871b          	sext.w	a4,a5
    c0021360:	fe442783          	lw	a5,-28(s0)
    c0021364:	00e7e7b3          	or	a5,a5,a4
    c0021368:	fef42223          	sw	a5,-28(s0)
    c002136c:	fe042783          	lw	a5,-32(s0)
    c0021370:	0007879b          	sext.w	a5,a5
    c0021374:	02078a63          	beqz	a5,c00213a8 <inst2int+0x340>
    c0021378:	fe042783          	lw	a5,-32(s0)
    c002137c:	0007871b          	sext.w	a4,a5
    c0021380:	00100793          	li	a5,1
    c0021384:	02f70263          	beq	a4,a5,c00213a8 <inst2int+0x340>
    c0021388:	fe042783          	lw	a5,-32(s0)
    c002138c:	0007871b          	sext.w	a4,a5
    c0021390:	00200793          	li	a5,2
    c0021394:	00f70a63          	beq	a4,a5,c00213a8 <inst2int+0x340>
    c0021398:	fe042783          	lw	a5,-32(s0)
    c002139c:	0007871b          	sext.w	a4,a5
    c00213a0:	00300793          	li	a5,3
    c00213a4:	06f71263          	bne	a4,a5,c0021408 <inst2int+0x3a0>
    c00213a8:	fc843503          	ld	a0,-56(s0)
    c00213ac:	8e5ff0ef          	jal	ra,c0020c90 <next_word>
    c00213b0:	fca43423          	sd	a0,-56(s0)
    c00213b4:	fd840793          	addi	a5,s0,-40
    c00213b8:	00078593          	mv	a1,a5
    c00213bc:	fc843503          	ld	a0,-56(s0)
    c00213c0:	ba9ff0ef          	jal	ra,c0020f68 <parse_arg>
    c00213c4:	00050793          	mv	a5,a0
    c00213c8:	fcf42e23          	sw	a5,-36(s0)
    c00213cc:	fdc42783          	lw	a5,-36(s0)
    c00213d0:	0007879b          	sext.w	a5,a5
    c00213d4:	00079663          	bnez	a5,c00213e0 <inst2int+0x378>
    c00213d8:	00000793          	li	a5,0
    c00213dc:	3340006f          	j	c0021710 <inst2int+0x6a8>
    c00213e0:	fd842783          	lw	a5,-40(s0)
    c00213e4:	00f7979b          	slliw	a5,a5,0xf
    c00213e8:	0007879b          	sext.w	a5,a5
    c00213ec:	00078713          	mv	a4,a5
    c00213f0:	000f87b7          	lui	a5,0xf8
    c00213f4:	00f777b3          	and	a5,a4,a5
    c00213f8:	0007871b          	sext.w	a4,a5
    c00213fc:	fe442783          	lw	a5,-28(s0)
    c0021400:	00e7e7b3          	or	a5,a5,a4
    c0021404:	fef42223          	sw	a5,-28(s0)
    c0021408:	fe042783          	lw	a5,-32(s0)
    c002140c:	0007879b          	sext.w	a5,a5
    c0021410:	02078263          	beqz	a5,c0021434 <inst2int+0x3cc>
    c0021414:	fe042783          	lw	a5,-32(s0)
    c0021418:	0007871b          	sext.w	a4,a5
    c002141c:	00200793          	li	a5,2
    c0021420:	00f70a63          	beq	a4,a5,c0021434 <inst2int+0x3cc>
    c0021424:	fe042783          	lw	a5,-32(s0)
    c0021428:	0007871b          	sext.w	a4,a5
    c002142c:	00300793          	li	a5,3
    c0021430:	06f71263          	bne	a4,a5,c0021494 <inst2int+0x42c>
    c0021434:	fc843503          	ld	a0,-56(s0)
    c0021438:	859ff0ef          	jal	ra,c0020c90 <next_word>
    c002143c:	fca43423          	sd	a0,-56(s0)
    c0021440:	fd840793          	addi	a5,s0,-40
    c0021444:	00078593          	mv	a1,a5
    c0021448:	fc843503          	ld	a0,-56(s0)
    c002144c:	b1dff0ef          	jal	ra,c0020f68 <parse_arg>
    c0021450:	00050793          	mv	a5,a0
    c0021454:	fcf42e23          	sw	a5,-36(s0)
    c0021458:	fdc42783          	lw	a5,-36(s0)
    c002145c:	0007879b          	sext.w	a5,a5
    c0021460:	00079663          	bnez	a5,c002146c <inst2int+0x404>
    c0021464:	00000793          	li	a5,0
    c0021468:	2a80006f          	j	c0021710 <inst2int+0x6a8>
    c002146c:	fd842783          	lw	a5,-40(s0)
    c0021470:	0147979b          	slliw	a5,a5,0x14
    c0021474:	0007879b          	sext.w	a5,a5
    c0021478:	00078713          	mv	a4,a5
    c002147c:	01f007b7          	lui	a5,0x1f00
    c0021480:	00f777b3          	and	a5,a4,a5
    c0021484:	0007871b          	sext.w	a4,a5
    c0021488:	fe442783          	lw	a5,-28(s0)
    c002148c:	00e7e7b3          	or	a5,a5,a4
    c0021490:	fef42223          	sw	a5,-28(s0)
    c0021494:	fe042783          	lw	a5,-32(s0)
    c0021498:	0007879b          	sext.w	a5,a5
    c002149c:	26078663          	beqz	a5,c0021708 <inst2int+0x6a0>
    c00214a0:	fe042783          	lw	a5,-32(s0)
    c00214a4:	0007871b          	sext.w	a4,a5
    c00214a8:	00600793          	li	a5,6
    c00214ac:	24f70e63          	beq	a4,a5,c0021708 <inst2int+0x6a0>
    c00214b0:	fc843503          	ld	a0,-56(s0)
    c00214b4:	fdcff0ef          	jal	ra,c0020c90 <next_word>
    c00214b8:	fca43423          	sd	a0,-56(s0)
    c00214bc:	fd840793          	addi	a5,s0,-40
    c00214c0:	00078593          	mv	a1,a5
    c00214c4:	fc843503          	ld	a0,-56(s0)
    c00214c8:	aa1ff0ef          	jal	ra,c0020f68 <parse_arg>
    c00214cc:	00050793          	mv	a5,a0
    c00214d0:	fcf42e23          	sw	a5,-36(s0)
    c00214d4:	fdc42783          	lw	a5,-36(s0)
    c00214d8:	0007879b          	sext.w	a5,a5
    c00214dc:	00079663          	bnez	a5,c00214e8 <inst2int+0x480>
    c00214e0:	00000793          	li	a5,0
    c00214e4:	22c0006f          	j	c0021710 <inst2int+0x6a8>
    c00214e8:	fe042783          	lw	a5,-32(s0)
    c00214ec:	0007871b          	sext.w	a4,a5
    c00214f0:	00500793          	li	a5,5
    c00214f4:	20e7ec63          	bltu	a5,a4,c002170c <inst2int+0x6a4>
    c00214f8:	fe046783          	lwu	a5,-32(s0)
    c00214fc:	00279713          	slli	a4,a5,0x2
    c0021500:	00001797          	auipc	a5,0x1
    c0021504:	38478793          	addi	a5,a5,900 # c0022884 <INST_CONFIG+0x65c>
    c0021508:	00f707b3          	add	a5,a4,a5
    c002150c:	0007a783          	lw	a5,0(a5)
    c0021510:	0007871b          	sext.w	a4,a5
    c0021514:	00001797          	auipc	a5,0x1
    c0021518:	37078793          	addi	a5,a5,880 # c0022884 <INST_CONFIG+0x65c>
    c002151c:	00f707b3          	add	a5,a4,a5
    c0021520:	00078067          	jr	a5
    c0021524:	fd842783          	lw	a5,-40(s0)
    c0021528:	0147979b          	slliw	a5,a5,0x14
    c002152c:	0007871b          	sext.w	a4,a5
    c0021530:	fe442783          	lw	a5,-28(s0)
    c0021534:	00e7e7b3          	or	a5,a5,a4
    c0021538:	fef42223          	sw	a5,-28(s0)
    c002153c:	1d00006f          	j	c002170c <inst2int+0x6a4>
    c0021540:	fd842783          	lw	a5,-40(s0)
    c0021544:	0077979b          	slliw	a5,a5,0x7
    c0021548:	0007879b          	sext.w	a5,a5
    c002154c:	00078713          	mv	a4,a5
    c0021550:	000017b7          	lui	a5,0x1
    c0021554:	f8078793          	addi	a5,a5,-128 # f80 <_start-0xc001f080>
    c0021558:	00f777b3          	and	a5,a4,a5
    c002155c:	0007871b          	sext.w	a4,a5
    c0021560:	fe442783          	lw	a5,-28(s0)
    c0021564:	00e7e7b3          	or	a5,a5,a4
    c0021568:	fef42223          	sw	a5,-28(s0)
    c002156c:	fd842783          	lw	a5,-40(s0)
    c0021570:	0057d79b          	srliw	a5,a5,0x5
    c0021574:	0007879b          	sext.w	a5,a5
    c0021578:	0197979b          	slliw	a5,a5,0x19
    c002157c:	0007871b          	sext.w	a4,a5
    c0021580:	fe442783          	lw	a5,-28(s0)
    c0021584:	00e7e7b3          	or	a5,a5,a4
    c0021588:	fef42223          	sw	a5,-28(s0)
    c002158c:	1800006f          	j	c002170c <inst2int+0x6a4>
    c0021590:	fd842783          	lw	a5,-40(s0)
    c0021594:	00b7d79b          	srliw	a5,a5,0xb
    c0021598:	0007879b          	sext.w	a5,a5
    c002159c:	0077979b          	slliw	a5,a5,0x7
    c00215a0:	0007879b          	sext.w	a5,a5
    c00215a4:	0ff7f793          	andi	a5,a5,255
    c00215a8:	0007871b          	sext.w	a4,a5
    c00215ac:	fe442783          	lw	a5,-28(s0)
    c00215b0:	00e7e7b3          	or	a5,a5,a4
    c00215b4:	fef42223          	sw	a5,-28(s0)
    c00215b8:	fd842783          	lw	a5,-40(s0)
    c00215bc:	0017d79b          	srliw	a5,a5,0x1
    c00215c0:	0007879b          	sext.w	a5,a5
    c00215c4:	0087979b          	slliw	a5,a5,0x8
    c00215c8:	0007879b          	sext.w	a5,a5
    c00215cc:	00078713          	mv	a4,a5
    c00215d0:	000017b7          	lui	a5,0x1
    c00215d4:	f0078793          	addi	a5,a5,-256 # f00 <_start-0xc001f100>
    c00215d8:	00f777b3          	and	a5,a4,a5
    c00215dc:	0007871b          	sext.w	a4,a5
    c00215e0:	fe442783          	lw	a5,-28(s0)
    c00215e4:	00e7e7b3          	or	a5,a5,a4
    c00215e8:	fef42223          	sw	a5,-28(s0)
    c00215ec:	fd842783          	lw	a5,-40(s0)
    c00215f0:	0057d79b          	srliw	a5,a5,0x5
    c00215f4:	0007879b          	sext.w	a5,a5
    c00215f8:	0197979b          	slliw	a5,a5,0x19
    c00215fc:	0007879b          	sext.w	a5,a5
    c0021600:	00078713          	mv	a4,a5
    c0021604:	7e0007b7          	lui	a5,0x7e000
    c0021608:	00f777b3          	and	a5,a4,a5
    c002160c:	0007871b          	sext.w	a4,a5
    c0021610:	fe442783          	lw	a5,-28(s0)
    c0021614:	00e7e7b3          	or	a5,a5,a4
    c0021618:	fef42223          	sw	a5,-28(s0)
    c002161c:	fd842783          	lw	a5,-40(s0)
    c0021620:	00c7d79b          	srliw	a5,a5,0xc
    c0021624:	0007879b          	sext.w	a5,a5
    c0021628:	01f7979b          	slliw	a5,a5,0x1f
    c002162c:	0007871b          	sext.w	a4,a5
    c0021630:	fe442783          	lw	a5,-28(s0)
    c0021634:	00e7e7b3          	or	a5,a5,a4
    c0021638:	fef42223          	sw	a5,-28(s0)
    c002163c:	0d00006f          	j	c002170c <inst2int+0x6a4>
    c0021640:	fd842783          	lw	a5,-40(s0)
    c0021644:	00078713          	mv	a4,a5
    c0021648:	fffff7b7          	lui	a5,0xfffff
    c002164c:	00f777b3          	and	a5,a4,a5
    c0021650:	0007871b          	sext.w	a4,a5
    c0021654:	fe442783          	lw	a5,-28(s0)
    c0021658:	00e7e7b3          	or	a5,a5,a4
    c002165c:	fef42223          	sw	a5,-28(s0)
    c0021660:	0ac0006f          	j	c002170c <inst2int+0x6a4>
    c0021664:	fd842783          	lw	a5,-40(s0)
    c0021668:	00078713          	mv	a4,a5
    c002166c:	000ff7b7          	lui	a5,0xff
    c0021670:	00f777b3          	and	a5,a4,a5
    c0021674:	0007871b          	sext.w	a4,a5
    c0021678:	fe442783          	lw	a5,-28(s0)
    c002167c:	00e7e7b3          	or	a5,a5,a4
    c0021680:	fef42223          	sw	a5,-28(s0)
    c0021684:	fd842783          	lw	a5,-40(s0)
    c0021688:	00b7d79b          	srliw	a5,a5,0xb
    c002168c:	0007879b          	sext.w	a5,a5
    c0021690:	0147979b          	slliw	a5,a5,0x14
    c0021694:	0007879b          	sext.w	a5,a5
    c0021698:	00078713          	mv	a4,a5
    c002169c:	001007b7          	lui	a5,0x100
    c00216a0:	00f777b3          	and	a5,a4,a5
    c00216a4:	0007871b          	sext.w	a4,a5
    c00216a8:	fe442783          	lw	a5,-28(s0)
    c00216ac:	00e7e7b3          	or	a5,a5,a4
    c00216b0:	fef42223          	sw	a5,-28(s0)
    c00216b4:	fd842783          	lw	a5,-40(s0)
    c00216b8:	0017d79b          	srliw	a5,a5,0x1
    c00216bc:	0007879b          	sext.w	a5,a5
    c00216c0:	0157979b          	slliw	a5,a5,0x15
    c00216c4:	0007879b          	sext.w	a5,a5
    c00216c8:	00078713          	mv	a4,a5
    c00216cc:	7fe007b7          	lui	a5,0x7fe00
    c00216d0:	00f777b3          	and	a5,a4,a5
    c00216d4:	0007871b          	sext.w	a4,a5
    c00216d8:	fe442783          	lw	a5,-28(s0)
    c00216dc:	00e7e7b3          	or	a5,a5,a4
    c00216e0:	fef42223          	sw	a5,-28(s0)
    c00216e4:	fd842783          	lw	a5,-40(s0)
    c00216e8:	0147d79b          	srliw	a5,a5,0x14
    c00216ec:	0007879b          	sext.w	a5,a5
    c00216f0:	01f7979b          	slliw	a5,a5,0x1f
    c00216f4:	0007871b          	sext.w	a4,a5
    c00216f8:	fe442783          	lw	a5,-28(s0)
    c00216fc:	00e7e7b3          	or	a5,a5,a4
    c0021700:	fef42223          	sw	a5,-28(s0)
    c0021704:	0080006f          	j	c002170c <inst2int+0x6a4>
    c0021708:	00000013          	nop
    c002170c:	fe442783          	lw	a5,-28(s0)
    c0021710:	00078513          	mv	a0,a5
    c0021714:	03813083          	ld	ra,56(sp)
    c0021718:	03013403          	ld	s0,48(sp)
    c002171c:	04010113          	addi	sp,sp,64
    c0021720:	00008067          	ret

00000000c0021724 <inst_exe>:
    c0021724:	fd010113          	addi	sp,sp,-48
    c0021728:	02113423          	sd	ra,40(sp)
    c002172c:	02813023          	sd	s0,32(sp)
    c0021730:	03010413          	addi	s0,sp,48
    c0021734:	00002517          	auipc	a0,0x2
    c0021738:	8f450513          	addi	a0,a0,-1804 # c0023028 <buffer>
    c002173c:	d54ff0ef          	jal	ra,c0020c90 <next_word>
    c0021740:	fea43023          	sd	a0,-32(s0)
    c0021744:	fe043783          	ld	a5,-32(s0)
    c0021748:	0007c783          	lbu	a5,0(a5) # 7fe00000 <_start-0x40220000>
    c002174c:	08078663          	beqz	a5,c00217d8 <inst_exe+0xb4>
    c0021750:	fe043783          	ld	a5,-32(s0)
    c0021754:	00178793          	addi	a5,a5,1
    c0021758:	0007c783          	lbu	a5,0(a5)
    c002175c:	06078e63          	beqz	a5,c00217d8 <inst_exe+0xb4>
    c0021760:	fe043503          	ld	a0,-32(s0)
    c0021764:	fa1fe0ef          	jal	ra,c0020704 <str2hex>
    c0021768:	00050793          	mv	a5,a0
    c002176c:	fef42623          	sw	a5,-20(s0)
    c0021770:	00001517          	auipc	a0,0x1
    c0021774:	10850513          	addi	a0,a0,264 # c0022878 <INST_CONFIG+0x650>
    c0021778:	c0dfe0ef          	jal	ra,c0020384 <print>
    c002177c:	fec42783          	lw	a5,-20(s0)
    c0021780:	00078513          	mv	a0,a5
    c0021784:	ec5fe0ef          	jal	ra,c0020648 <print_hex>
    c0021788:	00001517          	auipc	a0,0x1
    c002178c:	0f850513          	addi	a0,a0,248 # c0022880 <INST_CONFIG+0x658>
    c0021790:	bf5fe0ef          	jal	ra,c0020384 <print>
    c0021794:	d15fe0ef          	jal	ra,c00204a8 <get_line>
    c0021798:	00002517          	auipc	a0,0x2
    c002179c:	89050513          	addi	a0,a0,-1904 # c0023028 <buffer>
    c00217a0:	8c9ff0ef          	jal	ra,c0021068 <inst2int>
    c00217a4:	00050793          	mv	a5,a0
    c00217a8:	fcf42e23          	sw	a5,-36(s0)
    c00217ac:	fdc42783          	lw	a5,-36(s0)
    c00217b0:	0007879b          	sext.w	a5,a5
    c00217b4:	02078663          	beqz	a5,c00217e0 <inst_exe+0xbc>
    c00217b8:	fec46783          	lwu	a5,-20(s0)
    c00217bc:	00078713          	mv	a4,a5
    c00217c0:	fdc42783          	lw	a5,-36(s0)
    c00217c4:	00f72023          	sw	a5,0(a4)
    c00217c8:	fec42783          	lw	a5,-20(s0)
    c00217cc:	0047879b          	addiw	a5,a5,4
    c00217d0:	fef42623          	sw	a5,-20(s0)
    c00217d4:	f9dff06f          	j	c0021770 <inst_exe+0x4c>
    c00217d8:	00000013          	nop
    c00217dc:	0080006f          	j	c00217e4 <inst_exe+0xc0>
    c00217e0:	00000013          	nop
    c00217e4:	02813083          	ld	ra,40(sp)
    c00217e8:	02013403          	ld	s0,32(sp)
    c00217ec:	03010113          	addi	sp,sp,48
    c00217f0:	00008067          	ret

00000000c00217f4 <view_exe>:
    c00217f4:	fd010113          	addi	sp,sp,-48
    c00217f8:	02113423          	sd	ra,40(sp)
    c00217fc:	02813023          	sd	s0,32(sp)
    c0021800:	03010413          	addi	s0,sp,48
    c0021804:	00002517          	auipc	a0,0x2
    c0021808:	82450513          	addi	a0,a0,-2012 # c0023028 <buffer>
    c002180c:	c84ff0ef          	jal	ra,c0020c90 <next_word>
    c0021810:	fea43023          	sd	a0,-32(s0)
    c0021814:	fe043783          	ld	a5,-32(s0)
    c0021818:	0007c783          	lbu	a5,0(a5)
    c002181c:	0c078463          	beqz	a5,c00218e4 <view_exe+0xf0>
    c0021820:	fe043783          	ld	a5,-32(s0)
    c0021824:	00178793          	addi	a5,a5,1
    c0021828:	0007c783          	lbu	a5,0(a5)
    c002182c:	0a078c63          	beqz	a5,c00218e4 <view_exe+0xf0>
    c0021830:	fe043503          	ld	a0,-32(s0)
    c0021834:	ed1fe0ef          	jal	ra,c0020704 <str2hex>
    c0021838:	00050793          	mv	a5,a0
    c002183c:	fef42623          	sw	a5,-20(s0)
    c0021840:	fe043503          	ld	a0,-32(s0)
    c0021844:	c4cff0ef          	jal	ra,c0020c90 <next_word>
    c0021848:	fea43023          	sd	a0,-32(s0)
    c002184c:	fe043783          	ld	a5,-32(s0)
    c0021850:	0007c783          	lbu	a5,0(a5)
    c0021854:	08078c63          	beqz	a5,c00218ec <view_exe+0xf8>
    c0021858:	fe043783          	ld	a5,-32(s0)
    c002185c:	00178793          	addi	a5,a5,1
    c0021860:	0007c783          	lbu	a5,0(a5)
    c0021864:	08078463          	beqz	a5,c00218ec <view_exe+0xf8>
    c0021868:	fe043503          	ld	a0,-32(s0)
    c002186c:	e99fe0ef          	jal	ra,c0020704 <str2hex>
    c0021870:	00050793          	mv	a5,a0
    c0021874:	fef42423          	sw	a5,-24(s0)
    c0021878:	0580006f          	j	c00218d0 <view_exe+0xdc>
    c002187c:	00001517          	auipc	a0,0x1
    c0021880:	ffc50513          	addi	a0,a0,-4 # c0022878 <INST_CONFIG+0x650>
    c0021884:	b01fe0ef          	jal	ra,c0020384 <print>
    c0021888:	fec42783          	lw	a5,-20(s0)
    c002188c:	00078513          	mv	a0,a5
    c0021890:	db9fe0ef          	jal	ra,c0020648 <print_hex>
    c0021894:	00001517          	auipc	a0,0x1
    c0021898:	fec50513          	addi	a0,a0,-20 # c0022880 <INST_CONFIG+0x658>
    c002189c:	ae9fe0ef          	jal	ra,c0020384 <print>
    c00218a0:	fec46783          	lwu	a5,-20(s0)
    c00218a4:	0007a783          	lw	a5,0(a5)
    c00218a8:	fcf42e23          	sw	a5,-36(s0)
    c00218ac:	fdc42783          	lw	a5,-36(s0)
    c00218b0:	00078513          	mv	a0,a5
    c00218b4:	d95fe0ef          	jal	ra,c0020648 <print_hex>
    c00218b8:	00001517          	auipc	a0,0x1
    c00218bc:	e1850513          	addi	a0,a0,-488 # c00226d0 <INST_CONFIG+0x4a8>
    c00218c0:	ac5fe0ef          	jal	ra,c0020384 <print>
    c00218c4:	fec42783          	lw	a5,-20(s0)
    c00218c8:	0047879b          	addiw	a5,a5,4
    c00218cc:	fef42623          	sw	a5,-20(s0)
    c00218d0:	fe842783          	lw	a5,-24(s0)
    c00218d4:	fff7871b          	addiw	a4,a5,-1
    c00218d8:	fee42423          	sw	a4,-24(s0)
    c00218dc:	fa0790e3          	bnez	a5,c002187c <view_exe+0x88>
    c00218e0:	0100006f          	j	c00218f0 <view_exe+0xfc>
    c00218e4:	00000013          	nop
    c00218e8:	0080006f          	j	c00218f0 <view_exe+0xfc>
    c00218ec:	00000013          	nop
    c00218f0:	02813083          	ld	ra,40(sp)
    c00218f4:	02013403          	ld	s0,32(sp)
    c00218f8:	03010113          	addi	sp,sp,48
    c00218fc:	00008067          	ret

00000000c0021900 <print_int2inst>:
    c0021900:	fd010113          	addi	sp,sp,-48
    c0021904:	02113423          	sd	ra,40(sp)
    c0021908:	02813023          	sd	s0,32(sp)
    c002190c:	03010413          	addi	s0,sp,48
    c0021910:	00050793          	mv	a5,a0
    c0021914:	fcf42e23          	sw	a5,-36(s0)
    c0021918:	fe042623          	sw	zero,-20(s0)
    c002191c:	1440006f          	j	c0021a60 <print_int2inst+0x160>
    c0021920:	00001717          	auipc	a4,0x1
    c0021924:	90870713          	addi	a4,a4,-1784 # c0022228 <INST_CONFIG>
    c0021928:	fec42783          	lw	a5,-20(s0)
    c002192c:	00479793          	slli	a5,a5,0x4
    c0021930:	00f707b3          	add	a5,a4,a5
    c0021934:	0047a703          	lw	a4,4(a5)
    c0021938:	fdc42783          	lw	a5,-36(s0)
    c002193c:	07f7f793          	andi	a5,a5,127
    c0021940:	0007879b          	sext.w	a5,a5
    c0021944:	0ef71e63          	bne	a4,a5,c0021a40 <print_int2inst+0x140>
    c0021948:	00001717          	auipc	a4,0x1
    c002194c:	8e070713          	addi	a4,a4,-1824 # c0022228 <INST_CONFIG>
    c0021950:	fec42783          	lw	a5,-20(s0)
    c0021954:	00479793          	slli	a5,a5,0x4
    c0021958:	00f707b3          	add	a5,a4,a5
    c002195c:	0007a783          	lw	a5,0(a5)
    c0021960:	fef42423          	sw	a5,-24(s0)
    c0021964:	fe842783          	lw	a5,-24(s0)
    c0021968:	0007879b          	sext.w	a5,a5
    c002196c:	02079663          	bnez	a5,c0021998 <print_int2inst+0x98>
    c0021970:	00001717          	auipc	a4,0x1
    c0021974:	8b870713          	addi	a4,a4,-1864 # c0022228 <INST_CONFIG>
    c0021978:	fec42783          	lw	a5,-20(s0)
    c002197c:	00479793          	slli	a5,a5,0x4
    c0021980:	00f707b3          	add	a5,a4,a5
    c0021984:	00c7a703          	lw	a4,12(a5)
    c0021988:	fdc42783          	lw	a5,-36(s0)
    c002198c:	0197d79b          	srliw	a5,a5,0x19
    c0021990:	0007879b          	sext.w	a5,a5
    c0021994:	0af71a63          	bne	a4,a5,c0021a48 <print_int2inst+0x148>
    c0021998:	fe842783          	lw	a5,-24(s0)
    c002199c:	0007879b          	sext.w	a5,a5
    c00219a0:	02078a63          	beqz	a5,c00219d4 <print_int2inst+0xd4>
    c00219a4:	fe842783          	lw	a5,-24(s0)
    c00219a8:	0007871b          	sext.w	a4,a5
    c00219ac:	00100793          	li	a5,1
    c00219b0:	02f70263          	beq	a4,a5,c00219d4 <print_int2inst+0xd4>
    c00219b4:	fe842783          	lw	a5,-24(s0)
    c00219b8:	0007871b          	sext.w	a4,a5
    c00219bc:	00200793          	li	a5,2
    c00219c0:	00f70a63          	beq	a4,a5,c00219d4 <print_int2inst+0xd4>
    c00219c4:	fe842783          	lw	a5,-24(s0)
    c00219c8:	0007871b          	sext.w	a4,a5
    c00219cc:	00300793          	li	a5,3
    c00219d0:	02f71a63          	bne	a4,a5,c0021a04 <print_int2inst+0x104>
    c00219d4:	00001717          	auipc	a4,0x1
    c00219d8:	85470713          	addi	a4,a4,-1964 # c0022228 <INST_CONFIG>
    c00219dc:	fec42783          	lw	a5,-20(s0)
    c00219e0:	00479793          	slli	a5,a5,0x4
    c00219e4:	00f707b3          	add	a5,a4,a5
    c00219e8:	0087a703          	lw	a4,8(a5)
    c00219ec:	fdc42783          	lw	a5,-36(s0)
    c00219f0:	00c7d79b          	srliw	a5,a5,0xc
    c00219f4:	0007879b          	sext.w	a5,a5
    c00219f8:	0077f793          	andi	a5,a5,7
    c00219fc:	0007879b          	sext.w	a5,a5
    c0021a00:	04f71863          	bne	a4,a5,c0021a50 <print_int2inst+0x150>
    c0021a04:	fe842783          	lw	a5,-24(s0)
    c0021a08:	0007871b          	sext.w	a4,a5
    c0021a0c:	00600793          	li	a5,6
    c0021a10:	06f71263          	bne	a4,a5,c0021a74 <print_int2inst+0x174>
    c0021a14:	00001717          	auipc	a4,0x1
    c0021a18:	81470713          	addi	a4,a4,-2028 # c0022228 <INST_CONFIG>
    c0021a1c:	fec42783          	lw	a5,-20(s0)
    c0021a20:	00479793          	slli	a5,a5,0x4
    c0021a24:	00f707b3          	add	a5,a4,a5
    c0021a28:	0087a703          	lw	a4,8(a5)
    c0021a2c:	fdc42783          	lw	a5,-36(s0)
    c0021a30:	0077d79b          	srliw	a5,a5,0x7
    c0021a34:	0007879b          	sext.w	a5,a5
    c0021a38:	02f70e63          	beq	a4,a5,c0021a74 <print_int2inst+0x174>
    c0021a3c:	0180006f          	j	c0021a54 <print_int2inst+0x154>
    c0021a40:	00000013          	nop
    c0021a44:	0100006f          	j	c0021a54 <print_int2inst+0x154>
    c0021a48:	00000013          	nop
    c0021a4c:	0080006f          	j	c0021a54 <print_int2inst+0x154>
    c0021a50:	00000013          	nop
    c0021a54:	fec42783          	lw	a5,-20(s0)
    c0021a58:	0017879b          	addiw	a5,a5,1
    c0021a5c:	fef42623          	sw	a5,-20(s0)
    c0021a60:	fec42783          	lw	a5,-20(s0)
    c0021a64:	0007871b          	sext.w	a4,a5
    c0021a68:	02700793          	li	a5,39
    c0021a6c:	eae7dae3          	bge	a5,a4,c0021920 <print_int2inst+0x20>
    c0021a70:	0080006f          	j	c0021a78 <print_int2inst+0x178>
    c0021a74:	00000013          	nop
    c0021a78:	fec42783          	lw	a5,-20(s0)
    c0021a7c:	0007871b          	sext.w	a4,a5
    c0021a80:	02800793          	li	a5,40
    c0021a84:	00f71a63          	bne	a4,a5,c0021a98 <print_int2inst+0x198>
    c0021a88:	00001517          	auipc	a0,0x1
    c0021a8c:	e1850513          	addi	a0,a0,-488 # c00228a0 <INST_CONFIG+0x678>
    c0021a90:	8f5fe0ef          	jal	ra,c0020384 <print>
    c0021a94:	3500006f          	j	c0021de4 <print_int2inst+0x4e4>
    c0021a98:	fec42703          	lw	a4,-20(s0)
    c0021a9c:	00070793          	mv	a5,a4
    c0021aa0:	00379793          	slli	a5,a5,0x3
    c0021aa4:	40e787b3          	sub	a5,a5,a4
    c0021aa8:	00000717          	auipc	a4,0x0
    c0021aac:	66870713          	addi	a4,a4,1640 # c0022110 <INST_NAMES>
    c0021ab0:	00e787b3          	add	a5,a5,a4
    c0021ab4:	00078513          	mv	a0,a5
    c0021ab8:	8cdfe0ef          	jal	ra,c0020384 <print>
    c0021abc:	fe842783          	lw	a5,-24(s0)
    c0021ac0:	0007879b          	sext.w	a5,a5
    c0021ac4:	02078a63          	beqz	a5,c0021af8 <print_int2inst+0x1f8>
    c0021ac8:	fe842783          	lw	a5,-24(s0)
    c0021acc:	0007871b          	sext.w	a4,a5
    c0021ad0:	00100793          	li	a5,1
    c0021ad4:	02f70263          	beq	a4,a5,c0021af8 <print_int2inst+0x1f8>
    c0021ad8:	fe842783          	lw	a5,-24(s0)
    c0021adc:	0007871b          	sext.w	a4,a5
    c0021ae0:	00400793          	li	a5,4
    c0021ae4:	00f70a63          	beq	a4,a5,c0021af8 <print_int2inst+0x1f8>
    c0021ae8:	fe842783          	lw	a5,-24(s0)
    c0021aec:	0007871b          	sext.w	a4,a5
    c0021af0:	00500793          	li	a5,5
    c0021af4:	02f71663          	bne	a4,a5,c0021b20 <print_int2inst+0x220>
    c0021af8:	00001517          	auipc	a0,0x1
    c0021afc:	db850513          	addi	a0,a0,-584 # c00228b0 <INST_CONFIG+0x688>
    c0021b00:	885fe0ef          	jal	ra,c0020384 <print>
    c0021b04:	fdc42783          	lw	a5,-36(s0)
    c0021b08:	0077d79b          	srliw	a5,a5,0x7
    c0021b0c:	0007879b          	sext.w	a5,a5
    c0021b10:	01f7f793          	andi	a5,a5,31
    c0021b14:	0007879b          	sext.w	a5,a5
    c0021b18:	00078513          	mv	a0,a5
    c0021b1c:	b2dfe0ef          	jal	ra,c0020648 <print_hex>
    c0021b20:	fe842783          	lw	a5,-24(s0)
    c0021b24:	0007879b          	sext.w	a5,a5
    c0021b28:	02078a63          	beqz	a5,c0021b5c <print_int2inst+0x25c>
    c0021b2c:	fe842783          	lw	a5,-24(s0)
    c0021b30:	0007871b          	sext.w	a4,a5
    c0021b34:	00100793          	li	a5,1
    c0021b38:	02f70263          	beq	a4,a5,c0021b5c <print_int2inst+0x25c>
    c0021b3c:	fe842783          	lw	a5,-24(s0)
    c0021b40:	0007871b          	sext.w	a4,a5
    c0021b44:	00200793          	li	a5,2
    c0021b48:	00f70a63          	beq	a4,a5,c0021b5c <print_int2inst+0x25c>
    c0021b4c:	fe842783          	lw	a5,-24(s0)
    c0021b50:	0007871b          	sext.w	a4,a5
    c0021b54:	00300793          	li	a5,3
    c0021b58:	02f71663          	bne	a4,a5,c0021b84 <print_int2inst+0x284>
    c0021b5c:	00001517          	auipc	a0,0x1
    c0021b60:	d5450513          	addi	a0,a0,-684 # c00228b0 <INST_CONFIG+0x688>
    c0021b64:	821fe0ef          	jal	ra,c0020384 <print>
    c0021b68:	fdc42783          	lw	a5,-36(s0)
    c0021b6c:	00f7d79b          	srliw	a5,a5,0xf
    c0021b70:	0007879b          	sext.w	a5,a5
    c0021b74:	01f7f793          	andi	a5,a5,31
    c0021b78:	0007879b          	sext.w	a5,a5
    c0021b7c:	00078513          	mv	a0,a5
    c0021b80:	ac9fe0ef          	jal	ra,c0020648 <print_hex>
    c0021b84:	fe842783          	lw	a5,-24(s0)
    c0021b88:	0007879b          	sext.w	a5,a5
    c0021b8c:	02078263          	beqz	a5,c0021bb0 <print_int2inst+0x2b0>
    c0021b90:	fe842783          	lw	a5,-24(s0)
    c0021b94:	0007871b          	sext.w	a4,a5
    c0021b98:	00200793          	li	a5,2
    c0021b9c:	00f70a63          	beq	a4,a5,c0021bb0 <print_int2inst+0x2b0>
    c0021ba0:	fe842783          	lw	a5,-24(s0)
    c0021ba4:	0007871b          	sext.w	a4,a5
    c0021ba8:	00300793          	li	a5,3
    c0021bac:	02f71663          	bne	a4,a5,c0021bd8 <print_int2inst+0x2d8>
    c0021bb0:	00001517          	auipc	a0,0x1
    c0021bb4:	d0050513          	addi	a0,a0,-768 # c00228b0 <INST_CONFIG+0x688>
    c0021bb8:	fccfe0ef          	jal	ra,c0020384 <print>
    c0021bbc:	fdc42783          	lw	a5,-36(s0)
    c0021bc0:	0147d79b          	srliw	a5,a5,0x14
    c0021bc4:	0007879b          	sext.w	a5,a5
    c0021bc8:	01f7f793          	andi	a5,a5,31
    c0021bcc:	0007879b          	sext.w	a5,a5
    c0021bd0:	00078513          	mv	a0,a5
    c0021bd4:	a75fe0ef          	jal	ra,c0020648 <print_hex>
    c0021bd8:	fe042223          	sw	zero,-28(s0)
    c0021bdc:	fe842783          	lw	a5,-24(s0)
    c0021be0:	0007879b          	sext.w	a5,a5
    c0021be4:	20078063          	beqz	a5,c0021de4 <print_int2inst+0x4e4>
    c0021be8:	fe842783          	lw	a5,-24(s0)
    c0021bec:	0007871b          	sext.w	a4,a5
    c0021bf0:	00600793          	li	a5,6
    c0021bf4:	1ef70863          	beq	a4,a5,c0021de4 <print_int2inst+0x4e4>
    c0021bf8:	fe842783          	lw	a5,-24(s0)
    c0021bfc:	0007871b          	sext.w	a4,a5
    c0021c00:	00500793          	li	a5,5
    c0021c04:	1ce7e463          	bltu	a5,a4,c0021dcc <print_int2inst+0x4cc>
    c0021c08:	fe846783          	lwu	a5,-24(s0)
    c0021c0c:	00279713          	slli	a4,a5,0x2
    c0021c10:	00001797          	auipc	a5,0x1
    c0021c14:	ca478793          	addi	a5,a5,-860 # c00228b4 <INST_CONFIG+0x68c>
    c0021c18:	00f707b3          	add	a5,a4,a5
    c0021c1c:	0007a783          	lw	a5,0(a5)
    c0021c20:	0007871b          	sext.w	a4,a5
    c0021c24:	00001797          	auipc	a5,0x1
    c0021c28:	c9078793          	addi	a5,a5,-880 # c00228b4 <INST_CONFIG+0x68c>
    c0021c2c:	00f707b3          	add	a5,a4,a5
    c0021c30:	00078067          	jr	a5
    c0021c34:	fdc42783          	lw	a5,-36(s0)
    c0021c38:	0147d79b          	srliw	a5,a5,0x14
    c0021c3c:	fef42223          	sw	a5,-28(s0)
    c0021c40:	18c0006f          	j	c0021dcc <print_int2inst+0x4cc>
    c0021c44:	fdc42783          	lw	a5,-36(s0)
    c0021c48:	0077d79b          	srliw	a5,a5,0x7
    c0021c4c:	0007879b          	sext.w	a5,a5
    c0021c50:	01f7f793          	andi	a5,a5,31
    c0021c54:	0007871b          	sext.w	a4,a5
    c0021c58:	fdc42783          	lw	a5,-36(s0)
    c0021c5c:	0197d79b          	srliw	a5,a5,0x19
    c0021c60:	0007879b          	sext.w	a5,a5
    c0021c64:	0057979b          	slliw	a5,a5,0x5
    c0021c68:	0007879b          	sext.w	a5,a5
    c0021c6c:	00f767b3          	or	a5,a4,a5
    c0021c70:	fef42223          	sw	a5,-28(s0)
    c0021c74:	1580006f          	j	c0021dcc <print_int2inst+0x4cc>
    c0021c78:	fdc42783          	lw	a5,-36(s0)
    c0021c7c:	0077d79b          	srliw	a5,a5,0x7
    c0021c80:	0007879b          	sext.w	a5,a5
    c0021c84:	00b7979b          	slliw	a5,a5,0xb
    c0021c88:	0007879b          	sext.w	a5,a5
    c0021c8c:	00078713          	mv	a4,a5
    c0021c90:	000017b7          	lui	a5,0x1
    c0021c94:	80078793          	addi	a5,a5,-2048 # 800 <_start-0xc001f800>
    c0021c98:	00f777b3          	and	a5,a4,a5
    c0021c9c:	0007871b          	sext.w	a4,a5
    c0021ca0:	fe442783          	lw	a5,-28(s0)
    c0021ca4:	00e7e7b3          	or	a5,a5,a4
    c0021ca8:	fef42223          	sw	a5,-28(s0)
    c0021cac:	fdc42783          	lw	a5,-36(s0)
    c0021cb0:	0087d79b          	srliw	a5,a5,0x8
    c0021cb4:	0007879b          	sext.w	a5,a5
    c0021cb8:	0017979b          	slliw	a5,a5,0x1
    c0021cbc:	0007879b          	sext.w	a5,a5
    c0021cc0:	01e7f793          	andi	a5,a5,30
    c0021cc4:	0007871b          	sext.w	a4,a5
    c0021cc8:	fe442783          	lw	a5,-28(s0)
    c0021ccc:	00e7e7b3          	or	a5,a5,a4
    c0021cd0:	fef42223          	sw	a5,-28(s0)
    c0021cd4:	fdc42783          	lw	a5,-36(s0)
    c0021cd8:	0197d79b          	srliw	a5,a5,0x19
    c0021cdc:	0007879b          	sext.w	a5,a5
    c0021ce0:	0057979b          	slliw	a5,a5,0x5
    c0021ce4:	0007879b          	sext.w	a5,a5
    c0021ce8:	7e07f793          	andi	a5,a5,2016
    c0021cec:	0007871b          	sext.w	a4,a5
    c0021cf0:	fe442783          	lw	a5,-28(s0)
    c0021cf4:	00e7e7b3          	or	a5,a5,a4
    c0021cf8:	fef42223          	sw	a5,-28(s0)
    c0021cfc:	fdc42783          	lw	a5,-36(s0)
    c0021d00:	01f7d79b          	srliw	a5,a5,0x1f
    c0021d04:	0007879b          	sext.w	a5,a5
    c0021d08:	00c7979b          	slliw	a5,a5,0xc
    c0021d0c:	0007871b          	sext.w	a4,a5
    c0021d10:	fe442783          	lw	a5,-28(s0)
    c0021d14:	00e7e7b3          	or	a5,a5,a4
    c0021d18:	fef42223          	sw	a5,-28(s0)
    c0021d1c:	0b00006f          	j	c0021dcc <print_int2inst+0x4cc>
    c0021d20:	fdc42703          	lw	a4,-36(s0)
    c0021d24:	fffff7b7          	lui	a5,0xfffff
    c0021d28:	00f777b3          	and	a5,a4,a5
    c0021d2c:	fef42223          	sw	a5,-28(s0)
    c0021d30:	09c0006f          	j	c0021dcc <print_int2inst+0x4cc>
    c0021d34:	fdc42703          	lw	a4,-36(s0)
    c0021d38:	000ff7b7          	lui	a5,0xff
    c0021d3c:	00f777b3          	and	a5,a4,a5
    c0021d40:	0007871b          	sext.w	a4,a5
    c0021d44:	fe442783          	lw	a5,-28(s0)
    c0021d48:	00e7e7b3          	or	a5,a5,a4
    c0021d4c:	fef42223          	sw	a5,-28(s0)
    c0021d50:	fdc42783          	lw	a5,-36(s0)
    c0021d54:	0147d79b          	srliw	a5,a5,0x14
    c0021d58:	0007879b          	sext.w	a5,a5
    c0021d5c:	00b7979b          	slliw	a5,a5,0xb
    c0021d60:	0007879b          	sext.w	a5,a5
    c0021d64:	00078713          	mv	a4,a5
    c0021d68:	000017b7          	lui	a5,0x1
    c0021d6c:	80078793          	addi	a5,a5,-2048 # 800 <_start-0xc001f800>
    c0021d70:	00f777b3          	and	a5,a4,a5
    c0021d74:	0007871b          	sext.w	a4,a5
    c0021d78:	fe442783          	lw	a5,-28(s0)
    c0021d7c:	00e7e7b3          	or	a5,a5,a4
    c0021d80:	fef42223          	sw	a5,-28(s0)
    c0021d84:	fdc42783          	lw	a5,-36(s0)
    c0021d88:	0157d79b          	srliw	a5,a5,0x15
    c0021d8c:	0007879b          	sext.w	a5,a5
    c0021d90:	0017979b          	slliw	a5,a5,0x1
    c0021d94:	0007879b          	sext.w	a5,a5
    c0021d98:	7fe7f793          	andi	a5,a5,2046
    c0021d9c:	0007871b          	sext.w	a4,a5
    c0021da0:	fe442783          	lw	a5,-28(s0)
    c0021da4:	00e7e7b3          	or	a5,a5,a4
    c0021da8:	fef42223          	sw	a5,-28(s0)
    c0021dac:	fdc42783          	lw	a5,-36(s0)
    c0021db0:	01f7d79b          	srliw	a5,a5,0x1f
    c0021db4:	0007879b          	sext.w	a5,a5
    c0021db8:	0147979b          	slliw	a5,a5,0x14
    c0021dbc:	0007871b          	sext.w	a4,a5
    c0021dc0:	fe442783          	lw	a5,-28(s0)
    c0021dc4:	00e7e7b3          	or	a5,a5,a4
    c0021dc8:	fef42223          	sw	a5,-28(s0)
    c0021dcc:	00001517          	auipc	a0,0x1
    c0021dd0:	ae450513          	addi	a0,a0,-1308 # c00228b0 <INST_CONFIG+0x688>
    c0021dd4:	db0fe0ef          	jal	ra,c0020384 <print>
    c0021dd8:	fe442783          	lw	a5,-28(s0)
    c0021ddc:	00078513          	mv	a0,a5
    c0021de0:	869fe0ef          	jal	ra,c0020648 <print_hex>
    c0021de4:	02813083          	ld	ra,40(sp)
    c0021de8:	02013403          	ld	s0,32(sp)
    c0021dec:	03010113          	addi	sp,sp,48
    c0021df0:	00008067          	ret

00000000c0021df4 <timelim_exe>:
    c0021df4:	fe010113          	addi	sp,sp,-32
    c0021df8:	00113c23          	sd	ra,24(sp)
    c0021dfc:	00813823          	sd	s0,16(sp)
    c0021e00:	02010413          	addi	s0,sp,32
    c0021e04:	00001517          	auipc	a0,0x1
    c0021e08:	22450513          	addi	a0,a0,548 # c0023028 <buffer>
    c0021e0c:	e85fe0ef          	jal	ra,c0020c90 <next_word>
    c0021e10:	fea43423          	sd	a0,-24(s0)
    c0021e14:	fe843783          	ld	a5,-24(s0)
    c0021e18:	0007c783          	lbu	a5,0(a5)
    c0021e1c:	00078a63          	beqz	a5,c0021e30 <timelim_exe+0x3c>
    c0021e20:	fe843783          	ld	a5,-24(s0)
    c0021e24:	00178793          	addi	a5,a5,1
    c0021e28:	0007c783          	lbu	a5,0(a5)
    c0021e2c:	02079863          	bnez	a5,c0021e5c <timelim_exe+0x68>
    c0021e30:	00001517          	auipc	a0,0x1
    c0021e34:	a2050513          	addi	a0,a0,-1504 # c0022850 <INST_CONFIG+0x628>
    c0021e38:	d4cfe0ef          	jal	ra,c0020384 <print>
    c0021e3c:	81818793          	addi	a5,gp,-2024 # c0023018 <time_lim>
    c0021e40:	0007a783          	lw	a5,0(a5)
    c0021e44:	00078513          	mv	a0,a5
    c0021e48:	801fe0ef          	jal	ra,c0020648 <print_hex>
    c0021e4c:	00001517          	auipc	a0,0x1
    c0021e50:	9fc50513          	addi	a0,a0,-1540 # c0022848 <INST_CONFIG+0x620>
    c0021e54:	d30fe0ef          	jal	ra,c0020384 <print>
    c0021e58:	01c0006f          	j	c0021e74 <timelim_exe+0x80>
    c0021e5c:	fe843503          	ld	a0,-24(s0)
    c0021e60:	8a5fe0ef          	jal	ra,c0020704 <str2hex>
    c0021e64:	00050793          	mv	a5,a0
    c0021e68:	0007871b          	sext.w	a4,a5
    c0021e6c:	81818793          	addi	a5,gp,-2024 # c0023018 <time_lim>
    c0021e70:	00e7a023          	sw	a4,0(a5)
    c0021e74:	00000013          	nop
    c0021e78:	01813083          	ld	ra,24(sp)
    c0021e7c:	01013403          	ld	s0,16(sp)
    c0021e80:	02010113          	addi	sp,sp,32
    c0021e84:	00008067          	ret

00000000c0021e88 <disas_exe>:
    c0021e88:	fd010113          	addi	sp,sp,-48
    c0021e8c:	02113423          	sd	ra,40(sp)
    c0021e90:	02813023          	sd	s0,32(sp)
    c0021e94:	03010413          	addi	s0,sp,48
    c0021e98:	00001517          	auipc	a0,0x1
    c0021e9c:	19050513          	addi	a0,a0,400 # c0023028 <buffer>
    c0021ea0:	df1fe0ef          	jal	ra,c0020c90 <next_word>
    c0021ea4:	fea43023          	sd	a0,-32(s0)
    c0021ea8:	fe043783          	ld	a5,-32(s0)
    c0021eac:	0007c783          	lbu	a5,0(a5)
    c0021eb0:	0c078463          	beqz	a5,c0021f78 <disas_exe+0xf0>
    c0021eb4:	fe043783          	ld	a5,-32(s0)
    c0021eb8:	00178793          	addi	a5,a5,1
    c0021ebc:	0007c783          	lbu	a5,0(a5)
    c0021ec0:	0a078c63          	beqz	a5,c0021f78 <disas_exe+0xf0>
    c0021ec4:	fe043503          	ld	a0,-32(s0)
    c0021ec8:	83dfe0ef          	jal	ra,c0020704 <str2hex>
    c0021ecc:	00050793          	mv	a5,a0
    c0021ed0:	fef42623          	sw	a5,-20(s0)
    c0021ed4:	fe043503          	ld	a0,-32(s0)
    c0021ed8:	db9fe0ef          	jal	ra,c0020c90 <next_word>
    c0021edc:	fea43023          	sd	a0,-32(s0)
    c0021ee0:	fe043783          	ld	a5,-32(s0)
    c0021ee4:	0007c783          	lbu	a5,0(a5)
    c0021ee8:	08078c63          	beqz	a5,c0021f80 <disas_exe+0xf8>
    c0021eec:	fe043783          	ld	a5,-32(s0)
    c0021ef0:	00178793          	addi	a5,a5,1
    c0021ef4:	0007c783          	lbu	a5,0(a5)
    c0021ef8:	08078463          	beqz	a5,c0021f80 <disas_exe+0xf8>
    c0021efc:	fe043503          	ld	a0,-32(s0)
    c0021f00:	805fe0ef          	jal	ra,c0020704 <str2hex>
    c0021f04:	00050793          	mv	a5,a0
    c0021f08:	fef42423          	sw	a5,-24(s0)
    c0021f0c:	0580006f          	j	c0021f64 <disas_exe+0xdc>
    c0021f10:	00001517          	auipc	a0,0x1
    c0021f14:	96850513          	addi	a0,a0,-1688 # c0022878 <INST_CONFIG+0x650>
    c0021f18:	c6cfe0ef          	jal	ra,c0020384 <print>
    c0021f1c:	fec42783          	lw	a5,-20(s0)
    c0021f20:	00078513          	mv	a0,a5
    c0021f24:	f24fe0ef          	jal	ra,c0020648 <print_hex>
    c0021f28:	00001517          	auipc	a0,0x1
    c0021f2c:	95850513          	addi	a0,a0,-1704 # c0022880 <INST_CONFIG+0x658>
    c0021f30:	c54fe0ef          	jal	ra,c0020384 <print>
    c0021f34:	fec46783          	lwu	a5,-20(s0)
    c0021f38:	0007a783          	lw	a5,0(a5)
    c0021f3c:	fcf42e23          	sw	a5,-36(s0)
    c0021f40:	fdc42783          	lw	a5,-36(s0)
    c0021f44:	00078513          	mv	a0,a5
    c0021f48:	9b9ff0ef          	jal	ra,c0021900 <print_int2inst>
    c0021f4c:	00000517          	auipc	a0,0x0
    c0021f50:	78450513          	addi	a0,a0,1924 # c00226d0 <INST_CONFIG+0x4a8>
    c0021f54:	c30fe0ef          	jal	ra,c0020384 <print>
    c0021f58:	fec42783          	lw	a5,-20(s0)
    c0021f5c:	0047879b          	addiw	a5,a5,4
    c0021f60:	fef42623          	sw	a5,-20(s0)
    c0021f64:	fe842783          	lw	a5,-24(s0)
    c0021f68:	fff7871b          	addiw	a4,a5,-1
    c0021f6c:	fee42423          	sw	a4,-24(s0)
    c0021f70:	fa0790e3          	bnez	a5,c0021f10 <disas_exe+0x88>
    c0021f74:	0100006f          	j	c0021f84 <disas_exe+0xfc>
    c0021f78:	00000013          	nop
    c0021f7c:	0080006f          	j	c0021f84 <disas_exe+0xfc>
    c0021f80:	00000013          	nop
    c0021f84:	02813083          	ld	ra,40(sp)
    c0021f88:	02013403          	ld	s0,32(sp)
    c0021f8c:	03010113          	addi	sp,sp,48
    c0021f90:	00008067          	ret

00000000c0021f94 <start>:
    c0021f94:	ff010113          	addi	sp,sp,-16
    c0021f98:	00113423          	sd	ra,8(sp)
    c0021f9c:	00813023          	sd	s0,0(sp)
    c0021fa0:	01010413          	addi	s0,sp,16
    c0021fa4:	00001517          	auipc	a0,0x1
    c0021fa8:	92c50513          	addi	a0,a0,-1748 # c00228d0 <INST_CONFIG+0x6a8>
    c0021fac:	bd8fe0ef          	jal	ra,c0020384 <print>
    c0021fb0:	00001517          	auipc	a0,0x1
    c0021fb4:	94050513          	addi	a0,a0,-1728 # c00228f0 <INST_CONFIG+0x6c8>
    c0021fb8:	bccfe0ef          	jal	ra,c0020384 <print>
    c0021fbc:	00001517          	auipc	a0,0x1
    c0021fc0:	94450513          	addi	a0,a0,-1724 # c0022900 <INST_CONFIG+0x6d8>
    c0021fc4:	bc0fe0ef          	jal	ra,c0020384 <print>
    c0021fc8:	00001517          	auipc	a0,0x1
    c0021fcc:	94850513          	addi	a0,a0,-1720 # c0022910 <INST_CONFIG+0x6e8>
    c0021fd0:	bb4fe0ef          	jal	ra,c0020384 <print>
    c0021fd4:	00001517          	auipc	a0,0x1
    c0021fd8:	94c50513          	addi	a0,a0,-1716 # c0022920 <INST_CONFIG+0x6f8>
    c0021fdc:	ba8fe0ef          	jal	ra,c0020384 <print>
    c0021fe0:	00001517          	auipc	a0,0x1
    c0021fe4:	94850513          	addi	a0,a0,-1720 # c0022928 <INST_CONFIG+0x700>
    c0021fe8:	b9cfe0ef          	jal	ra,c0020384 <print>
    c0021fec:	00001517          	auipc	a0,0x1
    c0021ff0:	93450513          	addi	a0,a0,-1740 # c0022920 <INST_CONFIG+0x6f8>
    c0021ff4:	b90fe0ef          	jal	ra,c0020384 <print>
    c0021ff8:	00001517          	auipc	a0,0x1
    c0021ffc:	94850513          	addi	a0,a0,-1720 # c0022940 <INST_CONFIG+0x718>
    c0022000:	b84fe0ef          	jal	ra,c0020384 <print>
    c0022004:	00001517          	auipc	a0,0x1
    c0022008:	91c50513          	addi	a0,a0,-1764 # c0022920 <INST_CONFIG+0x6f8>
    c002200c:	b78fe0ef          	jal	ra,c0020384 <print>
    c0022010:	00001517          	auipc	a0,0x1
    c0022014:	94050513          	addi	a0,a0,-1728 # c0022950 <INST_CONFIG+0x728>
    c0022018:	b6cfe0ef          	jal	ra,c0020384 <print>
    c002201c:	00001517          	auipc	a0,0x1
    c0022020:	90450513          	addi	a0,a0,-1788 # c0022920 <INST_CONFIG+0x6f8>
    c0022024:	b60fe0ef          	jal	ra,c0020384 <print>
    c0022028:	ba9fe0ef          	jal	ra,c0020bd0 <init>
    c002202c:	00001517          	auipc	a0,0x1
    c0022030:	93450513          	addi	a0,a0,-1740 # c0022960 <INST_CONFIG+0x738>
    c0022034:	b50fe0ef          	jal	ra,c0020384 <print>
    c0022038:	c70fe0ef          	jal	ra,c00204a8 <get_line>
    c002203c:	00001797          	auipc	a5,0x1
    c0022040:	fec78793          	addi	a5,a5,-20 # c0023028 <buffer>
    c0022044:	0007c783          	lbu	a5,0(a5)
    c0022048:	0007879b          	sext.w	a5,a5
    c002204c:	00078693          	mv	a3,a5
    c0022050:	04900713          	li	a4,73
    c0022054:	08e68663          	beq	a3,a4,c00220e0 <start+0x14c>
    c0022058:	00078693          	mv	a3,a5
    c002205c:	04900713          	li	a4,73
    c0022060:	02d74263          	blt	a4,a3,c0022084 <start+0xf0>
    c0022064:	00078693          	mv	a3,a5
    c0022068:	04400713          	li	a4,68
    c002206c:	08e68263          	beq	a3,a4,c00220f0 <start+0x15c>
    c0022070:	00078693          	mv	a3,a5
    c0022074:	04500713          	li	a4,69
    c0022078:	06e68063          	beq	a3,a4,c00220d8 <start+0x144>
    c002207c:	08078663          	beqz	a5,c0022108 <start+0x174>
    c0022080:	0800006f          	j	c0022100 <start+0x16c>
    c0022084:	00078693          	mv	a3,a5
    c0022088:	05200713          	li	a4,82
    c002208c:	04e68263          	beq	a3,a4,c00220d0 <start+0x13c>
    c0022090:	00078693          	mv	a3,a5
    c0022094:	05200713          	li	a4,82
    c0022098:	00d74a63          	blt	a4,a3,c00220ac <start+0x118>
    c002209c:	00078713          	mv	a4,a5
    c00220a0:	04a00793          	li	a5,74
    c00220a4:	02f70263          	beq	a4,a5,c00220c8 <start+0x134>
    c00220a8:	0580006f          	j	c0022100 <start+0x16c>
    c00220ac:	00078693          	mv	a3,a5
    c00220b0:	05400713          	li	a4,84
    c00220b4:	04e68263          	beq	a3,a4,c00220f8 <start+0x164>
    c00220b8:	00078713          	mv	a4,a5
    c00220bc:	05600793          	li	a5,86
    c00220c0:	02f70463          	beq	a4,a5,c00220e8 <start+0x154>
    c00220c4:	03c0006f          	j	c0022100 <start+0x16c>
    c00220c8:	c4dfe0ef          	jal	ra,c0020d14 <jump_exe>
    c00220cc:	0400006f          	j	c002210c <start+0x178>
    c00220d0:	d25fe0ef          	jal	ra,c0020df4 <reg_exe>
    c00220d4:	0380006f          	j	c002210c <start+0x178>
    c00220d8:	db5fe0ef          	jal	ra,c0020e8c <edit_exe>
    c00220dc:	0300006f          	j	c002210c <start+0x178>
    c00220e0:	e44ff0ef          	jal	ra,c0021724 <inst_exe>
    c00220e4:	0280006f          	j	c002210c <start+0x178>
    c00220e8:	f0cff0ef          	jal	ra,c00217f4 <view_exe>
    c00220ec:	0200006f          	j	c002210c <start+0x178>
    c00220f0:	d99ff0ef          	jal	ra,c0021e88 <disas_exe>
    c00220f4:	0180006f          	j	c002210c <start+0x178>
    c00220f8:	cfdff0ef          	jal	ra,c0021df4 <timelim_exe>
    c00220fc:	0100006f          	j	c002210c <start+0x178>
    c0022100:	ea8fe0ef          	jal	ra,c00207a8 <print_help>
    c0022104:	f29ff06f          	j	c002202c <start+0x98>
    c0022108:	00000013          	nop
    c002210c:	f21ff06f          	j	c002202c <start+0x98>

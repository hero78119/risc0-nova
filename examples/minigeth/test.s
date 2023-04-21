
riscelf0:     file format elf32-littleriscv


Disassembly of section .text:

07000000 <_start>:
 7000000:	f9081197          	auipc	gp,0xf9081
 7000004:	80018193          	add	gp,gp,-2048 # 80800 <__global_pointer$>

07000008 <.Lpcrel_hi1>:
 7000008:	f9800117          	auipc	sp,0xf9800
 700000c:	ff410113          	add	sp,sp,-12 # 7ffffc <__stack_init$>
 7000010:	004000ef          	jal	7000014 <__start>

07000014 <__start>:
 7000014:	ff010113          	add	sp,sp,-16
 7000018:	00112623          	sw	ra,12(sp)
 700001c:	00812423          	sw	s0,8(sp)
 7000020:	00912223          	sw	s1,4(sp)
 7000024:	00080537          	lui	a0,0x80
 7000028:	02852503          	lw	a0,40(a0) # 80028 <__rust_alloc_error_handler_should_panic>
 700002c:	000805b7          	lui	a1,0x80
 7000030:	0b05a603          	lw	a2,176(a1) # 800b0 <__bss_end>
 7000034:	00c57a63          	bgeu	a0,a2,7000048 <__start+0x34>
 7000038:	00052023          	sw	zero,0(a0)
 700003c:	0b05a603          	lw	a2,176(a1)
 7000040:	00450513          	add	a0,a0,4
 7000044:	fec56ae3          	bltu	a0,a2,7000038 <__start+0x24>
 7000048:	00080437          	lui	s0,0x80
 700004c:	03c40493          	add	s1,s0,60 # 8003c <_ZN10risc0_zkvm5guest3env6HASHER17h2b2409cc96672782E>
 7000050:	00c48513          	add	a0,s1,12
 7000054:	04100613          	li	a2,65
 7000058:	00000593          	li	a1,0
 700005c:	00001097          	auipc	ra,0x1
 7000060:	dd8080e7          	jalr	-552(ra) # 7000e34 <memset>
 7000064:	00100513          	li	a0,1
 7000068:	02a42e23          	sw	a0,60(s0)
 700006c:	0004a223          	sw	zero,4(s1)
 7000070:	0004a423          	sw	zero,8(s1)
 7000074:	00000097          	auipc	ra,0x0
 7000078:	020080e7          	jalr	32(ra) # 7000094 <__main>
 700007c:	00c12083          	lw	ra,12(sp)
 7000080:	00812403          	lw	s0,8(sp)
 7000084:	00412483          	lw	s1,4(sp)
 7000088:	01010113          	add	sp,sp,16
 700008c:	00001317          	auipc	t1,0x1
 7000090:	2ac30067          	jr	684(t1) # 7001338 <_ZN10risc0_zkvm5guest3env8finalize17h4683497f8b82da0cE>

07000094 <__main>:
 7000094:	fd010113          	add	sp,sp,-48
 7000098:	02112623          	sw	ra,44(sp)
 700009c:	02812423          	sw	s0,40(sp)
 70000a0:	02912223          	sw	s1,36(sp)
 70000a4:	03212023          	sw	s2,32(sp)
 70000a8:	01312e23          	sw	s3,28(sp)
 70000ac:	00001097          	auipc	ra,0x1
 70000b0:	6cc080e7          	jalr	1740(ra) # 7001778 <_ZN10risc0_zkvm5guest3env5stdin17hb0b3d6bdad52895bE>
 70000b4:	00a12223          	sw	a0,4(sp)
 70000b8:	00410513          	add	a0,sp,4
 70000bc:	00a12c23          	sw	a0,24(sp)
 70000c0:	00810513          	add	a0,sp,8
 70000c4:	01810593          	add	a1,sp,24
 70000c8:	01810993          	add	s3,sp,24
 70000cc:	00000097          	auipc	ra,0x0
 70000d0:	0f8080e7          	jalr	248(ra) # 70001c4 <_ZN110_$LT$$RF$mut$u20$risc0_zkvm..serde..deserializer..Deserializer$LT$R$GT$$u20$as$u20$serde..de..Deserializer$GT$18deserialize_string17hcd3f07eec63ea05dE>
 70000d4:	00812403          	lw	s0,8(sp)
 70000d8:	08040463          	beqz	s0,7000160 <__main+0xcc>
 70000dc:	00c12483          	lw	s1,12(sp)
 70000e0:	01012583          	lw	a1,16(sp)
 70000e4:	00040513          	mv	a0,s0
 70000e8:	00001097          	auipc	ra,0x1
 70000ec:	b60080e7          	jalr	-1184(ra) # 7000c48 <_ZN83_$LT$risc0_zkvm..guest..sha..Impl$u20$as$u20$risc0_zkp..core..hash..sha..Sha256$GT$10hash_bytes17h36140a96bf7ce2e5E>
 70000f0:	00050913          	mv	s2,a0
 70000f4:	00001097          	auipc	ra,0x1
 70000f8:	67c080e7          	jalr	1660(ra) # 7001770 <_ZN10risc0_zkvm5guest3env7journal17he59338ac9e48008fE>
 70000fc:	00a12c23          	sw	a0,24(sp)
 7000100:	01312423          	sw	s3,8(sp)
 7000104:	07007537          	lui	a0,0x7007
 7000108:	e2850593          	add	a1,a0,-472 # 7006e28 <anon.ca0acec1ed96f6fc2b88fb8e82be5400.0.llvm.5899260727011860516>
 700010c:	00810513          	add	a0,sp,8
 7000110:	00600613          	li	a2,6
 7000114:	00090693          	mv	a3,s2
 7000118:	00000097          	auipc	ra,0x0
 700011c:	3b0080e7          	jalr	944(ra) # 70004c8 <_ZN105_$LT$$RF$mut$u20$risc0_zkvm..serde..serializer..Serializer$LT$W$GT$$u20$as$u20$serde..ser..Serializer$GT$24serialize_newtype_struct17hd21c72b76a9667caE>
 7000120:	0ff57513          	zext.b	a0,a0
 7000124:	00700593          	li	a1,7
 7000128:	06b51663          	bne	a0,a1,7000194 <__main+0x100>
 700012c:	00048c63          	beqz	s1,7000144 <__main+0xb0>
 7000130:	00100613          	li	a2,1
 7000134:	00040513          	mv	a0,s0
 7000138:	00048593          	mv	a1,s1
 700013c:	00000097          	auipc	ra,0x0
 7000140:	4f0080e7          	jalr	1264(ra) # 700062c <__rust_dealloc>
 7000144:	02c12083          	lw	ra,44(sp)
 7000148:	02812403          	lw	s0,40(sp)
 700014c:	02412483          	lw	s1,36(sp)
 7000150:	02012903          	lw	s2,32(sp)
 7000154:	01c12983          	lw	s3,28(sp)
 7000158:	03010113          	add	sp,sp,48
 700015c:	00008067          	ret
 7000160:	00c10503          	lb	a0,12(sp)
 7000164:	00a10ba3          	sb	a0,23(sp)
 7000168:	07007537          	lui	a0,0x7007
 700016c:	e3050513          	add	a0,a0,-464 # 7006e30 <anon.8021ec8516762b607f32a64c873d281c.4.llvm.3318710579709553222>
 7000170:	070075b7          	lui	a1,0x7007
 7000174:	e5c58693          	add	a3,a1,-420 # 7006e5c <anon.8021ec8516762b607f32a64c873d281c.5.llvm.3318710579709553222>
 7000178:	070075b7          	lui	a1,0x7007
 700017c:	ea458713          	add	a4,a1,-348 # 7006ea4 <anon.8021ec8516762b607f32a64c873d281c.7.llvm.3318710579709553222>
 7000180:	02b00593          	li	a1,43
 7000184:	01710613          	add	a2,sp,23
 7000188:	00007097          	auipc	ra,0x7
 700018c:	a38080e7          	jalr	-1480(ra) # 7006bc0 <_ZN4core6result13unwrap_failed17hf6bc9b148a5ba21eE>
 7000190:	c0001073          	unimp
 7000194:	00a10223          	sb	a0,4(sp)
 7000198:	07007537          	lui	a0,0x7007
 700019c:	e3050513          	add	a0,a0,-464 # 7006e30 <anon.8021ec8516762b607f32a64c873d281c.4.llvm.3318710579709553222>
 70001a0:	070075b7          	lui	a1,0x7007
 70001a4:	e5c58693          	add	a3,a1,-420 # 7006e5c <anon.8021ec8516762b607f32a64c873d281c.5.llvm.3318710579709553222>
 70001a8:	070075b7          	lui	a1,0x7007
 70001ac:	eb458713          	add	a4,a1,-332 # 7006eb4 <anon.8021ec8516762b607f32a64c873d281c.8.llvm.3318710579709553222>
 70001b0:	02b00593          	li	a1,43
 70001b4:	00410613          	add	a2,sp,4
 70001b8:	00007097          	auipc	ra,0x7
 70001bc:	a08080e7          	jalr	-1528(ra) # 7006bc0 <_ZN4core6result13unwrap_failed17hf6bc9b148a5ba21eE>
 70001c0:	c0001073          	unimp

070001c4 <_ZN110_$LT$$RF$mut$u20$risc0_zkvm..serde..deserializer..Deserializer$LT$R$GT$$u20$as$u20$serde..de..Deserializer$GT$18deserialize_string17hcd3f07eec63ea05dE>:
 70001c4:	fd010113          	add	sp,sp,-48
 70001c8:	02112623          	sw	ra,44(sp)
 70001cc:	02812423          	sw	s0,40(sp)
 70001d0:	02912223          	sw	s1,36(sp)
 70001d4:	03212023          	sw	s2,32(sp)
 70001d8:	01312e23          	sw	s3,28(sp)
 70001dc:	01412c23          	sw	s4,24(sp)
 70001e0:	0005a983          	lw	s3,0(a1)
 70001e4:	00050413          	mv	s0,a0
 70001e8:	00012423          	sw	zero,8(sp)
 70001ec:	00810593          	add	a1,sp,8
 70001f0:	00100613          	li	a2,1
 70001f4:	00100913          	li	s2,1
 70001f8:	00098513          	mv	a0,s3
 70001fc:	00001097          	auipc	ra,0x1
 7000200:	584080e7          	jalr	1412(ra) # 7001780 <_ZN94_$LT$risc0_zkvm..guest..env..FdReader$u20$as$u20$risc0_zkvm..serde..deserializer..WordRead$GT$10read_words17hc6f19d077743efe4E>
 7000204:	0ff57513          	zext.b	a0,a0
 7000208:	00700593          	li	a1,7
 700020c:	10b51a63          	bne	a0,a1,7000320 <_ZN110_$LT$$RF$mut$u20$risc0_zkvm..serde..deserializer..Deserializer$LT$R$GT$$u20$as$u20$serde..de..Deserializer$GT$18deserialize_string17hcd3f07eec63ea05dE+0x15c>
 7000210:	00812483          	lw	s1,8(sp)
 7000214:	04048c63          	beqz	s1,700026c <_ZN110_$LT$$RF$mut$u20$risc0_zkvm..serde..deserializer..Deserializer$LT$R$GT$$u20$as$u20$serde..de..Deserializer$GT$18deserialize_string17hcd3f07eec63ea05dE+0xa8>
 7000218:	1204c863          	bltz	s1,7000348 <_ZN110_$LT$$RF$mut$u20$risc0_zkvm..serde..deserializer..Deserializer$LT$R$GT$$u20$as$u20$serde..de..Deserializer$GT$18deserialize_string17hcd3f07eec63ea05dE+0x184>
 700021c:	0004a513          	slti	a0,s1,0
 7000220:	00154a13          	xor	s4,a0,1
 7000224:	00048513          	mv	a0,s1
 7000228:	000a0593          	mv	a1,s4
 700022c:	00000097          	auipc	ra,0x0
 7000230:	3f8080e7          	jalr	1016(ra) # 7000624 <__rust_alloc>
 7000234:	12050063          	beqz	a0,7000354 <_ZN110_$LT$$RF$mut$u20$risc0_zkvm..serde..deserializer..Deserializer$LT$R$GT$$u20$as$u20$serde..de..Deserializer$GT$18deserialize_string17hcd3f07eec63ea05dE+0x190>
 7000238:	00050913          	mv	s2,a0
 700023c:	00100593          	li	a1,1
 7000240:	02b48063          	beq	s1,a1,7000260 <_ZN110_$LT$$RF$mut$u20$risc0_zkvm..serde..deserializer..Deserializer$LT$R$GT$$u20$as$u20$serde..de..Deserializer$GT$18deserialize_string17hcd3f07eec63ea05dE+0x9c>
 7000244:	fff48a13          	add	s4,s1,-1
 7000248:	00090513          	mv	a0,s2
 700024c:	00000593          	li	a1,0
 7000250:	000a0613          	mv	a2,s4
 7000254:	00001097          	auipc	ra,0x1
 7000258:	be0080e7          	jalr	-1056(ra) # 7000e34 <memset>
 700025c:	01490533          	add	a0,s2,s4
 7000260:	00050023          	sb	zero,0(a0)
 7000264:	00048a13          	mv	s4,s1
 7000268:	0080006f          	j	7000270 <_ZN110_$LT$$RF$mut$u20$risc0_zkvm..serde..deserializer..Deserializer$LT$R$GT$$u20$as$u20$serde..de..Deserializer$GT$18deserialize_string17hcd3f07eec63ea05dE+0xac>
 700026c:	00000a13          	li	s4,0
 7000270:	00098513          	mv	a0,s3
 7000274:	00090593          	mv	a1,s2
 7000278:	000a0613          	mv	a2,s4
 700027c:	00001097          	auipc	ra,0x1
 7000280:	544080e7          	jalr	1348(ra) # 70017c0 <_ZN94_$LT$risc0_zkvm..guest..env..FdReader$u20$as$u20$risc0_zkvm..serde..deserializer..WordRead$GT$17read_padded_bytes17h9f7bfde97f8562a1E>
 7000284:	0ff57513          	zext.b	a0,a0
 7000288:	00700593          	li	a1,7
 700028c:	04b51a63          	bne	a0,a1,70002e0 <_ZN110_$LT$$RF$mut$u20$risc0_zkvm..serde..deserializer..Deserializer$LT$R$GT$$u20$as$u20$serde..de..Deserializer$GT$18deserialize_string17hcd3f07eec63ea05dE+0x11c>
 7000290:	00810513          	add	a0,sp,8
 7000294:	00090593          	mv	a1,s2
 7000298:	000a0613          	mv	a2,s4
 700029c:	00005097          	auipc	ra,0x5
 70002a0:	79c080e7          	jalr	1948(ra) # 7005a38 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE>
 70002a4:	00812503          	lw	a0,8(sp)
 70002a8:	00050863          	beqz	a0,70002b8 <_ZN110_$LT$$RF$mut$u20$risc0_zkvm..serde..deserializer..Deserializer$LT$R$GT$$u20$as$u20$serde..de..Deserializer$GT$18deserialize_string17hcd3f07eec63ea05dE+0xf4>
 70002ac:	01014503          	lbu	a0,16(sp)
 70002b0:	00200593          	li	a1,2
 70002b4:	04b51863          	bne	a0,a1,7000304 <_ZN110_$LT$$RF$mut$u20$risc0_zkvm..serde..deserializer..Deserializer$LT$R$GT$$u20$as$u20$serde..de..Deserializer$GT$18deserialize_string17hcd3f07eec63ea05dE+0x140>
 70002b8:	0084d513          	srl	a0,s1,0x8
 70002bc:	01242023          	sw	s2,0(s0)
 70002c0:	00940223          	sb	s1,4(s0)
 70002c4:	00a402a3          	sb	a0,5(s0)
 70002c8:	00855593          	srl	a1,a0,0x8
 70002cc:	00b40323          	sb	a1,6(s0)
 70002d0:	01055513          	srl	a0,a0,0x10
 70002d4:	00a403a3          	sb	a0,7(s0)
 70002d8:	01442423          	sw	s4,8(s0)
 70002dc:	04c0006f          	j	7000328 <_ZN110_$LT$$RF$mut$u20$risc0_zkvm..serde..deserializer..Deserializer$LT$R$GT$$u20$as$u20$serde..de..Deserializer$GT$18deserialize_string17hcd3f07eec63ea05dE+0x164>
 70002e0:	00a40223          	sb	a0,4(s0)
 70002e4:	00042023          	sw	zero,0(s0)
 70002e8:	04048063          	beqz	s1,7000328 <_ZN110_$LT$$RF$mut$u20$risc0_zkvm..serde..deserializer..Deserializer$LT$R$GT$$u20$as$u20$serde..de..Deserializer$GT$18deserialize_string17hcd3f07eec63ea05dE+0x164>
 70002ec:	00100613          	li	a2,1
 70002f0:	00090513          	mv	a0,s2
 70002f4:	00048593          	mv	a1,s1
 70002f8:	00000097          	auipc	ra,0x0
 70002fc:	334080e7          	jalr	820(ra) # 700062c <__rust_dealloc>
 7000300:	0280006f          	j	7000328 <_ZN110_$LT$$RF$mut$u20$risc0_zkvm..serde..deserializer..Deserializer$LT$R$GT$$u20$as$u20$serde..de..Deserializer$GT$18deserialize_string17hcd3f07eec63ea05dE+0x164>
 7000304:	00048c63          	beqz	s1,700031c <_ZN110_$LT$$RF$mut$u20$risc0_zkvm..serde..deserializer..Deserializer$LT$R$GT$$u20$as$u20$serde..de..Deserializer$GT$18deserialize_string17hcd3f07eec63ea05dE+0x158>
 7000308:	00100613          	li	a2,1
 700030c:	00090513          	mv	a0,s2
 7000310:	00048593          	mv	a1,s1
 7000314:	00000097          	auipc	ra,0x0
 7000318:	318080e7          	jalr	792(ra) # 700062c <__rust_dealloc>
 700031c:	00100513          	li	a0,1
 7000320:	00a40223          	sb	a0,4(s0)
 7000324:	00042023          	sw	zero,0(s0)
 7000328:	02c12083          	lw	ra,44(sp)
 700032c:	02812403          	lw	s0,40(sp)
 7000330:	02412483          	lw	s1,36(sp)
 7000334:	02012903          	lw	s2,32(sp)
 7000338:	01c12983          	lw	s3,28(sp)
 700033c:	01812a03          	lw	s4,24(sp)
 7000340:	03010113          	add	sp,sp,48
 7000344:	00008067          	ret
 7000348:	00005097          	auipc	ra,0x5
 700034c:	fd0080e7          	jalr	-48(ra) # 7005318 <_ZN5alloc7raw_vec17capacity_overflow17h59e3baefeac9f928E>
 7000350:	c0001073          	unimp
 7000354:	00048513          	mv	a0,s1
 7000358:	000a0593          	mv	a1,s4
 700035c:	00005097          	auipc	ra,0x5
 7000360:	000080e7          	jalr	ra # 700535c <_ZN5alloc5alloc18handle_alloc_error17hf138f09b4614ca73E>
 7000364:	c0001073          	unimp

07000368 <_ZN4core3ptr50drop_in_place$LT$risc0_zkvm..serde..err..Error$GT$17h7ffcf7d945e70786E.llvm.3318710579709553222>:
 7000368:	00008067          	ret

0700036c <_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update28_$u7b$$u7b$closure$u7d$$u7d$17h573bffc5157467a5E.llvm.3318710579709553222>:
 700036c:	fe010113          	add	sp,sp,-32
 7000370:	00112e23          	sw	ra,28(sp)
 7000374:	00812c23          	sw	s0,24(sp)
 7000378:	00912a23          	sw	s1,20(sp)
 700037c:	01212823          	sw	s2,16(sp)
 7000380:	01312623          	sw	s3,12(sp)
 7000384:	01412423          	sw	s4,8(sp)
 7000388:	01512223          	sw	s5,4(sp)
 700038c:	00052a83          	lw	s5,0(a0)
 7000390:	004aa503          	lw	a0,4(s5)
 7000394:	000aa403          	lw	s0,0(s5)
 7000398:	00058493          	mv	s1,a1
 700039c:	00c50533          	add	a0,a0,a2
 70003a0:	00aaa223          	sw	a0,4(s5)
 70003a4:	00041663          	bnez	s0,70003b0 <_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update28_$u7b$$u7b$closure$u7d$$u7d$17h573bffc5157467a5E.llvm.3318710579709553222+0x44>
 70003a8:	07007537          	lui	a0,0x7007
 70003ac:	21050413          	add	s0,a0,528 # 7007210 <_ZN9risc0_zkp4core4hash3sha11SHA256_INIT17h62e1cd879e97d403E>
 70003b0:	0034f513          	and	a0,s1,3
 70003b4:	02050663          	beqz	a0,70003e0 <_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update28_$u7b$$u7b$closure$u7d$$u7d$17h573bffc5157467a5E.llvm.3318710579709553222+0x74>
 70003b8:	fff00513          	li	a0,-1
 70003bc:	02a60263          	beq	a2,a0,70003e0 <_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update28_$u7b$$u7b$closure$u7d$$u7d$17h573bffc5157467a5E.llvm.3318710579709553222+0x74>
 70003c0:	00000693          	li	a3,0
 70003c4:	07007537          	lui	a0,0x7007
 70003c8:	e3050593          	add	a1,a0,-464 # 7006e30 <anon.8021ec8516762b607f32a64c873d281c.4.llvm.3318710579709553222>
 70003cc:	00060513          	mv	a0,a2
 70003d0:	02051063          	bnez	a0,70003f0 <_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update28_$u7b$$u7b$closure$u7d$$u7d$17h573bffc5157467a5E.llvm.3318710579709553222+0x84>
 70003d4:	00040513          	mv	a0,s0
 70003d8:	00068613          	mv	a2,a3
 70003dc:	0980006f          	j	7000474 <_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update28_$u7b$$u7b$closure$u7d$$u7d$17h573bffc5157467a5E.llvm.3318710579709553222+0x108>
 70003e0:	00651593          	sll	a1,a0,0x6
 70003e4:	00b485b3          	add	a1,s1,a1
 70003e8:	40a606b3          	sub	a3,a2,a0
 70003ec:	fe0504e3          	beqz	a0,70003d4 <_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update28_$u7b$$u7b$closure$u7d$$u7d$17h573bffc5157467a5E.llvm.3318710579709553222+0x68>
 70003f0:	06060e63          	beqz	a2,700046c <_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update28_$u7b$$u7b$closure$u7d$$u7d$17h573bffc5157467a5E.llvm.3318710579709553222+0x100>
 70003f4:	01965513          	srl	a0,a2,0x19
 70003f8:	0a051863          	bnez	a0,70004a8 <_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update28_$u7b$$u7b$closure$u7d$$u7d$17h573bffc5157467a5E.llvm.3318710579709553222+0x13c>
 70003fc:	00661913          	sll	s2,a2,0x6
 7000400:	00153513          	seqz	a0,a0
 7000404:	00251a13          	sll	s4,a0,0x2
 7000408:	00090513          	mv	a0,s2
 700040c:	000a0593          	mv	a1,s4
 7000410:	00000097          	auipc	ra,0x0
 7000414:	214080e7          	jalr	532(ra) # 7000624 <__rust_alloc>
 7000418:	08050e63          	beqz	a0,70004b4 <_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update28_$u7b$$u7b$closure$u7d$$u7d$17h573bffc5157467a5E.llvm.3318710579709553222+0x148>
 700041c:	00050993          	mv	s3,a0
 7000420:	fc090513          	add	a0,s2,-64
 7000424:	00655a13          	srl	s4,a0,0x6
 7000428:	00098513          	mv	a0,s3
 700042c:	00048593          	mv	a1,s1
 7000430:	00090613          	mv	a2,s2
 7000434:	00001097          	auipc	ra,0x1
 7000438:	af8080e7          	jalr	-1288(ra) # 7000f2c <memcpy>
 700043c:	001a0613          	add	a2,s4,1
 7000440:	00040513          	mv	a0,s0
 7000444:	00098593          	mv	a1,s3
 7000448:	00001097          	auipc	ra,0x1
 700044c:	8f4080e7          	jalr	-1804(ra) # 7000d3c <_ZN83_$LT$risc0_zkvm..guest..sha..Impl$u20$as$u20$risc0_zkp..core..hash..sha..Sha256$GT$14compress_slice17hbbce71a927f87c81E>
 7000450:	00050413          	mv	s0,a0
 7000454:	00400613          	li	a2,4
 7000458:	00098513          	mv	a0,s3
 700045c:	00090593          	mv	a1,s2
 7000460:	00000097          	auipc	ra,0x0
 7000464:	1cc080e7          	jalr	460(ra) # 700062c <__rust_dealloc>
 7000468:	0180006f          	j	7000480 <_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update28_$u7b$$u7b$closure$u7d$$u7d$17h573bffc5157467a5E.llvm.3318710579709553222+0x114>
 700046c:	00400593          	li	a1,4
 7000470:	00040513          	mv	a0,s0
 7000474:	00001097          	auipc	ra,0x1
 7000478:	8c8080e7          	jalr	-1848(ra) # 7000d3c <_ZN83_$LT$risc0_zkvm..guest..sha..Impl$u20$as$u20$risc0_zkp..core..hash..sha..Sha256$GT$14compress_slice17hbbce71a927f87c81E>
 700047c:	00050413          	mv	s0,a0
 7000480:	008aa023          	sw	s0,0(s5)
 7000484:	01c12083          	lw	ra,28(sp)
 7000488:	01812403          	lw	s0,24(sp)
 700048c:	01412483          	lw	s1,20(sp)
 7000490:	01012903          	lw	s2,16(sp)
 7000494:	00c12983          	lw	s3,12(sp)
 7000498:	00812a03          	lw	s4,8(sp)
 700049c:	00412a83          	lw	s5,4(sp)
 70004a0:	02010113          	add	sp,sp,32
 70004a4:	00008067          	ret
 70004a8:	00005097          	auipc	ra,0x5
 70004ac:	e70080e7          	jalr	-400(ra) # 7005318 <_ZN5alloc7raw_vec17capacity_overflow17h59e3baefeac9f928E>
 70004b0:	c0001073          	unimp
 70004b4:	00090513          	mv	a0,s2
 70004b8:	000a0593          	mv	a1,s4
 70004bc:	00005097          	auipc	ra,0x5
 70004c0:	ea0080e7          	jalr	-352(ra) # 700535c <_ZN5alloc5alloc18handle_alloc_error17hf138f09b4614ca73E>
 70004c4:	c0001073          	unimp

070004c8 <_ZN105_$LT$$RF$mut$u20$risc0_zkvm..serde..serializer..Serializer$LT$W$GT$$u20$as$u20$serde..ser..Serializer$GT$24serialize_newtype_struct17hd21c72b76a9667caE>:
 70004c8:	fc010113          	add	sp,sp,-64
 70004cc:	02112e23          	sw	ra,60(sp)
 70004d0:	02812c23          	sw	s0,56(sp)
 70004d4:	02912a23          	sw	s1,52(sp)
 70004d8:	03212823          	sw	s2,48(sp)
 70004dc:	03312623          	sw	s3,44(sp)
 70004e0:	03412423          	sw	s4,40(sp)
 70004e4:	03512223          	sw	s5,36(sp)
 70004e8:	03612023          	sw	s6,32(sp)
 70004ec:	01712e23          	sw	s7,28(sp)
 70004f0:	01812c23          	sw	s8,24(sp)
 70004f4:	01912a23          	sw	s9,20(sp)
 70004f8:	01a12823          	sw	s10,16(sp)
 70004fc:	01b12623          	sw	s11,12(sp)
 7000500:	00068413          	mv	s0,a3
 7000504:	00000993          	li	s3,0
 7000508:	00052a03          	lw	s4,0(a0)
 700050c:	00410a93          	add	s5,sp,4
 7000510:	00080537          	lui	a0,0x80
 7000514:	03c50b13          	add	s6,a0,60 # 8003c <_ZN10risc0_zkvm5guest3env6HASHER17h2b2409cc96672782E>
 7000518:	004b0b93          	add	s7,s6,4
 700051c:	03b00c13          	li	s8,59
 7000520:	02000c93          	li	s9,32
 7000524:	04000d13          	li	s10,64
 7000528:	00cb0493          	add	s1,s6,12
 700052c:	0580006f          	j	7000584 <_ZN105_$LT$$RF$mut$u20$risc0_zkvm..serde..serializer..Serializer$LT$W$GT$$u20$as$u20$serde..ser..Serializer$GT$24serialize_newtype_struct17hd21c72b76a9667caE+0xbc>
 7000530:	40ad0633          	sub	a2,s10,a0
 7000534:	00ca8db3          	add	s11,s5,a2
 7000538:	fc450913          	add	s2,a0,-60
 700053c:	00a48533          	add	a0,s1,a0
 7000540:	00410593          	add	a1,sp,4
 7000544:	00001097          	auipc	ra,0x1
 7000548:	9e8080e7          	jalr	-1560(ra) # 7000f2c <memcpy>
 700054c:	00810513          	add	a0,sp,8
 7000550:	00100613          	li	a2,1
 7000554:	00048593          	mv	a1,s1
 7000558:	00000097          	auipc	ra,0x0
 700055c:	e14080e7          	jalr	-492(ra) # 700036c <_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update28_$u7b$$u7b$closure$u7d$$u7d$17h573bffc5157467a5E.llvm.3318710579709553222>
 7000560:	fc097513          	and	a0,s2,-64
 7000564:	00ad85b3          	add	a1,s11,a0
 7000568:	00048513          	mv	a0,s1
 700056c:	00090613          	mv	a2,s2
 7000570:	00001097          	auipc	ra,0x1
 7000574:	9bc080e7          	jalr	-1604(ra) # 7000f2c <memcpy>
 7000578:	00498993          	add	s3,s3,4
 700057c:	052b0623          	sb	s2,76(s6)
 7000580:	07998263          	beq	s3,s9,70005e4 <_ZN105_$LT$$RF$mut$u20$risc0_zkvm..serde..serializer..Serializer$LT$W$GT$$u20$as$u20$serde..ser..Serializer$GT$24serialize_newtype_struct17hd21c72b76a9667caE+0x11c>
 7000584:	01340533          	add	a0,s0,s3
 7000588:	00052503          	lw	a0,0(a0)
 700058c:	00a12223          	sw	a0,4(sp)
 7000590:	000a2503          	lw	a0,0(s4)
 7000594:	00410593          	add	a1,sp,4
 7000598:	00400613          	li	a2,4
 700059c:	00001097          	auipc	ra,0x1
 70005a0:	47c080e7          	jalr	1148(ra) # 7001a18 <sys_write>
 70005a4:	04cb4503          	lbu	a0,76(s6)
 70005a8:	01712423          	sw	s7,8(sp)
 70005ac:	f8ac62e3          	bltu	s8,a0,7000530 <_ZN105_$LT$$RF$mut$u20$risc0_zkvm..serde..serializer..Serializer$LT$W$GT$$u20$as$u20$serde..ser..Serializer$GT$24serialize_newtype_struct17hd21c72b76a9667caE+0x68>
 70005b0:	00412583          	lw	a1,4(sp)
 70005b4:	00ab0633          	add	a2,s6,a0
 70005b8:	0185d693          	srl	a3,a1,0x18
 70005bc:	00d607a3          	sb	a3,15(a2)
 70005c0:	0105d693          	srl	a3,a1,0x10
 70005c4:	00d60723          	sb	a3,14(a2)
 70005c8:	0085d693          	srl	a3,a1,0x8
 70005cc:	00d606a3          	sb	a3,13(a2)
 70005d0:	00b60623          	sb	a1,12(a2)
 70005d4:	00450913          	add	s2,a0,4
 70005d8:	00498993          	add	s3,s3,4
 70005dc:	052b0623          	sb	s2,76(s6)
 70005e0:	fb9992e3          	bne	s3,s9,7000584 <_ZN105_$LT$$RF$mut$u20$risc0_zkvm..serde..serializer..Serializer$LT$W$GT$$u20$as$u20$serde..ser..Serializer$GT$24serialize_newtype_struct17hd21c72b76a9667caE+0xbc>
 70005e4:	00700513          	li	a0,7
 70005e8:	03c12083          	lw	ra,60(sp)
 70005ec:	03812403          	lw	s0,56(sp)
 70005f0:	03412483          	lw	s1,52(sp)
 70005f4:	03012903          	lw	s2,48(sp)
 70005f8:	02c12983          	lw	s3,44(sp)
 70005fc:	02812a03          	lw	s4,40(sp)
 7000600:	02412a83          	lw	s5,36(sp)
 7000604:	02012b03          	lw	s6,32(sp)
 7000608:	01c12b83          	lw	s7,28(sp)
 700060c:	01812c03          	lw	s8,24(sp)
 7000610:	01412c83          	lw	s9,20(sp)
 7000614:	01012d03          	lw	s10,16(sp)
 7000618:	00c12d83          	lw	s11,12(sp)
 700061c:	04010113          	add	sp,sp,64
 7000620:	00008067          	ret

07000624 <__rust_alloc>:
 7000624:	00000317          	auipc	t1,0x0
 7000628:	16830067          	jr	360(t1) # 700078c <__rg_alloc>

0700062c <__rust_dealloc>:
 700062c:	00000317          	auipc	t1,0x0
 7000630:	23030067          	jr	560(t1) # 700085c <__rg_dealloc>

07000634 <__rust_realloc>:
 7000634:	00000317          	auipc	t1,0x0
 7000638:	22c30067          	jr	556(t1) # 7000860 <__rg_realloc>

0700063c <__rust_alloc_error_handler>:
 700063c:	00005317          	auipc	t1,0x5
 7000640:	d3830067          	jr	-712(t1) # 7005374 <__rg_oom>

07000644 <_ZN66_$LT$risc0_zkvm..serde..err..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c786d5dede93f22E>:
 7000644:	00054503          	lbu	a0,0(a0)
 7000648:	00251513          	sll	a0,a0,0x2
 700064c:	07007637          	lui	a2,0x7007
 7000650:	ec460613          	add	a2,a2,-316 # 7006ec4 <.LJTI11_0>
 7000654:	00c50533          	add	a0,a0,a2
 7000658:	00052603          	lw	a2,0(a0)
 700065c:	00058513          	mv	a0,a1
 7000660:	00060067          	jr	a2

07000664 <.LBB11_1>:
 7000664:	070075b7          	lui	a1,0x7007
 7000668:	f4f58593          	add	a1,a1,-177 # 7006f4f <.Lanon.77d2c9b90b6215e7d65ccf8a10755e1e.13>
 700066c:	01200613          	li	a2,18
 7000670:	00006317          	auipc	t1,0x6
 7000674:	12830067          	jr	296(t1) # 7006798 <_ZN4core3fmt9Formatter9write_str17h5a06ea8a0614300dE>

07000678 <.LBB11_2>:
 7000678:	070075b7          	lui	a1,0x7007
 700067c:	f3d58593          	add	a1,a1,-195 # 7006f3d <.Lanon.77d2c9b90b6215e7d65ccf8a10755e1e.12>
 7000680:	01200613          	li	a2,18
 7000684:	00006317          	auipc	t1,0x6
 7000688:	11430067          	jr	276(t1) # 7006798 <_ZN4core3fmt9Formatter9write_str17h5a06ea8a0614300dE>

0700068c <.LBB11_3>:
 700068c:	070075b7          	lui	a1,0x7007
 7000690:	f2958593          	add	a1,a1,-215 # 7006f29 <.Lanon.77d2c9b90b6215e7d65ccf8a10755e1e.11>
 7000694:	01400613          	li	a2,20
 7000698:	00006317          	auipc	t1,0x6
 700069c:	10030067          	jr	256(t1) # 7006798 <_ZN4core3fmt9Formatter9write_str17h5a06ea8a0614300dE>

070006a0 <.LBB11_4>:
 70006a0:	070075b7          	lui	a1,0x7007
 70006a4:	f1758593          	add	a1,a1,-233 # 7006f17 <.Lanon.77d2c9b90b6215e7d65ccf8a10755e1e.10>
 70006a8:	01200613          	li	a2,18
 70006ac:	00006317          	auipc	t1,0x6
 70006b0:	0ec30067          	jr	236(t1) # 7006798 <_ZN4core3fmt9Formatter9write_str17h5a06ea8a0614300dE>

070006b4 <.LBB11_5>:
 70006b4:	070075b7          	lui	a1,0x7007
 70006b8:	eff58593          	add	a1,a1,-257 # 7006eff <.Lanon.77d2c9b90b6215e7d65ccf8a10755e1e.9>
 70006bc:	01800613          	li	a2,24
 70006c0:	00006317          	auipc	t1,0x6
 70006c4:	0d830067          	jr	216(t1) # 7006798 <_ZN4core3fmt9Formatter9write_str17h5a06ea8a0614300dE>

070006c8 <.LBB11_6>:
 70006c8:	070075b7          	lui	a1,0x7007
 70006cc:	ef358593          	add	a1,a1,-269 # 7006ef3 <.Lanon.77d2c9b90b6215e7d65ccf8a10755e1e.8>
 70006d0:	00c00613          	li	a2,12
 70006d4:	00006317          	auipc	t1,0x6
 70006d8:	0c430067          	jr	196(t1) # 7006798 <_ZN4core3fmt9Formatter9write_str17h5a06ea8a0614300dE>

070006dc <.LBB11_7>:
 70006dc:	070075b7          	lui	a1,0x7007
 70006e0:	ee058593          	add	a1,a1,-288 # 7006ee0 <.Lanon.77d2c9b90b6215e7d65ccf8a10755e1e.7>
 70006e4:	01300613          	li	a2,19
 70006e8:	00006317          	auipc	t1,0x6
 70006ec:	0b030067          	jr	176(t1) # 7006798 <_ZN4core3fmt9Formatter9write_str17h5a06ea8a0614300dE>

070006f0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1a2d438adcf69c0fE>:
 70006f0:	ff010113          	add	sp,sp,-16
 70006f4:	00112623          	sw	ra,12(sp)
 70006f8:	00812423          	sw	s0,8(sp)
 70006fc:	00912223          	sw	s1,4(sp)
 7000700:	00052483          	lw	s1,0(a0)
 7000704:	00058413          	mv	s0,a1
 7000708:	00058513          	mv	a0,a1
 700070c:	00006097          	auipc	ra,0x6
 7000710:	0f8080e7          	jalr	248(ra) # 7006804 <_ZN4core3fmt9Formatter15debug_lower_hex17h22bd00ca219cafc6E>
 7000714:	02050263          	beqz	a0,7000738 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1a2d438adcf69c0fE+0x48>
 7000718:	00048513          	mv	a0,s1
 700071c:	00040593          	mv	a1,s0
 7000720:	00c12083          	lw	ra,12(sp)
 7000724:	00812403          	lw	s0,8(sp)
 7000728:	00412483          	lw	s1,4(sp)
 700072c:	01010113          	add	sp,sp,16
 7000730:	00005317          	auipc	t1,0x5
 7000734:	c5030067          	jr	-944(t1) # 7005380 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17he54497768046434cE>
 7000738:	00040513          	mv	a0,s0
 700073c:	00006097          	auipc	ra,0x6
 7000740:	0d8080e7          	jalr	216(ra) # 7006814 <_ZN4core3fmt9Formatter15debug_upper_hex17h41d667d487f5e853E>
 7000744:	02050263          	beqz	a0,7000768 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1a2d438adcf69c0fE+0x78>
 7000748:	00048513          	mv	a0,s1
 700074c:	00040593          	mv	a1,s0
 7000750:	00c12083          	lw	ra,12(sp)
 7000754:	00812403          	lw	s0,8(sp)
 7000758:	00412483          	lw	s1,4(sp)
 700075c:	01010113          	add	sp,sp,16
 7000760:	00005317          	auipc	t1,0x5
 7000764:	cd030067          	jr	-816(t1) # 7005430 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h6ea2fd24013bbc24E>
 7000768:	00048513          	mv	a0,s1
 700076c:	00040593          	mv	a1,s0
 7000770:	00c12083          	lw	ra,12(sp)
 7000774:	00812403          	lw	s0,8(sp)
 7000778:	00412483          	lw	s1,4(sp)
 700077c:	01010113          	add	sp,sp,16
 7000780:	00006317          	auipc	t1,0x6
 7000784:	69430067          	jr	1684(t1) # 7006e14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17heab9e780deef2c77E>

07000788 <_ZN4core3ptr53drop_in_place$LT$core..alloc..layout..LayoutError$GT$17hea2b82c07cffb572E>:
 7000788:	00008067          	ret

0700078c <__rg_alloc>:
 700078c:	00400613          	li	a2,4
 7000790:	00b66463          	bltu	a2,a1,7000798 <__rg_alloc+0xc>
 7000794:	00400593          	li	a1,4
 7000798:	0015d613          	srl	a2,a1,0x1
 700079c:	555556b7          	lui	a3,0x55555
 70007a0:	55568693          	add	a3,a3,1365 # 55555555 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x4e54cf5e>
 70007a4:	00d67633          	and	a2,a2,a3
 70007a8:	40c58633          	sub	a2,a1,a2
 70007ac:	333336b7          	lui	a3,0x33333
 70007b0:	33368693          	add	a3,a3,819 # 33333333 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x2c32ad3c>
 70007b4:	00d67733          	and	a4,a2,a3
 70007b8:	00265613          	srl	a2,a2,0x2
 70007bc:	00d67633          	and	a2,a2,a3
 70007c0:	00c70633          	add	a2,a4,a2
 70007c4:	00465693          	srl	a3,a2,0x4
 70007c8:	00d60633          	add	a2,a2,a3
 70007cc:	0f0f16b7          	lui	a3,0xf0f1
 70007d0:	f0f68693          	add	a3,a3,-241 # f0f0f0f <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x80e8918>
 70007d4:	00d67633          	and	a2,a2,a3
 70007d8:	010106b7          	lui	a3,0x1010
 70007dc:	10168693          	add	a3,a3,257 # 1010101 <__stack_init$+0x810105>
 70007e0:	02d60633          	mul	a2,a2,a3
 70007e4:	01865613          	srl	a2,a2,0x18
 70007e8:	fff60693          	add	a3,a2,-1
 70007ec:	00d036b3          	snez	a3,a3
 70007f0:	80000737          	lui	a4,0x80000
 70007f4:	40b70733          	sub	a4,a4,a1
 70007f8:	00a73733          	sltu	a4,a4,a0
 70007fc:	00e6e6b3          	or	a3,a3,a4
 7000800:	02069663          	bnez	a3,700082c <__rg_alloc+0xa0>
 7000804:	00100693          	li	a3,1
 7000808:	00d60463          	beq	a2,a3,7000810 <__rg_alloc+0x84>
 700080c:	00000593          	li	a1,0
 7000810:	00b50533          	add	a0,a0,a1
 7000814:	fff50513          	add	a0,a0,-1
 7000818:	40b005b3          	neg	a1,a1
 700081c:	00b57533          	and	a0,a0,a1
 7000820:	00255513          	srl	a0,a0,0x2
 7000824:	00001317          	auipc	t1,0x1
 7000828:	21c30067          	jr	540(t1) # 7001a40 <sys_alloc_words>
 700082c:	ff010113          	add	sp,sp,-16
 7000830:	07007537          	lui	a0,0x7007
 7000834:	f6150513          	add	a0,a0,-159 # 7006f61 <.Lanon.168859b36f162421e63795dd2ae12a88.6>
 7000838:	070075b7          	lui	a1,0x7007
 700083c:	f8858693          	add	a3,a1,-120 # 7006f88 <.Lanon.168859b36f162421e63795dd2ae12a88.7>
 7000840:	070075b7          	lui	a1,0x7007
 7000844:	fd458713          	add	a4,a1,-44 # 7006fd4 <.Lanon.168859b36f162421e63795dd2ae12a88.9>
 7000848:	02700593          	li	a1,39
 700084c:	00810613          	add	a2,sp,8
 7000850:	00006097          	auipc	ra,0x6
 7000854:	370080e7          	jalr	880(ra) # 7006bc0 <_ZN4core6result13unwrap_failed17hf6bc9b148a5ba21eE>
 7000858:	c0001073          	unimp

0700085c <__rg_dealloc>:
 700085c:	00008067          	ret

07000860 <__rg_realloc>:
 7000860:	fe010113          	add	sp,sp,-32
 7000864:	00112e23          	sw	ra,28(sp)
 7000868:	00812c23          	sw	s0,24(sp)
 700086c:	00912a23          	sw	s1,20(sp)
 7000870:	01212823          	sw	s2,16(sp)
 7000874:	01312623          	sw	s3,12(sp)
 7000878:	00400713          	li	a4,4
 700087c:	00068913          	mv	s2,a3
 7000880:	00058413          	mv	s0,a1
 7000884:	00050493          	mv	s1,a0
 7000888:	00c76463          	bltu	a4,a2,7000890 <__rg_realloc+0x30>
 700088c:	00400613          	li	a2,4
 7000890:	00165513          	srl	a0,a2,0x1
 7000894:	555555b7          	lui	a1,0x55555
 7000898:	55558593          	add	a1,a1,1365 # 55555555 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x4e54cf5e>
 700089c:	00b57533          	and	a0,a0,a1
 70008a0:	40a60533          	sub	a0,a2,a0
 70008a4:	333335b7          	lui	a1,0x33333
 70008a8:	33358593          	add	a1,a1,819 # 33333333 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x2c32ad3c>
 70008ac:	00b576b3          	and	a3,a0,a1
 70008b0:	00255513          	srl	a0,a0,0x2
 70008b4:	00b57533          	and	a0,a0,a1
 70008b8:	00a68533          	add	a0,a3,a0
 70008bc:	00455593          	srl	a1,a0,0x4
 70008c0:	00b50533          	add	a0,a0,a1
 70008c4:	0f0f15b7          	lui	a1,0xf0f1
 70008c8:	f0f58593          	add	a1,a1,-241 # f0f0f0f <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x80e8918>
 70008cc:	00b57533          	and	a0,a0,a1
 70008d0:	010105b7          	lui	a1,0x1010
 70008d4:	10158593          	add	a1,a1,257 # 1010101 <__stack_init$+0x810105>
 70008d8:	02b50533          	mul	a0,a0,a1
 70008dc:	01855513          	srl	a0,a0,0x18
 70008e0:	fff50593          	add	a1,a0,-1
 70008e4:	00b035b3          	snez	a1,a1
 70008e8:	800006b7          	lui	a3,0x80000
 70008ec:	40c686b3          	sub	a3,a3,a2
 70008f0:	0126b6b3          	sltu	a3,a3,s2
 70008f4:	00d5e5b3          	or	a1,a1,a3
 70008f8:	06059863          	bnez	a1,7000968 <__rg_realloc+0x108>
 70008fc:	00100593          	li	a1,1
 7000900:	00b50463          	beq	a0,a1,7000908 <__rg_realloc+0xa8>
 7000904:	00000613          	li	a2,0
 7000908:	00c90533          	add	a0,s2,a2
 700090c:	fff50513          	add	a0,a0,-1
 7000910:	40c005b3          	neg	a1,a2
 7000914:	00b57533          	and	a0,a0,a1
 7000918:	00255513          	srl	a0,a0,0x2
 700091c:	00001097          	auipc	ra,0x1
 7000920:	124080e7          	jalr	292(ra) # 7001a40 <sys_alloc_words>
 7000924:	00050993          	mv	s3,a0
 7000928:	02050063          	beqz	a0,7000948 <__rg_realloc+0xe8>
 700092c:	01246463          	bltu	s0,s2,7000934 <__rg_realloc+0xd4>
 7000930:	00090413          	mv	s0,s2
 7000934:	00098513          	mv	a0,s3
 7000938:	00048593          	mv	a1,s1
 700093c:	00040613          	mv	a2,s0
 7000940:	00000097          	auipc	ra,0x0
 7000944:	5ec080e7          	jalr	1516(ra) # 7000f2c <memcpy>
 7000948:	00098513          	mv	a0,s3
 700094c:	01c12083          	lw	ra,28(sp)
 7000950:	01812403          	lw	s0,24(sp)
 7000954:	01412483          	lw	s1,20(sp)
 7000958:	01012903          	lw	s2,16(sp)
 700095c:	00c12983          	lw	s3,12(sp)
 7000960:	02010113          	add	sp,sp,32
 7000964:	00008067          	ret
 7000968:	07007537          	lui	a0,0x7007
 700096c:	f6150513          	add	a0,a0,-159 # 7006f61 <.Lanon.168859b36f162421e63795dd2ae12a88.6>
 7000970:	070075b7          	lui	a1,0x7007
 7000974:	f8858693          	add	a3,a1,-120 # 7006f88 <.Lanon.168859b36f162421e63795dd2ae12a88.7>
 7000978:	070075b7          	lui	a1,0x7007
 700097c:	fd458713          	add	a4,a1,-44 # 7006fd4 <.Lanon.168859b36f162421e63795dd2ae12a88.9>
 7000980:	02700593          	li	a1,39
 7000984:	00810613          	add	a2,sp,8
 7000988:	00006097          	auipc	ra,0x6
 700098c:	238080e7          	jalr	568(ra) # 7006bc0 <_ZN4core6result13unwrap_failed17hf6bc9b148a5ba21eE>
 7000990:	c0001073          	unimp

07000994 <_ZN10risc0_zkvm5guest3sha15copy_and_update17heb0ab7bc2bc5a02dE>:
 7000994:	fb010113          	add	sp,sp,-80
 7000998:	04112623          	sw	ra,76(sp)
 700099c:	04812423          	sw	s0,72(sp)
 70009a0:	04912223          	sw	s1,68(sp)
 70009a4:	05212023          	sw	s2,64(sp)
 70009a8:	03312e23          	sw	s3,60(sp)
 70009ac:	03412c23          	sw	s4,56(sp)
 70009b0:	03512a23          	sw	s5,52(sp)
 70009b4:	03612823          	sw	s6,48(sp)
 70009b8:	03712623          	sw	s7,44(sp)
 70009bc:	03812423          	sw	s8,40(sp)
 70009c0:	03912223          	sw	s9,36(sp)
 70009c4:	00078913          	mv	s2,a5
 70009c8:	00070b13          	mv	s6,a4
 70009cc:	00068a93          	mv	s5,a3
 70009d0:	00060b93          	mv	s7,a2
 70009d4:	00058493          	mv	s1,a1
 70009d8:	00050413          	mv	s0,a0
 70009dc:	04070663          	beqz	a4,7000a28 <_ZN10risc0_zkvm5guest3sha15copy_and_update17heb0ab7bc2bc5a02dE+0x94>
 70009e0:	03fa8513          	add	a0,s5,63
 70009e4:	00255513          	srl	a0,a0,0x2
 70009e8:	ff057c93          	and	s9,a0,-16
 70009ec:	040c8863          	beqz	s9,7000a3c <_ZN10risc0_zkvm5guest3sha15copy_and_update17heb0ab7bc2bc5a02dE+0xa8>
 70009f0:	01dcd513          	srl	a0,s9,0x1d
 70009f4:	1e051663          	bnez	a0,7000be0 <_ZN10risc0_zkvm5guest3sha15copy_and_update17heb0ab7bc2bc5a02dE+0x24c>
 70009f8:	002c9993          	sll	s3,s9,0x2
 70009fc:	1e09c263          	bltz	s3,7000be0 <_ZN10risc0_zkvm5guest3sha15copy_and_update17heb0ab7bc2bc5a02dE+0x24c>
 7000a00:	00153513          	seqz	a0,a0
 7000a04:	00251c13          	sll	s8,a0,0x2
 7000a08:	04098063          	beqz	s3,7000a48 <_ZN10risc0_zkvm5guest3sha15copy_and_update17heb0ab7bc2bc5a02dE+0xb4>
 7000a0c:	00098513          	mv	a0,s3
 7000a10:	000c0593          	mv	a1,s8
 7000a14:	00000097          	auipc	ra,0x0
 7000a18:	c10080e7          	jalr	-1008(ra) # 7000624 <__rust_alloc>
 7000a1c:	00050a13          	mv	s4,a0
 7000a20:	020a1863          	bnez	s4,7000a50 <_ZN10risc0_zkvm5guest3sha15copy_and_update17heb0ab7bc2bc5a02dE+0xbc>
 7000a24:	1e80006f          	j	7000c0c <_ZN10risc0_zkvm5guest3sha15copy_and_update17heb0ab7bc2bc5a02dE+0x278>
 7000a28:	004a8513          	add	a0,s5,4
 7000a2c:	00255513          	srl	a0,a0,0x2
 7000a30:	01150513          	add	a0,a0,17
 7000a34:	ff057c93          	and	s9,a0,-16
 7000a38:	fa0c9ce3          	bnez	s9,70009f0 <_ZN10risc0_zkvm5guest3sha15copy_and_update17heb0ab7bc2bc5a02dE+0x5c>
 7000a3c:	00000993          	li	s3,0
 7000a40:	00400a13          	li	s4,4
 7000a44:	00c0006f          	j	7000a50 <_ZN10risc0_zkvm5guest3sha15copy_and_update17heb0ab7bc2bc5a02dE+0xbc>
 7000a48:	000c0a13          	mv	s4,s8
 7000a4c:	1c0a0063          	beqz	s4,7000c0c <_ZN10risc0_zkvm5guest3sha15copy_and_update17heb0ab7bc2bc5a02dE+0x278>
 7000a50:	1959ee63          	bltu	s3,s5,7000bec <_ZN10risc0_zkvm5guest3sha15copy_and_update17heb0ab7bc2bc5a02dE+0x258>
 7000a54:	000a0513          	mv	a0,s4
 7000a58:	000b8593          	mv	a1,s7
 7000a5c:	000a8613          	mv	a2,s5
 7000a60:	00000097          	auipc	ra,0x0
 7000a64:	4cc080e7          	jalr	1228(ra) # 7000f2c <memcpy>
 7000a68:	015a0533          	add	a0,s4,s5
 7000a6c:	080b0863          	beqz	s6,7000afc <_ZN10risc0_zkvm5guest3sha15copy_and_update17heb0ab7bc2bc5a02dE+0x168>
 7000a70:	41598633          	sub	a2,s3,s5
 7000a74:	00000593          	li	a1,0
 7000a78:	00000097          	auipc	ra,0x0
 7000a7c:	3bc080e7          	jalr	956(ra) # 7000e34 <memset>
 7000a80:	0e0c9463          	bnez	s9,7000b68 <_ZN10risc0_zkvm5guest3sha15copy_and_update17heb0ab7bc2bc5a02dE+0x1d4>
 7000a84:	04848263          	beq	s1,s0,7000ac8 <_ZN10risc0_zkvm5guest3sha15copy_and_update17heb0ab7bc2bc5a02dE+0x134>
 7000a88:	0004a503          	lw	a0,0(s1)
 7000a8c:	0044a583          	lw	a1,4(s1)
 7000a90:	0084a603          	lw	a2,8(s1)
 7000a94:	00c4a683          	lw	a3,12(s1)
 7000a98:	01c4a703          	lw	a4,28(s1)
 7000a9c:	0184a783          	lw	a5,24(s1)
 7000aa0:	0144a803          	lw	a6,20(s1)
 7000aa4:	0104a883          	lw	a7,16(s1)
 7000aa8:	00e42e23          	sw	a4,28(s0)
 7000aac:	00f42c23          	sw	a5,24(s0)
 7000ab0:	01042a23          	sw	a6,20(s0)
 7000ab4:	01142823          	sw	a7,16(s0)
 7000ab8:	00d42623          	sw	a3,12(s0)
 7000abc:	00c42423          	sw	a2,8(s0)
 7000ac0:	00b42223          	sw	a1,4(s0)
 7000ac4:	00a42023          	sw	a0,0(s0)
 7000ac8:	04c12083          	lw	ra,76(sp)
 7000acc:	04812403          	lw	s0,72(sp)
 7000ad0:	04412483          	lw	s1,68(sp)
 7000ad4:	04012903          	lw	s2,64(sp)
 7000ad8:	03c12983          	lw	s3,60(sp)
 7000adc:	03812a03          	lw	s4,56(sp)
 7000ae0:	03412a83          	lw	s5,52(sp)
 7000ae4:	03012b03          	lw	s6,48(sp)
 7000ae8:	02c12b83          	lw	s7,44(sp)
 7000aec:	02812c03          	lw	s8,40(sp)
 7000af0:	02412c83          	lw	s9,36(sp)
 7000af4:	05010113          	add	sp,sp,80
 7000af8:	00008067          	ret
 7000afc:	08000593          	li	a1,128
 7000b00:	00b50023          	sb	a1,0(a0)
 7000b04:	00150513          	add	a0,a0,1
 7000b08:	fffac593          	not	a1,s5
 7000b0c:	00b98633          	add	a2,s3,a1
 7000b10:	00000593          	li	a1,0
 7000b14:	00000097          	auipc	ra,0x0
 7000b18:	320080e7          	jalr	800(ra) # 7000e34 <memset>
 7000b1c:	fffc8513          	add	a0,s9,-1
 7000b20:	0a0c8463          	beqz	s9,7000bc8 <_ZN10risc0_zkvm5guest3sha15copy_and_update17heb0ab7bc2bc5a02dE+0x234>
 7000b24:	00251513          	sll	a0,a0,0x2
 7000b28:	00aa05b3          	add	a1,s4,a0
 7000b2c:	0005a503          	lw	a0,0(a1)
 7000b30:	0e051863          	bnez	a0,7000c20 <_ZN10risc0_zkvm5guest3sha15copy_and_update17heb0ab7bc2bc5a02dE+0x28c>
 7000b34:	00895513          	srl	a0,s2,0x8
 7000b38:	00010637          	lui	a2,0x10
 7000b3c:	f0060613          	add	a2,a2,-256 # ff00 <__bss_size+0xfe78>
 7000b40:	00c57533          	and	a0,a0,a2
 7000b44:	01895613          	srl	a2,s2,0x18
 7000b48:	00c56533          	or	a0,a0,a2
 7000b4c:	00891613          	sll	a2,s2,0x8
 7000b50:	00ff06b7          	lui	a3,0xff0
 7000b54:	00d67633          	and	a2,a2,a3
 7000b58:	01891693          	sll	a3,s2,0x18
 7000b5c:	00c6e633          	or	a2,a3,a2
 7000b60:	00a66533          	or	a0,a2,a0
 7000b64:	00a5a023          	sw	a0,0(a1)
 7000b68:	004cd713          	srl	a4,s9,0x4
 7000b6c:	020a0693          	add	a3,s4,32
 7000b70:	00300293          	li	t0,3
 7000b74:	00040513          	mv	a0,s0
 7000b78:	00048593          	mv	a1,s1
 7000b7c:	000a0613          	mv	a2,s4
 7000b80:	00000073          	ecall
 7000b84:	00400613          	li	a2,4
 7000b88:	000a0513          	mv	a0,s4
 7000b8c:	00098593          	mv	a1,s3
 7000b90:	04c12083          	lw	ra,76(sp)
 7000b94:	04812403          	lw	s0,72(sp)
 7000b98:	04412483          	lw	s1,68(sp)
 7000b9c:	04012903          	lw	s2,64(sp)
 7000ba0:	03c12983          	lw	s3,60(sp)
 7000ba4:	03812a03          	lw	s4,56(sp)
 7000ba8:	03412a83          	lw	s5,52(sp)
 7000bac:	03012b03          	lw	s6,48(sp)
 7000bb0:	02c12b83          	lw	s7,44(sp)
 7000bb4:	02812c03          	lw	s8,40(sp)
 7000bb8:	02412c83          	lw	s9,36(sp)
 7000bbc:	05010113          	add	sp,sp,80
 7000bc0:	00000317          	auipc	t1,0x0
 7000bc4:	a6c30067          	jr	-1428(t1) # 700062c <__rust_dealloc>
 7000bc8:	070075b7          	lui	a1,0x7007
 7000bcc:	06058613          	add	a2,a1,96 # 7007060 <.Lanon.80577616105d4affeb49518242f7e98e.4>
 7000bd0:	00000593          	li	a1,0
 7000bd4:	00006097          	auipc	ra,0x6
 7000bd8:	e14080e7          	jalr	-492(ra) # 70069e8 <_ZN4core9panicking18panic_bounds_check17hd6f9d989a7703a3eE>
 7000bdc:	c0001073          	unimp
 7000be0:	00004097          	auipc	ra,0x4
 7000be4:	738080e7          	jalr	1848(ra) # 7005318 <_ZN5alloc7raw_vec17capacity_overflow17h59e3baefeac9f928E>
 7000be8:	c0001073          	unimp
 7000bec:	07007537          	lui	a0,0x7007
 7000bf0:	01c50513          	add	a0,a0,28 # 700701c <.Lanon.80577616105d4affeb49518242f7e98e.2>
 7000bf4:	070075b7          	lui	a1,0x7007
 7000bf8:	05058613          	add	a2,a1,80 # 7007050 <.Lanon.80577616105d4affeb49518242f7e98e.3>
 7000bfc:	03300593          	li	a1,51
 7000c00:	00006097          	auipc	ra,0x6
 7000c04:	da4080e7          	jalr	-604(ra) # 70069a4 <_ZN4core9panicking5panic17h5d0c0b97b225c667E>
 7000c08:	c0001073          	unimp
 7000c0c:	00098513          	mv	a0,s3
 7000c10:	000c0593          	mv	a1,s8
 7000c14:	00004097          	auipc	ra,0x4
 7000c18:	748080e7          	jalr	1864(ra) # 700535c <_ZN5alloc5alloc18handle_alloc_error17hf138f09b4614ca73E>
 7000c1c:	c0001073          	unimp
 7000c20:	00012423          	sw	zero,8(sp)
 7000c24:	07007537          	lui	a0,0x7007
 7000c28:	07450613          	add	a2,a0,116 # 7007074 <anon.1375604a764ae3db9d6e47da8ae90e8a.11.llvm.679149048231815736+0x4>
 7000c2c:	07007537          	lui	a0,0x7007
 7000c30:	07850713          	add	a4,a0,120 # 7007078 <.Lanon.80577616105d4affeb49518242f7e98e.6>
 7000c34:	00810693          	add	a3,sp,8
 7000c38:	00000513          	li	a0,0
 7000c3c:	00000097          	auipc	ra,0x0
 7000c40:	164080e7          	jalr	356(ra) # 7000da0 <_ZN4core9panicking13assert_failed17h687d8610d3bac58dE>
 7000c44:	c0001073          	unimp

07000c48 <_ZN83_$LT$risc0_zkvm..guest..sha..Impl$u20$as$u20$risc0_zkp..core..hash..sha..Sha256$GT$10hash_bytes17h36140a96bf7ce2e5E>:
 7000c48:	ff010113          	add	sp,sp,-16
 7000c4c:	00112623          	sw	ra,12(sp)
 7000c50:	00812423          	sw	s0,8(sp)
 7000c54:	00912223          	sw	s1,4(sp)
 7000c58:	01212023          	sw	s2,0(sp)
 7000c5c:	00058493          	mv	s1,a1
 7000c60:	00050913          	mv	s2,a0
 7000c64:	04000513          	li	a0,64
 7000c68:	00400593          	li	a1,4
 7000c6c:	00000097          	auipc	ra,0x0
 7000c70:	9b8080e7          	jalr	-1608(ra) # 7000624 <__rust_alloc>
 7000c74:	00050413          	mv	s0,a0
 7000c78:	00390513          	add	a0,s2,3
 7000c7c:	ffc57593          	and	a1,a0,-4
 7000c80:	41258533          	sub	a0,a1,s2
 7000c84:	00349793          	sll	a5,s1,0x3
 7000c88:	02a4f063          	bgeu	s1,a0,7000ca8 <_ZN83_$LT$risc0_zkvm..guest..sha..Impl$u20$as$u20$risc0_zkp..core..hash..sha..Sha256$GT$10hash_bytes17h36140a96bf7ce2e5E+0x60>
 7000c8c:	04049463          	bnez	s1,7000cd4 <_ZN83_$LT$risc0_zkvm..guest..sha..Impl$u20$as$u20$risc0_zkp..core..hash..sha..Sha256$GT$10hash_bytes17h36140a96bf7ce2e5E+0x8c>
 7000c90:	00000813          	li	a6,0
 7000c94:	07007537          	lui	a0,0x7007
 7000c98:	21050593          	add	a1,a0,528 # 7007210 <_ZN9risc0_zkp4core4hash3sha11SHA256_INIT17h62e1cd879e97d403E>
 7000c9c:	07007537          	lui	a0,0x7007
 7000ca0:	09850893          	add	a7,a0,152 # 7007098 <.Lanon.2e428254a4f422f96131b722f5510c98.1>
 7000ca4:	0640006f          	j	7000d08 <_ZN83_$LT$risc0_zkvm..guest..sha..Impl$u20$as$u20$risc0_zkp..core..hash..sha..Sha256$GT$10hash_bytes17h36140a96bf7ce2e5E+0xc0>
 7000ca8:	03259663          	bne	a1,s2,7000cd4 <_ZN83_$LT$risc0_zkvm..guest..sha..Impl$u20$as$u20$risc0_zkp..core..hash..sha..Sha256$GT$10hash_bytes17h36140a96bf7ce2e5E+0x8c>
 7000cac:	00a90633          	add	a2,s2,a0
 7000cb0:	40a48533          	sub	a0,s1,a0
 7000cb4:	03f57813          	and	a6,a0,63
 7000cb8:	fc057593          	and	a1,a0,-64
 7000cbc:	00b608b3          	add	a7,a2,a1
 7000cc0:	03f00693          	li	a3,63
 7000cc4:	070075b7          	lui	a1,0x7007
 7000cc8:	02a6e263          	bltu	a3,a0,7000cec <_ZN83_$LT$risc0_zkvm..guest..sha..Impl$u20$as$u20$risc0_zkp..core..hash..sha..Sha256$GT$10hash_bytes17h36140a96bf7ce2e5E+0xa4>
 7000ccc:	21058593          	add	a1,a1,528 # 7007210 <_ZN9risc0_zkp4core4hash3sha11SHA256_INIT17h62e1cd879e97d403E>
 7000cd0:	0380006f          	j	7000d08 <_ZN83_$LT$risc0_zkvm..guest..sha..Impl$u20$as$u20$risc0_zkp..core..hash..sha..Sha256$GT$10hash_bytes17h36140a96bf7ce2e5E+0xc0>
 7000cd4:	07007537          	lui	a0,0x7007
 7000cd8:	21050593          	add	a1,a0,528 # 7007210 <_ZN9risc0_zkp4core4hash3sha11SHA256_INIT17h62e1cd879e97d403E>
 7000cdc:	00040513          	mv	a0,s0
 7000ce0:	00090613          	mv	a2,s2
 7000ce4:	00048693          	mv	a3,s1
 7000ce8:	02c0006f          	j	7000d14 <_ZN83_$LT$risc0_zkvm..guest..sha..Impl$u20$as$u20$risc0_zkp..core..hash..sha..Sha256$GT$10hash_bytes17h36140a96bf7ce2e5E+0xcc>
 7000cec:	00655713          	srl	a4,a0,0x6
 7000cf0:	02060693          	add	a3,a2,32
 7000cf4:	21058593          	add	a1,a1,528
 7000cf8:	00300293          	li	t0,3
 7000cfc:	00040513          	mv	a0,s0
 7000d00:	00000073          	ecall
 7000d04:	00040593          	mv	a1,s0
 7000d08:	00040513          	mv	a0,s0
 7000d0c:	00088613          	mv	a2,a7
 7000d10:	00080693          	mv	a3,a6
 7000d14:	00000713          	li	a4,0
 7000d18:	00000097          	auipc	ra,0x0
 7000d1c:	c7c080e7          	jalr	-900(ra) # 7000994 <_ZN10risc0_zkvm5guest3sha15copy_and_update17heb0ab7bc2bc5a02dE>
 7000d20:	00040513          	mv	a0,s0
 7000d24:	00c12083          	lw	ra,12(sp)
 7000d28:	00812403          	lw	s0,8(sp)
 7000d2c:	00412483          	lw	s1,4(sp)
 7000d30:	00012903          	lw	s2,0(sp)
 7000d34:	01010113          	add	sp,sp,16
 7000d38:	00008067          	ret

07000d3c <_ZN83_$LT$risc0_zkvm..guest..sha..Impl$u20$as$u20$risc0_zkp..core..hash..sha..Sha256$GT$14compress_slice17hbbce71a927f87c81E>:
 7000d3c:	ff010113          	add	sp,sp,-16
 7000d40:	00112623          	sw	ra,12(sp)
 7000d44:	00812423          	sw	s0,8(sp)
 7000d48:	00912223          	sw	s1,4(sp)
 7000d4c:	01212023          	sw	s2,0(sp)
 7000d50:	00060413          	mv	s0,a2
 7000d54:	00058493          	mv	s1,a1
 7000d58:	00050913          	mv	s2,a0
 7000d5c:	04000513          	li	a0,64
 7000d60:	00400593          	li	a1,4
 7000d64:	00000097          	auipc	ra,0x0
 7000d68:	8c0080e7          	jalr	-1856(ra) # 7000624 <__rust_alloc>
 7000d6c:	02048693          	add	a3,s1,32
 7000d70:	00300293          	li	t0,3
 7000d74:	00090593          	mv	a1,s2
 7000d78:	00048613          	mv	a2,s1
 7000d7c:	00040713          	mv	a4,s0
 7000d80:	00000073          	ecall
 7000d84:	00c12083          	lw	ra,12(sp)
 7000d88:	00812403          	lw	s0,8(sp)
 7000d8c:	00412483          	lw	s1,4(sp)
 7000d90:	00012903          	lw	s2,0(sp)
 7000d94:	01010113          	add	sp,sp,16
 7000d98:	00008067          	ret

07000d9c <_ZN4core3ptr28drop_in_place$LT$$RF$u32$GT$17h1062ad55ea5f99d8E.llvm.16866018416088645210>:
 7000d9c:	00008067          	ret

07000da0 <_ZN4core9panicking13assert_failed17h687d8610d3bac58dE>:
 7000da0:	fe010113          	add	sp,sp,-32
 7000da4:	00070813          	mv	a6,a4
 7000da8:	0146a703          	lw	a4,20(a3) # ff0014 <__stack_init$+0x7f0018>
 7000dac:	0106a783          	lw	a5,16(a3)
 7000db0:	00b12023          	sw	a1,0(sp)
 7000db4:	00c12223          	sw	a2,4(sp)
 7000db8:	00e12e23          	sw	a4,28(sp)
 7000dbc:	00f12c23          	sw	a5,24(sp)
 7000dc0:	00c6a583          	lw	a1,12(a3)
 7000dc4:	0086a603          	lw	a2,8(a3)
 7000dc8:	0046a703          	lw	a4,4(a3)
 7000dcc:	0006a683          	lw	a3,0(a3)
 7000dd0:	00b12a23          	sw	a1,20(sp)
 7000dd4:	00c12823          	sw	a2,16(sp)
 7000dd8:	00e12623          	sw	a4,12(sp)
 7000ddc:	00d12423          	sw	a3,8(sp)
 7000de0:	070075b7          	lui	a1,0x7007
 7000de4:	08858613          	add	a2,a1,136 # 7007088 <anon.5feb350ac14d271e27b53533b92778e4.3.llvm.16866018416088645210>
 7000de8:	00010593          	mv	a1,sp
 7000dec:	00410693          	add	a3,sp,4
 7000df0:	00810793          	add	a5,sp,8
 7000df4:	00060713          	mv	a4,a2
 7000df8:	00006097          	auipc	ra,0x6
 7000dfc:	c54080e7          	jalr	-940(ra) # 7006a4c <_ZN4core9panicking19assert_failed_inner17he0576c9d7ff9f73bE>
 7000e00:	c0001073          	unimp

07000e04 <_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h9921693fe10a61f1E>:
 7000e04:	00058793          	mv	a5,a1
 7000e08:	00d59a63          	bne	a1,a3,7000e1c <_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h9921693fe10a61f1E+0x18>
 7000e0c:	00060593          	mv	a1,a2
 7000e10:	00078613          	mv	a2,a5
 7000e14:	00000317          	auipc	t1,0x0
 7000e18:	11830067          	jr	280(t1) # 7000f2c <memcpy>
 7000e1c:	00078513          	mv	a0,a5
 7000e20:	00068593          	mv	a1,a3
 7000e24:	00070613          	mv	a2,a4
 7000e28:	00004097          	auipc	ra,0x4
 7000e2c:	6b8080e7          	jalr	1720(ra) # 70054e0 <_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17haa866e184ec9b31cE>
 7000e30:	c0001073          	unimp

07000e34 <memset>:
 7000e34:	0e060a63          	beqz	a2,7000f28 <memset+0xf4>
 7000e38:	00b50023          	sb	a1,0(a0)
 7000e3c:	00a606b3          	add	a3,a2,a0
 7000e40:	00300713          	li	a4,3
 7000e44:	feb68fa3          	sb	a1,-1(a3)
 7000e48:	0ee66063          	bltu	a2,a4,7000f28 <memset+0xf4>
 7000e4c:	00b500a3          	sb	a1,1(a0)
 7000e50:	00b50123          	sb	a1,2(a0)
 7000e54:	feb68f23          	sb	a1,-2(a3)
 7000e58:	00700713          	li	a4,7
 7000e5c:	feb68ea3          	sb	a1,-3(a3)
 7000e60:	0ce66463          	bltu	a2,a4,7000f28 <memset+0xf4>
 7000e64:	00b501a3          	sb	a1,3(a0)
 7000e68:	00900793          	li	a5,9
 7000e6c:	feb68e23          	sb	a1,-4(a3)
 7000e70:	0af66c63          	bltu	a2,a5,7000f28 <memset+0xf4>
 7000e74:	40a006b3          	neg	a3,a0
 7000e78:	0036f713          	and	a4,a3,3
 7000e7c:	00e506b3          	add	a3,a0,a4
 7000e80:	40e60633          	sub	a2,a2,a4
 7000e84:	ffc67613          	and	a2,a2,-4
 7000e88:	0ff5f593          	zext.b	a1,a1
 7000e8c:	01010737          	lui	a4,0x1010
 7000e90:	10170713          	add	a4,a4,257 # 1010101 <__stack_init$+0x810105>
 7000e94:	02e585b3          	mul	a1,a1,a4
 7000e98:	00b6a023          	sw	a1,0(a3)
 7000e9c:	00c68733          	add	a4,a3,a2
 7000ea0:	feb72e23          	sw	a1,-4(a4)
 7000ea4:	08f66263          	bltu	a2,a5,7000f28 <memset+0xf4>
 7000ea8:	00b6a223          	sw	a1,4(a3)
 7000eac:	00b6a423          	sw	a1,8(a3)
 7000eb0:	feb72a23          	sw	a1,-12(a4)
 7000eb4:	01900793          	li	a5,25
 7000eb8:	feb72c23          	sw	a1,-8(a4)
 7000ebc:	06f66663          	bltu	a2,a5,7000f28 <memset+0xf4>
 7000ec0:	00b6a623          	sw	a1,12(a3)
 7000ec4:	00b6a823          	sw	a1,16(a3)
 7000ec8:	00b6aa23          	sw	a1,20(a3)
 7000ecc:	00b6ac23          	sw	a1,24(a3)
 7000ed0:	feb72223          	sw	a1,-28(a4)
 7000ed4:	feb72423          	sw	a1,-24(a4)
 7000ed8:	feb72623          	sw	a1,-20(a4)
 7000edc:	0046f793          	and	a5,a3,4
 7000ee0:	0187e793          	or	a5,a5,24
 7000ee4:	40f60633          	sub	a2,a2,a5
 7000ee8:	02000813          	li	a6,32
 7000eec:	feb72823          	sw	a1,-16(a4)
 7000ef0:	03066c63          	bltu	a2,a6,7000f28 <memset+0xf4>
 7000ef4:	00f686b3          	add	a3,a3,a5
 7000ef8:	01f00713          	li	a4,31
 7000efc:	00b6a023          	sw	a1,0(a3)
 7000f00:	00b6a223          	sw	a1,4(a3)
 7000f04:	00b6a423          	sw	a1,8(a3)
 7000f08:	00b6a623          	sw	a1,12(a3)
 7000f0c:	00b6a823          	sw	a1,16(a3)
 7000f10:	00b6aa23          	sw	a1,20(a3)
 7000f14:	00b6ac23          	sw	a1,24(a3)
 7000f18:	00b6ae23          	sw	a1,28(a3)
 7000f1c:	fe060613          	add	a2,a2,-32
 7000f20:	02068693          	add	a3,a3,32
 7000f24:	fcc76ce3          	bltu	a4,a2,7000efc <memset+0xc8>
 7000f28:	00008067          	ret

07000f2c <memcpy>:
 7000f2c:	0035f693          	and	a3,a1,3
 7000f30:	0016b693          	seqz	a3,a3
 7000f34:	00163713          	seqz	a4,a2
 7000f38:	00e6e6b3          	or	a3,a3,a4
 7000f3c:	0e069c63          	bnez	a3,7001034 <memcpy+0x108>
 7000f40:	00158793          	add	a5,a1,1
 7000f44:	00050813          	mv	a6,a0
 7000f48:	00058883          	lb	a7,0(a1)
 7000f4c:	00158713          	add	a4,a1,1
 7000f50:	00180693          	add	a3,a6,1
 7000f54:	01180023          	sb	a7,0(a6)
 7000f58:	fff60613          	add	a2,a2,-1
 7000f5c:	0037f593          	and	a1,a5,3
 7000f60:	00b035b3          	snez	a1,a1
 7000f64:	00c03833          	snez	a6,a2
 7000f68:	0105f8b3          	and	a7,a1,a6
 7000f6c:	00178793          	add	a5,a5,1
 7000f70:	00070593          	mv	a1,a4
 7000f74:	00068813          	mv	a6,a3
 7000f78:	fc0898e3          	bnez	a7,7000f48 <memcpy+0x1c>
 7000f7c:	0036f593          	and	a1,a3,3
 7000f80:	0c058263          	beqz	a1,7001044 <memcpy+0x118>
 7000f84:	02000793          	li	a5,32
 7000f88:	22f66e63          	bltu	a2,a5,70011c4 <memcpy+0x298>
 7000f8c:	00300793          	li	a5,3
 7000f90:	12f58663          	beq	a1,a5,70010bc <memcpy+0x190>
 7000f94:	00200793          	li	a5,2
 7000f98:	1af58263          	beq	a1,a5,700113c <memcpy+0x210>
 7000f9c:	00100793          	li	a5,1
 7000fa0:	22f59263          	bne	a1,a5,70011c4 <memcpy+0x298>
 7000fa4:	00072783          	lw	a5,0(a4)
 7000fa8:	00f68023          	sb	a5,0(a3)
 7000fac:	0087d593          	srl	a1,a5,0x8
 7000fb0:	00b680a3          	sb	a1,1(a3)
 7000fb4:	0107d813          	srl	a6,a5,0x10
 7000fb8:	00368593          	add	a1,a3,3
 7000fbc:	01068123          	sb	a6,2(a3)
 7000fc0:	ffd60613          	add	a2,a2,-3
 7000fc4:	01070693          	add	a3,a4,16
 7000fc8:	01000713          	li	a4,16
 7000fcc:	ff46a803          	lw	a6,-12(a3)
 7000fd0:	0187d793          	srl	a5,a5,0x18
 7000fd4:	00881893          	sll	a7,a6,0x8
 7000fd8:	ff86a283          	lw	t0,-8(a3)
 7000fdc:	00f8e7b3          	or	a5,a7,a5
 7000fe0:	00f5a023          	sw	a5,0(a1)
 7000fe4:	01885793          	srl	a5,a6,0x18
 7000fe8:	00829813          	sll	a6,t0,0x8
 7000fec:	ffc6a883          	lw	a7,-4(a3)
 7000ff0:	00f867b3          	or	a5,a6,a5
 7000ff4:	00f5a223          	sw	a5,4(a1)
 7000ff8:	0182d813          	srl	a6,t0,0x18
 7000ffc:	00889293          	sll	t0,a7,0x8
 7001000:	0006a783          	lw	a5,0(a3)
 7001004:	0102e833          	or	a6,t0,a6
 7001008:	0105a423          	sw	a6,8(a1)
 700100c:	0188d813          	srl	a6,a7,0x18
 7001010:	00879893          	sll	a7,a5,0x8
 7001014:	0108e833          	or	a6,a7,a6
 7001018:	0105a623          	sw	a6,12(a1)
 700101c:	01058593          	add	a1,a1,16
 7001020:	ff060613          	add	a2,a2,-16
 7001024:	01068693          	add	a3,a3,16
 7001028:	fac762e3          	bltu	a4,a2,7000fcc <memcpy+0xa0>
 700102c:	ff368713          	add	a4,a3,-13
 7001030:	1900006f          	j	70011c0 <memcpy+0x294>
 7001034:	00050693          	mv	a3,a0
 7001038:	00058713          	mv	a4,a1
 700103c:	0036f593          	and	a1,a3,3
 7001040:	f40592e3          	bnez	a1,7000f84 <memcpy+0x58>
 7001044:	01000593          	li	a1,16
 7001048:	02b66c63          	bltu	a2,a1,7001080 <memcpy+0x154>
 700104c:	00f00593          	li	a1,15
 7001050:	00072783          	lw	a5,0(a4)
 7001054:	00472803          	lw	a6,4(a4)
 7001058:	00872883          	lw	a7,8(a4)
 700105c:	00c72283          	lw	t0,12(a4)
 7001060:	00f6a023          	sw	a5,0(a3)
 7001064:	0106a223          	sw	a6,4(a3)
 7001068:	0116a423          	sw	a7,8(a3)
 700106c:	0056a623          	sw	t0,12(a3)
 7001070:	01070713          	add	a4,a4,16
 7001074:	ff060613          	add	a2,a2,-16
 7001078:	01068693          	add	a3,a3,16
 700107c:	fcc5eae3          	bltu	a1,a2,7001050 <memcpy+0x124>
 7001080:	00867593          	and	a1,a2,8
 7001084:	00058e63          	beqz	a1,70010a0 <memcpy+0x174>
 7001088:	00072583          	lw	a1,0(a4)
 700108c:	00472783          	lw	a5,4(a4)
 7001090:	00b6a023          	sw	a1,0(a3)
 7001094:	00f6a223          	sw	a5,4(a3)
 7001098:	00868693          	add	a3,a3,8
 700109c:	00870713          	add	a4,a4,8
 70010a0:	00467593          	and	a1,a2,4
 70010a4:	16058263          	beqz	a1,7001208 <memcpy+0x2dc>
 70010a8:	00072583          	lw	a1,0(a4)
 70010ac:	00b6a023          	sw	a1,0(a3)
 70010b0:	00468693          	add	a3,a3,4
 70010b4:	00470713          	add	a4,a4,4
 70010b8:	1500006f          	j	7001208 <memcpy+0x2dc>
 70010bc:	00072783          	lw	a5,0(a4)
 70010c0:	00168593          	add	a1,a3,1
 70010c4:	00f68023          	sb	a5,0(a3)
 70010c8:	fff60613          	add	a2,a2,-1
 70010cc:	01070693          	add	a3,a4,16
 70010d0:	01200713          	li	a4,18
 70010d4:	ff46a803          	lw	a6,-12(a3)
 70010d8:	0087d793          	srl	a5,a5,0x8
 70010dc:	01881893          	sll	a7,a6,0x18
 70010e0:	ff86a283          	lw	t0,-8(a3)
 70010e4:	00f8e7b3          	or	a5,a7,a5
 70010e8:	00f5a023          	sw	a5,0(a1)
 70010ec:	00885793          	srl	a5,a6,0x8
 70010f0:	01829813          	sll	a6,t0,0x18
 70010f4:	ffc6a883          	lw	a7,-4(a3)
 70010f8:	00f867b3          	or	a5,a6,a5
 70010fc:	00f5a223          	sw	a5,4(a1)
 7001100:	0082d813          	srl	a6,t0,0x8
 7001104:	01889293          	sll	t0,a7,0x18
 7001108:	0006a783          	lw	a5,0(a3)
 700110c:	0102e833          	or	a6,t0,a6
 7001110:	0105a423          	sw	a6,8(a1)
 7001114:	0088d813          	srl	a6,a7,0x8
 7001118:	01879893          	sll	a7,a5,0x18
 700111c:	0108e833          	or	a6,a7,a6
 7001120:	0105a623          	sw	a6,12(a1)
 7001124:	01058593          	add	a1,a1,16
 7001128:	ff060613          	add	a2,a2,-16
 700112c:	01068693          	add	a3,a3,16
 7001130:	fac762e3          	bltu	a4,a2,70010d4 <memcpy+0x1a8>
 7001134:	ff168713          	add	a4,a3,-15
 7001138:	0880006f          	j	70011c0 <memcpy+0x294>
 700113c:	00072783          	lw	a5,0(a4)
 7001140:	00f68023          	sb	a5,0(a3)
 7001144:	0087d813          	srl	a6,a5,0x8
 7001148:	00268593          	add	a1,a3,2
 700114c:	010680a3          	sb	a6,1(a3)
 7001150:	ffe60613          	add	a2,a2,-2
 7001154:	01070693          	add	a3,a4,16
 7001158:	01100713          	li	a4,17
 700115c:	ff46a803          	lw	a6,-12(a3)
 7001160:	0107d793          	srl	a5,a5,0x10
 7001164:	01081893          	sll	a7,a6,0x10
 7001168:	ff86a283          	lw	t0,-8(a3)
 700116c:	00f8e7b3          	or	a5,a7,a5
 7001170:	00f5a023          	sw	a5,0(a1)
 7001174:	01085793          	srl	a5,a6,0x10
 7001178:	01029813          	sll	a6,t0,0x10
 700117c:	ffc6a883          	lw	a7,-4(a3)
 7001180:	00f867b3          	or	a5,a6,a5
 7001184:	00f5a223          	sw	a5,4(a1)
 7001188:	0102d813          	srl	a6,t0,0x10
 700118c:	01089293          	sll	t0,a7,0x10
 7001190:	0006a783          	lw	a5,0(a3)
 7001194:	0102e833          	or	a6,t0,a6
 7001198:	0105a423          	sw	a6,8(a1)
 700119c:	0108d813          	srl	a6,a7,0x10
 70011a0:	01079893          	sll	a7,a5,0x10
 70011a4:	0108e833          	or	a6,a7,a6
 70011a8:	0105a623          	sw	a6,12(a1)
 70011ac:	01058593          	add	a1,a1,16
 70011b0:	ff060613          	add	a2,a2,-16
 70011b4:	01068693          	add	a3,a3,16
 70011b8:	fac762e3          	bltu	a4,a2,700115c <memcpy+0x230>
 70011bc:	ff268713          	add	a4,a3,-14
 70011c0:	00058693          	mv	a3,a1
 70011c4:	01067593          	and	a1,a2,16
 70011c8:	08059263          	bnez	a1,700124c <memcpy+0x320>
 70011cc:	00867593          	and	a1,a2,8
 70011d0:	10059863          	bnez	a1,70012e0 <memcpy+0x3b4>
 70011d4:	00467593          	and	a1,a2,4
 70011d8:	02058863          	beqz	a1,7001208 <memcpy+0x2dc>
 70011dc:	00070583          	lb	a1,0(a4)
 70011e0:	00170783          	lb	a5,1(a4)
 70011e4:	00270803          	lb	a6,2(a4)
 70011e8:	00b68023          	sb	a1,0(a3)
 70011ec:	00f680a3          	sb	a5,1(a3)
 70011f0:	00370583          	lb	a1,3(a4)
 70011f4:	01068123          	sb	a6,2(a3)
 70011f8:	00470713          	add	a4,a4,4
 70011fc:	00468793          	add	a5,a3,4
 7001200:	00b681a3          	sb	a1,3(a3)
 7001204:	00078693          	mv	a3,a5
 7001208:	00267593          	and	a1,a2,2
 700120c:	00059863          	bnez	a1,700121c <memcpy+0x2f0>
 7001210:	00167593          	and	a1,a2,1
 7001214:	02059663          	bnez	a1,7001240 <memcpy+0x314>
 7001218:	00008067          	ret
 700121c:	00070583          	lb	a1,0(a4)
 7001220:	00170783          	lb	a5,1(a4)
 7001224:	00b68023          	sb	a1,0(a3)
 7001228:	00270713          	add	a4,a4,2
 700122c:	00268593          	add	a1,a3,2
 7001230:	00f680a3          	sb	a5,1(a3)
 7001234:	00058693          	mv	a3,a1
 7001238:	00167593          	and	a1,a2,1
 700123c:	fc058ee3          	beqz	a1,7001218 <memcpy+0x2ec>
 7001240:	00070583          	lb	a1,0(a4)
 7001244:	00b68023          	sb	a1,0(a3)
 7001248:	00008067          	ret
 700124c:	00070583          	lb	a1,0(a4)
 7001250:	00170783          	lb	a5,1(a4)
 7001254:	00270803          	lb	a6,2(a4)
 7001258:	00b68023          	sb	a1,0(a3)
 700125c:	00f680a3          	sb	a5,1(a3)
 7001260:	00370583          	lb	a1,3(a4)
 7001264:	01068123          	sb	a6,2(a3)
 7001268:	00470783          	lb	a5,4(a4)
 700126c:	00570803          	lb	a6,5(a4)
 7001270:	00b681a3          	sb	a1,3(a3)
 7001274:	00670583          	lb	a1,6(a4)
 7001278:	00f68223          	sb	a5,4(a3)
 700127c:	010682a3          	sb	a6,5(a3)
 7001280:	00770783          	lb	a5,7(a4)
 7001284:	00b68323          	sb	a1,6(a3)
 7001288:	00870583          	lb	a1,8(a4)
 700128c:	00970803          	lb	a6,9(a4)
 7001290:	00f683a3          	sb	a5,7(a3)
 7001294:	00a70783          	lb	a5,10(a4)
 7001298:	00b68423          	sb	a1,8(a3)
 700129c:	010684a3          	sb	a6,9(a3)
 70012a0:	00b70583          	lb	a1,11(a4)
 70012a4:	00f68523          	sb	a5,10(a3)
 70012a8:	00c70783          	lb	a5,12(a4)
 70012ac:	00d70803          	lb	a6,13(a4)
 70012b0:	00b685a3          	sb	a1,11(a3)
 70012b4:	00e70583          	lb	a1,14(a4)
 70012b8:	00f68623          	sb	a5,12(a3)
 70012bc:	010686a3          	sb	a6,13(a3)
 70012c0:	00f70783          	lb	a5,15(a4)
 70012c4:	00b68723          	sb	a1,14(a3)
 70012c8:	01070713          	add	a4,a4,16
 70012cc:	01068593          	add	a1,a3,16
 70012d0:	00f687a3          	sb	a5,15(a3)
 70012d4:	00058693          	mv	a3,a1
 70012d8:	00867593          	and	a1,a2,8
 70012dc:	ee058ce3          	beqz	a1,70011d4 <memcpy+0x2a8>
 70012e0:	00070583          	lb	a1,0(a4)
 70012e4:	00170783          	lb	a5,1(a4)
 70012e8:	00270803          	lb	a6,2(a4)
 70012ec:	00b68023          	sb	a1,0(a3)
 70012f0:	00f680a3          	sb	a5,1(a3)
 70012f4:	00370583          	lb	a1,3(a4)
 70012f8:	01068123          	sb	a6,2(a3)
 70012fc:	00470783          	lb	a5,4(a4)
 7001300:	00570803          	lb	a6,5(a4)
 7001304:	00b681a3          	sb	a1,3(a3)
 7001308:	00670583          	lb	a1,6(a4)
 700130c:	00f68223          	sb	a5,4(a3)
 7001310:	010682a3          	sb	a6,5(a3)
 7001314:	00770783          	lb	a5,7(a4)
 7001318:	00b68323          	sb	a1,6(a3)
 700131c:	00870713          	add	a4,a4,8
 7001320:	00868593          	add	a1,a3,8
 7001324:	00f683a3          	sb	a5,7(a3)
 7001328:	00058693          	mv	a3,a1
 700132c:	00467593          	and	a1,a2,4
 7001330:	ea0596e3          	bnez	a1,70011dc <memcpy+0x2b0>
 7001334:	ed5ff06f          	j	7001208 <memcpy+0x2dc>

07001338 <_ZN10risc0_zkvm5guest3env8finalize17h4683497f8b82da0cE>:
 7001338:	ef010113          	add	sp,sp,-272
 700133c:	10112623          	sw	ra,268(sp)
 7001340:	10812423          	sw	s0,264(sp)
 7001344:	10912223          	sw	s1,260(sp)
 7001348:	11212023          	sw	s2,256(sp)
 700134c:	0f312e23          	sw	s3,252(sp)
 7001350:	0f412c23          	sw	s4,248(sp)
 7001354:	0f512a23          	sw	s5,244(sp)
 7001358:	00080537          	lui	a0,0x80
 700135c:	02052e23          	sw	zero,60(a0) # 8003c <_ZN10risc0_zkvm5guest3env6HASHER17h2b2409cc96672782E>
 7001360:	03c50513          	add	a0,a0,60
 7001364:	00450593          	add	a1,a0,4
 7001368:	00010513          	mv	a0,sp
 700136c:	04c00613          	li	a2,76
 7001370:	00000097          	auipc	ra,0x0
 7001374:	bbc080e7          	jalr	-1092(ra) # 7000f2c <memcpy>
 7001378:	00810493          	add	s1,sp,8
 700137c:	06012623          	sw	zero,108(sp)
 7001380:	06012423          	sw	zero,104(sp)
 7001384:	06012223          	sw	zero,100(sp)
 7001388:	06012023          	sw	zero,96(sp)
 700138c:	04012e23          	sw	zero,92(sp)
 7001390:	00412503          	lw	a0,4(sp)
 7001394:	04814403          	lbu	s0,72(sp)
 7001398:	04012c23          	sw	zero,88(sp)
 700139c:	04012a23          	sw	zero,84(sp)
 70013a0:	00951513          	sll	a0,a0,0x9
 70013a4:	00341593          	sll	a1,s0,0x3
 70013a8:	00b56533          	or	a0,a0,a1
 70013ac:	00855593          	srl	a1,a0,0x8
 70013b0:	00010637          	lui	a2,0x10
 70013b4:	f0060613          	add	a2,a2,-256 # ff00 <__bss_size+0xfe78>
 70013b8:	00c5f5b3          	and	a1,a1,a2
 70013bc:	01855613          	srl	a2,a0,0x18
 70013c0:	00c5e933          	or	s2,a1,a2
 70013c4:	00851513          	sll	a0,a0,0x8
 70013c8:	00ff05b7          	lui	a1,0xff0
 70013cc:	00b57533          	and	a0,a0,a1
 70013d0:	01b41593          	sll	a1,s0,0x1b
 70013d4:	00a5e9b3          	or	s3,a1,a0
 70013d8:	00848533          	add	a0,s1,s0
 70013dc:	08000593          	li	a1,128
 70013e0:	00b50023          	sb	a1,0(a0)
 70013e4:	03f00593          	li	a1,63
 70013e8:	04012823          	sw	zero,80(sp)
 70013ec:	00b40c63          	beq	s0,a1,7001404 <_ZN10risc0_zkvm5guest3env8finalize17h4683497f8b82da0cE+0xcc>
 70013f0:	03f44613          	xor	a2,s0,63
 70013f4:	00150513          	add	a0,a0,1
 70013f8:	00000593          	li	a1,0
 70013fc:	00000097          	auipc	ra,0x0
 7001400:	a38080e7          	jalr	-1480(ra) # 7000e34 <memset>
 7001404:	03847513          	and	a0,s0,56
 7001408:	03800593          	li	a1,56
 700140c:	0129eab3          	or	s5,s3,s2
 7001410:	12b51863          	bne	a0,a1,7001540 <_ZN10risc0_zkvm5guest3env8finalize17h4683497f8b82da0cE+0x208>
 7001414:	00012503          	lw	a0,0(sp)
 7001418:	070075b7          	lui	a1,0x7007
 700141c:	21058413          	add	s0,a1,528 # 7007210 <_ZN9risc0_zkp4core4hash3sha11SHA256_INIT17h62e1cd879e97d403E>
 7001420:	00040913          	mv	s2,s0
 7001424:	00050463          	beqz	a0,700142c <_ZN10risc0_zkvm5guest3env8finalize17h4683497f8b82da0cE+0xf4>
 7001428:	00050913          	mv	s2,a0
 700142c:	00048513          	mv	a0,s1
 7001430:	00000097          	auipc	ra,0x0
 7001434:	4b8080e7          	jalr	1208(ra) # 70018e8 <_ZN9risc0_zkp4core4hash3sha5Block14as_half_blocks17heb79b3377edea46dE>
 7001438:	00050993          	mv	s3,a0
 700143c:	00048513          	mv	a0,s1
 7001440:	00000097          	auipc	ra,0x0
 7001444:	4a8080e7          	jalr	1192(ra) # 70018e8 <_ZN9risc0_zkp4core4hash3sha5Block14as_half_blocks17heb79b3377edea46dE>
 7001448:	00058a13          	mv	s4,a1
 700144c:	04000513          	li	a0,64
 7001450:	00400593          	li	a1,4
 7001454:	fffff097          	auipc	ra,0xfffff
 7001458:	1d0080e7          	jalr	464(ra) # 7000624 <__rust_alloc>
 700145c:	00050493          	mv	s1,a0
 7001460:	00098513          	mv	a0,s3
 7001464:	00000097          	auipc	ra,0x0
 7001468:	48c080e7          	jalr	1164(ra) # 70018f0 <_ZN104_$LT$risc0_zkp..core..digest..Digest$u20$as$u20$core..convert..AsRef$LT$$u5b$u32$u3b$$u20$_$u5d$$GT$$GT$6as_ref17hc5aa0985ccf04e9bE>
 700146c:	00050993          	mv	s3,a0
 7001470:	000a0513          	mv	a0,s4
 7001474:	00000097          	auipc	ra,0x0
 7001478:	47c080e7          	jalr	1148(ra) # 70018f0 <_ZN104_$LT$risc0_zkp..core..digest..Digest$u20$as$u20$core..convert..AsRef$LT$$u5b$u32$u3b$$u20$_$u5d$$GT$$GT$6as_ref17hc5aa0985ccf04e9bE>
 700147c:	00050693          	mv	a3,a0
 7001480:	00300293          	li	t0,3
 7001484:	00100713          	li	a4,1
 7001488:	00048513          	mv	a0,s1
 700148c:	00090593          	mv	a1,s2
 7001490:	00098613          	mv	a2,s3
 7001494:	00000073          	ecall
 7001498:	00912023          	sw	s1,0(sp)
 700149c:	07010513          	add	a0,sp,112
 70014a0:	03800613          	li	a2,56
 70014a4:	00000593          	li	a1,0
 70014a8:	00000097          	auipc	ra,0x0
 70014ac:	98c080e7          	jalr	-1652(ra) # 7000e34 <memset>
 70014b0:	0b512623          	sw	s5,172(sp)
 70014b4:	0a012423          	sw	zero,168(sp)
 70014b8:	00048463          	beqz	s1,70014c0 <_ZN10risc0_zkvm5guest3env8finalize17h4683497f8b82da0cE+0x188>
 70014bc:	00048413          	mv	s0,s1
 70014c0:	12001863          	bnez	zero,70015f0 <_ZN10risc0_zkvm5guest3env8finalize17h4683497f8b82da0cE+0x2b8>
 70014c4:	07010513          	add	a0,sp,112
 70014c8:	00000097          	auipc	ra,0x0
 70014cc:	420080e7          	jalr	1056(ra) # 70018e8 <_ZN9risc0_zkp4core4hash3sha5Block14as_half_blocks17heb79b3377edea46dE>
 70014d0:	00050913          	mv	s2,a0
 70014d4:	07010513          	add	a0,sp,112
 70014d8:	00000097          	auipc	ra,0x0
 70014dc:	410080e7          	jalr	1040(ra) # 70018e8 <_ZN9risc0_zkp4core4hash3sha5Block14as_half_blocks17heb79b3377edea46dE>
 70014e0:	00058993          	mv	s3,a1
 70014e4:	04000513          	li	a0,64
 70014e8:	00400593          	li	a1,4
 70014ec:	fffff097          	auipc	ra,0xfffff
 70014f0:	138080e7          	jalr	312(ra) # 7000624 <__rust_alloc>
 70014f4:	00050493          	mv	s1,a0
 70014f8:	00090513          	mv	a0,s2
 70014fc:	00000097          	auipc	ra,0x0
 7001500:	3f4080e7          	jalr	1012(ra) # 70018f0 <_ZN104_$LT$risc0_zkp..core..digest..Digest$u20$as$u20$core..convert..AsRef$LT$$u5b$u32$u3b$$u20$_$u5d$$GT$$GT$6as_ref17hc5aa0985ccf04e9bE>
 7001504:	00050913          	mv	s2,a0
 7001508:	00098513          	mv	a0,s3
 700150c:	00000097          	auipc	ra,0x0
 7001510:	3e4080e7          	jalr	996(ra) # 70018f0 <_ZN104_$LT$risc0_zkp..core..digest..Digest$u20$as$u20$core..convert..AsRef$LT$$u5b$u32$u3b$$u20$_$u5d$$GT$$GT$6as_ref17hc5aa0985ccf04e9bE>
 7001514:	00050693          	mv	a3,a0
 7001518:	00300293          	li	t0,3
 700151c:	00100713          	li	a4,1
 7001520:	00048513          	mv	a0,s1
 7001524:	00040593          	mv	a1,s0
 7001528:	00090613          	mv	a2,s2
 700152c:	00000073          	ecall
 7001530:	00912023          	sw	s1,0(sp)
 7001534:	04010423          	sb	zero,72(sp)
 7001538:	08048c63          	beqz	s1,70015d0 <_ZN10risc0_zkvm5guest3env8finalize17h4683497f8b82da0cE+0x298>
 700153c:	1400006f          	j	700167c <_ZN10risc0_zkvm5guest3env8finalize17h4683497f8b82da0cE+0x344>
 7001540:	04012023          	sw	zero,64(sp)
 7001544:	05512223          	sw	s5,68(sp)
 7001548:	00012403          	lw	s0,0(sp)
 700154c:	00041663          	bnez	s0,7001558 <_ZN10risc0_zkvm5guest3env8finalize17h4683497f8b82da0cE+0x220>
 7001550:	07007537          	lui	a0,0x7007
 7001554:	21050413          	add	s0,a0,528 # 7007210 <_ZN9risc0_zkp4core4hash3sha11SHA256_INIT17h62e1cd879e97d403E>
 7001558:	00048513          	mv	a0,s1
 700155c:	00000097          	auipc	ra,0x0
 7001560:	38c080e7          	jalr	908(ra) # 70018e8 <_ZN9risc0_zkp4core4hash3sha5Block14as_half_blocks17heb79b3377edea46dE>
 7001564:	00050913          	mv	s2,a0
 7001568:	00048513          	mv	a0,s1
 700156c:	00000097          	auipc	ra,0x0
 7001570:	37c080e7          	jalr	892(ra) # 70018e8 <_ZN9risc0_zkp4core4hash3sha5Block14as_half_blocks17heb79b3377edea46dE>
 7001574:	00058993          	mv	s3,a1
 7001578:	04000513          	li	a0,64
 700157c:	00400593          	li	a1,4
 7001580:	fffff097          	auipc	ra,0xfffff
 7001584:	0a4080e7          	jalr	164(ra) # 7000624 <__rust_alloc>
 7001588:	00050493          	mv	s1,a0
 700158c:	00090513          	mv	a0,s2
 7001590:	00000097          	auipc	ra,0x0
 7001594:	360080e7          	jalr	864(ra) # 70018f0 <_ZN104_$LT$risc0_zkp..core..digest..Digest$u20$as$u20$core..convert..AsRef$LT$$u5b$u32$u3b$$u20$_$u5d$$GT$$GT$6as_ref17hc5aa0985ccf04e9bE>
 7001598:	00050913          	mv	s2,a0
 700159c:	00098513          	mv	a0,s3
 70015a0:	00000097          	auipc	ra,0x0
 70015a4:	350080e7          	jalr	848(ra) # 70018f0 <_ZN104_$LT$risc0_zkp..core..digest..Digest$u20$as$u20$core..convert..AsRef$LT$$u5b$u32$u3b$$u20$_$u5d$$GT$$GT$6as_ref17hc5aa0985ccf04e9bE>
 70015a8:	00050693          	mv	a3,a0
 70015ac:	00300293          	li	t0,3
 70015b0:	00100713          	li	a4,1
 70015b4:	00048513          	mv	a0,s1
 70015b8:	00040593          	mv	a1,s0
 70015bc:	00090613          	mv	a2,s2
 70015c0:	00000073          	ecall
 70015c4:	00912023          	sw	s1,0(sp)
 70015c8:	04010423          	sb	zero,72(sp)
 70015cc:	0a049863          	bnez	s1,700167c <_ZN10risc0_zkvm5guest3env8finalize17h4683497f8b82da0cE+0x344>
 70015d0:	07007537          	lui	a0,0x7007
 70015d4:	0f050513          	add	a0,a0,240 # 70070f0 <.Lanon.2e428254a4f422f96131b722f5510c98.3>
 70015d8:	070075b7          	lui	a1,0x7007
 70015dc:	11c58613          	add	a2,a1,284 # 700711c <.Lanon.2e428254a4f422f96131b722f5510c98.4>
 70015e0:	02b00593          	li	a1,43
 70015e4:	00005097          	auipc	ra,0x5
 70015e8:	3c0080e7          	jalr	960(ra) # 70069a4 <_ZN4core9panicking5panic17h5d0c0b97b225c667E>
 70015ec:	c0001073          	unimp
 70015f0:	0b010513          	add	a0,sp,176
 70015f4:	07010593          	add	a1,sp,112
 70015f8:	04000613          	li	a2,64
 70015fc:	00000097          	auipc	ra,0x0
 7001600:	930080e7          	jalr	-1744(ra) # 7000f2c <memcpy>
 7001604:	0b010513          	add	a0,sp,176
 7001608:	00000097          	auipc	ra,0x0
 700160c:	2e0080e7          	jalr	736(ra) # 70018e8 <_ZN9risc0_zkp4core4hash3sha5Block14as_half_blocks17heb79b3377edea46dE>
 7001610:	00050913          	mv	s2,a0
 7001614:	0b010513          	add	a0,sp,176
 7001618:	00000097          	auipc	ra,0x0
 700161c:	2d0080e7          	jalr	720(ra) # 70018e8 <_ZN9risc0_zkp4core4hash3sha5Block14as_half_blocks17heb79b3377edea46dE>
 7001620:	00058993          	mv	s3,a1
 7001624:	04000513          	li	a0,64
 7001628:	00400593          	li	a1,4
 700162c:	fffff097          	auipc	ra,0xfffff
 7001630:	ff8080e7          	jalr	-8(ra) # 7000624 <__rust_alloc>
 7001634:	00050493          	mv	s1,a0
 7001638:	00090513          	mv	a0,s2
 700163c:	00000097          	auipc	ra,0x0
 7001640:	2b4080e7          	jalr	692(ra) # 70018f0 <_ZN104_$LT$risc0_zkp..core..digest..Digest$u20$as$u20$core..convert..AsRef$LT$$u5b$u32$u3b$$u20$_$u5d$$GT$$GT$6as_ref17hc5aa0985ccf04e9bE>
 7001644:	00050913          	mv	s2,a0
 7001648:	00098513          	mv	a0,s3
 700164c:	00000097          	auipc	ra,0x0
 7001650:	2a4080e7          	jalr	676(ra) # 70018f0 <_ZN104_$LT$risc0_zkp..core..digest..Digest$u20$as$u20$core..convert..AsRef$LT$$u5b$u32$u3b$$u20$_$u5d$$GT$$GT$6as_ref17hc5aa0985ccf04e9bE>
 7001654:	00050693          	mv	a3,a0
 7001658:	00300293          	li	t0,3
 700165c:	00100713          	li	a4,1
 7001660:	00048513          	mv	a0,s1
 7001664:	00040593          	mv	a1,s0
 7001668:	00090613          	mv	a2,s2
 700166c:	00000073          	ecall
 7001670:	00912023          	sw	s1,0(sp)
 7001674:	04010423          	sb	zero,72(sp)
 7001678:	f4048ce3          	beqz	s1,70015d0 <_ZN10risc0_zkvm5guest3env8finalize17h4683497f8b82da0cE+0x298>
 700167c:	00048513          	mv	a0,s1
 7001680:	00000097          	auipc	ra,0x0
 7001684:	274080e7          	jalr	628(ra) # 70018f4 <_ZN92_$LT$risc0_zkp..core..digest..Digest$u20$as$u20$core..convert..AsRef$LT$$u5b$u8$u5d$$GT$$GT$6as_ref17h9b0a1bca79cda51dE>
 7001688:	00050613          	mv	a2,a0
 700168c:	00058693          	mv	a3,a1
 7001690:	07007537          	lui	a0,0x7007
 7001694:	0e050713          	add	a4,a0,224 # 70070e0 <.Lanon.2e428254a4f422f96131b722f5510c98.2>
 7001698:	05010513          	add	a0,sp,80
 700169c:	02000593          	li	a1,32
 70016a0:	fffff097          	auipc	ra,0xfffff
 70016a4:	764080e7          	jalr	1892(ra) # 7000e04 <_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h9921693fe10a61f1E>
 70016a8:	05012583          	lw	a1,80(sp)
 70016ac:	05412603          	lw	a2,84(sp)
 70016b0:	05812683          	lw	a3,88(sp)
 70016b4:	05c12703          	lw	a4,92(sp)
 70016b8:	06012783          	lw	a5,96(sp)
 70016bc:	06412803          	lw	a6,100(sp)
 70016c0:	06812883          	lw	a7,104(sp)
 70016c4:	06c12303          	lw	t1,108(sp)
 70016c8:	00100293          	li	t0,1
 70016cc:	00000513          	li	a0,0
 70016d0:	00000073          	ecall
 70016d4:	00100293          	li	t0,1
 70016d8:	00100513          	li	a0,1
 70016dc:	00060593          	mv	a1,a2
 70016e0:	00000073          	ecall
 70016e4:	00100293          	li	t0,1
 70016e8:	00200513          	li	a0,2
 70016ec:	00068593          	mv	a1,a3
 70016f0:	00000073          	ecall
 70016f4:	00100293          	li	t0,1
 70016f8:	00300513          	li	a0,3
 70016fc:	00070593          	mv	a1,a4
 7001700:	00000073          	ecall
 7001704:	00100293          	li	t0,1
 7001708:	00400513          	li	a0,4
 700170c:	00078593          	mv	a1,a5
 7001710:	00000073          	ecall
 7001714:	00100293          	li	t0,1
 7001718:	00500513          	li	a0,5
 700171c:	00080593          	mv	a1,a6
 7001720:	00000073          	ecall
 7001724:	00100293          	li	t0,1
 7001728:	00600513          	li	a0,6
 700172c:	00088593          	mv	a1,a7
 7001730:	00000073          	ecall
 7001734:	00100293          	li	t0,1
 7001738:	00700513          	li	a0,7
 700173c:	00030593          	mv	a1,t1
 7001740:	00000073          	ecall
 7001744:	00000293          	li	t0,0
 7001748:	00000513          	li	a0,0
 700174c:	00000073          	ecall
 7001750:	07007537          	lui	a0,0x7007
 7001754:	1c650513          	add	a0,a0,454 # 70071c6 <.Lanon.2e428254a4f422f96131b722f5510c98.12>
 7001758:	070075b7          	lui	a1,0x7007
 700175c:	1f058613          	add	a2,a1,496 # 70071f0 <.Lanon.2e428254a4f422f96131b722f5510c98.13>
 7001760:	02800593          	li	a1,40
 7001764:	00005097          	auipc	ra,0x5
 7001768:	240080e7          	jalr	576(ra) # 70069a4 <_ZN4core9panicking5panic17h5d0c0b97b225c667E>
 700176c:	c0001073          	unimp

07001770 <_ZN10risc0_zkvm5guest3env7journal17he59338ac9e48008fE>:
 7001770:	00300513          	li	a0,3
 7001774:	00008067          	ret

07001778 <_ZN10risc0_zkvm5guest3env5stdin17hb0b3d6bdad52895bE>:
 7001778:	00000513          	li	a0,0
 700177c:	00008067          	ret

07001780 <_ZN94_$LT$risc0_zkvm..guest..env..FdReader$u20$as$u20$risc0_zkvm..serde..deserializer..WordRead$GT$10read_words17hc6f19d077743efe4E>:
 7001780:	ff010113          	add	sp,sp,-16
 7001784:	00112623          	sw	ra,12(sp)
 7001788:	00812423          	sw	s0,8(sp)
 700178c:	00052503          	lw	a0,0(a0)
 7001790:	00060413          	mv	s0,a2
 7001794:	00000097          	auipc	ra,0x0
 7001798:	238080e7          	jalr	568(ra) # 70019cc <_ZN19risc0_zkvm_platform7syscall14sys_read_words17h6d319333f02563a4E>
 700179c:	00050593          	mv	a1,a0
 70017a0:	00241613          	sll	a2,s0,0x2
 70017a4:	00700513          	li	a0,7
 70017a8:	00c58463          	beq	a1,a2,70017b0 <_ZN94_$LT$risc0_zkvm..guest..env..FdReader$u20$as$u20$risc0_zkvm..serde..deserializer..WordRead$GT$10read_words17hc6f19d077743efe4E+0x30>
 70017ac:	00400513          	li	a0,4
 70017b0:	00c12083          	lw	ra,12(sp)
 70017b4:	00812403          	lw	s0,8(sp)
 70017b8:	01010113          	add	sp,sp,16
 70017bc:	00008067          	ret

070017c0 <_ZN94_$LT$risc0_zkvm..guest..env..FdReader$u20$as$u20$risc0_zkvm..serde..deserializer..WordRead$GT$17read_padded_bytes17h9f7bfde97f8562a1E>:
 70017c0:	fe010113          	add	sp,sp,-32
 70017c4:	00112e23          	sw	ra,28(sp)
 70017c8:	00812c23          	sw	s0,24(sp)
 70017cc:	00912a23          	sw	s1,20(sp)
 70017d0:	01212823          	sw	s2,16(sp)
 70017d4:	01312623          	sw	s3,12(sp)
 70017d8:	01412423          	sw	s4,8(sp)
 70017dc:	01512223          	sw	s5,4(sp)
 70017e0:	00060493          	mv	s1,a2
 70017e4:	00050413          	mv	s0,a0
 70017e8:	04060663          	beqz	a2,7001834 <_ZN94_$LT$risc0_zkvm..guest..env..FdReader$u20$as$u20$risc0_zkvm..serde..deserializer..WordRead$GT$17read_padded_bytes17h9f7bfde97f8562a1E+0x74>
 70017ec:	00058913          	mv	s2,a1
 70017f0:	00042983          	lw	s3,0(s0)
 70017f4:	00000a93          	li	s5,0
 70017f8:	00048a13          	mv	s4,s1
 70017fc:	00098513          	mv	a0,s3
 7001800:	00090593          	mv	a1,s2
 7001804:	000a0613          	mv	a2,s4
 7001808:	00000097          	auipc	ra,0x0
 700180c:	0f4080e7          	jalr	244(ra) # 70018fc <sys_read>
 7001810:	00050c63          	beqz	a0,7001828 <_ZN94_$LT$risc0_zkvm..guest..env..FdReader$u20$as$u20$risc0_zkvm..serde..deserializer..WordRead$GT$17read_padded_bytes17h9f7bfde97f8562a1E+0x68>
 7001814:	0aaa6a63          	bltu	s4,a0,70018c8 <_ZN94_$LT$risc0_zkvm..guest..env..FdReader$u20$as$u20$risc0_zkvm..serde..deserializer..WordRead$GT$17read_padded_bytes17h9f7bfde97f8562a1E+0x108>
 7001818:	01550ab3          	add	s5,a0,s5
 700181c:	40aa0a33          	sub	s4,s4,a0
 7001820:	00a90933          	add	s2,s2,a0
 7001824:	fc0a1ce3          	bnez	s4,70017fc <_ZN94_$LT$risc0_zkvm..guest..env..FdReader$u20$as$u20$risc0_zkvm..serde..deserializer..WordRead$GT$17read_padded_bytes17h9f7bfde97f8562a1E+0x3c>
 7001828:	00400513          	li	a0,4
 700182c:	009a8a63          	beq	s5,s1,7001840 <_ZN94_$LT$risc0_zkvm..guest..env..FdReader$u20$as$u20$risc0_zkvm..serde..deserializer..WordRead$GT$17read_padded_bytes17h9f7bfde97f8562a1E+0x80>
 7001830:	0740006f          	j	70018a4 <_ZN94_$LT$risc0_zkvm..guest..env..FdReader$u20$as$u20$risc0_zkvm..serde..deserializer..WordRead$GT$17read_padded_bytes17h9f7bfde97f8562a1E+0xe4>
 7001834:	00000a93          	li	s5,0
 7001838:	00400513          	li	a0,4
 700183c:	069a9463          	bne	s5,s1,70018a4 <_ZN94_$LT$risc0_zkvm..guest..env..FdReader$u20$as$u20$risc0_zkvm..serde..deserializer..WordRead$GT$17read_padded_bytes17h9f7bfde97f8562a1E+0xe4>
 7001840:	0034f513          	and	a0,s1,3
 7001844:	04050e63          	beqz	a0,70018a0 <_ZN94_$LT$risc0_zkvm..guest..env..FdReader$u20$as$u20$risc0_zkvm..serde..deserializer..WordRead$GT$17read_padded_bytes17h9f7bfde97f8562a1E+0xe0>
 7001848:	00000993          	li	s3,0
 700184c:	00400593          	li	a1,4
 7001850:	00042403          	lw	s0,0(s0)
 7001854:	40a58a33          	sub	s4,a1,a0
 7001858:	00012023          	sw	zero,0(sp)
 700185c:	00010493          	mv	s1,sp
 7001860:	000a0913          	mv	s2,s4
 7001864:	00040513          	mv	a0,s0
 7001868:	00048593          	mv	a1,s1
 700186c:	00090613          	mv	a2,s2
 7001870:	00000097          	auipc	ra,0x0
 7001874:	08c080e7          	jalr	140(ra) # 70018fc <sys_read>
 7001878:	00050c63          	beqz	a0,7001890 <_ZN94_$LT$risc0_zkvm..guest..env..FdReader$u20$as$u20$risc0_zkvm..serde..deserializer..WordRead$GT$17read_padded_bytes17h9f7bfde97f8562a1E+0xd0>
 700187c:	04a96663          	bltu	s2,a0,70018c8 <_ZN94_$LT$risc0_zkvm..guest..env..FdReader$u20$as$u20$risc0_zkvm..serde..deserializer..WordRead$GT$17read_padded_bytes17h9f7bfde97f8562a1E+0x108>
 7001880:	013509b3          	add	s3,a0,s3
 7001884:	40a90933          	sub	s2,s2,a0
 7001888:	00a484b3          	add	s1,s1,a0
 700188c:	fc091ce3          	bnez	s2,7001864 <_ZN94_$LT$risc0_zkvm..guest..env..FdReader$u20$as$u20$risc0_zkvm..serde..deserializer..WordRead$GT$17read_padded_bytes17h9f7bfde97f8562a1E+0xa4>
 7001890:	00700513          	li	a0,7
 7001894:	01498863          	beq	s3,s4,70018a4 <_ZN94_$LT$risc0_zkvm..guest..env..FdReader$u20$as$u20$risc0_zkvm..serde..deserializer..WordRead$GT$17read_padded_bytes17h9f7bfde97f8562a1E+0xe4>
 7001898:	00400513          	li	a0,4
 700189c:	0080006f          	j	70018a4 <_ZN94_$LT$risc0_zkvm..guest..env..FdReader$u20$as$u20$risc0_zkvm..serde..deserializer..WordRead$GT$17read_padded_bytes17h9f7bfde97f8562a1E+0xe4>
 70018a0:	00700513          	li	a0,7
 70018a4:	01c12083          	lw	ra,28(sp)
 70018a8:	01812403          	lw	s0,24(sp)
 70018ac:	01412483          	lw	s1,20(sp)
 70018b0:	01012903          	lw	s2,16(sp)
 70018b4:	00c12983          	lw	s3,12(sp)
 70018b8:	00812a03          	lw	s4,8(sp)
 70018bc:	00412a83          	lw	s5,4(sp)
 70018c0:	02010113          	add	sp,sp,32
 70018c4:	00008067          	ret
 70018c8:	07007537          	lui	a0,0x7007
 70018cc:	12c50513          	add	a0,a0,300 # 700712c <.Lanon.2e428254a4f422f96131b722f5510c98.9>
 70018d0:	070075b7          	lui	a1,0x7007
 70018d4:	20058613          	add	a2,a1,512 # 7007200 <.Lanon.2e428254a4f422f96131b722f5510c98.14>
 70018d8:	02300593          	li	a1,35
 70018dc:	00005097          	auipc	ra,0x5
 70018e0:	0c8080e7          	jalr	200(ra) # 70069a4 <_ZN4core9panicking5panic17h5d0c0b97b225c667E>
 70018e4:	c0001073          	unimp

070018e8 <_ZN9risc0_zkp4core4hash3sha5Block14as_half_blocks17heb79b3377edea46dE>:
 70018e8:	02050593          	add	a1,a0,32
 70018ec:	00008067          	ret

070018f0 <_ZN104_$LT$risc0_zkp..core..digest..Digest$u20$as$u20$core..convert..AsRef$LT$$u5b$u32$u3b$$u20$_$u5d$$GT$$GT$6as_ref17hc5aa0985ccf04e9bE>:
 70018f0:	00008067          	ret

070018f4 <_ZN92_$LT$risc0_zkp..core..digest..Digest$u20$as$u20$core..convert..AsRef$LT$$u5b$u8$u5d$$GT$$GT$6as_ref17h9b0a1bca79cda51dE>:
 70018f4:	02000593          	li	a1,32
 70018f8:	00008067          	ret

070018fc <sys_read>:
 70018fc:	00060793          	mv	a5,a2
 7001900:	00058813          	mv	a6,a1
 7001904:	00050693          	mv	a3,a0
 7001908:	07007537          	lui	a0,0x7007
 700190c:	26f50613          	add	a2,a0,623 # 700726f <.Lanon.1e336525450390b565d102459bb3bc9b.14>
 7001910:	00200293          	li	t0,2
 7001914:	00000513          	li	a0,0
 7001918:	00000593          	li	a1,0
 700191c:	00000073          	ecall
 7001920:	00a7e463          	bltu	a5,a0,7001928 <sys_read+0x2c>
 7001924:	00050793          	mv	a5,a0
 7001928:	00387513          	and	a0,a6,3
 700192c:	00400593          	li	a1,4
 7001930:	40a58633          	sub	a2,a1,a0
 7001934:	00078593          	mv	a1,a5
 7001938:	00c7e463          	bltu	a5,a2,7001940 <sys_read+0x44>
 700193c:	00060593          	mv	a1,a2
 7001940:	00000713          	li	a4,0
 7001944:	00050463          	beqz	a0,700194c <sys_read+0x50>
 7001948:	00058713          	mv	a4,a1
 700194c:	07007537          	lui	a0,0x7007
 7001950:	2a050613          	add	a2,a0,672 # 70072a0 <.Lanon.1e336525450390b565d102459bb3bc9b.15>
 7001954:	00200293          	li	t0,2
 7001958:	00000513          	li	a0,0
 700195c:	00000593          	li	a1,0
 7001960:	00000073          	ecall
 7001964:	00070e63          	beqz	a4,7001980 <sys_read+0x84>
 7001968:	00070513          	mv	a0,a4
 700196c:	00b80023          	sb	a1,0(a6)
 7001970:	0085d593          	srl	a1,a1,0x8
 7001974:	fff50513          	add	a0,a0,-1
 7001978:	00180813          	add	a6,a6,1
 700197c:	fe0518e3          	bnez	a0,700196c <sys_read+0x70>
 7001980:	04e78263          	beq	a5,a4,70019c4 <sys_read+0xc8>
 7001984:	40e78733          	sub	a4,a5,a4
 7001988:	00275593          	srl	a1,a4,0x2
 700198c:	07007537          	lui	a0,0x7007
 7001990:	2a050613          	add	a2,a0,672 # 70072a0 <.Lanon.1e336525450390b565d102459bb3bc9b.15>
 7001994:	00200293          	li	t0,2
 7001998:	00377893          	and	a7,a4,3
 700199c:	00080513          	mv	a0,a6
 70019a0:	00000073          	ecall
 70019a4:	02088063          	beqz	a7,70019c4 <sys_read+0xc8>
 70019a8:	ffc77513          	and	a0,a4,-4
 70019ac:	00a80533          	add	a0,a6,a0
 70019b0:	00b50023          	sb	a1,0(a0)
 70019b4:	0085d593          	srl	a1,a1,0x8
 70019b8:	fff88893          	add	a7,a7,-1
 70019bc:	00150513          	add	a0,a0,1
 70019c0:	fe0898e3          	bnez	a7,70019b0 <sys_read+0xb4>
 70019c4:	00078513          	mv	a0,a5
 70019c8:	00008067          	ret

070019cc <_ZN19risc0_zkvm_platform7syscall14sys_read_words17h6d319333f02563a4E>:
 70019cc:	00060793          	mv	a5,a2
 70019d0:	00261713          	sll	a4,a2,0x2
 70019d4:	07007637          	lui	a2,0x7007
 70019d8:	2a060613          	add	a2,a2,672 # 70072a0 <.Lanon.1e336525450390b565d102459bb3bc9b.15>
 70019dc:	00200293          	li	t0,2
 70019e0:	00050693          	mv	a3,a0
 70019e4:	00058513          	mv	a0,a1
 70019e8:	00078593          	mv	a1,a5
 70019ec:	00000073          	ecall
 70019f0:	00a76463          	bltu	a4,a0,70019f8 <_ZN19risc0_zkvm_platform7syscall14sys_read_words17h6d319333f02563a4E+0x2c>
 70019f4:	00008067          	ret
 70019f8:	07007537          	lui	a0,0x7007
 70019fc:	2cb50513          	add	a0,a0,715 # 70072cb <.Lanon.1e336525450390b565d102459bb3bc9b.16>
 7001a00:	070075b7          	lui	a1,0x7007
 7001a04:	30058613          	add	a2,a1,768 # 7007300 <.Lanon.1e336525450390b565d102459bb3bc9b.17>
 7001a08:	03400593          	li	a1,52
 7001a0c:	00005097          	auipc	ra,0x5
 7001a10:	f98080e7          	jalr	-104(ra) # 70069a4 <_ZN4core9panicking5panic17h5d0c0b97b225c667E>
 7001a14:	c0001073          	unimp

07001a18 <sys_write>:
 7001a18:	00060793          	mv	a5,a2
 7001a1c:	07007637          	lui	a2,0x7007
 7001a20:	31060613          	add	a2,a2,784 # 7007310 <.Lanon.1e336525450390b565d102459bb3bc9b.18>
 7001a24:	00200293          	li	t0,2
 7001a28:	00050693          	mv	a3,a0
 7001a2c:	00058713          	mv	a4,a1
 7001a30:	00000513          	li	a0,0
 7001a34:	00000593          	li	a1,0
 7001a38:	00000073          	ecall
 7001a3c:	00008067          	ret

07001a40 <sys_alloc_words>:
 7001a40:	000805b7          	lui	a1,0x80
 7001a44:	0005a683          	lw	a3,0(a1) # 80000 <_ZN19risc0_zkvm_platform7syscall20HEAP_WORDS_REMAINING17hd21b26ffaffc1daaE.0>
 7001a48:	40a68633          	sub	a2,a3,a0
 7001a4c:	00c6ec63          	bltu	a3,a2,7001a64 <sys_alloc_words+0x24>
 7001a50:	00269513          	sll	a0,a3,0x2
 7001a54:	070006b7          	lui	a3,0x7000
 7001a58:	40a68533          	sub	a0,a3,a0
 7001a5c:	00c5a023          	sw	a2,0(a1)
 7001a60:	00008067          	ret
 7001a64:	07007537          	lui	a0,0x7007
 7001a68:	33c50513          	add	a0,a0,828 # 700733c <.Lanon.1e336525450390b565d102459bb3bc9b.20>
 7001a6c:	070075b7          	lui	a1,0x7007
 7001a70:	34c58613          	add	a2,a1,844 # 700734c <.Lanon.1e336525450390b565d102459bb3bc9b.22>
 7001a74:	00e00593          	li	a1,14
 7001a78:	00004097          	auipc	ra,0x4
 7001a7c:	268080e7          	jalr	616(ra) # 7005ce0 <_ZN4core6option13expect_failed17h8186a22d26a8b014E>
 7001a80:	c0001073          	unimp

07001a84 <_ZN4core3ptr28drop_in_place$LT$$RF$str$GT$17h89e424b3952f1ef4E>:
 7001a84:	00008067          	ret

07001a88 <_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd02a500cbcaf0767E>:
 7001a88:	00452583          	lw	a1,4(a0)
 7001a8c:	00058a63          	beqz	a1,7001aa0 <_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd02a500cbcaf0767E+0x18>
 7001a90:	00052503          	lw	a0,0(a0)
 7001a94:	00100613          	li	a2,1
 7001a98:	fffff317          	auipc	t1,0xfffff
 7001a9c:	b9430067          	jr	-1132(t1) # 700062c <__rust_dealloc>
 7001aa0:	00008067          	ret

07001aa4 <_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h6c9060209d983b7eE>:
 7001aa4:	fe010113          	add	sp,sp,-32
 7001aa8:	00112e23          	sw	ra,28(sp)
 7001aac:	00812c23          	sw	s0,24(sp)
 7001ab0:	00912a23          	sw	s1,20(sp)
 7001ab4:	01212823          	sw	s2,16(sp)
 7001ab8:	01312623          	sw	s3,12(sp)
 7001abc:	01412423          	sw	s4,8(sp)
 7001ac0:	00058413          	mv	s0,a1
 7001ac4:	0085a983          	lw	s3,8(a1)
 7001ac8:	0045a583          	lw	a1,4(a1)
 7001acc:	413585b3          	sub	a1,a1,s3
 7001ad0:	00068913          	mv	s2,a3
 7001ad4:	00060a13          	mv	s4,a2
 7001ad8:	00050493          	mv	s1,a0
 7001adc:	04d5e863          	bltu	a1,a3,7001b2c <_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h6c9060209d983b7eE+0x88>
 7001ae0:	00042503          	lw	a0,0(s0)
 7001ae4:	01350533          	add	a0,a0,s3
 7001ae8:	000a0593          	mv	a1,s4
 7001aec:	00090613          	mv	a2,s2
 7001af0:	fffff097          	auipc	ra,0xfffff
 7001af4:	43c080e7          	jalr	1084(ra) # 7000f2c <memcpy>
 7001af8:	01298533          	add	a0,s3,s2
 7001afc:	00a42423          	sw	a0,8(s0)
 7001b00:	0124a223          	sw	s2,4(s1)
 7001b04:	00400513          	li	a0,4
 7001b08:	00a48023          	sb	a0,0(s1)
 7001b0c:	01c12083          	lw	ra,28(sp)
 7001b10:	01812403          	lw	s0,24(sp)
 7001b14:	01412483          	lw	s1,20(sp)
 7001b18:	01012903          	lw	s2,16(sp)
 7001b1c:	00c12983          	lw	s3,12(sp)
 7001b20:	00812a03          	lw	s4,8(sp)
 7001b24:	02010113          	add	sp,sp,32
 7001b28:	00008067          	ret
 7001b2c:	00040513          	mv	a0,s0
 7001b30:	00098593          	mv	a1,s3
 7001b34:	00090613          	mv	a2,s2
 7001b38:	00001097          	auipc	ra,0x1
 7001b3c:	230080e7          	jalr	560(ra) # 7002d68 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE>
 7001b40:	00842983          	lw	s3,8(s0)
 7001b44:	f9dff06f          	j	7001ae0 <_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h6c9060209d983b7eE+0x3c>

07001b48 <_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h470c24b43cc95c17E>:
 7001b48:	fd010113          	add	sp,sp,-48
 7001b4c:	02112623          	sw	ra,44(sp)
 7001b50:	02812423          	sw	s0,40(sp)
 7001b54:	02912223          	sw	s1,36(sp)
 7001b58:	03212023          	sw	s2,32(sp)
 7001b5c:	01312e23          	sw	s3,28(sp)
 7001b60:	01412c23          	sw	s4,24(sp)
 7001b64:	01512a23          	sw	s5,20(sp)
 7001b68:	01612823          	sw	s6,16(sp)
 7001b6c:	01712623          	sw	s7,12(sp)
 7001b70:	00050413          	mv	s0,a0
 7001b74:	0a068063          	beqz	a3,7001c14 <_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h470c24b43cc95c17E+0xcc>
 7001b78:	00060493          	mv	s1,a2
 7001b7c:	00058913          	mv	s2,a1
 7001b80:	00000993          	li	s3,0
 7001b84:	00369513          	sll	a0,a3,0x3
 7001b88:	00a60bb3          	add	s7,a2,a0
 7001b8c:	00460593          	add	a1,a2,4
 7001b90:	0005a603          	lw	a2,0(a1)
 7001b94:	013609b3          	add	s3,a2,s3
 7001b98:	ff850513          	add	a0,a0,-8
 7001b9c:	00858593          	add	a1,a1,8
 7001ba0:	fe0518e3          	bnez	a0,7001b90 <_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h470c24b43cc95c17E+0x48>
 7001ba4:	00892583          	lw	a1,8(s2)
 7001ba8:	00492503          	lw	a0,4(s2)
 7001bac:	40b50533          	sub	a0,a0,a1
 7001bb0:	0b356063          	bltu	a0,s3,7001c50 <_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h470c24b43cc95c17E+0x108>
 7001bb4:	00892a03          	lw	s4,8(s2)
 7001bb8:	02c0006f          	j	7001be4 <_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h470c24b43cc95c17E+0x9c>
 7001bbc:	00092503          	lw	a0,0(s2)
 7001bc0:	01450533          	add	a0,a0,s4
 7001bc4:	000b0593          	mv	a1,s6
 7001bc8:	000a8613          	mv	a2,s5
 7001bcc:	fffff097          	auipc	ra,0xfffff
 7001bd0:	360080e7          	jalr	864(ra) # 7000f2c <memcpy>
 7001bd4:	015a0a33          	add	s4,s4,s5
 7001bd8:	00848493          	add	s1,s1,8
 7001bdc:	01492423          	sw	s4,8(s2)
 7001be0:	03748c63          	beq	s1,s7,7001c18 <_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h470c24b43cc95c17E+0xd0>
 7001be4:	00492503          	lw	a0,4(s2)
 7001be8:	0044aa83          	lw	s5,4(s1)
 7001bec:	0004ab03          	lw	s6,0(s1)
 7001bf0:	41450533          	sub	a0,a0,s4
 7001bf4:	fd5574e3          	bgeu	a0,s5,7001bbc <_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h470c24b43cc95c17E+0x74>
 7001bf8:	00090513          	mv	a0,s2
 7001bfc:	000a0593          	mv	a1,s4
 7001c00:	000a8613          	mv	a2,s5
 7001c04:	00001097          	auipc	ra,0x1
 7001c08:	164080e7          	jalr	356(ra) # 7002d68 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE>
 7001c0c:	00892a03          	lw	s4,8(s2)
 7001c10:	fadff06f          	j	7001bbc <_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h470c24b43cc95c17E+0x74>
 7001c14:	00000993          	li	s3,0
 7001c18:	01342223          	sw	s3,4(s0)
 7001c1c:	00400513          	li	a0,4
 7001c20:	00a40023          	sb	a0,0(s0)
 7001c24:	02c12083          	lw	ra,44(sp)
 7001c28:	02812403          	lw	s0,40(sp)
 7001c2c:	02412483          	lw	s1,36(sp)
 7001c30:	02012903          	lw	s2,32(sp)
 7001c34:	01c12983          	lw	s3,28(sp)
 7001c38:	01812a03          	lw	s4,24(sp)
 7001c3c:	01412a83          	lw	s5,20(sp)
 7001c40:	01012b03          	lw	s6,16(sp)
 7001c44:	00c12b83          	lw	s7,12(sp)
 7001c48:	03010113          	add	sp,sp,48
 7001c4c:	00008067          	ret
 7001c50:	00090513          	mv	a0,s2
 7001c54:	00098613          	mv	a2,s3
 7001c58:	00001097          	auipc	ra,0x1
 7001c5c:	110080e7          	jalr	272(ra) # 7002d68 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE>
 7001c60:	f55ff06f          	j	7001bb4 <_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h470c24b43cc95c17E+0x6c>

07001c64 <_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$17is_write_vectored17he0432f9480fbd3ceE>:
 7001c64:	00100513          	li	a0,1
 7001c68:	00008067          	ret

07001c6c <_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h3a7faec1fd430df8E>:
 7001c6c:	fe010113          	add	sp,sp,-32
 7001c70:	00112e23          	sw	ra,28(sp)
 7001c74:	00812c23          	sw	s0,24(sp)
 7001c78:	00912a23          	sw	s1,20(sp)
 7001c7c:	01212823          	sw	s2,16(sp)
 7001c80:	01312623          	sw	s3,12(sp)
 7001c84:	01412423          	sw	s4,8(sp)
 7001c88:	00058413          	mv	s0,a1
 7001c8c:	0085a983          	lw	s3,8(a1)
 7001c90:	0045a583          	lw	a1,4(a1)
 7001c94:	413585b3          	sub	a1,a1,s3
 7001c98:	00068913          	mv	s2,a3
 7001c9c:	00060a13          	mv	s4,a2
 7001ca0:	00050493          	mv	s1,a0
 7001ca4:	04d5e663          	bltu	a1,a3,7001cf0 <_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h3a7faec1fd430df8E+0x84>
 7001ca8:	00042503          	lw	a0,0(s0)
 7001cac:	01350533          	add	a0,a0,s3
 7001cb0:	000a0593          	mv	a1,s4
 7001cb4:	00090613          	mv	a2,s2
 7001cb8:	fffff097          	auipc	ra,0xfffff
 7001cbc:	274080e7          	jalr	628(ra) # 7000f2c <memcpy>
 7001cc0:	01298533          	add	a0,s3,s2
 7001cc4:	00a42423          	sw	a0,8(s0)
 7001cc8:	00400513          	li	a0,4
 7001ccc:	00a48023          	sb	a0,0(s1)
 7001cd0:	01c12083          	lw	ra,28(sp)
 7001cd4:	01812403          	lw	s0,24(sp)
 7001cd8:	01412483          	lw	s1,20(sp)
 7001cdc:	01012903          	lw	s2,16(sp)
 7001ce0:	00c12983          	lw	s3,12(sp)
 7001ce4:	00812a03          	lw	s4,8(sp)
 7001ce8:	02010113          	add	sp,sp,32
 7001cec:	00008067          	ret
 7001cf0:	00040513          	mv	a0,s0
 7001cf4:	00098593          	mv	a1,s3
 7001cf8:	00090613          	mv	a2,s2
 7001cfc:	00001097          	auipc	ra,0x1
 7001d00:	06c080e7          	jalr	108(ra) # 7002d68 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE>
 7001d04:	00842983          	lw	s3,8(s0)
 7001d08:	fa1ff06f          	j	7001ca8 <_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h3a7faec1fd430df8E+0x3c>

07001d0c <_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5flush17h4a88afa7c4f2b060E>:
 7001d0c:	00400593          	li	a1,4
 7001d10:	00b50023          	sb	a1,0(a0)
 7001d14:	00008067          	ret

07001d18 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E>:
 7001d18:	f9010113          	add	sp,sp,-112
 7001d1c:	06112623          	sw	ra,108(sp)
 7001d20:	06812423          	sw	s0,104(sp)
 7001d24:	06912223          	sw	s1,100(sp)
 7001d28:	07212023          	sw	s2,96(sp)
 7001d2c:	00050493          	mv	s1,a0
 7001d30:	00000513          	li	a0,0
 7001d34:	00002097          	auipc	ra,0x2
 7001d38:	aac080e7          	jalr	-1364(ra) # 70037e0 <_ZN3std9panicking11panic_count17LOCAL_PANIC_COUNT7__getit17hce72445e52496182E.llvm.14256562575406249000>
 7001d3c:	3e050c63          	beqz	a0,7002134 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x41c>
 7001d40:	00300513          	li	a0,3
 7001d44:	00a105a3          	sb	a0,11(sp)
 7001d48:	00048513          	mv	a0,s1
 7001d4c:	00004097          	auipc	ra,0x4
 7001d50:	b5c080e7          	jalr	-1188(ra) # 70058a8 <_ZN4core5panic10panic_info9PanicInfo8location17h016da194399f3e8fE>
 7001d54:	32050863          	beqz	a0,7002084 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x36c>
 7001d58:	00a12623          	sw	a0,12(sp)
 7001d5c:	00048513          	mv	a0,s1
 7001d60:	00004097          	auipc	ra,0x4
 7001d64:	b30080e7          	jalr	-1232(ra) # 7005890 <_ZN4core5panic10panic_info9PanicInfo7payload17h9f01f7c4facac74eE>
 7001d68:	00c5a583          	lw	a1,12(a1)
 7001d6c:	00050413          	mv	s0,a0
 7001d70:	000580e7          	jalr	a1
 7001d74:	7444d637          	lui	a2,0x7444d
 7001d78:	ec760613          	add	a2,a2,-313 # 7444cec7 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x6d4448d0>
 7001d7c:	00c5c5b3          	xor	a1,a1,a2
 7001d80:	66a4d637          	lui	a2,0x66a4d
 7001d84:	8eb60613          	add	a2,a2,-1813 # 66a4c8eb <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x5fa442f4>
 7001d88:	00c54533          	xor	a0,a0,a2
 7001d8c:	00b56533          	or	a0,a0,a1
 7001d90:	00153513          	seqz	a0,a0
 7001d94:	008035b3          	snez	a1,s0
 7001d98:	00a5f533          	and	a0,a1,a0
 7001d9c:	04051c63          	bnez	a0,7001df4 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0xdc>
 7001da0:	00048513          	mv	a0,s1
 7001da4:	00004097          	auipc	ra,0x4
 7001da8:	aec080e7          	jalr	-1300(ra) # 7005890 <_ZN4core5panic10panic_info9PanicInfo7payload17h9f01f7c4facac74eE>
 7001dac:	00c5a583          	lw	a1,12(a1)
 7001db0:	00050413          	mv	s0,a0
 7001db4:	000580e7          	jalr	a1
 7001db8:	f962e637          	lui	a2,0xf962e
 7001dbc:	1d660613          	add	a2,a2,470 # f962e1d6 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0xf2625bdf>
 7001dc0:	00c5c5b3          	xor	a1,a1,a2
 7001dc4:	03348637          	lui	a2,0x3348
 7001dc8:	c4f60613          	add	a2,a2,-945 # 3347c4f <__heap_start+0x1347c4f>
 7001dcc:	00c54533          	xor	a0,a0,a2
 7001dd0:	00b56533          	or	a0,a0,a1
 7001dd4:	00a03533          	snez	a0,a0
 7001dd8:	00143593          	seqz	a1,s0
 7001ddc:	00a5e533          	or	a0,a1,a0
 7001de0:	00050e63          	beqz	a0,7001dfc <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0xe4>
 7001de4:	07007537          	lui	a0,0x7007
 7001de8:	44450513          	add	a0,a0,1092 # 7007444 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.32>
 7001dec:	00c00593          	li	a1,12
 7001df0:	0180006f          	j	7001e08 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0xf0>
 7001df4:	00440593          	add	a1,s0,4
 7001df8:	0080006f          	j	7001e00 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0xe8>
 7001dfc:	00840593          	add	a1,s0,8
 7001e00:	00042503          	lw	a0,0(s0)
 7001e04:	0005a583          	lw	a1,0(a1)
 7001e08:	00a12823          	sw	a0,16(sp)
 7001e0c:	00b12a23          	sw	a1,20(sp)
 7001e10:	00080537          	lui	a0,0x80
 7001e14:	00450513          	add	a0,a0,4 # 80004 <_ZN3std10sys_common11thread_info11THREAD_INFO7__getit5__KEY17h0b9e5aa5a3bca13aE.llvm.9006096014459121332>
 7001e18:	00000593          	li	a1,0
 7001e1c:	00002097          	auipc	ra,0x2
 7001e20:	d0c080e7          	jalr	-756(ra) # 7003b28 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h4eb2c9aba7a806e6E>
 7001e24:	06050063          	beqz	a0,7001e84 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x16c>
 7001e28:	00050413          	mv	s0,a0
 7001e2c:	00052503          	lw	a0,0(a0)
 7001e30:	26051a63          	bnez	a0,70020a4 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x38c>
 7001e34:	00442503          	lw	a0,4(s0)
 7001e38:	fff00593          	li	a1,-1
 7001e3c:	00b42023          	sw	a1,0(s0)
 7001e40:	00051863          	bnez	a0,7001e50 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x138>
 7001e44:	00002097          	auipc	ra,0x2
 7001e48:	a54080e7          	jalr	-1452(ra) # 7003898 <_ZN3std6thread6Thread3new17hcc331c91952c9110E>
 7001e4c:	00a42223          	sw	a0,4(s0)
 7001e50:	00052583          	lw	a1,0(a0)
 7001e54:	00158613          	add	a2,a1,1
 7001e58:	00c52023          	sw	a2,0(a0)
 7001e5c:	2605c463          	bltz	a1,70020c4 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x3ac>
 7001e60:	00042583          	lw	a1,0(s0)
 7001e64:	00158593          	add	a1,a1,1
 7001e68:	00b42023          	sw	a1,0(s0)
 7001e6c:	00a12e23          	sw	a0,28(sp)
 7001e70:	01052583          	lw	a1,16(a0)
 7001e74:	00058a63          	beqz	a1,7001e88 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x170>
 7001e78:	01452503          	lw	a0,20(a0)
 7001e7c:	fff50513          	add	a0,a0,-1
 7001e80:	0140006f          	j	7001e94 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x17c>
 7001e84:	00012e23          	sw	zero,28(sp)
 7001e88:	07007537          	lui	a0,0x7007
 7001e8c:	45050593          	add	a1,a0,1104 # 7007450 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.33>
 7001e90:	00900513          	li	a0,9
 7001e94:	02b12023          	sw	a1,32(sp)
 7001e98:	02a12223          	sw	a0,36(sp)
 7001e9c:	02010513          	add	a0,sp,32
 7001ea0:	02a12423          	sw	a0,40(sp)
 7001ea4:	01010513          	add	a0,sp,16
 7001ea8:	02a12623          	sw	a0,44(sp)
 7001eac:	00080537          	lui	a0,0x80
 7001eb0:	03054583          	lbu	a1,48(a0) # 80030 <_ZN3std2io5stdio19OUTPUT_CAPTURE_USED17ha6f52b8142ee3cf0E.0.llvm.17917170917373548271>
 7001eb4:	00c10613          	add	a2,sp,12
 7001eb8:	02c12823          	sw	a2,48(sp)
 7001ebc:	00b10613          	add	a2,sp,11
 7001ec0:	02c12a23          	sw	a2,52(sp)
 7001ec4:	0e058463          	beqz	a1,7001fac <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x294>
 7001ec8:	00100593          	li	a1,1
 7001ecc:	02b50823          	sb	a1,48(a0)
 7001ed0:	00000513          	li	a0,0
 7001ed4:	00002097          	auipc	ra,0x2
 7001ed8:	828080e7          	jalr	-2008(ra) # 70036fc <_ZN3std2io5stdio14OUTPUT_CAPTURE7__getit17hbb9798fd7e0adf8aE.llvm.17917170917373548271>
 7001edc:	24050c63          	beqz	a0,7002134 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x41c>
 7001ee0:	00052483          	lw	s1,0(a0)
 7001ee4:	00052023          	sw	zero,0(a0)
 7001ee8:	02912e23          	sw	s1,60(sp)
 7001eec:	0c048263          	beqz	s1,7001fb0 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x298>
 7001ef0:	0084c503          	lbu	a0,8(s1)
 7001ef4:	00157593          	and	a1,a0,1
 7001ef8:	04b10c23          	sb	a1,88(sp)
 7001efc:	00100513          	li	a0,1
 7001f00:	00a48423          	sb	a0,8(s1)
 7001f04:	1c059463          	bnez	a1,70020cc <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x3b4>
 7001f08:	00080537          	lui	a0,0x80
 7001f0c:	03452503          	lw	a0,52(a0) # 80034 <_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h9bef03536075a61aE>
 7001f10:	800005b7          	lui	a1,0x80000
 7001f14:	fff58913          	add	s2,a1,-1 # 7fffffff <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x78ff7a08>
 7001f18:	01257533          	and	a0,a0,s2
 7001f1c:	12051263          	bnez	a0,7002040 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x328>
 7001f20:	00c48593          	add	a1,s1,12
 7001f24:	07007537          	lui	a0,0x7007
 7001f28:	48450613          	add	a2,a0,1156 # 7007484 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.35>
 7001f2c:	02810513          	add	a0,sp,40
 7001f30:	00000097          	auipc	ra,0x0
 7001f34:	230080e7          	jalr	560(ra) # 7002160 <_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h98caa6a0aed26f78E>
 7001f38:	00080537          	lui	a0,0x80
 7001f3c:	03452503          	lw	a0,52(a0) # 80034 <_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h9bef03536075a61aE>
 7001f40:	01257533          	and	a0,a0,s2
 7001f44:	12051463          	bnez	a0,700206c <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x354>
 7001f48:	00048423          	sb	zero,8(s1)
 7001f4c:	00080537          	lui	a0,0x80
 7001f50:	00100413          	li	s0,1
 7001f54:	02850823          	sb	s0,48(a0) # 80030 <_ZN3std2io5stdio19OUTPUT_CAPTURE_USED17ha6f52b8142ee3cf0E.0.llvm.17917170917373548271>
 7001f58:	04912023          	sw	s1,64(sp)
 7001f5c:	00000513          	li	a0,0
 7001f60:	00001097          	auipc	ra,0x1
 7001f64:	79c080e7          	jalr	1948(ra) # 70036fc <_ZN3std2io5stdio14OUTPUT_CAPTURE7__getit17hbb9798fd7e0adf8aE.llvm.17917170917373548271>
 7001f68:	1a050863          	beqz	a0,7002118 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x400>
 7001f6c:	00052583          	lw	a1,0(a0)
 7001f70:	00952023          	sw	s1,0(a0)
 7001f74:	04b12023          	sw	a1,64(sp)
 7001f78:	02058263          	beqz	a1,7001f9c <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x284>
 7001f7c:	0005a503          	lw	a0,0(a1)
 7001f80:	fff50613          	add	a2,a0,-1
 7001f84:	00100693          	li	a3,1
 7001f88:	00c5a023          	sw	a2,0(a1)
 7001f8c:	00d51863          	bne	a0,a3,7001f9c <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x284>
 7001f90:	04010513          	add	a0,sp,64
 7001f94:	00001097          	auipc	ra,0x1
 7001f98:	674080e7          	jalr	1652(ra) # 7003608 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h9740c3a8f539a67cE>
 7001f9c:	00100413          	li	s0,1
 7001fa0:	01c12503          	lw	a0,28(sp)
 7001fa4:	02051863          	bnez	a0,7001fd4 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x2bc>
 7001fa8:	04c0006f          	j	7001ff4 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x2dc>
 7001fac:	02012e23          	sw	zero,60(sp)
 7001fb0:	07007537          	lui	a0,0x7007
 7001fb4:	45c50613          	add	a2,a0,1116 # 700745c <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.34>
 7001fb8:	02810513          	add	a0,sp,40
 7001fbc:	05810593          	add	a1,sp,88
 7001fc0:	00000097          	auipc	ra,0x0
 7001fc4:	1a0080e7          	jalr	416(ra) # 7002160 <_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h98caa6a0aed26f78E>
 7001fc8:	00000413          	li	s0,0
 7001fcc:	01c12503          	lw	a0,28(sp)
 7001fd0:	02050263          	beqz	a0,7001ff4 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x2dc>
 7001fd4:	00052583          	lw	a1,0(a0)
 7001fd8:	fff58613          	add	a2,a1,-1
 7001fdc:	00100693          	li	a3,1
 7001fe0:	00c52023          	sw	a2,0(a0)
 7001fe4:	00d59863          	bne	a1,a3,7001ff4 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x2dc>
 7001fe8:	01c10513          	add	a0,sp,28
 7001fec:	00001097          	auipc	ra,0x1
 7001ff0:	690080e7          	jalr	1680(ra) # 700367c <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17ha046ddaa357e950cE>
 7001ff4:	03c12503          	lw	a0,60(sp)
 7001ff8:	00a035b3          	snez	a1,a0
 7001ffc:	fff44613          	not	a2,s0
 7002000:	00b675b3          	and	a1,a2,a1
 7002004:	02058263          	beqz	a1,7002028 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x310>
 7002008:	00052583          	lw	a1,0(a0)
 700200c:	fff58613          	add	a2,a1,-1
 7002010:	00100693          	li	a3,1
 7002014:	00c52023          	sw	a2,0(a0)
 7002018:	00d59863          	bne	a1,a3,7002028 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x310>
 700201c:	03c10513          	add	a0,sp,60
 7002020:	00001097          	auipc	ra,0x1
 7002024:	5e8080e7          	jalr	1512(ra) # 7003608 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h9740c3a8f539a67cE>
 7002028:	06c12083          	lw	ra,108(sp)
 700202c:	06812403          	lw	s0,104(sp)
 7002030:	06412483          	lw	s1,100(sp)
 7002034:	06012903          	lw	s2,96(sp)
 7002038:	07010113          	add	sp,sp,112
 700203c:	00008067          	ret
 7002040:	00001097          	auipc	ra,0x1
 7002044:	740080e7          	jalr	1856(ra) # 7003780 <_ZN3std9panicking11panic_count17is_zero_slow_path17hc7714d9f060b0c3aE>
 7002048:	00050413          	mv	s0,a0
 700204c:	00c48593          	add	a1,s1,12
 7002050:	07007537          	lui	a0,0x7007
 7002054:	48450613          	add	a2,a0,1156 # 7007484 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.35>
 7002058:	02810513          	add	a0,sp,40
 700205c:	00000097          	auipc	ra,0x0
 7002060:	104080e7          	jalr	260(ra) # 7002160 <_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h98caa6a0aed26f78E>
 7002064:	ec041ae3          	bnez	s0,7001f38 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x220>
 7002068:	ee1ff06f          	j	7001f48 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x230>
 700206c:	00001097          	auipc	ra,0x1
 7002070:	714080e7          	jalr	1812(ra) # 7003780 <_ZN3std9panicking11panic_count17is_zero_slow_path17hc7714d9f060b0c3aE>
 7002074:	ec051ae3          	bnez	a0,7001f48 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x230>
 7002078:	00100513          	li	a0,1
 700207c:	00a484a3          	sb	a0,9(s1)
 7002080:	ec9ff06f          	j	7001f48 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x230>
 7002084:	07007537          	lui	a0,0x7007
 7002088:	4ac50513          	add	a0,a0,1196 # 70074ac <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.36>
 700208c:	070075b7          	lui	a1,0x7007
 7002090:	4d858613          	add	a2,a1,1240 # 70074d8 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.37>
 7002094:	02b00593          	li	a1,43
 7002098:	00005097          	auipc	ra,0x5
 700209c:	90c080e7          	jalr	-1780(ra) # 70069a4 <_ZN4core9panicking5panic17h5d0c0b97b225c667E>
 70020a0:	c0001073          	unimp
 70020a4:	07007537          	lui	a0,0x7007
 70020a8:	70c50513          	add	a0,a0,1804 # 700770c <anon.bc0186976f2b4070236a5106e84f3a4e.5.llvm.9006096014459121332>
 70020ac:	070075b7          	lui	a1,0x7007
 70020b0:	71c58693          	add	a3,a1,1820 # 700771c <anon.bc0186976f2b4070236a5106e84f3a4e.6.llvm.9006096014459121332>
 70020b4:	070085b7          	lui	a1,0x7008
 70020b8:	9fc58713          	add	a4,a1,-1540 # 70079fc <anon.bc0186976f2b4070236a5106e84f3a4e.75.llvm.9006096014459121332>
 70020bc:	01000593          	li	a1,16
 70020c0:	0900006f          	j	7002150 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x438>
 70020c4:	c0001073          	unimp
 70020c8:	c0001073          	unimp
 70020cc:	070085b7          	lui	a1,0x7008
 70020d0:	a3858593          	add	a1,a1,-1480 # 7007a38 <anon.eff0a5df67630090483337dc173c00d6.102.llvm.17917170917373548271>
 70020d4:	04b12023          	sw	a1,64(sp)
 70020d8:	04a12223          	sw	a0,68(sp)
 70020dc:	04012423          	sw	zero,72(sp)
 70020e0:	07008537          	lui	a0,0x7008
 70020e4:	a3450513          	add	a0,a0,-1484 # 7007a34 <anon.eff0a5df67630090483337dc173c00d6.100.llvm.17917170917373548271>
 70020e8:	04a12823          	sw	a0,80(sp)
 70020ec:	04012a23          	sw	zero,84(sp)
 70020f0:	07008537          	lui	a0,0x7008
 70020f4:	a3450613          	add	a2,a0,-1484 # 7007a34 <anon.eff0a5df67630090483337dc173c00d6.100.llvm.17917170917373548271>
 70020f8:	07008537          	lui	a0,0x7008
 70020fc:	b1c50713          	add	a4,a0,-1252 # 7007b1c <anon.eff0a5df67630090483337dc173c00d6.104.llvm.17917170917373548271>
 7002100:	05810593          	add	a1,sp,88
 7002104:	04010693          	add	a3,sp,64
 7002108:	00000513          	li	a0,0
 700210c:	00001097          	auipc	ra,0x1
 7002110:	610080e7          	jalr	1552(ra) # 700371c <_ZN4core9panicking13assert_failed17h88b995a5c9938d12E>
 7002114:	c0001073          	unimp
 7002118:	0004a503          	lw	a0,0(s1)
 700211c:	fff50593          	add	a1,a0,-1
 7002120:	00b4a023          	sw	a1,0(s1)
 7002124:	00851863          	bne	a0,s0,7002134 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E+0x41c>
 7002128:	04010513          	add	a0,sp,64
 700212c:	00001097          	auipc	ra,0x1
 7002130:	4dc080e7          	jalr	1244(ra) # 7003608 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h9740c3a8f539a67cE>
 7002134:	07008537          	lui	a0,0x7008
 7002138:	cbb50513          	add	a0,a0,-837 # 7007cbb <anon.e5acf19516f4a9cd5b82bd5981941ef5.15.llvm.13949807993874650229>
 700213c:	070085b7          	lui	a1,0x7008
 7002140:	d0458693          	add	a3,a1,-764 # 7007d04 <anon.e5acf19516f4a9cd5b82bd5981941ef5.16.llvm.13949807993874650229>
 7002144:	070085b7          	lui	a1,0x7008
 7002148:	dd858713          	add	a4,a1,-552 # 7007dd8 <anon.e5acf19516f4a9cd5b82bd5981941ef5.18.llvm.13949807993874650229>
 700214c:	04600593          	li	a1,70
 7002150:	05810613          	add	a2,sp,88
 7002154:	00005097          	auipc	ra,0x5
 7002158:	a6c080e7          	jalr	-1428(ra) # 7006bc0 <_ZN4core6result13unwrap_failed17hf6bc9b148a5ba21eE>
 700215c:	c0001073          	unimp

07002160 <_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h98caa6a0aed26f78E>:
 7002160:	fa010113          	add	sp,sp,-96
 7002164:	04112e23          	sw	ra,92(sp)
 7002168:	04812c23          	sw	s0,88(sp)
 700216c:	04912a23          	sw	s1,84(sp)
 7002170:	05212823          	sw	s2,80(sp)
 7002174:	05312623          	sw	s3,76(sp)
 7002178:	05412423          	sw	s4,72(sp)
 700217c:	05512223          	sw	s5,68(sp)
 7002180:	00050913          	mv	s2,a0
 7002184:	00052503          	lw	a0,0(a0)
 7002188:	00060493          	mv	s1,a2
 700218c:	00058413          	mv	s0,a1
 7002190:	00492583          	lw	a1,4(s2)
 7002194:	00892603          	lw	a2,8(s2)
 7002198:	02a12423          	sw	a0,40(sp)
 700219c:	07004537          	lui	a0,0x7004
 70021a0:	2ac50513          	add	a0,a0,684 # 70042ac <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h18726c7fa529f584E>
 70021a4:	02a12623          	sw	a0,44(sp)
 70021a8:	02b12823          	sw	a1,48(sp)
 70021ac:	02a12a23          	sw	a0,52(sp)
 70021b0:	02c12c23          	sw	a2,56(sp)
 70021b4:	07004537          	lui	a0,0x7004
 70021b8:	a9450513          	add	a0,a0,-1388 # 7003a94 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6f360459c204b8a7E>
 70021bc:	02a12e23          	sw	a0,60(sp)
 70021c0:	07007537          	lui	a0,0x7007
 70021c4:	50450513          	add	a0,a0,1284 # 7007504 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.41>
 70021c8:	00a12823          	sw	a0,16(sp)
 70021cc:	00400513          	li	a0,4
 70021d0:	00a12a23          	sw	a0,20(sp)
 70021d4:	00012c23          	sw	zero,24(sp)
 70021d8:	02810513          	add	a0,sp,40
 70021dc:	0244aa03          	lw	s4,36(s1)
 70021e0:	02a12023          	sw	a0,32(sp)
 70021e4:	00300a93          	li	s5,3
 70021e8:	03512223          	sw	s5,36(sp)
 70021ec:	00810513          	add	a0,sp,8
 70021f0:	01010613          	add	a2,sp,16
 70021f4:	00040593          	mv	a1,s0
 70021f8:	000a00e7          	jalr	s4
 70021fc:	00814503          	lbu	a0,8(sp)
 7002200:	05551463          	bne	a0,s5,7002248 <_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h98caa6a0aed26f78E+0xe8>
 7002204:	00c12983          	lw	s3,12(sp)
 7002208:	0049a583          	lw	a1,4(s3)
 700220c:	0009a503          	lw	a0,0(s3)
 7002210:	0005a583          	lw	a1,0(a1)
 7002214:	000580e7          	jalr	a1
 7002218:	0049a503          	lw	a0,4(s3)
 700221c:	00452583          	lw	a1,4(a0)
 7002220:	00058a63          	beqz	a1,7002234 <_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h98caa6a0aed26f78E+0xd4>
 7002224:	00852603          	lw	a2,8(a0)
 7002228:	0009a503          	lw	a0,0(s3)
 700222c:	ffffe097          	auipc	ra,0xffffe
 7002230:	400080e7          	jalr	1024(ra) # 700062c <__rust_dealloc>
 7002234:	00c00593          	li	a1,12
 7002238:	00400613          	li	a2,4
 700223c:	00098513          	mv	a0,s3
 7002240:	ffffe097          	auipc	ra,0xffffe
 7002244:	3ec080e7          	jalr	1004(ra) # 700062c <__rust_dealloc>
 7002248:	00c92503          	lw	a0,12(s2)
 700224c:	00054503          	lbu	a0,0(a0)
 7002250:	11550063          	beq	a0,s5,7002350 <_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h98caa6a0aed26f78E+0x1f0>
 7002254:	00200593          	li	a1,2
 7002258:	02b50a63          	beq	a0,a1,700228c <_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h98caa6a0aed26f78E+0x12c>
 700225c:	00100593          	li	a1,1
 7002260:	08b51463          	bne	a0,a1,70022e8 <_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h98caa6a0aed26f78E+0x188>
 7002264:	02810513          	add	a0,sp,40
 7002268:	00100693          	li	a3,1
 700226c:	00040593          	mv	a1,s0
 7002270:	00048613          	mv	a2,s1
 7002274:	00001097          	auipc	ra,0x1
 7002278:	068080e7          	jalr	104(ra) # 70032dc <_ZN3std10sys_common9backtrace5print17hade71476ee17ba10E>
 700227c:	02814503          	lbu	a0,40(sp)
 7002280:	00300593          	li	a1,3
 7002284:	08b50463          	beq	a0,a1,700230c <_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h98caa6a0aed26f78E+0x1ac>
 7002288:	0c80006f          	j	7002350 <_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h98caa6a0aed26f78E+0x1f0>
 700228c:	000805b7          	lui	a1,0x80
 7002290:	0295c603          	lbu	a2,41(a1) # 80029 <_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$11FIRST_PANIC17h49a2a15698028f46E.0>
 7002294:	00100513          	li	a0,1
 7002298:	02a584a3          	sb	a0,41(a1)
 700229c:	0a061a63          	bnez	a2,7002350 <_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h98caa6a0aed26f78E+0x1f0>
 70022a0:	070075b7          	lui	a1,0x7007
 70022a4:	57458593          	add	a1,a1,1396 # 7007574 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.43>
 70022a8:	02b12423          	sw	a1,40(sp)
 70022ac:	02a12623          	sw	a0,44(sp)
 70022b0:	02012823          	sw	zero,48(sp)
 70022b4:	07007537          	lui	a0,0x7007
 70022b8:	35c50513          	add	a0,a0,860 # 700735c <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.19>
 70022bc:	02a12c23          	sw	a0,56(sp)
 70022c0:	02012e23          	sw	zero,60(sp)
 70022c4:	01010513          	add	a0,sp,16
 70022c8:	02810613          	add	a2,sp,40
 70022cc:	00040593          	mv	a1,s0
 70022d0:	000a00e7          	jalr	s4
 70022d4:	01014503          	lbu	a0,16(sp)
 70022d8:	00300593          	li	a1,3
 70022dc:	06b51a63          	bne	a0,a1,7002350 <_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h98caa6a0aed26f78E+0x1f0>
 70022e0:	01412403          	lw	s0,20(sp)
 70022e4:	02c0006f          	j	7002310 <_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h98caa6a0aed26f78E+0x1b0>
 70022e8:	02810513          	add	a0,sp,40
 70022ec:	00040593          	mv	a1,s0
 70022f0:	00048613          	mv	a2,s1
 70022f4:	00000693          	li	a3,0
 70022f8:	00001097          	auipc	ra,0x1
 70022fc:	fe4080e7          	jalr	-28(ra) # 70032dc <_ZN3std10sys_common9backtrace5print17hade71476ee17ba10E>
 7002300:	02814503          	lbu	a0,40(sp)
 7002304:	00300593          	li	a1,3
 7002308:	04b51463          	bne	a0,a1,7002350 <_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h98caa6a0aed26f78E+0x1f0>
 700230c:	02c12403          	lw	s0,44(sp)
 7002310:	00442583          	lw	a1,4(s0)
 7002314:	00042503          	lw	a0,0(s0)
 7002318:	0005a583          	lw	a1,0(a1)
 700231c:	000580e7          	jalr	a1
 7002320:	00442503          	lw	a0,4(s0)
 7002324:	00452583          	lw	a1,4(a0)
 7002328:	00058a63          	beqz	a1,700233c <_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h98caa6a0aed26f78E+0x1dc>
 700232c:	00852603          	lw	a2,8(a0)
 7002330:	00042503          	lw	a0,0(s0)
 7002334:	ffffe097          	auipc	ra,0xffffe
 7002338:	2f8080e7          	jalr	760(ra) # 700062c <__rust_dealloc>
 700233c:	00c00593          	li	a1,12
 7002340:	00400613          	li	a2,4
 7002344:	00040513          	mv	a0,s0
 7002348:	ffffe097          	auipc	ra,0xffffe
 700234c:	2e4080e7          	jalr	740(ra) # 700062c <__rust_dealloc>
 7002350:	05c12083          	lw	ra,92(sp)
 7002354:	05812403          	lw	s0,88(sp)
 7002358:	05412483          	lw	s1,84(sp)
 700235c:	05012903          	lw	s2,80(sp)
 7002360:	04c12983          	lw	s3,76(sp)
 7002364:	04812a03          	lw	s4,72(sp)
 7002368:	04412a83          	lw	s5,68(sp)
 700236c:	06010113          	add	sp,sp,96
 7002370:	00008067          	ret

07002374 <rust_begin_unwind>:
 7002374:	fe010113          	add	sp,sp,-32
 7002378:	00112e23          	sw	ra,28(sp)
 700237c:	00812c23          	sw	s0,24(sp)
 7002380:	00912a23          	sw	s1,20(sp)
 7002384:	00050413          	mv	s0,a0
 7002388:	00003097          	auipc	ra,0x3
 700238c:	520080e7          	jalr	1312(ra) # 70058a8 <_ZN4core5panic10panic_info9PanicInfo8location17h016da194399f3e8fE>
 7002390:	02051263          	bnez	a0,70023b4 <rust_begin_unwind+0x40>
 7002394:	07007537          	lui	a0,0x7007
 7002398:	4ac50513          	add	a0,a0,1196 # 70074ac <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.36>
 700239c:	070075b7          	lui	a1,0x7007
 70023a0:	58c58613          	add	a2,a1,1420 # 700758c <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.45>
 70023a4:	02b00593          	li	a1,43
 70023a8:	00004097          	auipc	ra,0x4
 70023ac:	5fc080e7          	jalr	1532(ra) # 70069a4 <_ZN4core9panicking5panic17h5d0c0b97b225c667E>
 70023b0:	c0001073          	unimp
 70023b4:	00050493          	mv	s1,a0
 70023b8:	00040513          	mv	a0,s0
 70023bc:	00003097          	auipc	ra,0x3
 70023c0:	4e4080e7          	jalr	1252(ra) # 70058a0 <_ZN4core5panic10panic_info9PanicInfo7message17hf150a2730354cba8E>
 70023c4:	02051263          	bnez	a0,70023e8 <rust_begin_unwind+0x74>
 70023c8:	07007537          	lui	a0,0x7007
 70023cc:	4ac50513          	add	a0,a0,1196 # 70074ac <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.36>
 70023d0:	070075b7          	lui	a1,0x7007
 70023d4:	57c58613          	add	a2,a1,1404 # 700757c <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.44>
 70023d8:	02b00593          	li	a1,43
 70023dc:	00004097          	auipc	ra,0x4
 70023e0:	5c8080e7          	jalr	1480(ra) # 70069a4 <_ZN4core9panicking5panic17h5d0c0b97b225c667E>
 70023e4:	c0001073          	unimp
 70023e8:	00a12423          	sw	a0,8(sp)
 70023ec:	00812623          	sw	s0,12(sp)
 70023f0:	00912823          	sw	s1,16(sp)
 70023f4:	00810513          	add	a0,sp,8
 70023f8:	00001097          	auipc	ra,0x1
 70023fc:	108080e7          	jalr	264(ra) # 7003500 <_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17he1d35fc3f1089e6cE>
 7002400:	c0001073          	unimp

07002404 <_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17hb309aeacfebff98cE>:
 7002404:	fc010113          	add	sp,sp,-64
 7002408:	02112e23          	sw	ra,60(sp)
 700240c:	02812c23          	sw	s0,56(sp)
 7002410:	02912a23          	sw	s1,52(sp)
 7002414:	00050413          	mv	s0,a0
 7002418:	00452503          	lw	a0,4(a0)
 700241c:	00440493          	add	s1,s0,4
 7002420:	08051063          	bnez	a0,70024a0 <_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17hb309aeacfebff98cE+0x9c>
 7002424:	00042503          	lw	a0,0(s0)
 7002428:	00100593          	li	a1,1
 700242c:	00b12423          	sw	a1,8(sp)
 7002430:	00012623          	sw	zero,12(sp)
 7002434:	00012823          	sw	zero,16(sp)
 7002438:	00810593          	add	a1,sp,8
 700243c:	00b12a23          	sw	a1,20(sp)
 7002440:	01452583          	lw	a1,20(a0)
 7002444:	02b12623          	sw	a1,44(sp)
 7002448:	01052583          	lw	a1,16(a0)
 700244c:	02b12423          	sw	a1,40(sp)
 7002450:	00c52583          	lw	a1,12(a0)
 7002454:	02b12223          	sw	a1,36(sp)
 7002458:	00852583          	lw	a1,8(a0)
 700245c:	02b12023          	sw	a1,32(sp)
 7002460:	00452583          	lw	a1,4(a0)
 7002464:	00b12e23          	sw	a1,28(sp)
 7002468:	00052503          	lw	a0,0(a0)
 700246c:	00a12c23          	sw	a0,24(sp)
 7002470:	07008537          	lui	a0,0x7008
 7002474:	c9850593          	add	a1,a0,-872 # 7007c98 <anon.e5acf19516f4a9cd5b82bd5981941ef5.1.llvm.13949807993874650229>
 7002478:	01410513          	add	a0,sp,20
 700247c:	01810613          	add	a2,sp,24
 7002480:	00004097          	auipc	ra,0x4
 7002484:	9a8080e7          	jalr	-1624(ra) # 7005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>
 7002488:	01012503          	lw	a0,16(sp)
 700248c:	00c12583          	lw	a1,12(sp)
 7002490:	00812603          	lw	a2,8(sp)
 7002494:	00a4a423          	sw	a0,8(s1)
 7002498:	00b4a223          	sw	a1,4(s1)
 700249c:	00c4a023          	sw	a2,0(s1)
 70024a0:	0084a503          	lw	a0,8(s1)
 70024a4:	0044a583          	lw	a1,4(s1)
 70024a8:	0004a603          	lw	a2,0(s1)
 70024ac:	02a12023          	sw	a0,32(sp)
 70024b0:	00b12e23          	sw	a1,28(sp)
 70024b4:	00c12c23          	sw	a2,24(sp)
 70024b8:	00100513          	li	a0,1
 70024bc:	00a42223          	sw	a0,4(s0)
 70024c0:	00042423          	sw	zero,8(s0)
 70024c4:	00042623          	sw	zero,12(s0)
 70024c8:	00c00513          	li	a0,12
 70024cc:	00400593          	li	a1,4
 70024d0:	ffffe097          	auipc	ra,0xffffe
 70024d4:	154080e7          	jalr	340(ra) # 7000624 <__rust_alloc>
 70024d8:	02050c63          	beqz	a0,7002510 <_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17hb309aeacfebff98cE+0x10c>
 70024dc:	02012583          	lw	a1,32(sp)
 70024e0:	01c12603          	lw	a2,28(sp)
 70024e4:	00b52423          	sw	a1,8(a0)
 70024e8:	01812683          	lw	a3,24(sp)
 70024ec:	00c52223          	sw	a2,4(a0)
 70024f0:	070075b7          	lui	a1,0x7007
 70024f4:	59c58593          	add	a1,a1,1436 # 700759c <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.46>
 70024f8:	00d52023          	sw	a3,0(a0)
 70024fc:	03c12083          	lw	ra,60(sp)
 7002500:	03812403          	lw	s0,56(sp)
 7002504:	03412483          	lw	s1,52(sp)
 7002508:	04010113          	add	sp,sp,64
 700250c:	00008067          	ret
 7002510:	00c00513          	li	a0,12
 7002514:	00400593          	li	a1,4
 7002518:	00003097          	auipc	ra,0x3
 700251c:	e44080e7          	jalr	-444(ra) # 700535c <_ZN5alloc5alloc18handle_alloc_error17hf138f09b4614ca73E>
 7002520:	c0001073          	unimp

07002524 <_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h58ad0210549ae198E>:
 7002524:	fd010113          	add	sp,sp,-48
 7002528:	02112623          	sw	ra,44(sp)
 700252c:	02812423          	sw	s0,40(sp)
 7002530:	00452583          	lw	a1,4(a0)
 7002534:	00450413          	add	s0,a0,4
 7002538:	08059063          	bnez	a1,70025b8 <_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h58ad0210549ae198E+0x94>
 700253c:	00052503          	lw	a0,0(a0)
 7002540:	00100593          	li	a1,1
 7002544:	00b12023          	sw	a1,0(sp)
 7002548:	00012223          	sw	zero,4(sp)
 700254c:	00012423          	sw	zero,8(sp)
 7002550:	00010593          	mv	a1,sp
 7002554:	00b12623          	sw	a1,12(sp)
 7002558:	01452583          	lw	a1,20(a0)
 700255c:	02b12223          	sw	a1,36(sp)
 7002560:	01052583          	lw	a1,16(a0)
 7002564:	02b12023          	sw	a1,32(sp)
 7002568:	00c52583          	lw	a1,12(a0)
 700256c:	00b12e23          	sw	a1,28(sp)
 7002570:	00852583          	lw	a1,8(a0)
 7002574:	00b12c23          	sw	a1,24(sp)
 7002578:	00452583          	lw	a1,4(a0)
 700257c:	00b12a23          	sw	a1,20(sp)
 7002580:	00052503          	lw	a0,0(a0)
 7002584:	00a12823          	sw	a0,16(sp)
 7002588:	07008537          	lui	a0,0x7008
 700258c:	c9850593          	add	a1,a0,-872 # 7007c98 <anon.e5acf19516f4a9cd5b82bd5981941ef5.1.llvm.13949807993874650229>
 7002590:	00c10513          	add	a0,sp,12
 7002594:	01010613          	add	a2,sp,16
 7002598:	00004097          	auipc	ra,0x4
 700259c:	890080e7          	jalr	-1904(ra) # 7005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>
 70025a0:	00812503          	lw	a0,8(sp)
 70025a4:	00412583          	lw	a1,4(sp)
 70025a8:	00012603          	lw	a2,0(sp)
 70025ac:	00a42423          	sw	a0,8(s0)
 70025b0:	00b42223          	sw	a1,4(s0)
 70025b4:	00c42023          	sw	a2,0(s0)
 70025b8:	07007537          	lui	a0,0x7007
 70025bc:	59c50593          	add	a1,a0,1436 # 700759c <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.46>
 70025c0:	00040513          	mv	a0,s0
 70025c4:	02c12083          	lw	ra,44(sp)
 70025c8:	02812403          	lw	s0,40(sp)
 70025cc:	03010113          	add	sp,sp,48
 70025d0:	00008067          	ret

070025d4 <_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h3f335a8849c03036E>:
 70025d4:	ff010113          	add	sp,sp,-16
 70025d8:	00112623          	sw	ra,12(sp)
 70025dc:	00812423          	sw	s0,8(sp)
 70025e0:	00912223          	sw	s1,4(sp)
 70025e4:	00052483          	lw	s1,0(a0)
 70025e8:	00452403          	lw	s0,4(a0)
 70025ec:	00800513          	li	a0,8
 70025f0:	00400593          	li	a1,4
 70025f4:	ffffe097          	auipc	ra,0xffffe
 70025f8:	030080e7          	jalr	48(ra) # 7000624 <__rust_alloc>
 70025fc:	02050463          	beqz	a0,7002624 <_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h3f335a8849c03036E+0x50>
 7002600:	00952023          	sw	s1,0(a0)
 7002604:	070075b7          	lui	a1,0x7007
 7002608:	5ac58593          	add	a1,a1,1452 # 70075ac <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.47>
 700260c:	00852223          	sw	s0,4(a0)
 7002610:	00c12083          	lw	ra,12(sp)
 7002614:	00812403          	lw	s0,8(sp)
 7002618:	00412483          	lw	s1,4(sp)
 700261c:	01010113          	add	sp,sp,16
 7002620:	00008067          	ret
 7002624:	00800513          	li	a0,8
 7002628:	00400593          	li	a1,4
 700262c:	00003097          	auipc	ra,0x3
 7002630:	d30080e7          	jalr	-720(ra) # 700535c <_ZN5alloc5alloc18handle_alloc_error17hf138f09b4614ca73E>
 7002634:	c0001073          	unimp

07002638 <_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17he02aefae61d56568E>:
 7002638:	070075b7          	lui	a1,0x7007
 700263c:	5ac58593          	add	a1,a1,1452 # 70075ac <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.47>
 7002640:	00008067          	ret

07002644 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E>:
 7002644:	f8010113          	add	sp,sp,-128
 7002648:	06112e23          	sw	ra,124(sp)
 700264c:	06812c23          	sw	s0,120(sp)
 7002650:	06912a23          	sw	s1,116(sp)
 7002654:	07212823          	sw	s2,112(sp)
 7002658:	07312623          	sw	s3,108(sp)
 700265c:	07412423          	sw	s4,104(sp)
 7002660:	07512223          	sw	s5,100(sp)
 7002664:	00080837          	lui	a6,0x80
 7002668:	03482783          	lw	a5,52(a6) # 80034 <_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h9bef03536075a61aE>
 700266c:	00070413          	mv	s0,a4
 7002670:	00068993          	mv	s3,a3
 7002674:	00060a13          	mv	s4,a2
 7002678:	00050913          	mv	s2,a0
 700267c:	00178513          	add	a0,a5,1
 7002680:	02a82a23          	sw	a0,52(a6)
 7002684:	0a07dc63          	bgez	a5,700273c <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0xf8>
 7002688:	00179513          	sll	a0,a5,0x1
 700268c:	00155593          	srl	a1,a0,0x1
 7002690:	00200513          	li	a0,2
 7002694:	0eb56e63          	bltu	a0,a1,7002790 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x14c>
 7002698:	070075b7          	lui	a1,0x7007
 700269c:	35c58593          	add	a1,a1,860 # 700735c <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.19>
 70026a0:	02b12023          	sw	a1,32(sp)
 70026a4:	070075b7          	lui	a1,0x7007
 70026a8:	5f858593          	add	a1,a1,1528 # 70075f8 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.50>
 70026ac:	02b12223          	sw	a1,36(sp)
 70026b0:	03412423          	sw	s4,40(sp)
 70026b4:	03312623          	sw	s3,44(sp)
 70026b8:	02810823          	sb	s0,48(sp)
 70026bc:	02010593          	add	a1,sp,32
 70026c0:	02b12c23          	sw	a1,56(sp)
 70026c4:	070065b7          	lui	a1,0x7006
 70026c8:	8b858593          	add	a1,a1,-1864 # 70058b8 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17hcc37e585bdb54418E>
 70026cc:	02b12e23          	sw	a1,60(sp)
 70026d0:	06010593          	add	a1,sp,96
 70026d4:	00b12023          	sw	a1,0(sp)
 70026d8:	00400413          	li	s0,4
 70026dc:	00810223          	sb	s0,4(sp)
 70026e0:	070075b7          	lui	a1,0x7007
 70026e4:	63c58593          	add	a1,a1,1596 # 700763c <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.52>
 70026e8:	04b12423          	sw	a1,72(sp)
 70026ec:	04a12623          	sw	a0,76(sp)
 70026f0:	04012823          	sw	zero,80(sp)
 70026f4:	03810513          	add	a0,sp,56
 70026f8:	04a12c23          	sw	a0,88(sp)
 70026fc:	00100513          	li	a0,1
 7002700:	04a12e23          	sw	a0,92(sp)
 7002704:	07008537          	lui	a0,0x7008
 7002708:	f6050593          	add	a1,a0,-160 # 7007f60 <anon.9912995c2a2ef8a5d0c3af439f111538.44.llvm.6387882789376083808>
 700270c:	00010513          	mv	a0,sp
 7002710:	04810613          	add	a2,sp,72
 7002714:	00003097          	auipc	ra,0x3
 7002718:	714080e7          	jalr	1812(ra) # 7005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>
 700271c:	00414583          	lbu	a1,4(sp)
 7002720:	14050c63          	beqz	a0,7002878 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x234>
 7002724:	32858263          	beq	a1,s0,7002a48 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x404>
 7002728:	00414503          	lbu	a0,4(sp)
 700272c:	00300593          	li	a1,3
 7002730:	30b51c63          	bne	a0,a1,7002a48 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x404>
 7002734:	00812403          	lw	s0,8(sp)
 7002738:	0c40006f          	j	70027fc <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x1b8>
 700273c:	00058493          	mv	s1,a1
 7002740:	00000513          	li	a0,0
 7002744:	00001097          	auipc	ra,0x1
 7002748:	09c080e7          	jalr	156(ra) # 70037e0 <_ZN3std9panicking11panic_count17LOCAL_PANIC_COUNT7__getit17hce72445e52496182E.llvm.14256562575406249000>
 700274c:	02051863          	bnez	a0,700277c <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x138>
 7002750:	07008537          	lui	a0,0x7008
 7002754:	cbb50513          	add	a0,a0,-837 # 7007cbb <anon.e5acf19516f4a9cd5b82bd5981941ef5.15.llvm.13949807993874650229>
 7002758:	070085b7          	lui	a1,0x7008
 700275c:	d0458693          	add	a3,a1,-764 # 7007d04 <anon.e5acf19516f4a9cd5b82bd5981941ef5.16.llvm.13949807993874650229>
 7002760:	070085b7          	lui	a1,0x7008
 7002764:	dd858713          	add	a4,a1,-552 # 7007dd8 <anon.e5acf19516f4a9cd5b82bd5981941ef5.18.llvm.13949807993874650229>
 7002768:	04600593          	li	a1,70
 700276c:	06010613          	add	a2,sp,96
 7002770:	00004097          	auipc	ra,0x4
 7002774:	450080e7          	jalr	1104(ra) # 7006bc0 <_ZN4core6result13unwrap_failed17hf6bc9b148a5ba21eE>
 7002778:	c0001073          	unimp
 700277c:	00052583          	lw	a1,0(a0)
 7002780:	00158a93          	add	s5,a1,1
 7002784:	00200593          	li	a1,2
 7002788:	01552023          	sw	s5,0(a0)
 700278c:	1355f663          	bgeu	a1,s5,70028b8 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x274>
 7002790:	06010513          	add	a0,sp,96
 7002794:	02a12023          	sw	a0,32(sp)
 7002798:	00400413          	li	s0,4
 700279c:	02810223          	sb	s0,36(sp)
 70027a0:	07007537          	lui	a0,0x7007
 70027a4:	5f050513          	add	a0,a0,1520 # 70075f0 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.49>
 70027a8:	04a12423          	sw	a0,72(sp)
 70027ac:	00100513          	li	a0,1
 70027b0:	04a12623          	sw	a0,76(sp)
 70027b4:	04012823          	sw	zero,80(sp)
 70027b8:	07007537          	lui	a0,0x7007
 70027bc:	35c50513          	add	a0,a0,860 # 700735c <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.19>
 70027c0:	04a12c23          	sw	a0,88(sp)
 70027c4:	04012e23          	sw	zero,92(sp)
 70027c8:	07008537          	lui	a0,0x7008
 70027cc:	f6050593          	add	a1,a0,-160 # 7007f60 <anon.9912995c2a2ef8a5d0c3af439f111538.44.llvm.6387882789376083808>
 70027d0:	02010513          	add	a0,sp,32
 70027d4:	04810613          	add	a2,sp,72
 70027d8:	00003097          	auipc	ra,0x3
 70027dc:	650080e7          	jalr	1616(ra) # 7005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>
 70027e0:	02414583          	lbu	a1,36(sp)
 70027e4:	04050a63          	beqz	a0,7002838 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x1f4>
 70027e8:	26858063          	beq	a1,s0,7002a48 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x404>
 70027ec:	02414503          	lbu	a0,36(sp)
 70027f0:	00300593          	li	a1,3
 70027f4:	24b51a63          	bne	a0,a1,7002a48 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x404>
 70027f8:	02812403          	lw	s0,40(sp)
 70027fc:	00442583          	lw	a1,4(s0)
 7002800:	00042503          	lw	a0,0(s0)
 7002804:	0005a583          	lw	a1,0(a1)
 7002808:	000580e7          	jalr	a1
 700280c:	00442503          	lw	a0,4(s0)
 7002810:	00452583          	lw	a1,4(a0)
 7002814:	00058a63          	beqz	a1,7002828 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x1e4>
 7002818:	00852603          	lw	a2,8(a0)
 700281c:	00042503          	lw	a0,0(s0)
 7002820:	ffffe097          	auipc	ra,0xffffe
 7002824:	e0c080e7          	jalr	-500(ra) # 700062c <__rust_dealloc>
 7002828:	00c00593          	li	a1,12
 700282c:	00400613          	li	a2,4
 7002830:	00040513          	mv	a0,s0
 7002834:	20c0006f          	j	7002a40 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x3fc>
 7002838:	00300513          	li	a0,3
 700283c:	20a59663          	bne	a1,a0,7002a48 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x404>
 7002840:	02812403          	lw	s0,40(sp)
 7002844:	00442583          	lw	a1,4(s0)
 7002848:	00042503          	lw	a0,0(s0)
 700284c:	0005a583          	lw	a1,0(a1)
 7002850:	000580e7          	jalr	a1
 7002854:	00442503          	lw	a0,4(s0)
 7002858:	00452583          	lw	a1,4(a0)
 700285c:	00058a63          	beqz	a1,7002870 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x22c>
 7002860:	00852603          	lw	a2,8(a0)
 7002864:	00042503          	lw	a0,0(s0)
 7002868:	ffffe097          	auipc	ra,0xffffe
 700286c:	dc4080e7          	jalr	-572(ra) # 700062c <__rust_dealloc>
 7002870:	02812503          	lw	a0,40(sp)
 7002874:	1c40006f          	j	7002a38 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x3f4>
 7002878:	00300513          	li	a0,3
 700287c:	1ca59663          	bne	a1,a0,7002a48 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x404>
 7002880:	00812403          	lw	s0,8(sp)
 7002884:	00442583          	lw	a1,4(s0)
 7002888:	00042503          	lw	a0,0(s0)
 700288c:	0005a583          	lw	a1,0(a1)
 7002890:	000580e7          	jalr	a1
 7002894:	00442503          	lw	a0,4(s0)
 7002898:	00452583          	lw	a1,4(a0)
 700289c:	00058a63          	beqz	a1,70028b0 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x26c>
 70028a0:	00852603          	lw	a2,8(a0)
 70028a4:	00042503          	lw	a0,0(s0)
 70028a8:	ffffe097          	auipc	ra,0xffffe
 70028ac:	d84080e7          	jalr	-636(ra) # 700062c <__rust_dealloc>
 70028b0:	00812503          	lw	a0,8(sp)
 70028b4:	1840006f          	j	7002a38 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x3f4>
 70028b8:	00080537          	lui	a0,0x80
 70028bc:	08c52583          	lw	a1,140(a0) # 8008c <_ZN3std9panicking4HOOK17hc34a69cb6aba852fE>
 70028c0:	01412423          	sw	s4,8(sp)
 70028c4:	01312623          	sw	s3,12(sp)
 70028c8:	00810823          	sb	s0,16(sp)
 70028cc:	0205ce63          	bltz	a1,7002908 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x2c4>
 70028d0:	00158593          	add	a1,a1,1
 70028d4:	08b52623          	sw	a1,140(a0)
 70028d8:	08c50513          	add	a0,a0,140
 70028dc:	00852983          	lw	s3,8(a0)
 70028e0:	0104a583          	lw	a1,16(s1)
 70028e4:	00090513          	mv	a0,s2
 70028e8:	000580e7          	jalr	a1
 70028ec:	00a12023          	sw	a0,0(sp)
 70028f0:	00b12223          	sw	a1,4(sp)
 70028f4:	0a099e63          	bnez	s3,70029b0 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x36c>
 70028f8:	00010513          	mv	a0,sp
 70028fc:	fffff097          	auipc	ra,0xfffff
 7002900:	41c080e7          	jalr	1052(ra) # 7001d18 <_ZN3std9panicking12default_hook17h02c6ee80d4a668f9E>
 7002904:	0c80006f          	j	70029cc <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x388>
 7002908:	07007537          	lui	a0,0x7007
 700290c:	70450513          	add	a0,a0,1796 # 7007704 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.60>
 7002910:	02a12023          	sw	a0,32(sp)
 7002914:	00100513          	li	a0,1
 7002918:	02a12223          	sw	a0,36(sp)
 700291c:	02012423          	sw	zero,40(sp)
 7002920:	070075b7          	lui	a1,0x7007
 7002924:	35c58593          	add	a1,a1,860 # 700735c <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.19>
 7002928:	02b12823          	sw	a1,48(sp)
 700292c:	02012a23          	sw	zero,52(sp)
 7002930:	02010593          	add	a1,sp,32
 7002934:	00b12c23          	sw	a1,24(sp)
 7002938:	070065b7          	lui	a1,0x7006
 700293c:	dcc58593          	add	a1,a1,-564 # 7005dcc <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h267b675037d12153E>
 7002940:	00b12e23          	sw	a1,28(sp)
 7002944:	06010593          	add	a1,sp,96
 7002948:	02b12c23          	sw	a1,56(sp)
 700294c:	00400413          	li	s0,4
 7002950:	02810e23          	sb	s0,60(sp)
 7002954:	070075b7          	lui	a1,0x7007
 7002958:	37458593          	add	a1,a1,884 # 7007374 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.21>
 700295c:	04b12423          	sw	a1,72(sp)
 7002960:	00200593          	li	a1,2
 7002964:	04b12623          	sw	a1,76(sp)
 7002968:	04012823          	sw	zero,80(sp)
 700296c:	01810593          	add	a1,sp,24
 7002970:	04b12c23          	sw	a1,88(sp)
 7002974:	04a12e23          	sw	a0,92(sp)
 7002978:	07008537          	lui	a0,0x7008
 700297c:	f6050593          	add	a1,a0,-160 # 7007f60 <anon.9912995c2a2ef8a5d0c3af439f111538.44.llvm.6387882789376083808>
 7002980:	03810513          	add	a0,sp,56
 7002984:	04810613          	add	a2,sp,72
 7002988:	00003097          	auipc	ra,0x3
 700298c:	4a0080e7          	jalr	1184(ra) # 7005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>
 7002990:	03c14583          	lbu	a1,60(sp)
 7002994:	06050463          	beqz	a0,70029fc <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x3b8>
 7002998:	0a858863          	beq	a1,s0,7002a48 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x404>
 700299c:	03c14503          	lbu	a0,60(sp)
 70029a0:	00300593          	li	a1,3
 70029a4:	0ab51263          	bne	a0,a1,7002a48 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x404>
 70029a8:	04012403          	lw	s0,64(sp)
 70029ac:	e51ff06f          	j	70027fc <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x1b8>
 70029b0:	00080537          	lui	a0,0x80
 70029b4:	08c50513          	add	a0,a0,140 # 8008c <_ZN3std9panicking4HOOK17hc34a69cb6aba852fE>
 70029b8:	00c52583          	lw	a1,12(a0)
 70029bc:	00852503          	lw	a0,8(a0)
 70029c0:	0145a603          	lw	a2,20(a1)
 70029c4:	00010593          	mv	a1,sp
 70029c8:	000600e7          	jalr	a2
 70029cc:	00080537          	lui	a0,0x80
 70029d0:	08c52583          	lw	a1,140(a0) # 8008c <_ZN3std9panicking4HOOK17hc34a69cb6aba852fE>
 70029d4:	fff58593          	add	a1,a1,-1
 70029d8:	002ab613          	sltiu	a2,s5,2
 70029dc:	00867633          	and	a2,a2,s0
 70029e0:	08b52623          	sw	a1,140(a0)
 70029e4:	06060663          	beqz	a2,7002a50 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x40c>
 70029e8:	00090513          	mv	a0,s2
 70029ec:	00048593          	mv	a1,s1
 70029f0:	00000097          	auipc	ra,0x0
 70029f4:	07c080e7          	jalr	124(ra) # 7002a6c <rust_panic>
 70029f8:	c0001073          	unimp
 70029fc:	00300513          	li	a0,3
 7002a00:	04a59463          	bne	a1,a0,7002a48 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x404>
 7002a04:	04012403          	lw	s0,64(sp)
 7002a08:	00442583          	lw	a1,4(s0)
 7002a0c:	00042503          	lw	a0,0(s0)
 7002a10:	0005a583          	lw	a1,0(a1)
 7002a14:	000580e7          	jalr	a1
 7002a18:	00442503          	lw	a0,4(s0)
 7002a1c:	00452583          	lw	a1,4(a0)
 7002a20:	00058a63          	beqz	a1,7002a34 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x3f0>
 7002a24:	00852603          	lw	a2,8(a0)
 7002a28:	00042503          	lw	a0,0(s0)
 7002a2c:	ffffe097          	auipc	ra,0xffffe
 7002a30:	c00080e7          	jalr	-1024(ra) # 700062c <__rust_dealloc>
 7002a34:	04012503          	lw	a0,64(sp)
 7002a38:	00c00593          	li	a1,12
 7002a3c:	00400613          	li	a2,4
 7002a40:	ffffe097          	auipc	ra,0xffffe
 7002a44:	bec080e7          	jalr	-1044(ra) # 700062c <__rust_dealloc>
 7002a48:	c0001073          	unimp
 7002a4c:	c0001073          	unimp
 7002a50:	06010513          	add	a0,sp,96
 7002a54:	02a12023          	sw	a0,32(sp)
 7002a58:	00400413          	li	s0,4
 7002a5c:	02810223          	sb	s0,36(sp)
 7002a60:	07007537          	lui	a0,0x7007
 7002a64:	67850513          	add	a0,a0,1656 # 7007678 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.54>
 7002a68:	d41ff06f          	j	70027a8 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E+0x164>

07002a6c <rust_panic>:
 7002a6c:	f9010113          	add	sp,sp,-112
 7002a70:	06112623          	sw	ra,108(sp)
 7002a74:	06812423          	sw	s0,104(sp)
 7002a78:	00a12023          	sw	a0,0(sp)
 7002a7c:	00b12223          	sw	a1,4(sp)
 7002a80:	00010513          	mv	a0,sp
 7002a84:	00003097          	auipc	ra,0x3
 7002a88:	88c080e7          	jalr	-1908(ra) # 7005310 <__rust_start_panic>
 7002a8c:	00a12623          	sw	a0,12(sp)
 7002a90:	00c10513          	add	a0,sp,12
 7002a94:	02a12823          	sw	a0,48(sp)
 7002a98:	07007537          	lui	a0,0x7007
 7002a9c:	e1450513          	add	a0,a0,-492 # 7006e14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17heab9e780deef2c77E>
 7002aa0:	02a12a23          	sw	a0,52(sp)
 7002aa4:	07007537          	lui	a0,0x7007
 7002aa8:	6e050513          	add	a0,a0,1760 # 70076e0 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.58>
 7002aac:	00a12c23          	sw	a0,24(sp)
 7002ab0:	00100513          	li	a0,1
 7002ab4:	00a12e23          	sw	a0,28(sp)
 7002ab8:	02012023          	sw	zero,32(sp)
 7002abc:	03010593          	add	a1,sp,48
 7002ac0:	02b12423          	sw	a1,40(sp)
 7002ac4:	02a12623          	sw	a0,44(sp)
 7002ac8:	01810593          	add	a1,sp,24
 7002acc:	00b12823          	sw	a1,16(sp)
 7002ad0:	070065b7          	lui	a1,0x7006
 7002ad4:	dcc58593          	add	a1,a1,-564 # 7005dcc <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h267b675037d12153E>
 7002ad8:	00b12a23          	sw	a1,20(sp)
 7002adc:	06010593          	add	a1,sp,96
 7002ae0:	02b12c23          	sw	a1,56(sp)
 7002ae4:	00400413          	li	s0,4
 7002ae8:	02810e23          	sb	s0,60(sp)
 7002aec:	070075b7          	lui	a1,0x7007
 7002af0:	37458593          	add	a1,a1,884 # 7007374 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.21>
 7002af4:	04b12423          	sw	a1,72(sp)
 7002af8:	00200593          	li	a1,2
 7002afc:	04b12623          	sw	a1,76(sp)
 7002b00:	04012823          	sw	zero,80(sp)
 7002b04:	01010593          	add	a1,sp,16
 7002b08:	04b12c23          	sw	a1,88(sp)
 7002b0c:	04a12e23          	sw	a0,92(sp)
 7002b10:	07008537          	lui	a0,0x7008
 7002b14:	f6050593          	add	a1,a0,-160 # 7007f60 <anon.9912995c2a2ef8a5d0c3af439f111538.44.llvm.6387882789376083808>
 7002b18:	03810513          	add	a0,sp,56
 7002b1c:	04810613          	add	a2,sp,72
 7002b20:	00003097          	auipc	ra,0x3
 7002b24:	308080e7          	jalr	776(ra) # 7005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>
 7002b28:	03c14583          	lbu	a1,60(sp)
 7002b2c:	04050a63          	beqz	a0,7002b80 <rust_panic+0x114>
 7002b30:	08858e63          	beq	a1,s0,7002bcc <rust_panic+0x160>
 7002b34:	03c14503          	lbu	a0,60(sp)
 7002b38:	00300593          	li	a1,3
 7002b3c:	08b51863          	bne	a0,a1,7002bcc <rust_panic+0x160>
 7002b40:	04012403          	lw	s0,64(sp)
 7002b44:	00442583          	lw	a1,4(s0)
 7002b48:	00042503          	lw	a0,0(s0)
 7002b4c:	0005a583          	lw	a1,0(a1)
 7002b50:	000580e7          	jalr	a1
 7002b54:	00442503          	lw	a0,4(s0)
 7002b58:	00452583          	lw	a1,4(a0)
 7002b5c:	00058a63          	beqz	a1,7002b70 <rust_panic+0x104>
 7002b60:	00852603          	lw	a2,8(a0)
 7002b64:	00042503          	lw	a0,0(s0)
 7002b68:	ffffe097          	auipc	ra,0xffffe
 7002b6c:	ac4080e7          	jalr	-1340(ra) # 700062c <__rust_dealloc>
 7002b70:	00c00593          	li	a1,12
 7002b74:	00400613          	li	a2,4
 7002b78:	00040513          	mv	a0,s0
 7002b7c:	0480006f          	j	7002bc4 <rust_panic+0x158>
 7002b80:	00300513          	li	a0,3
 7002b84:	04a59463          	bne	a1,a0,7002bcc <rust_panic+0x160>
 7002b88:	04012403          	lw	s0,64(sp)
 7002b8c:	00442583          	lw	a1,4(s0)
 7002b90:	00042503          	lw	a0,0(s0)
 7002b94:	0005a583          	lw	a1,0(a1)
 7002b98:	000580e7          	jalr	a1
 7002b9c:	00442503          	lw	a0,4(s0)
 7002ba0:	00452583          	lw	a1,4(a0)
 7002ba4:	00058a63          	beqz	a1,7002bb8 <rust_panic+0x14c>
 7002ba8:	00852603          	lw	a2,8(a0)
 7002bac:	00042503          	lw	a0,0(s0)
 7002bb0:	ffffe097          	auipc	ra,0xffffe
 7002bb4:	a7c080e7          	jalr	-1412(ra) # 700062c <__rust_dealloc>
 7002bb8:	04012503          	lw	a0,64(sp)
 7002bbc:	00c00593          	li	a1,12
 7002bc0:	00400613          	li	a2,4
 7002bc4:	ffffe097          	auipc	ra,0xffffe
 7002bc8:	a68080e7          	jalr	-1432(ra) # 700062c <__rust_dealloc>
 7002bcc:	c0001073          	unimp
 7002bd0:	c0001073          	unimp

07002bd4 <_ZN5alloc7raw_vec11finish_grow17haf4e4f69c085f82fE.llvm.11684207183902173254>:
 7002bd4:	ff010113          	add	sp,sp,-16
 7002bd8:	00112623          	sw	ra,12(sp)
 7002bdc:	00812423          	sw	s0,8(sp)
 7002be0:	00912223          	sw	s1,4(sp)
 7002be4:	01212023          	sw	s2,0(sp)
 7002be8:	00058493          	mv	s1,a1
 7002bec:	00050413          	mv	s0,a0
 7002bf0:	04060063          	beqz	a2,7002c30 <_ZN5alloc7raw_vec11finish_grow17haf4e4f69c085f82fE.llvm.11684207183902173254+0x5c>
 7002bf4:	0404c063          	bltz	s1,7002c34 <_ZN5alloc7raw_vec11finish_grow17haf4e4f69c085f82fE.llvm.11684207183902173254+0x60>
 7002bf8:	00060913          	mv	s2,a2
 7002bfc:	0086a503          	lw	a0,8(a3) # 7000008 <.Lpcrel_hi1>
 7002c00:	04050063          	beqz	a0,7002c40 <_ZN5alloc7raw_vec11finish_grow17haf4e4f69c085f82fE.llvm.11684207183902173254+0x6c>
 7002c04:	0046a583          	lw	a1,4(a3)
 7002c08:	02058c63          	beqz	a1,7002c40 <_ZN5alloc7raw_vec11finish_grow17haf4e4f69c085f82fE.llvm.11684207183902173254+0x6c>
 7002c0c:	0006a503          	lw	a0,0(a3)
 7002c10:	00090613          	mv	a2,s2
 7002c14:	00048693          	mv	a3,s1
 7002c18:	ffffe097          	auipc	ra,0xffffe
 7002c1c:	a1c080e7          	jalr	-1508(ra) # 7000634 <__rust_realloc>
 7002c20:	02051c63          	bnez	a0,7002c58 <_ZN5alloc7raw_vec11finish_grow17haf4e4f69c085f82fE.llvm.11684207183902173254+0x84>
 7002c24:	00942223          	sw	s1,4(s0)
 7002c28:	01242423          	sw	s2,8(s0)
 7002c2c:	00c0006f          	j	7002c38 <_ZN5alloc7raw_vec11finish_grow17haf4e4f69c085f82fE.llvm.11684207183902173254+0x64>
 7002c30:	00942223          	sw	s1,4(s0)
 7002c34:	00042423          	sw	zero,8(s0)
 7002c38:	00100593          	li	a1,1
 7002c3c:	0280006f          	j	7002c64 <_ZN5alloc7raw_vec11finish_grow17haf4e4f69c085f82fE.llvm.11684207183902173254+0x90>
 7002c40:	04048063          	beqz	s1,7002c80 <_ZN5alloc7raw_vec11finish_grow17haf4e4f69c085f82fE.llvm.11684207183902173254+0xac>
 7002c44:	00048513          	mv	a0,s1
 7002c48:	00090593          	mv	a1,s2
 7002c4c:	ffffe097          	auipc	ra,0xffffe
 7002c50:	9d8080e7          	jalr	-1576(ra) # 7000624 <__rust_alloc>
 7002c54:	fc0508e3          	beqz	a0,7002c24 <_ZN5alloc7raw_vec11finish_grow17haf4e4f69c085f82fE.llvm.11684207183902173254+0x50>
 7002c58:	00000593          	li	a1,0
 7002c5c:	00a42223          	sw	a0,4(s0)
 7002c60:	00942423          	sw	s1,8(s0)
 7002c64:	00b42023          	sw	a1,0(s0)
 7002c68:	00c12083          	lw	ra,12(sp)
 7002c6c:	00812403          	lw	s0,8(sp)
 7002c70:	00412483          	lw	s1,4(sp)
 7002c74:	00012903          	lw	s2,0(sp)
 7002c78:	01010113          	add	sp,sp,16
 7002c7c:	00008067          	ret
 7002c80:	00090513          	mv	a0,s2
 7002c84:	fc051ae3          	bnez	a0,7002c58 <_ZN5alloc7raw_vec11finish_grow17haf4e4f69c085f82fE.llvm.11684207183902173254+0x84>
 7002c88:	f9dff06f          	j	7002c24 <_ZN5alloc7raw_vec11finish_grow17haf4e4f69c085f82fE.llvm.11684207183902173254+0x50>

07002c8c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbf2177df1888a4f8E>:
 7002c8c:	fd010113          	add	sp,sp,-48
 7002c90:	02112623          	sw	ra,44(sp)
 7002c94:	02812423          	sw	s0,40(sp)
 7002c98:	02912223          	sw	s1,36(sp)
 7002c9c:	00158593          	add	a1,a1,1
 7002ca0:	08058a63          	beqz	a1,7002d34 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbf2177df1888a4f8E+0xa8>
 7002ca4:	00050413          	mv	s0,a0
 7002ca8:	00452503          	lw	a0,4(a0)
 7002cac:	00151493          	sll	s1,a0,0x1
 7002cb0:	0295f863          	bgeu	a1,s1,7002ce0 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbf2177df1888a4f8E+0x54>
 7002cb4:	00800593          	li	a1,8
 7002cb8:	0295fa63          	bgeu	a1,s1,7002cec <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbf2177df1888a4f8E+0x60>
 7002cbc:	fff4c593          	not	a1,s1
 7002cc0:	01f5d613          	srl	a2,a1,0x1f
 7002cc4:	02050c63          	beqz	a0,7002cfc <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbf2177df1888a4f8E+0x70>
 7002cc8:	00042583          	lw	a1,0(s0)
 7002ccc:	00b12c23          	sw	a1,24(sp)
 7002cd0:	00a12e23          	sw	a0,28(sp)
 7002cd4:	00100513          	li	a0,1
 7002cd8:	02a12023          	sw	a0,32(sp)
 7002cdc:	0240006f          	j	7002d00 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbf2177df1888a4f8E+0x74>
 7002ce0:	00058493          	mv	s1,a1
 7002ce4:	00800593          	li	a1,8
 7002ce8:	fc95eae3          	bltu	a1,s1,7002cbc <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbf2177df1888a4f8E+0x30>
 7002cec:	00800493          	li	s1,8
 7002cf0:	fff4c593          	not	a1,s1
 7002cf4:	01f5d613          	srl	a2,a1,0x1f
 7002cf8:	fc0518e3          	bnez	a0,7002cc8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbf2177df1888a4f8E+0x3c>
 7002cfc:	02012023          	sw	zero,32(sp)
 7002d00:	00810513          	add	a0,sp,8
 7002d04:	01810693          	add	a3,sp,24
 7002d08:	00048593          	mv	a1,s1
 7002d0c:	00000097          	auipc	ra,0x0
 7002d10:	ec8080e7          	jalr	-312(ra) # 7002bd4 <_ZN5alloc7raw_vec11finish_grow17haf4e4f69c085f82fE.llvm.11684207183902173254>
 7002d14:	00812583          	lw	a1,8(sp)
 7002d18:	00c12503          	lw	a0,12(sp)
 7002d1c:	02058263          	beqz	a1,7002d40 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbf2177df1888a4f8E+0xb4>
 7002d20:	01012583          	lw	a1,16(sp)
 7002d24:	80000637          	lui	a2,0x80000
 7002d28:	00160613          	add	a2,a2,1 # 80000001 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x78ff7a0a>
 7002d2c:	00c58e63          	beq	a1,a2,7002d48 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbf2177df1888a4f8E+0xbc>
 7002d30:	02059663          	bnez	a1,7002d5c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbf2177df1888a4f8E+0xd0>
 7002d34:	00002097          	auipc	ra,0x2
 7002d38:	5e4080e7          	jalr	1508(ra) # 7005318 <_ZN5alloc7raw_vec17capacity_overflow17h59e3baefeac9f928E>
 7002d3c:	c0001073          	unimp
 7002d40:	00a42023          	sw	a0,0(s0)
 7002d44:	00942223          	sw	s1,4(s0)
 7002d48:	02c12083          	lw	ra,44(sp)
 7002d4c:	02812403          	lw	s0,40(sp)
 7002d50:	02412483          	lw	s1,36(sp)
 7002d54:	03010113          	add	sp,sp,48
 7002d58:	00008067          	ret
 7002d5c:	00002097          	auipc	ra,0x2
 7002d60:	600080e7          	jalr	1536(ra) # 700535c <_ZN5alloc5alloc18handle_alloc_error17hf138f09b4614ca73E>
 7002d64:	c0001073          	unimp

07002d68 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE>:
 7002d68:	fd010113          	add	sp,sp,-48
 7002d6c:	02112623          	sw	ra,44(sp)
 7002d70:	02812423          	sw	s0,40(sp)
 7002d74:	02912223          	sw	s1,36(sp)
 7002d78:	00c58633          	add	a2,a1,a2
 7002d7c:	08b66a63          	bltu	a2,a1,7002e10 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE+0xa8>
 7002d80:	00050413          	mv	s0,a0
 7002d84:	00452503          	lw	a0,4(a0)
 7002d88:	00151493          	sll	s1,a0,0x1
 7002d8c:	02967863          	bgeu	a2,s1,7002dbc <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE+0x54>
 7002d90:	00800593          	li	a1,8
 7002d94:	0295fa63          	bgeu	a1,s1,7002dc8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE+0x60>
 7002d98:	fff4c593          	not	a1,s1
 7002d9c:	01f5d613          	srl	a2,a1,0x1f
 7002da0:	02050c63          	beqz	a0,7002dd8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE+0x70>
 7002da4:	00042583          	lw	a1,0(s0)
 7002da8:	00b12c23          	sw	a1,24(sp)
 7002dac:	00a12e23          	sw	a0,28(sp)
 7002db0:	00100513          	li	a0,1
 7002db4:	02a12023          	sw	a0,32(sp)
 7002db8:	0240006f          	j	7002ddc <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE+0x74>
 7002dbc:	00060493          	mv	s1,a2
 7002dc0:	00800593          	li	a1,8
 7002dc4:	fc95eae3          	bltu	a1,s1,7002d98 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE+0x30>
 7002dc8:	00800493          	li	s1,8
 7002dcc:	fff4c593          	not	a1,s1
 7002dd0:	01f5d613          	srl	a2,a1,0x1f
 7002dd4:	fc0518e3          	bnez	a0,7002da4 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE+0x3c>
 7002dd8:	02012023          	sw	zero,32(sp)
 7002ddc:	00810513          	add	a0,sp,8
 7002de0:	01810693          	add	a3,sp,24
 7002de4:	00048593          	mv	a1,s1
 7002de8:	00000097          	auipc	ra,0x0
 7002dec:	dec080e7          	jalr	-532(ra) # 7002bd4 <_ZN5alloc7raw_vec11finish_grow17haf4e4f69c085f82fE.llvm.11684207183902173254>
 7002df0:	00812583          	lw	a1,8(sp)
 7002df4:	00c12503          	lw	a0,12(sp)
 7002df8:	02058263          	beqz	a1,7002e1c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE+0xb4>
 7002dfc:	01012583          	lw	a1,16(sp)
 7002e00:	80000637          	lui	a2,0x80000
 7002e04:	00160613          	add	a2,a2,1 # 80000001 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x78ff7a0a>
 7002e08:	00c58e63          	beq	a1,a2,7002e24 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE+0xbc>
 7002e0c:	02059663          	bnez	a1,7002e38 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE+0xd0>
 7002e10:	00002097          	auipc	ra,0x2
 7002e14:	508080e7          	jalr	1288(ra) # 7005318 <_ZN5alloc7raw_vec17capacity_overflow17h59e3baefeac9f928E>
 7002e18:	c0001073          	unimp
 7002e1c:	00a42023          	sw	a0,0(s0)
 7002e20:	00942223          	sw	s1,4(s0)
 7002e24:	02c12083          	lw	ra,44(sp)
 7002e28:	02812403          	lw	s0,40(sp)
 7002e2c:	02412483          	lw	s1,36(sp)
 7002e30:	03010113          	add	sp,sp,48
 7002e34:	00008067          	ret
 7002e38:	00002097          	auipc	ra,0x2
 7002e3c:	524080e7          	jalr	1316(ra) # 700535c <_ZN5alloc5alloc18handle_alloc_error17hf138f09b4614ca73E>
 7002e40:	c0001073          	unimp

07002e44 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h6efdb3fb06d956c3E>:
 7002e44:	331f3537          	lui	a0,0x331f3
 7002e48:	a9a50513          	add	a0,a0,-1382 # 331f2a9a <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x2c1ea4a3>
 7002e4c:	282745b7          	lui	a1,0x28274
 7002e50:	e7158593          	add	a1,a1,-399 # 28273e71 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x2126b87a>
 7002e54:	00008067          	ret

07002e58 <_ZN4core3ptr47drop_in_place$LT$core..cell..BorrowMutError$GT$17h56c9c403e0e86d8cE.llvm.9006096014459121332>:
 7002e58:	00008067          	ret

07002e5c <_ZN4core3ptr70drop_in_place$LT$std..panicking..begin_panic_handler..PanicPayload$GT$17h756dfdb2da90ec61E.llvm.9006096014459121332>:
 7002e5c:	00050593          	mv	a1,a0
 7002e60:	00452503          	lw	a0,4(a0)
 7002e64:	00050c63          	beqz	a0,7002e7c <_ZN4core3ptr70drop_in_place$LT$std..panicking..begin_panic_handler..PanicPayload$GT$17h756dfdb2da90ec61E.llvm.9006096014459121332+0x20>
 7002e68:	0085a583          	lw	a1,8(a1)
 7002e6c:	00058863          	beqz	a1,7002e7c <_ZN4core3ptr70drop_in_place$LT$std..panicking..begin_panic_handler..PanicPayload$GT$17h756dfdb2da90ec61E.llvm.9006096014459121332+0x20>
 7002e70:	00100613          	li	a2,1
 7002e74:	ffffd317          	auipc	t1,0xffffd
 7002e78:	7b830067          	jr	1976(t1) # 700062c <__rust_dealloc>
 7002e7c:	00008067          	ret

07002e80 <_ZN4core3ptr88drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h6a115e993ca80286E.llvm.9006096014459121332>:
 7002e80:	ff010113          	add	sp,sp,-16
 7002e84:	00112623          	sw	ra,12(sp)
 7002e88:	00812423          	sw	s0,8(sp)
 7002e8c:	00912223          	sw	s1,4(sp)
 7002e90:	00050413          	mv	s0,a0
 7002e94:	00454503          	lbu	a0,4(a0)
 7002e98:	00300593          	li	a1,3
 7002e9c:	04b51c63          	bne	a0,a1,7002ef4 <_ZN4core3ptr88drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h6a115e993ca80286E.llvm.9006096014459121332+0x74>
 7002ea0:	00842483          	lw	s1,8(s0)
 7002ea4:	0044a583          	lw	a1,4(s1)
 7002ea8:	0004a503          	lw	a0,0(s1)
 7002eac:	0005a583          	lw	a1,0(a1)
 7002eb0:	000580e7          	jalr	a1
 7002eb4:	0044a503          	lw	a0,4(s1)
 7002eb8:	00452583          	lw	a1,4(a0)
 7002ebc:	00058a63          	beqz	a1,7002ed0 <_ZN4core3ptr88drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h6a115e993ca80286E.llvm.9006096014459121332+0x50>
 7002ec0:	00852603          	lw	a2,8(a0)
 7002ec4:	0004a503          	lw	a0,0(s1)
 7002ec8:	ffffd097          	auipc	ra,0xffffd
 7002ecc:	764080e7          	jalr	1892(ra) # 700062c <__rust_dealloc>
 7002ed0:	00842503          	lw	a0,8(s0)
 7002ed4:	00c00593          	li	a1,12
 7002ed8:	00400613          	li	a2,4
 7002edc:	00c12083          	lw	ra,12(sp)
 7002ee0:	00812403          	lw	s0,8(sp)
 7002ee4:	00412483          	lw	s1,4(sp)
 7002ee8:	01010113          	add	sp,sp,16
 7002eec:	ffffd317          	auipc	t1,0xffffd
 7002ef0:	74030067          	jr	1856(t1) # 700062c <__rust_dealloc>
 7002ef4:	00c12083          	lw	ra,12(sp)
 7002ef8:	00812403          	lw	s0,8(sp)
 7002efc:	00412483          	lw	s1,4(sp)
 7002f00:	01010113          	add	sp,sp,16
 7002f04:	00008067          	ret

07002f08 <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E>:
 7002f08:	fa010113          	add	sp,sp,-96
 7002f0c:	04112e23          	sw	ra,92(sp)
 7002f10:	04812c23          	sw	s0,88(sp)
 7002f14:	04912a23          	sw	s1,84(sp)
 7002f18:	05212823          	sw	s2,80(sp)
 7002f1c:	05312623          	sw	s3,76(sp)
 7002f20:	05412423          	sw	s4,72(sp)
 7002f24:	05512223          	sw	s5,68(sp)
 7002f28:	05612023          	sw	s6,64(sp)
 7002f2c:	03712e23          	sw	s7,60(sp)
 7002f30:	03812c23          	sw	s8,56(sp)
 7002f34:	03912a23          	sw	s9,52(sp)
 7002f38:	03a12823          	sw	s10,48(sp)
 7002f3c:	03b12623          	sw	s11,44(sp)
 7002f40:	00a12623          	sw	a0,12(sp)
 7002f44:	1a068263          	beqz	a3,70030e8 <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0x1e0>
 7002f48:	00058493          	mv	s1,a1
 7002f4c:	00000513          	li	a0,0
 7002f50:	200005b7          	lui	a1,0x20000
 7002f54:	fff58b93          	add	s7,a1,-1 # 1fffffff <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x18ff7a08>
 7002f58:	fff68593          	add	a1,a3,-1
 7002f5c:	0175f5b3          	and	a1,a1,s7
 7002f60:	00158593          	add	a1,a1,1
 7002f64:	00369713          	sll	a4,a3,0x3
 7002f68:	00460793          	add	a5,a2,4
 7002f6c:	0007a803          	lw	a6,0(a5)
 7002f70:	00081c63          	bnez	a6,7002f88 <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0x80>
 7002f74:	00150513          	add	a0,a0,1
 7002f78:	ff870713          	add	a4,a4,-8
 7002f7c:	00878793          	add	a5,a5,8
 7002f80:	fe0716e3          	bnez	a4,7002f6c <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0x64>
 7002f84:	00058513          	mv	a0,a1
 7002f88:	22a6ea63          	bltu	a3,a0,70031bc <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0x2b4>
 7002f8c:	40a68933          	sub	s2,a3,a0
 7002f90:	14090c63          	beqz	s2,70030e8 <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0x1e0>
 7002f94:	00351513          	sll	a0,a0,0x3
 7002f98:	00a60633          	add	a2,a2,a0
 7002f9c:	0100006f          	j	7002fac <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0xa4>
 7002fa0:	1cd99263          	bne	s3,a3,7003164 <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0x25c>
 7002fa4:	40a90933          	sub	s2,s2,a0
 7002fa8:	14090063          	beqz	s2,70030e8 <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0x1e0>
 7002fac:	00000993          	li	s3,0
 7002fb0:	00060413          	mv	s0,a2
 7002fb4:	00391c93          	sll	s9,s2,0x3
 7002fb8:	00460d13          	add	s10,a2,4
 7002fbc:	01960db3          	add	s11,a2,s9
 7002fc0:	000c8513          	mv	a0,s9
 7002fc4:	000d0593          	mv	a1,s10
 7002fc8:	0005a603          	lw	a2,0(a1)
 7002fcc:	013609b3          	add	s3,a2,s3
 7002fd0:	ff850513          	add	a0,a0,-8
 7002fd4:	00858593          	add	a1,a1,8
 7002fd8:	fe0518e3          	bnez	a0,7002fc8 <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0xc0>
 7002fdc:	0084a583          	lw	a1,8(s1)
 7002fe0:	0044a503          	lw	a0,4(s1)
 7002fe4:	40b50533          	sub	a0,a0,a1
 7002fe8:	0f356663          	bltu	a0,s3,70030d4 <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0x1cc>
 7002fec:	0084aa03          	lw	s4,8(s1)
 7002ff0:	00040c13          	mv	s8,s0
 7002ff4:	02c0006f          	j	7003020 <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0x118>
 7002ff8:	0004a503          	lw	a0,0(s1)
 7002ffc:	01450533          	add	a0,a0,s4
 7003000:	000b0593          	mv	a1,s6
 7003004:	000a8613          	mv	a2,s5
 7003008:	ffffe097          	auipc	ra,0xffffe
 700300c:	f24080e7          	jalr	-220(ra) # 7000f2c <memcpy>
 7003010:	015a0a33          	add	s4,s4,s5
 7003014:	008c0c13          	add	s8,s8,8
 7003018:	0144a423          	sw	s4,8(s1)
 700301c:	03bc0a63          	beq	s8,s11,7003050 <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0x148>
 7003020:	0044a503          	lw	a0,4(s1)
 7003024:	004c2a83          	lw	s5,4(s8)
 7003028:	000c2b03          	lw	s6,0(s8)
 700302c:	41450533          	sub	a0,a0,s4
 7003030:	fd5574e3          	bgeu	a0,s5,7002ff8 <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0xf0>
 7003034:	00048513          	mv	a0,s1
 7003038:	000a0593          	mv	a1,s4
 700303c:	000a8613          	mv	a2,s5
 7003040:	00000097          	auipc	ra,0x0
 7003044:	d28080e7          	jalr	-728(ra) # 7002d68 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE>
 7003048:	0084aa03          	lw	s4,8(s1)
 700304c:	fadff06f          	j	7002ff8 <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0xf0>
 7003050:	0e098063          	beqz	s3,7003130 <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0x228>
 7003054:	00000513          	li	a0,0
 7003058:	00000693          	li	a3,0
 700305c:	017905b3          	add	a1,s2,s7
 7003060:	0175f5b3          	and	a1,a1,s7
 7003064:	00158593          	add	a1,a1,1
 7003068:	000d2603          	lw	a2,0(s10)
 700306c:	00d60633          	add	a2,a2,a3
 7003070:	02c9e063          	bltu	s3,a2,7003090 <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0x188>
 7003074:	00150513          	add	a0,a0,1
 7003078:	ff8c8c93          	add	s9,s9,-8
 700307c:	008d0d13          	add	s10,s10,8
 7003080:	00060693          	mv	a3,a2
 7003084:	fe0c92e3          	bnez	s9,7003068 <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0x160>
 7003088:	00060693          	mv	a3,a2
 700308c:	00058513          	mv	a0,a1
 7003090:	0aa96e63          	bltu	s2,a0,700314c <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0x244>
 7003094:	00351593          	sll	a1,a0,0x3
 7003098:	00b40633          	add	a2,s0,a1
 700309c:	f0a902e3          	beq	s2,a0,7002fa0 <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0x98>
 70030a0:	00b40733          	add	a4,s0,a1
 70030a4:	00472583          	lw	a1,4(a4)
 70030a8:	40d986b3          	sub	a3,s3,a3
 70030ac:	0ed5ec63          	bltu	a1,a3,70031a4 <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0x29c>
 70030b0:	00062783          	lw	a5,0(a2)
 70030b4:	00470713          	add	a4,a4,4
 70030b8:	00d787b3          	add	a5,a5,a3
 70030bc:	40d585b3          	sub	a1,a1,a3
 70030c0:	00f62023          	sw	a5,0(a2)
 70030c4:	00b72023          	sw	a1,0(a4)
 70030c8:	40a90933          	sub	s2,s2,a0
 70030cc:	ee0910e3          	bnez	s2,7002fac <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0xa4>
 70030d0:	0180006f          	j	70030e8 <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0x1e0>
 70030d4:	00048513          	mv	a0,s1
 70030d8:	00098613          	mv	a2,s3
 70030dc:	00000097          	auipc	ra,0x0
 70030e0:	c8c080e7          	jalr	-884(ra) # 7002d68 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE>
 70030e4:	f09ff06f          	j	7002fec <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0xe4>
 70030e8:	00400513          	li	a0,4
 70030ec:	00c12583          	lw	a1,12(sp)
 70030f0:	00a58023          	sb	a0,0(a1)
 70030f4:	05c12083          	lw	ra,92(sp)
 70030f8:	05812403          	lw	s0,88(sp)
 70030fc:	05412483          	lw	s1,84(sp)
 7003100:	05012903          	lw	s2,80(sp)
 7003104:	04c12983          	lw	s3,76(sp)
 7003108:	04812a03          	lw	s4,72(sp)
 700310c:	04412a83          	lw	s5,68(sp)
 7003110:	04012b03          	lw	s6,64(sp)
 7003114:	03c12b83          	lw	s7,60(sp)
 7003118:	03812c03          	lw	s8,56(sp)
 700311c:	03412c83          	lw	s9,52(sp)
 7003120:	03012d03          	lw	s10,48(sp)
 7003124:	02c12d83          	lw	s11,44(sp)
 7003128:	06010113          	add	sp,sp,96
 700312c:	00008067          	ret
 7003130:	00200513          	li	a0,2
 7003134:	00c12583          	lw	a1,12(sp)
 7003138:	00a5a023          	sw	a0,0(a1)
 700313c:	07008537          	lui	a0,0x7008
 7003140:	86850513          	add	a0,a0,-1944 # 7007868 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.29>
 7003144:	00a5a223          	sw	a0,4(a1)
 7003148:	fadff06f          	j	70030f4 <_ZN3std2io5Write18write_all_vectored17h53672f7411a2da64E+0x1ec>
 700314c:	070075b7          	lui	a1,0x7007
 7003150:	7ec58613          	add	a2,a1,2028 # 70077ec <.Lanon.bc0186976f2b4070236a5106e84f3a4e.23>
 7003154:	00090593          	mv	a1,s2
 7003158:	00003097          	auipc	ra,0x3
 700315c:	bfc080e7          	jalr	-1028(ra) # 7005d54 <_ZN4core5slice5index26slice_start_index_len_fail17h4ce9409af94c9ed9E>
 7003160:	c0001073          	unimp
 7003164:	07008537          	lui	a0,0x7008
 7003168:	83450513          	add	a0,a0,-1996 # 7007834 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.26>
 700316c:	00a12823          	sw	a0,16(sp)
 7003170:	00100513          	li	a0,1
 7003174:	00a12a23          	sw	a0,20(sp)
 7003178:	00012c23          	sw	zero,24(sp)
 700317c:	07007537          	lui	a0,0x7007
 7003180:	70c50513          	add	a0,a0,1804 # 700770c <anon.bc0186976f2b4070236a5106e84f3a4e.5.llvm.9006096014459121332>
 7003184:	02a12023          	sw	a0,32(sp)
 7003188:	02012223          	sw	zero,36(sp)
 700318c:	07008537          	lui	a0,0x7008
 7003190:	83c50593          	add	a1,a0,-1988 # 700783c <.Lanon.bc0186976f2b4070236a5106e84f3a4e.27>
 7003194:	01010513          	add	a0,sp,16
 7003198:	00003097          	auipc	ra,0x3
 700319c:	7d0080e7          	jalr	2000(ra) # 7006968 <_ZN4core9panicking9panic_fmt17hc6785b61922481b6E>
 70031a0:	c0001073          	unimp
 70031a4:	07007537          	lui	a0,0x7007
 70031a8:	7fc50613          	add	a2,a0,2044 # 70077fc <.Lanon.bc0186976f2b4070236a5106e84f3a4e.24>
 70031ac:	00068513          	mv	a0,a3
 70031b0:	00003097          	auipc	ra,0x3
 70031b4:	ba4080e7          	jalr	-1116(ra) # 7005d54 <_ZN4core5slice5index26slice_start_index_len_fail17h4ce9409af94c9ed9E>
 70031b8:	c0001073          	unimp
 70031bc:	070075b7          	lui	a1,0x7007
 70031c0:	7ec58613          	add	a2,a1,2028 # 70077ec <.Lanon.bc0186976f2b4070236a5106e84f3a4e.23>
 70031c4:	00068593          	mv	a1,a3
 70031c8:	00003097          	auipc	ra,0x3
 70031cc:	b8c080e7          	jalr	-1140(ra) # 7005d54 <_ZN4core5slice5index26slice_start_index_len_fail17h4ce9409af94c9ed9E>
 70031d0:	c0001073          	unimp

070031d4 <_ZN3std2io5Write9write_fmt17h8e20f596a435614eE>:
 70031d4:	fc010113          	add	sp,sp,-64
 70031d8:	02112e23          	sw	ra,60(sp)
 70031dc:	02812c23          	sw	s0,56(sp)
 70031e0:	02912a23          	sw	s1,52(sp)
 70031e4:	00050413          	mv	s0,a0
 70031e8:	00b12423          	sw	a1,8(sp)
 70031ec:	01462503          	lw	a0,20(a2)
 70031f0:	01062583          	lw	a1,16(a2)
 70031f4:	00c62683          	lw	a3,12(a2)
 70031f8:	00862703          	lw	a4,8(a2)
 70031fc:	02a12623          	sw	a0,44(sp)
 7003200:	02b12423          	sw	a1,40(sp)
 7003204:	02d12223          	sw	a3,36(sp)
 7003208:	02e12023          	sw	a4,32(sp)
 700320c:	00462503          	lw	a0,4(a2)
 7003210:	00062583          	lw	a1,0(a2)
 7003214:	00400493          	li	s1,4
 7003218:	00910623          	sb	s1,12(sp)
 700321c:	00a12e23          	sw	a0,28(sp)
 7003220:	00b12c23          	sw	a1,24(sp)
 7003224:	07008537          	lui	a0,0x7008
 7003228:	87450593          	add	a1,a0,-1932 # 7007874 <anon.bc0186976f2b4070236a5106e84f3a4e.30.llvm.9006096014459121332>
 700322c:	00810513          	add	a0,sp,8
 7003230:	01810613          	add	a2,sp,24
 7003234:	00003097          	auipc	ra,0x3
 7003238:	bf4080e7          	jalr	-1036(ra) # 7005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>
 700323c:	02050263          	beqz	a0,7003260 <_ZN3std2io5Write9write_fmt17h8e20f596a435614eE+0x8c>
 7003240:	00c14503          	lbu	a0,12(sp)
 7003244:	06951a63          	bne	a0,s1,70032b8 <_ZN3std2io5Write9write_fmt17h8e20f596a435614eE+0xe4>
 7003248:	00200513          	li	a0,2
 700324c:	00a42023          	sw	a0,0(s0)
 7003250:	07008537          	lui	a0,0x7008
 7003254:	89c50513          	add	a0,a0,-1892 # 700789c <anon.bc0186976f2b4070236a5106e84f3a4e.32.llvm.9006096014459121332>
 7003258:	00a42223          	sw	a0,4(s0)
 700325c:	06c0006f          	j	70032c8 <_ZN3std2io5Write9write_fmt17h8e20f596a435614eE+0xf4>
 7003260:	00c14503          	lbu	a0,12(sp)
 7003264:	00300593          	li	a1,3
 7003268:	00940023          	sb	s1,0(s0)
 700326c:	04b51e63          	bne	a0,a1,70032c8 <_ZN3std2io5Write9write_fmt17h8e20f596a435614eE+0xf4>
 7003270:	01012403          	lw	s0,16(sp)
 7003274:	00442583          	lw	a1,4(s0)
 7003278:	00042503          	lw	a0,0(s0)
 700327c:	0005a583          	lw	a1,0(a1)
 7003280:	000580e7          	jalr	a1
 7003284:	00442503          	lw	a0,4(s0)
 7003288:	00452583          	lw	a1,4(a0)
 700328c:	00058a63          	beqz	a1,70032a0 <_ZN3std2io5Write9write_fmt17h8e20f596a435614eE+0xcc>
 7003290:	00852603          	lw	a2,8(a0)
 7003294:	00042503          	lw	a0,0(s0)
 7003298:	ffffd097          	auipc	ra,0xffffd
 700329c:	394080e7          	jalr	916(ra) # 700062c <__rust_dealloc>
 70032a0:	01012503          	lw	a0,16(sp)
 70032a4:	00c00593          	li	a1,12
 70032a8:	00400613          	li	a2,4
 70032ac:	ffffd097          	auipc	ra,0xffffd
 70032b0:	380080e7          	jalr	896(ra) # 700062c <__rust_dealloc>
 70032b4:	0140006f          	j	70032c8 <_ZN3std2io5Write9write_fmt17h8e20f596a435614eE+0xf4>
 70032b8:	01012503          	lw	a0,16(sp)
 70032bc:	00c12583          	lw	a1,12(sp)
 70032c0:	00a42223          	sw	a0,4(s0)
 70032c4:	00b42023          	sw	a1,0(s0)
 70032c8:	03c12083          	lw	ra,60(sp)
 70032cc:	03812403          	lw	s0,56(sp)
 70032d0:	03412483          	lw	s1,52(sp)
 70032d4:	04010113          	add	sp,sp,64
 70032d8:	00008067          	ret

070032dc <_ZN3std10sys_common9backtrace5print17hade71476ee17ba10E>:
 70032dc:	fb010113          	add	sp,sp,-80
 70032e0:	04112623          	sw	ra,76(sp)
 70032e4:	04812423          	sw	s0,72(sp)
 70032e8:	04912223          	sw	s1,68(sp)
 70032ec:	05212023          	sw	s2,64(sp)
 70032f0:	03312e23          	sw	s3,60(sp)
 70032f4:	03412c23          	sw	s4,56(sp)
 70032f8:	03512a23          	sw	s5,52(sp)
 70032fc:	00080737          	lui	a4,0x80
 7003300:	02a74783          	lbu	a5,42(a4) # 8002a <_ZN3std10sys_common9backtrace4lock4LOCK17h1bec61bf73b6c5eeE.llvm.9006096014459121332>
 7003304:	00050913          	mv	s2,a0
 7003308:	0017f513          	and	a0,a5,1
 700330c:	00a10423          	sb	a0,8(sp)
 7003310:	00100413          	li	s0,1
 7003314:	02870523          	sb	s0,42(a4)
 7003318:	0e051263          	bnez	a0,70033fc <_ZN3std10sys_common9backtrace5print17hade71476ee17ba10E+0x120>
 700331c:	00068993          	mv	s3,a3
 7003320:	00060a13          	mv	s4,a2
 7003324:	00058493          	mv	s1,a1
 7003328:	00080537          	lui	a0,0x80
 700332c:	03452503          	lw	a0,52(a0) # 80034 <_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h9bef03536075a61aE>
 7003330:	800005b7          	lui	a1,0x80000
 7003334:	fff58a93          	add	s5,a1,-1 # 7fffffff <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x78ff7a08>
 7003338:	01557533          	and	a0,a0,s5
 700333c:	08051a63          	bnez	a0,70033d0 <_ZN3std10sys_common9backtrace5print17hade71476ee17ba10E+0xf4>
 7003340:	024a2683          	lw	a3,36(s4)
 7003344:	01310ba3          	sb	s3,23(sp)
 7003348:	01710513          	add	a0,sp,23
 700334c:	00a12423          	sw	a0,8(sp)
 7003350:	07003537          	lui	a0,0x7003
 7003354:	44850513          	add	a0,a0,1096 # 7003448 <_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17ha54cb1accd80ab5dE>
 7003358:	00a12623          	sw	a0,12(sp)
 700335c:	07008537          	lui	a0,0x7008
 7003360:	8a850513          	add	a0,a0,-1880 # 70078a8 <anon.bc0186976f2b4070236a5106e84f3a4e.50.llvm.9006096014459121332>
 7003364:	00a12c23          	sw	a0,24(sp)
 7003368:	00100513          	li	a0,1
 700336c:	00a12e23          	sw	a0,28(sp)
 7003370:	02012023          	sw	zero,32(sp)
 7003374:	00810593          	add	a1,sp,8
 7003378:	02b12423          	sw	a1,40(sp)
 700337c:	02a12623          	sw	a0,44(sp)
 7003380:	01810613          	add	a2,sp,24
 7003384:	00090513          	mv	a0,s2
 7003388:	00048593          	mv	a1,s1
 700338c:	000680e7          	jalr	a3
 7003390:	00040a63          	beqz	s0,70033a4 <_ZN3std10sys_common9backtrace5print17hade71476ee17ba10E+0xc8>
 7003394:	00080537          	lui	a0,0x80
 7003398:	03452503          	lw	a0,52(a0) # 80034 <_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h9bef03536075a61aE>
 700339c:	01557533          	and	a0,a0,s5
 70033a0:	04051063          	bnez	a0,70033e0 <_ZN3std10sys_common9backtrace5print17hade71476ee17ba10E+0x104>
 70033a4:	00080537          	lui	a0,0x80
 70033a8:	02050523          	sb	zero,42(a0) # 8002a <_ZN3std10sys_common9backtrace4lock4LOCK17h1bec61bf73b6c5eeE.llvm.9006096014459121332>
 70033ac:	04c12083          	lw	ra,76(sp)
 70033b0:	04812403          	lw	s0,72(sp)
 70033b4:	04412483          	lw	s1,68(sp)
 70033b8:	04012903          	lw	s2,64(sp)
 70033bc:	03c12983          	lw	s3,60(sp)
 70033c0:	03812a03          	lw	s4,56(sp)
 70033c4:	03412a83          	lw	s5,52(sp)
 70033c8:	05010113          	add	sp,sp,80
 70033cc:	00008067          	ret
 70033d0:	00000097          	auipc	ra,0x0
 70033d4:	3b0080e7          	jalr	944(ra) # 7003780 <_ZN3std9panicking11panic_count17is_zero_slow_path17hc7714d9f060b0c3aE>
 70033d8:	00050413          	mv	s0,a0
 70033dc:	f65ff06f          	j	7003340 <_ZN3std10sys_common9backtrace5print17hade71476ee17ba10E+0x64>
 70033e0:	00000097          	auipc	ra,0x0
 70033e4:	3a0080e7          	jalr	928(ra) # 7003780 <_ZN3std9panicking11panic_count17is_zero_slow_path17hc7714d9f060b0c3aE>
 70033e8:	fa051ee3          	bnez	a0,70033a4 <_ZN3std10sys_common9backtrace5print17hade71476ee17ba10E+0xc8>
 70033ec:	00080537          	lui	a0,0x80
 70033f0:	00100593          	li	a1,1
 70033f4:	02b505a3          	sb	a1,43(a0) # 8002b <_ZN3std10sys_common9backtrace4lock4LOCK17h1bec61bf73b6c5eeE.llvm.9006096014459121332+0x1>
 70033f8:	fadff06f          	j	70033a4 <_ZN3std10sys_common9backtrace5print17hade71476ee17ba10E+0xc8>
 70033fc:	07008537          	lui	a0,0x7008
 7003400:	a3850513          	add	a0,a0,-1480 # 7007a38 <anon.eff0a5df67630090483337dc173c00d6.102.llvm.17917170917373548271>
 7003404:	00a12c23          	sw	a0,24(sp)
 7003408:	00812e23          	sw	s0,28(sp)
 700340c:	02012023          	sw	zero,32(sp)
 7003410:	07008537          	lui	a0,0x7008
 7003414:	a3450513          	add	a0,a0,-1484 # 7007a34 <anon.eff0a5df67630090483337dc173c00d6.100.llvm.17917170917373548271>
 7003418:	02a12423          	sw	a0,40(sp)
 700341c:	02012623          	sw	zero,44(sp)
 7003420:	07008537          	lui	a0,0x7008
 7003424:	a3450613          	add	a2,a0,-1484 # 7007a34 <anon.eff0a5df67630090483337dc173c00d6.100.llvm.17917170917373548271>
 7003428:	07008537          	lui	a0,0x7008
 700342c:	b1c50713          	add	a4,a0,-1252 # 7007b1c <anon.eff0a5df67630090483337dc173c00d6.104.llvm.17917170917373548271>
 7003430:	00810593          	add	a1,sp,8
 7003434:	01810693          	add	a3,sp,24
 7003438:	00000513          	li	a0,0
 700343c:	00000097          	auipc	ra,0x0
 7003440:	2e0080e7          	jalr	736(ra) # 700371c <_ZN4core9panicking13assert_failed17h88b995a5c9938d12E>
 7003444:	c0001073          	unimp

07003448 <_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17ha54cb1accd80ab5dE>:
 7003448:	fd010113          	add	sp,sp,-48
 700344c:	02112623          	sw	ra,44(sp)
 7003450:	02812423          	sw	s0,40(sp)
 7003454:	02912223          	sw	s1,36(sp)
 7003458:	03212023          	sw	s2,32(sp)
 700345c:	00058413          	mv	s0,a1
 7003460:	00054903          	lbu	s2,0(a0)
 7003464:	07008537          	lui	a0,0x7008
 7003468:	8c450513          	add	a0,a0,-1852 # 70078c4 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.66>
 700346c:	00a12423          	sw	a0,8(sp)
 7003470:	00100493          	li	s1,1
 7003474:	00912623          	sw	s1,12(sp)
 7003478:	00012823          	sw	zero,16(sp)
 700347c:	07007537          	lui	a0,0x7007
 7003480:	70c50513          	add	a0,a0,1804 # 700770c <anon.bc0186976f2b4070236a5106e84f3a4e.5.llvm.9006096014459121332>
 7003484:	00a12c23          	sw	a0,24(sp)
 7003488:	00012e23          	sw	zero,28(sp)
 700348c:	00810593          	add	a1,sp,8
 7003490:	00040513          	mv	a0,s0
 7003494:	00003097          	auipc	ra,0x3
 7003498:	314080e7          	jalr	788(ra) # 70067a8 <_ZN4core3fmt9Formatter9write_fmt17h8cb580f8479113a4E>
 700349c:	04051463          	bnez	a0,70034e4 <_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17ha54cb1accd80ab5dE+0x9c>
 70034a0:	04091063          	bnez	s2,70034e0 <_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17ha54cb1accd80ab5dE+0x98>
 70034a4:	07008537          	lui	a0,0x7008
 70034a8:	92450513          	add	a0,a0,-1756 # 7007924 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.69>
 70034ac:	00a12423          	sw	a0,8(sp)
 70034b0:	00100493          	li	s1,1
 70034b4:	00912623          	sw	s1,12(sp)
 70034b8:	00012823          	sw	zero,16(sp)
 70034bc:	07007537          	lui	a0,0x7007
 70034c0:	70c50513          	add	a0,a0,1804 # 700770c <anon.bc0186976f2b4070236a5106e84f3a4e.5.llvm.9006096014459121332>
 70034c4:	00a12c23          	sw	a0,24(sp)
 70034c8:	00012e23          	sw	zero,28(sp)
 70034cc:	00810593          	add	a1,sp,8
 70034d0:	00040513          	mv	a0,s0
 70034d4:	00003097          	auipc	ra,0x3
 70034d8:	2d4080e7          	jalr	724(ra) # 70067a8 <_ZN4core3fmt9Formatter9write_fmt17h8cb580f8479113a4E>
 70034dc:	00051463          	bnez	a0,70034e4 <_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17ha54cb1accd80ab5dE+0x9c>
 70034e0:	00000493          	li	s1,0
 70034e4:	00048513          	mv	a0,s1
 70034e8:	02c12083          	lw	ra,44(sp)
 70034ec:	02812403          	lw	s0,40(sp)
 70034f0:	02412483          	lw	s1,36(sp)
 70034f4:	02012903          	lw	s2,32(sp)
 70034f8:	03010113          	add	sp,sp,48
 70034fc:	00008067          	ret

07003500 <_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17he1d35fc3f1089e6cE>:
 7003500:	ff010113          	add	sp,sp,-16
 7003504:	00852583          	lw	a1,8(a0)
 7003508:	00452603          	lw	a2,4(a0)
 700350c:	00052503          	lw	a0,0(a0)
 7003510:	00b12423          	sw	a1,8(sp)
 7003514:	00c12223          	sw	a2,4(sp)
 7003518:	00a12023          	sw	a0,0(sp)
 700351c:	00010513          	mv	a0,sp
 7003520:	00000097          	auipc	ra,0x0
 7003524:	00c080e7          	jalr	12(ra) # 700352c <_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h7a6c6d2b16c5d83fE.llvm.9006096014459121332>
 7003528:	c0001073          	unimp

0700352c <_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h7a6c6d2b16c5d83fE.llvm.9006096014459121332>:
 700352c:	fe010113          	add	sp,sp,-32
 7003530:	00112e23          	sw	ra,28(sp)
 7003534:	00812c23          	sw	s0,24(sp)
 7003538:	00912a23          	sw	s1,20(sp)
 700353c:	01212823          	sw	s2,16(sp)
 7003540:	00050413          	mv	s0,a0
 7003544:	00052503          	lw	a0,0(a0)
 7003548:	00452603          	lw	a2,4(a0)
 700354c:	01452583          	lw	a1,20(a0)
 7003550:	00100693          	li	a3,1
 7003554:	00d60c63          	beq	a2,a3,700356c <_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h7a6c6d2b16c5d83fE.llvm.9006096014459121332+0x40>
 7003558:	06061063          	bnez	a2,70035b8 <_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h7a6c6d2b16c5d83fE.llvm.9006096014459121332+0x8c>
 700355c:	04059e63          	bnez	a1,70035b8 <_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h7a6c6d2b16c5d83fE.llvm.9006096014459121332+0x8c>
 7003560:	07007537          	lui	a0,0x7007
 7003564:	70c50513          	add	a0,a0,1804 # 700770c <anon.bc0186976f2b4070236a5106e84f3a4e.5.llvm.9006096014459121332>
 7003568:	0140006f          	j	700357c <_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h7a6c6d2b16c5d83fE.llvm.9006096014459121332+0x50>
 700356c:	04059663          	bnez	a1,70035b8 <_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h7a6c6d2b16c5d83fE.llvm.9006096014459121332+0x8c>
 7003570:	00052583          	lw	a1,0(a0)
 7003574:	0005a503          	lw	a0,0(a1)
 7003578:	0045a583          	lw	a1,4(a1)
 700357c:	00442483          	lw	s1,4(s0)
 7003580:	00a12023          	sw	a0,0(sp)
 7003584:	00b12223          	sw	a1,4(sp)
 7003588:	00048513          	mv	a0,s1
 700358c:	00002097          	auipc	ra,0x2
 7003590:	314080e7          	jalr	788(ra) # 70058a0 <_ZN4core5panic10panic_info9PanicInfo7message17hf150a2730354cba8E>
 7003594:	00842403          	lw	s0,8(s0)
 7003598:	00050913          	mv	s2,a0
 700359c:	00048513          	mv	a0,s1
 70035a0:	00002097          	auipc	ra,0x2
 70035a4:	310080e7          	jalr	784(ra) # 70058b0 <_ZN4core5panic10panic_info9PanicInfo10can_unwind17hbeb5b276a93a1a25E>
 70035a8:	00050713          	mv	a4,a0
 70035ac:	07008537          	lui	a0,0x7008
 70035b0:	a2050593          	add	a1,a0,-1504 # 7007a20 <anon.bc0186976f2b4070236a5106e84f3a4e.77.llvm.9006096014459121332>
 70035b4:	03c0006f          	j	70035f0 <_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h7a6c6d2b16c5d83fE.llvm.9006096014459121332+0xc4>
 70035b8:	00442483          	lw	s1,4(s0)
 70035bc:	00a12023          	sw	a0,0(sp)
 70035c0:	00012223          	sw	zero,4(sp)
 70035c4:	00048513          	mv	a0,s1
 70035c8:	00002097          	auipc	ra,0x2
 70035cc:	2d8080e7          	jalr	728(ra) # 70058a0 <_ZN4core5panic10panic_info9PanicInfo7message17hf150a2730354cba8E>
 70035d0:	00842403          	lw	s0,8(s0)
 70035d4:	00050913          	mv	s2,a0
 70035d8:	00048513          	mv	a0,s1
 70035dc:	00002097          	auipc	ra,0x2
 70035e0:	2d4080e7          	jalr	724(ra) # 70058b0 <_ZN4core5panic10panic_info9PanicInfo10can_unwind17hbeb5b276a93a1a25E>
 70035e4:	00050713          	mv	a4,a0
 70035e8:	07008537          	lui	a0,0x7008
 70035ec:	a0c50593          	add	a1,a0,-1524 # 7007a0c <anon.bc0186976f2b4070236a5106e84f3a4e.76.llvm.9006096014459121332>
 70035f0:	00010513          	mv	a0,sp
 70035f4:	00090613          	mv	a2,s2
 70035f8:	00040693          	mv	a3,s0
 70035fc:	fffff097          	auipc	ra,0xfffff
 7003600:	048080e7          	jalr	72(ra) # 7002644 <_ZN3std9panicking20rust_panic_with_hook17heb15842d85b8ff86E>
 7003604:	c0001073          	unimp

07003608 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h9740c3a8f539a67cE>:
 7003608:	ff010113          	add	sp,sp,-16
 700360c:	00112623          	sw	ra,12(sp)
 7003610:	00812423          	sw	s0,8(sp)
 7003614:	00052403          	lw	s0,0(a0)
 7003618:	01042583          	lw	a1,16(s0)
 700361c:	00058a63          	beqz	a1,7003630 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h9740c3a8f539a67cE+0x28>
 7003620:	00c42503          	lw	a0,12(s0)
 7003624:	00100613          	li	a2,1
 7003628:	ffffd097          	auipc	ra,0xffffd
 700362c:	004080e7          	jalr	4(ra) # 700062c <__rust_dealloc>
 7003630:	fff00513          	li	a0,-1
 7003634:	02a40c63          	beq	s0,a0,700366c <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h9740c3a8f539a67cE+0x64>
 7003638:	00442503          	lw	a0,4(s0)
 700363c:	fff50593          	add	a1,a0,-1
 7003640:	00100613          	li	a2,1
 7003644:	00b42223          	sw	a1,4(s0)
 7003648:	02c51263          	bne	a0,a2,700366c <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h9740c3a8f539a67cE+0x64>
 700364c:	01800593          	li	a1,24
 7003650:	00400613          	li	a2,4
 7003654:	00040513          	mv	a0,s0
 7003658:	00c12083          	lw	ra,12(sp)
 700365c:	00812403          	lw	s0,8(sp)
 7003660:	01010113          	add	sp,sp,16
 7003664:	ffffd317          	auipc	t1,0xffffd
 7003668:	fc830067          	jr	-56(t1) # 700062c <__rust_dealloc>
 700366c:	00c12083          	lw	ra,12(sp)
 7003670:	00812403          	lw	s0,8(sp)
 7003674:	01010113          	add	sp,sp,16
 7003678:	00008067          	ret

0700367c <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17ha046ddaa357e950cE>:
 700367c:	ff010113          	add	sp,sp,-16
 7003680:	00112623          	sw	ra,12(sp)
 7003684:	00812423          	sw	s0,8(sp)
 7003688:	00052403          	lw	s0,0(a0)
 700368c:	01042503          	lw	a0,16(s0)
 7003690:	02050063          	beqz	a0,70036b0 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17ha046ddaa357e950cE+0x34>
 7003694:	00050023          	sb	zero,0(a0)
 7003698:	01442583          	lw	a1,20(s0)
 700369c:	00058a63          	beqz	a1,70036b0 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17ha046ddaa357e950cE+0x34>
 70036a0:	01042503          	lw	a0,16(s0)
 70036a4:	00100613          	li	a2,1
 70036a8:	ffffd097          	auipc	ra,0xffffd
 70036ac:	f84080e7          	jalr	-124(ra) # 700062c <__rust_dealloc>
 70036b0:	fff00513          	li	a0,-1
 70036b4:	02a40c63          	beq	s0,a0,70036ec <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17ha046ddaa357e950cE+0x70>
 70036b8:	00442503          	lw	a0,4(s0)
 70036bc:	fff50593          	add	a1,a0,-1
 70036c0:	00100613          	li	a2,1
 70036c4:	00b42223          	sw	a1,4(s0)
 70036c8:	02c51263          	bne	a0,a2,70036ec <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17ha046ddaa357e950cE+0x70>
 70036cc:	02000593          	li	a1,32
 70036d0:	00800613          	li	a2,8
 70036d4:	00040513          	mv	a0,s0
 70036d8:	00c12083          	lw	ra,12(sp)
 70036dc:	00812403          	lw	s0,8(sp)
 70036e0:	01010113          	add	sp,sp,16
 70036e4:	ffffd317          	auipc	t1,0xffffd
 70036e8:	f4830067          	jr	-184(t1) # 700062c <__rust_dealloc>
 70036ec:	00c12083          	lw	ra,12(sp)
 70036f0:	00812403          	lw	s0,8(sp)
 70036f4:	01010113          	add	sp,sp,16
 70036f8:	00008067          	ret

070036fc <_ZN3std2io5stdio14OUTPUT_CAPTURE7__getit17hbb9798fd7e0adf8aE.llvm.17917170917373548271>:
 70036fc:	000805b7          	lui	a1,0x80
 7003700:	00c58593          	add	a1,a1,12 # 8000c <_ZN3std2io5stdio14OUTPUT_CAPTURE7__getit5__KEY17hbc01fe8159105c8aE>
 7003704:	00050613          	mv	a2,a0
 7003708:	00058513          	mv	a0,a1
 700370c:	00060593          	mv	a1,a2
 7003710:	00000317          	auipc	t1,0x0
 7003714:	59030067          	jr	1424(t1) # 7003ca0 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E>

07003718 <_ZN4core3ptr29drop_in_place$LT$$RF$bool$GT$17h1e377f45c2407530E.llvm.14256562575406249000>:
 7003718:	00008067          	ret

0700371c <_ZN4core9panicking13assert_failed17h88b995a5c9938d12E>:
 700371c:	fe010113          	add	sp,sp,-32
 7003720:	00070813          	mv	a6,a4
 7003724:	0146a703          	lw	a4,20(a3)
 7003728:	0106a783          	lw	a5,16(a3)
 700372c:	00b12023          	sw	a1,0(sp)
 7003730:	00c12223          	sw	a2,4(sp)
 7003734:	00e12e23          	sw	a4,28(sp)
 7003738:	00f12c23          	sw	a5,24(sp)
 700373c:	00c6a583          	lw	a1,12(a3)
 7003740:	0086a603          	lw	a2,8(a3)
 7003744:	0046a703          	lw	a4,4(a3)
 7003748:	0006a683          	lw	a3,0(a3)
 700374c:	00b12a23          	sw	a1,20(sp)
 7003750:	00c12823          	sw	a2,16(sp)
 7003754:	00e12623          	sw	a4,12(sp)
 7003758:	00d12423          	sw	a3,8(sp)
 700375c:	070085b7          	lui	a1,0x7008
 7003760:	b2c58613          	add	a2,a1,-1236 # 7007b2c <anon.8f6a86c2bc9b382f474d86b741846cce.6.llvm.14256562575406249000>
 7003764:	00010593          	mv	a1,sp
 7003768:	00410693          	add	a3,sp,4
 700376c:	00810793          	add	a5,sp,8
 7003770:	00060713          	mv	a4,a2
 7003774:	00003097          	auipc	ra,0x3
 7003778:	2d8080e7          	jalr	728(ra) # 7006a4c <_ZN4core9panicking19assert_failed_inner17he0576c9d7ff9f73bE>
 700377c:	c0001073          	unimp

07003780 <_ZN3std9panicking11panic_count17is_zero_slow_path17hc7714d9f060b0c3aE>:
 7003780:	ff010113          	add	sp,sp,-16
 7003784:	00112623          	sw	ra,12(sp)
 7003788:	00080537          	lui	a0,0x80
 700378c:	01c50513          	add	a0,a0,28 # 8001c <_ZN3std9panicking11panic_count17LOCAL_PANIC_COUNT7__getit5__KEY17he327123382402121E>
 7003790:	00000593          	li	a1,0
 7003794:	00000097          	auipc	ra,0x0
 7003798:	69c080e7          	jalr	1692(ra) # 7003e30 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9f1bb54295c058d4E>
 700379c:	00050c63          	beqz	a0,70037b4 <_ZN3std9panicking11panic_count17is_zero_slow_path17hc7714d9f060b0c3aE+0x34>
 70037a0:	00052503          	lw	a0,0(a0)
 70037a4:	00153513          	seqz	a0,a0
 70037a8:	00c12083          	lw	ra,12(sp)
 70037ac:	01010113          	add	sp,sp,16
 70037b0:	00008067          	ret
 70037b4:	07008537          	lui	a0,0x7008
 70037b8:	cbb50513          	add	a0,a0,-837 # 7007cbb <anon.e5acf19516f4a9cd5b82bd5981941ef5.15.llvm.13949807993874650229>
 70037bc:	070085b7          	lui	a1,0x7008
 70037c0:	d0458693          	add	a3,a1,-764 # 7007d04 <anon.e5acf19516f4a9cd5b82bd5981941ef5.16.llvm.13949807993874650229>
 70037c4:	070085b7          	lui	a1,0x7008
 70037c8:	dd858713          	add	a4,a1,-552 # 7007dd8 <anon.e5acf19516f4a9cd5b82bd5981941ef5.18.llvm.13949807993874650229>
 70037cc:	04600593          	li	a1,70
 70037d0:	00810613          	add	a2,sp,8
 70037d4:	00003097          	auipc	ra,0x3
 70037d8:	3ec080e7          	jalr	1004(ra) # 7006bc0 <_ZN4core6result13unwrap_failed17hf6bc9b148a5ba21eE>
 70037dc:	c0001073          	unimp

070037e0 <_ZN3std9panicking11panic_count17LOCAL_PANIC_COUNT7__getit17hce72445e52496182E.llvm.14256562575406249000>:
 70037e0:	000805b7          	lui	a1,0x80
 70037e4:	01c58593          	add	a1,a1,28 # 8001c <_ZN3std9panicking11panic_count17LOCAL_PANIC_COUNT7__getit5__KEY17he327123382402121E>
 70037e8:	00050613          	mv	a2,a0
 70037ec:	00058513          	mv	a0,a1
 70037f0:	00060593          	mv	a1,a2
 70037f4:	00000317          	auipc	t1,0x0
 70037f8:	63c30067          	jr	1596(t1) # 7003e30 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9f1bb54295c058d4E>

070037fc <_ZN4core3ptr60drop_in_place$LT$std..sync..mutex..MutexGuard$LT$u64$GT$$GT$17hf95e54caa7e8105fE.llvm.11758424910166210904>:
 70037fc:	ff010113          	add	sp,sp,-16
 7003800:	00112623          	sw	ra,12(sp)
 7003804:	00812423          	sw	s0,8(sp)
 7003808:	0ff5f593          	zext.b	a1,a1
 700380c:	00050413          	mv	s0,a0
 7003810:	00059c63          	bnez	a1,7003828 <_ZN4core3ptr60drop_in_place$LT$std..sync..mutex..MutexGuard$LT$u64$GT$$GT$17hf95e54caa7e8105fE.llvm.11758424910166210904+0x2c>
 7003814:	00080537          	lui	a0,0x80
 7003818:	03452503          	lw	a0,52(a0) # 80034 <_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h9bef03536075a61aE>
 700381c:	00151513          	sll	a0,a0,0x1
 7003820:	00155513          	srl	a0,a0,0x1
 7003824:	00051c63          	bnez	a0,700383c <_ZN4core3ptr60drop_in_place$LT$std..sync..mutex..MutexGuard$LT$u64$GT$$GT$17hf95e54caa7e8105fE.llvm.11758424910166210904+0x40>
 7003828:	00040023          	sb	zero,0(s0)
 700382c:	00c12083          	lw	ra,12(sp)
 7003830:	00812403          	lw	s0,8(sp)
 7003834:	01010113          	add	sp,sp,16
 7003838:	00008067          	ret
 700383c:	00000097          	auipc	ra,0x0
 7003840:	f44080e7          	jalr	-188(ra) # 7003780 <_ZN3std9panicking11panic_count17is_zero_slow_path17hc7714d9f060b0c3aE>
 7003844:	fe0512e3          	bnez	a0,7003828 <_ZN4core3ptr60drop_in_place$LT$std..sync..mutex..MutexGuard$LT$u64$GT$$GT$17hf95e54caa7e8105fE.llvm.11758424910166210904+0x2c>
 7003848:	00100513          	li	a0,1
 700384c:	00a400a3          	sb	a0,1(s0)
 7003850:	fd9ff06f          	j	7003828 <_ZN4core3ptr60drop_in_place$LT$std..sync..mutex..MutexGuard$LT$u64$GT$$GT$17hf95e54caa7e8105fE.llvm.11758424910166210904+0x2c>

07003854 <_ZN3std6thread8ThreadId3new9exhausted17h46db37c5c8bfd225E.llvm.11758424910166210904>:
 7003854:	fe010113          	add	sp,sp,-32
 7003858:	07008537          	lui	a0,0x7008
 700385c:	c3450513          	add	a0,a0,-972 # 7007c34 <anon.ce42269267409fad0f351b7abd853977.20.llvm.11758424910166210904>
 7003860:	00a12423          	sw	a0,8(sp)
 7003864:	00100513          	li	a0,1
 7003868:	00a12623          	sw	a0,12(sp)
 700386c:	00012823          	sw	zero,16(sp)
 7003870:	07008537          	lui	a0,0x7008
 7003874:	b3c50513          	add	a0,a0,-1220 # 7007b3c <anon.ce42269267409fad0f351b7abd853977.12.llvm.11758424910166210904>
 7003878:	00a12c23          	sw	a0,24(sp)
 700387c:	00012e23          	sw	zero,28(sp)
 7003880:	07008537          	lui	a0,0x7008
 7003884:	c3c50593          	add	a1,a0,-964 # 7007c3c <anon.ce42269267409fad0f351b7abd853977.21.llvm.11758424910166210904>
 7003888:	00810513          	add	a0,sp,8
 700388c:	00003097          	auipc	ra,0x3
 7003890:	0dc080e7          	jalr	220(ra) # 7006968 <_ZN4core9panicking9panic_fmt17hc6785b61922481b6E>
 7003894:	c0001073          	unimp

07003898 <_ZN3std6thread6Thread3new17hcc331c91952c9110E>:
 7003898:	fc010113          	add	sp,sp,-64
 700389c:	02112e23          	sw	ra,60(sp)
 70038a0:	02812c23          	sw	s0,56(sp)
 70038a4:	02912a23          	sw	s1,52(sp)
 70038a8:	03212823          	sw	s2,48(sp)
 70038ac:	03312623          	sw	s3,44(sp)
 70038b0:	00058493          	mv	s1,a1
 70038b4:	00050913          	mv	s2,a0
 70038b8:	02000513          	li	a0,32
 70038bc:	00800593          	li	a1,8
 70038c0:	ffffd097          	auipc	ra,0xffffd
 70038c4:	d64080e7          	jalr	-668(ra) # 7000624 <__rust_alloc>
 70038c8:	12050863          	beqz	a0,70039f8 <_ZN3std6thread6Thread3new17hcc331c91952c9110E+0x160>
 70038cc:	00050413          	mv	s0,a0
 70038d0:	00100513          	li	a0,1
 70038d4:	00a42023          	sw	a0,0(s0)
 70038d8:	000805b7          	lui	a1,0x80
 70038dc:	0a05c603          	lbu	a2,160(a1) # 800a0 <_ZN3std6thread8ThreadId3new7COUNTER17he55dc5492a0aa059E.llvm.11758424910166210904>
 70038e0:	00a42223          	sw	a0,4(s0)
 70038e4:	01242823          	sw	s2,16(s0)
 70038e8:	00942a23          	sw	s1,20(s0)
 70038ec:	00167613          	and	a2,a2,1
 70038f0:	00c107a3          	sb	a2,15(sp)
 70038f4:	0aa58023          	sb	a0,160(a1)
 70038f8:	10061a63          	bnez	a2,7003a0c <_ZN3std6thread6Thread3new17hcc331c91952c9110E+0x174>
 70038fc:	00080537          	lui	a0,0x80
 7003900:	03452503          	lw	a0,52(a0) # 80034 <_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h9bef03536075a61aE>
 7003904:	800005b7          	lui	a1,0x80000
 7003908:	fff58993          	add	s3,a1,-1 # 7fffffff <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x78ff7a08>
 700390c:	01357533          	and	a0,a0,s3
 7003910:	08051263          	bnez	a0,7003994 <_ZN3std6thread6Thread3new17hcc331c91952c9110E+0xfc>
 7003914:	00080537          	lui	a0,0x80
 7003918:	0a050513          	add	a0,a0,160 # 800a0 <_ZN3std6thread8ThreadId3new7COUNTER17he55dc5492a0aa059E.llvm.11758424910166210904>
 700391c:	00852603          	lw	a2,8(a0)
 7003920:	00c52583          	lw	a1,12(a0)
 7003924:	00160493          	add	s1,a2,1
 7003928:	00c4b533          	sltu	a0,s1,a2
 700392c:	00a58933          	add	s2,a1,a0
 7003930:	00c4f463          	bgeu	s1,a2,7003938 <_ZN3std6thread6Thread3new17hcc331c91952c9110E+0xa0>
 7003934:	00b93533          	sltu	a0,s2,a1
 7003938:	12051063          	bnez	a0,7003a58 <_ZN3std6thread6Thread3new17hcc331c91952c9110E+0x1c0>
 700393c:	00080537          	lui	a0,0x80
 7003940:	0a050513          	add	a0,a0,160 # 800a0 <_ZN3std6thread8ThreadId3new7COUNTER17he55dc5492a0aa059E.llvm.11758424910166210904>
 7003944:	01252623          	sw	s2,12(a0)
 7003948:	00952423          	sw	s1,8(a0)
 700394c:	00080537          	lui	a0,0x80
 7003950:	03452503          	lw	a0,52(a0) # 80034 <_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h9bef03536075a61aE>
 7003954:	01357533          	and	a0,a0,s3
 7003958:	08051263          	bnez	a0,70039dc <_ZN3std6thread6Thread3new17hcc331c91952c9110E+0x144>
 700395c:	00080537          	lui	a0,0x80
 7003960:	0a050023          	sb	zero,160(a0) # 800a0 <_ZN3std6thread8ThreadId3new7COUNTER17he55dc5492a0aa059E.llvm.11758424910166210904>
 7003964:	01242623          	sw	s2,12(s0)
 7003968:	00942423          	sw	s1,8(s0)
 700396c:	00042c23          	sw	zero,24(s0)
 7003970:	00041e23          	sh	zero,28(s0)
 7003974:	00040513          	mv	a0,s0
 7003978:	03c12083          	lw	ra,60(sp)
 700397c:	03812403          	lw	s0,56(sp)
 7003980:	03412483          	lw	s1,52(sp)
 7003984:	03012903          	lw	s2,48(sp)
 7003988:	02c12983          	lw	s3,44(sp)
 700398c:	04010113          	add	sp,sp,64
 7003990:	00008067          	ret
 7003994:	00000097          	auipc	ra,0x0
 7003998:	dec080e7          	jalr	-532(ra) # 7003780 <_ZN3std9panicking11panic_count17is_zero_slow_path17hc7714d9f060b0c3aE>
 700399c:	000805b7          	lui	a1,0x80
 70039a0:	0a058593          	add	a1,a1,160 # 800a0 <_ZN3std6thread8ThreadId3new7COUNTER17he55dc5492a0aa059E.llvm.11758424910166210904>
 70039a4:	0085a683          	lw	a3,8(a1)
 70039a8:	00c5a603          	lw	a2,12(a1)
 70039ac:	00168493          	add	s1,a3,1
 70039b0:	00d4b5b3          	sltu	a1,s1,a3
 70039b4:	00b60933          	add	s2,a2,a1
 70039b8:	00d4f463          	bgeu	s1,a3,70039c0 <_ZN3std6thread6Thread3new17hcc331c91952c9110E+0x128>
 70039bc:	00c935b3          	sltu	a1,s2,a2
 70039c0:	0a059c63          	bnez	a1,7003a78 <_ZN3std6thread6Thread3new17hcc331c91952c9110E+0x1e0>
 70039c4:	000805b7          	lui	a1,0x80
 70039c8:	0a058593          	add	a1,a1,160 # 800a0 <_ZN3std6thread8ThreadId3new7COUNTER17he55dc5492a0aa059E.llvm.11758424910166210904>
 70039cc:	0125a623          	sw	s2,12(a1)
 70039d0:	0095a423          	sw	s1,8(a1)
 70039d4:	f6051ce3          	bnez	a0,700394c <_ZN3std6thread6Thread3new17hcc331c91952c9110E+0xb4>
 70039d8:	f85ff06f          	j	700395c <_ZN3std6thread6Thread3new17hcc331c91952c9110E+0xc4>
 70039dc:	00000097          	auipc	ra,0x0
 70039e0:	da4080e7          	jalr	-604(ra) # 7003780 <_ZN3std9panicking11panic_count17is_zero_slow_path17hc7714d9f060b0c3aE>
 70039e4:	f6051ce3          	bnez	a0,700395c <_ZN3std6thread6Thread3new17hcc331c91952c9110E+0xc4>
 70039e8:	00080537          	lui	a0,0x80
 70039ec:	00100593          	li	a1,1
 70039f0:	0ab500a3          	sb	a1,161(a0) # 800a1 <_ZN3std6thread8ThreadId3new7COUNTER17he55dc5492a0aa059E.llvm.11758424910166210904+0x1>
 70039f4:	f69ff06f          	j	700395c <_ZN3std6thread6Thread3new17hcc331c91952c9110E+0xc4>
 70039f8:	02000513          	li	a0,32
 70039fc:	00800593          	li	a1,8
 7003a00:	00002097          	auipc	ra,0x2
 7003a04:	95c080e7          	jalr	-1700(ra) # 700535c <_ZN5alloc5alloc18handle_alloc_error17hf138f09b4614ca73E>
 7003a08:	c0001073          	unimp
 7003a0c:	070085b7          	lui	a1,0x7008
 7003a10:	a3858593          	add	a1,a1,-1480 # 7007a38 <anon.eff0a5df67630090483337dc173c00d6.102.llvm.17917170917373548271>
 7003a14:	00b12823          	sw	a1,16(sp)
 7003a18:	00a12a23          	sw	a0,20(sp)
 7003a1c:	00012c23          	sw	zero,24(sp)
 7003a20:	07008537          	lui	a0,0x7008
 7003a24:	a3450513          	add	a0,a0,-1484 # 7007a34 <anon.eff0a5df67630090483337dc173c00d6.100.llvm.17917170917373548271>
 7003a28:	02a12023          	sw	a0,32(sp)
 7003a2c:	02012223          	sw	zero,36(sp)
 7003a30:	07008537          	lui	a0,0x7008
 7003a34:	a3450613          	add	a2,a0,-1484 # 7007a34 <anon.eff0a5df67630090483337dc173c00d6.100.llvm.17917170917373548271>
 7003a38:	07008537          	lui	a0,0x7008
 7003a3c:	b1c50713          	add	a4,a0,-1252 # 7007b1c <anon.eff0a5df67630090483337dc173c00d6.104.llvm.17917170917373548271>
 7003a40:	00f10593          	add	a1,sp,15
 7003a44:	01010693          	add	a3,sp,16
 7003a48:	00000513          	li	a0,0
 7003a4c:	00000097          	auipc	ra,0x0
 7003a50:	cd0080e7          	jalr	-816(ra) # 700371c <_ZN4core9panicking13assert_failed17h88b995a5c9938d12E>
 7003a54:	c0001073          	unimp
 7003a58:	00000593          	li	a1,0
 7003a5c:	00080537          	lui	a0,0x80
 7003a60:	0a050513          	add	a0,a0,160 # 800a0 <_ZN3std6thread8ThreadId3new7COUNTER17he55dc5492a0aa059E.llvm.11758424910166210904>
 7003a64:	00000097          	auipc	ra,0x0
 7003a68:	d98080e7          	jalr	-616(ra) # 70037fc <_ZN4core3ptr60drop_in_place$LT$std..sync..mutex..MutexGuard$LT$u64$GT$$GT$17hf95e54caa7e8105fE.llvm.11758424910166210904>
 7003a6c:	00000097          	auipc	ra,0x0
 7003a70:	de8080e7          	jalr	-536(ra) # 7003854 <_ZN3std6thread8ThreadId3new9exhausted17h46db37c5c8bfd225E.llvm.11758424910166210904>
 7003a74:	c0001073          	unimp
 7003a78:	00154593          	xor	a1,a0,1
 7003a7c:	fe1ff06f          	j	7003a5c <_ZN3std6thread6Thread3new17hcc331c91952c9110E+0x1c4>

07003a80 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17ha66ce87d39b36553E>:
 7003a80:	66a4d537          	lui	a0,0x66a4d
 7003a84:	8eb50513          	add	a0,a0,-1813 # 66a4c8eb <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x5fa442f4>
 7003a88:	7444d5b7          	lui	a1,0x7444d
 7003a8c:	ec758593          	add	a1,a1,-313 # 7444cec7 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x6d4448d0>
 7003a90:	00008067          	ret

07003a94 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6f360459c204b8a7E>:
 7003a94:	00052503          	lw	a0,0(a0)
 7003a98:	00002317          	auipc	t1,0x2
 7003a9c:	acc30067          	jr	-1332(t1) # 7005564 <_ZN70_$LT$core..panic..location..Location$u20$as$u20$core..fmt..Display$GT$3fmt17h21a0255f8d1b0a0fE>

07003aa0 <_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h8c9406c494c65c98E.llvm.12044279608799662234>:
 7003aa0:	ff010113          	add	sp,sp,-16
 7003aa4:	00112623          	sw	ra,12(sp)
 7003aa8:	00812423          	sw	s0,8(sp)
 7003aac:	00912223          	sw	s1,4(sp)
 7003ab0:	00050413          	mv	s0,a0
 7003ab4:	00054503          	lbu	a0,0(a0)
 7003ab8:	00300593          	li	a1,3
 7003abc:	04b51c63          	bne	a0,a1,7003b14 <_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h8c9406c494c65c98E.llvm.12044279608799662234+0x74>
 7003ac0:	00442483          	lw	s1,4(s0)
 7003ac4:	0044a583          	lw	a1,4(s1)
 7003ac8:	0004a503          	lw	a0,0(s1)
 7003acc:	0005a583          	lw	a1,0(a1)
 7003ad0:	000580e7          	jalr	a1
 7003ad4:	0044a503          	lw	a0,4(s1)
 7003ad8:	00452583          	lw	a1,4(a0)
 7003adc:	00058a63          	beqz	a1,7003af0 <_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h8c9406c494c65c98E.llvm.12044279608799662234+0x50>
 7003ae0:	00852603          	lw	a2,8(a0)
 7003ae4:	0004a503          	lw	a0,0(s1)
 7003ae8:	ffffd097          	auipc	ra,0xffffd
 7003aec:	b44080e7          	jalr	-1212(ra) # 700062c <__rust_dealloc>
 7003af0:	00442503          	lw	a0,4(s0)
 7003af4:	00c00593          	li	a1,12
 7003af8:	00400613          	li	a2,4
 7003afc:	00c12083          	lw	ra,12(sp)
 7003b00:	00812403          	lw	s0,8(sp)
 7003b04:	00412483          	lw	s1,4(sp)
 7003b08:	01010113          	add	sp,sp,16
 7003b0c:	ffffd317          	auipc	t1,0xffffd
 7003b10:	b2030067          	jr	-1248(t1) # 700062c <__rust_dealloc>
 7003b14:	00c12083          	lw	ra,12(sp)
 7003b18:	00812403          	lw	s0,8(sp)
 7003b1c:	00412483          	lw	s1,4(sp)
 7003b20:	01010113          	add	sp,sp,16
 7003b24:	00008067          	ret

07003b28 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h4eb2c9aba7a806e6E>:
 7003b28:	fe010113          	add	sp,sp,-32
 7003b2c:	00112e23          	sw	ra,28(sp)
 7003b30:	00812c23          	sw	s0,24(sp)
 7003b34:	00912a23          	sw	s1,20(sp)
 7003b38:	01212823          	sw	s2,16(sp)
 7003b3c:	00050913          	mv	s2,a0
 7003b40:	00052503          	lw	a0,0(a0)
 7003b44:	00058493          	mv	s1,a1
 7003b48:	00050a63          	beqz	a0,7003b5c <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h4eb2c9aba7a806e6E+0x34>
 7003b4c:	00052503          	lw	a0,0(a0)
 7003b50:	00100593          	li	a1,1
 7003b54:	02a5e063          	bltu	a1,a0,7003b74 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h4eb2c9aba7a806e6E+0x4c>
 7003b58:	02c0006f          	j	7003b84 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h4eb2c9aba7a806e6E+0x5c>
 7003b5c:	00090513          	mv	a0,s2
 7003b60:	00000097          	auipc	ra,0x0
 7003b64:	64c080e7          	jalr	1612(ra) # 70041ac <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E>
 7003b68:	00052503          	lw	a0,0(a0)
 7003b6c:	00100593          	li	a1,1
 7003b70:	00a5fa63          	bgeu	a1,a0,7003b84 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h4eb2c9aba7a806e6E+0x5c>
 7003b74:	00052583          	lw	a1,0(a0)
 7003b78:	00058663          	beqz	a1,7003b84 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h4eb2c9aba7a806e6E+0x5c>
 7003b7c:	00450513          	add	a0,a0,4
 7003b80:	0f40006f          	j	7003c74 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h4eb2c9aba7a806e6E+0x14c>
 7003b84:	00092503          	lw	a0,0(s2)
 7003b88:	0c050863          	beqz	a0,7003c58 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h4eb2c9aba7a806e6E+0x130>
 7003b8c:	00052403          	lw	s0,0(a0)
 7003b90:	00100513          	li	a0,1
 7003b94:	0ca40e63          	beq	s0,a0,7003c70 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h4eb2c9aba7a806e6E+0x148>
 7003b98:	02041e63          	bnez	s0,7003bd4 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h4eb2c9aba7a806e6E+0xac>
 7003b9c:	01000513          	li	a0,16
 7003ba0:	00400593          	li	a1,4
 7003ba4:	ffffd097          	auipc	ra,0xffffd
 7003ba8:	a80080e7          	jalr	-1408(ra) # 7000624 <__rust_alloc>
 7003bac:	0e050063          	beqz	a0,7003c8c <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h4eb2c9aba7a806e6E+0x164>
 7003bb0:	00050413          	mv	s0,a0
 7003bb4:	00052023          	sw	zero,0(a0)
 7003bb8:	01252623          	sw	s2,12(a0)
 7003bbc:	00092503          	lw	a0,0(s2)
 7003bc0:	00051863          	bnez	a0,7003bd0 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h4eb2c9aba7a806e6E+0xa8>
 7003bc4:	00090513          	mv	a0,s2
 7003bc8:	00000097          	auipc	ra,0x0
 7003bcc:	5e4080e7          	jalr	1508(ra) # 70041ac <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E>
 7003bd0:	00852023          	sw	s0,0(a0)
 7003bd4:	00048e63          	beqz	s1,7003bf0 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h4eb2c9aba7a806e6E+0xc8>
 7003bd8:	0004a603          	lw	a2,0(s1)
 7003bdc:	0044a503          	lw	a0,4(s1)
 7003be0:	0084a583          	lw	a1,8(s1)
 7003be4:	00100693          	li	a3,1
 7003be8:	0004a023          	sw	zero,0(s1)
 7003bec:	00d60663          	beq	a2,a3,7003bf8 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h4eb2c9aba7a806e6E+0xd0>
 7003bf0:	00000513          	li	a0,0
 7003bf4:	00000593          	li	a1,0
 7003bf8:	00842603          	lw	a2,8(s0)
 7003bfc:	00c12423          	sw	a2,8(sp)
 7003c00:	00442603          	lw	a2,4(s0)
 7003c04:	00c12223          	sw	a2,4(sp)
 7003c08:	00042603          	lw	a2,0(s0)
 7003c0c:	00c12023          	sw	a2,0(sp)
 7003c10:	00100613          	li	a2,1
 7003c14:	00c42023          	sw	a2,0(s0)
 7003c18:	00a42223          	sw	a0,4(s0)
 7003c1c:	00b42423          	sw	a1,8(s0)
 7003c20:	00012503          	lw	a0,0(sp)
 7003c24:	02050663          	beqz	a0,7003c50 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h4eb2c9aba7a806e6E+0x128>
 7003c28:	00812503          	lw	a0,8(sp)
 7003c2c:	02050263          	beqz	a0,7003c50 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h4eb2c9aba7a806e6E+0x128>
 7003c30:	00052583          	lw	a1,0(a0)
 7003c34:	fff58613          	add	a2,a1,-1
 7003c38:	00100693          	li	a3,1
 7003c3c:	00c52023          	sw	a2,0(a0)
 7003c40:	00d59863          	bne	a1,a3,7003c50 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h4eb2c9aba7a806e6E+0x128>
 7003c44:	00810513          	add	a0,sp,8
 7003c48:	00000097          	auipc	ra,0x0
 7003c4c:	a34080e7          	jalr	-1484(ra) # 700367c <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17ha046ddaa357e950cE>
 7003c50:	00440513          	add	a0,s0,4
 7003c54:	0200006f          	j	7003c74 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h4eb2c9aba7a806e6E+0x14c>
 7003c58:	00090513          	mv	a0,s2
 7003c5c:	00000097          	auipc	ra,0x0
 7003c60:	550080e7          	jalr	1360(ra) # 70041ac <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E>
 7003c64:	00052403          	lw	s0,0(a0)
 7003c68:	00100513          	li	a0,1
 7003c6c:	f2a416e3          	bne	s0,a0,7003b98 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h4eb2c9aba7a806e6E+0x70>
 7003c70:	00000513          	li	a0,0
 7003c74:	01c12083          	lw	ra,28(sp)
 7003c78:	01812403          	lw	s0,24(sp)
 7003c7c:	01412483          	lw	s1,20(sp)
 7003c80:	01012903          	lw	s2,16(sp)
 7003c84:	02010113          	add	sp,sp,32
 7003c88:	00008067          	ret
 7003c8c:	01000513          	li	a0,16
 7003c90:	00400593          	li	a1,4
 7003c94:	00001097          	auipc	ra,0x1
 7003c98:	6c8080e7          	jalr	1736(ra) # 700535c <_ZN5alloc5alloc18handle_alloc_error17hf138f09b4614ca73E>
 7003c9c:	c0001073          	unimp

07003ca0 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E>:
 7003ca0:	fe010113          	add	sp,sp,-32
 7003ca4:	00112e23          	sw	ra,28(sp)
 7003ca8:	00812c23          	sw	s0,24(sp)
 7003cac:	00912a23          	sw	s1,20(sp)
 7003cb0:	01212823          	sw	s2,16(sp)
 7003cb4:	00050913          	mv	s2,a0
 7003cb8:	00052503          	lw	a0,0(a0)
 7003cbc:	00058493          	mv	s1,a1
 7003cc0:	00050a63          	beqz	a0,7003cd4 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E+0x34>
 7003cc4:	00052503          	lw	a0,0(a0)
 7003cc8:	00100593          	li	a1,1
 7003ccc:	02a5e063          	bltu	a1,a0,7003cec <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E+0x4c>
 7003cd0:	02c0006f          	j	7003cfc <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E+0x5c>
 7003cd4:	00090513          	mv	a0,s2
 7003cd8:	00000097          	auipc	ra,0x0
 7003cdc:	4d4080e7          	jalr	1236(ra) # 70041ac <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E>
 7003ce0:	00052503          	lw	a0,0(a0)
 7003ce4:	00100593          	li	a1,1
 7003ce8:	00a5fa63          	bgeu	a1,a0,7003cfc <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E+0x5c>
 7003cec:	00052583          	lw	a1,0(a0)
 7003cf0:	00058663          	beqz	a1,7003cfc <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E+0x5c>
 7003cf4:	00450513          	add	a0,a0,4
 7003cf8:	10c0006f          	j	7003e04 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E+0x164>
 7003cfc:	00092503          	lw	a0,0(s2)
 7003d00:	0e050463          	beqz	a0,7003de8 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E+0x148>
 7003d04:	00052403          	lw	s0,0(a0)
 7003d08:	00100513          	li	a0,1
 7003d0c:	0ea40a63          	beq	s0,a0,7003e00 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E+0x160>
 7003d10:	02041e63          	bnez	s0,7003d4c <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E+0xac>
 7003d14:	00c00513          	li	a0,12
 7003d18:	00400593          	li	a1,4
 7003d1c:	ffffd097          	auipc	ra,0xffffd
 7003d20:	908080e7          	jalr	-1784(ra) # 7000624 <__rust_alloc>
 7003d24:	0e050c63          	beqz	a0,7003e1c <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E+0x17c>
 7003d28:	00050413          	mv	s0,a0
 7003d2c:	00052023          	sw	zero,0(a0)
 7003d30:	01252423          	sw	s2,8(a0)
 7003d34:	00092503          	lw	a0,0(s2)
 7003d38:	00051863          	bnez	a0,7003d48 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E+0xa8>
 7003d3c:	00090513          	mv	a0,s2
 7003d40:	00000097          	auipc	ra,0x0
 7003d44:	46c080e7          	jalr	1132(ra) # 70041ac <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E>
 7003d48:	00852023          	sw	s0,0(a0)
 7003d4c:	04048463          	beqz	s1,7003d94 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E+0xf4>
 7003d50:	0004a583          	lw	a1,0(s1)
 7003d54:	0044a503          	lw	a0,4(s1)
 7003d58:	00b12423          	sw	a1,8(sp)
 7003d5c:	00a12623          	sw	a0,12(sp)
 7003d60:	0004a023          	sw	zero,0(s1)
 7003d64:	02058863          	beqz	a1,7003d94 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E+0xf4>
 7003d68:	00100613          	li	a2,1
 7003d6c:	02c58663          	beq	a1,a2,7003d98 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E+0xf8>
 7003d70:	02050263          	beqz	a0,7003d94 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E+0xf4>
 7003d74:	00052583          	lw	a1,0(a0)
 7003d78:	fff58613          	add	a2,a1,-1
 7003d7c:	00100693          	li	a3,1
 7003d80:	00c52023          	sw	a2,0(a0)
 7003d84:	00d59863          	bne	a1,a3,7003d94 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E+0xf4>
 7003d88:	00c10513          	add	a0,sp,12
 7003d8c:	00000097          	auipc	ra,0x0
 7003d90:	87c080e7          	jalr	-1924(ra) # 7003608 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h9740c3a8f539a67cE>
 7003d94:	00000513          	li	a0,0
 7003d98:	00042683          	lw	a3,0(s0)
 7003d9c:	00442583          	lw	a1,4(s0)
 7003da0:	00100613          	li	a2,1
 7003da4:	00c42023          	sw	a2,0(s0)
 7003da8:	00a42223          	sw	a0,4(s0)
 7003dac:	00d12423          	sw	a3,8(sp)
 7003db0:	0016b513          	seqz	a0,a3
 7003db4:	0015b693          	seqz	a3,a1
 7003db8:	00d56533          	or	a0,a0,a3
 7003dbc:	00b12623          	sw	a1,12(sp)
 7003dc0:	02051063          	bnez	a0,7003de0 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E+0x140>
 7003dc4:	0005a503          	lw	a0,0(a1)
 7003dc8:	fff50693          	add	a3,a0,-1
 7003dcc:	00d5a023          	sw	a3,0(a1)
 7003dd0:	00c51863          	bne	a0,a2,7003de0 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E+0x140>
 7003dd4:	00c10513          	add	a0,sp,12
 7003dd8:	00000097          	auipc	ra,0x0
 7003ddc:	830080e7          	jalr	-2000(ra) # 7003608 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h9740c3a8f539a67cE>
 7003de0:	00440513          	add	a0,s0,4
 7003de4:	0200006f          	j	7003e04 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E+0x164>
 7003de8:	00090513          	mv	a0,s2
 7003dec:	00000097          	auipc	ra,0x0
 7003df0:	3c0080e7          	jalr	960(ra) # 70041ac <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E>
 7003df4:	00052403          	lw	s0,0(a0)
 7003df8:	00100513          	li	a0,1
 7003dfc:	f0a41ae3          	bne	s0,a0,7003d10 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9c218c76e0543e80E+0x70>
 7003e00:	00000513          	li	a0,0
 7003e04:	01c12083          	lw	ra,28(sp)
 7003e08:	01812403          	lw	s0,24(sp)
 7003e0c:	01412483          	lw	s1,20(sp)
 7003e10:	01012903          	lw	s2,16(sp)
 7003e14:	02010113          	add	sp,sp,32
 7003e18:	00008067          	ret
 7003e1c:	00c00513          	li	a0,12
 7003e20:	00400593          	li	a1,4
 7003e24:	00001097          	auipc	ra,0x1
 7003e28:	538080e7          	jalr	1336(ra) # 700535c <_ZN5alloc5alloc18handle_alloc_error17hf138f09b4614ca73E>
 7003e2c:	c0001073          	unimp

07003e30 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9f1bb54295c058d4E>:
 7003e30:	ff010113          	add	sp,sp,-16
 7003e34:	00112623          	sw	ra,12(sp)
 7003e38:	00812423          	sw	s0,8(sp)
 7003e3c:	00912223          	sw	s1,4(sp)
 7003e40:	01212023          	sw	s2,0(sp)
 7003e44:	00050493          	mv	s1,a0
 7003e48:	00052503          	lw	a0,0(a0)
 7003e4c:	00058413          	mv	s0,a1
 7003e50:	00050a63          	beqz	a0,7003e64 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9f1bb54295c058d4E+0x34>
 7003e54:	00052503          	lw	a0,0(a0)
 7003e58:	00100593          	li	a1,1
 7003e5c:	02a5e063          	bltu	a1,a0,7003e7c <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9f1bb54295c058d4E+0x4c>
 7003e60:	02c0006f          	j	7003e8c <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9f1bb54295c058d4E+0x5c>
 7003e64:	00048513          	mv	a0,s1
 7003e68:	00000097          	auipc	ra,0x0
 7003e6c:	344080e7          	jalr	836(ra) # 70041ac <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E>
 7003e70:	00052503          	lw	a0,0(a0)
 7003e74:	00100593          	li	a1,1
 7003e78:	00a5fa63          	bgeu	a1,a0,7003e8c <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9f1bb54295c058d4E+0x5c>
 7003e7c:	00052583          	lw	a1,0(a0)
 7003e80:	00058663          	beqz	a1,7003e8c <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9f1bb54295c058d4E+0x5c>
 7003e84:	00450513          	add	a0,a0,4
 7003e88:	0a00006f          	j	7003f28 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9f1bb54295c058d4E+0xf8>
 7003e8c:	0004a503          	lw	a0,0(s1)
 7003e90:	06050e63          	beqz	a0,7003f0c <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9f1bb54295c058d4E+0xdc>
 7003e94:	00052903          	lw	s2,0(a0)
 7003e98:	00100513          	li	a0,1
 7003e9c:	08a90463          	beq	s2,a0,7003f24 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9f1bb54295c058d4E+0xf4>
 7003ea0:	02091e63          	bnez	s2,7003edc <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9f1bb54295c058d4E+0xac>
 7003ea4:	00c00513          	li	a0,12
 7003ea8:	00400593          	li	a1,4
 7003eac:	ffffc097          	auipc	ra,0xffffc
 7003eb0:	778080e7          	jalr	1912(ra) # 7000624 <__rust_alloc>
 7003eb4:	08050663          	beqz	a0,7003f40 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9f1bb54295c058d4E+0x110>
 7003eb8:	00050913          	mv	s2,a0
 7003ebc:	00052023          	sw	zero,0(a0)
 7003ec0:	00952423          	sw	s1,8(a0)
 7003ec4:	0004a503          	lw	a0,0(s1)
 7003ec8:	00051863          	bnez	a0,7003ed8 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9f1bb54295c058d4E+0xa8>
 7003ecc:	00048513          	mv	a0,s1
 7003ed0:	00000097          	auipc	ra,0x0
 7003ed4:	2dc080e7          	jalr	732(ra) # 70041ac <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E>
 7003ed8:	01252023          	sw	s2,0(a0)
 7003edc:	00040c63          	beqz	s0,7003ef4 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9f1bb54295c058d4E+0xc4>
 7003ee0:	00042503          	lw	a0,0(s0)
 7003ee4:	00442583          	lw	a1,4(s0)
 7003ee8:	00100613          	li	a2,1
 7003eec:	00042023          	sw	zero,0(s0)
 7003ef0:	00c50463          	beq	a0,a2,7003ef8 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9f1bb54295c058d4E+0xc8>
 7003ef4:	00000593          	li	a1,0
 7003ef8:	00490513          	add	a0,s2,4
 7003efc:	00100613          	li	a2,1
 7003f00:	00c92023          	sw	a2,0(s2)
 7003f04:	00b92223          	sw	a1,4(s2)
 7003f08:	0200006f          	j	7003f28 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9f1bb54295c058d4E+0xf8>
 7003f0c:	00048513          	mv	a0,s1
 7003f10:	00000097          	auipc	ra,0x0
 7003f14:	29c080e7          	jalr	668(ra) # 70041ac <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E>
 7003f18:	00052903          	lw	s2,0(a0)
 7003f1c:	00100513          	li	a0,1
 7003f20:	f8a910e3          	bne	s2,a0,7003ea0 <_ZN3std6thread5local2os12Key$LT$T$GT$3get17h9f1bb54295c058d4E+0x70>
 7003f24:	00000513          	li	a0,0
 7003f28:	00c12083          	lw	ra,12(sp)
 7003f2c:	00812403          	lw	s0,8(sp)
 7003f30:	00412483          	lw	s1,4(sp)
 7003f34:	00012903          	lw	s2,0(sp)
 7003f38:	01010113          	add	sp,sp,16
 7003f3c:	00008067          	ret
 7003f40:	00c00513          	li	a0,12
 7003f44:	00400593          	li	a1,4
 7003f48:	00001097          	auipc	ra,0x1
 7003f4c:	414080e7          	jalr	1044(ra) # 700535c <_ZN5alloc5alloc18handle_alloc_error17hf138f09b4614ca73E>
 7003f50:	c0001073          	unimp

07003f54 <_ZN3std6thread5local2os13destroy_value17h0092f8987d190152E>:
 7003f54:	ff010113          	add	sp,sp,-16
 7003f58:	00112623          	sw	ra,12(sp)
 7003f5c:	00812423          	sw	s0,8(sp)
 7003f60:	00912223          	sw	s1,4(sp)
 7003f64:	00050493          	mv	s1,a0
 7003f68:	00852403          	lw	s0,8(a0)
 7003f6c:	00042503          	lw	a0,0(s0)
 7003f70:	00051863          	bnez	a0,7003f80 <_ZN3std6thread5local2os13destroy_value17h0092f8987d190152E+0x2c>
 7003f74:	00040513          	mv	a0,s0
 7003f78:	00000097          	auipc	ra,0x0
 7003f7c:	234080e7          	jalr	564(ra) # 70041ac <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E>
 7003f80:	00100593          	li	a1,1
 7003f84:	00b52023          	sw	a1,0(a0)
 7003f88:	00c00593          	li	a1,12
 7003f8c:	00400613          	li	a2,4
 7003f90:	00048513          	mv	a0,s1
 7003f94:	ffffc097          	auipc	ra,0xffffc
 7003f98:	698080e7          	jalr	1688(ra) # 700062c <__rust_dealloc>
 7003f9c:	00042503          	lw	a0,0(s0)
 7003fa0:	00051863          	bnez	a0,7003fb0 <_ZN3std6thread5local2os13destroy_value17h0092f8987d190152E+0x5c>
 7003fa4:	00040513          	mv	a0,s0
 7003fa8:	00000097          	auipc	ra,0x0
 7003fac:	204080e7          	jalr	516(ra) # 70041ac <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E>
 7003fb0:	00052023          	sw	zero,0(a0)
 7003fb4:	00c12083          	lw	ra,12(sp)
 7003fb8:	00812403          	lw	s0,8(sp)
 7003fbc:	00412483          	lw	s1,4(sp)
 7003fc0:	01010113          	add	sp,sp,16
 7003fc4:	00008067          	ret

07003fc8 <_ZN3std6thread5local2os13destroy_value17hac2a665c4e271a60E>:
 7003fc8:	ff010113          	add	sp,sp,-16
 7003fcc:	00112623          	sw	ra,12(sp)
 7003fd0:	00812423          	sw	s0,8(sp)
 7003fd4:	00912223          	sw	s1,4(sp)
 7003fd8:	00050493          	mv	s1,a0
 7003fdc:	01852403          	lw	s0,24(a0)
 7003fe0:	00042503          	lw	a0,0(s0)
 7003fe4:	00051863          	bnez	a0,7003ff4 <_ZN3std6thread5local2os13destroy_value17hac2a665c4e271a60E+0x2c>
 7003fe8:	00040513          	mv	a0,s0
 7003fec:	00000097          	auipc	ra,0x0
 7003ff0:	1c0080e7          	jalr	448(ra) # 70041ac <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E>
 7003ff4:	00100593          	li	a1,1
 7003ff8:	00b52023          	sw	a1,0(a0)
 7003ffc:	02000593          	li	a1,32
 7004000:	00800613          	li	a2,8
 7004004:	00048513          	mv	a0,s1
 7004008:	ffffc097          	auipc	ra,0xffffc
 700400c:	624080e7          	jalr	1572(ra) # 700062c <__rust_dealloc>
 7004010:	00042503          	lw	a0,0(s0)
 7004014:	00051863          	bnez	a0,7004024 <_ZN3std6thread5local2os13destroy_value17hac2a665c4e271a60E+0x5c>
 7004018:	00040513          	mv	a0,s0
 700401c:	00000097          	auipc	ra,0x0
 7004020:	190080e7          	jalr	400(ra) # 70041ac <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E>
 7004024:	00052023          	sw	zero,0(a0)
 7004028:	00c12083          	lw	ra,12(sp)
 700402c:	00812403          	lw	s0,8(sp)
 7004030:	00412483          	lw	s1,4(sp)
 7004034:	01010113          	add	sp,sp,16
 7004038:	00008067          	ret

0700403c <_ZN3std6thread5local2os13destroy_value17hf68ddc8f73015870E>:
 700403c:	ff010113          	add	sp,sp,-16
 7004040:	00112623          	sw	ra,12(sp)
 7004044:	00812423          	sw	s0,8(sp)
 7004048:	00912223          	sw	s1,4(sp)
 700404c:	00050493          	mv	s1,a0
 7004050:	00852403          	lw	s0,8(a0)
 7004054:	00042503          	lw	a0,0(s0)
 7004058:	00050c63          	beqz	a0,7004070 <_ZN3std6thread5local2os13destroy_value17hf68ddc8f73015870E+0x34>
 700405c:	00100593          	li	a1,1
 7004060:	00b52023          	sw	a1,0(a0)
 7004064:	0004a503          	lw	a0,0(s1)
 7004068:	02051263          	bnez	a0,700408c <_ZN3std6thread5local2os13destroy_value17hf68ddc8f73015870E+0x50>
 700406c:	0480006f          	j	70040b4 <_ZN3std6thread5local2os13destroy_value17hf68ddc8f73015870E+0x78>
 7004070:	00040513          	mv	a0,s0
 7004074:	00000097          	auipc	ra,0x0
 7004078:	138080e7          	jalr	312(ra) # 70041ac <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E>
 700407c:	00100593          	li	a1,1
 7004080:	00b52023          	sw	a1,0(a0)
 7004084:	0004a503          	lw	a0,0(s1)
 7004088:	02050663          	beqz	a0,70040b4 <_ZN3std6thread5local2os13destroy_value17hf68ddc8f73015870E+0x78>
 700408c:	0044a503          	lw	a0,4(s1)
 7004090:	02050263          	beqz	a0,70040b4 <_ZN3std6thread5local2os13destroy_value17hf68ddc8f73015870E+0x78>
 7004094:	00052583          	lw	a1,0(a0)
 7004098:	fff58613          	add	a2,a1,-1
 700409c:	00100693          	li	a3,1
 70040a0:	00c52023          	sw	a2,0(a0)
 70040a4:	00d59863          	bne	a1,a3,70040b4 <_ZN3std6thread5local2os13destroy_value17hf68ddc8f73015870E+0x78>
 70040a8:	00448513          	add	a0,s1,4
 70040ac:	fffff097          	auipc	ra,0xfffff
 70040b0:	55c080e7          	jalr	1372(ra) # 7003608 <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h9740c3a8f539a67cE>
 70040b4:	00c00593          	li	a1,12
 70040b8:	00400613          	li	a2,4
 70040bc:	00048513          	mv	a0,s1
 70040c0:	ffffc097          	auipc	ra,0xffffc
 70040c4:	56c080e7          	jalr	1388(ra) # 700062c <__rust_dealloc>
 70040c8:	00042503          	lw	a0,0(s0)
 70040cc:	00051863          	bnez	a0,70040dc <_ZN3std6thread5local2os13destroy_value17hf68ddc8f73015870E+0xa0>
 70040d0:	00040513          	mv	a0,s0
 70040d4:	00000097          	auipc	ra,0x0
 70040d8:	0d8080e7          	jalr	216(ra) # 70041ac <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E>
 70040dc:	00052023          	sw	zero,0(a0)
 70040e0:	00c12083          	lw	ra,12(sp)
 70040e4:	00812403          	lw	s0,8(sp)
 70040e8:	00412483          	lw	s1,4(sp)
 70040ec:	01010113          	add	sp,sp,16
 70040f0:	00008067          	ret

070040f4 <_ZN3std6thread5local2os13destroy_value17hf8d0ed36e5a479e1E>:
 70040f4:	ff010113          	add	sp,sp,-16
 70040f8:	00112623          	sw	ra,12(sp)
 70040fc:	00812423          	sw	s0,8(sp)
 7004100:	00912223          	sw	s1,4(sp)
 7004104:	00050493          	mv	s1,a0
 7004108:	00c52403          	lw	s0,12(a0)
 700410c:	00042503          	lw	a0,0(s0)
 7004110:	00050c63          	beqz	a0,7004128 <_ZN3std6thread5local2os13destroy_value17hf8d0ed36e5a479e1E+0x34>
 7004114:	00100593          	li	a1,1
 7004118:	00b52023          	sw	a1,0(a0)
 700411c:	0004a503          	lw	a0,0(s1)
 7004120:	02051263          	bnez	a0,7004144 <_ZN3std6thread5local2os13destroy_value17hf8d0ed36e5a479e1E+0x50>
 7004124:	0480006f          	j	700416c <_ZN3std6thread5local2os13destroy_value17hf8d0ed36e5a479e1E+0x78>
 7004128:	00040513          	mv	a0,s0
 700412c:	00000097          	auipc	ra,0x0
 7004130:	080080e7          	jalr	128(ra) # 70041ac <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E>
 7004134:	00100593          	li	a1,1
 7004138:	00b52023          	sw	a1,0(a0)
 700413c:	0004a503          	lw	a0,0(s1)
 7004140:	02050663          	beqz	a0,700416c <_ZN3std6thread5local2os13destroy_value17hf8d0ed36e5a479e1E+0x78>
 7004144:	0084a503          	lw	a0,8(s1)
 7004148:	02050263          	beqz	a0,700416c <_ZN3std6thread5local2os13destroy_value17hf8d0ed36e5a479e1E+0x78>
 700414c:	00052583          	lw	a1,0(a0)
 7004150:	fff58613          	add	a2,a1,-1
 7004154:	00100693          	li	a3,1
 7004158:	00c52023          	sw	a2,0(a0)
 700415c:	00d59863          	bne	a1,a3,700416c <_ZN3std6thread5local2os13destroy_value17hf8d0ed36e5a479e1E+0x78>
 7004160:	00848513          	add	a0,s1,8
 7004164:	fffff097          	auipc	ra,0xfffff
 7004168:	518080e7          	jalr	1304(ra) # 700367c <_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17ha046ddaa357e950cE>
 700416c:	01000593          	li	a1,16
 7004170:	00400613          	li	a2,4
 7004174:	00048513          	mv	a0,s1
 7004178:	ffffc097          	auipc	ra,0xffffc
 700417c:	4b4080e7          	jalr	1204(ra) # 700062c <__rust_dealloc>
 7004180:	00042503          	lw	a0,0(s0)
 7004184:	00051863          	bnez	a0,7004194 <_ZN3std6thread5local2os13destroy_value17hf8d0ed36e5a479e1E+0xa0>
 7004188:	00040513          	mv	a0,s0
 700418c:	00000097          	auipc	ra,0x0
 7004190:	020080e7          	jalr	32(ra) # 70041ac <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E>
 7004194:	00052023          	sw	zero,0(a0)
 7004198:	00c12083          	lw	ra,12(sp)
 700419c:	00812403          	lw	s0,8(sp)
 70041a0:	00412483          	lw	s1,4(sp)
 70041a4:	01010113          	add	sp,sp,16
 70041a8:	00008067          	ret

070041ac <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E>:
 70041ac:	fb010113          	add	sp,sp,-80
 70041b0:	04112623          	sw	ra,76(sp)
 70041b4:	04812423          	sw	s0,72(sp)
 70041b8:	00050413          	mv	s0,a0
 70041bc:	00400513          	li	a0,4
 70041c0:	00400593          	li	a1,4
 70041c4:	ffffc097          	auipc	ra,0xffffc
 70041c8:	460080e7          	jalr	1120(ra) # 7000624 <__rust_alloc>
 70041cc:	00051c63          	bnez	a0,70041e4 <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E+0x38>
 70041d0:	00400513          	li	a0,4
 70041d4:	00400593          	li	a1,4
 70041d8:	ffffc097          	auipc	ra,0xffffc
 70041dc:	44c080e7          	jalr	1100(ra) # 7000624 <__rust_alloc>
 70041e0:	02050263          	beqz	a0,7004204 <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E+0x58>
 70041e4:	00042583          	lw	a1,0(s0)
 70041e8:	00058463          	beqz	a1,70041f0 <_ZN3std10sys_common16thread_local_key9StaticKey9lazy_init17hb9899df5e85445d9E+0x44>
 70041ec:	00058513          	mv	a0,a1
 70041f0:	00a42023          	sw	a0,0(s0)
 70041f4:	04c12083          	lw	ra,76(sp)
 70041f8:	04812403          	lw	s0,72(sp)
 70041fc:	05010113          	add	sp,sp,80
 7004200:	00008067          	ret
 7004204:	07008537          	lui	a0,0x7008
 7004208:	c9050513          	add	a0,a0,-880 # 7007c90 <anon.3a0b9931459234c4b5438a9be2c0d658.20.llvm.12044279608799662234>
 700420c:	02a12423          	sw	a0,40(sp)
 7004210:	00100513          	li	a0,1
 7004214:	02a12623          	sw	a0,44(sp)
 7004218:	02012823          	sw	zero,48(sp)
 700421c:	070085b7          	lui	a1,0x7008
 7004220:	c4c58593          	add	a1,a1,-948 # 7007c4c <anon.3a0b9931459234c4b5438a9be2c0d658.16.llvm.12044279608799662234>
 7004224:	02b12c23          	sw	a1,56(sp)
 7004228:	02012e23          	sw	zero,60(sp)
 700422c:	02810593          	add	a1,sp,40
 7004230:	02b12023          	sw	a1,32(sp)
 7004234:	070065b7          	lui	a1,0x7006
 7004238:	dcc58593          	add	a1,a1,-564 # 7005dcc <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h267b675037d12153E>
 700423c:	02b12223          	sw	a1,36(sp)
 7004240:	070085b7          	lui	a1,0x7008
 7004244:	c6458593          	add	a1,a1,-924 # 7007c64 <anon.3a0b9931459234c4b5438a9be2c0d658.18.llvm.12044279608799662234>
 7004248:	00b12423          	sw	a1,8(sp)
 700424c:	00200593          	li	a1,2
 7004250:	00b12623          	sw	a1,12(sp)
 7004254:	00012823          	sw	zero,16(sp)
 7004258:	02010593          	add	a1,sp,32
 700425c:	00b12c23          	sw	a1,24(sp)
 7004260:	00a12e23          	sw	a0,28(sp)
 7004264:	00010513          	mv	a0,sp
 7004268:	04010593          	add	a1,sp,64
 700426c:	00810613          	add	a2,sp,8
 7004270:	00001097          	auipc	ra,0x1
 7004274:	d8c080e7          	jalr	-628(ra) # 7004ffc <_ZN3std2io5Write9write_fmt17h7e8d75eeb4951563E>
 7004278:	00010513          	mv	a0,sp
 700427c:	00000097          	auipc	ra,0x0
 7004280:	824080e7          	jalr	-2012(ra) # 7003aa0 <_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h8c9406c494c65c98E.llvm.12044279608799662234>
 7004284:	c0001073          	unimp
 7004288:	c0001073          	unimp

0700428c <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h3b0cda722fa5fb03E>:
 700428c:	03348537          	lui	a0,0x3348
 7004290:	c4f50513          	add	a0,a0,-945 # 3347c4f <__heap_start+0x1347c4f>
 7004294:	f962e5b7          	lui	a1,0xf962e
 7004298:	1d658593          	add	a1,a1,470 # f962e1d6 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0xf2625bdf>
 700429c:	00008067          	ret

070042a0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf7145af0d62486f9E>:
 70042a0:	00052503          	lw	a0,0(a0)
 70042a4:	00002317          	auipc	t1,0x2
 70042a8:	5d430067          	jr	1492(t1) # 7006878 <_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h0aa97bc4d8af03a0E>

070042ac <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h18726c7fa529f584E>:
 70042ac:	00052603          	lw	a2,0(a0)
 70042b0:	00452683          	lw	a3,4(a0)
 70042b4:	00058713          	mv	a4,a1
 70042b8:	00060513          	mv	a0,a2
 70042bc:	00068593          	mv	a1,a3
 70042c0:	00070613          	mv	a2,a4
 70042c4:	00002317          	auipc	t1,0x2
 70042c8:	5e830067          	jr	1512(t1) # 70068ac <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h19d5394f92baad01E>

070042cc <_ZN4core3ptr122drop_in_place$LT$$RF$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17h779fc6766cb068a7E.llvm.13949807993874650229>:
 70042cc:	00008067          	ret

070042d0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hff3652fa3692d0feE.llvm.13949807993874650229>:
 70042d0:	fe010113          	add	sp,sp,-32
 70042d4:	00112e23          	sw	ra,28(sp)
 70042d8:	00812c23          	sw	s0,24(sp)
 70042dc:	00912a23          	sw	s1,20(sp)
 70042e0:	01212823          	sw	s2,16(sp)
 70042e4:	00052403          	lw	s0,0(a0)
 70042e8:	08000513          	li	a0,128
 70042ec:	00058493          	mv	s1,a1
 70042f0:	02a5fc63          	bgeu	a1,a0,7004328 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hff3652fa3692d0feE.llvm.13949807993874650229+0x58>
 70042f4:	00842583          	lw	a1,8(s0)
 70042f8:	00442503          	lw	a0,4(s0)
 70042fc:	00a59a63          	bne	a1,a0,7004310 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hff3652fa3692d0feE.llvm.13949807993874650229+0x40>
 7004300:	00040513          	mv	a0,s0
 7004304:	fffff097          	auipc	ra,0xfffff
 7004308:	988080e7          	jalr	-1656(ra) # 7002c8c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17hbf2177df1888a4f8E>
 700430c:	00842583          	lw	a1,8(s0)
 7004310:	00042503          	lw	a0,0(s0)
 7004314:	00b50533          	add	a0,a0,a1
 7004318:	00950023          	sb	s1,0(a0)
 700431c:	00842503          	lw	a0,8(s0)
 7004320:	00150513          	add	a0,a0,1
 7004324:	0d40006f          	j	70043f8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hff3652fa3692d0feE.llvm.13949807993874650229+0x128>
 7004328:	00b4d513          	srl	a0,s1,0xb
 700432c:	00012623          	sw	zero,12(sp)
 7004330:	02051263          	bnez	a0,7004354 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hff3652fa3692d0feE.llvm.13949807993874650229+0x84>
 7004334:	0064d513          	srl	a0,s1,0x6
 7004338:	0c056513          	or	a0,a0,192
 700433c:	00a10623          	sb	a0,12(sp)
 7004340:	03f4f513          	and	a0,s1,63
 7004344:	08056513          	or	a0,a0,128
 7004348:	00a106a3          	sb	a0,13(sp)
 700434c:	00200493          	li	s1,2
 7004350:	07c0006f          	j	70043cc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hff3652fa3692d0feE.llvm.13949807993874650229+0xfc>
 7004354:	0104d513          	srl	a0,s1,0x10
 7004358:	02051a63          	bnez	a0,700438c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hff3652fa3692d0feE.llvm.13949807993874650229+0xbc>
 700435c:	00c4d513          	srl	a0,s1,0xc
 7004360:	0e056513          	or	a0,a0,224
 7004364:	00a10623          	sb	a0,12(sp)
 7004368:	01449513          	sll	a0,s1,0x14
 700436c:	01a55513          	srl	a0,a0,0x1a
 7004370:	08056513          	or	a0,a0,128
 7004374:	00a106a3          	sb	a0,13(sp)
 7004378:	03f4f513          	and	a0,s1,63
 700437c:	08056513          	or	a0,a0,128
 7004380:	00a10723          	sb	a0,14(sp)
 7004384:	00300493          	li	s1,3
 7004388:	0440006f          	j	70043cc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hff3652fa3692d0feE.llvm.13949807993874650229+0xfc>
 700438c:	00b49513          	sll	a0,s1,0xb
 7004390:	01d55513          	srl	a0,a0,0x1d
 7004394:	0f056513          	or	a0,a0,240
 7004398:	00a10623          	sb	a0,12(sp)
 700439c:	00e49513          	sll	a0,s1,0xe
 70043a0:	01a55513          	srl	a0,a0,0x1a
 70043a4:	08056513          	or	a0,a0,128
 70043a8:	00a106a3          	sb	a0,13(sp)
 70043ac:	01449513          	sll	a0,s1,0x14
 70043b0:	01a55513          	srl	a0,a0,0x1a
 70043b4:	08056513          	or	a0,a0,128
 70043b8:	00a10723          	sb	a0,14(sp)
 70043bc:	03f4f513          	and	a0,s1,63
 70043c0:	08056513          	or	a0,a0,128
 70043c4:	00a107a3          	sb	a0,15(sp)
 70043c8:	00400493          	li	s1,4
 70043cc:	00842903          	lw	s2,8(s0)
 70043d0:	00442503          	lw	a0,4(s0)
 70043d4:	41250533          	sub	a0,a0,s2
 70043d8:	04956063          	bltu	a0,s1,7004418 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hff3652fa3692d0feE.llvm.13949807993874650229+0x148>
 70043dc:	00042503          	lw	a0,0(s0)
 70043e0:	01250533          	add	a0,a0,s2
 70043e4:	00c10593          	add	a1,sp,12
 70043e8:	00048613          	mv	a2,s1
 70043ec:	ffffd097          	auipc	ra,0xffffd
 70043f0:	b40080e7          	jalr	-1216(ra) # 7000f2c <memcpy>
 70043f4:	00990533          	add	a0,s2,s1
 70043f8:	00a42423          	sw	a0,8(s0)
 70043fc:	00000513          	li	a0,0
 7004400:	01c12083          	lw	ra,28(sp)
 7004404:	01812403          	lw	s0,24(sp)
 7004408:	01412483          	lw	s1,20(sp)
 700440c:	01012903          	lw	s2,16(sp)
 7004410:	02010113          	add	sp,sp,32
 7004414:	00008067          	ret
 7004418:	00040513          	mv	a0,s0
 700441c:	00090593          	mv	a1,s2
 7004420:	00048613          	mv	a2,s1
 7004424:	fffff097          	auipc	ra,0xfffff
 7004428:	944080e7          	jalr	-1724(ra) # 7002d68 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE>
 700442c:	00842903          	lw	s2,8(s0)
 7004430:	fadff06f          	j	70043dc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hff3652fa3692d0feE.llvm.13949807993874650229+0x10c>

07004434 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h6ff18ef51e8a3433E.llvm.13949807993874650229>:
 7004434:	fd010113          	add	sp,sp,-48
 7004438:	02112623          	sw	ra,44(sp)
 700443c:	00052503          	lw	a0,0(a0)
 7004440:	0145a603          	lw	a2,20(a1)
 7004444:	0105a683          	lw	a3,16(a1)
 7004448:	00a12623          	sw	a0,12(sp)
 700444c:	02c12223          	sw	a2,36(sp)
 7004450:	02d12023          	sw	a3,32(sp)
 7004454:	00c5a503          	lw	a0,12(a1)
 7004458:	0085a603          	lw	a2,8(a1)
 700445c:	0045a683          	lw	a3,4(a1)
 7004460:	0005a583          	lw	a1,0(a1)
 7004464:	00a12e23          	sw	a0,28(sp)
 7004468:	00c12c23          	sw	a2,24(sp)
 700446c:	00d12a23          	sw	a3,20(sp)
 7004470:	00b12823          	sw	a1,16(sp)
 7004474:	07008537          	lui	a0,0x7008
 7004478:	c9850593          	add	a1,a0,-872 # 7007c98 <anon.e5acf19516f4a9cd5b82bd5981941ef5.1.llvm.13949807993874650229>
 700447c:	00c10513          	add	a0,sp,12
 7004480:	01010613          	add	a2,sp,16
 7004484:	00002097          	auipc	ra,0x2
 7004488:	9a4080e7          	jalr	-1628(ra) # 7005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>
 700448c:	02c12083          	lw	ra,44(sp)
 7004490:	03010113          	add	sp,sp,48
 7004494:	00008067          	ret

07004498 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3adf5d4abe917e38E.llvm.13949807993874650229>:
 7004498:	fe010113          	add	sp,sp,-32
 700449c:	00112e23          	sw	ra,28(sp)
 70044a0:	00812c23          	sw	s0,24(sp)
 70044a4:	00912a23          	sw	s1,20(sp)
 70044a8:	01212823          	sw	s2,16(sp)
 70044ac:	01312623          	sw	s3,12(sp)
 70044b0:	00052403          	lw	s0,0(a0)
 70044b4:	00842903          	lw	s2,8(s0)
 70044b8:	00442503          	lw	a0,4(s0)
 70044bc:	41250533          	sub	a0,a0,s2
 70044c0:	00060493          	mv	s1,a2
 70044c4:	00058993          	mv	s3,a1
 70044c8:	04c56263          	bltu	a0,a2,700450c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3adf5d4abe917e38E.llvm.13949807993874650229+0x74>
 70044cc:	00042503          	lw	a0,0(s0)
 70044d0:	01250533          	add	a0,a0,s2
 70044d4:	00098593          	mv	a1,s3
 70044d8:	00048613          	mv	a2,s1
 70044dc:	ffffd097          	auipc	ra,0xffffd
 70044e0:	a50080e7          	jalr	-1456(ra) # 7000f2c <memcpy>
 70044e4:	00990533          	add	a0,s2,s1
 70044e8:	00a42423          	sw	a0,8(s0)
 70044ec:	00000513          	li	a0,0
 70044f0:	01c12083          	lw	ra,28(sp)
 70044f4:	01812403          	lw	s0,24(sp)
 70044f8:	01412483          	lw	s1,20(sp)
 70044fc:	01012903          	lw	s2,16(sp)
 7004500:	00c12983          	lw	s3,12(sp)
 7004504:	02010113          	add	sp,sp,32
 7004508:	00008067          	ret
 700450c:	00040513          	mv	a0,s0
 7004510:	00090593          	mv	a1,s2
 7004514:	00048613          	mv	a2,s1
 7004518:	fffff097          	auipc	ra,0xfffff
 700451c:	850080e7          	jalr	-1968(ra) # 7002d68 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE>
 7004520:	00842903          	lw	s2,8(s0)
 7004524:	fa9ff06f          	j	70044cc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3adf5d4abe917e38E.llvm.13949807993874650229+0x34>

07004528 <_ZN68_$LT$std..thread..local..AccessError$u20$as$u20$core..fmt..Debug$GT$3fmt17hbc546bf1befe9fb6E>:
 7004528:	ff010113          	add	sp,sp,-16
 700452c:	00112623          	sw	ra,12(sp)
 7004530:	07008537          	lui	a0,0x7008
 7004534:	cb050613          	add	a2,a0,-848 # 7007cb0 <.Lanon.e5acf19516f4a9cd5b82bd5981941ef5.13>
 7004538:	00010513          	mv	a0,sp
 700453c:	00b00693          	li	a3,11
 7004540:	00002097          	auipc	ra,0x2
 7004544:	2e4080e7          	jalr	740(ra) # 7006824 <_ZN4core3fmt9Formatter12debug_struct17hba9e1b5c7fe67175E>
 7004548:	00010513          	mv	a0,sp
 700454c:	00001097          	auipc	ra,0x1
 7004550:	094080e7          	jalr	148(ra) # 70055e0 <_ZN4core3fmt8builders11DebugStruct6finish17h2825bcbf9812aed2E>
 7004554:	00c12083          	lw	ra,12(sp)
 7004558:	01010113          	add	sp,sp,16
 700455c:	00008067          	ret

07004560 <_ZN4core3fmt5Write10write_char17h3ae3ef7600ec4d8bE>:
 7004560:	fe010113          	add	sp,sp,-32
 7004564:	00112e23          	sw	ra,28(sp)
 7004568:	00812c23          	sw	s0,24(sp)
 700456c:	00912a23          	sw	s1,20(sp)
 7004570:	01212823          	sw	s2,16(sp)
 7004574:	08000613          	li	a2,128
 7004578:	00012623          	sw	zero,12(sp)
 700457c:	00c5f863          	bgeu	a1,a2,700458c <_ZN4core3fmt5Write10write_char17h3ae3ef7600ec4d8bE+0x2c>
 7004580:	00b10623          	sb	a1,12(sp)
 7004584:	00100413          	li	s0,1
 7004588:	0a40006f          	j	700462c <_ZN4core3fmt5Write10write_char17h3ae3ef7600ec4d8bE+0xcc>
 700458c:	00b5d613          	srl	a2,a1,0xb
 7004590:	02061263          	bnez	a2,70045b4 <_ZN4core3fmt5Write10write_char17h3ae3ef7600ec4d8bE+0x54>
 7004594:	0065d613          	srl	a2,a1,0x6
 7004598:	0c066613          	or	a2,a2,192
 700459c:	00c10623          	sb	a2,12(sp)
 70045a0:	03f5f593          	and	a1,a1,63
 70045a4:	0805e593          	or	a1,a1,128
 70045a8:	00b106a3          	sb	a1,13(sp)
 70045ac:	00200413          	li	s0,2
 70045b0:	07c0006f          	j	700462c <_ZN4core3fmt5Write10write_char17h3ae3ef7600ec4d8bE+0xcc>
 70045b4:	0105d613          	srl	a2,a1,0x10
 70045b8:	02061a63          	bnez	a2,70045ec <_ZN4core3fmt5Write10write_char17h3ae3ef7600ec4d8bE+0x8c>
 70045bc:	00c5d613          	srl	a2,a1,0xc
 70045c0:	0e066613          	or	a2,a2,224
 70045c4:	00c10623          	sb	a2,12(sp)
 70045c8:	01459613          	sll	a2,a1,0x14
 70045cc:	01a65613          	srl	a2,a2,0x1a
 70045d0:	08066613          	or	a2,a2,128
 70045d4:	00c106a3          	sb	a2,13(sp)
 70045d8:	03f5f593          	and	a1,a1,63
 70045dc:	0805e593          	or	a1,a1,128
 70045e0:	00b10723          	sb	a1,14(sp)
 70045e4:	00300413          	li	s0,3
 70045e8:	0440006f          	j	700462c <_ZN4core3fmt5Write10write_char17h3ae3ef7600ec4d8bE+0xcc>
 70045ec:	00b59613          	sll	a2,a1,0xb
 70045f0:	01d65613          	srl	a2,a2,0x1d
 70045f4:	0f066613          	or	a2,a2,240
 70045f8:	00c10623          	sb	a2,12(sp)
 70045fc:	00e59613          	sll	a2,a1,0xe
 7004600:	01a65613          	srl	a2,a2,0x1a
 7004604:	08066613          	or	a2,a2,128
 7004608:	00c106a3          	sb	a2,13(sp)
 700460c:	01459613          	sll	a2,a1,0x14
 7004610:	01a65613          	srl	a2,a2,0x1a
 7004614:	08066613          	or	a2,a2,128
 7004618:	00c10723          	sb	a2,14(sp)
 700461c:	03f5f593          	and	a1,a1,63
 7004620:	0805e593          	or	a1,a1,128
 7004624:	00b107a3          	sb	a1,15(sp)
 7004628:	00400413          	li	s0,4
 700462c:	00052483          	lw	s1,0(a0)
 7004630:	0084a903          	lw	s2,8(s1)
 7004634:	0044a503          	lw	a0,4(s1)
 7004638:	41250533          	sub	a0,a0,s2
 700463c:	04856063          	bltu	a0,s0,700467c <_ZN4core3fmt5Write10write_char17h3ae3ef7600ec4d8bE+0x11c>
 7004640:	0004a503          	lw	a0,0(s1)
 7004644:	01250533          	add	a0,a0,s2
 7004648:	00c10593          	add	a1,sp,12
 700464c:	00040613          	mv	a2,s0
 7004650:	ffffd097          	auipc	ra,0xffffd
 7004654:	8dc080e7          	jalr	-1828(ra) # 7000f2c <memcpy>
 7004658:	00890533          	add	a0,s2,s0
 700465c:	00a4a423          	sw	a0,8(s1)
 7004660:	00000513          	li	a0,0
 7004664:	01c12083          	lw	ra,28(sp)
 7004668:	01812403          	lw	s0,24(sp)
 700466c:	01412483          	lw	s1,20(sp)
 7004670:	01012903          	lw	s2,16(sp)
 7004674:	02010113          	add	sp,sp,32
 7004678:	00008067          	ret
 700467c:	00048513          	mv	a0,s1
 7004680:	00090593          	mv	a1,s2
 7004684:	00040613          	mv	a2,s0
 7004688:	ffffe097          	auipc	ra,0xffffe
 700468c:	6e0080e7          	jalr	1760(ra) # 7002d68 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE>
 7004690:	0084a903          	lw	s2,8(s1)
 7004694:	fadff06f          	j	7004640 <_ZN4core3fmt5Write10write_char17h3ae3ef7600ec4d8bE+0xe0>

07004698 <_ZN4core3fmt5Write10write_char17he8157b6ca7ef9dd4E>:
 7004698:	ff010113          	add	sp,sp,-16
 700469c:	00112623          	sw	ra,12(sp)
 70046a0:	08000513          	li	a0,128
 70046a4:	00012423          	sw	zero,8(sp)
 70046a8:	00a5f863          	bgeu	a1,a0,70046b8 <_ZN4core3fmt5Write10write_char17he8157b6ca7ef9dd4E+0x20>
 70046ac:	00b10423          	sb	a1,8(sp)
 70046b0:	00100613          	li	a2,1
 70046b4:	0a40006f          	j	7004758 <_ZN4core3fmt5Write10write_char17he8157b6ca7ef9dd4E+0xc0>
 70046b8:	00b5d513          	srl	a0,a1,0xb
 70046bc:	02051263          	bnez	a0,70046e0 <_ZN4core3fmt5Write10write_char17he8157b6ca7ef9dd4E+0x48>
 70046c0:	0065d513          	srl	a0,a1,0x6
 70046c4:	0c056513          	or	a0,a0,192
 70046c8:	00a10423          	sb	a0,8(sp)
 70046cc:	03f5f513          	and	a0,a1,63
 70046d0:	08056513          	or	a0,a0,128
 70046d4:	00a104a3          	sb	a0,9(sp)
 70046d8:	00200613          	li	a2,2
 70046dc:	07c0006f          	j	7004758 <_ZN4core3fmt5Write10write_char17he8157b6ca7ef9dd4E+0xc0>
 70046e0:	0105d513          	srl	a0,a1,0x10
 70046e4:	02051a63          	bnez	a0,7004718 <_ZN4core3fmt5Write10write_char17he8157b6ca7ef9dd4E+0x80>
 70046e8:	00c5d513          	srl	a0,a1,0xc
 70046ec:	0e056513          	or	a0,a0,224
 70046f0:	00a10423          	sb	a0,8(sp)
 70046f4:	01459513          	sll	a0,a1,0x14
 70046f8:	01a55513          	srl	a0,a0,0x1a
 70046fc:	08056513          	or	a0,a0,128
 7004700:	00a104a3          	sb	a0,9(sp)
 7004704:	03f5f513          	and	a0,a1,63
 7004708:	08056513          	or	a0,a0,128
 700470c:	00a10523          	sb	a0,10(sp)
 7004710:	00300613          	li	a2,3
 7004714:	0440006f          	j	7004758 <_ZN4core3fmt5Write10write_char17he8157b6ca7ef9dd4E+0xc0>
 7004718:	00b59513          	sll	a0,a1,0xb
 700471c:	01d55513          	srl	a0,a0,0x1d
 7004720:	0f056513          	or	a0,a0,240
 7004724:	00a10423          	sb	a0,8(sp)
 7004728:	00e59513          	sll	a0,a1,0xe
 700472c:	01a55513          	srl	a0,a0,0x1a
 7004730:	08056513          	or	a0,a0,128
 7004734:	00a104a3          	sb	a0,9(sp)
 7004738:	01459513          	sll	a0,a1,0x14
 700473c:	01a55513          	srl	a0,a0,0x1a
 7004740:	08056513          	or	a0,a0,128
 7004744:	00a10523          	sb	a0,10(sp)
 7004748:	03f5f513          	and	a0,a1,63
 700474c:	08056513          	or	a0,a0,128
 7004750:	00a105a3          	sb	a0,11(sp)
 7004754:	00400613          	li	a2,4
 7004758:	00200513          	li	a0,2
 700475c:	00810593          	add	a1,sp,8
 7004760:	ffffd097          	auipc	ra,0xffffd
 7004764:	2b8080e7          	jalr	696(ra) # 7001a18 <sys_write>
 7004768:	00000513          	li	a0,0
 700476c:	00c12083          	lw	ra,12(sp)
 7004770:	01010113          	add	sp,sp,16
 7004774:	00008067          	ret

07004778 <_ZN4core3fmt5Write9write_fmt17h2b7d0562fcffa3afE>:
 7004778:	fd010113          	add	sp,sp,-48
 700477c:	02112623          	sw	ra,44(sp)
 7004780:	0145a603          	lw	a2,20(a1)
 7004784:	0105a683          	lw	a3,16(a1)
 7004788:	00a12623          	sw	a0,12(sp)
 700478c:	02c12223          	sw	a2,36(sp)
 7004790:	02d12023          	sw	a3,32(sp)
 7004794:	00c5a503          	lw	a0,12(a1)
 7004798:	0085a603          	lw	a2,8(a1)
 700479c:	0045a683          	lw	a3,4(a1)
 70047a0:	0005a583          	lw	a1,0(a1)
 70047a4:	00a12e23          	sw	a0,28(sp)
 70047a8:	00c12c23          	sw	a2,24(sp)
 70047ac:	00d12a23          	sw	a3,20(sp)
 70047b0:	00b12823          	sw	a1,16(sp)
 70047b4:	07008537          	lui	a0,0x7008
 70047b8:	de850593          	add	a1,a0,-536 # 7007de8 <.Lanon.efce97596ae942595b76484ba018e500.0>
 70047bc:	00c10513          	add	a0,sp,12
 70047c0:	01010613          	add	a2,sp,16
 70047c4:	00001097          	auipc	ra,0x1
 70047c8:	664080e7          	jalr	1636(ra) # 7005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>
 70047cc:	02c12083          	lw	ra,44(sp)
 70047d0:	03010113          	add	sp,sp,48
 70047d4:	00008067          	ret

070047d8 <_ZN4core3fmt5Write9write_fmt17h7cb5b61d89259ab1E>:
 70047d8:	fd010113          	add	sp,sp,-48
 70047dc:	02112623          	sw	ra,44(sp)
 70047e0:	0145a603          	lw	a2,20(a1)
 70047e4:	0105a683          	lw	a3,16(a1)
 70047e8:	00a12623          	sw	a0,12(sp)
 70047ec:	02c12223          	sw	a2,36(sp)
 70047f0:	02d12023          	sw	a3,32(sp)
 70047f4:	00c5a503          	lw	a0,12(a1)
 70047f8:	0085a603          	lw	a2,8(a1)
 70047fc:	0045a683          	lw	a3,4(a1)
 7004800:	0005a583          	lw	a1,0(a1)
 7004804:	00a12e23          	sw	a0,28(sp)
 7004808:	00c12c23          	sw	a2,24(sp)
 700480c:	00d12a23          	sw	a3,20(sp)
 7004810:	00b12823          	sw	a1,16(sp)
 7004814:	07008537          	lui	a0,0x7008
 7004818:	e0050593          	add	a1,a0,-512 # 7007e00 <.Lanon.efce97596ae942595b76484ba018e500.3>
 700481c:	00c10513          	add	a0,sp,12
 7004820:	01010613          	add	a2,sp,16
 7004824:	00001097          	auipc	ra,0x1
 7004828:	604080e7          	jalr	1540(ra) # 7005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>
 700482c:	02c12083          	lw	ra,44(sp)
 7004830:	03010113          	add	sp,sp,48
 7004834:	00008067          	ret

07004838 <_ZN4core3ptr100drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hecc6fe9df4796844E>:
 7004838:	00008067          	ret

0700483c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h11c779d9f16676d0E>:
 700483c:	fe010113          	add	sp,sp,-32
 7004840:	00112e23          	sw	ra,28(sp)
 7004844:	00812c23          	sw	s0,24(sp)
 7004848:	00912a23          	sw	s1,20(sp)
 700484c:	01212823          	sw	s2,16(sp)
 7004850:	00052503          	lw	a0,0(a0)
 7004854:	08000613          	li	a2,128
 7004858:	00012623          	sw	zero,12(sp)
 700485c:	00c5f863          	bgeu	a1,a2,700486c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h11c779d9f16676d0E+0x30>
 7004860:	00b10623          	sb	a1,12(sp)
 7004864:	00100413          	li	s0,1
 7004868:	0a40006f          	j	700490c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h11c779d9f16676d0E+0xd0>
 700486c:	00b5d613          	srl	a2,a1,0xb
 7004870:	02061263          	bnez	a2,7004894 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h11c779d9f16676d0E+0x58>
 7004874:	0065d613          	srl	a2,a1,0x6
 7004878:	0c066613          	or	a2,a2,192
 700487c:	00c10623          	sb	a2,12(sp)
 7004880:	03f5f593          	and	a1,a1,63
 7004884:	0805e593          	or	a1,a1,128
 7004888:	00b106a3          	sb	a1,13(sp)
 700488c:	00200413          	li	s0,2
 7004890:	07c0006f          	j	700490c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h11c779d9f16676d0E+0xd0>
 7004894:	0105d613          	srl	a2,a1,0x10
 7004898:	02061a63          	bnez	a2,70048cc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h11c779d9f16676d0E+0x90>
 700489c:	00c5d613          	srl	a2,a1,0xc
 70048a0:	0e066613          	or	a2,a2,224
 70048a4:	00c10623          	sb	a2,12(sp)
 70048a8:	01459613          	sll	a2,a1,0x14
 70048ac:	01a65613          	srl	a2,a2,0x1a
 70048b0:	08066613          	or	a2,a2,128
 70048b4:	00c106a3          	sb	a2,13(sp)
 70048b8:	03f5f593          	and	a1,a1,63
 70048bc:	0805e593          	or	a1,a1,128
 70048c0:	00b10723          	sb	a1,14(sp)
 70048c4:	00300413          	li	s0,3
 70048c8:	0440006f          	j	700490c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h11c779d9f16676d0E+0xd0>
 70048cc:	00b59613          	sll	a2,a1,0xb
 70048d0:	01d65613          	srl	a2,a2,0x1d
 70048d4:	0f066613          	or	a2,a2,240
 70048d8:	00c10623          	sb	a2,12(sp)
 70048dc:	00e59613          	sll	a2,a1,0xe
 70048e0:	01a65613          	srl	a2,a2,0x1a
 70048e4:	08066613          	or	a2,a2,128
 70048e8:	00c106a3          	sb	a2,13(sp)
 70048ec:	01459613          	sll	a2,a1,0x14
 70048f0:	01a65613          	srl	a2,a2,0x1a
 70048f4:	08066613          	or	a2,a2,128
 70048f8:	00c10723          	sb	a2,14(sp)
 70048fc:	03f5f593          	and	a1,a1,63
 7004900:	0805e593          	or	a1,a1,128
 7004904:	00b107a3          	sb	a1,15(sp)
 7004908:	00400413          	li	s0,4
 700490c:	00052483          	lw	s1,0(a0)
 7004910:	0084a903          	lw	s2,8(s1)
 7004914:	0044a503          	lw	a0,4(s1)
 7004918:	41250533          	sub	a0,a0,s2
 700491c:	04856063          	bltu	a0,s0,700495c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h11c779d9f16676d0E+0x120>
 7004920:	0004a503          	lw	a0,0(s1)
 7004924:	01250533          	add	a0,a0,s2
 7004928:	00c10593          	add	a1,sp,12
 700492c:	00040613          	mv	a2,s0
 7004930:	ffffc097          	auipc	ra,0xffffc
 7004934:	5fc080e7          	jalr	1532(ra) # 7000f2c <memcpy>
 7004938:	00890533          	add	a0,s2,s0
 700493c:	00a4a423          	sw	a0,8(s1)
 7004940:	00000513          	li	a0,0
 7004944:	01c12083          	lw	ra,28(sp)
 7004948:	01812403          	lw	s0,24(sp)
 700494c:	01412483          	lw	s1,20(sp)
 7004950:	01012903          	lw	s2,16(sp)
 7004954:	02010113          	add	sp,sp,32
 7004958:	00008067          	ret
 700495c:	00048513          	mv	a0,s1
 7004960:	00090593          	mv	a1,s2
 7004964:	00040613          	mv	a2,s0
 7004968:	ffffe097          	auipc	ra,0xffffe
 700496c:	400080e7          	jalr	1024(ra) # 7002d68 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE>
 7004970:	0084a903          	lw	s2,8(s1)
 7004974:	fadff06f          	j	7004920 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h11c779d9f16676d0E+0xe4>

07004978 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1e0c4f7be7fa1d36E>:
 7004978:	ff010113          	add	sp,sp,-16
 700497c:	00112623          	sw	ra,12(sp)
 7004980:	08000513          	li	a0,128
 7004984:	00012423          	sw	zero,8(sp)
 7004988:	00a5f863          	bgeu	a1,a0,7004998 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1e0c4f7be7fa1d36E+0x20>
 700498c:	00b10423          	sb	a1,8(sp)
 7004990:	00100613          	li	a2,1
 7004994:	0a40006f          	j	7004a38 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1e0c4f7be7fa1d36E+0xc0>
 7004998:	00b5d513          	srl	a0,a1,0xb
 700499c:	02051263          	bnez	a0,70049c0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1e0c4f7be7fa1d36E+0x48>
 70049a0:	0065d513          	srl	a0,a1,0x6
 70049a4:	0c056513          	or	a0,a0,192
 70049a8:	00a10423          	sb	a0,8(sp)
 70049ac:	03f5f513          	and	a0,a1,63
 70049b0:	08056513          	or	a0,a0,128
 70049b4:	00a104a3          	sb	a0,9(sp)
 70049b8:	00200613          	li	a2,2
 70049bc:	07c0006f          	j	7004a38 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1e0c4f7be7fa1d36E+0xc0>
 70049c0:	0105d513          	srl	a0,a1,0x10
 70049c4:	02051a63          	bnez	a0,70049f8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1e0c4f7be7fa1d36E+0x80>
 70049c8:	00c5d513          	srl	a0,a1,0xc
 70049cc:	0e056513          	or	a0,a0,224
 70049d0:	00a10423          	sb	a0,8(sp)
 70049d4:	01459513          	sll	a0,a1,0x14
 70049d8:	01a55513          	srl	a0,a0,0x1a
 70049dc:	08056513          	or	a0,a0,128
 70049e0:	00a104a3          	sb	a0,9(sp)
 70049e4:	03f5f513          	and	a0,a1,63
 70049e8:	08056513          	or	a0,a0,128
 70049ec:	00a10523          	sb	a0,10(sp)
 70049f0:	00300613          	li	a2,3
 70049f4:	0440006f          	j	7004a38 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1e0c4f7be7fa1d36E+0xc0>
 70049f8:	00b59513          	sll	a0,a1,0xb
 70049fc:	01d55513          	srl	a0,a0,0x1d
 7004a00:	0f056513          	or	a0,a0,240
 7004a04:	00a10423          	sb	a0,8(sp)
 7004a08:	00e59513          	sll	a0,a1,0xe
 7004a0c:	01a55513          	srl	a0,a0,0x1a
 7004a10:	08056513          	or	a0,a0,128
 7004a14:	00a104a3          	sb	a0,9(sp)
 7004a18:	01459513          	sll	a0,a1,0x14
 7004a1c:	01a55513          	srl	a0,a0,0x1a
 7004a20:	08056513          	or	a0,a0,128
 7004a24:	00a10523          	sb	a0,10(sp)
 7004a28:	03f5f513          	and	a0,a1,63
 7004a2c:	08056513          	or	a0,a0,128
 7004a30:	00a105a3          	sb	a0,11(sp)
 7004a34:	00400613          	li	a2,4
 7004a38:	00200513          	li	a0,2
 7004a3c:	00810593          	add	a1,sp,8
 7004a40:	ffffd097          	auipc	ra,0xffffd
 7004a44:	fd8080e7          	jalr	-40(ra) # 7001a18 <sys_write>
 7004a48:	00000513          	li	a0,0
 7004a4c:	00c12083          	lw	ra,12(sp)
 7004a50:	01010113          	add	sp,sp,16
 7004a54:	00008067          	ret

07004a58 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hbf5c7679454ddaa8E>:
 7004a58:	fd010113          	add	sp,sp,-48
 7004a5c:	02112623          	sw	ra,44(sp)
 7004a60:	00052503          	lw	a0,0(a0)
 7004a64:	0145a603          	lw	a2,20(a1)
 7004a68:	0105a683          	lw	a3,16(a1)
 7004a6c:	00a12623          	sw	a0,12(sp)
 7004a70:	02c12223          	sw	a2,36(sp)
 7004a74:	02d12023          	sw	a3,32(sp)
 7004a78:	00c5a503          	lw	a0,12(a1)
 7004a7c:	0085a603          	lw	a2,8(a1)
 7004a80:	0045a683          	lw	a3,4(a1)
 7004a84:	0005a583          	lw	a1,0(a1)
 7004a88:	00a12e23          	sw	a0,28(sp)
 7004a8c:	00c12c23          	sw	a2,24(sp)
 7004a90:	00d12a23          	sw	a3,20(sp)
 7004a94:	00b12823          	sw	a1,16(sp)
 7004a98:	07008537          	lui	a0,0x7008
 7004a9c:	de850593          	add	a1,a0,-536 # 7007de8 <.Lanon.efce97596ae942595b76484ba018e500.0>
 7004aa0:	00c10513          	add	a0,sp,12
 7004aa4:	01010613          	add	a2,sp,16
 7004aa8:	00001097          	auipc	ra,0x1
 7004aac:	380080e7          	jalr	896(ra) # 7005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>
 7004ab0:	02c12083          	lw	ra,44(sp)
 7004ab4:	03010113          	add	sp,sp,48
 7004ab8:	00008067          	ret

07004abc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hf1ba5f87215e0261E>:
 7004abc:	fd010113          	add	sp,sp,-48
 7004ac0:	02112623          	sw	ra,44(sp)
 7004ac4:	00052503          	lw	a0,0(a0)
 7004ac8:	0145a603          	lw	a2,20(a1)
 7004acc:	0105a683          	lw	a3,16(a1)
 7004ad0:	00a12623          	sw	a0,12(sp)
 7004ad4:	02c12223          	sw	a2,36(sp)
 7004ad8:	02d12023          	sw	a3,32(sp)
 7004adc:	00c5a503          	lw	a0,12(a1)
 7004ae0:	0085a603          	lw	a2,8(a1)
 7004ae4:	0045a683          	lw	a3,4(a1)
 7004ae8:	0005a583          	lw	a1,0(a1)
 7004aec:	00a12e23          	sw	a0,28(sp)
 7004af0:	00c12c23          	sw	a2,24(sp)
 7004af4:	00d12a23          	sw	a3,20(sp)
 7004af8:	00b12823          	sw	a1,16(sp)
 7004afc:	07008537          	lui	a0,0x7008
 7004b00:	e0050593          	add	a1,a0,-512 # 7007e00 <.Lanon.efce97596ae942595b76484ba018e500.3>
 7004b04:	00c10513          	add	a0,sp,12
 7004b08:	01010613          	add	a2,sp,16
 7004b0c:	00001097          	auipc	ra,0x1
 7004b10:	31c080e7          	jalr	796(ra) # 7005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>
 7004b14:	02c12083          	lw	ra,44(sp)
 7004b18:	03010113          	add	sp,sp,48
 7004b1c:	00008067          	ret

07004b20 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h622ba2cf8caa2ef8E>:
 7004b20:	fe010113          	add	sp,sp,-32
 7004b24:	00112e23          	sw	ra,28(sp)
 7004b28:	00812c23          	sw	s0,24(sp)
 7004b2c:	00912a23          	sw	s1,20(sp)
 7004b30:	01212823          	sw	s2,16(sp)
 7004b34:	01312623          	sw	s3,12(sp)
 7004b38:	00052503          	lw	a0,0(a0)
 7004b3c:	00052403          	lw	s0,0(a0)
 7004b40:	00842903          	lw	s2,8(s0)
 7004b44:	00442503          	lw	a0,4(s0)
 7004b48:	41250533          	sub	a0,a0,s2
 7004b4c:	00060493          	mv	s1,a2
 7004b50:	00058993          	mv	s3,a1
 7004b54:	04c56263          	bltu	a0,a2,7004b98 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h622ba2cf8caa2ef8E+0x78>
 7004b58:	00042503          	lw	a0,0(s0)
 7004b5c:	01250533          	add	a0,a0,s2
 7004b60:	00098593          	mv	a1,s3
 7004b64:	00048613          	mv	a2,s1
 7004b68:	ffffc097          	auipc	ra,0xffffc
 7004b6c:	3c4080e7          	jalr	964(ra) # 7000f2c <memcpy>
 7004b70:	00990533          	add	a0,s2,s1
 7004b74:	00a42423          	sw	a0,8(s0)
 7004b78:	00000513          	li	a0,0
 7004b7c:	01c12083          	lw	ra,28(sp)
 7004b80:	01812403          	lw	s0,24(sp)
 7004b84:	01412483          	lw	s1,20(sp)
 7004b88:	01012903          	lw	s2,16(sp)
 7004b8c:	00c12983          	lw	s3,12(sp)
 7004b90:	02010113          	add	sp,sp,32
 7004b94:	00008067          	ret
 7004b98:	00040513          	mv	a0,s0
 7004b9c:	00090593          	mv	a1,s2
 7004ba0:	00048613          	mv	a2,s1
 7004ba4:	ffffe097          	auipc	ra,0xffffe
 7004ba8:	1c4080e7          	jalr	452(ra) # 7002d68 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE>
 7004bac:	00842903          	lw	s2,8(s0)
 7004bb0:	fa9ff06f          	j	7004b58 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h622ba2cf8caa2ef8E+0x38>

07004bb4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hb65841b2567ff034E>:
 7004bb4:	02060063          	beqz	a2,7004bd4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hb65841b2567ff034E+0x20>
 7004bb8:	ff010113          	add	sp,sp,-16
 7004bbc:	00112623          	sw	ra,12(sp)
 7004bc0:	00200513          	li	a0,2
 7004bc4:	ffffd097          	auipc	ra,0xffffd
 7004bc8:	e54080e7          	jalr	-428(ra) # 7001a18 <sys_write>
 7004bcc:	00c12083          	lw	ra,12(sp)
 7004bd0:	01010113          	add	sp,sp,16
 7004bd4:	00000513          	li	a0,0
 7004bd8:	00008067          	ret

07004bdc <_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h433c6b5af1429349E>:
 7004bdc:	02060063          	beqz	a2,7004bfc <_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h433c6b5af1429349E+0x20>
 7004be0:	ff010113          	add	sp,sp,-16
 7004be4:	00112623          	sw	ra,12(sp)
 7004be8:	00200513          	li	a0,2
 7004bec:	ffffd097          	auipc	ra,0xffffd
 7004bf0:	e2c080e7          	jalr	-468(ra) # 7001a18 <sys_write>
 7004bf4:	00c12083          	lw	ra,12(sp)
 7004bf8:	01010113          	add	sp,sp,16
 7004bfc:	00000513          	li	a0,0
 7004c00:	00008067          	ret

07004c04 <_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h532187d0d218fd9aE>:
 7004c04:	fe010113          	add	sp,sp,-32
 7004c08:	00112e23          	sw	ra,28(sp)
 7004c0c:	00812c23          	sw	s0,24(sp)
 7004c10:	00912a23          	sw	s1,20(sp)
 7004c14:	01212823          	sw	s2,16(sp)
 7004c18:	01312623          	sw	s3,12(sp)
 7004c1c:	00052403          	lw	s0,0(a0)
 7004c20:	00842903          	lw	s2,8(s0)
 7004c24:	00442503          	lw	a0,4(s0)
 7004c28:	41250533          	sub	a0,a0,s2
 7004c2c:	00060493          	mv	s1,a2
 7004c30:	00058993          	mv	s3,a1
 7004c34:	04c56263          	bltu	a0,a2,7004c78 <_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h532187d0d218fd9aE+0x74>
 7004c38:	00042503          	lw	a0,0(s0)
 7004c3c:	01250533          	add	a0,a0,s2
 7004c40:	00098593          	mv	a1,s3
 7004c44:	00048613          	mv	a2,s1
 7004c48:	ffffc097          	auipc	ra,0xffffc
 7004c4c:	2e4080e7          	jalr	740(ra) # 7000f2c <memcpy>
 7004c50:	00990533          	add	a0,s2,s1
 7004c54:	00a42423          	sw	a0,8(s0)
 7004c58:	00000513          	li	a0,0
 7004c5c:	01c12083          	lw	ra,28(sp)
 7004c60:	01812403          	lw	s0,24(sp)
 7004c64:	01412483          	lw	s1,20(sp)
 7004c68:	01012903          	lw	s2,16(sp)
 7004c6c:	00c12983          	lw	s3,12(sp)
 7004c70:	02010113          	add	sp,sp,32
 7004c74:	00008067          	ret
 7004c78:	00040513          	mv	a0,s0
 7004c7c:	00090593          	mv	a1,s2
 7004c80:	00048613          	mv	a2,s1
 7004c84:	ffffe097          	auipc	ra,0xffffe
 7004c88:	0e4080e7          	jalr	228(ra) # 7002d68 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h28a3fc8174e1241cE>
 7004c8c:	00842903          	lw	s2,8(s0)
 7004c90:	fa9ff06f          	j	7004c38 <_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h532187d0d218fd9aE+0x34>

07004c94 <_ZN4core3ptr92drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..zkvm..stdio..Stderr$GT$$GT$17h13a17cd83ca514a1E.llvm.6387882789376083808>:
 7004c94:	ff010113          	add	sp,sp,-16
 7004c98:	00112623          	sw	ra,12(sp)
 7004c9c:	00812423          	sw	s0,8(sp)
 7004ca0:	00912223          	sw	s1,4(sp)
 7004ca4:	00050413          	mv	s0,a0
 7004ca8:	00454503          	lbu	a0,4(a0)
 7004cac:	00300593          	li	a1,3
 7004cb0:	04b51c63          	bne	a0,a1,7004d08 <_ZN4core3ptr92drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..zkvm..stdio..Stderr$GT$$GT$17h13a17cd83ca514a1E.llvm.6387882789376083808+0x74>
 7004cb4:	00842483          	lw	s1,8(s0)
 7004cb8:	0044a583          	lw	a1,4(s1)
 7004cbc:	0004a503          	lw	a0,0(s1)
 7004cc0:	0005a583          	lw	a1,0(a1)
 7004cc4:	000580e7          	jalr	a1
 7004cc8:	0044a503          	lw	a0,4(s1)
 7004ccc:	00452583          	lw	a1,4(a0)
 7004cd0:	00058a63          	beqz	a1,7004ce4 <_ZN4core3ptr92drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..zkvm..stdio..Stderr$GT$$GT$17h13a17cd83ca514a1E.llvm.6387882789376083808+0x50>
 7004cd4:	00852603          	lw	a2,8(a0)
 7004cd8:	0004a503          	lw	a0,0(s1)
 7004cdc:	ffffc097          	auipc	ra,0xffffc
 7004ce0:	950080e7          	jalr	-1712(ra) # 700062c <__rust_dealloc>
 7004ce4:	00842503          	lw	a0,8(s0)
 7004ce8:	00c00593          	li	a1,12
 7004cec:	00400613          	li	a2,4
 7004cf0:	00c12083          	lw	ra,12(sp)
 7004cf4:	00812403          	lw	s0,8(sp)
 7004cf8:	00412483          	lw	s1,4(sp)
 7004cfc:	01010113          	add	sp,sp,16
 7004d00:	ffffc317          	auipc	t1,0xffffc
 7004d04:	92c30067          	jr	-1748(t1) # 700062c <__rust_dealloc>
 7004d08:	00c12083          	lw	ra,12(sp)
 7004d0c:	00812403          	lw	s0,8(sp)
 7004d10:	00412483          	lw	s1,4(sp)
 7004d14:	01010113          	add	sp,sp,16
 7004d18:	00008067          	ret

07004d1c <_ZN3std2io5Write14write_vectored17h6ea5a0b730bee65eE>:
 7004d1c:	ff010113          	add	sp,sp,-16
 7004d20:	00112623          	sw	ra,12(sp)
 7004d24:	00812423          	sw	s0,8(sp)
 7004d28:	00912223          	sw	s1,4(sp)
 7004d2c:	00050413          	mv	s0,a0
 7004d30:	ff860513          	add	a0,a2,-8
 7004d34:	00369613          	sll	a2,a3,0x3
 7004d38:	070085b7          	lui	a1,0x7008
 7004d3c:	e1858593          	add	a1,a1,-488 # 7007e18 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.36>
 7004d40:	00060e63          	beqz	a2,7004d5c <_ZN3std2io5Write14write_vectored17h6ea5a0b730bee65eE+0x40>
 7004d44:	00c52483          	lw	s1,12(a0)
 7004d48:	00850513          	add	a0,a0,8
 7004d4c:	ff860613          	add	a2,a2,-8
 7004d50:	fe0488e3          	beqz	s1,7004d40 <_ZN3std2io5Write14write_vectored17h6ea5a0b730bee65eE+0x24>
 7004d54:	00052583          	lw	a1,0(a0)
 7004d58:	0080006f          	j	7004d60 <_ZN3std2io5Write14write_vectored17h6ea5a0b730bee65eE+0x44>
 7004d5c:	00000493          	li	s1,0
 7004d60:	00200513          	li	a0,2
 7004d64:	00048613          	mv	a2,s1
 7004d68:	ffffd097          	auipc	ra,0xffffd
 7004d6c:	cb0080e7          	jalr	-848(ra) # 7001a18 <sys_write>
 7004d70:	00942223          	sw	s1,4(s0)
 7004d74:	00400513          	li	a0,4
 7004d78:	00a40023          	sb	a0,0(s0)
 7004d7c:	00c12083          	lw	ra,12(sp)
 7004d80:	00812403          	lw	s0,8(sp)
 7004d84:	00412483          	lw	s1,4(sp)
 7004d88:	01010113          	add	sp,sp,16
 7004d8c:	00008067          	ret

07004d90 <_ZN3std2io5Write17is_write_vectored17h6b1ff9f4cad2a6d3E>:
 7004d90:	00000513          	li	a0,0
 7004d94:	00008067          	ret

07004d98 <_ZN3std2io5Write9write_all17h5df4cf78f05923cbE>:
 7004d98:	ff010113          	add	sp,sp,-16
 7004d9c:	00112623          	sw	ra,12(sp)
 7004da0:	00812423          	sw	s0,8(sp)
 7004da4:	00050413          	mv	s0,a0
 7004da8:	00068c63          	beqz	a3,7004dc0 <_ZN3std2io5Write9write_all17h5df4cf78f05923cbE+0x28>
 7004dac:	00200513          	li	a0,2
 7004db0:	00060593          	mv	a1,a2
 7004db4:	00068613          	mv	a2,a3
 7004db8:	ffffd097          	auipc	ra,0xffffd
 7004dbc:	c60080e7          	jalr	-928(ra) # 7001a18 <sys_write>
 7004dc0:	00400513          	li	a0,4
 7004dc4:	00a40023          	sb	a0,0(s0)
 7004dc8:	00c12083          	lw	ra,12(sp)
 7004dcc:	00812403          	lw	s0,8(sp)
 7004dd0:	01010113          	add	sp,sp,16
 7004dd4:	00008067          	ret

07004dd8 <_ZN3std2io5Write18write_all_vectored17h55a138395054f98bE>:
 7004dd8:	fc010113          	add	sp,sp,-64
 7004ddc:	02112e23          	sw	ra,60(sp)
 7004de0:	02812c23          	sw	s0,56(sp)
 7004de4:	02912a23          	sw	s1,52(sp)
 7004de8:	03212823          	sw	s2,48(sp)
 7004dec:	03312623          	sw	s3,44(sp)
 7004df0:	03412423          	sw	s4,40(sp)
 7004df4:	03512223          	sw	s5,36(sp)
 7004df8:	00050413          	mv	s0,a0
 7004dfc:	10068e63          	beqz	a3,7004f18 <_ZN3std2io5Write18write_all_vectored17h55a138395054f98bE+0x140>
 7004e00:	00000513          	li	a0,0
 7004e04:	200005b7          	lui	a1,0x20000
 7004e08:	fff58993          	add	s3,a1,-1 # 1fffffff <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x18ff7a08>
 7004e0c:	fff68593          	add	a1,a3,-1
 7004e10:	0135f5b3          	and	a1,a1,s3
 7004e14:	00158593          	add	a1,a1,1
 7004e18:	00369713          	sll	a4,a3,0x3
 7004e1c:	00460793          	add	a5,a2,4
 7004e20:	0007a803          	lw	a6,0(a5)
 7004e24:	00081c63          	bnez	a6,7004e3c <_ZN3std2io5Write18write_all_vectored17h55a138395054f98bE+0x64>
 7004e28:	00150513          	add	a0,a0,1
 7004e2c:	ff870713          	add	a4,a4,-8
 7004e30:	00878793          	add	a5,a5,8
 7004e34:	fe0716e3          	bnez	a4,7004e20 <_ZN3std2io5Write18write_all_vectored17h55a138395054f98bE+0x48>
 7004e38:	00058513          	mv	a0,a1
 7004e3c:	12a6ec63          	bltu	a3,a0,7004f74 <_ZN3std2io5Write18write_all_vectored17h55a138395054f98bE+0x19c>
 7004e40:	40a684b3          	sub	s1,a3,a0
 7004e44:	0c048a63          	beqz	s1,7004f18 <_ZN3std2io5Write18write_all_vectored17h55a138395054f98bE+0x140>
 7004e48:	00351513          	sll	a0,a0,0x3
 7004e4c:	00a60633          	add	a2,a2,a0
 7004e50:	00060a13          	mv	s4,a2
 7004e54:	00349a93          	sll	s5,s1,0x3
 7004e58:	ff860513          	add	a0,a2,-8
 7004e5c:	000a8593          	mv	a1,s5
 7004e60:	0c058263          	beqz	a1,7004f24 <_ZN3std2io5Write18write_all_vectored17h55a138395054f98bE+0x14c>
 7004e64:	00c52903          	lw	s2,12(a0)
 7004e68:	00850513          	add	a0,a0,8
 7004e6c:	ff858593          	add	a1,a1,-8
 7004e70:	fe0908e3          	beqz	s2,7004e60 <_ZN3std2io5Write18write_all_vectored17h55a138395054f98bE+0x88>
 7004e74:	00052583          	lw	a1,0(a0)
 7004e78:	00200513          	li	a0,2
 7004e7c:	00090613          	mv	a2,s2
 7004e80:	ffffd097          	auipc	ra,0xffffd
 7004e84:	b98080e7          	jalr	-1128(ra) # 7001a18 <sys_write>
 7004e88:	00000513          	li	a0,0
 7004e8c:	00000693          	li	a3,0
 7004e90:	013485b3          	add	a1,s1,s3
 7004e94:	0135f5b3          	and	a1,a1,s3
 7004e98:	00158593          	add	a1,a1,1
 7004e9c:	004a0613          	add	a2,s4,4
 7004ea0:	00062703          	lw	a4,0(a2)
 7004ea4:	00d70733          	add	a4,a4,a3
 7004ea8:	02e96063          	bltu	s2,a4,7004ec8 <_ZN3std2io5Write18write_all_vectored17h55a138395054f98bE+0xf0>
 7004eac:	00150513          	add	a0,a0,1
 7004eb0:	ff8a8a93          	add	s5,s5,-8
 7004eb4:	00860613          	add	a2,a2,8
 7004eb8:	00070693          	mv	a3,a4
 7004ebc:	fe0a92e3          	bnez	s5,7004ea0 <_ZN3std2io5Write18write_all_vectored17h55a138395054f98bE+0xc8>
 7004ec0:	00070693          	mv	a3,a4
 7004ec4:	00058513          	mv	a0,a1
 7004ec8:	0ca4e263          	bltu	s1,a0,7004f8c <_ZN3std2io5Write18write_all_vectored17h55a138395054f98bE+0x1b4>
 7004ecc:	00351593          	sll	a1,a0,0x3
 7004ed0:	00ba0633          	add	a2,s4,a1
 7004ed4:	00a49a63          	bne	s1,a0,7004ee8 <_ZN3std2io5Write18write_all_vectored17h55a138395054f98bE+0x110>
 7004ed8:	0cd91663          	bne	s2,a3,7004fa4 <_ZN3std2io5Write18write_all_vectored17h55a138395054f98bE+0x1cc>
 7004edc:	40a484b3          	sub	s1,s1,a0
 7004ee0:	f60498e3          	bnez	s1,7004e50 <_ZN3std2io5Write18write_all_vectored17h55a138395054f98bE+0x78>
 7004ee4:	0340006f          	j	7004f18 <_ZN3std2io5Write18write_all_vectored17h55a138395054f98bE+0x140>
 7004ee8:	00ba0733          	add	a4,s4,a1
 7004eec:	00472583          	lw	a1,4(a4)
 7004ef0:	40d906b3          	sub	a3,s2,a3
 7004ef4:	0ed5e863          	bltu	a1,a3,7004fe4 <_ZN3std2io5Write18write_all_vectored17h55a138395054f98bE+0x20c>
 7004ef8:	00062783          	lw	a5,0(a2)
 7004efc:	00470713          	add	a4,a4,4
 7004f00:	00d787b3          	add	a5,a5,a3
 7004f04:	40d585b3          	sub	a1,a1,a3
 7004f08:	00f62023          	sw	a5,0(a2)
 7004f0c:	00b72023          	sw	a1,0(a4)
 7004f10:	40a484b3          	sub	s1,s1,a0
 7004f14:	f2049ee3          	bnez	s1,7004e50 <_ZN3std2io5Write18write_all_vectored17h55a138395054f98bE+0x78>
 7004f18:	00400513          	li	a0,4
 7004f1c:	00a40023          	sb	a0,0(s0)
 7004f20:	0300006f          	j	7004f50 <_ZN3std2io5Write18write_all_vectored17h55a138395054f98bE+0x178>
 7004f24:	07008537          	lui	a0,0x7008
 7004f28:	e1850593          	add	a1,a0,-488 # 7007e18 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.36>
 7004f2c:	00200513          	li	a0,2
 7004f30:	00200493          	li	s1,2
 7004f34:	00000613          	li	a2,0
 7004f38:	ffffd097          	auipc	ra,0xffffd
 7004f3c:	ae0080e7          	jalr	-1312(ra) # 7001a18 <sys_write>
 7004f40:	07008537          	lui	a0,0x7008
 7004f44:	f5450513          	add	a0,a0,-172 # 7007f54 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.43>
 7004f48:	00a42223          	sw	a0,4(s0)
 7004f4c:	00942023          	sw	s1,0(s0)
 7004f50:	03c12083          	lw	ra,60(sp)
 7004f54:	03812403          	lw	s0,56(sp)
 7004f58:	03412483          	lw	s1,52(sp)
 7004f5c:	03012903          	lw	s2,48(sp)
 7004f60:	02c12983          	lw	s3,44(sp)
 7004f64:	02812a03          	lw	s4,40(sp)
 7004f68:	02412a83          	lw	s5,36(sp)
 7004f6c:	04010113          	add	sp,sp,64
 7004f70:	00008067          	ret
 7004f74:	070085b7          	lui	a1,0x7008
 7004f78:	ed858613          	add	a2,a1,-296 # 7007ed8 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.37>
 7004f7c:	00068593          	mv	a1,a3
 7004f80:	00001097          	auipc	ra,0x1
 7004f84:	dd4080e7          	jalr	-556(ra) # 7005d54 <_ZN4core5slice5index26slice_start_index_len_fail17h4ce9409af94c9ed9E>
 7004f88:	c0001073          	unimp
 7004f8c:	070085b7          	lui	a1,0x7008
 7004f90:	ed858613          	add	a2,a1,-296 # 7007ed8 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.37>
 7004f94:	00048593          	mv	a1,s1
 7004f98:	00001097          	auipc	ra,0x1
 7004f9c:	dbc080e7          	jalr	-580(ra) # 7005d54 <_ZN4core5slice5index26slice_start_index_len_fail17h4ce9409af94c9ed9E>
 7004fa0:	c0001073          	unimp
 7004fa4:	07008537          	lui	a0,0x7008
 7004fa8:	f2050513          	add	a0,a0,-224 # 7007f20 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.40>
 7004fac:	00a12423          	sw	a0,8(sp)
 7004fb0:	00100513          	li	a0,1
 7004fb4:	00a12623          	sw	a0,12(sp)
 7004fb8:	00012823          	sw	zero,16(sp)
 7004fbc:	07008537          	lui	a0,0x7008
 7004fc0:	e1850513          	add	a0,a0,-488 # 7007e18 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.36>
 7004fc4:	00a12c23          	sw	a0,24(sp)
 7004fc8:	00012e23          	sw	zero,28(sp)
 7004fcc:	07008537          	lui	a0,0x7008
 7004fd0:	f2850593          	add	a1,a0,-216 # 7007f28 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.41>
 7004fd4:	00810513          	add	a0,sp,8
 7004fd8:	00002097          	auipc	ra,0x2
 7004fdc:	990080e7          	jalr	-1648(ra) # 7006968 <_ZN4core9panicking9panic_fmt17hc6785b61922481b6E>
 7004fe0:	c0001073          	unimp
 7004fe4:	07008537          	lui	a0,0x7008
 7004fe8:	ee850613          	add	a2,a0,-280 # 7007ee8 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.38>
 7004fec:	00068513          	mv	a0,a3
 7004ff0:	00001097          	auipc	ra,0x1
 7004ff4:	d64080e7          	jalr	-668(ra) # 7005d54 <_ZN4core5slice5index26slice_start_index_len_fail17h4ce9409af94c9ed9E>
 7004ff8:	c0001073          	unimp

07004ffc <_ZN3std2io5Write9write_fmt17h7e8d75eeb4951563E>:
 7004ffc:	fc010113          	add	sp,sp,-64
 7005000:	02112e23          	sw	ra,60(sp)
 7005004:	02812c23          	sw	s0,56(sp)
 7005008:	02912a23          	sw	s1,52(sp)
 700500c:	00050413          	mv	s0,a0
 7005010:	00b12423          	sw	a1,8(sp)
 7005014:	01462503          	lw	a0,20(a2)
 7005018:	01062583          	lw	a1,16(a2)
 700501c:	00c62683          	lw	a3,12(a2)
 7005020:	00862703          	lw	a4,8(a2)
 7005024:	02a12623          	sw	a0,44(sp)
 7005028:	02b12423          	sw	a1,40(sp)
 700502c:	02d12223          	sw	a3,36(sp)
 7005030:	02e12023          	sw	a4,32(sp)
 7005034:	00462503          	lw	a0,4(a2)
 7005038:	00062583          	lw	a1,0(a2)
 700503c:	00400493          	li	s1,4
 7005040:	00910623          	sb	s1,12(sp)
 7005044:	00a12e23          	sw	a0,28(sp)
 7005048:	00b12c23          	sw	a1,24(sp)
 700504c:	07008537          	lui	a0,0x7008
 7005050:	f6050593          	add	a1,a0,-160 # 7007f60 <anon.9912995c2a2ef8a5d0c3af439f111538.44.llvm.6387882789376083808>
 7005054:	00810513          	add	a0,sp,8
 7005058:	01810613          	add	a2,sp,24
 700505c:	00001097          	auipc	ra,0x1
 7005060:	dcc080e7          	jalr	-564(ra) # 7005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>
 7005064:	02050263          	beqz	a0,7005088 <_ZN3std2io5Write9write_fmt17h7e8d75eeb4951563E+0x8c>
 7005068:	00c14503          	lbu	a0,12(sp)
 700506c:	06951a63          	bne	a0,s1,70050e0 <_ZN3std2io5Write9write_fmt17h7e8d75eeb4951563E+0xe4>
 7005070:	00200513          	li	a0,2
 7005074:	00a42023          	sw	a0,0(s0)
 7005078:	07008537          	lui	a0,0x7008
 700507c:	f8850513          	add	a0,a0,-120 # 7007f88 <anon.9912995c2a2ef8a5d0c3af439f111538.46.llvm.6387882789376083808>
 7005080:	00a42223          	sw	a0,4(s0)
 7005084:	06c0006f          	j	70050f0 <_ZN3std2io5Write9write_fmt17h7e8d75eeb4951563E+0xf4>
 7005088:	00c14503          	lbu	a0,12(sp)
 700508c:	00300593          	li	a1,3
 7005090:	00940023          	sb	s1,0(s0)
 7005094:	04b51e63          	bne	a0,a1,70050f0 <_ZN3std2io5Write9write_fmt17h7e8d75eeb4951563E+0xf4>
 7005098:	01012403          	lw	s0,16(sp)
 700509c:	00442583          	lw	a1,4(s0)
 70050a0:	00042503          	lw	a0,0(s0)
 70050a4:	0005a583          	lw	a1,0(a1)
 70050a8:	000580e7          	jalr	a1
 70050ac:	00442503          	lw	a0,4(s0)
 70050b0:	00452583          	lw	a1,4(a0)
 70050b4:	00058a63          	beqz	a1,70050c8 <_ZN3std2io5Write9write_fmt17h7e8d75eeb4951563E+0xcc>
 70050b8:	00852603          	lw	a2,8(a0)
 70050bc:	00042503          	lw	a0,0(s0)
 70050c0:	ffffb097          	auipc	ra,0xffffb
 70050c4:	56c080e7          	jalr	1388(ra) # 700062c <__rust_dealloc>
 70050c8:	01012503          	lw	a0,16(sp)
 70050cc:	00c00593          	li	a1,12
 70050d0:	00400613          	li	a2,4
 70050d4:	ffffb097          	auipc	ra,0xffffb
 70050d8:	558080e7          	jalr	1368(ra) # 700062c <__rust_dealloc>
 70050dc:	0140006f          	j	70050f0 <_ZN3std2io5Write9write_fmt17h7e8d75eeb4951563E+0xf4>
 70050e0:	01012503          	lw	a0,16(sp)
 70050e4:	00c12583          	lw	a1,12(sp)
 70050e8:	00a42223          	sw	a0,4(s0)
 70050ec:	00b42023          	sw	a1,0(s0)
 70050f0:	03c12083          	lw	ra,60(sp)
 70050f4:	03812403          	lw	s0,56(sp)
 70050f8:	03412483          	lw	s1,52(sp)
 70050fc:	04010113          	add	sp,sp,64
 7005100:	00008067          	ret

07005104 <_ZN64_$LT$std..sys..zkvm..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17h0206576e8e93a492E>:
 7005104:	ff010113          	add	sp,sp,-16
 7005108:	00112623          	sw	ra,12(sp)
 700510c:	00812423          	sw	s0,8(sp)
 7005110:	00912223          	sw	s1,4(sp)
 7005114:	00068413          	mv	s0,a3
 7005118:	00060593          	mv	a1,a2
 700511c:	00050493          	mv	s1,a0
 7005120:	00200513          	li	a0,2
 7005124:	00068613          	mv	a2,a3
 7005128:	ffffd097          	auipc	ra,0xffffd
 700512c:	8f0080e7          	jalr	-1808(ra) # 7001a18 <sys_write>
 7005130:	0084a223          	sw	s0,4(s1)
 7005134:	00400513          	li	a0,4
 7005138:	00a48023          	sb	a0,0(s1)
 700513c:	00c12083          	lw	ra,12(sp)
 7005140:	00812403          	lw	s0,8(sp)
 7005144:	00412483          	lw	s1,4(sp)
 7005148:	01010113          	add	sp,sp,16
 700514c:	00008067          	ret

07005150 <_ZN64_$LT$std..sys..zkvm..stdio..Stderr$u20$as$u20$std..io..Write$GT$5flush17he1993e5f6fac996aE>:
 7005150:	00400593          	li	a1,4
 7005154:	00b50023          	sb	a1,0(a0)
 7005158:	00008067          	ret

0700515c <_ZN3std5alloc24default_alloc_error_hook17hff88d0584afbc6c0E>:
 700515c:	fb010113          	add	sp,sp,-80
 7005160:	04112623          	sw	ra,76(sp)
 7005164:	04812423          	sw	s0,72(sp)
 7005168:	000805b7          	lui	a1,0x80
 700516c:	0285c583          	lbu	a1,40(a1) # 80028 <__rust_alloc_error_handler_should_panic>
 7005170:	12059063          	bnez	a1,7005290 <_ZN3std5alloc24default_alloc_error_hook17hff88d0584afbc6c0E+0x134>
 7005174:	00a12a23          	sw	a0,20(sp)
 7005178:	01410513          	add	a0,sp,20
 700517c:	00a12423          	sw	a0,8(sp)
 7005180:	07007537          	lui	a0,0x7007
 7005184:	e1450513          	add	a0,a0,-492 # 7006e14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17heab9e780deef2c77E>
 7005188:	00a12623          	sw	a0,12(sp)
 700518c:	04010513          	add	a0,sp,64
 7005190:	00a12c23          	sw	a0,24(sp)
 7005194:	00400413          	li	s0,4
 7005198:	00810e23          	sb	s0,28(sp)
 700519c:	07008537          	lui	a0,0x7008
 70051a0:	fb850513          	add	a0,a0,-72 # 7007fb8 <.Lanon.7bc596e10b05ffcb20d3deb677cfb8d7.27>
 70051a4:	02a12423          	sw	a0,40(sp)
 70051a8:	00200513          	li	a0,2
 70051ac:	02a12623          	sw	a0,44(sp)
 70051b0:	02012823          	sw	zero,48(sp)
 70051b4:	00810513          	add	a0,sp,8
 70051b8:	02a12c23          	sw	a0,56(sp)
 70051bc:	00100513          	li	a0,1
 70051c0:	02a12e23          	sw	a0,60(sp)
 70051c4:	07008537          	lui	a0,0x7008
 70051c8:	f6050593          	add	a1,a0,-160 # 7007f60 <anon.9912995c2a2ef8a5d0c3af439f111538.44.llvm.6387882789376083808>
 70051cc:	01810513          	add	a0,sp,24
 70051d0:	02810613          	add	a2,sp,40
 70051d4:	00001097          	auipc	ra,0x1
 70051d8:	c54080e7          	jalr	-940(ra) # 7005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>
 70051dc:	01c14583          	lbu	a1,28(sp)
 70051e0:	04050a63          	beqz	a0,7005234 <_ZN3std5alloc24default_alloc_error_hook17hff88d0584afbc6c0E+0xd8>
 70051e4:	08858e63          	beq	a1,s0,7005280 <_ZN3std5alloc24default_alloc_error_hook17hff88d0584afbc6c0E+0x124>
 70051e8:	01c14503          	lbu	a0,28(sp)
 70051ec:	00300593          	li	a1,3
 70051f0:	08b51863          	bne	a0,a1,7005280 <_ZN3std5alloc24default_alloc_error_hook17hff88d0584afbc6c0E+0x124>
 70051f4:	02012403          	lw	s0,32(sp)
 70051f8:	00442583          	lw	a1,4(s0)
 70051fc:	00042503          	lw	a0,0(s0)
 7005200:	0005a583          	lw	a1,0(a1)
 7005204:	000580e7          	jalr	a1
 7005208:	00442503          	lw	a0,4(s0)
 700520c:	00452583          	lw	a1,4(a0)
 7005210:	00058a63          	beqz	a1,7005224 <_ZN3std5alloc24default_alloc_error_hook17hff88d0584afbc6c0E+0xc8>
 7005214:	00852603          	lw	a2,8(a0)
 7005218:	00042503          	lw	a0,0(s0)
 700521c:	ffffb097          	auipc	ra,0xffffb
 7005220:	410080e7          	jalr	1040(ra) # 700062c <__rust_dealloc>
 7005224:	00c00593          	li	a1,12
 7005228:	00400613          	li	a2,4
 700522c:	00040513          	mv	a0,s0
 7005230:	0480006f          	j	7005278 <_ZN3std5alloc24default_alloc_error_hook17hff88d0584afbc6c0E+0x11c>
 7005234:	00300513          	li	a0,3
 7005238:	04a59463          	bne	a1,a0,7005280 <_ZN3std5alloc24default_alloc_error_hook17hff88d0584afbc6c0E+0x124>
 700523c:	02012403          	lw	s0,32(sp)
 7005240:	00442583          	lw	a1,4(s0)
 7005244:	00042503          	lw	a0,0(s0)
 7005248:	0005a583          	lw	a1,0(a1)
 700524c:	000580e7          	jalr	a1
 7005250:	00442503          	lw	a0,4(s0)
 7005254:	00452583          	lw	a1,4(a0)
 7005258:	00058a63          	beqz	a1,700526c <_ZN3std5alloc24default_alloc_error_hook17hff88d0584afbc6c0E+0x110>
 700525c:	00852603          	lw	a2,8(a0)
 7005260:	00042503          	lw	a0,0(s0)
 7005264:	ffffb097          	auipc	ra,0xffffb
 7005268:	3c8080e7          	jalr	968(ra) # 700062c <__rust_dealloc>
 700526c:	02012503          	lw	a0,32(sp)
 7005270:	00c00593          	li	a1,12
 7005274:	00400613          	li	a2,4
 7005278:	ffffb097          	auipc	ra,0xffffb
 700527c:	3b4080e7          	jalr	948(ra) # 700062c <__rust_dealloc>
 7005280:	04c12083          	lw	ra,76(sp)
 7005284:	04812403          	lw	s0,72(sp)
 7005288:	05010113          	add	sp,sp,80
 700528c:	00008067          	ret
 7005290:	00a12423          	sw	a0,8(sp)
 7005294:	00810513          	add	a0,sp,8
 7005298:	00a12c23          	sw	a0,24(sp)
 700529c:	07007537          	lui	a0,0x7007
 70052a0:	e1450513          	add	a0,a0,-492 # 7006e14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17heab9e780deef2c77E>
 70052a4:	00a12e23          	sw	a0,28(sp)
 70052a8:	07008537          	lui	a0,0x7008
 70052ac:	fb850513          	add	a0,a0,-72 # 7007fb8 <.Lanon.7bc596e10b05ffcb20d3deb677cfb8d7.27>
 70052b0:	02a12423          	sw	a0,40(sp)
 70052b4:	00200513          	li	a0,2
 70052b8:	02a12623          	sw	a0,44(sp)
 70052bc:	02012823          	sw	zero,48(sp)
 70052c0:	01810513          	add	a0,sp,24
 70052c4:	02a12c23          	sw	a0,56(sp)
 70052c8:	00100513          	li	a0,1
 70052cc:	02a12e23          	sw	a0,60(sp)
 70052d0:	07008537          	lui	a0,0x7008
 70052d4:	08450593          	add	a1,a0,132 # 7008084 <.Lanon.7bc596e10b05ffcb20d3deb677cfb8d7.29>
 70052d8:	02810513          	add	a0,sp,40
 70052dc:	00001097          	auipc	ra,0x1
 70052e0:	68c080e7          	jalr	1676(ra) # 7006968 <_ZN4core9panicking9panic_fmt17hc6785b61922481b6E>
 70052e4:	c0001073          	unimp

070052e8 <rust_oom>:
 70052e8:	ff010113          	add	sp,sp,-16
 70052ec:	00112623          	sw	ra,12(sp)
 70052f0:	00080637          	lui	a2,0x80
 70052f4:	03862603          	lw	a2,56(a2) # 80038 <_ZN3std5alloc4HOOK17h87f62f4f1992662cE.0>
 70052f8:	00061663          	bnez	a2,7005304 <rust_oom+0x1c>
 70052fc:	07005637          	lui	a2,0x7005
 7005300:	15c60613          	add	a2,a2,348 # 700515c <_ZN3std5alloc24default_alloc_error_hook17hff88d0584afbc6c0E>
 7005304:	000600e7          	jalr	a2
 7005308:	c0001073          	unimp
 700530c:	c0001073          	unimp

07005310 <__rust_start_panic>:
 7005310:	c0001073          	unimp
 7005314:	c0001073          	unimp

07005318 <_ZN5alloc7raw_vec17capacity_overflow17h59e3baefeac9f928E>:
 7005318:	fe010113          	add	sp,sp,-32
 700531c:	07008537          	lui	a0,0x7008
 7005320:	16850513          	add	a0,a0,360 # 7008168 <anon.cae369f449f32127ca43d99b56687b4d.6.llvm.14601742668486837291>
 7005324:	00a12423          	sw	a0,8(sp)
 7005328:	00100513          	li	a0,1
 700532c:	00a12623          	sw	a0,12(sp)
 7005330:	00012823          	sw	zero,16(sp)
 7005334:	07008537          	lui	a0,0x7008
 7005338:	09450513          	add	a0,a0,148 # 7008094 <anon.cae369f449f32127ca43d99b56687b4d.3.llvm.14601742668486837291>
 700533c:	00a12c23          	sw	a0,24(sp)
 7005340:	00012e23          	sw	zero,28(sp)
 7005344:	07008537          	lui	a0,0x7008
 7005348:	17050593          	add	a1,a0,368 # 7008170 <anon.cae369f449f32127ca43d99b56687b4d.7.llvm.14601742668486837291>
 700534c:	00810513          	add	a0,sp,8
 7005350:	00001097          	auipc	ra,0x1
 7005354:	618080e7          	jalr	1560(ra) # 7006968 <_ZN4core9panicking9panic_fmt17hc6785b61922481b6E>
 7005358:	c0001073          	unimp

0700535c <_ZN5alloc5alloc18handle_alloc_error17hf138f09b4614ca73E>:
 700535c:	00000097          	auipc	ra,0x0
 7005360:	00c080e7          	jalr	12(ra) # 7005368 <_ZN5alloc5alloc18handle_alloc_error8rt_error17h2ce882cc25e02a9aE>
 7005364:	c0001073          	unimp

07005368 <_ZN5alloc5alloc18handle_alloc_error8rt_error17h2ce882cc25e02a9aE>:
 7005368:	ffffb097          	auipc	ra,0xffffb
 700536c:	2d4080e7          	jalr	724(ra) # 700063c <__rust_alloc_error_handler>
 7005370:	c0001073          	unimp

07005374 <__rg_oom>:
 7005374:	00000097          	auipc	ra,0x0
 7005378:	f74080e7          	jalr	-140(ra) # 70052e8 <rust_oom>
 700537c:	c0001073          	unimp

07005380 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17he54497768046434cE>:
 7005380:	f7010113          	add	sp,sp,-144
 7005384:	08112623          	sw	ra,140(sp)
 7005388:	00058813          	mv	a6,a1
 700538c:	00000593          	li	a1,0
 7005390:	00052883          	lw	a7,0(a0)
 7005394:	00c10513          	add	a0,sp,12
 7005398:	00a00613          	li	a2,10
 700539c:	00f00693          	li	a3,15
 70053a0:	01c0006f          	j	70053bc <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17he54497768046434cE+0x3c>
 70053a4:	00b50333          	add	t1,a0,a1
 70053a8:	00475893          	srl	a7,a4,0x4
 70053ac:	00f287b3          	add	a5,t0,a5
 70053b0:	06f30fa3          	sb	a5,127(t1)
 70053b4:	fff58593          	add	a1,a1,-1
 70053b8:	00e6fe63          	bgeu	a3,a4,70053d4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17he54497768046434cE+0x54>
 70053bc:	00088713          	mv	a4,a7
 70053c0:	00f8f793          	and	a5,a7,15
 70053c4:	03000293          	li	t0,48
 70053c8:	fcc7eee3          	bltu	a5,a2,70053a4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17he54497768046434cE+0x24>
 70053cc:	05700293          	li	t0,87
 70053d0:	fd5ff06f          	j	70053a4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17he54497768046434cE+0x24>
 70053d4:	08058513          	add	a0,a1,128
 70053d8:	08100613          	li	a2,129
 70053dc:	02c57e63          	bgeu	a0,a2,7005418 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17he54497768046434cE+0x98>
 70053e0:	00c10513          	add	a0,sp,12
 70053e4:	00b50533          	add	a0,a0,a1
 70053e8:	08050713          	add	a4,a0,128
 70053ec:	40b007b3          	neg	a5,a1
 70053f0:	07008537          	lui	a0,0x7008
 70053f4:	25050613          	add	a2,a0,592 # 7008250 <anon.564c0ea675f63267486e34ba3a5001a1.2.llvm.6662267625297349771>
 70053f8:	00100593          	li	a1,1
 70053fc:	00200693          	li	a3,2
 7005400:	00080513          	mv	a0,a6
 7005404:	00001097          	auipc	ra,0x1
 7005408:	c88080e7          	jalr	-888(ra) # 700608c <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E>
 700540c:	08c12083          	lw	ra,140(sp)
 7005410:	09010113          	add	sp,sp,144
 7005414:	00008067          	ret
 7005418:	070085b7          	lui	a1,0x7008
 700541c:	24058613          	add	a2,a1,576 # 7008240 <anon.564c0ea675f63267486e34ba3a5001a1.1.llvm.6662267625297349771>
 7005420:	08000593          	li	a1,128
 7005424:	00001097          	auipc	ra,0x1
 7005428:	930080e7          	jalr	-1744(ra) # 7005d54 <_ZN4core5slice5index26slice_start_index_len_fail17h4ce9409af94c9ed9E>
 700542c:	c0001073          	unimp

07005430 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h6ea2fd24013bbc24E>:
 7005430:	f7010113          	add	sp,sp,-144
 7005434:	08112623          	sw	ra,140(sp)
 7005438:	00058813          	mv	a6,a1
 700543c:	00000593          	li	a1,0
 7005440:	00052883          	lw	a7,0(a0)
 7005444:	00c10513          	add	a0,sp,12
 7005448:	00a00613          	li	a2,10
 700544c:	00f00693          	li	a3,15
 7005450:	01c0006f          	j	700546c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h6ea2fd24013bbc24E+0x3c>
 7005454:	00b50333          	add	t1,a0,a1
 7005458:	00475893          	srl	a7,a4,0x4
 700545c:	00f287b3          	add	a5,t0,a5
 7005460:	06f30fa3          	sb	a5,127(t1)
 7005464:	fff58593          	add	a1,a1,-1
 7005468:	00e6fe63          	bgeu	a3,a4,7005484 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h6ea2fd24013bbc24E+0x54>
 700546c:	00088713          	mv	a4,a7
 7005470:	00f8f793          	and	a5,a7,15
 7005474:	03000293          	li	t0,48
 7005478:	fcc7eee3          	bltu	a5,a2,7005454 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h6ea2fd24013bbc24E+0x24>
 700547c:	03700293          	li	t0,55
 7005480:	fd5ff06f          	j	7005454 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h6ea2fd24013bbc24E+0x24>
 7005484:	08058513          	add	a0,a1,128
 7005488:	08100613          	li	a2,129
 700548c:	02c57e63          	bgeu	a0,a2,70054c8 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h6ea2fd24013bbc24E+0x98>
 7005490:	00c10513          	add	a0,sp,12
 7005494:	00b50533          	add	a0,a0,a1
 7005498:	08050713          	add	a4,a0,128
 700549c:	40b007b3          	neg	a5,a1
 70054a0:	07008537          	lui	a0,0x7008
 70054a4:	25050613          	add	a2,a0,592 # 7008250 <anon.564c0ea675f63267486e34ba3a5001a1.2.llvm.6662267625297349771>
 70054a8:	00100593          	li	a1,1
 70054ac:	00200693          	li	a3,2
 70054b0:	00080513          	mv	a0,a6
 70054b4:	00001097          	auipc	ra,0x1
 70054b8:	bd8080e7          	jalr	-1064(ra) # 700608c <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E>
 70054bc:	08c12083          	lw	ra,140(sp)
 70054c0:	09010113          	add	sp,sp,144
 70054c4:	00008067          	ret
 70054c8:	070085b7          	lui	a1,0x7008
 70054cc:	24058613          	add	a2,a1,576 # 7008240 <anon.564c0ea675f63267486e34ba3a5001a1.1.llvm.6662267625297349771>
 70054d0:	08000593          	li	a1,128
 70054d4:	00001097          	auipc	ra,0x1
 70054d8:	880080e7          	jalr	-1920(ra) # 7005d54 <_ZN4core5slice5index26slice_start_index_len_fail17h4ce9409af94c9ed9E>
 70054dc:	c0001073          	unimp

070054e0 <_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17haa866e184ec9b31cE>:
 70054e0:	fd010113          	add	sp,sp,-48
 70054e4:	00a12023          	sw	a0,0(sp)
 70054e8:	00b12223          	sw	a1,4(sp)
 70054ec:	00410513          	add	a0,sp,4
 70054f0:	02a12023          	sw	a0,32(sp)
 70054f4:	07007537          	lui	a0,0x7007
 70054f8:	e1450513          	add	a0,a0,-492 # 7006e14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17heab9e780deef2c77E>
 70054fc:	02a12223          	sw	a0,36(sp)
 7005500:	00010593          	mv	a1,sp
 7005504:	02b12423          	sw	a1,40(sp)
 7005508:	02a12623          	sw	a0,44(sp)
 700550c:	07008537          	lui	a0,0x7008
 7005510:	35c50513          	add	a0,a0,860 # 700835c <.Lanon.60cf129b6b8622904f5ffa0a3393ba31.34>
 7005514:	00a12423          	sw	a0,8(sp)
 7005518:	00300513          	li	a0,3
 700551c:	00a12623          	sw	a0,12(sp)
 7005520:	00012823          	sw	zero,16(sp)
 7005524:	02010513          	add	a0,sp,32
 7005528:	00a12c23          	sw	a0,24(sp)
 700552c:	00200513          	li	a0,2
 7005530:	00a12e23          	sw	a0,28(sp)
 7005534:	00810513          	add	a0,sp,8
 7005538:	00060593          	mv	a1,a2
 700553c:	00001097          	auipc	ra,0x1
 7005540:	42c080e7          	jalr	1068(ra) # 7006968 <_ZN4core9panicking9panic_fmt17hc6785b61922481b6E>
 7005544:	c0001073          	unimp

07005548 <_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h6be87742fb768102E>:
 7005548:	01c5a603          	lw	a2,28(a1)
 700554c:	0185a503          	lw	a0,24(a1)
 7005550:	00c62303          	lw	t1,12(a2)
 7005554:	070085b7          	lui	a1,0x7008
 7005558:	37458593          	add	a1,a1,884 # 7008374 <.Lanon.6d771cd846f25d13b1efff6bee2d335d.24>
 700555c:	00e00613          	li	a2,14
 7005560:	00030067          	jr	t1

07005564 <_ZN70_$LT$core..panic..location..Location$u20$as$u20$core..fmt..Display$GT$3fmt17h21a0255f8d1b0a0fE>:
 7005564:	fc010113          	add	sp,sp,-64
 7005568:	02112e23          	sw	ra,60(sp)
 700556c:	00850613          	add	a2,a0,8
 7005570:	00c50693          	add	a3,a0,12
 7005574:	00a12423          	sw	a0,8(sp)
 7005578:	07007537          	lui	a0,0x7007
 700557c:	94c50513          	add	a0,a0,-1716 # 700694c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17heafb4d0291ff00daE>
 7005580:	00a12623          	sw	a0,12(sp)
 7005584:	00c12823          	sw	a2,16(sp)
 7005588:	07007537          	lui	a0,0x7007
 700558c:	e1450513          	add	a0,a0,-492 # 7006e14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17heab9e780deef2c77E>
 7005590:	00a12a23          	sw	a0,20(sp)
 7005594:	00d12c23          	sw	a3,24(sp)
 7005598:	00a12e23          	sw	a0,28(sp)
 700559c:	0185a503          	lw	a0,24(a1)
 70055a0:	01c5a583          	lw	a1,28(a1)
 70055a4:	07008637          	lui	a2,0x7008
 70055a8:	38860613          	add	a2,a2,904 # 7008388 <anon.7d99c8ca23b35441d815b402e02ae6ac.22.llvm.1518608519765115567>
 70055ac:	02c12023          	sw	a2,32(sp)
 70055b0:	00300613          	li	a2,3
 70055b4:	02c12223          	sw	a2,36(sp)
 70055b8:	02012423          	sw	zero,40(sp)
 70055bc:	00810693          	add	a3,sp,8
 70055c0:	02d12823          	sw	a3,48(sp)
 70055c4:	02c12a23          	sw	a2,52(sp)
 70055c8:	02010613          	add	a2,sp,32
 70055cc:	00001097          	auipc	ra,0x1
 70055d0:	85c080e7          	jalr	-1956(ra) # 7005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>
 70055d4:	03c12083          	lw	ra,60(sp)
 70055d8:	04010113          	add	sp,sp,64
 70055dc:	00008067          	ret

070055e0 <_ZN4core3fmt8builders11DebugStruct6finish17h2825bcbf9812aed2E>:
 70055e0:	ff010113          	add	sp,sp,-16
 70055e4:	00112623          	sw	ra,12(sp)
 70055e8:	00812423          	sw	s0,8(sp)
 70055ec:	00050413          	mv	s0,a0
 70055f0:	00554503          	lbu	a0,5(a0)
 70055f4:	00444583          	lbu	a1,4(s0)
 70055f8:	04050e63          	beqz	a0,7005654 <_ZN4core3fmt8builders11DebugStruct6finish17h2825bcbf9812aed2E+0x74>
 70055fc:	00100513          	li	a0,1
 7005600:	04059663          	bnez	a1,700564c <_ZN4core3fmt8builders11DebugStruct6finish17h2825bcbf9812aed2E+0x6c>
 7005604:	00042503          	lw	a0,0(s0)
 7005608:	00054583          	lbu	a1,0(a0)
 700560c:	0045f593          	and	a1,a1,4
 7005610:	02059063          	bnez	a1,7005630 <_ZN4core3fmt8builders11DebugStruct6finish17h2825bcbf9812aed2E+0x50>
 7005614:	01c52583          	lw	a1,28(a0)
 7005618:	01852503          	lw	a0,24(a0)
 700561c:	00c5a683          	lw	a3,12(a1)
 7005620:	070085b7          	lui	a1,0x7008
 7005624:	3a158593          	add	a1,a1,929 # 70083a1 <anon.7d99c8ca23b35441d815b402e02ae6ac.33.llvm.1518608519765115567>
 7005628:	00200613          	li	a2,2
 700562c:	01c0006f          	j	7005648 <_ZN4core3fmt8builders11DebugStruct6finish17h2825bcbf9812aed2E+0x68>
 7005630:	01c52583          	lw	a1,28(a0)
 7005634:	01852503          	lw	a0,24(a0)
 7005638:	00c5a683          	lw	a3,12(a1)
 700563c:	070085b7          	lui	a1,0x7008
 7005640:	3a058593          	add	a1,a1,928 # 70083a0 <anon.7d99c8ca23b35441d815b402e02ae6ac.30.llvm.1518608519765115567>
 7005644:	00100613          	li	a2,1
 7005648:	000680e7          	jalr	a3
 700564c:	00a40223          	sb	a0,4(s0)
 7005650:	00050593          	mv	a1,a0
 7005654:	00b03533          	snez	a0,a1
 7005658:	00c12083          	lw	ra,12(sp)
 700565c:	00812403          	lw	s0,8(sp)
 7005660:	01010113          	add	sp,sp,16
 7005664:	00008067          	ret

07005668 <_ZN4core3str5count14do_count_chars17hce88d1f68e60deecE>:
 7005668:	00050613          	mv	a2,a0
 700566c:	00350513          	add	a0,a0,3
 7005670:	ffc57713          	and	a4,a0,-4
 7005674:	40c706b3          	sub	a3,a4,a2
 7005678:	00d5ee63          	bltu	a1,a3,7005694 <_ZN4core3str5count14do_count_chars17hce88d1f68e60deecE+0x2c>
 700567c:	40d58533          	sub	a0,a1,a3
 7005680:	00453793          	sltiu	a5,a0,4
 7005684:	0056b813          	sltiu	a6,a3,5
 7005688:	00184813          	xor	a6,a6,1
 700568c:	00f867b3          	or	a5,a6,a5
 7005690:	02078663          	beqz	a5,70056bc <_ZN4core3str5count14do_count_chars17hce88d1f68e60deecE+0x54>
 7005694:	00000513          	li	a0,0
 7005698:	02058063          	beqz	a1,70056b8 <_ZN4core3str5count14do_count_chars17hce88d1f68e60deecE+0x50>
 700569c:	00060683          	lb	a3,0(a2)
 70056a0:	00160613          	add	a2,a2,1
 70056a4:	fc06a693          	slti	a3,a3,-64
 70056a8:	0016c693          	xor	a3,a3,1
 70056ac:	fff58593          	add	a1,a1,-1
 70056b0:	00d50533          	add	a0,a0,a3
 70056b4:	fe0594e3          	bnez	a1,700569c <_ZN4core3str5count14do_count_chars17hce88d1f68e60deecE+0x34>
 70056b8:	00008067          	ret
 70056bc:	00357593          	and	a1,a0,3
 70056c0:	00000793          	li	a5,0
 70056c4:	02c70463          	beq	a4,a2,70056ec <_ZN4core3str5count14do_count_chars17hce88d1f68e60deecE+0x84>
 70056c8:	40e60733          	sub	a4,a2,a4
 70056cc:	00060813          	mv	a6,a2
 70056d0:	00080883          	lb	a7,0(a6)
 70056d4:	00180813          	add	a6,a6,1
 70056d8:	fc08a893          	slti	a7,a7,-64
 70056dc:	0018c893          	xor	a7,a7,1
 70056e0:	00170713          	add	a4,a4,1
 70056e4:	011787b3          	add	a5,a5,a7
 70056e8:	fe0714e3          	bnez	a4,70056d0 <_ZN4core3str5count14do_count_chars17hce88d1f68e60deecE+0x68>
 70056ec:	00d606b3          	add	a3,a2,a3
 70056f0:	00000813          	li	a6,0
 70056f4:	02058463          	beqz	a1,700571c <_ZN4core3str5count14do_count_chars17hce88d1f68e60deecE+0xb4>
 70056f8:	ffc57613          	and	a2,a0,-4
 70056fc:	00c68633          	add	a2,a3,a2
 7005700:	00060703          	lb	a4,0(a2)
 7005704:	00160613          	add	a2,a2,1
 7005708:	fc072713          	slti	a4,a4,-64
 700570c:	00174713          	xor	a4,a4,1
 7005710:	fff58593          	add	a1,a1,-1
 7005714:	00e80833          	add	a6,a6,a4
 7005718:	fe0594e3          	bnez	a1,7005700 <_ZN4core3str5count14do_count_chars17hce88d1f68e60deecE+0x98>
 700571c:	00255293          	srl	t0,a0,0x2
 7005720:	01010537          	lui	a0,0x1010
 7005724:	10150713          	add	a4,a0,257 # 1010101 <__stack_init$+0x810105>
 7005728:	00ff0537          	lui	a0,0xff0
 700572c:	0ff50593          	add	a1,a0,255 # ff00ff <__stack_init$+0x7f0103>
 7005730:	00010537          	lui	a0,0x10
 7005734:	00150613          	add	a2,a0,1 # 10001 <__bss_size+0xff79>
 7005738:	00f80533          	add	a0,a6,a5
 700573c:	0340006f          	j	7005770 <_ZN4core3str5count14do_count_chars17hce88d1f68e60deecE+0x108>
 7005740:	00289293          	sll	t0,a7,0x2
 7005744:	005686b3          	add	a3,a3,t0
 7005748:	411782b3          	sub	t0,a5,a7
 700574c:	0038f893          	and	a7,a7,3
 7005750:	00b373b3          	and	t2,t1,a1
 7005754:	00835313          	srl	t1,t1,0x8
 7005758:	00b37333          	and	t1,t1,a1
 700575c:	00730333          	add	t1,t1,t2
 7005760:	02c30333          	mul	t1,t1,a2
 7005764:	01035313          	srl	t1,t1,0x10
 7005768:	00a30533          	add	a0,t1,a0
 700576c:	0a089863          	bnez	a7,700581c <_ZN4core3str5count14do_count_chars17hce88d1f68e60deecE+0x1b4>
 7005770:	f40284e3          	beqz	t0,70056b8 <_ZN4core3str5count14do_count_chars17hce88d1f68e60deecE+0x50>
 7005774:	00028793          	mv	a5,t0
 7005778:	0c000813          	li	a6,192
 700577c:	00028893          	mv	a7,t0
 7005780:	0102e463          	bltu	t0,a6,7005788 <_ZN4core3str5count14do_count_chars17hce88d1f68e60deecE+0x120>
 7005784:	0c000893          	li	a7,192
 7005788:	0fc8f293          	and	t0,a7,252
 700578c:	00229813          	sll	a6,t0,0x2
 7005790:	01068833          	add	a6,a3,a6
 7005794:	00000313          	li	t1,0
 7005798:	fa0284e3          	beqz	t0,7005740 <_ZN4core3str5count14do_count_chars17hce88d1f68e60deecE+0xd8>
 700579c:	00068293          	mv	t0,a3
 70057a0:	0002a383          	lw	t2,0(t0)
 70057a4:	fff3ce13          	not	t3,t2
 70057a8:	007e5e13          	srl	t3,t3,0x7
 70057ac:	0063d393          	srl	t2,t2,0x6
 70057b0:	0042ae83          	lw	t4,4(t0)
 70057b4:	007e63b3          	or	t2,t3,t2
 70057b8:	00e3f3b3          	and	t2,t2,a4
 70057bc:	00638333          	add	t1,t2,t1
 70057c0:	fffec393          	not	t2,t4
 70057c4:	0073d393          	srl	t2,t2,0x7
 70057c8:	006ede13          	srl	t3,t4,0x6
 70057cc:	0082ae83          	lw	t4,8(t0)
 70057d0:	01c3e3b3          	or	t2,t2,t3
 70057d4:	00e3f3b3          	and	t2,t2,a4
 70057d8:	00638333          	add	t1,t2,t1
 70057dc:	fffec393          	not	t2,t4
 70057e0:	0073d393          	srl	t2,t2,0x7
 70057e4:	006ede13          	srl	t3,t4,0x6
 70057e8:	00c2ae83          	lw	t4,12(t0)
 70057ec:	01c3e3b3          	or	t2,t2,t3
 70057f0:	00e3f3b3          	and	t2,t2,a4
 70057f4:	00638333          	add	t1,t2,t1
 70057f8:	fffec393          	not	t2,t4
 70057fc:	0073d393          	srl	t2,t2,0x7
 7005800:	006ede13          	srl	t3,t4,0x6
 7005804:	01c3e3b3          	or	t2,t2,t3
 7005808:	00e3f3b3          	and	t2,t2,a4
 700580c:	01028293          	add	t0,t0,16
 7005810:	00638333          	add	t1,t2,t1
 7005814:	f90296e3          	bne	t0,a6,70057a0 <_ZN4core3str5count14do_count_chars17hce88d1f68e60deecE+0x138>
 7005818:	f29ff06f          	j	7005740 <_ZN4core3str5count14do_count_chars17hce88d1f68e60deecE+0xd8>
 700581c:	0c000693          	li	a3,192
 7005820:	00d7e463          	bltu	a5,a3,7005828 <_ZN4core3str5count14do_count_chars17hce88d1f68e60deecE+0x1c0>
 7005824:	0c000793          	li	a5,192
 7005828:	00000693          	li	a3,0
 700582c:	0037f793          	and	a5,a5,3
 7005830:	00279793          	sll	a5,a5,0x2
 7005834:	00082883          	lw	a7,0(a6)
 7005838:	00480813          	add	a6,a6,4
 700583c:	fff8c293          	not	t0,a7
 7005840:	0072d293          	srl	t0,t0,0x7
 7005844:	0068d893          	srl	a7,a7,0x6
 7005848:	0112e8b3          	or	a7,t0,a7
 700584c:	00e8f8b3          	and	a7,a7,a4
 7005850:	ffc78793          	add	a5,a5,-4
 7005854:	00d886b3          	add	a3,a7,a3
 7005858:	fc079ee3          	bnez	a5,7005834 <_ZN4core3str5count14do_count_chars17hce88d1f68e60deecE+0x1cc>
 700585c:	00b6f733          	and	a4,a3,a1
 7005860:	0086d693          	srl	a3,a3,0x8
 7005864:	00b6f5b3          	and	a1,a3,a1
 7005868:	00e585b3          	add	a1,a1,a4
 700586c:	02c585b3          	mul	a1,a1,a2
 7005870:	0105d593          	srl	a1,a1,0x10
 7005874:	00a58533          	add	a0,a1,a0
 7005878:	00008067          	ret

0700587c <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h30eed209cc0a12f5E>:
 700587c:	331f3537          	lui	a0,0x331f3
 7005880:	a9a50513          	add	a0,a0,-1382 # 331f2a9a <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x2c1ea4a3>
 7005884:	282745b7          	lui	a1,0x28274
 7005888:	e7158593          	add	a1,a1,-399 # 28273e71 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x2126b87a>
 700588c:	00008067          	ret

07005890 <_ZN4core5panic10panic_info9PanicInfo7payload17h9f01f7c4facac74eE>:
 7005890:	00052603          	lw	a2,0(a0)
 7005894:	00452583          	lw	a1,4(a0)
 7005898:	00060513          	mv	a0,a2
 700589c:	00008067          	ret

070058a0 <_ZN4core5panic10panic_info9PanicInfo7message17hf150a2730354cba8E>:
 70058a0:	00852503          	lw	a0,8(a0)
 70058a4:	00008067          	ret

070058a8 <_ZN4core5panic10panic_info9PanicInfo8location17h016da194399f3e8fE>:
 70058a8:	00c52503          	lw	a0,12(a0)
 70058ac:	00008067          	ret

070058b0 <_ZN4core5panic10panic_info9PanicInfo10can_unwind17hbeb5b276a93a1a25E>:
 70058b0:	01054503          	lbu	a0,16(a0)
 70058b4:	00008067          	ret

070058b8 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17hcc37e585bdb54418E>:
 70058b8:	fb010113          	add	sp,sp,-80
 70058bc:	04112623          	sw	ra,76(sp)
 70058c0:	04812423          	sw	s0,72(sp)
 70058c4:	04912223          	sw	s1,68(sp)
 70058c8:	05212023          	sw	s2,64(sp)
 70058cc:	03312e23          	sw	s3,60(sp)
 70058d0:	01c5a403          	lw	s0,28(a1)
 70058d4:	0185a483          	lw	s1,24(a1)
 70058d8:	00c42683          	lw	a3,12(s0)
 70058dc:	00050913          	mv	s2,a0
 70058e0:	07008537          	lui	a0,0x7008
 70058e4:	3a350593          	add	a1,a0,931 # 70083a3 <.Lanon.01d17f6cc6f847c1e4bc826f0cfda2e0.14>
 70058e8:	00c00613          	li	a2,12
 70058ec:	00048513          	mv	a0,s1
 70058f0:	000680e7          	jalr	a3
 70058f4:	00100993          	li	s3,1
 70058f8:	12051063          	bnez	a0,7005a18 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17hcc37e585bdb54418E+0x160>
 70058fc:	00892503          	lw	a0,8(s2)
 7005900:	00050e63          	beqz	a0,700591c <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17hcc37e585bdb54418E+0x64>
 7005904:	00a12223          	sw	a0,4(sp)
 7005908:	00410513          	add	a0,sp,4
 700590c:	00a12423          	sw	a0,8(sp)
 7005910:	07007537          	lui	a0,0x7007
 7005914:	8d450513          	add	a0,a0,-1836 # 70068d4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4ecffdbb938fddf5E>
 7005918:	04c0006f          	j	7005964 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17hcc37e585bdb54418E+0xac>
 700591c:	00492503          	lw	a0,4(s2)
 7005920:	00092983          	lw	s3,0(s2)
 7005924:	00c52583          	lw	a1,12(a0)
 7005928:	00098513          	mv	a0,s3
 700592c:	000580e7          	jalr	a1
 7005930:	7444d637          	lui	a2,0x7444d
 7005934:	ec760613          	add	a2,a2,-313 # 7444cec7 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x6d4448d0>
 7005938:	00c5c5b3          	xor	a1,a1,a2
 700593c:	66a4d637          	lui	a2,0x66a4d
 7005940:	8eb60613          	add	a2,a2,-1813 # 66a4c8eb <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x5fa442f4>
 7005944:	00c54533          	xor	a0,a0,a2
 7005948:	00b56533          	or	a0,a0,a1
 700594c:	04051e63          	bnez	a0,70059a8 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17hcc37e585bdb54418E+0xf0>
 7005950:	01312223          	sw	s3,4(sp)
 7005954:	00410513          	add	a0,sp,4
 7005958:	00a12423          	sw	a0,8(sp)
 700595c:	07007537          	lui	a0,0x7007
 7005960:	93050513          	add	a0,a0,-1744 # 7006930 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h9726487bff85d096E>
 7005964:	00a12623          	sw	a0,12(sp)
 7005968:	07008537          	lui	a0,0x7008
 700596c:	3b450513          	add	a0,a0,948 # 70083b4 <.Lanon.01d17f6cc6f847c1e4bc826f0cfda2e0.17>
 7005970:	02a12023          	sw	a0,32(sp)
 7005974:	00200513          	li	a0,2
 7005978:	02a12223          	sw	a0,36(sp)
 700597c:	02012423          	sw	zero,40(sp)
 7005980:	00810513          	add	a0,sp,8
 7005984:	02a12823          	sw	a0,48(sp)
 7005988:	00100993          	li	s3,1
 700598c:	03312a23          	sw	s3,52(sp)
 7005990:	02010613          	add	a2,sp,32
 7005994:	00048513          	mv	a0,s1
 7005998:	00040593          	mv	a1,s0
 700599c:	00000097          	auipc	ra,0x0
 70059a0:	48c080e7          	jalr	1164(ra) # 7005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>
 70059a4:	06051a63          	bnez	a0,7005a18 <_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17hcc37e585bdb54418E+0x160>
 70059a8:	00c92503          	lw	a0,12(s2)
 70059ac:	00850593          	add	a1,a0,8
 70059b0:	00c50613          	add	a2,a0,12
 70059b4:	00a12423          	sw	a0,8(sp)
 70059b8:	07007537          	lui	a0,0x7007
 70059bc:	94c50513          	add	a0,a0,-1716 # 700694c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17heafb4d0291ff00daE>
 70059c0:	00a12623          	sw	a0,12(sp)
 70059c4:	00b12823          	sw	a1,16(sp)
 70059c8:	07007537          	lui	a0,0x7007
 70059cc:	e1450513          	add	a0,a0,-492 # 7006e14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17heab9e780deef2c77E>
 70059d0:	00a12a23          	sw	a0,20(sp)
 70059d4:	00c12c23          	sw	a2,24(sp)
 70059d8:	00a12e23          	sw	a0,28(sp)
 70059dc:	07008537          	lui	a0,0x7008
 70059e0:	38850513          	add	a0,a0,904 # 7008388 <anon.7d99c8ca23b35441d815b402e02ae6ac.22.llvm.1518608519765115567>
 70059e4:	02a12023          	sw	a0,32(sp)
 70059e8:	00300513          	li	a0,3
 70059ec:	02a12223          	sw	a0,36(sp)
 70059f0:	02012423          	sw	zero,40(sp)
 70059f4:	00810593          	add	a1,sp,8
 70059f8:	02b12823          	sw	a1,48(sp)
 70059fc:	02a12a23          	sw	a0,52(sp)
 7005a00:	02010613          	add	a2,sp,32
 7005a04:	00048513          	mv	a0,s1
 7005a08:	00040593          	mv	a1,s0
 7005a0c:	00000097          	auipc	ra,0x0
 7005a10:	41c080e7          	jalr	1052(ra) # 7005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>
 7005a14:	00050993          	mv	s3,a0
 7005a18:	00098513          	mv	a0,s3
 7005a1c:	04c12083          	lw	ra,76(sp)
 7005a20:	04812403          	lw	s0,72(sp)
 7005a24:	04412483          	lw	s1,68(sp)
 7005a28:	04012903          	lw	s2,64(sp)
 7005a2c:	03c12983          	lw	s3,60(sp)
 7005a30:	05010113          	add	sp,sp,80
 7005a34:	00008067          	ret

07005a38 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE>:
 7005a38:	ff960693          	add	a3,a2,-7
 7005a3c:	00000713          	li	a4,0
 7005a40:	00d66463          	bltu	a2,a3,7005a48 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x10>
 7005a44:	00068713          	mv	a4,a3
 7005a48:	fd010113          	add	sp,sp,-48
 7005a4c:	02812623          	sw	s0,44(sp)
 7005a50:	02912423          	sw	s1,40(sp)
 7005a54:	03212223          	sw	s2,36(sp)
 7005a58:	03312023          	sw	s3,32(sp)
 7005a5c:	01412e23          	sw	s4,28(sp)
 7005a60:	01512c23          	sw	s5,24(sp)
 7005a64:	01612a23          	sw	s6,20(sp)
 7005a68:	01712823          	sw	s7,16(sp)
 7005a6c:	01812623          	sw	s8,12(sp)
 7005a70:	20060063          	beqz	a2,7005c70 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x238>
 7005a74:	00000693          	li	a3,0
 7005a78:	00358793          	add	a5,a1,3
 7005a7c:	ffc7f793          	and	a5,a5,-4
 7005a80:	40b787b3          	sub	a5,a5,a1
 7005a84:	80808837          	lui	a6,0x80808
 7005a88:	08080813          	add	a6,a6,128 # 80808080 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x797ffa89>
 7005a8c:	070088b7          	lui	a7,0x7008
 7005a90:	3c488893          	add	a7,a7,964 # 70083c4 <.Lanon.01d17f6cc6f847c1e4bc826f0cfda2e0.18>
 7005a94:	00400293          	li	t0,4
 7005a98:	0f000313          	li	t1,240
 7005a9c:	03000393          	li	t2,48
 7005aa0:	fbf00e13          	li	t3,-65
 7005aa4:	0f400e93          	li	t4,244
 7005aa8:	f8f00f13          	li	t5,-113
 7005aac:	00300f93          	li	t6,3
 7005ab0:	0e000413          	li	s0,224
 7005ab4:	fa000493          	li	s1,-96
 7005ab8:	0ed00913          	li	s2,237
 7005abc:	00c00993          	li	s3,12
 7005ac0:	00200a13          	li	s4,2
 7005ac4:	00c0006f          	j	7005ad0 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x98>
 7005ac8:	00168693          	add	a3,a3,1
 7005acc:	1ac6f263          	bgeu	a3,a2,7005c70 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x238>
 7005ad0:	00d58ab3          	add	s5,a1,a3
 7005ad4:	000acb83          	lbu	s7,0(s5)
 7005ad8:	018b9a93          	sll	s5,s7,0x18
 7005adc:	418adb13          	sra	s6,s5,0x18
 7005ae0:	060b4263          	bltz	s6,7005b44 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x10c>
 7005ae4:	00178a93          	add	s5,a5,1
 7005ae8:	01503ab3          	snez	s5,s5
 7005aec:	40d78b33          	sub	s6,a5,a3
 7005af0:	003b7b13          	and	s6,s6,3
 7005af4:	001b3b13          	seqz	s6,s6
 7005af8:	016afab3          	and	s5,s5,s6
 7005afc:	fc0a86e3          	beqz	s5,7005ac8 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x90>
 7005b00:	02e6f463          	bgeu	a3,a4,7005b28 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0xf0>
 7005b04:	00d58ab3          	add	s5,a1,a3
 7005b08:	000aab03          	lw	s6,0(s5)
 7005b0c:	010b7b33          	and	s6,s6,a6
 7005b10:	000b1c63          	bnez	s6,7005b28 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0xf0>
 7005b14:	004aaa83          	lw	s5,4(s5)
 7005b18:	010afab3          	and	s5,s5,a6
 7005b1c:	000a9663          	bnez	s5,7005b28 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0xf0>
 7005b20:	00868693          	add	a3,a3,8
 7005b24:	fee6e0e3          	bltu	a3,a4,7005b04 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0xcc>
 7005b28:	14c6f263          	bgeu	a3,a2,7005c6c <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x234>
 7005b2c:	00d58ab3          	add	s5,a1,a3
 7005b30:	000a8a83          	lb	s5,0(s5)
 7005b34:	120acc63          	bltz	s5,7005c6c <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x234>
 7005b38:	00168693          	add	a3,a3,1
 7005b3c:	fed618e3          	bne	a2,a3,7005b2c <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0xf4>
 7005b40:	1300006f          	j	7005c70 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x238>
 7005b44:	01788ab3          	add	s5,a7,s7
 7005b48:	000acc03          	lbu	s8,0(s5)
 7005b4c:	00100a93          	li	s5,1
 7005b50:	025c0463          	beq	s8,t0,7005b78 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x140>
 7005b54:	05fc0263          	beq	s8,t6,7005b98 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x160>
 7005b58:	174c1063          	bne	s8,s4,7005cb8 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x280>
 7005b5c:	00168b93          	add	s7,a3,1
 7005b60:	14cbf663          	bgeu	s7,a2,7005cac <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x274>
 7005b64:	01758b33          	add	s6,a1,s7
 7005b68:	000b0c03          	lb	s8,0(s6)
 7005b6c:	00100b13          	li	s6,1
 7005b70:	0f8e5c63          	bge	t3,s8,7005c68 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x230>
 7005b74:	1580006f          	j	7005ccc <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x294>
 7005b78:	00168c13          	add	s8,a3,1
 7005b7c:	12cc7c63          	bgeu	s8,a2,7005cb4 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x27c>
 7005b80:	01858c33          	add	s8,a1,s8
 7005b84:	000c0c03          	lb	s8,0(s8)
 7005b88:	026b8863          	beq	s7,t1,7005bb8 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x180>
 7005b8c:	03db9e63          	bne	s7,t4,7005bc8 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x190>
 7005b90:	058f5c63          	bge	t5,s8,7005be8 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x1b0>
 7005b94:	1240006f          	j	7005cb8 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x280>
 7005b98:	00168c13          	add	s8,a3,1
 7005b9c:	10cc7c63          	bgeu	s8,a2,7005cb4 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x27c>
 7005ba0:	01858c33          	add	s8,a1,s8
 7005ba4:	000c0c03          	lb	s8,0(s8)
 7005ba8:	068b8663          	beq	s7,s0,7005c14 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x1dc>
 7005bac:	072b9a63          	bne	s7,s2,7005c20 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x1e8>
 7005bb0:	0a9c4263          	blt	s8,s1,7005c54 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x21c>
 7005bb4:	1040006f          	j	7005cb8 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x280>
 7005bb8:	070c0b13          	add	s6,s8,112
 7005bbc:	0ffb7b13          	zext.b	s6,s6
 7005bc0:	027b6463          	bltu	s6,t2,7005be8 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x1b0>
 7005bc4:	0f40006f          	j	7005cb8 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x280>
 7005bc8:	00fb0b13          	add	s6,s6,15
 7005bcc:	0ffb7b13          	zext.b	s6,s6
 7005bd0:	003b3b13          	sltiu	s6,s6,3
 7005bd4:	000c2b93          	slti	s7,s8,0
 7005bd8:	017b7b33          	and	s6,s6,s7
 7005bdc:	fc0c3b93          	sltiu	s7,s8,-64
 7005be0:	017b7b33          	and	s6,s6,s7
 7005be4:	0c0b0a63          	beqz	s6,7005cb8 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x280>
 7005be8:	00268b13          	add	s6,a3,2
 7005bec:	0ccb7063          	bgeu	s6,a2,7005cac <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x274>
 7005bf0:	01658b33          	add	s6,a1,s6
 7005bf4:	000b0b03          	lb	s6,0(s6)
 7005bf8:	0d6e4463          	blt	t3,s6,7005cc0 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x288>
 7005bfc:	00368b93          	add	s7,a3,3
 7005c00:	0acbf663          	bgeu	s7,a2,7005cac <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x274>
 7005c04:	01758b33          	add	s6,a1,s7
 7005c08:	000b0b03          	lb	s6,0(s6)
 7005c0c:	056e5e63          	bge	t3,s6,7005c68 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x230>
 7005c10:	0b80006f          	j	7005cc8 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x290>
 7005c14:	fe0c7b13          	and	s6,s8,-32
 7005c18:	029b0e63          	beq	s6,s1,7005c54 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x21c>
 7005c1c:	09c0006f          	j	7005cb8 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x280>
 7005c20:	01fb0b93          	add	s7,s6,31
 7005c24:	0ffbfb93          	zext.b	s7,s7
 7005c28:	013bf663          	bgeu	s7,s3,7005c34 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x1fc>
 7005c2c:	038e5463          	bge	t3,s8,7005c54 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x21c>
 7005c30:	0880006f          	j	7005cb8 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x280>
 7005c34:	ffeb7b13          	and	s6,s6,-2
 7005c38:	012b0b13          	add	s6,s6,18
 7005c3c:	001b3b13          	seqz	s6,s6
 7005c40:	000c2b93          	slti	s7,s8,0
 7005c44:	017b7b33          	and	s6,s6,s7
 7005c48:	fc0c3b93          	sltiu	s7,s8,-64
 7005c4c:	017b7b33          	and	s6,s6,s7
 7005c50:	060b0463          	beqz	s6,7005cb8 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x280>
 7005c54:	00268b93          	add	s7,a3,2
 7005c58:	04cbfa63          	bgeu	s7,a2,7005cac <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x274>
 7005c5c:	01758b33          	add	s6,a1,s7
 7005c60:	000b0b03          	lb	s6,0(s6)
 7005c64:	056e4e63          	blt	t3,s6,7005cc0 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x288>
 7005c68:	001b8693          	add	a3,s7,1
 7005c6c:	e6c6e2e3          	bltu	a3,a2,7005ad0 <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x98>
 7005c70:	00000693          	li	a3,0
 7005c74:	00b52223          	sw	a1,4(a0)
 7005c78:	00c52423          	sw	a2,8(a0)
 7005c7c:	00d52023          	sw	a3,0(a0)
 7005c80:	02c12403          	lw	s0,44(sp)
 7005c84:	02812483          	lw	s1,40(sp)
 7005c88:	02412903          	lw	s2,36(sp)
 7005c8c:	02012983          	lw	s3,32(sp)
 7005c90:	01c12a03          	lw	s4,28(sp)
 7005c94:	01812a83          	lw	s5,24(sp)
 7005c98:	01412b03          	lw	s6,20(sp)
 7005c9c:	01012b83          	lw	s7,16(sp)
 7005ca0:	00c12c03          	lw	s8,12(sp)
 7005ca4:	03010113          	add	sp,sp,48
 7005ca8:	00008067          	ret
 7005cac:	00000a93          	li	s5,0
 7005cb0:	01c0006f          	j	7005ccc <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x294>
 7005cb4:	00000a93          	li	s5,0
 7005cb8:	00100b13          	li	s6,1
 7005cbc:	0100006f          	j	7005ccc <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x294>
 7005cc0:	00200b13          	li	s6,2
 7005cc4:	0080006f          	j	7005ccc <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x294>
 7005cc8:	00300b13          	li	s6,3
 7005ccc:	00d52223          	sw	a3,4(a0)
 7005cd0:	01550423          	sb	s5,8(a0)
 7005cd4:	016504a3          	sb	s6,9(a0)
 7005cd8:	00100693          	li	a3,1
 7005cdc:	fa1ff06f          	j	7005c7c <_ZN4core3str8converts9from_utf817h54fc8eaf249bd3acE+0x244>

07005ce0 <_ZN4core6option13expect_failed17h8186a22d26a8b014E>:
 7005ce0:	00000097          	auipc	ra,0x0
 7005ce4:	00c080e7          	jalr	12(ra) # 7005cec <_ZN4core9panicking9panic_str17h7bfa53719b3618acE>
 7005ce8:	c0001073          	unimp

07005cec <_ZN4core9panicking9panic_str17h7bfa53719b3618acE>:
 7005cec:	ff010113          	add	sp,sp,-16
 7005cf0:	00a12423          	sw	a0,8(sp)
 7005cf4:	00b12623          	sw	a1,12(sp)
 7005cf8:	00810513          	add	a0,sp,8
 7005cfc:	00060593          	mv	a1,a2
 7005d00:	00000097          	auipc	ra,0x0
 7005d04:	00c080e7          	jalr	12(ra) # 7005d0c <_ZN4core9panicking13panic_display17h95053a64131f3a25E>
 7005d08:	c0001073          	unimp

07005d0c <_ZN4core9panicking13panic_display17h95053a64131f3a25E>:
 7005d0c:	fe010113          	add	sp,sp,-32
 7005d10:	00a12c23          	sw	a0,24(sp)
 7005d14:	07007537          	lui	a0,0x7007
 7005d18:	94c50513          	add	a0,a0,-1716 # 700694c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17heafb4d0291ff00daE>
 7005d1c:	00a12e23          	sw	a0,28(sp)
 7005d20:	07008537          	lui	a0,0x7008
 7005d24:	4c450513          	add	a0,a0,1220 # 70084c4 <.Lanon.3bcebef9b7bf7a711b7d7ef3bb543d4c.2>
 7005d28:	00a12023          	sw	a0,0(sp)
 7005d2c:	00100513          	li	a0,1
 7005d30:	00a12223          	sw	a0,4(sp)
 7005d34:	00012423          	sw	zero,8(sp)
 7005d38:	01810613          	add	a2,sp,24
 7005d3c:	00c12823          	sw	a2,16(sp)
 7005d40:	00a12a23          	sw	a0,20(sp)
 7005d44:	00010513          	mv	a0,sp
 7005d48:	00001097          	auipc	ra,0x1
 7005d4c:	c20080e7          	jalr	-992(ra) # 7006968 <_ZN4core9panicking9panic_fmt17hc6785b61922481b6E>
 7005d50:	c0001073          	unimp

07005d54 <_ZN4core5slice5index26slice_start_index_len_fail17h4ce9409af94c9ed9E>:
 7005d54:	00000097          	auipc	ra,0x0
 7005d58:	00c080e7          	jalr	12(ra) # 7005d60 <_ZN4core5slice5index29slice_start_index_len_fail_rt17ha4a740beeff67f82E>
 7005d5c:	c0001073          	unimp

07005d60 <_ZN4core5slice5index29slice_start_index_len_fail_rt17ha4a740beeff67f82E>:
 7005d60:	fd010113          	add	sp,sp,-48
 7005d64:	00a12023          	sw	a0,0(sp)
 7005d68:	00b12223          	sw	a1,4(sp)
 7005d6c:	00010513          	mv	a0,sp
 7005d70:	02a12023          	sw	a0,32(sp)
 7005d74:	07007537          	lui	a0,0x7007
 7005d78:	e1450513          	add	a0,a0,-492 # 7006e14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17heab9e780deef2c77E>
 7005d7c:	02a12223          	sw	a0,36(sp)
 7005d80:	00410593          	add	a1,sp,4
 7005d84:	02b12423          	sw	a1,40(sp)
 7005d88:	02a12623          	sw	a0,44(sp)
 7005d8c:	07008537          	lui	a0,0x7008
 7005d90:	50050513          	add	a0,a0,1280 # 7008500 <.Lanon.4c774dc772aae61f31be2b670cb73359.11>
 7005d94:	00a12423          	sw	a0,8(sp)
 7005d98:	00200513          	li	a0,2
 7005d9c:	00a12623          	sw	a0,12(sp)
 7005da0:	00012823          	sw	zero,16(sp)
 7005da4:	02010593          	add	a1,sp,32
 7005da8:	00b12c23          	sw	a1,24(sp)
 7005dac:	00a12e23          	sw	a0,28(sp)
 7005db0:	00810513          	add	a0,sp,8
 7005db4:	00060593          	mv	a1,a2
 7005db8:	00001097          	auipc	ra,0x1
 7005dbc:	bb0080e7          	jalr	-1104(ra) # 7006968 <_ZN4core9panicking9panic_fmt17hc6785b61922481b6E>
 7005dc0:	c0001073          	unimp

07005dc4 <_ZN4core3ops8function6FnOnce9call_once17hf0a703d8f332c2c9E.llvm.679149048231815736>:
 7005dc4:	00052503          	lw	a0,0(a0)
 7005dc8:	0000006f          	j	7005dc8 <_ZN4core3ops8function6FnOnce9call_once17hf0a703d8f332c2c9E.llvm.679149048231815736+0x4>

07005dcc <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h267b675037d12153E>:
 7005dcc:	fe010113          	add	sp,sp,-32
 7005dd0:	00112e23          	sw	ra,28(sp)
 7005dd4:	01452603          	lw	a2,20(a0)
 7005dd8:	01052703          	lw	a4,16(a0)
 7005ddc:	00c52783          	lw	a5,12(a0)
 7005de0:	00c12a23          	sw	a2,20(sp)
 7005de4:	0185a683          	lw	a3,24(a1)
 7005de8:	00e12823          	sw	a4,16(sp)
 7005dec:	00f12623          	sw	a5,12(sp)
 7005df0:	00852603          	lw	a2,8(a0)
 7005df4:	00452703          	lw	a4,4(a0)
 7005df8:	00052503          	lw	a0,0(a0)
 7005dfc:	01c5a583          	lw	a1,28(a1)
 7005e00:	00c12423          	sw	a2,8(sp)
 7005e04:	00e12223          	sw	a4,4(sp)
 7005e08:	00a12023          	sw	a0,0(sp)
 7005e0c:	00010613          	mv	a2,sp
 7005e10:	00068513          	mv	a0,a3
 7005e14:	00000097          	auipc	ra,0x0
 7005e18:	014080e7          	jalr	20(ra) # 7005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>
 7005e1c:	01c12083          	lw	ra,28(sp)
 7005e20:	02010113          	add	sp,sp,32
 7005e24:	00008067          	ret

07005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>:
 7005e28:	fb010113          	add	sp,sp,-80
 7005e2c:	04112623          	sw	ra,76(sp)
 7005e30:	04812423          	sw	s0,72(sp)
 7005e34:	04912223          	sw	s1,68(sp)
 7005e38:	05212023          	sw	s2,64(sp)
 7005e3c:	03312e23          	sw	s3,60(sp)
 7005e40:	03412c23          	sw	s4,56(sp)
 7005e44:	03512a23          	sw	s5,52(sp)
 7005e48:	03612823          	sw	s6,48(sp)
 7005e4c:	00060413          	mv	s0,a2
 7005e50:	00012423          	sw	zero,8(sp)
 7005e54:	02000613          	li	a2,32
 7005e58:	00c12623          	sw	a2,12(sp)
 7005e5c:	00300613          	li	a2,3
 7005e60:	02c10423          	sb	a2,40(sp)
 7005e64:	00842603          	lw	a2,8(s0)
 7005e68:	00012823          	sw	zero,16(sp)
 7005e6c:	00012c23          	sw	zero,24(sp)
 7005e70:	02a12023          	sw	a0,32(sp)
 7005e74:	02b12223          	sw	a1,36(sp)
 7005e78:	12060463          	beqz	a2,7005fa0 <_ZN4core3fmt5write17habccab7204ac24b2E+0x178>
 7005e7c:	00c42503          	lw	a0,12(s0)
 7005e80:	18050a63          	beqz	a0,7006014 <_ZN4core3fmt5write17habccab7204ac24b2E+0x1ec>
 7005e84:	00042583          	lw	a1,0(s0)
 7005e88:	fff50693          	add	a3,a0,-1
 7005e8c:	00569693          	sll	a3,a3,0x5
 7005e90:	0056d693          	srl	a3,a3,0x5
 7005e94:	00168493          	add	s1,a3,1
 7005e98:	00458913          	add	s2,a1,4
 7005e9c:	00551993          	sll	s3,a0,0x5
 7005ea0:	01060a13          	add	s4,a2,16
 7005ea4:	00100a93          	li	s5,1
 7005ea8:	07006537          	lui	a0,0x7006
 7005eac:	dc450b13          	add	s6,a0,-572 # 7005dc4 <_ZN4core3ops8function6FnOnce9call_once17hf0a703d8f332c2c9E.llvm.679149048231815736>
 7005eb0:	00092603          	lw	a2,0(s2)
 7005eb4:	00060e63          	beqz	a2,7005ed0 <_ZN4core3fmt5write17habccab7204ac24b2E+0xa8>
 7005eb8:	02412683          	lw	a3,36(sp)
 7005ebc:	02012503          	lw	a0,32(sp)
 7005ec0:	ffc92583          	lw	a1,-4(s2)
 7005ec4:	00c6a683          	lw	a3,12(a3)
 7005ec8:	000680e7          	jalr	a3
 7005ecc:	18051663          	bnez	a0,7006058 <_ZN4core3fmt5write17habccab7204ac24b2E+0x230>
 7005ed0:	ff4a2503          	lw	a0,-12(s4)
 7005ed4:	00a12623          	sw	a0,12(sp)
 7005ed8:	00ca0503          	lb	a0,12(s4)
 7005edc:	02a10423          	sb	a0,40(sp)
 7005ee0:	ff8a2583          	lw	a1,-8(s4)
 7005ee4:	01042503          	lw	a0,16(s0)
 7005ee8:	00b12423          	sw	a1,8(sp)
 7005eec:	004a2683          	lw	a3,4(s4)
 7005ef0:	008a2583          	lw	a1,8(s4)
 7005ef4:	02068663          	beqz	a3,7005f20 <_ZN4core3fmt5write17habccab7204ac24b2E+0xf8>
 7005ef8:	00000613          	li	a2,0
 7005efc:	03569463          	bne	a3,s5,7005f24 <_ZN4core3fmt5write17habccab7204ac24b2E+0xfc>
 7005f00:	00359593          	sll	a1,a1,0x3
 7005f04:	00b505b3          	add	a1,a0,a1
 7005f08:	0045a603          	lw	a2,4(a1)
 7005f0c:	01660663          	beq	a2,s6,7005f18 <_ZN4core3fmt5write17habccab7204ac24b2E+0xf0>
 7005f10:	00000613          	li	a2,0
 7005f14:	0100006f          	j	7005f24 <_ZN4core3fmt5write17habccab7204ac24b2E+0xfc>
 7005f18:	0005a583          	lw	a1,0(a1)
 7005f1c:	0005a583          	lw	a1,0(a1)
 7005f20:	00100613          	li	a2,1
 7005f24:	00c12823          	sw	a2,16(sp)
 7005f28:	00b12a23          	sw	a1,20(sp)
 7005f2c:	ffca2683          	lw	a3,-4(s4)
 7005f30:	000a2583          	lw	a1,0(s4)
 7005f34:	02068663          	beqz	a3,7005f60 <_ZN4core3fmt5write17habccab7204ac24b2E+0x138>
 7005f38:	00000613          	li	a2,0
 7005f3c:	03569463          	bne	a3,s5,7005f64 <_ZN4core3fmt5write17habccab7204ac24b2E+0x13c>
 7005f40:	00359593          	sll	a1,a1,0x3
 7005f44:	00b505b3          	add	a1,a0,a1
 7005f48:	0045a603          	lw	a2,4(a1)
 7005f4c:	01660663          	beq	a2,s6,7005f58 <_ZN4core3fmt5write17habccab7204ac24b2E+0x130>
 7005f50:	00000613          	li	a2,0
 7005f54:	0100006f          	j	7005f64 <_ZN4core3fmt5write17habccab7204ac24b2E+0x13c>
 7005f58:	0005a583          	lw	a1,0(a1)
 7005f5c:	0005a583          	lw	a1,0(a1)
 7005f60:	00100613          	li	a2,1
 7005f64:	00c12c23          	sw	a2,24(sp)
 7005f68:	00b12e23          	sw	a1,28(sp)
 7005f6c:	ff0a2583          	lw	a1,-16(s4)
 7005f70:	00359593          	sll	a1,a1,0x3
 7005f74:	00b50533          	add	a0,a0,a1
 7005f78:	00452603          	lw	a2,4(a0)
 7005f7c:	00052503          	lw	a0,0(a0)
 7005f80:	00810593          	add	a1,sp,8
 7005f84:	000600e7          	jalr	a2
 7005f88:	0c051863          	bnez	a0,7006058 <_ZN4core3fmt5write17habccab7204ac24b2E+0x230>
 7005f8c:	00890913          	add	s2,s2,8
 7005f90:	fe098993          	add	s3,s3,-32
 7005f94:	020a0a13          	add	s4,s4,32
 7005f98:	f0099ce3          	bnez	s3,7005eb0 <_ZN4core3fmt5write17habccab7204ac24b2E+0x88>
 7005f9c:	07c0006f          	j	7006018 <_ZN4core3fmt5write17habccab7204ac24b2E+0x1f0>
 7005fa0:	01442503          	lw	a0,20(s0)
 7005fa4:	08050063          	beqz	a0,7006024 <_ZN4core3fmt5write17habccab7204ac24b2E+0x1fc>
 7005fa8:	01042583          	lw	a1,16(s0)
 7005fac:	00042603          	lw	a2,0(s0)
 7005fb0:	fff50693          	add	a3,a0,-1
 7005fb4:	00369693          	sll	a3,a3,0x3
 7005fb8:	0036d693          	srl	a3,a3,0x3
 7005fbc:	00168493          	add	s1,a3,1
 7005fc0:	00460913          	add	s2,a2,4
 7005fc4:	00458993          	add	s3,a1,4
 7005fc8:	00351a13          	sll	s4,a0,0x3
 7005fcc:	00092603          	lw	a2,0(s2)
 7005fd0:	00060e63          	beqz	a2,7005fec <_ZN4core3fmt5write17habccab7204ac24b2E+0x1c4>
 7005fd4:	02412683          	lw	a3,36(sp)
 7005fd8:	02012503          	lw	a0,32(sp)
 7005fdc:	ffc92583          	lw	a1,-4(s2)
 7005fe0:	00c6a683          	lw	a3,12(a3)
 7005fe4:	000680e7          	jalr	a3
 7005fe8:	06051863          	bnez	a0,7006058 <_ZN4core3fmt5write17habccab7204ac24b2E+0x230>
 7005fec:	0009a603          	lw	a2,0(s3)
 7005ff0:	ffc9a503          	lw	a0,-4(s3)
 7005ff4:	00810593          	add	a1,sp,8
 7005ff8:	000600e7          	jalr	a2
 7005ffc:	04051e63          	bnez	a0,7006058 <_ZN4core3fmt5write17habccab7204ac24b2E+0x230>
 7006000:	00890913          	add	s2,s2,8
 7006004:	ff8a0a13          	add	s4,s4,-8
 7006008:	00898993          	add	s3,s3,8
 700600c:	fc0a10e3          	bnez	s4,7005fcc <_ZN4core3fmt5write17habccab7204ac24b2E+0x1a4>
 7006010:	0080006f          	j	7006018 <_ZN4core3fmt5write17habccab7204ac24b2E+0x1f0>
 7006014:	00000493          	li	s1,0
 7006018:	00442503          	lw	a0,4(s0)
 700601c:	00a4ea63          	bltu	s1,a0,7006030 <_ZN4core3fmt5write17habccab7204ac24b2E+0x208>
 7006020:	0400006f          	j	7006060 <_ZN4core3fmt5write17habccab7204ac24b2E+0x238>
 7006024:	00000493          	li	s1,0
 7006028:	00442503          	lw	a0,4(s0)
 700602c:	02a4fa63          	bgeu	s1,a0,7006060 <_ZN4core3fmt5write17habccab7204ac24b2E+0x238>
 7006030:	00042503          	lw	a0,0(s0)
 7006034:	00349593          	sll	a1,s1,0x3
 7006038:	00b50633          	add	a2,a0,a1
 700603c:	02412683          	lw	a3,36(sp)
 7006040:	02012503          	lw	a0,32(sp)
 7006044:	00062583          	lw	a1,0(a2)
 7006048:	00462603          	lw	a2,4(a2)
 700604c:	00c6a683          	lw	a3,12(a3)
 7006050:	000680e7          	jalr	a3
 7006054:	00050663          	beqz	a0,7006060 <_ZN4core3fmt5write17habccab7204ac24b2E+0x238>
 7006058:	00100513          	li	a0,1
 700605c:	0080006f          	j	7006064 <_ZN4core3fmt5write17habccab7204ac24b2E+0x23c>
 7006060:	00000513          	li	a0,0
 7006064:	04c12083          	lw	ra,76(sp)
 7006068:	04812403          	lw	s0,72(sp)
 700606c:	04412483          	lw	s1,68(sp)
 7006070:	04012903          	lw	s2,64(sp)
 7006074:	03c12983          	lw	s3,60(sp)
 7006078:	03812a03          	lw	s4,56(sp)
 700607c:	03412a83          	lw	s5,52(sp)
 7006080:	03012b03          	lw	s6,48(sp)
 7006084:	05010113          	add	sp,sp,80
 7006088:	00008067          	ret

0700608c <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E>:
 700608c:	fc010113          	add	sp,sp,-64
 7006090:	02112e23          	sw	ra,60(sp)
 7006094:	02812c23          	sw	s0,56(sp)
 7006098:	02912a23          	sw	s1,52(sp)
 700609c:	03212823          	sw	s2,48(sp)
 70060a0:	03312623          	sw	s3,44(sp)
 70060a4:	03412423          	sw	s4,40(sp)
 70060a8:	03512223          	sw	s5,36(sp)
 70060ac:	03612023          	sw	s6,32(sp)
 70060b0:	01712e23          	sw	s7,28(sp)
 70060b4:	01812c23          	sw	s8,24(sp)
 70060b8:	01912a23          	sw	s9,20(sp)
 70060bc:	01a12823          	sw	s10,16(sp)
 70060c0:	01b12623          	sw	s11,12(sp)
 70060c4:	00078413          	mv	s0,a5
 70060c8:	00070493          	mv	s1,a4
 70060cc:	00068993          	mv	s3,a3
 70060d0:	00060a13          	mv	s4,a2
 70060d4:	00050913          	mv	s2,a0
 70060d8:	04058e63          	beqz	a1,7006134 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0xa8>
 70060dc:	00092b03          	lw	s6,0(s2)
 70060e0:	001b7513          	and	a0,s6,1
 70060e4:	00110ab7          	lui	s5,0x110
 70060e8:	00050463          	beqz	a0,70060f0 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x64>
 70060ec:	02b00a93          	li	s5,43
 70060f0:	00850cb3          	add	s9,a0,s0
 70060f4:	004b7513          	and	a0,s6,4
 70060f8:	04050863          	beqz	a0,7006148 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0xbc>
 70060fc:	01000513          	li	a0,16
 7006100:	04a9fc63          	bgeu	s3,a0,7006158 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0xcc>
 7006104:	00000513          	li	a0,0
 7006108:	06098063          	beqz	s3,7006168 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0xdc>
 700610c:	00098593          	mv	a1,s3
 7006110:	000a0613          	mv	a2,s4
 7006114:	00060683          	lb	a3,0(a2)
 7006118:	00160613          	add	a2,a2,1
 700611c:	fc06a693          	slti	a3,a3,-64
 7006120:	0016c693          	xor	a3,a3,1
 7006124:	fff58593          	add	a1,a1,-1
 7006128:	00d50533          	add	a0,a0,a3
 700612c:	fe0594e3          	bnez	a1,7006114 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x88>
 7006130:	0380006f          	j	7006168 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0xdc>
 7006134:	00092b03          	lw	s6,0(s2)
 7006138:	00140c93          	add	s9,s0,1
 700613c:	02d00a93          	li	s5,45
 7006140:	004b7513          	and	a0,s6,4
 7006144:	fa051ce3          	bnez	a0,70060fc <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x70>
 7006148:	00000a13          	li	s4,0
 700614c:	00892503          	lw	a0,8(s2)
 7006150:	02051263          	bnez	a0,7006174 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0xe8>
 7006154:	0600006f          	j	70061b4 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x128>
 7006158:	000a0513          	mv	a0,s4
 700615c:	00098593          	mv	a1,s3
 7006160:	fffff097          	auipc	ra,0xfffff
 7006164:	508080e7          	jalr	1288(ra) # 7005668 <_ZN4core3str5count14do_count_chars17hce88d1f68e60deecE>
 7006168:	01950cb3          	add	s9,a0,s9
 700616c:	00892503          	lw	a0,8(s2)
 7006170:	04050263          	beqz	a0,70061b4 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x128>
 7006174:	00c92d03          	lw	s10,12(s2)
 7006178:	03acfe63          	bgeu	s9,s10,70061b4 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x128>
 700617c:	008b7513          	and	a0,s6,8
 7006180:	0e051663          	bnez	a0,700626c <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x1e0>
 7006184:	02094583          	lbu	a1,32(s2)
 7006188:	00300613          	li	a2,3
 700618c:	00100513          	li	a0,1
 7006190:	00c58463          	beq	a1,a2,7006198 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x10c>
 7006194:	00058513          	mv	a0,a1
 7006198:	00357593          	and	a1,a0,3
 700619c:	419d0533          	sub	a0,s10,s9
 70061a0:	12058c63          	beqz	a1,70062d8 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x24c>
 70061a4:	00100613          	li	a2,1
 70061a8:	12c59e63          	bne	a1,a2,70062e4 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x258>
 70061ac:	00000c93          	li	s9,0
 70061b0:	1400006f          	j	70062f0 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x264>
 70061b4:	01892b83          	lw	s7,24(s2)
 70061b8:	01c92903          	lw	s2,28(s2)
 70061bc:	000b8513          	mv	a0,s7
 70061c0:	00090593          	mv	a1,s2
 70061c4:	000a8613          	mv	a2,s5
 70061c8:	000a0693          	mv	a3,s4
 70061cc:	00098713          	mv	a4,s3
 70061d0:	00000097          	auipc	ra,0x0
 70061d4:	1f8080e7          	jalr	504(ra) # 70063c8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h2e98c4033d98538bE>
 70061d8:	00100b13          	li	s6,1
 70061dc:	04050263          	beqz	a0,7006220 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x194>
 70061e0:	000b0513          	mv	a0,s6
 70061e4:	03c12083          	lw	ra,60(sp)
 70061e8:	03812403          	lw	s0,56(sp)
 70061ec:	03412483          	lw	s1,52(sp)
 70061f0:	03012903          	lw	s2,48(sp)
 70061f4:	02c12983          	lw	s3,44(sp)
 70061f8:	02812a03          	lw	s4,40(sp)
 70061fc:	02412a83          	lw	s5,36(sp)
 7006200:	02012b03          	lw	s6,32(sp)
 7006204:	01c12b83          	lw	s7,28(sp)
 7006208:	01812c03          	lw	s8,24(sp)
 700620c:	01412c83          	lw	s9,20(sp)
 7006210:	01012d03          	lw	s10,16(sp)
 7006214:	00c12d83          	lw	s11,12(sp)
 7006218:	04010113          	add	sp,sp,64
 700621c:	00008067          	ret
 7006220:	00c92303          	lw	t1,12(s2)
 7006224:	000b8513          	mv	a0,s7
 7006228:	00048593          	mv	a1,s1
 700622c:	00040613          	mv	a2,s0
 7006230:	03c12083          	lw	ra,60(sp)
 7006234:	03812403          	lw	s0,56(sp)
 7006238:	03412483          	lw	s1,52(sp)
 700623c:	03012903          	lw	s2,48(sp)
 7006240:	02c12983          	lw	s3,44(sp)
 7006244:	02812a03          	lw	s4,40(sp)
 7006248:	02412a83          	lw	s5,36(sp)
 700624c:	02012b03          	lw	s6,32(sp)
 7006250:	01c12b83          	lw	s7,28(sp)
 7006254:	01812c03          	lw	s8,24(sp)
 7006258:	01412c83          	lw	s9,20(sp)
 700625c:	01012d03          	lw	s10,16(sp)
 7006260:	00c12d83          	lw	s11,12(sp)
 7006264:	04010113          	add	sp,sp,64
 7006268:	00030067          	jr	t1
 700626c:	00492503          	lw	a0,4(s2)
 7006270:	00a12423          	sw	a0,8(sp)
 7006274:	03000513          	li	a0,48
 7006278:	02094d83          	lbu	s11,32(s2)
 700627c:	01892b83          	lw	s7,24(s2)
 7006280:	01c92c03          	lw	s8,28(s2)
 7006284:	00a92223          	sw	a0,4(s2)
 7006288:	00100b13          	li	s6,1
 700628c:	03690023          	sb	s6,32(s2)
 7006290:	000b8513          	mv	a0,s7
 7006294:	000c0593          	mv	a1,s8
 7006298:	000a8613          	mv	a2,s5
 700629c:	000a0693          	mv	a3,s4
 70062a0:	00098713          	mv	a4,s3
 70062a4:	00000097          	auipc	ra,0x0
 70062a8:	124080e7          	jalr	292(ra) # 70063c8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h2e98c4033d98538bE>
 70062ac:	f2051ae3          	bnez	a0,70061e0 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x154>
 70062b0:	419d0533          	sub	a0,s10,s9
 70062b4:	00150993          	add	s3,a0,1
 70062b8:	fff98993          	add	s3,s3,-1
 70062bc:	0c098a63          	beqz	s3,7006390 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x304>
 70062c0:	010c2603          	lw	a2,16(s8)
 70062c4:	03000593          	li	a1,48
 70062c8:	000b8513          	mv	a0,s7
 70062cc:	000600e7          	jalr	a2
 70062d0:	fe0504e3          	beqz	a0,70062b8 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x22c>
 70062d4:	f0dff06f          	j	70061e0 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x154>
 70062d8:	00050c93          	mv	s9,a0
 70062dc:	00058513          	mv	a0,a1
 70062e0:	0100006f          	j	70062f0 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x264>
 70062e4:	00150593          	add	a1,a0,1
 70062e8:	00155513          	srl	a0,a0,0x1
 70062ec:	0015dc93          	srl	s9,a1,0x1
 70062f0:	01892b83          	lw	s7,24(s2)
 70062f4:	01c92c03          	lw	s8,28(s2)
 70062f8:	00492903          	lw	s2,4(s2)
 70062fc:	00150b13          	add	s6,a0,1
 7006300:	fffb0b13          	add	s6,s6,-1
 7006304:	020b0063          	beqz	s6,7006324 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x298>
 7006308:	010c2603          	lw	a2,16(s8)
 700630c:	000b8513          	mv	a0,s7
 7006310:	00090593          	mv	a1,s2
 7006314:	000600e7          	jalr	a2
 7006318:	fe0504e3          	beqz	a0,7006300 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x274>
 700631c:	00100b13          	li	s6,1
 7006320:	ec1ff06f          	j	70061e0 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x154>
 7006324:	00110537          	lui	a0,0x110
 7006328:	00100b13          	li	s6,1
 700632c:	eaa90ae3          	beq	s2,a0,70061e0 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x154>
 7006330:	000b8513          	mv	a0,s7
 7006334:	000c0593          	mv	a1,s8
 7006338:	000a8613          	mv	a2,s5
 700633c:	000a0693          	mv	a3,s4
 7006340:	00098713          	mv	a4,s3
 7006344:	00000097          	auipc	ra,0x0
 7006348:	084080e7          	jalr	132(ra) # 70063c8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h2e98c4033d98538bE>
 700634c:	e8051ae3          	bnez	a0,70061e0 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x154>
 7006350:	00cc2683          	lw	a3,12(s8)
 7006354:	000b8513          	mv	a0,s7
 7006358:	00048593          	mv	a1,s1
 700635c:	00040613          	mv	a2,s0
 7006360:	000680e7          	jalr	a3
 7006364:	e6051ee3          	bnez	a0,70061e0 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x154>
 7006368:	00000413          	li	s0,0
 700636c:	048c8863          	beq	s9,s0,70063bc <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x330>
 7006370:	010c2603          	lw	a2,16(s8)
 7006374:	00140413          	add	s0,s0,1
 7006378:	000b8513          	mv	a0,s7
 700637c:	00090593          	mv	a1,s2
 7006380:	000600e7          	jalr	a2
 7006384:	fe0504e3          	beqz	a0,700636c <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x2e0>
 7006388:	fff40513          	add	a0,s0,-1
 700638c:	0340006f          	j	70063c0 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x334>
 7006390:	00cc2683          	lw	a3,12(s8)
 7006394:	000b8513          	mv	a0,s7
 7006398:	00048593          	mv	a1,s1
 700639c:	00040613          	mv	a2,s0
 70063a0:	000680e7          	jalr	a3
 70063a4:	e2051ee3          	bnez	a0,70061e0 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x154>
 70063a8:	00000b13          	li	s6,0
 70063ac:	00812503          	lw	a0,8(sp)
 70063b0:	00a92223          	sw	a0,4(s2)
 70063b4:	03b90023          	sb	s11,32(s2)
 70063b8:	e29ff06f          	j	70061e0 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x154>
 70063bc:	000c8513          	mv	a0,s9
 70063c0:	01953b33          	sltu	s6,a0,s9
 70063c4:	e1dff06f          	j	70061e0 <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E+0x154>

070063c8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h2e98c4033d98538bE>:
 70063c8:	fe010113          	add	sp,sp,-32
 70063cc:	00112e23          	sw	ra,28(sp)
 70063d0:	00812c23          	sw	s0,24(sp)
 70063d4:	00912a23          	sw	s1,20(sp)
 70063d8:	01212823          	sw	s2,16(sp)
 70063dc:	01312623          	sw	s3,12(sp)
 70063e0:	001107b7          	lui	a5,0x110
 70063e4:	00070413          	mv	s0,a4
 70063e8:	00068493          	mv	s1,a3
 70063ec:	00058993          	mv	s3,a1
 70063f0:	00050913          	mv	s2,a0
 70063f4:	02f60063          	beq	a2,a5,7006414 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h2e98c4033d98538bE+0x4c>
 70063f8:	0109a683          	lw	a3,16(s3)
 70063fc:	00090513          	mv	a0,s2
 7006400:	00060593          	mv	a1,a2
 7006404:	000680e7          	jalr	a3
 7006408:	00050593          	mv	a1,a0
 700640c:	00100513          	li	a0,1
 7006410:	02059c63          	bnez	a1,7006448 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h2e98c4033d98538bE+0x80>
 7006414:	02048863          	beqz	s1,7006444 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h2e98c4033d98538bE+0x7c>
 7006418:	00c9a303          	lw	t1,12(s3)
 700641c:	00090513          	mv	a0,s2
 7006420:	00048593          	mv	a1,s1
 7006424:	00040613          	mv	a2,s0
 7006428:	01c12083          	lw	ra,28(sp)
 700642c:	01812403          	lw	s0,24(sp)
 7006430:	01412483          	lw	s1,20(sp)
 7006434:	01012903          	lw	s2,16(sp)
 7006438:	00c12983          	lw	s3,12(sp)
 700643c:	02010113          	add	sp,sp,32
 7006440:	00030067          	jr	t1
 7006444:	00000513          	li	a0,0
 7006448:	01c12083          	lw	ra,28(sp)
 700644c:	01812403          	lw	s0,24(sp)
 7006450:	01412483          	lw	s1,20(sp)
 7006454:	01012903          	lw	s2,16(sp)
 7006458:	00c12983          	lw	s3,12(sp)
 700645c:	02010113          	add	sp,sp,32
 7006460:	00008067          	ret

07006464 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE>:
 7006464:	fe010113          	add	sp,sp,-32
 7006468:	00112e23          	sw	ra,28(sp)
 700646c:	00812c23          	sw	s0,24(sp)
 7006470:	00912a23          	sw	s1,20(sp)
 7006474:	01212823          	sw	s2,16(sp)
 7006478:	01312623          	sw	s3,12(sp)
 700647c:	01412423          	sw	s4,8(sp)
 7006480:	01512223          	sw	s5,4(sp)
 7006484:	01612023          	sw	s6,0(sp)
 7006488:	00050913          	mv	s2,a0
 700648c:	00852503          	lw	a0,8(a0) # 110008 <__global_pointer$+0x8f808>
 7006490:	01092683          	lw	a3,16(s2)
 7006494:	fff50713          	add	a4,a0,-1
 7006498:	00e03733          	snez	a4,a4
 700649c:	fff68793          	add	a5,a3,-1
 70064a0:	00f037b3          	snez	a5,a5
 70064a4:	00f77733          	and	a4,a4,a5
 70064a8:	00060413          	mv	s0,a2
 70064ac:	00058493          	mv	s1,a1
 70064b0:	1e071063          	bnez	a4,7006690 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x22c>
 70064b4:	00100593          	li	a1,1
 70064b8:	14b69a63          	bne	a3,a1,700660c <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x1a8>
 70064bc:	01492603          	lw	a2,20(s2)
 70064c0:	00000593          	li	a1,0
 70064c4:	008486b3          	add	a3,s1,s0
 70064c8:	00160713          	add	a4,a2,1
 70064cc:	001107b7          	lui	a5,0x110
 70064d0:	0df00813          	li	a6,223
 70064d4:	0f000893          	li	a7,240
 70064d8:	00048613          	mv	a2,s1
 70064dc:	0180006f          	j	70064f4 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x90>
 70064e0:	00160313          	add	t1,a2,1
 70064e4:	40c585b3          	sub	a1,a1,a2
 70064e8:	006585b3          	add	a1,a1,t1
 70064ec:	00030613          	mv	a2,t1
 70064f0:	10f28e63          	beq	t0,a5,700660c <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x1a8>
 70064f4:	fff70713          	add	a4,a4,-1
 70064f8:	08070063          	beqz	a4,7006578 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x114>
 70064fc:	10d60863          	beq	a2,a3,700660c <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x1a8>
 7006500:	00060303          	lb	t1,0(a2)
 7006504:	0ff37293          	zext.b	t0,t1
 7006508:	fc035ce3          	bgez	t1,70064e0 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x7c>
 700650c:	00164303          	lbu	t1,1(a2)
 7006510:	01f2f393          	and	t2,t0,31
 7006514:	03f37e13          	and	t3,t1,63
 7006518:	04587063          	bgeu	a6,t0,7006558 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0xf4>
 700651c:	00264303          	lbu	t1,2(a2)
 7006520:	006e1e13          	sll	t3,t3,0x6
 7006524:	03f37313          	and	t1,t1,63
 7006528:	006e6e33          	or	t3,t3,t1
 700652c:	0312ee63          	bltu	t0,a7,7006568 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x104>
 7006530:	00364283          	lbu	t0,3(a2)
 7006534:	01d39313          	sll	t1,t2,0x1d
 7006538:	00b35313          	srl	t1,t1,0xb
 700653c:	006e1393          	sll	t2,t3,0x6
 7006540:	03f2f293          	and	t0,t0,63
 7006544:	0053e2b3          	or	t0,t2,t0
 7006548:	0062e2b3          	or	t0,t0,t1
 700654c:	0cf28063          	beq	t0,a5,700660c <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x1a8>
 7006550:	00460313          	add	t1,a2,4
 7006554:	f91ff06f          	j	70064e4 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x80>
 7006558:	00260313          	add	t1,a2,2
 700655c:	00639293          	sll	t0,t2,0x6
 7006560:	01c2e2b3          	or	t0,t0,t3
 7006564:	f81ff06f          	j	70064e4 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x80>
 7006568:	00360313          	add	t1,a2,3
 700656c:	00c39293          	sll	t0,t2,0xc
 7006570:	005e62b3          	or	t0,t3,t0
 7006574:	f71ff06f          	j	70064e4 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x80>
 7006578:	08d60a63          	beq	a2,a3,700660c <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x1a8>
 700657c:	00060683          	lb	a3,0(a2)
 7006580:	0406da63          	bgez	a3,70065d4 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x170>
 7006584:	0ff6f693          	zext.b	a3,a3
 7006588:	0e000713          	li	a4,224
 700658c:	04e6e463          	bltu	a3,a4,70065d4 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x170>
 7006590:	0f000713          	li	a4,240
 7006594:	04e6e063          	bltu	a3,a4,70065d4 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x170>
 7006598:	00164703          	lbu	a4,1(a2)
 700659c:	00264783          	lbu	a5,2(a2)
 70065a0:	03f77713          	and	a4,a4,63
 70065a4:	03f7f793          	and	a5,a5,63
 70065a8:	00364603          	lbu	a2,3(a2)
 70065ac:	01d69693          	sll	a3,a3,0x1d
 70065b0:	00b6d693          	srl	a3,a3,0xb
 70065b4:	00c71713          	sll	a4,a4,0xc
 70065b8:	00679793          	sll	a5,a5,0x6
 70065bc:	00e7e733          	or	a4,a5,a4
 70065c0:	03f67613          	and	a2,a2,63
 70065c4:	00c76633          	or	a2,a4,a2
 70065c8:	00d66633          	or	a2,a2,a3
 70065cc:	001106b7          	lui	a3,0x110
 70065d0:	02d60e63          	beq	a2,a3,700660c <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x1a8>
 70065d4:	02058463          	beqz	a1,70065fc <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x198>
 70065d8:	0285f063          	bgeu	a1,s0,70065f8 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x194>
 70065dc:	00b48633          	add	a2,s1,a1
 70065e0:	00060603          	lb	a2,0(a2)
 70065e4:	fc000693          	li	a3,-64
 70065e8:	00d65a63          	bge	a2,a3,70065fc <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x198>
 70065ec:	00000613          	li	a2,0
 70065f0:	00061a63          	bnez	a2,7006604 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x1a0>
 70065f4:	0180006f          	j	700660c <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x1a8>
 70065f8:	fe859ae3          	bne	a1,s0,70065ec <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x188>
 70065fc:	00048613          	mv	a2,s1
 7006600:	00060663          	beqz	a2,700660c <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x1a8>
 7006604:	00058413          	mv	s0,a1
 7006608:	00060493          	mv	s1,a2
 700660c:	08050263          	beqz	a0,7006690 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x22c>
 7006610:	00c92983          	lw	s3,12(s2)
 7006614:	01000513          	li	a0,16
 7006618:	06a47263          	bgeu	s0,a0,700667c <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x218>
 700661c:	00000513          	li	a0,0
 7006620:	02040463          	beqz	s0,7006648 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x1e4>
 7006624:	00040593          	mv	a1,s0
 7006628:	00048613          	mv	a2,s1
 700662c:	00060683          	lb	a3,0(a2)
 7006630:	00160613          	add	a2,a2,1
 7006634:	fc06a693          	slti	a3,a3,-64
 7006638:	0016c693          	xor	a3,a3,1
 700663c:	fff58593          	add	a1,a1,-1
 7006640:	00d50533          	add	a0,a0,a3
 7006644:	fe0594e3          	bnez	a1,700662c <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x1c8>
 7006648:	05357463          	bgeu	a0,s3,7006690 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x22c>
 700664c:	02094583          	lbu	a1,32(s2)
 7006650:	00300693          	li	a3,3
 7006654:	00000613          	li	a2,0
 7006658:	00d58463          	beq	a1,a3,7006660 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x1fc>
 700665c:	00058613          	mv	a2,a1
 7006660:	00367593          	and	a1,a2,3
 7006664:	40a98533          	sub	a0,s3,a0
 7006668:	06058263          	beqz	a1,70066cc <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x268>
 700666c:	00100613          	li	a2,1
 7006670:	06c59463          	bne	a1,a2,70066d8 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x274>
 7006674:	00000a93          	li	s5,0
 7006678:	06c0006f          	j	70066e4 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x280>
 700667c:	00048513          	mv	a0,s1
 7006680:	00040593          	mv	a1,s0
 7006684:	fffff097          	auipc	ra,0xfffff
 7006688:	fe4080e7          	jalr	-28(ra) # 7005668 <_ZN4core3str5count14do_count_chars17hce88d1f68e60deecE>
 700668c:	fd3560e3          	bltu	a0,s3,700664c <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x1e8>
 7006690:	01c92583          	lw	a1,28(s2)
 7006694:	01892503          	lw	a0,24(s2)
 7006698:	00c5a303          	lw	t1,12(a1)
 700669c:	00048593          	mv	a1,s1
 70066a0:	00040613          	mv	a2,s0
 70066a4:	01c12083          	lw	ra,28(sp)
 70066a8:	01812403          	lw	s0,24(sp)
 70066ac:	01412483          	lw	s1,20(sp)
 70066b0:	01012903          	lw	s2,16(sp)
 70066b4:	00c12983          	lw	s3,12(sp)
 70066b8:	00812a03          	lw	s4,8(sp)
 70066bc:	00412a83          	lw	s5,4(sp)
 70066c0:	00012b03          	lw	s6,0(sp)
 70066c4:	02010113          	add	sp,sp,32
 70066c8:	00030067          	jr	t1
 70066cc:	00050a93          	mv	s5,a0
 70066d0:	00058513          	mv	a0,a1
 70066d4:	0100006f          	j	70066e4 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x280>
 70066d8:	00150593          	add	a1,a0,1
 70066dc:	00155513          	srl	a0,a0,0x1
 70066e0:	0015da93          	srl	s5,a1,0x1
 70066e4:	01892983          	lw	s3,24(s2)
 70066e8:	01c92b03          	lw	s6,28(s2)
 70066ec:	00492903          	lw	s2,4(s2)
 70066f0:	00150a13          	add	s4,a0,1
 70066f4:	fffa0a13          	add	s4,s4,-1
 70066f8:	020a0063          	beqz	s4,7006718 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x2b4>
 70066fc:	010b2603          	lw	a2,16(s6)
 7006700:	00098513          	mv	a0,s3
 7006704:	00090593          	mv	a1,s2
 7006708:	000600e7          	jalr	a2
 700670c:	fe0504e3          	beqz	a0,70066f4 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x290>
 7006710:	00100a13          	li	s4,1
 7006714:	0580006f          	j	700676c <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x308>
 7006718:	00110537          	lui	a0,0x110
 700671c:	00100a13          	li	s4,1
 7006720:	04a90663          	beq	s2,a0,700676c <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x308>
 7006724:	00cb2683          	lw	a3,12(s6)
 7006728:	00098513          	mv	a0,s3
 700672c:	00048593          	mv	a1,s1
 7006730:	00040613          	mv	a2,s0
 7006734:	000680e7          	jalr	a3 # 110000 <__global_pointer$+0x8f800>
 7006738:	02051a63          	bnez	a0,700676c <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x308>
 700673c:	00000413          	li	s0,0
 7006740:	028a8263          	beq	s5,s0,7006764 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x300>
 7006744:	010b2603          	lw	a2,16(s6)
 7006748:	00140413          	add	s0,s0,1
 700674c:	00098513          	mv	a0,s3
 7006750:	00090593          	mv	a1,s2
 7006754:	000600e7          	jalr	a2
 7006758:	fe0504e3          	beqz	a0,7006740 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x2dc>
 700675c:	fff40513          	add	a0,s0,-1
 7006760:	0080006f          	j	7006768 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE+0x304>
 7006764:	000a8513          	mv	a0,s5
 7006768:	01553a33          	sltu	s4,a0,s5
 700676c:	000a0513          	mv	a0,s4
 7006770:	01c12083          	lw	ra,28(sp)
 7006774:	01812403          	lw	s0,24(sp)
 7006778:	01412483          	lw	s1,20(sp)
 700677c:	01012903          	lw	s2,16(sp)
 7006780:	00c12983          	lw	s3,12(sp)
 7006784:	00812a03          	lw	s4,8(sp)
 7006788:	00412a83          	lw	s5,4(sp)
 700678c:	00012b03          	lw	s6,0(sp)
 7006790:	02010113          	add	sp,sp,32
 7006794:	00008067          	ret

07006798 <_ZN4core3fmt9Formatter9write_str17h5a06ea8a0614300dE>:
 7006798:	01c52683          	lw	a3,28(a0) # 11001c <__global_pointer$+0x8f81c>
 700679c:	01852503          	lw	a0,24(a0)
 70067a0:	00c6a303          	lw	t1,12(a3)
 70067a4:	00030067          	jr	t1

070067a8 <_ZN4core3fmt9Formatter9write_fmt17h8cb580f8479113a4E>:
 70067a8:	fe010113          	add	sp,sp,-32
 70067ac:	00112e23          	sw	ra,28(sp)
 70067b0:	0145a603          	lw	a2,20(a1)
 70067b4:	0105a703          	lw	a4,16(a1)
 70067b8:	00c5a783          	lw	a5,12(a1)
 70067bc:	00c12a23          	sw	a2,20(sp)
 70067c0:	01852683          	lw	a3,24(a0)
 70067c4:	00e12823          	sw	a4,16(sp)
 70067c8:	00f12623          	sw	a5,12(sp)
 70067cc:	0085a603          	lw	a2,8(a1)
 70067d0:	0045a703          	lw	a4,4(a1)
 70067d4:	0005a783          	lw	a5,0(a1)
 70067d8:	01c52583          	lw	a1,28(a0)
 70067dc:	00c12423          	sw	a2,8(sp)
 70067e0:	00e12223          	sw	a4,4(sp)
 70067e4:	00f12023          	sw	a5,0(sp)
 70067e8:	00010613          	mv	a2,sp
 70067ec:	00068513          	mv	a0,a3
 70067f0:	fffff097          	auipc	ra,0xfffff
 70067f4:	638080e7          	jalr	1592(ra) # 7005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>
 70067f8:	01c12083          	lw	ra,28(sp)
 70067fc:	02010113          	add	sp,sp,32
 7006800:	00008067          	ret

07006804 <_ZN4core3fmt9Formatter15debug_lower_hex17h22bd00ca219cafc6E>:
 7006804:	00054503          	lbu	a0,0(a0)
 7006808:	01b51513          	sll	a0,a0,0x1b
 700680c:	01f55513          	srl	a0,a0,0x1f
 7006810:	00008067          	ret

07006814 <_ZN4core3fmt9Formatter15debug_upper_hex17h41d667d487f5e853E>:
 7006814:	00054503          	lbu	a0,0(a0)
 7006818:	01a51513          	sll	a0,a0,0x1a
 700681c:	01f55513          	srl	a0,a0,0x1f
 7006820:	00008067          	ret

07006824 <_ZN4core3fmt9Formatter12debug_struct17hba9e1b5c7fe67175E>:
 7006824:	ff010113          	add	sp,sp,-16
 7006828:	00112623          	sw	ra,12(sp)
 700682c:	00812423          	sw	s0,8(sp)
 7006830:	00912223          	sw	s1,4(sp)
 7006834:	00058413          	mv	s0,a1
 7006838:	01c5a703          	lw	a4,28(a1)
 700683c:	0185a583          	lw	a1,24(a1)
 7006840:	00c72703          	lw	a4,12(a4)
 7006844:	00050493          	mv	s1,a0
 7006848:	00058513          	mv	a0,a1
 700684c:	00060593          	mv	a1,a2
 7006850:	00068613          	mv	a2,a3
 7006854:	000700e7          	jalr	a4
 7006858:	0084a023          	sw	s0,0(s1)
 700685c:	00a48223          	sb	a0,4(s1)
 7006860:	000482a3          	sb	zero,5(s1)
 7006864:	00c12083          	lw	ra,12(sp)
 7006868:	00812403          	lw	s0,8(sp)
 700686c:	00412483          	lw	s1,4(sp)
 7006870:	01010113          	add	sp,sp,16
 7006874:	00008067          	ret

07006878 <_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h0aa97bc4d8af03a0E>:
 7006878:	00054603          	lbu	a2,0(a0)
 700687c:	00058513          	mv	a0,a1
 7006880:	00060c63          	beqz	a2,7006898 <_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h0aa97bc4d8af03a0E+0x20>
 7006884:	070075b7          	lui	a1,0x7007
 7006888:	07058593          	add	a1,a1,112 # 7007070 <anon.1375604a764ae3db9d6e47da8ae90e8a.11.llvm.679149048231815736>
 700688c:	00400613          	li	a2,4
 7006890:	00000317          	auipc	t1,0x0
 7006894:	bd430067          	jr	-1068(t1) # 7006464 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE>
 7006898:	070085b7          	lui	a1,0x7008
 700689c:	51058593          	add	a1,a1,1296 # 7008510 <anon.1375604a764ae3db9d6e47da8ae90e8a.12.llvm.679149048231815736>
 70068a0:	00500613          	li	a2,5
 70068a4:	00000317          	auipc	t1,0x0
 70068a8:	bc030067          	jr	-1088(t1) # 7006464 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE>

070068ac <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h19d5394f92baad01E>:
 70068ac:	00058693          	mv	a3,a1
 70068b0:	00050593          	mv	a1,a0
 70068b4:	00060513          	mv	a0,a2
 70068b8:	00068613          	mv	a2,a3
 70068bc:	00000317          	auipc	t1,0x0
 70068c0:	ba830067          	jr	-1112(t1) # 7006464 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE>

070068c4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4292140dbc835650E>:
 70068c4:	00452603          	lw	a2,4(a0)
 70068c8:	00052503          	lw	a0,0(a0)
 70068cc:	00c62303          	lw	t1,12(a2)
 70068d0:	00030067          	jr	t1

070068d4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4ecffdbb938fddf5E>:
 70068d4:	fe010113          	add	sp,sp,-32
 70068d8:	00112e23          	sw	ra,28(sp)
 70068dc:	00052603          	lw	a2,0(a0)
 70068e0:	01462503          	lw	a0,20(a2)
 70068e4:	00a12a23          	sw	a0,20(sp)
 70068e8:	01062503          	lw	a0,16(a2)
 70068ec:	00a12823          	sw	a0,16(sp)
 70068f0:	00c62503          	lw	a0,12(a2)
 70068f4:	00a12623          	sw	a0,12(sp)
 70068f8:	00862503          	lw	a0,8(a2)
 70068fc:	00a12423          	sw	a0,8(sp)
 7006900:	00462683          	lw	a3,4(a2)
 7006904:	0185a503          	lw	a0,24(a1)
 7006908:	00d12223          	sw	a3,4(sp)
 700690c:	00062603          	lw	a2,0(a2)
 7006910:	01c5a583          	lw	a1,28(a1)
 7006914:	00c12023          	sw	a2,0(sp)
 7006918:	00010613          	mv	a2,sp
 700691c:	fffff097          	auipc	ra,0xfffff
 7006920:	50c080e7          	jalr	1292(ra) # 7005e28 <_ZN4core3fmt5write17habccab7204ac24b2E>
 7006924:	01c12083          	lw	ra,28(sp)
 7006928:	02010113          	add	sp,sp,32
 700692c:	00008067          	ret

07006930 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h9726487bff85d096E>:
 7006930:	00052503          	lw	a0,0(a0)
 7006934:	00052683          	lw	a3,0(a0)
 7006938:	00452603          	lw	a2,4(a0)
 700693c:	00058513          	mv	a0,a1
 7006940:	00068593          	mv	a1,a3
 7006944:	00000317          	auipc	t1,0x0
 7006948:	b2030067          	jr	-1248(t1) # 7006464 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE>

0700694c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17heafb4d0291ff00daE>:
 700694c:	00052683          	lw	a3,0(a0)
 7006950:	00452603          	lw	a2,4(a0)
 7006954:	00058513          	mv	a0,a1
 7006958:	00068593          	mv	a1,a3
 700695c:	00000317          	auipc	t1,0x0
 7006960:	b0830067          	jr	-1272(t1) # 7006464 <_ZN4core3fmt9Formatter3pad17he9fb301056c8d56bE>

07006964 <_ZN4core3ptr28drop_in_place$LT$$RF$u64$GT$17h51f548a1d3803677E.llvm.2650014176602083906>:
 7006964:	00008067          	ret

07006968 <_ZN4core9panicking9panic_fmt17hc6785b61922481b6E>:
 7006968:	fe010113          	add	sp,sp,-32
 700696c:	07008637          	lui	a2,0x7008
 7006970:	51860613          	add	a2,a2,1304 # 7008518 <.Lanon.7c19cafb457940626ba1c92cb815c50d.44>
 7006974:	00c12423          	sw	a2,8(sp)
 7006978:	07008637          	lui	a2,0x7008
 700697c:	51860613          	add	a2,a2,1304 # 7008518 <.Lanon.7c19cafb457940626ba1c92cb815c50d.44>
 7006980:	00c12623          	sw	a2,12(sp)
 7006984:	00a12823          	sw	a0,16(sp)
 7006988:	00b12a23          	sw	a1,20(sp)
 700698c:	00100513          	li	a0,1
 7006990:	00a10c23          	sb	a0,24(sp)
 7006994:	00810513          	add	a0,sp,8
 7006998:	ffffc097          	auipc	ra,0xffffc
 700699c:	9dc080e7          	jalr	-1572(ra) # 7002374 <rust_begin_unwind>
 70069a0:	c0001073          	unimp

070069a4 <_ZN4core9panicking5panic17h5d0c0b97b225c667E>:
 70069a4:	fe010113          	add	sp,sp,-32
 70069a8:	00a12c23          	sw	a0,24(sp)
 70069ac:	00b12e23          	sw	a1,28(sp)
 70069b0:	01810513          	add	a0,sp,24
 70069b4:	00a12023          	sw	a0,0(sp)
 70069b8:	00100513          	li	a0,1
 70069bc:	00a12223          	sw	a0,4(sp)
 70069c0:	00012423          	sw	zero,8(sp)
 70069c4:	07008537          	lui	a0,0x7008
 70069c8:	51850513          	add	a0,a0,1304 # 7008518 <.Lanon.7c19cafb457940626ba1c92cb815c50d.44>
 70069cc:	00a12823          	sw	a0,16(sp)
 70069d0:	00012a23          	sw	zero,20(sp)
 70069d4:	00010513          	mv	a0,sp
 70069d8:	00060593          	mv	a1,a2
 70069dc:	00000097          	auipc	ra,0x0
 70069e0:	f8c080e7          	jalr	-116(ra) # 7006968 <_ZN4core9panicking9panic_fmt17hc6785b61922481b6E>
 70069e4:	c0001073          	unimp

070069e8 <_ZN4core9panicking18panic_bounds_check17hd6f9d989a7703a3eE>:
 70069e8:	fd010113          	add	sp,sp,-48
 70069ec:	00a12023          	sw	a0,0(sp)
 70069f0:	00b12223          	sw	a1,4(sp)
 70069f4:	00410513          	add	a0,sp,4
 70069f8:	02a12023          	sw	a0,32(sp)
 70069fc:	07007537          	lui	a0,0x7007
 7006a00:	e1450513          	add	a0,a0,-492 # 7006e14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17heab9e780deef2c77E>
 7006a04:	02a12223          	sw	a0,36(sp)
 7006a08:	00010593          	mv	a1,sp
 7006a0c:	02b12423          	sw	a1,40(sp)
 7006a10:	02a12623          	sw	a0,44(sp)
 7006a14:	07008537          	lui	a0,0x7008
 7006a18:	53c50513          	add	a0,a0,1340 # 700853c <.Lanon.7c19cafb457940626ba1c92cb815c50d.50>
 7006a1c:	00a12423          	sw	a0,8(sp)
 7006a20:	00200513          	li	a0,2
 7006a24:	00a12623          	sw	a0,12(sp)
 7006a28:	00012823          	sw	zero,16(sp)
 7006a2c:	02010593          	add	a1,sp,32
 7006a30:	00b12c23          	sw	a1,24(sp)
 7006a34:	00a12e23          	sw	a0,28(sp)
 7006a38:	00810513          	add	a0,sp,8
 7006a3c:	00060593          	mv	a1,a2
 7006a40:	00000097          	auipc	ra,0x0
 7006a44:	f28080e7          	jalr	-216(ra) # 7006968 <_ZN4core9panicking9panic_fmt17hc6785b61922481b6E>
 7006a48:	c0001073          	unimp

07006a4c <_ZN4core9panicking19assert_failed_inner17he0576c9d7ff9f73bE>:
 7006a4c:	f9010113          	add	sp,sp,-112
 7006a50:	00b12423          	sw	a1,8(sp)
 7006a54:	00c12623          	sw	a2,12(sp)
 7006a58:	00d12823          	sw	a3,16(sp)
 7006a5c:	0ff57513          	zext.b	a0,a0
 7006a60:	00e12a23          	sw	a4,20(sp)
 7006a64:	00050c63          	beqz	a0,7006a7c <_ZN4core9panicking19assert_failed_inner17he0576c9d7ff9f73bE+0x30>
 7006a68:	00100593          	li	a1,1
 7006a6c:	08b51463          	bne	a0,a1,7006af4 <_ZN4core9panicking19assert_failed_inner17he0576c9d7ff9f73bE+0xa8>
 7006a70:	07008537          	lui	a0,0x7008
 7006a74:	55350513          	add	a0,a0,1363 # 7008553 <.Lanon.7c19cafb457940626ba1c92cb815c50d.57>
 7006a78:	00c0006f          	j	7006a84 <_ZN4core9panicking19assert_failed_inner17he0576c9d7ff9f73bE+0x38>
 7006a7c:	07008537          	lui	a0,0x7008
 7006a80:	55550513          	add	a0,a0,1365 # 7008555 <.Lanon.7c19cafb457940626ba1c92cb815c50d.58>
 7006a84:	00a12c23          	sw	a0,24(sp)
 7006a88:	00200513          	li	a0,2
 7006a8c:	0007a583          	lw	a1,0(a5) # 110000 <__global_pointer$+0x8f800>
 7006a90:	00a12e23          	sw	a0,28(sp)
 7006a94:	06059e63          	bnez	a1,7006b10 <_ZN4core9panicking19assert_failed_inner17he0576c9d7ff9f73bE+0xc4>
 7006a98:	01810513          	add	a0,sp,24
 7006a9c:	02a12c23          	sw	a0,56(sp)
 7006aa0:	07007537          	lui	a0,0x7007
 7006aa4:	94c50513          	add	a0,a0,-1716 # 700694c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17heafb4d0291ff00daE>
 7006aa8:	02a12e23          	sw	a0,60(sp)
 7006aac:	00810513          	add	a0,sp,8
 7006ab0:	04a12023          	sw	a0,64(sp)
 7006ab4:	07007537          	lui	a0,0x7007
 7006ab8:	8c450513          	add	a0,a0,-1852 # 70068c4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4292140dbc835650E>
 7006abc:	04a12223          	sw	a0,68(sp)
 7006ac0:	01010593          	add	a1,sp,16
 7006ac4:	04b12423          	sw	a1,72(sp)
 7006ac8:	04a12623          	sw	a0,76(sp)
 7006acc:	07008537          	lui	a0,0x7008
 7006ad0:	5b850513          	add	a0,a0,1464 # 70085b8 <.Lanon.7c19cafb457940626ba1c92cb815c50d.65>
 7006ad4:	04a12c23          	sw	a0,88(sp)
 7006ad8:	00400513          	li	a0,4
 7006adc:	04a12e23          	sw	a0,92(sp)
 7006ae0:	06012023          	sw	zero,96(sp)
 7006ae4:	03810513          	add	a0,sp,56
 7006ae8:	06a12423          	sw	a0,104(sp)
 7006aec:	00300513          	li	a0,3
 7006af0:	0b80006f          	j	7006ba8 <_ZN4core9panicking19assert_failed_inner17he0576c9d7ff9f73bE+0x15c>
 7006af4:	07008537          	lui	a0,0x7008
 7006af8:	54c50513          	add	a0,a0,1356 # 700854c <.Lanon.7c19cafb457940626ba1c92cb815c50d.56>
 7006afc:	00a12c23          	sw	a0,24(sp)
 7006b00:	00700513          	li	a0,7
 7006b04:	0007a583          	lw	a1,0(a5)
 7006b08:	00a12e23          	sw	a0,28(sp)
 7006b0c:	f80586e3          	beqz	a1,7006a98 <_ZN4core9panicking19assert_failed_inner17he0576c9d7ff9f73bE+0x4c>
 7006b10:	0147a503          	lw	a0,20(a5)
 7006b14:	0107a583          	lw	a1,16(a5)
 7006b18:	02a12a23          	sw	a0,52(sp)
 7006b1c:	02b12823          	sw	a1,48(sp)
 7006b20:	00c7a503          	lw	a0,12(a5)
 7006b24:	0087a583          	lw	a1,8(a5)
 7006b28:	0047a603          	lw	a2,4(a5)
 7006b2c:	0007a683          	lw	a3,0(a5)
 7006b30:	02a12623          	sw	a0,44(sp)
 7006b34:	02b12423          	sw	a1,40(sp)
 7006b38:	02c12223          	sw	a2,36(sp)
 7006b3c:	02d12023          	sw	a3,32(sp)
 7006b40:	01810513          	add	a0,sp,24
 7006b44:	02a12c23          	sw	a0,56(sp)
 7006b48:	07007537          	lui	a0,0x7007
 7006b4c:	94c50513          	add	a0,a0,-1716 # 700694c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17heafb4d0291ff00daE>
 7006b50:	02a12e23          	sw	a0,60(sp)
 7006b54:	00810513          	add	a0,sp,8
 7006b58:	04a12023          	sw	a0,64(sp)
 7006b5c:	07007537          	lui	a0,0x7007
 7006b60:	8c450513          	add	a0,a0,-1852 # 70068c4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4292140dbc835650E>
 7006b64:	04a12223          	sw	a0,68(sp)
 7006b68:	01010593          	add	a1,sp,16
 7006b6c:	04b12423          	sw	a1,72(sp)
 7006b70:	04a12623          	sw	a0,76(sp)
 7006b74:	02010513          	add	a0,sp,32
 7006b78:	04a12823          	sw	a0,80(sp)
 7006b7c:	07006537          	lui	a0,0x7006
 7006b80:	dcc50513          	add	a0,a0,-564 # 7005dcc <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h267b675037d12153E>
 7006b84:	04a12a23          	sw	a0,84(sp)
 7006b88:	07008537          	lui	a0,0x7008
 7006b8c:	59450513          	add	a0,a0,1428 # 7008594 <.Lanon.7c19cafb457940626ba1c92cb815c50d.63>
 7006b90:	04a12c23          	sw	a0,88(sp)
 7006b94:	00400513          	li	a0,4
 7006b98:	04a12e23          	sw	a0,92(sp)
 7006b9c:	06012023          	sw	zero,96(sp)
 7006ba0:	03810593          	add	a1,sp,56
 7006ba4:	06b12423          	sw	a1,104(sp)
 7006ba8:	06a12623          	sw	a0,108(sp)
 7006bac:	05810513          	add	a0,sp,88
 7006bb0:	00080593          	mv	a1,a6
 7006bb4:	00000097          	auipc	ra,0x0
 7006bb8:	db4080e7          	jalr	-588(ra) # 7006968 <_ZN4core9panicking9panic_fmt17hc6785b61922481b6E>
 7006bbc:	c0001073          	unimp

07006bc0 <_ZN4core6result13unwrap_failed17hf6bc9b148a5ba21eE>:
 7006bc0:	fc010113          	add	sp,sp,-64
 7006bc4:	00a12423          	sw	a0,8(sp)
 7006bc8:	00b12623          	sw	a1,12(sp)
 7006bcc:	00c12823          	sw	a2,16(sp)
 7006bd0:	00d12a23          	sw	a3,20(sp)
 7006bd4:	00810513          	add	a0,sp,8
 7006bd8:	02a12823          	sw	a0,48(sp)
 7006bdc:	07007537          	lui	a0,0x7007
 7006be0:	94c50513          	add	a0,a0,-1716 # 700694c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17heafb4d0291ff00daE>
 7006be4:	02a12a23          	sw	a0,52(sp)
 7006be8:	01010513          	add	a0,sp,16
 7006bec:	02a12c23          	sw	a0,56(sp)
 7006bf0:	07007537          	lui	a0,0x7007
 7006bf4:	8c450513          	add	a0,a0,-1852 # 70068c4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4292140dbc835650E>
 7006bf8:	02a12e23          	sw	a0,60(sp)
 7006bfc:	07008537          	lui	a0,0x7008
 7006c00:	5dc50513          	add	a0,a0,1500 # 70085dc <.Lanon.7c19cafb457940626ba1c92cb815c50d.67>
 7006c04:	00a12c23          	sw	a0,24(sp)
 7006c08:	00200513          	li	a0,2
 7006c0c:	00a12e23          	sw	a0,28(sp)
 7006c10:	02012023          	sw	zero,32(sp)
 7006c14:	03010593          	add	a1,sp,48
 7006c18:	02b12423          	sw	a1,40(sp)
 7006c1c:	02a12623          	sw	a0,44(sp)
 7006c20:	01810513          	add	a0,sp,24
 7006c24:	00070593          	mv	a1,a4
 7006c28:	00000097          	auipc	ra,0x0
 7006c2c:	d40080e7          	jalr	-704(ra) # 7006968 <_ZN4core9panicking9panic_fmt17hc6785b61922481b6E>
 7006c30:	c0001073          	unimp

07006c34 <_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h827428a72d10dfc6E>:
 7006c34:	01c5a603          	lw	a2,28(a1)
 7006c38:	0185a503          	lw	a0,24(a1)
 7006c3c:	00c62303          	lw	t1,12(a2)
 7006c40:	070085b7          	lui	a1,0x7008
 7006c44:	5ec58593          	add	a1,a1,1516 # 70085ec <.Lanon.7c19cafb457940626ba1c92cb815c50d.113>
 7006c48:	00b00613          	li	a2,11
 7006c4c:	00030067          	jr	t1

07006c50 <_ZN4core3fmt3num3imp7fmt_u3217h8b894cce7ddda857E.llvm.3008685313708409704>:
 7006c50:	fc010113          	add	sp,sp,-64
 7006c54:	02112e23          	sw	ra,60(sp)
 7006c58:	02812c23          	sw	s0,56(sp)
 7006c5c:	02912a23          	sw	s1,52(sp)
 7006c60:	00060693          	mv	a3,a2
 7006c64:	00455713          	srl	a4,a0,0x4
 7006c68:	27100793          	li	a5,625
 7006c6c:	02700613          	li	a2,39
 7006c70:	02f77663          	bgeu	a4,a5,7006c9c <_ZN4core3fmt3num3imp7fmt_u3217h8b894cce7ddda857E.llvm.3008685313708409704+0x4c>
 7006c74:	06300713          	li	a4,99
 7006c78:	0ca76a63          	bltu	a4,a0,7006d4c <_ZN4core3fmt3num3imp7fmt_u3217h8b894cce7ddda857E.llvm.3008685313708409704+0xfc>
 7006c7c:	00a00713          	li	a4,10
 7006c80:	12e57663          	bgeu	a0,a4,7006dac <_ZN4core3fmt3num3imp7fmt_u3217h8b894cce7ddda857E.llvm.3008685313708409704+0x15c>
 7006c84:	fff60613          	add	a2,a2,-1
 7006c88:	00d10713          	add	a4,sp,13
 7006c8c:	00c70733          	add	a4,a4,a2
 7006c90:	03050513          	add	a0,a0,48
 7006c94:	00a70023          	sb	a0,0(a4)
 7006c98:	1400006f          	j	7006dd8 <_ZN4core3fmt3num3imp7fmt_u3217h8b894cce7ddda857E.llvm.3008685313708409704+0x188>
 7006c9c:	00000613          	li	a2,0
 7006ca0:	d1b71737          	lui	a4,0xd1b71
 7006ca4:	75970713          	add	a4,a4,1881 # d1b71759 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0xcab69162>
 7006ca8:	000027b7          	lui	a5,0x2
 7006cac:	71078793          	add	a5,a5,1808 # 2710 <__bss_size+0x2688>
 7006cb0:	00001837          	lui	a6,0x1
 7006cb4:	47b80813          	add	a6,a6,1147 # 147b <__bss_size+0x13f3>
 7006cb8:	06400893          	li	a7,100
 7006cbc:	070082b7          	lui	t0,0x7008
 7006cc0:	25228293          	add	t0,t0,594 # 7008252 <anon.564c0ea675f63267486e34ba3a5001a1.5.llvm.6662267625297349771>
 7006cc4:	00d10313          	add	t1,sp,13
 7006cc8:	05f5e3b7          	lui	t2,0x5f5e
 7006ccc:	0ff38393          	add	t2,t2,255 # 5f5e0ff <__heap_size+0xf5e0ff>
 7006cd0:	00050e13          	mv	t3,a0
 7006cd4:	02e53533          	mulhu	a0,a0,a4
 7006cd8:	00d55513          	srl	a0,a0,0xd
 7006cdc:	02f50eb3          	mul	t4,a0,a5
 7006ce0:	41de0eb3          	sub	t4,t3,t4
 7006ce4:	010e9f13          	sll	t5,t4,0x10
 7006ce8:	012f5f13          	srl	t5,t5,0x12
 7006cec:	030f0f33          	mul	t5,t5,a6
 7006cf0:	011f5f93          	srl	t6,t5,0x11
 7006cf4:	010f5f13          	srl	t5,t5,0x10
 7006cf8:	7fef7f13          	and	t5,t5,2046
 7006cfc:	031f8fb3          	mul	t6,t6,a7
 7006d00:	41fe8eb3          	sub	t4,t4,t6
 7006d04:	011e9e93          	sll	t4,t4,0x11
 7006d08:	010ede93          	srl	t4,t4,0x10
 7006d0c:	01e28f33          	add	t5,t0,t5
 7006d10:	00c30fb3          	add	t6,t1,a2
 7006d14:	000f4403          	lbu	s0,0(t5)
 7006d18:	001f0f03          	lb	t5,1(t5)
 7006d1c:	01d28eb3          	add	t4,t0,t4
 7006d20:	001e8483          	lb	s1,1(t4)
 7006d24:	000ece83          	lbu	t4,0(t4)
 7006d28:	03ef8223          	sb	t5,36(t6)
 7006d2c:	028f81a3          	sb	s0,35(t6)
 7006d30:	029f8323          	sb	s1,38(t6)
 7006d34:	03df82a3          	sb	t4,37(t6)
 7006d38:	ffc60613          	add	a2,a2,-4
 7006d3c:	f9c3eae3          	bltu	t2,t3,7006cd0 <_ZN4core3fmt3num3imp7fmt_u3217h8b894cce7ddda857E.llvm.3008685313708409704+0x80>
 7006d40:	02760613          	add	a2,a2,39
 7006d44:	06300713          	li	a4,99
 7006d48:	f2a77ae3          	bgeu	a4,a0,7006c7c <_ZN4core3fmt3num3imp7fmt_u3217h8b894cce7ddda857E.llvm.3008685313708409704+0x2c>
 7006d4c:	01051713          	sll	a4,a0,0x10
 7006d50:	01275713          	srl	a4,a4,0x12
 7006d54:	000017b7          	lui	a5,0x1
 7006d58:	47b78793          	add	a5,a5,1147 # 147b <__bss_size+0x13f3>
 7006d5c:	02f70733          	mul	a4,a4,a5
 7006d60:	01175713          	srl	a4,a4,0x11
 7006d64:	06400793          	li	a5,100
 7006d68:	02f707b3          	mul	a5,a4,a5
 7006d6c:	40f50533          	sub	a0,a0,a5
 7006d70:	01151513          	sll	a0,a0,0x11
 7006d74:	01055513          	srl	a0,a0,0x10
 7006d78:	ffe60613          	add	a2,a2,-2
 7006d7c:	070087b7          	lui	a5,0x7008
 7006d80:	25278793          	add	a5,a5,594 # 7008252 <anon.564c0ea675f63267486e34ba3a5001a1.5.llvm.6662267625297349771>
 7006d84:	00a78533          	add	a0,a5,a0
 7006d88:	00150783          	lb	a5,1(a0)
 7006d8c:	00054503          	lbu	a0,0(a0)
 7006d90:	00d10813          	add	a6,sp,13
 7006d94:	00c80833          	add	a6,a6,a2
 7006d98:	00f800a3          	sb	a5,1(a6)
 7006d9c:	00a80023          	sb	a0,0(a6)
 7006da0:	00070513          	mv	a0,a4
 7006da4:	00a00713          	li	a4,10
 7006da8:	ece56ee3          	bltu	a0,a4,7006c84 <_ZN4core3fmt3num3imp7fmt_u3217h8b894cce7ddda857E.llvm.3008685313708409704+0x34>
 7006dac:	00151513          	sll	a0,a0,0x1
 7006db0:	ffe60613          	add	a2,a2,-2
 7006db4:	07008737          	lui	a4,0x7008
 7006db8:	25270713          	add	a4,a4,594 # 7008252 <anon.564c0ea675f63267486e34ba3a5001a1.5.llvm.6662267625297349771>
 7006dbc:	00a70533          	add	a0,a4,a0
 7006dc0:	00150703          	lb	a4,1(a0)
 7006dc4:	00054503          	lbu	a0,0(a0)
 7006dc8:	00d10793          	add	a5,sp,13
 7006dcc:	00c787b3          	add	a5,a5,a2
 7006dd0:	00e780a3          	sb	a4,1(a5)
 7006dd4:	00a78023          	sb	a0,0(a5)
 7006dd8:	00d10513          	add	a0,sp,13
 7006ddc:	00c50733          	add	a4,a0,a2
 7006de0:	02700513          	li	a0,39
 7006de4:	40c507b3          	sub	a5,a0,a2
 7006de8:	07008537          	lui	a0,0x7008
 7006dec:	5f750613          	add	a2,a0,1527 # 70085f7 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704>
 7006df0:	00068513          	mv	a0,a3
 7006df4:	00000693          	li	a3,0
 7006df8:	fffff097          	auipc	ra,0xfffff
 7006dfc:	294080e7          	jalr	660(ra) # 700608c <_ZN4core3fmt9Formatter12pad_integral17h4d757b524df744a5E>
 7006e00:	03c12083          	lw	ra,60(sp)
 7006e04:	03812403          	lw	s0,56(sp)
 7006e08:	03412483          	lw	s1,52(sp)
 7006e0c:	04010113          	add	sp,sp,64
 7006e10:	00008067          	ret

07006e14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17heab9e780deef2c77E>:
 7006e14:	00052503          	lw	a0,0(a0)
 7006e18:	00058613          	mv	a2,a1
 7006e1c:	00100593          	li	a1,1
 7006e20:	00000317          	auipc	t1,0x0
 7006e24:	e3030067          	jr	-464(t1) # 7006c50 <_ZN4core3fmt3num3imp7fmt_u3217h8b894cce7ddda857E.llvm.3008685313708409704>

07006e28 <anon.ca0acec1ed96f6fc2b88fb8e82be5400.0.llvm.5899260727011860516>:
 7006e28:	6944                	flw	fs1,20(a0)
 7006e2a:	74736567          	.insn	4, 0x74736567
	...

07006e30 <anon.8021ec8516762b607f32a64c873d281c.4.llvm.3318710579709553222>:
 7006e30:	6c6c6163          	bltu	s8,t1,70074f2 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.39+0x2>
 7006e34:	6465                	lui	s0,0x19
 7006e36:	6020                	flw	fs0,64(s0)
 7006e38:	6552                	flw	fa0,20(sp)
 7006e3a:	746c7573          	csrrc	a0,0x746,24
 7006e3e:	3a3a                	fld	fs4,424(sp)
 7006e40:	6e75                	lui	t3,0x1d
 7006e42:	70617277          	.insn	4, 0x70617277
 7006e46:	2928                	fld	fa0,80(a0)
 7006e48:	2060                	fld	fs0,192(s0)
 7006e4a:	61206e6f          	jal	t3,700d45c <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x4e65>
 7006e4e:	206e                	fld	ft0,216(sp)
 7006e50:	4560                	lw	s0,76(a0)
 7006e52:	7272                	flw	ft4,60(sp)
 7006e54:	2060                	fld	fs0,192(s0)
 7006e56:	6176                	flw	ft2,92(sp)
 7006e58:	756c                	flw	fa1,108(a0)
 7006e5a:	0065                	c.nop	25

07006e5c <anon.8021ec8516762b607f32a64c873d281c.5.llvm.3318710579709553222>:
 7006e5c:	0368                	add	a0,sp,396
 7006e5e:	0700                	add	s0,sp,896
 7006e60:	0001                	nop
 7006e62:	0000                	unimp
 7006e64:	0001                	nop
 7006e66:	0000                	unimp
 7006e68:	0644                	add	s1,sp,772
 7006e6a:	0700                	add	s0,sp,896

07006e6c <anon.8021ec8516762b607f32a64c873d281c.6.llvm.3318710579709553222>:
 7006e6c:	6d6f682f          	.insn	4, 0x6d6f682f
 7006e70:	2f65                	jal	7007628 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.51+0x20>
 7006e72:	6d737577          	.insn	4, 0x6d737577
 7006e76:	7375722f          	.insn	4, 0x7375722f
 7006e7a:	2f74                	fld	fa3,216(a4)
 7006e7c:	6b7a                	flw	fs6,156(sp)
 7006e7e:	68746547          	fmsub.s	fa0,fs0,ft7,fa3,unknown
 7006e82:	7369722f          	.insn	4, 0x7369722f
 7006e86:	722f3063          	.insn	4, 0x722f3063
 7006e8a:	7369                	lui	t1,0xffffa
 7006e8c:	7a2f3063          	.insn	4, 0x7a2f3063
 7006e90:	2f6d766b          	.insn	4, 0x2f6d766b
 7006e94:	2f637273          	csrrc	tp,0x2f6,6
 7006e98:	73657567          	.insn	4, 0x73657567
 7006e9c:	2f74                	fld	fa3,216(a4)
 7006e9e:	6e65                	lui	t3,0x19
 7006ea0:	2e76                	fld	ft8,344(sp)
 7006ea2:	7372                	flw	ft6,60(sp)

07006ea4 <anon.8021ec8516762b607f32a64c873d281c.7.llvm.3318710579709553222>:
 7006ea4:	6e6c                	flw	fa1,92(a2)
 7006ea6:	0700                	add	s0,sp,896
 7006ea8:	0038                	add	a4,sp,8
 7006eaa:	0000                	unimp
 7006eac:	00fd                	add	ra,ra,31
 7006eae:	0000                	unimp
 7006eb0:	0009                	c.nop	2
	...

07006eb4 <anon.8021ec8516762b607f32a64c873d281c.8.llvm.3318710579709553222>:
 7006eb4:	6e6c                	flw	fa1,92(a2)
 7006eb6:	0700                	add	s0,sp,896
 7006eb8:	0038                	add	a4,sp,8
 7006eba:	0000                	unimp
 7006ebc:	0152                	sll	sp,sp,0x14
 7006ebe:	0000                	unimp
 7006ec0:	0009                	c.nop	2
	...

07006ec4 <.LJTI11_0>:
 7006ec4:	0664                	add	s1,sp,780
 7006ec6:	0700                	add	s0,sp,896
 7006ec8:	0678                	add	a4,sp,780
 7006eca:	0700                	add	s0,sp,896
 7006ecc:	068c                	add	a1,sp,832
 7006ece:	0700                	add	s0,sp,896
 7006ed0:	06a0                	add	s0,sp,840
 7006ed2:	0700                	add	s0,sp,896
 7006ed4:	06b4                	add	a3,sp,840
 7006ed6:	0700                	add	s0,sp,896
 7006ed8:	06c8                	add	a0,sp,836
 7006eda:	0700                	add	s0,sp,896
 7006edc:	06dc                	add	a5,sp,836
 7006ede:	0700                	add	s0,sp,896

07006ee0 <.Lanon.77d2c9b90b6215e7d65ccf8a10755e1e.7>:
 7006ee0:	69726553          	.insn	4, 0x69726553
 7006ee4:	6c61                	lui	s8,0x18
 7006ee6:	7a69                	lui	s4,0xffffa
 7006ee8:	4265                	li	tp,25
 7006eea:	6675                	lui	a2,0x1d
 7006eec:	6566                	flw	fa0,88(sp)
 7006eee:	4672                	lw	a2,28(sp)
 7006ef0:	6c75                	lui	s8,0x1d
 7006ef2:	                	lw	a1,92(a2)

07006ef3 <.Lanon.77d2c9b90b6215e7d65ccf8a10755e1e.8>:
 7006ef3:	6f4e                	flw	ft10,208(sp)
 7006ef5:	5374                	lw	a3,100(a4)
 7006ef7:	7075                	c.lui	zero,0xffffd
 7006ef9:	6f70                	flw	fa2,92(a4)
 7006efb:	7472                	flw	fs0,60(sp)
 7006efd:	6465                	lui	s0,0x19

07006eff <.Lanon.77d2c9b90b6215e7d65ccf8a10755e1e.9>:
 7006eff:	6544                	flw	fs1,12(a0)
 7006f01:	69726573          	csrrs	a0,0x697,4
 7006f05:	6c61                	lui	s8,0x18
 7006f07:	7a69                	lui	s4,0xffffa
 7006f09:	5565                	li	a0,-7
 7006f0b:	656e                	flw	fa0,216(sp)
 7006f0d:	7078                	flw	fa4,100(s0)
 7006f0f:	6365                	lui	t1,0x19
 7006f11:	6574                	flw	fa3,76(a0)
 7006f13:	4564                	lw	s1,76(a0)
 7006f15:	646e                	flw	fs0,216(sp)

07006f17 <.Lanon.77d2c9b90b6215e7d65ccf8a10755e1e.10>:
 7006f17:	6544                	flw	fs1,12(a0)
 7006f19:	69726573          	csrrs	a0,0x697,4
 7006f1d:	6c61                	lui	s8,0x18
 7006f1f:	7a69                	lui	s4,0xffffa
 7006f21:	4265                	li	tp,25
 7006f23:	6461                	lui	s0,0x18
 7006f25:	7455                	lui	s0,0xffff5
 7006f27:	3866                	fld	fa6,120(sp)

07006f29 <.Lanon.77d2c9b90b6215e7d65ccf8a10755e1e.11>:
 7006f29:	6544                	flw	fs1,12(a0)
 7006f2b:	69726573          	csrrs	a0,0x697,4
 7006f2f:	6c61                	lui	s8,0x18
 7006f31:	7a69                	lui	s4,0xffffa
 7006f33:	4265                	li	tp,25
 7006f35:	6461                	lui	s0,0x18
 7006f37:	6974704f          	fnmadd.s	ft0,fs0,fs7,fa3
 7006f3b:	          	jal	t3,704d58f <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x44f98>

07006f3d <.Lanon.77d2c9b90b6215e7d65ccf8a10755e1e.12>:
 7006f3d:	6544                	flw	fs1,12(a0)
 7006f3f:	69726573          	csrrs	a0,0x697,4
 7006f43:	6c61                	lui	s8,0x18
 7006f45:	7a69                	lui	s4,0xffffa
 7006f47:	4265                	li	tp,25
 7006f49:	6461                	lui	s0,0x18
 7006f4b:	72616843          	fmadd.d	fa6,ft2,ft6,fa4,unknown

07006f4f <.Lanon.77d2c9b90b6215e7d65ccf8a10755e1e.13>:
 7006f4f:	6544                	flw	fs1,12(a0)
 7006f51:	69726573          	csrrs	a0,0x697,4
 7006f55:	6c61                	lui	s8,0x18
 7006f57:	7a69                	lui	s4,0xffffa
 7006f59:	4265                	li	tp,25
 7006f5b:	6461                	lui	s0,0x18
 7006f5d:	6f42                	flw	ft10,16(sp)
 7006f5f:	          	jal	s8,705de43 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x5584c>

07006f61 <.Lanon.168859b36f162421e63795dd2ae12a88.6>:
 7006f61:	6e55                	lui	t3,0x15
 7006f63:	6261                	lui	tp,0x18
 7006f65:	656c                	flw	fa1,76(a0)
 7006f67:	7420                	flw	fs0,104(s0)
 7006f69:	6c61206f          	j	701962f <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x11038>
 7006f6d:	6769                	lui	a4,0x1a
 7006f6f:	206e                	fld	ft0,216(sp)
 7006f71:	6c61                	lui	s8,0x18
 7006f73:	6f6c                	flw	fa1,92(a4)
 7006f75:	69746163          	bltu	s0,s7,70075f7 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.49+0x7>
 7006f79:	74206e6f          	jal	t3,700d6bb <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x50c4>
 7006f7d:	6f77206f          	j	7079e73 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x7187c>
 7006f81:	6472                	flw	fs0,28(sp)
 7006f83:	7320                	flw	fs0,96(a4)
 7006f85:	7a69                	lui	s4,0xffffa
 7006f87:	                	and	s0,s0,25

07006f88 <.Lanon.168859b36f162421e63795dd2ae12a88.7>:
 7006f88:	0788                	add	a0,sp,960
 7006f8a:	0700                	add	s0,sp,896
 7006f8c:	0000                	unimp
 7006f8e:	0000                	unimp
 7006f90:	0001                	nop
 7006f92:	0000                	unimp
 7006f94:	6c34                	flw	fa3,88(s0)
 7006f96:	0700                	add	s0,sp,896

07006f98 <.Lanon.168859b36f162421e63795dd2ae12a88.8>:
 7006f98:	6d6f682f          	.insn	4, 0x6d6f682f
 7006f9c:	2f65                	jal	7007754 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.22+0x28>
 7006f9e:	6d737577          	.insn	4, 0x6d737577
 7006fa2:	7375722f          	.insn	4, 0x7375722f
 7006fa6:	2f74                	fld	fa3,216(a4)
 7006fa8:	6b7a                	flw	fs6,156(sp)
 7006faa:	68746547          	fmsub.s	fa0,fs0,ft7,fa3,unknown
 7006fae:	7369722f          	.insn	4, 0x7369722f
 7006fb2:	722f3063          	.insn	4, 0x722f3063
 7006fb6:	7369                	lui	t1,0xffffa
 7006fb8:	7a2f3063          	.insn	4, 0x7a2f3063
 7006fbc:	2f6d766b          	.insn	4, 0x2f6d766b
 7006fc0:	2f637273          	csrrc	tp,0x2f6,6
 7006fc4:	73657567          	.insn	4, 0x73657567
 7006fc8:	2f74                	fld	fa3,216(a4)
 7006fca:	6c61                	lui	s8,0x18
 7006fcc:	6f6c                	flw	fa1,92(a4)
 7006fce:	73722e63          	.insn	4, 0x73722e63
	...

07006fd4 <.Lanon.168859b36f162421e63795dd2ae12a88.9>:
 7006fd4:	6f98                	flw	fa4,24(a5)
 7006fd6:	0700                	add	s0,sp,896
 7006fd8:	003a                	c.slli	zero,0xe
 7006fda:	0000                	unimp
 7006fdc:	0000001b          	.insn	4, 0x001b
 7006fe0:	0016                	c.slli	zero,0x5
	...

07006fe4 <.Lanon.80577616105d4affeb49518242f7e98e.1>:
 7006fe4:	6d6f682f          	.insn	4, 0x6d6f682f
 7006fe8:	2f65                	jal	70077a0 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.22+0x74>
 7006fea:	6d737577          	.insn	4, 0x6d737577
 7006fee:	7375722f          	.insn	4, 0x7375722f
 7006ff2:	2f74                	fld	fa3,216(a4)
 7006ff4:	6b7a                	flw	fs6,156(sp)
 7006ff6:	68746547          	fmsub.s	fa0,fs0,ft7,fa3,unknown
 7006ffa:	7369722f          	.insn	4, 0x7369722f
 7006ffe:	722f3063          	.insn	4, 0x722f3063
 7007002:	7369                	lui	t1,0xffffa
 7007004:	7a2f3063          	.insn	4, 0x7a2f3063
 7007008:	2f6d766b          	.insn	4, 0x2f6d766b
 700700c:	2f637273          	csrrc	tp,0x2f6,6
 7007010:	73657567          	.insn	4, 0x73657567
 7007014:	2f74                	fld	fa3,216(a4)
 7007016:	2e616873          	csrrs	a6,0x2e6,2
 700701a:	7372                	flw	ft6,60(sp)

0700701c <.Lanon.80577616105d4affeb49518242f7e98e.2>:
 700701c:	7361                	lui	t1,0xffff8
 700701e:	74726573          	csrrs	a0,mseccfg,4
 7007022:	6f69                	lui	t5,0x1a
 7007024:	206e                	fld	ft0,216(sp)
 7007026:	6166                	flw	ft2,88(sp)
 7007028:	6c69                	lui	s8,0x1a
 700702a:	6465                	lui	s0,0x19
 700702c:	203a                	fld	ft0,392(sp)
 700702e:	7962                	flw	fs2,56(sp)
 7007030:	6574                	flw	fa3,76(a0)
 7007032:	656c2e73          	csrrs	t3,hviprio1h,s8
 7007036:	286e                	fld	fa6,216(sp)
 7007038:	2029                	jal	7007042 <.Lanon.80577616105d4affeb49518242f7e98e.2+0x26>
 700703a:	3d3c                	fld	fa5,120(a0)
 700703c:	7020                	flw	fs0,96(s0)
 700703e:	6461                	lui	s0,0x18
 7007040:	656c                	flw	fa1,76(a0)
 7007042:	206e                	fld	ft0,216(sp)
 7007044:	202a                	fld	ft0,136(sp)
 7007046:	44524f57          	.insn	4, 0x44524f57
 700704a:	535f 5a49 0045      	.insn	6, 0x00455a49535f

07007050 <.Lanon.80577616105d4affeb49518242f7e98e.3>:
 7007050:	6fe4                	flw	fs1,92(a5)
 7007052:	0700                	add	s0,sp,896
 7007054:	0038                	add	a4,sp,8
 7007056:	0000                	unimp
 7007058:	0072                	c.slli	zero,0x1c
 700705a:	0000                	unimp
 700705c:	0005                	c.nop	1
	...

07007060 <.Lanon.80577616105d4affeb49518242f7e98e.4>:
 7007060:	6fe4                	flw	fs1,92(a5)
 7007062:	0700                	add	s0,sp,896
 7007064:	0038                	add	a4,sp,8
 7007066:	0000                	unimp
 7007068:	008a                	sll	ra,ra,0x2
 700706a:	0000                	unimp
 700706c:	0014                	.insn	2, 0x0014
	...

07007070 <anon.1375604a764ae3db9d6e47da8ae90e8a.11.llvm.679149048231815736>:
 7007070:	7274                	flw	fa3,100(a2)
 7007072:	6575                	lui	a0,0x1d
 7007074:	0000                	unimp
	...

07007078 <.Lanon.80577616105d4affeb49518242f7e98e.6>:
 7007078:	6fe4                	flw	fs1,92(a5)
 700707a:	0700                	add	s0,sp,896
 700707c:	0038                	add	a4,sp,8
 700707e:	0000                	unimp
 7007080:	008a                	sll	ra,ra,0x2
 7007082:	0000                	unimp
 7007084:	0009                	c.nop	2
	...

07007088 <anon.5feb350ac14d271e27b53533b92778e4.3.llvm.16866018416088645210>:
 7007088:	0d9c                	add	a5,sp,720
 700708a:	0700                	add	s0,sp,896
 700708c:	0004                	.insn	2, 0x0004
 700708e:	0000                	unimp
 7007090:	0004                	.insn	2, 0x0004
 7007092:	0000                	unimp
 7007094:	06f0                	add	a2,sp,844
 7007096:	0700                	add	s0,sp,896

07007098 <.Lanon.2e428254a4f422f96131b722f5510c98.1>:
 7007098:	6d6f682f          	.insn	4, 0x6d6f682f
 700709c:	2f65                	jal	7007854 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.28+0x8>
 700709e:	6d737577          	.insn	4, 0x6d737577
 70070a2:	7375722f          	.insn	4, 0x7375722f
 70070a6:	2f74                	fld	fa3,216(a4)
 70070a8:	6b7a                	flw	fs6,156(sp)
 70070aa:	68746547          	fmsub.s	fa0,fs0,ft7,fa3,unknown
 70070ae:	7369722f          	.insn	4, 0x7369722f
 70070b2:	722f3063          	.insn	4, 0x722f3063
 70070b6:	7369                	lui	t1,0xffffa
 70070b8:	7a2f3063          	.insn	4, 0x7a2f3063
 70070bc:	732f706b          	.insn	4, 0x732f706b
 70070c0:	6372                	flw	ft6,28(sp)
 70070c2:	726f632f          	.insn	4, 0x726f632f
 70070c6:	2f65                	jal	700787e <anon.bc0186976f2b4070236a5106e84f3a4e.30.llvm.9006096014459121332+0xa>
 70070c8:	6168                	flw	fa0,68(a0)
 70070ca:	732f6873          	csrrs	a6,mhpmevent18h,30
 70070ce:	6168                	flw	fa0,68(a0)
 70070d0:	7375722f          	.insn	4, 0x7375722f
 70070d4:	5f74                	lw	a3,124(a4)
 70070d6:	70797263          	bgeu	s2,t2,70077da <.Lanon.bc0186976f2b4070236a5106e84f3a4e.22+0xae>
 70070da:	6f74                	flw	fa3,92(a4)
 70070dc:	722e                	flw	ft4,232(sp)
 70070de:	          	.insn	4, 0x70980073

070070e0 <.Lanon.2e428254a4f422f96131b722f5510c98.2>:
 70070e0:	7098                	flw	fa4,32(s1)
 70070e2:	0700                	add	s0,sp,896
 70070e4:	00000047          	fmsub.s	ft0,ft0,ft0,ft0,rne
 70070e8:	0095                	add	ra,ra,5
 70070ea:	0000                	unimp
 70070ec:	000d                	c.nop	3
	...

070070f0 <.Lanon.2e428254a4f422f96131b722f5510c98.3>:
 70070f0:	6c6c6163          	bltu	s8,t1,70077b2 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.22+0x86>
 70070f4:	6465                	lui	s0,0x19
 70070f6:	6020                	flw	fs0,64(s0)
 70070f8:	6974704f          	fnmadd.s	ft0,fs0,fs7,fa3
 70070fc:	3a3a6e6f          	jal	t3,70adc9e <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0xa56a7>
 7007100:	6e75                	lui	t3,0x1d
 7007102:	70617277          	.insn	4, 0x70617277
 7007106:	2928                	fld	fa0,80(a0)
 7007108:	2060                	fld	fs0,192(s0)
 700710a:	61206e6f          	jal	t3,700d71c <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x5125>
 700710e:	6020                	flw	fs0,64(s0)
 7007110:	6f4e                	flw	ft10,208(sp)
 7007112:	656e                	flw	fa0,216(sp)
 7007114:	2060                	fld	fs0,192(s0)
 7007116:	6176                	flw	ft2,92(sp)
 7007118:	756c                	flw	fa1,108(a0)
 700711a:	0065                	c.nop	25

0700711c <.Lanon.2e428254a4f422f96131b722f5510c98.4>:
 700711c:	7098                	flw	fa4,32(s1)
 700711e:	0700                	add	s0,sp,896
 7007120:	00000047          	fmsub.s	ft0,ft0,ft0,ft0,rne
 7007124:	0095                	add	ra,ra,5
 7007126:	0000                	unimp
 7007128:	001d                	c.nop	7
	...

0700712c <.Lanon.2e428254a4f422f96131b722f5510c98.9>:
 700712c:	7361                	lui	t1,0xffff8
 700712e:	74726573          	csrrs	a0,mseccfg,4
 7007132:	6f69                	lui	t5,0x1a
 7007134:	206e                	fld	ft0,216(sp)
 7007136:	6166                	flw	ft2,88(sp)
 7007138:	6c69                	lui	s8,0x1a
 700713a:	6465                	lui	s0,0x19
 700713c:	203a                	fld	ft0,392(sp)
 700713e:	696d                	lui	s2,0x1b
 7007140:	2064                	fld	fs1,192(s0)
 7007142:	3d3c                	fld	fa5,120(a0)
 7007144:	7320                	flw	fs0,96(a4)
 7007146:	6c65                	lui	s8,0x19
 7007148:	2e66                	fld	ft8,88(sp)
 700714a:	656c                	flw	fa1,76(a0)
 700714c:	286e                	fld	fa6,216(sp)
 700714e:	                	jal	7007868 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.29>

0700714f <.Lanon.2e428254a4f422f96131b722f5510c98.10>:
 700714f:	6d6f682f          	.insn	4, 0x6d6f682f
 7007153:	2f65                	jal	700790b <.Lanon.bc0186976f2b4070236a5106e84f3a4e.68+0x3f>
 7007155:	6d737577          	.insn	4, 0x6d737577
 7007159:	7375722f          	.insn	4, 0x7375722f
 700715d:	2f74                	fld	fa3,216(a4)
 700715f:	6b7a                	flw	fs6,156(sp)
 7007161:	68746547          	fmsub.s	fa0,fs0,ft7,fa3,unknown
 7007165:	7369722f          	.insn	4, 0x7369722f
 7007169:	722f3063          	.insn	4, 0x722f3063
 700716d:	7369                	lui	t1,0xffffa
 700716f:	7a2f3063          	.insn	4, 0x7a2f3063
 7007173:	2f6d766b          	.insn	4, 0x2f6d766b
 7007177:	2f637273          	csrrc	tp,0x2f6,6
 700717b:	73657567          	.insn	4, 0x73657567
 700717f:	2f74                	fld	fa3,216(a4)
 7007181:	6e65                	lui	t3,0x19
 7007183:	2e76                	fld	ft8,344(sp)
 7007185:	7372                	flw	ft6,60(sp)

07007187 <.Lanon.2e428254a4f422f96131b722f5510c98.11>:
 7007187:	6d6f682f          	.insn	4, 0x6d6f682f
 700718b:	2f65                	jal	7007943 <anon.bc0186976f2b4070236a5106e84f3a4e.74.llvm.9006096014459121332+0x17>
 700718d:	6d737577          	.insn	4, 0x6d737577
 7007191:	7375722f          	.insn	4, 0x7375722f
 7007195:	2f74                	fld	fa3,216(a4)
 7007197:	6b7a                	flw	fs6,156(sp)
 7007199:	68746547          	fmsub.s	fa0,fs0,ft7,fa3,unknown
 700719d:	7369722f          	.insn	4, 0x7369722f
 70071a1:	722f3063          	.insn	4, 0x722f3063
 70071a5:	7369                	lui	t1,0xffffa
 70071a7:	7a2f3063          	.insn	4, 0x7a2f3063
 70071ab:	2f6d766b          	.insn	4, 0x2f6d766b
 70071af:	6c70                	flw	fa2,92(s0)
 70071b1:	7461                	lui	s0,0xffff8
 70071b3:	6f66                	flw	ft10,88(sp)
 70071b5:	6d72                	flw	fs10,28(sp)
 70071b7:	6372732f          	.insn	4, 0x6372732f
 70071bb:	7379732f          	.insn	4, 0x7379732f
 70071bf:	6c6c6163          	bltu	s8,t1,7007881 <anon.bc0186976f2b4070236a5106e84f3a4e.30.llvm.9006096014459121332+0xd>
 70071c3:	722e                	flw	ft4,232(sp)
 70071c5:	          	csrrs	s2,0x746,28

070071c6 <.Lanon.2e428254a4f422f96131b722f5510c98.12>:
 70071c6:	6e69                	lui	t3,0x1a
 70071c8:	6574                	flw	fa3,76(a0)
 70071ca:	6e72                	flw	ft8,28(sp)
 70071cc:	6c61                	lui	s8,0x18
 70071ce:	6520                	flw	fs0,72(a0)
 70071d0:	7272                	flw	ft4,60(sp)
 70071d2:	203a726f          	jal	tp,70aebd4 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0xa65dd>
 70071d6:	6e65                	lui	t3,0x19
 70071d8:	6574                	flw	fa3,76(a0)
 70071da:	6572                	flw	fa0,28(sp)
 70071dc:	2064                	fld	fs1,192(s0)
 70071de:	6e75                	lui	t3,0x1d
 70071e0:	6572                	flw	fa0,28(sp)
 70071e2:	6361                	lui	t1,0x18
 70071e4:	6168                	flw	fa0,68(a0)
 70071e6:	6c62                	flw	fs8,24(sp)
 70071e8:	2065                	jal	7007290 <.Lanon.1e336525450390b565d102459bb3bc9b.14+0x21>
 70071ea:	65646f63          	bltu	s0,s6,7007848 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.27+0xc>
	...

070071f0 <.Lanon.2e428254a4f422f96131b722f5510c98.13>:
 70071f0:	07007187          	.insn	4, 0x07007187
 70071f4:	0000003f 000000d1 	.insn	8, 0x00d10000003f
 70071fc:	0009                	c.nop	2
	...

07007200 <.Lanon.2e428254a4f422f96131b722f5510c98.14>:
 7007200:	0700714f          	.insn	4, 0x0700714f
 7007204:	0038                	add	a4,sp,8
 7007206:	0000                	unimp
 7007208:	00f4                	add	a3,sp,76
 700720a:	0000                	unimp
 700720c:	001c                	.insn	2, 0x001c
	...

07007210 <_ZN9risc0_zkp4core4hash3sha11SHA256_INIT17h62e1cd879e97d403E>:
 7007210:	096a                	sll	s2,s2,0x1a
 7007212:	67e6                	flw	fa5,88(sp)
 7007214:	85ae67bb          	.insn	4, 0x85ae67bb
 7007218:	6e3c                	flw	fa5,88(a2)
 700721a:	4fa572f3          	csrrc	t0,0x4fa,10
 700721e:	3af5                	jal	7006c1a <_ZN4core6result13unwrap_failed17hf6bc9b148a5ba21eE+0x5a>
 7007220:	0e51                	add	t3,t3,20 # 1d014 <__bss_size+0x1cf8c>
 7007222:	7f52                	flw	ft10,52(sp)
 7007224:	8c68059b          	.insn	4, 0x8c68059b
 7007228:	831f abd9 e05b      	.insn	6, 0xe05babd9831f
 700722e:	19cd                	add	s3,s3,-13

07007230 <.Lanon.1e336525450390b565d102459bb3bc9b.2>:
 7007230:	6d6f682f          	.insn	4, 0x6d6f682f
 7007234:	2f65                	jal	70079ec <anon.bc0186976f2b4070236a5106e84f3a4e.74.llvm.9006096014459121332+0xc0>
 7007236:	6d737577          	.insn	4, 0x6d737577
 700723a:	7375722f          	.insn	4, 0x7375722f
 700723e:	2f74                	fld	fa3,216(a4)
 7007240:	6b7a                	flw	fs6,156(sp)
 7007242:	68746547          	fmsub.s	fa0,fs0,ft7,fa3,unknown
 7007246:	7369722f          	.insn	4, 0x7369722f
 700724a:	722f3063          	.insn	4, 0x722f3063
 700724e:	7369                	lui	t1,0xffffa
 7007250:	7a2f3063          	.insn	4, 0x7a2f3063
 7007254:	2f6d766b          	.insn	4, 0x2f6d766b
 7007258:	6c70                	flw	fa2,92(s0)
 700725a:	7461                	lui	s0,0xffff8
 700725c:	6f66                	flw	ft10,88(sp)
 700725e:	6d72                	flw	fs10,28(sp)
 7007260:	6372732f          	.insn	4, 0x6372732f
 7007264:	7379732f          	.insn	4, 0x7379732f
 7007268:	6c6c6163          	bltu	s8,t1,700792a <.Lanon.bc0186976f2b4070236a5106e84f3a4e.69+0x6>
 700726c:	722e                	flw	ft4,232(sp)
 700726e:	          	csrrc	tp,mhpmevent22h,18

0700726f <.Lanon.1e336525450390b565d102459bb3bc9b.14>:
 700726f:	6972                	flw	fs2,28(sp)
 7007271:	5f306373          	csrrs	t1,0x5f3,0
 7007275:	6b7a                	flw	fs6,156(sp)
 7007277:	6d76                	flw	fs10,92(sp)
 7007279:	705f 616c 6674      	.insn	6, 0x6674616c705f
 700727f:	3a6d726f          	jal	tp,70de625 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0xd602e>
 7007283:	733a                	flw	ft6,172(sp)
 7007285:	7379                	lui	t1,0xffffe
 7007287:	6c6c6163          	bltu	s8,t1,7007949 <anon.bc0186976f2b4070236a5106e84f3a4e.74.llvm.9006096014459121332+0x1d>
 700728b:	3a3a                	fld	fs4,424(sp)
 700728d:	726e                	flw	ft4,248(sp)
 700728f:	3a3a                	fld	fs4,424(sp)
 7007291:	5f535953          	.insn	4, 0x5f535953
 7007295:	4552                	lw	a0,20(sp)
 7007297:	4441                	li	s0,16
 7007299:	415f 4156 4c49      	.insn	6, 0x4c494156415f
	...

070072a0 <.Lanon.1e336525450390b565d102459bb3bc9b.15>:
 70072a0:	6972                	flw	fs2,28(sp)
 70072a2:	5f306373          	csrrs	t1,0x5f3,0
 70072a6:	6b7a                	flw	fs6,156(sp)
 70072a8:	6d76                	flw	fs10,92(sp)
 70072aa:	705f 616c 6674      	.insn	6, 0x6674616c705f
 70072b0:	3a6d726f          	jal	tp,70de656 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0xd605f>
 70072b4:	733a                	flw	ft6,172(sp)
 70072b6:	7379                	lui	t1,0xffffe
 70072b8:	6c6c6163          	bltu	s8,t1,700797a <anon.bc0186976f2b4070236a5106e84f3a4e.74.llvm.9006096014459121332+0x4e>
 70072bc:	3a3a                	fld	fs4,424(sp)
 70072be:	726e                	flw	ft4,248(sp)
 70072c0:	3a3a                	fld	fs4,424(sp)
 70072c2:	5f535953          	.insn	4, 0x5f535953
 70072c6:	4552                	lw	a0,20(sp)
 70072c8:	4441                	li	s0,16
	...

070072cb <.Lanon.1e336525450390b565d102459bb3bc9b.16>:
 70072cb:	7361                	lui	t1,0xffff8
 70072cd:	74726573          	csrrs	a0,mseccfg,4
 70072d1:	6f69                	lui	t5,0x1a
 70072d3:	206e                	fld	ft0,216(sp)
 70072d5:	6166                	flw	ft2,88(sp)
 70072d7:	6c69                	lui	s8,0x1a
 70072d9:	6465                	lui	s0,0x19
 70072db:	203a                	fld	ft0,392(sp)
 70072dd:	726e                	flw	ft4,248(sp)
 70072df:	6165                	add	sp,sp,112
 70072e1:	2064                	fld	fs1,192(s0)
 70072e3:	7361                	lui	t1,0xffff8
 70072e5:	7520                	flw	fs0,104(a0)
 70072e7:	657a6973          	csrrs	s2,hviprio2h,20
 70072eb:	3c20                	fld	fs0,120(s0)
 70072ed:	203d                	jal	700731b <.Lanon.1e336525450390b565d102459bb3bc9b.18+0xb>
 70072ef:	626e                	flw	ft4,216(sp)
 70072f1:	7479                	lui	s0,0xffffe
 70072f3:	7365                	lui	t1,0xffff9
 70072f5:	725f 7165 6575      	.insn	6, 0x65757165725f
 70072fb:	64657473          	csrrc	s0,hviprio1,10
	...

07007300 <.Lanon.1e336525450390b565d102459bb3bc9b.17>:
 7007300:	7230                	flw	fa2,96(a2)
 7007302:	0700                	add	s0,sp,896
 7007304:	0000003f 000001b0 	.insn	8, 0x01b00000003f
 700730c:	0005                	c.nop	1
	...

07007310 <.Lanon.1e336525450390b565d102459bb3bc9b.18>:
 7007310:	6972                	flw	fs2,28(sp)
 7007312:	5f306373          	csrrs	t1,0x5f3,0
 7007316:	6b7a                	flw	fs6,156(sp)
 7007318:	6d76                	flw	fs10,92(sp)
 700731a:	705f 616c 6674      	.insn	6, 0x6674616c705f
 7007320:	3a6d726f          	jal	tp,70de6c6 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0xd60cf>
 7007324:	733a                	flw	ft6,172(sp)
 7007326:	7379                	lui	t1,0xffffe
 7007328:	6c6c6163          	bltu	s8,t1,70079ea <anon.bc0186976f2b4070236a5106e84f3a4e.74.llvm.9006096014459121332+0xbe>
 700732c:	3a3a                	fld	fs4,424(sp)
 700732e:	726e                	flw	ft4,248(sp)
 7007330:	3a3a                	fld	fs4,424(sp)
 7007332:	5f535953          	.insn	4, 0x5f535953
 7007336:	54495257          	.insn	4, 0x54495257
 700733a:	0045                	c.nop	17

0700733c <.Lanon.1e336525450390b565d102459bb3bc9b.20>:
 700733c:	2074754f          	fnmadd.s	fa0,fs0,ft7,ft4
 7007340:	6d20666f          	jal	a2,700da12 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x541b>
 7007344:	6d65                	lui	s10,0x19
 7007346:	2179726f          	jal	tp,709ed5c <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x96765>
	...

0700734c <.Lanon.1e336525450390b565d102459bb3bc9b.22>:
 700734c:	7230                	flw	fa2,96(a2)
 700734e:	0700                	add	s0,sp,896
 7007350:	0000003f 000001e3 	.insn	8, 0x01e30000003f
 7007358:	001f 0000       	.insn	6, 0x61660000001f

0700735c <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.19>:
 700735c:	6166                	flw	ft2,88(sp)
 700735e:	6174                	flw	fa3,68(a0)
 7007360:	206c                	fld	fa1,192(s0)
 7007362:	7572                	flw	fa0,60(sp)
 7007364:	746e                	flw	fs0,248(sp)
 7007366:	6d69                	lui	s10,0x1a
 7007368:	2065                	jal	7007410 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.29+0x8c>
 700736a:	7265                	lui	tp,0xffff9
 700736c:	6f72                	flw	ft10,28(sp)
 700736e:	3a72                	fld	fs4,312(sp)
 7007370:	                	add	s0,sp,280

07007371 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.20>:
 7007371:	000a                	c.slli	zero,0x2
	...

07007374 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.21>:
 7007374:	735c                	flw	fa5,36(a4)
 7007376:	0700                	add	s0,sp,896
 7007378:	0015                	c.nop	5
 700737a:	0000                	unimp
 700737c:	7371                	lui	t1,0xffffc
 700737e:	0700                	add	s0,sp,896
 7007380:	0001                	nop
	...

07007384 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.29>:
 7007384:	6d6f682f          	.insn	4, 0x6d6f682f
 7007388:	2f65                	jal	7007b40 <anon.ce42269267409fad0f351b7abd853977.12.llvm.11758424910166210904+0x4>
 700738a:	6d737577          	.insn	4, 0x6d737577
 700738e:	7375722f          	.insn	4, 0x7375722f
 7007392:	2f74                	fld	fa3,216(a4)
 7007394:	6b7a                	flw	fs6,156(sp)
 7007396:	68746547          	fmsub.s	fa0,fs0,ft7,fa3,unknown
 700739a:	7369722f          	.insn	4, 0x7369722f
 700739e:	652f3063          	.insn	4, 0x652f3063
 70073a2:	6178                	flw	fa4,68(a0)
 70073a4:	706d                	c.lui	zero,0xffffb
 70073a6:	656c                	flw	fa1,76(a0)
 70073a8:	61742f73          	csrrs	t5,0x617,s0
 70073ac:	6772                	flw	fa4,28(sp)
 70073ae:	7465                	lui	s0,0xffff9
 70073b0:	6265642f          	.insn	4, 0x6265642f
 70073b4:	6775                	lui	a4,0x1d
 70073b6:	6975622f          	.insn	4, 0x6975622f
 70073ba:	646c                	flw	fa1,76(s0)
 70073bc:	6168732f          	.insn	4, 0x6168732f
 70073c0:	6d2d                	lui	s10,0xb
 70073c2:	7465                	lui	s0,0xffff9
 70073c4:	6f68                	flw	fa0,92(a4)
 70073c6:	7364                	flw	fs1,100(a4)
 70073c8:	362d                	jal	7006ef2 <.Lanon.77d2c9b90b6215e7d65ccf8a10755e1e.7+0x12>
 70073ca:	3266                	fld	ft4,120(sp)
 70073cc:	3664                	fld	fs1,232(a2)
 70073ce:	6536                	flw	fa0,76(sp)
 70073d0:	6239                	lui	tp,0xe
 70073d2:	3638                	fld	fa4,104(a2)
 70073d4:	3735                	jal	7007300 <.Lanon.1e336525450390b565d102459bb3bc9b.17>
 70073d6:	6538                	flw	fa4,72(a0)
 70073d8:	756f2f37          	lui	t5,0x756f2
 70073dc:	2f74                	fld	fa3,216(a4)
 70073de:	7572                	flw	fa0,60(sp)
 70073e0:	732d7473          	csrrc	s0,mhpmevent18h,26
 70073e4:	6474                	flw	fa3,76(s0)
 70073e6:	345f 3266 6439      	.insn	6, 0x64393266345f
 70073ec:	3539                	jal	70071fa <.Lanon.2e428254a4f422f96131b722f5510c98.13+0xa>
 70073ee:	6530                	flw	fa2,72(a0)
 70073f0:	3031                	jal	7006bfc <_ZN4core6result13unwrap_failed17hf6bc9b148a5ba21eE+0x3c>
 70073f2:	3931                	jal	700700e <.Lanon.80577616105d4affeb49518242f7e98e.1+0x2a>
 70073f4:	39653633          	.insn	4, 0x39653633
 70073f8:	61653433          	.insn	4, 0x61653433
 70073fc:	6566                	flw	fa0,88(sp)
 70073fe:	3430                	fld	fa2,104(s0)
 7007400:	61666233          	.insn	4, 0x61666233
 7007404:	3061                	jal	7006c8c <_ZN4core3fmt3num3imp7fmt_u3217h8b894cce7ddda857E.llvm.3008685313708409704+0x3c>
 7007406:	6632                	flw	fa2,12(sp)
 7007408:	3939                	jal	7007026 <.Lanon.80577616105d4affeb49518242f7e98e.2+0xa>
 700740a:	6331                	lui	t1,0xc
 700740c:	37353437          	lui	s0,0x37353
 7007410:	6135                	add	sp,sp,352
 7007412:	6436                	flw	fs0,76(sp)
 7007414:	6366                	flw	ft6,88(sp)
 7007416:	3638                	fld	fa4,104(a2)
 7007418:	3734                	fld	fa3,104(a4)
 700741a:	37633363          	.insn	4, 0x37633363
 700741e:	6266                	flw	ft4,88(sp)
 7007420:	6462                	flw	fs0,24(sp)
 7007422:	6465                	lui	s0,0x19
 7007424:	3565                	jal	70072cc <.Lanon.1e336525450390b565d102459bb3bc9b.16+0x1>
 7007426:	2f38                	fld	fa4,88(a4)
 7007428:	696c                	flw	fa1,84(a0)
 700742a:	7262                	flw	ft4,56(sp)
 700742c:	7261                	lui	tp,0xffff8
 700742e:	2f79                	jal	7007bcc <anon.ce42269267409fad0f351b7abd853977.12.llvm.11758424910166210904+0x90>
 7007430:	2f647473          	csrrc	s0,0x2f6,8
 7007434:	2f637273          	csrrc	tp,0x2f6,6
 7007438:	6170                	flw	fa2,68(a0)
 700743a:	696e                	flw	fs2,216(sp)
 700743c:	6e696b63          	bltu	s2,t1,7007b32 <anon.8f6a86c2bc9b382f474d86b741846cce.6.llvm.14256562575406249000+0x6>
 7007440:	73722e67          	.insn	4, 0x73722e67

07007444 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.32>:
 7007444:	6f42                	flw	ft10,16(sp)
 7007446:	3c78                	fld	fa4,248(s0)
 7007448:	7964                	flw	fs1,116(a0)
 700744a:	206e                	fld	ft0,216(sp)
 700744c:	6e41                	lui	t3,0x10
 700744e:	3e79                	jal	7006fec <.Lanon.80577616105d4affeb49518242f7e98e.1+0x8>

07007450 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.33>:
 7007450:	753c                	flw	fa5,104(a0)
 7007452:	6e6e                	flw	ft8,216(sp)
 7007454:	6d61                	lui	s10,0x18
 7007456:	6465                	lui	s0,0x19
 7007458:	003e                	c.slli	zero,0xf
	...

0700745c <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.34>:
 700745c:	1a84                	add	s1,sp,368
 700745e:	0700                	add	s0,sp,896
 7007460:	0000                	unimp
 7007462:	0000                	unimp
 7007464:	0001                	nop
 7007466:	0000                	unimp
 7007468:	5104                	lw	s1,32(a0)
 700746a:	0700                	add	s0,sp,896
 700746c:	4d1c                	lw	a5,24(a0)
 700746e:	0700                	add	s0,sp,896
 7007470:	4d90                	lw	a2,24(a1)
 7007472:	0700                	add	s0,sp,896
 7007474:	5150                	lw	a2,36(a0)
 7007476:	0700                	add	s0,sp,896
 7007478:	4d98                	lw	a4,24(a1)
 700747a:	0700                	add	s0,sp,896
 700747c:	4dd8                	lw	a4,28(a1)
 700747e:	0700                	add	s0,sp,896
 7007480:	4ffc                	lw	a5,92(a5)
 7007482:	0700                	add	s0,sp,896

07007484 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.35>:
 7007484:	1a88                	add	a0,sp,368
 7007486:	0700                	add	s0,sp,896
 7007488:	000c                	.insn	2, 0x000c
 700748a:	0000                	unimp
 700748c:	0004                	.insn	2, 0x0004
 700748e:	0000                	unimp
 7007490:	1aa4                	add	s1,sp,376
 7007492:	0700                	add	s0,sp,896
 7007494:	1b48                	add	a0,sp,436
 7007496:	0700                	add	s0,sp,896
 7007498:	1c64                	add	s1,sp,572
 700749a:	0700                	add	s0,sp,896
 700749c:	1d0c                	add	a1,sp,688
 700749e:	0700                	add	s0,sp,896
 70074a0:	1c6c                	add	a1,sp,572
 70074a2:	0700                	add	s0,sp,896
 70074a4:	2f08                	fld	fa0,24(a4)
 70074a6:	0700                	add	s0,sp,896
 70074a8:	31d4                	fld	fa3,160(a1)
 70074aa:	0700                	add	s0,sp,896

070074ac <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.36>:
 70074ac:	6c6c6163          	bltu	s8,t1,7007b6e <anon.ce42269267409fad0f351b7abd853977.12.llvm.11758424910166210904+0x32>
 70074b0:	6465                	lui	s0,0x19
 70074b2:	6020                	flw	fs0,64(s0)
 70074b4:	6974704f          	fnmadd.s	ft0,fs0,fs7,fa3
 70074b8:	3a3a6e6f          	jal	t3,70ae05a <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0xa5a63>
 70074bc:	6e75                	lui	t3,0x1d
 70074be:	70617277          	.insn	4, 0x70617277
 70074c2:	2928                	fld	fa0,80(a0)
 70074c4:	2060                	fld	fs0,192(s0)
 70074c6:	61206e6f          	jal	t3,700dad8 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x54e1>
 70074ca:	6020                	flw	fs0,64(s0)
 70074cc:	6f4e                	flw	ft10,208(sp)
 70074ce:	656e                	flw	fa0,216(sp)
 70074d0:	2060                	fld	fs0,192(s0)
 70074d2:	6176                	flw	ft2,92(sp)
 70074d4:	756c                	flw	fa1,108(a0)
 70074d6:	0065                	c.nop	25

070074d8 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.37>:
 70074d8:	7384                	flw	fs1,32(a5)
 70074da:	0700                	add	s0,sp,896
 70074dc:	00c0                	add	s0,sp,68
 70074de:	0000                	unimp
 70074e0:	00f5                	add	ra,ra,29
 70074e2:	0000                	unimp
 70074e4:	0014                	.insn	2, 0x0014
 70074e6:	0000                	unimp
 70074e8:	6874                	flw	fa3,84(s0)
 70074ea:	6572                	flw	fa0,28(sp)
 70074ec:	6461                	lui	s0,0x18
 70074ee:	2720                	fld	fs0,72(a4)

070074f0 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.39>:
 70074f0:	61702027          	fsw	fs7,1536(zero) # 600 <__bss_size+0x578>
 70074f4:	696e                	flw	fs2,216(sp)
 70074f6:	64656b63          	bltu	a0,t1,7007b4c <anon.ce42269267409fad0f351b7abd853977.12.llvm.11758424910166210904+0x10>
 70074fa:	6120                	flw	fs0,64(a0)
 70074fc:	2074                	fld	fa3,192(s0)
 70074fe:	          	fsw	ft2,526(s8) # 1a20e <__bss_size+0x1a186>

070074ff <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.40>:
 70074ff:	00202c27          	fsw	ft2,24(zero) # 18 <__bss_size-0x70>
	...

07007504 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.41>:
 7007504:	74e8                	flw	fa0,108(s1)
 7007506:	0700                	add	s0,sp,896
 7007508:	0008                	.insn	2, 0x0008
 700750a:	0000                	unimp
 700750c:	74f0                	flw	fa2,108(s1)
 700750e:	0700                	add	s0,sp,896
 7007510:	0000000f          	fence	unknown,unknown
 7007514:	74ff                	.insn	2, 0x74ff
 7007516:	0700                	add	s0,sp,896
 7007518:	00000003          	lb	zero,0(zero) # 0 <__bss_size-0x88>
 700751c:	7371                	lui	t1,0xffffc
 700751e:	0700                	add	s0,sp,896
 7007520:	0001                	nop
	...

07007524 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.42>:
 7007524:	6f6e                	flw	ft10,216(sp)
 7007526:	6574                	flw	fa3,76(a0)
 7007528:	203a                	fld	ft0,392(sp)
 700752a:	7572                	flw	fa0,60(sp)
 700752c:	206e                	fld	ft0,216(sp)
 700752e:	68746977          	.insn	4, 0x68746977
 7007532:	6020                	flw	fs0,64(s0)
 7007534:	5552                	lw	a0,52(sp)
 7007536:	425f5453          	.insn	4, 0x425f5453
 700753a:	4341                	li	t1,16
 700753c:	4152544b          	fnmsub.s	fs0,ft4,fs5,fs0,unknown
 7007540:	313d4543          	fmadd.s	fa0,fs10,fs3,ft6,rmm
 7007544:	2060                	fld	fs0,192(s0)
 7007546:	6e65                	lui	t3,0x19
 7007548:	6976                	flw	fs2,92(sp)
 700754a:	6f72                	flw	ft10,28(sp)
 700754c:	6d6e                	flw	fs10,216(sp)
 700754e:	6e65                	lui	t3,0x19
 7007550:	2074                	fld	fa3,192(s0)
 7007552:	6176                	flw	ft2,92(sp)
 7007554:	6972                	flw	fs2,28(sp)
 7007556:	6261                	lui	tp,0x18
 7007558:	656c                	flw	fa1,76(a0)
 700755a:	7420                	flw	fs0,104(s0)
 700755c:	6964206f          	j	7049bf2 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x415fb>
 7007560:	616c7073          	csrc	0x616,24
 7007564:	2079                	jal	70075f2 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.49+0x2>
 7007566:	2061                	jal	70075ee <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.48+0x32>
 7007568:	6162                	flw	ft2,24(sp)
 700756a:	72746b63          	bltu	s0,t2,7007ca0 <anon.e5acf19516f4a9cd5b82bd5981941ef5.1.llvm.13949807993874650229+0x8>
 700756e:	6361                	lui	t1,0x18
 7007570:	0a65                	add	s4,s4,25 # ffffa019 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0xf8ff1a22>
	...

07007574 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.43>:
 7007574:	7524                	flw	fs1,104(a0)
 7007576:	0700                	add	s0,sp,896
 7007578:	004e                	c.slli	zero,0x13
	...

0700757c <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.44>:
 700757c:	7384                	flw	fs1,32(a5)
 700757e:	0700                	add	s0,sp,896
 7007580:	00c0                	add	s0,sp,68
 7007582:	0000                	unimp
 7007584:	023e                	sll	tp,tp,0xf
 7007586:	0000                	unimp
 7007588:	0000000f          	fence	unknown,unknown

0700758c <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.45>:
 700758c:	7384                	flw	fs1,32(a5)
 700758e:	0700                	add	s0,sp,896
 7007590:	00c0                	add	s0,sp,68
 7007592:	0000                	unimp
 7007594:	023d                	add	tp,tp,15 # 1800f <__bss_size+0x17f87>
 7007596:	0000                	unimp
 7007598:	0000000f          	fence	unknown,unknown

0700759c <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.46>:
 700759c:	1a88                	add	a0,sp,368
 700759e:	0700                	add	s0,sp,896
 70075a0:	000c                	.insn	2, 0x000c
 70075a2:	0000                	unimp
 70075a4:	0004                	.insn	2, 0x0004
 70075a6:	0000                	unimp
 70075a8:	428c                	lw	a1,0(a3)
 70075aa:	0700                	add	s0,sp,896

070075ac <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.47>:
 70075ac:	1a84                	add	s1,sp,368
 70075ae:	0700                	add	s0,sp,896
 70075b0:	0008                	.insn	2, 0x0008
 70075b2:	0000                	unimp
 70075b4:	0004                	.insn	2, 0x0004
 70075b6:	0000                	unimp
 70075b8:	3a80                	fld	fs0,48(a3)
 70075ba:	0700                	add	s0,sp,896

070075bc <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.48>:
 70075bc:	6874                	flw	fa3,84(s0)
 70075be:	6572                	flw	fa0,28(sp)
 70075c0:	6461                	lui	s0,0x18
 70075c2:	7020                	flw	fs0,96(s0)
 70075c4:	6e61                	lui	t3,0x18
 70075c6:	6369                	lui	t1,0x1a
 70075c8:	2064656b          	.insn	4, 0x2064656b
 70075cc:	6c696877          	.insn	4, 0x6c696877
 70075d0:	2065                	jal	7007678 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.54>
 70075d2:	7270                	flw	fa2,100(a2)
 70075d4:	7365636f          	jal	t1,705dd0a <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x55713>
 70075d8:	676e6973          	csrrs	s2,0x676,28
 70075dc:	7020                	flw	fs0,96(s0)
 70075de:	6e61                	lui	t3,0x18
 70075e0:	6369                	lui	t1,0x1a
 70075e2:	202e                	fld	ft0,200(sp)
 70075e4:	6261                	lui	tp,0x18
 70075e6:	6974726f          	jal	tp,704f47c <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x46e85>
 70075ea:	676e                	flw	fa4,216(sp)
 70075ec:	0a2e                	sll	s4,s4,0xb
	...

070075f0 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.49>:
 70075f0:	75bc                	flw	fa5,104(a1)
 70075f2:	0700                	add	s0,sp,896
 70075f4:	0032                	c.slli	zero,0xc
	...

070075f8 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.50>:
 70075f8:	1a84                	add	s1,sp,368
 70075fa:	0700                	add	s0,sp,896
 70075fc:	0000                	unimp
 70075fe:	0000                	unimp
 7007600:	0001                	nop
 7007602:	0000                	unimp
 7007604:	2e44                	fld	fs1,152(a2)
 7007606:	0700                	add	s0,sp,896

07007608 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.51>:
 7007608:	700a                	flw	ft0,160(sp)
 700760a:	6e61                	lui	t3,0x18
 700760c:	6369                	lui	t1,0x1a
 700760e:	2064656b          	.insn	4, 0x2064656b
 7007612:	6661                	lui	a2,0x18
 7007614:	6574                	flw	fa3,76(a0)
 7007616:	2072                	fld	ft0,280(sp)
 7007618:	6170                	flw	fa2,68(a0)
 700761a:	696e                	flw	fs2,216(sp)
 700761c:	613a3a63          	.insn	4, 0x613a3a63
 7007620:	776c                	flw	fa1,108(a4)
 7007622:	7961                	lui	s2,0xffff8
 7007624:	62615f73          	csrrw	t5,0x626,2
 7007628:	2874726f          	jal	tp,704f0ae <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x46ab7>
 700762c:	2c29                	jal	7007846 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.27+0xa>
 700762e:	6120                	flw	fs0,64(a0)
 7007630:	6f62                	flw	ft10,24(sp)
 7007632:	7472                	flw	fs0,60(sp)
 7007634:	6e69                	lui	t3,0x1a
 7007636:	000a2e67          	.insn	4, 0x000a2e67
	...

0700763c <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.52>:
 700763c:	735c                	flw	fa5,36(a4)
 700763e:	0700                	add	s0,sp,896
 7007640:	0000                	unimp
 7007642:	0000                	unimp
 7007644:	7608                	flw	fa0,40(a2)
 7007646:	0700                	add	s0,sp,896
 7007648:	0031                	c.nop	12
	...

0700764c <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.53>:
 700764c:	6874                	flw	fa3,84(s0)
 700764e:	6572                	flw	fa0,28(sp)
 7007650:	6461                	lui	s0,0x18
 7007652:	7020                	flw	fs0,96(s0)
 7007654:	6e61                	lui	t3,0x18
 7007656:	6369                	lui	t1,0x1a
 7007658:	2064656b          	.insn	4, 0x2064656b
 700765c:	6c696877          	.insn	4, 0x6c696877
 7007660:	2065                	jal	7007708 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.60+0x4>
 7007662:	6170                	flw	fa2,68(a0)
 7007664:	696e                	flw	fs2,216(sp)
 7007666:	6e696b63          	bltu	s2,t1,7007d5c <anon.e5acf19516f4a9cd5b82bd5981941ef5.17.llvm.13949807993874650229+0x48>
 700766a:	61202e67          	.insn	4, 0x61202e67
 700766e:	6f62                	flw	ft10,24(sp)
 7007670:	7472                	flw	fs0,60(sp)
 7007672:	6e69                	lui	t3,0x1a
 7007674:	000a2e67          	.insn	4, 0x000a2e67

07007678 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.54>:
 7007678:	764c                	flw	fa1,44(a2)
 700767a:	0700                	add	s0,sp,896
 700767c:	0000002b          	.insn	4, 0x002b
 7007680:	6166                	flw	ft2,88(sp)
 7007682:	6c69                	lui	s8,0x1a
 7007684:	6465                	lui	s0,0x19
 7007686:	7420                	flw	fs0,104(s0)
 7007688:	6e69206f          	j	7099d6e <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x91777>
 700768c:	7469                	lui	s0,0xffffa
 700768e:	6169                	add	sp,sp,208
 7007690:	6574                	flw	fa3,76(a0)
 7007692:	7020                	flw	fs0,96(s0)
 7007694:	6e61                	lui	t3,0x18
 7007696:	6369                	lui	t1,0x1a
 7007698:	202c                	fld	fa1,64(s0)
 700769a:	7265                	lui	tp,0xffff9
 700769c:	6f72                	flw	ft10,28(sp)
 700769e:	2072                	fld	ft0,280(sp)
 70076a0:	6e69                	lui	t3,0x1a
 70076a2:	6564                	flw	fs1,76(a0)
 70076a4:	2078                	fld	fa4,192(s0)
 70076a6:	2074756f          	jal	a0,704f0ac <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x46ab5>
 70076aa:	6220666f          	jal	a2,700dccc <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x56d5>
 70076ae:	646e756f          	jal	a0,70eecf4 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0xe66fd>
 70076b2:	74203a73          	csrrc	s4,0x742,zero
 70076b6:	6568                	flw	fa0,76(a0)
 70076b8:	6c20                	flw	fs0,88(s0)
 70076ba:	6e65                	lui	t3,0x19
 70076bc:	6920                	flw	fs0,80(a0)
 70076be:	          	csrs	0x616,t1

070076c0 <anon.eff0a5df67630090483337dc173c00d6.101.llvm.17917170917373548271>:
 70076c0:	6e6e6163          	bltu	t3,t1,7007da2 <anon.e5acf19516f4a9cd5b82bd5981941ef5.17.llvm.13949807993874650229+0x8e>
 70076c4:	7220746f          	jal	s0,700ede6 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x67ef>
 70076c8:	6365                	lui	t1,0x19
 70076ca:	7275                	lui	tp,0xffffd
 70076cc:	65766973          	csrrs	s2,hviprio2h,12
 70076d0:	796c                	flw	fa1,116(a0)
 70076d2:	6120                	flw	fs0,64(a0)
 70076d4:	69757163          	bgeu	a0,s7,7007d56 <anon.e5acf19516f4a9cd5b82bd5981941ef5.17.llvm.13949807993874650229+0x42>
 70076d8:	6572                	flw	fa0,28(sp)
 70076da:	6d20                	flw	fs0,88(a0)
 70076dc:	7475                	lui	s0,0xffffd
 70076de:	7865                	lui	a6,0xffff9

070076e0 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.58>:
 70076e0:	7680                	flw	fs0,40(a3)
 70076e2:	0700                	add	s0,sp,896
 70076e4:	0020                	add	s0,sp,8
	...

070076e8 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.59>:
 70076e8:	7772                	flw	fa4,60(sp)
 70076ea:	6f6c                	flw	fa1,92(a4)
 70076ec:	6c206b63          	bltu	zero,sp,7007dc2 <anon.e5acf19516f4a9cd5b82bd5981941ef5.17.llvm.13949807993874650229+0xae>
 70076f0:	656b636f          	jal	t1,70bdd46 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0xb574f>
 70076f4:	2064                	fld	fs1,192(s0)
 70076f6:	6f66                	flw	ft10,88(sp)
 70076f8:	2072                	fld	ft0,280(sp)
 70076fa:	74697277          	.insn	4, 0x74697277
 70076fe:	6e69                	lui	t3,0x1a
 7007700:	00000067          	jr	zero # 0 <__bss_size-0x88>

07007704 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.60>:
 7007704:	76e8                	flw	fa0,108(a3)
 7007706:	0700                	add	s0,sp,896
 7007708:	0019                	c.nop	6
	...

0700770c <anon.bc0186976f2b4070236a5106e84f3a4e.5.llvm.9006096014459121332>:
 700770c:	6c61                	lui	s8,0x18
 700770e:	6572                	flw	fa0,28(sp)
 7007710:	6461                	lui	s0,0x18
 7007712:	2079                	jal	70077a0 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.22+0x74>
 7007714:	6f62                	flw	ft10,24(sp)
 7007716:	7272                	flw	ft4,60(sp)
 7007718:	6465776f          	jal	a4,705ed5e <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x56767>

0700771c <anon.bc0186976f2b4070236a5106e84f3a4e.6.llvm.9006096014459121332>:
 700771c:	2e58                	fld	fa4,152(a2)
 700771e:	0700                	add	s0,sp,896
 7007720:	0000                	unimp
 7007722:	0000                	unimp
 7007724:	0001                	nop
 7007726:	0000                	unimp
 7007728:	5548                	lw	a0,44(a0)
 700772a:	0700                	add	s0,sp,896

0700772c <.Lanon.bc0186976f2b4070236a5106e84f3a4e.22>:
 700772c:	6d6f682f          	.insn	4, 0x6d6f682f
 7007730:	2f65                	jal	7007ee8 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.38>
 7007732:	6d737577          	.insn	4, 0x6d737577
 7007736:	7375722f          	.insn	4, 0x7375722f
 700773a:	2f74                	fld	fa3,216(a4)
 700773c:	6b7a                	flw	fs6,156(sp)
 700773e:	68746547          	fmsub.s	fa0,fs0,ft7,fa3,unknown
 7007742:	7369722f          	.insn	4, 0x7369722f
 7007746:	652f3063          	.insn	4, 0x652f3063
 700774a:	6178                	flw	fa4,68(a0)
 700774c:	706d                	c.lui	zero,0xffffb
 700774e:	656c                	flw	fa1,76(a0)
 7007750:	61742f73          	csrrs	t5,0x617,s0
 7007754:	6772                	flw	fa4,28(sp)
 7007756:	7465                	lui	s0,0xffff9
 7007758:	6265642f          	.insn	4, 0x6265642f
 700775c:	6775                	lui	a4,0x1d
 700775e:	6975622f          	.insn	4, 0x6975622f
 7007762:	646c                	flw	fa1,76(s0)
 7007764:	6168732f          	.insn	4, 0x6168732f
 7007768:	6d2d                	lui	s10,0xb
 700776a:	7465                	lui	s0,0xffff9
 700776c:	6f68                	flw	fa0,92(a4)
 700776e:	7364                	flw	fs1,100(a4)
 7007770:	362d                	jal	700729a <.Lanon.1e336525450390b565d102459bb3bc9b.14+0x2b>
 7007772:	3266                	fld	ft4,120(sp)
 7007774:	3664                	fld	fs1,232(a2)
 7007776:	6536                	flw	fa0,76(sp)
 7007778:	6239                	lui	tp,0xe
 700777a:	3638                	fld	fa4,104(a2)
 700777c:	3735                	jal	70076a8 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.54+0x30>
 700777e:	6538                	flw	fa4,72(a0)
 7007780:	756f2f37          	lui	t5,0x756f2
 7007784:	2f74                	fld	fa3,216(a4)
 7007786:	7572                	flw	fa0,60(sp)
 7007788:	732d7473          	csrrc	s0,mhpmevent18h,26
 700778c:	6474                	flw	fa3,76(s0)
 700778e:	345f 3266 6439      	.insn	6, 0x64393266345f
 7007794:	3539                	jal	70075a2 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.46+0x6>
 7007796:	6530                	flw	fa2,72(a0)
 7007798:	3031                	jal	7006fa4 <.Lanon.168859b36f162421e63795dd2ae12a88.8+0xc>
 700779a:	3931                	jal	70073b6 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.29+0x32>
 700779c:	39653633          	.insn	4, 0x39653633
 70077a0:	61653433          	.insn	4, 0x61653433
 70077a4:	6566                	flw	fa0,88(sp)
 70077a6:	3430                	fld	fa2,104(s0)
 70077a8:	61666233          	.insn	4, 0x61666233
 70077ac:	3061                	jal	7007034 <.Lanon.80577616105d4affeb49518242f7e98e.2+0x18>
 70077ae:	6632                	flw	fa2,12(sp)
 70077b0:	3939                	jal	70073ce <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.29+0x4a>
 70077b2:	6331                	lui	t1,0xc
 70077b4:	37353437          	lui	s0,0x37353
 70077b8:	6135                	add	sp,sp,352
 70077ba:	6436                	flw	fs0,76(sp)
 70077bc:	6366                	flw	ft6,88(sp)
 70077be:	3638                	fld	fa4,104(a2)
 70077c0:	3734                	fld	fa3,104(a4)
 70077c2:	37633363          	.insn	4, 0x37633363
 70077c6:	6266                	flw	ft4,88(sp)
 70077c8:	6462                	flw	fs0,24(sp)
 70077ca:	6465                	lui	s0,0x19
 70077cc:	3565                	jal	7007674 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.53+0x28>
 70077ce:	2f38                	fld	fa4,88(a4)
 70077d0:	696c                	flw	fa1,84(a0)
 70077d2:	7262                	flw	ft4,56(sp)
 70077d4:	7261                	lui	tp,0xffff8
 70077d6:	2f79                	jal	7007f74 <anon.9912995c2a2ef8a5d0c3af439f111538.44.llvm.6387882789376083808+0x14>
 70077d8:	2f647473          	csrrc	s0,0x2f6,8
 70077dc:	2f637273          	csrrc	tp,0x2f6,6
 70077e0:	6f69                	lui	t5,0x1a
 70077e2:	646f6d2f          	.insn	4, 0x646f6d2f
 70077e6:	722e                	flw	ft4,232(sp)
 70077e8:	00000073          	ecall

070077ec <.Lanon.bc0186976f2b4070236a5106e84f3a4e.23>:
 70077ec:	772c                	flw	fa1,104(a4)
 70077ee:	0700                	add	s0,sp,896
 70077f0:	00bd                	add	ra,ra,15
 70077f2:	0000                	unimp
 70077f4:	0524                	add	s1,sp,648
 70077f6:	0000                	unimp
 70077f8:	0016                	c.slli	zero,0x5
	...

070077fc <.Lanon.bc0186976f2b4070236a5106e84f3a4e.24>:
 70077fc:	772c                	flw	fa1,104(a4)
 70077fe:	0700                	add	s0,sp,896
 7007800:	00bd                	add	ra,ra,15
 7007802:	0000                	unimp
 7007804:	0528                	add	a0,sp,648
 7007806:	0000                	unimp
 7007808:	000d                	c.nop	3
	...

0700780c <.Lanon.bc0186976f2b4070236a5106e84f3a4e.25>:
 700780c:	6461                	lui	s0,0x18
 700780e:	6176                	flw	ft2,92(sp)
 7007810:	636e                	flw	ft6,216(sp)
 7007812:	6e69                	lui	t3,0x1a
 7007814:	6f692067          	.insn	4, 0x6f692067
 7007818:	7320                	flw	fs0,96(a4)
 700781a:	696c                	flw	fa1,84(a0)
 700781c:	20736563          	bltu	t1,t2,7007a26 <anon.bc0186976f2b4070236a5106e84f3a4e.77.llvm.9006096014459121332+0x6>
 7007820:	6562                	flw	fa0,24(sp)
 7007822:	6f79                	lui	t5,0x1e
 7007824:	646e                	flw	fs0,216(sp)
 7007826:	7420                	flw	fs0,104(s0)
 7007828:	6568                	flw	fa0,76(a0)
 700782a:	7269                	lui	tp,0xffffa
 700782c:	6c20                	flw	fs0,88(s0)
 700782e:	6e65                	lui	t3,0x19
 7007830:	00687467          	.insn	4, 0x00687467

07007834 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.26>:
 7007834:	780c                	flw	fa1,48(s0)
 7007836:	0700                	add	s0,sp,896
 7007838:	00000027          	.insn	4, 0x0027

0700783c <.Lanon.bc0186976f2b4070236a5106e84f3a4e.27>:
 700783c:	772c                	flw	fa1,104(a4)
 700783e:	0700                	add	s0,sp,896
 7007840:	00bd                	add	ra,ra,15
 7007842:	0000                	unimp
 7007844:	0526                	sll	a0,a0,0x9
 7007846:	0000                	unimp
 7007848:	000d                	c.nop	3
	...

0700784c <.Lanon.bc0186976f2b4070236a5106e84f3a4e.28>:
 700784c:	6166                	flw	ft2,88(sp)
 700784e:	6c69                	lui	s8,0x1a
 7007850:	6465                	lui	s0,0x19
 7007852:	7420                	flw	fs0,104(s0)
 7007854:	7277206f          	j	707a77a <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x72183>
 7007858:	7469                	lui	s0,0xffffa
 700785a:	2065                	jal	7007902 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.68+0x36>
 700785c:	6c6f6877          	.insn	4, 0x6c6f6877
 7007860:	2065                	jal	7007908 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.68+0x3c>
 7007862:	7562                	flw	fa0,56(sp)
 7007864:	6666                	flw	fa2,88(sp)
 7007866:	7265                	lui	tp,0xffff9

07007868 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.29>:
 7007868:	784c                	flw	fa1,52(s0)
 700786a:	0700                	add	s0,sp,896
 700786c:	001c                	.insn	2, 0x001c
 700786e:	0000                	unimp
 7007870:	00000017          	auipc	zero,0x0

07007874 <anon.bc0186976f2b4070236a5106e84f3a4e.30.llvm.9006096014459121332>:
 7007874:	2e80                	fld	fs0,24(a3)
 7007876:	0700                	add	s0,sp,896
 7007878:	000c                	.insn	2, 0x000c
 700787a:	0000                	unimp
 700787c:	0004                	.insn	2, 0x0004
 700787e:	0000                	unimp
 7007880:	4c04                	lw	s1,24(s0)
 7007882:	0700                	add	s0,sp,896
 7007884:	4560                	lw	s0,76(a0)
 7007886:	0700                	add	s0,sp,896
 7007888:	4778                	lw	a4,76(a4)
 700788a:	0700                	add	s0,sp,896

0700788c <anon.bc0186976f2b4070236a5106e84f3a4e.31.llvm.9006096014459121332>:
 700788c:	6f66                	flw	ft10,88(sp)
 700788e:	6d72                	flw	fs10,28(sp)
 7007890:	7461                	lui	s0,0xffff8
 7007892:	6574                	flw	fa3,76(a0)
 7007894:	2072                	fld	ft0,280(sp)
 7007896:	7265                	lui	tp,0xffff9
 7007898:	6f72                	flw	ft10,28(sp)
 700789a:	0072                	c.slli	zero,0x1c

0700789c <anon.bc0186976f2b4070236a5106e84f3a4e.32.llvm.9006096014459121332>:
 700789c:	788c                	flw	fa1,48(s1)
 700789e:	0700                	add	s0,sp,896
 70078a0:	0000000f          	fence	unknown,unknown
 70078a4:	0028                	add	a0,sp,8
	...

070078a8 <anon.bc0186976f2b4070236a5106e84f3a4e.50.llvm.9006096014459121332>:
 70078a8:	770c                	flw	fa1,40(a4)
 70078aa:	0700                	add	s0,sp,896
 70078ac:	0000                	unimp
	...

070078b0 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.65>:
 70078b0:	63617473          	csrrc	s0,0x636,2
 70078b4:	6162206b          	.insn	4, 0x6162206b
 70078b8:	72746b63          	bltu	s0,t2,7007fee <.Lanon.7bc596e10b05ffcb20d3deb677cfb8d7.28+0x26>
 70078bc:	6361                	lui	t1,0x18
 70078be:	3a65                	jal	7007276 <.Lanon.1e336525450390b565d102459bb3bc9b.14+0x7>
 70078c0:	000a                	c.slli	zero,0x2
	...

070078c4 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.66>:
 70078c4:	78b0                	flw	fa2,112(s1)
 70078c6:	0700                	add	s0,sp,896
 70078c8:	0011                	c.nop	4
	...

070078cc <.Lanon.bc0186976f2b4070236a5106e84f3a4e.68>:
 70078cc:	6f6e                	flw	ft10,216(sp)
 70078ce:	6574                	flw	fa3,76(a0)
 70078d0:	203a                	fld	ft0,392(sp)
 70078d2:	656d6f53          	.insn	4, 0x656d6f53
 70078d6:	6420                	flw	fs0,72(s0)
 70078d8:	7465                	lui	s0,0xffff9
 70078da:	6961                	lui	s2,0x18
 70078dc:	736c                	flw	fa1,100(a4)
 70078de:	6120                	flw	fs0,64(a0)
 70078e0:	6572                	flw	fa0,28(sp)
 70078e2:	6f20                	flw	fs0,88(a4)
 70078e4:	696d                	lui	s2,0x1b
 70078e6:	7474                	flw	fa3,108(s0)
 70078e8:	6465                	lui	s0,0x19
 70078ea:	202c                	fld	fa1,64(s0)
 70078ec:	7572                	flw	fa0,60(sp)
 70078ee:	206e                	fld	ft0,216(sp)
 70078f0:	68746977          	.insn	4, 0x68746977
 70078f4:	6020                	flw	fs0,64(s0)
 70078f6:	5552                	lw	a0,52(sp)
 70078f8:	425f5453          	.insn	4, 0x425f5453
 70078fc:	4341                	li	t1,16
 70078fe:	4152544b          	fnmsub.s	fs0,ft4,fs5,fs0,unknown
 7007902:	663d4543          	.insn	4, 0x663d4543
 7007906:	6c75                	lui	s8,0x1d
 7007908:	606c                	flw	fa1,68(s0)
 700790a:	6620                	flw	fs0,72(a2)
 700790c:	6120726f          	jal	tp,700ef1e <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x6927>
 7007910:	7620                	flw	fs0,104(a2)
 7007912:	7265                	lui	tp,0xffff9
 7007914:	6f62                	flw	ft10,24(sp)
 7007916:	62206573          	csrrs	a0,0x622,0
 700791a:	6361                	lui	t1,0x18
 700791c:	6172746b          	.insn	4, 0x6172746b
 7007920:	0a2e6563          	bltu	t3,sp,70079ca <anon.bc0186976f2b4070236a5106e84f3a4e.74.llvm.9006096014459121332+0x9e>

07007924 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.69>:
 7007924:	78cc                	flw	fa1,52(s1)
 7007926:	0700                	add	s0,sp,896
 7007928:	0058                	add	a4,sp,4
	...

0700792c <anon.bc0186976f2b4070236a5106e84f3a4e.74.llvm.9006096014459121332>:
 700792c:	6d6f682f          	.insn	4, 0x6d6f682f
 7007930:	2f65                	jal	70080e8 <anon.cae369f449f32127ca43d99b56687b4d.3.llvm.14601742668486837291+0x54>
 7007932:	6d737577          	.insn	4, 0x6d737577
 7007936:	7375722f          	.insn	4, 0x7375722f
 700793a:	2f74                	fld	fa3,216(a4)
 700793c:	6b7a                	flw	fs6,156(sp)
 700793e:	68746547          	fmsub.s	fa0,fs0,ft7,fa3,unknown
 7007942:	7369722f          	.insn	4, 0x7369722f
 7007946:	652f3063          	.insn	4, 0x652f3063
 700794a:	6178                	flw	fa4,68(a0)
 700794c:	706d                	c.lui	zero,0xffffb
 700794e:	656c                	flw	fa1,76(a0)
 7007950:	61742f73          	csrrs	t5,0x617,s0
 7007954:	6772                	flw	fa4,28(sp)
 7007956:	7465                	lui	s0,0xffff9
 7007958:	6265642f          	.insn	4, 0x6265642f
 700795c:	6775                	lui	a4,0x1d
 700795e:	6975622f          	.insn	4, 0x6975622f
 7007962:	646c                	flw	fa1,76(s0)
 7007964:	6168732f          	.insn	4, 0x6168732f
 7007968:	6d2d                	lui	s10,0xb
 700796a:	7465                	lui	s0,0xffff9
 700796c:	6f68                	flw	fa0,92(a4)
 700796e:	7364                	flw	fs1,100(a4)
 7007970:	362d                	jal	700749a <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.35+0x16>
 7007972:	3266                	fld	ft4,120(sp)
 7007974:	3664                	fld	fs1,232(a2)
 7007976:	6536                	flw	fa0,76(sp)
 7007978:	6239                	lui	tp,0xe
 700797a:	3638                	fld	fa4,104(a2)
 700797c:	3735                	jal	70078a8 <anon.bc0186976f2b4070236a5106e84f3a4e.50.llvm.9006096014459121332>
 700797e:	6538                	flw	fa4,72(a0)
 7007980:	756f2f37          	lui	t5,0x756f2
 7007984:	2f74                	fld	fa3,216(a4)
 7007986:	7572                	flw	fa0,60(sp)
 7007988:	732d7473          	csrrc	s0,mhpmevent18h,26
 700798c:	6474                	flw	fa3,76(s0)
 700798e:	345f 3266 6439      	.insn	6, 0x64393266345f
 7007994:	3539                	jal	70077a2 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.22+0x76>
 7007996:	6530                	flw	fa2,72(a0)
 7007998:	3031                	jal	70071a4 <.Lanon.2e428254a4f422f96131b722f5510c98.11+0x1d>
 700799a:	3931                	jal	70075b6 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.47+0xa>
 700799c:	39653633          	.insn	4, 0x39653633
 70079a0:	61653433          	.insn	4, 0x61653433
 70079a4:	6566                	flw	fa0,88(sp)
 70079a6:	3430                	fld	fa2,104(s0)
 70079a8:	61666233          	.insn	4, 0x61666233
 70079ac:	3061                	jal	7007234 <.Lanon.1e336525450390b565d102459bb3bc9b.2+0x4>
 70079ae:	6632                	flw	fa2,12(sp)
 70079b0:	3939                	jal	70075ce <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.48+0x12>
 70079b2:	6331                	lui	t1,0xc
 70079b4:	37353437          	lui	s0,0x37353
 70079b8:	6135                	add	sp,sp,352
 70079ba:	6436                	flw	fs0,76(sp)
 70079bc:	6366                	flw	ft6,88(sp)
 70079be:	3638                	fld	fa4,104(a2)
 70079c0:	3734                	fld	fa3,104(a4)
 70079c2:	37633363          	.insn	4, 0x37633363
 70079c6:	6266                	flw	ft4,88(sp)
 70079c8:	6462                	flw	fs0,24(sp)
 70079ca:	6465                	lui	s0,0x19
 70079cc:	3565                	jal	7007874 <anon.bc0186976f2b4070236a5106e84f3a4e.30.llvm.9006096014459121332>
 70079ce:	2f38                	fld	fa4,88(a4)
 70079d0:	696c                	flw	fa1,84(a0)
 70079d2:	7262                	flw	ft4,56(sp)
 70079d4:	7261                	lui	tp,0xffff8
 70079d6:	2f79                	jal	7008174 <anon.cae369f449f32127ca43d99b56687b4d.7.llvm.14601742668486837291+0x4>
 70079d8:	2f647473          	csrrc	s0,0x2f6,8
 70079dc:	2f637273          	csrrc	tp,0x2f6,6
 70079e0:	5f737973          	csrrc	s2,0x5f7,6
 70079e4:	6d6d6f63          	bltu	s10,s6,70080c2 <anon.cae369f449f32127ca43d99b56687b4d.3.llvm.14601742668486837291+0x2e>
 70079e8:	742f6e6f          	jal	t3,70fe12a <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0xf5b33>
 70079ec:	7268                	flw	fa0,100(a2)
 70079ee:	6165                	add	sp,sp,112
 70079f0:	5f64                	lw	s1,124(a4)
 70079f2:	6e69                	lui	t3,0x1a
 70079f4:	6f66                	flw	ft10,88(sp)
 70079f6:	722e                	flw	ft4,232(sp)
 70079f8:	00000073          	ecall

070079fc <anon.bc0186976f2b4070236a5106e84f3a4e.75.llvm.9006096014459121332>:
 70079fc:	792c                	flw	fa1,112(a0)
 70079fe:	0700                	add	s0,sp,896
 7007a00:	00cd                	add	ra,ra,19
 7007a02:	0000                	unimp
 7007a04:	0016                	c.slli	zero,0x5
 7007a06:	0000                	unimp
 7007a08:	00000033          	add	zero,zero,zero

07007a0c <anon.bc0186976f2b4070236a5106e84f3a4e.76.llvm.9006096014459121332>:
 7007a0c:	2e5c                	fld	fa5,152(a2)
 7007a0e:	0700                	add	s0,sp,896
 7007a10:	0010                	.insn	2, 0x0010
 7007a12:	0000                	unimp
 7007a14:	0004                	.insn	2, 0x0004
 7007a16:	0000                	unimp
 7007a18:	2404                	fld	fs1,8(s0)
 7007a1a:	0700                	add	s0,sp,896
 7007a1c:	2524                	fld	fs1,72(a0)
 7007a1e:	0700                	add	s0,sp,896

07007a20 <anon.bc0186976f2b4070236a5106e84f3a4e.77.llvm.9006096014459121332>:
 7007a20:	2e58                	fld	fa4,152(a2)
 7007a22:	0700                	add	s0,sp,896
 7007a24:	0008                	.insn	2, 0x0008
 7007a26:	0000                	unimp
 7007a28:	0004                	.insn	2, 0x0004
 7007a2a:	0000                	unimp
 7007a2c:	25d4                	fld	fa3,136(a1)
 7007a2e:	0700                	add	s0,sp,896
 7007a30:	2638                	fld	fa4,72(a2)
 7007a32:	0700                	add	s0,sp,896

07007a34 <anon.eff0a5df67630090483337dc173c00d6.100.llvm.17917170917373548271>:
 7007a34:	0000                	unimp
	...

07007a38 <anon.eff0a5df67630090483337dc173c00d6.102.llvm.17917170917373548271>:
 7007a38:	76c0                	flw	fs0,44(a3)
 7007a3a:	0700                	add	s0,sp,896
 7007a3c:	0020                	add	s0,sp,8
	...

07007a40 <anon.eff0a5df67630090483337dc173c00d6.103.llvm.17917170917373548271>:
 7007a40:	6d6f682f          	.insn	4, 0x6d6f682f
 7007a44:	2f65                	jal	70081fc <anon.564c0ea675f63267486e34ba3a5001a1.0.llvm.6662267625297349771+0x7c>
 7007a46:	6d737577          	.insn	4, 0x6d737577
 7007a4a:	7375722f          	.insn	4, 0x7375722f
 7007a4e:	2f74                	fld	fa3,216(a4)
 7007a50:	6b7a                	flw	fs6,156(sp)
 7007a52:	68746547          	fmsub.s	fa0,fs0,ft7,fa3,unknown
 7007a56:	7369722f          	.insn	4, 0x7369722f
 7007a5a:	652f3063          	.insn	4, 0x652f3063
 7007a5e:	6178                	flw	fa4,68(a0)
 7007a60:	706d                	c.lui	zero,0xffffb
 7007a62:	656c                	flw	fa1,76(a0)
 7007a64:	61742f73          	csrrs	t5,0x617,s0
 7007a68:	6772                	flw	fa4,28(sp)
 7007a6a:	7465                	lui	s0,0xffff9
 7007a6c:	6265642f          	.insn	4, 0x6265642f
 7007a70:	6775                	lui	a4,0x1d
 7007a72:	6975622f          	.insn	4, 0x6975622f
 7007a76:	646c                	flw	fa1,76(s0)
 7007a78:	6168732f          	.insn	4, 0x6168732f
 7007a7c:	6d2d                	lui	s10,0xb
 7007a7e:	7465                	lui	s0,0xffff9
 7007a80:	6f68                	flw	fa0,92(a4)
 7007a82:	7364                	flw	fs1,100(a4)
 7007a84:	362d                	jal	70075ae <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.47+0x2>
 7007a86:	3266                	fld	ft4,120(sp)
 7007a88:	3664                	fld	fs1,232(a2)
 7007a8a:	6536                	flw	fa0,76(sp)
 7007a8c:	6239                	lui	tp,0xe
 7007a8e:	3638                	fld	fa4,104(a2)
 7007a90:	3735                	jal	70079bc <anon.bc0186976f2b4070236a5106e84f3a4e.74.llvm.9006096014459121332+0x90>
 7007a92:	6538                	flw	fa4,72(a0)
 7007a94:	756f2f37          	lui	t5,0x756f2
 7007a98:	2f74                	fld	fa3,216(a4)
 7007a9a:	7572                	flw	fa0,60(sp)
 7007a9c:	732d7473          	csrrc	s0,mhpmevent18h,26
 7007aa0:	6474                	flw	fa3,76(s0)
 7007aa2:	345f 3266 6439      	.insn	6, 0x64393266345f
 7007aa8:	3539                	jal	70078b6 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.65+0x6>
 7007aaa:	6530                	flw	fa2,72(a0)
 7007aac:	3031                	jal	70072b8 <.Lanon.1e336525450390b565d102459bb3bc9b.15+0x18>
 7007aae:	3931                	jal	70076ca <anon.eff0a5df67630090483337dc173c00d6.101.llvm.17917170917373548271+0xa>
 7007ab0:	39653633          	.insn	4, 0x39653633
 7007ab4:	61653433          	.insn	4, 0x61653433
 7007ab8:	6566                	flw	fa0,88(sp)
 7007aba:	3430                	fld	fa2,104(s0)
 7007abc:	61666233          	.insn	4, 0x61666233
 7007ac0:	3061                	jal	7007348 <.Lanon.1e336525450390b565d102459bb3bc9b.20+0xc>
 7007ac2:	6632                	flw	fa2,12(sp)
 7007ac4:	3939                	jal	70076e2 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.58+0x2>
 7007ac6:	6331                	lui	t1,0xc
 7007ac8:	37353437          	lui	s0,0x37353
 7007acc:	6135                	add	sp,sp,352
 7007ace:	6436                	flw	fs0,76(sp)
 7007ad0:	6366                	flw	ft6,88(sp)
 7007ad2:	3638                	fld	fa4,104(a2)
 7007ad4:	3734                	fld	fa3,104(a4)
 7007ad6:	37633363          	.insn	4, 0x37633363
 7007ada:	6266                	flw	ft4,88(sp)
 7007adc:	6462                	flw	fs0,24(sp)
 7007ade:	6465                	lui	s0,0x19
 7007ae0:	3565                	jal	7007988 <anon.bc0186976f2b4070236a5106e84f3a4e.74.llvm.9006096014459121332+0x5c>
 7007ae2:	2f38                	fld	fa4,88(a4)
 7007ae4:	696c                	flw	fa1,84(a0)
 7007ae6:	7262                	flw	ft4,56(sp)
 7007ae8:	7261                	lui	tp,0xffff8
 7007aea:	2f79                	jal	7008288 <anon.564c0ea675f63267486e34ba3a5001a1.5.llvm.6662267625297349771+0x36>
 7007aec:	2f647473          	csrrc	s0,0x2f6,8
 7007af0:	2f637273          	csrrc	tp,0x2f6,6
 7007af4:	2f737973          	csrrc	s2,0x2f7,6
 7007af8:	6b7a                	flw	fs6,156(sp)
 7007afa:	6d76                	flw	fs10,92(sp)
 7007afc:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 7007b00:	6e75                	lui	t3,0x1d
 7007b02:	70707573          	csrrc	a0,0x707,0
 7007b06:	6574726f          	jal	tp,704f95c <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x47365>
 7007b0a:	2f64                	fld	fs1,216(a4)
 7007b0c:	6f6c                	flw	fa1,92(a4)
 7007b0e:	2f736b63          	bltu	t1,s7,7007e04 <.Lanon.efce97596ae942595b76484ba018e500.3+0x4>
 7007b12:	756d                	lui	a0,0xffffb
 7007b14:	6574                	flw	fa3,76(a0)
 7007b16:	2e78                	fld	fa4,216(a2)
 7007b18:	7372                	flw	ft6,60(sp)
	...

07007b1c <anon.eff0a5df67630090483337dc173c00d6.104.llvm.17917170917373548271>:
 7007b1c:	7a40                	flw	fs0,52(a2)
 7007b1e:	0700                	add	s0,sp,896
 7007b20:	00da                	sll	ra,ra,0x16
 7007b22:	0000                	unimp
 7007b24:	0016                	c.slli	zero,0x5
 7007b26:	0000                	unimp
 7007b28:	0009                	c.nop	2
	...

07007b2c <anon.8f6a86c2bc9b382f474d86b741846cce.6.llvm.14256562575406249000>:
 7007b2c:	3718                	fld	fa4,40(a4)
 7007b2e:	0700                	add	s0,sp,896
 7007b30:	0004                	.insn	2, 0x0004
 7007b32:	0000                	unimp
 7007b34:	0004                	.insn	2, 0x0004
 7007b36:	0000                	unimp
 7007b38:	42a0                	lw	s0,64(a3)
 7007b3a:	0700                	add	s0,sp,896

07007b3c <anon.ce42269267409fad0f351b7abd853977.12.llvm.11758424910166210904>:
 7007b3c:	6d6f682f          	.insn	4, 0x6d6f682f
 7007b40:	2f65                	jal	70082f8 <anon.564c0ea675f63267486e34ba3a5001a1.5.llvm.6662267625297349771+0xa6>
 7007b42:	6d737577          	.insn	4, 0x6d737577
 7007b46:	7375722f          	.insn	4, 0x7375722f
 7007b4a:	2f74                	fld	fa3,216(a4)
 7007b4c:	6b7a                	flw	fs6,156(sp)
 7007b4e:	68746547          	fmsub.s	fa0,fs0,ft7,fa3,unknown
 7007b52:	7369722f          	.insn	4, 0x7369722f
 7007b56:	652f3063          	.insn	4, 0x652f3063
 7007b5a:	6178                	flw	fa4,68(a0)
 7007b5c:	706d                	c.lui	zero,0xffffb
 7007b5e:	656c                	flw	fa1,76(a0)
 7007b60:	61742f73          	csrrs	t5,0x617,s0
 7007b64:	6772                	flw	fa4,28(sp)
 7007b66:	7465                	lui	s0,0xffff9
 7007b68:	6265642f          	.insn	4, 0x6265642f
 7007b6c:	6775                	lui	a4,0x1d
 7007b6e:	6975622f          	.insn	4, 0x6975622f
 7007b72:	646c                	flw	fa1,76(s0)
 7007b74:	6168732f          	.insn	4, 0x6168732f
 7007b78:	6d2d                	lui	s10,0xb
 7007b7a:	7465                	lui	s0,0xffff9
 7007b7c:	6f68                	flw	fa0,92(a4)
 7007b7e:	7364                	flw	fs1,100(a4)
 7007b80:	362d                	jal	70076aa <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.54+0x32>
 7007b82:	3266                	fld	ft4,120(sp)
 7007b84:	3664                	fld	fs1,232(a2)
 7007b86:	6536                	flw	fa0,76(sp)
 7007b88:	6239                	lui	tp,0xe
 7007b8a:	3638                	fld	fa4,104(a2)
 7007b8c:	3735                	jal	7007ab8 <anon.eff0a5df67630090483337dc173c00d6.103.llvm.17917170917373548271+0x78>
 7007b8e:	6538                	flw	fa4,72(a0)
 7007b90:	756f2f37          	lui	t5,0x756f2
 7007b94:	2f74                	fld	fa3,216(a4)
 7007b96:	7572                	flw	fa0,60(sp)
 7007b98:	732d7473          	csrrc	s0,mhpmevent18h,26
 7007b9c:	6474                	flw	fa3,76(s0)
 7007b9e:	345f 3266 6439      	.insn	6, 0x64393266345f
 7007ba4:	3539                	jal	70079b2 <anon.bc0186976f2b4070236a5106e84f3a4e.74.llvm.9006096014459121332+0x86>
 7007ba6:	6530                	flw	fa2,72(a0)
 7007ba8:	3031                	jal	70073b4 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.29+0x30>
 7007baa:	3931                	jal	70077c6 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.22+0x9a>
 7007bac:	39653633          	.insn	4, 0x39653633
 7007bb0:	61653433          	.insn	4, 0x61653433
 7007bb4:	6566                	flw	fa0,88(sp)
 7007bb6:	3430                	fld	fa2,104(s0)
 7007bb8:	61666233          	.insn	4, 0x61666233
 7007bbc:	3061                	jal	7007444 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.32>
 7007bbe:	6632                	flw	fa2,12(sp)
 7007bc0:	3939                	jal	70077de <.Lanon.bc0186976f2b4070236a5106e84f3a4e.22+0xb2>
 7007bc2:	6331                	lui	t1,0xc
 7007bc4:	37353437          	lui	s0,0x37353
 7007bc8:	6135                	add	sp,sp,352
 7007bca:	6436                	flw	fs0,76(sp)
 7007bcc:	6366                	flw	ft6,88(sp)
 7007bce:	3638                	fld	fa4,104(a2)
 7007bd0:	3734                	fld	fa3,104(a4)
 7007bd2:	37633363          	.insn	4, 0x37633363
 7007bd6:	6266                	flw	ft4,88(sp)
 7007bd8:	6462                	flw	fs0,24(sp)
 7007bda:	6465                	lui	s0,0x19
 7007bdc:	3565                	jal	7007a84 <anon.eff0a5df67630090483337dc173c00d6.103.llvm.17917170917373548271+0x44>
 7007bde:	2f38                	fld	fa4,88(a4)
 7007be0:	696c                	flw	fa1,84(a0)
 7007be2:	7262                	flw	ft4,56(sp)
 7007be4:	7261                	lui	tp,0xffff8
 7007be6:	2f79                	jal	7008384 <anon.7d99c8ca23b35441d815b402e02ae6ac.21.llvm.1518608519765115567>
 7007be8:	2f647473          	csrrc	s0,0x2f6,8
 7007bec:	2f637273          	csrrc	tp,0x2f6,6
 7007bf0:	6874                	flw	fa3,84(s0)
 7007bf2:	6572                	flw	fa0,28(sp)
 7007bf4:	6461                	lui	s0,0x18
 7007bf6:	646f6d2f          	.insn	4, 0x646f6d2f
 7007bfa:	722e                	flw	ft4,232(sp)
 7007bfc:	          	csrrs	a2,0x696,2

07007bfd <anon.ce42269267409fad0f351b7abd853977.19.llvm.11758424910166210904>:
 7007bfd:	6166                	flw	ft2,88(sp)
 7007bff:	6c69                	lui	s8,0x1a
 7007c01:	6465                	lui	s0,0x19
 7007c03:	7420                	flw	fs0,104(s0)
 7007c05:	6567206f          	j	707a25b <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x71c64>
 7007c09:	656e                	flw	fa0,216(sp)
 7007c0b:	6172                	flw	ft2,28(sp)
 7007c0d:	6574                	flw	fa3,76(a0)
 7007c0f:	7520                	flw	fs0,104(a0)
 7007c11:	696e                	flw	fs2,216(sp)
 7007c13:	7571                	lui	a0,0xffffc
 7007c15:	2065                	jal	7007cbd <anon.e5acf19516f4a9cd5b82bd5981941ef5.15.llvm.13949807993874650229+0x2>
 7007c17:	6874                	flw	fa3,84(s0)
 7007c19:	6572                	flw	fa0,28(sp)
 7007c1b:	6461                	lui	s0,0x18
 7007c1d:	4920                	lw	s0,80(a0)
 7007c1f:	3a44                	fld	fs1,176(a2)
 7007c21:	6220                	flw	fs0,64(a2)
 7007c23:	7469                	lui	s0,0xffffa
 7007c25:	63617073          	csrc	0x636,2
 7007c29:	2065                	jal	7007cd1 <anon.e5acf19516f4a9cd5b82bd5981941ef5.15.llvm.13949807993874650229+0x16>
 7007c2b:	7865                	lui	a6,0xffff9
 7007c2d:	6168                	flw	fa0,68(a0)
 7007c2f:	7375                	lui	t1,0xffffd
 7007c31:	6574                	flw	fa3,76(a0)
 7007c33:	                	fsw	fs1,124(a0)

07007c34 <anon.ce42269267409fad0f351b7abd853977.20.llvm.11758424910166210904>:
 7007c34:	7bfd                	lui	s7,0xfffff
 7007c36:	0700                	add	s0,sp,896
 7007c38:	00000037          	lui	zero,0x0

07007c3c <anon.ce42269267409fad0f351b7abd853977.21.llvm.11758424910166210904>:
 7007c3c:	7b3c                	flw	fa5,112(a4)
 7007c3e:	0700                	add	s0,sp,896
 7007c40:	00c1                	add	ra,ra,16
 7007c42:	0000                	unimp
 7007c44:	0456                	sll	s0,s0,0x15
 7007c46:	0000                	unimp
 7007c48:	000d                	c.nop	3
	...

07007c4c <anon.3a0b9931459234c4b5438a9be2c0d658.16.llvm.12044279608799662234>:
 7007c4c:	6166                	flw	ft2,88(sp)
 7007c4e:	6174                	flw	fa3,68(a0)
 7007c50:	206c                	fld	fa1,192(s0)
 7007c52:	7572                	flw	fa0,60(sp)
 7007c54:	746e                	flw	fs0,248(sp)
 7007c56:	6d69                	lui	s10,0x1a
 7007c58:	2065                	jal	7007d00 <anon.e5acf19516f4a9cd5b82bd5981941ef5.15.llvm.13949807993874650229+0x45>
 7007c5a:	7265                	lui	tp,0xffff9
 7007c5c:	6f72                	flw	ft10,28(sp)
 7007c5e:	3a72                	fld	fs4,312(sp)
 7007c60:	                	add	s0,sp,280

07007c61 <anon.3a0b9931459234c4b5438a9be2c0d658.17.llvm.12044279608799662234>:
 7007c61:	000a                	c.slli	zero,0x2
	...

07007c64 <anon.3a0b9931459234c4b5438a9be2c0d658.18.llvm.12044279608799662234>:
 7007c64:	7c4c                	flw	fa1,60(s0)
 7007c66:	0700                	add	s0,sp,896
 7007c68:	0015                	c.nop	5
 7007c6a:	0000                	unimp
 7007c6c:	7c61                	lui	s8,0xffff8
 7007c6e:	0700                	add	s0,sp,896
 7007c70:	0001                	nop
	...

07007c74 <anon.3a0b9931459234c4b5438a9be2c0d658.19.llvm.12044279608799662234>:
 7007c74:	7361                	lui	t1,0xffff8
 7007c76:	74726573          	csrrs	a0,mseccfg,4
 7007c7a:	6f69                	lui	t5,0x1a
 7007c7c:	206e                	fld	ft0,216(sp)
 7007c7e:	6166                	flw	ft2,88(sp)
 7007c80:	6c69                	lui	s8,0x1a
 7007c82:	6465                	lui	s0,0x19
 7007c84:	203a                	fld	ft0,392(sp)
 7007c86:	2079656b          	.insn	4, 0x2079656b
 7007c8a:	3d21                	jal	7007aa2 <anon.eff0a5df67630090483337dc173c00d6.103.llvm.17917170917373548271+0x62>
 7007c8c:	3020                	fld	fs0,96(s0)
	...

07007c90 <anon.3a0b9931459234c4b5438a9be2c0d658.20.llvm.12044279608799662234>:
 7007c90:	7c74                	flw	fa3,124(s0)
 7007c92:	0700                	add	s0,sp,896
 7007c94:	001a                	c.slli	zero,0x6
	...

07007c98 <anon.e5acf19516f4a9cd5b82bd5981941ef5.1.llvm.13949807993874650229>:
 7007c98:	42cc                	lw	a1,4(a3)
 7007c9a:	0700                	add	s0,sp,896
 7007c9c:	0004                	.insn	2, 0x0004
 7007c9e:	0000                	unimp
 7007ca0:	0004                	.insn	2, 0x0004
 7007ca2:	0000                	unimp
 7007ca4:	4498                	lw	a4,8(s1)
 7007ca6:	0700                	add	s0,sp,896
 7007ca8:	42d0                	lw	a2,4(a3)
 7007caa:	0700                	add	s0,sp,896
 7007cac:	4434                	lw	a3,72(s0)
 7007cae:	0700                	add	s0,sp,896

07007cb0 <.Lanon.e5acf19516f4a9cd5b82bd5981941ef5.13>:
 7007cb0:	6341                	lui	t1,0x10
 7007cb2:	73736563          	bltu	t1,s7,70083dc <.Lanon.01d17f6cc6f847c1e4bc826f0cfda2e0.18+0x18>
 7007cb6:	7245                	lui	tp,0xffff1
 7007cb8:	6f72                	flw	ft10,28(sp)
 7007cba:	                	flw	ft6,28(sp)

07007cbb <anon.e5acf19516f4a9cd5b82bd5981941ef5.15.llvm.13949807993874650229>:
 7007cbb:	6e6e6163          	bltu	t3,t1,700839d <anon.7d99c8ca23b35441d815b402e02ae6ac.22.llvm.1518608519765115567+0x15>
 7007cbf:	6120746f          	jal	s0,700f2d1 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x6cda>
 7007cc3:	73656363          	bltu	a0,s6,70083e9 <.Lanon.01d17f6cc6f847c1e4bc826f0cfda2e0.18+0x25>
 7007cc7:	20612073          	csrs	0x206,sp
 7007ccb:	6854                	flw	fa3,20(s0)
 7007ccd:	6572                	flw	fa0,28(sp)
 7007ccf:	6461                	lui	s0,0x18
 7007cd1:	4c20                	lw	s0,88(s0)
 7007cd3:	6c61636f          	jal	t1,701e399 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x15da2>
 7007cd7:	5320                	lw	s0,96(a4)
 7007cd9:	6f74                	flw	fa3,92(a4)
 7007cdb:	6172                	flw	ft2,28(sp)
 7007cdd:	76206567          	.insn	4, 0x76206567
 7007ce1:	6c61                	lui	s8,0x18
 7007ce3:	6575                	lui	a0,0x1d
 7007ce5:	6420                	flw	fs0,72(s0)
 7007ce7:	7275                	lui	tp,0xffffd
 7007ce9:	6e69                	lui	t3,0x1a
 7007ceb:	726f2067          	.insn	4, 0x726f2067
 7007cef:	6120                	flw	fs0,64(a0)
 7007cf1:	7466                	flw	fs0,120(sp)
 7007cf3:	7265                	lui	tp,0xffff9
 7007cf5:	6420                	flw	fs0,72(s0)
 7007cf7:	7365                	lui	t1,0xffff9
 7007cf9:	7274                	flw	fa3,100(a2)
 7007cfb:	6375                	lui	t1,0x1d
 7007cfd:	6974                	flw	fa3,84(a0)
 7007cff:	00006e6f          	jal	t3,700dcff <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x5708>
	...

07007d04 <anon.e5acf19516f4a9cd5b82bd5981941ef5.16.llvm.13949807993874650229>:
 7007d04:	42cc                	lw	a1,4(a3)
 7007d06:	0700                	add	s0,sp,896
 7007d08:	0000                	unimp
 7007d0a:	0000                	unimp
 7007d0c:	0001                	nop
 7007d0e:	0000                	unimp
 7007d10:	4528                	lw	a0,72(a0)
 7007d12:	0700                	add	s0,sp,896

07007d14 <anon.e5acf19516f4a9cd5b82bd5981941ef5.17.llvm.13949807993874650229>:
 7007d14:	6d6f682f          	.insn	4, 0x6d6f682f
 7007d18:	2f65                	jal	70084d0 <.Lanon.4c774dc772aae61f31be2b670cb73359.9+0x4>
 7007d1a:	6d737577          	.insn	4, 0x6d737577
 7007d1e:	7375722f          	.insn	4, 0x7375722f
 7007d22:	2f74                	fld	fa3,216(a4)
 7007d24:	6b7a                	flw	fs6,156(sp)
 7007d26:	68746547          	fmsub.s	fa0,fs0,ft7,fa3,unknown
 7007d2a:	7369722f          	.insn	4, 0x7369722f
 7007d2e:	652f3063          	.insn	4, 0x652f3063
 7007d32:	6178                	flw	fa4,68(a0)
 7007d34:	706d                	c.lui	zero,0xffffb
 7007d36:	656c                	flw	fa1,76(a0)
 7007d38:	61742f73          	csrrs	t5,0x617,s0
 7007d3c:	6772                	flw	fa4,28(sp)
 7007d3e:	7465                	lui	s0,0xffff9
 7007d40:	6265642f          	.insn	4, 0x6265642f
 7007d44:	6775                	lui	a4,0x1d
 7007d46:	6975622f          	.insn	4, 0x6975622f
 7007d4a:	646c                	flw	fa1,76(s0)
 7007d4c:	6168732f          	.insn	4, 0x6168732f
 7007d50:	6d2d                	lui	s10,0xb
 7007d52:	7465                	lui	s0,0xffff9
 7007d54:	6f68                	flw	fa0,92(a4)
 7007d56:	7364                	flw	fs1,100(a4)
 7007d58:	362d                	jal	7007882 <anon.bc0186976f2b4070236a5106e84f3a4e.30.llvm.9006096014459121332+0xe>
 7007d5a:	3266                	fld	ft4,120(sp)
 7007d5c:	3664                	fld	fs1,232(a2)
 7007d5e:	6536                	flw	fa0,76(sp)
 7007d60:	6239                	lui	tp,0xe
 7007d62:	3638                	fld	fa4,104(a2)
 7007d64:	3735                	jal	7007c90 <anon.3a0b9931459234c4b5438a9be2c0d658.20.llvm.12044279608799662234>
 7007d66:	6538                	flw	fa4,72(a0)
 7007d68:	756f2f37          	lui	t5,0x756f2
 7007d6c:	2f74                	fld	fa3,216(a4)
 7007d6e:	7572                	flw	fa0,60(sp)
 7007d70:	732d7473          	csrrc	s0,mhpmevent18h,26
 7007d74:	6474                	flw	fa3,76(s0)
 7007d76:	345f 3266 6439      	.insn	6, 0x64393266345f
 7007d7c:	3539                	jal	7007b8a <anon.ce42269267409fad0f351b7abd853977.12.llvm.11758424910166210904+0x4e>
 7007d7e:	6530                	flw	fa2,72(a0)
 7007d80:	3031                	jal	700758c <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.45>
 7007d82:	3931                	jal	700799e <anon.bc0186976f2b4070236a5106e84f3a4e.74.llvm.9006096014459121332+0x72>
 7007d84:	39653633          	.insn	4, 0x39653633
 7007d88:	61653433          	.insn	4, 0x61653433
 7007d8c:	6566                	flw	fa0,88(sp)
 7007d8e:	3430                	fld	fa2,104(s0)
 7007d90:	61666233          	.insn	4, 0x61666233
 7007d94:	3061                	jal	700761c <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.51+0x14>
 7007d96:	6632                	flw	fa2,12(sp)
 7007d98:	3939                	jal	70079b6 <anon.bc0186976f2b4070236a5106e84f3a4e.74.llvm.9006096014459121332+0x8a>
 7007d9a:	6331                	lui	t1,0xc
 7007d9c:	37353437          	lui	s0,0x37353
 7007da0:	6135                	add	sp,sp,352
 7007da2:	6436                	flw	fs0,76(sp)
 7007da4:	6366                	flw	ft6,88(sp)
 7007da6:	3638                	fld	fa4,104(a2)
 7007da8:	3734                	fld	fa3,104(a4)
 7007daa:	37633363          	.insn	4, 0x37633363
 7007dae:	6266                	flw	ft4,88(sp)
 7007db0:	6462                	flw	fs0,24(sp)
 7007db2:	6465                	lui	s0,0x19
 7007db4:	3565                	jal	7007c5c <anon.3a0b9931459234c4b5438a9be2c0d658.16.llvm.12044279608799662234+0x10>
 7007db6:	2f38                	fld	fa4,88(a4)
 7007db8:	696c                	flw	fa1,84(a0)
 7007dba:	7262                	flw	ft4,56(sp)
 7007dbc:	7261                	lui	tp,0xffff8
 7007dbe:	2f79                	jal	700855c <.Lanon.7c19cafb457940626ba1c92cb815c50d.59+0x5>
 7007dc0:	2f647473          	csrrc	s0,0x2f6,8
 7007dc4:	2f637273          	csrrc	tp,0x2f6,6
 7007dc8:	6874                	flw	fa3,84(s0)
 7007dca:	6572                	flw	fa0,28(sp)
 7007dcc:	6461                	lui	s0,0x18
 7007dce:	636f6c2f          	.insn	4, 0x636f6c2f
 7007dd2:	6c61                	lui	s8,0x18
 7007dd4:	722e                	flw	ft4,232(sp)
 7007dd6:	          	.insn	4, 0x7d140073

07007dd8 <anon.e5acf19516f4a9cd5b82bd5981941ef5.18.llvm.13949807993874650229>:
 7007dd8:	7d14                	flw	fa3,56(a0)
 7007dda:	0700                	add	s0,sp,896
 7007ddc:	000000c3          	fmadd.s	ft1,ft0,ft0,ft0,rne
 7007de0:	01a6                	sll	gp,gp,0x9
 7007de2:	0000                	unimp
 7007de4:	0009                	c.nop	2
	...

07007de8 <.Lanon.efce97596ae942595b76484ba018e500.0>:
 7007de8:	4838                	lw	a4,80(s0)
 7007dea:	0700                	add	s0,sp,896
 7007dec:	0004                	.insn	2, 0x0004
 7007dee:	0000                	unimp
 7007df0:	0004                	.insn	2, 0x0004
 7007df2:	0000                	unimp
 7007df4:	4b20                	lw	s0,80(a4)
 7007df6:	0700                	add	s0,sp,896
 7007df8:	483c                	lw	a5,80(s0)
 7007dfa:	0700                	add	s0,sp,896
 7007dfc:	4a58                	lw	a4,20(a2)
 7007dfe:	0700                	add	s0,sp,896

07007e00 <.Lanon.efce97596ae942595b76484ba018e500.3>:
 7007e00:	4838                	lw	a4,80(s0)
 7007e02:	0700                	add	s0,sp,896
 7007e04:	0004                	.insn	2, 0x0004
 7007e06:	0000                	unimp
 7007e08:	0004                	.insn	2, 0x0004
 7007e0a:	0000                	unimp
 7007e0c:	4bb4                	lw	a3,80(a5)
 7007e0e:	0700                	add	s0,sp,896
 7007e10:	4978                	lw	a4,84(a0)
 7007e12:	0700                	add	s0,sp,896
 7007e14:	4abc                	lw	a5,80(a3)
 7007e16:	0700                	add	s0,sp,896

07007e18 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.36>:
 7007e18:	6d6f682f          	.insn	4, 0x6d6f682f
 7007e1c:	2f65                	jal	70085d4 <.Lanon.7c19cafb457940626ba1c92cb815c50d.65+0x1c>
 7007e1e:	6d737577          	.insn	4, 0x6d737577
 7007e22:	7375722f          	.insn	4, 0x7375722f
 7007e26:	2f74                	fld	fa3,216(a4)
 7007e28:	6b7a                	flw	fs6,156(sp)
 7007e2a:	68746547          	fmsub.s	fa0,fs0,ft7,fa3,unknown
 7007e2e:	7369722f          	.insn	4, 0x7369722f
 7007e32:	652f3063          	.insn	4, 0x652f3063
 7007e36:	6178                	flw	fa4,68(a0)
 7007e38:	706d                	c.lui	zero,0xffffb
 7007e3a:	656c                	flw	fa1,76(a0)
 7007e3c:	61742f73          	csrrs	t5,0x617,s0
 7007e40:	6772                	flw	fa4,28(sp)
 7007e42:	7465                	lui	s0,0xffff9
 7007e44:	6265642f          	.insn	4, 0x6265642f
 7007e48:	6775                	lui	a4,0x1d
 7007e4a:	6975622f          	.insn	4, 0x6975622f
 7007e4e:	646c                	flw	fa1,76(s0)
 7007e50:	6168732f          	.insn	4, 0x6168732f
 7007e54:	6d2d                	lui	s10,0xb
 7007e56:	7465                	lui	s0,0xffff9
 7007e58:	6f68                	flw	fa0,92(a4)
 7007e5a:	7364                	flw	fs1,100(a4)
 7007e5c:	362d                	jal	7007986 <anon.bc0186976f2b4070236a5106e84f3a4e.74.llvm.9006096014459121332+0x5a>
 7007e5e:	3266                	fld	ft4,120(sp)
 7007e60:	3664                	fld	fs1,232(a2)
 7007e62:	6536                	flw	fa0,76(sp)
 7007e64:	6239                	lui	tp,0xe
 7007e66:	3638                	fld	fa4,104(a2)
 7007e68:	3735                	jal	7007d94 <anon.e5acf19516f4a9cd5b82bd5981941ef5.17.llvm.13949807993874650229+0x80>
 7007e6a:	6538                	flw	fa4,72(a0)
 7007e6c:	756f2f37          	lui	t5,0x756f2
 7007e70:	2f74                	fld	fa3,216(a4)
 7007e72:	7572                	flw	fa0,60(sp)
 7007e74:	732d7473          	csrrc	s0,mhpmevent18h,26
 7007e78:	6474                	flw	fa3,76(s0)
 7007e7a:	345f 3266 6439      	.insn	6, 0x64393266345f
 7007e80:	3539                	jal	7007c8e <anon.3a0b9931459234c4b5438a9be2c0d658.19.llvm.12044279608799662234+0x1a>
 7007e82:	6530                	flw	fa2,72(a0)
 7007e84:	3031                	jal	7007690 <.Lanon.31adeef965a1fecf39e1a7a9b10d5c8e.54+0x18>
 7007e86:	3931                	jal	7007aa2 <anon.eff0a5df67630090483337dc173c00d6.103.llvm.17917170917373548271+0x62>
 7007e88:	39653633          	.insn	4, 0x39653633
 7007e8c:	61653433          	.insn	4, 0x61653433
 7007e90:	6566                	flw	fa0,88(sp)
 7007e92:	3430                	fld	fa2,104(s0)
 7007e94:	61666233          	.insn	4, 0x61666233
 7007e98:	3061                	jal	7007720 <anon.bc0186976f2b4070236a5106e84f3a4e.6.llvm.9006096014459121332+0x4>
 7007e9a:	6632                	flw	fa2,12(sp)
 7007e9c:	3939                	jal	7007aba <anon.eff0a5df67630090483337dc173c00d6.103.llvm.17917170917373548271+0x7a>
 7007e9e:	6331                	lui	t1,0xc
 7007ea0:	37353437          	lui	s0,0x37353
 7007ea4:	6135                	add	sp,sp,352
 7007ea6:	6436                	flw	fs0,76(sp)
 7007ea8:	6366                	flw	ft6,88(sp)
 7007eaa:	3638                	fld	fa4,104(a2)
 7007eac:	3734                	fld	fa3,104(a4)
 7007eae:	37633363          	.insn	4, 0x37633363
 7007eb2:	6266                	flw	ft4,88(sp)
 7007eb4:	6462                	flw	fs0,24(sp)
 7007eb6:	6465                	lui	s0,0x19
 7007eb8:	3565                	jal	7007d60 <anon.e5acf19516f4a9cd5b82bd5981941ef5.17.llvm.13949807993874650229+0x4c>
 7007eba:	2f38                	fld	fa4,88(a4)
 7007ebc:	696c                	flw	fa1,84(a0)
 7007ebe:	7262                	flw	ft4,56(sp)
 7007ec0:	7261                	lui	tp,0xffff8
 7007ec2:	2f79                	jal	7008660 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x69>
 7007ec4:	2f647473          	csrrc	s0,0x2f6,8
 7007ec8:	2f637273          	csrrc	tp,0x2f6,6
 7007ecc:	6f69                	lui	t5,0x1a
 7007ece:	646f6d2f          	.insn	4, 0x646f6d2f
 7007ed2:	722e                	flw	ft4,232(sp)
 7007ed4:	00000073          	ecall

07007ed8 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.37>:
 7007ed8:	7e18                	flw	fa4,56(a2)
 7007eda:	0700                	add	s0,sp,896
 7007edc:	00bd                	add	ra,ra,15
 7007ede:	0000                	unimp
 7007ee0:	0524                	add	s1,sp,648
 7007ee2:	0000                	unimp
 7007ee4:	0016                	c.slli	zero,0x5
	...

07007ee8 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.38>:
 7007ee8:	7e18                	flw	fa4,56(a2)
 7007eea:	0700                	add	s0,sp,896
 7007eec:	00bd                	add	ra,ra,15
 7007eee:	0000                	unimp
 7007ef0:	0528                	add	a0,sp,648
 7007ef2:	0000                	unimp
 7007ef4:	000d                	c.nop	3
	...

07007ef8 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.39>:
 7007ef8:	6461                	lui	s0,0x18
 7007efa:	6176                	flw	ft2,92(sp)
 7007efc:	636e                	flw	ft6,216(sp)
 7007efe:	6e69                	lui	t3,0x1a
 7007f00:	6f692067          	.insn	4, 0x6f692067
 7007f04:	7320                	flw	fs0,96(a4)
 7007f06:	696c                	flw	fa1,84(a0)
 7007f08:	20736563          	bltu	t1,t2,7008112 <anon.cae369f449f32127ca43d99b56687b4d.3.llvm.14601742668486837291+0x7e>
 7007f0c:	6562                	flw	fa0,24(sp)
 7007f0e:	6f79                	lui	t5,0x1e
 7007f10:	646e                	flw	fs0,216(sp)
 7007f12:	7420                	flw	fs0,104(s0)
 7007f14:	6568                	flw	fa0,76(a0)
 7007f16:	7269                	lui	tp,0xffffa
 7007f18:	6c20                	flw	fs0,88(s0)
 7007f1a:	6e65                	lui	t3,0x19
 7007f1c:	00687467          	.insn	4, 0x00687467

07007f20 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.40>:
 7007f20:	7ef8                	flw	fa4,124(a3)
 7007f22:	0700                	add	s0,sp,896
 7007f24:	00000027          	.insn	4, 0x0027

07007f28 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.41>:
 7007f28:	7e18                	flw	fa4,56(a2)
 7007f2a:	0700                	add	s0,sp,896
 7007f2c:	00bd                	add	ra,ra,15
 7007f2e:	0000                	unimp
 7007f30:	0526                	sll	a0,a0,0x9
 7007f32:	0000                	unimp
 7007f34:	000d                	c.nop	3
	...

07007f38 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.42>:
 7007f38:	6166                	flw	ft2,88(sp)
 7007f3a:	6c69                	lui	s8,0x1a
 7007f3c:	6465                	lui	s0,0x19
 7007f3e:	7420                	flw	fs0,104(s0)
 7007f40:	7277206f          	j	707ae66 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x7286f>
 7007f44:	7469                	lui	s0,0xffffa
 7007f46:	2065                	jal	7007fee <.Lanon.7bc596e10b05ffcb20d3deb677cfb8d7.28+0x26>
 7007f48:	6c6f6877          	.insn	4, 0x6c6f6877
 7007f4c:	2065                	jal	7007ff4 <.Lanon.7bc596e10b05ffcb20d3deb677cfb8d7.28+0x2c>
 7007f4e:	7562                	flw	fa0,56(sp)
 7007f50:	6666                	flw	fa2,88(sp)
 7007f52:	7265                	lui	tp,0xffff9

07007f54 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.43>:
 7007f54:	7f38                	flw	fa4,120(a4)
 7007f56:	0700                	add	s0,sp,896
 7007f58:	001c                	.insn	2, 0x001c
 7007f5a:	0000                	unimp
 7007f5c:	00000017          	auipc	zero,0x0

07007f60 <anon.9912995c2a2ef8a5d0c3af439f111538.44.llvm.6387882789376083808>:
 7007f60:	4c94                	lw	a3,24(s1)
 7007f62:	0700                	add	s0,sp,896
 7007f64:	000c                	.insn	2, 0x000c
 7007f66:	0000                	unimp
 7007f68:	0004                	.insn	2, 0x0004
 7007f6a:	0000                	unimp
 7007f6c:	4bdc                	lw	a5,20(a5)
 7007f6e:	0700                	add	s0,sp,896
 7007f70:	4698                	lw	a4,8(a3)
 7007f72:	0700                	add	s0,sp,896
 7007f74:	47d8                	lw	a4,12(a5)
 7007f76:	0700                	add	s0,sp,896

07007f78 <anon.9912995c2a2ef8a5d0c3af439f111538.45.llvm.6387882789376083808>:
 7007f78:	6f66                	flw	ft10,88(sp)
 7007f7a:	6d72                	flw	fs10,28(sp)
 7007f7c:	7461                	lui	s0,0xffff8
 7007f7e:	6574                	flw	fa3,76(a0)
 7007f80:	2072                	fld	ft0,280(sp)
 7007f82:	7265                	lui	tp,0xffff9
 7007f84:	6f72                	flw	ft10,28(sp)
 7007f86:	0072                	c.slli	zero,0x1c

07007f88 <anon.9912995c2a2ef8a5d0c3af439f111538.46.llvm.6387882789376083808>:
 7007f88:	7f78                	flw	fa4,124(a4)
 7007f8a:	0700                	add	s0,sp,896
 7007f8c:	0000000f          	fence	unknown,unknown
 7007f90:	0028                	add	a0,sp,8
	...

07007f94 <.Lanon.7bc596e10b05ffcb20d3deb677cfb8d7.25>:
 7007f94:	656d                	lui	a0,0x1b
 7007f96:	6f6d                	lui	t5,0x1b
 7007f98:	7972                	flw	fs2,60(sp)
 7007f9a:	6120                	flw	fs0,64(a0)
 7007f9c:	6c6c                	flw	fa1,92(s0)
 7007f9e:	7461636f          	jal	t1,701e6e4 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x160ed>
 7007fa2:	6f69                	lui	t5,0x1a
 7007fa4:	206e                	fld	ft0,216(sp)
 7007fa6:	          	jal	a2,700e1a8 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x5bb1>

07007fa9 <.Lanon.7bc596e10b05ffcb20d3deb677cfb8d7.26>:
 7007fa9:	6220                	flw	fs0,64(a2)
 7007fab:	7479                	lui	s0,0xffffe
 7007fad:	7365                	lui	t1,0xffff9
 7007faf:	6620                	flw	fs0,72(a2)
 7007fb1:	6961                	lui	s2,0x18
 7007fb3:	656c                	flw	fa1,76(a0)
 7007fb5:	0a64                	add	s1,sp,284
	...

07007fb8 <.Lanon.7bc596e10b05ffcb20d3deb677cfb8d7.27>:
 7007fb8:	7f94                	flw	fa3,56(a5)
 7007fba:	0700                	add	s0,sp,896
 7007fbc:	0015                	c.nop	5
 7007fbe:	0000                	unimp
 7007fc0:	7fa9                	lui	t6,0xfffea
 7007fc2:	0700                	add	s0,sp,896
 7007fc4:	000e                	c.slli	zero,0x3
	...

07007fc8 <.Lanon.7bc596e10b05ffcb20d3deb677cfb8d7.28>:
 7007fc8:	6d6f682f          	.insn	4, 0x6d6f682f
 7007fcc:	2f65                	jal	7008784 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x18d>
 7007fce:	6d737577          	.insn	4, 0x6d737577
 7007fd2:	7375722f          	.insn	4, 0x7375722f
 7007fd6:	2f74                	fld	fa3,216(a4)
 7007fd8:	6b7a                	flw	fs6,156(sp)
 7007fda:	68746547          	fmsub.s	fa0,fs0,ft7,fa3,unknown
 7007fde:	7369722f          	.insn	4, 0x7369722f
 7007fe2:	652f3063          	.insn	4, 0x652f3063
 7007fe6:	6178                	flw	fa4,68(a0)
 7007fe8:	706d                	c.lui	zero,0xffffb
 7007fea:	656c                	flw	fa1,76(a0)
 7007fec:	61742f73          	csrrs	t5,0x617,s0
 7007ff0:	6772                	flw	fa4,28(sp)
 7007ff2:	7465                	lui	s0,0xffff9
 7007ff4:	6265642f          	.insn	4, 0x6265642f
 7007ff8:	6775                	lui	a4,0x1d
 7007ffa:	6975622f          	.insn	4, 0x6975622f
 7007ffe:	646c                	flw	fa1,76(s0)
 7008000:	6168732f          	.insn	4, 0x6168732f
 7008004:	6d2d                	lui	s10,0xb
 7008006:	7465                	lui	s0,0xffff9
 7008008:	6f68                	flw	fa0,92(a4)
 700800a:	7364                	flw	fs1,100(a4)
 700800c:	362d                	jal	7007b36 <anon.8f6a86c2bc9b382f474d86b741846cce.6.llvm.14256562575406249000+0xa>
 700800e:	3266                	fld	ft4,120(sp)
 7008010:	3664                	fld	fs1,232(a2)
 7008012:	6536                	flw	fa0,76(sp)
 7008014:	6239                	lui	tp,0xe
 7008016:	3638                	fld	fa4,104(a2)
 7008018:	3735                	jal	7007f44 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.42+0xc>
 700801a:	6538                	flw	fa4,72(a0)
 700801c:	756f2f37          	lui	t5,0x756f2
 7008020:	2f74                	fld	fa3,216(a4)
 7008022:	7572                	flw	fa0,60(sp)
 7008024:	732d7473          	csrrc	s0,mhpmevent18h,26
 7008028:	6474                	flw	fa3,76(s0)
 700802a:	345f 3266 6439      	.insn	6, 0x64393266345f
 7008030:	3539                	jal	7007e3e <.Lanon.9912995c2a2ef8a5d0c3af439f111538.36+0x26>
 7008032:	6530                	flw	fa2,72(a0)
 7008034:	3031                	jal	7007840 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.27+0x4>
 7008036:	3931                	jal	7007c52 <anon.3a0b9931459234c4b5438a9be2c0d658.16.llvm.12044279608799662234+0x6>
 7008038:	39653633          	.insn	4, 0x39653633
 700803c:	61653433          	.insn	4, 0x61653433
 7008040:	6566                	flw	fa0,88(sp)
 7008042:	3430                	fld	fa2,104(s0)
 7008044:	61666233          	.insn	4, 0x61666233
 7008048:	3061                	jal	70078d0 <.Lanon.bc0186976f2b4070236a5106e84f3a4e.68+0x4>
 700804a:	6632                	flw	fa2,12(sp)
 700804c:	3939                	jal	7007c6a <anon.3a0b9931459234c4b5438a9be2c0d658.18.llvm.12044279608799662234+0x6>
 700804e:	6331                	lui	t1,0xc
 7008050:	37353437          	lui	s0,0x37353
 7008054:	6135                	add	sp,sp,352
 7008056:	6436                	flw	fs0,76(sp)
 7008058:	6366                	flw	ft6,88(sp)
 700805a:	3638                	fld	fa4,104(a2)
 700805c:	3734                	fld	fa3,104(a4)
 700805e:	37633363          	.insn	4, 0x37633363
 7008062:	6266                	flw	ft4,88(sp)
 7008064:	6462                	flw	fs0,24(sp)
 7008066:	6465                	lui	s0,0x19
 7008068:	3565                	jal	7007f10 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.39+0x18>
 700806a:	2f38                	fld	fa4,88(a4)
 700806c:	696c                	flw	fa1,84(a0)
 700806e:	7262                	flw	ft4,56(sp)
 7008070:	7261                	lui	tp,0xffff8
 7008072:	2f79                	jal	7008810 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x219>
 7008074:	2f647473          	csrrc	s0,0x2f6,8
 7008078:	2f637273          	csrrc	tp,0x2f6,6
 700807c:	6c61                	lui	s8,0x18
 700807e:	6f6c                	flw	fa1,92(a4)
 7008080:	73722e63          	.insn	4, 0x73722e63

07008084 <.Lanon.7bc596e10b05ffcb20d3deb677cfb8d7.29>:
 7008084:	7fc8                	flw	fa0,60(a5)
 7008086:	0700                	add	s0,sp,896
 7008088:	00bc                	add	a5,sp,72
 700808a:	0000                	unimp
 700808c:	0155                	add	sp,sp,21
 700808e:	0000                	unimp
 7008090:	0009                	c.nop	2
	...

07008094 <anon.cae369f449f32127ca43d99b56687b4d.3.llvm.14601742668486837291>:
 7008094:	6d6f682f          	.insn	4, 0x6d6f682f
 7008098:	2f65                	jal	7008850 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x259>
 700809a:	6d737577          	.insn	4, 0x6d737577
 700809e:	7375722f          	.insn	4, 0x7375722f
 70080a2:	2f74                	fld	fa3,216(a4)
 70080a4:	6b7a                	flw	fs6,156(sp)
 70080a6:	68746547          	fmsub.s	fa0,fs0,ft7,fa3,unknown
 70080aa:	7369722f          	.insn	4, 0x7369722f
 70080ae:	652f3063          	.insn	4, 0x652f3063
 70080b2:	6178                	flw	fa4,68(a0)
 70080b4:	706d                	c.lui	zero,0xffffb
 70080b6:	656c                	flw	fa1,76(a0)
 70080b8:	61742f73          	csrrs	t5,0x617,s0
 70080bc:	6772                	flw	fa4,28(sp)
 70080be:	7465                	lui	s0,0xffff9
 70080c0:	6265642f          	.insn	4, 0x6265642f
 70080c4:	6775                	lui	a4,0x1d
 70080c6:	6975622f          	.insn	4, 0x6975622f
 70080ca:	646c                	flw	fa1,76(s0)
 70080cc:	6168732f          	.insn	4, 0x6168732f
 70080d0:	6d2d                	lui	s10,0xb
 70080d2:	7465                	lui	s0,0xffff9
 70080d4:	6f68                	flw	fa0,92(a4)
 70080d6:	7364                	flw	fs1,100(a4)
 70080d8:	362d                	jal	7007c02 <anon.ce42269267409fad0f351b7abd853977.19.llvm.11758424910166210904+0x5>
 70080da:	3266                	fld	ft4,120(sp)
 70080dc:	3664                	fld	fs1,232(a2)
 70080de:	6536                	flw	fa0,76(sp)
 70080e0:	6239                	lui	tp,0xe
 70080e2:	3638                	fld	fa4,104(a2)
 70080e4:	3735                	jal	7008010 <.Lanon.7bc596e10b05ffcb20d3deb677cfb8d7.28+0x48>
 70080e6:	6538                	flw	fa4,72(a0)
 70080e8:	756f2f37          	lui	t5,0x756f2
 70080ec:	2f74                	fld	fa3,216(a4)
 70080ee:	7572                	flw	fa0,60(sp)
 70080f0:	732d7473          	csrrc	s0,mhpmevent18h,26
 70080f4:	6474                	flw	fa3,76(s0)
 70080f6:	345f 3266 6439      	.insn	6, 0x64393266345f
 70080fc:	3539                	jal	7007f0a <.Lanon.9912995c2a2ef8a5d0c3af439f111538.39+0x12>
 70080fe:	6530                	flw	fa2,72(a0)
 7008100:	3031                	jal	700790c <.Lanon.bc0186976f2b4070236a5106e84f3a4e.68+0x40>
 7008102:	3931                	jal	7007d1e <anon.e5acf19516f4a9cd5b82bd5981941ef5.17.llvm.13949807993874650229+0xa>
 7008104:	39653633          	.insn	4, 0x39653633
 7008108:	61653433          	.insn	4, 0x61653433
 700810c:	6566                	flw	fa0,88(sp)
 700810e:	3430                	fld	fa2,104(s0)
 7008110:	61666233          	.insn	4, 0x61666233
 7008114:	3061                	jal	700799c <anon.bc0186976f2b4070236a5106e84f3a4e.74.llvm.9006096014459121332+0x70>
 7008116:	6632                	flw	fa2,12(sp)
 7008118:	3939                	jal	7007d36 <anon.e5acf19516f4a9cd5b82bd5981941ef5.17.llvm.13949807993874650229+0x22>
 700811a:	6331                	lui	t1,0xc
 700811c:	37353437          	lui	s0,0x37353
 7008120:	6135                	add	sp,sp,352
 7008122:	6436                	flw	fs0,76(sp)
 7008124:	6366                	flw	ft6,88(sp)
 7008126:	3638                	fld	fa4,104(a2)
 7008128:	3734                	fld	fa3,104(a4)
 700812a:	37633363          	.insn	4, 0x37633363
 700812e:	6266                	flw	ft4,88(sp)
 7008130:	6462                	flw	fs0,24(sp)
 7008132:	6465                	lui	s0,0x19
 7008134:	3565                	jal	7007fdc <.Lanon.7bc596e10b05ffcb20d3deb677cfb8d7.28+0x14>
 7008136:	2f38                	fld	fa4,88(a4)
 7008138:	696c                	flw	fa1,84(a0)
 700813a:	7262                	flw	ft4,56(sp)
 700813c:	7261                	lui	tp,0xffff8
 700813e:	2f79                	jal	70088dc <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x2e5>
 7008140:	6c61                	lui	s8,0x18
 7008142:	6f6c                	flw	fa1,92(a4)
 7008144:	72732f63          	.insn	4, 0x72732f63
 7008148:	61722f63          	.insn	4, 0x61722f63
 700814c:	65765f77          	.insn	4, 0x65765f77
 7008150:	73722e63          	.insn	4, 0x73722e63

07008154 <anon.cae369f449f32127ca43d99b56687b4d.5.llvm.14601742668486837291>:
 7008154:	61706163          	bltu	zero,s7,7008756 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x15f>
 7008158:	79746963          	bltu	s0,s7,70088ea <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x2f3>
 700815c:	6f20                	flw	fs0,88(a4)
 700815e:	6576                	flw	fa0,92(sp)
 7008160:	6672                	flw	fa2,28(sp)
 7008162:	6f6c                	flw	fa1,92(a4)
 7008164:	00000077          	.insn	4, 0x0077

07008168 <anon.cae369f449f32127ca43d99b56687b4d.6.llvm.14601742668486837291>:
 7008168:	8154                	.insn	2, 0x8154
 700816a:	0700                	add	s0,sp,896
 700816c:	0011                	c.nop	4
	...

07008170 <anon.cae369f449f32127ca43d99b56687b4d.7.llvm.14601742668486837291>:
 7008170:	8094                	.insn	2, 0x8094
 7008172:	0700                	add	s0,sp,896
 7008174:	00c0                	add	s0,sp,68
 7008176:	0000                	unimp
 7008178:	0206                	sll	tp,tp,0x1
 700817a:	0000                	unimp
 700817c:	0005                	c.nop	1
	...

07008180 <anon.564c0ea675f63267486e34ba3a5001a1.0.llvm.6662267625297349771>:
 7008180:	6d6f682f          	.insn	4, 0x6d6f682f
 7008184:	2f65                	jal	700893c <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x345>
 7008186:	6d737577          	.insn	4, 0x6d737577
 700818a:	7375722f          	.insn	4, 0x7375722f
 700818e:	2f74                	fld	fa3,216(a4)
 7008190:	6b7a                	flw	fs6,156(sp)
 7008192:	68746547          	fmsub.s	fa0,fs0,ft7,fa3,unknown
 7008196:	7369722f          	.insn	4, 0x7369722f
 700819a:	652f3063          	.insn	4, 0x652f3063
 700819e:	6178                	flw	fa4,68(a0)
 70081a0:	706d                	c.lui	zero,0xffffb
 70081a2:	656c                	flw	fa1,76(a0)
 70081a4:	61742f73          	csrrs	t5,0x617,s0
 70081a8:	6772                	flw	fa4,28(sp)
 70081aa:	7465                	lui	s0,0xffff9
 70081ac:	6265642f          	.insn	4, 0x6265642f
 70081b0:	6775                	lui	a4,0x1d
 70081b2:	6975622f          	.insn	4, 0x6975622f
 70081b6:	646c                	flw	fa1,76(s0)
 70081b8:	6168732f          	.insn	4, 0x6168732f
 70081bc:	6d2d                	lui	s10,0xb
 70081be:	7465                	lui	s0,0xffff9
 70081c0:	6f68                	flw	fa0,92(a4)
 70081c2:	7364                	flw	fs1,100(a4)
 70081c4:	362d                	jal	7007cee <anon.e5acf19516f4a9cd5b82bd5981941ef5.15.llvm.13949807993874650229+0x33>
 70081c6:	3266                	fld	ft4,120(sp)
 70081c8:	3664                	fld	fs1,232(a2)
 70081ca:	6536                	flw	fa0,76(sp)
 70081cc:	6239                	lui	tp,0xe
 70081ce:	3638                	fld	fa4,104(a2)
 70081d0:	3735                	jal	70080fc <anon.cae369f449f32127ca43d99b56687b4d.3.llvm.14601742668486837291+0x68>
 70081d2:	6538                	flw	fa4,72(a0)
 70081d4:	756f2f37          	lui	t5,0x756f2
 70081d8:	2f74                	fld	fa3,216(a4)
 70081da:	7572                	flw	fa0,60(sp)
 70081dc:	732d7473          	csrrc	s0,mhpmevent18h,26
 70081e0:	6474                	flw	fa3,76(s0)
 70081e2:	345f 3266 6439      	.insn	6, 0x64393266345f
 70081e8:	3539                	jal	7007ff6 <.Lanon.7bc596e10b05ffcb20d3deb677cfb8d7.28+0x2e>
 70081ea:	6530                	flw	fa2,72(a0)
 70081ec:	3031                	jal	70079f8 <anon.bc0186976f2b4070236a5106e84f3a4e.74.llvm.9006096014459121332+0xcc>
 70081ee:	3931                	jal	7007e0a <.Lanon.efce97596ae942595b76484ba018e500.3+0xa>
 70081f0:	39653633          	.insn	4, 0x39653633
 70081f4:	61653433          	.insn	4, 0x61653433
 70081f8:	6566                	flw	fa0,88(sp)
 70081fa:	3430                	fld	fa2,104(s0)
 70081fc:	61666233          	.insn	4, 0x61666233
 7008200:	3061                	jal	7007a88 <anon.eff0a5df67630090483337dc173c00d6.103.llvm.17917170917373548271+0x48>
 7008202:	6632                	flw	fa2,12(sp)
 7008204:	3939                	jal	7007e22 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.36+0xa>
 7008206:	6331                	lui	t1,0xc
 7008208:	37353437          	lui	s0,0x37353
 700820c:	6135                	add	sp,sp,352
 700820e:	6436                	flw	fs0,76(sp)
 7008210:	6366                	flw	ft6,88(sp)
 7008212:	3638                	fld	fa4,104(a2)
 7008214:	3734                	fld	fa3,104(a4)
 7008216:	37633363          	.insn	4, 0x37633363
 700821a:	6266                	flw	ft4,88(sp)
 700821c:	6462                	flw	fs0,24(sp)
 700821e:	6465                	lui	s0,0x19
 7008220:	3565                	jal	70080c8 <anon.cae369f449f32127ca43d99b56687b4d.3.llvm.14601742668486837291+0x34>
 7008222:	2f38                	fld	fa4,88(a4)
 7008224:	696c                	flw	fa1,84(a0)
 7008226:	7262                	flw	ft4,56(sp)
 7008228:	7261                	lui	tp,0xffff8
 700822a:	2f79                	jal	70089c8 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x3d1>
 700822c:	65726f63          	bltu	tp,s7,700888a <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x293>
 7008230:	6372732f          	.insn	4, 0x6372732f
 7008234:	746d662f          	.insn	4, 0x746d662f
 7008238:	6d756e2f          	.insn	4, 0x6d756e2f
 700823c:	722e                	flw	ft4,232(sp)
 700823e:	          	.insn	4, 0x81800073

07008240 <anon.564c0ea675f63267486e34ba3a5001a1.1.llvm.6662267625297349771>:
 7008240:	8180                	.insn	2, 0x8180
 7008242:	0700                	add	s0,sp,896
 7008244:	000000bf 00000065 	.insn	8, 0x0065000000bf
 700824c:	0014                	.insn	2, 0x0014
	...

07008250 <anon.564c0ea675f63267486e34ba3a5001a1.2.llvm.6662267625297349771>:
 7008250:	7830                	flw	fa2,112(s0)

07008252 <anon.564c0ea675f63267486e34ba3a5001a1.5.llvm.6662267625297349771>:
 7008252:	3030                	fld	fa2,96(s0)
 7008254:	3130                	fld	fa2,96(a0)
 7008256:	3230                	fld	fa2,96(a2)
 7008258:	3330                	fld	fa2,96(a4)
 700825a:	3430                	fld	fa2,104(s0)
 700825c:	3530                	fld	fa2,104(a0)
 700825e:	3630                	fld	fa2,104(a2)
 7008260:	3730                	fld	fa2,104(a4)
 7008262:	3830                	fld	fa2,112(s0)
 7008264:	3930                	fld	fa2,112(a0)
 7008266:	3031                	jal	7007a72 <anon.eff0a5df67630090483337dc173c00d6.103.llvm.17917170917373548271+0x32>
 7008268:	3131                	jal	7007e74 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.36+0x5c>
 700826a:	3231                	jal	7007b76 <anon.ce42269267409fad0f351b7abd853977.12.llvm.11758424910166210904+0x3a>
 700826c:	3331                	jal	7007f78 <anon.9912995c2a2ef8a5d0c3af439f111538.45.llvm.6387882789376083808>
 700826e:	3431                	jal	7007c7a <anon.3a0b9931459234c4b5438a9be2c0d658.19.llvm.12044279608799662234+0x6>
 7008270:	3531                	jal	700807c <.Lanon.7bc596e10b05ffcb20d3deb677cfb8d7.28+0xb4>
 7008272:	3631                	jal	7007d7e <anon.e5acf19516f4a9cd5b82bd5981941ef5.17.llvm.13949807993874650229+0x6a>
 7008274:	3731                	jal	7008180 <anon.564c0ea675f63267486e34ba3a5001a1.0.llvm.6662267625297349771>
 7008276:	3831                	jal	7007a92 <anon.eff0a5df67630090483337dc173c00d6.103.llvm.17917170917373548271+0x52>
 7008278:	3931                	jal	7007e94 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.36+0x7c>
 700827a:	3032                	fld	ft0,296(sp)
 700827c:	3132                	fld	ft2,296(sp)
 700827e:	3232                	fld	ft4,296(sp)
 7008280:	3332                	fld	ft6,296(sp)
 7008282:	3432                	fld	fs0,296(sp)
 7008284:	3532                	fld	fa0,296(sp)
 7008286:	3632                	fld	fa2,296(sp)
 7008288:	3732                	fld	fa4,296(sp)
 700828a:	3832                	fld	fa6,296(sp)
 700828c:	3932                	fld	fs2,296(sp)
 700828e:	31333033          	.insn	4, 0x31333033
 7008292:	33333233          	.insn	4, 0x33333233
 7008296:	35333433          	.insn	4, 0x35333433
 700829a:	37333633          	.insn	4, 0x37333633
 700829e:	39333833          	.insn	4, 0x39333833
 70082a2:	3034                	fld	fa3,96(s0)
 70082a4:	3134                	fld	fa3,96(a0)
 70082a6:	3234                	fld	fa3,96(a2)
 70082a8:	3334                	fld	fa3,96(a4)
 70082aa:	3434                	fld	fa3,104(s0)
 70082ac:	3534                	fld	fa3,104(a0)
 70082ae:	3634                	fld	fa3,104(a2)
 70082b0:	3734                	fld	fa3,104(a4)
 70082b2:	3834                	fld	fa3,112(s0)
 70082b4:	3934                	fld	fa3,112(a0)
 70082b6:	3035                	jal	7007ae2 <anon.eff0a5df67630090483337dc173c00d6.103.llvm.17917170917373548271+0xa2>
 70082b8:	3135                	jal	7007ee4 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.37+0xc>
 70082ba:	3235                	jal	7007be6 <anon.ce42269267409fad0f351b7abd853977.12.llvm.11758424910166210904+0xaa>
 70082bc:	3335                	jal	7007fe8 <.Lanon.7bc596e10b05ffcb20d3deb677cfb8d7.28+0x20>
 70082be:	3435                	jal	7007cea <anon.e5acf19516f4a9cd5b82bd5981941ef5.15.llvm.13949807993874650229+0x2f>
 70082c0:	3535                	jal	70080ec <anon.cae369f449f32127ca43d99b56687b4d.3.llvm.14601742668486837291+0x58>
 70082c2:	3635                	jal	7007dee <.Lanon.efce97596ae942595b76484ba018e500.0+0x6>
 70082c4:	3735                	jal	70081f0 <anon.564c0ea675f63267486e34ba3a5001a1.0.llvm.6662267625297349771+0x70>
 70082c6:	3835                	jal	7007b02 <anon.eff0a5df67630090483337dc173c00d6.103.llvm.17917170917373548271+0xc2>
 70082c8:	3935                	jal	7007f04 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.39+0xc>
 70082ca:	3036                	fld	ft0,360(sp)
 70082cc:	3136                	fld	ft2,360(sp)
 70082ce:	3236                	fld	ft4,360(sp)
 70082d0:	3336                	fld	ft6,360(sp)
 70082d2:	3436                	fld	fs0,360(sp)
 70082d4:	3536                	fld	fa0,360(sp)
 70082d6:	3636                	fld	fa2,360(sp)
 70082d8:	3736                	fld	fa4,360(sp)
 70082da:	3836                	fld	fa6,360(sp)
 70082dc:	3936                	fld	fs2,360(sp)
 70082de:	31373037          	lui	zero,0x31373
 70082e2:	33373237          	lui	tp,0x33373
 70082e6:	35373437          	lui	s0,0x35373
 70082ea:	37373637          	lui	a2,0x37373
 70082ee:	39373837          	lui	a6,0x39373
 70082f2:	3038                	fld	fa4,96(s0)
 70082f4:	3138                	fld	fa4,96(a0)
 70082f6:	3238                	fld	fa4,96(a2)
 70082f8:	3338                	fld	fa4,96(a4)
 70082fa:	3438                	fld	fa4,104(s0)
 70082fc:	3538                	fld	fa4,104(a0)
 70082fe:	3638                	fld	fa4,104(a2)
 7008300:	3738                	fld	fa4,104(a4)
 7008302:	3838                	fld	fa4,112(s0)
 7008304:	3938                	fld	fa4,112(a0)
 7008306:	3039                	jal	7007b14 <anon.eff0a5df67630090483337dc173c00d6.103.llvm.17917170917373548271+0xd4>
 7008308:	3139                	jal	7007f16 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.39+0x1e>
 700830a:	3239                	jal	7007c18 <anon.ce42269267409fad0f351b7abd853977.19.llvm.11758424910166210904+0x1b>
 700830c:	3339                	jal	700801a <.Lanon.7bc596e10b05ffcb20d3deb677cfb8d7.28+0x52>
 700830e:	3439                	jal	7007d1c <anon.e5acf19516f4a9cd5b82bd5981941ef5.17.llvm.13949807993874650229+0x8>
 7008310:	3539                	jal	700811e <anon.cae369f449f32127ca43d99b56687b4d.3.llvm.14601742668486837291+0x8a>
 7008312:	3639                	jal	7007e20 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.36+0x8>
 7008314:	3739                	jal	7008222 <anon.564c0ea675f63267486e34ba3a5001a1.0.llvm.6662267625297349771+0xa2>
 7008316:	3839                	jal	7007b34 <anon.8f6a86c2bc9b382f474d86b741846cce.6.llvm.14256562575406249000+0x8>
 7008318:	3939                	jal	7007f36 <.Lanon.9912995c2a2ef8a5d0c3af439f111538.41+0xe>

0700831a <.Lanon.60cf129b6b8622904f5ffa0a3393ba31.31>:
 700831a:	72756f73          	csrrs	t5,mhpmevent7h,10
 700831e:	73206563          	bltu	zero,s2,7008a48 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x451>
 7008322:	696c                	flw	fa1,84(a0)
 7008324:	6c206563          	bltu	zero,sp,70089ee <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x3f7>
 7008328:	6e65                	lui	t3,0x19
 700832a:	20687467          	.insn	4, 0x20687467
 700832e:	                	fld	fa0,80(a0)

0700832f <.Lanon.60cf129b6b8622904f5ffa0a3393ba31.32>:
 700832f:	2029                	jal	7008339 <.Lanon.60cf129b6b8622904f5ffa0a3393ba31.32+0xa>
 7008331:	6f64                	flw	fs1,92(a4)
 7008333:	7365                	lui	t1,0xffff9
 7008335:	6e20                	flw	fs0,88(a2)
 7008337:	6d20746f          	jal	s0,700fa09 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x7412>
 700833b:	7461                	lui	s0,0xffff8
 700833d:	64206863          	bltu	zero,sp,700898d <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x396>
 7008341:	7365                	lui	t1,0xffff9
 7008343:	6974                	flw	fa3,84(a0)
 7008345:	616e                	flw	ft2,216(sp)
 7008347:	6974                	flw	fa3,84(a0)
 7008349:	73206e6f          	jal	t3,700ea7b <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x6484>
 700834d:	696c                	flw	fa1,84(a0)
 700834f:	6c206563          	bltu	zero,sp,7008a19 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x422>
 7008353:	6e65                	lui	t3,0x19
 7008355:	20687467          	.insn	4, 0x20687467
 7008359:	                	fld	fa0,80(a0)

0700835a <.Lanon.60cf129b6b8622904f5ffa0a3393ba31.33>:
 700835a:	0029                	c.nop	10

0700835c <.Lanon.60cf129b6b8622904f5ffa0a3393ba31.34>:
 700835c:	831a                	mv	t1,t1
 700835e:	0700                	add	s0,sp,896
 7008360:	0015                	c.nop	5
 7008362:	0000                	unimp
 7008364:	0700832f          	.insn	4, 0x0700832f
 7008368:	0000002b          	.insn	4, 0x002b
 700836c:	835a                	mv	t1,s6
 700836e:	0700                	add	s0,sp,896
 7008370:	0001                	nop
	...

07008374 <.Lanon.6d771cd846f25d13b1efff6bee2d335d.24>:
 7008374:	6f42                	flw	ft10,16(sp)
 7008376:	7272                	flw	ft4,60(sp)
 7008378:	754d776f          	jal	a4,70dfacc <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0xd74d5>
 700837c:	4574                	lw	a3,76(a0)
 700837e:	7272                	flw	ft4,60(sp)
 7008380:	0000726f          	jal	tp,700f380 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x6d89>

07008384 <anon.7d99c8ca23b35441d815b402e02ae6ac.21.llvm.1518608519765115567>:
 7008384:	003a                	c.slli	zero,0xe
	...

07008388 <anon.7d99c8ca23b35441d815b402e02ae6ac.22.llvm.1518608519765115567>:
 7008388:	8384                	.insn	2, 0x8384
 700838a:	0700                	add	s0,sp,896
 700838c:	0000                	unimp
 700838e:	0000                	unimp
 7008390:	8384                	.insn	2, 0x8384
 7008392:	0700                	add	s0,sp,896
 7008394:	0001                	nop
 7008396:	0000                	unimp
 7008398:	8384                	.insn	2, 0x8384
 700839a:	0700                	add	s0,sp,896
 700839c:	0001                	nop
	...

070083a0 <anon.7d99c8ca23b35441d815b402e02ae6ac.30.llvm.1518608519765115567>:
 70083a0:	                	jal	700844e <.Lanon.01d17f6cc6f847c1e4bc826f0cfda2e0.18+0x8a>

070083a1 <anon.7d99c8ca23b35441d815b402e02ae6ac.33.llvm.1518608519765115567>:
 70083a1:	7d20                	flw	fs0,120(a0)

070083a3 <.Lanon.01d17f6cc6f847c1e4bc826f0cfda2e0.14>:
 70083a3:	6170                	flw	fa2,68(a0)
 70083a5:	696e                	flw	fs2,216(sp)
 70083a7:	64656b63          	bltu	a0,t1,70089fd <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x406>
 70083ab:	6120                	flw	fs0,64(a0)
 70083ad:	2074                	fld	fa3,192(s0)

070083af <.Lanon.01d17f6cc6f847c1e4bc826f0cfda2e0.15>:
 70083af:	          	fsw	ft2,526(s8) # 1820e <__bss_size+0x18186>

070083b0 <.Lanon.01d17f6cc6f847c1e4bc826f0cfda2e0.16>:
 70083b0:	00202c27          	fsw	ft2,24(zero) # 18 <__bss_size-0x70>

070083b4 <.Lanon.01d17f6cc6f847c1e4bc826f0cfda2e0.17>:
 70083b4:	070083af          	.insn	4, 0x070083af
 70083b8:	0001                	nop
 70083ba:	0000                	unimp
 70083bc:	83b0                	.insn	2, 0x83b0
 70083be:	0700                	add	s0,sp,896
 70083c0:	00000003          	lb	zero,0(zero) # 0 <__bss_size-0x88>

070083c4 <.Lanon.01d17f6cc6f847c1e4bc826f0cfda2e0.18>:
 70083c4:	0101                	add	sp,sp,0
 70083c6:	0101                	add	sp,sp,0
 70083c8:	0101                	add	sp,sp,0
 70083ca:	0101                	add	sp,sp,0
 70083cc:	0101                	add	sp,sp,0
 70083ce:	0101                	add	sp,sp,0
 70083d0:	0101                	add	sp,sp,0
 70083d2:	0101                	add	sp,sp,0
 70083d4:	0101                	add	sp,sp,0
 70083d6:	0101                	add	sp,sp,0
 70083d8:	0101                	add	sp,sp,0
 70083da:	0101                	add	sp,sp,0
 70083dc:	0101                	add	sp,sp,0
 70083de:	0101                	add	sp,sp,0
 70083e0:	0101                	add	sp,sp,0
 70083e2:	0101                	add	sp,sp,0
 70083e4:	0101                	add	sp,sp,0
 70083e6:	0101                	add	sp,sp,0
 70083e8:	0101                	add	sp,sp,0
 70083ea:	0101                	add	sp,sp,0
 70083ec:	0101                	add	sp,sp,0
 70083ee:	0101                	add	sp,sp,0
 70083f0:	0101                	add	sp,sp,0
 70083f2:	0101                	add	sp,sp,0
 70083f4:	0101                	add	sp,sp,0
 70083f6:	0101                	add	sp,sp,0
 70083f8:	0101                	add	sp,sp,0
 70083fa:	0101                	add	sp,sp,0
 70083fc:	0101                	add	sp,sp,0
 70083fe:	0101                	add	sp,sp,0
 7008400:	0101                	add	sp,sp,0
 7008402:	0101                	add	sp,sp,0
 7008404:	0101                	add	sp,sp,0
 7008406:	0101                	add	sp,sp,0
 7008408:	0101                	add	sp,sp,0
 700840a:	0101                	add	sp,sp,0
 700840c:	0101                	add	sp,sp,0
 700840e:	0101                	add	sp,sp,0
 7008410:	0101                	add	sp,sp,0
 7008412:	0101                	add	sp,sp,0
 7008414:	0101                	add	sp,sp,0
 7008416:	0101                	add	sp,sp,0
 7008418:	0101                	add	sp,sp,0
 700841a:	0101                	add	sp,sp,0
 700841c:	0101                	add	sp,sp,0
 700841e:	0101                	add	sp,sp,0
 7008420:	0101                	add	sp,sp,0
 7008422:	0101                	add	sp,sp,0
 7008424:	0101                	add	sp,sp,0
 7008426:	0101                	add	sp,sp,0
 7008428:	0101                	add	sp,sp,0
 700842a:	0101                	add	sp,sp,0
 700842c:	0101                	add	sp,sp,0
 700842e:	0101                	add	sp,sp,0
 7008430:	0101                	add	sp,sp,0
 7008432:	0101                	add	sp,sp,0
 7008434:	0101                	add	sp,sp,0
 7008436:	0101                	add	sp,sp,0
 7008438:	0101                	add	sp,sp,0
 700843a:	0101                	add	sp,sp,0
 700843c:	0101                	add	sp,sp,0
 700843e:	0101                	add	sp,sp,0
 7008440:	0101                	add	sp,sp,0
 7008442:	0101                	add	sp,sp,0
	...
 7008484:	0000                	unimp
 7008486:	0202                	c.slli64	tp
 7008488:	0202                	c.slli64	tp
 700848a:	0202                	c.slli64	tp
 700848c:	0202                	c.slli64	tp
 700848e:	0202                	c.slli64	tp
 7008490:	0202                	c.slli64	tp
 7008492:	0202                	c.slli64	tp
 7008494:	0202                	c.slli64	tp
 7008496:	0202                	c.slli64	tp
 7008498:	0202                	c.slli64	tp
 700849a:	0202                	c.slli64	tp
 700849c:	0202                	c.slli64	tp
 700849e:	0202                	c.slli64	tp
 70084a0:	0202                	c.slli64	tp
 70084a2:	0202                	c.slli64	tp
 70084a4:	03030303          	lb	t1,48(t1) # ffff9030 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0xf8ff0a39>
 70084a8:	03030303          	lb	t1,48(t1)
 70084ac:	03030303          	lb	t1,48(t1)
 70084b0:	03030303          	lb	t1,48(t1)
 70084b4:	0404                	add	s1,sp,512
 70084b6:	0404                	add	s1,sp,512
 70084b8:	0004                	.insn	2, 0x0004
	...

070084c4 <.Lanon.3bcebef9b7bf7a711b7d7ef3bb543d4c.2>:
 70084c4:	84c4                	.insn	2, 0x84c4
 70084c6:	0700                	add	s0,sp,896
 70084c8:	0000                	unimp
	...

070084cc <.Lanon.4c774dc772aae61f31be2b670cb73359.9>:
 70084cc:	6172                	flw	ft2,28(sp)
 70084ce:	676e                	flw	fa4,216(sp)
 70084d0:	2065                	jal	7008578 <.Lanon.7c19cafb457940626ba1c92cb815c50d.60+0x8>
 70084d2:	72617473          	csrrc	s0,mhpmevent6h,2
 70084d6:	2074                	fld	fa3,192(s0)
 70084d8:	6e69                	lui	t3,0x1a
 70084da:	6564                	flw	fs1,76(a0)
 70084dc:	2078                	fld	fa4,192(s0)

070084de <.Lanon.4c774dc772aae61f31be2b670cb73359.10>:
 70084de:	6f20                	flw	fs0,88(a4)
 70084e0:	7475                	lui	s0,0xffffd
 70084e2:	6f20                	flw	fs0,88(a4)
 70084e4:	2066                	fld	ft0,88(sp)
 70084e6:	6172                	flw	ft2,28(sp)
 70084e8:	676e                	flw	fa4,216(sp)
 70084ea:	2065                	jal	7008592 <.Lanon.7c19cafb457940626ba1c92cb815c50d.62+0x4>
 70084ec:	6f66                	flw	ft10,88(sp)
 70084ee:	2072                	fld	ft0,280(sp)
 70084f0:	63696c73          	csrrs	s8,0x636,18
 70084f4:	2065                	jal	700859c <.Lanon.7c19cafb457940626ba1c92cb815c50d.63+0x8>
 70084f6:	6c20666f          	jal	a2,700ebb8 <anon.811f17354c499ab9db5bac79de70cdc4.0.llvm.3008685313708409704+0x65c1>
 70084fa:	6e65                	lui	t3,0x19
 70084fc:	20687467          	.insn	4, 0x20687467

07008500 <.Lanon.4c774dc772aae61f31be2b670cb73359.11>:
 7008500:	84cc                	.insn	2, 0x84cc
 7008502:	0700                	add	s0,sp,896
 7008504:	0012                	c.slli	zero,0x4
 7008506:	0000                	unimp
 7008508:	84de                	mv	s1,s7
 700850a:	0700                	add	s0,sp,896
 700850c:	0022                	c.slli	zero,0x8
	...

07008510 <anon.1375604a764ae3db9d6e47da8ae90e8a.12.llvm.679149048231815736>:
 7008510:	6166                	flw	ft2,88(sp)
 7008512:	736c                	flw	fa1,100(a4)
 7008514:	0065                	c.nop	25
	...

07008518 <.Lanon.7c19cafb457940626ba1c92cb815c50d.44>:
 7008518:	6964                	flw	fs1,84(a0)
 700851a:	0700                	add	s0,sp,896
 700851c:	0000                	unimp
 700851e:	0000                	unimp
 7008520:	0001                	nop
 7008522:	0000                	unimp
 7008524:	587c                	lw	a5,116(s0)
 7008526:	0700                	add	s0,sp,896

07008528 <.Lanon.7c19cafb457940626ba1c92cb815c50d.49>:
 7008528:	6220                	flw	fs0,64(a2)
 700852a:	7475                	lui	s0,0xffffd
 700852c:	7420                	flw	fs0,104(s0)
 700852e:	6568                	flw	fa0,76(a0)
 7008530:	6920                	flw	fs0,80(a0)
 7008532:	646e                	flw	fs0,216(sp)
 7008534:	7865                	lui	a6,0xffff9
 7008536:	6920                	flw	fs0,80(a0)
 7008538:	00002073          	csrr	zero,0x0

0700853c <.Lanon.7c19cafb457940626ba1c92cb815c50d.50>:
 700853c:	76a0                	flw	fs0,104(a3)
 700853e:	0700                	add	s0,sp,896
 7008540:	0020                	add	s0,sp,8
 7008542:	0000                	unimp
 7008544:	8528                	.insn	2, 0x8528
 7008546:	0700                	add	s0,sp,896
 7008548:	0012                	c.slli	zero,0x4
	...

0700854c <.Lanon.7c19cafb457940626ba1c92cb815c50d.56>:
 700854c:	616d                	add	sp,sp,240
 700854e:	6374                	flw	fa3,68(a4)
 7008550:	6568                	flw	fa0,76(a0)
 7008552:	          	csrrs	sp,pmpaddr35,s10

07008553 <.Lanon.7c19cafb457940626ba1c92cb815c50d.57>:
 7008553:	3d21                	jal	700836b <.Lanon.60cf129b6b8622904f5ffa0a3393ba31.34+0xf>

07008555 <.Lanon.7c19cafb457940626ba1c92cb815c50d.58>:
 7008555:	3d3d                	jal	7008393 <anon.7d99c8ca23b35441d815b402e02ae6ac.22.llvm.1518608519765115567+0xb>

07008557 <.Lanon.7c19cafb457940626ba1c92cb815c50d.59>:
 7008557:	7361                	lui	t1,0xffff8
 7008559:	74726573          	csrrs	a0,mseccfg,4
 700855d:	6f69                	lui	t5,0x1a
 700855f:	206e                	fld	ft0,216(sp)
 7008561:	6166                	flw	ft2,88(sp)
 7008563:	6c69                	lui	s8,0x1a
 7008565:	6465                	lui	s0,0x19
 7008567:	203a                	fld	ft0,392(sp)
 7008569:	2860                	fld	fs0,208(s0)
 700856b:	656c                	flw	fa1,76(a0)
 700856d:	7466                	flw	fs0,120(sp)
 700856f:	                	fld	fs0,64(s0)

07008570 <.Lanon.7c19cafb457940626ba1c92cb815c50d.60>:
 7008570:	7220                	flw	fs0,96(a2)
 7008572:	6769                	lui	a4,0x1a
 7008574:	7468                	flw	fa0,108(s0)
 7008576:	6029                	c.lui	zero,0xa
 7008578:	200a                	fld	ft0,128(sp)
 700857a:	6c20                	flw	fs0,88(s0)
 700857c:	6665                	lui	a2,0x19
 700857e:	3a74                	fld	fa3,240(a2)
 7008580:	6020                	flw	fs0,64(s0)

07008582 <.Lanon.7c19cafb457940626ba1c92cb815c50d.61>:
 7008582:	2c60                	fld	fs0,216(s0)
 7008584:	200a                	fld	ft0,128(sp)
 7008586:	6972                	flw	fs2,28(sp)
 7008588:	3a746867          	.insn	4, 0x3a746867
 700858c:	6020                	flw	fs0,64(s0)

0700858e <.Lanon.7c19cafb457940626ba1c92cb815c50d.62>:
 700858e:	3a60                	fld	fs0,240(a2)
 7008590:	0020                	add	s0,sp,8
	...

07008594 <.Lanon.7c19cafb457940626ba1c92cb815c50d.63>:
 7008594:	07008557          	.insn	4, 0x07008557
 7008598:	0019                	c.nop	6
 700859a:	0000                	unimp
 700859c:	8570                	.insn	2, 0x8570
 700859e:	0700                	add	s0,sp,896
 70085a0:	0012                	c.slli	zero,0x4
 70085a2:	0000                	unimp
 70085a4:	8582                	jr	a1
 70085a6:	0700                	add	s0,sp,896
 70085a8:	000c                	.insn	2, 0x000c
 70085aa:	0000                	unimp
 70085ac:	858e                	mv	a1,gp
 70085ae:	0700                	add	s0,sp,896
 70085b0:	00000003          	lb	zero,0(zero) # 0 <__bss_size-0x88>

070085b4 <.Lanon.7c19cafb457940626ba1c92cb815c50d.64>:
 70085b4:	0060                	add	s0,sp,12
	...

070085b8 <.Lanon.7c19cafb457940626ba1c92cb815c50d.65>:
 70085b8:	07008557          	.insn	4, 0x07008557
 70085bc:	0019                	c.nop	6
 70085be:	0000                	unimp
 70085c0:	8570                	.insn	2, 0x8570
 70085c2:	0700                	add	s0,sp,896
 70085c4:	0012                	c.slli	zero,0x4
 70085c6:	0000                	unimp
 70085c8:	8582                	jr	a1
 70085ca:	0700                	add	s0,sp,896
 70085cc:	000c                	.insn	2, 0x000c
 70085ce:	0000                	unimp
 70085d0:	85b4                	.insn	2, 0x85b4
 70085d2:	0700                	add	s0,sp,896
 70085d4:	0001                	nop
	...

070085d8 <.Lanon.7c19cafb457940626ba1c92cb815c50d.66>:
 70085d8:	203a                	fld	ft0,392(sp)
	...

070085dc <.Lanon.7c19cafb457940626ba1c92cb815c50d.67>:
 70085dc:	8518                	.insn	2, 0x8518
 70085de:	0700                	add	s0,sp,896
 70085e0:	0000                	unimp
 70085e2:	0000                	unimp
 70085e4:	85d8                	.insn	2, 0x85d8
 70085e6:	0700                	add	s0,sp,896
 70085e8:	0002                	c.slli64	zero
	...

070085ec <.Lanon.7c19cafb457940626ba1c92cb815c50d.113>:
 70085ec:	614c                	flw	fa1,4(a0)
 70085ee:	6f79                	lui	t5,0x1e
 70085f0:	7475                	lui	s0,0xffffd
 70085f2:	7245                	lui	tp,0xffff1
 70085f4:	6f72                	flw	ft10,28(sp)
 70085f6:	Address 0x70085f6 is out of bounds.


Disassembly of section .data:

00080000 <_ZN19risc0_zkvm_platform7syscall20HEAP_WORDS_REMAINING17hd21b26ffaffc1daaE.0>:
   80000:	0000                	unimp
   80002:	0140                	add	s0,sp,132

00080004 <_ZN3std10sys_common11thread_info11THREAD_INFO7__getit5__KEY17h0b9e5aa5a3bca13aE.llvm.9006096014459121332>:
   80004:	0000                	unimp
   80006:	0000                	unimp
   80008:	40f4                	lw	a3,68(s1)
   8000a:	0700                	add	s0,sp,896

0008000c <_ZN3std2io5stdio14OUTPUT_CAPTURE7__getit5__KEY17hbc01fe8159105c8aE>:
   8000c:	0000                	unimp
   8000e:	0000                	unimp
   80010:	403c                	lw	a5,64(s0)
   80012:	0700                	add	s0,sp,896

00080014 <_ZN3std11collections4hash3map11RandomState3new4KEYS7__getit5__KEY17h2dfa0e6f021780b6E>:
   80014:	0000                	unimp
   80016:	0000                	unimp
   80018:	3fc8                	fld	fa0,184(a5)
   8001a:	0700                	add	s0,sp,896

0008001c <_ZN3std9panicking11panic_count17LOCAL_PANIC_COUNT7__getit5__KEY17he327123382402121E>:
   8001c:	0000                	unimp
   8001e:	0000                	unimp
   80020:	3f54                	fld	fa3,184(a4)
   80022:	0700                	add	s0,sp,896

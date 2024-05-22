
.//Obj/Release_APT32F102.elf:     file format elf32-csky-little


Disassembly of section .text:

00000000 <vector_table>:
       0:	0000010c 	.long	0x0000010c
       4:	000028d2 	.long	0x000028d2
       8:	000028c2 	.long	0x000028c2
       c:	00000184 	.long	0x00000184
      10:	000028ca 	.long	0x000028ca
      14:	00002888 	.long	0x00002888
      18:	00000184 	.long	0x00000184
      1c:	000028ba 	.long	0x000028ba
      20:	000028b2 	.long	0x000028b2
      24:	00000184 	.long	0x00000184
      28:	00000184 	.long	0x00000184
      2c:	00000184 	.long	0x00000184
      30:	00000184 	.long	0x00000184
      34:	00000184 	.long	0x00000184
      38:	00000184 	.long	0x00000184
      3c:	00000184 	.long	0x00000184
      40:	000028aa 	.long	0x000028aa
      44:	000028a2 	.long	0x000028a2
      48:	0000289a 	.long	0x0000289a
      4c:	00002892 	.long	0x00002892
      50:	00000184 	.long	0x00000184
      54:	00000184 	.long	0x00000184
      58:	00000184 	.long	0x00000184
      5c:	00000184 	.long	0x00000184
      60:	00000184 	.long	0x00000184
      64:	00000184 	.long	0x00000184
      68:	00000184 	.long	0x00000184
      6c:	00000184 	.long	0x00000184
      70:	00000184 	.long	0x00000184
      74:	00000184 	.long	0x00000184
      78:	00000184 	.long	0x00000184
      7c:	0000288a 	.long	0x0000288a
      80:	000028ea 	.long	0x000028ea
      84:	00001fb8 	.long	0x00001fb8
      88:	000020b0 	.long	0x000020b0
      8c:	00002118 	.long	0x00002118
      90:	00002180 	.long	0x00002180
      94:	00000184 	.long	0x00000184
      98:	00002328 	.long	0x00002328
      9c:	0000266c 	.long	0x0000266c
      a0:	0000269c 	.long	0x0000269c
      a4:	0000235c 	.long	0x0000235c
      a8:	00000184 	.long	0x00000184
      ac:	00000184 	.long	0x00000184
      b0:	000023dc 	.long	0x000023dc
      b4:	0000244c 	.long	0x0000244c
      b8:	00002488 	.long	0x00002488
      bc:	000024c4 	.long	0x000024c4
      c0:	00000184 	.long	0x00000184
      c4:	000028e2 	.long	0x000028e2
      c8:	00000184 	.long	0x00000184
      cc:	00002500 	.long	0x00002500
      d0:	000025e8 	.long	0x000025e8
      d4:	000026cc 	.long	0x000026cc
      d8:	00002714 	.long	0x00002714
      dc:	00002770 	.long	0x00002770
      e0:	000028da 	.long	0x000028da
      e4:	00002d3c 	.long	0x00002d3c
      e8:	000027d0 	.long	0x000027d0
      ec:	00000184 	.long	0x00000184
      f0:	00002804 	.long	0x00002804
      f4:	00002840 	.long	0x00002840
      f8:	00000184 	.long	0x00000184
      fc:	00000184 	.long	0x00000184
     100:	55aa0005 	.long	0x55aa0005
	...

0000010c <__start>:
//  .long __start
__start:

	
  //initialize all registers
  movi r0, 0
     10c:	3000      	movi      	r0, 0
  movi r1, 0
     10e:	3100      	movi      	r1, 0
  movi r2, 0
     110:	3200      	movi      	r2, 0
  movi r3, 0
     112:	3300      	movi      	r3, 0
  movi r4, 0
     114:	3400      	movi      	r4, 0
  movi r5, 0
     116:	3500      	movi      	r5, 0
  movi r6, 0
     118:	3600      	movi      	r6, 0
  movi r7, 0
     11a:	3700      	movi      	r7, 0
  //movi r13, 0
  //movi r14, 0
  //movi r15, 0

//set VBR
  lrw r2, vector_table
     11c:	105b      	lrw      	r2, 0x0	// 188 <DummyHandler+0x4>
  mtcr r2, cr<1,0>
     11e:	c0026421 	mtcr      	r2, cr<1, 0>

//enable EE bit of psr
  mfcr r2, cr<0,0>
     122:	c0006022 	mfcr      	r2, cr<0, 0>
  bseti r2, r2, 8
     126:	3aa8      	bseti      	r2, 8
  mtcr r2, cr<0,0>
     128:	c0026420 	mtcr      	r2, cr<0, 0>
//  st.w    r2, (r1,0x4)
//  movi    r2, 0x1
//  st.w    r2, (r1,0x0)

//disable power peak 
  lrw     r1, 0xe000ef90
     12c:	1038      	lrw      	r1, 0xe000ef90	// 18c <DummyHandler+0x8>
  movi    r2, 0x0
     12e:	3200      	movi      	r2, 0
  st.w    r2, (r1, 0x0)
     130:	b140      	st.w      	r2, (r1, 0x0)



//initialize kernel stack
  lrw  r7, __kernel_stack
     132:	10f8      	lrw      	r7, 0x20000ff8	// 190 <DummyHandler+0xc>
  mov r14,r7
     134:	6f9f      	mov      	r14, r7
  subi r6,r7,0x4
     136:	5fcf      	subi      	r6, r7, 4

  //lrw  r3, 0x40
  lrw  r3, 0x04
     138:	3304      	movi      	r3, 4
	
  subu r4, r7, r3
     13a:	5f8d      	subu      	r4, r7, r3
  lrw  r5, 0x0
     13c:	3500      	movi      	r5, 0

0000013e <INIT_KERLE_STACK>:
INIT_KERLE_STACK:
  addi r4, 0x4
     13e:	2403      	addi      	r4, 4
  st.w r5, (r4)
     140:	b4a0      	st.w      	r5, (r4, 0x0)
  //cmphs r7, r4
  cmphs r6, r4
     142:	6518      	cmphs      	r6, r4
  bt  INIT_KERLE_STACK
     144:	0bfd      	bt      	0x13e	// 13e <INIT_KERLE_STACK>

00000146 <__to_main>:
        
__to_main:
  lrw r0,__main
     146:	1014      	lrw      	r0, 0x1a50	// 194 <DummyHandler+0x10>
  jsr r0
     148:	7bc1      	jsr      	r0
  mov r0, r0
     14a:	6c03      	mov      	r0, r0
  mov r0, r0
     14c:	6c03      	mov      	r0, r0


  
  lrw r15, __exit
     14e:	ea8f0013 	lrw      	r15, 0x160	// 198 <DummyHandler+0x14>
  lrw r0,main
     152:	1013      	lrw      	r0, 0x2990	// 19c <DummyHandler+0x18>
  jmp r0
     154:	7800      	jmp      	r0
  mov r0, r0
     156:	6c03      	mov      	r0, r0
  mov r0, r0
     158:	6c03      	mov      	r0, r0
  mov r0, r0
     15a:	6c03      	mov      	r0, r0
  mov r0, r0
     15c:	6c03      	mov      	r0, r0
  mov r0, r0
     15e:	6c03      	mov      	r0, r0

00000160 <__exit>:

.export __exit
__exit:

  lrw r4, 0x20003000
     160:	1090      	lrw      	r4, 0x20003000	// 1a0 <DummyHandler+0x1c>
  //lrw r5, 0x0
  mov r5, r0
     162:	6d43      	mov      	r5, r0
  st.w r5, (r4)
     164:	b4a0      	st.w      	r5, (r4, 0x0)

  mfcr r1, cr<0,0>
     166:	c0006021 	mfcr      	r1, cr<0, 0>
  lrw  r1, 0xFFFF
     16a:	102f      	lrw      	r1, 0xffff	// 1a4 <DummyHandler+0x20>
  mtcr r1, cr<11,0>
     16c:	c001642b 	mtcr      	r1, cr<11, 0>
  lrw     r1, 0xFFF
     170:	102e      	lrw      	r1, 0xfff	// 1a8 <DummyHandler+0x24>
  movi    r0, 0x0
     172:	3000      	movi      	r0, 0
  st      r1, (r0)
     174:	b020      	st.w      	r1, (r0, 0x0)

00000176 <__fail>:

.export __fail
__fail:
  lrw  r1, 0xEEEE
     176:	102e      	lrw      	r1, 0xeeee	// 1ac <DummyHandler+0x28>
  mtcr r1, cr<11,0>
     178:	c001642b 	mtcr      	r1, cr<11, 0>
  lrw     r1, 0xEEE
     17c:	102d      	lrw      	r1, 0xeee	// 1b0 <DummyHandler+0x2c>
  movi    r0, 0x0
     17e:	3000      	movi      	r0, 0
  st      r1, (r0)
     180:	b020      	st.w      	r1, (r0, 0x0)

00000182 <__dummy>:

__dummy:
  br      __fail
     182:	07fa      	br      	0x176	// 176 <__fail>

00000184 <DummyHandler>:

.export DummyHandler
DummyHandler:
  br      __fail
     184:	07f9      	br      	0x176	// 176 <__fail>
     186:	0000      	.short	0x0000
     188:	00000000 	.long	0x00000000
     18c:	e000ef90 	.long	0xe000ef90
     190:	20000ff8 	.long	0x20000ff8
     194:	00001a50 	.long	0x00001a50
     198:	00000160 	.long	0x00000160
     19c:	00002990 	.long	0x00002990
     1a0:	20003000 	.long	0x20003000
     1a4:	0000ffff 	.long	0x0000ffff
     1a8:	00000fff 	.long	0x00000fff
     1ac:	0000eeee 	.long	0x0000eeee
     1b0:	00000eee 	.long	0x00000eee

000001b4 <__GI_pow>:
     1b4:	14d4      	push      	r4-r7, r15
     1b6:	142d      	subi      	r14, r14, 52
     1b8:	b860      	st.w      	r3, (r14, 0x0)
     1ba:	4361      	lsli      	r3, r3, 1
     1bc:	4b81      	lsri      	r4, r3, 1
     1be:	b842      	st.w      	r2, (r14, 0x8)
     1c0:	6c90      	or      	r2, r4
     1c2:	3a40      	cmpnei      	r2, 0
     1c4:	6dc3      	mov      	r7, r0
     1c6:	6d87      	mov      	r6, r1
     1c8:	0803      	bt      	0x1ce	// 1ce <__GI_pow+0x1a>
     1ca:	e8000462 	br      	0xa8e	// a8e <__GI_pow+0x8da>
     1ce:	41a1      	lsli      	r5, r1, 1
     1d0:	4da1      	lsri      	r5, r5, 1
     1d2:	0055      	lrw      	r2, 0x7ff00000	// 578 <__GI_pow+0x3c4>
     1d4:	6549      	cmplt      	r2, r5
     1d6:	080c      	bt      	0x1ee	// 1ee <__GI_pow+0x3a>
     1d8:	6496      	cmpne      	r5, r2
     1da:	0803      	bt      	0x1e0	// 1e0 <__GI_pow+0x2c>
     1dc:	3840      	cmpnei      	r0, 0
     1de:	0808      	bt      	0x1ee	// 1ee <__GI_pow+0x3a>
     1e0:	6509      	cmplt      	r2, r4
     1e2:	0806      	bt      	0x1ee	// 1ee <__GI_pow+0x3a>
     1e4:	6492      	cmpne      	r4, r2
     1e6:	080e      	bt      	0x202	// 202 <__GI_pow+0x4e>
     1e8:	9802      	ld.w      	r0, (r14, 0x8)
     1ea:	3840      	cmpnei      	r0, 0
     1ec:	0c0b      	bf      	0x202	// 202 <__GI_pow+0x4e>
     1ee:	9842      	ld.w      	r2, (r14, 0x8)
     1f0:	9860      	ld.w      	r3, (r14, 0x0)
     1f2:	6c1f      	mov      	r0, r7
     1f4:	6c5b      	mov      	r1, r6
     1f6:	e0000713 	bsr      	0x101c	// 101c <__adddf3>
     1fa:	6d03      	mov      	r4, r0
     1fc:	6c13      	mov      	r0, r4
     1fe:	140d      	addi      	r14, r14, 52
     200:	1494      	pop      	r4-r7, r15
     202:	3edf      	btsti      	r6, 31
     204:	0c51      	bf      	0x2a6	// 2a6 <__GI_pow+0xf2>
     206:	0121      	lrw      	r1, 0x43400000	// 57c <__GI_pow+0x3c8>
     208:	2900      	subi      	r1, 1
     20a:	6505      	cmplt      	r1, r4
     20c:	084b      	bt      	0x2a2	// 2a2 <__GI_pow+0xee>
     20e:	0162      	lrw      	r3, 0x3ff00000	// 580 <__GI_pow+0x3cc>
     210:	2b00      	subi      	r3, 1
     212:	650d      	cmplt      	r3, r4
     214:	0c49      	bf      	0x2a6	// 2a6 <__GI_pow+0xf2>
     216:	5454      	asri      	r2, r4, 20
     218:	0104      	lrw      	r0, 0xfffffc01	// 584 <__GI_pow+0x3d0>
     21a:	6080      	addu      	r2, r0
     21c:	3a34      	cmplti      	r2, 21
     21e:	0821      	bt      	0x260	// 260 <__GI_pow+0xac>
     220:	3334      	movi      	r3, 52
     222:	60ca      	subu      	r3, r2
     224:	9842      	ld.w      	r2, (r14, 0x8)
     226:	708d      	lsr      	r2, r3
     228:	6c4b      	mov      	r1, r2
     22a:	704c      	lsl      	r1, r3
     22c:	9802      	ld.w      	r0, (r14, 0x8)
     22e:	6442      	cmpne      	r0, r1
     230:	083b      	bt      	0x2a6	// 2a6 <__GI_pow+0xf2>
     232:	3101      	movi      	r1, 1
     234:	6884      	and      	r2, r1
     236:	3302      	movi      	r3, 2
     238:	5b49      	subu      	r2, r3, r2
     23a:	9802      	ld.w      	r0, (r14, 0x8)
     23c:	3840      	cmpnei      	r0, 0
     23e:	b841      	st.w      	r2, (r14, 0x4)
     240:	0862      	bt      	0x304	// 304 <__GI_pow+0x150>
     242:	0151      	lrw      	r2, 0x7ff00000	// 578 <__GI_pow+0x3c4>
     244:	6492      	cmpne      	r4, r2
     246:	081f      	bt      	0x284	// 284 <__GI_pow+0xd0>
     248:	012f      	lrw      	r1, 0xc0100000	// 588 <__GI_pow+0x3d4>
     24a:	6054      	addu      	r1, r5
     24c:	6dc4      	or      	r7, r1
     24e:	3f40      	cmpnei      	r7, 0
     250:	082d      	bt      	0x2aa	// 2aa <__GI_pow+0xf6>
     252:	9860      	ld.w      	r3, (r14, 0x0)
     254:	3200      	movi      	r2, 0
     256:	6c4f      	mov      	r1, r3
     258:	3000      	movi      	r0, 0
     25a:	e00006f9 	bsr      	0x104c	// 104c <__subdf3>
     25e:	07ce      	br      	0x1fa	// 1fa <__GI_pow+0x46>
     260:	9822      	ld.w      	r1, (r14, 0x8)
     262:	3940      	cmpnei      	r1, 0
     264:	084e      	bt      	0x300	// 300 <__GI_pow+0x14c>
     266:	3114      	movi      	r1, 20
     268:	604a      	subu      	r1, r2
     26a:	6c93      	mov      	r2, r4
     26c:	7086      	asr      	r2, r1
     26e:	6c0b      	mov      	r0, r2
     270:	7004      	lsl      	r0, r1
     272:	6412      	cmpne      	r4, r0
     274:	0c03      	bf      	0x27a	// 27a <__GI_pow+0xc6>
     276:	e8000471 	br      	0xb58	// b58 <__GI_pow+0x9a4>
     27a:	3101      	movi      	r1, 1
     27c:	6884      	and      	r2, r1
     27e:	3002      	movi      	r0, 2
     280:	5869      	subu      	r3, r0, r2
     282:	b861      	st.w      	r3, (r14, 0x4)
     284:	0220      	lrw      	r1, 0x3ff00000	// 580 <__GI_pow+0x3cc>
     286:	6452      	cmpne      	r4, r1
     288:	0825      	bt      	0x2d2	// 2d2 <__GI_pow+0x11e>
     28a:	9880      	ld.w      	r4, (r14, 0x0)
     28c:	3cdf      	btsti      	r4, 31
     28e:	0803      	bt      	0x294	// 294 <__GI_pow+0xe0>
     290:	e8000407 	br      	0xa9e	// a9e <__GI_pow+0x8ea>
     294:	6c9f      	mov      	r2, r7
     296:	6cdb      	mov      	r3, r6
     298:	3000      	movi      	r0, 0
     29a:	0225      	lrw      	r1, 0x3ff00000	// 580 <__GI_pow+0x3cc>
     29c:	e000080e 	bsr      	0x12b8	// 12b8 <__divdf3>
     2a0:	07ad      	br      	0x1fa	// 1fa <__GI_pow+0x46>
     2a2:	3202      	movi      	r2, 2
     2a4:	07cb      	br      	0x23a	// 23a <__GI_pow+0x86>
     2a6:	3200      	movi      	r2, 0
     2a8:	07c9      	br      	0x23a	// 23a <__GI_pow+0x86>
     2aa:	0269      	lrw      	r3, 0x3ff00000	// 580 <__GI_pow+0x3cc>
     2ac:	2b00      	subi      	r3, 1
     2ae:	654d      	cmplt      	r3, r5
     2b0:	9800      	ld.w      	r0, (r14, 0x0)
     2b2:	0c08      	bf      	0x2c2	// 2c2 <__GI_pow+0x10e>
     2b4:	38df      	btsti      	r0, 31
     2b6:	0803      	bt      	0x2bc	// 2bc <__GI_pow+0x108>
     2b8:	e80003ef 	br      	0xa96	// a96 <__GI_pow+0x8e2>
     2bc:	3400      	movi      	r4, 0
     2be:	3100      	movi      	r1, 0
     2c0:	079e      	br      	0x1fc	// 1fc <__GI_pow+0x48>
     2c2:	38df      	btsti      	r0, 31
     2c4:	0ffc      	bf      	0x2bc	// 2bc <__GI_pow+0x108>
     2c6:	3400      	movi      	r4, 0
     2c8:	6c43      	mov      	r1, r0
     2ca:	3280      	movi      	r2, 128
     2cc:	4278      	lsli      	r3, r2, 24
     2ce:	604c      	addu      	r1, r3
     2d0:	0796      	br      	0x1fc	// 1fc <__GI_pow+0x48>
     2d2:	3380      	movi      	r3, 128
     2d4:	4317      	lsli      	r0, r3, 23
     2d6:	9840      	ld.w      	r2, (r14, 0x0)
     2d8:	640a      	cmpne      	r2, r0
     2da:	0808      	bt      	0x2ea	// 2ea <__GI_pow+0x136>
     2dc:	6c9f      	mov      	r2, r7
     2de:	6cdb      	mov      	r3, r6
     2e0:	6c1f      	mov      	r0, r7
     2e2:	6c5b      	mov      	r1, r6
     2e4:	e00006d0 	bsr      	0x1084	// 1084 <__muldf3>
     2e8:	0789      	br      	0x1fa	// 1fa <__GI_pow+0x46>
     2ea:	0276      	lrw      	r3, 0x3fe00000	// 58c <__GI_pow+0x3d8>
     2ec:	9820      	ld.w      	r1, (r14, 0x0)
     2ee:	64c6      	cmpne      	r1, r3
     2f0:	080a      	bt      	0x304	// 304 <__GI_pow+0x150>
     2f2:	3edf      	btsti      	r6, 31
     2f4:	0808      	bt      	0x304	// 304 <__GI_pow+0x150>
     2f6:	6c1f      	mov      	r0, r7
     2f8:	6c5b      	mov      	r1, r6
     2fa:	e0000445 	bsr      	0xb84	// b84 <__GI_sqrt>
     2fe:	077e      	br      	0x1fa	// 1fa <__GI_pow+0x46>
     300:	3300      	movi      	r3, 0
     302:	b861      	st.w      	r3, (r14, 0x4)
     304:	6c1f      	mov      	r0, r7
     306:	6c5b      	mov      	r1, r6
     308:	b883      	st.w      	r4, (r14, 0xc)
     30a:	e000042a 	bsr      	0xb5e	// b5e <__GI_fabs>
     30e:	3f40      	cmpnei      	r7, 0
     310:	6d03      	mov      	r4, r0
     312:	9863      	ld.w      	r3, (r14, 0xc)
     314:	0826      	bt      	0x360	// 360 <__GI_pow+0x1ac>
     316:	3d40      	cmpnei      	r5, 0
     318:	0c05      	bf      	0x322	// 322 <__GI_pow+0x16e>
     31a:	4642      	lsli      	r2, r6, 2
     31c:	0302      	lrw      	r0, 0xffc00000	// 590 <__GI_pow+0x3dc>
     31e:	640a      	cmpne      	r2, r0
     320:	0820      	bt      	0x360	// 360 <__GI_pow+0x1ac>
     322:	9840      	ld.w      	r2, (r14, 0x0)
     324:	3adf      	btsti      	r2, 31
     326:	0c08      	bf      	0x336	// 336 <__GI_pow+0x182>
     328:	6c93      	mov      	r2, r4
     32a:	6cc7      	mov      	r3, r1
     32c:	3000      	movi      	r0, 0
     32e:	032a      	lrw      	r1, 0x3ff00000	// 580 <__GI_pow+0x3cc>
     330:	e00007c4 	bsr      	0x12b8	// 12b8 <__divdf3>
     334:	6d03      	mov      	r4, r0
     336:	3edf      	btsti      	r6, 31
     338:	0f62      	bf      	0x1fc	// 1fc <__GI_pow+0x48>
     33a:	036b      	lrw      	r3, 0xc0100000	// 588 <__GI_pow+0x3d4>
     33c:	614c      	addu      	r5, r3
     33e:	9801      	ld.w      	r0, (r14, 0x4)
     340:	6d40      	or      	r5, r0
     342:	3d40      	cmpnei      	r5, 0
     344:	080a      	bt      	0x358	// 358 <__GI_pow+0x1a4>
     346:	6c93      	mov      	r2, r4
     348:	6cc7      	mov      	r3, r1
     34a:	6c0b      	mov      	r0, r2
     34c:	6c4f      	mov      	r1, r3
     34e:	e000067f 	bsr      	0x104c	// 104c <__subdf3>
     352:	6c83      	mov      	r2, r0
     354:	6cc7      	mov      	r3, r1
     356:	07a3      	br      	0x29c	// 29c <__GI_pow+0xe8>
     358:	9841      	ld.w      	r2, (r14, 0x4)
     35a:	3a41      	cmpnei      	r2, 1
     35c:	0b50      	bt      	0x1fc	// 1fc <__GI_pow+0x48>
     35e:	07b6      	br      	0x2ca	// 2ca <__GI_pow+0x116>
     360:	4e5f      	lsri      	r2, r6, 31
     362:	2a00      	subi      	r2, 1
     364:	b847      	st.w      	r2, (r14, 0x1c)
     366:	9807      	ld.w      	r0, (r14, 0x1c)
     368:	9841      	ld.w      	r2, (r14, 0x4)
     36a:	6c80      	or      	r2, r0
     36c:	3a40      	cmpnei      	r2, 0
     36e:	0804      	bt      	0x376	// 376 <__GI_pow+0x1c2>
     370:	6c9f      	mov      	r2, r7
     372:	6cdb      	mov      	r3, r6
     374:	07eb      	br      	0x34a	// 34a <__GI_pow+0x196>
     376:	0357      	lrw      	r2, 0x41e00000	// 594 <__GI_pow+0x3e0>
     378:	64c9      	cmplt      	r2, r3
     37a:	0cbf      	bf      	0x4f8	// 4f8 <__GI_pow+0x344>
     37c:	0358      	lrw      	r2, 0x43f00000	// 598 <__GI_pow+0x3e4>
     37e:	64c9      	cmplt      	r2, r3
     380:	037f      	lrw      	r3, 0x3ff00000	// 580 <__GI_pow+0x3cc>
     382:	0c0c      	bf      	0x39a	// 39a <__GI_pow+0x1e6>
     384:	2b00      	subi      	r3, 1
     386:	654d      	cmplt      	r3, r5
     388:	080f      	bt      	0x3a6	// 3a6 <__GI_pow+0x1f2>
     38a:	9820      	ld.w      	r1, (r14, 0x0)
     38c:	39df      	btsti      	r1, 31
     38e:	0f97      	bf      	0x2bc	// 2bc <__GI_pow+0x108>
     390:	035c      	lrw      	r2, 0x8800759c	// 59c <__GI_pow+0x3e8>
     392:	037b      	lrw      	r3, 0x7e37e43c	// 5a0 <__GI_pow+0x3ec>
     394:	6c0b      	mov      	r0, r2
     396:	6c4f      	mov      	r1, r3
     398:	07a6      	br      	0x2e4	// 2e4 <__GI_pow+0x130>
     39a:	2b01      	subi      	r3, 2
     39c:	654d      	cmplt      	r3, r5
     39e:	0ff6      	bf      	0x38a	// 38a <__GI_pow+0x1d6>
     3a0:	1318      	lrw      	r0, 0x3ff00000	// 580 <__GI_pow+0x3cc>
     3a2:	6541      	cmplt      	r0, r5
     3a4:	0c05      	bf      	0x3ae	// 3ae <__GI_pow+0x1fa>
     3a6:	9800      	ld.w      	r0, (r14, 0x0)
     3a8:	3820      	cmplti      	r0, 1
     3aa:	0ff3      	bf      	0x390	// 390 <__GI_pow+0x1dc>
     3ac:	0788      	br      	0x2bc	// 2bc <__GI_pow+0x108>
     3ae:	3200      	movi      	r2, 0
     3b0:	1374      	lrw      	r3, 0x3ff00000	// 580 <__GI_pow+0x3cc>
     3b2:	6c1f      	mov      	r0, r7
     3b4:	6c5b      	mov      	r1, r6
     3b6:	36c0      	movi      	r6, 192
     3b8:	e000064a 	bsr      	0x104c	// 104c <__subdf3>
     3bc:	4657      	lsli      	r2, r6, 23
     3be:	137a      	lrw      	r3, 0x3ff71547	// 5a4 <__GI_pow+0x3f0>
     3c0:	6d43      	mov      	r5, r0
     3c2:	6d07      	mov      	r4, r1
     3c4:	e0000660 	bsr      	0x1084	// 1084 <__muldf3>
     3c8:	6dc3      	mov      	r7, r0
     3ca:	6d87      	mov      	r6, r1
     3cc:	1357      	lrw      	r2, 0xf85ddf44	// 5a8 <__GI_pow+0x3f4>
     3ce:	1378      	lrw      	r3, 0x3e54ae0b	// 5ac <__GI_pow+0x3f8>
     3d0:	6c17      	mov      	r0, r5
     3d2:	6c53      	mov      	r1, r4
     3d4:	e0000658 	bsr      	0x1084	// 1084 <__muldf3>
     3d8:	b803      	st.w      	r0, (r14, 0xc)
     3da:	b824      	st.w      	r1, (r14, 0x10)
     3dc:	3200      	movi      	r2, 0
     3de:	1375      	lrw      	r3, 0x3fd00000	// 5b0 <__GI_pow+0x3fc>
     3e0:	6c17      	mov      	r0, r5
     3e2:	6c53      	mov      	r1, r4
     3e4:	e0000650 	bsr      	0x1084	// 1084 <__muldf3>
     3e8:	6c83      	mov      	r2, r0
     3ea:	6cc7      	mov      	r3, r1
     3ec:	1312      	lrw      	r0, 0x55555555	// 5b4 <__GI_pow+0x400>
     3ee:	1333      	lrw      	r1, 0x3fd55555	// 5b8 <__GI_pow+0x404>
     3f0:	e000062e 	bsr      	0x104c	// 104c <__subdf3>
     3f4:	6c97      	mov      	r2, r5
     3f6:	6cd3      	mov      	r3, r4
     3f8:	e0000646 	bsr      	0x1084	// 1084 <__muldf3>
     3fc:	6c83      	mov      	r2, r0
     3fe:	6cc7      	mov      	r3, r1
     400:	3000      	movi      	r0, 0
     402:	1323      	lrw      	r1, 0x3fe00000	// 58c <__GI_pow+0x3d8>
     404:	e0000624 	bsr      	0x104c	// 104c <__subdf3>
     408:	b805      	st.w      	r0, (r14, 0x14)
     40a:	6c97      	mov      	r2, r5
     40c:	6cd3      	mov      	r3, r4
     40e:	b826      	st.w      	r1, (r14, 0x18)
     410:	6c17      	mov      	r0, r5
     412:	6c53      	mov      	r1, r4
     414:	e0000638 	bsr      	0x1084	// 1084 <__muldf3>
     418:	6c83      	mov      	r2, r0
     41a:	6cc7      	mov      	r3, r1
     41c:	9805      	ld.w      	r0, (r14, 0x14)
     41e:	9826      	ld.w      	r1, (r14, 0x18)
     420:	e0000632 	bsr      	0x1084	// 1084 <__muldf3>
     424:	1346      	lrw      	r2, 0x652b82fe	// 5bc <__GI_pow+0x408>
     426:	1360      	lrw      	r3, 0x3ff71547	// 5a4 <__GI_pow+0x3f0>
     428:	e000062e 	bsr      	0x1084	// 1084 <__muldf3>
     42c:	6c83      	mov      	r2, r0
     42e:	6cc7      	mov      	r3, r1
     430:	9803      	ld.w      	r0, (r14, 0xc)
     432:	9824      	ld.w      	r1, (r14, 0x10)
     434:	e000060c 	bsr      	0x104c	// 104c <__subdf3>
     438:	6c83      	mov      	r2, r0
     43a:	6cc7      	mov      	r3, r1
     43c:	6d43      	mov      	r5, r0
     43e:	6d07      	mov      	r4, r1
     440:	6c1f      	mov      	r0, r7
     442:	6c5b      	mov      	r1, r6
     444:	e00005ec 	bsr      	0x101c	// 101c <__adddf3>
     448:	6c9f      	mov      	r2, r7
     44a:	6cdb      	mov      	r3, r6
     44c:	3000      	movi      	r0, 0
     44e:	b823      	st.w      	r1, (r14, 0xc)
     450:	e00005fe 	bsr      	0x104c	// 104c <__subdf3>
     454:	6c83      	mov      	r2, r0
     456:	6cc7      	mov      	r3, r1
     458:	6c17      	mov      	r0, r5
     45a:	6c53      	mov      	r1, r4
     45c:	e00005f8 	bsr      	0x104c	// 104c <__subdf3>
     460:	6d07      	mov      	r4, r1
     462:	9821      	ld.w      	r1, (r14, 0x4)
     464:	2900      	subi      	r1, 1
     466:	9847      	ld.w      	r2, (r14, 0x1c)
     468:	6c48      	or      	r1, r2
     46a:	3940      	cmpnei      	r1, 0
     46c:	6d43      	mov      	r5, r0
     46e:	0c02      	bf      	0x472	// 472 <__GI_pow+0x2be>
     470:	05f0      	br      	0x850	// 850 <__GI_pow+0x69c>
     472:	1274      	lrw      	r3, 0xbff00000	// 5c0 <__GI_pow+0x40c>
     474:	b861      	st.w      	r3, (r14, 0x4)
     476:	9860      	ld.w      	r3, (r14, 0x0)
     478:	3200      	movi      	r2, 0
     47a:	9802      	ld.w      	r0, (r14, 0x8)
     47c:	6c4f      	mov      	r1, r3
     47e:	e00005e7 	bsr      	0x104c	// 104c <__subdf3>
     482:	9863      	ld.w      	r3, (r14, 0xc)
     484:	3200      	movi      	r2, 0
     486:	e00005ff 	bsr      	0x1084	// 1084 <__muldf3>
     48a:	6dc3      	mov      	r7, r0
     48c:	6d87      	mov      	r6, r1
     48e:	9842      	ld.w      	r2, (r14, 0x8)
     490:	9860      	ld.w      	r3, (r14, 0x0)
     492:	6c17      	mov      	r0, r5
     494:	6c53      	mov      	r1, r4
     496:	e00005f7 	bsr      	0x1084	// 1084 <__muldf3>
     49a:	6c83      	mov      	r2, r0
     49c:	6cc7      	mov      	r3, r1
     49e:	6c1f      	mov      	r0, r7
     4a0:	6c5b      	mov      	r1, r6
     4a2:	e00005bd 	bsr      	0x101c	// 101c <__adddf3>
     4a6:	6dc3      	mov      	r7, r0
     4a8:	9860      	ld.w      	r3, (r14, 0x0)
     4aa:	6d87      	mov      	r6, r1
     4ac:	3200      	movi      	r2, 0
     4ae:	9823      	ld.w      	r1, (r14, 0xc)
     4b0:	3000      	movi      	r0, 0
     4b2:	e00005e9 	bsr      	0x1084	// 1084 <__muldf3>
     4b6:	b802      	st.w      	r0, (r14, 0x8)
     4b8:	b803      	st.w      	r0, (r14, 0xc)
     4ba:	b824      	st.w      	r1, (r14, 0x10)
     4bc:	6c83      	mov      	r2, r0
     4be:	6cc7      	mov      	r3, r1
     4c0:	6d47      	mov      	r5, r1
     4c2:	6c1f      	mov      	r0, r7
     4c4:	6c5b      	mov      	r1, r6
     4c6:	e00005ab 	bsr      	0x101c	// 101c <__adddf3>
     4ca:	6d07      	mov      	r4, r1
     4cc:	113e      	lrw      	r1, 0x40900000	// 5c4 <__GI_pow+0x410>
     4ce:	2900      	subi      	r1, 1
     4d0:	6505      	cmplt      	r1, r4
     4d2:	b800      	st.w      	r0, (r14, 0x0)
     4d4:	0803      	bt      	0x4da	// 4da <__GI_pow+0x326>
     4d6:	e80002b3 	br      	0xa3c	// a3c <__GI_pow+0x888>
     4da:	117c      	lrw      	r3, 0xbf700000	// 5c8 <__GI_pow+0x414>
     4dc:	60d0      	addu      	r3, r4
     4de:	6cc0      	or      	r3, r0
     4e0:	3b40      	cmpnei      	r3, 0
     4e2:	0802      	bt      	0x4e6	// 4e6 <__GI_pow+0x332>
     4e4:	05b8      	br      	0x854	// 854 <__GI_pow+0x6a0>
     4e6:	114e      	lrw      	r2, 0x8800759c	// 59c <__GI_pow+0x3e8>
     4e8:	116e      	lrw      	r3, 0x7e37e43c	// 5a0 <__GI_pow+0x3ec>
     4ea:	3000      	movi      	r0, 0
     4ec:	9821      	ld.w      	r1, (r14, 0x4)
     4ee:	e00005cb 	bsr      	0x1084	// 1084 <__muldf3>
     4f2:	114b      	lrw      	r2, 0x8800759c	// 59c <__GI_pow+0x3e8>
     4f4:	116b      	lrw      	r3, 0x7e37e43c	// 5a0 <__GI_pow+0x3ec>
     4f6:	06f7      	br      	0x2e4	// 2e4 <__GI_pow+0x130>
     4f8:	11d5      	lrw      	r6, 0xfffff	// 5cc <__GI_pow+0x418>
     4fa:	6559      	cmplt      	r6, r5
     4fc:	09a6      	bt      	0x848	// 848 <__GI_pow+0x694>
     4fe:	6c13      	mov      	r0, r4
     500:	3200      	movi      	r2, 0
     502:	107f      	lrw      	r3, 0x43400000	// 57c <__GI_pow+0x3c8>
     504:	e00005c0 	bsr      	0x1084	// 1084 <__muldf3>
     508:	3700      	movi      	r7, 0
     50a:	6d03      	mov      	r4, r0
     50c:	6d47      	mov      	r5, r1
     50e:	2f34      	subi      	r7, 53
     510:	5514      	asri      	r0, r5, 20
     512:	103d      	lrw      	r1, 0xfffffc01	// 584 <__GI_pow+0x3d0>
     514:	45ac      	lsli      	r5, r5, 12
     516:	4d4c      	lsri      	r2, r5, 12
     518:	6004      	addu      	r0, r1
     51a:	116e      	lrw      	r3, 0x3988e	// 5d0 <__GI_pow+0x41c>
     51c:	601c      	addu      	r0, r7
     51e:	648d      	cmplt      	r3, r2
     520:	10f8      	lrw      	r7, 0x3ff00000	// 580 <__GI_pow+0x3cc>
     522:	b804      	st.w      	r0, (r14, 0x10)
     524:	6dc8      	or      	r7, r2
     526:	0c09      	bf      	0x538	// 538 <__GI_pow+0x384>
     528:	11cb      	lrw      	r6, 0xbb679	// 5d4 <__GI_pow+0x420>
     52a:	6499      	cmplt      	r6, r2
     52c:	0d90      	bf      	0x84c	// 84c <__GI_pow+0x698>
     52e:	6c83      	mov      	r2, r0
     530:	2200      	addi      	r2, 1
     532:	110a      	lrw      	r0, 0xfff00000	// 5d8 <__GI_pow+0x424>
     534:	b844      	st.w      	r2, (r14, 0x10)
     536:	61c0      	addu      	r7, r0
     538:	3500      	movi      	r5, 0
     53a:	45c3      	lsli      	r6, r5, 3
     53c:	1168      	lrw      	r3, 0x396c	// 5dc <__GI_pow+0x428>
     53e:	4523      	lsli      	r1, r5, 3
     540:	60d8      	addu      	r3, r6
     542:	9340      	ld.w      	r2, (r3, 0x0)
     544:	b828      	st.w      	r1, (r14, 0x20)
     546:	9361      	ld.w      	r3, (r3, 0x4)
     548:	6c13      	mov      	r0, r4
     54a:	6c5f      	mov      	r1, r7
     54c:	b845      	st.w      	r2, (r14, 0x14)
     54e:	b866      	st.w      	r3, (r14, 0x18)
     550:	e000057e 	bsr      	0x104c	// 104c <__subdf3>
     554:	b809      	st.w      	r0, (r14, 0x24)
     556:	9845      	ld.w      	r2, (r14, 0x14)
     558:	9866      	ld.w      	r3, (r14, 0x18)
     55a:	b82a      	st.w      	r1, (r14, 0x28)
     55c:	6c13      	mov      	r0, r4
     55e:	6c5f      	mov      	r1, r7
     560:	e000055e 	bsr      	0x101c	// 101c <__adddf3>
     564:	6c83      	mov      	r2, r0
     566:	6cc7      	mov      	r3, r1
     568:	3000      	movi      	r0, 0
     56a:	1026      	lrw      	r1, 0x3ff00000	// 580 <__GI_pow+0x3cc>
     56c:	e00006a6 	bsr      	0x12b8	// 12b8 <__divdf3>
     570:	6c83      	mov      	r2, r0
     572:	6cc7      	mov      	r3, r1
     574:	0436      	br      	0x5e0	// 5e0 <__GI_pow+0x42c>
     576:	0000      	bkpt
     578:	7ff00000 	.long	0x7ff00000
     57c:	43400000 	.long	0x43400000
     580:	3ff00000 	.long	0x3ff00000
     584:	fffffc01 	.long	0xfffffc01
     588:	c0100000 	.long	0xc0100000
     58c:	3fe00000 	.long	0x3fe00000
     590:	ffc00000 	.long	0xffc00000
     594:	41e00000 	.long	0x41e00000
     598:	43f00000 	.long	0x43f00000
     59c:	8800759c 	.long	0x8800759c
     5a0:	7e37e43c 	.long	0x7e37e43c
     5a4:	3ff71547 	.long	0x3ff71547
     5a8:	f85ddf44 	.long	0xf85ddf44
     5ac:	3e54ae0b 	.long	0x3e54ae0b
     5b0:	3fd00000 	.long	0x3fd00000
     5b4:	55555555 	.long	0x55555555
     5b8:	3fd55555 	.long	0x3fd55555
     5bc:	652b82fe 	.long	0x652b82fe
     5c0:	bff00000 	.long	0xbff00000
     5c4:	40900000 	.long	0x40900000
     5c8:	bf700000 	.long	0xbf700000
     5cc:	000fffff 	.long	0x000fffff
     5d0:	0003988e 	.long	0x0003988e
     5d4:	000bb679 	.long	0x000bb679
     5d8:	fff00000 	.long	0xfff00000
     5dc:	0000396c 	.long	0x0000396c
     5e0:	b80b      	st.w      	r0, (r14, 0x2c)
     5e2:	b82c      	st.w      	r1, (r14, 0x30)
     5e4:	9809      	ld.w      	r0, (r14, 0x24)
     5e6:	982a      	ld.w      	r1, (r14, 0x28)
     5e8:	e000054e 	bsr      	0x1084	// 1084 <__muldf3>
     5ec:	b803      	st.w      	r0, (r14, 0xc)
     5ee:	3280      	movi      	r2, 128
     5f0:	5701      	asri      	r0, r7, 1
     5f2:	6d87      	mov      	r6, r1
     5f4:	38bd      	bseti      	r0, 29
     5f6:	422c      	lsli      	r1, r2, 12
     5f8:	6004      	addu      	r0, r1
     5fa:	45b2      	lsli      	r5, r5, 18
     5fc:	6140      	addu      	r5, r0
     5fe:	6cd7      	mov      	r3, r5
     600:	3200      	movi      	r2, 0
     602:	6c5b      	mov      	r1, r6
     604:	3000      	movi      	r0, 0
     606:	e000053f 	bsr      	0x1084	// 1084 <__muldf3>
     60a:	6c83      	mov      	r2, r0
     60c:	6cc7      	mov      	r3, r1
     60e:	9809      	ld.w      	r0, (r14, 0x24)
     610:	982a      	ld.w      	r1, (r14, 0x28)
     612:	e000051d 	bsr      	0x104c	// 104c <__subdf3>
     616:	b809      	st.w      	r0, (r14, 0x24)
     618:	9845      	ld.w      	r2, (r14, 0x14)
     61a:	9866      	ld.w      	r3, (r14, 0x18)
     61c:	b82a      	st.w      	r1, (r14, 0x28)
     61e:	3000      	movi      	r0, 0
     620:	6c57      	mov      	r1, r5
     622:	e0000515 	bsr      	0x104c	// 104c <__subdf3>
     626:	6c83      	mov      	r2, r0
     628:	6cc7      	mov      	r3, r1
     62a:	6c13      	mov      	r0, r4
     62c:	6c5f      	mov      	r1, r7
     62e:	e000050f 	bsr      	0x104c	// 104c <__subdf3>
     632:	6cdb      	mov      	r3, r6
     634:	3200      	movi      	r2, 0
     636:	e0000527 	bsr      	0x1084	// 1084 <__muldf3>
     63a:	6c83      	mov      	r2, r0
     63c:	6cc7      	mov      	r3, r1
     63e:	9809      	ld.w      	r0, (r14, 0x24)
     640:	982a      	ld.w      	r1, (r14, 0x28)
     642:	e0000505 	bsr      	0x104c	// 104c <__subdf3>
     646:	984b      	ld.w      	r2, (r14, 0x2c)
     648:	986c      	ld.w      	r3, (r14, 0x30)
     64a:	e000051d 	bsr      	0x1084	// 1084 <__muldf3>
     64e:	9843      	ld.w      	r2, (r14, 0xc)
     650:	6cdb      	mov      	r3, r6
     652:	b805      	st.w      	r0, (r14, 0x14)
     654:	b826      	st.w      	r1, (r14, 0x18)
     656:	6c0b      	mov      	r0, r2
     658:	6c5b      	mov      	r1, r6
     65a:	e0000515 	bsr      	0x1084	// 1084 <__muldf3>
     65e:	ea820113 	lrw      	r2, 0x4a454eef	// aa8 <__GI_pow+0x8f4>
     662:	ea830113 	lrw      	r3, 0x3fca7e28	// aac <__GI_pow+0x8f8>
     666:	6d43      	mov      	r5, r0
     668:	6d07      	mov      	r4, r1
     66a:	e000050d 	bsr      	0x1084	// 1084 <__muldf3>
     66e:	ea820111 	lrw      	r2, 0x93c9db65	// ab0 <__GI_pow+0x8fc>
     672:	ea830111 	lrw      	r3, 0x3fcd864a	// ab4 <__GI_pow+0x900>
     676:	e00004d3 	bsr      	0x101c	// 101c <__adddf3>
     67a:	6c97      	mov      	r2, r5
     67c:	6cd3      	mov      	r3, r4
     67e:	e0000503 	bsr      	0x1084	// 1084 <__muldf3>
     682:	ea82010e 	lrw      	r2, 0xa91d4101	// ab8 <__GI_pow+0x904>
     686:	ea83010e 	lrw      	r3, 0x3fd17460	// abc <__GI_pow+0x908>
     68a:	e00004c9 	bsr      	0x101c	// 101c <__adddf3>
     68e:	6c97      	mov      	r2, r5
     690:	6cd3      	mov      	r3, r4
     692:	e00004f9 	bsr      	0x1084	// 1084 <__muldf3>
     696:	ea82010b 	lrw      	r2, 0x518f264d	// ac0 <__GI_pow+0x90c>
     69a:	ea83010b 	lrw      	r3, 0x3fd55555	// ac4 <__GI_pow+0x910>
     69e:	e00004bf 	bsr      	0x101c	// 101c <__adddf3>
     6a2:	6c97      	mov      	r2, r5
     6a4:	6cd3      	mov      	r3, r4
     6a6:	e00004ef 	bsr      	0x1084	// 1084 <__muldf3>
     6aa:	ea820108 	lrw      	r2, 0xdb6fabff	// ac8 <__GI_pow+0x914>
     6ae:	ea830108 	lrw      	r3, 0x3fdb6db6	// acc <__GI_pow+0x918>
     6b2:	e00004b5 	bsr      	0x101c	// 101c <__adddf3>
     6b6:	6c97      	mov      	r2, r5
     6b8:	6cd3      	mov      	r3, r4
     6ba:	e00004e5 	bsr      	0x1084	// 1084 <__muldf3>
     6be:	ea820105 	lrw      	r2, 0x33333303	// ad0 <__GI_pow+0x91c>
     6c2:	ea830105 	lrw      	r3, 0x3fe33333	// ad4 <__GI_pow+0x920>
     6c6:	e00004ab 	bsr      	0x101c	// 101c <__adddf3>
     6ca:	6dc3      	mov      	r7, r0
     6cc:	6c97      	mov      	r2, r5
     6ce:	6cd3      	mov      	r3, r4
     6d0:	b829      	st.w      	r1, (r14, 0x24)
     6d2:	6c17      	mov      	r0, r5
     6d4:	6c53      	mov      	r1, r4
     6d6:	e00004d7 	bsr      	0x1084	// 1084 <__muldf3>
     6da:	6c83      	mov      	r2, r0
     6dc:	6cc7      	mov      	r3, r1
     6de:	6c1f      	mov      	r0, r7
     6e0:	9829      	ld.w      	r1, (r14, 0x24)
     6e2:	e00004d1 	bsr      	0x1084	// 1084 <__muldf3>
     6e6:	6d43      	mov      	r5, r0
     6e8:	6d07      	mov      	r4, r1
     6ea:	6cdb      	mov      	r3, r6
     6ec:	3200      	movi      	r2, 0
     6ee:	9803      	ld.w      	r0, (r14, 0xc)
     6f0:	6c5b      	mov      	r1, r6
     6f2:	e0000495 	bsr      	0x101c	// 101c <__adddf3>
     6f6:	9845      	ld.w      	r2, (r14, 0x14)
     6f8:	9866      	ld.w      	r3, (r14, 0x18)
     6fa:	e00004c5 	bsr      	0x1084	// 1084 <__muldf3>
     6fe:	6c97      	mov      	r2, r5
     700:	6cd3      	mov      	r3, r4
     702:	e000048d 	bsr      	0x101c	// 101c <__adddf3>
     706:	6d43      	mov      	r5, r0
     708:	6cdb      	mov      	r3, r6
     70a:	b829      	st.w      	r1, (r14, 0x24)
     70c:	3200      	movi      	r2, 0
     70e:	6c5b      	mov      	r1, r6
     710:	3000      	movi      	r0, 0
     712:	e00004b9 	bsr      	0x1084	// 1084 <__muldf3>
     716:	3200      	movi      	r2, 0
     718:	006f      	lrw      	r3, 0x40080000	// ad8 <__GI_pow+0x924>
     71a:	6dc3      	mov      	r7, r0
     71c:	b82a      	st.w      	r1, (r14, 0x28)
     71e:	e000047f 	bsr      	0x101c	// 101c <__adddf3>
     722:	6c97      	mov      	r2, r5
     724:	9869      	ld.w      	r3, (r14, 0x24)
     726:	e000047b 	bsr      	0x101c	// 101c <__adddf3>
     72a:	6d07      	mov      	r4, r1
     72c:	6cc7      	mov      	r3, r1
     72e:	3200      	movi      	r2, 0
     730:	6c5b      	mov      	r1, r6
     732:	3000      	movi      	r0, 0
     734:	e00004a8 	bsr      	0x1084	// 1084 <__muldf3>
     738:	b80b      	st.w      	r0, (r14, 0x2c)
     73a:	b82c      	st.w      	r1, (r14, 0x30)
     73c:	3200      	movi      	r2, 0
     73e:	0078      	lrw      	r3, 0x40080000	// ad8 <__GI_pow+0x924>
     740:	6c53      	mov      	r1, r4
     742:	3000      	movi      	r0, 0
     744:	e0000484 	bsr      	0x104c	// 104c <__subdf3>
     748:	6c9f      	mov      	r2, r7
     74a:	986a      	ld.w      	r3, (r14, 0x28)
     74c:	e0000480 	bsr      	0x104c	// 104c <__subdf3>
     750:	6c83      	mov      	r2, r0
     752:	6cc7      	mov      	r3, r1
     754:	6c17      	mov      	r0, r5
     756:	9829      	ld.w      	r1, (r14, 0x24)
     758:	e000047a 	bsr      	0x104c	// 104c <__subdf3>
     75c:	9843      	ld.w      	r2, (r14, 0xc)
     75e:	6cdb      	mov      	r3, r6
     760:	e0000492 	bsr      	0x1084	// 1084 <__muldf3>
     764:	6d83      	mov      	r6, r0
     766:	6d47      	mov      	r5, r1
     768:	6cd3      	mov      	r3, r4
     76a:	3200      	movi      	r2, 0
     76c:	9805      	ld.w      	r0, (r14, 0x14)
     76e:	9826      	ld.w      	r1, (r14, 0x18)
     770:	e000048a 	bsr      	0x1084	// 1084 <__muldf3>
     774:	6c83      	mov      	r2, r0
     776:	6cc7      	mov      	r3, r1
     778:	6c1b      	mov      	r0, r6
     77a:	6c57      	mov      	r1, r5
     77c:	e0000450 	bsr      	0x101c	// 101c <__adddf3>
     780:	6dc3      	mov      	r7, r0
     782:	6d87      	mov      	r6, r1
     784:	6c83      	mov      	r2, r0
     786:	6cc7      	mov      	r3, r1
     788:	980b      	ld.w      	r0, (r14, 0x2c)
     78a:	982c      	ld.w      	r1, (r14, 0x30)
     78c:	e0000448 	bsr      	0x101c	// 101c <__adddf3>
     790:	33e0      	movi      	r3, 224
     792:	4358      	lsli      	r2, r3, 24
     794:	3000      	movi      	r0, 0
     796:	016d      	lrw      	r3, 0x3feec709	// adc <__GI_pow+0x928>
     798:	6d07      	mov      	r4, r1
     79a:	e0000475 	bsr      	0x1084	// 1084 <__muldf3>
     79e:	b805      	st.w      	r0, (r14, 0x14)
     7a0:	b826      	st.w      	r1, (r14, 0x18)
     7a2:	984b      	ld.w      	r2, (r14, 0x2c)
     7a4:	986c      	ld.w      	r3, (r14, 0x30)
     7a6:	6c53      	mov      	r1, r4
     7a8:	3000      	movi      	r0, 0
     7aa:	e0000451 	bsr      	0x104c	// 104c <__subdf3>
     7ae:	6c83      	mov      	r2, r0
     7b0:	6cc7      	mov      	r3, r1
     7b2:	6c1f      	mov      	r0, r7
     7b4:	6c5b      	mov      	r1, r6
     7b6:	e000044b 	bsr      	0x104c	// 104c <__subdf3>
     7ba:	0155      	lrw      	r2, 0xdc3a03fd	// ae0 <__GI_pow+0x92c>
     7bc:	0177      	lrw      	r3, 0x3feec709	// adc <__GI_pow+0x928>
     7be:	e0000463 	bsr      	0x1084	// 1084 <__muldf3>
     7c2:	6dc3      	mov      	r7, r0
     7c4:	6d47      	mov      	r5, r1
     7c6:	0157      	lrw      	r2, 0x145b01f5	// ae4 <__GI_pow+0x930>
     7c8:	0177      	lrw      	r3, 0xbe3e2fe0	// ae8 <__GI_pow+0x934>
     7ca:	6c53      	mov      	r1, r4
     7cc:	3000      	movi      	r0, 0
     7ce:	e000045b 	bsr      	0x1084	// 1084 <__muldf3>
     7d2:	6c83      	mov      	r2, r0
     7d4:	6cc7      	mov      	r3, r1
     7d6:	6c1f      	mov      	r0, r7
     7d8:	6c57      	mov      	r1, r5
     7da:	e0000421 	bsr      	0x101c	// 101c <__adddf3>
     7de:	01db      	lrw      	r6, 0x396c	// aec <__GI_pow+0x938>
     7e0:	9848      	ld.w      	r2, (r14, 0x20)
     7e2:	6188      	addu      	r6, r2
     7e4:	9644      	ld.w      	r2, (r6, 0x10)
     7e6:	9665      	ld.w      	r3, (r6, 0x14)
     7e8:	e000041a 	bsr      	0x101c	// 101c <__adddf3>
     7ec:	b809      	st.w      	r0, (r14, 0x24)
     7ee:	9804      	ld.w      	r0, (r14, 0x10)
     7f0:	b82a      	st.w      	r1, (r14, 0x28)
     7f2:	e0000667 	bsr      	0x14c0	// 14c0 <__floatsidf>
     7f6:	6d83      	mov      	r6, r0
     7f8:	0202      	lrw      	r0, 0x396c	// aec <__GI_pow+0x938>
     7fa:	6d47      	mov      	r5, r1
     7fc:	201f      	addi      	r0, 32
     7fe:	9828      	ld.w      	r1, (r14, 0x20)
     800:	6004      	addu      	r0, r1
     802:	9080      	ld.w      	r4, (r0, 0x0)
     804:	90e1      	ld.w      	r7, (r0, 0x4)
     806:	9849      	ld.w      	r2, (r14, 0x24)
     808:	986a      	ld.w      	r3, (r14, 0x28)
     80a:	9805      	ld.w      	r0, (r14, 0x14)
     80c:	9826      	ld.w      	r1, (r14, 0x18)
     80e:	e0000407 	bsr      	0x101c	// 101c <__adddf3>
     812:	6c93      	mov      	r2, r4
     814:	6cdf      	mov      	r3, r7
     816:	e0000403 	bsr      	0x101c	// 101c <__adddf3>
     81a:	6c9b      	mov      	r2, r6
     81c:	6cd7      	mov      	r3, r5
     81e:	e00003ff 	bsr      	0x101c	// 101c <__adddf3>
     822:	6c9b      	mov      	r2, r6
     824:	6cd7      	mov      	r3, r5
     826:	3000      	movi      	r0, 0
     828:	b823      	st.w      	r1, (r14, 0xc)
     82a:	e0000411 	bsr      	0x104c	// 104c <__subdf3>
     82e:	6c93      	mov      	r2, r4
     830:	6cdf      	mov      	r3, r7
     832:	e000040d 	bsr      	0x104c	// 104c <__subdf3>
     836:	9845      	ld.w      	r2, (r14, 0x14)
     838:	9866      	ld.w      	r3, (r14, 0x18)
     83a:	e0000409 	bsr      	0x104c	// 104c <__subdf3>
     83e:	6c83      	mov      	r2, r0
     840:	6cc7      	mov      	r3, r1
     842:	9809      	ld.w      	r0, (r14, 0x24)
     844:	982a      	ld.w      	r1, (r14, 0x28)
     846:	060b      	br      	0x45c	// 45c <__GI_pow+0x2a8>
     848:	3700      	movi      	r7, 0
     84a:	0663      	br      	0x510	// 510 <__GI_pow+0x35c>
     84c:	3501      	movi      	r5, 1
     84e:	0676      	br      	0x53a	// 53a <__GI_pow+0x386>
     850:	0277      	lrw      	r3, 0x3ff00000	// af0 <__GI_pow+0x93c>
     852:	0611      	br      	0x474	// 474 <__GI_pow+0x2c0>
     854:	0257      	lrw      	r2, 0x652b82fe	// af4 <__GI_pow+0x940>
     856:	0276      	lrw      	r3, 0x3c971547	// af8 <__GI_pow+0x944>
     858:	6c1f      	mov      	r0, r7
     85a:	6c5b      	mov      	r1, r6
     85c:	e00003e0 	bsr      	0x101c	// 101c <__adddf3>
     860:	b805      	st.w      	r0, (r14, 0x14)
     862:	b826      	st.w      	r1, (r14, 0x18)
     864:	9842      	ld.w      	r2, (r14, 0x8)
     866:	6cd7      	mov      	r3, r5
     868:	9800      	ld.w      	r0, (r14, 0x0)
     86a:	6c53      	mov      	r1, r4
     86c:	e00003f0 	bsr      	0x104c	// 104c <__subdf3>
     870:	6c83      	mov      	r2, r0
     872:	6cc7      	mov      	r3, r1
     874:	9805      	ld.w      	r0, (r14, 0x14)
     876:	9826      	ld.w      	r1, (r14, 0x18)
     878:	e00005ca 	bsr      	0x140c	// 140c <__gtdf2>
     87c:	3820      	cmplti      	r0, 1
     87e:	0802      	bt      	0x882	// 882 <__GI_pow+0x6ce>
     880:	0633      	br      	0x4e6	// 4e6 <__GI_pow+0x332>
     882:	4421      	lsli      	r1, r4, 1
     884:	4901      	lsri      	r0, r1, 1
     886:	0361      	lrw      	r3, 0x3fe00000	// afc <__GI_pow+0x948>
     888:	640d      	cmplt      	r3, r0
     88a:	0cfd      	bf      	0xa84	// a84 <__GI_pow+0x8d0>
     88c:	5034      	asri      	r1, r0, 20
     88e:	0342      	lrw      	r2, 0xfffffc02	// b00 <__GI_pow+0x94c>
     890:	3080      	movi      	r0, 128
     892:	6048      	addu      	r1, r2
     894:	404d      	lsli      	r2, r0, 13
     896:	7086      	asr      	r2, r1
     898:	6090      	addu      	r2, r4
     89a:	4261      	lsli      	r3, r2, 1
     89c:	4b35      	lsri      	r1, r3, 21
     89e:	0305      	lrw      	r0, 0xfffffc01	// b04 <__GI_pow+0x950>
     8a0:	6040      	addu      	r1, r0
     8a2:	0365      	lrw      	r3, 0xfffff	// b08 <__GI_pow+0x954>
     8a4:	70c6      	asr      	r3, r1
     8a6:	6c0b      	mov      	r0, r2
     8a8:	680d      	andn      	r0, r3
     8aa:	424c      	lsli      	r2, r2, 12
     8ac:	6cc3      	mov      	r3, r0
     8ae:	4a4c      	lsri      	r2, r2, 12
     8b0:	3014      	movi      	r0, 20
     8b2:	3ab4      	bseti      	r2, 20
     8b4:	5825      	subu      	r1, r0, r1
     8b6:	7086      	asr      	r2, r1
     8b8:	3cdf      	btsti      	r4, 31
     8ba:	b840      	st.w      	r2, (r14, 0x0)
     8bc:	0c05      	bf      	0x8c6	// 8c6 <__GI_pow+0x712>
     8be:	9840      	ld.w      	r2, (r14, 0x0)
     8c0:	3400      	movi      	r4, 0
     8c2:	610a      	subu      	r4, r2
     8c4:	b880      	st.w      	r4, (r14, 0x0)
     8c6:	3200      	movi      	r2, 0
     8c8:	9802      	ld.w      	r0, (r14, 0x8)
     8ca:	6c57      	mov      	r1, r5
     8cc:	e00003c0 	bsr      	0x104c	// 104c <__subdf3>
     8d0:	b803      	st.w      	r0, (r14, 0xc)
     8d2:	b824      	st.w      	r1, (r14, 0x10)
     8d4:	9803      	ld.w      	r0, (r14, 0xc)
     8d6:	6c9f      	mov      	r2, r7
     8d8:	6cdb      	mov      	r3, r6
     8da:	9824      	ld.w      	r1, (r14, 0x10)
     8dc:	e00003a0 	bsr      	0x101c	// 101c <__adddf3>
     8e0:	3200      	movi      	r2, 0
     8e2:	0374      	lrw      	r3, 0x3fe62e43	// b0c <__GI_pow+0x958>
     8e4:	3000      	movi      	r0, 0
     8e6:	6d07      	mov      	r4, r1
     8e8:	e00003ce 	bsr      	0x1084	// 1084 <__muldf3>
     8ec:	6d47      	mov      	r5, r1
     8ee:	9843      	ld.w      	r2, (r14, 0xc)
     8f0:	9864      	ld.w      	r3, (r14, 0x10)
     8f2:	b802      	st.w      	r0, (r14, 0x8)
     8f4:	6c53      	mov      	r1, r4
     8f6:	3000      	movi      	r0, 0
     8f8:	e00003aa 	bsr      	0x104c	// 104c <__subdf3>
     8fc:	6c83      	mov      	r2, r0
     8fe:	6cc7      	mov      	r3, r1
     900:	6c1f      	mov      	r0, r7
     902:	6c5b      	mov      	r1, r6
     904:	e00003a4 	bsr      	0x104c	// 104c <__subdf3>
     908:	035d      	lrw      	r2, 0xfefa39ef	// b10 <__GI_pow+0x95c>
     90a:	037c      	lrw      	r3, 0x3fe62e42	// b14 <__GI_pow+0x960>
     90c:	e00003bc 	bsr      	0x1084	// 1084 <__muldf3>
     910:	6dc3      	mov      	r7, r0
     912:	6d87      	mov      	r6, r1
     914:	035e      	lrw      	r2, 0xca86c39	// b18 <__GI_pow+0x964>
     916:	037d      	lrw      	r3, 0xbe205c61	// b1c <__GI_pow+0x968>
     918:	6c53      	mov      	r1, r4
     91a:	3000      	movi      	r0, 0
     91c:	e00003b4 	bsr      	0x1084	// 1084 <__muldf3>
     920:	6c83      	mov      	r2, r0
     922:	6cc7      	mov      	r3, r1
     924:	6c1f      	mov      	r0, r7
     926:	6c5b      	mov      	r1, r6
     928:	e000037a 	bsr      	0x101c	// 101c <__adddf3>
     92c:	6d07      	mov      	r4, r1
     92e:	6c83      	mov      	r2, r0
     930:	6cc7      	mov      	r3, r1
     932:	b803      	st.w      	r0, (r14, 0xc)
     934:	6c57      	mov      	r1, r5
     936:	9802      	ld.w      	r0, (r14, 0x8)
     938:	e0000372 	bsr      	0x101c	// 101c <__adddf3>
     93c:	9842      	ld.w      	r2, (r14, 0x8)
     93e:	6cd7      	mov      	r3, r5
     940:	6dc3      	mov      	r7, r0
     942:	6d87      	mov      	r6, r1
     944:	e0000384 	bsr      	0x104c	// 104c <__subdf3>
     948:	6c83      	mov      	r2, r0
     94a:	6cc7      	mov      	r3, r1
     94c:	9803      	ld.w      	r0, (r14, 0xc)
     94e:	6c53      	mov      	r1, r4
     950:	e000037e 	bsr      	0x104c	// 104c <__subdf3>
     954:	b802      	st.w      	r0, (r14, 0x8)
     956:	b823      	st.w      	r1, (r14, 0xc)
     958:	6c9f      	mov      	r2, r7
     95a:	6cdb      	mov      	r3, r6
     95c:	6c1f      	mov      	r0, r7
     95e:	6c5b      	mov      	r1, r6
     960:	e0000392 	bsr      	0x1084	// 1084 <__muldf3>
     964:	134f      	lrw      	r2, 0x72bea4d0	// b20 <__GI_pow+0x96c>
     966:	1370      	lrw      	r3, 0x3e663769	// b24 <__GI_pow+0x970>
     968:	6d43      	mov      	r5, r0
     96a:	6d07      	mov      	r4, r1
     96c:	e000038c 	bsr      	0x1084	// 1084 <__muldf3>
     970:	134e      	lrw      	r2, 0xc5d26bf1	// b28 <__GI_pow+0x974>
     972:	136f      	lrw      	r3, 0x3ebbbd41	// b2c <__GI_pow+0x978>
     974:	e000036c 	bsr      	0x104c	// 104c <__subdf3>
     978:	6c97      	mov      	r2, r5
     97a:	6cd3      	mov      	r3, r4
     97c:	e0000384 	bsr      	0x1084	// 1084 <__muldf3>
     980:	134c      	lrw      	r2, 0xaf25de2c	// b30 <__GI_pow+0x97c>
     982:	136d      	lrw      	r3, 0x3f11566a	// b34 <__GI_pow+0x980>
     984:	e000034c 	bsr      	0x101c	// 101c <__adddf3>
     988:	6c97      	mov      	r2, r5
     98a:	6cd3      	mov      	r3, r4
     98c:	e000037c 	bsr      	0x1084	// 1084 <__muldf3>
     990:	134a      	lrw      	r2, 0x16bebd93	// b38 <__GI_pow+0x984>
     992:	136b      	lrw      	r3, 0x3f66c16c	// b3c <__GI_pow+0x988>
     994:	e000035c 	bsr      	0x104c	// 104c <__subdf3>
     998:	6c97      	mov      	r2, r5
     99a:	6cd3      	mov      	r3, r4
     99c:	e0000374 	bsr      	0x1084	// 1084 <__muldf3>
     9a0:	1348      	lrw      	r2, 0x5555553e	// b40 <__GI_pow+0x98c>
     9a2:	1369      	lrw      	r3, 0x3fc55555	// b44 <__GI_pow+0x990>
     9a4:	e000033c 	bsr      	0x101c	// 101c <__adddf3>
     9a8:	6c97      	mov      	r2, r5
     9aa:	6cd3      	mov      	r3, r4
     9ac:	e000036c 	bsr      	0x1084	// 1084 <__muldf3>
     9b0:	6c83      	mov      	r2, r0
     9b2:	6cc7      	mov      	r3, r1
     9b4:	6c1f      	mov      	r0, r7
     9b6:	6c5b      	mov      	r1, r6
     9b8:	e000034a 	bsr      	0x104c	// 104c <__subdf3>
     9bc:	6d43      	mov      	r5, r0
     9be:	6d07      	mov      	r4, r1
     9c0:	6c83      	mov      	r2, r0
     9c2:	6cc7      	mov      	r3, r1
     9c4:	6c1f      	mov      	r0, r7
     9c6:	6c5b      	mov      	r1, r6
     9c8:	e000035e 	bsr      	0x1084	// 1084 <__muldf3>
     9cc:	3380      	movi      	r3, 128
     9ce:	b804      	st.w      	r0, (r14, 0x10)
     9d0:	b825      	st.w      	r1, (r14, 0x14)
     9d2:	3200      	movi      	r2, 0
     9d4:	4377      	lsli      	r3, r3, 23
     9d6:	6c17      	mov      	r0, r5
     9d8:	6c53      	mov      	r1, r4
     9da:	e0000339 	bsr      	0x104c	// 104c <__subdf3>
     9de:	6c83      	mov      	r2, r0
     9e0:	6cc7      	mov      	r3, r1
     9e2:	9804      	ld.w      	r0, (r14, 0x10)
     9e4:	9825      	ld.w      	r1, (r14, 0x14)
     9e6:	e0000469 	bsr      	0x12b8	// 12b8 <__divdf3>
     9ea:	6d07      	mov      	r4, r1
     9ec:	6d43      	mov      	r5, r0
     9ee:	9842      	ld.w      	r2, (r14, 0x8)
     9f0:	9863      	ld.w      	r3, (r14, 0xc)
     9f2:	6c1f      	mov      	r0, r7
     9f4:	6c5b      	mov      	r1, r6
     9f6:	e0000347 	bsr      	0x1084	// 1084 <__muldf3>
     9fa:	9842      	ld.w      	r2, (r14, 0x8)
     9fc:	9863      	ld.w      	r3, (r14, 0xc)
     9fe:	e000030f 	bsr      	0x101c	// 101c <__adddf3>
     a02:	6c83      	mov      	r2, r0
     a04:	6cc7      	mov      	r3, r1
     a06:	6c17      	mov      	r0, r5
     a08:	6c53      	mov      	r1, r4
     a0a:	e0000321 	bsr      	0x104c	// 104c <__subdf3>
     a0e:	6c9f      	mov      	r2, r7
     a10:	6cdb      	mov      	r3, r6
     a12:	e000031d 	bsr      	0x104c	// 104c <__subdf3>
     a16:	6c83      	mov      	r2, r0
     a18:	6cc7      	mov      	r3, r1
     a1a:	3000      	movi      	r0, 0
     a1c:	1135      	lrw      	r1, 0x3ff00000	// af0 <__GI_pow+0x93c>
     a1e:	e0000317 	bsr      	0x104c	// 104c <__subdf3>
     a22:	9840      	ld.w      	r2, (r14, 0x0)
     a24:	4274      	lsli      	r3, r2, 20
     a26:	60c4      	addu      	r3, r1
     a28:	5394      	asri      	r4, r3, 20
     a2a:	3c20      	cmplti      	r4, 1
     a2c:	0c2f      	bf      	0xa8a	// a8a <__GI_pow+0x8d6>
     a2e:	9840      	ld.w      	r2, (r14, 0x0)
     a30:	e000009a 	bsr      	0xb64	// b64 <__GI_scalbn>
     a34:	3200      	movi      	r2, 0
     a36:	9861      	ld.w      	r3, (r14, 0x4)
     a38:	e800fc56 	br      	0x2e4	// 2e4 <__GI_pow+0x130>
     a3c:	4401      	lsli      	r0, r4, 1
     a3e:	4861      	lsri      	r3, r0, 1
     a40:	1242      	lrw      	r2, 0x4090cbff	// b48 <__GI_pow+0x994>
     a42:	64c9      	cmplt      	r2, r3
     a44:	0f1f      	bf      	0x882	// 882 <__GI_pow+0x6ce>
     a46:	1222      	lrw      	r1, 0x3f6f3400	// b4c <__GI_pow+0x998>
     a48:	6050      	addu      	r1, r4
     a4a:	9800      	ld.w      	r0, (r14, 0x0)
     a4c:	6c40      	or      	r1, r0
     a4e:	3940      	cmpnei      	r1, 0
     a50:	0c0b      	bf      	0xa66	// a66 <__GI_pow+0x8b2>
     a52:	1240      	lrw      	r2, 0xc2f8f359	// b50 <__GI_pow+0x99c>
     a54:	1260      	lrw      	r3, 0x1a56e1f	// b54 <__GI_pow+0x9a0>
     a56:	3000      	movi      	r0, 0
     a58:	9821      	ld.w      	r1, (r14, 0x4)
     a5a:	e0000315 	bsr      	0x1084	// 1084 <__muldf3>
     a5e:	115d      	lrw      	r2, 0xc2f8f359	// b50 <__GI_pow+0x99c>
     a60:	117d      	lrw      	r3, 0x1a56e1f	// b54 <__GI_pow+0x9a0>
     a62:	e800fc41 	br      	0x2e4	// 2e4 <__GI_pow+0x130>
     a66:	9842      	ld.w      	r2, (r14, 0x8)
     a68:	6cd7      	mov      	r3, r5
     a6a:	9800      	ld.w      	r0, (r14, 0x0)
     a6c:	6c53      	mov      	r1, r4
     a6e:	e00002ef 	bsr      	0x104c	// 104c <__subdf3>
     a72:	6c83      	mov      	r2, r0
     a74:	6cc7      	mov      	r3, r1
     a76:	6c1f      	mov      	r0, r7
     a78:	6c5b      	mov      	r1, r6
     a7a:	e0000505 	bsr      	0x1484	// 1484 <__ledf2>
     a7e:	3820      	cmplti      	r0, 1
     a80:	0f01      	bf      	0x882	// 882 <__GI_pow+0x6ce>
     a82:	07e8      	br      	0xa52	// a52 <__GI_pow+0x89e>
     a84:	3500      	movi      	r5, 0
     a86:	b8a0      	st.w      	r5, (r14, 0x0)
     a88:	0726      	br      	0x8d4	// 8d4 <__GI_pow+0x720>
     a8a:	6c4f      	mov      	r1, r3
     a8c:	07d4      	br      	0xa34	// a34 <__GI_pow+0x880>
     a8e:	3400      	movi      	r4, 0
     a90:	1038      	lrw      	r1, 0x3ff00000	// af0 <__GI_pow+0x93c>
     a92:	e800fbb5 	br      	0x1fc	// 1fc <__GI_pow+0x48>
     a96:	3400      	movi      	r4, 0
     a98:	9820      	ld.w      	r1, (r14, 0x0)
     a9a:	e800fbb1 	br      	0x1fc	// 1fc <__GI_pow+0x48>
     a9e:	6d1f      	mov      	r4, r7
     aa0:	6c5b      	mov      	r1, r6
     aa2:	e800fbad 	br      	0x1fc	// 1fc <__GI_pow+0x48>
     aa6:	0000      	bkpt
     aa8:	4a454eef 	.long	0x4a454eef
     aac:	3fca7e28 	.long	0x3fca7e28
     ab0:	93c9db65 	.long	0x93c9db65
     ab4:	3fcd864a 	.long	0x3fcd864a
     ab8:	a91d4101 	.long	0xa91d4101
     abc:	3fd17460 	.long	0x3fd17460
     ac0:	518f264d 	.long	0x518f264d
     ac4:	3fd55555 	.long	0x3fd55555
     ac8:	db6fabff 	.long	0xdb6fabff
     acc:	3fdb6db6 	.long	0x3fdb6db6
     ad0:	33333303 	.long	0x33333303
     ad4:	3fe33333 	.long	0x3fe33333
     ad8:	40080000 	.long	0x40080000
     adc:	3feec709 	.long	0x3feec709
     ae0:	dc3a03fd 	.long	0xdc3a03fd
     ae4:	145b01f5 	.long	0x145b01f5
     ae8:	be3e2fe0 	.long	0xbe3e2fe0
     aec:	0000396c 	.long	0x0000396c
     af0:	3ff00000 	.long	0x3ff00000
     af4:	652b82fe 	.long	0x652b82fe
     af8:	3c971547 	.long	0x3c971547
     afc:	3fe00000 	.long	0x3fe00000
     b00:	fffffc02 	.long	0xfffffc02
     b04:	fffffc01 	.long	0xfffffc01
     b08:	000fffff 	.long	0x000fffff
     b0c:	3fe62e43 	.long	0x3fe62e43
     b10:	fefa39ef 	.long	0xfefa39ef
     b14:	3fe62e42 	.long	0x3fe62e42
     b18:	0ca86c39 	.long	0x0ca86c39
     b1c:	be205c61 	.long	0xbe205c61
     b20:	72bea4d0 	.long	0x72bea4d0
     b24:	3e663769 	.long	0x3e663769
     b28:	c5d26bf1 	.long	0xc5d26bf1
     b2c:	3ebbbd41 	.long	0x3ebbbd41
     b30:	af25de2c 	.long	0xaf25de2c
     b34:	3f11566a 	.long	0x3f11566a
     b38:	16bebd93 	.long	0x16bebd93
     b3c:	3f66c16c 	.long	0x3f66c16c
     b40:	5555553e 	.long	0x5555553e
     b44:	3fc55555 	.long	0x3fc55555
     b48:	4090cbff 	.long	0x4090cbff
     b4c:	3f6f3400 	.long	0x3f6f3400
     b50:	c2f8f359 	.long	0xc2f8f359
     b54:	01a56e1f 	.long	0x01a56e1f
     b58:	3300      	movi      	r3, 0
     b5a:	e800fb94 	br      	0x282	// 282 <__GI_pow+0xce>

00000b5e <__GI_fabs>:
     b5e:	4121      	lsli      	r1, r1, 1
     b60:	4921      	lsri      	r1, r1, 1
     b62:	783c      	jmp      	r15

00000b64 <__GI_scalbn>:
     b64:	14c1      	push      	r4
     b66:	6cc7      	mov      	r3, r1
     b68:	6cc0      	or      	r3, r0
     b6a:	3b40      	cmpnei      	r3, 0
     b6c:	0c08      	bf      	0xb7c	// b7c <__GI_scalbn+0x18>
     b6e:	1065      	lrw      	r3, 0x7ff00000	// b80 <__GI_scalbn+0x1c>
     b70:	6d07      	mov      	r4, r1
     b72:	690c      	and      	r4, r3
     b74:	4254      	lsli      	r2, r2, 20
     b76:	6090      	addu      	r2, r4
     b78:	684d      	andn      	r1, r3
     b7a:	6c48      	or      	r1, r2
     b7c:	1481      	pop      	r4
     b7e:	0000      	bkpt
     b80:	7ff00000 	.long	0x7ff00000

00000b84 <__GI_sqrt>:
     b84:	14d4      	push      	r4-r7, r15
     b86:	1423      	subi      	r14, r14, 12
     b88:	127a      	lrw      	r3, 0x7ff00000	// cf0 <__GI_sqrt+0x16c>
     b8a:	6d43      	mov      	r5, r0
     b8c:	6d07      	mov      	r4, r1
     b8e:	6c07      	mov      	r0, r1
     b90:	684c      	and      	r1, r3
     b92:	64c6      	cmpne      	r1, r3
     b94:	6c97      	mov      	r2, r5
     b96:	0812      	bt      	0xbba	// bba <__GI_sqrt+0x36>
     b98:	6cd3      	mov      	r3, r4
     b9a:	6c17      	mov      	r0, r5
     b9c:	6c53      	mov      	r1, r4
     b9e:	e0000273 	bsr      	0x1084	// 1084 <__muldf3>
     ba2:	6c83      	mov      	r2, r0
     ba4:	6cc7      	mov      	r3, r1
     ba6:	6c17      	mov      	r0, r5
     ba8:	6c53      	mov      	r1, r4
     baa:	e0000239 	bsr      	0x101c	// 101c <__adddf3>
     bae:	6d43      	mov      	r5, r0
     bb0:	6d07      	mov      	r4, r1
     bb2:	6c17      	mov      	r0, r5
     bb4:	6c53      	mov      	r1, r4
     bb6:	1403      	addi      	r14, r14, 12
     bb8:	1494      	pop      	r4-r7, r15
     bba:	3c20      	cmplti      	r4, 1
     bbc:	0c13      	bf      	0xbe2	// be2 <__GI_sqrt+0x5e>
     bbe:	4461      	lsli      	r3, r4, 1
     bc0:	4b21      	lsri      	r1, r3, 1
     bc2:	6c54      	or      	r1, r5
     bc4:	3940      	cmpnei      	r1, 0
     bc6:	0ff6      	bf      	0xbb2	// bb2 <__GI_sqrt+0x2e>
     bc8:	3c40      	cmpnei      	r4, 0
     bca:	0c0c      	bf      	0xbe2	// be2 <__GI_sqrt+0x5e>
     bcc:	6c97      	mov      	r2, r5
     bce:	6cd3      	mov      	r3, r4
     bd0:	6c17      	mov      	r0, r5
     bd2:	6c53      	mov      	r1, r4
     bd4:	e000023c 	bsr      	0x104c	// 104c <__subdf3>
     bd8:	6c83      	mov      	r2, r0
     bda:	6cc7      	mov      	r3, r1
     bdc:	e000036e 	bsr      	0x12b8	// 12b8 <__divdf3>
     be0:	07e7      	br      	0xbae	// bae <__GI_sqrt+0x2a>
     be2:	5494      	asri      	r4, r4, 20
     be4:	3c40      	cmpnei      	r4, 0
     be6:	0812      	bt      	0xc0a	// c0a <__GI_sqrt+0x86>
     be8:	3840      	cmpnei      	r0, 0
     bea:	0c76      	bf      	0xcd6	// cd6 <__GI_sqrt+0x152>
     bec:	3580      	movi      	r5, 128
     bee:	3300      	movi      	r3, 0
     bf0:	452d      	lsli      	r1, r5, 13
     bf2:	6d83      	mov      	r6, r0
     bf4:	6984      	and      	r6, r1
     bf6:	3e40      	cmpnei      	r6, 0
     bf8:	0c73      	bf      	0xcde	// cde <__GI_sqrt+0x15a>
     bfa:	5b23      	subi      	r1, r3, 1
     bfc:	3620      	movi      	r6, 32
     bfe:	6106      	subu      	r4, r1
     c00:	618e      	subu      	r6, r3
     c02:	6c4b      	mov      	r1, r2
     c04:	7059      	lsr      	r1, r6
     c06:	6c04      	or      	r0, r1
     c08:	708c      	lsl      	r2, r3
     c0a:	117b      	lrw      	r3, 0xfffffc01	// cf4 <__GI_sqrt+0x170>
     c0c:	610c      	addu      	r4, r3
     c0e:	3601      	movi      	r6, 1
     c10:	400c      	lsli      	r0, r0, 12
     c12:	6990      	and      	r6, r4
     c14:	480c      	lsri      	r0, r0, 12
     c16:	3e40      	cmpnei      	r6, 0
     c18:	38b4      	bseti      	r0, 20
     c1a:	0c05      	bf      	0xc24	// c24 <__GI_sqrt+0xa0>
     c1c:	4a3f      	lsri      	r1, r2, 31
     c1e:	40a1      	lsli      	r5, r0, 1
     c20:	5914      	addu      	r0, r1, r5
     c22:	4241      	lsli      	r2, r2, 1
     c24:	4a7f      	lsri      	r3, r2, 31
     c26:	60c0      	addu      	r3, r0
     c28:	5481      	asri      	r4, r4, 1
     c2a:	3680      	movi      	r6, 128
     c2c:	3100      	movi      	r1, 0
     c2e:	60c0      	addu      	r3, r0
     c30:	b882      	st.w      	r4, (r14, 0x8)
     c32:	4241      	lsli      	r2, r2, 1
     c34:	3516      	movi      	r5, 22
     c36:	460e      	lsli      	r0, r6, 14
     c38:	b820      	st.w      	r1, (r14, 0x0)
     c3a:	5980      	addu      	r4, r1, r0
     c3c:	650d      	cmplt      	r3, r4
     c3e:	0806      	bt      	0xc4a	// c4a <__GI_sqrt+0xc6>
     c40:	98c0      	ld.w      	r6, (r14, 0x0)
     c42:	6180      	addu      	r6, r0
     c44:	5c20      	addu      	r1, r4, r0
     c46:	60d2      	subu      	r3, r4
     c48:	b8c0      	st.w      	r6, (r14, 0x0)
     c4a:	2d00      	subi      	r5, 1
     c4c:	4a9f      	lsri      	r4, r2, 31
     c4e:	4361      	lsli      	r3, r3, 1
     c50:	3d40      	cmpnei      	r5, 0
     c52:	60d0      	addu      	r3, r4
     c54:	4241      	lsli      	r2, r2, 1
     c56:	4801      	lsri      	r0, r0, 1
     c58:	0bf1      	bt      	0xc3a	// c3a <__GI_sqrt+0xb6>
     c5a:	3620      	movi      	r6, 32
     c5c:	3480      	movi      	r4, 128
     c5e:	3000      	movi      	r0, 0
     c60:	b8c1      	st.w      	r6, (r14, 0x4)
     c62:	4498      	lsli      	r4, r4, 24
     c64:	64c5      	cmplt      	r1, r3
     c66:	5cd4      	addu      	r6, r4, r5
     c68:	0805      	bt      	0xc72	// c72 <__GI_sqrt+0xee>
     c6a:	644e      	cmpne      	r3, r1
     c6c:	0810      	bt      	0xc8c	// c8c <__GI_sqrt+0x108>
     c6e:	6588      	cmphs      	r2, r6
     c70:	0c0e      	bf      	0xc8c	// c8c <__GI_sqrt+0x108>
     c72:	3edf      	btsti      	r6, 31
     c74:	5eb0      	addu      	r5, r6, r4
     c76:	0c37      	bf      	0xce4	// ce4 <__GI_sqrt+0x160>
     c78:	3ddf      	btsti      	r5, 31
     c7a:	0835      	bt      	0xce4	// ce4 <__GI_sqrt+0x160>
     c7c:	59e2      	addi      	r7, r1, 1
     c7e:	6588      	cmphs      	r2, r6
     c80:	60c6      	subu      	r3, r1
     c82:	0802      	bt      	0xc86	// c86 <__GI_sqrt+0x102>
     c84:	2b00      	subi      	r3, 1
     c86:	609a      	subu      	r2, r6
     c88:	6010      	addu      	r0, r4
     c8a:	6c5f      	mov      	r1, r7
     c8c:	4adf      	lsri      	r6, r2, 31
     c8e:	618c      	addu      	r6, r3
     c90:	60d8      	addu      	r3, r6
     c92:	98c1      	ld.w      	r6, (r14, 0x4)
     c94:	2e00      	subi      	r6, 1
     c96:	3e40      	cmpnei      	r6, 0
     c98:	4241      	lsli      	r2, r2, 1
     c9a:	4c81      	lsri      	r4, r4, 1
     c9c:	b8c1      	st.w      	r6, (r14, 0x4)
     c9e:	0be3      	bt      	0xc64	// c64 <__GI_sqrt+0xe0>
     ca0:	6cc8      	or      	r3, r2
     ca2:	3b40      	cmpnei      	r3, 0
     ca4:	0c09      	bf      	0xcb6	// cb6 <__GI_sqrt+0x132>
     ca6:	3300      	movi      	r3, 0
     ca8:	2b00      	subi      	r3, 1
     caa:	64c2      	cmpne      	r0, r3
     cac:	081e      	bt      	0xce8	// ce8 <__GI_sqrt+0x164>
     cae:	9800      	ld.w      	r0, (r14, 0x0)
     cb0:	2000      	addi      	r0, 1
     cb2:	b800      	st.w      	r0, (r14, 0x0)
     cb4:	3000      	movi      	r0, 0
     cb6:	3401      	movi      	r4, 1
     cb8:	9860      	ld.w      	r3, (r14, 0x0)
     cba:	98a0      	ld.w      	r5, (r14, 0x0)
     cbc:	690c      	and      	r4, r3
     cbe:	5541      	asri      	r2, r5, 1
     cc0:	102e      	lrw      	r1, 0x3fe00000	// cf8 <__GI_sqrt+0x174>
     cc2:	3c40      	cmpnei      	r4, 0
     cc4:	6048      	addu      	r1, r2
     cc6:	4801      	lsri      	r0, r0, 1
     cc8:	0c02      	bf      	0xccc	// ccc <__GI_sqrt+0x148>
     cca:	38bf      	bseti      	r0, 31
     ccc:	98a2      	ld.w      	r5, (r14, 0x8)
     cce:	4594      	lsli      	r4, r5, 20
     cd0:	6104      	addu      	r4, r1
     cd2:	6d43      	mov      	r5, r0
     cd4:	076f      	br      	0xbb2	// bb2 <__GI_sqrt+0x2e>
     cd6:	4a0b      	lsri      	r0, r2, 11
     cd8:	2c14      	subi      	r4, 21
     cda:	4255      	lsli      	r2, r2, 21
     cdc:	0786      	br      	0xbe8	// be8 <__GI_sqrt+0x64>
     cde:	4001      	lsli      	r0, r0, 1
     ce0:	2300      	addi      	r3, 1
     ce2:	0788      	br      	0xbf2	// bf2 <__GI_sqrt+0x6e>
     ce4:	6dc7      	mov      	r7, r1
     ce6:	07cc      	br      	0xc7e	// c7e <__GI_sqrt+0xfa>
     ce8:	2000      	addi      	r0, 1
     cea:	3880      	bclri      	r0, 0
     cec:	07e5      	br      	0xcb6	// cb6 <__GI_sqrt+0x132>
     cee:	0000      	bkpt
     cf0:	7ff00000 	.long	0x7ff00000
     cf4:	fffffc01 	.long	0xfffffc01
     cf8:	3fe00000 	.long	0x3fe00000

00000cfc <___gnu_csky_case_uqi>:
     cfc:	1421      	subi      	r14, r14, 4
     cfe:	b820      	st.w      	r1, (r14, 0x0)
     d00:	6c7f      	mov      	r1, r15
     d02:	6040      	addu      	r1, r0
     d04:	8120      	ld.b      	r1, (r1, 0x0)
     d06:	4121      	lsli      	r1, r1, 1
     d08:	63c4      	addu      	r15, r1
     d0a:	9820      	ld.w      	r1, (r14, 0x0)
     d0c:	1401      	addi      	r14, r14, 4
     d0e:	783c      	jmp      	r15

00000d10 <__fixunsdfsi>:
     d10:	14d2      	push      	r4-r5, r15
     d12:	3200      	movi      	r2, 0
     d14:	106c      	lrw      	r3, 0x41e00000	// d44 <__fixunsdfsi+0x34>
     d16:	6d43      	mov      	r5, r0
     d18:	6d07      	mov      	r4, r1
     d1a:	e0000397 	bsr      	0x1448	// 1448 <__gedf2>
     d1e:	38df      	btsti      	r0, 31
     d20:	0c06      	bf      	0xd2c	// d2c <__fixunsdfsi+0x1c>
     d22:	6c17      	mov      	r0, r5
     d24:	6c53      	mov      	r1, r4
     d26:	e0000405 	bsr      	0x1530	// 1530 <__fixdfsi>
     d2a:	1492      	pop      	r4-r5, r15
     d2c:	3200      	movi      	r2, 0
     d2e:	1066      	lrw      	r3, 0x41e00000	// d44 <__fixunsdfsi+0x34>
     d30:	6c17      	mov      	r0, r5
     d32:	6c53      	mov      	r1, r4
     d34:	e000018c 	bsr      	0x104c	// 104c <__subdf3>
     d38:	e00003fc 	bsr      	0x1530	// 1530 <__fixdfsi>
     d3c:	3380      	movi      	r3, 128
     d3e:	4378      	lsli      	r3, r3, 24
     d40:	600c      	addu      	r0, r3
     d42:	1492      	pop      	r4-r5, r15
     d44:	41e00000 	.long	0x41e00000

00000d48 <_fpadd_parts>:
     d48:	14c4      	push      	r4-r7
     d4a:	142a      	subi      	r14, r14, 40
     d4c:	9060      	ld.w      	r3, (r0, 0x0)
     d4e:	3b01      	cmphsi      	r3, 2
     d50:	6dcb      	mov      	r7, r2
     d52:	0c67      	bf      	0xe20	// e20 <_fpadd_parts+0xd8>
     d54:	9140      	ld.w      	r2, (r1, 0x0)
     d56:	3a01      	cmphsi      	r2, 2
     d58:	0c66      	bf      	0xe24	// e24 <_fpadd_parts+0xdc>
     d5a:	3b44      	cmpnei      	r3, 4
     d5c:	0cde      	bf      	0xf18	// f18 <_fpadd_parts+0x1d0>
     d5e:	3a44      	cmpnei      	r2, 4
     d60:	0c62      	bf      	0xe24	// e24 <_fpadd_parts+0xdc>
     d62:	3a42      	cmpnei      	r2, 2
     d64:	0cb7      	bf      	0xed2	// ed2 <_fpadd_parts+0x18a>
     d66:	3b42      	cmpnei      	r3, 2
     d68:	0c5e      	bf      	0xe24	// e24 <_fpadd_parts+0xdc>
     d6a:	9043      	ld.w      	r2, (r0, 0xc)
     d6c:	9064      	ld.w      	r3, (r0, 0x10)
     d6e:	9082      	ld.w      	r4, (r0, 0x8)
     d70:	91a2      	ld.w      	r5, (r1, 0x8)
     d72:	b842      	st.w      	r2, (r14, 0x8)
     d74:	b863      	st.w      	r3, (r14, 0xc)
     d76:	9143      	ld.w      	r2, (r1, 0xc)
     d78:	9164      	ld.w      	r3, (r1, 0x10)
     d7a:	b840      	st.w      	r2, (r14, 0x0)
     d7c:	b861      	st.w      	r3, (r14, 0x4)
     d7e:	5c75      	subu      	r3, r4, r5
     d80:	3bdf      	btsti      	r3, 31
     d82:	6c8f      	mov      	r2, r3
     d84:	08d2      	bt      	0xf28	// f28 <_fpadd_parts+0x1e0>
     d86:	363f      	movi      	r6, 63
     d88:	6499      	cmplt      	r6, r2
     d8a:	0c50      	bf      	0xe2a	// e2a <_fpadd_parts+0xe2>
     d8c:	6515      	cmplt      	r5, r4
     d8e:	0cbf      	bf      	0xf0c	// f0c <_fpadd_parts+0x1c4>
     d90:	3200      	movi      	r2, 0
     d92:	3300      	movi      	r3, 0
     d94:	b840      	st.w      	r2, (r14, 0x0)
     d96:	b861      	st.w      	r3, (r14, 0x4)
     d98:	9061      	ld.w      	r3, (r0, 0x4)
     d9a:	9141      	ld.w      	r2, (r1, 0x4)
     d9c:	648e      	cmpne      	r3, r2
     d9e:	0c78      	bf      	0xe8e	// e8e <_fpadd_parts+0x146>
     da0:	3b40      	cmpnei      	r3, 0
     da2:	0cad      	bf      	0xefc	// efc <_fpadd_parts+0x1b4>
     da4:	9800      	ld.w      	r0, (r14, 0x0)
     da6:	9821      	ld.w      	r1, (r14, 0x4)
     da8:	9842      	ld.w      	r2, (r14, 0x8)
     daa:	9863      	ld.w      	r3, (r14, 0xc)
     dac:	6400      	cmphs      	r0, r0
     dae:	600b      	subc      	r0, r2
     db0:	604f      	subc      	r1, r3
     db2:	39df      	btsti      	r1, 31
     db4:	08bd      	bt      	0xf2e	// f2e <_fpadd_parts+0x1e6>
     db6:	3300      	movi      	r3, 0
     db8:	b761      	st.w      	r3, (r7, 0x4)
     dba:	b782      	st.w      	r4, (r7, 0x8)
     dbc:	6c83      	mov      	r2, r0
     dbe:	6cc7      	mov      	r3, r1
     dc0:	b703      	st.w      	r0, (r7, 0xc)
     dc2:	b724      	st.w      	r1, (r7, 0x10)
     dc4:	3000      	movi      	r0, 0
     dc6:	3100      	movi      	r1, 0
     dc8:	2800      	subi      	r0, 1
     dca:	2900      	subi      	r1, 1
     dcc:	6401      	cmplt      	r0, r0
     dce:	6009      	addc      	r0, r2
     dd0:	604d      	addc      	r1, r3
     dd2:	038f      	lrw      	r4, 0xfffffff	// 1010 <_fpadd_parts+0x2c8>
     dd4:	6450      	cmphs      	r4, r1
     dd6:	0c67      	bf      	0xea4	// ea4 <_fpadd_parts+0x15c>
     dd8:	6506      	cmpne      	r1, r4
     dda:	0cfd      	bf      	0xfd4	// fd4 <_fpadd_parts+0x28c>
     ddc:	3000      	movi      	r0, 0
     dde:	9722      	ld.w      	r1, (r7, 0x8)
     de0:	2801      	subi      	r0, 2
     de2:	2900      	subi      	r1, 1
     de4:	03d4      	lrw      	r6, 0xfffffff	// 1010 <_fpadd_parts+0x2c8>
     de6:	b802      	st.w      	r0, (r14, 0x8)
     de8:	b8e0      	st.w      	r7, (r14, 0x0)
     dea:	0403      	br      	0xdf0	// df0 <_fpadd_parts+0xa8>
     dec:	6596      	cmpne      	r5, r6
     dee:	0c83      	bf      	0xef4	// ef4 <_fpadd_parts+0x1ac>
     df0:	4301      	lsli      	r0, r3, 1
     df2:	4a9f      	lsri      	r4, r2, 31
     df4:	6d00      	or      	r4, r0
     df6:	42a1      	lsli      	r5, r2, 1
     df8:	6c97      	mov      	r2, r5
     dfa:	6cd3      	mov      	r3, r4
     dfc:	3500      	movi      	r5, 0
     dfe:	3400      	movi      	r4, 0
     e00:	2c00      	subi      	r4, 1
     e02:	2d00      	subi      	r5, 1
     e04:	6511      	cmplt      	r4, r4
     e06:	6109      	addc      	r4, r2
     e08:	614d      	addc      	r5, r3
     e0a:	6558      	cmphs      	r6, r5
     e0c:	6c07      	mov      	r0, r1
     e0e:	2900      	subi      	r1, 1
     e10:	0bee      	bt      	0xdec	// dec <_fpadd_parts+0xa4>
     e12:	98e0      	ld.w      	r7, (r14, 0x0)
     e14:	b743      	st.w      	r2, (r7, 0xc)
     e16:	b764      	st.w      	r3, (r7, 0x10)
     e18:	3303      	movi      	r3, 3
     e1a:	b702      	st.w      	r0, (r7, 0x8)
     e1c:	b760      	st.w      	r3, (r7, 0x0)
     e1e:	6c1f      	mov      	r0, r7
     e20:	140a      	addi      	r14, r14, 40
     e22:	1484      	pop      	r4-r7
     e24:	6c07      	mov      	r0, r1
     e26:	140a      	addi      	r14, r14, 40
     e28:	1484      	pop      	r4-r7
     e2a:	3b20      	cmplti      	r3, 1
     e2c:	088c      	bt      	0xf44	// f44 <_fpadd_parts+0x1fc>
     e2e:	3300      	movi      	r3, 0
     e30:	2b1f      	subi      	r3, 32
     e32:	60c8      	addu      	r3, r2
     e34:	3bdf      	btsti      	r3, 31
     e36:	b866      	st.w      	r3, (r14, 0x18)
     e38:	08bb      	bt      	0xfae	// fae <_fpadd_parts+0x266>
     e3a:	98a1      	ld.w      	r5, (r14, 0x4)
     e3c:	714d      	lsr      	r5, r3
     e3e:	b8a4      	st.w      	r5, (r14, 0x10)
     e40:	3500      	movi      	r5, 0
     e42:	b8a5      	st.w      	r5, (r14, 0x14)
     e44:	9866      	ld.w      	r3, (r14, 0x18)
     e46:	3bdf      	btsti      	r3, 31
     e48:	3500      	movi      	r5, 0
     e4a:	3600      	movi      	r6, 0
     e4c:	08ad      	bt      	0xfa6	// fa6 <_fpadd_parts+0x25e>
     e4e:	3201      	movi      	r2, 1
     e50:	708c      	lsl      	r2, r3
     e52:	6d8b      	mov      	r6, r2
     e54:	3200      	movi      	r2, 0
     e56:	3300      	movi      	r3, 0
     e58:	2a00      	subi      	r2, 1
     e5a:	2b00      	subi      	r3, 1
     e5c:	6489      	cmplt      	r2, r2
     e5e:	6095      	addc      	r2, r5
     e60:	60d9      	addc      	r3, r6
     e62:	98a0      	ld.w      	r5, (r14, 0x0)
     e64:	98c1      	ld.w      	r6, (r14, 0x4)
     e66:	6948      	and      	r5, r2
     e68:	698c      	and      	r6, r3
     e6a:	6c97      	mov      	r2, r5
     e6c:	6cdb      	mov      	r3, r6
     e6e:	6c8c      	or      	r2, r3
     e70:	3a40      	cmpnei      	r2, 0
     e72:	3500      	movi      	r5, 0
     e74:	6155      	addc      	r5, r5
     e76:	6c97      	mov      	r2, r5
     e78:	3300      	movi      	r3, 0
     e7a:	98a4      	ld.w      	r5, (r14, 0x10)
     e7c:	98c5      	ld.w      	r6, (r14, 0x14)
     e7e:	6d48      	or      	r5, r2
     e80:	6d8c      	or      	r6, r3
     e82:	9061      	ld.w      	r3, (r0, 0x4)
     e84:	9141      	ld.w      	r2, (r1, 0x4)
     e86:	648e      	cmpne      	r3, r2
     e88:	b8a0      	st.w      	r5, (r14, 0x0)
     e8a:	b8c1      	st.w      	r6, (r14, 0x4)
     e8c:	0b8a      	bt      	0xda0	// da0 <_fpadd_parts+0x58>
     e8e:	b761      	st.w      	r3, (r7, 0x4)
     e90:	9800      	ld.w      	r0, (r14, 0x0)
     e92:	9821      	ld.w      	r1, (r14, 0x4)
     e94:	9842      	ld.w      	r2, (r14, 0x8)
     e96:	9863      	ld.w      	r3, (r14, 0xc)
     e98:	6489      	cmplt      	r2, r2
     e9a:	6081      	addc      	r2, r0
     e9c:	60c5      	addc      	r3, r1
     e9e:	b782      	st.w      	r4, (r7, 0x8)
     ea0:	b743      	st.w      	r2, (r7, 0xc)
     ea2:	b764      	st.w      	r3, (r7, 0x10)
     ea4:	3103      	movi      	r1, 3
     ea6:	b720      	st.w      	r1, (r7, 0x0)
     ea8:	123b      	lrw      	r1, 0x1fffffff	// 1014 <_fpadd_parts+0x2cc>
     eaa:	64c4      	cmphs      	r1, r3
     eac:	0810      	bt      	0xecc	// ecc <_fpadd_parts+0x184>
     eae:	439f      	lsli      	r4, r3, 31
     eb0:	4a01      	lsri      	r0, r2, 1
     eb2:	6c10      	or      	r0, r4
     eb4:	3500      	movi      	r5, 0
     eb6:	3401      	movi      	r4, 1
     eb8:	4b21      	lsri      	r1, r3, 1
     eba:	6890      	and      	r2, r4
     ebc:	68d4      	and      	r3, r5
     ebe:	6c80      	or      	r2, r0
     ec0:	6cc4      	or      	r3, r1
     ec2:	b743      	st.w      	r2, (r7, 0xc)
     ec4:	b764      	st.w      	r3, (r7, 0x10)
     ec6:	9762      	ld.w      	r3, (r7, 0x8)
     ec8:	2300      	addi      	r3, 1
     eca:	b762      	st.w      	r3, (r7, 0x8)
     ecc:	6c1f      	mov      	r0, r7
     ece:	140a      	addi      	r14, r14, 40
     ed0:	1484      	pop      	r4-r7
     ed2:	3b42      	cmpnei      	r3, 2
     ed4:	0ba6      	bt      	0xe20	// e20 <_fpadd_parts+0xd8>
     ed6:	b760      	st.w      	r3, (r7, 0x0)
     ed8:	9061      	ld.w      	r3, (r0, 0x4)
     eda:	b761      	st.w      	r3, (r7, 0x4)
     edc:	9062      	ld.w      	r3, (r0, 0x8)
     ede:	b762      	st.w      	r3, (r7, 0x8)
     ee0:	9063      	ld.w      	r3, (r0, 0xc)
     ee2:	b763      	st.w      	r3, (r7, 0xc)
     ee4:	9064      	ld.w      	r3, (r0, 0x10)
     ee6:	9141      	ld.w      	r2, (r1, 0x4)
     ee8:	b764      	st.w      	r3, (r7, 0x10)
     eea:	9061      	ld.w      	r3, (r0, 0x4)
     eec:	68c8      	and      	r3, r2
     eee:	b761      	st.w      	r3, (r7, 0x4)
     ef0:	6c1f      	mov      	r0, r7
     ef2:	0797      	br      	0xe20	// e20 <_fpadd_parts+0xd8>
     ef4:	98e2      	ld.w      	r7, (r14, 0x8)
     ef6:	651c      	cmphs      	r7, r4
     ef8:	0b7c      	bt      	0xdf0	// df0 <_fpadd_parts+0xa8>
     efa:	078c      	br      	0xe12	// e12 <_fpadd_parts+0xca>
     efc:	9802      	ld.w      	r0, (r14, 0x8)
     efe:	9823      	ld.w      	r1, (r14, 0xc)
     f00:	9840      	ld.w      	r2, (r14, 0x0)
     f02:	9861      	ld.w      	r3, (r14, 0x4)
     f04:	6400      	cmphs      	r0, r0
     f06:	600b      	subc      	r0, r2
     f08:	604f      	subc      	r1, r3
     f0a:	0754      	br      	0xdb2	// db2 <_fpadd_parts+0x6a>
     f0c:	3200      	movi      	r2, 0
     f0e:	3300      	movi      	r3, 0
     f10:	6d17      	mov      	r4, r5
     f12:	b842      	st.w      	r2, (r14, 0x8)
     f14:	b863      	st.w      	r3, (r14, 0xc)
     f16:	0741      	br      	0xd98	// d98 <_fpadd_parts+0x50>
     f18:	3a44      	cmpnei      	r2, 4
     f1a:	0b83      	bt      	0xe20	// e20 <_fpadd_parts+0xd8>
     f1c:	9041      	ld.w      	r2, (r0, 0x4)
     f1e:	9161      	ld.w      	r3, (r1, 0x4)
     f20:	64ca      	cmpne      	r2, r3
     f22:	0f7f      	bf      	0xe20	// e20 <_fpadd_parts+0xd8>
     f24:	111d      	lrw      	r0, 0x399c	// 1018 <_fpadd_parts+0x2d0>
     f26:	077d      	br      	0xe20	// e20 <_fpadd_parts+0xd8>
     f28:	3200      	movi      	r2, 0
     f2a:	608e      	subu      	r2, r3
     f2c:	072d      	br      	0xd86	// d86 <_fpadd_parts+0x3e>
     f2e:	3301      	movi      	r3, 1
     f30:	b761      	st.w      	r3, (r7, 0x4)
     f32:	3200      	movi      	r2, 0
     f34:	3300      	movi      	r3, 0
     f36:	6488      	cmphs      	r2, r2
     f38:	6083      	subc      	r2, r0
     f3a:	60c7      	subc      	r3, r1
     f3c:	b782      	st.w      	r4, (r7, 0x8)
     f3e:	b743      	st.w      	r2, (r7, 0xc)
     f40:	b764      	st.w      	r3, (r7, 0x10)
     f42:	0741      	br      	0xdc4	// dc4 <_fpadd_parts+0x7c>
     f44:	3b40      	cmpnei      	r3, 0
     f46:	0f29      	bf      	0xd98	// d98 <_fpadd_parts+0x50>
     f48:	3300      	movi      	r3, 0
     f4a:	2b1f      	subi      	r3, 32
     f4c:	60c8      	addu      	r3, r2
     f4e:	3bdf      	btsti      	r3, 31
     f50:	6108      	addu      	r4, r2
     f52:	b866      	st.w      	r3, (r14, 0x18)
     f54:	0849      	bt      	0xfe6	// fe6 <_fpadd_parts+0x29e>
     f56:	9863      	ld.w      	r3, (r14, 0xc)
     f58:	98a6      	ld.w      	r5, (r14, 0x18)
     f5a:	70d5      	lsr      	r3, r5
     f5c:	b864      	st.w      	r3, (r14, 0x10)
     f5e:	3300      	movi      	r3, 0
     f60:	b865      	st.w      	r3, (r14, 0x14)
     f62:	9866      	ld.w      	r3, (r14, 0x18)
     f64:	3bdf      	btsti      	r3, 31
     f66:	3500      	movi      	r5, 0
     f68:	3600      	movi      	r6, 0
     f6a:	083a      	bt      	0xfde	// fde <_fpadd_parts+0x296>
     f6c:	3201      	movi      	r2, 1
     f6e:	708c      	lsl      	r2, r3
     f70:	6d8b      	mov      	r6, r2
     f72:	3200      	movi      	r2, 0
     f74:	3300      	movi      	r3, 0
     f76:	2a00      	subi      	r2, 1
     f78:	2b00      	subi      	r3, 1
     f7a:	6489      	cmplt      	r2, r2
     f7c:	6095      	addc      	r2, r5
     f7e:	60d9      	addc      	r3, r6
     f80:	98a2      	ld.w      	r5, (r14, 0x8)
     f82:	98c3      	ld.w      	r6, (r14, 0xc)
     f84:	6948      	and      	r5, r2
     f86:	698c      	and      	r6, r3
     f88:	6c97      	mov      	r2, r5
     f8a:	6cdb      	mov      	r3, r6
     f8c:	6c8c      	or      	r2, r3
     f8e:	3a40      	cmpnei      	r2, 0
     f90:	3500      	movi      	r5, 0
     f92:	6155      	addc      	r5, r5
     f94:	6c97      	mov      	r2, r5
     f96:	3300      	movi      	r3, 0
     f98:	98a4      	ld.w      	r5, (r14, 0x10)
     f9a:	98c5      	ld.w      	r6, (r14, 0x14)
     f9c:	6d48      	or      	r5, r2
     f9e:	6d8c      	or      	r6, r3
     fa0:	b8a2      	st.w      	r5, (r14, 0x8)
     fa2:	b8c3      	st.w      	r6, (r14, 0xc)
     fa4:	06fa      	br      	0xd98	// d98 <_fpadd_parts+0x50>
     fa6:	3301      	movi      	r3, 1
     fa8:	70c8      	lsl      	r3, r2
     faa:	6d4f      	mov      	r5, r3
     fac:	0754      	br      	0xe54	// e54 <_fpadd_parts+0x10c>
     fae:	9861      	ld.w      	r3, (r14, 0x4)
     fb0:	361f      	movi      	r6, 31
     fb2:	43a1      	lsli      	r5, r3, 1
     fb4:	618a      	subu      	r6, r2
     fb6:	7158      	lsl      	r5, r6
     fb8:	b8a9      	st.w      	r5, (r14, 0x24)
     fba:	98a0      	ld.w      	r5, (r14, 0x0)
     fbc:	98c1      	ld.w      	r6, (r14, 0x4)
     fbe:	b8a7      	st.w      	r5, (r14, 0x1c)
     fc0:	b8c8      	st.w      	r6, (r14, 0x20)
     fc2:	9867      	ld.w      	r3, (r14, 0x1c)
     fc4:	70c9      	lsr      	r3, r2
     fc6:	98a9      	ld.w      	r5, (r14, 0x24)
     fc8:	6cd4      	or      	r3, r5
     fca:	b864      	st.w      	r3, (r14, 0x10)
     fcc:	9868      	ld.w      	r3, (r14, 0x20)
     fce:	70c9      	lsr      	r3, r2
     fd0:	b865      	st.w      	r3, (r14, 0x14)
     fd2:	0739      	br      	0xe44	// e44 <_fpadd_parts+0xfc>
     fd4:	3100      	movi      	r1, 0
     fd6:	2901      	subi      	r1, 2
     fd8:	6404      	cmphs      	r1, r0
     fda:	0b01      	bt      	0xddc	// ddc <_fpadd_parts+0x94>
     fdc:	0764      	br      	0xea4	// ea4 <_fpadd_parts+0x15c>
     fde:	3301      	movi      	r3, 1
     fe0:	70c8      	lsl      	r3, r2
     fe2:	6d4f      	mov      	r5, r3
     fe4:	07c7      	br      	0xf72	// f72 <_fpadd_parts+0x22a>
     fe6:	9863      	ld.w      	r3, (r14, 0xc)
     fe8:	43c1      	lsli      	r6, r3, 1
     fea:	351f      	movi      	r5, 31
     fec:	5d69      	subu      	r3, r5, r2
     fee:	6d5b      	mov      	r5, r6
     ff0:	714c      	lsl      	r5, r3
     ff2:	b8a9      	st.w      	r5, (r14, 0x24)
     ff4:	98a2      	ld.w      	r5, (r14, 0x8)
     ff6:	98c3      	ld.w      	r6, (r14, 0xc)
     ff8:	b8a7      	st.w      	r5, (r14, 0x1c)
     ffa:	b8c8      	st.w      	r6, (r14, 0x20)
     ffc:	9867      	ld.w      	r3, (r14, 0x1c)
     ffe:	70c9      	lsr      	r3, r2
    1000:	98a9      	ld.w      	r5, (r14, 0x24)
    1002:	6cd4      	or      	r3, r5
    1004:	b864      	st.w      	r3, (r14, 0x10)
    1006:	9868      	ld.w      	r3, (r14, 0x20)
    1008:	70c9      	lsr      	r3, r2
    100a:	b865      	st.w      	r3, (r14, 0x14)
    100c:	07ab      	br      	0xf62	// f62 <_fpadd_parts+0x21a>
    100e:	0000      	bkpt
    1010:	0fffffff 	.long	0x0fffffff
    1014:	1fffffff 	.long	0x1fffffff
    1018:	0000399c 	.long	0x0000399c

0000101c <__adddf3>:
    101c:	14d0      	push      	r15
    101e:	1433      	subi      	r14, r14, 76
    1020:	b800      	st.w      	r0, (r14, 0x0)
    1022:	b821      	st.w      	r1, (r14, 0x4)
    1024:	6c3b      	mov      	r0, r14
    1026:	1904      	addi      	r1, r14, 16
    1028:	b863      	st.w      	r3, (r14, 0xc)
    102a:	b842      	st.w      	r2, (r14, 0x8)
    102c:	e00003f4 	bsr      	0x1814	// 1814 <__unpack_d>
    1030:	1909      	addi      	r1, r14, 36
    1032:	1802      	addi      	r0, r14, 8
    1034:	e00003f0 	bsr      	0x1814	// 1814 <__unpack_d>
    1038:	1a0e      	addi      	r2, r14, 56
    103a:	1909      	addi      	r1, r14, 36
    103c:	1804      	addi      	r0, r14, 16
    103e:	e3fffe85 	bsr      	0xd48	// d48 <_fpadd_parts>
    1042:	e000031b 	bsr      	0x1678	// 1678 <__pack_d>
    1046:	1413      	addi      	r14, r14, 76
    1048:	1490      	pop      	r15
	...

0000104c <__subdf3>:
    104c:	14d0      	push      	r15
    104e:	1433      	subi      	r14, r14, 76
    1050:	b800      	st.w      	r0, (r14, 0x0)
    1052:	b821      	st.w      	r1, (r14, 0x4)
    1054:	6c3b      	mov      	r0, r14
    1056:	1904      	addi      	r1, r14, 16
    1058:	b842      	st.w      	r2, (r14, 0x8)
    105a:	b863      	st.w      	r3, (r14, 0xc)
    105c:	e00003dc 	bsr      	0x1814	// 1814 <__unpack_d>
    1060:	1909      	addi      	r1, r14, 36
    1062:	1802      	addi      	r0, r14, 8
    1064:	e00003d8 	bsr      	0x1814	// 1814 <__unpack_d>
    1068:	986a      	ld.w      	r3, (r14, 0x28)
    106a:	3201      	movi      	r2, 1
    106c:	6cc9      	xor      	r3, r2
    106e:	1909      	addi      	r1, r14, 36
    1070:	1a0e      	addi      	r2, r14, 56
    1072:	1804      	addi      	r0, r14, 16
    1074:	b86a      	st.w      	r3, (r14, 0x28)
    1076:	e3fffe69 	bsr      	0xd48	// d48 <_fpadd_parts>
    107a:	e00002ff 	bsr      	0x1678	// 1678 <__pack_d>
    107e:	1413      	addi      	r14, r14, 76
    1080:	1490      	pop      	r15
	...

00001084 <__muldf3>:
    1084:	14d4      	push      	r4-r7, r15
    1086:	143b      	subi      	r14, r14, 108
    1088:	b808      	st.w      	r0, (r14, 0x20)
    108a:	b829      	st.w      	r1, (r14, 0x24)
    108c:	1808      	addi      	r0, r14, 32
    108e:	190c      	addi      	r1, r14, 48
    1090:	b86b      	st.w      	r3, (r14, 0x2c)
    1092:	b84a      	st.w      	r2, (r14, 0x28)
    1094:	e00003c0 	bsr      	0x1814	// 1814 <__unpack_d>
    1098:	1911      	addi      	r1, r14, 68
    109a:	180a      	addi      	r0, r14, 40
    109c:	e00003bc 	bsr      	0x1814	// 1814 <__unpack_d>
    10a0:	986c      	ld.w      	r3, (r14, 0x30)
    10a2:	3b01      	cmphsi      	r3, 2
    10a4:	0cac      	bf      	0x11fc	// 11fc <__muldf3+0x178>
    10a6:	9851      	ld.w      	r2, (r14, 0x44)
    10a8:	3a01      	cmphsi      	r2, 2
    10aa:	0c9c      	bf      	0x11e2	// 11e2 <__muldf3+0x15e>
    10ac:	3b44      	cmpnei      	r3, 4
    10ae:	0ca5      	bf      	0x11f8	// 11f8 <__muldf3+0x174>
    10b0:	3a44      	cmpnei      	r2, 4
    10b2:	0c96      	bf      	0x11de	// 11de <__muldf3+0x15a>
    10b4:	3b42      	cmpnei      	r3, 2
    10b6:	0ca3      	bf      	0x11fc	// 11fc <__muldf3+0x178>
    10b8:	3a42      	cmpnei      	r2, 2
    10ba:	0c94      	bf      	0x11e2	// 11e2 <__muldf3+0x15e>
    10bc:	98ef      	ld.w      	r7, (r14, 0x3c)
    10be:	98b4      	ld.w      	r5, (r14, 0x50)
    10c0:	9875      	ld.w      	r3, (r14, 0x54)
    10c2:	6d8f      	mov      	r6, r3
    10c4:	6c9f      	mov      	r2, r7
    10c6:	3300      	movi      	r3, 0
    10c8:	6c17      	mov      	r0, r5
    10ca:	3100      	movi      	r1, 0
    10cc:	e0000294 	bsr      	0x15f4	// 15f4 <__muldi3>
    10d0:	b804      	st.w      	r0, (r14, 0x10)
    10d2:	b825      	st.w      	r1, (r14, 0x14)
    10d4:	6c9f      	mov      	r2, r7
    10d6:	3300      	movi      	r3, 0
    10d8:	6c1b      	mov      	r0, r6
    10da:	3100      	movi      	r1, 0
    10dc:	9890      	ld.w      	r4, (r14, 0x40)
    10de:	b8c2      	st.w      	r6, (r14, 0x8)
    10e0:	e000028a 	bsr      	0x15f4	// 15f4 <__muldi3>
    10e4:	6d83      	mov      	r6, r0
    10e6:	6dc7      	mov      	r7, r1
    10e8:	9842      	ld.w      	r2, (r14, 0x8)
    10ea:	3300      	movi      	r3, 0
    10ec:	6c13      	mov      	r0, r4
    10ee:	3100      	movi      	r1, 0
    10f0:	e0000282 	bsr      	0x15f4	// 15f4 <__muldi3>
    10f4:	b806      	st.w      	r0, (r14, 0x18)
    10f6:	b827      	st.w      	r1, (r14, 0x1c)
    10f8:	6c97      	mov      	r2, r5
    10fa:	3300      	movi      	r3, 0
    10fc:	6c13      	mov      	r0, r4
    10fe:	3100      	movi      	r1, 0
    1100:	e000027a 	bsr      	0x15f4	// 15f4 <__muldi3>
    1104:	6401      	cmplt      	r0, r0
    1106:	6019      	addc      	r0, r6
    1108:	605d      	addc      	r1, r7
    110a:	65c4      	cmphs      	r1, r7
    110c:	0c91      	bf      	0x122e	// 122e <__muldf3+0x1aa>
    110e:	645e      	cmpne      	r7, r1
    1110:	0c8d      	bf      	0x122a	// 122a <__muldf3+0x1a6>
    1112:	3300      	movi      	r3, 0
    1114:	3400      	movi      	r4, 0
    1116:	b862      	st.w      	r3, (r14, 0x8)
    1118:	b883      	st.w      	r4, (r14, 0xc)
    111a:	9884      	ld.w      	r4, (r14, 0x10)
    111c:	98a5      	ld.w      	r5, (r14, 0x14)
    111e:	3600      	movi      	r6, 0
    1120:	6dc3      	mov      	r7, r0
    1122:	6c93      	mov      	r2, r4
    1124:	6cd7      	mov      	r3, r5
    1126:	6489      	cmplt      	r2, r2
    1128:	6099      	addc      	r2, r6
    112a:	60dd      	addc      	r3, r7
    112c:	6d8b      	mov      	r6, r2
    112e:	6dcf      	mov      	r7, r3
    1130:	6c93      	mov      	r2, r4
    1132:	6cd7      	mov      	r3, r5
    1134:	64dc      	cmphs      	r7, r3
    1136:	0c70      	bf      	0x1216	// 1216 <__muldf3+0x192>
    1138:	65ce      	cmpne      	r3, r7
    113a:	0c6c      	bf      	0x1212	// 1212 <__muldf3+0x18e>
    113c:	6c87      	mov      	r2, r1
    113e:	3300      	movi      	r3, 0
    1140:	9806      	ld.w      	r0, (r14, 0x18)
    1142:	9827      	ld.w      	r1, (r14, 0x1c)
    1144:	6401      	cmplt      	r0, r0
    1146:	6009      	addc      	r0, r2
    1148:	604d      	addc      	r1, r3
    114a:	6c83      	mov      	r2, r0
    114c:	6cc7      	mov      	r3, r1
    114e:	9802      	ld.w      	r0, (r14, 0x8)
    1150:	9823      	ld.w      	r1, (r14, 0xc)
    1152:	6401      	cmplt      	r0, r0
    1154:	6009      	addc      	r0, r2
    1156:	604d      	addc      	r1, r3
    1158:	6c83      	mov      	r2, r0
    115a:	6cc7      	mov      	r3, r1
    115c:	988e      	ld.w      	r4, (r14, 0x38)
    115e:	9833      	ld.w      	r1, (r14, 0x4c)
    1160:	6104      	addu      	r4, r1
    1162:	5c2e      	addi      	r1, r4, 4
    1164:	b838      	st.w      	r1, (r14, 0x60)
    1166:	980d      	ld.w      	r0, (r14, 0x34)
    1168:	9832      	ld.w      	r1, (r14, 0x48)
    116a:	6442      	cmpne      	r0, r1
    116c:	12b0      	lrw      	r5, 0x1fffffff	// 12ac <__muldf3+0x228>
    116e:	3100      	movi      	r1, 0
    1170:	6045      	addc      	r1, r1
    1172:	64d4      	cmphs      	r5, r3
    1174:	b837      	st.w      	r1, (r14, 0x5c)
    1176:	0879      	bt      	0x1268	// 1268 <__muldf3+0x1e4>
    1178:	2404      	addi      	r4, 5
    117a:	b8a4      	st.w      	r5, (r14, 0x10)
    117c:	3001      	movi      	r0, 1
    117e:	3100      	movi      	r1, 0
    1180:	6808      	and      	r0, r2
    1182:	684c      	and      	r1, r3
    1184:	6c04      	or      	r0, r1
    1186:	3840      	cmpnei      	r0, 0
    1188:	b882      	st.w      	r4, (r14, 0x8)
    118a:	0c0e      	bf      	0x11a6	// 11a6 <__muldf3+0x122>
    118c:	473f      	lsli      	r1, r7, 31
    118e:	4e01      	lsri      	r0, r6, 1
    1190:	6c04      	or      	r0, r1
    1192:	4f21      	lsri      	r1, r7, 1
    1194:	b800      	st.w      	r0, (r14, 0x0)
    1196:	b821      	st.w      	r1, (r14, 0x4)
    1198:	3180      	movi      	r1, 128
    119a:	98c0      	ld.w      	r6, (r14, 0x0)
    119c:	98e1      	ld.w      	r7, (r14, 0x4)
    119e:	3000      	movi      	r0, 0
    11a0:	4138      	lsli      	r1, r1, 24
    11a2:	6d80      	or      	r6, r0
    11a4:	6dc4      	or      	r7, r1
    11a6:	4b21      	lsri      	r1, r3, 1
    11a8:	43bf      	lsli      	r5, r3, 31
    11aa:	4a01      	lsri      	r0, r2, 1
    11ac:	6cc7      	mov      	r3, r1
    11ae:	9824      	ld.w      	r1, (r14, 0x10)
    11b0:	6d40      	or      	r5, r0
    11b2:	64c4      	cmphs      	r1, r3
    11b4:	6c97      	mov      	r2, r5
    11b6:	2400      	addi      	r4, 1
    11b8:	0fe2      	bf      	0x117c	// 117c <__muldf3+0xf8>
    11ba:	9822      	ld.w      	r1, (r14, 0x8)
    11bc:	b838      	st.w      	r1, (r14, 0x60)
    11be:	30ff      	movi      	r0, 255
    11c0:	3100      	movi      	r1, 0
    11c2:	6808      	and      	r0, r2
    11c4:	684c      	and      	r1, r3
    11c6:	3480      	movi      	r4, 128
    11c8:	6502      	cmpne      	r0, r4
    11ca:	0c37      	bf      	0x1238	// 1238 <__muldf3+0x1b4>
    11cc:	b859      	st.w      	r2, (r14, 0x64)
    11ce:	b87a      	st.w      	r3, (r14, 0x68)
    11d0:	3303      	movi      	r3, 3
    11d2:	b876      	st.w      	r3, (r14, 0x58)
    11d4:	1816      	addi      	r0, r14, 88
    11d6:	e0000251 	bsr      	0x1678	// 1678 <__pack_d>
    11da:	141b      	addi      	r14, r14, 108
    11dc:	1494      	pop      	r4-r7, r15
    11de:	3b42      	cmpnei      	r3, 2
    11e0:	0c42      	bf      	0x1264	// 1264 <__muldf3+0x1e0>
    11e2:	9872      	ld.w      	r3, (r14, 0x48)
    11e4:	984d      	ld.w      	r2, (r14, 0x34)
    11e6:	64ca      	cmpne      	r2, r3
    11e8:	3300      	movi      	r3, 0
    11ea:	60cd      	addc      	r3, r3
    11ec:	1811      	addi      	r0, r14, 68
    11ee:	b872      	st.w      	r3, (r14, 0x48)
    11f0:	e0000244 	bsr      	0x1678	// 1678 <__pack_d>
    11f4:	141b      	addi      	r14, r14, 108
    11f6:	1494      	pop      	r4-r7, r15
    11f8:	3a42      	cmpnei      	r2, 2
    11fa:	0c35      	bf      	0x1264	// 1264 <__muldf3+0x1e0>
    11fc:	984d      	ld.w      	r2, (r14, 0x34)
    11fe:	9872      	ld.w      	r3, (r14, 0x48)
    1200:	64ca      	cmpne      	r2, r3
    1202:	3300      	movi      	r3, 0
    1204:	60cd      	addc      	r3, r3
    1206:	180c      	addi      	r0, r14, 48
    1208:	b86d      	st.w      	r3, (r14, 0x34)
    120a:	e0000237 	bsr      	0x1678	// 1678 <__pack_d>
    120e:	141b      	addi      	r14, r14, 108
    1210:	1494      	pop      	r4-r7, r15
    1212:	6498      	cmphs      	r6, r2
    1214:	0b94      	bt      	0x113c	// 113c <__muldf3+0xb8>
    1216:	9882      	ld.w      	r4, (r14, 0x8)
    1218:	98a3      	ld.w      	r5, (r14, 0xc)
    121a:	3201      	movi      	r2, 1
    121c:	3300      	movi      	r3, 0
    121e:	6511      	cmplt      	r4, r4
    1220:	6109      	addc      	r4, r2
    1222:	614d      	addc      	r5, r3
    1224:	b882      	st.w      	r4, (r14, 0x8)
    1226:	b8a3      	st.w      	r5, (r14, 0xc)
    1228:	078a      	br      	0x113c	// 113c <__muldf3+0xb8>
    122a:	6580      	cmphs      	r0, r6
    122c:	0b73      	bt      	0x1112	// 1112 <__muldf3+0x8e>
    122e:	3300      	movi      	r3, 0
    1230:	3401      	movi      	r4, 1
    1232:	b862      	st.w      	r3, (r14, 0x8)
    1234:	b883      	st.w      	r4, (r14, 0xc)
    1236:	0772      	br      	0x111a	// 111a <__muldf3+0x96>
    1238:	3940      	cmpnei      	r1, 0
    123a:	0bc9      	bt      	0x11cc	// 11cc <__muldf3+0x148>
    123c:	3180      	movi      	r1, 128
    123e:	4121      	lsli      	r1, r1, 1
    1240:	6848      	and      	r1, r2
    1242:	3940      	cmpnei      	r1, 0
    1244:	0bc4      	bt      	0x11cc	// 11cc <__muldf3+0x148>
    1246:	6c5b      	mov      	r1, r6
    1248:	6c5c      	or      	r1, r7
    124a:	3940      	cmpnei      	r1, 0
    124c:	0fc0      	bf      	0x11cc	// 11cc <__muldf3+0x148>
    124e:	3080      	movi      	r0, 128
    1250:	3100      	movi      	r1, 0
    1252:	6401      	cmplt      	r0, r0
    1254:	6009      	addc      	r0, r2
    1256:	604d      	addc      	r1, r3
    1258:	34ff      	movi      	r4, 255
    125a:	6d43      	mov      	r5, r0
    125c:	6951      	andn      	r5, r4
    125e:	6c97      	mov      	r2, r5
    1260:	6cc7      	mov      	r3, r1
    1262:	07b5      	br      	0x11cc	// 11cc <__muldf3+0x148>
    1264:	1013      	lrw      	r0, 0x399c	// 12b0 <__muldf3+0x22c>
    1266:	07b8      	br      	0x11d6	// 11d6 <__muldf3+0x152>
    1268:	1033      	lrw      	r1, 0xfffffff	// 12b4 <__muldf3+0x230>
    126a:	64c4      	cmphs      	r1, r3
    126c:	0fa9      	bf      	0x11be	// 11be <__muldf3+0x13a>
    126e:	2402      	addi      	r4, 3
    1270:	b822      	st.w      	r1, (r14, 0x8)
    1272:	4a1f      	lsri      	r0, r2, 31
    1274:	4321      	lsli      	r1, r3, 1
    1276:	42a1      	lsli      	r5, r2, 1
    1278:	6c04      	or      	r0, r1
    127a:	3fdf      	btsti      	r7, 31
    127c:	b880      	st.w      	r4, (r14, 0x0)
    127e:	6c97      	mov      	r2, r5
    1280:	6cc3      	mov      	r3, r0
    1282:	0c07      	bf      	0x1290	// 1290 <__muldf3+0x20c>
    1284:	3001      	movi      	r0, 1
    1286:	3100      	movi      	r1, 0
    1288:	6c08      	or      	r0, r2
    128a:	6c4c      	or      	r1, r3
    128c:	6c83      	mov      	r2, r0
    128e:	6cc7      	mov      	r3, r1
    1290:	4721      	lsli      	r1, r7, 1
    1292:	4e1f      	lsri      	r0, r6, 31
    1294:	6c04      	or      	r0, r1
    1296:	9822      	ld.w      	r1, (r14, 0x8)
    1298:	46a1      	lsli      	r5, r6, 1
    129a:	64c4      	cmphs      	r1, r3
    129c:	6d97      	mov      	r6, r5
    129e:	6dc3      	mov      	r7, r0
    12a0:	2c00      	subi      	r4, 1
    12a2:	0be8      	bt      	0x1272	// 1272 <__muldf3+0x1ee>
    12a4:	9820      	ld.w      	r1, (r14, 0x0)
    12a6:	b838      	st.w      	r1, (r14, 0x60)
    12a8:	078b      	br      	0x11be	// 11be <__muldf3+0x13a>
    12aa:	0000      	bkpt
    12ac:	1fffffff 	.long	0x1fffffff
    12b0:	0000399c 	.long	0x0000399c
    12b4:	0fffffff 	.long	0x0fffffff

000012b8 <__divdf3>:
    12b8:	14d4      	push      	r4-r7, r15
    12ba:	1432      	subi      	r14, r14, 72
    12bc:	b804      	st.w      	r0, (r14, 0x10)
    12be:	b825      	st.w      	r1, (r14, 0x14)
    12c0:	1804      	addi      	r0, r14, 16
    12c2:	1908      	addi      	r1, r14, 32
    12c4:	b867      	st.w      	r3, (r14, 0x1c)
    12c6:	b846      	st.w      	r2, (r14, 0x18)
    12c8:	e00002a6 	bsr      	0x1814	// 1814 <__unpack_d>
    12cc:	190d      	addi      	r1, r14, 52
    12ce:	1806      	addi      	r0, r14, 24
    12d0:	e00002a2 	bsr      	0x1814	// 1814 <__unpack_d>
    12d4:	9868      	ld.w      	r3, (r14, 0x20)
    12d6:	3b01      	cmphsi      	r3, 2
    12d8:	0c66      	bf      	0x13a4	// 13a4 <__divdf3+0xec>
    12da:	982d      	ld.w      	r1, (r14, 0x34)
    12dc:	3901      	cmphsi      	r1, 2
    12de:	0c92      	bf      	0x1402	// 1402 <__divdf3+0x14a>
    12e0:	9849      	ld.w      	r2, (r14, 0x24)
    12e2:	980e      	ld.w      	r0, (r14, 0x38)
    12e4:	6c81      	xor      	r2, r0
    12e6:	3b44      	cmpnei      	r3, 4
    12e8:	b849      	st.w      	r2, (r14, 0x24)
    12ea:	0c62      	bf      	0x13ae	// 13ae <__divdf3+0xf6>
    12ec:	3b42      	cmpnei      	r3, 2
    12ee:	0c60      	bf      	0x13ae	// 13ae <__divdf3+0xf6>
    12f0:	3944      	cmpnei      	r1, 4
    12f2:	0c62      	bf      	0x13b6	// 13b6 <__divdf3+0xfe>
    12f4:	3942      	cmpnei      	r1, 2
    12f6:	0c82      	bf      	0x13fa	// 13fa <__divdf3+0x142>
    12f8:	982a      	ld.w      	r1, (r14, 0x28)
    12fa:	986f      	ld.w      	r3, (r14, 0x3c)
    12fc:	604e      	subu      	r1, r3
    12fe:	9890      	ld.w      	r4, (r14, 0x40)
    1300:	98b1      	ld.w      	r5, (r14, 0x44)
    1302:	984b      	ld.w      	r2, (r14, 0x2c)
    1304:	986c      	ld.w      	r3, (r14, 0x30)
    1306:	654c      	cmphs      	r3, r5
    1308:	b82a      	st.w      	r1, (r14, 0x28)
    130a:	6d93      	mov      	r6, r4
    130c:	6dd7      	mov      	r7, r5
    130e:	0c05      	bf      	0x1318	// 1318 <__divdf3+0x60>
    1310:	64d6      	cmpne      	r5, r3
    1312:	080b      	bt      	0x1328	// 1328 <__divdf3+0x70>
    1314:	6508      	cmphs      	r2, r4
    1316:	0809      	bt      	0x1328	// 1328 <__divdf3+0x70>
    1318:	4a9f      	lsri      	r4, r2, 31
    131a:	4301      	lsli      	r0, r3, 1
    131c:	42a1      	lsli      	r5, r2, 1
    131e:	6d00      	or      	r4, r0
    1320:	2900      	subi      	r1, 1
    1322:	6c97      	mov      	r2, r5
    1324:	6cd3      	mov      	r3, r4
    1326:	b82a      	st.w      	r1, (r14, 0x28)
    1328:	3000      	movi      	r0, 0
    132a:	3100      	movi      	r1, 0
    132c:	b802      	st.w      	r0, (r14, 0x8)
    132e:	b823      	st.w      	r1, (r14, 0xc)
    1330:	3180      	movi      	r1, 128
    1332:	343d      	movi      	r4, 61
    1334:	3000      	movi      	r0, 0
    1336:	4135      	lsli      	r1, r1, 21
    1338:	b8c0      	st.w      	r6, (r14, 0x0)
    133a:	b8e1      	st.w      	r7, (r14, 0x4)
    133c:	98a0      	ld.w      	r5, (r14, 0x0)
    133e:	98c1      	ld.w      	r6, (r14, 0x4)
    1340:	658c      	cmphs      	r3, r6
    1342:	0c10      	bf      	0x1362	// 1362 <__divdf3+0xaa>
    1344:	64da      	cmpne      	r6, r3
    1346:	0803      	bt      	0x134c	// 134c <__divdf3+0x94>
    1348:	6548      	cmphs      	r2, r5
    134a:	0c0c      	bf      	0x1362	// 1362 <__divdf3+0xaa>
    134c:	98a2      	ld.w      	r5, (r14, 0x8)
    134e:	98c3      	ld.w      	r6, (r14, 0xc)
    1350:	6d40      	or      	r5, r0
    1352:	6d84      	or      	r6, r1
    1354:	b8a2      	st.w      	r5, (r14, 0x8)
    1356:	b8c3      	st.w      	r6, (r14, 0xc)
    1358:	98a0      	ld.w      	r5, (r14, 0x0)
    135a:	98c1      	ld.w      	r6, (r14, 0x4)
    135c:	6488      	cmphs      	r2, r2
    135e:	6097      	subc      	r2, r5
    1360:	60db      	subc      	r3, r6
    1362:	41bf      	lsli      	r5, r1, 31
    1364:	48e1      	lsri      	r7, r0, 1
    1366:	6d97      	mov      	r6, r5
    1368:	49a1      	lsri      	r5, r1, 1
    136a:	6d9c      	or      	r6, r7
    136c:	6c57      	mov      	r1, r5
    136e:	4abf      	lsri      	r5, r2, 31
    1370:	6c1b      	mov      	r0, r6
    1372:	2c00      	subi      	r4, 1
    1374:	6d97      	mov      	r6, r5
    1376:	43a1      	lsli      	r5, r3, 1
    1378:	6d94      	or      	r6, r5
    137a:	4261      	lsli      	r3, r2, 1
    137c:	3c40      	cmpnei      	r4, 0
    137e:	6dcf      	mov      	r7, r3
    1380:	6c8f      	mov      	r2, r3
    1382:	6cdb      	mov      	r3, r6
    1384:	0bdc      	bt      	0x133c	// 133c <__divdf3+0x84>
    1386:	30ff      	movi      	r0, 255
    1388:	3100      	movi      	r1, 0
    138a:	9882      	ld.w      	r4, (r14, 0x8)
    138c:	98a3      	ld.w      	r5, (r14, 0xc)
    138e:	6900      	and      	r4, r0
    1390:	6944      	and      	r5, r1
    1392:	6c13      	mov      	r0, r4
    1394:	6c57      	mov      	r1, r5
    1396:	3480      	movi      	r4, 128
    1398:	6502      	cmpne      	r0, r4
    139a:	0c15      	bf      	0x13c4	// 13c4 <__divdf3+0x10c>
    139c:	9862      	ld.w      	r3, (r14, 0x8)
    139e:	9883      	ld.w      	r4, (r14, 0xc)
    13a0:	b86b      	st.w      	r3, (r14, 0x2c)
    13a2:	b88c      	st.w      	r4, (r14, 0x30)
    13a4:	1808      	addi      	r0, r14, 32
    13a6:	e0000169 	bsr      	0x1678	// 1678 <__pack_d>
    13aa:	1412      	addi      	r14, r14, 72
    13ac:	1494      	pop      	r4-r7, r15
    13ae:	644e      	cmpne      	r3, r1
    13b0:	0bfa      	bt      	0x13a4	// 13a4 <__divdf3+0xec>
    13b2:	1016      	lrw      	r0, 0x399c	// 1408 <__divdf3+0x150>
    13b4:	07f9      	br      	0x13a6	// 13a6 <__divdf3+0xee>
    13b6:	3300      	movi      	r3, 0
    13b8:	3400      	movi      	r4, 0
    13ba:	b86b      	st.w      	r3, (r14, 0x2c)
    13bc:	b88c      	st.w      	r4, (r14, 0x30)
    13be:	b86a      	st.w      	r3, (r14, 0x28)
    13c0:	1808      	addi      	r0, r14, 32
    13c2:	07f2      	br      	0x13a6	// 13a6 <__divdf3+0xee>
    13c4:	3940      	cmpnei      	r1, 0
    13c6:	0beb      	bt      	0x139c	// 139c <__divdf3+0xe4>
    13c8:	3180      	movi      	r1, 128
    13ca:	4121      	lsli      	r1, r1, 1
    13cc:	9882      	ld.w      	r4, (r14, 0x8)
    13ce:	98a3      	ld.w      	r5, (r14, 0xc)
    13d0:	6850      	and      	r1, r4
    13d2:	3940      	cmpnei      	r1, 0
    13d4:	0be4      	bt      	0x139c	// 139c <__divdf3+0xe4>
    13d6:	6c98      	or      	r2, r6
    13d8:	3a40      	cmpnei      	r2, 0
    13da:	0fe1      	bf      	0x139c	// 139c <__divdf3+0xe4>
    13dc:	3280      	movi      	r2, 128
    13de:	3300      	movi      	r3, 0
    13e0:	6c13      	mov      	r0, r4
    13e2:	6c57      	mov      	r1, r5
    13e4:	6401      	cmplt      	r0, r0
    13e6:	6009      	addc      	r0, r2
    13e8:	604d      	addc      	r1, r3
    13ea:	6c83      	mov      	r2, r0
    13ec:	6cc7      	mov      	r3, r1
    13ee:	6c0b      	mov      	r0, r2
    13f0:	31ff      	movi      	r1, 255
    13f2:	6805      	andn      	r0, r1
    13f4:	b802      	st.w      	r0, (r14, 0x8)
    13f6:	b863      	st.w      	r3, (r14, 0xc)
    13f8:	07d2      	br      	0x139c	// 139c <__divdf3+0xe4>
    13fa:	3304      	movi      	r3, 4
    13fc:	b868      	st.w      	r3, (r14, 0x20)
    13fe:	1808      	addi      	r0, r14, 32
    1400:	07d3      	br      	0x13a6	// 13a6 <__divdf3+0xee>
    1402:	180d      	addi      	r0, r14, 52
    1404:	07d1      	br      	0x13a6	// 13a6 <__divdf3+0xee>
    1406:	0000      	bkpt
    1408:	0000399c 	.long	0x0000399c

0000140c <__gtdf2>:
    140c:	14d0      	push      	r15
    140e:	142e      	subi      	r14, r14, 56
    1410:	b800      	st.w      	r0, (r14, 0x0)
    1412:	b821      	st.w      	r1, (r14, 0x4)
    1414:	6c3b      	mov      	r0, r14
    1416:	1904      	addi      	r1, r14, 16
    1418:	b863      	st.w      	r3, (r14, 0xc)
    141a:	b842      	st.w      	r2, (r14, 0x8)
    141c:	e00001fc 	bsr      	0x1814	// 1814 <__unpack_d>
    1420:	1909      	addi      	r1, r14, 36
    1422:	1802      	addi      	r0, r14, 8
    1424:	e00001f8 	bsr      	0x1814	// 1814 <__unpack_d>
    1428:	9864      	ld.w      	r3, (r14, 0x10)
    142a:	3b01      	cmphsi      	r3, 2
    142c:	0c0a      	bf      	0x1440	// 1440 <__gtdf2+0x34>
    142e:	9869      	ld.w      	r3, (r14, 0x24)
    1430:	3b01      	cmphsi      	r3, 2
    1432:	0c07      	bf      	0x1440	// 1440 <__gtdf2+0x34>
    1434:	1909      	addi      	r1, r14, 36
    1436:	1804      	addi      	r0, r14, 16
    1438:	e0000250 	bsr      	0x18d8	// 18d8 <__fpcmp_parts_d>
    143c:	140e      	addi      	r14, r14, 56
    143e:	1490      	pop      	r15
    1440:	3000      	movi      	r0, 0
    1442:	2800      	subi      	r0, 1
    1444:	140e      	addi      	r14, r14, 56
    1446:	1490      	pop      	r15

00001448 <__gedf2>:
    1448:	14d0      	push      	r15
    144a:	142e      	subi      	r14, r14, 56
    144c:	b800      	st.w      	r0, (r14, 0x0)
    144e:	b821      	st.w      	r1, (r14, 0x4)
    1450:	6c3b      	mov      	r0, r14
    1452:	1904      	addi      	r1, r14, 16
    1454:	b863      	st.w      	r3, (r14, 0xc)
    1456:	b842      	st.w      	r2, (r14, 0x8)
    1458:	e00001de 	bsr      	0x1814	// 1814 <__unpack_d>
    145c:	1909      	addi      	r1, r14, 36
    145e:	1802      	addi      	r0, r14, 8
    1460:	e00001da 	bsr      	0x1814	// 1814 <__unpack_d>
    1464:	9864      	ld.w      	r3, (r14, 0x10)
    1466:	3b01      	cmphsi      	r3, 2
    1468:	0c0a      	bf      	0x147c	// 147c <__gedf2+0x34>
    146a:	9869      	ld.w      	r3, (r14, 0x24)
    146c:	3b01      	cmphsi      	r3, 2
    146e:	0c07      	bf      	0x147c	// 147c <__gedf2+0x34>
    1470:	1909      	addi      	r1, r14, 36
    1472:	1804      	addi      	r0, r14, 16
    1474:	e0000232 	bsr      	0x18d8	// 18d8 <__fpcmp_parts_d>
    1478:	140e      	addi      	r14, r14, 56
    147a:	1490      	pop      	r15
    147c:	3000      	movi      	r0, 0
    147e:	2800      	subi      	r0, 1
    1480:	140e      	addi      	r14, r14, 56
    1482:	1490      	pop      	r15

00001484 <__ledf2>:
    1484:	14d0      	push      	r15
    1486:	142e      	subi      	r14, r14, 56
    1488:	b800      	st.w      	r0, (r14, 0x0)
    148a:	b821      	st.w      	r1, (r14, 0x4)
    148c:	6c3b      	mov      	r0, r14
    148e:	1904      	addi      	r1, r14, 16
    1490:	b863      	st.w      	r3, (r14, 0xc)
    1492:	b842      	st.w      	r2, (r14, 0x8)
    1494:	e00001c0 	bsr      	0x1814	// 1814 <__unpack_d>
    1498:	1909      	addi      	r1, r14, 36
    149a:	1802      	addi      	r0, r14, 8
    149c:	e00001bc 	bsr      	0x1814	// 1814 <__unpack_d>
    14a0:	9864      	ld.w      	r3, (r14, 0x10)
    14a2:	3b01      	cmphsi      	r3, 2
    14a4:	0c0a      	bf      	0x14b8	// 14b8 <__ledf2+0x34>
    14a6:	9869      	ld.w      	r3, (r14, 0x24)
    14a8:	3b01      	cmphsi      	r3, 2
    14aa:	0c07      	bf      	0x14b8	// 14b8 <__ledf2+0x34>
    14ac:	1909      	addi      	r1, r14, 36
    14ae:	1804      	addi      	r0, r14, 16
    14b0:	e0000214 	bsr      	0x18d8	// 18d8 <__fpcmp_parts_d>
    14b4:	140e      	addi      	r14, r14, 56
    14b6:	1490      	pop      	r15
    14b8:	3001      	movi      	r0, 1
    14ba:	140e      	addi      	r14, r14, 56
    14bc:	1490      	pop      	r15
	...

000014c0 <__floatsidf>:
    14c0:	14d1      	push      	r4, r15
    14c2:	1425      	subi      	r14, r14, 20
    14c4:	3303      	movi      	r3, 3
    14c6:	b860      	st.w      	r3, (r14, 0x0)
    14c8:	3840      	cmpnei      	r0, 0
    14ca:	487f      	lsri      	r3, r0, 31
    14cc:	b861      	st.w      	r3, (r14, 0x4)
    14ce:	0808      	bt      	0x14de	// 14de <__floatsidf+0x1e>
    14d0:	3302      	movi      	r3, 2
    14d2:	b860      	st.w      	r3, (r14, 0x0)
    14d4:	6c3b      	mov      	r0, r14
    14d6:	e00000d1 	bsr      	0x1678	// 1678 <__pack_d>
    14da:	1405      	addi      	r14, r14, 20
    14dc:	1491      	pop      	r4, r15
    14de:	38df      	btsti      	r0, 31
    14e0:	0812      	bt      	0x1504	// 1504 <__floatsidf+0x44>
    14e2:	6d03      	mov      	r4, r0
    14e4:	6c13      	mov      	r0, r4
    14e6:	e00000a9 	bsr      	0x1638	// 1638 <__clzsi2>
    14ea:	321d      	movi      	r2, 29
    14ec:	6080      	addu      	r2, r0
    14ee:	2802      	subi      	r0, 3
    14f0:	38df      	btsti      	r0, 31
    14f2:	0810      	bt      	0x1512	// 1512 <__floatsidf+0x52>
    14f4:	7100      	lsl      	r4, r0
    14f6:	3300      	movi      	r3, 0
    14f8:	b884      	st.w      	r4, (r14, 0x10)
    14fa:	b863      	st.w      	r3, (r14, 0xc)
    14fc:	333c      	movi      	r3, 60
    14fe:	60ca      	subu      	r3, r2
    1500:	b862      	st.w      	r3, (r14, 0x8)
    1502:	07e9      	br      	0x14d4	// 14d4 <__floatsidf+0x14>
    1504:	3380      	movi      	r3, 128
    1506:	4378      	lsli      	r3, r3, 24
    1508:	64c2      	cmpne      	r0, r3
    150a:	0c0d      	bf      	0x1524	// 1524 <__floatsidf+0x64>
    150c:	3400      	movi      	r4, 0
    150e:	6102      	subu      	r4, r0
    1510:	07ea      	br      	0x14e4	// 14e4 <__floatsidf+0x24>
    1512:	311f      	movi      	r1, 31
    1514:	4c61      	lsri      	r3, r4, 1
    1516:	604a      	subu      	r1, r2
    1518:	6c13      	mov      	r0, r4
    151a:	70c5      	lsr      	r3, r1
    151c:	7008      	lsl      	r0, r2
    151e:	b864      	st.w      	r3, (r14, 0x10)
    1520:	b803      	st.w      	r0, (r14, 0xc)
    1522:	07ed      	br      	0x14fc	// 14fc <__floatsidf+0x3c>
    1524:	3000      	movi      	r0, 0
    1526:	1022      	lrw      	r1, 0xc1e00000	// 152c <__floatsidf+0x6c>
    1528:	07d9      	br      	0x14da	// 14da <__floatsidf+0x1a>
    152a:	0000      	bkpt
    152c:	c1e00000 	.long	0xc1e00000

00001530 <__fixdfsi>:
    1530:	14d0      	push      	r15
    1532:	1427      	subi      	r14, r14, 28
    1534:	b800      	st.w      	r0, (r14, 0x0)
    1536:	b821      	st.w      	r1, (r14, 0x4)
    1538:	6c3b      	mov      	r0, r14
    153a:	1902      	addi      	r1, r14, 8
    153c:	e000016c 	bsr      	0x1814	// 1814 <__unpack_d>
    1540:	9862      	ld.w      	r3, (r14, 0x8)
    1542:	3b02      	cmphsi      	r3, 3
    1544:	0c20      	bf      	0x1584	// 1584 <__fixdfsi+0x54>
    1546:	3b44      	cmpnei      	r3, 4
    1548:	0c16      	bf      	0x1574	// 1574 <__fixdfsi+0x44>
    154a:	9864      	ld.w      	r3, (r14, 0x10)
    154c:	3bdf      	btsti      	r3, 31
    154e:	081b      	bt      	0x1584	// 1584 <__fixdfsi+0x54>
    1550:	3b3e      	cmplti      	r3, 31
    1552:	0c11      	bf      	0x1574	// 1574 <__fixdfsi+0x44>
    1554:	323c      	movi      	r2, 60
    1556:	5a6d      	subu      	r3, r2, r3
    1558:	3200      	movi      	r2, 0
    155a:	2a1f      	subi      	r2, 32
    155c:	608c      	addu      	r2, r3
    155e:	3adf      	btsti      	r2, 31
    1560:	0815      	bt      	0x158a	// 158a <__fixdfsi+0x5a>
    1562:	9806      	ld.w      	r0, (r14, 0x18)
    1564:	7009      	lsr      	r0, r2
    1566:	9863      	ld.w      	r3, (r14, 0xc)
    1568:	3b40      	cmpnei      	r3, 0
    156a:	0c0b      	bf      	0x1580	// 1580 <__fixdfsi+0x50>
    156c:	3300      	movi      	r3, 0
    156e:	5b01      	subu      	r0, r3, r0
    1570:	1407      	addi      	r14, r14, 28
    1572:	1490      	pop      	r15
    1574:	9863      	ld.w      	r3, (r14, 0xc)
    1576:	3b40      	cmpnei      	r3, 0
    1578:	3000      	movi      	r0, 0
    157a:	6001      	addc      	r0, r0
    157c:	1068      	lrw      	r3, 0x7fffffff	// 159c <__fixdfsi+0x6c>
    157e:	600c      	addu      	r0, r3
    1580:	1407      	addi      	r14, r14, 28
    1582:	1490      	pop      	r15
    1584:	3000      	movi      	r0, 0
    1586:	1407      	addi      	r14, r14, 28
    1588:	1490      	pop      	r15
    158a:	9846      	ld.w      	r2, (r14, 0x18)
    158c:	311f      	movi      	r1, 31
    158e:	4241      	lsli      	r2, r2, 1
    1590:	604e      	subu      	r1, r3
    1592:	9805      	ld.w      	r0, (r14, 0x14)
    1594:	7084      	lsl      	r2, r1
    1596:	700d      	lsr      	r0, r3
    1598:	6c08      	or      	r0, r2
    159a:	07e6      	br      	0x1566	// 1566 <__fixdfsi+0x36>
    159c:	7fffffff 	.long	0x7fffffff

000015a0 <__floatunsidf>:
    15a0:	14d2      	push      	r4-r5, r15
    15a2:	1425      	subi      	r14, r14, 20
    15a4:	3840      	cmpnei      	r0, 0
    15a6:	3500      	movi      	r5, 0
    15a8:	6d03      	mov      	r4, r0
    15aa:	b8a1      	st.w      	r5, (r14, 0x4)
    15ac:	0c15      	bf      	0x15d6	// 15d6 <__floatunsidf+0x36>
    15ae:	3303      	movi      	r3, 3
    15b0:	b860      	st.w      	r3, (r14, 0x0)
    15b2:	e0000043 	bsr      	0x1638	// 1638 <__clzsi2>
    15b6:	321d      	movi      	r2, 29
    15b8:	6080      	addu      	r2, r0
    15ba:	2802      	subi      	r0, 3
    15bc:	38df      	btsti      	r0, 31
    15be:	0813      	bt      	0x15e4	// 15e4 <__floatunsidf+0x44>
    15c0:	7100      	lsl      	r4, r0
    15c2:	b884      	st.w      	r4, (r14, 0x10)
    15c4:	b8a3      	st.w      	r5, (r14, 0xc)
    15c6:	333c      	movi      	r3, 60
    15c8:	60ca      	subu      	r3, r2
    15ca:	6c3b      	mov      	r0, r14
    15cc:	b862      	st.w      	r3, (r14, 0x8)
    15ce:	e0000055 	bsr      	0x1678	// 1678 <__pack_d>
    15d2:	1405      	addi      	r14, r14, 20
    15d4:	1492      	pop      	r4-r5, r15
    15d6:	3302      	movi      	r3, 2
    15d8:	6c3b      	mov      	r0, r14
    15da:	b860      	st.w      	r3, (r14, 0x0)
    15dc:	e000004e 	bsr      	0x1678	// 1678 <__pack_d>
    15e0:	1405      	addi      	r14, r14, 20
    15e2:	1492      	pop      	r4-r5, r15
    15e4:	311f      	movi      	r1, 31
    15e6:	4c61      	lsri      	r3, r4, 1
    15e8:	604a      	subu      	r1, r2
    15ea:	70c5      	lsr      	r3, r1
    15ec:	7108      	lsl      	r4, r2
    15ee:	b864      	st.w      	r3, (r14, 0x10)
    15f0:	b883      	st.w      	r4, (r14, 0xc)
    15f2:	07ea      	br      	0x15c6	// 15c6 <__floatunsidf+0x26>

000015f4 <__muldi3>:
    15f4:	14c4      	push      	r4-r7
    15f6:	1421      	subi      	r14, r14, 4
    15f8:	7501      	zexth      	r4, r0
    15fa:	48b0      	lsri      	r5, r0, 16
    15fc:	75c9      	zexth      	r7, r2
    15fe:	6d83      	mov      	r6, r0
    1600:	b820      	st.w      	r1, (r14, 0x0)
    1602:	6c13      	mov      	r0, r4
    1604:	4a30      	lsri      	r1, r2, 16
    1606:	7c1c      	mult      	r0, r7
    1608:	7d04      	mult      	r4, r1
    160a:	7dd4      	mult      	r7, r5
    160c:	611c      	addu      	r4, r7
    160e:	7d44      	mult      	r5, r1
    1610:	4830      	lsri      	r1, r0, 16
    1612:	6104      	addu      	r4, r1
    1614:	65d0      	cmphs      	r4, r7
    1616:	0804      	bt      	0x161e	// 161e <__muldi3+0x2a>
    1618:	3180      	movi      	r1, 128
    161a:	4129      	lsli      	r1, r1, 9
    161c:	6144      	addu      	r5, r1
    161e:	4c30      	lsri      	r1, r4, 16
    1620:	7cd8      	mult      	r3, r6
    1622:	6144      	addu      	r5, r1
    1624:	6c4f      	mov      	r1, r3
    1626:	9860      	ld.w      	r3, (r14, 0x0)
    1628:	7cc8      	mult      	r3, r2
    162a:	4490      	lsli      	r4, r4, 16
    162c:	604c      	addu      	r1, r3
    162e:	7401      	zexth      	r0, r0
    1630:	6010      	addu      	r0, r4
    1632:	6054      	addu      	r1, r5
    1634:	1401      	addi      	r14, r14, 4
    1636:	1484      	pop      	r4-r7

00001638 <__clzsi2>:
    1638:	106d      	lrw      	r3, 0xffff	// 166c <__clzsi2+0x34>
    163a:	640c      	cmphs      	r3, r0
    163c:	0c07      	bf      	0x164a	// 164a <__clzsi2+0x12>
    163e:	33ff      	movi      	r3, 255
    1640:	640c      	cmphs      	r3, r0
    1642:	0c0f      	bf      	0x1660	// 1660 <__clzsi2+0x28>
    1644:	3320      	movi      	r3, 32
    1646:	3200      	movi      	r2, 0
    1648:	0406      	br      	0x1654	// 1654 <__clzsi2+0x1c>
    164a:	106a      	lrw      	r3, 0xffffff	// 1670 <__clzsi2+0x38>
    164c:	640c      	cmphs      	r3, r0
    164e:	080c      	bt      	0x1666	// 1666 <__clzsi2+0x2e>
    1650:	3308      	movi      	r3, 8
    1652:	3218      	movi      	r2, 24
    1654:	7009      	lsr      	r0, r2
    1656:	1048      	lrw      	r2, 0x39b0	// 1674 <__clzsi2+0x3c>
    1658:	6008      	addu      	r0, r2
    165a:	8040      	ld.b      	r2, (r0, 0x0)
    165c:	5b09      	subu      	r0, r3, r2
    165e:	783c      	jmp      	r15
    1660:	3318      	movi      	r3, 24
    1662:	3208      	movi      	r2, 8
    1664:	07f8      	br      	0x1654	// 1654 <__clzsi2+0x1c>
    1666:	3310      	movi      	r3, 16
    1668:	3210      	movi      	r2, 16
    166a:	07f5      	br      	0x1654	// 1654 <__clzsi2+0x1c>
    166c:	0000ffff 	.long	0x0000ffff
    1670:	00ffffff 	.long	0x00ffffff
    1674:	000039b0 	.long	0x000039b0

00001678 <__pack_d>:
    1678:	14c4      	push      	r4-r7
    167a:	1422      	subi      	r14, r14, 8
    167c:	9060      	ld.w      	r3, (r0, 0x0)
    167e:	3b01      	cmphsi      	r3, 2
    1680:	90c3      	ld.w      	r6, (r0, 0xc)
    1682:	90e4      	ld.w      	r7, (r0, 0x10)
    1684:	9021      	ld.w      	r1, (r0, 0x4)
    1686:	0c46      	bf      	0x1712	// 1712 <__pack_d+0x9a>
    1688:	3b44      	cmpnei      	r3, 4
    168a:	0c40      	bf      	0x170a	// 170a <__pack_d+0x92>
    168c:	3b42      	cmpnei      	r3, 2
    168e:	0c27      	bf      	0x16dc	// 16dc <__pack_d+0x64>
    1690:	6cdb      	mov      	r3, r6
    1692:	6cdc      	or      	r3, r7
    1694:	3b40      	cmpnei      	r3, 0
    1696:	0c23      	bf      	0x16dc	// 16dc <__pack_d+0x64>
    1698:	9062      	ld.w      	r3, (r0, 0x8)
    169a:	125a      	lrw      	r2, 0xfffffc02	// 1800 <__pack_d+0x188>
    169c:	648d      	cmplt      	r3, r2
    169e:	0855      	bt      	0x1748	// 1748 <__pack_d+0xd0>
    16a0:	1259      	lrw      	r2, 0x3ff	// 1804 <__pack_d+0x18c>
    16a2:	64c9      	cmplt      	r2, r3
    16a4:	0833      	bt      	0x170a	// 170a <__pack_d+0x92>
    16a6:	34ff      	movi      	r4, 255
    16a8:	3500      	movi      	r5, 0
    16aa:	6918      	and      	r4, r6
    16ac:	695c      	and      	r5, r7
    16ae:	3280      	movi      	r2, 128
    16b0:	6492      	cmpne      	r4, r2
    16b2:	0c3f      	bf      	0x1730	// 1730 <__pack_d+0xb8>
    16b4:	347f      	movi      	r4, 127
    16b6:	3500      	movi      	r5, 0
    16b8:	6599      	cmplt      	r6, r6
    16ba:	6191      	addc      	r6, r4
    16bc:	61d5      	addc      	r7, r5
    16be:	1253      	lrw      	r2, 0x1fffffff	// 1808 <__pack_d+0x190>
    16c0:	65c8      	cmphs      	r2, r7
    16c2:	0c1a      	bf      	0x16f6	// 16f6 <__pack_d+0x7e>
    16c4:	1290      	lrw      	r4, 0x3ff	// 1804 <__pack_d+0x18c>
    16c6:	610c      	addu      	r4, r3
    16c8:	4718      	lsli      	r0, r7, 24
    16ca:	4f68      	lsri      	r3, r7, 8
    16cc:	4e48      	lsri      	r2, r6, 8
    16ce:	6c80      	or      	r2, r0
    16d0:	430c      	lsli      	r0, r3, 12
    16d2:	486c      	lsri      	r3, r0, 12
    16d4:	120e      	lrw      	r0, 0x7ff	// 180c <__pack_d+0x194>
    16d6:	6d4b      	mov      	r5, r2
    16d8:	6900      	and      	r4, r0
    16da:	0404      	br      	0x16e2	// 16e2 <__pack_d+0x6a>
    16dc:	3400      	movi      	r4, 0
    16de:	3200      	movi      	r2, 0
    16e0:	3300      	movi      	r3, 0
    16e2:	430c      	lsli      	r0, r3, 12
    16e4:	480c      	lsri      	r0, r0, 12
    16e6:	4474      	lsli      	r3, r4, 20
    16e8:	419f      	lsli      	r4, r1, 31
    16ea:	6c43      	mov      	r1, r0
    16ec:	6c4c      	or      	r1, r3
    16ee:	6c50      	or      	r1, r4
    16f0:	6c0b      	mov      	r0, r2
    16f2:	1402      	addi      	r14, r14, 8
    16f4:	1484      	pop      	r4-r7
    16f6:	479f      	lsli      	r4, r7, 31
    16f8:	4e01      	lsri      	r0, r6, 1
    16fa:	6d00      	or      	r4, r0
    16fc:	6d93      	mov      	r6, r4
    16fe:	3480      	movi      	r4, 128
    1700:	4f41      	lsri      	r2, r7, 1
    1702:	4483      	lsli      	r4, r4, 3
    1704:	6dcb      	mov      	r7, r2
    1706:	610c      	addu      	r4, r3
    1708:	07e0      	br      	0x16c8	// 16c8 <__pack_d+0x50>
    170a:	1281      	lrw      	r4, 0x7ff	// 180c <__pack_d+0x194>
    170c:	3200      	movi      	r2, 0
    170e:	3300      	movi      	r3, 0
    1710:	07e9      	br      	0x16e2	// 16e2 <__pack_d+0x6a>
    1712:	4e08      	lsri      	r0, r6, 8
    1714:	4798      	lsli      	r4, r7, 24
    1716:	6d00      	or      	r4, r0
    1718:	3580      	movi      	r5, 128
    171a:	4705      	lsli      	r0, r7, 5
    171c:	6c93      	mov      	r2, r4
    171e:	486d      	lsri      	r3, r0, 13
    1720:	3400      	movi      	r4, 0
    1722:	45ac      	lsli      	r5, r5, 12
    1724:	6c90      	or      	r2, r4
    1726:	6cd4      	or      	r3, r5
    1728:	430c      	lsli      	r0, r3, 12
    172a:	486c      	lsri      	r3, r0, 12
    172c:	1198      	lrw      	r4, 0x7ff	// 180c <__pack_d+0x194>
    172e:	07da      	br      	0x16e2	// 16e2 <__pack_d+0x6a>
    1730:	3d40      	cmpnei      	r5, 0
    1732:	0bc1      	bt      	0x16b4	// 16b4 <__pack_d+0x3c>
    1734:	4241      	lsli      	r2, r2, 1
    1736:	6898      	and      	r2, r6
    1738:	3a40      	cmpnei      	r2, 0
    173a:	0fc2      	bf      	0x16be	// 16be <__pack_d+0x46>
    173c:	3480      	movi      	r4, 128
    173e:	3500      	movi      	r5, 0
    1740:	6599      	cmplt      	r6, r6
    1742:	6191      	addc      	r6, r4
    1744:	61d5      	addc      	r7, r5
    1746:	07bc      	br      	0x16be	// 16be <__pack_d+0x46>
    1748:	5a6d      	subu      	r3, r2, r3
    174a:	3238      	movi      	r2, 56
    174c:	64c9      	cmplt      	r2, r3
    174e:	0bc7      	bt      	0x16dc	// 16dc <__pack_d+0x64>
    1750:	3200      	movi      	r2, 0
    1752:	2a1f      	subi      	r2, 32
    1754:	608c      	addu      	r2, r3
    1756:	3adf      	btsti      	r2, 31
    1758:	0848      	bt      	0x17e8	// 17e8 <__pack_d+0x170>
    175a:	6c1f      	mov      	r0, r7
    175c:	7009      	lsr      	r0, r2
    175e:	b800      	st.w      	r0, (r14, 0x0)
    1760:	3000      	movi      	r0, 0
    1762:	b801      	st.w      	r0, (r14, 0x4)
    1764:	3adf      	btsti      	r2, 31
    1766:	083c      	bt      	0x17de	// 17de <__pack_d+0x166>
    1768:	3301      	movi      	r3, 1
    176a:	70c8      	lsl      	r3, r2
    176c:	6d4f      	mov      	r5, r3
    176e:	3300      	movi      	r3, 0
    1770:	6d0f      	mov      	r4, r3
    1772:	3200      	movi      	r2, 0
    1774:	3300      	movi      	r3, 0
    1776:	2a00      	subi      	r2, 1
    1778:	2b00      	subi      	r3, 1
    177a:	6511      	cmplt      	r4, r4
    177c:	6109      	addc      	r4, r2
    177e:	614d      	addc      	r5, r3
    1780:	6990      	and      	r6, r4
    1782:	69d4      	and      	r7, r5
    1784:	6d9c      	or      	r6, r7
    1786:	3e40      	cmpnei      	r6, 0
    1788:	3000      	movi      	r0, 0
    178a:	6001      	addc      	r0, r0
    178c:	6c83      	mov      	r2, r0
    178e:	3300      	movi      	r3, 0
    1790:	9880      	ld.w      	r4, (r14, 0x0)
    1792:	98a1      	ld.w      	r5, (r14, 0x4)
    1794:	6d08      	or      	r4, r2
    1796:	6d4c      	or      	r5, r3
    1798:	32ff      	movi      	r2, 255
    179a:	3300      	movi      	r3, 0
    179c:	6890      	and      	r2, r4
    179e:	68d4      	and      	r3, r5
    17a0:	3080      	movi      	r0, 128
    17a2:	640a      	cmpne      	r2, r0
    17a4:	081b      	bt      	0x17da	// 17da <__pack_d+0x162>
    17a6:	3b40      	cmpnei      	r3, 0
    17a8:	0819      	bt      	0x17da	// 17da <__pack_d+0x162>
    17aa:	3380      	movi      	r3, 128
    17ac:	4361      	lsli      	r3, r3, 1
    17ae:	68d0      	and      	r3, r4
    17b0:	3b40      	cmpnei      	r3, 0
    17b2:	0c06      	bf      	0x17be	// 17be <__pack_d+0x146>
    17b4:	3280      	movi      	r2, 128
    17b6:	3300      	movi      	r3, 0
    17b8:	6511      	cmplt      	r4, r4
    17ba:	6109      	addc      	r4, r2
    17bc:	614d      	addc      	r5, r3
    17be:	4518      	lsli      	r0, r5, 24
    17c0:	4c48      	lsri      	r2, r4, 8
    17c2:	4d68      	lsri      	r3, r5, 8
    17c4:	1093      	lrw      	r4, 0xfffffff	// 1810 <__pack_d+0x198>
    17c6:	6c80      	or      	r2, r0
    17c8:	6550      	cmphs      	r4, r5
    17ca:	430c      	lsli      	r0, r3, 12
    17cc:	486c      	lsri      	r3, r0, 12
    17ce:	3001      	movi      	r0, 1
    17d0:	0c02      	bf      	0x17d4	// 17d4 <__pack_d+0x15c>
    17d2:	3000      	movi      	r0, 0
    17d4:	108e      	lrw      	r4, 0x7ff	// 180c <__pack_d+0x194>
    17d6:	6900      	and      	r4, r0
    17d8:	0785      	br      	0x16e2	// 16e2 <__pack_d+0x6a>
    17da:	327f      	movi      	r2, 127
    17dc:	07ed      	br      	0x17b6	// 17b6 <__pack_d+0x13e>
    17de:	3201      	movi      	r2, 1
    17e0:	708c      	lsl      	r2, r3
    17e2:	3500      	movi      	r5, 0
    17e4:	6d0b      	mov      	r4, r2
    17e6:	07c6      	br      	0x1772	// 1772 <__pack_d+0xfa>
    17e8:	341f      	movi      	r4, 31
    17ea:	610e      	subu      	r4, r3
    17ec:	4701      	lsli      	r0, r7, 1
    17ee:	7010      	lsl      	r0, r4
    17f0:	6d1b      	mov      	r4, r6
    17f2:	710d      	lsr      	r4, r3
    17f4:	6d00      	or      	r4, r0
    17f6:	6c1f      	mov      	r0, r7
    17f8:	700d      	lsr      	r0, r3
    17fa:	b880      	st.w      	r4, (r14, 0x0)
    17fc:	b801      	st.w      	r0, (r14, 0x4)
    17fe:	07b3      	br      	0x1764	// 1764 <__pack_d+0xec>
    1800:	fffffc02 	.long	0xfffffc02
    1804:	000003ff 	.long	0x000003ff
    1808:	1fffffff 	.long	0x1fffffff
    180c:	000007ff 	.long	0x000007ff
    1810:	0fffffff 	.long	0x0fffffff

00001814 <__unpack_d>:
    1814:	1423      	subi      	r14, r14, 12
    1816:	b880      	st.w      	r4, (r14, 0x0)
    1818:	b8c1      	st.w      	r6, (r14, 0x4)
    181a:	b8e2      	st.w      	r7, (r14, 0x8)
    181c:	8843      	ld.h      	r2, (r0, 0x6)
    181e:	4251      	lsli      	r2, r2, 17
    1820:	9061      	ld.w      	r3, (r0, 0x4)
    1822:	9080      	ld.w      	r4, (r0, 0x0)
    1824:	4a55      	lsri      	r2, r2, 21
    1826:	8007      	ld.b      	r0, (r0, 0x7)
    1828:	436c      	lsli      	r3, r3, 12
    182a:	4807      	lsri      	r0, r0, 7
    182c:	3a40      	cmpnei      	r2, 0
    182e:	4b6c      	lsri      	r3, r3, 12
    1830:	b101      	st.w      	r0, (r1, 0x4)
    1832:	0819      	bt      	0x1864	// 1864 <__unpack_d+0x50>
    1834:	6c93      	mov      	r2, r4
    1836:	6c8c      	or      	r2, r3
    1838:	3a40      	cmpnei      	r2, 0
    183a:	0c2d      	bf      	0x1894	// 1894 <__unpack_d+0x80>
    183c:	4c58      	lsri      	r2, r4, 24
    183e:	4368      	lsli      	r3, r3, 8
    1840:	6cc8      	or      	r3, r2
    1842:	3203      	movi      	r2, 3
    1844:	4408      	lsli      	r0, r4, 8
    1846:	b140      	st.w      	r2, (r1, 0x0)
    1848:	1181      	lrw      	r4, 0xfffffc01	// 18cc <__unpack_d+0xb8>
    184a:	11c2      	lrw      	r6, 0xfffffff	// 18d0 <__unpack_d+0xbc>
    184c:	485f      	lsri      	r2, r0, 31
    184e:	4361      	lsli      	r3, r3, 1
    1850:	6cc8      	or      	r3, r2
    1852:	64d8      	cmphs      	r6, r3
    1854:	6c93      	mov      	r2, r4
    1856:	4001      	lsli      	r0, r0, 1
    1858:	2c00      	subi      	r4, 1
    185a:	0bf9      	bt      	0x184c	// 184c <__unpack_d+0x38>
    185c:	b142      	st.w      	r2, (r1, 0x8)
    185e:	b103      	st.w      	r0, (r1, 0xc)
    1860:	b164      	st.w      	r3, (r1, 0x10)
    1862:	0414      	br      	0x188a	// 188a <__unpack_d+0x76>
    1864:	101c      	lrw      	r0, 0x7ff	// 18d4 <__unpack_d+0xc0>
    1866:	640a      	cmpne      	r2, r0
    1868:	0c19      	bf      	0x189a	// 189a <__unpack_d+0x86>
    186a:	1019      	lrw      	r0, 0xfffffc01	// 18cc <__unpack_d+0xb8>
    186c:	6080      	addu      	r2, r0
    186e:	b142      	st.w      	r2, (r1, 0x8)
    1870:	3203      	movi      	r2, 3
    1872:	43e8      	lsli      	r7, r3, 8
    1874:	b140      	st.w      	r2, (r1, 0x0)
    1876:	3380      	movi      	r3, 128
    1878:	4c58      	lsri      	r2, r4, 24
    187a:	6dc8      	or      	r7, r2
    187c:	44c8      	lsli      	r6, r4, 8
    187e:	3200      	movi      	r2, 0
    1880:	4375      	lsli      	r3, r3, 21
    1882:	6d88      	or      	r6, r2
    1884:	6dcc      	or      	r7, r3
    1886:	b1c3      	st.w      	r6, (r1, 0xc)
    1888:	b1e4      	st.w      	r7, (r1, 0x10)
    188a:	98e2      	ld.w      	r7, (r14, 0x8)
    188c:	98c1      	ld.w      	r6, (r14, 0x4)
    188e:	9880      	ld.w      	r4, (r14, 0x0)
    1890:	1403      	addi      	r14, r14, 12
    1892:	783c      	jmp      	r15
    1894:	3302      	movi      	r3, 2
    1896:	b160      	st.w      	r3, (r1, 0x0)
    1898:	07f9      	br      	0x188a	// 188a <__unpack_d+0x76>
    189a:	6c93      	mov      	r2, r4
    189c:	6c8c      	or      	r2, r3
    189e:	3a40      	cmpnei      	r2, 0
    18a0:	0c10      	bf      	0x18c0	// 18c0 <__unpack_d+0xac>
    18a2:	3280      	movi      	r2, 128
    18a4:	424c      	lsli      	r2, r2, 12
    18a6:	688c      	and      	r2, r3
    18a8:	3a40      	cmpnei      	r2, 0
    18aa:	0c0e      	bf      	0x18c6	// 18c6 <__unpack_d+0xb2>
    18ac:	3201      	movi      	r2, 1
    18ae:	b140      	st.w      	r2, (r1, 0x0)
    18b0:	4c58      	lsri      	r2, r4, 24
    18b2:	4368      	lsli      	r3, r3, 8
    18b4:	6cc8      	or      	r3, r2
    18b6:	4408      	lsli      	r0, r4, 8
    18b8:	3b9b      	bclri      	r3, 27
    18ba:	b103      	st.w      	r0, (r1, 0xc)
    18bc:	b164      	st.w      	r3, (r1, 0x10)
    18be:	07e6      	br      	0x188a	// 188a <__unpack_d+0x76>
    18c0:	3304      	movi      	r3, 4
    18c2:	b160      	st.w      	r3, (r1, 0x0)
    18c4:	07e3      	br      	0x188a	// 188a <__unpack_d+0x76>
    18c6:	b140      	st.w      	r2, (r1, 0x0)
    18c8:	07f4      	br      	0x18b0	// 18b0 <__unpack_d+0x9c>
    18ca:	0000      	bkpt
    18cc:	fffffc01 	.long	0xfffffc01
    18d0:	0fffffff 	.long	0x0fffffff
    18d4:	000007ff 	.long	0x000007ff

000018d8 <__fpcmp_parts_d>:
    18d8:	14c1      	push      	r4
    18da:	9060      	ld.w      	r3, (r0, 0x0)
    18dc:	3b01      	cmphsi      	r3, 2
    18de:	0c12      	bf      	0x1902	// 1902 <__fpcmp_parts_d+0x2a>
    18e0:	9140      	ld.w      	r2, (r1, 0x0)
    18e2:	3a01      	cmphsi      	r2, 2
    18e4:	0c0f      	bf      	0x1902	// 1902 <__fpcmp_parts_d+0x2a>
    18e6:	3b44      	cmpnei      	r3, 4
    18e8:	0c17      	bf      	0x1916	// 1916 <__fpcmp_parts_d+0x3e>
    18ea:	3a44      	cmpnei      	r2, 4
    18ec:	0c0f      	bf      	0x190a	// 190a <__fpcmp_parts_d+0x32>
    18ee:	3b42      	cmpnei      	r3, 2
    18f0:	0c0b      	bf      	0x1906	// 1906 <__fpcmp_parts_d+0x2e>
    18f2:	3a42      	cmpnei      	r2, 2
    18f4:	0c13      	bf      	0x191a	// 191a <__fpcmp_parts_d+0x42>
    18f6:	9061      	ld.w      	r3, (r0, 0x4)
    18f8:	9141      	ld.w      	r2, (r1, 0x4)
    18fa:	648e      	cmpne      	r3, r2
    18fc:	0c14      	bf      	0x1924	// 1924 <__fpcmp_parts_d+0x4c>
    18fe:	3b40      	cmpnei      	r3, 0
    1900:	0808      	bt      	0x1910	// 1910 <__fpcmp_parts_d+0x38>
    1902:	3001      	movi      	r0, 1
    1904:	1481      	pop      	r4
    1906:	3a42      	cmpnei      	r2, 2
    1908:	0c28      	bf      	0x1958	// 1958 <__fpcmp_parts_d+0x80>
    190a:	9161      	ld.w      	r3, (r1, 0x4)
    190c:	3b40      	cmpnei      	r3, 0
    190e:	0bfa      	bt      	0x1902	// 1902 <__fpcmp_parts_d+0x2a>
    1910:	3000      	movi      	r0, 0
    1912:	2800      	subi      	r0, 1
    1914:	1481      	pop      	r4
    1916:	3a44      	cmpnei      	r2, 4
    1918:	0c22      	bf      	0x195c	// 195c <__fpcmp_parts_d+0x84>
    191a:	9061      	ld.w      	r3, (r0, 0x4)
    191c:	3b40      	cmpnei      	r3, 0
    191e:	0bf9      	bt      	0x1910	// 1910 <__fpcmp_parts_d+0x38>
    1920:	3001      	movi      	r0, 1
    1922:	07f1      	br      	0x1904	// 1904 <__fpcmp_parts_d+0x2c>
    1924:	9082      	ld.w      	r4, (r0, 0x8)
    1926:	9142      	ld.w      	r2, (r1, 0x8)
    1928:	6509      	cmplt      	r2, r4
    192a:	0bea      	bt      	0x18fe	// 18fe <__fpcmp_parts_d+0x26>
    192c:	6491      	cmplt      	r4, r2
    192e:	080d      	bt      	0x1948	// 1948 <__fpcmp_parts_d+0x70>
    1930:	9044      	ld.w      	r2, (r0, 0x10)
    1932:	9083      	ld.w      	r4, (r0, 0xc)
    1934:	9103      	ld.w      	r0, (r1, 0xc)
    1936:	9124      	ld.w      	r1, (r1, 0x10)
    1938:	6484      	cmphs      	r1, r2
    193a:	0fe2      	bf      	0x18fe	// 18fe <__fpcmp_parts_d+0x26>
    193c:	644a      	cmpne      	r2, r1
    193e:	0803      	bt      	0x1944	// 1944 <__fpcmp_parts_d+0x6c>
    1940:	6500      	cmphs      	r0, r4
    1942:	0fde      	bf      	0x18fe	// 18fe <__fpcmp_parts_d+0x26>
    1944:	6448      	cmphs      	r2, r1
    1946:	0805      	bt      	0x1950	// 1950 <__fpcmp_parts_d+0x78>
    1948:	3b40      	cmpnei      	r3, 0
    194a:	0fe3      	bf      	0x1910	// 1910 <__fpcmp_parts_d+0x38>
    194c:	3001      	movi      	r0, 1
    194e:	07db      	br      	0x1904	// 1904 <__fpcmp_parts_d+0x2c>
    1950:	6486      	cmpne      	r1, r2
    1952:	0803      	bt      	0x1958	// 1958 <__fpcmp_parts_d+0x80>
    1954:	6410      	cmphs      	r4, r0
    1956:	0ff9      	bf      	0x1948	// 1948 <__fpcmp_parts_d+0x70>
    1958:	3000      	movi      	r0, 0
    195a:	1481      	pop      	r4
    195c:	9161      	ld.w      	r3, (r1, 0x4)
    195e:	9041      	ld.w      	r2, (r0, 0x4)
    1960:	5b09      	subu      	r0, r3, r2
    1962:	1481      	pop      	r4

00001964 <__memset_fast>:
    1964:	14c3      	push      	r4-r6
    1966:	7444      	zextb      	r1, r1
    1968:	3a40      	cmpnei      	r2, 0
    196a:	0c1f      	bf      	0x19a8	// 19a8 <__memset_fast+0x44>
    196c:	6d43      	mov      	r5, r0
    196e:	6d03      	mov      	r4, r0
    1970:	3603      	movi      	r6, 3
    1972:	6918      	and      	r4, r6
    1974:	3c40      	cmpnei      	r4, 0
    1976:	0c1a      	bf      	0x19aa	// 19aa <__memset_fast+0x46>
    1978:	a520      	st.b      	r1, (r5, 0x0)
    197a:	2a00      	subi      	r2, 1
    197c:	3a40      	cmpnei      	r2, 0
    197e:	0c15      	bf      	0x19a8	// 19a8 <__memset_fast+0x44>
    1980:	2500      	addi      	r5, 1
    1982:	6d17      	mov      	r4, r5
    1984:	3603      	movi      	r6, 3
    1986:	6918      	and      	r4, r6
    1988:	3c40      	cmpnei      	r4, 0
    198a:	0c10      	bf      	0x19aa	// 19aa <__memset_fast+0x46>
    198c:	a520      	st.b      	r1, (r5, 0x0)
    198e:	2a00      	subi      	r2, 1
    1990:	3a40      	cmpnei      	r2, 0
    1992:	0c0b      	bf      	0x19a8	// 19a8 <__memset_fast+0x44>
    1994:	2500      	addi      	r5, 1
    1996:	6d17      	mov      	r4, r5
    1998:	3603      	movi      	r6, 3
    199a:	6918      	and      	r4, r6
    199c:	3c40      	cmpnei      	r4, 0
    199e:	0c06      	bf      	0x19aa	// 19aa <__memset_fast+0x46>
    19a0:	a520      	st.b      	r1, (r5, 0x0)
    19a2:	2a00      	subi      	r2, 1
    19a4:	2500      	addi      	r5, 1
    19a6:	0402      	br      	0x19aa	// 19aa <__memset_fast+0x46>
    19a8:	1483      	pop      	r4-r6
    19aa:	4168      	lsli      	r3, r1, 8
    19ac:	6c4c      	or      	r1, r3
    19ae:	4170      	lsli      	r3, r1, 16
    19b0:	6c4c      	or      	r1, r3
    19b2:	3a2f      	cmplti      	r2, 16
    19b4:	0809      	bt      	0x19c6	// 19c6 <__memset_fast+0x62>
    19b6:	b520      	st.w      	r1, (r5, 0x0)
    19b8:	b521      	st.w      	r1, (r5, 0x4)
    19ba:	b522      	st.w      	r1, (r5, 0x8)
    19bc:	b523      	st.w      	r1, (r5, 0xc)
    19be:	2a0f      	subi      	r2, 16
    19c0:	250f      	addi      	r5, 16
    19c2:	3a2f      	cmplti      	r2, 16
    19c4:	0ff9      	bf      	0x19b6	// 19b6 <__memset_fast+0x52>
    19c6:	3a23      	cmplti      	r2, 4
    19c8:	0806      	bt      	0x19d4	// 19d4 <__memset_fast+0x70>
    19ca:	2a03      	subi      	r2, 4
    19cc:	b520      	st.w      	r1, (r5, 0x0)
    19ce:	2503      	addi      	r5, 4
    19d0:	3a23      	cmplti      	r2, 4
    19d2:	0ffc      	bf      	0x19ca	// 19ca <__memset_fast+0x66>
    19d4:	3a40      	cmpnei      	r2, 0
    19d6:	0fe9      	bf      	0x19a8	// 19a8 <__memset_fast+0x44>
    19d8:	2a00      	subi      	r2, 1
    19da:	a520      	st.b      	r1, (r5, 0x0)
    19dc:	3a40      	cmpnei      	r2, 0
    19de:	0fe5      	bf      	0x19a8	// 19a8 <__memset_fast+0x44>
    19e0:	2a00      	subi      	r2, 1
    19e2:	a521      	st.b      	r1, (r5, 0x1)
    19e4:	3a40      	cmpnei      	r2, 0
    19e6:	0fe1      	bf      	0x19a8	// 19a8 <__memset_fast+0x44>
    19e8:	a522      	st.b      	r1, (r5, 0x2)
    19ea:	1483      	pop      	r4-r6

000019ec <__memcpy_fast>:
    19ec:	14c3      	push      	r4-r6
    19ee:	6d83      	mov      	r6, r0
    19f0:	6d07      	mov      	r4, r1
    19f2:	6d18      	or      	r4, r6
    19f4:	3303      	movi      	r3, 3
    19f6:	690c      	and      	r4, r3
    19f8:	3c40      	cmpnei      	r4, 0
    19fa:	0c0b      	bf      	0x1a10	// 1a10 <__memcpy_fast+0x24>
    19fc:	3a40      	cmpnei      	r2, 0
    19fe:	0c08      	bf      	0x1a0e	// 1a0e <__memcpy_fast+0x22>
    1a00:	8160      	ld.b      	r3, (r1, 0x0)
    1a02:	2100      	addi      	r1, 1
    1a04:	2a00      	subi      	r2, 1
    1a06:	a660      	st.b      	r3, (r6, 0x0)
    1a08:	2600      	addi      	r6, 1
    1a0a:	3a40      	cmpnei      	r2, 0
    1a0c:	0bfa      	bt      	0x1a00	// 1a00 <__memcpy_fast+0x14>
    1a0e:	1483      	pop      	r4-r6
    1a10:	3a2f      	cmplti      	r2, 16
    1a12:	080e      	bt      	0x1a2e	// 1a2e <__memcpy_fast+0x42>
    1a14:	91a0      	ld.w      	r5, (r1, 0x0)
    1a16:	9161      	ld.w      	r3, (r1, 0x4)
    1a18:	9182      	ld.w      	r4, (r1, 0x8)
    1a1a:	b6a0      	st.w      	r5, (r6, 0x0)
    1a1c:	91a3      	ld.w      	r5, (r1, 0xc)
    1a1e:	b661      	st.w      	r3, (r6, 0x4)
    1a20:	b682      	st.w      	r4, (r6, 0x8)
    1a22:	b6a3      	st.w      	r5, (r6, 0xc)
    1a24:	2a0f      	subi      	r2, 16
    1a26:	210f      	addi      	r1, 16
    1a28:	260f      	addi      	r6, 16
    1a2a:	3a2f      	cmplti      	r2, 16
    1a2c:	0ff4      	bf      	0x1a14	// 1a14 <__memcpy_fast+0x28>
    1a2e:	3a23      	cmplti      	r2, 4
    1a30:	0808      	bt      	0x1a40	// 1a40 <__memcpy_fast+0x54>
    1a32:	9160      	ld.w      	r3, (r1, 0x0)
    1a34:	2a03      	subi      	r2, 4
    1a36:	2103      	addi      	r1, 4
    1a38:	b660      	st.w      	r3, (r6, 0x0)
    1a3a:	2603      	addi      	r6, 4
    1a3c:	3a23      	cmplti      	r2, 4
    1a3e:	0ffa      	bf      	0x1a32	// 1a32 <__memcpy_fast+0x46>
    1a40:	3a40      	cmpnei      	r2, 0
    1a42:	0fe6      	bf      	0x1a0e	// 1a0e <__memcpy_fast+0x22>
    1a44:	8160      	ld.b      	r3, (r1, 0x0)
    1a46:	2100      	addi      	r1, 1
    1a48:	2a00      	subi      	r2, 1
    1a4a:	a660      	st.b      	r3, (r6, 0x0)
    1a4c:	2600      	addi      	r6, 1
    1a4e:	07f9      	br      	0x1a40	// 1a40 <__memcpy_fast+0x54>

Disassembly of section .text.__main:

00001a50 <__main>:
extern char _bss_start[];
extern char _ebss[];


void __main( void ) 
{
    1a50:	14d0      	push      	r15

  /* if the start of data (dst)
     is not equal to end of text (src) then
     copy it, else it's already in the right place
     */
  if( _start_data != _end_rodata ) {
    1a52:	1009      	lrw      	r0, 0x20000000	// 1a74 <__main+0x24>
    1a54:	1029      	lrw      	r1, 0x3ab0	// 1a78 <__main+0x28>
    1a56:	6442      	cmpne      	r0, r1
    1a58:	0c05      	bf      	0x1a62	// 1a62 <__main+0x12>
//    __memcpy_fast( dst, src, (_end_data - _start_data));
    memcpy( dst, src, (_end_data - _start_data));
    1a5a:	1049      	lrw      	r2, 0x2000009c	// 1a7c <__main+0x2c>
    1a5c:	6082      	subu      	r2, r0
    1a5e:	e3ffffc7 	bsr      	0x19ec	// 19ec <__memcpy_fast>
  }

  /* zero the bss 
   */
  if( _ebss - _bss_start ) {
    1a62:	1048      	lrw      	r2, 0x20000440	// 1a80 <__main+0x30>
    1a64:	1008      	lrw      	r0, 0x2000009c	// 1a84 <__main+0x34>
    1a66:	640a      	cmpne      	r2, r0
    1a68:	0c05      	bf      	0x1a72	// 1a72 <__main+0x22>
//    __memset_fast( _bss_start, 0x00, ( _ebss - _bss_start ));
    memset( _bss_start, 0x00, ( _ebss - _bss_start ));
    1a6a:	6082      	subu      	r2, r0
    1a6c:	3100      	movi      	r1, 0
    1a6e:	e3ffff7b 	bsr      	0x1964	// 1964 <__memset_fast>
  }

	
}
    1a72:	1490      	pop      	r15
    1a74:	20000000 	.long	0x20000000
    1a78:	00003ab0 	.long	0x00003ab0
    1a7c:	2000009c 	.long	0x2000009c
    1a80:	20000440 	.long	0x20000440
    1a84:	2000009c 	.long	0x2000009c

Disassembly of section .text.SYSCON_General_CMD.part.0:

00001a88 <SYSCON_General_CMD.part.0>:
/*************************************************************/  
void SYSCON_General_CMD(FunctionalStatus NewState, SYSCON_General_CMD_TypeDef ENDIS_X )
{
	if (NewState != DISABLE)
	{
		if(ENDIS_X==ENDIS_EMOSC) 
    1a88:	3848      	cmpnei      	r0, 8
    1a8a:	080a      	bt      	0x1a9e	// 1a9e <SYSCON_General_CMD.part.0+0x16>
		GPIOA0->CONLR=(GPIOA0->CONLR & 0XFFF00FFF)|0x00044000;					//enable EMOSC PIN
    1a8c:	107a      	lrw      	r3, 0x2000004c	// 1af4 <SYSCON_General_CMD.part.0+0x6c>
    1a8e:	32ff      	movi      	r2, 255
    1a90:	9320      	ld.w      	r1, (r3, 0x0)
    1a92:	9160      	ld.w      	r3, (r1, 0x0)
    1a94:	424c      	lsli      	r2, r2, 12
    1a96:	68c9      	andn      	r3, r2
    1a98:	3bae      	bseti      	r3, 14
    1a9a:	3bb2      	bseti      	r3, 18
    1a9c:	b160      	st.w      	r3, (r1, 0x0)
		SYSCON->GCER|=ENDIS_X;													//enable SYSCON General Control
    1a9e:	1077      	lrw      	r3, 0x2000005c	// 1af8 <SYSCON_General_CMD.part.0+0x70>
    1aa0:	9360      	ld.w      	r3, (r3, 0x0)
    1aa2:	9341      	ld.w      	r2, (r3, 0x4)
    1aa4:	6c80      	or      	r2, r0
    1aa6:	b341      	st.w      	r2, (r3, 0x4)
		while(!(SYSCON->GCSR&ENDIS_X));											//check  Enable?	
    1aa8:	9343      	ld.w      	r2, (r3, 0xc)
    1aaa:	6880      	and      	r2, r0
    1aac:	3a40      	cmpnei      	r2, 0
    1aae:	0ffd      	bf      	0x1aa8	// 1aa8 <SYSCON_General_CMD.part.0+0x20>
		switch(ENDIS_X)
    1ab0:	3842      	cmpnei      	r0, 2
    1ab2:	0807      	bt      	0x1ac0	// 1ac0 <SYSCON_General_CMD.part.0+0x38>
		{
			case ENDIS_IMOSC:
				while (!(SYSCON->CKST & ENDIS_IMOSC)); 	
    1ab4:	3102      	movi      	r1, 2
    1ab6:	9344      	ld.w      	r2, (r3, 0x10)
    1ab8:	6884      	and      	r2, r1
    1aba:	3a40      	cmpnei      	r2, 0
    1abc:	0ffd      	bf      	0x1ab6	// 1ab6 <SYSCON_General_CMD.part.0+0x2e>
	{
		SYSCON->GCDR|=ENDIS_X;													//disable SYSCON General Control
		while(SYSCON->GCSR&ENDIS_X);											//check Disable?
		SYSCON->ICR|=ENDIS_X;													//Clear ENDIS_X stable bit
	}
}
    1abe:	783c      	jmp      	r15
		switch(ENDIS_X)
    1ac0:	3802      	cmphsi      	r0, 3
    1ac2:	0809      	bt      	0x1ad4	// 1ad4 <SYSCON_General_CMD.part.0+0x4c>
    1ac4:	3841      	cmpnei      	r0, 1
    1ac6:	0bfc      	bt      	0x1abe	// 1abe <SYSCON_General_CMD.part.0+0x36>
				while (!(SYSCON->CKST & ENDIS_ISOSC)); 
    1ac8:	3101      	movi      	r1, 1
    1aca:	9344      	ld.w      	r2, (r3, 0x10)
    1acc:	6884      	and      	r2, r1
    1ace:	3a40      	cmpnei      	r2, 0
    1ad0:	0ffd      	bf      	0x1aca	// 1aca <SYSCON_General_CMD.part.0+0x42>
    1ad2:	07f6      	br      	0x1abe	// 1abe <SYSCON_General_CMD.part.0+0x36>
		switch(ENDIS_X)
    1ad4:	3848      	cmpnei      	r0, 8
    1ad6:	0807      	bt      	0x1ae4	// 1ae4 <SYSCON_General_CMD.part.0+0x5c>
				while (!(SYSCON->CKST & ENDIS_EMOSC)); 
    1ad8:	3108      	movi      	r1, 8
    1ada:	9344      	ld.w      	r2, (r3, 0x10)
    1adc:	6884      	and      	r2, r1
    1ade:	3a40      	cmpnei      	r2, 0
    1ae0:	0ffd      	bf      	0x1ada	// 1ada <SYSCON_General_CMD.part.0+0x52>
    1ae2:	07ee      	br      	0x1abe	// 1abe <SYSCON_General_CMD.part.0+0x36>
		switch(ENDIS_X)
    1ae4:	3850      	cmpnei      	r0, 16
    1ae6:	0bec      	bt      	0x1abe	// 1abe <SYSCON_General_CMD.part.0+0x36>
				while (!(SYSCON->CKST & ENDIS_HFOSC)); 
    1ae8:	3110      	movi      	r1, 16
    1aea:	9344      	ld.w      	r2, (r3, 0x10)
    1aec:	6884      	and      	r2, r1
    1aee:	3a40      	cmpnei      	r2, 0
    1af0:	0ffd      	bf      	0x1aea	// 1aea <SYSCON_General_CMD.part.0+0x62>
    1af2:	07e6      	br      	0x1abe	// 1abe <SYSCON_General_CMD.part.0+0x36>
    1af4:	2000004c 	.long	0x2000004c
    1af8:	2000005c 	.long	0x2000005c

Disassembly of section .text.SYSCON_RST_VALUE:

00001afc <SYSCON_RST_VALUE>:
	SYSCON->RAMCHK=SYSCON_RAMCHK_RST;
    1afc:	106f      	lrw      	r3, 0x2000005c	// 1b38 <SYSCON_RST_VALUE+0x3c>
    1afe:	1050      	lrw      	r2, 0xffff	// 1b3c <SYSCON_RST_VALUE+0x40>
    1b00:	9360      	ld.w      	r3, (r3, 0x0)
    1b02:	b345      	st.w      	r2, (r3, 0x14)
	SYSCON->EFLCHK=SYSCON_EFLCHK_RST;
    1b04:	104f      	lrw      	r2, 0xffffff	// 1b40 <SYSCON_RST_VALUE+0x44>
    1b06:	b346      	st.w      	r2, (r3, 0x18)
	SYSCON->SCLKCR=SYSCON_SCLKCR_RST;
    1b08:	104f      	lrw      	r2, 0xd22d0000	// 1b44 <SYSCON_RST_VALUE+0x48>
    1b0a:	b347      	st.w      	r2, (r3, 0x1c)
	SYSCON->OSTR=SYSCON_OSTR_RST;
    1b0c:	104f      	lrw      	r2, 0x70ff3bff	// 1b48 <SYSCON_RST_VALUE+0x4c>
    1b0e:	b350      	st.w      	r2, (r3, 0x40)
	SYSCON->EXIRT=SYSCON_EXIRT_RST;
    1b10:	3180      	movi      	r1, 128
	SYSCON->LVDCR=SYSCON_LVDCR_RST;
    1b12:	320a      	movi      	r2, 10
    1b14:	b353      	st.w      	r2, (r3, 0x4c)
	SYSCON->EXIRT=SYSCON_EXIRT_RST;
    1b16:	604c      	addu      	r1, r3
    1b18:	3200      	movi      	r2, 0
	SYSCON->IWDCR=SYSCON_IWDCR_RST;
    1b1a:	100d      	lrw      	r0, 0x70c	// 1b4c <SYSCON_RST_VALUE+0x50>
	SYSCON->EXIRT=SYSCON_EXIRT_RST;
    1b1c:	b145      	st.w      	r2, (r1, 0x14)
	SYSCON->UREG0=SYSCON_UREG0_RST;
    1b1e:	23ff      	addi      	r3, 256
	SYSCON->EXIFT=SYSCON_EXIFT_RST;
    1b20:	b146      	st.w      	r2, (r1, 0x18)
	SYSCON->IWDCR=SYSCON_IWDCR_RST;
    1b22:	b10d      	st.w      	r0, (r1, 0x34)
	SYSCON->IWDCNT=SYSCON_IWDCNT_RST;
    1b24:	100b      	lrw      	r0, 0x3fe	// 1b50 <SYSCON_RST_VALUE+0x54>
    1b26:	b10e      	st.w      	r0, (r1, 0x38)
	SYSCON->EVTRG=SYSCON_EVTRG_RST;
    1b28:	b15d      	st.w      	r2, (r1, 0x74)
	SYSCON->EVPS=SYSCON_EVPS_RST;
    1b2a:	b15e      	st.w      	r2, (r1, 0x78)
	SYSCON->EVSWF=SYSCON_EVSWF_RST;
    1b2c:	b15f      	st.w      	r2, (r1, 0x7c)
	SYSCON->UREG0=SYSCON_UREG0_RST;
    1b2e:	b340      	st.w      	r2, (r3, 0x0)
	SYSCON->UREG1=SYSCON_UREG1_RST;
    1b30:	b341      	st.w      	r2, (r3, 0x4)
	SYSCON->UREG2=SYSCON_UREG2_RST;
    1b32:	b342      	st.w      	r2, (r3, 0x8)
	SYSCON->UREG3=SYSCON_UREG3_RST;
    1b34:	b343      	st.w      	r2, (r3, 0xc)
}
    1b36:	783c      	jmp      	r15
    1b38:	2000005c 	.long	0x2000005c
    1b3c:	0000ffff 	.long	0x0000ffff
    1b40:	00ffffff 	.long	0x00ffffff
    1b44:	d22d0000 	.long	0xd22d0000
    1b48:	70ff3bff 	.long	0x70ff3bff
    1b4c:	0000070c 	.long	0x0000070c
    1b50:	000003fe 	.long	0x000003fe

Disassembly of section .text.SYSCON_General_CMD:

00001b54 <SYSCON_General_CMD>:
{
    1b54:	14d0      	push      	r15
	if (NewState != DISABLE)
    1b56:	3840      	cmpnei      	r0, 0
    1b58:	0c05      	bf      	0x1b62	// 1b62 <SYSCON_General_CMD+0xe>
    1b5a:	6c07      	mov      	r0, r1
    1b5c:	e3ffff96 	bsr      	0x1a88	// 1a88 <SYSCON_General_CMD.part.0>
}
    1b60:	1490      	pop      	r15
		SYSCON->GCDR|=ENDIS_X;													//disable SYSCON General Control
    1b62:	1068      	lrw      	r3, 0x2000005c	// 1b80 <SYSCON_General_CMD+0x2c>
    1b64:	9360      	ld.w      	r3, (r3, 0x0)
    1b66:	9342      	ld.w      	r2, (r3, 0x8)
    1b68:	6c84      	or      	r2, r1
    1b6a:	b342      	st.w      	r2, (r3, 0x8)
		while(SYSCON->GCSR&ENDIS_X);											//check Disable?
    1b6c:	9343      	ld.w      	r2, (r3, 0xc)
    1b6e:	6884      	and      	r2, r1
    1b70:	3a40      	cmpnei      	r2, 0
    1b72:	0bfd      	bt      	0x1b6c	// 1b6c <SYSCON_General_CMD+0x18>
		SYSCON->ICR|=ENDIS_X;													//Clear ENDIS_X stable bit
    1b74:	237f      	addi      	r3, 128
    1b76:	9301      	ld.w      	r0, (r3, 0x4)
    1b78:	6c40      	or      	r1, r0
    1b7a:	b321      	st.w      	r1, (r3, 0x4)
}
    1b7c:	07f2      	br      	0x1b60	// 1b60 <SYSCON_General_CMD+0xc>
    1b7e:	0000      	bkpt
    1b80:	2000005c 	.long	0x2000005c

Disassembly of section .text.SystemCLK_HCLKDIV_PCLKDIV_Config:

00001b84 <SystemCLK_HCLKDIV_PCLKDIV_Config>:
//SystemClk_data_x:EMOSC_24M,EMOSC_16M,EMOSC_12M,EMOSC_8M,EMOSC_4M,EMOSC_36K,
//ISOSC,IMOSC,HFOSC_48M,HFOSC_24M,HFOSC_12M,HFOSC_6M
//ReturnValue:NONE
/*************************************************************/ 
void SystemCLK_HCLKDIV_PCLKDIV_Config(SystemCLK_TypeDef SYSCLK_X , SystemCLK_Div_TypeDef HCLK_DIV_X , PCLK_Div_TypeDef PCLK_DIV_X , SystemClk_data_TypeDef SystemClk_data_x )
{
    1b84:	14c2      	push      	r4-r5
	if(SystemClk_data_x==HFOSC_48M)
    1b86:	3b48      	cmpnei      	r3, 8
    1b88:	0828      	bt      	0x1bd8	// 1bd8 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x54>
	{
		IFC->CEDR=0X01;						//CLKEN
    1b8a:	109d      	lrw      	r4, 0x20000060	// 1bfc <SystemCLK_HCLKDIV_PCLKDIV_Config+0x78>
    1b8c:	3501      	movi      	r5, 1
    1b8e:	9480      	ld.w      	r4, (r4, 0x0)
    1b90:	b4a1      	st.w      	r5, (r4, 0x4)
		IFC->MR=0X04|(0X00<<16);			//High speed mode
    1b92:	3504      	movi      	r5, 4
    1b94:	b4a5      	st.w      	r5, (r4, 0x14)
	if((SystemClk_data_x==EMOSC_24M)||(SystemClk_data_x==HFOSC_24M))
	{
		IFC->CEDR=0X01;						//CLKEN
		IFC->MR=0X02|(0X00<<16);			//Medium speed mode
	}
	if((SystemClk_data_x==EMOSC_12M)||(SystemClk_data_x==HFOSC_12M)||(SystemClk_data_x==EMOSC_16M))
    1b96:	5b83      	subi      	r4, r3, 1
    1b98:	3c01      	cmphsi      	r4, 2
    1b9a:	0c2b      	bf      	0x1bf0	// 1bf0 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x6c>
	{
		IFC->CEDR=0X01;						//CLKEN
		IFC->MR=0X01|(0X00<<16);			//Low speed mode
	}
	if((SystemClk_data_x==EMOSC_8M)||(SystemClk_data_x==EMOSC_4M)||(SystemClk_data_x==EMOSC_36K)
		||(SystemClk_data_x==IMOSC)||(SystemClk_data_x==ISOSC)||(SystemClk_data_x==HFOSC_6M))
    1b9c:	5b8b      	subi      	r4, r3, 3
	if((SystemClk_data_x==EMOSC_8M)||(SystemClk_data_x==EMOSC_4M)||(SystemClk_data_x==EMOSC_36K)
    1b9e:	3c04      	cmphsi      	r4, 5
    1ba0:	0c03      	bf      	0x1ba6	// 1ba6 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x22>
		||(SystemClk_data_x==IMOSC)||(SystemClk_data_x==ISOSC)||(SystemClk_data_x==HFOSC_6M))
    1ba2:	3b4b      	cmpnei      	r3, 11
    1ba4:	0807      	bt      	0x1bb2	// 1bb2 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x2e>
	{
		IFC->CEDR=0X01;						//CLKEN
    1ba6:	1076      	lrw      	r3, 0x20000060	// 1bfc <SystemCLK_HCLKDIV_PCLKDIV_Config+0x78>
    1ba8:	3401      	movi      	r4, 1
    1baa:	9360      	ld.w      	r3, (r3, 0x0)
    1bac:	b381      	st.w      	r4, (r3, 0x4)
		IFC->MR=0X00|(0X00<<16);			//Low speed mode
    1bae:	3400      	movi      	r4, 0
    1bb0:	b385      	st.w      	r4, (r3, 0x14)
	}
	SYSCON->SCLKCR=SYSCLK_KEY | HCLK_DIV_X| SYSCLK_X;
    1bb2:	1094      	lrw      	r4, 0xd22d0000	// 1c00 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x7c>
    1bb4:	6c10      	or      	r0, r4
    1bb6:	1074      	lrw      	r3, 0x2000005c	// 1c04 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x80>
    1bb8:	6c40      	or      	r1, r0
    1bba:	9360      	ld.w      	r3, (r3, 0x0)
	while (!(SYSCON->CKST & (1<<8))); 											// waiting for sysclk stable
    1bbc:	3080      	movi      	r0, 128
	SYSCON->SCLKCR=SYSCLK_KEY | HCLK_DIV_X| SYSCLK_X;
    1bbe:	b327      	st.w      	r1, (r3, 0x1c)
	while (!(SYSCON->CKST & (1<<8))); 											// waiting for sysclk stable
    1bc0:	4001      	lsli      	r0, r0, 1
    1bc2:	9324      	ld.w      	r1, (r3, 0x10)
    1bc4:	6840      	and      	r1, r0
    1bc6:	3940      	cmpnei      	r1, 0
    1bc8:	0ffd      	bf      	0x1bc2	// 1bc2 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x3e>
	SYSCON->PCLKCR=PCLK_KEY|PCLK_DIV_X;											//PCLK DIV 1 2 4 6 8 16		
    1bca:	1030      	lrw      	r1, 0xc33c0000	// 1c08 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x84>
    1bcc:	6c48      	or      	r1, r2
    1bce:	b328      	st.w      	r1, (r3, 0x20)
	while(SYSCON->PCLKCR!=PCLK_DIV_X);											//Wait PCLK DIV
    1bd0:	9328      	ld.w      	r1, (r3, 0x20)
    1bd2:	644a      	cmpne      	r2, r1
    1bd4:	0bfe      	bt      	0x1bd0	// 1bd0 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x4c>
}
    1bd6:	1482      	pop      	r4-r5
	if((SystemClk_data_x==EMOSC_24M)||(SystemClk_data_x==HFOSC_24M))
    1bd8:	3b40      	cmpnei      	r3, 0
    1bda:	0c03      	bf      	0x1be0	// 1be0 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x5c>
    1bdc:	3b49      	cmpnei      	r3, 9
    1bde:	0807      	bt      	0x1bec	// 1bec <SystemCLK_HCLKDIV_PCLKDIV_Config+0x68>
		IFC->CEDR=0X01;						//CLKEN
    1be0:	1087      	lrw      	r4, 0x20000060	// 1bfc <SystemCLK_HCLKDIV_PCLKDIV_Config+0x78>
    1be2:	3501      	movi      	r5, 1
    1be4:	9480      	ld.w      	r4, (r4, 0x0)
    1be6:	b4a1      	st.w      	r5, (r4, 0x4)
		IFC->MR=0X02|(0X00<<16);			//Medium speed mode
    1be8:	3502      	movi      	r5, 2
    1bea:	b4a5      	st.w      	r5, (r4, 0x14)
	if((SystemClk_data_x==EMOSC_12M)||(SystemClk_data_x==HFOSC_12M)||(SystemClk_data_x==EMOSC_16M))
    1bec:	3b4a      	cmpnei      	r3, 10
    1bee:	0bd4      	bt      	0x1b96	// 1b96 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x12>
		IFC->CEDR=0X01;						//CLKEN
    1bf0:	1083      	lrw      	r4, 0x20000060	// 1bfc <SystemCLK_HCLKDIV_PCLKDIV_Config+0x78>
    1bf2:	3501      	movi      	r5, 1
    1bf4:	9480      	ld.w      	r4, (r4, 0x0)
    1bf6:	b4a1      	st.w      	r5, (r4, 0x4)
		IFC->MR=0X01|(0X00<<16);			//Low speed mode
    1bf8:	b4a5      	st.w      	r5, (r4, 0x14)
    1bfa:	07d1      	br      	0x1b9c	// 1b9c <SystemCLK_HCLKDIV_PCLKDIV_Config+0x18>
    1bfc:	20000060 	.long	0x20000060
    1c00:	d22d0000 	.long	0xd22d0000
    1c04:	2000005c 	.long	0x2000005c
    1c08:	c33c0000 	.long	0xc33c0000

Disassembly of section .text.SYSCON_HFOSC_SELECTE:

00001c0c <SYSCON_HFOSC_SELECTE>:
//EntryParameter:HFOSC_SELECTE_X
//HFOSC_SELECTE_X:HFOSC_SELECTE_48M,HFOSC_SELECTE_24M;HFOSC_SELECTE_12M;HFOSC_SELECTE_6M
//ReturnValue:NONE
/*************************************************************/  
void SYSCON_HFOSC_SELECTE(HFOSC_SELECTE_TypeDef HFOSC_SELECTE_X)
{		
    1c0c:	14d1      	push      	r4, r15
    1c0e:	6d03      	mov      	r4, r0
	SYSCON_General_CMD(DISABLE,ENDIS_HFOSC);					//disable HFOSC
    1c10:	3110      	movi      	r1, 16
    1c12:	3000      	movi      	r0, 0
    1c14:	e3ffffa0 	bsr      	0x1b54	// 1b54 <SYSCON_General_CMD>
	SYSCON->OPT1 = (SYSCON->OPT1 & 0XFFFFFFCF)|HFOSC_SELECTE_X;
    1c18:	1066      	lrw      	r3, 0x2000005c	// 1c30 <SYSCON_HFOSC_SELECTE+0x24>
    1c1a:	9360      	ld.w      	r3, (r3, 0x0)
    1c1c:	9319      	ld.w      	r0, (r3, 0x64)
    1c1e:	3884      	bclri      	r0, 4
    1c20:	3885      	bclri      	r0, 5
    1c22:	6c10      	or      	r0, r4
    1c24:	b319      	st.w      	r0, (r3, 0x64)
    1c26:	3010      	movi      	r0, 16
    1c28:	e3ffff30 	bsr      	0x1a88	// 1a88 <SYSCON_General_CMD.part.0>
	SYSCON_General_CMD(ENABLE,ENDIS_HFOSC);						//enable HFOSC
}
    1c2c:	1491      	pop      	r4, r15
    1c2e:	0000      	bkpt
    1c30:	2000005c 	.long	0x2000005c

Disassembly of section .text.SYSCON_WDT_CMD:

00001c34 <SYSCON_WDT_CMD>:
//EntryParameter:,NewState
//NewState:ENABLE,DISABLE
//ReturnValue:NONE
/*************************************************************/
void SYSCON_WDT_CMD(FunctionalStatus NewState)
{
    1c34:	106c      	lrw      	r3, 0x2000005c	// 1c64 <SYSCON_WDT_CMD+0x30>
	if(NewState != DISABLE)
    1c36:	3840      	cmpnei      	r0, 0
	{
		SYSCON->IWDEDR=IWDTEDR_KEY|Enable_IWDT;
    1c38:	9360      	ld.w      	r3, (r3, 0x0)
    1c3a:	237f      	addi      	r3, 128
	if(NewState != DISABLE)
    1c3c:	0c0a      	bf      	0x1c50	// 1c50 <SYSCON_WDT_CMD+0x1c>
		SYSCON->IWDEDR=IWDTEDR_KEY|Enable_IWDT;
    1c3e:	104b      	lrw      	r2, 0x78870000	// 1c68 <SYSCON_WDT_CMD+0x34>
		while(!(SYSCON->IWDCR&Check_IWDT_BUSY));
    1c40:	3180      	movi      	r1, 128
		SYSCON->IWDEDR=IWDTEDR_KEY|Enable_IWDT;
    1c42:	b34f      	st.w      	r2, (r3, 0x3c)
		while(!(SYSCON->IWDCR&Check_IWDT_BUSY));
    1c44:	4125      	lsli      	r1, r1, 5
    1c46:	934d      	ld.w      	r2, (r3, 0x34)
    1c48:	6884      	and      	r2, r1
    1c4a:	3a40      	cmpnei      	r2, 0
    1c4c:	0ffd      	bf      	0x1c46	// 1c46 <SYSCON_WDT_CMD+0x12>
	else
	{
		SYSCON->IWDEDR=IWDTEDR_KEY|Disable_IWDT;
		while(SYSCON->IWDCR&Check_IWDT_BUSY);
	}
}
    1c4e:	783c      	jmp      	r15
		SYSCON->IWDEDR=IWDTEDR_KEY|Disable_IWDT;
    1c50:	1047      	lrw      	r2, 0x788755aa	// 1c6c <SYSCON_WDT_CMD+0x38>
		while(SYSCON->IWDCR&Check_IWDT_BUSY);
    1c52:	3180      	movi      	r1, 128
		SYSCON->IWDEDR=IWDTEDR_KEY|Disable_IWDT;
    1c54:	b34f      	st.w      	r2, (r3, 0x3c)
		while(SYSCON->IWDCR&Check_IWDT_BUSY);
    1c56:	4125      	lsli      	r1, r1, 5
    1c58:	934d      	ld.w      	r2, (r3, 0x34)
    1c5a:	6884      	and      	r2, r1
    1c5c:	3a40      	cmpnei      	r2, 0
    1c5e:	0bfd      	bt      	0x1c58	// 1c58 <SYSCON_WDT_CMD+0x24>
    1c60:	07f7      	br      	0x1c4e	// 1c4e <SYSCON_WDT_CMD+0x1a>
    1c62:	0000      	bkpt
    1c64:	2000005c 	.long	0x2000005c
    1c68:	78870000 	.long	0x78870000
    1c6c:	788755aa 	.long	0x788755aa

Disassembly of section .text.SYSCON_IWDCNT_Reload:

00001c70 <SYSCON_IWDCNT_Reload>:
//EntryParameter:NONE
//ReturnValue: NONE
/*************************************************************/
void SYSCON_IWDCNT_Reload(void)
{
	SYSCON->IWDCNT=CLR_IWDT;
    1c70:	1064      	lrw      	r3, 0x2000005c	// 1c80 <SYSCON_IWDCNT_Reload+0x10>
    1c72:	32b4      	movi      	r2, 180
    1c74:	9360      	ld.w      	r3, (r3, 0x0)
    1c76:	237f      	addi      	r3, 128
    1c78:	4257      	lsli      	r2, r2, 23
    1c7a:	b34e      	st.w      	r2, (r3, 0x38)
}
    1c7c:	783c      	jmp      	r15
    1c7e:	0000      	bkpt
    1c80:	2000005c 	.long	0x2000005c

Disassembly of section .text.SYSCON_IWDCNT_Config:

00001c84 <SYSCON_IWDCNT_Config>:
//IWDT_INTW_DIV_X:IWDT_INTW_DIV_1/2/3/4/4/5/6
//ReturnValue: NONE
/*************************************************************/
void SYSCON_IWDCNT_Config(IWDT_TIME_TypeDef IWDT_TIME_X , IWDT_TIMEDIV_TypeDef IWDT_INTW_DIV_X )
{
	SYSCON->IWDCR=IWDT_KEY|IWDT_TIME_X|IWDT_INTW_DIV_X;
    1c84:	1044      	lrw      	r2, 0x87780000	// 1c94 <SYSCON_IWDCNT_Config+0x10>
    1c86:	1065      	lrw      	r3, 0x2000005c	// 1c98 <SYSCON_IWDCNT_Config+0x14>
    1c88:	6c48      	or      	r1, r2
    1c8a:	9360      	ld.w      	r3, (r3, 0x0)
    1c8c:	6c04      	or      	r0, r1
    1c8e:	237f      	addi      	r3, 128
    1c90:	b30d      	st.w      	r0, (r3, 0x34)
}
    1c92:	783c      	jmp      	r15
    1c94:	87780000 	.long	0x87780000
    1c98:	2000005c 	.long	0x2000005c

Disassembly of section .text.SYSCON_LVD_Config:

00001c9c <SYSCON_LVD_Config>:
//X_LVD_INT:ENABLE_LVD_INT,DISABLE_LVD_INT
//INTDET_POL_X:INTDET_POL_fall,INTDET_POL_X_rise,INTDET_POL_X_riseORfall
//ReturnValue: NONE
/*************************************************************/
void SYSCON_LVD_Config(X_LVDEN_TypeDef X_LVDEN , INTDET_LVL_X_TypeDef INTDET_LVL_X , RSTDET_LVL_X_TypeDef RSTDET_LVL_X , X_LVD_INT_TypeDef X_LVD_INT , INTDET_POL_X_TypeDef INTDET_POL_X)
{
    1c9c:	14c3      	push      	r4-r6
    1c9e:	9883      	ld.w      	r4, (r14, 0xc)
	//SYSCON->LVDCR=LVD_KEY;
	SYSCON->LVDCR=LVD_KEY|X_LVDEN|INTDET_LVL_X|RSTDET_LVL_X|X_LVD_INT|INTDET_POL_X;
    1ca0:	10c5      	lrw      	r6, 0xb44b0000	// 1cb4 <SYSCON_LVD_Config+0x18>
    1ca2:	6d18      	or      	r4, r6
    1ca4:	6cd0      	or      	r3, r4
    1ca6:	6c8c      	or      	r2, r3
    1ca8:	6c48      	or      	r1, r2
    1caa:	10a4      	lrw      	r5, 0x2000005c	// 1cb8 <SYSCON_LVD_Config+0x1c>
    1cac:	6c04      	or      	r0, r1
    1cae:	95a0      	ld.w      	r5, (r5, 0x0)
    1cb0:	b513      	st.w      	r0, (r5, 0x4c)
}
    1cb2:	1483      	pop      	r4-r6
    1cb4:	b44b0000 	.long	0xb44b0000
    1cb8:	2000005c 	.long	0x2000005c

Disassembly of section .text.LVD_Int_Enable:

00001cbc <LVD_Int_Enable>:
//EntryParameter:NONE
//ReturnValue: NONE
/*************************************************************/
void LVD_Int_Enable(void)
{
	SYSCON->ICR = LVD_INT_ST;				//clear LVD INT status
    1cbc:	1066      	lrw      	r3, 0x2000005c	// 1cd4 <LVD_Int_Enable+0x18>
    1cbe:	3180      	movi      	r1, 128
    1cc0:	9360      	ld.w      	r3, (r3, 0x0)
    1cc2:	3280      	movi      	r2, 128
    1cc4:	604c      	addu      	r1, r3
    1cc6:	4244      	lsli      	r2, r2, 4
    1cc8:	b141      	st.w      	r2, (r1, 0x4)
	SYSCON->IMER  |= LVD_INT_ST;
    1cca:	935d      	ld.w      	r2, (r3, 0x74)
    1ccc:	3aab      	bseti      	r2, 11
    1cce:	b35d      	st.w      	r2, (r3, 0x74)
}
    1cd0:	783c      	jmp      	r15
    1cd2:	0000      	bkpt
    1cd4:	2000005c 	.long	0x2000005c

Disassembly of section .text.IWDT_Int_Enable:

00001cd8 <IWDT_Int_Enable>:
//EntryParameter:NONE
//ReturnValue: NONE
/*************************************************************/
void IWDT_Int_Enable(void)
{
	SYSCON->ICR = IWDT_INT_ST;				//clear LVD INT status
    1cd8:	1066      	lrw      	r3, 0x2000005c	// 1cf0 <IWDT_Int_Enable+0x18>
    1cda:	3180      	movi      	r1, 128
    1cdc:	9360      	ld.w      	r3, (r3, 0x0)
    1cde:	3280      	movi      	r2, 128
    1ce0:	604c      	addu      	r1, r3
    1ce2:	4241      	lsli      	r2, r2, 1
    1ce4:	b141      	st.w      	r2, (r1, 0x4)
	SYSCON->IMER  |= IWDT_INT_ST;
    1ce6:	935d      	ld.w      	r2, (r3, 0x74)
    1ce8:	3aa8      	bseti      	r2, 8
    1cea:	b35d      	st.w      	r2, (r3, 0x74)
}
    1cec:	783c      	jmp      	r15
    1cee:	0000      	bkpt
    1cf0:	2000005c 	.long	0x2000005c

Disassembly of section .text.EXTI_trigger_CMD:

00001cf4 <EXTI_trigger_CMD>:
//EXI_tringer_mode:_EXIRT,_EXIFT
//ReturnValue: LVD detection flag
/*************************************************************/
void EXTI_trigger_CMD(FunctionalStatus NewState , SYSCON_EXIPIN_TypeDef  EXIPIN , EXI_tringer_mode_TypeDef EXI_tringer_mode)
{
	switch(EXI_tringer_mode)
    1cf4:	3a40      	cmpnei      	r2, 0
    1cf6:	0c04      	bf      	0x1cfe	// 1cfe <EXTI_trigger_CMD+0xa>
    1cf8:	3a41      	cmpnei      	r2, 1
    1cfa:	0c0e      	bf      	0x1d16	// 1d16 <EXTI_trigger_CMD+0x22>
		{
			SYSCON->EXIFT &=~EXIPIN;	
		}
		break;
	}	
}
    1cfc:	783c      	jmp      	r15
    1cfe:	106d      	lrw      	r3, 0x2000005c	// 1d30 <EXTI_trigger_CMD+0x3c>
		if(NewState != DISABLE)
    1d00:	3840      	cmpnei      	r0, 0
			SYSCON->EXIRT |=EXIPIN;
    1d02:	9360      	ld.w      	r3, (r3, 0x0)
    1d04:	237f      	addi      	r3, 128
    1d06:	9345      	ld.w      	r2, (r3, 0x14)
		if(NewState != DISABLE)
    1d08:	0c04      	bf      	0x1d10	// 1d10 <EXTI_trigger_CMD+0x1c>
			SYSCON->EXIRT |=EXIPIN;
    1d0a:	6c48      	or      	r1, r2
    1d0c:	b325      	st.w      	r1, (r3, 0x14)
    1d0e:	07f7      	br      	0x1cfc	// 1cfc <EXTI_trigger_CMD+0x8>
			SYSCON->EXIRT &=~EXIPIN;	
    1d10:	6885      	andn      	r2, r1
    1d12:	b345      	st.w      	r2, (r3, 0x14)
    1d14:	07f4      	br      	0x1cfc	// 1cfc <EXTI_trigger_CMD+0x8>
    1d16:	1067      	lrw      	r3, 0x2000005c	// 1d30 <EXTI_trigger_CMD+0x3c>
		if(NewState != DISABLE)
    1d18:	3840      	cmpnei      	r0, 0
			SYSCON->EXIFT |=EXIPIN;
    1d1a:	9360      	ld.w      	r3, (r3, 0x0)
    1d1c:	237f      	addi      	r3, 128
    1d1e:	9346      	ld.w      	r2, (r3, 0x18)
		if(NewState != DISABLE)
    1d20:	0c04      	bf      	0x1d28	// 1d28 <EXTI_trigger_CMD+0x34>
			SYSCON->EXIFT |=EXIPIN;
    1d22:	6c48      	or      	r1, r2
    1d24:	b326      	st.w      	r1, (r3, 0x18)
    1d26:	07eb      	br      	0x1cfc	// 1cfc <EXTI_trigger_CMD+0x8>
			SYSCON->EXIFT &=~EXIPIN;	
    1d28:	6885      	andn      	r2, r1
    1d2a:	b346      	st.w      	r2, (r3, 0x18)
}
    1d2c:	07e8      	br      	0x1cfc	// 1cfc <EXTI_trigger_CMD+0x8>
    1d2e:	0000      	bkpt
    1d30:	2000005c 	.long	0x2000005c

Disassembly of section .text.SYSCON_Int_Enable:

00001d34 <SYSCON_Int_Enable>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SYSCON_Int_Enable(void)
{
    INTC_ISER_WRITE(SYSCON_INT);    
    1d34:	3202      	movi      	r2, 2
    1d36:	1062      	lrw      	r3, 0xe000e100	// 1d3c <SYSCON_Int_Enable+0x8>
    1d38:	b340      	st.w      	r2, (r3, 0x0)
}
    1d3a:	783c      	jmp      	r15
    1d3c:	e000e100 	.long	0xe000e100

Disassembly of section .text.WWDT_CONFIG:

00001d40 <WWDT_CONFIG>:
//WWDT CONFIG
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/ 
void WWDT_CONFIG(WWDT_PSCDIV_TypeDef PSCDIVX,U8_T WND_DATA,WWDT_DBGEN_TypeDef DBGENX)
{
    1d40:	14c1      	push      	r4
	WWDT->CFGR =WND_DATA;
    1d42:	1065      	lrw      	r3, 0x20000010	// 1d54 <WWDT_CONFIG+0x14>
    1d44:	9380      	ld.w      	r4, (r3, 0x0)
    1d46:	b421      	st.w      	r1, (r4, 0x4)
	WWDT->CFGR |= PSCDIVX |DBGENX;
    1d48:	9461      	ld.w      	r3, (r4, 0x4)
    1d4a:	6c8c      	or      	r2, r3
    1d4c:	6c08      	or      	r0, r2
    1d4e:	b401      	st.w      	r0, (r4, 0x4)
}
    1d50:	1481      	pop      	r4
    1d52:	0000      	bkpt
    1d54:	20000010 	.long	0x20000010

Disassembly of section .text.WWDT_CNT_Load:

00001d58 <WWDT_CNT_Load>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/ 
void WWDT_CNT_Load(U8_T cnt_data)
{
	WWDT->CR  |= cnt_data;						//SET
    1d58:	1063      	lrw      	r3, 0x20000010	// 1d64 <WWDT_CNT_Load+0xc>
    1d5a:	9360      	ld.w      	r3, (r3, 0x0)
    1d5c:	9340      	ld.w      	r2, (r3, 0x0)
    1d5e:	6c08      	or      	r0, r2
    1d60:	b300      	st.w      	r0, (r3, 0x0)
}
    1d62:	783c      	jmp      	r15
    1d64:	20000010 	.long	0x20000010

Disassembly of section .text.WWDT_Int_Config:

00001d68 <WWDT_Int_Config>:
//EntryParameter:NONE
//ReturnValue: NONE
/*************************************************************/
void WWDT_Int_Config(FunctionalStatus NewState)
{
	if (NewState != DISABLE)
    1d68:	3840      	cmpnei      	r0, 0
    1d6a:	106a      	lrw      	r3, 0x20000010	// 1d90 <WWDT_Int_Config+0x28>
    1d6c:	0c0b      	bf      	0x1d82	// 1d82 <WWDT_Int_Config+0x1a>
	{
		WWDT->ICR = WWDT_EVI;				
    1d6e:	9360      	ld.w      	r3, (r3, 0x0)
    1d70:	3101      	movi      	r1, 1
    1d72:	b325      	st.w      	r1, (r3, 0x14)
		WWDT->IMCR  |= WWDT_EVI;
    1d74:	9344      	ld.w      	r2, (r3, 0x10)
    1d76:	6c84      	or      	r2, r1
    1d78:	b344      	st.w      	r2, (r3, 0x10)
		INTC_ISER_WRITE(WWDT_INT);  
    1d7a:	3240      	movi      	r2, 64
    1d7c:	1066      	lrw      	r3, 0xe000e100	// 1d94 <WWDT_Int_Config+0x2c>
	}
	else
	{
		WWDT->IMCR  &= ~WWDT_EVI;					//CLR
		INTC_ICER_WRITE(WWDT_INT);  
    1d7e:	b340      	st.w      	r2, (r3, 0x0)
	}
    1d80:	783c      	jmp      	r15
		WWDT->IMCR  &= ~WWDT_EVI;					//CLR
    1d82:	9340      	ld.w      	r2, (r3, 0x0)
    1d84:	9264      	ld.w      	r3, (r2, 0x10)
    1d86:	3b80      	bclri      	r3, 0
    1d88:	b264      	st.w      	r3, (r2, 0x10)
		INTC_ICER_WRITE(WWDT_INT);  
    1d8a:	3240      	movi      	r2, 64
    1d8c:	1063      	lrw      	r3, 0xe000e180	// 1d98 <WWDT_Int_Config+0x30>
    1d8e:	07f8      	br      	0x1d7e	// 1d7e <WWDT_Int_Config+0x16>
    1d90:	20000010 	.long	0x20000010
    1d94:	e000e100 	.long	0xe000e100
    1d98:	e000e180 	.long	0xe000e180

Disassembly of section .text.BT_ConfigInterrupt_CMD:

00001d9c <BT_ConfigInterrupt_CMD>:
//NewState:ENABLE,DISABLE
//ReturnValue:NONE
/*************************************************************/ 
void BT_ConfigInterrupt_CMD(CSP_BT_T *BTx,FunctionalStatus NewState,BT_IMSCR_TypeDef BT_IMSCR_X)
{
	if (NewState != DISABLE)
    1d9c:	3940      	cmpnei      	r1, 0
	{
		BTx->IMCR  |= BT_IMSCR_X;						
    1d9e:	906b      	ld.w      	r3, (r0, 0x2c)
	if (NewState != DISABLE)
    1da0:	0c04      	bf      	0x1da8	// 1da8 <BT_ConfigInterrupt_CMD+0xc>
		BTx->IMCR  |= BT_IMSCR_X;						
    1da2:	6c8c      	or      	r2, r3
    1da4:	b04b      	st.w      	r2, (r0, 0x2c)
	}
	else
	{
		BTx->IMCR  &= ~BT_IMSCR_X;					
	}
}
    1da6:	783c      	jmp      	r15
		BTx->IMCR  &= ~BT_IMSCR_X;					
    1da8:	68c9      	andn      	r3, r2
    1daa:	b06b      	st.w      	r3, (r0, 0x2c)
}
    1dac:	07fd      	br      	0x1da6	// 1da6 <BT_ConfigInterrupt_CMD+0xa>

Disassembly of section .text.UARTInitRxTxIntEn:

00001dae <UARTInitRxTxIntEn>:
//ReturnValue:NONE
/*************************************************************/
void UARTInitRxTxIntEn(CSP_UART_T *uart,U16_T baudrate_u16,UART_PAR_TypeDef PAR_DAT)
{
   // Set Transmitter Enable
   CSP_UART_SET_CTRL(uart, UART_TX | UART_RX | UART_RX_INT | UART_TX_INT|PAR_DAT);
    1dae:	330f      	movi      	r3, 15
    1db0:	6c8c      	or      	r2, r3
    1db2:	b042      	st.w      	r2, (r0, 0x8)
   // Set Baudrate
   CSP_UART_SET_BRDIV(uart, baudrate_u16);
    1db4:	b024      	st.w      	r1, (r0, 0x10)
}
    1db6:	783c      	jmp      	r15

Disassembly of section .text.UARTTxByte:

00001db8 <UARTTxByte>:
/*************************************************************/
void UARTTxByte(CSP_UART_T *uart,U8_T txdata_u8)
{
	unsigned int  DataI;
	// Write the transmit buffer
	CSP_UART_SET_DATA(uart,txdata_u8);
    1db8:	b020      	st.w      	r1, (r0, 0x0)
	do
	{
		DataI = CSP_UART_GET_SR(uart);
		DataI = DataI & UART_TX_FULL;
    1dba:	3201      	movi      	r2, 1
		DataI = CSP_UART_GET_SR(uart);
    1dbc:	9061      	ld.w      	r3, (r0, 0x4)
		DataI = DataI & UART_TX_FULL;
    1dbe:	68c8      	and      	r3, r2
	}
	while(DataI == UART_TX_FULL);    //Loop  when tx is full
    1dc0:	3b40      	cmpnei      	r3, 0
    1dc2:	0bfd      	bt      	0x1dbc	// 1dbc <UARTTxByte+0x4>
}
    1dc4:	783c      	jmp      	r15

Disassembly of section .text.tk_parameter_init:

00001dc8 <tk_parameter_init>:
void tk_parameter_init(void)
{
/****************************************************
//TK parameter define
*****************************************************/
	TK_IO_ENABLE=0b11111111111111111;
    1dc8:	1152      	lrw      	r2, 0x1ffff	// 1e90 <tk_parameter_init+0xc8>
    1dca:	1173      	lrw      	r3, 0x200000dc	// 1e94 <tk_parameter_init+0xcc>
    1dcc:	b340      	st.w      	r2, (r3, 0x0)
	/*TK_IO_ENABLE=TCH_EN(0)|TCH_EN(1)|TCH_EN(2)|TCH_EN(3)|TCH_EN(6)|TCH_EN(7)|TCH_EN(8)|TCH_EN(9);	*/	
	TK_senprd[0]=50;								//TCH0 scan period = TCH0 sens
    1dce:	3232      	movi      	r2, 50
    1dd0:	1172      	lrw      	r3, 0x200000e2	// 1e98 <tk_parameter_init+0xd0>
	TK_senprd[11]=50;								//TCH11 scan period = TCH11 sens
	TK_senprd[12]=50;								//TCH12 scan period = TCH12 sens
	TK_senprd[13]=50;								//TCH13 scan period = TCH13 sens
	TK_senprd[14]=50;								//TCH14 scan period = TCH14 sens
	TK_senprd[15]=50;								//TCH15 scan period = TCH15 sens
	TK_senprd[16]=50;								//TCH16 scan period = TCH16 sens
    1dd2:	ab50      	st.h      	r2, (r3, 0x20)
	TK_senprd[0]=50;								//TCH0 scan period = TCH0 sens
    1dd4:	ab40      	st.h      	r2, (r3, 0x0)
	TK_senprd[1]=50;								//TCH1 scan period = TCH1 sens
    1dd6:	ab41      	st.h      	r2, (r3, 0x2)
	TK_senprd[2]=50;								//TCH2 scan period = TCH2 sens
    1dd8:	ab42      	st.h      	r2, (r3, 0x4)
	TK_senprd[3]=50;								//TCH3 scan period = TCH3 sens
    1dda:	ab43      	st.h      	r2, (r3, 0x6)
	TK_senprd[4]=50;								//TCH4 scan period = TCH4 sens
    1ddc:	ab44      	st.h      	r2, (r3, 0x8)
	TK_senprd[5]=50;								//TCH5 scan period = TCH5 sens
    1dde:	ab45      	st.h      	r2, (r3, 0xa)
	TK_senprd[6]=50;								//TCH6 scan period = TCH6 sens
    1de0:	ab46      	st.h      	r2, (r3, 0xc)
	TK_senprd[7]=50;								//TCH7 scan period = TCH7 sens
    1de2:	ab47      	st.h      	r2, (r3, 0xe)
	TK_senprd[8]=50;								//TCH8 scan period = TCH8 sens
    1de4:	ab48      	st.h      	r2, (r3, 0x10)
	TK_senprd[9]=50;								//TCH9 scan period = TCH9 sens
    1de6:	ab49      	st.h      	r2, (r3, 0x12)
	TK_senprd[10]=50;								//TCH10 scan period = TCH10 sens
    1de8:	ab4a      	st.h      	r2, (r3, 0x14)
	TK_senprd[11]=50;								//TCH11 scan period = TCH11 sens
    1dea:	ab4b      	st.h      	r2, (r3, 0x16)
	TK_senprd[12]=50;								//TCH12 scan period = TCH12 sens
    1dec:	ab4c      	st.h      	r2, (r3, 0x18)
	TK_senprd[13]=50;								//TCH13 scan period = TCH13 sens
    1dee:	ab4d      	st.h      	r2, (r3, 0x1a)
	TK_senprd[14]=50;								//TCH14 scan period = TCH14 sens
    1df0:	ab4e      	st.h      	r2, (r3, 0x1c)
	TK_senprd[15]=50;								//TCH15 scan period = TCH15 sens
    1df2:	ab4f      	st.h      	r2, (r3, 0x1e)
	TK_Triggerlevel[0]=60;							//TCH0 TK_Trigger level
    1df4:	323c      	movi      	r2, 60
    1df6:	116a      	lrw      	r3, 0x2000010a	// 1e9c <tk_parameter_init+0xd4>
	TK_Triggerlevel[8]=60;							//TCH8 TK_Trigger level
	TK_Triggerlevel[9]=60;							//TCH9 TK_Trigger level
	TK_Triggerlevel[10]=60;							//TCH10 TK_Trigger level
	TK_Triggerlevel[11]=60;							//TCH11 TK_Trigger level
	TK_Triggerlevel[12]=60;							//TCH12 TK_Trigger level
	TK_Triggerlevel[13]=60;							//TCH13 TK_Trigger level
    1df8:	ab4d      	st.h      	r2, (r3, 0x1a)
	TK_Triggerlevel[0]=60;							//TCH0 TK_Trigger level
    1dfa:	ab40      	st.h      	r2, (r3, 0x0)
	TK_Triggerlevel[1]=60;							//TCH1 TK_Trigger level
    1dfc:	ab41      	st.h      	r2, (r3, 0x2)
	TK_Triggerlevel[2]=60;							//TCH2 TK_Trigger level
    1dfe:	ab42      	st.h      	r2, (r3, 0x4)
	TK_Triggerlevel[3]=60;							//TCH3 TK_Trigger level
    1e00:	ab43      	st.h      	r2, (r3, 0x6)
	TK_Triggerlevel[4]=60;							//TCH4 TK_Trigger level
    1e02:	ab44      	st.h      	r2, (r3, 0x8)
	TK_Triggerlevel[5]=60;							//TCH5 TK_Trigger level
    1e04:	ab45      	st.h      	r2, (r3, 0xa)
	TK_Triggerlevel[6]=60;							//TCH6 TK_Trigger level
    1e06:	ab46      	st.h      	r2, (r3, 0xc)
	TK_Triggerlevel[7]=60;							//TCH7 TK_Trigger level
    1e08:	ab47      	st.h      	r2, (r3, 0xe)
	TK_Triggerlevel[8]=60;							//TCH8 TK_Trigger level
    1e0a:	ab48      	st.h      	r2, (r3, 0x10)
	TK_Triggerlevel[9]=60;							//TCH9 TK_Trigger level
    1e0c:	ab49      	st.h      	r2, (r3, 0x12)
	TK_Triggerlevel[10]=60;							//TCH10 TK_Trigger level
    1e0e:	ab4a      	st.h      	r2, (r3, 0x14)
	TK_Triggerlevel[11]=60;							//TCH11 TK_Trigger level
    1e10:	ab4b      	st.h      	r2, (r3, 0x16)
	TK_Triggerlevel[12]=60;							//TCH12 TK_Trigger level
    1e12:	ab4c      	st.h      	r2, (r3, 0x18)
	TK_Triggerlevel[14]=60;							//TCH14 TK_Trigger level
    1e14:	ab4e      	st.h      	r2, (r3, 0x1c)
	TK_Triggerlevel[15]=60;							//TCH15 TK_Trigger level
    1e16:	ab4f      	st.h      	r2, (r3, 0x1e)
	TK_Triggerlevel[16]=60;							//TCH16 TK_Trigger level
    1e18:	ab50      	st.h      	r2, (r3, 0x20)
	Press_debounce_data=5;							//Press debounce 1~10
    1e1a:	3205      	movi      	r2, 5
    1e1c:	1161      	lrw      	r3, 0x200000a0	// 1ea0 <tk_parameter_init+0xd8>
    1e1e:	a340      	st.b      	r2, (r3, 0x0)
	Release_debounce_data=5;						//Release debounce 1~10
    1e20:	1161      	lrw      	r3, 0x200000b0	// 1ea4 <tk_parameter_init+0xdc>
    1e22:	a340      	st.b      	r2, (r3, 0x0)
	Key_mode=0;										//Key mode 0=single key 1=multi key
    1e24:	3200      	movi      	r2, 0
    1e26:	1161      	lrw      	r3, 0x200000b1	// 1ea8 <tk_parameter_init+0xe0>
    1e28:	a340      	st.b      	r2, (r3, 0x0)
	MultiTimes_Filter=0;							//MultiTimes Filter,>4 ENABLE <4 DISABLE
    1e2a:	1161      	lrw      	r3, 0x200000d4	// 1eac <tk_parameter_init+0xe4>
    1e2c:	a340      	st.b      	r2, (r3, 0x0)
	Valid_Key_Num=4;								//Valid Key number when touched
    1e2e:	3204      	movi      	r2, 4
    1e30:	1160      	lrw      	r3, 0x200000e0	// 1eb0 <tk_parameter_init+0xe8>
    1e32:	a340      	st.b      	r2, (r3, 0x0)
	Base_Speed=10;									//baseline update speed
    1e34:	320a      	movi      	r2, 10
    1e36:	1160      	lrw      	r3, 0x200000d8	// 1eb4 <tk_parameter_init+0xec>
    1e38:	a340      	st.b      	r2, (r3, 0x0)
	TK_longpress_time=16;							//longpress rebuild time = _TK_longpress_time1*1s  0=disable
    1e3a:	3210      	movi      	r2, 16
    1e3c:	107f      	lrw      	r3, 0x200000a8	// 1eb8 <tk_parameter_init+0xf0>
    1e3e:	b340      	st.w      	r2, (r3, 0x0)
	TK_BaseCnt=59999;								//10ms  TK_BaseCnt=10ms*48M/8-1,this register need to modify when mcu's Freq changed
    1e40:	105f      	lrw      	r2, 0xea5f	// 1ebc <tk_parameter_init+0xf4>
    1e42:	1160      	lrw      	r3, 0x20000138	// 1ec0 <tk_parameter_init+0xf8>
    1e44:	b340      	st.w      	r2, (r3, 0x0)
/****************************************************
//TK function define
*****************************************************/
	TK_Lowpower_mode=DISABLE;						//touch key can goto sleep when TK lowpower mode enable
    1e46:	3200      	movi      	r2, 0
    1e48:	107f      	lrw      	r3, 0x200000a1	// 1ec4 <tk_parameter_init+0xfc>
    1e4a:	a340      	st.b      	r2, (r3, 0x0)
	TK_Lowpower_level=2;							//0=20ms 1=50ms 2=100ms 3=150ms 4=200ms,Scan interval when sleep
    1e4c:	3202      	movi      	r2, 2
    1e4e:	107f      	lrw      	r3, 0x200000a2	// 1ec8 <tk_parameter_init+0x100>
    1e50:	a340      	st.b      	r2, (r3, 0x0)
	TK_Wakeup_level=50;								//touch key Trigger level in sleep
    1e52:	3232      	movi      	r2, 50
    1e54:	107e      	lrw      	r3, 0x20000108	// 1ecc <tk_parameter_init+0x104>
    1e56:	a340      	st.b      	r2, (r3, 0x0)
/****************************************************
//TK special parameter define
*****************************************************/
	TK_PSEL_MODE=TK_PSEL_AVDD;						//tk power sel:TK_PSEL_FVR/TK_PSEL_AVDD   when select TK_PSEL_FVR PA0.2(TCH3) need a 104 cap
    1e58:	3201      	movi      	r2, 1
    1e5a:	107e      	lrw      	r3, 0x2000013e	// 1ed0 <tk_parameter_init+0x108>
    1e5c:	ab40      	st.h      	r2, (r3, 0x0)
	TK_FVR_LEVEL=TK_FVR_4096V;						//FVR level:TK_FVR_2048V/TK_FVR_4096V
    1e5e:	107e      	lrw      	r3, 0x20000134	// 1ed4 <tk_parameter_init+0x10c>
    1e60:	ab40      	st.h      	r2, (r3, 0x0)
	TK_EC_LEVEL=TK_EC_3V;							//C0 voltage sel:TK_EC_1V/TK_EC_2V/TK_EC_3V/TK_EC_3_6V
    1e62:	3202      	movi      	r2, 2
    1e64:	107d      	lrw      	r3, 0x2000012c	// 1ed8 <tk_parameter_init+0x110>
    1e66:	ab40      	st.h      	r2, (r3, 0x0)
	TK_icon[0]=4;									//TCH0 TK Scan icon
    1e68:	3204      	movi      	r2, 4
    1e6a:	107d      	lrw      	r3, 0x200000b2	// 1edc <tk_parameter_init+0x114>
	TK_icon[10]=4;									//TCH10 TK Scan icon
	TK_icon[11]=4;									//TCH11 TK Scan icon
	TK_icon[12]=4;									//TCH12 TK Scan icon
	TK_icon[13]=4;									//TCH13 TK Scan icon
	TK_icon[14]=4;									//TCH14 TK Scan icon
	TK_icon[15]=4;									//TCH15 TK Scan icon
    1e6c:	ab4f      	st.h      	r2, (r3, 0x1e)
	TK_icon[0]=4;									//TCH0 TK Scan icon
    1e6e:	ab40      	st.h      	r2, (r3, 0x0)
	TK_icon[1]=4;									//TCH1 TK Scan icon
    1e70:	ab41      	st.h      	r2, (r3, 0x2)
	TK_icon[2]=4;									//TCH2 TK Scan icon
    1e72:	ab42      	st.h      	r2, (r3, 0x4)
	TK_icon[3]=4;									//TCH3 TK Scan icon
    1e74:	ab43      	st.h      	r2, (r3, 0x6)
	TK_icon[4]=4;									//TCH4 TK Scan icon
    1e76:	ab44      	st.h      	r2, (r3, 0x8)
	TK_icon[5]=4;									//TCH5 TK Scan icon
    1e78:	ab45      	st.h      	r2, (r3, 0xa)
	TK_icon[6]=4;									//TCH6 TK Scan icon
    1e7a:	ab46      	st.h      	r2, (r3, 0xc)
	TK_icon[7]=4;									//TCH7 TK Scan icon
    1e7c:	ab47      	st.h      	r2, (r3, 0xe)
	TK_icon[8]=4;									//TCH8 TK Scan icon
    1e7e:	ab48      	st.h      	r2, (r3, 0x10)
	TK_icon[9]=4;									//TCH9 TK Scan icon
    1e80:	ab49      	st.h      	r2, (r3, 0x12)
	TK_icon[10]=4;									//TCH10 TK Scan icon
    1e82:	ab4a      	st.h      	r2, (r3, 0x14)
	TK_icon[11]=4;									//TCH11 TK Scan icon
    1e84:	ab4b      	st.h      	r2, (r3, 0x16)
	TK_icon[12]=4;									//TCH12 TK Scan icon
    1e86:	ab4c      	st.h      	r2, (r3, 0x18)
	TK_icon[13]=4;									//TCH13 TK Scan icon
    1e88:	ab4d      	st.h      	r2, (r3, 0x1a)
	TK_icon[14]=4;									//TCH14 TK Scan icon
    1e8a:	ab4e      	st.h      	r2, (r3, 0x1c)
	TK_icon[16]=4;									//TCH16 TK Scan icon
    1e8c:	ab50      	st.h      	r2, (r3, 0x20)
	TK_Wheel_Seq[0]=14;								
	TK_Wheel_Seq[1]=0;
	TK_Wheel_Seq[2]=15;
	TK_Wheel_Seq[3]=1;	
#endif
    1e8e:	783c      	jmp      	r15
    1e90:	0001ffff 	.long	0x0001ffff
    1e94:	200000dc 	.long	0x200000dc
    1e98:	200000e2 	.long	0x200000e2
    1e9c:	2000010a 	.long	0x2000010a
    1ea0:	200000a0 	.long	0x200000a0
    1ea4:	200000b0 	.long	0x200000b0
    1ea8:	200000b1 	.long	0x200000b1
    1eac:	200000d4 	.long	0x200000d4
    1eb0:	200000e0 	.long	0x200000e0
    1eb4:	200000d8 	.long	0x200000d8
    1eb8:	200000a8 	.long	0x200000a8
    1ebc:	0000ea5f 	.long	0x0000ea5f
    1ec0:	20000138 	.long	0x20000138
    1ec4:	200000a1 	.long	0x200000a1
    1ec8:	200000a2 	.long	0x200000a2
    1ecc:	20000108 	.long	0x20000108
    1ed0:	2000013e 	.long	0x2000013e
    1ed4:	20000134 	.long	0x20000134
    1ed8:	2000012c 	.long	0x2000012c
    1edc:	200000b2 	.long	0x200000b2

Disassembly of section .text.delay_nms:

00001ee0 <delay_nms>:
//software delay
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/	
void delay_nms(unsigned int t)
{
    1ee0:	14d0      	push      	r15
    1ee2:	1423      	subi      	r14, r14, 12
    volatile unsigned int i,j ,k=0;
    j = 50* t;
    1ee4:	3232      	movi      	r2, 50
    volatile unsigned int i,j ,k=0;
    1ee6:	3300      	movi      	r3, 0
    j = 50* t;
    1ee8:	7c08      	mult      	r0, r2
    volatile unsigned int i,j ,k=0;
    1eea:	b862      	st.w      	r3, (r14, 0x8)
    j = 50* t;
    1eec:	b801      	st.w      	r0, (r14, 0x4)
    for ( i = 0; i < j; i++ )
    1eee:	b860      	st.w      	r3, (r14, 0x0)
    1ef0:	9840      	ld.w      	r2, (r14, 0x0)
    1ef2:	9861      	ld.w      	r3, (r14, 0x4)
    1ef4:	64c8      	cmphs      	r2, r3
    1ef6:	0c03      	bf      	0x1efc	// 1efc <delay_nms+0x1c>
    {
        k++;
		SYSCON_IWDCNT_Reload(); 
    }
}
    1ef8:	1403      	addi      	r14, r14, 12
    1efa:	1490      	pop      	r15
        k++;
    1efc:	9862      	ld.w      	r3, (r14, 0x8)
    1efe:	2300      	addi      	r3, 1
    1f00:	b862      	st.w      	r3, (r14, 0x8)
		SYSCON_IWDCNT_Reload(); 
    1f02:	e3fffeb7 	bsr      	0x1c70	// 1c70 <SYSCON_IWDCNT_Reload>
    for ( i = 0; i < j; i++ )
    1f06:	9860      	ld.w      	r3, (r14, 0x0)
    1f08:	2300      	addi      	r3, 1
    1f0a:	07f2      	br      	0x1eee	// 1eee <delay_nms+0xe>

Disassembly of section .text.SYSCON_CONFIG:

00001f0c <SYSCON_CONFIG>:
//syscon Functions
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SYSCON_CONFIG(void)
{
    1f0c:	14d0      	push      	r15
    1f0e:	1421      	subi      	r14, r14, 4
//------SYSTEM CLK AND PCLK FUNTION---------------------------/
	SYSCON_RST_VALUE();                                                         //SYSCON all register clr
    1f10:	e3fffdf6 	bsr      	0x1afc	// 1afc <SYSCON_RST_VALUE>
	SYSCON_General_CMD(ENABLE,ENDIS_ISOSC);										//SYSCON enable/disable clock source
    1f14:	3101      	movi      	r1, 1
    1f16:	3001      	movi      	r0, 1
    1f18:	e3fffe1e 	bsr      	0x1b54	// 1b54 <SYSCON_General_CMD>
	//EMOSC_OSTR_Config(0XAD,0X1f,EM_LFSEL_EN,EM_FLEN_EN,EM_FLSEL_10ns);		//EM_CNT=0X3FF,0xAD(36K),EM_GM=0,Low F modedisable,EM filter disable,if enable,cont set 5ns
	//SYSCON_General_CMD(ENABLE,ENDIS_EMOSC);
	SYSCON_HFOSC_SELECTE(HFOSC_SELECTE_48M);									//HFOSC selected 48MHz
    1f1c:	3000      	movi      	r0, 0
    1f1e:	e3fffe77 	bsr      	0x1c0c	// 1c0c <SYSCON_HFOSC_SELECTE>
	SystemCLK_HCLKDIV_PCLKDIV_Config(SYSCLK_HFOSC,HCLK_DIV_1,PCLK_DIV_1,HFOSC_48M);//system clock set, Hclk div ,Pclk div  set system clock=SystemCLK/Hclk div/Pclk div
    1f22:	3180      	movi      	r1, 128
    1f24:	3308      	movi      	r3, 8
    1f26:	3200      	movi      	r2, 0
    1f28:	4121      	lsli      	r1, r1, 1
    1f2a:	3002      	movi      	r0, 2
    1f2c:	e3fffe2c 	bsr      	0x1b84	// 1b84 <SystemCLK_HCLKDIV_PCLKDIV_Config>
//------------  WDT FUNTION  --------------------------------/
    SYSCON_IWDCNT_Config(IWDT_TIME_4S,IWDT_INTW_DIV_7);      					//WDT TIME 1s,WDT alarm interrupt time=1s-1s*1/8=0.875S
    1f30:	30c0      	movi      	r0, 192
    1f32:	3118      	movi      	r1, 24
    1f34:	4003      	lsli      	r0, r0, 3
    1f36:	e3fffea7 	bsr      	0x1c84	// 1c84 <SYSCON_IWDCNT_Config>
    SYSCON_WDT_CMD(DISABLE);                                                  	//enable/disable WDT		
    1f3a:	3000      	movi      	r0, 0
    1f3c:	e3fffe7c 	bsr      	0x1c34	// 1c34 <SYSCON_WDT_CMD>
    SYSCON_IWDCNT_Reload();                                                   	//reload WDT
    1f40:	e3fffe98 	bsr      	0x1c70	// 1c70 <SYSCON_IWDCNT_Reload>
	IWDT_Int_Enable();
    1f44:	e3fffeca 	bsr      	0x1cd8	// 1cd8 <IWDT_Int_Enable>
//------------  WWDT FUNTION  --------------------------------/
	WWDT_CNT_Load(0xFF);
    1f48:	30ff      	movi      	r0, 255
    1f4a:	e3ffff07 	bsr      	0x1d58	// 1d58 <WWDT_CNT_Load>
	WWDT_CONFIG(PCLK_4096_DIV0,0xFF,WWDT_DBGDIS);
    1f4e:	3200      	movi      	r2, 0
    1f50:	31ff      	movi      	r1, 255
    1f52:	3000      	movi      	r0, 0
    1f54:	e3fffef6 	bsr      	0x1d40	// 1d40 <WWDT_CONFIG>
	WWDT_Int_Config(ENABLE);													
    1f58:	3001      	movi      	r0, 1
    1f5a:	e3ffff07 	bsr      	0x1d68	// 1d68 <WWDT_Int_Config>
	//WWDT_CMD(ENABLE);															//enable wwdt
//------------  CLO Output --------------------------------/	
	//SYSCON_CLO_CONFIG(CLO_PA08);												//CLO output setting
	//SYSCON_CLO_SRC_SET(CLO_HFCLK,CLO_DIV16);									//CLO output clock and div
//------------  LVD FUNTION  --------------------------------/ 
    SYSCON_LVD_Config(ENABLE_LVDEN,INTDET_LVL_3_9V,RSTDET_LVL_1_9V,ENABLE_LVD_INT,INTDET_POL_fall);   //LVD LVR Enable/Disable
    1f5e:	3340      	movi      	r3, 64
    1f60:	b860      	st.w      	r3, (r14, 0x0)
    1f62:	31c0      	movi      	r1, 192
    1f64:	3380      	movi      	r3, 128
    1f66:	4364      	lsli      	r3, r3, 4
    1f68:	3200      	movi      	r2, 0
    1f6a:	4123      	lsli      	r1, r1, 3
    1f6c:	3000      	movi      	r0, 0
    1f6e:	e3fffe97 	bsr      	0x1c9c	// 1c9c <SYSCON_LVD_Config>
    LVD_Int_Enable();	
    1f72:	e3fffea5 	bsr      	0x1cbc	// 1cbc <LVD_Int_Enable>
//------------  SYSCON Vector  --------------------------------/ 	
	SYSCON_Int_Enable();    														//SYSCON VECTOR
    1f76:	e3fffedf 	bsr      	0x1d34	// 1d34 <SYSCON_Int_Enable>
	//SYSCON_WakeUp_Enable();    													//Enable WDT wakeup INT
//------------------------------------------------------------/
//OSC CLOCK Calibration
//------------------------------------------------------------/	
	std_clk_calib_source(CLK_ISOSC_27K);
    1f7a:	3000      	movi      	r0, 0
    1f7c:	e0000b9e 	bsr      	0x36b8	// 36b8 <std_clk_calib_source>
	std_clk_calib(CLK_HFOSC_48M);												//Select the same clock source as the system
    1f80:	3000      	movi      	r0, 0
    1f82:	e0000bb3 	bsr      	0x36e8	// 36e8 <std_clk_calib>
	
}
    1f86:	1401      	addi      	r14, r14, 4
    1f88:	1490      	pop      	r15

Disassembly of section .text.APT32F102_init:

00001f8c <APT32F102_init>:
//ReturnValue:NONE                                                                /
/*********************************************************************************/
/*********************************************************************************/  
/*********************************************************************************/
void APT32F102_init(void) 
{
    1f8c:	14d0      	push      	r15
//------------------------------------------------------------/
//Peripheral clock enable and disable
//EntryParameter:NONE
//ReturnValue:NONE
//------------------------------------------------------------/
    SYSCON->PCER0=0xFFFFFFF;                                        //PCLK Enable
    1f8e:	1069      	lrw      	r3, 0x2000005c	// 1fb0 <APT32F102_init+0x24>
    SYSCON->PCER1=0xFFFFFFF;                                        //PCLK Enable
    while(!(SYSCON->PCSR0&0x1));                                    //Wait PCLK enabled	
    1f90:	3101      	movi      	r1, 1
    SYSCON->PCER0=0xFFFFFFF;                                        //PCLK Enable
    1f92:	9340      	ld.w      	r2, (r3, 0x0)
    1f94:	1068      	lrw      	r3, 0xfffffff	// 1fb4 <APT32F102_init+0x28>
    1f96:	b26a      	st.w      	r3, (r2, 0x28)
    SYSCON->PCER1=0xFFFFFFF;                                        //PCLK Enable
    1f98:	b26d      	st.w      	r3, (r2, 0x34)
    while(!(SYSCON->PCSR0&0x1));                                    //Wait PCLK enabled	
    1f9a:	926c      	ld.w      	r3, (r2, 0x30)
    1f9c:	68c4      	and      	r3, r1
    1f9e:	3b40      	cmpnei      	r3, 0
    1fa0:	0ffd      	bf      	0x1f9a	// 1f9a <APT32F102_init+0xe>
//------------------------------------------------------------/
//ISOSC/IMOSC/EMOSC/SYSCLK/IWDT/LVD/EM_CMFAIL/EM_CMRCV/CMD_ERR OSC stable interrupt
//EntryParameter:NONE
//ReturnValue:NONE
//------------------------------------------------------------/
    SYSCON_CONFIG();                                                 //syscon  initial
    1fa2:	e3ffffb5 	bsr      	0x1f0c	// 1f0c <SYSCON_CONFIG>
	CK_CPU_EnAllNormalIrq();                                         //enable all IRQ
    1fa6:	e0000527 	bsr      	0x29f4	// 29f4 <CK_CPU_EnAllNormalIrq>
	tk_init();																//tk initial
    1faa:	e0000aa3 	bsr      	0x34f0	// 34f0 <tk_init>
    //UART0_CONFIG();                                               //UART0 initial 
	//UART1_CONFIG();                                               //UART1 initial 
	//UART2_CONFIG();                                               //UART2 initial 
	//ADC12_CONFIG();                                               //ADC initial 
	TK_CONFIG();													//Touch Key initial
}
    1fae:	1490      	pop      	r15
    1fb0:	2000005c 	.long	0x2000005c
    1fb4:	0fffffff 	.long	0x0fffffff

Disassembly of section .text.SYSCONIntHandler:

00001fb8 <SYSCONIntHandler>:
//SYSCON Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SYSCONIntHandler(void) 
{
    1fb8:	1460      	nie
    1fba:	1462      	ipush
    // ISR content ...
	nop;
    1fbc:	6c03      	mov      	r0, r0
	if((SYSCON->MISR&ISOSC_ST)==ISOSC_ST)				//ISOSC stable interrupt
    1fbe:	117c      	lrw      	r3, 0x2000005c	// 20ac <SYSCONIntHandler+0xf4>
    1fc0:	3280      	movi      	r2, 128
    1fc2:	9360      	ld.w      	r3, (r3, 0x0)
    1fc4:	60c8      	addu      	r3, r2
    1fc6:	9323      	ld.w      	r1, (r3, 0xc)
    1fc8:	3001      	movi      	r0, 1
    1fca:	6840      	and      	r1, r0
    1fcc:	3940      	cmpnei      	r1, 0
    1fce:	0c04      	bf      	0x1fd6	// 1fd6 <SYSCONIntHandler+0x1e>
	{
		SYSCON->ICR = EMOSC_ST;
	} 
	else if((SYSCON->MISR&HFOSC_ST)==HFOSC_ST)			//HFOSC stable interrupt
	{
		SYSCON->ICR = HFOSC_ST;
    1fd0:	b301      	st.w      	r0, (r3, 0x4)
	}
	else if((SYSCON->MISR&CMD_ERR_ST)==CMD_ERR_ST)		//Command error interrupt
	{
		SYSCON->ICR = CMD_ERR_ST;
	}
}
    1fd2:	1463      	ipop
    1fd4:	1461      	nir
	else if((SYSCON->MISR&IMOSC_ST)==IMOSC_ST)			//IMOSC stable interrupt
    1fd6:	9323      	ld.w      	r1, (r3, 0xc)
    1fd8:	3002      	movi      	r0, 2
    1fda:	6840      	and      	r1, r0
    1fdc:	3940      	cmpnei      	r1, 0
    1fde:	0bf9      	bt      	0x1fd0	// 1fd0 <SYSCONIntHandler+0x18>
	else if((SYSCON->MISR&EMOSC_ST)==EMOSC_ST)			//EMOSC stable interrupt
    1fe0:	9323      	ld.w      	r1, (r3, 0xc)
    1fe2:	3008      	movi      	r0, 8
    1fe4:	6840      	and      	r1, r0
    1fe6:	3940      	cmpnei      	r1, 0
    1fe8:	0bf4      	bt      	0x1fd0	// 1fd0 <SYSCONIntHandler+0x18>
	else if((SYSCON->MISR&HFOSC_ST)==HFOSC_ST)			//HFOSC stable interrupt
    1fea:	9323      	ld.w      	r1, (r3, 0xc)
    1fec:	3010      	movi      	r0, 16
    1fee:	6840      	and      	r1, r0
    1ff0:	3940      	cmpnei      	r1, 0
    1ff2:	0bef      	bt      	0x1fd0	// 1fd0 <SYSCONIntHandler+0x18>
	else if((SYSCON->MISR&SYSCLK_ST)==SYSCLK_ST)		//SYSCLK change end & stable interrupt
    1ff4:	9323      	ld.w      	r1, (r3, 0xc)
    1ff6:	6848      	and      	r1, r2
    1ff8:	3940      	cmpnei      	r1, 0
    1ffa:	0c03      	bf      	0x2000	// 2000 <SYSCONIntHandler+0x48>
		SYSCON->ICR = CMD_ERR_ST;
    1ffc:	b341      	st.w      	r2, (r3, 0x4)
}
    1ffe:	07ea      	br      	0x1fd2	// 1fd2 <SYSCONIntHandler+0x1a>
	else if((SYSCON->MISR&IWDT_INT_ST)==IWDT_INT_ST)	//IWDT alarm window interrupt
    2000:	3280      	movi      	r2, 128
    2002:	9323      	ld.w      	r1, (r3, 0xc)
    2004:	4241      	lsli      	r2, r2, 1
    2006:	6848      	and      	r1, r2
    2008:	3940      	cmpnei      	r1, 0
    200a:	0c06      	bf      	0x2016	// 2016 <SYSCONIntHandler+0x5e>
		SYSCON->ICR = IWDT_INT_ST;
    200c:	b341      	st.w      	r2, (r3, 0x4)
		SYSCON->IWDCNT=0x5aul<<24;
    200e:	32b4      	movi      	r2, 180
    2010:	4257      	lsli      	r2, r2, 23
    2012:	b34e      	st.w      	r2, (r3, 0x38)
    2014:	07df      	br      	0x1fd2	// 1fd2 <SYSCONIntHandler+0x1a>
	else if((SYSCON->MISR&WKI_INT_ST)==WKI_INT_ST)
    2016:	3280      	movi      	r2, 128
    2018:	9323      	ld.w      	r1, (r3, 0xc)
    201a:	4242      	lsli      	r2, r2, 2
    201c:	6848      	and      	r1, r2
    201e:	3940      	cmpnei      	r1, 0
    2020:	0bee      	bt      	0x1ffc	// 1ffc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&RAMERRINT_ST)==RAMERRINT_ST)	//SRAM check fail interrupt
    2022:	3280      	movi      	r2, 128
    2024:	9323      	ld.w      	r1, (r3, 0xc)
    2026:	4243      	lsli      	r2, r2, 3
    2028:	6848      	and      	r1, r2
    202a:	3940      	cmpnei      	r1, 0
    202c:	0be8      	bt      	0x1ffc	// 1ffc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&LVD_INT_ST)==LVD_INT_ST)		//LVD threshold interrupt
    202e:	3280      	movi      	r2, 128
    2030:	9323      	ld.w      	r1, (r3, 0xc)
    2032:	4244      	lsli      	r2, r2, 4
    2034:	6848      	and      	r1, r2
    2036:	3940      	cmpnei      	r1, 0
    2038:	0c03      	bf      	0x203e	// 203e <SYSCONIntHandler+0x86>
		nop;
    203a:	6c03      	mov      	r0, r0
    203c:	07e0      	br      	0x1ffc	// 1ffc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&HWD_ERR_ST)==HWD_ERR_ST)		//Hardware Divider divisor = 0 interrupt
    203e:	3280      	movi      	r2, 128
    2040:	9323      	ld.w      	r1, (r3, 0xc)
    2042:	4245      	lsli      	r2, r2, 5
    2044:	6848      	and      	r1, r2
    2046:	3940      	cmpnei      	r1, 0
    2048:	0bda      	bt      	0x1ffc	// 1ffc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EFL_ERR_ST)==EFL_ERR_ST)		//Flash check fail interrupt
    204a:	3280      	movi      	r2, 128
    204c:	9323      	ld.w      	r1, (r3, 0xc)
    204e:	4246      	lsli      	r2, r2, 6
    2050:	6848      	and      	r1, r2
    2052:	3940      	cmpnei      	r1, 0
    2054:	0bd4      	bt      	0x1ffc	// 1ffc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&OPTERR_INT)==OPTERR_INT)		//Option load fail interrupt
    2056:	3280      	movi      	r2, 128
    2058:	9323      	ld.w      	r1, (r3, 0xc)
    205a:	4247      	lsli      	r2, r2, 7
    205c:	6848      	and      	r1, r2
    205e:	3940      	cmpnei      	r1, 0
    2060:	0bce      	bt      	0x1ffc	// 1ffc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_CMLST_ST)==EM_CMLST_ST)	//EMOSC clock monitor fail interrupt
    2062:	3280      	movi      	r2, 128
    2064:	9323      	ld.w      	r1, (r3, 0xc)
    2066:	424b      	lsli      	r2, r2, 11
    2068:	6848      	and      	r1, r2
    206a:	3940      	cmpnei      	r1, 0
    206c:	0bc8      	bt      	0x1ffc	// 1ffc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG0_ST)==EM_EVTRG0_ST)	//Event Trigger Channel 0 Interrupt
    206e:	3280      	movi      	r2, 128
    2070:	9323      	ld.w      	r1, (r3, 0xc)
    2072:	424c      	lsli      	r2, r2, 12
    2074:	6848      	and      	r1, r2
    2076:	3940      	cmpnei      	r1, 0
    2078:	0bc2      	bt      	0x1ffc	// 1ffc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG1_ST)==EM_EVTRG1_ST)	//Event Trigger Channel 1 Interrupt
    207a:	3280      	movi      	r2, 128
    207c:	9323      	ld.w      	r1, (r3, 0xc)
    207e:	424d      	lsli      	r2, r2, 13
    2080:	6848      	and      	r1, r2
    2082:	3940      	cmpnei      	r1, 0
    2084:	0bbc      	bt      	0x1ffc	// 1ffc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG2_ST)==EM_EVTRG2_ST)	//Event Trigger Channel 2 Interrupt
    2086:	3280      	movi      	r2, 128
    2088:	9323      	ld.w      	r1, (r3, 0xc)
    208a:	424e      	lsli      	r2, r2, 14
    208c:	6848      	and      	r1, r2
    208e:	3940      	cmpnei      	r1, 0
    2090:	0bb6      	bt      	0x1ffc	// 1ffc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG3_ST)==EM_EVTRG3_ST)	//Event Trigger Channel 3 Interrupt
    2092:	3280      	movi      	r2, 128
    2094:	9323      	ld.w      	r1, (r3, 0xc)
    2096:	424f      	lsli      	r2, r2, 15
    2098:	6848      	and      	r1, r2
    209a:	3940      	cmpnei      	r1, 0
    209c:	0bb0      	bt      	0x1ffc	// 1ffc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&CMD_ERR_ST)==CMD_ERR_ST)		//Command error interrupt
    209e:	3280      	movi      	r2, 128
    20a0:	9323      	ld.w      	r1, (r3, 0xc)
    20a2:	4256      	lsli      	r2, r2, 22
    20a4:	6848      	and      	r1, r2
    20a6:	3940      	cmpnei      	r1, 0
    20a8:	0baa      	bt      	0x1ffc	// 1ffc <SYSCONIntHandler+0x44>
    20aa:	0794      	br      	0x1fd2	// 1fd2 <SYSCONIntHandler+0x1a>
    20ac:	2000005c 	.long	0x2000005c

Disassembly of section .text.IFCIntHandler:

000020b0 <IFCIntHandler>:
//IFC Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void IFCIntHandler(void) 
{
    20b0:	1460      	nie
    20b2:	1462      	ipush
    // ISR content ...
	if(IFC->MISR&ERS_END_INT)			
    20b4:	1078      	lrw      	r3, 0x20000060	// 2114 <IFCIntHandler+0x64>
    20b6:	3101      	movi      	r1, 1
    20b8:	9360      	ld.w      	r3, (r3, 0x0)
    20ba:	934b      	ld.w      	r2, (r3, 0x2c)
    20bc:	6884      	and      	r2, r1
    20be:	3a40      	cmpnei      	r2, 0
    20c0:	0c04      	bf      	0x20c8	// 20c8 <IFCIntHandler+0x18>
	{
		IFC->ICR=RGM_END_INT;
	}
	else if(IFC->MISR&PEP_END_INT)		
	{
		IFC->ICR=PEP_END_INT;
    20c2:	b32c      	st.w      	r1, (r3, 0x30)
	}
	else if(IFC->MISR&OVW_ERR_INT)		
	{
		IFC->ICR=OVW_ERR_INT;
	}
}
    20c4:	1463      	ipop
    20c6:	1461      	nir
	else if(IFC->MISR&RGM_END_INT)		
    20c8:	934b      	ld.w      	r2, (r3, 0x2c)
    20ca:	3102      	movi      	r1, 2
    20cc:	6884      	and      	r2, r1
    20ce:	3a40      	cmpnei      	r2, 0
    20d0:	0bf9      	bt      	0x20c2	// 20c2 <IFCIntHandler+0x12>
	else if(IFC->MISR&PEP_END_INT)		
    20d2:	934b      	ld.w      	r2, (r3, 0x2c)
    20d4:	3104      	movi      	r1, 4
    20d6:	6884      	and      	r2, r1
    20d8:	3a40      	cmpnei      	r2, 0
    20da:	0bf4      	bt      	0x20c2	// 20c2 <IFCIntHandler+0x12>
	else if(IFC->MISR&PROT_ERR_INT)		
    20dc:	3280      	movi      	r2, 128
    20de:	932b      	ld.w      	r1, (r3, 0x2c)
    20e0:	4245      	lsli      	r2, r2, 5
    20e2:	6848      	and      	r1, r2
    20e4:	3940      	cmpnei      	r1, 0
    20e6:	0c03      	bf      	0x20ec	// 20ec <IFCIntHandler+0x3c>
		IFC->ICR=OVW_ERR_INT;
    20e8:	b34c      	st.w      	r2, (r3, 0x30)
}
    20ea:	07ed      	br      	0x20c4	// 20c4 <IFCIntHandler+0x14>
	else if(IFC->MISR&UDEF_ERR_INT)		
    20ec:	3280      	movi      	r2, 128
    20ee:	932b      	ld.w      	r1, (r3, 0x2c)
    20f0:	4246      	lsli      	r2, r2, 6
    20f2:	6848      	and      	r1, r2
    20f4:	3940      	cmpnei      	r1, 0
    20f6:	0bf9      	bt      	0x20e8	// 20e8 <IFCIntHandler+0x38>
	else if(IFC->MISR&ADDR_ERR_INT)		
    20f8:	3280      	movi      	r2, 128
    20fa:	932b      	ld.w      	r1, (r3, 0x2c)
    20fc:	4247      	lsli      	r2, r2, 7
    20fe:	6848      	and      	r1, r2
    2100:	3940      	cmpnei      	r1, 0
    2102:	0bf3      	bt      	0x20e8	// 20e8 <IFCIntHandler+0x38>
	else if(IFC->MISR&OVW_ERR_INT)		
    2104:	3280      	movi      	r2, 128
    2106:	932b      	ld.w      	r1, (r3, 0x2c)
    2108:	4248      	lsli      	r2, r2, 8
    210a:	6848      	and      	r1, r2
    210c:	3940      	cmpnei      	r1, 0
    210e:	0bed      	bt      	0x20e8	// 20e8 <IFCIntHandler+0x38>
    2110:	07da      	br      	0x20c4	// 20c4 <IFCIntHandler+0x14>
    2112:	0000      	bkpt
    2114:	20000060 	.long	0x20000060

Disassembly of section .text.ADCIntHandler:

00002118 <ADCIntHandler>:
//ADC Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void ADCIntHandler(void) 
{
    2118:	1460      	nie
    211a:	1462      	ipush
    // ISR content ...
	if((ADC0->SR&ADC12_EOC)==ADC12_EOC)				//ADC EOC interrupt
    211c:	1078      	lrw      	r3, 0x20000050	// 217c <ADCIntHandler+0x64>
    211e:	3101      	movi      	r1, 1
    2120:	9360      	ld.w      	r3, (r3, 0x0)
    2122:	9348      	ld.w      	r2, (r3, 0x20)
    2124:	6884      	and      	r2, r1
    2126:	3a40      	cmpnei      	r2, 0
    2128:	0c04      	bf      	0x2130	// 2130 <ADCIntHandler+0x18>
	{
		ADC0->CSR = ADC12_CMP1H;
	}
	else if((ADC0->SR&ADC12_CMP1L)==ADC12_CMP1L)	//ADC CMP1L interrupt.
	{
		ADC0->CSR = ADC12_CMP1L;
    212a:	b327      	st.w      	r1, (r3, 0x1c)
	}
	else if((ADC0->SR&ADC12_SEQ_END0)==ADC12_SEQ_END0) //ADC SEQ0 interrupt,SEQ1~SEQ15 replace the parameter with ADC12_SEQ_END1~ADC12_SEQ_END15
	{
		ADC0->CSR = ADC12_SEQ_END0;
	}
}
    212c:	1463      	ipop
    212e:	1461      	nir
	else if((ADC0->SR&ADC12_READY)==ADC12_READY)	//ADC READY interrupt
    2130:	9348      	ld.w      	r2, (r3, 0x20)
    2132:	3102      	movi      	r1, 2
    2134:	6884      	and      	r2, r1
    2136:	3a40      	cmpnei      	r2, 0
    2138:	0bf9      	bt      	0x212a	// 212a <ADCIntHandler+0x12>
	else if((ADC0->SR&ADC12_OVR)==ADC12_OVR)		//ADC OVR interrupt
    213a:	9348      	ld.w      	r2, (r3, 0x20)
    213c:	3104      	movi      	r1, 4
    213e:	6884      	and      	r2, r1
    2140:	3a40      	cmpnei      	r2, 0
    2142:	0bf4      	bt      	0x212a	// 212a <ADCIntHandler+0x12>
	else if((ADC0->SR&ADC12_CMP0H)==ADC12_CMP0H)	//ADC CMP0H interrupt
    2144:	9348      	ld.w      	r2, (r3, 0x20)
    2146:	3110      	movi      	r1, 16
    2148:	6884      	and      	r2, r1
    214a:	3a40      	cmpnei      	r2, 0
    214c:	0bef      	bt      	0x212a	// 212a <ADCIntHandler+0x12>
	else if((ADC0->SR&ADC12_CMP0L)==ADC12_CMP0L)	//ADC CMP0L interrupt.
    214e:	9348      	ld.w      	r2, (r3, 0x20)
    2150:	3120      	movi      	r1, 32
    2152:	6884      	and      	r2, r1
    2154:	3a40      	cmpnei      	r2, 0
    2156:	0bea      	bt      	0x212a	// 212a <ADCIntHandler+0x12>
	else if((ADC0->SR&ADC12_CMP1H)==ADC12_CMP1H)	//ADC CMP1H interrupt.
    2158:	9348      	ld.w      	r2, (r3, 0x20)
    215a:	3140      	movi      	r1, 64
    215c:	6884      	and      	r2, r1
    215e:	3a40      	cmpnei      	r2, 0
    2160:	0be5      	bt      	0x212a	// 212a <ADCIntHandler+0x12>
	else if((ADC0->SR&ADC12_CMP1L)==ADC12_CMP1L)	//ADC CMP1L interrupt.
    2162:	9348      	ld.w      	r2, (r3, 0x20)
    2164:	3180      	movi      	r1, 128
    2166:	6884      	and      	r2, r1
    2168:	3a40      	cmpnei      	r2, 0
    216a:	0be0      	bt      	0x212a	// 212a <ADCIntHandler+0x12>
	else if((ADC0->SR&ADC12_SEQ_END0)==ADC12_SEQ_END0) //ADC SEQ0 interrupt,SEQ1~SEQ15 replace the parameter with ADC12_SEQ_END1~ADC12_SEQ_END15
    216c:	3280      	movi      	r2, 128
    216e:	9328      	ld.w      	r1, (r3, 0x20)
    2170:	4249      	lsli      	r2, r2, 9
    2172:	6848      	and      	r1, r2
    2174:	3940      	cmpnei      	r1, 0
    2176:	0fdb      	bf      	0x212c	// 212c <ADCIntHandler+0x14>
		ADC0->CSR = ADC12_SEQ_END0;
    2178:	b347      	st.w      	r2, (r3, 0x1c)
}
    217a:	07d9      	br      	0x212c	// 212c <ADCIntHandler+0x14>
    217c:	20000050 	.long	0x20000050

Disassembly of section .text.EPT0IntHandler:

00002180 <EPT0IntHandler>:
//EPT0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EPT0IntHandler(void) 
{
    2180:	1460      	nie
    2182:	1462      	ipush
    2184:	14d1      	push      	r4, r15
    // ISR content ...
	if((EPT0->MISR&EPT_TRGEV0_INT)==EPT_TRGEV0_INT)			//TRGEV0 interrupt
    2186:	1386      	lrw      	r4, 0x20000020	// 231c <EPT0IntHandler+0x19c>
    2188:	3280      	movi      	r2, 128
    218a:	9460      	ld.w      	r3, (r4, 0x0)
    218c:	60c8      	addu      	r3, r2
    218e:	9335      	ld.w      	r1, (r3, 0x54)
    2190:	3001      	movi      	r0, 1
    2192:	6840      	and      	r1, r0
    2194:	3940      	cmpnei      	r1, 0
    2196:	0c03      	bf      	0x219c	// 219c <EPT0IntHandler+0x1c>
		EXTI_trigger_CMD(DISABLE,EXI_PIN0,_EXIFT);
		R_CMPB_BUF=EPT0->CMPB;			//Duty counter
	}
	else if((EPT0->MISR&EPT_CAP_LD2)==EPT_CAP_LD2)			//Capture Load to CMPC interrupt
	{
		EPT0->ICR=EPT_CAP_LD2;
    2198:	b317      	st.w      	r0, (r3, 0x5c)
    219a:	0424      	br      	0x21e2	// 21e2 <EPT0IntHandler+0x62>
	else if((EPT0->MISR&EPT_TRGEV1_INT)==EPT_TRGEV1_INT)	//TRGEV1 interrupt
    219c:	9335      	ld.w      	r1, (r3, 0x54)
    219e:	3002      	movi      	r0, 2
    21a0:	6840      	and      	r1, r0
    21a2:	3940      	cmpnei      	r1, 0
    21a4:	0bfa      	bt      	0x2198	// 2198 <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_TRGEV2_INT)==EPT_TRGEV2_INT)	//TRGEV2 interrupt
    21a6:	9335      	ld.w      	r1, (r3, 0x54)
    21a8:	3004      	movi      	r0, 4
    21aa:	6840      	and      	r1, r0
    21ac:	3940      	cmpnei      	r1, 0
    21ae:	0bf5      	bt      	0x2198	// 2198 <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_TRGEV3_INT)==EPT_TRGEV3_INT)	//TRGEV3 interrupt
    21b0:	9335      	ld.w      	r1, (r3, 0x54)
    21b2:	3008      	movi      	r0, 8
    21b4:	6840      	and      	r1, r0
    21b6:	3940      	cmpnei      	r1, 0
    21b8:	0bf0      	bt      	0x2198	// 2198 <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_CAP_LD0)==EPT_CAP_LD0)			//Capture Load to CMPA interrupt
    21ba:	9335      	ld.w      	r1, (r3, 0x54)
    21bc:	3010      	movi      	r0, 16
    21be:	6840      	and      	r1, r0
    21c0:	3940      	cmpnei      	r1, 0
    21c2:	0c1f      	bf      	0x2200	// 2200 <EPT0IntHandler+0x80>
		EPT0->ICR=EPT_CAP_LD0;
    21c4:	b317      	st.w      	r0, (r3, 0x5c)
		EXTI_trigger_CMD(DISABLE,EXI_PIN0,_EXIRT);
    21c6:	3200      	movi      	r2, 0
    21c8:	3101      	movi      	r1, 1
    21ca:	3000      	movi      	r0, 0
    21cc:	e3fffd94 	bsr      	0x1cf4	// 1cf4 <EXTI_trigger_CMD>
		EXTI_trigger_CMD(ENABLE,EXI_PIN0,_EXIFT);
    21d0:	3201      	movi      	r2, 1
    21d2:	3101      	movi      	r1, 1
    21d4:	3001      	movi      	r0, 1
    21d6:	e3fffd8f 	bsr      	0x1cf4	// 1cf4 <EXTI_trigger_CMD>
		R_CMPA_BUF=EPT0->CMPA;			//Low voltage counter
    21da:	9460      	ld.w      	r3, (r4, 0x0)
    21dc:	934b      	ld.w      	r2, (r3, 0x2c)
    21de:	1271      	lrw      	r3, 0x20000148	// 2320 <EPT0IntHandler+0x1a0>
		R_CMPB_BUF=EPT0->CMPB;			//Duty counter
    21e0:	b340      	st.w      	r2, (r3, 0x0)
	else if((EPT0->MISR&EPT_PEND)==EPT_PEND)				//End of cycle interrupt
	{
		EPT0->ICR=EPT_PEND;
	}
	//Emergency interruption
	if((EPT0->EMMISR&EPT_EP0_EMINT)==EPT_EP0_EMINT)			//interrupt flag of EP0 event
    21e2:	9460      	ld.w      	r3, (r4, 0x0)
    21e4:	3280      	movi      	r2, 128
    21e6:	60c8      	addu      	r3, r2
    21e8:	932b      	ld.w      	r1, (r3, 0x2c)
    21ea:	3001      	movi      	r0, 1
    21ec:	6840      	and      	r1, r0
    21ee:	3940      	cmpnei      	r1, 0
    21f0:	0c5e      	bf      	0x22ac	// 22ac <EPT0IntHandler+0x12c>
	{
		EPT0->EMICR=EPT_EP5_EMINT;
	}
	else if((EPT0->EMMISR&EPT_EP6_EMINT)==EPT_EP6_EMINT)	//interrupt flag of EP6 event
	{
		EPT0->EMICR=EPT_EP6_EMINT;
    21f2:	b30d      	st.w      	r0, (r3, 0x34)
	}
	else if((EPT0->EMMISR&EPT_EOM_FAULT_EMINT)==EPT_EOM_FAULT_EMINT)	//interrupt flag of EOM_FAULT event
	{
		EPT0->EMICR=EPT_EOM_FAULT_EMINT;
	}
}
    21f4:	d9ee2001 	ld.w      	r15, (r14, 0x4)
    21f8:	9880      	ld.w      	r4, (r14, 0x0)
    21fa:	1402      	addi      	r14, r14, 8
    21fc:	1463      	ipop
    21fe:	1461      	nir
	else if((EPT0->MISR&EPT_CAP_LD1)==EPT_CAP_LD1)			//Capture Load to CMPB interrupt
    2200:	9335      	ld.w      	r1, (r3, 0x54)
    2202:	3020      	movi      	r0, 32
    2204:	6840      	and      	r1, r0
    2206:	3940      	cmpnei      	r1, 0
    2208:	0c10      	bf      	0x2228	// 2228 <EPT0IntHandler+0xa8>
		EPT0->ICR=EPT_CAP_LD1;
    220a:	b317      	st.w      	r0, (r3, 0x5c)
		EXTI_trigger_CMD(ENABLE,EXI_PIN0,_EXIRT);
    220c:	3200      	movi      	r2, 0
    220e:	3101      	movi      	r1, 1
    2210:	3001      	movi      	r0, 1
    2212:	e3fffd71 	bsr      	0x1cf4	// 1cf4 <EXTI_trigger_CMD>
		EXTI_trigger_CMD(DISABLE,EXI_PIN0,_EXIFT);
    2216:	3201      	movi      	r2, 1
    2218:	3101      	movi      	r1, 1
    221a:	3000      	movi      	r0, 0
    221c:	e3fffd6c 	bsr      	0x1cf4	// 1cf4 <EXTI_trigger_CMD>
		R_CMPB_BUF=EPT0->CMPB;			//Duty counter
    2220:	9460      	ld.w      	r3, (r4, 0x0)
    2222:	934c      	ld.w      	r2, (r3, 0x30)
    2224:	1260      	lrw      	r3, 0x20000140	// 2324 <EPT0IntHandler+0x1a4>
    2226:	07dd      	br      	0x21e0	// 21e0 <EPT0IntHandler+0x60>
	else if((EPT0->MISR&EPT_CAP_LD2)==EPT_CAP_LD2)			//Capture Load to CMPC interrupt
    2228:	9335      	ld.w      	r1, (r3, 0x54)
    222a:	3040      	movi      	r0, 64
    222c:	6840      	and      	r1, r0
    222e:	3940      	cmpnei      	r1, 0
    2230:	0bb4      	bt      	0x2198	// 2198 <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_CAP_LD3)==EPT_CAP_LD3)			//Capture Load to CMPD interrupt
    2232:	9335      	ld.w      	r1, (r3, 0x54)
    2234:	6848      	and      	r1, r2
    2236:	3940      	cmpnei      	r1, 0
    2238:	0c03      	bf      	0x223e	// 223e <EPT0IntHandler+0xbe>
		EPT0->ICR=EPT_PEND;
    223a:	b357      	st.w      	r2, (r3, 0x5c)
    223c:	07d3      	br      	0x21e2	// 21e2 <EPT0IntHandler+0x62>
	else if((EPT0->MISR&EPT_CAU)==EPT_CAU)					//Up-Counting phase CNT = CMPA interrupt
    223e:	3280      	movi      	r2, 128
    2240:	9335      	ld.w      	r1, (r3, 0x54)
    2242:	4241      	lsli      	r2, r2, 1
    2244:	6848      	and      	r1, r2
    2246:	3940      	cmpnei      	r1, 0
    2248:	0bf9      	bt      	0x223a	// 223a <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CAD)==EPT_CAD)					//Down-Counting phase CNT = CMPA interrupt
    224a:	3280      	movi      	r2, 128
    224c:	9335      	ld.w      	r1, (r3, 0x54)
    224e:	4242      	lsli      	r2, r2, 2
    2250:	6848      	and      	r1, r2
    2252:	3940      	cmpnei      	r1, 0
    2254:	0bf3      	bt      	0x223a	// 223a <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CBU)==EPT_CBU)					//Up-Counting phase CNT = CMPB interrupt 
    2256:	3280      	movi      	r2, 128
    2258:	9335      	ld.w      	r1, (r3, 0x54)
    225a:	4243      	lsli      	r2, r2, 3
    225c:	6848      	and      	r1, r2
    225e:	3940      	cmpnei      	r1, 0
    2260:	0bed      	bt      	0x223a	// 223a <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CBD)==EPT_CBD)					//Down-Counting phase CNT = CMPB interrupt
    2262:	3280      	movi      	r2, 128
    2264:	9335      	ld.w      	r1, (r3, 0x54)
    2266:	4244      	lsli      	r2, r2, 4
    2268:	6848      	and      	r1, r2
    226a:	3940      	cmpnei      	r1, 0
    226c:	0be7      	bt      	0x223a	// 223a <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CCU)==EPT_CCU)					//Up-Counting phase CNT = CMPC interrupt 
    226e:	3280      	movi      	r2, 128
    2270:	9335      	ld.w      	r1, (r3, 0x54)
    2272:	4245      	lsli      	r2, r2, 5
    2274:	6848      	and      	r1, r2
    2276:	3940      	cmpnei      	r1, 0
    2278:	0be1      	bt      	0x223a	// 223a <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CCD)==EPT_CCD)					//Down-Counting phase CNT = CMPC interrupt
    227a:	3280      	movi      	r2, 128
    227c:	9335      	ld.w      	r1, (r3, 0x54)
    227e:	4246      	lsli      	r2, r2, 6
    2280:	6848      	and      	r1, r2
    2282:	3940      	cmpnei      	r1, 0
    2284:	0bdb      	bt      	0x223a	// 223a <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CDU)==EPT_CDU)					//Up-Counting phase CNT = CMPD interrupt
    2286:	3280      	movi      	r2, 128
    2288:	9335      	ld.w      	r1, (r3, 0x54)
    228a:	4247      	lsli      	r2, r2, 7
    228c:	6848      	and      	r1, r2
    228e:	3940      	cmpnei      	r1, 0
    2290:	0bd5      	bt      	0x223a	// 223a <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CDD)==EPT_CDD)					//Down-Counting phase CNT = CMPD interrupt
    2292:	3280      	movi      	r2, 128
    2294:	9335      	ld.w      	r1, (r3, 0x54)
    2296:	4248      	lsli      	r2, r2, 8
    2298:	6848      	and      	r1, r2
    229a:	3940      	cmpnei      	r1, 0
    229c:	0bcf      	bt      	0x223a	// 223a <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_PEND)==EPT_PEND)				//End of cycle interrupt
    229e:	3280      	movi      	r2, 128
    22a0:	9335      	ld.w      	r1, (r3, 0x54)
    22a2:	4249      	lsli      	r2, r2, 9
    22a4:	6848      	and      	r1, r2
    22a6:	3940      	cmpnei      	r1, 0
    22a8:	0f9d      	bf      	0x21e2	// 21e2 <EPT0IntHandler+0x62>
    22aa:	07c8      	br      	0x223a	// 223a <EPT0IntHandler+0xba>
	else if((EPT0->EMMISR&EPT_EP1_EMINT)==EPT_EP1_EMINT)	//interrupt flag of EP1 event
    22ac:	932b      	ld.w      	r1, (r3, 0x2c)
    22ae:	3002      	movi      	r0, 2
    22b0:	6840      	and      	r1, r0
    22b2:	3940      	cmpnei      	r1, 0
    22b4:	0b9f      	bt      	0x21f2	// 21f2 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP2_EMINT)==EPT_EP2_EMINT)	//interrupt flag of EP2 event
    22b6:	932b      	ld.w      	r1, (r3, 0x2c)
    22b8:	3004      	movi      	r0, 4
    22ba:	6840      	and      	r1, r0
    22bc:	3940      	cmpnei      	r1, 0
    22be:	0b9a      	bt      	0x21f2	// 21f2 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP3_EMINT)==EPT_EP3_EMINT)	//interrupt flag of EP3 event
    22c0:	932b      	ld.w      	r1, (r3, 0x2c)
    22c2:	3008      	movi      	r0, 8
    22c4:	6840      	and      	r1, r0
    22c6:	3940      	cmpnei      	r1, 0
    22c8:	0b95      	bt      	0x21f2	// 21f2 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP4_EMINT)==EPT_EP4_EMINT)	//interrupt flag of EP4 event
    22ca:	932b      	ld.w      	r1, (r3, 0x2c)
    22cc:	3010      	movi      	r0, 16
    22ce:	6840      	and      	r1, r0
    22d0:	3940      	cmpnei      	r1, 0
    22d2:	0b90      	bt      	0x21f2	// 21f2 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP5_EMINT)==EPT_EP5_EMINT)	//interrupt flag of EP5 event
    22d4:	932b      	ld.w      	r1, (r3, 0x2c)
    22d6:	3020      	movi      	r0, 32
    22d8:	6840      	and      	r1, r0
    22da:	3940      	cmpnei      	r1, 0
    22dc:	0b8b      	bt      	0x21f2	// 21f2 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP6_EMINT)==EPT_EP6_EMINT)	//interrupt flag of EP6 event
    22de:	932b      	ld.w      	r1, (r3, 0x2c)
    22e0:	3040      	movi      	r0, 64
    22e2:	6840      	and      	r1, r0
    22e4:	3940      	cmpnei      	r1, 0
    22e6:	0b86      	bt      	0x21f2	// 21f2 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP7_EMINT)==EPT_EP7_EMINT)	//interrupt flag of EP7 event
    22e8:	932b      	ld.w      	r1, (r3, 0x2c)
    22ea:	6848      	and      	r1, r2
    22ec:	3940      	cmpnei      	r1, 0
    22ee:	0c03      	bf      	0x22f4	// 22f4 <EPT0IntHandler+0x174>
		EPT0->EMICR=EPT_EOM_FAULT_EMINT;
    22f0:	b34d      	st.w      	r2, (r3, 0x34)
}
    22f2:	0781      	br      	0x21f4	// 21f4 <EPT0IntHandler+0x74>
	else if((EPT0->EMMISR&EPT_CPU_FAULT_EMINT)==EPT_CPU_FAULT_EMINT)	//interrupt flag of CPU_FAULT event
    22f4:	3280      	movi      	r2, 128
    22f6:	932b      	ld.w      	r1, (r3, 0x2c)
    22f8:	4241      	lsli      	r2, r2, 1
    22fa:	6848      	and      	r1, r2
    22fc:	3940      	cmpnei      	r1, 0
    22fe:	0bf9      	bt      	0x22f0	// 22f0 <EPT0IntHandler+0x170>
	else if((EPT0->EMMISR&EPT_MEM_FAULT_EMINT)==EPT_MEM_FAULT_EMINT)	//interrupt flag of MEM_FAULT event
    2300:	3280      	movi      	r2, 128
    2302:	932b      	ld.w      	r1, (r3, 0x2c)
    2304:	4242      	lsli      	r2, r2, 2
    2306:	6848      	and      	r1, r2
    2308:	3940      	cmpnei      	r1, 0
    230a:	0bf3      	bt      	0x22f0	// 22f0 <EPT0IntHandler+0x170>
	else if((EPT0->EMMISR&EPT_EOM_FAULT_EMINT)==EPT_EOM_FAULT_EMINT)	//interrupt flag of EOM_FAULT event
    230c:	3280      	movi      	r2, 128
    230e:	932b      	ld.w      	r1, (r3, 0x2c)
    2310:	4243      	lsli      	r2, r2, 3
    2312:	6848      	and      	r1, r2
    2314:	3940      	cmpnei      	r1, 0
    2316:	0bed      	bt      	0x22f0	// 22f0 <EPT0IntHandler+0x170>
    2318:	076e      	br      	0x21f4	// 21f4 <EPT0IntHandler+0x74>
    231a:	0000      	bkpt
    231c:	20000020 	.long	0x20000020
    2320:	20000148 	.long	0x20000148
    2324:	20000140 	.long	0x20000140

Disassembly of section .text.WWDTHandler:

00002328 <WWDTHandler>:
//WWDT Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void WWDTHandler(void)
{
    2328:	1460      	nie
    232a:	1462      	ipush
    232c:	14d2      	push      	r4-r5, r15
	WWDT->ICR=0X01;
    232e:	10ab      	lrw      	r5, 0x20000010	// 2358 <WWDTHandler+0x30>
    2330:	3401      	movi      	r4, 1
    2332:	9560      	ld.w      	r3, (r5, 0x0)
    2334:	b385      	st.w      	r4, (r3, 0x14)
	WWDT_CNT_Load(0xFF);
    2336:	30ff      	movi      	r0, 255
    2338:	e3fffd10 	bsr      	0x1d58	// 1d58 <WWDT_CNT_Load>
	if((WWDT->MISR&WWDT_EVI)==WWDT_EVI)					//WWDT EVI interrupt
    233c:	9540      	ld.w      	r2, (r5, 0x0)
    233e:	9263      	ld.w      	r3, (r2, 0xc)
    2340:	68d0      	and      	r3, r4
    2342:	3b40      	cmpnei      	r3, 0
    2344:	0c02      	bf      	0x2348	// 2348 <WWDTHandler+0x20>
	{
		WWDT->ICR = WWDT_EVI;
    2346:	b285      	st.w      	r4, (r2, 0x14)
	} 
}
    2348:	d9ee2002 	ld.w      	r15, (r14, 0x8)
    234c:	98a1      	ld.w      	r5, (r14, 0x4)
    234e:	9880      	ld.w      	r4, (r14, 0x0)
    2350:	1403      	addi      	r14, r14, 12
    2352:	1463      	ipop
    2354:	1461      	nir
    2356:	0000      	bkpt
    2358:	20000010 	.long	0x20000010

Disassembly of section .text.GPT0IntHandler:

0000235c <GPT0IntHandler>:
//GPT0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void GPT0IntHandler(void) 
{
    235c:	1460      	nie
    235e:	1462      	ipush
    // ISR content ...
	if((GPT0->MISR&GPT_INT_TRGEV0)==GPT_INT_TRGEV0)			//TRGEV0 interrupt
    2360:	107e      	lrw      	r3, 0x20000024	// 23d8 <GPT0IntHandler+0x7c>
    2362:	3101      	movi      	r1, 1
    2364:	9360      	ld.w      	r3, (r3, 0x0)
    2366:	237f      	addi      	r3, 128
    2368:	9355      	ld.w      	r2, (r3, 0x54)
    236a:	6884      	and      	r2, r1
    236c:	3a40      	cmpnei      	r2, 0
    236e:	0c04      	bf      	0x2376	// 2376 <GPT0IntHandler+0x1a>
	{
		GPT0->ICR = GPT_INT_CAPLD0;
	}
	else if((GPT0->MISR&GPT_INT_CAPLD1)==GPT_INT_CAPLD1)		//Capture Load to CMPB interrupt
	{
		GPT0->ICR = GPT_INT_CAPLD1;
    2370:	b337      	st.w      	r1, (r3, 0x5c)
	}
	else if((GPT0->MISR&GPT_INT_PEND)==GPT_INT_PEND)		//End of cycle interrupt 
	{
		GPT0->ICR = GPT_INT_PEND;
	}
}
    2372:	1463      	ipop
    2374:	1461      	nir
	else if((GPT0->MISR&GPT_INT_TRGEV1)==GPT_INT_TRGEV1)	//TRGEV1 interrupt
    2376:	9355      	ld.w      	r2, (r3, 0x54)
    2378:	3102      	movi      	r1, 2
    237a:	6884      	and      	r2, r1
    237c:	3a40      	cmpnei      	r2, 0
    237e:	0bf9      	bt      	0x2370	// 2370 <GPT0IntHandler+0x14>
	else if((GPT0->MISR&GPT_INT_CAPLD0)==GPT_INT_CAPLD0)		//Capture Load to CMPA interrupt
    2380:	9355      	ld.w      	r2, (r3, 0x54)
    2382:	3110      	movi      	r1, 16
    2384:	6884      	and      	r2, r1
    2386:	3a40      	cmpnei      	r2, 0
    2388:	0bf4      	bt      	0x2370	// 2370 <GPT0IntHandler+0x14>
	else if((GPT0->MISR&GPT_INT_CAPLD1)==GPT_INT_CAPLD1)		//Capture Load to CMPB interrupt
    238a:	9355      	ld.w      	r2, (r3, 0x54)
    238c:	3120      	movi      	r1, 32
    238e:	6884      	and      	r2, r1
    2390:	3a40      	cmpnei      	r2, 0
    2392:	0bef      	bt      	0x2370	// 2370 <GPT0IntHandler+0x14>
	else if((GPT0->MISR&GPT_INT_CAU)==GPT_INT_CAU)			//Up-Counting phase CNT = CMPA Interrupt
    2394:	3280      	movi      	r2, 128
    2396:	9335      	ld.w      	r1, (r3, 0x54)
    2398:	4241      	lsli      	r2, r2, 1
    239a:	6848      	and      	r1, r2
    239c:	3940      	cmpnei      	r1, 0
    239e:	0c03      	bf      	0x23a4	// 23a4 <GPT0IntHandler+0x48>
		GPT0->ICR = GPT_INT_PEND;
    23a0:	b357      	st.w      	r2, (r3, 0x5c)
}
    23a2:	07e8      	br      	0x2372	// 2372 <GPT0IntHandler+0x16>
	else if((GPT0->MISR&GPT_INT_CAD)==GPT_INT_CAD)			//Down-Counting phase CNT = CMPA Interrupt
    23a4:	3280      	movi      	r2, 128
    23a6:	9335      	ld.w      	r1, (r3, 0x54)
    23a8:	4242      	lsli      	r2, r2, 2
    23aa:	6848      	and      	r1, r2
    23ac:	3940      	cmpnei      	r1, 0
    23ae:	0bf9      	bt      	0x23a0	// 23a0 <GPT0IntHandler+0x44>
	else if((GPT0->MISR&GPT_INT_CBU)==GPT_INT_CBU)			//Up-Counting phase CNT = CMPB Interrupt
    23b0:	3280      	movi      	r2, 128
    23b2:	9335      	ld.w      	r1, (r3, 0x54)
    23b4:	4243      	lsli      	r2, r2, 3
    23b6:	6848      	and      	r1, r2
    23b8:	3940      	cmpnei      	r1, 0
    23ba:	0bf3      	bt      	0x23a0	// 23a0 <GPT0IntHandler+0x44>
	else if((GPT0->MISR&GPT_INT_CBD)==GPT_INT_CBD)			//Down-Counting phase CNT = CMPB Interrupt
    23bc:	3280      	movi      	r2, 128
    23be:	9335      	ld.w      	r1, (r3, 0x54)
    23c0:	4244      	lsli      	r2, r2, 4
    23c2:	6848      	and      	r1, r2
    23c4:	3940      	cmpnei      	r1, 0
    23c6:	0bed      	bt      	0x23a0	// 23a0 <GPT0IntHandler+0x44>
	else if((GPT0->MISR&GPT_INT_PEND)==GPT_INT_PEND)		//End of cycle interrupt 
    23c8:	3280      	movi      	r2, 128
    23ca:	9335      	ld.w      	r1, (r3, 0x54)
    23cc:	4249      	lsli      	r2, r2, 9
    23ce:	6848      	and      	r1, r2
    23d0:	3940      	cmpnei      	r1, 0
    23d2:	0be7      	bt      	0x23a0	// 23a0 <GPT0IntHandler+0x44>
    23d4:	07cf      	br      	0x2372	// 2372 <GPT0IntHandler+0x16>
    23d6:	0000      	bkpt
    23d8:	20000024 	.long	0x20000024

Disassembly of section .text.RTCIntHandler:

000023dc <RTCIntHandler>:
//RTC Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void RTCIntHandler(void) 
{
    23dc:	1460      	nie
    23de:	1462      	ipush
    // ISR content ...
	if((RTC->MISR&ALRA_INT)==ALRA_INT)			//Interrupt of alarm A
    23e0:	1079      	lrw      	r3, 0x20000018	// 2444 <RTCIntHandler+0x68>
    23e2:	3101      	movi      	r1, 1
    23e4:	9360      	ld.w      	r3, (r3, 0x0)
    23e6:	934a      	ld.w      	r2, (r3, 0x28)
    23e8:	6884      	and      	r2, r1
    23ea:	3a40      	cmpnei      	r2, 0
    23ec:	0c14      	bf      	0x2414	// 2414 <RTCIntHandler+0x38>
	{
		RTC->ICR=ALRA_INT;
		RTC->KEY=0XCA53;
    23ee:	1057      	lrw      	r2, 0xca53	// 2448 <RTCIntHandler+0x6c>
		RTC->ICR=ALRA_INT;
    23f0:	b32b      	st.w      	r1, (r3, 0x2c)
		RTC->KEY=0XCA53;
    23f2:	b34c      	st.w      	r2, (r3, 0x30)
		RTC->CR=RTC->CR|0x01;
    23f4:	9342      	ld.w      	r2, (r3, 0x8)
    23f6:	6c84      	or      	r2, r1
    23f8:	b342      	st.w      	r2, (r3, 0x8)
		RTC->TIMR=(0x10<<16)|(0x00<<8)|(0x00);			//Hour bit6->0:am 1:pm	
    23fa:	3280      	movi      	r2, 128
    23fc:	424d      	lsli      	r2, r2, 13
    23fe:	b340      	st.w      	r2, (r3, 0x0)
		while(RTC->CR&0x02);							//busy TIMR DATR ALRAR ALRBR Update done
    2400:	3102      	movi      	r1, 2
    2402:	9342      	ld.w      	r2, (r3, 0x8)
    2404:	6884      	and      	r2, r1
    2406:	3a40      	cmpnei      	r2, 0
    2408:	0bfd      	bt      	0x2402	// 2402 <RTCIntHandler+0x26>
		RTC->CR &= ~0x1;
    240a:	9342      	ld.w      	r2, (r3, 0x8)
    240c:	3a80      	bclri      	r2, 0
    240e:	b342      	st.w      	r2, (r3, 0x8)
	}
	else if((RTC->MISR&RTC_TRGEV1_INT)==RTC_TRGEV1_INT)		//Interrupt of trigger event 1
	{
		RTC->ICR=RTC_TRGEV1_INT;
	}
}
    2410:	1463      	ipop
    2412:	1461      	nir
	else if((RTC->MISR&ALRB_INT)==ALRB_INT)			//Interrupt of alarm B				
    2414:	934a      	ld.w      	r2, (r3, 0x28)
    2416:	3102      	movi      	r1, 2
    2418:	6884      	and      	r2, r1
    241a:	3a40      	cmpnei      	r2, 0
    241c:	0c03      	bf      	0x2422	// 2422 <RTCIntHandler+0x46>
		RTC->ICR=RTC_TRGEV1_INT;
    241e:	b32b      	st.w      	r1, (r3, 0x2c)
}
    2420:	07f8      	br      	0x2410	// 2410 <RTCIntHandler+0x34>
	else if((RTC->MISR&CPRD_INT)==CPRD_INT)			//Interrupt of alarm CPRD
    2422:	934a      	ld.w      	r2, (r3, 0x28)
    2424:	3104      	movi      	r1, 4
    2426:	6884      	and      	r2, r1
    2428:	3a40      	cmpnei      	r2, 0
    242a:	0bfa      	bt      	0x241e	// 241e <RTCIntHandler+0x42>
	else if((RTC->MISR&RTC_TRGEV0_INT)==RTC_TRGEV0_INT)		//Interrupt of trigger event 0
    242c:	934a      	ld.w      	r2, (r3, 0x28)
    242e:	3108      	movi      	r1, 8
    2430:	6884      	and      	r2, r1
    2432:	3a40      	cmpnei      	r2, 0
    2434:	0bf5      	bt      	0x241e	// 241e <RTCIntHandler+0x42>
	else if((RTC->MISR&RTC_TRGEV1_INT)==RTC_TRGEV1_INT)		//Interrupt of trigger event 1
    2436:	934a      	ld.w      	r2, (r3, 0x28)
    2438:	3110      	movi      	r1, 16
    243a:	6884      	and      	r2, r1
    243c:	3a40      	cmpnei      	r2, 0
    243e:	0bf0      	bt      	0x241e	// 241e <RTCIntHandler+0x42>
    2440:	07e8      	br      	0x2410	// 2410 <RTCIntHandler+0x34>
    2442:	0000      	bkpt
    2444:	20000018 	.long	0x20000018
    2448:	0000ca53 	.long	0x0000ca53

Disassembly of section .text.UART0IntHandler:

0000244c <UART0IntHandler>:
//UART0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART0IntHandler(void) 
{
    244c:	1460      	nie
    244e:	1462      	ipush
    // ISR content ...
	if ((UART0->ISR&UART_RX_INT_S)==UART_RX_INT_S)				//RX interrupt
    2450:	106d      	lrw      	r3, 0x20000040	// 2484 <UART0IntHandler+0x38>
    2452:	3102      	movi      	r1, 2
    2454:	9360      	ld.w      	r3, (r3, 0x0)
    2456:	9343      	ld.w      	r2, (r3, 0xc)
    2458:	6884      	and      	r2, r1
    245a:	3a40      	cmpnei      	r2, 0
    245c:	0c03      	bf      	0x2462	// 2462 <UART0IntHandler+0x16>
	{
		UART0->ISR=UART_RX_IOV_S;
	}
	else if ((UART0->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
	{
		UART0->ISR=UART_TX_IOV_S;
    245e:	b323      	st.w      	r1, (r3, 0xc)
	}
}
    2460:	0410      	br      	0x2480	// 2480 <UART0IntHandler+0x34>
	else if( (UART0->ISR&UART_TX_INT_S)==UART_TX_INT_S ) 		//TX interrupt
    2462:	9343      	ld.w      	r2, (r3, 0xc)
    2464:	3101      	movi      	r1, 1
    2466:	6884      	and      	r2, r1
    2468:	3a40      	cmpnei      	r2, 0
    246a:	0bfa      	bt      	0x245e	// 245e <UART0IntHandler+0x12>
	else if ((UART0->ISR&UART_RX_IOV_S)==UART_RX_IOV_S)			//RX overrun interrupt
    246c:	9343      	ld.w      	r2, (r3, 0xc)
    246e:	3108      	movi      	r1, 8
    2470:	6884      	and      	r2, r1
    2472:	3a40      	cmpnei      	r2, 0
    2474:	0bf5      	bt      	0x245e	// 245e <UART0IntHandler+0x12>
	else if ((UART0->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
    2476:	9343      	ld.w      	r2, (r3, 0xc)
    2478:	3104      	movi      	r1, 4
    247a:	6884      	and      	r2, r1
    247c:	3a40      	cmpnei      	r2, 0
    247e:	0bf0      	bt      	0x245e	// 245e <UART0IntHandler+0x12>
}
    2480:	1463      	ipop
    2482:	1461      	nir
    2484:	20000040 	.long	0x20000040

Disassembly of section .text.UART1IntHandler:

00002488 <UART1IntHandler>:
//UART1 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART1IntHandler(void) 
{
    2488:	1460      	nie
    248a:	1462      	ipush
    // ISR content ...
	if ((UART1->ISR&UART_RX_INT_S)==UART_RX_INT_S)				//RX interrupt
    248c:	106d      	lrw      	r3, 0x2000003c	// 24c0 <UART1IntHandler+0x38>
    248e:	3102      	movi      	r1, 2
    2490:	9360      	ld.w      	r3, (r3, 0x0)
    2492:	9343      	ld.w      	r2, (r3, 0xc)
    2494:	6884      	and      	r2, r1
    2496:	3a40      	cmpnei      	r2, 0
    2498:	0c03      	bf      	0x249e	// 249e <UART1IntHandler+0x16>
	{
		UART1->ISR=UART_RX_IOV_S;
	}
	else if ((UART1->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
	{
		UART1->ISR=UART_TX_IOV_S;
    249a:	b323      	st.w      	r1, (r3, 0xc)
	}
}
    249c:	0410      	br      	0x24bc	// 24bc <UART1IntHandler+0x34>
	else if( (UART1->ISR&UART_TX_INT_S)==UART_TX_INT_S ) 		//TX interrupt
    249e:	9343      	ld.w      	r2, (r3, 0xc)
    24a0:	3101      	movi      	r1, 1
    24a2:	6884      	and      	r2, r1
    24a4:	3a40      	cmpnei      	r2, 0
    24a6:	0bfa      	bt      	0x249a	// 249a <UART1IntHandler+0x12>
	else if ((UART1->ISR&UART_RX_IOV_S)==UART_RX_IOV_S)			//RX overrun interrupt
    24a8:	9343      	ld.w      	r2, (r3, 0xc)
    24aa:	3108      	movi      	r1, 8
    24ac:	6884      	and      	r2, r1
    24ae:	3a40      	cmpnei      	r2, 0
    24b0:	0bf5      	bt      	0x249a	// 249a <UART1IntHandler+0x12>
	else if ((UART1->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
    24b2:	9343      	ld.w      	r2, (r3, 0xc)
    24b4:	3104      	movi      	r1, 4
    24b6:	6884      	and      	r2, r1
    24b8:	3a40      	cmpnei      	r2, 0
    24ba:	0bf0      	bt      	0x249a	// 249a <UART1IntHandler+0x12>
}
    24bc:	1463      	ipop
    24be:	1461      	nir
    24c0:	2000003c 	.long	0x2000003c

Disassembly of section .text.UART2IntHandler:

000024c4 <UART2IntHandler>:
//UART2 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART2IntHandler(void) 
{
    24c4:	1460      	nie
    24c6:	1462      	ipush
    // ISR content ...
	if ((UART2->ISR&UART_RX_INT_S)==UART_RX_INT_S)				//RX interrupt
    24c8:	106d      	lrw      	r3, 0x20000038	// 24fc <UART2IntHandler+0x38>
    24ca:	3102      	movi      	r1, 2
    24cc:	9360      	ld.w      	r3, (r3, 0x0)
    24ce:	9343      	ld.w      	r2, (r3, 0xc)
    24d0:	6884      	and      	r2, r1
    24d2:	3a40      	cmpnei      	r2, 0
    24d4:	0c03      	bf      	0x24da	// 24da <UART2IntHandler+0x16>
	{
		UART2->ISR=UART_RX_IOV_S;
	}
	else if ((UART2->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
	{
		UART2->ISR=UART_TX_IOV_S;
    24d6:	b323      	st.w      	r1, (r3, 0xc)
	}
}
    24d8:	0410      	br      	0x24f8	// 24f8 <UART2IntHandler+0x34>
	else if( (UART2->ISR&UART_TX_INT_S)==UART_TX_INT_S ) 		//TX interrupt
    24da:	9343      	ld.w      	r2, (r3, 0xc)
    24dc:	3101      	movi      	r1, 1
    24de:	6884      	and      	r2, r1
    24e0:	3a40      	cmpnei      	r2, 0
    24e2:	0bfa      	bt      	0x24d6	// 24d6 <UART2IntHandler+0x12>
	else if ((UART2->ISR&UART_RX_IOV_S)==UART_RX_IOV_S)			//RX overrun interrupt
    24e4:	9343      	ld.w      	r2, (r3, 0xc)
    24e6:	3108      	movi      	r1, 8
    24e8:	6884      	and      	r2, r1
    24ea:	3a40      	cmpnei      	r2, 0
    24ec:	0bf5      	bt      	0x24d6	// 24d6 <UART2IntHandler+0x12>
	else if ((UART2->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
    24ee:	9343      	ld.w      	r2, (r3, 0xc)
    24f0:	3104      	movi      	r1, 4
    24f2:	6884      	and      	r2, r1
    24f4:	3a40      	cmpnei      	r2, 0
    24f6:	0bf0      	bt      	0x24d6	// 24d6 <UART2IntHandler+0x12>
}
    24f8:	1463      	ipop
    24fa:	1461      	nir
    24fc:	20000038 	.long	0x20000038

Disassembly of section .text.SPI0IntHandler:

00002500 <SPI0IntHandler>:
//SPI Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SPI0IntHandler(void) 
{
    2500:	1460      	nie
    2502:	1462      	ipush
    // ISR content ...
	if((SPI0->MISR&SPI_PORIM)==SPI_PORIM)					//Receive Overrun Interrupt
    2504:	1178      	lrw      	r3, 0x20000034	// 25e4 <SPI0IntHandler+0xe4>
    2506:	3101      	movi      	r1, 1
    2508:	9360      	ld.w      	r3, (r3, 0x0)
    250a:	9347      	ld.w      	r2, (r3, 0x1c)
    250c:	6884      	and      	r2, r1
    250e:	3a40      	cmpnei      	r2, 0
    2510:	0c03      	bf      	0x2516	// 2516 <SPI0IntHandler+0x16>
			}
		}
	}
	else if((SPI0->MISR&SPI_TXIM)==SPI_TXIM)				//Transmit FIFO Interrupt
	{
		SPI0->ICR = SPI_TXIM;
    2512:	b328      	st.w      	r1, (r3, 0x20)
	}

}
    2514:	0407      	br      	0x2522	// 2522 <SPI0IntHandler+0x22>
	else if((SPI0->MISR&SPI_RTIM)==SPI_RTIM)				//Receive Timeout Interrupt
    2516:	9347      	ld.w      	r2, (r3, 0x1c)
    2518:	3002      	movi      	r0, 2
    251a:	6880      	and      	r2, r0
    251c:	3a40      	cmpnei      	r2, 0
    251e:	0c04      	bf      	0x2526	// 2526 <SPI0IntHandler+0x26>
		SPI0->ICR = SPI_RTIM;
    2520:	b308      	st.w      	r0, (r3, 0x20)
}
    2522:	1463      	ipop
    2524:	1461      	nir
	else if((SPI0->MISR&SPI_RXIM)==SPI_RXIM)				//Receive FIFO Interrupt,FIFO can be set 1/8,1/4,1/2 FIFO Interrupt
    2526:	9347      	ld.w      	r2, (r3, 0x1c)
    2528:	3004      	movi      	r0, 4
    252a:	6880      	and      	r2, r0
    252c:	3a40      	cmpnei      	r2, 0
    252e:	0c55      	bf      	0x25d8	// 25d8 <SPI0IntHandler+0xd8>
		SPI0->ICR = SPI_RXIM;
    2530:	b308      	st.w      	r0, (r3, 0x20)
		if(SPI0->DR==0xaa)
    2532:	9302      	ld.w      	r0, (r3, 0x8)
    2534:	32aa      	movi      	r2, 170
    2536:	6482      	cmpne      	r0, r2
    2538:	083e      	bt      	0x25b4	// 25b4 <SPI0IntHandler+0xb4>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    253a:	3102      	movi      	r1, 2
    253c:	9343      	ld.w      	r2, (r3, 0xc)
    253e:	6884      	and      	r2, r1
    2540:	3a40      	cmpnei      	r2, 0
    2542:	0ffd      	bf      	0x253c	// 253c <SPI0IntHandler+0x3c>
			SPI0->DR = 0x11;
    2544:	3211      	movi      	r2, 17
    2546:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    2548:	3110      	movi      	r1, 16
    254a:	9343      	ld.w      	r2, (r3, 0xc)
    254c:	6884      	and      	r2, r1
    254e:	3a40      	cmpnei      	r2, 0
    2550:	0bfd      	bt      	0x254a	// 254a <SPI0IntHandler+0x4a>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    2552:	3102      	movi      	r1, 2
    2554:	9343      	ld.w      	r2, (r3, 0xc)
    2556:	6884      	and      	r2, r1
    2558:	3a40      	cmpnei      	r2, 0
    255a:	0ffd      	bf      	0x2554	// 2554 <SPI0IntHandler+0x54>
			SPI0->DR = 0x12;
    255c:	3212      	movi      	r2, 18
    255e:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    2560:	3110      	movi      	r1, 16
    2562:	9343      	ld.w      	r2, (r3, 0xc)
    2564:	6884      	and      	r2, r1
    2566:	3a40      	cmpnei      	r2, 0
    2568:	0bfd      	bt      	0x2562	// 2562 <SPI0IntHandler+0x62>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    256a:	3102      	movi      	r1, 2
    256c:	9343      	ld.w      	r2, (r3, 0xc)
    256e:	6884      	and      	r2, r1
    2570:	3a40      	cmpnei      	r2, 0
    2572:	0ffd      	bf      	0x256c	// 256c <SPI0IntHandler+0x6c>
			SPI0->DR = 0x13;
    2574:	3213      	movi      	r2, 19
    2576:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    2578:	3110      	movi      	r1, 16
    257a:	9343      	ld.w      	r2, (r3, 0xc)
    257c:	6884      	and      	r2, r1
    257e:	3a40      	cmpnei      	r2, 0
    2580:	0bfd      	bt      	0x257a	// 257a <SPI0IntHandler+0x7a>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    2582:	3102      	movi      	r1, 2
    2584:	9343      	ld.w      	r2, (r3, 0xc)
    2586:	6884      	and      	r2, r1
    2588:	3a40      	cmpnei      	r2, 0
    258a:	0ffd      	bf      	0x2584	// 2584 <SPI0IntHandler+0x84>
			SPI0->DR = 0x14;
    258c:	3214      	movi      	r2, 20
    258e:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    2590:	3110      	movi      	r1, 16
    2592:	9343      	ld.w      	r2, (r3, 0xc)
    2594:	6884      	and      	r2, r1
    2596:	3a40      	cmpnei      	r2, 0
    2598:	0bfd      	bt      	0x2592	// 2592 <SPI0IntHandler+0x92>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    259a:	3102      	movi      	r1, 2
    259c:	9343      	ld.w      	r2, (r3, 0xc)
    259e:	6884      	and      	r2, r1
    25a0:	3a40      	cmpnei      	r2, 0
    25a2:	0ffd      	bf      	0x259c	// 259c <SPI0IntHandler+0x9c>
			SPI0->DR = 0x15;
    25a4:	3215      	movi      	r2, 21
    25a6:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    25a8:	3110      	movi      	r1, 16
    25aa:	9343      	ld.w      	r2, (r3, 0xc)
    25ac:	6884      	and      	r2, r1
    25ae:	3a40      	cmpnei      	r2, 0
    25b0:	0bfd      	bt      	0x25aa	// 25aa <SPI0IntHandler+0xaa>
    25b2:	07b8      	br      	0x2522	// 2522 <SPI0IntHandler+0x22>
			if(((SPI0->SR) & SSP_TFE)!=SSP_TFE)
    25b4:	9343      	ld.w      	r2, (r3, 0xc)
    25b6:	6884      	and      	r2, r1
    25b8:	3a40      	cmpnei      	r2, 0
    25ba:	0bb4      	bt      	0x2522	// 2522 <SPI0IntHandler+0x22>
				SPI0->DR=0x0;								//FIFO=0
    25bc:	b342      	st.w      	r2, (r3, 0x8)
				while(((SPI0->SR) & SSP_BSY) == SSP_BSY);		//Send or receive over？
    25be:	3110      	movi      	r1, 16
				SPI0->DR=0x0;								//FIFO=0
    25c0:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    25c2:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    25c4:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    25c6:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    25c8:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    25ca:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    25cc:	b342      	st.w      	r2, (r3, 0x8)
				while(((SPI0->SR) & SSP_BSY) == SSP_BSY);		//Send or receive over？
    25ce:	9343      	ld.w      	r2, (r3, 0xc)
    25d0:	6884      	and      	r2, r1
    25d2:	3a40      	cmpnei      	r2, 0
    25d4:	0bfd      	bt      	0x25ce	// 25ce <SPI0IntHandler+0xce>
    25d6:	07a6      	br      	0x2522	// 2522 <SPI0IntHandler+0x22>
	else if((SPI0->MISR&SPI_TXIM)==SPI_TXIM)				//Transmit FIFO Interrupt
    25d8:	9347      	ld.w      	r2, (r3, 0x1c)
    25da:	3108      	movi      	r1, 8
    25dc:	6884      	and      	r2, r1
    25de:	3a40      	cmpnei      	r2, 0
    25e0:	0b99      	bt      	0x2512	// 2512 <SPI0IntHandler+0x12>
    25e2:	07a0      	br      	0x2522	// 2522 <SPI0IntHandler+0x22>
    25e4:	20000034 	.long	0x20000034

Disassembly of section .text.SIO0IntHandler:

000025e8 <SIO0IntHandler>:
//SIO Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SIO0IntHandler(void) 
{
    25e8:	1460      	nie
    25ea:	1462      	ipush
		delay_nms(10);
		SIO0->TXBUF=(0x03<<30)|(0x02<<28)|(0x03<<26)|(0x02<<24)|(0x03<<22)|(0x02<<20)|(0x03<<18)|(0x02<<16)|
				(0x01<<14)|(0x00<<12)|(0x01<<10)|(0x00<<8)|(0x01<<6)|(0x00<<4)|(0x01<<2)|(0x0<<0);		//0:D0,1:D1,2:DL,3:DH;	
	}*/
	
	if(SIO0->MISR&0X02)					//RXDNE
    25ec:	107d      	lrw      	r3, 0x2000002c	// 2660 <SIO0IntHandler+0x78>
    25ee:	3102      	movi      	r1, 2
    25f0:	9360      	ld.w      	r3, (r3, 0x0)
    25f2:	9349      	ld.w      	r2, (r3, 0x24)
    25f4:	6884      	and      	r2, r1
    25f6:	3a40      	cmpnei      	r2, 0
    25f8:	0c13      	bf      	0x261e	// 261e <SIO0IntHandler+0x36>
	{
		SIO0->ICR=0X02;
    25fa:	b32b      	st.w      	r1, (r3, 0x2c)
		if(R_SIORX_count>=1)
    25fc:	101a      	lrw      	r0, 0x2000014c	// 2664 <SIO0IntHandler+0x7c>
    25fe:	9040      	ld.w      	r2, (r0, 0x0)
    2600:	3a20      	cmplti      	r2, 1
    2602:	080c      	bt      	0x261a	// 261a <SIO0IntHandler+0x32>
		{
			R_SIORX_buf[R_SIORX_count]=SIO0->RXBUF&0xff000000;			//8bit
    2604:	9040      	ld.w      	r2, (r0, 0x0)
    2606:	9327      	ld.w      	r1, (r3, 0x1c)
    2608:	4938      	lsri      	r1, r1, 24
    260a:	4262      	lsli      	r3, r2, 2
    260c:	1057      	lrw      	r2, 0x20000150	// 2668 <SIO0IntHandler+0x80>
    260e:	4138      	lsli      	r1, r1, 24
    2610:	60c8      	addu      	r3, r2
    2612:	b320      	st.w      	r1, (r3, 0x0)
			nop;
    2614:	6c03      	mov      	r0, r0
			R_SIORX_count=0;
    2616:	3300      	movi      	r3, 0
    2618:	b060      	st.w      	r3, (r0, 0x0)
	}
	else if(SIO0->MISR&0X020)				//TIMEOUT
	{
		SIO0->ICR=0X20;
	}
}
    261a:	1463      	ipop
    261c:	1461      	nir
	else if(SIO0->MISR&0X08)					//RXBUFFULL	
    261e:	9349      	ld.w      	r2, (r3, 0x24)
    2620:	3108      	movi      	r1, 8
    2622:	6884      	and      	r2, r1
    2624:	3a40      	cmpnei      	r2, 0
    2626:	0c10      	bf      	0x2646	// 2646 <SIO0IntHandler+0x5e>
		SIO0->ICR=0X08;
    2628:	b32b      	st.w      	r1, (r3, 0x2c)
		if(R_SIORX_count<1)
    262a:	102f      	lrw      	r1, 0x2000014c	// 2664 <SIO0IntHandler+0x7c>
    262c:	9140      	ld.w      	r2, (r1, 0x0)
    262e:	3a20      	cmplti      	r2, 1
    2630:	0ff5      	bf      	0x261a	// 261a <SIO0IntHandler+0x32>
			R_SIORX_buf[R_SIORX_count]=SIO0->RXBUF;				//32bit
    2632:	9140      	ld.w      	r2, (r1, 0x0)
    2634:	9307      	ld.w      	r0, (r3, 0x1c)
    2636:	4262      	lsli      	r3, r2, 2
    2638:	104c      	lrw      	r2, 0x20000150	// 2668 <SIO0IntHandler+0x80>
    263a:	60c8      	addu      	r3, r2
    263c:	b300      	st.w      	r0, (r3, 0x0)
			R_SIORX_count++;
    263e:	9160      	ld.w      	r3, (r1, 0x0)
    2640:	2300      	addi      	r3, 1
    2642:	b160      	st.w      	r3, (r1, 0x0)
    2644:	07eb      	br      	0x261a	// 261a <SIO0IntHandler+0x32>
	else if(SIO0->MISR&0X010)				//BREAK
    2646:	9349      	ld.w      	r2, (r3, 0x24)
    2648:	3110      	movi      	r1, 16
    264a:	6884      	and      	r2, r1
    264c:	3a40      	cmpnei      	r2, 0
    264e:	0c03      	bf      	0x2654	// 2654 <SIO0IntHandler+0x6c>
		SIO0->ICR=0X20;
    2650:	b32b      	st.w      	r1, (r3, 0x2c)
}
    2652:	07e4      	br      	0x261a	// 261a <SIO0IntHandler+0x32>
	else if(SIO0->MISR&0X020)				//TIMEOUT
    2654:	9349      	ld.w      	r2, (r3, 0x24)
    2656:	3120      	movi      	r1, 32
    2658:	6884      	and      	r2, r1
    265a:	3a40      	cmpnei      	r2, 0
    265c:	0bfa      	bt      	0x2650	// 2650 <SIO0IntHandler+0x68>
    265e:	07de      	br      	0x261a	// 261a <SIO0IntHandler+0x32>
    2660:	2000002c 	.long	0x2000002c
    2664:	2000014c 	.long	0x2000014c
    2668:	20000150 	.long	0x20000150

Disassembly of section .text.EXI0IntHandler:

0000266c <EXI0IntHandler>:
//EXT0/16 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI0IntHandler(void) 
{
    266c:	1460      	nie
    266e:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN0)==EXI_PIN0) 			//EXT0 Interrupt
    2670:	106a      	lrw      	r3, 0x2000005c	// 2698 <EXI0IntHandler+0x2c>
    2672:	3101      	movi      	r1, 1
    2674:	9360      	ld.w      	r3, (r3, 0x0)
    2676:	237f      	addi      	r3, 128
    2678:	934c      	ld.w      	r2, (r3, 0x30)
    267a:	6884      	and      	r2, r1
    267c:	3a40      	cmpnei      	r2, 0
    267e:	0c04      	bf      	0x2686	// 2686 <EXI0IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN0;
    2680:	b32b      	st.w      	r1, (r3, 0x2c)
	}
	else if ((SYSCON->EXIRS&EXI_PIN16)==EXI_PIN16) 		//EXT16 Interrupt
	{
		SYSCON->EXICR = EXI_PIN16;
	}
}
    2682:	1463      	ipop
    2684:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN16)==EXI_PIN16) 		//EXT16 Interrupt
    2686:	3280      	movi      	r2, 128
    2688:	932c      	ld.w      	r1, (r3, 0x30)
    268a:	4249      	lsli      	r2, r2, 9
    268c:	6848      	and      	r1, r2
    268e:	3940      	cmpnei      	r1, 0
    2690:	0ff9      	bf      	0x2682	// 2682 <EXI0IntHandler+0x16>
		SYSCON->EXICR = EXI_PIN16;
    2692:	b34b      	st.w      	r2, (r3, 0x2c)
}
    2694:	07f7      	br      	0x2682	// 2682 <EXI0IntHandler+0x16>
    2696:	0000      	bkpt
    2698:	2000005c 	.long	0x2000005c

Disassembly of section .text.EXI1IntHandler:

0000269c <EXI1IntHandler>:
//EXT1/17 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI1IntHandler(void) 
{
    269c:	1460      	nie
    269e:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN1)==EXI_PIN1) 			//EXT1 Interrupt
    26a0:	106a      	lrw      	r3, 0x2000005c	// 26c8 <EXI1IntHandler+0x2c>
    26a2:	3102      	movi      	r1, 2
    26a4:	9360      	ld.w      	r3, (r3, 0x0)
    26a6:	237f      	addi      	r3, 128
    26a8:	934c      	ld.w      	r2, (r3, 0x30)
    26aa:	6884      	and      	r2, r1
    26ac:	3a40      	cmpnei      	r2, 0
    26ae:	0c04      	bf      	0x26b6	// 26b6 <EXI1IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN1;
    26b0:	b32b      	st.w      	r1, (r3, 0x2c)
	}
	else if ((SYSCON->EXIRS&EXI_PIN17)==EXI_PIN17) 		//EXT17 Interrupt
	{
		SYSCON->EXICR = EXI_PIN17;
	}
}
    26b2:	1463      	ipop
    26b4:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN17)==EXI_PIN17) 		//EXT17 Interrupt
    26b6:	3280      	movi      	r2, 128
    26b8:	932c      	ld.w      	r1, (r3, 0x30)
    26ba:	424a      	lsli      	r2, r2, 10
    26bc:	6848      	and      	r1, r2
    26be:	3940      	cmpnei      	r1, 0
    26c0:	0ff9      	bf      	0x26b2	// 26b2 <EXI1IntHandler+0x16>
		SYSCON->EXICR = EXI_PIN17;
    26c2:	b34b      	st.w      	r2, (r3, 0x2c)
}
    26c4:	07f7      	br      	0x26b2	// 26b2 <EXI1IntHandler+0x16>
    26c6:	0000      	bkpt
    26c8:	2000005c 	.long	0x2000005c

Disassembly of section .text.EXI2to3IntHandler:

000026cc <EXI2to3IntHandler>:
//EXI2~3 18~19Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI2to3IntHandler(void) 
{
    26cc:	1460      	nie
    26ce:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN2)==EXI_PIN2) 			//EXT2 Interrupt
    26d0:	1070      	lrw      	r3, 0x2000005c	// 2710 <EXI2to3IntHandler+0x44>
    26d2:	3104      	movi      	r1, 4
    26d4:	9360      	ld.w      	r3, (r3, 0x0)
    26d6:	237f      	addi      	r3, 128
    26d8:	934c      	ld.w      	r2, (r3, 0x30)
    26da:	6884      	and      	r2, r1
    26dc:	3a40      	cmpnei      	r2, 0
    26de:	0c04      	bf      	0x26e6	// 26e6 <EXI2to3IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN2;
	} 
	else if ((SYSCON->EXIRS&EXI_PIN3)==EXI_PIN3) 		//EXT3 Interrupt
	{
		SYSCON->EXICR = EXI_PIN3;
    26e0:	b32b      	st.w      	r1, (r3, 0x2c)
	}
	else if ((SYSCON->EXIRS&EXI_PIN19)==EXI_PIN19) 		//EXT19 Interrupt
	{
		SYSCON->EXICR = EXI_PIN19;
	}
}
    26e2:	1463      	ipop
    26e4:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN3)==EXI_PIN3) 		//EXT3 Interrupt
    26e6:	934c      	ld.w      	r2, (r3, 0x30)
    26e8:	3108      	movi      	r1, 8
    26ea:	6884      	and      	r2, r1
    26ec:	3a40      	cmpnei      	r2, 0
    26ee:	0bf9      	bt      	0x26e0	// 26e0 <EXI2to3IntHandler+0x14>
	else if ((SYSCON->EXIRS&EXI_PIN18)==EXI_PIN18) 		//EXT18 Interrupt
    26f0:	3280      	movi      	r2, 128
    26f2:	932c      	ld.w      	r1, (r3, 0x30)
    26f4:	424b      	lsli      	r2, r2, 11
    26f6:	6848      	and      	r1, r2
    26f8:	3940      	cmpnei      	r1, 0
    26fa:	0c03      	bf      	0x2700	// 2700 <EXI2to3IntHandler+0x34>
		SYSCON->EXICR = EXI_PIN19;
    26fc:	b34b      	st.w      	r2, (r3, 0x2c)
}
    26fe:	07f2      	br      	0x26e2	// 26e2 <EXI2to3IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN19)==EXI_PIN19) 		//EXT19 Interrupt
    2700:	3280      	movi      	r2, 128
    2702:	932c      	ld.w      	r1, (r3, 0x30)
    2704:	424c      	lsli      	r2, r2, 12
    2706:	6848      	and      	r1, r2
    2708:	3940      	cmpnei      	r1, 0
    270a:	0bf9      	bt      	0x26fc	// 26fc <EXI2to3IntHandler+0x30>
    270c:	07eb      	br      	0x26e2	// 26e2 <EXI2to3IntHandler+0x16>
    270e:	0000      	bkpt
    2710:	2000005c 	.long	0x2000005c

Disassembly of section .text.EXI4to9IntHandler:

00002714 <EXI4to9IntHandler>:
//EXI4~9 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI4to9IntHandler(void) 
{
    2714:	1460      	nie
    2716:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN4)==EXI_PIN4) 			//EXT4 Interrupt
    2718:	1075      	lrw      	r3, 0x2000005c	// 276c <EXI4to9IntHandler+0x58>
    271a:	3280      	movi      	r2, 128
    271c:	9360      	ld.w      	r3, (r3, 0x0)
    271e:	60c8      	addu      	r3, r2
    2720:	932c      	ld.w      	r1, (r3, 0x30)
    2722:	3010      	movi      	r0, 16
    2724:	6840      	and      	r1, r0
    2726:	3940      	cmpnei      	r1, 0
    2728:	0c04      	bf      	0x2730	// 2730 <EXI4to9IntHandler+0x1c>
	{
		SYSCON->EXICR = EXI_PIN5;
	} 
	else if ((SYSCON->EXIRS&EXI_PIN6)==EXI_PIN6) 		//EXT6 Interrupt
	{
		SYSCON->EXICR = EXI_PIN6;
    272a:	b30b      	st.w      	r0, (r3, 0x2c)
	else if ((SYSCON->EXIRS&EXI_PIN9)==EXI_PIN9) 		//EXT9 Interrupt
	{
		SYSCON->EXICR = EXI_PIN9;
	} 

}
    272c:	1463      	ipop
    272e:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN5)==EXI_PIN5) 		//EXT5 Interrupt
    2730:	932c      	ld.w      	r1, (r3, 0x30)
    2732:	3020      	movi      	r0, 32
    2734:	6840      	and      	r1, r0
    2736:	3940      	cmpnei      	r1, 0
    2738:	0bf9      	bt      	0x272a	// 272a <EXI4to9IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN6)==EXI_PIN6) 		//EXT6 Interrupt
    273a:	932c      	ld.w      	r1, (r3, 0x30)
    273c:	3040      	movi      	r0, 64
    273e:	6840      	and      	r1, r0
    2740:	3940      	cmpnei      	r1, 0
    2742:	0bf4      	bt      	0x272a	// 272a <EXI4to9IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN7)==EXI_PIN7) 		//EXT7 Interrupt
    2744:	932c      	ld.w      	r1, (r3, 0x30)
    2746:	6848      	and      	r1, r2
    2748:	3940      	cmpnei      	r1, 0
    274a:	0c03      	bf      	0x2750	// 2750 <EXI4to9IntHandler+0x3c>
		SYSCON->EXICR = EXI_PIN9;
    274c:	b34b      	st.w      	r2, (r3, 0x2c)
}
    274e:	07ef      	br      	0x272c	// 272c <EXI4to9IntHandler+0x18>
	else if ((SYSCON->EXIRS&EXI_PIN8)==EXI_PIN8) 		//EXT8 Interrupt
    2750:	3280      	movi      	r2, 128
    2752:	932c      	ld.w      	r1, (r3, 0x30)
    2754:	4241      	lsli      	r2, r2, 1
    2756:	6848      	and      	r1, r2
    2758:	3940      	cmpnei      	r1, 0
    275a:	0bf9      	bt      	0x274c	// 274c <EXI4to9IntHandler+0x38>
	else if ((SYSCON->EXIRS&EXI_PIN9)==EXI_PIN9) 		//EXT9 Interrupt
    275c:	3280      	movi      	r2, 128
    275e:	932c      	ld.w      	r1, (r3, 0x30)
    2760:	4242      	lsli      	r2, r2, 2
    2762:	6848      	and      	r1, r2
    2764:	3940      	cmpnei      	r1, 0
    2766:	0bf3      	bt      	0x274c	// 274c <EXI4to9IntHandler+0x38>
    2768:	07e2      	br      	0x272c	// 272c <EXI4to9IntHandler+0x18>
    276a:	0000      	bkpt
    276c:	2000005c 	.long	0x2000005c

Disassembly of section .text.EXI10to15IntHandler:

00002770 <EXI10to15IntHandler>:
//EXI4 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI10to15IntHandler(void) 
{
    2770:	1460      	nie
    2772:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN10)==EXI_PIN10) 			//EXT10 Interrupt
    2774:	1076      	lrw      	r3, 0x2000005c	// 27cc <EXI10to15IntHandler+0x5c>
    2776:	3280      	movi      	r2, 128
    2778:	9360      	ld.w      	r3, (r3, 0x0)
    277a:	237f      	addi      	r3, 128
    277c:	932c      	ld.w      	r1, (r3, 0x30)
    277e:	4243      	lsli      	r2, r2, 3
    2780:	6848      	and      	r1, r2
    2782:	3940      	cmpnei      	r1, 0
    2784:	0c03      	bf      	0x278a	// 278a <EXI10to15IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN14;
	}
	else if ((SYSCON->EXIRS&EXI_PIN15)==EXI_PIN15) 		//EXT15 Interrupt
	{
		SYSCON->EXICR = EXI_PIN15;
    2786:	b34b      	st.w      	r2, (r3, 0x2c)
	}
}
    2788:	041f      	br      	0x27c6	// 27c6 <EXI10to15IntHandler+0x56>
	else if ((SYSCON->EXIRS&EXI_PIN11)==EXI_PIN11) 		//EXT11 Interrupt
    278a:	3280      	movi      	r2, 128
    278c:	932c      	ld.w      	r1, (r3, 0x30)
    278e:	4244      	lsli      	r2, r2, 4
    2790:	6848      	and      	r1, r2
    2792:	3940      	cmpnei      	r1, 0
    2794:	0bf9      	bt      	0x2786	// 2786 <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN12)==EXI_PIN12) 		//EXT12 Interrupt
    2796:	3280      	movi      	r2, 128
    2798:	932c      	ld.w      	r1, (r3, 0x30)
    279a:	4245      	lsli      	r2, r2, 5
    279c:	6848      	and      	r1, r2
    279e:	3940      	cmpnei      	r1, 0
    27a0:	0bf3      	bt      	0x2786	// 2786 <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN13)==EXI_PIN13) 		//EXT13 Interrupt
    27a2:	3280      	movi      	r2, 128
    27a4:	932c      	ld.w      	r1, (r3, 0x30)
    27a6:	4246      	lsli      	r2, r2, 6
    27a8:	6848      	and      	r1, r2
    27aa:	3940      	cmpnei      	r1, 0
    27ac:	0bed      	bt      	0x2786	// 2786 <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN14)==EXI_PIN14) 		//EXT14 Interrupt
    27ae:	3280      	movi      	r2, 128
    27b0:	932c      	ld.w      	r1, (r3, 0x30)
    27b2:	4247      	lsli      	r2, r2, 7
    27b4:	6848      	and      	r1, r2
    27b6:	3940      	cmpnei      	r1, 0
    27b8:	0be7      	bt      	0x2786	// 2786 <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN15)==EXI_PIN15) 		//EXT15 Interrupt
    27ba:	3280      	movi      	r2, 128
    27bc:	932c      	ld.w      	r1, (r3, 0x30)
    27be:	4248      	lsli      	r2, r2, 8
    27c0:	6848      	and      	r1, r2
    27c2:	3940      	cmpnei      	r1, 0
    27c4:	0be1      	bt      	0x2786	// 2786 <EXI10to15IntHandler+0x16>
}
    27c6:	1463      	ipop
    27c8:	1461      	nir
    27ca:	0000      	bkpt
    27cc:	2000005c 	.long	0x2000005c

Disassembly of section .text.LPTIntHandler:

000027d0 <LPTIntHandler>:
//LPT Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void LPTIntHandler(void) 
{
    27d0:	1460      	nie
    27d2:	1462      	ipush
    // ISR content ...
	if((LPT->MISR&LPT_TRGEV0)==LPT_TRGEV0)			//TRGEV0 interrupt
    27d4:	106b      	lrw      	r3, 0x20000014	// 2800 <LPTIntHandler+0x30>
    27d6:	3101      	movi      	r1, 1
    27d8:	9360      	ld.w      	r3, (r3, 0x0)
    27da:	934e      	ld.w      	r2, (r3, 0x38)
    27dc:	6884      	and      	r2, r1
    27de:	3a40      	cmpnei      	r2, 0
    27e0:	0c03      	bf      	0x27e6	// 27e6 <LPTIntHandler+0x16>
	{
		LPT->ICR = LPT_MATCH;
	}
	else if((LPT->MISR&LPT_PEND)==LPT_PEND)			//PEND interrupt
	{
		LPT->ICR = LPT_PEND;
    27e2:	b330      	st.w      	r1, (r3, 0x40)
	}
}
    27e4:	040b      	br      	0x27fa	// 27fa <LPTIntHandler+0x2a>
	else if((LPT->MISR&LPT_MATCH)==LPT_MATCH)		//MATCH interrupt
    27e6:	934e      	ld.w      	r2, (r3, 0x38)
    27e8:	3102      	movi      	r1, 2
    27ea:	6884      	and      	r2, r1
    27ec:	3a40      	cmpnei      	r2, 0
    27ee:	0bfa      	bt      	0x27e2	// 27e2 <LPTIntHandler+0x12>
	else if((LPT->MISR&LPT_PEND)==LPT_PEND)			//PEND interrupt
    27f0:	934e      	ld.w      	r2, (r3, 0x38)
    27f2:	3104      	movi      	r1, 4
    27f4:	6884      	and      	r2, r1
    27f6:	3a40      	cmpnei      	r2, 0
    27f8:	0bf5      	bt      	0x27e2	// 27e2 <LPTIntHandler+0x12>
}
    27fa:	1463      	ipop
    27fc:	1461      	nir
    27fe:	0000      	bkpt
    2800:	20000014 	.long	0x20000014

Disassembly of section .text.BT0IntHandler:

00002804 <BT0IntHandler>:
//BT0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void BT0IntHandler(void) 
{
    2804:	1460      	nie
    2806:	1462      	ipush
    // ISR content ...
	if((BT0->MISR&BT_PEND)==BT_PEND)				//BT0 PEND interrupt
    2808:	106d      	lrw      	r3, 0x2000000c	// 283c <BT0IntHandler+0x38>
    280a:	3101      	movi      	r1, 1
    280c:	9360      	ld.w      	r3, (r3, 0x0)
    280e:	934c      	ld.w      	r2, (r3, 0x30)
    2810:	6884      	and      	r2, r1
    2812:	3a40      	cmpnei      	r2, 0
    2814:	0c03      	bf      	0x281a	// 281a <BT0IntHandler+0x16>
	{
		BT0->ICR = BT_OVF;
	} 
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT0 Event trigger interrupt
	{
		BT0->ICR = BT_EVTRG;
    2816:	b32d      	st.w      	r1, (r3, 0x34)
	} 
}
    2818:	0410      	br      	0x2838	// 2838 <BT0IntHandler+0x34>
	else if((BT0->MISR&BT_CMP)==BT_CMP)				//BT0 CMP Match interrupt 
    281a:	934c      	ld.w      	r2, (r3, 0x30)
    281c:	3102      	movi      	r1, 2
    281e:	6884      	and      	r2, r1
    2820:	3a40      	cmpnei      	r2, 0
    2822:	0bfa      	bt      	0x2816	// 2816 <BT0IntHandler+0x12>
	else if((BT0->MISR&BT_OVF)==BT_OVF)				//BT0 OVF interrupt
    2824:	934c      	ld.w      	r2, (r3, 0x30)
    2826:	3104      	movi      	r1, 4
    2828:	6884      	and      	r2, r1
    282a:	3a40      	cmpnei      	r2, 0
    282c:	0bf5      	bt      	0x2816	// 2816 <BT0IntHandler+0x12>
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT0 Event trigger interrupt
    282e:	934c      	ld.w      	r2, (r3, 0x30)
    2830:	3108      	movi      	r1, 8
    2832:	6884      	and      	r2, r1
    2834:	3a40      	cmpnei      	r2, 0
    2836:	0bf0      	bt      	0x2816	// 2816 <BT0IntHandler+0x12>
}
    2838:	1463      	ipop
    283a:	1461      	nir
    283c:	2000000c 	.long	0x2000000c

Disassembly of section .text.BT1IntHandler:

00002840 <BT1IntHandler>:
//BT1 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void BT1IntHandler(void) 
{
    2840:	1460      	nie
    2842:	1462      	ipush
    // ISR content ...
	if((BT1->MISR&BT_PEND)==BT_PEND)				//BT1 PEND interrupt
    2844:	106f      	lrw      	r3, 0x20000008	// 2880 <BT1IntHandler+0x40>
    2846:	3101      	movi      	r1, 1
    2848:	9360      	ld.w      	r3, (r3, 0x0)
    284a:	934c      	ld.w      	r2, (r3, 0x30)
    284c:	6884      	and      	r2, r1
    284e:	3a40      	cmpnei      	r2, 0
    2850:	0c03      	bf      	0x2856	// 2856 <BT1IntHandler+0x16>
	{
		BT1->ICR = BT_OVF;
	} 
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT1 Event trigger interrupt
	{
		BT1->ICR = BT_EVTRG;
    2852:	b32d      	st.w      	r1, (r3, 0x34)
	} 
}
    2854:	0409      	br      	0x2866	// 2866 <BT1IntHandler+0x26>
	else if((BT0->MISR&BT_CMP)==BT_CMP)				//BT1 CMP Match interrupt 
    2856:	104c      	lrw      	r2, 0x2000000c	// 2884 <BT1IntHandler+0x44>
    2858:	3002      	movi      	r0, 2
    285a:	9240      	ld.w      	r2, (r2, 0x0)
    285c:	922c      	ld.w      	r1, (r2, 0x30)
    285e:	6840      	and      	r1, r0
    2860:	3940      	cmpnei      	r1, 0
    2862:	0c04      	bf      	0x286a	// 286a <BT1IntHandler+0x2a>
		BT1->ICR = BT_OVF;
    2864:	b30d      	st.w      	r0, (r3, 0x34)
}
    2866:	1463      	ipop
    2868:	1461      	nir
	else if((BT0->MISR&BT_OVF)==BT_OVF)				//BT1 OVF interrupt
    286a:	922c      	ld.w      	r1, (r2, 0x30)
    286c:	3004      	movi      	r0, 4
    286e:	6840      	and      	r1, r0
    2870:	3940      	cmpnei      	r1, 0
    2872:	0bf9      	bt      	0x2864	// 2864 <BT1IntHandler+0x24>
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT1 Event trigger interrupt
    2874:	924c      	ld.w      	r2, (r2, 0x30)
    2876:	3108      	movi      	r1, 8
    2878:	6884      	and      	r2, r1
    287a:	3a40      	cmpnei      	r2, 0
    287c:	0beb      	bt      	0x2852	// 2852 <BT1IntHandler+0x12>
    287e:	07f4      	br      	0x2866	// 2866 <BT1IntHandler+0x26>
    2880:	20000008 	.long	0x20000008
    2884:	2000000c 	.long	0x2000000c

Disassembly of section .text.PriviledgeVioHandler:

00002888 <PriviledgeVioHandler>:
    2888:	783c      	jmp      	r15

Disassembly of section .text.PendTrapHandler:

0000288a <PendTrapHandler>:
    // ISR content ...

}

void PendTrapHandler(void) 
{
    288a:	1460      	nie
    288c:	1462      	ipush
    // ISR content ...

}
    288e:	1463      	ipop
    2890:	1461      	nir

Disassembly of section .text.Trap3Handler:

00002892 <Trap3Handler>:
    2892:	1460      	nie
    2894:	1462      	ipush
    2896:	1463      	ipop
    2898:	1461      	nir

Disassembly of section .text.Trap2Handler:

0000289a <Trap2Handler>:
    289a:	1460      	nie
    289c:	1462      	ipush
    289e:	1463      	ipop
    28a0:	1461      	nir

Disassembly of section .text.Trap1Handler:

000028a2 <Trap1Handler>:
    28a2:	1460      	nie
    28a4:	1462      	ipush
    28a6:	1463      	ipop
    28a8:	1461      	nir

Disassembly of section .text.Trap0Handler:

000028aa <Trap0Handler>:
    28aa:	1460      	nie
    28ac:	1462      	ipush
    28ae:	1463      	ipop
    28b0:	1461      	nir

Disassembly of section .text.UnrecExecpHandler:

000028b2 <UnrecExecpHandler>:
    28b2:	1460      	nie
    28b4:	1462      	ipush
    28b6:	1463      	ipop
    28b8:	1461      	nir

Disassembly of section .text.BreakPointHandler:

000028ba <BreakPointHandler>:
    28ba:	1460      	nie
    28bc:	1462      	ipush
    28be:	1463      	ipop
    28c0:	1461      	nir

Disassembly of section .text.AccessErrHandler:

000028c2 <AccessErrHandler>:
    28c2:	1460      	nie
    28c4:	1462      	ipush
    28c6:	1463      	ipop
    28c8:	1461      	nir

Disassembly of section .text.IllegalInstrHandler:

000028ca <IllegalInstrHandler>:
    28ca:	1460      	nie
    28cc:	1462      	ipush
    28ce:	1463      	ipop
    28d0:	1461      	nir

Disassembly of section .text.MisalignedHandler:

000028d2 <MisalignedHandler>:
    28d2:	1460      	nie
    28d4:	1462      	ipush
    28d6:	1463      	ipop
    28d8:	1461      	nir

Disassembly of section .text.CNTAIntHandler:

000028da <CNTAIntHandler>:
    28da:	1460      	nie
    28dc:	1462      	ipush
    28de:	1463      	ipop
    28e0:	1461      	nir

Disassembly of section .text.I2CIntHandler:

000028e2 <I2CIntHandler>:
    28e2:	1460      	nie
    28e4:	1462      	ipush
    28e6:	1463      	ipop
    28e8:	1461      	nir

Disassembly of section .text.CORETHandler:

000028ea <CORETHandler>:
    28ea:	1460      	nie
    28ec:	1462      	ipush
    28ee:	1463      	ipop
    28f0:	1461      	nir

Disassembly of section .text.uart_send_tk_Sampling:

000028f4 <uart_send_tk_Sampling>:
*****************************************************/
extern void delay_nms(unsigned int t);
extern void APT32F102_init(void);

void uart_send_tk_Sampling(void)
{
    28f4:	14d4      	push      	r4-r7, r15
    28f6:	1422      	subi      	r14, r14, 8
		U8_T j;
		UARTTxByte(UART1,0x0d);
    28f8:	1097      	lrw      	r4, 0x2000003c	// 2954 <uart_send_tk_Sampling+0x60>
    28fa:	310d      	movi      	r1, 13
    28fc:	9400      	ld.w      	r0, (r4, 0x0)
    28fe:	e3fffa5d 	bsr      	0x1db8	// 1db8 <UARTTxByte>
		UARTTxByte(UART1,0x0a);											
    2902:	310a      	movi      	r1, 10
    2904:	9400      	ld.w      	r0, (r4, 0x0)
    2906:	e3fffa59 	bsr      	0x1db8	// 1db8 <UARTTxByte>
    290a:	3700      	movi      	r7, 0
		for (j=0;j<17;j++)
		{				
			UARTTxByte(UART1,sampling_data0[j]>>8);
    290c:	1073      	lrw      	r3, 0x2000041e	// 2958 <uart_send_tk_Sampling+0x64>
			UARTTxByte(UART1,sampling_data0[j]&0xff);
			UARTTxByte(UART1,baseline_data0[j]>>8);
    290e:	10d4      	lrw      	r6, 0x2000017c	// 295c <uart_send_tk_Sampling+0x68>
			UARTTxByte(UART1,sampling_data0[j]>>8);
    2910:	47a1      	lsli      	r5, r7, 1
    2912:	5b54      	addu      	r2, r3, r5
    2914:	8a20      	ld.h      	r1, (r2, 0x0)
    2916:	7445      	zexth      	r1, r1
    2918:	4928      	lsri      	r1, r1, 8
    291a:	9400      	ld.w      	r0, (r4, 0x0)
    291c:	b861      	st.w      	r3, (r14, 0x4)
    291e:	b840      	st.w      	r2, (r14, 0x0)
    2920:	e3fffa4c 	bsr      	0x1db8	// 1db8 <UARTTxByte>
			UARTTxByte(UART1,sampling_data0[j]&0xff);
    2924:	9840      	ld.w      	r2, (r14, 0x0)
    2926:	8a20      	ld.h      	r1, (r2, 0x0)
    2928:	7444      	zextb      	r1, r1
    292a:	9400      	ld.w      	r0, (r4, 0x0)
			UARTTxByte(UART1,baseline_data0[j]>>8);
    292c:	6158      	addu      	r5, r6
			UARTTxByte(UART1,sampling_data0[j]&0xff);
    292e:	e3fffa45 	bsr      	0x1db8	// 1db8 <UARTTxByte>
			UARTTxByte(UART1,baseline_data0[j]>>8);
    2932:	8d20      	ld.h      	r1, (r5, 0x0)
    2934:	7445      	zexth      	r1, r1
    2936:	4928      	lsri      	r1, r1, 8
    2938:	9400      	ld.w      	r0, (r4, 0x0)
    293a:	e3fffa3f 	bsr      	0x1db8	// 1db8 <UARTTxByte>
			UARTTxByte(UART1,baseline_data0[j]&0xff);
    293e:	8d20      	ld.h      	r1, (r5, 0x0)
    2940:	7444      	zextb      	r1, r1
    2942:	9400      	ld.w      	r0, (r4, 0x0)
    2944:	2700      	addi      	r7, 1
    2946:	e3fffa39 	bsr      	0x1db8	// 1db8 <UARTTxByte>
		for (j=0;j<17;j++)
    294a:	3f51      	cmpnei      	r7, 17
    294c:	9861      	ld.w      	r3, (r14, 0x4)
    294e:	0be1      	bt      	0x2910	// 2910 <uart_send_tk_Sampling+0x1c>
		}
}
    2950:	1402      	addi      	r14, r14, 8
    2952:	1494      	pop      	r4-r7, r15
    2954:	2000003c 	.long	0x2000003c
    2958:	2000041e 	.long	0x2000041e
    295c:	2000017c 	.long	0x2000017c

Disassembly of section .text.tk_uart_init:

00002960 <tk_uart_init>:

void tk_uart_init(void)
{
    2960:	14d0      	push      	r15
	GPIOA0->CONHR = (GPIOA0->CONHR&0XF0FFFFFF) | 0X07000000;        //PA0.14->TX
    2962:	106a      	lrw      	r3, 0x2000004c	// 2988 <tk_uart_init+0x28>
    2964:	32f0      	movi      	r2, 240
    2966:	9320      	ld.w      	r1, (r3, 0x0)
    2968:	9161      	ld.w      	r3, (r1, 0x4)
    296a:	4254      	lsli      	r2, r2, 20
    296c:	68c9      	andn      	r3, r2
    296e:	32e0      	movi      	r2, 224
    2970:	4253      	lsli      	r2, r2, 19
    2972:	6cc8      	or      	r3, r2
    2974:	b161      	st.w      	r3, (r1, 0x4)
	UARTInitRxTxIntEn(UART1,416,UART_PAR_NONE);	       				//115200@48MHz
    2976:	31d0      	movi      	r1, 208
    2978:	1065      	lrw      	r3, 0x2000003c	// 298c <tk_uart_init+0x2c>
    297a:	3200      	movi      	r2, 0
    297c:	9300      	ld.w      	r0, (r3, 0x0)
    297e:	4121      	lsli      	r1, r1, 1
    2980:	e3fffa17 	bsr      	0x1dae	// 1dae <UARTInitRxTxIntEn>
}
    2984:	1490      	pop      	r15
    2986:	0000      	bkpt
    2988:	2000004c 	.long	0x2000004c
    298c:	2000003c 	.long	0x2000003c

Disassembly of section .text.startup.main:

00002990 <main>:
/***************************************************/
//main
/**************************************************/
int main(void) 
{
    2990:	14d0      	push      	r15
	delay_nms(1000);							//power on delay if needed
    2992:	30fa      	movi      	r0, 250
    2994:	4002      	lsli      	r0, r0, 2
    2996:	e3fffaa5 	bsr      	0x1ee0	// 1ee0 <delay_nms>
	APT32F102_init();							//102 initial
    299a:	e3fffaf9 	bsr      	0x1f8c	// 1f8c <APT32F102_init>
#ifdef _DEBUG
	tk_uart_init();
    299e:	e3ffffe1 	bsr      	0x2960	// 2960 <tk_uart_init>
#endif
    while(1)
	{
		tk_prgm();
    29a2:	e000067f 	bsr      	0x36a0	// 36a0 <tk_prgm>
#ifdef _DEBUG
		uart_send_tk_Sampling();
    29a6:	e3ffffa7 	bsr      	0x28f4	// 28f4 <uart_send_tk_Sampling>
    29aa:	07fc      	br      	0x29a2	// 29a2 <main+0x12>

Disassembly of section .text.__divsi3:

000029ac <__divsi3>:
CSP_BT_T    	*BT1      = (CSP_BT_T   *)APB_BT1Base ;
CSP_CRC_T   	*CRC      = (CSP_CRC_T  *)AHB_CRCBase ;
CSP_HWD_T   	*HWD      = (CSP_HWD_T  *)APB_HWDBase ;

int __divsi3 (  int a,   int b)
{   
    29ac:	14c1      	push      	r4
	int PSR;
	__asm volatile(
    29ae:	c0006023 	mfcr      	r3, cr<0, 0>
    29b2:	c0807020 	psrclr      	ie
					"mfcr %0 , psr \n\r"
					"psrclr ie \n\r"
					: "=r"(PSR)
				   );

	HWD->CR = 0;
    29b6:	1046      	lrw      	r2, 0x20000000	// 29cc <__divsi3+0x20>
    29b8:	3400      	movi      	r4, 0
    29ba:	9240      	ld.w      	r2, (r2, 0x0)
    29bc:	b284      	st.w      	r4, (r2, 0x10)
	HWD->DIVIDENT = a;
	HWD->DIVISOR = b;

	PSR |= 0x80000000;
    29be:	3bbf      	bseti      	r3, 31
	HWD->DIVIDENT = a;
    29c0:	b200      	st.w      	r0, (r2, 0x0)
	HWD->DIVISOR = b;
    29c2:	b221      	st.w      	r1, (r2, 0x4)
	__asm volatile(
    29c4:	c0036420 	mtcr      	r3, cr<0, 0>
					 "mtcr %0 , psr \n\r"
					 : 
					 :"r"(PSR)
					);
					
	return HWD->QUOTIENT;
    29c8:	9202      	ld.w      	r0, (r2, 0x8)
}
    29ca:	1481      	pop      	r4
    29cc:	20000000 	.long	0x20000000

Disassembly of section .text.__udivsi3:

000029d0 <__udivsi3>:
 unsigned int __udivsi3 ( unsigned int a,  unsigned int b)
{   
    29d0:	14c1      	push      	r4
	int PSR;
	__asm volatile(
    29d2:	c0006023 	mfcr      	r3, cr<0, 0>
    29d6:	c0807020 	psrclr      	ie
					"mfcr %0 , psr \n\r"
					"psrclr ie \n\r"
					: "=r"(PSR)
				   );
	
	HWD->CR = 1;
    29da:	1046      	lrw      	r2, 0x20000000	// 29f0 <__udivsi3+0x20>
    29dc:	3401      	movi      	r4, 1
    29de:	9240      	ld.w      	r2, (r2, 0x0)
    29e0:	b284      	st.w      	r4, (r2, 0x10)
	HWD->DIVIDENT = a;
	HWD->DIVISOR = b;

	PSR |= 0x80000000;
    29e2:	3bbf      	bseti      	r3, 31
	HWD->DIVIDENT = a;
    29e4:	b200      	st.w      	r0, (r2, 0x0)
	HWD->DIVISOR = b;
    29e6:	b221      	st.w      	r1, (r2, 0x4)
	__asm volatile(
    29e8:	c0036420 	mtcr      	r3, cr<0, 0>
					 "mtcr %0 , psr \n\r"
					 : 
					 :"r"(PSR)
					);

	return HWD->QUOTIENT;
    29ec:	9202      	ld.w      	r0, (r2, 0x8)
}
    29ee:	1481      	pop      	r4
    29f0:	20000000 	.long	0x20000000

Disassembly of section .text.CK_CPU_EnAllNormalIrq:

000029f4 <CK_CPU_EnAllNormalIrq>:
}


void CK_CPU_EnAllNormalIrq(void)
{
  asm  ("psrset ee,ie");
    29f4:	c1807420 	psrset      	ee, ie
}
    29f8:	783c      	jmp      	r15

Disassembly of section .text.TK_ConfigInterrupt_CMD.part.0:

000029fc <TK_ConfigInterrupt_CMD.part.0>:
*****************************************************/
void TK_ConfigInterrupt_CMD(FunctionalStatus NewState,unsigned long TK_IMSCR_X)
{
	if (NewState != DISABLE)
	{
		TKEY->TCH_IER  |= TK_IMSCR_X;						
    29fc:	1063      	lrw      	r3, 0x20000058	// 2a08 <TK_ConfigInterrupt_CMD.part.0+0xc>
    29fe:	9340      	ld.w      	r2, (r3, 0x0)
    2a00:	926b      	ld.w      	r3, (r2, 0x2c)
    2a02:	6c0c      	or      	r0, r3
    2a04:	b20b      	st.w      	r0, (r2, 0x2c)
	}
	else
	{
		TKEY->TCH_IER  &= ~TK_IMSCR_X;					
	}
}
    2a06:	783c      	jmp      	r15
    2a08:	20000058 	.long	0x20000058

Disassembly of section .text.tk_clk_config:

00002a0c <tk_clk_config>:
{
    2a0c:	14c1      	push      	r4
    2a0e:	1069      	lrw      	r3, 0x20000058	// 2a30 <tk_clk_config+0x24>
	if (NewState != DISABLE)
    2a10:	3840      	cmpnei      	r0, 0
		TKEY->TCH_CCR  |= 0x01<<0;						
    2a12:	9380      	ld.w      	r4, (r3, 0x0)
    2a14:	9400      	ld.w      	r0, (r4, 0x0)
	if (NewState != DISABLE)
    2a16:	0c0b      	bf      	0x2a2c	// 2a2c <tk_clk_config+0x20>
		TKEY->TCH_CCR  |= 0x01<<0;						
    2a18:	38a0      	bseti      	r0, 0
		TKEY->TCH_CCR  &= 0xfffffffe;					
    2a1a:	b400      	st.w      	r0, (r4, 0x0)
	TKEY->TCH_CCR |= (PCKDIVX<<2)|(TCKDIVX<<8);
    2a1c:	9360      	ld.w      	r3, (r3, 0x0)
    2a1e:	4248      	lsli      	r2, r2, 8
    2a20:	4122      	lsli      	r1, r1, 2
    2a22:	9300      	ld.w      	r0, (r3, 0x0)
    2a24:	6c48      	or      	r1, r2
    2a26:	6c40      	or      	r1, r0
    2a28:	b320      	st.w      	r1, (r3, 0x0)
}
    2a2a:	1481      	pop      	r4
		TKEY->TCH_CCR  &= 0xfffffffe;					
    2a2c:	3880      	bclri      	r0, 0
    2a2e:	07f6      	br      	0x2a1a	// 2a1a <tk_clk_config+0xe>
    2a30:	20000058 	.long	0x20000058

Disassembly of section .text.TK_con0_config:

00002a34 <TK_con0_config>:
{
    2a34:	14c4      	push      	r4-r7
    2a36:	1429      	subi      	r14, r14, 36
    2a38:	b840      	st.w      	r2, (r14, 0x0)
    2a3a:	984d      	ld.w      	r2, (r14, 0x34)
    2a3c:	b841      	st.w      	r2, (r14, 0x4)
    2a3e:	984e      	ld.w      	r2, (r14, 0x38)
    2a40:	b842      	st.w      	r2, (r14, 0x8)
    2a42:	984f      	ld.w      	r2, (r14, 0x3c)
    2a44:	b843      	st.w      	r2, (r14, 0xc)
    2a46:	9850      	ld.w      	r2, (r14, 0x40)
    2a48:	9895      	ld.w      	r4, (r14, 0x54)
    2a4a:	b844      	st.w      	r2, (r14, 0x10)
    2a4c:	9853      	ld.w      	r2, (r14, 0x4c)
    2a4e:	b845      	st.w      	r2, (r14, 0x14)
    2a50:	b887      	st.w      	r4, (r14, 0x1c)
    2a52:	9854      	ld.w      	r2, (r14, 0x50)
    2a54:	1c11      	addi      	r4, r14, 68
    2a56:	b846      	st.w      	r2, (r14, 0x18)
    2a58:	8c80      	ld.h      	r4, (r4, 0x0)
    2a5a:	1a15      	addi      	r2, r14, 84
    2a5c:	1d12      	addi      	r5, r14, 72
    2a5e:	8244      	ld.b      	r2, (r2, 0x4)
	if(PSELX==TK_PSEL_FVR)
    2a60:	3c40      	cmpnei      	r4, 0
{
    2a62:	8dc0      	ld.h      	r6, (r5, 0x0)
    2a64:	b848      	st.w      	r2, (r14, 0x20)
	if(PSELX==TK_PSEL_FVR)
    2a66:	0813      	bt      	0x2a8c	// 2a8c <TK_con0_config+0x58>
		GPIOA0->CONLR=(GPIOA0->CONLR&0XFFFFF0FF) | 0x00000800;
    2a68:	105f      	lrw      	r2, 0x2000004c	// 2ae4 <TK_con0_config+0xb0>
    2a6a:	35f0      	movi      	r5, 240
    2a6c:	92e0      	ld.w      	r7, (r2, 0x0)
    2a6e:	9740      	ld.w      	r2, (r7, 0x0)
    2a70:	45a4      	lsli      	r5, r5, 4
    2a72:	6895      	andn      	r2, r5
    2a74:	3aab      	bseti      	r2, 11
    2a76:	b740      	st.w      	r2, (r7, 0x0)
		ADC0->ECR=2;
    2a78:	3502      	movi      	r5, 2
    2a7a:	105c      	lrw      	r2, 0x20000050	// 2ae8 <TK_con0_config+0xb4>
		if(FVRLVLX==TK_FVR_4096V)
    2a7c:	3e41      	cmpnei      	r6, 1
		ADC0->ECR=2;
    2a7e:	9240      	ld.w      	r2, (r2, 0x0)
    2a80:	b2a0      	st.w      	r5, (r2, 0x0)
		if(FVRLVLX==TK_FVR_4096V)
    2a82:	0828      	bt      	0x2ad2	// 2ad2 <TK_con0_config+0x9e>
			ADC0->CR=(ADC0->CR&0Xfcffffff)|(1<<24)|(1<<25);
    2a84:	92a4      	ld.w      	r5, (r2, 0x10)
    2a86:	3db8      	bseti      	r5, 24
    2a88:	3db9      	bseti      	r5, 25
    2a8a:	b2a4      	st.w      	r5, (r2, 0x10)
	TKEY->TCH_CON0 &= 0X00000000;
    2a8c:	1058      	lrw      	r2, 0x20000058	// 2aec <TK_con0_config+0xb8>
	TKEY->TCH_CON0 |=HMENX|MODEX|(SWQLENX<<2)|(ECLVLX<<7)|CKSPRX|CKRNDx|CKFEQX|RSSELX|(PSELX<<13)|IDLEPX|DSRX|TSSTBX|(OTHRCNTX<<24);
    2a8e:	448d      	lsli      	r4, r4, 13
	TKEY->TCH_CON0 &= 0X00000000;
    2a90:	92a0      	ld.w      	r5, (r2, 0x0)
    2a92:	9541      	ld.w      	r2, (r5, 0x4)
    2a94:	3200      	movi      	r2, 0
    2a96:	b541      	st.w      	r2, (r5, 0x4)
	TKEY->TCH_CON0 |=HMENX|MODEX|(SWQLENX<<2)|(ECLVLX<<7)|CKSPRX|CKRNDx|CKFEQX|RSSELX|(PSELX<<13)|IDLEPX|DSRX|TSSTBX|(OTHRCNTX<<24);
    2a98:	9541      	ld.w      	r2, (r5, 0x4)
    2a9a:	98c7      	ld.w      	r6, (r14, 0x1c)
    2a9c:	6c98      	or      	r2, r6
    2a9e:	98c6      	ld.w      	r6, (r14, 0x18)
    2aa0:	6c98      	or      	r2, r6
    2aa2:	98c5      	ld.w      	r6, (r14, 0x14)
    2aa4:	6c98      	or      	r2, r6
    2aa6:	98c8      	ld.w      	r6, (r14, 0x20)
    2aa8:	46d8      	lsli      	r6, r6, 24
    2aaa:	6c98      	or      	r2, r6
    2aac:	98c4      	ld.w      	r6, (r14, 0x10)
    2aae:	6c98      	or      	r2, r6
    2ab0:	98c3      	ld.w      	r6, (r14, 0xc)
    2ab2:	6c98      	or      	r2, r6
    2ab4:	98c2      	ld.w      	r6, (r14, 0x8)
    2ab6:	6c98      	or      	r2, r6
    2ab8:	98c1      	ld.w      	r6, (r14, 0x4)
    2aba:	6c98      	or      	r2, r6
    2abc:	6c48      	or      	r1, r2
    2abe:	9840      	ld.w      	r2, (r14, 0x0)
    2ac0:	6c04      	or      	r0, r1
    2ac2:	4242      	lsli      	r2, r2, 2
    2ac4:	6c08      	or      	r0, r2
    2ac6:	6d00      	or      	r4, r0
    2ac8:	4367      	lsli      	r3, r3, 7
    2aca:	6cd0      	or      	r3, r4
    2acc:	b561      	st.w      	r3, (r5, 0x4)
}
    2ace:	1409      	addi      	r14, r14, 36
    2ad0:	1484      	pop      	r4-r7
		if(FVRLVLX==TK_FVR_2048V)
    2ad2:	3e40      	cmpnei      	r6, 0
    2ad4:	0bdc      	bt      	0x2a8c	// 2a8c <TK_con0_config+0x58>
			ADC0->CR=(ADC0->CR&0Xfcffffff)|(1<<24)|(0<<25);
    2ad6:	9264      	ld.w      	r3, (r2, 0x10)
    2ad8:	3b98      	bclri      	r3, 24
    2ada:	3b99      	bclri      	r3, 25
    2adc:	3bb8      	bseti      	r3, 24
    2ade:	b264      	st.w      	r3, (r2, 0x10)
			ECLVLX=TK_EC_1V;							//fvr=2.048 只能选1V
    2ae0:	3300      	movi      	r3, 0
    2ae2:	07d5      	br      	0x2a8c	// 2a8c <TK_con0_config+0x58>
    2ae4:	2000004c 	.long	0x2000004c
    2ae8:	20000050 	.long	0x20000050
    2aec:	20000058 	.long	0x20000058

Disassembly of section .text.TK_IO_Init:

00002af0 <TK_IO_Init>:
/****************************************************
//TK IO ENABLE
*****************************************************/
void TK_IO_Init(void)
{
    2af0:	14d4      	push      	r4-r7, r15
    2af2:	1422      	subi      	r14, r14, 8
    unsigned char i;
	GPIOA0->CONLR=(GPIOA0->CONLR&0XFF0FFFFF) | 0x00900000;
    2af4:	1269      	lrw      	r3, 0x2000004c	// 2c18 <TK_IO_Init+0x128>
    2af6:	31f0      	movi      	r1, 240
    2af8:	9360      	ld.w      	r3, (r3, 0x0)
    2afa:	9340      	ld.w      	r2, (r3, 0x0)
    2afc:	4130      	lsli      	r1, r1, 16
    2afe:	6885      	andn      	r2, r1
    2b00:	3ab4      	bseti      	r2, 20
    2b02:	3ab7      	bseti      	r2, 23
    2b04:	b340      	st.w      	r2, (r3, 0x0)
					case 10:GPIOA0->CONHR=(GPIOA0->CONHR&0XFFFFF0FF) | 0x00000900;break;
					case 11:GPIOA0->CONHR=(GPIOA0->CONHR&0XFFFF0FFF) | 0x00009000;break;
					case 12:GPIOA0->CONHR=(GPIOA0->CONHR&0XFFF0FFFF) | 0x00090000;break;
					case 13:GPIOA0->CONHR=(GPIOA0->CONHR&0XFF0FFFFF) | 0x00900000;break;
					case 14:GPIOB0->CONLR=(GPIOB0->CONLR&0XFFFFFFF0) | 0x00000009;break;
					case 15:GPIOB0->CONLR=(GPIOB0->CONLR&0XFFF0FFFF) | 0x00090000;break;
    2b06:	35f0      	movi      	r5, 240
			if ((TK_IO_ENABLE & (1<<i))!=0)
    2b08:	1245      	lrw      	r2, 0x200000dc	// 2c1c <TK_IO_Init+0x12c>
					case 11:GPIOA0->CONHR=(GPIOA0->CONHR&0XFFFF0FFF) | 0x00009000;break;
    2b0a:	36f0      	movi      	r6, 240
			if ((TK_IO_ENABLE & (1<<i))!=0)
    2b0c:	9240      	ld.w      	r2, (r2, 0x0)
    2b0e:	b841      	st.w      	r2, (r14, 0x4)
					case 15:GPIOB0->CONLR=(GPIOB0->CONLR&0XFFF0FFFF) | 0x00090000;break;
    2b10:	3400      	movi      	r4, 0
    2b12:	1244      	lrw      	r2, 0x20000048	// 2c20 <TK_IO_Init+0x130>
    2b14:	45ac      	lsli      	r5, r5, 12
    2b16:	9240      	ld.w      	r2, (r2, 0x0)
					case 16:GPIOB0->CONLR=(GPIOB0->CONLR&0XFF0FFFFF) | 0x00900000;break;
    2b18:	b820      	st.w      	r1, (r14, 0x0)
					case 11:GPIOA0->CONHR=(GPIOA0->CONHR&0XFFFF0FFF) | 0x00009000;break;
    2b1a:	46c8      	lsli      	r6, r6, 8
			if ((TK_IO_ENABLE & (1<<i))!=0)
    2b1c:	3701      	movi      	r7, 1
    2b1e:	71d0      	lsl      	r7, r4
    2b20:	9821      	ld.w      	r1, (r14, 0x4)
    2b22:	69c4      	and      	r7, r1
    2b24:	3f40      	cmpnei      	r7, 0
    2b26:	7410      	zextb      	r0, r4
    2b28:	0c1b      	bf      	0x2b5e	// 2b5e <TK_IO_Init+0x6e>
				switch (i)
    2b2a:	2800      	subi      	r0, 1
    2b2c:	380f      	cmphsi      	r0, 16
    2b2e:	080b      	bt      	0x2b44	// 2b44 <TK_IO_Init+0x54>
    2b30:	e3fff0e6 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    2b34:	27201a0f 	.long	0x27201a0f
    2b38:	3d38312c 	.long	0x3d38312c
    2b3c:	56514a44 	.long	0x56514a44
    2b40:	6c67615b 	.long	0x6c67615b
					case 0:GPIOB0->CONLR=(GPIOB0->CONLR&0XFFFFFF0F) | 0x00000090;break;
    2b44:	9200      	ld.w      	r0, (r2, 0x0)
    2b46:	37f0      	movi      	r7, 240
    2b48:	681d      	andn      	r0, r7
    2b4a:	38a4      	bseti      	r0, 4
    2b4c:	38a7      	bseti      	r0, 7
					case 16:GPIOB0->CONLR=(GPIOB0->CONLR&0XFF0FFFFF) | 0x00900000;break;
    2b4e:	b200      	st.w      	r0, (r2, 0x0)
    2b50:	0407      	br      	0x2b5e	// 2b5e <TK_IO_Init+0x6e>
					case 1:GPIOA0->CONLR=(GPIOA0->CONLR&0XFFFFFFF0) | 0x00000009;break;
    2b52:	9300      	ld.w      	r0, (r3, 0x0)
    2b54:	370f      	movi      	r7, 15
    2b56:	681d      	andn      	r0, r7
    2b58:	38a0      	bseti      	r0, 0
    2b5a:	38a3      	bseti      	r0, 3
					case 5:GPIOA0->CONLR=(GPIOA0->CONLR&0XFFF0FFFF) | 0x00090000;break;
    2b5c:	b300      	st.w      	r0, (r3, 0x0)
    2b5e:	2400      	addi      	r4, 1
		for (i=0;i<17;i++)
    2b60:	3c51      	cmpnei      	r4, 17
    2b62:	0bdd      	bt      	0x2b1c	// 2b1c <TK_IO_Init+0x2c>
			
				}
			}
		}
}
    2b64:	1402      	addi      	r14, r14, 8
    2b66:	1494      	pop      	r4-r7, r15
					case 2:GPIOA0->CONLR=(GPIOA0->CONLR&0XFFFFFF0F) | 0x00000090;break;
    2b68:	9300      	ld.w      	r0, (r3, 0x0)
    2b6a:	37f0      	movi      	r7, 240
    2b6c:	681d      	andn      	r0, r7
    2b6e:	38a4      	bseti      	r0, 4
    2b70:	38a7      	bseti      	r0, 7
    2b72:	07f5      	br      	0x2b5c	// 2b5c <TK_IO_Init+0x6c>
					case 3:GPIOA0->CONLR=(GPIOA0->CONLR&0XFFFFF0FF) | 0x00000900;break;
    2b74:	37f0      	movi      	r7, 240
    2b76:	9300      	ld.w      	r0, (r3, 0x0)
    2b78:	47e4      	lsli      	r7, r7, 4
    2b7a:	681d      	andn      	r0, r7
    2b7c:	38a8      	bseti      	r0, 8
    2b7e:	38ab      	bseti      	r0, 11
    2b80:	07ee      	br      	0x2b5c	// 2b5c <TK_IO_Init+0x6c>
					case 4:GPIOA0->CONLR=(GPIOA0->CONLR&0XFFFF0FFF) | 0x00009000;break;
    2b82:	9300      	ld.w      	r0, (r3, 0x0)
    2b84:	6819      	andn      	r0, r6
    2b86:	38ac      	bseti      	r0, 12
    2b88:	38af      	bseti      	r0, 15
    2b8a:	07e9      	br      	0x2b5c	// 2b5c <TK_IO_Init+0x6c>
					case 5:GPIOA0->CONLR=(GPIOA0->CONLR&0XFFF0FFFF) | 0x00090000;break;
    2b8c:	9300      	ld.w      	r0, (r3, 0x0)
    2b8e:	6815      	andn      	r0, r5
    2b90:	38b0      	bseti      	r0, 16
    2b92:	38b3      	bseti      	r0, 19
    2b94:	07e4      	br      	0x2b5c	// 2b5c <TK_IO_Init+0x6c>
					case 6:GPIOB0->CONLR=(GPIOB0->CONLR&0XFFFFF0FF) | 0x00000900;break;
    2b96:	37f0      	movi      	r7, 240
    2b98:	9200      	ld.w      	r0, (r2, 0x0)
    2b9a:	47e4      	lsli      	r7, r7, 4
    2b9c:	681d      	andn      	r0, r7
    2b9e:	38a8      	bseti      	r0, 8
    2ba0:	38ab      	bseti      	r0, 11
    2ba2:	07d6      	br      	0x2b4e	// 2b4e <TK_IO_Init+0x5e>
					case 7:GPIOB0->CONLR=(GPIOB0->CONLR&0XFFFF0FFF) | 0x00009000;break;
    2ba4:	9200      	ld.w      	r0, (r2, 0x0)
    2ba6:	6819      	andn      	r0, r6
    2ba8:	38ac      	bseti      	r0, 12
    2baa:	38af      	bseti      	r0, 15
    2bac:	07d1      	br      	0x2b4e	// 2b4e <TK_IO_Init+0x5e>
					case 8:GPIOA0->CONHR=(GPIOA0->CONHR&0XFFFFFFF0) | 0x00000009;break;
    2bae:	9301      	ld.w      	r0, (r3, 0x4)
    2bb0:	370f      	movi      	r7, 15
    2bb2:	681d      	andn      	r0, r7
    2bb4:	38a0      	bseti      	r0, 0
    2bb6:	38a3      	bseti      	r0, 3
					case 13:GPIOA0->CONHR=(GPIOA0->CONHR&0XFF0FFFFF) | 0x00900000;break;
    2bb8:	b301      	st.w      	r0, (r3, 0x4)
    2bba:	07d2      	br      	0x2b5e	// 2b5e <TK_IO_Init+0x6e>
					case 9:GPIOA0->CONHR=(GPIOA0->CONHR&0XFFFFFF0F) | 0x00000090;break;
    2bbc:	9301      	ld.w      	r0, (r3, 0x4)
    2bbe:	37f0      	movi      	r7, 240
    2bc0:	681d      	andn      	r0, r7
    2bc2:	38a4      	bseti      	r0, 4
    2bc4:	38a7      	bseti      	r0, 7
    2bc6:	07f9      	br      	0x2bb8	// 2bb8 <TK_IO_Init+0xc8>
					case 10:GPIOA0->CONHR=(GPIOA0->CONHR&0XFFFFF0FF) | 0x00000900;break;
    2bc8:	37f0      	movi      	r7, 240
    2bca:	9301      	ld.w      	r0, (r3, 0x4)
    2bcc:	47e4      	lsli      	r7, r7, 4
    2bce:	681d      	andn      	r0, r7
    2bd0:	38a8      	bseti      	r0, 8
    2bd2:	38ab      	bseti      	r0, 11
    2bd4:	07f2      	br      	0x2bb8	// 2bb8 <TK_IO_Init+0xc8>
					case 11:GPIOA0->CONHR=(GPIOA0->CONHR&0XFFFF0FFF) | 0x00009000;break;
    2bd6:	9301      	ld.w      	r0, (r3, 0x4)
    2bd8:	6819      	andn      	r0, r6
    2bda:	38ac      	bseti      	r0, 12
    2bdc:	38af      	bseti      	r0, 15
    2bde:	07ed      	br      	0x2bb8	// 2bb8 <TK_IO_Init+0xc8>
					case 12:GPIOA0->CONHR=(GPIOA0->CONHR&0XFFF0FFFF) | 0x00090000;break;
    2be0:	9301      	ld.w      	r0, (r3, 0x4)
    2be2:	6815      	andn      	r0, r5
    2be4:	38b0      	bseti      	r0, 16
    2be6:	38b3      	bseti      	r0, 19
    2be8:	07e8      	br      	0x2bb8	// 2bb8 <TK_IO_Init+0xc8>
					case 13:GPIOA0->CONHR=(GPIOA0->CONHR&0XFF0FFFFF) | 0x00900000;break;
    2bea:	9301      	ld.w      	r0, (r3, 0x4)
    2bec:	9820      	ld.w      	r1, (r14, 0x0)
    2bee:	6805      	andn      	r0, r1
    2bf0:	38b4      	bseti      	r0, 20
    2bf2:	38b7      	bseti      	r0, 23
    2bf4:	07e2      	br      	0x2bb8	// 2bb8 <TK_IO_Init+0xc8>
					case 14:GPIOB0->CONLR=(GPIOB0->CONLR&0XFFFFFFF0) | 0x00000009;break;
    2bf6:	9200      	ld.w      	r0, (r2, 0x0)
    2bf8:	370f      	movi      	r7, 15
    2bfa:	681d      	andn      	r0, r7
    2bfc:	38a0      	bseti      	r0, 0
    2bfe:	38a3      	bseti      	r0, 3
    2c00:	07a7      	br      	0x2b4e	// 2b4e <TK_IO_Init+0x5e>
					case 15:GPIOB0->CONLR=(GPIOB0->CONLR&0XFFF0FFFF) | 0x00090000;break;
    2c02:	9200      	ld.w      	r0, (r2, 0x0)
    2c04:	6815      	andn      	r0, r5
    2c06:	38b0      	bseti      	r0, 16
    2c08:	38b3      	bseti      	r0, 19
    2c0a:	07a2      	br      	0x2b4e	// 2b4e <TK_IO_Init+0x5e>
					case 16:GPIOB0->CONLR=(GPIOB0->CONLR&0XFF0FFFFF) | 0x00900000;break;
    2c0c:	9200      	ld.w      	r0, (r2, 0x0)
    2c0e:	9820      	ld.w      	r1, (r14, 0x0)
    2c10:	6805      	andn      	r0, r1
    2c12:	38b4      	bseti      	r0, 20
    2c14:	38b7      	bseti      	r0, 23
    2c16:	079c      	br      	0x2b4e	// 2b4e <TK_IO_Init+0x5e>
    2c18:	2000004c 	.long	0x2000004c
    2c1c:	200000dc 	.long	0x200000dc
    2c20:	20000048 	.long	0x20000048

Disassembly of section .text.TK_Sampling_prog:

00002c24 <TK_Sampling_prog>:
unsigned char tk_num_temp;
/****************************************************
//TK IO ENABLE
*****************************************************/
void TK_Sampling_prog(void)
{
    2c24:	14c4      	push      	r4-r7
    2c26:	1421      	subi      	r14, r14, 4
	unsigned char i=0;
	for (TK_sq_Temp;TK_sq_Temp<17;TK_sq_Temp++)
    {
        if (((TK_IO_Temp >> TK_sq_Temp) & 1) == 1)
    2c28:	1158      	lrw      	r2, 0x20000178	// 2d08 <TK_Sampling_prog+0xe4>
    2c2a:	1179      	lrw      	r3, 0x2000009c	// 2d0c <TK_Sampling_prog+0xe8>
    2c2c:	83a0      	ld.b      	r5, (r3, 0x0)
    2c2e:	92e0      	ld.w      	r7, (r2, 0x0)
	for (TK_sq_Temp;TK_sq_Temp<17;TK_sq_Temp++)
    2c30:	3400      	movi      	r4, 0
    2c32:	b840      	st.w      	r2, (r14, 0x0)
    2c34:	7414      	zextb      	r0, r5
    2c36:	3810      	cmphsi      	r0, 17
    2c38:	0c0d      	bf      	0x2c52	// 2c52 <TK_Sampling_prog+0x2e>
    2c3a:	3c40      	cmpnei      	r4, 0
    2c3c:	0c02      	bf      	0x2c40	// 2c40 <TK_Sampling_prog+0x1c>
    2c3e:	a300      	st.b      	r0, (r3, 0x0)
			TK_IO_Temp&=~(0x01<<TK_sq_Temp);
			tk_num_temp++;
			break;
		}
    }
	if(TK_sq_Temp==17)
    2c40:	3851      	cmpnei      	r0, 17
    2c42:	0830      	bt      	0x2ca2	// 2ca2 <TK_Sampling_prog+0x7e>
		{
			TK_sq_Temp=0;
    2c44:	3200      	movi      	r2, 0
			TK_IO_Temp=TK_IO_ENABLE;
    2c46:	1133      	lrw      	r1, 0x200000dc	// 2d10 <TK_Sampling_prog+0xec>
    2c48:	9120      	ld.w      	r1, (r1, 0x0)
			TK_sq_Temp=0;
    2c4a:	a340      	st.b      	r2, (r3, 0x0)
			TK_IO_Temp=TK_IO_ENABLE;
    2c4c:	9840      	ld.w      	r2, (r14, 0x0)
    2c4e:	b220      	st.w      	r1, (r2, 0x0)
    2c50:	0429      	br      	0x2ca2	// 2ca2 <TK_Sampling_prog+0x7e>
        if (((TK_IO_Temp >> TK_sq_Temp) & 1) == 1)
    2c52:	6c57      	mov      	r1, r5
    2c54:	6d9f      	mov      	r6, r7
    2c56:	7185      	lsr      	r6, r1
    2c58:	3201      	movi      	r2, 1
    2c5a:	6988      	and      	r6, r2
    2c5c:	3e40      	cmpnei      	r6, 0
    2c5e:	2500      	addi      	r5, 1
    2c60:	0c51      	bf      	0x2d02	// 2d02 <TK_Sampling_prog+0xde>
    2c62:	3c40      	cmpnei      	r4, 0
    2c64:	0c02      	bf      	0x2c68	// 2c68 <TK_Sampling_prog+0x44>
    2c66:	a300      	st.b      	r0, (r3, 0x0)
			TKEYBUF->TCH_SEQCON[0]=(tk_div[TK_sq_Temp]<<24)|(TK_icon[TK_sq_Temp]<<20)|(TK_sq_Temp<<15)|(TK_senprd[TK_sq_Temp]<<0);
    2c68:	110b      	lrw      	r0, 0x20000054	// 2d14 <TK_Sampling_prog+0xf0>
    2c6a:	11ac      	lrw      	r5, 0x200000e2	// 2d18 <TK_Sampling_prog+0xf4>
    2c6c:	41cf      	lsli      	r6, r1, 15
    2c6e:	9080      	ld.w      	r4, (r0, 0x0)
    2c70:	4101      	lsli      	r0, r1, 1
    2c72:	6140      	addu      	r5, r0
    2c74:	8da0      	ld.h      	r5, (r5, 0x0)
    2c76:	6d58      	or      	r5, r6
    2c78:	11c9      	lrw      	r6, 0x20000068	// 2d1c <TK_Sampling_prog+0xf8>
    2c7a:	6180      	addu      	r6, r0
    2c7c:	1149      	lrw      	r2, 0x200000b2	// 2d20 <TK_Sampling_prog+0xfc>
    2c7e:	6008      	addu      	r0, r2
    2c80:	8ec0      	ld.h      	r6, (r6, 0x0)
    2c82:	46d8      	lsli      	r6, r6, 24
    2c84:	8800      	ld.h      	r0, (r0, 0x0)
    2c86:	6d58      	or      	r5, r6
    2c88:	4014      	lsli      	r0, r0, 20
    2c8a:	6c14      	or      	r0, r5
    2c8c:	b412      	st.w      	r0, (r4, 0x48)
			TK_IO_Temp&=~(0x01<<TK_sq_Temp);
    2c8e:	3000      	movi      	r0, 0
    2c90:	2801      	subi      	r0, 2
    2c92:	7007      	rotl      	r0, r1
    2c94:	9840      	ld.w      	r2, (r14, 0x0)
    2c96:	69c0      	and      	r7, r0
			tk_num_temp++;
    2c98:	1123      	lrw      	r1, 0x20000266	// 2d24 <TK_Sampling_prog+0x100>
			TK_IO_Temp&=~(0x01<<TK_sq_Temp);
    2c9a:	b2e0      	st.w      	r7, (r2, 0x0)
			tk_num_temp++;
    2c9c:	8140      	ld.b      	r2, (r1, 0x0)
    2c9e:	2200      	addi      	r2, 1
    2ca0:	a140      	st.b      	r2, (r1, 0x0)
		}
		TKEY->TCH_CON1   = 0X01;
    2ca2:	1142      	lrw      	r2, 0x20000058	// 2d28 <TK_Sampling_prog+0x104>
		scan_f=1;
    2ca4:	3001      	movi      	r0, 1
		TKEY->TCH_CON1   = 0X01;
    2ca6:	9220      	ld.w      	r1, (r2, 0x0)
    2ca8:	3201      	movi      	r2, 1
    2caa:	b142      	st.w      	r2, (r1, 0x8)
		while(!((TKEY->TCH_RISR&0x02)==0x02));
    2cac:	3402      	movi      	r4, 2
		scan_f=1;
    2cae:	1140      	lrw      	r2, 0x200001d6	// 2d2c <TK_Sampling_prog+0x108>
    2cb0:	a200      	st.b      	r0, (r2, 0x0)
		while(!((TKEY->TCH_RISR&0x02)==0x02));
    2cb2:	910a      	ld.w      	r0, (r1, 0x28)
    2cb4:	6810      	and      	r0, r4
    2cb6:	3840      	cmpnei      	r0, 0
    2cb8:	0ffd      	bf      	0x2cb2	// 2cb2 <TK_Sampling_prog+0x8e>
		TKEY->TCH_ICR = 0xff;
    2cba:	30ff      	movi      	r0, 255
    2cbc:	b10c      	st.w      	r0, (r1, 0x30)
		scan_f=0;
    2cbe:	3100      	movi      	r1, 0
    2cc0:	a220      	st.b      	r1, (r2, 0x0)
		sampling_data0[TK_sq_Temp]=TKEYBUF->TCH_CHVAL[TK_sq_Temp];
    2cc2:	8360      	ld.b      	r3, (r3, 0x0)
    2cc4:	1054      	lrw      	r2, 0x20000054	// 2d14 <TK_Sampling_prog+0xf0>
    2cc6:	4322      	lsli      	r1, r3, 2
    2cc8:	9240      	ld.w      	r2, (r2, 0x0)
    2cca:	6084      	addu      	r2, r1
    2ccc:	9240      	ld.w      	r2, (r2, 0x0)
    2cce:	4361      	lsli      	r3, r3, 1
    2cd0:	1038      	lrw      	r1, 0x2000041e	// 2d30 <TK_Sampling_prog+0x10c>
    2cd2:	60c4      	addu      	r3, r1
    2cd4:	7489      	zexth      	r2, r2
    2cd6:	ab40      	st.h      	r2, (r3, 0x0)
    2cd8:	6d07      	mov      	r4, r1
		if(base_update_f==1)
    2cda:	1077      	lrw      	r3, 0x2000028f	// 2d34 <TK_Sampling_prog+0x110>
    2cdc:	8340      	ld.b      	r2, (r3, 0x0)
    2cde:	3a41      	cmpnei      	r2, 1
    2ce0:	6c4f      	mov      	r1, r3
    2ce2:	080e      	bt      	0x2cfe	// 2cfe <TK_Sampling_prog+0xda>
    2ce4:	3000      	movi      	r0, 0
		{
			for (i=0;i<17;i++)
			{
			baseline_data0[i]=sampling_data0[i];
    2ce6:	10b5      	lrw      	r5, 0x2000017c	// 2d38 <TK_Sampling_prog+0x114>
    2ce8:	4061      	lsli      	r3, r0, 1
    2cea:	5c4c      	addu      	r2, r4, r3
    2cec:	8a40      	ld.h      	r2, (r2, 0x0)
    2cee:	2000      	addi      	r0, 1
    2cf0:	7489      	zexth      	r2, r2
    2cf2:	60d4      	addu      	r3, r5
			for (i=0;i<17;i++)
    2cf4:	3851      	cmpnei      	r0, 17
			baseline_data0[i]=sampling_data0[i];
    2cf6:	ab40      	st.h      	r2, (r3, 0x0)
			for (i=0;i<17;i++)
    2cf8:	0bf8      	bt      	0x2ce8	// 2ce8 <TK_Sampling_prog+0xc4>
			}
			base_update_f=0;
    2cfa:	3300      	movi      	r3, 0
    2cfc:	a160      	st.b      	r3, (r1, 0x0)
		 }
}
    2cfe:	1401      	addi      	r14, r14, 4
    2d00:	1484      	pop      	r4-r7
    2d02:	3401      	movi      	r4, 1
    2d04:	0798      	br      	0x2c34	// 2c34 <TK_Sampling_prog+0x10>
    2d06:	0000      	bkpt
    2d08:	20000178 	.long	0x20000178
    2d0c:	2000009c 	.long	0x2000009c
    2d10:	200000dc 	.long	0x200000dc
    2d14:	20000054 	.long	0x20000054
    2d18:	200000e2 	.long	0x200000e2
    2d1c:	20000068 	.long	0x20000068
    2d20:	200000b2 	.long	0x200000b2
    2d24:	20000266 	.long	0x20000266
    2d28:	20000058 	.long	0x20000058
    2d2c:	200001d6 	.long	0x200001d6
    2d30:	2000041e 	.long	0x2000041e
    2d34:	2000028f 	.long	0x2000028f
    2d38:	2000017c 	.long	0x2000017c

Disassembly of section .text.TKEYIntHandler:

00002d3c <TKEYIntHandler>:
//TKEY Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void TKEYIntHandler(void) 
{
    2d3c:	1460      	nie
    2d3e:	1462      	ipush
    // ISR content ...
	s_tkey=1;
    2d40:	3201      	movi      	r2, 1
    2d42:	1075      	lrw      	r3, 0x20000068	// 2d94 <TKEYIntHandler+0x58>
    2d44:	b349      	st.w      	r2, (r3, 0x24)
	 if((TKEY->TCH_RISR&TKEY_SINDNE)==TKEY_SINDNE)
    2d46:	1075      	lrw      	r3, 0x20000058	// 2d98 <TKEYIntHandler+0x5c>
    2d48:	9360      	ld.w      	r3, (r3, 0x0)
    2d4a:	932a      	ld.w      	r1, (r3, 0x28)
    2d4c:	6848      	and      	r1, r2
    2d4e:	3940      	cmpnei      	r1, 0
    2d50:	0c02      	bf      	0x2d54	// 2d54 <TKEYIntHandler+0x18>
	{
		TKEY->TCH_ICR = TKEY_SINDNE;
    2d52:	b34c      	st.w      	r2, (r3, 0x30)
	}
	if((TKEY->TCH_RISR&TKEY_DNE)==TKEY_DNE)
    2d54:	934a      	ld.w      	r2, (r3, 0x28)
    2d56:	3102      	movi      	r1, 2
    2d58:	6884      	and      	r2, r1
    2d5a:	3a40      	cmpnei      	r2, 0
    2d5c:	0c02      	bf      	0x2d60	// 2d60 <TKEYIntHandler+0x24>
	{
		TKEY->TCH_ICR = TKEY_DNE;
    2d5e:	b32c      	st.w      	r1, (r3, 0x30)
	}
	if((TKEY->TCH_RISR&TKEY_THR)==TKEY_THR)
    2d60:	934a      	ld.w      	r2, (r3, 0x28)
    2d62:	3104      	movi      	r1, 4
    2d64:	6884      	and      	r2, r1
    2d66:	3a40      	cmpnei      	r2, 0
    2d68:	0c02      	bf      	0x2d6c	// 2d6c <TKEYIntHandler+0x30>
	{
		TKEY->TCH_ICR = TKEY_THR;
    2d6a:	b32c      	st.w      	r1, (r3, 0x30)
	}
	if((TKEY->TCH_RISR&TKEY_FLW)==TKEY_FLW)
    2d6c:	934a      	ld.w      	r2, (r3, 0x28)
    2d6e:	3108      	movi      	r1, 8
    2d70:	6884      	and      	r2, r1
    2d72:	3a40      	cmpnei      	r2, 0
    2d74:	0c02      	bf      	0x2d78	// 2d78 <TKEYIntHandler+0x3c>
	{
		TKEY->TCH_ICR = TKEY_FLW;
    2d76:	b32c      	st.w      	r1, (r3, 0x30)
	}
	if((TKEY->TCH_RISR&TKEY_OVW)==TKEY_OVW)
    2d78:	934a      	ld.w      	r2, (r3, 0x28)
    2d7a:	3110      	movi      	r1, 16
    2d7c:	6884      	and      	r2, r1
    2d7e:	3a40      	cmpnei      	r2, 0
    2d80:	0c02      	bf      	0x2d84	// 2d84 <TKEYIntHandler+0x48>
	{
		TKEY->TCH_ICR = TKEY_OVW;
    2d82:	b32c      	st.w      	r1, (r3, 0x30)
	}
	if((TKEY->TCH_RISR&TKEY_TIME)==TKEY_TIME)
    2d84:	934a      	ld.w      	r2, (r3, 0x28)
    2d86:	3120      	movi      	r1, 32
    2d88:	6884      	and      	r2, r1
    2d8a:	3a40      	cmpnei      	r2, 0
    2d8c:	0c02      	bf      	0x2d90	// 2d90 <TKEYIntHandler+0x54>
	{
		TKEY->TCH_ICR = TKEY_TIME;
    2d8e:	b32c      	st.w      	r1, (r3, 0x30)
	}

}
    2d90:	1463      	ipop
    2d92:	1461      	nir
    2d94:	20000068 	.long	0x20000068
    2d98:	20000058 	.long	0x20000058

Disassembly of section .text.get_key_number:

00002d9c <get_key_number>:
/****************************************************
//TK get press number
*****************************************************/
unsigned char get_key_number(void)
{                  
    2d9c:	14c2      	push      	r4-r5
    int count = 0;
    int i = 0;
    2d9e:	3200      	movi      	r2, 0
    int count = 0;
    2da0:	3000      	movi      	r0, 0
    for (; i<32; i++)
    {
        if (((Key_Map >> i) & 1) == 1)
    2da2:	1088      	lrw      	r4, 0x200002ac	// 2dc0 <get_key_number+0x24>
    2da4:	3501      	movi      	r5, 1
    for (; i<32; i++)
    2da6:	3120      	movi      	r1, 32
        if (((Key_Map >> i) & 1) == 1)
    2da8:	9460      	ld.w      	r3, (r4, 0x0)
    2daa:	70c9      	lsr      	r3, r2
    2dac:	68d4      	and      	r3, r5
    2dae:	3b40      	cmpnei      	r3, 0
    2db0:	0c02      	bf      	0x2db4	// 2db4 <get_key_number+0x18>
            count++;
    2db2:	2000      	addi      	r0, 1
    for (; i<32; i++)
    2db4:	2200      	addi      	r2, 1
    2db6:	644a      	cmpne      	r2, r1
    2db8:	0bf8      	bt      	0x2da8	// 2da8 <get_key_number+0xc>
    }
    return count;
    2dba:	7400      	zextb      	r0, r0
}
    2dbc:	1482      	pop      	r4-r5
    2dbe:	0000      	bkpt
    2dc0:	200002ac 	.long	0x200002ac

Disassembly of section .text.TK_Baseline_prog:

00002dc4 <TK_Baseline_prog>:
/****************************************************
//TK baseline program
*****************************************************/
void TK_Baseline_prog(void)
{
    2dc4:	14c4      	push      	r4-r7
    2dc6:	1422      	subi      	r14, r14, 8
	unsigned char i,k;
	for(k=0;k<=10;k++)
	{
		TKEY->TCH_CON1   = 0X01;
    2dc8:	1076      	lrw      	r3, 0x20000058	// 2e20 <TK_Baseline_prog+0x5c>
		while(!((TKEY->TCH_RISR&0x02)==0x02));
		TKEY->TCH_ICR = 0xff;
		for (i=0;i<17;i++)
		{
			baseline_data0[i]=TKEYBUF->TCH_CHVAL[i];
    2dca:	1057      	lrw      	r2, 0x2000017c	// 2e24 <TK_Baseline_prog+0x60>
			sampling_data0[i]=TKEYBUF->TCH_CHVAL[i];
    2dcc:	10d7      	lrw      	r6, 0x2000041e	// 2e28 <TK_Baseline_prog+0x64>
			baseline_data0[i]=TKEYBUF->TCH_CHVAL[i];
    2dce:	b841      	st.w      	r2, (r14, 0x4)
		TKEY->TCH_CON1   = 0X01;
    2dd0:	9380      	ld.w      	r4, (r3, 0x0)
			baseline_data0[i]=TKEYBUF->TCH_CHVAL[i];
    2dd2:	1077      	lrw      	r3, 0x20000054	// 2e2c <TK_Baseline_prog+0x68>
    2dd4:	9360      	ld.w      	r3, (r3, 0x0)
    2dd6:	b860      	st.w      	r3, (r14, 0x0)
    2dd8:	330b      	movi      	r3, 11
		TKEY->TCH_CON1   = 0X01;
    2dda:	3201      	movi      	r2, 1
    2ddc:	b442      	st.w      	r2, (r4, 0x8)
		while(!((TKEY->TCH_RISR&0x02)==0x02));
    2dde:	3102      	movi      	r1, 2
    2de0:	944a      	ld.w      	r2, (r4, 0x28)
    2de2:	6884      	and      	r2, r1
    2de4:	3a40      	cmpnei      	r2, 0
    2de6:	0ffd      	bf      	0x2de0	// 2de0 <TK_Baseline_prog+0x1c>
		TKEY->TCH_ICR = 0xff;
    2de8:	32ff      	movi      	r2, 255
    2dea:	b44c      	st.w      	r2, (r4, 0x30)
    2dec:	3200      	movi      	r2, 0
    2dee:	4202      	lsli      	r0, r2, 2
    2df0:	9820      	ld.w      	r1, (r14, 0x0)
    2df2:	6004      	addu      	r0, r1
			baseline_data0[i]=TKEYBUF->TCH_CHVAL[i];
    2df4:	90a0      	ld.w      	r5, (r0, 0x0)
    2df6:	4221      	lsli      	r1, r2, 1
    2df8:	98e1      	ld.w      	r7, (r14, 0x4)
    2dfa:	61c4      	addu      	r7, r1
    2dfc:	7555      	zexth      	r5, r5
    2dfe:	afa0      	st.h      	r5, (r7, 0x0)
			sampling_data0[i]=TKEYBUF->TCH_CHVAL[i];
    2e00:	9000      	ld.w      	r0, (r0, 0x0)
    2e02:	2200      	addi      	r2, 1
    2e04:	7401      	zexth      	r0, r0
    2e06:	6058      	addu      	r1, r6
		for (i=0;i<17;i++)
    2e08:	3a51      	cmpnei      	r2, 17
			sampling_data0[i]=TKEYBUF->TCH_CHVAL[i];
    2e0a:	a900      	st.h      	r0, (r1, 0x0)
		for (i=0;i<17;i++)
    2e0c:	0bf1      	bt      	0x2dee	// 2dee <TK_Baseline_prog+0x2a>
    2e0e:	2b00      	subi      	r3, 1
    2e10:	74cc      	zextb      	r3, r3
	for(k=0;k<=10;k++)
    2e12:	3b40      	cmpnei      	r3, 0
    2e14:	0be3      	bt      	0x2dda	// 2dda <TK_Baseline_prog+0x16>
		}
	}
	bsae_over_f=1;
    2e16:	1067      	lrw      	r3, 0x20000210	// 2e30 <TK_Baseline_prog+0x6c>
    2e18:	3201      	movi      	r2, 1
    2e1a:	a340      	st.b      	r2, (r3, 0x0)
}
    2e1c:	1402      	addi      	r14, r14, 8
    2e1e:	1484      	pop      	r4-r7
    2e20:	20000058 	.long	0x20000058
    2e24:	2000017c 	.long	0x2000017c
    2e28:	2000041e 	.long	0x2000041e
    2e2c:	20000054 	.long	0x20000054
    2e30:	20000210 	.long	0x20000210

Disassembly of section .text.TK_Baseline_prog2:

00002e34 <TK_Baseline_prog2>:

void TK_Baseline_prog2(void)
{
    2e34:	14c4      	push      	r4-r7
	unsigned char i,k;

		TKEY->TCH_CON1   = 0X01;
    2e36:	1072      	lrw      	r3, 0x20000058	// 2e7c <TK_Baseline_prog2+0x48>
    2e38:	3201      	movi      	r2, 1
    2e3a:	9360      	ld.w      	r3, (r3, 0x0)
    2e3c:	b342      	st.w      	r2, (r3, 0x8)
		while(!((TKEY->TCH_RISR&0x02)==0x02));
    2e3e:	3102      	movi      	r1, 2
    2e40:	934a      	ld.w      	r2, (r3, 0x28)
    2e42:	6884      	and      	r2, r1
    2e44:	3a40      	cmpnei      	r2, 0
    2e46:	0ffd      	bf      	0x2e40	// 2e40 <TK_Baseline_prog2+0xc>
		TKEY->TCH_ICR = 0xff;
    2e48:	32ff      	movi      	r2, 255
    2e4a:	b34c      	st.w      	r2, (r3, 0x30)
		for (i=0;i<17;i++)
		{
			baseline_data0[i]=TKEYBUF->TCH_CHVAL[i];
    2e4c:	108d      	lrw      	r4, 0x2000017c	// 2e80 <TK_Baseline_prog2+0x4c>
    2e4e:	106e      	lrw      	r3, 0x20000054	// 2e84 <TK_Baseline_prog2+0x50>
			sampling_data0[i]=TKEYBUF->TCH_CHVAL[i];
    2e50:	100e      	lrw      	r0, 0x2000041e	// 2e88 <TK_Baseline_prog2+0x54>
			baseline_data0[i]=TKEYBUF->TCH_CHVAL[i];
    2e52:	93a0      	ld.w      	r5, (r3, 0x0)
    2e54:	3300      	movi      	r3, 0
    2e56:	4322      	lsli      	r1, r3, 2
    2e58:	6054      	addu      	r1, r5
    2e5a:	91c0      	ld.w      	r6, (r1, 0x0)
    2e5c:	4341      	lsli      	r2, r3, 1
    2e5e:	5ce8      	addu      	r7, r4, r2
    2e60:	7599      	zexth      	r6, r6
    2e62:	afc0      	st.h      	r6, (r7, 0x0)
			sampling_data0[i]=TKEYBUF->TCH_CHVAL[i];
    2e64:	9120      	ld.w      	r1, (r1, 0x0)
    2e66:	2300      	addi      	r3, 1
    2e68:	7445      	zexth      	r1, r1
    2e6a:	6080      	addu      	r2, r0
		for (i=0;i<17;i++)
    2e6c:	3b51      	cmpnei      	r3, 17
			sampling_data0[i]=TKEYBUF->TCH_CHVAL[i];
    2e6e:	aa20      	st.h      	r1, (r2, 0x0)
		for (i=0;i<17;i++)
    2e70:	0bf3      	bt      	0x2e56	// 2e56 <TK_Baseline_prog2+0x22>
		}
	bsae_over_f=1;
    2e72:	1067      	lrw      	r3, 0x20000210	// 2e8c <TK_Baseline_prog2+0x58>
    2e74:	3201      	movi      	r2, 1
    2e76:	a340      	st.b      	r2, (r3, 0x0)
}
    2e78:	1484      	pop      	r4-r7
    2e7a:	0000      	bkpt
    2e7c:	20000058 	.long	0x20000058
    2e80:	2000017c 	.long	0x2000017c
    2e84:	20000054 	.long	0x20000054
    2e88:	2000041e 	.long	0x2000041e
    2e8c:	20000210 	.long	0x20000210

Disassembly of section .text.tk_poweron_data_fineturn:

00002e90 <tk_poweron_data_fineturn>:

void tk_poweron_data_fineturn(void)
{
    2e90:	14d4      	push      	r4-r7, r15
    2e92:	1433      	subi      	r14, r14, 76
	U8_T i,tk_icon_f;
	U32_T tk_target_data[17];
	if(tk_dataturn_en==1)
    2e94:	117e      	lrw      	r3, 0x20000088	// 2f8c <tk_poweron_data_fineturn+0xfc>
    2e96:	8368      	ld.b      	r3, (r3, 0x8)
    2e98:	3b41      	cmpnei      	r3, 1
    2e9a:	0877      	bt      	0x2f88	// 2f88 <tk_poweron_data_fineturn+0xf8>
		tk_target_data[i]=(TK_senprd[i]*16+15)*2;
	}
	for (i=0;i<17;i++)
		{
		
			if((sampling_data0[i]!=0)&&(sampling_data1[i]!=0)&&(sampling_data2[i]!=0))
    2e9c:	117d      	lrw      	r3, 0x2000041e	// 2f90 <tk_poweron_data_fineturn+0x100>
    2e9e:	b860      	st.w      	r3, (r14, 0x0)
{
    2ea0:	3300      	movi      	r3, 0
		tk_target_data[i]=(TK_senprd[i]*16+15)*2;
    2ea2:	301e      	movi      	r0, 30
    2ea4:	4321      	lsli      	r1, r3, 1
    2ea6:	1a02      	addi      	r2, r14, 8
    2ea8:	6048      	addu      	r1, r2
    2eaa:	115b      	lrw      	r2, 0x200000e2	// 2f94 <tk_poweron_data_fineturn+0x104>
    2eac:	608c      	addu      	r2, r3
    2eae:	8a40      	ld.h      	r2, (r2, 0x0)
    2eb0:	4245      	lsli      	r2, r2, 5
    2eb2:	6080      	addu      	r2, r0
    2eb4:	b140      	st.w      	r2, (r1, 0x0)
    2eb6:	2301      	addi      	r3, 2
	for (i=0;i<17;i++)
    2eb8:	3222      	movi      	r2, 34
    2eba:	648e      	cmpne      	r3, r2
    2ebc:	0bf4      	bt      	0x2ea4	// 2ea4 <tk_poweron_data_fineturn+0x14>
    2ebe:	1197      	lrw      	r4, 0x200000b2	// 2f98 <tk_poweron_data_fineturn+0x108>
    2ec0:	3200      	movi      	r2, 0
    2ec2:	3000      	movi      	r0, 0
    2ec4:	b881      	st.w      	r4, (r14, 0x4)
			if((sampling_data0[i]!=0)&&(sampling_data1[i]!=0)&&(sampling_data2[i]!=0))
    2ec6:	11d6      	lrw      	r6, 0x20000244	// 2f9c <tk_poweron_data_fineturn+0x10c>
    2ec8:	4261      	lsli      	r3, r2, 1
    2eca:	98a0      	ld.w      	r5, (r14, 0x0)
    2ecc:	614c      	addu      	r5, r3
    2ece:	8d20      	ld.h      	r1, (r5, 0x0)
    2ed0:	7445      	zexth      	r1, r1
    2ed2:	3940      	cmpnei      	r1, 0
    2ed4:	0c36      	bf      	0x2f40	// 2f40 <tk_poweron_data_fineturn+0xb0>
    2ed6:	5e2c      	addu      	r1, r6, r3
    2ed8:	8920      	ld.h      	r1, (r1, 0x0)
    2eda:	7445      	zexth      	r1, r1
    2edc:	3940      	cmpnei      	r1, 0
    2ede:	0c31      	bf      	0x2f40	// 2f40 <tk_poweron_data_fineturn+0xb0>
    2ee0:	1130      	lrw      	r1, 0x200002e4	// 2fa0 <tk_poweron_data_fineturn+0x110>
    2ee2:	60c4      	addu      	r3, r1
    2ee4:	8b60      	ld.h      	r3, (r3, 0x0)
    2ee6:	74cd      	zexth      	r3, r3
    2ee8:	3b40      	cmpnei      	r3, 0
    2eea:	0c2b      	bf      	0x2f40	// 2f40 <tk_poweron_data_fineturn+0xb0>
			{
			if((abs(sampling_data0[i]-tk_target_data[i])<5)||(abs(sampling_data1[i]-tk_target_data[i])<5)||(abs(sampling_data2[i]-tk_target_data[i])<5))
    2eec:	8d60      	ld.h      	r3, (r5, 0x0)
    2eee:	1f02      	addi      	r7, r14, 8
    2ef0:	42a2      	lsli      	r5, r2, 2
    2ef2:	615c      	addu      	r5, r7
    2ef4:	74cd      	zexth      	r3, r3
    2ef6:	95a0      	ld.w      	r5, (r5, 0x0)
    2ef8:	60d6      	subu      	r3, r5
    2efa:	3bdf      	btsti      	r3, 31
    2efc:	0c03      	bf      	0x2f02	// 2f02 <tk_poweron_data_fineturn+0x72>
    2efe:	3700      	movi      	r7, 0
    2f00:	5f6d      	subu      	r3, r7, r3
    2f02:	3b24      	cmplti      	r3, 5
    2f04:	0817      	bt      	0x2f32	// 2f32 <tk_poweron_data_fineturn+0xa2>
    2f06:	4261      	lsli      	r3, r2, 1
    2f08:	60d8      	addu      	r3, r6
    2f0a:	8b60      	ld.h      	r3, (r3, 0x0)
    2f0c:	74cd      	zexth      	r3, r3
    2f0e:	60d6      	subu      	r3, r5
    2f10:	3bdf      	btsti      	r3, 31
    2f12:	0c03      	bf      	0x2f18	// 2f18 <tk_poweron_data_fineturn+0x88>
    2f14:	3700      	movi      	r7, 0
    2f16:	5f6d      	subu      	r3, r7, r3
    2f18:	3b24      	cmplti      	r3, 5
    2f1a:	080c      	bt      	0x2f32	// 2f32 <tk_poweron_data_fineturn+0xa2>
    2f1c:	4261      	lsli      	r3, r2, 1
    2f1e:	604c      	addu      	r1, r3
    2f20:	8960      	ld.h      	r3, (r1, 0x0)
    2f22:	74cd      	zexth      	r3, r3
    2f24:	60d6      	subu      	r3, r5
    2f26:	3bdf      	btsti      	r3, 31
    2f28:	0c03      	bf      	0x2f2e	// 2f2e <tk_poweron_data_fineturn+0x9e>
    2f2a:	3100      	movi      	r1, 0
    2f2c:	596d      	subu      	r3, r1, r3
    2f2e:	3b24      	cmplti      	r3, 5
    2f30:	0c08      	bf      	0x2f40	// 2f40 <tk_poweron_data_fineturn+0xb0>
			{
				if(TK_icon[i]<7)
    2f32:	8c60      	ld.h      	r3, (r4, 0x0)
    2f34:	3b06      	cmphsi      	r3, 7
    2f36:	0805      	bt      	0x2f40	// 2f40 <tk_poweron_data_fineturn+0xb0>
				{
				TK_icon[i]++;
    2f38:	2300      	addi      	r3, 1
				tk_icon_f++;
    2f3a:	2000      	addi      	r0, 1
				TK_icon[i]++;
    2f3c:	ac60      	st.h      	r3, (r4, 0x0)
				tk_icon_f++;
    2f3e:	7400      	zextb      	r0, r0
    2f40:	2200      	addi      	r2, 1
	for (i=0;i<17;i++)
    2f42:	3a51      	cmpnei      	r2, 17
    2f44:	2401      	addi      	r4, 2
    2f46:	0bc1      	bt      	0x2ec8	// 2ec8 <tk_poweron_data_fineturn+0x38>
				}
			}
			}
		}
	if(tk_icon_f!=0)
    2f48:	3840      	cmpnei      	r0, 0
    2f4a:	0c1f      	bf      	0x2f88	// 2f88 <tk_poweron_data_fineturn+0xf8>
	{
	tk_icon_f=0;
	TKEY->TCH_CON1=0X00;
    2f4c:	1076      	lrw      	r3, 0x20000058	// 2fa4 <tk_poweron_data_fineturn+0x114>
    2f4e:	3200      	movi      	r2, 0
    2f50:	9360      	ld.w      	r3, (r3, 0x0)
    2f52:	b342      	st.w      	r2, (r3, 0x8)
	for(i=0;i<tk_num;i++)
		{
			TKEYBUF->TCH_SEQCON[i]|=TK_icon[tk_seque[i]]<<20;
    2f54:	10b5      	lrw      	r5, 0x20000384	// 2fa8 <tk_poweron_data_fineturn+0x118>
    2f56:	1076      	lrw      	r3, 0x20000054	// 2fac <tk_poweron_data_fineturn+0x11c>
	for(i=0;i<tk_num;i++)
    2f58:	1016      	lrw      	r0, 0x2000034b	// 2fb0 <tk_poweron_data_fineturn+0x120>
			TKEYBUF->TCH_SEQCON[i]|=TK_icon[tk_seque[i]]<<20;
    2f5a:	9380      	ld.w      	r4, (r3, 0x0)
	for(i=0;i<tk_num;i++)
    2f5c:	3300      	movi      	r3, 0
    2f5e:	8040      	ld.b      	r2, (r0, 0x0)
    2f60:	648c      	cmphs      	r3, r2
    2f62:	0c04      	bf      	0x2f6a	// 2f6a <tk_poweron_data_fineturn+0xda>
		}
		TK_Baseline_prog2();
    2f64:	e3ffff68 	bsr      	0x2e34	// 2e34 <TK_Baseline_prog2>
    2f68:	079c      	br      	0x2ea0	// 2ea0 <tk_poweron_data_fineturn+0x10>
			TKEYBUF->TCH_SEQCON[i]|=TK_icon[tk_seque[i]]<<20;
    2f6a:	5d4c      	addu      	r2, r5, r3
    2f6c:	8240      	ld.b      	r2, (r2, 0x0)
    2f6e:	4241      	lsli      	r2, r2, 1
    2f70:	98e1      	ld.w      	r7, (r14, 0x4)
    2f72:	4322      	lsli      	r1, r3, 2
    2f74:	609c      	addu      	r2, r7
    2f76:	6050      	addu      	r1, r4
    2f78:	8a40      	ld.h      	r2, (r2, 0x0)
    2f7a:	91d2      	ld.w      	r6, (r1, 0x48)
    2f7c:	4254      	lsli      	r2, r2, 20
    2f7e:	6c98      	or      	r2, r6
	for(i=0;i<tk_num;i++)
    2f80:	2300      	addi      	r3, 1
			TKEYBUF->TCH_SEQCON[i]|=TK_icon[tk_seque[i]]<<20;
    2f82:	b152      	st.w      	r2, (r1, 0x48)
	for(i=0;i<tk_num;i++)
    2f84:	74cc      	zextb      	r3, r3
    2f86:	07ec      	br      	0x2f5e	// 2f5e <tk_poweron_data_fineturn+0xce>
	}
	else break;
	}
	}
}
    2f88:	1413      	addi      	r14, r14, 76
    2f8a:	1494      	pop      	r4-r7, r15
    2f8c:	20000088 	.long	0x20000088
    2f90:	2000041e 	.long	0x2000041e
    2f94:	200000e2 	.long	0x200000e2
    2f98:	200000b2 	.long	0x200000b2
    2f9c:	20000244 	.long	0x20000244
    2fa0:	200002e4 	.long	0x200002e4
    2fa4:	20000058 	.long	0x20000058
    2fa8:	20000384 	.long	0x20000384
    2fac:	20000054 	.long	0x20000054
    2fb0:	2000034b 	.long	0x2000034b

Disassembly of section .text.TK_Keymap_prog:

00002fb4 <TK_Keymap_prog>:
}
/****************************************************
//TK get key map
*****************************************************/
void TK_Keymap_prog(void)
{
    2fb4:	14d4      	push      	r4-r7, r15
    2fb6:	1425      	subi      	r14, r14, 20
		else
		{
			offset_data0_abs[i]=offset_data0[i];
		}
		//=================Key_Map0============================
		if(MultiTimes_Filter>=4)
    2fb8:	1271      	lrw      	r3, 0x200000d4	// 30fc <TK_Keymap_prog+0x148>
    2fba:	8360      	ld.b      	r3, (r3, 0x0)
    2fbc:	b860      	st.w      	r3, (r14, 0x0)
		}
		if(offset_data0[i]<(TK_Triggerlevel[i]*4/5))
		{
			Release_debounce0[i]++;
			Press_debounce0[i]=0;
			if(Release_debounce0[i]>Release_debounce_data)
    2fbe:	3400      	movi      	r4, 0
			if(Press_debounce0[i]>Press_debounce_data)
    2fc0:	1270      	lrw      	r3, 0x200000a0	// 3100 <TK_Keymap_prog+0x14c>
    2fc2:	8360      	ld.b      	r3, (r3, 0x0)
    2fc4:	b861      	st.w      	r3, (r14, 0x4)
		offset_data0[i]=sampling_data0[i]-baseline_data0[i];
    2fc6:	12f0      	lrw      	r7, 0x20000222	// 3104 <TK_Keymap_prog+0x150>
				if((Key_mode==0)&&(Key_Map0==0))
    2fc8:	1270      	lrw      	r3, 0x200000b1	// 3108 <TK_Keymap_prog+0x154>
    2fca:	83a0      	ld.b      	r5, (r3, 0x0)
			if(Release_debounce0[i]>Release_debounce_data)
    2fcc:	1270      	lrw      	r3, 0x200000b0	// 310c <TK_Keymap_prog+0x158>
    2fce:	8360      	ld.b      	r3, (r3, 0x0)
    2fd0:	b862      	st.w      	r3, (r14, 0x8)
    2fd2:	6d9f      	mov      	r6, r7
		offset_data0[i]=sampling_data0[i]-baseline_data0[i];
    2fd4:	126f      	lrw      	r3, 0x2000041e	// 3110 <TK_Keymap_prog+0x15c>
    2fd6:	b863      	st.w      	r3, (r14, 0xc)
    2fd8:	4461      	lsli      	r3, r4, 1
    2fda:	9843      	ld.w      	r2, (r14, 0xc)
    2fdc:	608c      	addu      	r2, r3
    2fde:	122e      	lrw      	r1, 0x2000017c	// 3114 <TK_Keymap_prog+0x160>
    2fe0:	604c      	addu      	r1, r3
    2fe2:	8a40      	ld.h      	r2, (r2, 0x0)
    2fe4:	8920      	ld.h      	r1, (r1, 0x0)
    2fe6:	6086      	subu      	r2, r1
    2fe8:	748b      	sexth      	r2, r2
    2fea:	5f2c      	addu      	r1, r7, r3
    2fec:	a940      	st.h      	r2, (r1, 0x0)
		if(offset_data0[i]<0)
    2fee:	8940      	ld.h      	r2, (r1, 0x0)
    2ff0:	748b      	sexth      	r2, r2
    2ff2:	3adf      	btsti      	r2, 31
    2ff4:	1249      	lrw      	r2, 0x200003da	// 3118 <TK_Keymap_prog+0x164>
    2ff6:	608c      	addu      	r2, r3
    2ff8:	0c37      	bf      	0x3066	// 3066 <TK_Keymap_prog+0xb2>
			offset_data0_abs[i]=0;
    2ffa:	3100      	movi      	r1, 0
			offset_data0_abs[i]=offset_data0[i];
    2ffc:	aa20      	st.h      	r1, (r2, 0x0)
		if(MultiTimes_Filter>=4)
    2ffe:	9840      	ld.w      	r2, (r14, 0x0)
    3000:	3a03      	cmphsi      	r2, 4
    3002:	0c6d      	bf      	0x30dc	// 30dc <TK_Keymap_prog+0x128>
			if((offset_data0[i]>TK_Triggerlevel[i])&&(offset_data0[i]<(TK_Triggerlevel[i]*MultiTimes_Filter)))
    3004:	4461      	lsli      	r3, r4, 1
    3006:	5e2c      	addu      	r1, r6, r3
    3008:	1205      	lrw      	r0, 0x2000010a	// 311c <TK_Keymap_prog+0x168>
    300a:	8940      	ld.h      	r2, (r1, 0x0)
    300c:	60c0      	addu      	r3, r0
    300e:	748b      	sexth      	r2, r2
    3010:	8b60      	ld.h      	r3, (r3, 0x0)
    3012:	648d      	cmplt      	r3, r2
    3014:	9840      	ld.w      	r2, (r14, 0x0)
    3016:	7cc8      	mult      	r3, r2
    3018:	0c2a      	bf      	0x306c	// 306c <TK_Keymap_prog+0xb8>
    301a:	8940      	ld.h      	r2, (r1, 0x0)
    301c:	748b      	sexth      	r2, r2
    301e:	64c9      	cmplt      	r2, r3
    3020:	0c26      	bf      	0x306c	// 306c <TK_Keymap_prog+0xb8>
			Press_debounce0[i]++;
    3022:	1240      	lrw      	r2, 0x20000211	// 3120 <TK_Keymap_prog+0x16c>
    3024:	6090      	addu      	r2, r4
    3026:	8260      	ld.b      	r3, (r2, 0x0)
    3028:	2300      	addi      	r3, 1
    302a:	74cc      	zextb      	r3, r3
    302c:	a260      	st.b      	r3, (r2, 0x0)
			Release_debounce0[i]=0;
    302e:	3100      	movi      	r1, 0
    3030:	117d      	lrw      	r3, 0x200001fa	// 3124 <TK_Keymap_prog+0x170>
    3032:	60d0      	addu      	r3, r4
    3034:	a320      	st.b      	r1, (r3, 0x0)
			TK_Postive_build0[i]=0;
    3036:	117d      	lrw      	r3, 0x200002d2	// 3128 <TK_Keymap_prog+0x174>
    3038:	60d0      	addu      	r3, r4
    303a:	a320      	st.b      	r1, (r3, 0x0)
			TK_Negtive_build0[i]=0;
    303c:	117c      	lrw      	r3, 0x2000034c	// 312c <TK_Keymap_prog+0x178>
    303e:	60d0      	addu      	r3, r4
    3040:	a320      	st.b      	r1, (r3, 0x0)
			if(Press_debounce0[i]>Press_debounce_data)
    3042:	8260      	ld.b      	r3, (r2, 0x0)
    3044:	9821      	ld.w      	r1, (r14, 0x4)
    3046:	64c4      	cmphs      	r1, r3
    3048:	081f      	bt      	0x3086	// 3086 <TK_Keymap_prog+0xd2>
				if((Key_mode==0)&&(Key_Map0==0))
    304a:	3d40      	cmpnei      	r5, 0
    304c:	0852      	bt      	0x30f0	// 30f0 <TK_Keymap_prog+0x13c>
    304e:	1139      	lrw      	r1, 0x2000020c	// 3130 <TK_Keymap_prog+0x17c>
    3050:	9160      	ld.w      	r3, (r1, 0x0)
    3052:	3b40      	cmpnei      	r3, 0
    3054:	0806      	bt      	0x3060	// 3060 <TK_Keymap_prog+0xac>
				Key_Map0|=0x01<<i;
    3056:	9100      	ld.w      	r0, (r1, 0x0)
    3058:	3301      	movi      	r3, 1
				Key_Map0|=0x01<<i;
    305a:	70d0      	lsl      	r3, r4
    305c:	6cc0      	or      	r3, r0
    305e:	b160      	st.w      	r3, (r1, 0x0)
				Press_debounce0[i]=0;
    3060:	3300      	movi      	r3, 0
    3062:	a260      	st.b      	r3, (r2, 0x0)
    3064:	0411      	br      	0x3086	// 3086 <TK_Keymap_prog+0xd2>
			offset_data0_abs[i]=offset_data0[i];
    3066:	8920      	ld.h      	r1, (r1, 0x0)
    3068:	7445      	zexth      	r1, r1
    306a:	07c9      	br      	0x2ffc	// 2ffc <TK_Keymap_prog+0x48>
		 else if((offset_data0[i])>(TK_Triggerlevel[i]*MultiTimes_Filter))
    306c:	4441      	lsli      	r2, r4, 1
    306e:	6098      	addu      	r2, r6
    3070:	8a40      	ld.h      	r2, (r2, 0x0)
    3072:	748b      	sexth      	r2, r2
    3074:	648d      	cmplt      	r3, r2
    3076:	0c08      	bf      	0x3086	// 3086 <TK_Keymap_prog+0xd2>
				 Key_Map0&=~(0x01<<i);
    3078:	3300      	movi      	r3, 0
    307a:	114e      	lrw      	r2, 0x2000020c	// 3130 <TK_Keymap_prog+0x17c>
    307c:	2b01      	subi      	r3, 2
    307e:	9220      	ld.w      	r1, (r2, 0x0)
    3080:	70d3      	rotl      	r3, r4
    3082:	68c4      	and      	r3, r1
    3084:	b260      	st.w      	r3, (r2, 0x0)
		if(offset_data0[i]<(TK_Triggerlevel[i]*4/5))
    3086:	4441      	lsli      	r2, r4, 1
    3088:	5e68      	addu      	r3, r6, r2
    308a:	8b60      	ld.h      	r3, (r3, 0x0)
    308c:	74cf      	sexth      	r3, r3
    308e:	b864      	st.w      	r3, (r14, 0x10)
    3090:	3105      	movi      	r1, 5
    3092:	1163      	lrw      	r3, 0x2000010a	// 311c <TK_Keymap_prog+0x168>
    3094:	608c      	addu      	r2, r3
    3096:	8a00      	ld.h      	r0, (r2, 0x0)
    3098:	4002      	lsli      	r0, r0, 2
    309a:	e3fffc89 	bsr      	0x29ac	// 29ac <__divsi3>
    309e:	9864      	ld.w      	r3, (r14, 0x10)
    30a0:	640d      	cmplt      	r3, r0
    30a2:	0c18      	bf      	0x30d2	// 30d2 <TK_Keymap_prog+0x11e>
			Release_debounce0[i]++;
    30a4:	1140      	lrw      	r2, 0x200001fa	// 3124 <TK_Keymap_prog+0x170>
    30a6:	6090      	addu      	r2, r4
    30a8:	8260      	ld.b      	r3, (r2, 0x0)
    30aa:	2300      	addi      	r3, 1
    30ac:	74cc      	zextb      	r3, r3
    30ae:	a260      	st.b      	r3, (r2, 0x0)
			Press_debounce0[i]=0;
    30b0:	3100      	movi      	r1, 0
    30b2:	107c      	lrw      	r3, 0x20000211	// 3120 <TK_Keymap_prog+0x16c>
    30b4:	60d0      	addu      	r3, r4
    30b6:	a320      	st.b      	r1, (r3, 0x0)
			if(Release_debounce0[i]>Release_debounce_data)
    30b8:	8260      	ld.b      	r3, (r2, 0x0)
    30ba:	9822      	ld.w      	r1, (r14, 0x8)
    30bc:	64c4      	cmphs      	r1, r3
    30be:	080a      	bt      	0x30d2	// 30d2 <TK_Keymap_prog+0x11e>
			{
				Key_Map0&=~(0x01<<i);
    30c0:	3300      	movi      	r3, 0
    30c2:	103c      	lrw      	r1, 0x2000020c	// 3130 <TK_Keymap_prog+0x17c>
    30c4:	2b01      	subi      	r3, 2
    30c6:	9100      	ld.w      	r0, (r1, 0x0)
    30c8:	70d3      	rotl      	r3, r4
    30ca:	68c0      	and      	r3, r0
    30cc:	b160      	st.w      	r3, (r1, 0x0)
				Release_debounce0[i]=0;
    30ce:	3300      	movi      	r3, 0
    30d0:	a260      	st.b      	r3, (r2, 0x0)
    30d2:	2400      	addi      	r4, 1
	for(i=0;i<17;i++)
    30d4:	3c51      	cmpnei      	r4, 17
    30d6:	0b81      	bt      	0x2fd8	// 2fd8 <TK_Keymap_prog+0x24>
			}
		}
	}
}
    30d8:	1405      	addi      	r14, r14, 20
    30da:	1494      	pop      	r4-r7, r15
		if(offset_data0[i]>TK_Triggerlevel[i])
    30dc:	60d8      	addu      	r3, r6
    30de:	4441      	lsli      	r2, r4, 1
    30e0:	102f      	lrw      	r1, 0x2000010a	// 311c <TK_Keymap_prog+0x168>
    30e2:	8b60      	ld.h      	r3, (r3, 0x0)
    30e4:	6084      	addu      	r2, r1
    30e6:	74cf      	sexth      	r3, r3
    30e8:	8a40      	ld.h      	r2, (r2, 0x0)
    30ea:	64c9      	cmplt      	r2, r3
    30ec:	0fcd      	bf      	0x3086	// 3086 <TK_Keymap_prog+0xd2>
    30ee:	079a      	br      	0x3022	// 3022 <TK_Keymap_prog+0x6e>
				if(Key_mode==1)
    30f0:	3d41      	cmpnei      	r5, 1
    30f2:	0bb7      	bt      	0x3060	// 3060 <TK_Keymap_prog+0xac>
				Key_Map0|=0x01<<i;
    30f4:	102f      	lrw      	r1, 0x2000020c	// 3130 <TK_Keymap_prog+0x17c>
    30f6:	6cd7      	mov      	r3, r5
    30f8:	9100      	ld.w      	r0, (r1, 0x0)
    30fa:	07b0      	br      	0x305a	// 305a <TK_Keymap_prog+0xa6>
    30fc:	200000d4 	.long	0x200000d4
    3100:	200000a0 	.long	0x200000a0
    3104:	20000222 	.long	0x20000222
    3108:	200000b1 	.long	0x200000b1
    310c:	200000b0 	.long	0x200000b0
    3110:	2000041e 	.long	0x2000041e
    3114:	2000017c 	.long	0x2000017c
    3118:	200003da 	.long	0x200003da
    311c:	2000010a 	.long	0x2000010a
    3120:	20000211 	.long	0x20000211
    3124:	200001fa 	.long	0x200001fa
    3128:	200002d2 	.long	0x200002d2
    312c:	2000034c 	.long	0x2000034c
    3130:	2000020c 	.long	0x2000020c

Disassembly of section .text.TK_overflow_predict:

00003134 <TK_overflow_predict>:
/****************************************************
//TK overflow prediction
*****************************************************/
void TK_overflow_predict(void)
{
    3134:	14d4      	push      	r4-r7, r15
    3136:	1421      	subi      	r14, r14, 4
	unsigned char i;
	unsigned long tk_div_pow[17];
	if(tk_overflow_en==1)
    3138:	1179      	lrw      	r3, 0x20000088	// 321c <TK_overflow_predict+0xe8>
    313a:	836a      	ld.b      	r3, (r3, 0xa)
    313c:	3b41      	cmpnei      	r3, 1
    313e:	085f      	bt      	0x31fc	// 31fc <TK_overflow_predict+0xc8>
		{
	TK_ovrdect_cnt++;
    3140:	1158      	lrw      	r2, 0x20000328	// 3220 <TK_overflow_predict+0xec>
    3142:	8260      	ld.b      	r3, (r2, 0x0)
    3144:	2300      	addi      	r3, 1
    3146:	74cc      	zextb      	r3, r3
    3148:	a260      	st.b      	r3, (r2, 0x0)
	if(TK_ovrdect_cnt>Base_Speed)
    314a:	8260      	ld.b      	r3, (r2, 0x0)
    314c:	1136      	lrw      	r1, 0x200000d8	// 3224 <TK_overflow_predict+0xf0>
    314e:	8120      	ld.b      	r1, (r1, 0x0)
    3150:	64c4      	cmphs      	r1, r3
    3152:	0855      	bt      	0x31fc	// 31fc <TK_overflow_predict+0xc8>
	{
		TK_ovrdect_cnt=0;
    3154:	3300      	movi      	r3, 0
    3156:	a260      	st.b      	r3, (r2, 0x0)
    3158:	3500      	movi      	r5, 0
//-------------------Monitoring the maximum sampling------------------
	for(i=0;i<17;i++)
	{
		if(((TK_IO_ENABLE >> i) & 1) == 1)
    315a:	11d4      	lrw      	r6, 0x200000dc	// 3228 <TK_overflow_predict+0xf4>
		{
		tk_div_pow[i]=pow(2, tk_div[i]);
    315c:	11f4      	lrw      	r7, 0x20000068	// 322c <TK_overflow_predict+0xf8>
		if(((TK_IO_ENABLE >> i) & 1) == 1)
    315e:	9660      	ld.w      	r3, (r6, 0x0)
    3160:	70d5      	lsr      	r3, r5
    3162:	3201      	movi      	r2, 1
    3164:	68c8      	and      	r3, r2
    3166:	3b40      	cmpnei      	r3, 0
    3168:	0c34      	bf      	0x31d0	// 31d0 <TK_overflow_predict+0x9c>
    316a:	4581      	lsli      	r4, r5, 1
		tk_div_pow[i]=pow(2, tk_div[i]);
    316c:	5f70      	addu      	r3, r7, r4
    316e:	8b00      	ld.h      	r0, (r3, 0x0)
    3170:	e3fff218 	bsr      	0x15a0	// 15a0 <__floatunsidf>
    3174:	6cc7      	mov      	r3, r1
    3176:	3180      	movi      	r1, 128
    3178:	6c83      	mov      	r2, r0
    317a:	4137      	lsli      	r1, r1, 23
    317c:	3000      	movi      	r0, 0
    317e:	e3ffe81b 	bsr      	0x1b4	// 1b4 <__GI_pow>
		tk_sampling_max[i]=(TK_senprd[i]*16+15)*tk_div_pow[i];
    3182:	116c      	lrw      	r3, 0x200000e2	// 3230 <TK_overflow_predict+0xfc>
    3184:	60d0      	addu      	r3, r4
    3186:	8b60      	ld.h      	r3, (r3, 0x0)
    3188:	4364      	lsli      	r3, r3, 4
    318a:	230e      	addi      	r3, 15
    318c:	b860      	st.w      	r3, (r14, 0x0)
		tk_div_pow[i]=pow(2, tk_div[i]);
    318e:	e3ffedc1 	bsr      	0xd10	// d10 <__fixunsdfsi>
		tk_sampling_max[i]=(TK_senprd[i]*16+15)*tk_div_pow[i];
    3192:	9860      	ld.w      	r3, (r14, 0x0)
    3194:	7cc0      	mult      	r3, r0
    3196:	1148      	lrw      	r2, 0x200003b8	// 3234 <TK_overflow_predict+0x100>
    3198:	740d      	zexth      	r0, r3
    319a:	6090      	addu      	r2, r4
		if(sampling_data0[i]>(tk_sampling_max[i]*95/100))
    319c:	1167      	lrw      	r3, 0x2000041e	// 3238 <TK_overflow_predict+0x104>
    319e:	60d0      	addu      	r3, r4
		tk_sampling_max[i]=(TK_senprd[i]*16+15)*tk_div_pow[i];
    31a0:	aa00      	st.h      	r0, (r2, 0x0)
		if(sampling_data0[i]>(tk_sampling_max[i]*95/100))
    31a2:	8b60      	ld.h      	r3, (r3, 0x0)
    31a4:	8a00      	ld.h      	r0, (r2, 0x0)
    31a6:	7401      	zexth      	r0, r0
    31a8:	325f      	movi      	r2, 95
    31aa:	74cd      	zexth      	r3, r3
    31ac:	7c08      	mult      	r0, r2
    31ae:	3164      	movi      	r1, 100
    31b0:	b860      	st.w      	r3, (r14, 0x0)
    31b2:	e3fffbfd 	bsr      	0x29ac	// 29ac <__divsi3>
    31b6:	9860      	ld.w      	r3, (r14, 0x0)
    31b8:	64c1      	cmplt      	r0, r3
    31ba:	0c0b      	bf      	0x31d0	// 31d0 <TK_overflow_predict+0x9c>
    31bc:	1160      	lrw      	r3, 0x200000b2	// 323c <TK_overflow_predict+0x108>
    31be:	610c      	addu      	r4, r3
		{
			if(TK_icon[i]<7)
    31c0:	8c60      	ld.h      	r3, (r4, 0x0)
    31c2:	3b06      	cmphsi      	r3, 7
    31c4:	0806      	bt      	0x31d0	// 31d0 <TK_overflow_predict+0x9c>
			{
			TK_icon[i]++;
    31c6:	2300      	addi      	r3, 1
    31c8:	ac60      	st.h      	r3, (r4, 0x0)
			tk_overflow_f=1;					//Modify this parameter once it is detected
    31ca:	3201      	movi      	r2, 1
    31cc:	107d      	lrw      	r3, 0x2000027d	// 3240 <TK_overflow_predict+0x10c>
    31ce:	a340      	st.b      	r2, (r3, 0x0)
    31d0:	2500      	addi      	r5, 1
	for(i=0;i<17;i++)
    31d2:	3d51      	cmpnei      	r5, 17
    31d4:	0bc5      	bt      	0x315e	// 315e <TK_overflow_predict+0x2a>
			}
		}
		}
	}
	if(tk_overflow_f==1)
    31d6:	107b      	lrw      	r3, 0x2000027d	// 3240 <TK_overflow_predict+0x10c>
    31d8:	8340      	ld.b      	r2, (r3, 0x0)
    31da:	3a41      	cmpnei      	r2, 1
    31dc:	0810      	bt      	0x31fc	// 31fc <TK_overflow_predict+0xc8>
	{
		tk_overflow_f=0;
    31de:	3200      	movi      	r2, 0
    31e0:	a340      	st.b      	r2, (r3, 0x0)
		TKEY->TCH_CON1=0X00;
    31e2:	3200      	movi      	r2, 0
    31e4:	1078      	lrw      	r3, 0x20000058	// 3244 <TK_overflow_predict+0x110>
		for(i=0;i<tk_num;i++)
    31e6:	1019      	lrw      	r0, 0x2000034b	// 3248 <TK_overflow_predict+0x114>
			{
			TKEYBUF->TCH_SEQCON[i]|=TK_icon[tk_seque[i]]<<20;
    31e8:	10b9      	lrw      	r5, 0x20000384	// 324c <TK_overflow_predict+0x118>
    31ea:	10d5      	lrw      	r6, 0x200000b2	// 323c <TK_overflow_predict+0x108>
		TKEY->TCH_CON1=0X00;
    31ec:	9360      	ld.w      	r3, (r3, 0x0)
    31ee:	b342      	st.w      	r2, (r3, 0x8)
			TKEYBUF->TCH_SEQCON[i]|=TK_icon[tk_seque[i]]<<20;
    31f0:	1078      	lrw      	r3, 0x20000054	// 3250 <TK_overflow_predict+0x11c>
    31f2:	9380      	ld.w      	r4, (r3, 0x0)
		for(i=0;i<tk_num;i++)
    31f4:	3300      	movi      	r3, 0
    31f6:	8040      	ld.b      	r2, (r0, 0x0)
    31f8:	648c      	cmphs      	r3, r2
    31fa:	0c03      	bf      	0x3200	// 3200 <TK_overflow_predict+0xcc>
			}
	}
	}
	}
}
    31fc:	1401      	addi      	r14, r14, 4
    31fe:	1494      	pop      	r4-r7, r15
			TKEYBUF->TCH_SEQCON[i]|=TK_icon[tk_seque[i]]<<20;
    3200:	5d4c      	addu      	r2, r5, r3
    3202:	8240      	ld.b      	r2, (r2, 0x0)
    3204:	4241      	lsli      	r2, r2, 1
    3206:	4322      	lsli      	r1, r3, 2
    3208:	6098      	addu      	r2, r6
    320a:	6050      	addu      	r1, r4
    320c:	8a40      	ld.h      	r2, (r2, 0x0)
    320e:	91f2      	ld.w      	r7, (r1, 0x48)
    3210:	4254      	lsli      	r2, r2, 20
    3212:	6c9c      	or      	r2, r7
		for(i=0;i<tk_num;i++)
    3214:	2300      	addi      	r3, 1
			TKEYBUF->TCH_SEQCON[i]|=TK_icon[tk_seque[i]]<<20;
    3216:	b152      	st.w      	r2, (r1, 0x48)
		for(i=0;i<tk_num;i++)
    3218:	74cc      	zextb      	r3, r3
    321a:	07ee      	br      	0x31f6	// 31f6 <TK_overflow_predict+0xc2>
    321c:	20000088 	.long	0x20000088
    3220:	20000328 	.long	0x20000328
    3224:	200000d8 	.long	0x200000d8
    3228:	200000dc 	.long	0x200000dc
    322c:	20000068 	.long	0x20000068
    3230:	200000e2 	.long	0x200000e2
    3234:	200003b8 	.long	0x200003b8
    3238:	2000041e 	.long	0x2000041e
    323c:	200000b2 	.long	0x200000b2
    3240:	2000027d 	.long	0x2000027d
    3244:	20000058 	.long	0x20000058
    3248:	2000034b 	.long	0x2000034b
    324c:	20000384 	.long	0x20000384
    3250:	20000054 	.long	0x20000054

Disassembly of section .text.TK_Baseline_tracking:

00003254 <TK_Baseline_tracking>:
/****************************************************
//TK baseline tracking
*****************************************************/
void TK_Baseline_tracking(void)
{
    3254:	14c4      	push      	r4-r7
    3256:	1422      	subi      	r14, r14, 8
	unsigned char i;
	TK_track_cnt++;
    3258:	1348      	lrw      	r2, 0x200002aa	// 33f8 <TK_Baseline_tracking+0x1a4>
    325a:	8260      	ld.b      	r3, (r2, 0x0)
    325c:	2300      	addi      	r3, 1
    325e:	74cc      	zextb      	r3, r3
    3260:	a260      	st.b      	r3, (r2, 0x0)
	if (TK_track_cnt>=Base_Speed)
    3262:	8260      	ld.b      	r3, (r2, 0x0)
    3264:	1326      	lrw      	r1, 0x200000d8	// 33fc <TK_Baseline_tracking+0x1a8>
    3266:	8120      	ld.b      	r1, (r1, 0x0)
    3268:	644c      	cmphs      	r3, r1
    326a:	0cad      	bf      	0x33c4	// 33c4 <TK_Baseline_tracking+0x170>
	{
		TK_track_cnt=0;
    326c:	3300      	movi      	r3, 0
    326e:	a260      	st.b      	r3, (r2, 0x0)
		//======================================
		if(Key_Map0==0)
    3270:	1364      	lrw      	r3, 0x2000020c	// 3400 <TK_Baseline_tracking+0x1ac>
    3272:	9360      	ld.w      	r3, (r3, 0x0)
    3274:	3b40      	cmpnei      	r3, 0
    3276:	08a7      	bt      	0x33c4	// 33c4 <TK_Baseline_tracking+0x170>
		{
			for(i=0;i<17;i++)
			{
				if((offset_data0[i]<0)&&((baseline_data0[i]-sampling_data0[i])>=(TK_Triggerlevel[i]))&&((baseline_data0[i]-sampling_data0[i])<(TK_Triggerlevel[i]*3)))
    3278:	1323      	lrw      	r1, 0x20000222	// 3404 <TK_Baseline_tracking+0x1b0>
    327a:	6dc7      	mov      	r7, r1
    327c:	b820      	st.w      	r1, (r14, 0x0)
		if(Key_Map0==0)
    327e:	3200      	movi      	r2, 0
    3280:	1362      	lrw      	r3, 0x2000010a	// 3408 <TK_Baseline_tracking+0x1b4>
				if((offset_data0[i]<0)&&((baseline_data0[i]-sampling_data0[i])>=(TK_Triggerlevel[i]))&&((baseline_data0[i]-sampling_data0[i])<(TK_Triggerlevel[i]*3)))
    3282:	1323      	lrw      	r1, 0x2000017c	// 340c <TK_Baseline_tracking+0x1b8>
    3284:	4201      	lsli      	r0, r2, 1
    3286:	9880      	ld.w      	r4, (r14, 0x0)
    3288:	6100      	addu      	r4, r0
    328a:	8c80      	ld.h      	r4, (r4, 0x0)
    328c:	7513      	sexth      	r4, r4
    328e:	3cdf      	btsti      	r4, 31
    3290:	0c27      	bf      	0x32de	// 32de <TK_Baseline_tracking+0x8a>
    3292:	13a0      	lrw      	r5, 0x2000041e	// 3410 <TK_Baseline_tracking+0x1bc>
    3294:	5980      	addu      	r4, r1, r0
    3296:	6014      	addu      	r0, r5
    3298:	b881      	st.w      	r4, (r14, 0x4)
    329a:	8c80      	ld.h      	r4, (r4, 0x0)
    329c:	88c0      	ld.h      	r6, (r0, 0x0)
    329e:	7511      	zexth      	r4, r4
    32a0:	7599      	zexth      	r6, r6
    32a2:	8ba0      	ld.h      	r5, (r3, 0x0)
    32a4:	611a      	subu      	r4, r6
    32a6:	6551      	cmplt      	r4, r5
    32a8:	081b      	bt      	0x32de	// 32de <TK_Baseline_tracking+0x8a>
    32aa:	9881      	ld.w      	r4, (r14, 0x4)
    32ac:	8c80      	ld.h      	r4, (r4, 0x0)
    32ae:	8800      	ld.h      	r0, (r0, 0x0)
    32b0:	7511      	zexth      	r4, r4
    32b2:	7401      	zexth      	r0, r0
    32b4:	5c01      	subu      	r0, r4, r0
    32b6:	4581      	lsli      	r4, r5, 1
    32b8:	6150      	addu      	r5, r4
    32ba:	6541      	cmplt      	r0, r5
    32bc:	0c11      	bf      	0x32de	// 32de <TK_Baseline_tracking+0x8a>
				{
					TK_Negtive_build0[i]++;
    32be:	1296      	lrw      	r4, 0x2000034c	// 3414 <TK_Baseline_tracking+0x1c0>
    32c0:	6108      	addu      	r4, r2
    32c2:	8400      	ld.b      	r0, (r4, 0x0)
    32c4:	2000      	addi      	r0, 1
    32c6:	7400      	zextb      	r0, r0
    32c8:	a400      	st.b      	r0, (r4, 0x0)
					if(TK_Negtive_build0[i]>neg_build_bounce)
    32ca:	1214      	lrw      	r0, 0x20000088	// 3418 <TK_Baseline_tracking+0x1c4>
    32cc:	84a0      	ld.b      	r5, (r4, 0x0)
    32ce:	800b      	ld.b      	r0, (r0, 0xb)
    32d0:	6540      	cmphs      	r0, r5
    32d2:	0806      	bt      	0x32de	// 32de <TK_Baseline_tracking+0x8a>
					{
					base_update_f=1;
    32d4:	1212      	lrw      	r0, 0x2000028f	// 341c <TK_Baseline_tracking+0x1c8>
    32d6:	3501      	movi      	r5, 1
    32d8:	a0a0      	st.b      	r5, (r0, 0x0)
					TK_Negtive_build0[i]=0;
    32da:	3000      	movi      	r0, 0
    32dc:	a400      	st.b      	r0, (r4, 0x0)
					}
				}
				if((offset_data0[i]>0)&&(sampling_data0[i]-baseline_data0[i])>=(TK_Triggerlevel[i]*4))
    32de:	4201      	lsli      	r0, r2, 1
    32e0:	5f80      	addu      	r4, r7, r0
    32e2:	8c80      	ld.h      	r4, (r4, 0x0)
    32e4:	7513      	sexth      	r4, r4
    32e6:	3c20      	cmplti      	r4, 1
    32e8:	0870      	bt      	0x33c8	// 33c8 <TK_Baseline_tracking+0x174>
    32ea:	128a      	lrw      	r4, 0x2000041e	// 3410 <TK_Baseline_tracking+0x1bc>
    32ec:	6100      	addu      	r4, r0
    32ee:	59a0      	addu      	r5, r1, r0
    32f0:	8c80      	ld.h      	r4, (r4, 0x0)
    32f2:	8da0      	ld.h      	r5, (r5, 0x0)
    32f4:	7555      	zexth      	r5, r5
    32f6:	7511      	zexth      	r4, r4
    32f8:	6116      	subu      	r4, r5
    32fa:	8ba0      	ld.h      	r5, (r3, 0x0)
    32fc:	45a2      	lsli      	r5, r5, 2
    32fe:	6551      	cmplt      	r4, r5
    3300:	0864      	bt      	0x33c8	// 33c8 <TK_Baseline_tracking+0x174>
				{
					TK_Postive_build0[i]++;
    3302:	1288      	lrw      	r4, 0x200002d2	// 3420 <TK_Baseline_tracking+0x1cc>
    3304:	6108      	addu      	r4, r2
    3306:	84a0      	ld.b      	r5, (r4, 0x0)
    3308:	2500      	addi      	r5, 1
    330a:	7554      	zextb      	r5, r5
    330c:	a4a0      	st.b      	r5, (r4, 0x0)
					if(TK_Postive_build0[i]>pos_build_bounce)
    330e:	12a3      	lrw      	r5, 0x20000088	// 3418 <TK_Baseline_tracking+0x1c4>
    3310:	84c0      	ld.b      	r6, (r4, 0x0)
    3312:	85ac      	ld.b      	r5, (r5, 0xc)
    3314:	6594      	cmphs      	r5, r6
    3316:	0806      	bt      	0x3322	// 3322 <TK_Baseline_tracking+0xce>
					{
					base_update_f=1;
    3318:	12a1      	lrw      	r5, 0x2000028f	// 341c <TK_Baseline_tracking+0x1c8>
    331a:	3601      	movi      	r6, 1
    331c:	a5c0      	st.b      	r6, (r5, 0x0)
					TK_Postive_build0[i]=0;
    331e:	3500      	movi      	r5, 0
    3320:	a4a0      	st.b      	r5, (r4, 0x0)
				else if((offset_data0[i]<0)&&((baseline_data0[i]-sampling_data0[i])>=(TK_Triggerlevel[i]*3)))
				{
					base_update_f=1;
					nop;
				}
				if((offset_data0[i]<0)&&((baseline_data0[i]-sampling_data0[i])<TK_Triggerlevel[i]))
    3322:	5f80      	addu      	r4, r7, r0
    3324:	8c80      	ld.h      	r4, (r4, 0x0)
    3326:	7513      	sexth      	r4, r4
    3328:	3cdf      	btsti      	r4, 31
    332a:	0c10      	bf      	0x334a	// 334a <TK_Baseline_tracking+0xf6>
    332c:	11d9      	lrw      	r6, 0x2000041e	// 3410 <TK_Baseline_tracking+0x1bc>
    332e:	59a0      	addu      	r5, r1, r0
    3330:	6180      	addu      	r6, r0
    3332:	8d80      	ld.h      	r4, (r5, 0x0)
    3334:	8ec0      	ld.h      	r6, (r6, 0x0)
    3336:	7599      	zexth      	r6, r6
    3338:	7511      	zexth      	r4, r4
    333a:	611a      	subu      	r4, r6
    333c:	8bc0      	ld.h      	r6, (r3, 0x0)
    333e:	6591      	cmplt      	r4, r6
    3340:	0c05      	bf      	0x334a	// 334a <TK_Baseline_tracking+0xf6>
				{
					baseline_data0[i]-=1;
    3342:	8d80      	ld.h      	r4, (r5, 0x0)
    3344:	2c00      	subi      	r4, 1
    3346:	7511      	zexth      	r4, r4
    3348:	ad80      	st.h      	r4, (r5, 0x0)
				}
				if((offset_data0[i]<0)&&((baseline_data0[i]-sampling_data0[i])>=(TK_Triggerlevel[i]/2)))
    334a:	5f80      	addu      	r4, r7, r0
    334c:	8c80      	ld.h      	r4, (r4, 0x0)
    334e:	7513      	sexth      	r4, r4
    3350:	3cdf      	btsti      	r4, 31
    3352:	0c11      	bf      	0x3374	// 3374 <TK_Baseline_tracking+0x120>
    3354:	11cf      	lrw      	r6, 0x2000041e	// 3410 <TK_Baseline_tracking+0x1bc>
    3356:	59a0      	addu      	r5, r1, r0
    3358:	6180      	addu      	r6, r0
    335a:	8d80      	ld.h      	r4, (r5, 0x0)
    335c:	8ec0      	ld.h      	r6, (r6, 0x0)
    335e:	7599      	zexth      	r6, r6
    3360:	7511      	zexth      	r4, r4
    3362:	611a      	subu      	r4, r6
    3364:	8bc0      	ld.h      	r6, (r3, 0x0)
    3366:	4ec1      	lsri      	r6, r6, 1
    3368:	6591      	cmplt      	r4, r6
    336a:	0805      	bt      	0x3374	// 3374 <TK_Baseline_tracking+0x120>
				{
					baseline_data0[i]-=2;
    336c:	8d80      	ld.h      	r4, (r5, 0x0)
    336e:	2c01      	subi      	r4, 2
    3370:	7511      	zexth      	r4, r4
    3372:	ad80      	st.h      	r4, (r5, 0x0)
				}
				if ((offset_data0[i]>0)&&(offset_data0[i]<(TK_Triggerlevel[i]/2)))
    3374:	5fa0      	addu      	r5, r7, r0
    3376:	8d80      	ld.h      	r4, (r5, 0x0)
    3378:	7513      	sexth      	r4, r4
    337a:	3c20      	cmplti      	r4, 1
    337c:	080c      	bt      	0x3394	// 3394 <TK_Baseline_tracking+0x140>
    337e:	8da0      	ld.h      	r5, (r5, 0x0)
    3380:	8b80      	ld.h      	r4, (r3, 0x0)
    3382:	7557      	sexth      	r5, r5
    3384:	4c81      	lsri      	r4, r4, 1
    3386:	6515      	cmplt      	r5, r4
    3388:	0c06      	bf      	0x3394	// 3394 <TK_Baseline_tracking+0x140>
				{
					baseline_data0[i]+=1;
    338a:	59a0      	addu      	r5, r1, r0
    338c:	8d80      	ld.h      	r4, (r5, 0x0)
    338e:	2400      	addi      	r4, 1
    3390:	7511      	zexth      	r4, r4
    3392:	ad80      	st.h      	r4, (r5, 0x0)
				}
				if ((offset_data0[i]>0)&&(offset_data0[i]<TK_Triggerlevel[i])&&(offset_data0[i]>=(TK_Triggerlevel[i]/2)))
    3394:	5fa0      	addu      	r5, r7, r0
    3396:	8d80      	ld.h      	r4, (r5, 0x0)
    3398:	7513      	sexth      	r4, r4
    339a:	3c20      	cmplti      	r4, 1
    339c:	0810      	bt      	0x33bc	// 33bc <TK_Baseline_tracking+0x168>
    339e:	8dc0      	ld.h      	r6, (r5, 0x0)
    33a0:	759b      	sexth      	r6, r6
    33a2:	8b80      	ld.h      	r4, (r3, 0x0)
    33a4:	6519      	cmplt      	r6, r4
    33a6:	0c0b      	bf      	0x33bc	// 33bc <TK_Baseline_tracking+0x168>
    33a8:	8da0      	ld.h      	r5, (r5, 0x0)
    33aa:	7557      	sexth      	r5, r5
    33ac:	4c81      	lsri      	r4, r4, 1
    33ae:	6515      	cmplt      	r5, r4
    33b0:	0806      	bt      	0x33bc	// 33bc <TK_Baseline_tracking+0x168>
				{
					baseline_data0[i]+=2;
    33b2:	6004      	addu      	r0, r1
    33b4:	8880      	ld.h      	r4, (r0, 0x0)
    33b6:	2401      	addi      	r4, 2
    33b8:	7511      	zexth      	r4, r4
    33ba:	a880      	st.h      	r4, (r0, 0x0)
    33bc:	2200      	addi      	r2, 1
			for(i=0;i<17;i++)
    33be:	3a51      	cmpnei      	r2, 17
    33c0:	2301      	addi      	r3, 2
    33c2:	0b61      	bt      	0x3284	// 3284 <TK_Baseline_tracking+0x30>
				}
			}
		}
	}
}
    33c4:	1402      	addi      	r14, r14, 8
    33c6:	1484      	pop      	r4-r7
				else if((offset_data0[i]<0)&&((baseline_data0[i]-sampling_data0[i])>=(TK_Triggerlevel[i]*3)))
    33c8:	5f80      	addu      	r4, r7, r0
    33ca:	8c80      	ld.h      	r4, (r4, 0x0)
    33cc:	7513      	sexth      	r4, r4
    33ce:	3cdf      	btsti      	r4, 31
    33d0:	0fa9      	bf      	0x3322	// 3322 <TK_Baseline_tracking+0xce>
    33d2:	10b0      	lrw      	r5, 0x2000041e	// 3410 <TK_Baseline_tracking+0x1bc>
    33d4:	5980      	addu      	r4, r1, r0
    33d6:	6140      	addu      	r5, r0
    33d8:	8c80      	ld.h      	r4, (r4, 0x0)
    33da:	8da0      	ld.h      	r5, (r5, 0x0)
    33dc:	7555      	zexth      	r5, r5
    33de:	8bc0      	ld.h      	r6, (r3, 0x0)
    33e0:	7511      	zexth      	r4, r4
    33e2:	6116      	subu      	r4, r5
    33e4:	46a1      	lsli      	r5, r6, 1
    33e6:	6158      	addu      	r5, r6
    33e8:	6551      	cmplt      	r4, r5
    33ea:	0b9c      	bt      	0x3322	// 3322 <TK_Baseline_tracking+0xce>
					base_update_f=1;
    33ec:	108c      	lrw      	r4, 0x2000028f	// 341c <TK_Baseline_tracking+0x1c8>
    33ee:	3501      	movi      	r5, 1
    33f0:	a4a0      	st.b      	r5, (r4, 0x0)
					nop;
    33f2:	6c03      	mov      	r0, r0
    33f4:	0797      	br      	0x3322	// 3322 <TK_Baseline_tracking+0xce>
    33f6:	0000      	bkpt
    33f8:	200002aa 	.long	0x200002aa
    33fc:	200000d8 	.long	0x200000d8
    3400:	2000020c 	.long	0x2000020c
    3404:	20000222 	.long	0x20000222
    3408:	2000010a 	.long	0x2000010a
    340c:	2000017c 	.long	0x2000017c
    3410:	2000041e 	.long	0x2000041e
    3414:	2000034c 	.long	0x2000034c
    3418:	20000088 	.long	0x20000088
    341c:	2000028f 	.long	0x2000028f
    3420:	200002d2 	.long	0x200002d2

Disassembly of section .text.TK_result_prog:

00003424 <TK_result_prog>:
/****************************************************
//TK result program
*****************************************************/
void TK_result_prog(void)
{
    3424:	14d2      	push      	r4-r5, r15
	unsigned long Key_Map_temp;
	Key_Map_temp=Key_Map0;
    3426:	1050      	lrw      	r2, 0x2000020c	// 3464 <TK_result_prog+0x40>
    3428:	1090      	lrw      	r4, 0x200002ac	// 3468 <TK_result_prog+0x44>
    342a:	9260      	ld.w      	r3, (r2, 0x0)
	if(Key_Map_temp!=0)
    342c:	3b40      	cmpnei      	r3, 0
    342e:	0c02      	bf      	0x3432	// 3432 <TK_result_prog+0xe>
	{

			Key_Map=Key_Map0;							//0,1,2
    3430:	9260      	ld.w      	r3, (r2, 0x0)
	}
		else 
		{
			Key_Map=0;
    3432:	b460      	st.w      	r3, (r4, 0x0)
		}

	if(Key_Map!=0)
    3434:	9460      	ld.w      	r3, (r4, 0x0)
    3436:	3b40      	cmpnei      	r3, 0
    3438:	10ad      	lrw      	r5, 0x20000380	// 346c <TK_result_prog+0x48>
    343a:	0c11      	bf      	0x345c	// 345c <TK_result_prog+0x38>
	{
		if(Key_Map!=r_Key_Map_Temp)
    343c:	9440      	ld.w      	r2, (r4, 0x0)
    343e:	9560      	ld.w      	r3, (r5, 0x0)
    3440:	64ca      	cmpne      	r2, r3
    3442:	0c03      	bf      	0x3448	// 3448 <TK_result_prog+0x24>
		{
			r_Key_Map_Temp=Key_Map;
    3444:	9460      	ld.w      	r3, (r4, 0x0)
    3446:	b560      	st.w      	r3, (r5, 0x0)
		}
		if((get_key_number()>Valid_Key_Num))
    3448:	e3fffcaa 	bsr      	0x2d9c	// 2d9c <get_key_number>
    344c:	1069      	lrw      	r3, 0x200000e0	// 3470 <TK_result_prog+0x4c>
    344e:	8360      	ld.b      	r3, (r3, 0x0)
    3450:	640c      	cmphs      	r3, r0
    3452:	0804      	bt      	0x345a	// 345a <TK_result_prog+0x36>
		{
			Key_Map=0;
    3454:	3300      	movi      	r3, 0
    3456:	b460      	st.w      	r3, (r4, 0x0)
			r_Key_Map_Temp=0;
    3458:	b560      	st.w      	r3, (r5, 0x0)
	else
	{
		r_Key_Map_Temp=0;
		time_cnt=0;
	}
}
    345a:	1492      	pop      	r4-r5, r15
		time_cnt=0;
    345c:	1046      	lrw      	r2, 0x200002a4	// 3474 <TK_result_prog+0x50>
		r_Key_Map_Temp=0;
    345e:	b560      	st.w      	r3, (r5, 0x0)
		time_cnt=0;
    3460:	b260      	st.w      	r3, (r2, 0x0)
}
    3462:	07fc      	br      	0x345a	// 345a <TK_result_prog+0x36>
    3464:	2000020c 	.long	0x2000020c
    3468:	200002ac 	.long	0x200002ac
    346c:	20000380 	.long	0x20000380
    3470:	200000e0 	.long	0x200000e0
    3474:	200002a4 	.long	0x200002a4

Disassembly of section .text.get_key_seq:

00003478 <get_key_seq>:
/****************************************************
//TK get press number
*****************************************************/
unsigned char get_key_seq(void)
{                  
    3478:	14c3      	push      	r4-r6
    int count = 0;
    int i = 0,j=0;
    for (; i<17; i++)
    {
        if (((TK_IO_ENABLE >> i) & 1) == 1)
    347a:	106b      	lrw      	r3, 0x200000dc	// 34a4 <get_key_seq+0x2c>
    int count = 0;
    347c:	3000      	movi      	r0, 0
        if (((TK_IO_ENABLE >> i) & 1) == 1)
    347e:	9320      	ld.w      	r1, (r3, 0x0)
    3480:	3401      	movi      	r4, 1
    int i = 0,j=0;
    3482:	3300      	movi      	r3, 0
		{
            count++;
			tk_seque[j]=i;
    3484:	10a9      	lrw      	r5, 0x20000384	// 34a8 <get_key_seq+0x30>
        if (((TK_IO_ENABLE >> i) & 1) == 1)
    3486:	6c87      	mov      	r2, r1
    3488:	708d      	lsr      	r2, r3
    348a:	6890      	and      	r2, r4
    348c:	3a40      	cmpnei      	r2, 0
    348e:	0c05      	bf      	0x3498	// 3498 <get_key_seq+0x20>
			tk_seque[j]=i;
    3490:	5dc0      	addu      	r6, r5, r0
    3492:	748c      	zextb      	r2, r3
    3494:	a640      	st.b      	r2, (r6, 0x0)
            count++;
    3496:	2000      	addi      	r0, 1
    for (; i<17; i++)
    3498:	2300      	addi      	r3, 1
    349a:	3b51      	cmpnei      	r3, 17
    349c:	0bf5      	bt      	0x3486	// 3486 <get_key_seq+0xe>
			j++;
		}
    }
    return count;
    349e:	7400      	zextb      	r0, r0
}
    34a0:	1483      	pop      	r4-r6
    34a2:	0000      	bkpt
    34a4:	200000dc 	.long	0x200000dc
    34a8:	20000384 	.long	0x20000384

Disassembly of section .text.tk_chxval_seqxcon_clr:

000034ac <tk_chxval_seqxcon_clr>:
void tk_chxval_seqxcon_clr(void)
{
	unsigned char i;
	for(i=0;i<18;i++)
	{
		TKEYBUF->TCH_CHVAL[i]=0;
    34ac:	1066      	lrw      	r3, 0x20000054	// 34c4 <tk_chxval_seqxcon_clr+0x18>
    34ae:	3100      	movi      	r1, 0
    34b0:	9300      	ld.w      	r0, (r3, 0x0)
    34b2:	3300      	movi      	r3, 0
    34b4:	4342      	lsli      	r2, r3, 2
    34b6:	2300      	addi      	r3, 1
    34b8:	6080      	addu      	r2, r0
	for(i=0;i<18;i++)
    34ba:	3b52      	cmpnei      	r3, 18
		TKEYBUF->TCH_CHVAL[i]=0;
    34bc:	b220      	st.w      	r1, (r2, 0x0)
		TKEYBUF->TCH_SEQCON[i]=0;
    34be:	b232      	st.w      	r1, (r2, 0x48)
	for(i=0;i<18;i++)
    34c0:	0bfa      	bt      	0x34b4	// 34b4 <tk_chxval_seqxcon_clr+0x8>
	}
}
    34c2:	783c      	jmp      	r15
    34c4:	20000054 	.long	0x20000054

Disassembly of section .text.tk_reserved_init:

000034c8 <tk_reserved_init>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void tk_reserved_init(void)
{
	SYSCON->PWRKEY = 0xA67A6CC7;
    34c8:	1065      	lrw      	r3, 0x2000005c	// 34dc <tk_reserved_init+0x14>
    34ca:	1046      	lrw      	r2, 0xa67a6cc7	// 34e0 <tk_reserved_init+0x18>
    34cc:	9360      	ld.w      	r3, (r3, 0x0)
    34ce:	b356      	st.w      	r2, (r3, 0x58)
    SYSCON->PWRCR  = 0x021F1F04;					//Low power optimization
    34d0:	1045      	lrw      	r2, 0x21f1f04	// 34e4 <tk_reserved_init+0x1c>
    34d2:	b355      	st.w      	r2, (r3, 0x54)
	*(unsigned long *)0x400111FC = 0x69966996;			//Enable frequency adjustment
    34d4:	1045      	lrw      	r2, 0x69966996	// 34e8 <tk_reserved_init+0x20>
    34d6:	1066      	lrw      	r3, 0x40011180	// 34ec <tk_reserved_init+0x24>
    34d8:	b35f      	st.w      	r2, (r3, 0x7c)
}
    34da:	783c      	jmp      	r15
    34dc:	2000005c 	.long	0x2000005c
    34e0:	a67a6cc7 	.long	0xa67a6cc7
    34e4:	021f1f04 	.long	0x021f1f04
    34e8:	69966996 	.long	0x69966996
    34ec:	40011180 	.long	0x40011180

Disassembly of section .text.tk_init:

000034f0 <tk_init>:
//**************************************************
void tk_init(void)
{
    34f0:	14d4      	push      	r4-r7, r15
    34f2:	142e      	subi      	r14, r14, 56
	unsigned char i;
	tk_reserved_init();
    34f4:	e3ffffea 	bsr      	0x34c8	// 34c8 <tk_reserved_init>
	tk_parameter_init();
    34f8:	e3fff468 	bsr      	0x1dc8	// 1dc8 <tk_parameter_init>
	*(unsigned long *)0x40011240=tk_scan_para0;
    34fc:	1273      	lrw      	r3, 0x20000068	// 3648 <tk_init+0x158>
    34fe:	1254      	lrw      	r2, 0x40011200	// 364c <tk_init+0x15c>
    3500:	932c      	ld.w      	r1, (r3, 0x30)
    3502:	b230      	st.w      	r1, (r2, 0x40)
    3504:	b86b      	st.w      	r3, (r14, 0x2c)
	if(TK_Lowpower_mode==ENABLE)
    3506:	1253      	lrw      	r2, 0x200000a1	// 3650 <tk_init+0x160>
    3508:	8240      	ld.b      	r2, (r2, 0x0)
    350a:	3a41      	cmpnei      	r2, 1
    350c:	0817      	bt      	0x353a	// 353a <tk_init+0x4a>
	{
		TKEY->TCH_THR=TK_Wakeup_level/5;
    350e:	1272      	lrw      	r3, 0x20000058	// 3654 <tk_init+0x164>
    3510:	3105      	movi      	r1, 5
    3512:	9380      	ld.w      	r4, (r3, 0x0)
    3514:	1271      	lrw      	r3, 0x20000108	// 3658 <tk_init+0x168>
    3516:	8300      	ld.b      	r0, (r3, 0x0)
    3518:	e3fffa5c 	bsr      	0x29d0	// 29d0 <__udivsi3>
    351c:	7400      	zextb      	r0, r0
		switch (TK_Lowpower_level)
    351e:	1270      	lrw      	r3, 0x200000a2	// 365c <tk_init+0x16c>
		TKEY->TCH_THR=TK_Wakeup_level/5;
    3520:	b408      	st.w      	r0, (r4, 0x20)
		switch (TK_Lowpower_level)
    3522:	8300      	ld.b      	r0, (r3, 0x0)
    3524:	3804      	cmphsi      	r0, 5
    3526:	126f      	lrw      	r3, 0x200002a8	// 3660 <tk_init+0x170>
    3528:	086f      	bt      	0x3606	// 3606 <tk_init+0x116>
    352a:	e3ffebe9 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    352e:	6603      	.short	0x6603
    3530:	006a686c 	.long	0x006a686c
		{
			case 0: lpt_scan_pend_cnt=600;break;
    3534:	3296      	movi      	r2, 150
    3536:	4242      	lsli      	r2, r2, 2
			case 1: lpt_scan_pend_cnt=1500;break;
			case 2: lpt_scan_pend_cnt=3000;break;
			case 3: lpt_scan_pend_cnt=4500;break;
			case 4: lpt_scan_pend_cnt=6000;break;
			default: lpt_scan_pend_cnt=3000;break;
    3538:	ab40      	st.h      	r2, (r3, 0x0)
		}
	}
	TK_IO_Init();
    353a:	e3fffadb 	bsr      	0x2af0	// 2af0 <TK_IO_Init>
	tk_clk_config(ENABLE,0,0);
    353e:	3200      	movi      	r2, 0
    3540:	3100      	movi      	r1, 0
    3542:	3001      	movi      	r0, 1
    3544:	e3fffa64 	bsr      	0x2a0c	// 2a0c <tk_clk_config>
	tk_chxval_seqxcon_clr();
    3548:	e3ffffb2 	bsr      	0x34ac	// 34ac <tk_chxval_seqxcon_clr>
	tk_num=get_key_seq();
    354c:	e3ffff96 	bsr      	0x3478	// 3478 <get_key_seq>
    3550:	1285      	lrw      	r4, 0x2000034b	// 3664 <tk_init+0x174>
	TK_con0_config(TK_HM_EN,TK_SEQ,(tk_num-1),TK_EC_LEVEL,TK_CKSPR_DIS,TK_CKRND_DIS,TK_CKREQ_HIGH,
    3552:	3101      	movi      	r1, 1
	tk_num=get_key_seq();
    3554:	a400      	st.b      	r0, (r4, 0x0)
	TK_con0_config(TK_HM_EN,TK_SEQ,(tk_num-1),TK_EC_LEVEL,TK_CKSPR_DIS,TK_CKRND_DIS,TK_CKREQ_HIGH,
    3556:	8440      	ld.b      	r2, (r4, 0x0)
    3558:	1264      	lrw      	r3, 0x2000012c	// 3668 <tk_init+0x178>
    355a:	8b60      	ld.h      	r3, (r3, 0x0)
    355c:	b829      	st.w      	r1, (r14, 0x24)
    355e:	3180      	movi      	r1, 128
    3560:	412d      	lsli      	r1, r1, 13
    3562:	b828      	st.w      	r1, (r14, 0x20)
    3564:	3180      	movi      	r1, 128
    3566:	4129      	lsli      	r1, r1, 9
    3568:	b827      	st.w      	r1, (r14, 0x1c)
    356a:	3100      	movi      	r1, 0
    356c:	b826      	st.w      	r1, (r14, 0x18)
    356e:	2a00      	subi      	r2, 1
    3570:	111f      	lrw      	r0, 0x20000134	// 366c <tk_init+0x17c>
    3572:	8800      	ld.h      	r0, (r0, 0x0)
    3574:	b805      	st.w      	r0, (r14, 0x14)
    3576:	7488      	zextb      	r2, r2
    3578:	111e      	lrw      	r0, 0x2000013e	// 3670 <tk_init+0x180>
    357a:	8800      	ld.h      	r0, (r0, 0x0)
    357c:	b804      	st.w      	r0, (r14, 0x10)
    357e:	3080      	movi      	r0, 128
    3580:	4005      	lsli      	r0, r0, 5
    3582:	b803      	st.w      	r0, (r14, 0xc)
    3584:	3080      	movi      	r0, 128
    3586:	4004      	lsli      	r0, r0, 4
    3588:	b802      	st.w      	r0, (r14, 0x8)
    358a:	b821      	st.w      	r1, (r14, 0x4)
    358c:	b820      	st.w      	r1, (r14, 0x0)
    358e:	3001      	movi      	r0, 1
    3590:	3102      	movi      	r1, 2
    3592:	e3fffa51 	bsr      	0x2a34	// 2a34 <TK_con0_config>
    3596:	3020      	movi      	r0, 32
    3598:	e3fffa32 	bsr      	0x29fc	// 29fc <TK_ConfigInterrupt_CMD.part.0>
				TK_RSSEL_OverTHR,TK_PSEL_MODE,TK_FVR_LEVEL,TK_IDLEP_DIS,TK_DSR_LOW,TK_STB_2,1);
	TK_ConfigInterrupt_CMD(ENABLE,TKEY_TIME);
	INTC_ISER_WRITE(TKEY_INT);
    359c:	3380      	movi      	r3, 128
    359e:	1156      	lrw      	r2, 0xe000e100	// 3674 <tk_init+0x184>
    35a0:	4372      	lsli      	r3, r3, 18
    35a2:	b260      	st.w      	r3, (r2, 0x0)
	INTC_IWER_WRITE(TKEY_INT);
    35a4:	b270      	st.w      	r3, (r2, 0x40)
    35a6:	b88c      	st.w      	r4, (r14, 0x30)
	for(i=0;i<tk_num;i++)
	{
	TKEYBUF->TCH_SEQCON[i]=(tk_div[tk_seque[i]]<<24)|(TK_icon[tk_seque[i]]<<20)|(tk_seque[i]<<15)|(TK_senprd[tk_seque[i]]<<0);
    35a8:	1154      	lrw      	r2, 0x20000054	// 3678 <tk_init+0x188>
    35aa:	11b5      	lrw      	r5, 0x20000384	// 367c <tk_init+0x18c>
    35ac:	11d5      	lrw      	r6, 0x200000e2	// 3680 <tk_init+0x190>
    35ae:	11f6      	lrw      	r7, 0x200000b2	// 3684 <tk_init+0x194>
    35b0:	9260      	ld.w      	r3, (r2, 0x0)
    35b2:	b86a      	st.w      	r3, (r14, 0x28)
    35b4:	b84d      	st.w      	r2, (r14, 0x34)
	for(i=0;i<tk_num;i++)
    35b6:	3300      	movi      	r3, 0
    35b8:	984c      	ld.w      	r2, (r14, 0x30)
    35ba:	8240      	ld.b      	r2, (r2, 0x0)
    35bc:	648c      	cmphs      	r3, r2
    35be:	0c26      	bf      	0x360a	// 360a <tk_init+0x11a>
	}
	TK_Baseline_prog();
    35c0:	e3fffc02 	bsr      	0x2dc4	// 2dc4 <TK_Baseline_prog>
	tk_poweron_data_fineturn();
    35c4:	e3fffc66 	bsr      	0x2e90	// 2e90 <tk_poweron_data_fineturn>
	TK_IO_Temp=TK_IO_ENABLE;
    35c8:	1170      	lrw      	r3, 0x200000dc	// 3688 <tk_init+0x198>
	for(i=0;i<17;i++)
	{
	TKEYBUF->TCH_SEQCON[i]=0;
    35ca:	3412      	movi      	r4, 18
	TK_IO_Temp=TK_IO_ENABLE;
    35cc:	9340      	ld.w      	r2, (r3, 0x0)
	TKEYBUF->TCH_SEQCON[i]=0;
    35ce:	3100      	movi      	r1, 0
	TK_IO_Temp=TK_IO_ENABLE;
    35d0:	116f      	lrw      	r3, 0x20000178	// 368c <tk_init+0x19c>
    35d2:	b340      	st.w      	r2, (r3, 0x0)
	TKEYBUF->TCH_SEQCON[i]=0;
    35d4:	986d      	ld.w      	r3, (r14, 0x34)
    35d6:	9300      	ld.w      	r0, (r3, 0x0)
    35d8:	3200      	movi      	r2, 0
    35da:	5a70      	addu      	r3, r2, r4
    35dc:	4362      	lsli      	r3, r3, 2
    35de:	2200      	addi      	r2, 1
    35e0:	60c0      	addu      	r3, r0
	for(i=0;i<17;i++)
    35e2:	3a51      	cmpnei      	r2, 17
	TKEYBUF->TCH_SEQCON[i]=0;
    35e4:	b320      	st.w      	r1, (r3, 0x0)
	for(i=0;i<17;i++)
    35e6:	0bfa      	bt      	0x35da	// 35da <tk_init+0xea>
	}
	TKEY->TCH_CON0 &=0xffffff83;
    35e8:	107b      	lrw      	r3, 0x20000058	// 3654 <tk_init+0x164>
    35ea:	317c      	movi      	r1, 124
    35ec:	9340      	ld.w      	r2, (r3, 0x0)
    35ee:	9261      	ld.w      	r3, (r2, 0x4)
    35f0:	68c5      	andn      	r3, r1
    35f2:	b261      	st.w      	r3, (r2, 0x4)
	nop;
    35f4:	6c03      	mov      	r0, r0
}
    35f6:	140e      	addi      	r14, r14, 56
    35f8:	1494      	pop      	r4-r7, r15
			case 1: lpt_scan_pend_cnt=1500;break;
    35fa:	1146      	lrw      	r2, 0x5dc	// 3690 <tk_init+0x1a0>
    35fc:	079e      	br      	0x3538	// 3538 <tk_init+0x48>
			case 3: lpt_scan_pend_cnt=4500;break;
    35fe:	1146      	lrw      	r2, 0x1194	// 3694 <tk_init+0x1a4>
    3600:	079c      	br      	0x3538	// 3538 <tk_init+0x48>
			case 4: lpt_scan_pend_cnt=6000;break;
    3602:	1146      	lrw      	r2, 0x1770	// 3698 <tk_init+0x1a8>
    3604:	079a      	br      	0x3538	// 3538 <tk_init+0x48>
			default: lpt_scan_pend_cnt=3000;break;
    3606:	1146      	lrw      	r2, 0xbb8	// 369c <tk_init+0x1ac>
    3608:	0798      	br      	0x3538	// 3538 <tk_init+0x48>
	TKEYBUF->TCH_SEQCON[i]=(tk_div[tk_seque[i]]<<24)|(TK_icon[tk_seque[i]]<<20)|(tk_seque[i]<<15)|(TK_senprd[tk_seque[i]]<<0);
    360a:	5d0c      	addu      	r0, r5, r3
    360c:	8020      	ld.b      	r1, (r0, 0x0)
    360e:	8040      	ld.b      	r2, (r0, 0x0)
    3610:	8080      	ld.b      	r4, (r0, 0x0)
    3612:	8000      	ld.b      	r0, (r0, 0x0)
    3614:	4001      	lsli      	r0, r0, 1
    3616:	6018      	addu      	r0, r6
    3618:	8800      	ld.h      	r0, (r0, 0x0)
    361a:	448f      	lsli      	r4, r4, 15
    361c:	6d00      	or      	r4, r0
    361e:	4121      	lsli      	r1, r1, 1
    3620:	980b      	ld.w      	r0, (r14, 0x2c)
    3622:	6040      	addu      	r1, r0
    3624:	8900      	ld.h      	r0, (r1, 0x0)
    3626:	4241      	lsli      	r2, r2, 1
    3628:	609c      	addu      	r2, r7
    362a:	4018      	lsli      	r0, r0, 24
    362c:	6c10      	or      	r0, r4
    362e:	8a80      	ld.h      	r4, (r2, 0x0)
    3630:	3212      	movi      	r2, 18
    3632:	608c      	addu      	r2, r3
    3634:	4494      	lsli      	r4, r4, 20
    3636:	4242      	lsli      	r2, r2, 2
    3638:	982a      	ld.w      	r1, (r14, 0x28)
    363a:	6c10      	or      	r0, r4
    363c:	6084      	addu      	r2, r1
	for(i=0;i<tk_num;i++)
    363e:	2300      	addi      	r3, 1
	TKEYBUF->TCH_SEQCON[i]=(tk_div[tk_seque[i]]<<24)|(TK_icon[tk_seque[i]]<<20)|(tk_seque[i]<<15)|(TK_senprd[tk_seque[i]]<<0);
    3640:	b200      	st.w      	r0, (r2, 0x0)
	for(i=0;i<tk_num;i++)
    3642:	74cc      	zextb      	r3, r3
    3644:	07ba      	br      	0x35b8	// 35b8 <tk_init+0xc8>
    3646:	0000      	bkpt
    3648:	20000068 	.long	0x20000068
    364c:	40011200 	.long	0x40011200
    3650:	200000a1 	.long	0x200000a1
    3654:	20000058 	.long	0x20000058
    3658:	20000108 	.long	0x20000108
    365c:	200000a2 	.long	0x200000a2
    3660:	200002a8 	.long	0x200002a8
    3664:	2000034b 	.long	0x2000034b
    3668:	2000012c 	.long	0x2000012c
    366c:	20000134 	.long	0x20000134
    3670:	2000013e 	.long	0x2000013e
    3674:	e000e100 	.long	0xe000e100
    3678:	20000054 	.long	0x20000054
    367c:	20000384 	.long	0x20000384
    3680:	200000e2 	.long	0x200000e2
    3684:	200000b2 	.long	0x200000b2
    3688:	200000dc 	.long	0x200000dc
    368c:	20000178 	.long	0x20000178
    3690:	000005dc 	.long	0x000005dc
    3694:	00001194 	.long	0x00001194
    3698:	00001770 	.long	0x00001770
    369c:	00000bb8 	.long	0x00000bb8

Disassembly of section .text.tk_prgm:

000036a0 <tk_prgm>:
/****************************************************
//TK main
*****************************************************/
void tk_prgm(void)
{
    36a0:	14d0      	push      	r15
	TK_Sampling_prog();
    36a2:	e3fffac1 	bsr      	0x2c24	// 2c24 <TK_Sampling_prog>
	TK_Keymap_prog();
    36a6:	e3fffc87 	bsr      	0x2fb4	// 2fb4 <TK_Keymap_prog>
	TK_Baseline_tracking();
    36aa:	e3fffdd5 	bsr      	0x3254	// 3254 <TK_Baseline_tracking>
	TK_overflow_predict();
    36ae:	e3fffd43 	bsr      	0x3134	// 3134 <TK_overflow_predict>
	TK_result_prog();
    36b2:	e3fffeb9 	bsr      	0x3424	// 3424 <TK_result_prog>
}
    36b6:	1490      	pop      	r15

Disassembly of section .text.std_clk_calib_source:

000036b8 <std_clk_calib_source>:



void std_clk_calib_source(CALIB_SRC_SELECTE_TypeDef SRC_CALIB_X)
{
	if(SRC_CALIB_X==CLK_ISOSC_27K)
    36b8:	3840      	cmpnei      	r0, 0
    36ba:	1069      	lrw      	r3, 0x20000014	// 36dc <std_clk_calib_source+0x24>
    36bc:	0807      	bt      	0x36ca	// 36ca <std_clk_calib_source+0x12>
		LPT->CEDR = 0xbe9c000d;
		LPT->PRDR =262;
	}
	else 
	{
		LPT->CEDR = 0xbe9c0005;
    36be:	9360      	ld.w      	r3, (r3, 0x0)
    36c0:	1048      	lrw      	r2, 0xbe9c0005	// 36e0 <std_clk_calib_source+0x28>
    36c2:	b340      	st.w      	r2, (r3, 0x0)
		LPT->PRDR =216;
    36c4:	32d8      	movi      	r2, 216
    36c6:	b345      	st.w      	r2, (r3, 0x14)
	}
}
    36c8:	0409      	br      	0x36da	// 36da <std_clk_calib_source+0x22>
	else if(SRC_CALIB_X==CLK_EMOSC_32_768K)
    36ca:	3841      	cmpnei      	r0, 1
    36cc:	0bf9      	bt      	0x36be	// 36be <std_clk_calib_source+0x6>
		LPT->CEDR = 0xbe9c000d;
    36ce:	9340      	ld.w      	r2, (r3, 0x0)
    36d0:	1065      	lrw      	r3, 0xbe9c000d	// 36e4 <std_clk_calib_source+0x2c>
    36d2:	b260      	st.w      	r3, (r2, 0x0)
		LPT->PRDR =262;
    36d4:	3383      	movi      	r3, 131
    36d6:	4361      	lsli      	r3, r3, 1
    36d8:	b265      	st.w      	r3, (r2, 0x14)
}
    36da:	783c      	jmp      	r15
    36dc:	20000014 	.long	0x20000014
    36e0:	be9c0005 	.long	0xbe9c0005
    36e4:	be9c000d 	.long	0xbe9c000d

Disassembly of section .text.std_clk_calib:

000036e8 <std_clk_calib>:

U8_T std_clk_calib(CALIB_OSC_SELECTE_TypeDef OSC_CALIB_X)
{
    36e8:	14d4      	push      	r4-r7, r15
    36ea:	142d      	subi      	r14, r14, 52
	volatile U8_T eClkSrc;
	volatile U32_T  wPclkValue,wCheckData,tClkCalibMin,tClkCalibMax;
	volatile U8_T byFlag = 1,byDiv; 
    36ec:	3201      	movi      	r2, 1
	volatile U32_T  wClkCalibStep,tClkClcrValue,tClkCalibBtSumValue;
	volatile U32_T tClkCalibBtCntValue[3];
	
	eClkSrc=SYSCON->SCLKCR&0xff;
    36ee:	03cd      	lrw      	r6, 0x2000005c	// 3934 <std_clk_calib+0x24c>
{
    36f0:	6cc3      	mov      	r3, r0
	volatile U8_T byFlag = 1,byDiv; 
    36f2:	dc4e000a 	st.b      	r2, (r14, 0xa)
	eClkSrc=SYSCON->SCLKCR&0xff;
    36f6:	9640      	ld.w      	r2, (r6, 0x0)
    36f8:	9247      	ld.w      	r2, (r2, 0x1c)
    36fa:	7488      	zextb      	r2, r2
    36fc:	dc4e0009 	st.b      	r2, (r14, 0x9)
	if((eClkSrc!=0x00)&&(eClkSrc!=0x02))
    3700:	d84e0009 	ld.b      	r2, (r14, 0x9)
    3704:	3a40      	cmpnei      	r2, 0
    3706:	0c08      	bf      	0x3716	// 3716 <std_clk_calib+0x2e>
    3708:	d84e0009 	ld.b      	r2, (r14, 0x9)
    370c:	3a42      	cmpnei      	r2, 2
    370e:	0c04      	bf      	0x3716	// 3716 <std_clk_calib+0x2e>
			{
				tClkClcrValue = tClkClcrValue + wClkCalibStep ;
				if((tClkClcrValue&0xff0000)==0xff0000)
				{
					byFlag =0;
					return ERROR;	
    3710:	3000      	movi      	r0, 0
	}
	LPT->RSSR |= (0X5<<12);
	BT0->RSSR |= (0X5<<12);
	asm  ("psrset ee,ie");  
	return SUCCESS;
}
    3712:	140d      	addi      	r14, r14, 52
    3714:	1494      	pop      	r4-r7, r15
	BT0->CR = 0x09;
    3716:	0396      	lrw      	r4, 0x2000000c	// 3938 <std_clk_calib+0x250>
    3718:	3209      	movi      	r2, 9
    371a:	9400      	ld.w      	r0, (r4, 0x0)
	if(OSC_CALIB_X==CLK_HFOSC_48M)
    371c:	3b40      	cmpnei      	r3, 0
	BT0->CR = 0x09;
    371e:	b041      	st.w      	r2, (r0, 0x4)
	if(OSC_CALIB_X==CLK_HFOSC_48M)
    3720:	0858      	bt      	0x37d0	// 37d0 <std_clk_calib+0xe8>
		byDiv = 7;
    3722:	3307      	movi      	r3, 7
    3724:	dc6e000b 	st.b      	r3, (r14, 0xb)
		wPclkValue=48000000;
    3728:	037a      	lrw      	r3, 0x2dc6c00	// 393c <std_clk_calib+0x254>
		wPclkValue=12000000;
    372a:	b863      	st.w      	r3, (r14, 0xc)
		wClkCalibStep=CLCE_STEP_HF;
    372c:	3380      	movi      	r3, 128
    372e:	4362      	lsli      	r3, r3, 2
		wClkCalibStep=CLCE_STEP_IM;
    3730:	b867      	st.w      	r3, (r14, 0x1c)
	BT0->PSCR = byDiv;
    3732:	d86e000b 	ld.b      	r3, (r14, 0xb)
    3736:	74cc      	zextb      	r3, r3
    3738:	b062      	st.w      	r3, (r0, 0x8)
	BT0->PRDR = 65535;
    373a:	037d      	lrw      	r3, 0xffff	// 3940 <std_clk_calib+0x258>
    373c:	b063      	st.w      	r3, (r0, 0xc)
	BT_ConfigInterrupt_CMD(BT0,ENABLE,BT_PEND);
    373e:	3201      	movi      	r2, 1
    3740:	3101      	movi      	r1, 1
	LPT->PSCR = LPT_PSC_DIV0;
    3742:	03be      	lrw      	r5, 0x20000014	// 3944 <std_clk_calib+0x25c>
	BT_ConfigInterrupt_CMD(BT0,ENABLE,BT_PEND);
    3744:	e3fff32c 	bsr      	0x1d9c	// 1d9c <BT_ConfigInterrupt_CMD>
	LPT->PSCR = LPT_PSC_DIV0;
    3748:	95e0      	ld.w      	r7, (r5, 0x0)
    374a:	3300      	movi      	r3, 0
	LPT->CR = 0x30010;
    374c:	135f      	lrw      	r2, 0x30010	// 3948 <std_clk_calib+0x260>
	LPT->PSCR = LPT_PSC_DIV0;
    374e:	b762      	st.w      	r3, (r7, 0x8)
	LPT->CR = 0x30010;
    3750:	b743      	st.w      	r2, (r7, 0xc)
	LPT->IMCR  |=LPT_PEND;
    3752:	974f      	ld.w      	r2, (r7, 0x3c)
    3754:	3aa2      	bseti      	r2, 2
    3756:	b74f      	st.w      	r2, (r7, 0x3c)
	wCheckData = wPclkValue/(125*(byDiv + 1));                         //(wPclkValue*8)/(1000*(byDiv + 1))
    3758:	9803      	ld.w      	r0, (r14, 0xc)
    375a:	d82e000b 	ld.b      	r1, (r14, 0xb)
    375e:	327d      	movi      	r2, 125
    3760:	2100      	addi      	r1, 1
    3762:	7c48      	mult      	r1, r2
	LPT->PSCR = LPT_PSC_DIV0;
    3764:	b861      	st.w      	r3, (r14, 0x4)
	wCheckData = wPclkValue/(125*(byDiv + 1));                         //(wPclkValue*8)/(1000*(byDiv + 1))
    3766:	e3fff935 	bsr      	0x29d0	// 29d0 <__udivsi3>
    376a:	b804      	st.w      	r0, (r14, 0x10)
	if(wCheckData <= 1000)
    376c:	32fa      	movi      	r2, 250
    376e:	9824      	ld.w      	r1, (r14, 0x10)
    3770:	4242      	lsli      	r2, r2, 2
    3772:	6448      	cmphs      	r2, r1
    3774:	0bce      	bt      	0x3710	// 3710 <std_clk_calib+0x28>
	tClkCalibMin=wCheckData - (wCheckData/120);
    3776:	9844      	ld.w      	r2, (r14, 0x10)
    3778:	3178      	movi      	r1, 120
    377a:	9804      	ld.w      	r0, (r14, 0x10)
    377c:	b840      	st.w      	r2, (r14, 0x0)
    377e:	e3fff929 	bsr      	0x29d0	// 29d0 <__udivsi3>
    3782:	9840      	ld.w      	r2, (r14, 0x0)
    3784:	6082      	subu      	r2, r0
    3786:	b845      	st.w      	r2, (r14, 0x14)
	tClkCalibMax=wCheckData + (wCheckData/120);	
    3788:	9804      	ld.w      	r0, (r14, 0x10)
    378a:	3178      	movi      	r1, 120
    378c:	9844      	ld.w      	r2, (r14, 0x10)
    378e:	b840      	st.w      	r2, (r14, 0x0)
    3790:	e3fff920 	bsr      	0x29d0	// 29d0 <__udivsi3>
    3794:	9840      	ld.w      	r2, (r14, 0x0)
    3796:	6008      	addu      	r0, r2
    3798:	b806      	st.w      	r0, (r14, 0x18)
	asm  ("psrclr ie");                                                 //disable interrupt
    379a:	c0807020 	psrclr      	ie
	tClkClcrValue = SYSCON->CLCR;
    379e:	9640      	ld.w      	r2, (r6, 0x0)
    37a0:	9254      	ld.w      	r2, (r2, 0x50)
    37a2:	b848      	st.w      	r2, (r14, 0x20)
	BT0->RSSR =0;  //stop;
    37a4:	9861      	ld.w      	r3, (r14, 0x4)
    37a6:	9440      	ld.w      	r2, (r4, 0x0)
    37a8:	b260      	st.w      	r3, (r2, 0x0)
	LPT->RSSR = 0; //stop
    37aa:	b761      	st.w      	r3, (r7, 0x4)
	while(byFlag)
    37ac:	d86e000a 	ld.b      	r3, (r14, 0xa)
    37b0:	3b40      	cmpnei      	r3, 0
    37b2:	0843      	bt      	0x3838	// 3838 <std_clk_calib+0x150>
	LPT->RSSR |= (0X5<<12);
    37b4:	9540      	ld.w      	r2, (r5, 0x0)
    37b6:	9261      	ld.w      	r3, (r2, 0x4)
    37b8:	3bac      	bseti      	r3, 12
    37ba:	3bae      	bseti      	r3, 14
    37bc:	b261      	st.w      	r3, (r2, 0x4)
	BT0->RSSR |= (0X5<<12);
    37be:	9440      	ld.w      	r2, (r4, 0x0)
    37c0:	9260      	ld.w      	r3, (r2, 0x0)
    37c2:	3bac      	bseti      	r3, 12
    37c4:	3bae      	bseti      	r3, 14
    37c6:	b260      	st.w      	r3, (r2, 0x0)
	asm  ("psrset ee,ie");  
    37c8:	c1807420 	psrset      	ee, ie
	return SUCCESS;
    37cc:	3001      	movi      	r0, 1
    37ce:	07a2      	br      	0x3712	// 3712 <std_clk_calib+0x2a>
	if(OSC_CALIB_X==CLK_HFOSC_24M) 
    37d0:	3b41      	cmpnei      	r3, 1
    37d2:	0806      	bt      	0x37de	// 37de <std_clk_calib+0xf6>
		byDiv = 3;
    37d4:	3303      	movi      	r3, 3
    37d6:	dc6e000b 	st.b      	r3, (r14, 0xb)
		wPclkValue=24000000;
    37da:	127d      	lrw      	r3, 0x16e3600	// 394c <std_clk_calib+0x264>
    37dc:	07a7      	br      	0x372a	// 372a <std_clk_calib+0x42>
	if(OSC_CALIB_X==CLK_HFOSC_12M)
    37de:	3b42      	cmpnei      	r3, 2
    37e0:	0806      	bt      	0x37ec	// 37ec <std_clk_calib+0x104>
		byDiv = 1;	
    37e2:	3301      	movi      	r3, 1
    37e4:	dc6e000b 	st.b      	r3, (r14, 0xb)
		wPclkValue=12000000;
    37e8:	127a      	lrw      	r3, 0xb71b00	// 3950 <std_clk_calib+0x268>
    37ea:	07a0      	br      	0x372a	// 372a <std_clk_calib+0x42>
	if(OSC_CALIB_X==CLK_HFOSC_6M)
    37ec:	3b43      	cmpnei      	r3, 3
    37ee:	0806      	bt      	0x37fa	// 37fa <std_clk_calib+0x112>
		byDiv = 0;
    37f0:	3300      	movi      	r3, 0
    37f2:	dc6e000b 	st.b      	r3, (r14, 0xb)
		wPclkValue=6000000;
    37f6:	1278      	lrw      	r3, 0x5b8d80	// 3954 <std_clk_calib+0x26c>
    37f8:	0799      	br      	0x372a	// 372a <std_clk_calib+0x42>
	if(OSC_CALIB_X==CLK_IMOSC_5556K)
    37fa:	3b44      	cmpnei      	r3, 4
    37fc:	0809      	bt      	0x380e	// 380e <std_clk_calib+0x126>
		byDiv = 0;
    37fe:	3300      	movi      	r3, 0
    3800:	dc6e000b 	st.b      	r3, (r14, 0xb)
		wPclkValue=5556000;
    3804:	1275      	lrw      	r3, 0x54c720	// 3958 <std_clk_calib+0x270>
		wPclkValue=131000;
    3806:	b863      	st.w      	r3, (r14, 0xc)
		wClkCalibStep=CLCE_STEP_IM;
    3808:	3380      	movi      	r3, 128
    380a:	4369      	lsli      	r3, r3, 9
    380c:	0792      	br      	0x3730	// 3730 <std_clk_calib+0x48>
	if(OSC_CALIB_X==CLK_IMOSC_4194K)
    380e:	3b45      	cmpnei      	r3, 5
    3810:	0806      	bt      	0x381c	// 381c <std_clk_calib+0x134>
		byDiv = 0;
    3812:	3300      	movi      	r3, 0
    3814:	dc6e000b 	st.b      	r3, (r14, 0xb)
		wPclkValue=4194000;
    3818:	1271      	lrw      	r3, 0x3ffed0	// 395c <std_clk_calib+0x274>
    381a:	07f6      	br      	0x3806	// 3806 <std_clk_calib+0x11e>
	if(OSC_CALIB_X==CLK_IMOSC_2097K)
    381c:	3b46      	cmpnei      	r3, 6
    381e:	0806      	bt      	0x382a	// 382a <std_clk_calib+0x142>
		byDiv = 0;
    3820:	3300      	movi      	r3, 0
    3822:	dc6e000b 	st.b      	r3, (r14, 0xb)
		wPclkValue=2097000;
    3826:	126f      	lrw      	r3, 0x1fff68	// 3960 <std_clk_calib+0x278>
    3828:	07ef      	br      	0x3806	// 3806 <std_clk_calib+0x11e>
	if(OSC_CALIB_X==CLK_IMOSC_131K)
    382a:	3b47      	cmpnei      	r3, 7
    382c:	0b83      	bt      	0x3732	// 3732 <std_clk_calib+0x4a>
		byDiv = 0;
    382e:	3300      	movi      	r3, 0
    3830:	dc6e000b 	st.b      	r3, (r14, 0xb)
		wPclkValue=131000;
    3834:	126c      	lrw      	r3, 0x1ffb8	// 3964 <std_clk_calib+0x27c>
    3836:	07e8      	br      	0x3806	// 3806 <std_clk_calib+0x11e>
		LPT->RSSR = 1;
    3838:	9560      	ld.w      	r3, (r5, 0x0)
    383a:	3101      	movi      	r1, 1
	    BT0->RSSR =1;
    383c:	9440      	ld.w      	r2, (r4, 0x0)
		LPT->RSSR = 1;
    383e:	b321      	st.w      	r1, (r3, 0x4)
	    BT0->RSSR =1;
    3840:	b220      	st.w      	r1, (r2, 0x0)
		LPT->CNT = 0;
    3842:	3100      	movi      	r1, 0
    3844:	b327      	st.w      	r1, (r3, 0x1c)
		while(!(LPT->MISR&0x04));
    3846:	3004      	movi      	r0, 4
		BT0->CNT =0;
    3848:	b225      	st.w      	r1, (r2, 0x14)
		while(!(LPT->MISR&0x04));
    384a:	932e      	ld.w      	r1, (r3, 0x38)
    384c:	6840      	and      	r1, r0
    384e:	3940      	cmpnei      	r1, 0
    3850:	0ffd      	bf      	0x384a	// 384a <std_clk_calib+0x162>
		tClkCalibBtCntValue[0] = BT0->CNT;
    3852:	9225      	ld.w      	r1, (r2, 0x14)
    3854:	b82a      	st.w      	r1, (r14, 0x28)
		LPT->CNT = 0;
    3856:	3100      	movi      	r1, 0
		LPT->ICR = LPT_PEND;
    3858:	b310      	st.w      	r0, (r3, 0x40)
		LPT->CNT = 0;
    385a:	b327      	st.w      	r1, (r3, 0x1c)
		while(!(LPT->MISR&0x04));
    385c:	3004      	movi      	r0, 4
		BT0->CNT =0;	
    385e:	b225      	st.w      	r1, (r2, 0x14)
		while(!(LPT->MISR&0x04));
    3860:	932e      	ld.w      	r1, (r3, 0x38)
    3862:	6840      	and      	r1, r0
    3864:	3940      	cmpnei      	r1, 0
    3866:	0ffd      	bf      	0x3860	// 3860 <std_clk_calib+0x178>
		tClkCalibBtCntValue[1] = BT0->CNT;
    3868:	9225      	ld.w      	r1, (r2, 0x14)
    386a:	b82b      	st.w      	r1, (r14, 0x2c)
		LPT->CNT = 0;
    386c:	3100      	movi      	r1, 0
		LPT->ICR = LPT_PEND;
    386e:	b310      	st.w      	r0, (r3, 0x40)
		LPT->CNT = 0;
    3870:	b327      	st.w      	r1, (r3, 0x1c)
		while(!(LPT->MISR&0x04));
    3872:	3004      	movi      	r0, 4
		BT0->CNT =0;	
    3874:	b225      	st.w      	r1, (r2, 0x14)
		while(!(LPT->MISR&0x04));
    3876:	932e      	ld.w      	r1, (r3, 0x38)
    3878:	6840      	and      	r1, r0
    387a:	3940      	cmpnei      	r1, 0
    387c:	0ffd      	bf      	0x3876	// 3876 <std_clk_calib+0x18e>
		tClkCalibBtCntValue[2] = BT0->CNT;
    387e:	9225      	ld.w      	r1, (r2, 0x14)
    3880:	b82c      	st.w      	r1, (r14, 0x30)
		LPT->ICR = LPT_PEND;	
    3882:	b310      	st.w      	r0, (r3, 0x40)
		tClkCalibBtSumValue = tClkCalibBtCntValue[1]+tClkCalibBtCntValue[2];
    3884:	982b      	ld.w      	r1, (r14, 0x2c)
    3886:	980c      	ld.w      	r0, (r14, 0x30)
    3888:	6040      	addu      	r1, r0
    388a:	b829      	st.w      	r1, (r14, 0x24)
		tClkCalibBtSumValue = tClkCalibBtSumValue/2;
    388c:	9829      	ld.w      	r1, (r14, 0x24)
    388e:	4921      	lsri      	r1, r1, 1
    3890:	b829      	st.w      	r1, (r14, 0x24)
		LPT->RSSR = 0;
    3892:	3100      	movi      	r1, 0
    3894:	b321      	st.w      	r1, (r3, 0x4)
	    BT0->RSSR =0;
    3896:	b220      	st.w      	r1, (r2, 0x0)
		LPT->CNT = 0;
    3898:	b327      	st.w      	r1, (r3, 0x1c)
		BT0->CNT =0;
    389a:	b225      	st.w      	r1, (r2, 0x14)
		if(eClkSrc == 0x02)
    389c:	d86e0009 	ld.b      	r3, (r14, 0x9)
    38a0:	3b42      	cmpnei      	r3, 2
			if(tClkCalibBtSumValue<0x800)
    38a2:	9849      	ld.w      	r2, (r14, 0x24)
		if(eClkSrc == 0x02)
    38a4:	082c      	bt      	0x38fc	// 38fc <std_clk_calib+0x214>
			if(tClkCalibBtSumValue<0x800)
    38a6:	1171      	lrw      	r3, 0x7ff	// 3968 <std_clk_calib+0x280>
    38a8:	648c      	cmphs      	r3, r2
    38aa:	0c03      	bf      	0x38b0	// 38b0 <std_clk_calib+0x1c8>
					byFlag =0;
    38ac:	3300      	movi      	r3, 0
    38ae:	040f      	br      	0x38cc	// 38cc <std_clk_calib+0x1e4>
			else if(tClkCalibBtSumValue>tClkCalibMax)  
    38b0:	9849      	ld.w      	r2, (r14, 0x24)
    38b2:	9866      	ld.w      	r3, (r14, 0x18)
    38b4:	648c      	cmphs      	r3, r2
    38b6:	080e      	bt      	0x38d2	// 38d2 <std_clk_calib+0x1ea>
				tClkClcrValue = tClkClcrValue - wClkCalibStep ;
    38b8:	9868      	ld.w      	r3, (r14, 0x20)
    38ba:	9847      	ld.w      	r2, (r14, 0x1c)
    38bc:	60ca      	subu      	r3, r2
    38be:	b868      	st.w      	r3, (r14, 0x20)
				if((tClkClcrValue&0xfe00)==0)
    38c0:	32fe      	movi      	r2, 254
    38c2:	9868      	ld.w      	r3, (r14, 0x20)
    38c4:	4248      	lsli      	r2, r2, 8
				if((tClkClcrValue&0xff0000)==0)
    38c6:	68c8      	and      	r3, r2
    38c8:	3b40      	cmpnei      	r3, 0
    38ca:	0812      	bt      	0x38ee	// 38ee <std_clk_calib+0x206>
					byFlag =0;
    38cc:	dc6e000a 	st.b      	r3, (r14, 0xa)
    38d0:	0720      	br      	0x3710	// 3710 <std_clk_calib+0x28>
			else if(tClkCalibBtSumValue<tClkCalibMin)  
    38d2:	9849      	ld.w      	r2, (r14, 0x24)
    38d4:	9865      	ld.w      	r3, (r14, 0x14)
    38d6:	64c8      	cmphs      	r2, r3
    38d8:	0829      	bt      	0x392a	// 392a <std_clk_calib+0x242>
				tClkClcrValue = tClkClcrValue + wClkCalibStep ;
    38da:	9868      	ld.w      	r3, (r14, 0x20)
    38dc:	9847      	ld.w      	r2, (r14, 0x1c)
    38de:	60c8      	addu      	r3, r2
    38e0:	b868      	st.w      	r3, (r14, 0x20)
				if((tClkClcrValue&0xfe00)==0xfe00)
    38e2:	33fe      	movi      	r3, 254
    38e4:	9848      	ld.w      	r2, (r14, 0x20)
    38e6:	4368      	lsli      	r3, r3, 8
				if((tClkClcrValue&0xff0000)==0xff0000)
    38e8:	688c      	and      	r2, r3
    38ea:	64ca      	cmpne      	r2, r3
    38ec:	0fe0      	bf      	0x38ac	// 38ac <std_clk_calib+0x1c4>
				SYSCON->CLCR = tClkClcrValue;
    38ee:	9660      	ld.w      	r3, (r6, 0x0)
    38f0:	9848      	ld.w      	r2, (r14, 0x20)
    38f2:	b354      	st.w      	r2, (r3, 0x50)
		delay_nms(1);
    38f4:	3001      	movi      	r0, 1
    38f6:	e3fff2f5 	bsr      	0x1ee0	// 1ee0 <delay_nms>
    38fa:	0759      	br      	0x37ac	// 37ac <std_clk_calib+0xc4>
			if(tClkCalibBtSumValue>tClkCalibMax)                    
    38fc:	9866      	ld.w      	r3, (r14, 0x18)
    38fe:	648c      	cmphs      	r3, r2
    3900:	0809      	bt      	0x3912	// 3912 <std_clk_calib+0x22a>
				tClkClcrValue = tClkClcrValue - wClkCalibStep;
    3902:	9868      	ld.w      	r3, (r14, 0x20)
    3904:	9847      	ld.w      	r2, (r14, 0x1c)
    3906:	60ca      	subu      	r3, r2
    3908:	b868      	st.w      	r3, (r14, 0x20)
				if((tClkClcrValue&0xff0000)==0)
    390a:	32ff      	movi      	r2, 255
    390c:	9868      	ld.w      	r3, (r14, 0x20)
    390e:	4250      	lsli      	r2, r2, 16
    3910:	07db      	br      	0x38c6	// 38c6 <std_clk_calib+0x1de>
			else if(tClkCalibBtSumValue<tClkCalibMin)  
    3912:	9849      	ld.w      	r2, (r14, 0x24)
    3914:	9865      	ld.w      	r3, (r14, 0x14)
    3916:	64c8      	cmphs      	r2, r3
    3918:	0809      	bt      	0x392a	// 392a <std_clk_calib+0x242>
				tClkClcrValue = tClkClcrValue + wClkCalibStep ;
    391a:	9868      	ld.w      	r3, (r14, 0x20)
    391c:	9847      	ld.w      	r2, (r14, 0x1c)
    391e:	60c8      	addu      	r3, r2
    3920:	b868      	st.w      	r3, (r14, 0x20)
				if((tClkClcrValue&0xff0000)==0xff0000)
    3922:	33ff      	movi      	r3, 255
    3924:	9848      	ld.w      	r2, (r14, 0x20)
    3926:	4370      	lsli      	r3, r3, 16
    3928:	07e0      	br      	0x38e8	// 38e8 <std_clk_calib+0x200>
				byFlag =0;
    392a:	3300      	movi      	r3, 0
    392c:	dc6e000a 	st.b      	r3, (r14, 0xa)
    3930:	07e2      	br      	0x38f4	// 38f4 <std_clk_calib+0x20c>
    3932:	0000      	bkpt
    3934:	2000005c 	.long	0x2000005c
    3938:	2000000c 	.long	0x2000000c
    393c:	02dc6c00 	.long	0x02dc6c00
    3940:	0000ffff 	.long	0x0000ffff
    3944:	20000014 	.long	0x20000014
    3948:	00030010 	.long	0x00030010
    394c:	016e3600 	.long	0x016e3600
    3950:	00b71b00 	.long	0x00b71b00
    3954:	005b8d80 	.long	0x005b8d80
    3958:	0054c720 	.long	0x0054c720
    395c:	003ffed0 	.long	0x003ffed0
    3960:	001fff68 	.long	0x001fff68
    3964:	0001ffb8 	.long	0x0001ffb8
    3968:	000007ff 	.long	0x000007ff

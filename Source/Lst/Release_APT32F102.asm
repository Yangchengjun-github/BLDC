
.//Obj/Release_APT32F102.elf:     file format elf32-csky-little


Disassembly of section .text:

00000000 <vector_table>:
void tk_parameter_init(void)
{
/****************************************************
//TK parameter define
*****************************************************/
	TK_IO_ENABLE=TCH_EN(6)|TCH_EN(7)|TCH_EN(8)|TCH_EN(9)|TCH_EN(10)|TCH_EN(11)|TCH_EN(12)|TCH_EN(13);	
       0:	0000010c 	.long	0x0000010c
       4:	0000368a 	.long	0x0000368a
	TK_senprd[0]=50;								//TCH0 scan period = TCH0 sens
       8:	0000367a 	.long	0x0000367a
	TK_senprd[11]=50;								//TCH11 scan period = TCH11 sens
	TK_senprd[12]=50;								//TCH12 scan period = TCH12 sens
	TK_senprd[13]=50;								//TCH13 scan period = TCH13 sens
	TK_senprd[14]=50;								//TCH14 scan period = TCH14 sens
	TK_senprd[15]=50;								//TCH15 scan period = TCH15 sens
	TK_senprd[16]=50;								//TCH16 scan period = TCH16 sens
       c:	00000184 	.long	0x00000184
	TK_senprd[1]=50;								//TCH1 scan period = TCH1 sens
      10:	00003682 	.long	0x00003682
	TK_senprd[3]=50;								//TCH3 scan period = TCH3 sens
      14:	00003640 	.long	0x00003640
	TK_senprd[5]=50;								//TCH5 scan period = TCH5 sens
      18:	00000184 	.long	0x00000184
	TK_senprd[7]=50;								//TCH7 scan period = TCH7 sens
      1c:	00003672 	.long	0x00003672
	TK_senprd[9]=50;								//TCH9 scan period = TCH9 sens
      20:	0000366a 	.long	0x0000366a
	TK_senprd[11]=50;								//TCH11 scan period = TCH11 sens
      24:	00000184 	.long	0x00000184
	TK_senprd[13]=50;								//TCH13 scan period = TCH13 sens
      28:	00000184 	.long	0x00000184
	TK_senprd[15]=50;								//TCH15 scan period = TCH15 sens
      2c:	00000184 	.long	0x00000184
	TK_Triggerlevel[0]=60;							//TCH0 TK_Trigger level
      30:	00000184 	.long	0x00000184
      34:	00000184 	.long	0x00000184
	TK_Triggerlevel[1]=60;							//TCH1 TK_Trigger level
	TK_Triggerlevel[2]=60;							//TCH2 TK_Trigger level
      38:	00000184 	.long	0x00000184
	TK_Triggerlevel[3]=60;							//TCH3 TK_Trigger level
	TK_Triggerlevel[4]=60;							//TCH4 TK_Trigger level
      3c:	00000184 	.long	0x00000184
	TK_Triggerlevel[5]=60;							//TCH5 TK_Trigger level
	TK_Triggerlevel[6]=60;							//TCH6 TK_Trigger level
      40:	00003662 	.long	0x00003662
	TK_Triggerlevel[7]=60;							//TCH7 TK_Trigger level
	TK_Triggerlevel[8]=60;							//TCH8 TK_Trigger level
      44:	0000365a 	.long	0x0000365a
	TK_Triggerlevel[9]=60;							//TCH9 TK_Trigger level
	TK_Triggerlevel[10]=60;							//TCH10 TK_Trigger level
      48:	00003652 	.long	0x00003652
	TK_Triggerlevel[11]=60;							//TCH11 TK_Trigger level
	TK_Triggerlevel[12]=60;							//TCH12 TK_Trigger level
      4c:	0000364a 	.long	0x0000364a
	TK_Triggerlevel[13]=60;							//TCH13 TK_Trigger level
	TK_Triggerlevel[14]=60;							//TCH14 TK_Trigger level
	TK_Triggerlevel[15]=60;							//TCH15 TK_Trigger level
      50:	00000184 	.long	0x00000184
	TK_Triggerlevel[16]=60;							//TCH16 TK_Trigger level
	Press_debounce_data=5;							//Press debounce 1~10
      54:	00000184 	.long	0x00000184
      58:	00000184 	.long	0x00000184
	Release_debounce_data=5;						//Release debounce 1~10
      5c:	00000184 	.long	0x00000184
	Key_mode=0;										//Key mode 0=single key 1=multi key
      60:	00000184 	.long	0x00000184
	MultiTimes_Filter=0;							//MultiTimes Filter,>4 ENABLE <4 DISABLE
      64:	00000184 	.long	0x00000184
	Valid_Key_Num=4;								//Valid Key number when touched
      68:	00000184 	.long	0x00000184
      6c:	00000184 	.long	0x00000184
	Base_Speed=10;									//baseline update speed
      70:	00000184 	.long	0x00000184
	TK_longpress_time=16;							//longpress rebuild time = _TK_longpress_time1*1s  0=disable
      74:	00000184 	.long	0x00000184
      78:	00000184 	.long	0x00000184
	TK_BaseCnt=59999;								//10ms  TK_BaseCnt=10ms*48M/8-1,this register need to modify when mcu's Freq changed
      7c:	00003642 	.long	0x00003642
/****************************************************
//TK function define
*****************************************************/
	TK_Lowpower_mode=DISABLE;						//touch key can goto sleep when TK lowpower mode enable
      80:	00004dbc 	.long	0x00004dbc
      84:	00002d28 	.long	0x00002d28
	TK_Lowpower_level=2;							//0=20ms 1=50ms 2=100ms 3=150ms 4=200ms,Scan interval when sleep
      88:	00002e20 	.long	0x00002e20
	TK_Wakeup_level=50;								//touch key Trigger level in sleep
      8c:	00002e88 	.long	0x00002e88
      90:	00002f10 	.long	0x00002f10
/****************************************************
//TK special parameter define
*****************************************************/
	TK_PSEL_MODE=TK_PSEL_AVDD;						//tk power sel:TK_PSEL_FVR/TK_PSEL_AVDD   when select TK_PSEL_FVR PA0.2(TCH3) need a 104 cap
      94:	00000184 	.long	0x00000184
	TK_FVR_LEVEL=TK_FVR_4096V;						//FVR level:TK_FVR_2048V/TK_FVR_4096V
      98:	000030b8 	.long	0x000030b8
	TK_EC_LEVEL=TK_EC_3V;							//C0 voltage sel:TK_EC_1V/TK_EC_2V/TK_EC_3V/TK_EC_3_6V
      9c:	000033fc 	.long	0x000033fc
      a0:	0000342c 	.long	0x0000342c
	TK_icon[0]=4;									//TCH0 TK Scan icon
      a4:	000030ec 	.long	0x000030ec
      a8:	00000184 	.long	0x00000184
	TK_icon[1]=4;									//TCH1 TK Scan icon
	TK_icon[2]=4;									//TCH2 TK Scan icon
      ac:	00000184 	.long	0x00000184
	TK_icon[3]=4;									//TCH3 TK Scan icon
	TK_icon[4]=4;									//TCH4 TK Scan icon
      b0:	0000316c 	.long	0x0000316c
	TK_icon[5]=4;									//TCH5 TK Scan icon
	TK_icon[6]=4;									//TCH6 TK Scan icon
      b4:	000031dc 	.long	0x000031dc
	TK_icon[7]=4;									//TCH7 TK Scan icon
	TK_icon[8]=4;									//TCH8 TK Scan icon
      b8:	00003218 	.long	0x00003218
	TK_icon[9]=4;									//TCH9 TK Scan icon
	TK_icon[10]=4;									//TCH10 TK Scan icon
      bc:	00003254 	.long	0x00003254
	TK_icon[11]=4;									//TCH11 TK Scan icon
	TK_icon[12]=4;									//TCH12 TK Scan icon
      c0:	00000184 	.long	0x00000184
	TK_icon[13]=4;									//TCH13 TK Scan icon
	TK_icon[14]=4;									//TCH14 TK Scan icon
      c4:	0000369a 	.long	0x0000369a
	TK_Wheel_Seq[0]=14;								
	TK_Wheel_Seq[1]=0;
	TK_Wheel_Seq[2]=15;
	TK_Wheel_Seq[3]=1;	
#endif
      c8:	00000184 	.long	0x00000184
      cc:	00003290 	.long	0x00003290
      d0:	00003378 	.long	0x00003378
      d4:	0000345c 	.long	0x0000345c
      d8:	000034a4 	.long	0x000034a4
      dc:	00003500 	.long	0x00003500
      e0:	00003692 	.long	0x00003692
      e4:	00004d1c 	.long	0x00004d1c
      e8:	00003560 	.long	0x00003560
      ec:	00000184 	.long	0x00000184
      f0:	00003594 	.long	0x00003594
      f4:	000035ec 	.long	0x000035ec
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
     146:	1014      	lrw      	r0, 0x1c68	// 194 <DummyHandler+0x10>
  jsr r0
     148:	7bc1      	jsr      	r0
  mov r0, r0
     14a:	6c03      	mov      	r0, r0
  mov r0, r0
     14c:	6c03      	mov      	r0, r0


  
  lrw r15, __exit
     14e:	ea8f0013 	lrw      	r15, 0x160	// 198 <DummyHandler+0x14>
  lrw r0,main
     152:	1013      	lrw      	r0, 0x36a4	// 19c <DummyHandler+0x18>
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
     194:	00001c68 	.long	0x00001c68
     198:	00000160 	.long	0x00000160
     19c:	000036a4 	.long	0x000036a4
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
     53c:	1168      	lrw      	r3, 0x51e0	// 5dc <__GI_pow+0x428>
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
     5dc:	000051e0 	.long	0x000051e0
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
     7de:	01db      	lrw      	r6, 0x51e0	// aec <__GI_pow+0x938>
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
     7f8:	0202      	lrw      	r0, 0x51e0	// aec <__GI_pow+0x938>
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
     aec:	000051e0 	.long	0x000051e0
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
     f24:	111d      	lrw      	r0, 0x5210	// 1018 <_fpadd_parts+0x2d0>
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
    1018:	00005210 	.long	0x00005210

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
    1264:	1013      	lrw      	r0, 0x5210	// 12b0 <__muldf3+0x22c>
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
    12b0:	00005210 	.long	0x00005210
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
    13b2:	1016      	lrw      	r0, 0x5210	// 1408 <__divdf3+0x150>
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
    1408:	00005210 	.long	0x00005210

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
    1656:	1048      	lrw      	r2, 0x5224	// 1674 <__clzsi2+0x3c>
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
    1674:	00005224 	.long	0x00005224

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

00001964 <__cskyvprintfprintf>:
    1964:	1424      	subi      	r14, r14, 16
    1966:	b863      	st.w      	r3, (r14, 0xc)
    1968:	b842      	st.w      	r2, (r14, 0x8)
    196a:	b821      	st.w      	r1, (r14, 0x4)
    196c:	b800      	st.w      	r0, (r14, 0x0)
    196e:	14d0      	push      	r15
    1970:	1421      	subi      	r14, r14, 4
    1972:	9802      	ld.w      	r0, (r14, 0x8)
    1974:	1903      	addi      	r1, r14, 12
    1976:	b800      	st.w      	r0, (r14, 0x0)
    1978:	e000002e 	bsr      	0x19d4	// 19d4 <__cskyvprintfvprintf>
    197c:	1401      	addi      	r14, r14, 4
    197e:	d9ee2000 	ld.w      	r15, (r14, 0x0)
    1982:	1405      	addi      	r14, r14, 20
    1984:	783c      	jmp      	r15
	...

00001988 <__GI_puts>:
    1988:	14d1      	push      	r4, r15
    198a:	1085      	lrw      	r4, 0x200000c8	// 199c <__GI_puts+0x14>
    198c:	9420      	ld.w      	r1, (r4, 0x0)
    198e:	e0000033 	bsr      	0x19f4	// 19f4 <__GI_fputs>
    1992:	9420      	ld.w      	r1, (r4, 0x0)
    1994:	300a      	movi      	r0, 10
    1996:	e0000edb 	bsr      	0x374c	// 374c <fputc>
    199a:	1491      	pop      	r4, r15
    199c:	200000c8 	.long	0x200000c8

000019a0 <__stdio_outs>:
    19a0:	14d3      	push      	r4-r6, r15
    19a2:	10ac      	lrw      	r5, 0x200000c8	// 19d0 <__stdio_outs+0x30>
    19a4:	6d03      	mov      	r4, r0
    19a6:	9500      	ld.w      	r0, (r5, 0x0)
    19a8:	6d87      	mov      	r6, r1
    19aa:	2017      	addi      	r0, 24
    19ac:	e00000c0 	bsr      	0x1b2c	// 1b2c <__GI_os_critical_enter>
    19b0:	6190      	addu      	r6, r4
    19b2:	6592      	cmpne      	r4, r6
    19b4:	0807      	bt      	0x19c2	// 19c2 <__stdio_outs+0x22>
    19b6:	9500      	ld.w      	r0, (r5, 0x0)
    19b8:	2017      	addi      	r0, 24
    19ba:	e00000bb 	bsr      	0x1b30	// 1b30 <__GI_os_critical_exit>
    19be:	3001      	movi      	r0, 1
    19c0:	1493      	pop      	r4-r6, r15
    19c2:	8400      	ld.b      	r0, (r4, 0x0)
    19c4:	9520      	ld.w      	r1, (r5, 0x0)
    19c6:	e0000ec3 	bsr      	0x374c	// 374c <fputc>
    19ca:	2400      	addi      	r4, 1
    19cc:	07f3      	br      	0x19b2	// 19b2 <__stdio_outs+0x12>
    19ce:	0000      	bkpt
    19d0:	200000c8 	.long	0x200000c8

000019d4 <__cskyvprintfvprintf>:
    19d4:	14d0      	push      	r15
    19d6:	1422      	subi      	r14, r14, 8
    19d8:	6c87      	mov      	r2, r1
    19da:	1026      	lrw      	r1, 0x19a0	// 19f0 <__cskyvprintfvprintf+0x1c>
    19dc:	3300      	movi      	r3, 0
    19de:	b821      	st.w      	r1, (r14, 0x4)
    19e0:	6c43      	mov      	r1, r0
    19e2:	6c3b      	mov      	r0, r14
    19e4:	b860      	st.w      	r3, (r14, 0x0)
    19e6:	e00000a9 	bsr      	0x1b38	// 1b38 <__v2_printf>
    19ea:	1402      	addi      	r14, r14, 8
    19ec:	1490      	pop      	r15
    19ee:	0000      	bkpt
    19f0:	000019a0 	.long	0x000019a0

000019f4 <__GI_fputs>:
    19f4:	14d4      	push      	r4-r7, r15
    19f6:	1422      	subi      	r14, r14, 8
    19f8:	3940      	cmpnei      	r1, 0
    19fa:	6dc3      	mov      	r7, r0
    19fc:	6d87      	mov      	r6, r1
    19fe:	0806      	bt      	0x1a0a	// 1a0a <__GI_fputs+0x16>
    1a00:	3400      	movi      	r4, 0
    1a02:	2c00      	subi      	r4, 1
    1a04:	6c13      	mov      	r0, r4
    1a06:	1402      	addi      	r14, r14, 8
    1a08:	1494      	pop      	r4-r7, r15
    1a0a:	3018      	movi      	r0, 24
    1a0c:	6004      	addu      	r0, r1
    1a0e:	b800      	st.w      	r0, (r14, 0x0)
    1a10:	e000008e 	bsr      	0x1b2c	// 1b2c <__GI_os_critical_enter>
    1a14:	3200      	movi      	r2, 0
    1a16:	6d5f      	mov      	r5, r7
    1a18:	2a00      	subi      	r2, 1
    1a1a:	8500      	ld.b      	r0, (r5, 0x0)
    1a1c:	3840      	cmpnei      	r0, 0
    1a1e:	5d9d      	subu      	r4, r5, r7
    1a20:	0805      	bt      	0x1a2a	// 1a2a <__GI_fputs+0x36>
    1a22:	9800      	ld.w      	r0, (r14, 0x0)
    1a24:	e0000086 	bsr      	0x1b30	// 1b30 <__GI_os_critical_exit>
    1a28:	07ee      	br      	0x1a04	// 1a04 <__GI_fputs+0x10>
    1a2a:	6c5b      	mov      	r1, r6
    1a2c:	b841      	st.w      	r2, (r14, 0x4)
    1a2e:	e0000e8f 	bsr      	0x374c	// 374c <fputc>
    1a32:	9841      	ld.w      	r2, (r14, 0x4)
    1a34:	6482      	cmpne      	r0, r2
    1a36:	0fe5      	bf      	0x1a00	// 1a00 <__GI_fputs+0xc>
    1a38:	2500      	addi      	r5, 1
    1a3a:	07f0      	br      	0x1a1a	// 1a1a <__GI_fputs+0x26>

00001a3c <__memset_fast>:
    1a3c:	14c3      	push      	r4-r6
    1a3e:	7444      	zextb      	r1, r1
    1a40:	3a40      	cmpnei      	r2, 0
    1a42:	0c1f      	bf      	0x1a80	// 1a80 <__memset_fast+0x44>
    1a44:	6d43      	mov      	r5, r0
    1a46:	6d03      	mov      	r4, r0
    1a48:	3603      	movi      	r6, 3
    1a4a:	6918      	and      	r4, r6
    1a4c:	3c40      	cmpnei      	r4, 0
    1a4e:	0c1a      	bf      	0x1a82	// 1a82 <__memset_fast+0x46>
    1a50:	a520      	st.b      	r1, (r5, 0x0)
    1a52:	2a00      	subi      	r2, 1
    1a54:	3a40      	cmpnei      	r2, 0
    1a56:	0c15      	bf      	0x1a80	// 1a80 <__memset_fast+0x44>
    1a58:	2500      	addi      	r5, 1
    1a5a:	6d17      	mov      	r4, r5
    1a5c:	3603      	movi      	r6, 3
    1a5e:	6918      	and      	r4, r6
    1a60:	3c40      	cmpnei      	r4, 0
    1a62:	0c10      	bf      	0x1a82	// 1a82 <__memset_fast+0x46>
    1a64:	a520      	st.b      	r1, (r5, 0x0)
    1a66:	2a00      	subi      	r2, 1
    1a68:	3a40      	cmpnei      	r2, 0
    1a6a:	0c0b      	bf      	0x1a80	// 1a80 <__memset_fast+0x44>
    1a6c:	2500      	addi      	r5, 1
    1a6e:	6d17      	mov      	r4, r5
    1a70:	3603      	movi      	r6, 3
    1a72:	6918      	and      	r4, r6
    1a74:	3c40      	cmpnei      	r4, 0
    1a76:	0c06      	bf      	0x1a82	// 1a82 <__memset_fast+0x46>
    1a78:	a520      	st.b      	r1, (r5, 0x0)
    1a7a:	2a00      	subi      	r2, 1
    1a7c:	2500      	addi      	r5, 1
    1a7e:	0402      	br      	0x1a82	// 1a82 <__memset_fast+0x46>
    1a80:	1483      	pop      	r4-r6
    1a82:	4168      	lsli      	r3, r1, 8
    1a84:	6c4c      	or      	r1, r3
    1a86:	4170      	lsli      	r3, r1, 16
    1a88:	6c4c      	or      	r1, r3
    1a8a:	3a2f      	cmplti      	r2, 16
    1a8c:	0809      	bt      	0x1a9e	// 1a9e <__memset_fast+0x62>
    1a8e:	b520      	st.w      	r1, (r5, 0x0)
    1a90:	b521      	st.w      	r1, (r5, 0x4)
    1a92:	b522      	st.w      	r1, (r5, 0x8)
    1a94:	b523      	st.w      	r1, (r5, 0xc)
    1a96:	2a0f      	subi      	r2, 16
    1a98:	250f      	addi      	r5, 16
    1a9a:	3a2f      	cmplti      	r2, 16
    1a9c:	0ff9      	bf      	0x1a8e	// 1a8e <__memset_fast+0x52>
    1a9e:	3a23      	cmplti      	r2, 4
    1aa0:	0806      	bt      	0x1aac	// 1aac <__memset_fast+0x70>
    1aa2:	2a03      	subi      	r2, 4
    1aa4:	b520      	st.w      	r1, (r5, 0x0)
    1aa6:	2503      	addi      	r5, 4
    1aa8:	3a23      	cmplti      	r2, 4
    1aaa:	0ffc      	bf      	0x1aa2	// 1aa2 <__memset_fast+0x66>
    1aac:	3a40      	cmpnei      	r2, 0
    1aae:	0fe9      	bf      	0x1a80	// 1a80 <__memset_fast+0x44>
    1ab0:	2a00      	subi      	r2, 1
    1ab2:	a520      	st.b      	r1, (r5, 0x0)
    1ab4:	3a40      	cmpnei      	r2, 0
    1ab6:	0fe5      	bf      	0x1a80	// 1a80 <__memset_fast+0x44>
    1ab8:	2a00      	subi      	r2, 1
    1aba:	a521      	st.b      	r1, (r5, 0x1)
    1abc:	3a40      	cmpnei      	r2, 0
    1abe:	0fe1      	bf      	0x1a80	// 1a80 <__memset_fast+0x44>
    1ac0:	a522      	st.b      	r1, (r5, 0x2)
    1ac2:	1483      	pop      	r4-r6

00001ac4 <__memcpy_fast>:
    1ac4:	14c3      	push      	r4-r6
    1ac6:	6d83      	mov      	r6, r0
    1ac8:	6d07      	mov      	r4, r1
    1aca:	6d18      	or      	r4, r6
    1acc:	3303      	movi      	r3, 3
    1ace:	690c      	and      	r4, r3
    1ad0:	3c40      	cmpnei      	r4, 0
    1ad2:	0c0b      	bf      	0x1ae8	// 1ae8 <__memcpy_fast+0x24>
    1ad4:	3a40      	cmpnei      	r2, 0
    1ad6:	0c08      	bf      	0x1ae6	// 1ae6 <__memcpy_fast+0x22>
    1ad8:	8160      	ld.b      	r3, (r1, 0x0)
    1ada:	2100      	addi      	r1, 1
    1adc:	2a00      	subi      	r2, 1
    1ade:	a660      	st.b      	r3, (r6, 0x0)
    1ae0:	2600      	addi      	r6, 1
    1ae2:	3a40      	cmpnei      	r2, 0
    1ae4:	0bfa      	bt      	0x1ad8	// 1ad8 <__memcpy_fast+0x14>
    1ae6:	1483      	pop      	r4-r6
    1ae8:	3a2f      	cmplti      	r2, 16
    1aea:	080e      	bt      	0x1b06	// 1b06 <__memcpy_fast+0x42>
    1aec:	91a0      	ld.w      	r5, (r1, 0x0)
    1aee:	9161      	ld.w      	r3, (r1, 0x4)
    1af0:	9182      	ld.w      	r4, (r1, 0x8)
    1af2:	b6a0      	st.w      	r5, (r6, 0x0)
    1af4:	91a3      	ld.w      	r5, (r1, 0xc)
    1af6:	b661      	st.w      	r3, (r6, 0x4)
    1af8:	b682      	st.w      	r4, (r6, 0x8)
    1afa:	b6a3      	st.w      	r5, (r6, 0xc)
    1afc:	2a0f      	subi      	r2, 16
    1afe:	210f      	addi      	r1, 16
    1b00:	260f      	addi      	r6, 16
    1b02:	3a2f      	cmplti      	r2, 16
    1b04:	0ff4      	bf      	0x1aec	// 1aec <__memcpy_fast+0x28>
    1b06:	3a23      	cmplti      	r2, 4
    1b08:	0808      	bt      	0x1b18	// 1b18 <__memcpy_fast+0x54>
    1b0a:	9160      	ld.w      	r3, (r1, 0x0)
    1b0c:	2a03      	subi      	r2, 4
    1b0e:	2103      	addi      	r1, 4
    1b10:	b660      	st.w      	r3, (r6, 0x0)
    1b12:	2603      	addi      	r6, 4
    1b14:	3a23      	cmplti      	r2, 4
    1b16:	0ffa      	bf      	0x1b0a	// 1b0a <__memcpy_fast+0x46>
    1b18:	3a40      	cmpnei      	r2, 0
    1b1a:	0fe6      	bf      	0x1ae6	// 1ae6 <__memcpy_fast+0x22>
    1b1c:	8160      	ld.b      	r3, (r1, 0x0)
    1b1e:	2100      	addi      	r1, 1
    1b20:	2a00      	subi      	r2, 1
    1b22:	a660      	st.b      	r3, (r6, 0x0)
    1b24:	2600      	addi      	r6, 1
    1b26:	07f9      	br      	0x1b18	// 1b18 <__memcpy_fast+0x54>

00001b28 <__GI_os_critical_open>:
    1b28:	3000      	movi      	r0, 0
    1b2a:	783c      	jmp      	r15

00001b2c <__GI_os_critical_enter>:
    1b2c:	3000      	movi      	r0, 0
    1b2e:	783c      	jmp      	r15

00001b30 <__GI_os_critical_exit>:
    1b30:	3000      	movi      	r0, 0
    1b32:	783c      	jmp      	r15

00001b34 <__GI_os_critical_close>:
    1b34:	3000      	movi      	r0, 0
    1b36:	783c      	jmp      	r15

00001b38 <__v2_printf>:
    1b38:	14d4      	push      	r4-r7, r15
    1b3a:	142e      	subi      	r14, r14, 56
    1b3c:	6d43      	mov      	r5, r0
    1b3e:	6dcb      	mov      	r7, r2
    1b40:	b820      	st.w      	r1, (r14, 0x0)
    1b42:	3400      	movi      	r4, 0
    1b44:	b881      	st.w      	r4, (r14, 0x4)
    1b46:	3025      	movi      	r0, 37
    1b48:	9880      	ld.w      	r4, (r14, 0x0)
    1b4a:	8460      	ld.b      	r3, (r4, 0x0)
    1b4c:	3b40      	cmpnei      	r3, 0
    1b4e:	082f      	bt      	0x1bac	// 1bac <__v2_printf+0x74>
    1b50:	9800      	ld.w      	r0, (r14, 0x0)
    1b52:	5cc1      	subu      	r6, r4, r0
    1b54:	3e40      	cmpnei      	r6, 0
    1b56:	0c09      	bf      	0x1b68	// 1b68 <__v2_printf+0x30>
    1b58:	6c5b      	mov      	r1, r6
    1b5a:	9561      	ld.w      	r3, (r5, 0x4)
    1b5c:	9540      	ld.w      	r2, (r5, 0x0)
    1b5e:	9800      	ld.w      	r0, (r14, 0x0)
    1b60:	7bcd      	jsr      	r3
    1b62:	9821      	ld.w      	r1, (r14, 0x4)
    1b64:	6058      	addu      	r1, r6
    1b66:	b821      	st.w      	r1, (r14, 0x4)
    1b68:	8440      	ld.b      	r2, (r4, 0x0)
    1b6a:	3a40      	cmpnei      	r2, 0
    1b6c:	0c7b      	bf      	0x1c62	// 1c62 <__v2_printf+0x12a>
    1b6e:	3600      	movi      	r6, 0
    1b70:	dcce000f 	st.b      	r6, (r14, 0xf)
    1b74:	2400      	addi      	r4, 1
    1b76:	3200      	movi      	r2, 0
    1b78:	3300      	movi      	r3, 0
    1b7a:	312d      	movi      	r1, 45
    1b7c:	3620      	movi      	r6, 32
    1b7e:	5c02      	addi      	r0, r4, 1
    1b80:	8480      	ld.b      	r4, (r4, 0x0)
    1b82:	6452      	cmpne      	r4, r1
    1b84:	b800      	st.w      	r0, (r14, 0x0)
    1b86:	0c55      	bf      	0x1c30	// 1c30 <__v2_printf+0xf8>
    1b88:	6504      	cmphs      	r1, r4
    1b8a:	0c15      	bf      	0x1bb4	// 1bb4 <__v2_printf+0x7c>
    1b8c:	6592      	cmpne      	r4, r6
    1b8e:	0c4d      	bf      	0x1c28	// 1c28 <__v2_printf+0xf0>
    1b90:	332b      	movi      	r3, 43
    1b92:	64d2      	cmpne      	r4, r3
    1b94:	0c48      	bf      	0x1c24	// 1c24 <__v2_printf+0xec>
    1b96:	3c40      	cmpnei      	r4, 0
    1b98:	0c65      	bf      	0x1c62	// 1c62 <__v2_printf+0x12a>
    1b9a:	dc8e0010 	st.b      	r4, (r14, 0x10)
    1b9e:	3600      	movi      	r6, 0
    1ba0:	3401      	movi      	r4, 1
    1ba2:	b882      	st.w      	r4, (r14, 0x8)
    1ba4:	dcce000f 	st.b      	r6, (r14, 0xf)
    1ba8:	1c04      	addi      	r4, r14, 16
    1baa:	0426      	br      	0x1bf6	// 1bf6 <__v2_printf+0xbe>
    1bac:	640e      	cmpne      	r3, r0
    1bae:	0fd1      	bf      	0x1b50	// 1b50 <__v2_printf+0x18>
    1bb0:	2400      	addi      	r4, 1
    1bb2:	07cc      	br      	0x1b4a	// 1b4a <__v2_printf+0x12>
    1bb4:	3069      	movi      	r0, 105
    1bb6:	6412      	cmpne      	r4, r0
    1bb8:	0c07      	bf      	0x1bc6	// 1bc6 <__v2_printf+0x8e>
    1bba:	3175      	movi      	r1, 117
    1bbc:	6452      	cmpne      	r4, r1
    1bbe:	0c3b      	bf      	0x1c34	// 1c34 <__v2_printf+0xfc>
    1bc0:	3064      	movi      	r0, 100
    1bc2:	6412      	cmpne      	r4, r0
    1bc4:	0be9      	bt      	0x1b96	// 1b96 <__v2_printf+0x5e>
    1bc6:	3a40      	cmpnei      	r2, 0
    1bc8:	0c03      	bf      	0x1bce	// 1bce <__v2_printf+0x96>
    1bca:	dc6e000f 	st.b      	r3, (r14, 0xf)
    1bce:	5f6e      	addi      	r3, r7, 4
    1bd0:	97e0      	ld.w      	r7, (r7, 0x0)
    1bd2:	3fdf      	btsti      	r7, 31
    1bd4:	0c06      	bf      	0x1be0	// 1be0 <__v2_printf+0xa8>
    1bd6:	3100      	movi      	r1, 0
    1bd8:	59fd      	subu      	r7, r1, r7
    1bda:	322d      	movi      	r2, 45
    1bdc:	dc4e000f 	st.b      	r2, (r14, 0xf)
    1be0:	3f09      	cmphsi      	r7, 10
    1be2:	082d      	bt      	0x1c3c	// 1c3c <__v2_printf+0x104>
    1be4:	272f      	addi      	r7, 48
    1be6:	180c      	addi      	r0, r14, 48
    1be8:	1c04      	addi      	r4, r14, 16
    1bea:	a0e7      	st.b      	r7, (r0, 0x7)
    1bec:	2426      	addi      	r4, 39
    1bee:	1a0e      	addi      	r2, r14, 56
    1bf0:	6092      	subu      	r2, r4
    1bf2:	b842      	st.w      	r2, (r14, 0x8)
    1bf4:	6dcf      	mov      	r7, r3
    1bf6:	98c2      	ld.w      	r6, (r14, 0x8)
    1bf8:	3edf      	btsti      	r6, 31
    1bfa:	0c02      	bf      	0x1bfe	// 1bfe <__v2_printf+0xc6>
    1bfc:	3600      	movi      	r6, 0
    1bfe:	d86e000f 	ld.b      	r3, (r14, 0xf)
    1c02:	3b40      	cmpnei      	r3, 0
    1c04:	0c08      	bf      	0x1c14	// 1c14 <__v2_printf+0xdc>
    1c06:	1803      	addi      	r0, r14, 12
    1c08:	9561      	ld.w      	r3, (r5, 0x4)
    1c0a:	9540      	ld.w      	r2, (r5, 0x0)
    1c0c:	3101      	movi      	r1, 1
    1c0e:	2002      	addi      	r0, 3
    1c10:	2600      	addi      	r6, 1
    1c12:	7bcd      	jsr      	r3
    1c14:	6c13      	mov      	r0, r4
    1c16:	9561      	ld.w      	r3, (r5, 0x4)
    1c18:	9540      	ld.w      	r2, (r5, 0x0)
    1c1a:	9822      	ld.w      	r1, (r14, 0x8)
    1c1c:	7bcd      	jsr      	r3
    1c1e:	9881      	ld.w      	r4, (r14, 0x4)
    1c20:	6118      	addu      	r4, r6
    1c22:	0791      	br      	0x1b44	// 1b44 <__v2_printf+0xc>
    1c24:	332b      	movi      	r3, 43
    1c26:	0404      	br      	0x1c2e	// 1c2e <__v2_printf+0xf6>
    1c28:	3b40      	cmpnei      	r3, 0
    1c2a:	0803      	bt      	0x1c30	// 1c30 <__v2_printf+0xf8>
    1c2c:	3320      	movi      	r3, 32
    1c2e:	3201      	movi      	r2, 1
    1c30:	9880      	ld.w      	r4, (r14, 0x0)
    1c32:	07a6      	br      	0x1b7e	// 1b7e <__v2_printf+0x46>
    1c34:	5f6e      	addi      	r3, r7, 4
    1c36:	3200      	movi      	r2, 0
    1c38:	97e0      	ld.w      	r7, (r7, 0x0)
    1c3a:	07d1      	br      	0x1bdc	// 1bdc <__v2_printf+0xa4>
    1c3c:	1c0e      	addi      	r4, r14, 56
    1c3e:	3630      	movi      	r6, 48
    1c40:	310a      	movi      	r1, 10
    1c42:	6c1f      	mov      	r0, r7
    1c44:	b862      	st.w      	r3, (r14, 0x8)
    1c46:	e0000f7b 	bsr      	0x3b3c	// 3b3c <__umodsi3>
    1c4a:	6018      	addu      	r0, r6
    1c4c:	2c00      	subi      	r4, 1
    1c4e:	a400      	st.b      	r0, (r4, 0x0)
    1c50:	310a      	movi      	r1, 10
    1c52:	6c1f      	mov      	r0, r7
    1c54:	e0000f62 	bsr      	0x3b18	// 3b18 <__udivsi3>
    1c58:	3840      	cmpnei      	r0, 0
    1c5a:	6dc3      	mov      	r7, r0
    1c5c:	9862      	ld.w      	r3, (r14, 0x8)
    1c5e:	0bf1      	bt      	0x1c40	// 1c40 <__v2_printf+0x108>
    1c60:	07c7      	br      	0x1bee	// 1bee <__v2_printf+0xb6>
    1c62:	9801      	ld.w      	r0, (r14, 0x4)
    1c64:	140e      	addi      	r14, r14, 56
    1c66:	1494      	pop      	r4-r7, r15

Disassembly of section .text.__main:

00001c68 <__main>:
extern char _bss_start[];
extern char _ebss[];


void __main( void ) 
{
    1c68:	14d0      	push      	r15

  /* if the start of data (dst)
     is not equal to end of text (src) then
     copy it, else it's already in the right place
     */
  if( _start_data != _end_rodata ) {
    1c6a:	1009      	lrw      	r0, 0x20000000	// 1c8c <__main+0x24>
    1c6c:	1029      	lrw      	r1, 0x532c	// 1c90 <__main+0x28>
    1c6e:	6442      	cmpne      	r0, r1
    1c70:	0c05      	bf      	0x1c7a	// 1c7a <__main+0x12>
//    __memcpy_fast( dst, src, (_end_data - _start_data));
    memcpy( dst, src, (_end_data - _start_data));
    1c72:	1049      	lrw      	r2, 0x20000108	// 1c94 <__main+0x2c>
    1c74:	6082      	subu      	r2, r0
    1c76:	e3ffff27 	bsr      	0x1ac4	// 1ac4 <__memcpy_fast>
  }

  /* zero the bss 
   */
  if( _ebss - _bss_start ) {
    1c7a:	1048      	lrw      	r2, 0x20000574	// 1c98 <__main+0x30>
    1c7c:	1008      	lrw      	r0, 0x20000108	// 1c9c <__main+0x34>
    1c7e:	640a      	cmpne      	r2, r0
    1c80:	0c05      	bf      	0x1c8a	// 1c8a <__main+0x22>
//    __memset_fast( _bss_start, 0x00, ( _ebss - _bss_start ));
    memset( _bss_start, 0x00, ( _ebss - _bss_start ));
    1c82:	6082      	subu      	r2, r0
    1c84:	3100      	movi      	r1, 0
    1c86:	e3fffedb 	bsr      	0x1a3c	// 1a3c <__memset_fast>
  }

	
}
    1c8a:	1490      	pop      	r15
    1c8c:	20000000 	.long	0x20000000
    1c90:	0000532c 	.long	0x0000532c
    1c94:	20000108 	.long	0x20000108
    1c98:	20000574 	.long	0x20000574
    1c9c:	20000108 	.long	0x20000108

Disassembly of section .text.SYSCON_General_CMD.part.0:

00001ca0 <SYSCON_General_CMD.part.0>:
/*************************************************************/  
void SYSCON_General_CMD(FunctionalStatus NewState, SYSCON_General_CMD_TypeDef ENDIS_X )
{
	if (NewState != DISABLE)
	{
		if(ENDIS_X==ENDIS_EMOSC) 
    1ca0:	3848      	cmpnei      	r0, 8
    1ca2:	080a      	bt      	0x1cb6	// 1cb6 <SYSCON_General_CMD.part.0+0x16>
		GPIOA0->CONLR=(GPIOA0->CONLR & 0XFFF00FFF)|0x00044000;					//enable EMOSC PIN
    1ca4:	107a      	lrw      	r3, 0x20000050	// 1d0c <SYSCON_General_CMD.part.0+0x6c>
    1ca6:	32ff      	movi      	r2, 255
    1ca8:	9320      	ld.w      	r1, (r3, 0x0)
    1caa:	9160      	ld.w      	r3, (r1, 0x0)
    1cac:	424c      	lsli      	r2, r2, 12
    1cae:	68c9      	andn      	r3, r2
    1cb0:	3bae      	bseti      	r3, 14
    1cb2:	3bb2      	bseti      	r3, 18
    1cb4:	b160      	st.w      	r3, (r1, 0x0)
		SYSCON->GCER|=ENDIS_X;													//enable SYSCON General Control
    1cb6:	1077      	lrw      	r3, 0x20000060	// 1d10 <SYSCON_General_CMD.part.0+0x70>
    1cb8:	9360      	ld.w      	r3, (r3, 0x0)
    1cba:	9341      	ld.w      	r2, (r3, 0x4)
    1cbc:	6c80      	or      	r2, r0
    1cbe:	b341      	st.w      	r2, (r3, 0x4)
		while(!(SYSCON->GCSR&ENDIS_X));											//check  Enable?	
    1cc0:	9343      	ld.w      	r2, (r3, 0xc)
    1cc2:	6880      	and      	r2, r0
    1cc4:	3a40      	cmpnei      	r2, 0
    1cc6:	0ffd      	bf      	0x1cc0	// 1cc0 <SYSCON_General_CMD.part.0+0x20>
		switch(ENDIS_X)
    1cc8:	3842      	cmpnei      	r0, 2
    1cca:	0807      	bt      	0x1cd8	// 1cd8 <SYSCON_General_CMD.part.0+0x38>
		{
			case ENDIS_IMOSC:
				while (!(SYSCON->CKST & ENDIS_IMOSC)); 	
    1ccc:	3102      	movi      	r1, 2
    1cce:	9344      	ld.w      	r2, (r3, 0x10)
    1cd0:	6884      	and      	r2, r1
    1cd2:	3a40      	cmpnei      	r2, 0
    1cd4:	0ffd      	bf      	0x1cce	// 1cce <SYSCON_General_CMD.part.0+0x2e>
	{
		SYSCON->GCDR|=ENDIS_X;													//disable SYSCON General Control
		while(SYSCON->GCSR&ENDIS_X);											//check Disable?
		SYSCON->ICR|=ENDIS_X;													//Clear ENDIS_X stable bit
	}
}
    1cd6:	783c      	jmp      	r15
		switch(ENDIS_X)
    1cd8:	3802      	cmphsi      	r0, 3
    1cda:	0809      	bt      	0x1cec	// 1cec <SYSCON_General_CMD.part.0+0x4c>
    1cdc:	3841      	cmpnei      	r0, 1
    1cde:	0bfc      	bt      	0x1cd6	// 1cd6 <SYSCON_General_CMD.part.0+0x36>
				while (!(SYSCON->CKST & ENDIS_ISOSC)); 
    1ce0:	3101      	movi      	r1, 1
    1ce2:	9344      	ld.w      	r2, (r3, 0x10)
    1ce4:	6884      	and      	r2, r1
    1ce6:	3a40      	cmpnei      	r2, 0
    1ce8:	0ffd      	bf      	0x1ce2	// 1ce2 <SYSCON_General_CMD.part.0+0x42>
    1cea:	07f6      	br      	0x1cd6	// 1cd6 <SYSCON_General_CMD.part.0+0x36>
		switch(ENDIS_X)
    1cec:	3848      	cmpnei      	r0, 8
    1cee:	0807      	bt      	0x1cfc	// 1cfc <SYSCON_General_CMD.part.0+0x5c>
				while (!(SYSCON->CKST & ENDIS_EMOSC)); 
    1cf0:	3108      	movi      	r1, 8
    1cf2:	9344      	ld.w      	r2, (r3, 0x10)
    1cf4:	6884      	and      	r2, r1
    1cf6:	3a40      	cmpnei      	r2, 0
    1cf8:	0ffd      	bf      	0x1cf2	// 1cf2 <SYSCON_General_CMD.part.0+0x52>
    1cfa:	07ee      	br      	0x1cd6	// 1cd6 <SYSCON_General_CMD.part.0+0x36>
		switch(ENDIS_X)
    1cfc:	3850      	cmpnei      	r0, 16
    1cfe:	0bec      	bt      	0x1cd6	// 1cd6 <SYSCON_General_CMD.part.0+0x36>
				while (!(SYSCON->CKST & ENDIS_HFOSC)); 
    1d00:	3110      	movi      	r1, 16
    1d02:	9344      	ld.w      	r2, (r3, 0x10)
    1d04:	6884      	and      	r2, r1
    1d06:	3a40      	cmpnei      	r2, 0
    1d08:	0ffd      	bf      	0x1d02	// 1d02 <SYSCON_General_CMD.part.0+0x62>
    1d0a:	07e6      	br      	0x1cd6	// 1cd6 <SYSCON_General_CMD.part.0+0x36>
    1d0c:	20000050 	.long	0x20000050
    1d10:	20000060 	.long	0x20000060

Disassembly of section .text.SYSCON_RST_VALUE:

00001d14 <SYSCON_RST_VALUE>:
	SYSCON->RAMCHK=SYSCON_RAMCHK_RST;
    1d14:	106f      	lrw      	r3, 0x20000060	// 1d50 <SYSCON_RST_VALUE+0x3c>
    1d16:	1050      	lrw      	r2, 0xffff	// 1d54 <SYSCON_RST_VALUE+0x40>
    1d18:	9360      	ld.w      	r3, (r3, 0x0)
    1d1a:	b345      	st.w      	r2, (r3, 0x14)
	SYSCON->EFLCHK=SYSCON_EFLCHK_RST;
    1d1c:	104f      	lrw      	r2, 0xffffff	// 1d58 <SYSCON_RST_VALUE+0x44>
    1d1e:	b346      	st.w      	r2, (r3, 0x18)
	SYSCON->SCLKCR=SYSCON_SCLKCR_RST;
    1d20:	104f      	lrw      	r2, 0xd22d0000	// 1d5c <SYSCON_RST_VALUE+0x48>
    1d22:	b347      	st.w      	r2, (r3, 0x1c)
	SYSCON->OSTR=SYSCON_OSTR_RST;
    1d24:	104f      	lrw      	r2, 0x70ff3bff	// 1d60 <SYSCON_RST_VALUE+0x4c>
    1d26:	b350      	st.w      	r2, (r3, 0x40)
	SYSCON->EXIRT=SYSCON_EXIRT_RST;
    1d28:	3180      	movi      	r1, 128
	SYSCON->LVDCR=SYSCON_LVDCR_RST;
    1d2a:	320a      	movi      	r2, 10
    1d2c:	b353      	st.w      	r2, (r3, 0x4c)
	SYSCON->EXIRT=SYSCON_EXIRT_RST;
    1d2e:	604c      	addu      	r1, r3
    1d30:	3200      	movi      	r2, 0
	SYSCON->IWDCR=SYSCON_IWDCR_RST;
    1d32:	100d      	lrw      	r0, 0x70c	// 1d64 <SYSCON_RST_VALUE+0x50>
	SYSCON->EXIRT=SYSCON_EXIRT_RST;
    1d34:	b145      	st.w      	r2, (r1, 0x14)
	SYSCON->UREG0=SYSCON_UREG0_RST;
    1d36:	23ff      	addi      	r3, 256
	SYSCON->EXIFT=SYSCON_EXIFT_RST;
    1d38:	b146      	st.w      	r2, (r1, 0x18)
	SYSCON->IWDCR=SYSCON_IWDCR_RST;
    1d3a:	b10d      	st.w      	r0, (r1, 0x34)
	SYSCON->IWDCNT=SYSCON_IWDCNT_RST;
    1d3c:	100b      	lrw      	r0, 0x3fe	// 1d68 <SYSCON_RST_VALUE+0x54>
    1d3e:	b10e      	st.w      	r0, (r1, 0x38)
	SYSCON->EVTRG=SYSCON_EVTRG_RST;
    1d40:	b15d      	st.w      	r2, (r1, 0x74)
	SYSCON->EVPS=SYSCON_EVPS_RST;
    1d42:	b15e      	st.w      	r2, (r1, 0x78)
	SYSCON->EVSWF=SYSCON_EVSWF_RST;
    1d44:	b15f      	st.w      	r2, (r1, 0x7c)
	SYSCON->UREG0=SYSCON_UREG0_RST;
    1d46:	b340      	st.w      	r2, (r3, 0x0)
	SYSCON->UREG1=SYSCON_UREG1_RST;
    1d48:	b341      	st.w      	r2, (r3, 0x4)
	SYSCON->UREG2=SYSCON_UREG2_RST;
    1d4a:	b342      	st.w      	r2, (r3, 0x8)
	SYSCON->UREG3=SYSCON_UREG3_RST;
    1d4c:	b343      	st.w      	r2, (r3, 0xc)
}
    1d4e:	783c      	jmp      	r15
    1d50:	20000060 	.long	0x20000060
    1d54:	0000ffff 	.long	0x0000ffff
    1d58:	00ffffff 	.long	0x00ffffff
    1d5c:	d22d0000 	.long	0xd22d0000
    1d60:	70ff3bff 	.long	0x70ff3bff
    1d64:	0000070c 	.long	0x0000070c
    1d68:	000003fe 	.long	0x000003fe

Disassembly of section .text.SYSCON_General_CMD:

00001d6c <SYSCON_General_CMD>:
{
    1d6c:	14d0      	push      	r15
	if (NewState != DISABLE)
    1d6e:	3840      	cmpnei      	r0, 0
    1d70:	0c05      	bf      	0x1d7a	// 1d7a <SYSCON_General_CMD+0xe>
    1d72:	6c07      	mov      	r0, r1
    1d74:	e3ffff96 	bsr      	0x1ca0	// 1ca0 <SYSCON_General_CMD.part.0>
}
    1d78:	1490      	pop      	r15
		SYSCON->GCDR|=ENDIS_X;													//disable SYSCON General Control
    1d7a:	1068      	lrw      	r3, 0x20000060	// 1d98 <SYSCON_General_CMD+0x2c>
    1d7c:	9360      	ld.w      	r3, (r3, 0x0)
    1d7e:	9342      	ld.w      	r2, (r3, 0x8)
    1d80:	6c84      	or      	r2, r1
    1d82:	b342      	st.w      	r2, (r3, 0x8)
		while(SYSCON->GCSR&ENDIS_X);											//check Disable?
    1d84:	9343      	ld.w      	r2, (r3, 0xc)
    1d86:	6884      	and      	r2, r1
    1d88:	3a40      	cmpnei      	r2, 0
    1d8a:	0bfd      	bt      	0x1d84	// 1d84 <SYSCON_General_CMD+0x18>
		SYSCON->ICR|=ENDIS_X;													//Clear ENDIS_X stable bit
    1d8c:	237f      	addi      	r3, 128
    1d8e:	9301      	ld.w      	r0, (r3, 0x4)
    1d90:	6c40      	or      	r1, r0
    1d92:	b321      	st.w      	r1, (r3, 0x4)
}
    1d94:	07f2      	br      	0x1d78	// 1d78 <SYSCON_General_CMD+0xc>
    1d96:	0000      	bkpt
    1d98:	20000060 	.long	0x20000060

Disassembly of section .text.SystemCLK_HCLKDIV_PCLKDIV_Config:

00001d9c <SystemCLK_HCLKDIV_PCLKDIV_Config>:
//SystemClk_data_x:EMOSC_24M,EMOSC_16M,EMOSC_12M,EMOSC_8M,EMOSC_4M,EMOSC_36K,
//ISOSC,IMOSC,HFOSC_48M,HFOSC_24M,HFOSC_12M,HFOSC_6M
//ReturnValue:NONE
/*************************************************************/ 
void SystemCLK_HCLKDIV_PCLKDIV_Config(SystemCLK_TypeDef SYSCLK_X , SystemCLK_Div_TypeDef HCLK_DIV_X , PCLK_Div_TypeDef PCLK_DIV_X , SystemClk_data_TypeDef SystemClk_data_x )
{
    1d9c:	14c2      	push      	r4-r5
	if(SystemClk_data_x==HFOSC_48M)
    1d9e:	3b48      	cmpnei      	r3, 8
    1da0:	0828      	bt      	0x1df0	// 1df0 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x54>
	{
		IFC->CEDR=0X01;						//CLKEN
    1da2:	109d      	lrw      	r4, 0x20000064	// 1e14 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x78>
    1da4:	3501      	movi      	r5, 1
    1da6:	9480      	ld.w      	r4, (r4, 0x0)
    1da8:	b4a1      	st.w      	r5, (r4, 0x4)
		IFC->MR=0X04|(0X00<<16);			//High speed mode
    1daa:	3504      	movi      	r5, 4
    1dac:	b4a5      	st.w      	r5, (r4, 0x14)
	if((SystemClk_data_x==EMOSC_24M)||(SystemClk_data_x==HFOSC_24M))
	{
		IFC->CEDR=0X01;						//CLKEN
		IFC->MR=0X02|(0X00<<16);			//Medium speed mode
	}
	if((SystemClk_data_x==EMOSC_12M)||(SystemClk_data_x==HFOSC_12M)||(SystemClk_data_x==EMOSC_16M))
    1dae:	5b83      	subi      	r4, r3, 1
    1db0:	3c01      	cmphsi      	r4, 2
    1db2:	0c2b      	bf      	0x1e08	// 1e08 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x6c>
	{
		IFC->CEDR=0X01;						//CLKEN
		IFC->MR=0X01|(0X00<<16);			//Low speed mode
	}
	if((SystemClk_data_x==EMOSC_8M)||(SystemClk_data_x==EMOSC_4M)||(SystemClk_data_x==EMOSC_36K)
		||(SystemClk_data_x==IMOSC)||(SystemClk_data_x==ISOSC)||(SystemClk_data_x==HFOSC_6M))
    1db4:	5b8b      	subi      	r4, r3, 3
	if((SystemClk_data_x==EMOSC_8M)||(SystemClk_data_x==EMOSC_4M)||(SystemClk_data_x==EMOSC_36K)
    1db6:	3c04      	cmphsi      	r4, 5
    1db8:	0c03      	bf      	0x1dbe	// 1dbe <SystemCLK_HCLKDIV_PCLKDIV_Config+0x22>
		||(SystemClk_data_x==IMOSC)||(SystemClk_data_x==ISOSC)||(SystemClk_data_x==HFOSC_6M))
    1dba:	3b4b      	cmpnei      	r3, 11
    1dbc:	0807      	bt      	0x1dca	// 1dca <SystemCLK_HCLKDIV_PCLKDIV_Config+0x2e>
	{
		IFC->CEDR=0X01;						//CLKEN
    1dbe:	1076      	lrw      	r3, 0x20000064	// 1e14 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x78>
    1dc0:	3401      	movi      	r4, 1
    1dc2:	9360      	ld.w      	r3, (r3, 0x0)
    1dc4:	b381      	st.w      	r4, (r3, 0x4)
		IFC->MR=0X00|(0X00<<16);			//Low speed mode
    1dc6:	3400      	movi      	r4, 0
    1dc8:	b385      	st.w      	r4, (r3, 0x14)
	}
	SYSCON->SCLKCR=SYSCLK_KEY | HCLK_DIV_X| SYSCLK_X;
    1dca:	1094      	lrw      	r4, 0xd22d0000	// 1e18 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x7c>
    1dcc:	6c10      	or      	r0, r4
    1dce:	1074      	lrw      	r3, 0x20000060	// 1e1c <SystemCLK_HCLKDIV_PCLKDIV_Config+0x80>
    1dd0:	6c40      	or      	r1, r0
    1dd2:	9360      	ld.w      	r3, (r3, 0x0)
	while (!(SYSCON->CKST & (1<<8))); 											// waiting for sysclk stable
    1dd4:	3080      	movi      	r0, 128
	SYSCON->SCLKCR=SYSCLK_KEY | HCLK_DIV_X| SYSCLK_X;
    1dd6:	b327      	st.w      	r1, (r3, 0x1c)
	while (!(SYSCON->CKST & (1<<8))); 											// waiting for sysclk stable
    1dd8:	4001      	lsli      	r0, r0, 1
    1dda:	9324      	ld.w      	r1, (r3, 0x10)
    1ddc:	6840      	and      	r1, r0
    1dde:	3940      	cmpnei      	r1, 0
    1de0:	0ffd      	bf      	0x1dda	// 1dda <SystemCLK_HCLKDIV_PCLKDIV_Config+0x3e>
	SYSCON->PCLKCR=PCLK_KEY|PCLK_DIV_X;											//PCLK DIV 1 2 4 6 8 16		
    1de2:	1030      	lrw      	r1, 0xc33c0000	// 1e20 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x84>
    1de4:	6c48      	or      	r1, r2
    1de6:	b328      	st.w      	r1, (r3, 0x20)
	while(SYSCON->PCLKCR!=PCLK_DIV_X);											//Wait PCLK DIV
    1de8:	9328      	ld.w      	r1, (r3, 0x20)
    1dea:	644a      	cmpne      	r2, r1
    1dec:	0bfe      	bt      	0x1de8	// 1de8 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x4c>
}
    1dee:	1482      	pop      	r4-r5
	if((SystemClk_data_x==EMOSC_24M)||(SystemClk_data_x==HFOSC_24M))
    1df0:	3b40      	cmpnei      	r3, 0
    1df2:	0c03      	bf      	0x1df8	// 1df8 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x5c>
    1df4:	3b49      	cmpnei      	r3, 9
    1df6:	0807      	bt      	0x1e04	// 1e04 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x68>
		IFC->CEDR=0X01;						//CLKEN
    1df8:	1087      	lrw      	r4, 0x20000064	// 1e14 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x78>
    1dfa:	3501      	movi      	r5, 1
    1dfc:	9480      	ld.w      	r4, (r4, 0x0)
    1dfe:	b4a1      	st.w      	r5, (r4, 0x4)
		IFC->MR=0X02|(0X00<<16);			//Medium speed mode
    1e00:	3502      	movi      	r5, 2
    1e02:	b4a5      	st.w      	r5, (r4, 0x14)
	if((SystemClk_data_x==EMOSC_12M)||(SystemClk_data_x==HFOSC_12M)||(SystemClk_data_x==EMOSC_16M))
    1e04:	3b4a      	cmpnei      	r3, 10
    1e06:	0bd4      	bt      	0x1dae	// 1dae <SystemCLK_HCLKDIV_PCLKDIV_Config+0x12>
		IFC->CEDR=0X01;						//CLKEN
    1e08:	1083      	lrw      	r4, 0x20000064	// 1e14 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x78>
    1e0a:	3501      	movi      	r5, 1
    1e0c:	9480      	ld.w      	r4, (r4, 0x0)
    1e0e:	b4a1      	st.w      	r5, (r4, 0x4)
		IFC->MR=0X01|(0X00<<16);			//Low speed mode
    1e10:	b4a5      	st.w      	r5, (r4, 0x14)
    1e12:	07d1      	br      	0x1db4	// 1db4 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x18>
    1e14:	20000064 	.long	0x20000064
    1e18:	d22d0000 	.long	0xd22d0000
    1e1c:	20000060 	.long	0x20000060
    1e20:	c33c0000 	.long	0xc33c0000

Disassembly of section .text.SYSCON_HFOSC_SELECTE:

00001e24 <SYSCON_HFOSC_SELECTE>:
//EntryParameter:HFOSC_SELECTE_X
//HFOSC_SELECTE_X:HFOSC_SELECTE_48M,HFOSC_SELECTE_24M;HFOSC_SELECTE_12M;HFOSC_SELECTE_6M
//ReturnValue:NONE
/*************************************************************/  
void SYSCON_HFOSC_SELECTE(HFOSC_SELECTE_TypeDef HFOSC_SELECTE_X)
{		
    1e24:	14d1      	push      	r4, r15
    1e26:	6d03      	mov      	r4, r0
	SYSCON_General_CMD(DISABLE,ENDIS_HFOSC);					//disable HFOSC
    1e28:	3110      	movi      	r1, 16
    1e2a:	3000      	movi      	r0, 0
    1e2c:	e3ffffa0 	bsr      	0x1d6c	// 1d6c <SYSCON_General_CMD>
	SYSCON->OPT1 = (SYSCON->OPT1 & 0XFFFFFFCF)|HFOSC_SELECTE_X;
    1e30:	1066      	lrw      	r3, 0x20000060	// 1e48 <SYSCON_HFOSC_SELECTE+0x24>
    1e32:	9360      	ld.w      	r3, (r3, 0x0)
    1e34:	9319      	ld.w      	r0, (r3, 0x64)
    1e36:	3884      	bclri      	r0, 4
    1e38:	3885      	bclri      	r0, 5
    1e3a:	6c10      	or      	r0, r4
    1e3c:	b319      	st.w      	r0, (r3, 0x64)
    1e3e:	3010      	movi      	r0, 16
    1e40:	e3ffff30 	bsr      	0x1ca0	// 1ca0 <SYSCON_General_CMD.part.0>
	SYSCON_General_CMD(ENABLE,ENDIS_HFOSC);						//enable HFOSC
}
    1e44:	1491      	pop      	r4, r15
    1e46:	0000      	bkpt
    1e48:	20000060 	.long	0x20000060

Disassembly of section .text.SYSCON_WDT_CMD:

00001e4c <SYSCON_WDT_CMD>:
//EntryParameter:,NewState
//NewState:ENABLE,DISABLE
//ReturnValue:NONE
/*************************************************************/
void SYSCON_WDT_CMD(FunctionalStatus NewState)
{
    1e4c:	106c      	lrw      	r3, 0x20000060	// 1e7c <SYSCON_WDT_CMD+0x30>
	if(NewState != DISABLE)
    1e4e:	3840      	cmpnei      	r0, 0
	{
		SYSCON->IWDEDR=IWDTEDR_KEY|Enable_IWDT;
    1e50:	9360      	ld.w      	r3, (r3, 0x0)
    1e52:	237f      	addi      	r3, 128
	if(NewState != DISABLE)
    1e54:	0c0a      	bf      	0x1e68	// 1e68 <SYSCON_WDT_CMD+0x1c>
		SYSCON->IWDEDR=IWDTEDR_KEY|Enable_IWDT;
    1e56:	104b      	lrw      	r2, 0x78870000	// 1e80 <SYSCON_WDT_CMD+0x34>
		while(!(SYSCON->IWDCR&Check_IWDT_BUSY));
    1e58:	3180      	movi      	r1, 128
		SYSCON->IWDEDR=IWDTEDR_KEY|Enable_IWDT;
    1e5a:	b34f      	st.w      	r2, (r3, 0x3c)
		while(!(SYSCON->IWDCR&Check_IWDT_BUSY));
    1e5c:	4125      	lsli      	r1, r1, 5
    1e5e:	934d      	ld.w      	r2, (r3, 0x34)
    1e60:	6884      	and      	r2, r1
    1e62:	3a40      	cmpnei      	r2, 0
    1e64:	0ffd      	bf      	0x1e5e	// 1e5e <SYSCON_WDT_CMD+0x12>
	else
	{
		SYSCON->IWDEDR=IWDTEDR_KEY|Disable_IWDT;
		while(SYSCON->IWDCR&Check_IWDT_BUSY);
	}
}
    1e66:	783c      	jmp      	r15
		SYSCON->IWDEDR=IWDTEDR_KEY|Disable_IWDT;
    1e68:	1047      	lrw      	r2, 0x788755aa	// 1e84 <SYSCON_WDT_CMD+0x38>
		while(SYSCON->IWDCR&Check_IWDT_BUSY);
    1e6a:	3180      	movi      	r1, 128
		SYSCON->IWDEDR=IWDTEDR_KEY|Disable_IWDT;
    1e6c:	b34f      	st.w      	r2, (r3, 0x3c)
		while(SYSCON->IWDCR&Check_IWDT_BUSY);
    1e6e:	4125      	lsli      	r1, r1, 5
    1e70:	934d      	ld.w      	r2, (r3, 0x34)
    1e72:	6884      	and      	r2, r1
    1e74:	3a40      	cmpnei      	r2, 0
    1e76:	0bfd      	bt      	0x1e70	// 1e70 <SYSCON_WDT_CMD+0x24>
    1e78:	07f7      	br      	0x1e66	// 1e66 <SYSCON_WDT_CMD+0x1a>
    1e7a:	0000      	bkpt
    1e7c:	20000060 	.long	0x20000060
    1e80:	78870000 	.long	0x78870000
    1e84:	788755aa 	.long	0x788755aa

Disassembly of section .text.SYSCON_IWDCNT_Reload:

00001e88 <SYSCON_IWDCNT_Reload>:
//EntryParameter:NONE
//ReturnValue: NONE
/*************************************************************/
void SYSCON_IWDCNT_Reload(void)
{
	SYSCON->IWDCNT=CLR_IWDT;
    1e88:	1064      	lrw      	r3, 0x20000060	// 1e98 <SYSCON_IWDCNT_Reload+0x10>
    1e8a:	32b4      	movi      	r2, 180
    1e8c:	9360      	ld.w      	r3, (r3, 0x0)
    1e8e:	237f      	addi      	r3, 128
    1e90:	4257      	lsli      	r2, r2, 23
    1e92:	b34e      	st.w      	r2, (r3, 0x38)
}
    1e94:	783c      	jmp      	r15
    1e96:	0000      	bkpt
    1e98:	20000060 	.long	0x20000060

Disassembly of section .text.SYSCON_IWDCNT_Config:

00001e9c <SYSCON_IWDCNT_Config>:
//IWDT_INTW_DIV_X:IWDT_INTW_DIV_1/2/3/4/4/5/6
//ReturnValue: NONE
/*************************************************************/
void SYSCON_IWDCNT_Config(IWDT_TIME_TypeDef IWDT_TIME_X , IWDT_TIMEDIV_TypeDef IWDT_INTW_DIV_X )
{
	SYSCON->IWDCR=IWDT_KEY|IWDT_TIME_X|IWDT_INTW_DIV_X;
    1e9c:	1044      	lrw      	r2, 0x87780000	// 1eac <SYSCON_IWDCNT_Config+0x10>
    1e9e:	1065      	lrw      	r3, 0x20000060	// 1eb0 <SYSCON_IWDCNT_Config+0x14>
    1ea0:	6c48      	or      	r1, r2
    1ea2:	9360      	ld.w      	r3, (r3, 0x0)
    1ea4:	6c04      	or      	r0, r1
    1ea6:	237f      	addi      	r3, 128
    1ea8:	b30d      	st.w      	r0, (r3, 0x34)
}
    1eaa:	783c      	jmp      	r15
    1eac:	87780000 	.long	0x87780000
    1eb0:	20000060 	.long	0x20000060

Disassembly of section .text.SYSCON_LVD_Config:

00001eb4 <SYSCON_LVD_Config>:
//X_LVD_INT:ENABLE_LVD_INT,DISABLE_LVD_INT
//INTDET_POL_X:INTDET_POL_fall,INTDET_POL_X_rise,INTDET_POL_X_riseORfall
//ReturnValue: NONE
/*************************************************************/
void SYSCON_LVD_Config(X_LVDEN_TypeDef X_LVDEN , INTDET_LVL_X_TypeDef INTDET_LVL_X , RSTDET_LVL_X_TypeDef RSTDET_LVL_X , X_LVD_INT_TypeDef X_LVD_INT , INTDET_POL_X_TypeDef INTDET_POL_X)
{
    1eb4:	14c3      	push      	r4-r6
    1eb6:	9883      	ld.w      	r4, (r14, 0xc)
	//SYSCON->LVDCR=LVD_KEY;
	SYSCON->LVDCR=LVD_KEY|X_LVDEN|INTDET_LVL_X|RSTDET_LVL_X|X_LVD_INT|INTDET_POL_X;
    1eb8:	10c5      	lrw      	r6, 0xb44b0000	// 1ecc <SYSCON_LVD_Config+0x18>
    1eba:	6d18      	or      	r4, r6
    1ebc:	6cd0      	or      	r3, r4
    1ebe:	6c8c      	or      	r2, r3
    1ec0:	6c48      	or      	r1, r2
    1ec2:	10a4      	lrw      	r5, 0x20000060	// 1ed0 <SYSCON_LVD_Config+0x1c>
    1ec4:	6c04      	or      	r0, r1
    1ec6:	95a0      	ld.w      	r5, (r5, 0x0)
    1ec8:	b513      	st.w      	r0, (r5, 0x4c)
}
    1eca:	1483      	pop      	r4-r6
    1ecc:	b44b0000 	.long	0xb44b0000
    1ed0:	20000060 	.long	0x20000060

Disassembly of section .text.LVD_Int_Enable:

00001ed4 <LVD_Int_Enable>:
//EntryParameter:NONE
//ReturnValue: NONE
/*************************************************************/
void LVD_Int_Enable(void)
{
	SYSCON->ICR = LVD_INT_ST;				//clear LVD INT status
    1ed4:	1066      	lrw      	r3, 0x20000060	// 1eec <LVD_Int_Enable+0x18>
    1ed6:	3180      	movi      	r1, 128
    1ed8:	9360      	ld.w      	r3, (r3, 0x0)
    1eda:	3280      	movi      	r2, 128
    1edc:	604c      	addu      	r1, r3
    1ede:	4244      	lsli      	r2, r2, 4
    1ee0:	b141      	st.w      	r2, (r1, 0x4)
	SYSCON->IMER  |= LVD_INT_ST;
    1ee2:	935d      	ld.w      	r2, (r3, 0x74)
    1ee4:	3aab      	bseti      	r2, 11
    1ee6:	b35d      	st.w      	r2, (r3, 0x74)
}
    1ee8:	783c      	jmp      	r15
    1eea:	0000      	bkpt
    1eec:	20000060 	.long	0x20000060

Disassembly of section .text.IWDT_Int_Enable:

00001ef0 <IWDT_Int_Enable>:
//EntryParameter:NONE
//ReturnValue: NONE
/*************************************************************/
void IWDT_Int_Enable(void)
{
	SYSCON->ICR = IWDT_INT_ST;				//clear LVD INT status
    1ef0:	1066      	lrw      	r3, 0x20000060	// 1f08 <IWDT_Int_Enable+0x18>
    1ef2:	3180      	movi      	r1, 128
    1ef4:	9360      	ld.w      	r3, (r3, 0x0)
    1ef6:	3280      	movi      	r2, 128
    1ef8:	604c      	addu      	r1, r3
    1efa:	4241      	lsli      	r2, r2, 1
    1efc:	b141      	st.w      	r2, (r1, 0x4)
	SYSCON->IMER  |= IWDT_INT_ST;
    1efe:	935d      	ld.w      	r2, (r3, 0x74)
    1f00:	3aa8      	bseti      	r2, 8
    1f02:	b35d      	st.w      	r2, (r3, 0x74)
}
    1f04:	783c      	jmp      	r15
    1f06:	0000      	bkpt
    1f08:	20000060 	.long	0x20000060

Disassembly of section .text.EXTI_trigger_CMD:

00001f0c <EXTI_trigger_CMD>:
//EXI_tringer_mode:_EXIRT,_EXIFT
//ReturnValue: LVD detection flag
/*************************************************************/
void EXTI_trigger_CMD(FunctionalStatus NewState , SYSCON_EXIPIN_TypeDef  EXIPIN , EXI_tringer_mode_TypeDef EXI_tringer_mode)
{
	switch(EXI_tringer_mode)
    1f0c:	3a40      	cmpnei      	r2, 0
    1f0e:	0c04      	bf      	0x1f16	// 1f16 <EXTI_trigger_CMD+0xa>
    1f10:	3a41      	cmpnei      	r2, 1
    1f12:	0c0e      	bf      	0x1f2e	// 1f2e <EXTI_trigger_CMD+0x22>
		{
			SYSCON->EXIFT &=~EXIPIN;	
		}
		break;
	}	
}
    1f14:	783c      	jmp      	r15
    1f16:	106d      	lrw      	r3, 0x20000060	// 1f48 <EXTI_trigger_CMD+0x3c>
		if(NewState != DISABLE)
    1f18:	3840      	cmpnei      	r0, 0
			SYSCON->EXIRT |=EXIPIN;
    1f1a:	9360      	ld.w      	r3, (r3, 0x0)
    1f1c:	237f      	addi      	r3, 128
    1f1e:	9345      	ld.w      	r2, (r3, 0x14)
		if(NewState != DISABLE)
    1f20:	0c04      	bf      	0x1f28	// 1f28 <EXTI_trigger_CMD+0x1c>
			SYSCON->EXIRT |=EXIPIN;
    1f22:	6c48      	or      	r1, r2
    1f24:	b325      	st.w      	r1, (r3, 0x14)
    1f26:	07f7      	br      	0x1f14	// 1f14 <EXTI_trigger_CMD+0x8>
			SYSCON->EXIRT &=~EXIPIN;	
    1f28:	6885      	andn      	r2, r1
    1f2a:	b345      	st.w      	r2, (r3, 0x14)
    1f2c:	07f4      	br      	0x1f14	// 1f14 <EXTI_trigger_CMD+0x8>
    1f2e:	1067      	lrw      	r3, 0x20000060	// 1f48 <EXTI_trigger_CMD+0x3c>
		if(NewState != DISABLE)
    1f30:	3840      	cmpnei      	r0, 0
			SYSCON->EXIFT |=EXIPIN;
    1f32:	9360      	ld.w      	r3, (r3, 0x0)
    1f34:	237f      	addi      	r3, 128
    1f36:	9346      	ld.w      	r2, (r3, 0x18)
		if(NewState != DISABLE)
    1f38:	0c04      	bf      	0x1f40	// 1f40 <EXTI_trigger_CMD+0x34>
			SYSCON->EXIFT |=EXIPIN;
    1f3a:	6c48      	or      	r1, r2
    1f3c:	b326      	st.w      	r1, (r3, 0x18)
    1f3e:	07eb      	br      	0x1f14	// 1f14 <EXTI_trigger_CMD+0x8>
			SYSCON->EXIFT &=~EXIPIN;	
    1f40:	6885      	andn      	r2, r1
    1f42:	b346      	st.w      	r2, (r3, 0x18)
}
    1f44:	07e8      	br      	0x1f14	// 1f14 <EXTI_trigger_CMD+0x8>
    1f46:	0000      	bkpt
    1f48:	20000060 	.long	0x20000060

Disassembly of section .text.SYSCON_Int_Enable:

00001f4c <SYSCON_Int_Enable>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SYSCON_Int_Enable(void)
{
    INTC_ISER_WRITE(SYSCON_INT);    
    1f4c:	3202      	movi      	r2, 2
    1f4e:	1062      	lrw      	r3, 0xe000e100	// 1f54 <SYSCON_Int_Enable+0x8>
    1f50:	b340      	st.w      	r2, (r3, 0x0)
}
    1f52:	783c      	jmp      	r15
    1f54:	e000e100 	.long	0xe000e100

Disassembly of section .text.GPIO_Init:

00001f58 <GPIO_Init>:
//byte:Lowbyte(PIN_0~7),Highbyte(PIN_8~15)
//Dir:0:output 1:input
//ReturnValue:NONE
/*************************************************************/  
void GPIO_Init(CSP_GPIO_T *GPIOx,uint8_t PinNum,GPIO_Dir_TypeDef Dir)
{
    1f58:	14d1      	push      	r4, r15
    uint32_t data_temp;
    uint8_t GPIO_Pin;
    if(PinNum<8)
    1f5a:	3907      	cmphsi      	r1, 8
{
    1f5c:	6d03      	mov      	r4, r0
    if(PinNum<8)
    1f5e:	0830      	bt      	0x1fbe	// 1fbe <GPIO_Init+0x66>
    {
    switch (PinNum)
    1f60:	5903      	subi      	r0, r1, 1
    1f62:	3806      	cmphsi      	r0, 7
    1f64:	0827      	bt      	0x1fb2	// 1fb2 <GPIO_Init+0x5a>
    1f66:	e3fff6cb 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    1f6a:	1004      	.short	0x1004
    1f6c:	1d1a1613 	.long	0x1d1a1613
    1f70:	0021      	.short	0x0021
    {
        case 0:data_temp=0xfffffff0;GPIO_Pin=0;break;
        case 1:data_temp=0xffffff0f;GPIO_Pin=4;break;
    1f72:	3300      	movi      	r3, 0
    1f74:	3104      	movi      	r1, 4
    1f76:	2bf0      	subi      	r3, 241
        case 4:data_temp=0xfff0ffff;GPIO_Pin=16;break;
        case 5:data_temp=0xff0fffff;GPIO_Pin=20;break;
        case 6:data_temp=0xf0ffffff;GPIO_Pin=24;break;
        case 7:data_temp=0x0fffffff;GPIO_Pin=28;break;
    }
        if (Dir)
    1f78:	3a40      	cmpnei      	r2, 0
        {
          (GPIOx)->CONLR =((GPIOx)->CONLR & data_temp) | 1<<GPIO_Pin;
    1f7a:	9440      	ld.w      	r2, (r4, 0x0)
    1f7c:	68c8      	and      	r3, r2
        if (Dir)
    1f7e:	0c1e      	bf      	0x1fba	// 1fba <GPIO_Init+0x62>
          (GPIOx)->CONLR =((GPIOx)->CONLR & data_temp) | 1<<GPIO_Pin;
    1f80:	3201      	movi      	r2, 1
        }
        else
        {
         (GPIOx)->CONLR = ((GPIOx)->CONLR & data_temp) | 2<<GPIO_Pin; 
    1f82:	7084      	lsl      	r2, r1
    1f84:	6cc8      	or      	r3, r2
    1f86:	b460      	st.w      	r3, (r4, 0x0)
        else
        {
         (GPIOx)->CONHR = ((GPIOx)->CONHR & data_temp) | 2<<GPIO_Pin;    
        }
    }
}
    1f88:	1491      	pop      	r4, r15
        case 2:data_temp=0xfffff0ff;GPIO_Pin=8;break;
    1f8a:	3108      	movi      	r1, 8
    1f8c:	1166      	lrw      	r3, 0xfffff0ff	// 2024 <GPIO_Init+0xcc>
    1f8e:	07f5      	br      	0x1f78	// 1f78 <GPIO_Init+0x20>
        case 3:data_temp=0xffff0fff;GPIO_Pin=12;break;
    1f90:	310c      	movi      	r1, 12
    1f92:	1166      	lrw      	r3, 0xffff0fff	// 2028 <GPIO_Init+0xd0>
    1f94:	07f2      	br      	0x1f78	// 1f78 <GPIO_Init+0x20>
        case 4:data_temp=0xfff0ffff;GPIO_Pin=16;break;
    1f96:	3110      	movi      	r1, 16
    1f98:	1165      	lrw      	r3, 0xfff10000	// 202c <GPIO_Init+0xd4>
        case 6:data_temp=0xf0ffffff;GPIO_Pin=24;break;
    1f9a:	2b00      	subi      	r3, 1
    1f9c:	07ee      	br      	0x1f78	// 1f78 <GPIO_Init+0x20>
        case 5:data_temp=0xff0fffff;GPIO_Pin=20;break;
    1f9e:	3114      	movi      	r1, 20
    1fa0:	1164      	lrw      	r3, 0xff100000	// 2030 <GPIO_Init+0xd8>
    1fa2:	07fc      	br      	0x1f9a	// 1f9a <GPIO_Init+0x42>
        case 6:data_temp=0xf0ffffff;GPIO_Pin=24;break;
    1fa4:	33f1      	movi      	r3, 241
    1fa6:	3118      	movi      	r1, 24
    1fa8:	4378      	lsli      	r3, r3, 24
    1faa:	07f8      	br      	0x1f9a	// 1f9a <GPIO_Init+0x42>
        case 7:data_temp=0x0fffffff;GPIO_Pin=28;break;
    1fac:	311c      	movi      	r1, 28
    1fae:	1162      	lrw      	r3, 0xfffffff	// 2034 <GPIO_Init+0xdc>
    1fb0:	07e4      	br      	0x1f78	// 1f78 <GPIO_Init+0x20>
        case 0:data_temp=0xfffffff0;GPIO_Pin=0;break;
    1fb2:	3300      	movi      	r3, 0
    1fb4:	3100      	movi      	r1, 0
    1fb6:	2b0f      	subi      	r3, 16
    1fb8:	07e0      	br      	0x1f78	// 1f78 <GPIO_Init+0x20>
         (GPIOx)->CONLR = ((GPIOx)->CONLR & data_temp) | 2<<GPIO_Pin; 
    1fba:	3202      	movi      	r2, 2
    1fbc:	07e3      	br      	0x1f82	// 1f82 <GPIO_Init+0x2a>
    else if (PinNum<16)
    1fbe:	390f      	cmphsi      	r1, 16
    1fc0:	0be4      	bt      	0x1f88	// 1f88 <GPIO_Init+0x30>
        switch (PinNum)
    1fc2:	2908      	subi      	r1, 9
    1fc4:	3906      	cmphsi      	r1, 7
    1fc6:	6c07      	mov      	r0, r1
    1fc8:	0827      	bt      	0x2016	// 2016 <GPIO_Init+0xbe>
    1fca:	e3fff699 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    1fce:	1004      	.short	0x1004
    1fd0:	1d1a1613 	.long	0x1d1a1613
    1fd4:	0021      	.short	0x0021
        case 9:data_temp=0xffffff0f;GPIO_Pin=4;break;
    1fd6:	3300      	movi      	r3, 0
    1fd8:	3104      	movi      	r1, 4
    1fda:	2bf0      	subi      	r3, 241
      if (Dir)
    1fdc:	3a40      	cmpnei      	r2, 0
        (GPIOx)->CONHR = ((GPIOx)->CONHR & data_temp) | 1<<GPIO_Pin;  
    1fde:	9441      	ld.w      	r2, (r4, 0x4)
    1fe0:	68c8      	and      	r3, r2
      if (Dir)
    1fe2:	0c1e      	bf      	0x201e	// 201e <GPIO_Init+0xc6>
        (GPIOx)->CONHR = ((GPIOx)->CONHR & data_temp) | 1<<GPIO_Pin;  
    1fe4:	3201      	movi      	r2, 1
         (GPIOx)->CONHR = ((GPIOx)->CONHR & data_temp) | 2<<GPIO_Pin;    
    1fe6:	7084      	lsl      	r2, r1
    1fe8:	6cc8      	or      	r3, r2
    1fea:	b461      	st.w      	r3, (r4, 0x4)
}
    1fec:	07ce      	br      	0x1f88	// 1f88 <GPIO_Init+0x30>
        case 10:data_temp=0xfffff0ff;GPIO_Pin=8;break;
    1fee:	3108      	movi      	r1, 8
    1ff0:	106d      	lrw      	r3, 0xfffff0ff	// 2024 <GPIO_Init+0xcc>
    1ff2:	07f5      	br      	0x1fdc	// 1fdc <GPIO_Init+0x84>
        case 11:data_temp=0xffff0fff;GPIO_Pin=12;break;
    1ff4:	310c      	movi      	r1, 12
    1ff6:	106d      	lrw      	r3, 0xffff0fff	// 2028 <GPIO_Init+0xd0>
    1ff8:	07f2      	br      	0x1fdc	// 1fdc <GPIO_Init+0x84>
        case 12:data_temp=0xfff0ffff;GPIO_Pin=16;break;
    1ffa:	3110      	movi      	r1, 16
    1ffc:	106c      	lrw      	r3, 0xfff10000	// 202c <GPIO_Init+0xd4>
        case 14:data_temp=0xf0ffffff;GPIO_Pin=24;break;
    1ffe:	2b00      	subi      	r3, 1
    2000:	07ee      	br      	0x1fdc	// 1fdc <GPIO_Init+0x84>
        case 13:data_temp=0xff0fffff;GPIO_Pin=20;break;
    2002:	3114      	movi      	r1, 20
    2004:	106b      	lrw      	r3, 0xff100000	// 2030 <GPIO_Init+0xd8>
    2006:	07fc      	br      	0x1ffe	// 1ffe <GPIO_Init+0xa6>
        case 14:data_temp=0xf0ffffff;GPIO_Pin=24;break;
    2008:	33f1      	movi      	r3, 241
    200a:	3118      	movi      	r1, 24
    200c:	4378      	lsli      	r3, r3, 24
    200e:	07f8      	br      	0x1ffe	// 1ffe <GPIO_Init+0xa6>
        case 15:data_temp=0x0fffffff;GPIO_Pin=28;break;
    2010:	311c      	movi      	r1, 28
    2012:	1069      	lrw      	r3, 0xfffffff	// 2034 <GPIO_Init+0xdc>
    2014:	07e4      	br      	0x1fdc	// 1fdc <GPIO_Init+0x84>
        case 8:data_temp=0xfffffff0;GPIO_Pin=0;break;
    2016:	3300      	movi      	r3, 0
    2018:	3100      	movi      	r1, 0
    201a:	2b0f      	subi      	r3, 16
    201c:	07e0      	br      	0x1fdc	// 1fdc <GPIO_Init+0x84>
         (GPIOx)->CONHR = ((GPIOx)->CONHR & data_temp) | 2<<GPIO_Pin;    
    201e:	3202      	movi      	r2, 2
    2020:	07e3      	br      	0x1fe6	// 1fe6 <GPIO_Init+0x8e>
    2022:	0000      	bkpt
    2024:	fffff0ff 	.long	0xfffff0ff
    2028:	ffff0fff 	.long	0xffff0fff
    202c:	fff10000 	.long	0xfff10000
    2030:	ff100000 	.long	0xff100000
    2034:	0fffffff 	.long	0x0fffffff

Disassembly of section .text.GPIO_Set_Value:

00002038 <GPIO_Set_Value>:
//bitposi:0~15 bitval:0~1 0=low 1=high
//ReturnValue:VALUE
/*************************************************************/
void GPIO_Set_Value(CSP_GPIO_T *GPIOx,uint8_t bitposi,uint8_t bitval)
{
    if (bitval==1)
    2038:	3a41      	cmpnei      	r2, 1
    203a:	0804      	bt      	0x2042	// 2042 <GPIO_Set_Value+0xa>
    {
        (GPIOx)->SODR = (1ul<<bitposi);
    203c:	7084      	lsl      	r2, r1
    203e:	b043      	st.w      	r2, (r0, 0xc)
    }
    else if ((bitval==0))
    {
        (GPIOx)->CODR = (1ul<<bitposi);
    }
}
    2040:	783c      	jmp      	r15
    else if ((bitval==0))
    2042:	3a40      	cmpnei      	r2, 0
    2044:	0bfe      	bt      	0x2040	// 2040 <GPIO_Set_Value+0x8>
        (GPIOx)->CODR = (1ul<<bitposi);
    2046:	3301      	movi      	r3, 1
    2048:	70c4      	lsl      	r3, r1
    204a:	b064      	st.w      	r3, (r0, 0x10)
}
    204c:	07fa      	br      	0x2040	// 2040 <GPIO_Set_Value+0x8>

Disassembly of section .text.WWDT_CONFIG:

00002050 <WWDT_CONFIG>:
//WWDT CONFIG
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/ 
void WWDT_CONFIG(WWDT_PSCDIV_TypeDef PSCDIVX,U8_T WND_DATA,WWDT_DBGEN_TypeDef DBGENX)
{
    2050:	14c1      	push      	r4
	WWDT->CFGR =WND_DATA;
    2052:	1065      	lrw      	r3, 0x20000014	// 2064 <WWDT_CONFIG+0x14>
    2054:	9380      	ld.w      	r4, (r3, 0x0)
    2056:	b421      	st.w      	r1, (r4, 0x4)
	WWDT->CFGR |= PSCDIVX |DBGENX;
    2058:	9461      	ld.w      	r3, (r4, 0x4)
    205a:	6c8c      	or      	r2, r3
    205c:	6c08      	or      	r0, r2
    205e:	b401      	st.w      	r0, (r4, 0x4)
}
    2060:	1481      	pop      	r4
    2062:	0000      	bkpt
    2064:	20000014 	.long	0x20000014

Disassembly of section .text.WWDT_CNT_Load:

00002068 <WWDT_CNT_Load>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/ 
void WWDT_CNT_Load(U8_T cnt_data)
{
	WWDT->CR  |= cnt_data;						//SET
    2068:	1063      	lrw      	r3, 0x20000014	// 2074 <WWDT_CNT_Load+0xc>
    206a:	9360      	ld.w      	r3, (r3, 0x0)
    206c:	9340      	ld.w      	r2, (r3, 0x0)
    206e:	6c08      	or      	r0, r2
    2070:	b300      	st.w      	r0, (r3, 0x0)
}
    2072:	783c      	jmp      	r15
    2074:	20000014 	.long	0x20000014

Disassembly of section .text.WWDT_Int_Config:

00002078 <WWDT_Int_Config>:
//EntryParameter:NONE
//ReturnValue: NONE
/*************************************************************/
void WWDT_Int_Config(FunctionalStatus NewState)
{
	if (NewState != DISABLE)
    2078:	3840      	cmpnei      	r0, 0
    207a:	106a      	lrw      	r3, 0x20000014	// 20a0 <WWDT_Int_Config+0x28>
    207c:	0c0b      	bf      	0x2092	// 2092 <WWDT_Int_Config+0x1a>
	{
		WWDT->ICR = WWDT_EVI;				
    207e:	9360      	ld.w      	r3, (r3, 0x0)
    2080:	3101      	movi      	r1, 1
    2082:	b325      	st.w      	r1, (r3, 0x14)
		WWDT->IMCR  |= WWDT_EVI;
    2084:	9344      	ld.w      	r2, (r3, 0x10)
    2086:	6c84      	or      	r2, r1
    2088:	b344      	st.w      	r2, (r3, 0x10)
		INTC_ISER_WRITE(WWDT_INT);  
    208a:	3240      	movi      	r2, 64
    208c:	1066      	lrw      	r3, 0xe000e100	// 20a4 <WWDT_Int_Config+0x2c>
	}
	else
	{
		WWDT->IMCR  &= ~WWDT_EVI;					//CLR
		INTC_ICER_WRITE(WWDT_INT);  
    208e:	b340      	st.w      	r2, (r3, 0x0)
	}
    2090:	783c      	jmp      	r15
		WWDT->IMCR  &= ~WWDT_EVI;					//CLR
    2092:	9340      	ld.w      	r2, (r3, 0x0)
    2094:	9264      	ld.w      	r3, (r2, 0x10)
    2096:	3b80      	bclri      	r3, 0
    2098:	b264      	st.w      	r3, (r2, 0x10)
		INTC_ICER_WRITE(WWDT_INT);  
    209a:	3240      	movi      	r2, 64
    209c:	1063      	lrw      	r3, 0xe000e180	// 20a8 <WWDT_Int_Config+0x30>
    209e:	07f8      	br      	0x208e	// 208e <WWDT_Int_Config+0x16>
    20a0:	20000014 	.long	0x20000014
    20a4:	e000e100 	.long	0xe000e100
    20a8:	e000e180 	.long	0xe000e180

Disassembly of section .text.BT_DeInit:

000020ac <BT_DeInit>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/    
void BT_DeInit(CSP_BT_T *BTx)
{
	BTx->RSSR=BT_RESET_VALUE;
    20ac:	3300      	movi      	r3, 0
    20ae:	b060      	st.w      	r3, (r0, 0x0)
	BTx->CR=BT_RESET_VALUE;
    20b0:	b061      	st.w      	r3, (r0, 0x4)
	BTx->PSCR=BT_RESET_VALUE;
    20b2:	b062      	st.w      	r3, (r0, 0x8)
	BTx->PRDR=BT_RESET_VALUE;
    20b4:	b063      	st.w      	r3, (r0, 0xc)
	BTx->CMP=BT_RESET_VALUE;
    20b6:	b064      	st.w      	r3, (r0, 0x10)
	BTx->CNT=BT_RESET_VALUE;
    20b8:	b065      	st.w      	r3, (r0, 0x14)
	BTx->EVTRG=BT_RESET_VALUE;
    20ba:	b066      	st.w      	r3, (r0, 0x18)
	BTx->EVSWF=BT_RESET_VALUE;
    20bc:	b069      	st.w      	r3, (r0, 0x24)
	BTx->RISR=BT_RESET_VALUE;
    20be:	b06a      	st.w      	r3, (r0, 0x28)
	BTx->IMCR=BT_RESET_VALUE;
    20c0:	b06b      	st.w      	r3, (r0, 0x2c)
	BTx->MISR=BT_RESET_VALUE;
    20c2:	b06c      	st.w      	r3, (r0, 0x30)
	BTx->ICR=BT_RESET_VALUE;
    20c4:	b06d      	st.w      	r3, (r0, 0x34)
}
    20c6:	783c      	jmp      	r15

Disassembly of section .text.BT_Start:

000020c8 <BT_Start>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/ 
void BT_Start(CSP_BT_T *BTx)
{
	BTx->RSSR |=0X01;
    20c8:	9060      	ld.w      	r3, (r0, 0x0)
    20ca:	3ba0      	bseti      	r3, 0
    20cc:	b060      	st.w      	r3, (r0, 0x0)
}
    20ce:	783c      	jmp      	r15

Disassembly of section .text.BT_Configure:

000020d0 <BT_Configure>:
//BT Configure
//EntryParameter:
//ReturnValue:NONE
/*************************************************************/
void BT_Configure(CSP_BT_T *BTx,BT_CLK_TypeDef BTCLK,U16_T PSCR_DATA,BT_SHDWSTP_TypeDef BTSHDWSTP,BT_OPM_TypeDef BTOPM,BT_EXTCKM_TypeDef BTEXTCKM)
{
    20d0:	14c3      	push      	r4-r6
    20d2:	98a4      	ld.w      	r5, (r14, 0x10)
    20d4:	6d97      	mov      	r6, r5
    20d6:	9883      	ld.w      	r4, (r14, 0xc)
	BTx->CR |=BTCLK| BTSHDWSTP| BTOPM| BTEXTCKM;
    20d8:	6d18      	or      	r4, r6
    20da:	6cd0      	or      	r3, r4
    20dc:	90a1      	ld.w      	r5, (r0, 0x4)
    20de:	6c4c      	or      	r1, r3
    20e0:	6c54      	or      	r1, r5
    20e2:	b021      	st.w      	r1, (r0, 0x4)
	BTx->PSCR = PSCR_DATA;
    20e4:	b042      	st.w      	r2, (r0, 0x8)
}
    20e6:	1483      	pop      	r4-r6

Disassembly of section .text.BT_ControlSet_Configure:

000020e8 <BT_ControlSet_Configure>:
//EntryParameter:
//ReturnValue:NONE
/*************************************************************/
void BT_ControlSet_Configure(CSP_BT_T *BTx,BT_STARTST_TypeDef BTSTART,BT_IDLEST_TypeDef BTIDLE,BT_SYNCEN_TypeDef BTSYNC,BT_SYNCMD_TypeDef BTSYNCMD,
							BT_OSTMDX_TypeDef BTOSTMD,BT_AREARM_TypeDef BTAREARM,BT_CNTRLD_TypeDef BTCNTRLD)
{
    20e8:	14c4      	push      	r4-r7
    20ea:	1421      	subi      	r14, r14, 4
    20ec:	9885      	ld.w      	r4, (r14, 0x14)
    20ee:	6dd3      	mov      	r7, r4
    20f0:	9886      	ld.w      	r4, (r14, 0x18)
    20f2:	b880      	st.w      	r4, (r14, 0x0)
    20f4:	9887      	ld.w      	r4, (r14, 0x1c)
    20f6:	6d93      	mov      	r6, r4
    20f8:	98a8      	ld.w      	r5, (r14, 0x20)
	BTx->CR |=BTSTART| BTIDLE| BTSYNC| BTSYNCMD| BTOSTMD| BTAREARM| BTCNTRLD;
    20fa:	6d58      	or      	r5, r6
    20fc:	98c0      	ld.w      	r6, (r14, 0x0)
    20fe:	6d58      	or      	r5, r6
    2100:	6d5c      	or      	r5, r7
    2102:	6cd4      	or      	r3, r5
    2104:	6c8c      	or      	r2, r3
    2106:	9081      	ld.w      	r4, (r0, 0x4)
    2108:	6c48      	or      	r1, r2
    210a:	6d04      	or      	r4, r1
    210c:	6d9f      	mov      	r6, r7
    210e:	b081      	st.w      	r4, (r0, 0x4)
}
    2110:	1401      	addi      	r14, r14, 4
    2112:	1484      	pop      	r4-r7

Disassembly of section .text.BT_Period_CMP_Write:

00002114 <BT_Period_CMP_Write>:
//ReturnValue:NONE
/*************************************************************/
void BT_Period_CMP_Write(CSP_BT_T *BTx,U16_T BTPRDR_DATA,U16_T BTCMP_DATA)
{
	//BTx->CR|=0X01<<2;
	BTx->PRDR =BTPRDR_DATA;
    2114:	b023      	st.w      	r1, (r0, 0xc)
	BTx->CMP =BTCMP_DATA;
    2116:	b044      	st.w      	r2, (r0, 0x10)
}
    2118:	783c      	jmp      	r15

Disassembly of section .text.BT_ConfigInterrupt_CMD:

0000211a <BT_ConfigInterrupt_CMD>:
//NewState:ENABLE,DISABLE
//ReturnValue:NONE
/*************************************************************/ 
void BT_ConfigInterrupt_CMD(CSP_BT_T *BTx,FunctionalStatus NewState,BT_IMSCR_TypeDef BT_IMSCR_X)
{
	if (NewState != DISABLE)
    211a:	3940      	cmpnei      	r1, 0
	{
		BTx->IMCR  |= BT_IMSCR_X;						
    211c:	906b      	ld.w      	r3, (r0, 0x2c)
	if (NewState != DISABLE)
    211e:	0c04      	bf      	0x2126	// 2126 <BT_ConfigInterrupt_CMD+0xc>
		BTx->IMCR  |= BT_IMSCR_X;						
    2120:	6c8c      	or      	r2, r3
    2122:	b04b      	st.w      	r2, (r0, 0x2c)
	}
	else
	{
		BTx->IMCR  &= ~BT_IMSCR_X;					
	}
}
    2124:	783c      	jmp      	r15
		BTx->IMCR  &= ~BT_IMSCR_X;					
    2126:	68c9      	andn      	r3, r2
    2128:	b06b      	st.w      	r3, (r0, 0x2c)
}
    212a:	07fd      	br      	0x2124	// 2124 <BT_ConfigInterrupt_CMD+0xa>

Disassembly of section .text.BT0_INT_ENABLE:

0000212c <BT0_INT_ENABLE>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void BT0_INT_ENABLE(void)
{
	INTC_ISER_WRITE(BT0_INT);
    212c:	3380      	movi      	r3, 128
    212e:	4375      	lsli      	r3, r3, 21
    2130:	1042      	lrw      	r2, 0xe000e100	// 2138 <BT0_INT_ENABLE+0xc>
    2132:	b260      	st.w      	r3, (r2, 0x0)
}
    2134:	783c      	jmp      	r15
    2136:	0000      	bkpt
    2138:	e000e100 	.long	0xe000e100

Disassembly of section .text.BT1_INT_ENABLE:

0000213c <BT1_INT_ENABLE>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void BT1_INT_ENABLE(void)
{
	INTC_ISER_WRITE(BT1_INT);
    213c:	3380      	movi      	r3, 128
    213e:	4376      	lsli      	r3, r3, 22
    2140:	1042      	lrw      	r2, 0xe000e100	// 2148 <BT1_INT_ENABLE+0xc>
    2142:	b260      	st.w      	r3, (r2, 0x0)
}
    2144:	783c      	jmp      	r15
    2146:	0000      	bkpt
    2148:	e000e100 	.long	0xe000e100

Disassembly of section .text.UART0_DeInit:

0000214c <UART0_DeInit>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART0_DeInit(void)
{
    UART0->DATA = UART_RESET_VALUE;
    214c:	1065      	lrw      	r3, 0x20000044	// 2160 <UART0_DeInit+0x14>
    214e:	3200      	movi      	r2, 0
    2150:	9360      	ld.w      	r3, (r3, 0x0)
    2152:	b340      	st.w      	r2, (r3, 0x0)
    UART0->SR   = UART_RESET_VALUE;
    2154:	b341      	st.w      	r2, (r3, 0x4)
    UART0->CTRL = UART_RESET_VALUE;
    2156:	b342      	st.w      	r2, (r3, 0x8)
    UART0->ISR  = UART_RESET_VALUE;
    2158:	b343      	st.w      	r2, (r3, 0xc)
    UART0->BRDIV =UART_RESET_VALUE;
    215a:	b344      	st.w      	r2, (r3, 0x10)
}
    215c:	783c      	jmp      	r15
    215e:	0000      	bkpt
    2160:	20000044 	.long	0x20000044

Disassembly of section .text.UART_IO_Init:

00002164 <UART_IO_Init>:
//UART_IO_G:0 1
//ReturnValue:NONE
/*************************************************************/
void UART_IO_Init(UART_NUM_TypeDef IO_UART_NUM , U8_T UART_IO_G)
{
    if (IO_UART_NUM==IO_UART0)
    2164:	3840      	cmpnei      	r0, 0
    2166:	0819      	bt      	0x2198	// 2198 <UART_IO_Init+0x34>
    {
		if(UART_IO_G==0)
    2168:	3940      	cmpnei      	r1, 0
    216a:	080a      	bt      	0x217e	// 217e <UART_IO_Init+0x1a>
		{
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFF00)  | 0x00000044;       //PA0.1->RXD0, PA0.0->TXD0
    216c:	1172      	lrw      	r3, 0x20000050	// 2234 <UART_IO_Init+0xd0>
    216e:	31ff      	movi      	r1, 255
    2170:	9340      	ld.w      	r2, (r3, 0x0)
    2172:	9260      	ld.w      	r3, (r2, 0x0)
    2174:	68c5      	andn      	r3, r1
    2176:	3ba2      	bseti      	r3, 2
    2178:	3ba6      	bseti      	r3, 6
    }
	 if (IO_UART_NUM==IO_UART2)
    {
        if(UART_IO_G==0)
		{
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFF00)  | 0x00000077;       //PA0.0->RXD2, PA0.1->TXD2
    217a:	b260      	st.w      	r3, (r2, 0x0)
    217c:	040d      	br      	0x2196	// 2196 <UART_IO_Init+0x32>
		else if(UART_IO_G==1)
    217e:	3941      	cmpnei      	r1, 1
    2180:	080b      	bt      	0x2196	// 2196 <UART_IO_Init+0x32>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFF0FFFF)  | 0x00070000;      
    2182:	116d      	lrw      	r3, 0x20000050	// 2234 <UART_IO_Init+0xd0>
    2184:	32f0      	movi      	r2, 240
    2186:	9320      	ld.w      	r1, (r3, 0x0)
    2188:	424c      	lsli      	r2, r2, 12
    218a:	9161      	ld.w      	r3, (r1, 0x4)
    218c:	68c9      	andn      	r3, r2
    218e:	32e0      	movi      	r2, 224
    2190:	424b      	lsli      	r2, r2, 11
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)  | 0x00700000;       
    2192:	6cc8      	or      	r3, r2
    2194:	b161      	st.w      	r3, (r1, 0x4)
		else if(UART_IO_G==2)
		{
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFF00FFFF) | 0X00660000;        //PB0.5->RXD2, PB0.4->TXD2
		}
    }
}
    2196:	783c      	jmp      	r15
     if (IO_UART_NUM==IO_UART1)
    2198:	3841      	cmpnei      	r0, 1
    219a:	082b      	bt      	0x21f0	// 21f0 <UART_IO_Init+0x8c>
        if(UART_IO_G==0)
    219c:	3940      	cmpnei      	r1, 0
    219e:	0812      	bt      	0x21c2	// 21c2 <UART_IO_Init+0x5e>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFF0)  | 0x00000007;       //PA0.13->RXD1, PB0.0->TXD1
    21a0:	1166      	lrw      	r3, 0x2000004c	// 2238 <UART_IO_Init+0xd4>
    21a2:	310f      	movi      	r1, 15
    21a4:	9340      	ld.w      	r2, (r3, 0x0)
    21a6:	9260      	ld.w      	r3, (r2, 0x0)
    21a8:	68c5      	andn      	r3, r1
    21aa:	3107      	movi      	r1, 7
    21ac:	6cc4      	or      	r3, r1
    21ae:	b260      	st.w      	r3, (r2, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)  | 0x00700000;       
    21b0:	32f0      	movi      	r2, 240
    21b2:	1161      	lrw      	r3, 0x20000050	// 2234 <UART_IO_Init+0xd0>
    21b4:	4250      	lsli      	r2, r2, 16
    21b6:	9320      	ld.w      	r1, (r3, 0x0)
    21b8:	9161      	ld.w      	r3, (r1, 0x4)
    21ba:	68c9      	andn      	r3, r2
    21bc:	32e0      	movi      	r2, 224
    21be:	424f      	lsli      	r2, r2, 15
    21c0:	07e9      	br      	0x2192	// 2192 <UART_IO_Init+0x2e>
		else if(UART_IO_G==1)
    21c2:	3941      	cmpnei      	r1, 1
    21c4:	080c      	bt      	0x21dc	// 21dc <UART_IO_Init+0x78>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFF00FFF) | 0X00077000;        //PA0.4->RXD1, PA0.3->TXD1
    21c6:	107c      	lrw      	r3, 0x20000050	// 2234 <UART_IO_Init+0xd0>
    21c8:	32ff      	movi      	r2, 255
    21ca:	9320      	ld.w      	r1, (r3, 0x0)
    21cc:	424c      	lsli      	r2, r2, 12
    21ce:	9160      	ld.w      	r3, (r1, 0x0)
    21d0:	68c9      	andn      	r3, r2
    21d2:	32ee      	movi      	r2, 238
    21d4:	424b      	lsli      	r2, r2, 11
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFF00FFFF) | 0X00660000;        //PB0.5->RXD2, PB0.4->TXD2
    21d6:	6cc8      	or      	r3, r2
    21d8:	b160      	st.w      	r3, (r1, 0x0)
}
    21da:	07de      	br      	0x2196	// 2196 <UART_IO_Init+0x32>
		else if(UART_IO_G==2)
    21dc:	3942      	cmpnei      	r1, 2
    21de:	0bdc      	bt      	0x2196	// 2196 <UART_IO_Init+0x32>
			GPIOA0->CONHR = (GPIOA0->CONHR&0X00FFFFFF) | 0X77000000;        //PA0.15->RXD1, PA0.14->TXD1
    21e0:	1075      	lrw      	r3, 0x20000050	// 2234 <UART_IO_Init+0xd0>
    21e2:	32ee      	movi      	r2, 238
    21e4:	9320      	ld.w      	r1, (r3, 0x0)
    21e6:	9161      	ld.w      	r3, (r1, 0x4)
    21e8:	4368      	lsli      	r3, r3, 8
    21ea:	4b68      	lsri      	r3, r3, 8
    21ec:	4257      	lsli      	r2, r2, 23
    21ee:	07d2      	br      	0x2192	// 2192 <UART_IO_Init+0x2e>
	 if (IO_UART_NUM==IO_UART2)
    21f0:	3842      	cmpnei      	r0, 2
    21f2:	0bd2      	bt      	0x2196	// 2196 <UART_IO_Init+0x32>
        if(UART_IO_G==0)
    21f4:	3940      	cmpnei      	r1, 0
    21f6:	0809      	bt      	0x2208	// 2208 <UART_IO_Init+0xa4>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFF00)  | 0x00000077;       //PA0.0->RXD2, PA0.1->TXD2
    21f8:	106f      	lrw      	r3, 0x20000050	// 2234 <UART_IO_Init+0xd0>
    21fa:	31ff      	movi      	r1, 255
    21fc:	9340      	ld.w      	r2, (r3, 0x0)
    21fe:	9260      	ld.w      	r3, (r2, 0x0)
    2200:	68c5      	andn      	r3, r1
    2202:	3177      	movi      	r1, 119
    2204:	6cc4      	or      	r3, r1
    2206:	07ba      	br      	0x217a	// 217a <UART_IO_Init+0x16>
		else if(UART_IO_G==1)
    2208:	3941      	cmpnei      	r1, 1
    220a:	0809      	bt      	0x221c	// 221c <UART_IO_Init+0xb8>
			GPIOA0->CONLR = (GPIOA0->CONLR&0X00FFFFFF) | 0X77000000;        //PA0.7->RXD2, PA0.6->TXD2
    220c:	106a      	lrw      	r3, 0x20000050	// 2234 <UART_IO_Init+0xd0>
    220e:	32ee      	movi      	r2, 238
    2210:	9320      	ld.w      	r1, (r3, 0x0)
    2212:	9160      	ld.w      	r3, (r1, 0x0)
    2214:	4368      	lsli      	r3, r3, 8
    2216:	4b68      	lsri      	r3, r3, 8
    2218:	4257      	lsli      	r2, r2, 23
    221a:	07de      	br      	0x21d6	// 21d6 <UART_IO_Init+0x72>
		else if(UART_IO_G==2)
    221c:	3942      	cmpnei      	r1, 2
    221e:	0bbc      	bt      	0x2196	// 2196 <UART_IO_Init+0x32>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFF00FFFF) | 0X00660000;        //PB0.5->RXD2, PB0.4->TXD2
    2220:	1066      	lrw      	r3, 0x2000004c	// 2238 <UART_IO_Init+0xd4>
    2222:	32ff      	movi      	r2, 255
    2224:	9320      	ld.w      	r1, (r3, 0x0)
    2226:	4250      	lsli      	r2, r2, 16
    2228:	9160      	ld.w      	r3, (r1, 0x0)
    222a:	68c9      	andn      	r3, r2
    222c:	32cc      	movi      	r2, 204
    222e:	424f      	lsli      	r2, r2, 15
    2230:	07d3      	br      	0x21d6	// 21d6 <UART_IO_Init+0x72>
    2232:	0000      	bkpt
    2234:	20000050 	.long	0x20000050
    2238:	2000004c 	.long	0x2000004c

Disassembly of section .text.UARTInit:

0000223c <UARTInit>:
//ReturnValue:NONE
/*************************************************************/
void UARTInit(CSP_UART_T *uart,U16_T baudrate_u16,UART_PAR_TypeDef PAR_DAT)
{
   // Set Transmitter Enable
   CSP_UART_SET_CTRL(uart, UART_TX | UART_RX |PAR_DAT);
    223c:	3aa0      	bseti      	r2, 0
    223e:	3aa1      	bseti      	r2, 1
    2240:	b042      	st.w      	r2, (r0, 0x8)
   // Set Baudrate
   CSP_UART_SET_BRDIV(uart, baudrate_u16);
    2242:	b024      	st.w      	r1, (r0, 0x10)
}
    2244:	783c      	jmp      	r15

Disassembly of section .text.UARTTxByte:

00002246 <UARTTxByte>:
/*************************************************************/
void UARTTxByte(CSP_UART_T *uart,U8_T txdata_u8)
{
	unsigned int  DataI;
	// Write the transmit buffer
	CSP_UART_SET_DATA(uart,txdata_u8);
    2246:	b020      	st.w      	r1, (r0, 0x0)
	do
	{
		DataI = CSP_UART_GET_SR(uart);
		DataI = DataI & UART_TX_FULL;
    2248:	3201      	movi      	r2, 1
		DataI = CSP_UART_GET_SR(uart);
    224a:	9061      	ld.w      	r3, (r0, 0x4)
		DataI = DataI & UART_TX_FULL;
    224c:	68c8      	and      	r3, r2
	}
	while(DataI == UART_TX_FULL);    //Loop  when tx is full
    224e:	3b40      	cmpnei      	r3, 0
    2250:	0bfd      	bt      	0x224a	// 224a <UARTTxByte+0x4>
}
    2252:	783c      	jmp      	r15

Disassembly of section .text.EPT_Software_Prg:

00002254 <EPT_Software_Prg>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/    
void EPT_Software_Prg(void)
{
	EPT0->CEDR|=0X01;
    2254:	1067      	lrw      	r3, 0x20000024	// 2270 <EPT_Software_Prg+0x1c>
	EPT0->RSSR=(EPT0->RSSR&0XFFFF0FFF)|(0X05<<12);
    2256:	31f0      	movi      	r1, 240
	EPT0->CEDR|=0X01;
    2258:	9340      	ld.w      	r2, (r3, 0x0)
    225a:	9260      	ld.w      	r3, (r2, 0x0)
    225c:	3ba0      	bseti      	r3, 0
    225e:	b260      	st.w      	r3, (r2, 0x0)
	EPT0->RSSR=(EPT0->RSSR&0XFFFF0FFF)|(0X05<<12);
    2260:	9261      	ld.w      	r3, (r2, 0x4)
    2262:	4128      	lsli      	r1, r1, 8
    2264:	68c5      	andn      	r3, r1
    2266:	3bac      	bseti      	r3, 12
    2268:	3bae      	bseti      	r3, 14
    226a:	b261      	st.w      	r3, (r2, 0x4)
}
    226c:	783c      	jmp      	r15
    226e:	0000      	bkpt
    2270:	20000024 	.long	0x20000024

Disassembly of section .text.EPT_Start:

00002274 <EPT_Start>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/   
void EPT_Start(void)
{
	EPT0->REGPROT = (0xA55A<<16) | 0xC73A;
    2274:	1068      	lrw      	r3, 0x20000024	// 2294 <EPT_Start+0x20>
    2276:	3280      	movi      	r2, 128
    2278:	9360      	ld.w      	r3, (r3, 0x0)
    227a:	608c      	addu      	r2, r3
    227c:	1027      	lrw      	r1, 0xa55ac73a	// 2298 <EPT_Start+0x24>
    227e:	b23a      	st.w      	r1, (r2, 0x68)
	EPT0->RSSR|=0X01;
    2280:	9341      	ld.w      	r2, (r3, 0x4)
    2282:	3aa0      	bseti      	r2, 0
    2284:	b341      	st.w      	r2, (r3, 0x4)
	while(!(EPT0->RSSR&0x01));
    2286:	3101      	movi      	r1, 1
    2288:	9341      	ld.w      	r2, (r3, 0x4)
    228a:	6884      	and      	r2, r1
    228c:	3a40      	cmpnei      	r2, 0
    228e:	0ffd      	bf      	0x2288	// 2288 <EPT_Start+0x14>
} 
    2290:	783c      	jmp      	r15
    2292:	0000      	bkpt
    2294:	20000024 	.long	0x20000024
    2298:	a55ac73a 	.long	0xa55ac73a

Disassembly of section .text.EPT_IO_SET:

0000229c <EPT_IO_SET>:
//EPT_IO_X:EPT_IO_CHAX,EPT_IO_CHAY,EPT_IO_CHBX,EPT_IO_CHBY,EPT_IO_CHCX,EPT_IO_CHCX,EPT_IO_CHD,EPT_IO_EPI
//ReturnValue:NONE
/*************************************************************/    
void EPT_IO_SET(EPT_IO_Mode_Type EPT_IO_X , EPT_IO_NUM_Type IO_Num_X)
{
	if(EPT_IO_X==EPT_IO_CHAX)
    229c:	3840      	cmpnei      	r0, 0
    229e:	0822      	bt      	0x22e2	// 22e2 <EPT_IO_SET+0x46>
	{
		if(IO_Num_X==IO_NUM_PA07)
    22a0:	3950      	cmpnei      	r1, 16
    22a2:	080a      	bt      	0x22b6	// 22b6 <EPT_IO_SET+0x1a>
		{
			GPIOA0->CONLR = (GPIOA0->CONLR&0X0FFFFFFF)|0X60000000;				//PA0.7
    22a4:	0375      	lrw      	r3, 0x20000050	// 24cc <EPT_IO_SET+0x230>
    22a6:	9340      	ld.w      	r2, (r3, 0x0)
    22a8:	9260      	ld.w      	r3, (r2, 0x0)
    22aa:	4364      	lsli      	r3, r3, 4
    22ac:	4b64      	lsri      	r3, r3, 4
    22ae:	3bbd      	bseti      	r3, 29
    22b0:	3bbe      	bseti      	r3, 30
		{
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFF0FFF)|0X00004000;				//PB0.3
		}
		else if(IO_Num_X==IO_NUM_PB00)
		{
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFF0)|0X00000005;				//PB0.0
    22b2:	b260      	st.w      	r3, (r2, 0x0)
		else if(IO_Num_X==IO_NUM_PB02)
		{
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFF0FF)|0X00000700;				//PB0.2 EPI3
		}
	}
}
    22b4:	783c      	jmp      	r15
		else if(IO_Num_X==IO_NUM_PA10)
    22b6:	3951      	cmpnei      	r1, 17
    22b8:	080b      	bt      	0x22ce	// 22ce <EPT_IO_SET+0x32>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFF0FF)|0X00000500;				//PA0.10
    22ba:	037a      	lrw      	r3, 0x20000050	// 24cc <EPT_IO_SET+0x230>
    22bc:	32f0      	movi      	r2, 240
    22be:	9320      	ld.w      	r1, (r3, 0x0)
    22c0:	9161      	ld.w      	r3, (r1, 0x4)
    22c2:	4244      	lsli      	r2, r2, 4
    22c4:	68c9      	andn      	r3, r2
    22c6:	3ba8      	bseti      	r3, 8
    22c8:	3baa      	bseti      	r3, 10
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)|0X00400000;				//PA0.13 EPI1
    22ca:	b161      	st.w      	r3, (r1, 0x4)
    22cc:	07f4      	br      	0x22b4	// 22b4 <EPT_IO_SET+0x18>
		else if(IO_Num_X==IO_NUM_PA15)
    22ce:	3952      	cmpnei      	r1, 18
    22d0:	0bf2      	bt      	0x22b4	// 22b4 <EPT_IO_SET+0x18>
			GPIOA0->CONHR = (GPIOA0->CONHR&0X0FFFFFFF)|0X40000000;				//PA0.15
    22d2:	137f      	lrw      	r3, 0x20000050	// 24cc <EPT_IO_SET+0x230>
    22d4:	9340      	ld.w      	r2, (r3, 0x0)
    22d6:	9261      	ld.w      	r3, (r2, 0x4)
    22d8:	4364      	lsli      	r3, r3, 4
    22da:	4b64      	lsri      	r3, r3, 4
    22dc:	3bbe      	bseti      	r3, 30
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFF0)|0X00000004;				//PA0.8
    22de:	b261      	st.w      	r3, (r2, 0x4)
    22e0:	07ea      	br      	0x22b4	// 22b4 <EPT_IO_SET+0x18>
	else if(EPT_IO_X==EPT_IO_CHAY)
    22e2:	3841      	cmpnei      	r0, 1
    22e4:	0823      	bt      	0x232a	// 232a <EPT_IO_SET+0x8e>
		if(IO_Num_X==IO_NUM_PB03)
    22e6:	3953      	cmpnei      	r1, 19
    22e8:	080a      	bt      	0x22fc	// 22fc <EPT_IO_SET+0x60>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFF0FFF)|0X00005000;				//PB0.3
    22ea:	137a      	lrw      	r3, 0x2000004c	// 24d0 <EPT_IO_SET+0x234>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)|0X00005000;				//PA0.3
    22ec:	9320      	ld.w      	r1, (r3, 0x0)
    22ee:	32f0      	movi      	r2, 240
    22f0:	9160      	ld.w      	r3, (r1, 0x0)
    22f2:	4248      	lsli      	r2, r2, 8
    22f4:	68c9      	andn      	r3, r2
    22f6:	3bac      	bseti      	r3, 12
    22f8:	3bae      	bseti      	r3, 14
    22fa:	040b      	br      	0x2310	// 2310 <EPT_IO_SET+0x74>
		else if(IO_Num_X==IO_NUM_PB05)
    22fc:	3954      	cmpnei      	r1, 20
    22fe:	080b      	bt      	0x2314	// 2314 <EPT_IO_SET+0x78>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFF0FFFFF)|0X00500000;				//PB0.5
    2300:	1374      	lrw      	r3, 0x2000004c	// 24d0 <EPT_IO_SET+0x234>
    2302:	32f0      	movi      	r2, 240
    2304:	9320      	ld.w      	r1, (r3, 0x0)
    2306:	9160      	ld.w      	r3, (r1, 0x0)
    2308:	4250      	lsli      	r2, r2, 16
    230a:	68c9      	andn      	r3, r2
    230c:	3bb4      	bseti      	r3, 20
    230e:	3bb6      	bseti      	r3, 22
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFF0FF)|0X00000700;				//PB0.2 EPI3
    2310:	b160      	st.w      	r3, (r1, 0x0)
}
    2312:	07d1      	br      	0x22b4	// 22b4 <EPT_IO_SET+0x18>
		else if(IO_Num_X==IO_NUM_PA12)
    2314:	3955      	cmpnei      	r1, 21
    2316:	0bcf      	bt      	0x22b4	// 22b4 <EPT_IO_SET+0x18>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFF0FFFF)|0X00050000;				//PA0.12
    2318:	136d      	lrw      	r3, 0x20000050	// 24cc <EPT_IO_SET+0x230>
    231a:	32f0      	movi      	r2, 240
    231c:	9320      	ld.w      	r1, (r3, 0x0)
    231e:	9161      	ld.w      	r3, (r1, 0x4)
    2320:	424c      	lsli      	r2, r2, 12
    2322:	68c9      	andn      	r3, r2
    2324:	3bb0      	bseti      	r3, 16
    2326:	3bb2      	bseti      	r3, 18
    2328:	07d1      	br      	0x22ca	// 22ca <EPT_IO_SET+0x2e>
	else if(EPT_IO_X==EPT_IO_CHBX)
    232a:	3842      	cmpnei      	r0, 2
    232c:	0821      	bt      	0x236e	// 236e <EPT_IO_SET+0xd2>
		if(IO_Num_X==IO_NUM_PB02)
    232e:	3956      	cmpnei      	r1, 22
    2330:	080a      	bt      	0x2344	// 2344 <EPT_IO_SET+0xa8>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFF0FF)|0X00000600;				//PB0.2
    2332:	1368      	lrw      	r3, 0x2000004c	// 24d0 <EPT_IO_SET+0x234>
    2334:	32f0      	movi      	r2, 240
    2336:	9320      	ld.w      	r1, (r3, 0x0)
    2338:	9160      	ld.w      	r3, (r1, 0x0)
    233a:	4244      	lsli      	r2, r2, 4
    233c:	68c9      	andn      	r3, r2
    233e:	3ba9      	bseti      	r3, 9
    2340:	3baa      	bseti      	r3, 10
    2342:	07e7      	br      	0x2310	// 2310 <EPT_IO_SET+0x74>
		else if(IO_Num_X==IO_NUM_PA11)
    2344:	3957      	cmpnei      	r1, 23
    2346:	080a      	bt      	0x235a	// 235a <EPT_IO_SET+0xbe>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFF0FFF)|0X00005000;				//PA0.11
    2348:	1361      	lrw      	r3, 0x20000050	// 24cc <EPT_IO_SET+0x230>
    234a:	32f0      	movi      	r2, 240
    234c:	9320      	ld.w      	r1, (r3, 0x0)
    234e:	9161      	ld.w      	r3, (r1, 0x4)
    2350:	4248      	lsli      	r2, r2, 8
    2352:	68c9      	andn      	r3, r2
    2354:	3bac      	bseti      	r3, 12
    2356:	3bae      	bseti      	r3, 14
    2358:	07b9      	br      	0x22ca	// 22ca <EPT_IO_SET+0x2e>
		else if(IO_Num_X==IO_NUM_PA14)
    235a:	3958      	cmpnei      	r1, 24
    235c:	0bac      	bt      	0x22b4	// 22b4 <EPT_IO_SET+0x18>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XF0FFFFFF)|0X04000000;				//PA0.14
    235e:	127c      	lrw      	r3, 0x20000050	// 24cc <EPT_IO_SET+0x230>
    2360:	32f0      	movi      	r2, 240
    2362:	9320      	ld.w      	r1, (r3, 0x0)
    2364:	9161      	ld.w      	r3, (r1, 0x4)
    2366:	4254      	lsli      	r2, r2, 20
    2368:	68c9      	andn      	r3, r2
    236a:	3bba      	bseti      	r3, 26
    236c:	07af      	br      	0x22ca	// 22ca <EPT_IO_SET+0x2e>
	else if(EPT_IO_X==EPT_IO_CHBY)
    236e:	3843      	cmpnei      	r0, 3
    2370:	0820      	bt      	0x23b0	// 23b0 <EPT_IO_SET+0x114>
		if(IO_Num_X==IO_NUM_PB04)
    2372:	3959      	cmpnei      	r1, 25
    2374:	080a      	bt      	0x2388	// 2388 <EPT_IO_SET+0xec>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFF0FFFF)|0X00050000;				//PB0.4
    2376:	1277      	lrw      	r3, 0x2000004c	// 24d0 <EPT_IO_SET+0x234>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFF0FFFF)|0X00050000;				//PA0.4
    2378:	9320      	ld.w      	r1, (r3, 0x0)
    237a:	32f0      	movi      	r2, 240
    237c:	9160      	ld.w      	r3, (r1, 0x0)
    237e:	424c      	lsli      	r2, r2, 12
    2380:	68c9      	andn      	r3, r2
    2382:	3bb0      	bseti      	r3, 16
    2384:	3bb2      	bseti      	r3, 18
    2386:	07c5      	br      	0x2310	// 2310 <EPT_IO_SET+0x74>
		else if(IO_Num_X==IO_NUM_PA05)
    2388:	395a      	cmpnei      	r1, 26
    238a:	0809      	bt      	0x239c	// 239c <EPT_IO_SET+0x100>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFF0FFFFF)|0X00800000;				//PA0.5
    238c:	1270      	lrw      	r3, 0x20000050	// 24cc <EPT_IO_SET+0x230>
    238e:	32f0      	movi      	r2, 240
    2390:	9320      	ld.w      	r1, (r3, 0x0)
    2392:	9160      	ld.w      	r3, (r1, 0x0)
    2394:	4250      	lsli      	r2, r2, 16
    2396:	68c9      	andn      	r3, r2
    2398:	3bb7      	bseti      	r3, 23
    239a:	07bb      	br      	0x2310	// 2310 <EPT_IO_SET+0x74>
		else if(IO_Num_X==IO_NUM_PA08)
    239c:	395b      	cmpnei      	r1, 27
    239e:	0b8b      	bt      	0x22b4	// 22b4 <EPT_IO_SET+0x18>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFF0)|0X00000005;				//PA0.8
    23a0:	126b      	lrw      	r3, 0x20000050	// 24cc <EPT_IO_SET+0x230>
    23a2:	310f      	movi      	r1, 15
    23a4:	9340      	ld.w      	r2, (r3, 0x0)
    23a6:	9261      	ld.w      	r3, (r2, 0x4)
    23a8:	68c5      	andn      	r3, r1
    23aa:	3ba0      	bseti      	r3, 0
    23ac:	3ba2      	bseti      	r3, 2
    23ae:	0798      	br      	0x22de	// 22de <EPT_IO_SET+0x42>
	else if(EPT_IO_X==EPT_IO_CHCX)
    23b0:	3844      	cmpnei      	r0, 4
    23b2:	0823      	bt      	0x23f8	// 23f8 <EPT_IO_SET+0x15c>
		if(IO_Num_X==IO_NUM_PB05)
    23b4:	3954      	cmpnei      	r1, 20
    23b6:	0809      	bt      	0x23c8	// 23c8 <EPT_IO_SET+0x12c>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFF0FFFFF)|0X00400000;				//PB0.5
    23b8:	1266      	lrw      	r3, 0x2000004c	// 24d0 <EPT_IO_SET+0x234>
    23ba:	32f0      	movi      	r2, 240
    23bc:	9320      	ld.w      	r1, (r3, 0x0)
    23be:	9160      	ld.w      	r3, (r1, 0x0)
    23c0:	4250      	lsli      	r2, r2, 16
    23c2:	68c9      	andn      	r3, r2
    23c4:	3bb6      	bseti      	r3, 22
    23c6:	07a5      	br      	0x2310	// 2310 <EPT_IO_SET+0x74>
		else if(IO_Num_X==IO_NUM_PA03)
    23c8:	395c      	cmpnei      	r1, 28
    23ca:	0803      	bt      	0x23d0	// 23d0 <EPT_IO_SET+0x134>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)|0X00005000;				//PA0.3
    23cc:	1260      	lrw      	r3, 0x20000050	// 24cc <EPT_IO_SET+0x230>
    23ce:	078f      	br      	0x22ec	// 22ec <EPT_IO_SET+0x50>
		else if(IO_Num_X==IO_NUM_PB03)
    23d0:	3953      	cmpnei      	r1, 19
    23d2:	0809      	bt      	0x23e4	// 23e4 <EPT_IO_SET+0x148>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFF0FFF)|0X00004000;				//PB0.3
    23d4:	117f      	lrw      	r3, 0x2000004c	// 24d0 <EPT_IO_SET+0x234>
    23d6:	32f0      	movi      	r2, 240
    23d8:	9320      	ld.w      	r1, (r3, 0x0)
    23da:	9160      	ld.w      	r3, (r1, 0x0)
    23dc:	4248      	lsli      	r2, r2, 8
    23de:	68c9      	andn      	r3, r2
    23e0:	3bae      	bseti      	r3, 14
    23e2:	0797      	br      	0x2310	// 2310 <EPT_IO_SET+0x74>
		else if(IO_Num_X==IO_NUM_PB00)
    23e4:	395d      	cmpnei      	r1, 29
    23e6:	0b67      	bt      	0x22b4	// 22b4 <EPT_IO_SET+0x18>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFF0)|0X00000005;				//PB0.0
    23e8:	117a      	lrw      	r3, 0x2000004c	// 24d0 <EPT_IO_SET+0x234>
    23ea:	310f      	movi      	r1, 15
    23ec:	9340      	ld.w      	r2, (r3, 0x0)
    23ee:	9260      	ld.w      	r3, (r2, 0x0)
    23f0:	68c5      	andn      	r3, r1
    23f2:	3ba0      	bseti      	r3, 0
    23f4:	3ba2      	bseti      	r3, 2
    23f6:	075e      	br      	0x22b2	// 22b2 <EPT_IO_SET+0x16>
	else if(EPT_IO_X==EPT_IO_CHCY)
    23f8:	3845      	cmpnei      	r0, 5
    23fa:	0825      	bt      	0x2444	// 2444 <EPT_IO_SET+0x1a8>
		if(IO_Num_X==IO_NUM_PB04)
    23fc:	3959      	cmpnei      	r1, 25
    23fe:	0809      	bt      	0x2410	// 2410 <EPT_IO_SET+0x174>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFF0FFFF)|0X00040000;				//PB0.4
    2400:	1174      	lrw      	r3, 0x2000004c	// 24d0 <EPT_IO_SET+0x234>
    2402:	32f0      	movi      	r2, 240
    2404:	9320      	ld.w      	r1, (r3, 0x0)
    2406:	9160      	ld.w      	r3, (r1, 0x0)
    2408:	424c      	lsli      	r2, r2, 12
    240a:	68c9      	andn      	r3, r2
    240c:	3bb2      	bseti      	r3, 18
    240e:	0781      	br      	0x2310	// 2310 <EPT_IO_SET+0x74>
		else if(IO_Num_X==IO_NUM_PA04)
    2410:	395e      	cmpnei      	r1, 30
    2412:	0803      	bt      	0x2418	// 2418 <EPT_IO_SET+0x17c>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFF0FFFF)|0X00050000;				//PA0.4
    2414:	116e      	lrw      	r3, 0x20000050	// 24cc <EPT_IO_SET+0x230>
    2416:	07b1      	br      	0x2378	// 2378 <EPT_IO_SET+0xdc>
		else if(IO_Num_X==IO_NUM_PA09)
    2418:	395f      	cmpnei      	r1, 31
    241a:	0809      	bt      	0x242c	// 242c <EPT_IO_SET+0x190>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFF0F)|0X00000070;				//PA0.9
    241c:	116c      	lrw      	r3, 0x20000050	// 24cc <EPT_IO_SET+0x230>
    241e:	31f0      	movi      	r1, 240
    2420:	9340      	ld.w      	r2, (r3, 0x0)
    2422:	9261      	ld.w      	r3, (r2, 0x4)
    2424:	68c5      	andn      	r3, r1
    2426:	3170      	movi      	r1, 112
    2428:	6cc4      	or      	r3, r1
    242a:	075a      	br      	0x22de	// 22de <EPT_IO_SET+0x42>
		else if(IO_Num_X==IO_NUM_PA013)
    242c:	3320      	movi      	r3, 32
    242e:	64c6      	cmpne      	r1, r3
    2430:	0b42      	bt      	0x22b4	// 22b4 <EPT_IO_SET+0x18>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)|0X00500000;				//PA0.13
    2432:	1167      	lrw      	r3, 0x20000050	// 24cc <EPT_IO_SET+0x230>
    2434:	32f0      	movi      	r2, 240
    2436:	9320      	ld.w      	r1, (r3, 0x0)
    2438:	9161      	ld.w      	r3, (r1, 0x4)
    243a:	4250      	lsli      	r2, r2, 16
    243c:	68c9      	andn      	r3, r2
    243e:	3bb4      	bseti      	r3, 20
    2440:	3bb6      	bseti      	r3, 22
    2442:	0744      	br      	0x22ca	// 22ca <EPT_IO_SET+0x2e>
	else if(EPT_IO_X==EPT_IO_CHD)
    2444:	3846      	cmpnei      	r0, 6
    2446:	0815      	bt      	0x2470	// 2470 <EPT_IO_SET+0x1d4>
		if(IO_Num_X==IO_NUM_PB03)
    2448:	3953      	cmpnei      	r1, 19
    244a:	080a      	bt      	0x245e	// 245e <EPT_IO_SET+0x1c2>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFF0FFF)|0X00006000;				//PB0.3
    244c:	1161      	lrw      	r3, 0x2000004c	// 24d0 <EPT_IO_SET+0x234>
    244e:	32f0      	movi      	r2, 240
    2450:	9320      	ld.w      	r1, (r3, 0x0)
    2452:	9160      	ld.w      	r3, (r1, 0x0)
    2454:	4248      	lsli      	r2, r2, 8
    2456:	68c9      	andn      	r3, r2
    2458:	3bad      	bseti      	r3, 13
    245a:	3bae      	bseti      	r3, 14
    245c:	075a      	br      	0x2310	// 2310 <EPT_IO_SET+0x74>
		else if(IO_Num_X==IO_NUM_PA08)
    245e:	395b      	cmpnei      	r1, 27
    2460:	0b2a      	bt      	0x22b4	// 22b4 <EPT_IO_SET+0x18>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFF0)|0X00000004;				//PA0.8
    2462:	107b      	lrw      	r3, 0x20000050	// 24cc <EPT_IO_SET+0x230>
    2464:	310f      	movi      	r1, 15
    2466:	9340      	ld.w      	r2, (r3, 0x0)
    2468:	9261      	ld.w      	r3, (r2, 0x4)
    246a:	68c5      	andn      	r3, r1
    246c:	3ba2      	bseti      	r3, 2
    246e:	0738      	br      	0x22de	// 22de <EPT_IO_SET+0x42>
	else if(EPT_IO_X==EPT_IO_EPI)
    2470:	3847      	cmpnei      	r0, 7
    2472:	0b21      	bt      	0x22b4	// 22b4 <EPT_IO_SET+0x18>
		if(IO_Num_X==IO_NUM_PA07)
    2474:	3950      	cmpnei      	r1, 16
    2476:	0809      	bt      	0x2488	// 2488 <EPT_IO_SET+0x1ec>
			GPIOA0->CONLR = (GPIOA0->CONLR&0X0FFFFFFF)|0X50000000;				//PA0.7 EPI0
    2478:	1075      	lrw      	r3, 0x20000050	// 24cc <EPT_IO_SET+0x230>
    247a:	9340      	ld.w      	r2, (r3, 0x0)
    247c:	9260      	ld.w      	r3, (r2, 0x0)
    247e:	4364      	lsli      	r3, r3, 4
    2480:	4b64      	lsri      	r3, r3, 4
    2482:	3bbc      	bseti      	r3, 28
    2484:	3bbe      	bseti      	r3, 30
    2486:	0716      	br      	0x22b2	// 22b2 <EPT_IO_SET+0x16>
		else if(IO_Num_X==IO_NUM_PA013)
    2488:	3320      	movi      	r3, 32
    248a:	64c6      	cmpne      	r1, r3
    248c:	0809      	bt      	0x249e	// 249e <EPT_IO_SET+0x202>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)|0X00400000;				//PA0.13 EPI1
    248e:	1070      	lrw      	r3, 0x20000050	// 24cc <EPT_IO_SET+0x230>
    2490:	32f0      	movi      	r2, 240
    2492:	9320      	ld.w      	r1, (r3, 0x0)
    2494:	9161      	ld.w      	r3, (r1, 0x4)
    2496:	4250      	lsli      	r2, r2, 16
    2498:	68c9      	andn      	r3, r2
    249a:	3bb6      	bseti      	r3, 22
    249c:	0717      	br      	0x22ca	// 22ca <EPT_IO_SET+0x2e>
		else if(IO_Num_X==IO_NUM_PB03)
    249e:	3953      	cmpnei      	r1, 19
    24a0:	080b      	bt      	0x24b6	// 24b6 <EPT_IO_SET+0x21a>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFF0FFF)|0X00007000;				//PB0.3 EPI2
    24a2:	106c      	lrw      	r3, 0x2000004c	// 24d0 <EPT_IO_SET+0x234>
    24a4:	32f0      	movi      	r2, 240
    24a6:	9320      	ld.w      	r1, (r3, 0x0)
    24a8:	4248      	lsli      	r2, r2, 8
    24aa:	9160      	ld.w      	r3, (r1, 0x0)
    24ac:	68c9      	andn      	r3, r2
    24ae:	32e0      	movi      	r2, 224
    24b0:	4247      	lsli      	r2, r2, 7
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFF0FF)|0X00000700;				//PB0.2 EPI3
    24b2:	6cc8      	or      	r3, r2
    24b4:	072e      	br      	0x2310	// 2310 <EPT_IO_SET+0x74>
		else if(IO_Num_X==IO_NUM_PB02)
    24b6:	3956      	cmpnei      	r1, 22
    24b8:	0afe      	bt      	0x22b4	// 22b4 <EPT_IO_SET+0x18>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFF0FF)|0X00000700;				//PB0.2 EPI3
    24ba:	1066      	lrw      	r3, 0x2000004c	// 24d0 <EPT_IO_SET+0x234>
    24bc:	32f0      	movi      	r2, 240
    24be:	9320      	ld.w      	r1, (r3, 0x0)
    24c0:	4244      	lsli      	r2, r2, 4
    24c2:	9160      	ld.w      	r3, (r1, 0x0)
    24c4:	68c9      	andn      	r3, r2
    24c6:	32e0      	movi      	r2, 224
    24c8:	4243      	lsli      	r2, r2, 3
    24ca:	07f4      	br      	0x24b2	// 24b2 <EPT_IO_SET+0x216>
    24cc:	20000050 	.long	0x20000050
    24d0:	2000004c 	.long	0x2000004c

Disassembly of section .text.EPT_PWM_Config:

000024d4 <EPT_PWM_Config>:
//ReturnValue:NONE
/*************************************************************/  
//Fclk=Fpclk/(PSC+1)
void EPT_PWM_Config(EPT_TCLK_Selecte_Type EPT_TCLK_Selecte_X , EPT_CNTMD_SELECTE_Type EPT_CNTMD_SELECTE_X  , EPT_OPM_SELECTE_Type EPT_OPM_SELECTE_X
					, U16_T EPT_PSCR)		
{
    24d4:	14c3      	push      	r4-r6
    24d6:	6d8b      	mov      	r6, r2
	EPT0->CEDR=(EPT0->CEDR&0XFFFFFF00)|(0X01|EPT_TCLK_Selecte_X|(0X01<<1)|(0X00<<6));
    24d8:	104b      	lrw      	r2, 0x20000024	// 2504 <EPT_PWM_Config+0x30>
	if(EPT_TCLK_Selecte_X==EPT_Selecte_PCLK)
    24da:	3840      	cmpnei      	r0, 0
	EPT0->CEDR=(EPT0->CEDR&0XFFFFFF00)|(0X01|EPT_TCLK_Selecte_X|(0X01<<1)|(0X00<<6));
    24dc:	92a0      	ld.w      	r5, (r2, 0x0)
    24de:	9580      	ld.w      	r4, (r5, 0x0)
    24e0:	32ff      	movi      	r2, 255
    24e2:	6909      	andn      	r4, r2
    24e4:	3ca0      	bseti      	r4, 0
    24e6:	3ca1      	bseti      	r4, 1
    24e8:	6d00      	or      	r4, r0
    24ea:	b580      	st.w      	r4, (r5, 0x0)
	if(EPT_TCLK_Selecte_X==EPT_Selecte_PCLK)
    24ec:	0802      	bt      	0x24f0	// 24f0 <EPT_PWM_Config+0x1c>
	{
		EPT0->PSCR=EPT_PSCR;
    24ee:	b562      	st.w      	r3, (r5, 0x8)
	}
	EPT0->CR=(EPT0->CR&0xfff8ffc0)|EPT_CNTMD_SELECTE_X|(0x1<<2)|(0x0<<3)|(0x0<<4)|EPT_OPM_SELECTE_X|(0X0<<16)|(0x1<<18);
    24f0:	9543      	ld.w      	r2, (r5, 0xc)
    24f2:	1066      	lrw      	r3, 0x7003f	// 2508 <EPT_PWM_Config+0x34>
    24f4:	688d      	andn      	r2, r3
    24f6:	6c98      	or      	r2, r6
    24f8:	3aa2      	bseti      	r2, 2
    24fa:	3ab2      	bseti      	r2, 18
    24fc:	6c48      	or      	r1, r2
    24fe:	b523      	st.w      	r1, (r5, 0xc)
} 
    2500:	1483      	pop      	r4-r6
    2502:	0000      	bkpt
    2504:	20000024 	.long	0x20000024
    2508:	0007003f 	.long	0x0007003f

Disassembly of section .text.EPT_DBCR_Config:

0000250c <EPT_DBCR_Config>:
//EPT_OUT_POLARITY_X:EPT_PA_PB_OUT_Direct,EPT_PA_OUT_Reverse,EPT_PB_OUT_Reverse,EPT_PA_PB_OUT_Reverse
//EPT_OUT_SWAP_X:EPT_PAtoCHX_PBtoCHY,EPT_PBtoCHX_PBtoCHY,EPT_PAtoCHX_PAtoCHY,EPT_PBtoCHX_PAtoCHY
//ReturnValue:NONE
/*************************************************************/   
void EPT_DBCR_Config(EPT_CHX_Selecte_Type EPT_CHX_Selecte , EPT_INSEL_Type EPT_INSEL_X , EPT_OUTSEL_Type EPT_OUTSEL_X , EPT_OUT_POLARITY_Type EPT_OUT_POLARITY_X , EPT_OUT_SWAP_Type EPT_OUT_SWAP_X)
{	
    250c:	14c4      	push      	r4-r7
	if(EPT_CHX_Selecte==EPT_CHA_Selecte)
    250e:	3840      	cmpnei      	r0, 0
{	
    2510:	98c4      	ld.w      	r6, (r14, 0x10)
    2512:	1096      	lrw      	r4, 0x20000024	// 2568 <EPT_DBCR_Config+0x5c>
	if(EPT_CHX_Selecte==EPT_CHA_Selecte)
    2514:	0811      	bt      	0x2536	// 2536 <EPT_DBCR_Config+0x2a>
	{
		EPT0->DBCR=(EPT0->DBCR&0XFFFFFF00)|EPT_INSEL_X|EPT_OUTSEL_X|(EPT_OUT_POLARITY_X<<2)|(EPT_OUT_SWAP_X<<6);
    2516:	94a0      	ld.w      	r5, (r4, 0x0)
    2518:	95fa      	ld.w      	r7, (r5, 0x68)
    251a:	30ff      	movi      	r0, 255
    251c:	69c1      	andn      	r7, r0
    251e:	46c6      	lsli      	r6, r6, 6
    2520:	6d9c      	or      	r6, r7
    2522:	6c98      	or      	r2, r6
    2524:	4362      	lsli      	r3, r3, 2
	{
		EPT0->DBCR=(EPT0->DBCR&0XFFFF00FF)|EPT_INSEL_X|EPT_OUTSEL_X|(EPT_OUT_POLARITY_X<<10)|(EPT_OUT_SWAP_X<<14);
	}
	else if(EPT_CHX_Selecte==EPT_CHC_Selecte)
	{
		EPT0->DBCR=(EPT0->DBCR&0XFF00FFFF)|EPT_INSEL_X|EPT_OUTSEL_X|(EPT_OUT_POLARITY_X<<18)|(EPT_OUT_SWAP_X<<22);
    2526:	6cc8      	or      	r3, r2
    2528:	6c4c      	or      	r1, r3
    252a:	b53a      	st.w      	r1, (r5, 0x68)
	}
	EPT0->DBCR|=0x01<<24;
    252c:	9440      	ld.w      	r2, (r4, 0x0)
    252e:	927a      	ld.w      	r3, (r2, 0x68)
    2530:	3bb8      	bseti      	r3, 24
    2532:	b27a      	st.w      	r3, (r2, 0x68)
}
    2534:	1484      	pop      	r4-r7
	else if(EPT_CHX_Selecte==EPT_CHB_Selecte)
    2536:	3841      	cmpnei      	r0, 1
    2538:	080b      	bt      	0x254e	// 254e <EPT_DBCR_Config+0x42>
		EPT0->DBCR=(EPT0->DBCR&0XFFFF00FF)|EPT_INSEL_X|EPT_OUTSEL_X|(EPT_OUT_POLARITY_X<<10)|(EPT_OUT_SWAP_X<<14);
    253a:	94a0      	ld.w      	r5, (r4, 0x0)
    253c:	30ff      	movi      	r0, 255
    253e:	95fa      	ld.w      	r7, (r5, 0x68)
    2540:	4008      	lsli      	r0, r0, 8
    2542:	69c1      	andn      	r7, r0
    2544:	46ce      	lsli      	r6, r6, 14
    2546:	6d9c      	or      	r6, r7
    2548:	6c98      	or      	r2, r6
    254a:	436a      	lsli      	r3, r3, 10
    254c:	07ed      	br      	0x2526	// 2526 <EPT_DBCR_Config+0x1a>
	else if(EPT_CHX_Selecte==EPT_CHC_Selecte)
    254e:	3842      	cmpnei      	r0, 2
    2550:	0bee      	bt      	0x252c	// 252c <EPT_DBCR_Config+0x20>
		EPT0->DBCR=(EPT0->DBCR&0XFF00FFFF)|EPT_INSEL_X|EPT_OUTSEL_X|(EPT_OUT_POLARITY_X<<18)|(EPT_OUT_SWAP_X<<22);
    2552:	94a0      	ld.w      	r5, (r4, 0x0)
    2554:	37ff      	movi      	r7, 255
    2556:	951a      	ld.w      	r0, (r5, 0x68)
    2558:	47f0      	lsli      	r7, r7, 16
    255a:	681d      	andn      	r0, r7
    255c:	46d6      	lsli      	r6, r6, 22
    255e:	6c18      	or      	r0, r6
    2560:	6c80      	or      	r2, r0
    2562:	4372      	lsli      	r3, r3, 18
    2564:	07e1      	br      	0x2526	// 2526 <EPT_DBCR_Config+0x1a>
    2566:	0000      	bkpt
    2568:	20000024 	.long	0x20000024

Disassembly of section .text.EPT_DB_CLK_Config:

0000256c <EPT_DB_CLK_Config>:
//ReturnValue:NONE
/*************************************************************/   
//Fdbclk=Fhclk/(DPSC+1)
void EPT_DB_CLK_Config(U16_T DPSC , U16_T DTR , U16_T DTF)
{
	EPT0->DPSCR=DPSC;
    256c:	1063      	lrw      	r3, 0x20000024	// 2578 <EPT_DB_CLK_Config+0xc>
    256e:	9360      	ld.w      	r3, (r3, 0x0)
    2570:	b31b      	st.w      	r0, (r3, 0x6c)
	EPT0->DBDTR=DTR;
    2572:	b33c      	st.w      	r1, (r3, 0x70)
	EPT0->DBDTF=DTF;
    2574:	b35d      	st.w      	r2, (r3, 0x74)
}
    2576:	783c      	jmp      	r15
    2578:	20000024 	.long	0x20000024

Disassembly of section .text.EPT_PWMX_Output_Control:

0000257c <EPT_PWMX_Output_Control>:
							 EPT_PWM_CAU_Output_Type EPT_PWM_CAU_Event_Output , EPT_PWM_CAD_Output_Type EPT_PWM_CAD_Event_Output ,
							 EPT_PWM_CBU_Output_Type EPT_PWM_CBU_Event_Output , EPT_PWM_CBD_Output_Type EPT_PWM_CBD_Event_Output ,
							 EPT_PWM_T1U_Output_Type EPT_PWM_T1U_Event_Output , EPT_PWM_T1D_Output_Type EPT_PWM_T1D_Event_Output ,
							 EPT_PWM_T2U_Output_Type EPT_PWM_T2U_Event_Output , EPT_PWM_T2D_Output_Type EPT_PWM_T2D_Event_Output 
							 )
{
    257c:	14c4      	push      	r4-r7
    257e:	1425      	subi      	r14, r14, 20
    2580:	9889      	ld.w      	r4, (r14, 0x24)
    2582:	b880      	st.w      	r4, (r14, 0x0)
    2584:	988a      	ld.w      	r4, (r14, 0x28)
    2586:	b881      	st.w      	r4, (r14, 0x4)
    2588:	988b      	ld.w      	r4, (r14, 0x2c)
    258a:	b882      	st.w      	r4, (r14, 0x8)
    258c:	988c      	ld.w      	r4, (r14, 0x30)
    258e:	b883      	st.w      	r4, (r14, 0xc)
	if(EPT_PWMX_Selecte==EPT_PWMA)
    2590:	3840      	cmpnei      	r0, 0
{
    2592:	988d      	ld.w      	r4, (r14, 0x34)
    2594:	b884      	st.w      	r4, (r14, 0x10)
    2596:	98ce      	ld.w      	r6, (r14, 0x38)
    2598:	98ef      	ld.w      	r7, (r14, 0x3c)
    259a:	98b0      	ld.w      	r5, (r14, 0x40)
    259c:	9891      	ld.w      	r4, (r14, 0x44)
	if(EPT_PWMX_Selecte==EPT_PWMA)
    259e:	0816      	bt      	0x25ca	// 25ca <EPT_PWMX_Output_Control+0x4e>
	{
		EPT0->AQCRA=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    25a0:	6d14      	or      	r4, r5
    25a2:	6d1c      	or      	r4, r7
    25a4:	98a4      	ld.w      	r5, (r14, 0x10)
    25a6:	6d18      	or      	r4, r6
    25a8:	6d14      	or      	r4, r5
    25aa:	98a3      	ld.w      	r5, (r14, 0xc)
    25ac:	6d14      	or      	r4, r5
    25ae:	98a2      	ld.w      	r5, (r14, 0x8)
    25b0:	6d14      	or      	r4, r5
    25b2:	98a1      	ld.w      	r5, (r14, 0x4)
    25b4:	6d14      	or      	r4, r5
    25b6:	98a0      	ld.w      	r5, (r14, 0x0)
    25b8:	6d14      	or      	r4, r5
    25ba:	6cd0      	or      	r3, r4
		EPT0->AQCRA=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    25bc:	1105      	lrw      	r0, 0x20000024	// 2650 <EPT_PWMX_Output_Control+0xd4>
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    25be:	6c8c      	or      	r2, r3
		EPT0->AQCRA=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    25c0:	9000      	ld.w      	r0, (r0, 0x0)
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    25c2:	6c48      	or      	r1, r2
		EPT0->AQCRA=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    25c4:	b032      	st.w      	r1, (r0, 0x48)
	{
		EPT0->AQCRD=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
	}
	
}
    25c6:	1405      	addi      	r14, r14, 20
    25c8:	1484      	pop      	r4-r7
	else if(EPT_PWMX_Selecte==EPT_PWMB)
    25ca:	3841      	cmpnei      	r0, 1
    25cc:	0815      	bt      	0x25f6	// 25f6 <EPT_PWMX_Output_Control+0x7a>
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    25ce:	6d14      	or      	r4, r5
    25d0:	6d1c      	or      	r4, r7
    25d2:	98a4      	ld.w      	r5, (r14, 0x10)
    25d4:	6d18      	or      	r4, r6
    25d6:	6d14      	or      	r4, r5
    25d8:	98a3      	ld.w      	r5, (r14, 0xc)
    25da:	6d14      	or      	r4, r5
    25dc:	98a2      	ld.w      	r5, (r14, 0x8)
    25de:	6d14      	or      	r4, r5
    25e0:	98a1      	ld.w      	r5, (r14, 0x4)
    25e2:	6d14      	or      	r4, r5
    25e4:	98a0      	ld.w      	r5, (r14, 0x0)
    25e6:	6d14      	or      	r4, r5
    25e8:	6cd0      	or      	r3, r4
		EPT0->AQCRB=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    25ea:	101a      	lrw      	r0, 0x20000024	// 2650 <EPT_PWMX_Output_Control+0xd4>
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    25ec:	6c8c      	or      	r2, r3
		EPT0->AQCRB=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    25ee:	9000      	ld.w      	r0, (r0, 0x0)
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    25f0:	6c48      	or      	r1, r2
		EPT0->AQCRB=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    25f2:	b033      	st.w      	r1, (r0, 0x4c)
    25f4:	07e9      	br      	0x25c6	// 25c6 <EPT_PWMX_Output_Control+0x4a>
	else if(EPT_PWMX_Selecte==EPT_PWMC)
    25f6:	3842      	cmpnei      	r0, 2
    25f8:	0815      	bt      	0x2622	// 2622 <EPT_PWMX_Output_Control+0xa6>
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    25fa:	6d14      	or      	r4, r5
    25fc:	6d1c      	or      	r4, r7
    25fe:	98a4      	ld.w      	r5, (r14, 0x10)
    2600:	6d18      	or      	r4, r6
    2602:	6d14      	or      	r4, r5
    2604:	98a3      	ld.w      	r5, (r14, 0xc)
    2606:	6d14      	or      	r4, r5
    2608:	98a2      	ld.w      	r5, (r14, 0x8)
    260a:	6d14      	or      	r4, r5
    260c:	98a1      	ld.w      	r5, (r14, 0x4)
    260e:	6d14      	or      	r4, r5
    2610:	98a0      	ld.w      	r5, (r14, 0x0)
    2612:	6d14      	or      	r4, r5
    2614:	6cd0      	or      	r3, r4
		EPT0->AQCRC=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    2616:	100f      	lrw      	r0, 0x20000024	// 2650 <EPT_PWMX_Output_Control+0xd4>
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    2618:	6c8c      	or      	r2, r3
		EPT0->AQCRC=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    261a:	9000      	ld.w      	r0, (r0, 0x0)
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    261c:	6c48      	or      	r1, r2
		EPT0->AQCRC=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    261e:	b034      	st.w      	r1, (r0, 0x50)
    2620:	07d3      	br      	0x25c6	// 25c6 <EPT_PWMX_Output_Control+0x4a>
	else if(EPT_PWMX_Selecte==EPT_PWMD)
    2622:	3843      	cmpnei      	r0, 3
    2624:	0bd1      	bt      	0x25c6	// 25c6 <EPT_PWMX_Output_Control+0x4a>
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    2626:	6d14      	or      	r4, r5
    2628:	6d1c      	or      	r4, r7
    262a:	98a4      	ld.w      	r5, (r14, 0x10)
    262c:	6d18      	or      	r4, r6
    262e:	6d14      	or      	r4, r5
    2630:	98a3      	ld.w      	r5, (r14, 0xc)
    2632:	6d14      	or      	r4, r5
    2634:	98a2      	ld.w      	r5, (r14, 0x8)
    2636:	6d14      	or      	r4, r5
    2638:	98a1      	ld.w      	r5, (r14, 0x4)
    263a:	6d14      	or      	r4, r5
    263c:	98a0      	ld.w      	r5, (r14, 0x0)
    263e:	6d14      	or      	r4, r5
    2640:	6cd0      	or      	r3, r4
		EPT0->AQCRD=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    2642:	1004      	lrw      	r0, 0x20000024	// 2650 <EPT_PWMX_Output_Control+0xd4>
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    2644:	6c8c      	or      	r2, r3
		EPT0->AQCRD=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    2646:	9000      	ld.w      	r0, (r0, 0x0)
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    2648:	6c48      	or      	r1, r2
		EPT0->AQCRD=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    264a:	b035      	st.w      	r1, (r0, 0x54)
}
    264c:	07bd      	br      	0x25c6	// 25c6 <EPT_PWMX_Output_Control+0x4a>
    264e:	0000      	bkpt
    2650:	20000024 	.long	0x20000024

Disassembly of section .text.EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config:

00002654 <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>:
//EPT_CMPB_Value:0~0xff
//EPT_CMPC_Value:0~0xff
//EPT_CMPD_Value:0~0xff
/*************************************************************/ 
void EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(U16_T EPT_PRDR_Value , U16_T EPT_CMPA_Value , U16_T EPT_CMPB_Value , U16_T EPT_CMPC_Value , U16_T EPT_CMPD_Value)
{
    2654:	14c2      	push      	r4-r5
	EPT0->PRDR=EPT_PRDR_Value;
    2656:	1086      	lrw      	r4, 0x20000024	// 266c <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config+0x18>
{
    2658:	d8ae1004 	ld.h      	r5, (r14, 0x8)
	EPT0->PRDR=EPT_PRDR_Value;
    265c:	9480      	ld.w      	r4, (r4, 0x0)
    265e:	b409      	st.w      	r0, (r4, 0x24)
	EPT0->CMPA=EPT_CMPA_Value;
    2660:	b42b      	st.w      	r1, (r4, 0x2c)
	EPT0->CMPB=EPT_CMPB_Value;
    2662:	b44c      	st.w      	r2, (r4, 0x30)
	EPT0->CMPC=EPT_CMPC_Value;
    2664:	b46d      	st.w      	r3, (r4, 0x34)
	EPT0->CMPD=EPT_CMPD_Value;
    2666:	b4ae      	st.w      	r5, (r4, 0x38)
}
    2668:	1482      	pop      	r4-r5
    266a:	0000      	bkpt
    266c:	20000024 	.long	0x20000024

Disassembly of section .text.ADC12_Control:

00002670 <ADC12_Control>:
//ReturnValue:NONE
/*************************************************************/  
  //control:ADC enable/disable ,start/stop,swrst
void ADC12_Control(ADC12_Control_TypeDef ADC12_Control_x )
{
	ADC0->CR |= ADC12_Control_x;							// 
    2670:	1063      	lrw      	r3, 0x20000054	// 267c <ADC12_Control+0xc>
    2672:	9340      	ld.w      	r2, (r3, 0x0)
    2674:	9264      	ld.w      	r3, (r2, 0x10)
    2676:	6c0c      	or      	r0, r3
    2678:	b204      	st.w      	r0, (r2, 0x10)
}
    267a:	783c      	jmp      	r15
    267c:	20000054 	.long	0x20000054

Disassembly of section .text.ADC12_CMD.part.0:

00002680 <ADC12_CMD.part.0>:
//ADC12 ENABLE
//EntryParameter:NewState
//NewState:ENABLE , DISABLE
//ReturnValue:NONE
/*************************************************************/ 
void ADC12_CMD(FunctionalStatus NewState)
    2680:	14d0      	push      	r15
{
	if (NewState != DISABLE)
	{
		ADC12_Control(ADC12_ADCEN);						//ADC12 ENABLE
    2682:	3002      	movi      	r0, 2
    2684:	e3fffff6 	bsr      	0x2670	// 2670 <ADC12_Control>
		while(!(ADC0->SR &ADC12_ADCENS));
    2688:	1065      	lrw      	r3, 0x20000054	// 269c <ADC12_CMD.part.0+0x1c>
    268a:	3280      	movi      	r2, 128
    268c:	9320      	ld.w      	r1, (r3, 0x0)
    268e:	4241      	lsli      	r2, r2, 1
    2690:	9168      	ld.w      	r3, (r1, 0x20)
    2692:	68c8      	and      	r3, r2
    2694:	3b40      	cmpnei      	r3, 0
    2696:	0ffd      	bf      	0x2690	// 2690 <ADC12_CMD.part.0+0x10>
	else
	{
		ADC12_Control(ADC12_ADCDIS);					//ADC12 DISABLE
		while(ADC0->SR&ADC12_ADCENS);
	}
}
    2698:	1490      	pop      	r15
    269a:	0000      	bkpt
    269c:	20000054 	.long	0x20000054

Disassembly of section .text.ADC12_CLK_CMD:

000026a0 <ADC12_CLK_CMD>:
	if (NewState != DISABLE)
    26a0:	3940      	cmpnei      	r1, 0
    26a2:	106a      	lrw      	r3, 0x20000054	// 26c8 <ADC12_CLK_CMD+0x28>
		ADC0->ECR  |= ADC_CLK_CMD;						//ENABLE
    26a4:	9340      	ld.w      	r2, (r3, 0x0)
	if (NewState != DISABLE)
    26a6:	0c09      	bf      	0x26b8	// 26b8 <ADC12_CLK_CMD+0x18>
		ADC0->ECR  |= ADC_CLK_CMD;						//ENABLE
    26a8:	9260      	ld.w      	r3, (r2, 0x0)
    26aa:	6cc0      	or      	r3, r0
    26ac:	b260      	st.w      	r3, (r2, 0x0)
		while(!(ADC0->PMSR&ADC_CLK_CMD));
    26ae:	9262      	ld.w      	r3, (r2, 0x8)
    26b0:	68c0      	and      	r3, r0
    26b2:	3b40      	cmpnei      	r3, 0
    26b4:	0ffd      	bf      	0x26ae	// 26ae <ADC12_CLK_CMD+0xe>
}
    26b6:	783c      	jmp      	r15
		ADC0->DCR  |= ADC_CLK_CMD;						//DISABLE
    26b8:	9261      	ld.w      	r3, (r2, 0x4)
    26ba:	6cc0      	or      	r3, r0
    26bc:	b261      	st.w      	r3, (r2, 0x4)
		while(ADC0->PMSR&ADC_CLK_CMD);
    26be:	9262      	ld.w      	r3, (r2, 0x8)
    26c0:	68c0      	and      	r3, r0
    26c2:	3b40      	cmpnei      	r3, 0
    26c4:	0bfd      	bt      	0x26be	// 26be <ADC12_CLK_CMD+0x1e>
    26c6:	07f8      	br      	0x26b6	// 26b6 <ADC12_CLK_CMD+0x16>
    26c8:	20000054 	.long	0x20000054

Disassembly of section .text.ADC12_Software_Reset:

000026cc <ADC12_Software_Reset>:
{
    26cc:	14d0      	push      	r15
	ADC12_Control(ADC12_SWRST);
    26ce:	3001      	movi      	r0, 1
    26d0:	e3ffffd0 	bsr      	0x2670	// 2670 <ADC12_Control>
}
    26d4:	1490      	pop      	r15

Disassembly of section .text.ADC12_CMD:

000026d8 <ADC12_CMD>:
{
    26d8:	14d0      	push      	r15
	if (NewState != DISABLE)
    26da:	3840      	cmpnei      	r0, 0
    26dc:	0c04      	bf      	0x26e4	// 26e4 <ADC12_CMD+0xc>
    26de:	e3ffffd1 	bsr      	0x2680	// 2680 <ADC12_CMD.part.0>
}
    26e2:	1490      	pop      	r15
		ADC12_Control(ADC12_ADCDIS);					//ADC12 DISABLE
    26e4:	3004      	movi      	r0, 4
    26e6:	e3ffffc5 	bsr      	0x2670	// 2670 <ADC12_Control>
		while(ADC0->SR&ADC12_ADCENS);
    26ea:	1065      	lrw      	r3, 0x20000054	// 26fc <ADC12_CMD+0x24>
    26ec:	3280      	movi      	r2, 128
    26ee:	9320      	ld.w      	r1, (r3, 0x0)
    26f0:	4241      	lsli      	r2, r2, 1
    26f2:	9168      	ld.w      	r3, (r1, 0x20)
    26f4:	68c8      	and      	r3, r2
    26f6:	3b40      	cmpnei      	r3, 0
    26f8:	0bfd      	bt      	0x26f2	// 26f2 <ADC12_CMD+0x1a>
    26fa:	07f4      	br      	0x26e2	// 26e2 <ADC12_CMD+0xa>
    26fc:	20000054 	.long	0x20000054

Disassembly of section .text.ADC12_ready_wait:

00002700 <ADC12_ready_wait>:
//EntryParameter:NONE
//ReturnValue:ADC12 READ FLAG
/*************************************************************/ 
void ADC12_ready_wait(void)  
{
	while(!(ADC0->SR&ADC12_READY));   					// Waiting for ADC0 Ready
    2700:	1064      	lrw      	r3, 0x20000054	// 2710 <ADC12_ready_wait+0x10>
    2702:	3202      	movi      	r2, 2
    2704:	9320      	ld.w      	r1, (r3, 0x0)
    2706:	9168      	ld.w      	r3, (r1, 0x20)
    2708:	68c8      	and      	r3, r2
    270a:	3b40      	cmpnei      	r3, 0
    270c:	0ffd      	bf      	0x2706	// 2706 <ADC12_ready_wait+0x6>
}
    270e:	783c      	jmp      	r15
    2710:	20000054 	.long	0x20000054

Disassembly of section .text.ADC12_Configure_Mode:

00002714 <ADC12_Configure_Mode>:
  //10BIT or 12BIT adc ;
  //ADC12_BIT_SELECTED:ADC12_12BIT/ADC12_10BIT;
  //ADC12_ConverMode:One_shot_mode/Continuous_mode;
  //adc date output=last number of Conversions;
void  ADC12_Configure_Mode(ADC12_10bitor12bit_TypeDef ADC12_BIT_SELECTED  , ADC12_ConverMode_TypeDef  ADC12_ConverMode  , U8_T ADC12_PRI, U8_T adc12_SHR , U8_T ADC12_DIV , U8_T NumConver ) 
{
    2714:	14d4      	push      	r4-r7, r15
    2716:	1422      	subi      	r14, r14, 8
    2718:	1c08      	addi      	r4, r14, 32
    271a:	84a0      	ld.b      	r5, (r4, 0x0)
	ADC0->MR=ADC12_DIV|((NumConver-1)<<10);
    271c:	2d00      	subi      	r5, 1
{
    271e:	6dc3      	mov      	r7, r0
	ADC0->MR=ADC12_DIV|((NumConver-1)<<10);
    2720:	10db      	lrw      	r6, 0x20000054	// 278c <ADC12_Configure_Mode+0x78>
{
    2722:	d80e001c 	ld.b      	r0, (r14, 0x1c)
	ADC0->MR=ADC12_DIV|((NumConver-1)<<10);
    2726:	45aa      	lsli      	r5, r5, 10
    2728:	9680      	ld.w      	r4, (r6, 0x0)
    272a:	6d40      	or      	r5, r0
	if(ADC12_ConverMode==One_shot_mode)
    272c:	3940      	cmpnei      	r1, 0
	ADC0->MR=ADC12_DIV|((NumConver-1)<<10);
    272e:	b4a5      	st.w      	r5, (r4, 0x14)
	if(ADC12_ConverMode==One_shot_mode)
    2730:	081c      	bt      	0x2768	// 2768 <ADC12_Configure_Mode+0x54>
	{
		ADC0->MR&=~CONTCV;								//one short mode
    2732:	9425      	ld.w      	r1, (r4, 0x14)
    2734:	4121      	lsli      	r1, r1, 1
    2736:	4921      	lsri      	r1, r1, 1
		while(ADC0->SR&ADC12_CTCVS);							
    2738:	3080      	movi      	r0, 128
		ADC0->MR&=~CONTCV;								//one short mode
    273a:	b425      	st.w      	r1, (r4, 0x14)
		while(ADC0->SR&ADC12_CTCVS);							
    273c:	4002      	lsli      	r0, r0, 2
    273e:	9428      	ld.w      	r1, (r4, 0x20)
    2740:	6840      	and      	r1, r0
    2742:	3940      	cmpnei      	r1, 0
    2744:	0bfd      	bt      	0x273e	// 273e <ADC12_Configure_Mode+0x2a>
    2746:	b861      	st.w      	r3, (r14, 0x4)
    2748:	b840      	st.w      	r2, (r14, 0x0)
    274a:	e3ffff9b 	bsr      	0x2680	// 2680 <ADC12_CMD.part.0>
	{
		ADC0->MR|=CONTCV;								//Continuous mode
		while(!(ADC0->SR&ADC12_CTCVS));							
	}
	ADC12_CMD(ENABLE);									//ADC0 enable
	if(ADC12_BIT_SELECTED)
    274e:	3f40      	cmpnei      	r7, 0
    2750:	9840      	ld.w      	r2, (r14, 0x0)
    2752:	9861      	ld.w      	r3, (r14, 0x4)
    2754:	0c16      	bf      	0x2780	// 2780 <ADC12_Configure_Mode+0x6c>
	{
		ADC0->CR|=ADC12_10BITor12BIT;
    2756:	9600      	ld.w      	r0, (r6, 0x0)
    2758:	9024      	ld.w      	r1, (r0, 0x10)
    275a:	39bf      	bseti      	r1, 31
	}
	else
	{
		ADC0->CR&=~ADC12_10BITor12BIT;
    275c:	b024      	st.w      	r1, (r0, 0x10)
	}
	//ADC0->CR|=ADC12_VREF_VDD | ADC12_FVR_DIS;
	ADC0->PRI=ADC12_PRI;
    275e:	9620      	ld.w      	r1, (r6, 0x0)
    2760:	b15c      	st.w      	r2, (r1, 0x70)
	ADC0->SHR=adc12_SHR;								//adc Sampling & Holding cycles
    2762:	b166      	st.w      	r3, (r1, 0x18)
} 
    2764:	1402      	addi      	r14, r14, 8
    2766:	1494      	pop      	r4-r7, r15
	else if(ADC12_ConverMode==Continuous_mode)
    2768:	3941      	cmpnei      	r1, 1
    276a:	0bee      	bt      	0x2746	// 2746 <ADC12_Configure_Mode+0x32>
		ADC0->MR|=CONTCV;								//Continuous mode
    276c:	9425      	ld.w      	r1, (r4, 0x14)
    276e:	39bf      	bseti      	r1, 31
		while(!(ADC0->SR&ADC12_CTCVS));							
    2770:	3080      	movi      	r0, 128
		ADC0->MR|=CONTCV;								//Continuous mode
    2772:	b425      	st.w      	r1, (r4, 0x14)
		while(!(ADC0->SR&ADC12_CTCVS));							
    2774:	4002      	lsli      	r0, r0, 2
    2776:	9428      	ld.w      	r1, (r4, 0x20)
    2778:	6840      	and      	r1, r0
    277a:	3940      	cmpnei      	r1, 0
    277c:	0ffd      	bf      	0x2776	// 2776 <ADC12_Configure_Mode+0x62>
    277e:	07e4      	br      	0x2746	// 2746 <ADC12_Configure_Mode+0x32>
		ADC0->CR&=~ADC12_10BITor12BIT;
    2780:	9600      	ld.w      	r0, (r6, 0x0)
    2782:	9024      	ld.w      	r1, (r0, 0x10)
    2784:	4121      	lsli      	r1, r1, 1
    2786:	4921      	lsri      	r1, r1, 1
    2788:	07ea      	br      	0x275c	// 275c <ADC12_Configure_Mode+0x48>
    278a:	0000      	bkpt
    278c:	20000054 	.long	0x20000054

Disassembly of section .text.ADC12_Configure_VREF_Selecte:

00002790 <ADC12_Configure_VREF_Selecte>:
//EntryParameter:NONE
//ReturnValue:None
/*************************************************************/ 
void ADC12_Configure_VREF_Selecte(ADC12_VREFP_VREFN_Selected_TypeDef ADC12_VREFP_X_VREFN_X )
{
	if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_VDD_VREFN_VSS)
    2790:	3840      	cmpnei      	r0, 0
    2792:	0808      	bt      	0x27a2	// 27a2 <ADC12_Configure_VREF_Selecte+0x12>
	{
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x00<<6);
    2794:	127c      	lrw      	r3, 0x20000054	// 2904 <ADC12_Configure_VREF_Selecte+0x174>
    2796:	123d      	lrw      	r1, 0x103c0	// 2908 <ADC12_Configure_VREF_Selecte+0x178>
    2798:	9340      	ld.w      	r2, (r3, 0x0)
    279a:	9264      	ld.w      	r3, (r2, 0x10)
    279c:	68c5      	andn      	r3, r1
		ADC0->CR=(ADC0->CR&0xfcfefc3f)|(0x0B<<6)|(0X01<<24)|(0X01<<25);	
	}
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_INTVREF1000_VREFN_EXIT)
	{
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;					
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x0C<<6)|(0X00<<16)|(0X02<<17);	
    279e:	b264      	st.w      	r3, (r2, 0x10)
	}
}
    27a0:	783c      	jmp      	r15
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_EXIT_VREFN_VSS)
    27a2:	3841      	cmpnei      	r0, 1
    27a4:	0810      	bt      	0x27c4	// 27c4 <ADC12_Configure_VREF_Selecte+0x34>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;							
    27a6:	127a      	lrw      	r3, 0x20000050	// 290c <ADC12_Configure_VREF_Selecte+0x17c>
    27a8:	32f0      	movi      	r2, 240
    27aa:	9320      	ld.w      	r1, (r3, 0x0)
    27ac:	9160      	ld.w      	r3, (r1, 0x0)
    27ae:	4244      	lsli      	r2, r2, 4
    27b0:	68c9      	andn      	r3, r2
    27b2:	3bab      	bseti      	r3, 11
    27b4:	b160      	st.w      	r3, (r1, 0x0)
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x01<<6);
    27b6:	1235      	lrw      	r1, 0x103c0	// 2908 <ADC12_Configure_VREF_Selecte+0x178>
    27b8:	1273      	lrw      	r3, 0x20000054	// 2904 <ADC12_Configure_VREF_Selecte+0x174>
    27ba:	9340      	ld.w      	r2, (r3, 0x0)
    27bc:	9264      	ld.w      	r3, (r2, 0x10)
    27be:	68c5      	andn      	r3, r1
    27c0:	3ba6      	bseti      	r3, 6
    27c2:	07ee      	br      	0x279e	// 279e <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_FVR2048_VREFN_VSS)
    27c4:	3842      	cmpnei      	r0, 2
    27c6:	0811      	bt      	0x27e8	// 27e8 <ADC12_Configure_VREF_Selecte+0x58>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;							
    27c8:	1271      	lrw      	r3, 0x20000050	// 290c <ADC12_Configure_VREF_Selecte+0x17c>
    27ca:	32f0      	movi      	r2, 240
    27cc:	9320      	ld.w      	r1, (r3, 0x0)
    27ce:	9160      	ld.w      	r3, (r1, 0x0)
    27d0:	4244      	lsli      	r2, r2, 4
    27d2:	68c9      	andn      	r3, r2
    27d4:	3bab      	bseti      	r3, 11
    27d6:	b160      	st.w      	r3, (r1, 0x0)
		ADC0->CR=(ADC0->CR&0xfcfefc3f)|(0x02<<6)|(0X01<<24)|(0X00<<25);
    27d8:	122e      	lrw      	r1, 0x30103c0	// 2910 <ADC12_Configure_VREF_Selecte+0x180>
    27da:	126b      	lrw      	r3, 0x20000054	// 2904 <ADC12_Configure_VREF_Selecte+0x174>
    27dc:	9340      	ld.w      	r2, (r3, 0x0)
    27de:	9264      	ld.w      	r3, (r2, 0x10)
    27e0:	68c5      	andn      	r3, r1
    27e2:	3ba7      	bseti      	r3, 7
    27e4:	3bb8      	bseti      	r3, 24
    27e6:	07dc      	br      	0x279e	// 279e <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_FVR4096_VREFN_VSS)
    27e8:	3843      	cmpnei      	r0, 3
    27ea:	0811      	bt      	0x280c	// 280c <ADC12_Configure_VREF_Selecte+0x7c>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;							
    27ec:	1268      	lrw      	r3, 0x20000050	// 290c <ADC12_Configure_VREF_Selecte+0x17c>
    27ee:	32f0      	movi      	r2, 240
    27f0:	9320      	ld.w      	r1, (r3, 0x0)
    27f2:	9160      	ld.w      	r3, (r1, 0x0)
    27f4:	4244      	lsli      	r2, r2, 4
    27f6:	68c9      	andn      	r3, r2
    27f8:	3bab      	bseti      	r3, 11
    27fa:	b160      	st.w      	r3, (r1, 0x0)
		ADC0->CR=(ADC0->CR&0xfcfefc3f)|(0x03<<6)|(0X01<<24)|(0X01<<25);
    27fc:	1225      	lrw      	r1, 0x30103c0	// 2910 <ADC12_Configure_VREF_Selecte+0x180>
    27fe:	1262      	lrw      	r3, 0x20000054	// 2904 <ADC12_Configure_VREF_Selecte+0x174>
    2800:	9340      	ld.w      	r2, (r3, 0x0)
    2802:	9264      	ld.w      	r3, (r2, 0x10)
    2804:	68c5      	andn      	r3, r1
    2806:	1224      	lrw      	r1, 0x30000c0	// 2914 <ADC12_Configure_VREF_Selecte+0x184>
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x0C<<6)|(0X00<<16)|(0X02<<17);	
    2808:	6cc4      	or      	r3, r1
    280a:	07ca      	br      	0x279e	// 279e <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_INTVREF1000_VREFN_VSS)
    280c:	3845      	cmpnei      	r0, 5
    280e:	0809      	bt      	0x2820	// 2820 <ADC12_Configure_VREF_Selecte+0x90>
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x04<<6)|(0X00<<16)|(0X02<<17);
    2810:	117d      	lrw      	r3, 0x20000054	// 2904 <ADC12_Configure_VREF_Selecte+0x174>
    2812:	1222      	lrw      	r1, 0x503c0	// 2918 <ADC12_Configure_VREF_Selecte+0x188>
    2814:	9340      	ld.w      	r2, (r3, 0x0)
    2816:	9264      	ld.w      	r3, (r2, 0x10)
    2818:	68c5      	andn      	r3, r1
    281a:	3ba8      	bseti      	r3, 8
    281c:	3bb2      	bseti      	r3, 18
    281e:	07c0      	br      	0x279e	// 279e <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_VDD_VREFN_EXIT)
    2820:	3846      	cmpnei      	r0, 6
    2822:	0812      	bt      	0x2846	// 2846 <ADC12_Configure_VREF_Selecte+0xb6>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;	
    2824:	117a      	lrw      	r3, 0x20000050	// 290c <ADC12_Configure_VREF_Selecte+0x17c>
    2826:	32f0      	movi      	r2, 240
    2828:	9320      	ld.w      	r1, (r3, 0x0)
    282a:	9160      	ld.w      	r3, (r1, 0x0)
    282c:	4248      	lsli      	r2, r2, 8
    282e:	68c9      	andn      	r3, r2
    2830:	32b0      	movi      	r2, 176
    2832:	4248      	lsli      	r2, r2, 8
    2834:	6cc8      	or      	r3, r2
    2836:	b160      	st.w      	r3, (r1, 0x0)
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x08<<6);
    2838:	1134      	lrw      	r1, 0x103c0	// 2908 <ADC12_Configure_VREF_Selecte+0x178>
    283a:	1173      	lrw      	r3, 0x20000054	// 2904 <ADC12_Configure_VREF_Selecte+0x174>
    283c:	9340      	ld.w      	r2, (r3, 0x0)
    283e:	9264      	ld.w      	r3, (r2, 0x10)
    2840:	68c5      	andn      	r3, r1
    2842:	3ba9      	bseti      	r3, 9
    2844:	07ad      	br      	0x279e	// 279e <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_EXIT_VREFN_EXIT)
    2846:	3847      	cmpnei      	r0, 7
    2848:	0819      	bt      	0x287a	// 287a <ADC12_Configure_VREF_Selecte+0xea>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;
    284a:	1171      	lrw      	r3, 0x20000050	// 290c <ADC12_Configure_VREF_Selecte+0x17c>
    284c:	31f0      	movi      	r1, 240
    284e:	9340      	ld.w      	r2, (r3, 0x0)
    2850:	9260      	ld.w      	r3, (r2, 0x0)
    2852:	4128      	lsli      	r1, r1, 8
    2854:	68c5      	andn      	r3, r1
    2856:	31b0      	movi      	r1, 176
    2858:	4128      	lsli      	r1, r1, 8
    285a:	6cc4      	or      	r3, r1
    285c:	b260      	st.w      	r3, (r2, 0x0)
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;			
    285e:	31f0      	movi      	r1, 240
    2860:	9260      	ld.w      	r3, (r2, 0x0)
    2862:	4124      	lsli      	r1, r1, 4
    2864:	68c5      	andn      	r3, r1
    2866:	3bab      	bseti      	r3, 11
    2868:	b260      	st.w      	r3, (r2, 0x0)
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x09<<6);
    286a:	1128      	lrw      	r1, 0x103c0	// 2908 <ADC12_Configure_VREF_Selecte+0x178>
    286c:	1166      	lrw      	r3, 0x20000054	// 2904 <ADC12_Configure_VREF_Selecte+0x174>
    286e:	9340      	ld.w      	r2, (r3, 0x0)
    2870:	9264      	ld.w      	r3, (r2, 0x10)
    2872:	68c5      	andn      	r3, r1
    2874:	3ba6      	bseti      	r3, 6
    2876:	3ba9      	bseti      	r3, 9
    2878:	0793      	br      	0x279e	// 279e <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_FVR2048_VREFN_EXIT)
    287a:	3848      	cmpnei      	r0, 8
    287c:	0818      	bt      	0x28ac	// 28ac <ADC12_Configure_VREF_Selecte+0x11c>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;	
    287e:	1164      	lrw      	r3, 0x20000050	// 290c <ADC12_Configure_VREF_Selecte+0x17c>
    2880:	31f0      	movi      	r1, 240
    2882:	9340      	ld.w      	r2, (r3, 0x0)
    2884:	9260      	ld.w      	r3, (r2, 0x0)
    2886:	4128      	lsli      	r1, r1, 8
    2888:	68c5      	andn      	r3, r1
    288a:	31b0      	movi      	r1, 176
    288c:	4128      	lsli      	r1, r1, 8
    288e:	6cc4      	or      	r3, r1
    2890:	b260      	st.w      	r3, (r2, 0x0)
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;
    2892:	31f0      	movi      	r1, 240
    2894:	9260      	ld.w      	r3, (r2, 0x0)
    2896:	4124      	lsli      	r1, r1, 4
    2898:	68c5      	andn      	r3, r1
    289a:	3bab      	bseti      	r3, 11
    289c:	b260      	st.w      	r3, (r2, 0x0)
		ADC0->CR=(ADC0->CR&0xfcfefc3f)|(0x0A<<6)|(0X01<<24)|(0X00<<25);			
    289e:	103d      	lrw      	r1, 0x30103c0	// 2910 <ADC12_Configure_VREF_Selecte+0x180>
    28a0:	1079      	lrw      	r3, 0x20000054	// 2904 <ADC12_Configure_VREF_Selecte+0x174>
    28a2:	9340      	ld.w      	r2, (r3, 0x0)
    28a4:	9264      	ld.w      	r3, (r2, 0x10)
    28a6:	68c5      	andn      	r3, r1
    28a8:	103d      	lrw      	r1, 0x1000280	// 291c <ADC12_Configure_VREF_Selecte+0x18c>
    28aa:	07af      	br      	0x2808	// 2808 <ADC12_Configure_VREF_Selecte+0x78>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_FVR4096_VREFN_EXIT)
    28ac:	3849      	cmpnei      	r0, 9
    28ae:	0818      	bt      	0x28de	// 28de <ADC12_Configure_VREF_Selecte+0x14e>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;	
    28b0:	1077      	lrw      	r3, 0x20000050	// 290c <ADC12_Configure_VREF_Selecte+0x17c>
    28b2:	31f0      	movi      	r1, 240
    28b4:	9340      	ld.w      	r2, (r3, 0x0)
    28b6:	9260      	ld.w      	r3, (r2, 0x0)
    28b8:	4128      	lsli      	r1, r1, 8
    28ba:	68c5      	andn      	r3, r1
    28bc:	31b0      	movi      	r1, 176
    28be:	4128      	lsli      	r1, r1, 8
    28c0:	6cc4      	or      	r3, r1
    28c2:	b260      	st.w      	r3, (r2, 0x0)
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;
    28c4:	31f0      	movi      	r1, 240
    28c6:	9260      	ld.w      	r3, (r2, 0x0)
    28c8:	4124      	lsli      	r1, r1, 4
    28ca:	68c5      	andn      	r3, r1
    28cc:	3bab      	bseti      	r3, 11
    28ce:	b260      	st.w      	r3, (r2, 0x0)
		ADC0->CR=(ADC0->CR&0xfcfefc3f)|(0x0B<<6)|(0X01<<24)|(0X01<<25);	
    28d0:	1030      	lrw      	r1, 0x30103c0	// 2910 <ADC12_Configure_VREF_Selecte+0x180>
    28d2:	106d      	lrw      	r3, 0x20000054	// 2904 <ADC12_Configure_VREF_Selecte+0x174>
    28d4:	9340      	ld.w      	r2, (r3, 0x0)
    28d6:	9264      	ld.w      	r3, (r2, 0x10)
    28d8:	68c5      	andn      	r3, r1
    28da:	1032      	lrw      	r1, 0x30002c0	// 2920 <ADC12_Configure_VREF_Selecte+0x190>
    28dc:	0796      	br      	0x2808	// 2808 <ADC12_Configure_VREF_Selecte+0x78>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_INTVREF1000_VREFN_EXIT)
    28de:	384b      	cmpnei      	r0, 11
    28e0:	0b60      	bt      	0x27a0	// 27a0 <ADC12_Configure_VREF_Selecte+0x10>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;					
    28e2:	106b      	lrw      	r3, 0x20000050	// 290c <ADC12_Configure_VREF_Selecte+0x17c>
    28e4:	32f0      	movi      	r2, 240
    28e6:	9320      	ld.w      	r1, (r3, 0x0)
    28e8:	9160      	ld.w      	r3, (r1, 0x0)
    28ea:	4248      	lsli      	r2, r2, 8
    28ec:	68c9      	andn      	r3, r2
    28ee:	32b0      	movi      	r2, 176
    28f0:	4248      	lsli      	r2, r2, 8
    28f2:	6cc8      	or      	r3, r2
    28f4:	b160      	st.w      	r3, (r1, 0x0)
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x0C<<6)|(0X00<<16)|(0X02<<17);	
    28f6:	1029      	lrw      	r1, 0x503c0	// 2918 <ADC12_Configure_VREF_Selecte+0x188>
    28f8:	1063      	lrw      	r3, 0x20000054	// 2904 <ADC12_Configure_VREF_Selecte+0x174>
    28fa:	9340      	ld.w      	r2, (r3, 0x0)
    28fc:	9264      	ld.w      	r3, (r2, 0x10)
    28fe:	68c5      	andn      	r3, r1
    2900:	1029      	lrw      	r1, 0x40300	// 2924 <ADC12_Configure_VREF_Selecte+0x194>
    2902:	0783      	br      	0x2808	// 2808 <ADC12_Configure_VREF_Selecte+0x78>
    2904:	20000054 	.long	0x20000054
    2908:	000103c0 	.long	0x000103c0
    290c:	20000050 	.long	0x20000050
    2910:	030103c0 	.long	0x030103c0
    2914:	030000c0 	.long	0x030000c0
    2918:	000503c0 	.long	0x000503c0
    291c:	01000280 	.long	0x01000280
    2920:	030002c0 	.long	0x030002c0
    2924:	00040300 	.long	0x00040300

Disassembly of section .text.ADC12_ConversionChannel_Config:

00002928 <ADC12_ConversionChannel_Config>:
//ADC12_ADCINX:ADC12_ADCIN0~ADC12_ADCIN17,ADC12_INTVREF,ADC12_DIV4_VDD,ADC12_VSS
//ReturnValue:NONE
/*************************************************************/ 
void ADC12_ConversionChannel_Config(ADC12_InputSet_TypeDef ADC12_ADCINX ,
						ADC12_CV_RepeatNum_TypeDef CV_RepeatTime, ADC12_Control_TypeDef AVG_Set, U8_T SEQx)
{
    2928:	14d4      	push      	r4-r7, r15
    292a:	1421      	subi      	r14, r14, 4
    292c:	b840      	st.w      	r2, (r14, 0x0)
    292e:	6d43      	mov      	r5, r0
	U8_T i;
	for(i=0;i<15;i++)
	{
		ADC0->SEQ[i] &=~(0x01<<7);
    2930:	125b      	lrw      	r2, 0x20000054	// 2a9c <ADC12_ConversionChannel_Config+0x174>
    2932:	92c0      	ld.w      	r6, (r2, 0x0)
    2934:	3200      	movi      	r2, 0
    2936:	4202      	lsli      	r0, r2, 2
    2938:	6018      	addu      	r0, r6
    293a:	908c      	ld.w      	r4, (r0, 0x30)
    293c:	2200      	addi      	r2, 1
    293e:	3c87      	bclri      	r4, 7
	for(i=0;i<15;i++)
    2940:	3a4f      	cmpnei      	r2, 15
		ADC0->SEQ[i] &=~(0x01<<7);
    2942:	b08c      	st.w      	r4, (r0, 0x30)
	for(i=0;i<15;i++)
    2944:	0bf9      	bt      	0x2936	// 2936 <ADC12_ConversionChannel_Config+0xe>
	}
	switch(ADC12_ADCINX)
    2946:	3d0f      	cmphsi      	r5, 16
    2948:	0825      	bt      	0x2992	// 2992 <ADC12_ConversionChannel_Config+0x6a>
    294a:	6c17      	mov      	r0, r5
    294c:	1255      	lrw      	r2, 0x20000050	// 2aa0 <ADC12_ConversionChannel_Config+0x178>
    294e:	1296      	lrw      	r4, 0x2000004c	// 2aa4 <ADC12_ConversionChannel_Config+0x17c>
    2950:	e3fff1d6 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    2954:	322c1408 	.long	0x322c1408
    2958:	4d474039 	.long	0x4d474039
    295c:	756d6559 	.long	0x756d6559
    2960:	9990877e 	.long	0x9990877e
	{
		case 0:	
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC0 PB0.1
    2964:	9240      	ld.w      	r2, (r2, 0x0)
    2966:	9200      	ld.w      	r0, (r2, 0x0)
    2968:	b200      	st.w      	r0, (r2, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
    296a:	9201      	ld.w      	r0, (r2, 0x4)
    296c:	b201      	st.w      	r0, (r2, 0x4)
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFF0F)  | 0x00000010;			
    296e:	9400      	ld.w      	r0, (r4, 0x0)
    2970:	9040      	ld.w      	r2, (r0, 0x0)
    2972:	34f0      	movi      	r4, 240
    2974:	6891      	andn      	r2, r4
    2976:	3aa4      	bseti      	r2, 4
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFFF)  | 0x00000000;		
			break;
		case 15:
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC15 PB0.0
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFF0)  | 0x00000001;		
    2978:	b040      	st.w      	r2, (r0, 0x0)
			break;
    297a:	040c      	br      	0x2992	// 2992 <ADC12_ConversionChannel_Config+0x6a>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFF0)  | 0x00000001;							//ADC1 PA0.0
    297c:	9200      	ld.w      	r0, (r2, 0x0)
    297e:	9040      	ld.w      	r2, (r0, 0x0)
    2980:	370f      	movi      	r7, 15
    2982:	689d      	andn      	r2, r7
    2984:	3aa0      	bseti      	r2, 0
			GPIOA0->CONLR = (GPIOA0->CONLR&0X0FFFFFFF)  | 0x10000000;							//ADC6 PA0.7
    2986:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
    2988:	9041      	ld.w      	r2, (r0, 0x4)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)  | 0x00100000;	
    298a:	b041      	st.w      	r2, (r0, 0x4)
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFFF)  | 0x00000000;		
    298c:	9440      	ld.w      	r2, (r4, 0x0)
    298e:	9200      	ld.w      	r0, (r2, 0x0)
    2990:	b200      	st.w      	r0, (r2, 0x0)
    2992:	4362      	lsli      	r3, r3, 2
    2994:	618c      	addu      	r6, r3
		//case 27: break;
		case 0x1Cul: break;
		case 0x1Dul: break;
		case 0x1Eul: break;
	}
	ADC0->SEQ[SEQx] = ADC0->SEQ[SEQx] & 0;
    2996:	966c      	ld.w      	r3, (r6, 0x30)
    2998:	3300      	movi      	r3, 0
    299a:	b66c      	st.w      	r3, (r6, 0x30)
	ADC0->SEQ[SEQx] = ADC0->SEQ[SEQx] | ADC12_ADCINX  | CV_RepeatTime | AVG_Set;
    299c:	9860      	ld.w      	r3, (r14, 0x0)
    299e:	6c4c      	or      	r1, r3
    29a0:	964c      	ld.w      	r2, (r6, 0x30)
    29a2:	6d44      	or      	r5, r1
    29a4:	6d48      	or      	r5, r2
    29a6:	b6ac      	st.w      	r5, (r6, 0x30)
}
    29a8:	1401      	addi      	r14, r14, 4
    29aa:	1494      	pop      	r4-r7, r15
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFF0F)  | 0x00000010;							//ADC2 PA0.1
    29ac:	9200      	ld.w      	r0, (r2, 0x0)
    29ae:	9040      	ld.w      	r2, (r0, 0x0)
    29b0:	37f0      	movi      	r7, 240
    29b2:	689d      	andn      	r2, r7
    29b4:	3aa4      	bseti      	r2, 4
    29b6:	07e8      	br      	0x2986	// 2986 <ADC12_ConversionChannel_Config+0x5e>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x00001000;							//ADC3 PA0.3
    29b8:	9200      	ld.w      	r0, (r2, 0x0)
    29ba:	37f0      	movi      	r7, 240
    29bc:	9040      	ld.w      	r2, (r0, 0x0)
    29be:	47e8      	lsli      	r7, r7, 8
    29c0:	689d      	andn      	r2, r7
    29c2:	3aac      	bseti      	r2, 12
    29c4:	07e1      	br      	0x2986	// 2986 <ADC12_ConversionChannel_Config+0x5e>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFF0FFFFF)  | 0x00100000;							//ADC4 PA0.5
    29c6:	9200      	ld.w      	r0, (r2, 0x0)
    29c8:	37f0      	movi      	r7, 240
    29ca:	9040      	ld.w      	r2, (r0, 0x0)
    29cc:	47f0      	lsli      	r7, r7, 16
    29ce:	689d      	andn      	r2, r7
    29d0:	3ab4      	bseti      	r2, 20
    29d2:	07da      	br      	0x2986	// 2986 <ADC12_ConversionChannel_Config+0x5e>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XF0FFFFFF)  | 0x01000000;							//ADC5 PA0.6
    29d4:	9200      	ld.w      	r0, (r2, 0x0)
    29d6:	37f0      	movi      	r7, 240
    29d8:	9040      	ld.w      	r2, (r0, 0x0)
    29da:	47f4      	lsli      	r7, r7, 20
    29dc:	689d      	andn      	r2, r7
    29de:	3ab8      	bseti      	r2, 24
    29e0:	07d3      	br      	0x2986	// 2986 <ADC12_ConversionChannel_Config+0x5e>
			GPIOA0->CONLR = (GPIOA0->CONLR&0X0FFFFFFF)  | 0x10000000;							//ADC6 PA0.7
    29e2:	9200      	ld.w      	r0, (r2, 0x0)
    29e4:	9040      	ld.w      	r2, (r0, 0x0)
    29e6:	4244      	lsli      	r2, r2, 4
    29e8:	4a44      	lsri      	r2, r2, 4
    29ea:	3abc      	bseti      	r2, 28
    29ec:	07cd      	br      	0x2986	// 2986 <ADC12_ConversionChannel_Config+0x5e>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC7 PB0.2
    29ee:	9240      	ld.w      	r2, (r2, 0x0)
    29f0:	9200      	ld.w      	r0, (r2, 0x0)
    29f2:	b200      	st.w      	r0, (r2, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
    29f4:	9201      	ld.w      	r0, (r2, 0x4)
    29f6:	b201      	st.w      	r0, (r2, 0x4)
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFF0FF)  | 0x00000100;
    29f8:	9400      	ld.w      	r0, (r4, 0x0)
    29fa:	34f0      	movi      	r4, 240
    29fc:	9040      	ld.w      	r2, (r0, 0x0)
    29fe:	4484      	lsli      	r4, r4, 4
    2a00:	6891      	andn      	r2, r4
    2a02:	3aa8      	bseti      	r2, 8
    2a04:	07ba      	br      	0x2978	// 2978 <ADC12_ConversionChannel_Config+0x50>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC8 PB0.3
    2a06:	9240      	ld.w      	r2, (r2, 0x0)
    2a08:	9200      	ld.w      	r0, (r2, 0x0)
    2a0a:	b200      	st.w      	r0, (r2, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
    2a0c:	9201      	ld.w      	r0, (r2, 0x4)
    2a0e:	b201      	st.w      	r0, (r2, 0x4)
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFF0FFF)  | 0x00001000;
    2a10:	9400      	ld.w      	r0, (r4, 0x0)
    2a12:	34f0      	movi      	r4, 240
    2a14:	9040      	ld.w      	r2, (r0, 0x0)
    2a16:	4488      	lsli      	r4, r4, 8
    2a18:	6891      	andn      	r2, r4
    2a1a:	3aac      	bseti      	r2, 12
    2a1c:	07ae      	br      	0x2978	// 2978 <ADC12_ConversionChannel_Config+0x50>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC9 PA0.8
    2a1e:	9200      	ld.w      	r0, (r2, 0x0)
    2a20:	9040      	ld.w      	r2, (r0, 0x0)
    2a22:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFF0)  | 0x00000001;	
    2a24:	9041      	ld.w      	r2, (r0, 0x4)
    2a26:	370f      	movi      	r7, 15
    2a28:	689d      	andn      	r2, r7
    2a2a:	3aa0      	bseti      	r2, 0
    2a2c:	07af      	br      	0x298a	// 298a <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC10 PA0.9
    2a2e:	9200      	ld.w      	r0, (r2, 0x0)
    2a30:	9040      	ld.w      	r2, (r0, 0x0)
    2a32:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFF0F)  | 0x00000010;	
    2a34:	9041      	ld.w      	r2, (r0, 0x4)
    2a36:	37f0      	movi      	r7, 240
    2a38:	689d      	andn      	r2, r7
    2a3a:	3aa4      	bseti      	r2, 4
    2a3c:	07a7      	br      	0x298a	// 298a <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC11 PA0.10
    2a3e:	9200      	ld.w      	r0, (r2, 0x0)
    2a40:	9040      	ld.w      	r2, (r0, 0x0)
    2a42:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFF0FF)  | 0x00000100;	
    2a44:	37f0      	movi      	r7, 240
    2a46:	9041      	ld.w      	r2, (r0, 0x4)
    2a48:	47e4      	lsli      	r7, r7, 4
    2a4a:	689d      	andn      	r2, r7
    2a4c:	3aa8      	bseti      	r2, 8
    2a4e:	079e      	br      	0x298a	// 298a <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC12 PA0.11
    2a50:	9200      	ld.w      	r0, (r2, 0x0)
    2a52:	9040      	ld.w      	r2, (r0, 0x0)
    2a54:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFF0FFF)  | 0x00001000;	
    2a56:	37f0      	movi      	r7, 240
    2a58:	9041      	ld.w      	r2, (r0, 0x4)
    2a5a:	47e8      	lsli      	r7, r7, 8
    2a5c:	689d      	andn      	r2, r7
    2a5e:	3aac      	bseti      	r2, 12
    2a60:	0795      	br      	0x298a	// 298a <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC13 PA0.12
    2a62:	9200      	ld.w      	r0, (r2, 0x0)
    2a64:	9040      	ld.w      	r2, (r0, 0x0)
    2a66:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFF0FFFF)  | 0x00010000;	
    2a68:	37f0      	movi      	r7, 240
    2a6a:	9041      	ld.w      	r2, (r0, 0x4)
    2a6c:	47ec      	lsli      	r7, r7, 12
    2a6e:	689d      	andn      	r2, r7
    2a70:	3ab0      	bseti      	r2, 16
    2a72:	078c      	br      	0x298a	// 298a <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC14 PA0.13	
    2a74:	9200      	ld.w      	r0, (r2, 0x0)
    2a76:	9040      	ld.w      	r2, (r0, 0x0)
    2a78:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)  | 0x00100000;	
    2a7a:	37f0      	movi      	r7, 240
    2a7c:	9041      	ld.w      	r2, (r0, 0x4)
    2a7e:	47f0      	lsli      	r7, r7, 16
    2a80:	689d      	andn      	r2, r7
    2a82:	3ab4      	bseti      	r2, 20
    2a84:	0783      	br      	0x298a	// 298a <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC15 PB0.0
    2a86:	9240      	ld.w      	r2, (r2, 0x0)
    2a88:	9200      	ld.w      	r0, (r2, 0x0)
    2a8a:	b200      	st.w      	r0, (r2, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
    2a8c:	9201      	ld.w      	r0, (r2, 0x4)
    2a8e:	b201      	st.w      	r0, (r2, 0x4)
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFF0)  | 0x00000001;		
    2a90:	9400      	ld.w      	r0, (r4, 0x0)
    2a92:	9040      	ld.w      	r2, (r0, 0x0)
    2a94:	340f      	movi      	r4, 15
    2a96:	6891      	andn      	r2, r4
    2a98:	3aa0      	bseti      	r2, 0
    2a9a:	076f      	br      	0x2978	// 2978 <ADC12_ConversionChannel_Config+0x50>
    2a9c:	20000054 	.long	0x20000054
    2aa0:	20000050 	.long	0x20000050
    2aa4:	2000004c 	.long	0x2000004c

Disassembly of section .text.delay_nms:

00002aa8 <delay_nms>:
//software delay
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/	
void delay_nms(unsigned int t)
{
    2aa8:	14d0      	push      	r15
    2aaa:	1423      	subi      	r14, r14, 12
    volatile unsigned int i,j ,k=0;
    j = 50* t;
    2aac:	3232      	movi      	r2, 50
    volatile unsigned int i,j ,k=0;
    2aae:	3300      	movi      	r3, 0
    j = 50* t;
    2ab0:	7c08      	mult      	r0, r2
    volatile unsigned int i,j ,k=0;
    2ab2:	b862      	st.w      	r3, (r14, 0x8)
    j = 50* t;
    2ab4:	b801      	st.w      	r0, (r14, 0x4)
    for ( i = 0; i < j; i++ )
    2ab6:	b860      	st.w      	r3, (r14, 0x0)
    2ab8:	9840      	ld.w      	r2, (r14, 0x0)
    2aba:	9861      	ld.w      	r3, (r14, 0x4)
    2abc:	64c8      	cmphs      	r2, r3
    2abe:	0c03      	bf      	0x2ac4	// 2ac4 <delay_nms+0x1c>
    {
        k++;
		SYSCON_IWDCNT_Reload(); 
    }
}
    2ac0:	1403      	addi      	r14, r14, 12
    2ac2:	1490      	pop      	r15
        k++;
    2ac4:	9862      	ld.w      	r3, (r14, 0x8)
    2ac6:	2300      	addi      	r3, 1
    2ac8:	b862      	st.w      	r3, (r14, 0x8)
		SYSCON_IWDCNT_Reload(); 
    2aca:	e3fff9df 	bsr      	0x1e88	// 1e88 <SYSCON_IWDCNT_Reload>
    for ( i = 0; i < j; i++ )
    2ace:	9860      	ld.w      	r3, (r14, 0x0)
    2ad0:	2300      	addi      	r3, 1
    2ad2:	07f2      	br      	0x2ab6	// 2ab6 <delay_nms+0xe>

Disassembly of section .text.EPT0_CONFIG:

00002ad4 <EPT0_CONFIG>:
//ETP0 Functions
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/ 
void EPT0_CONFIG(void)
{
    2ad4:	14d3      	push      	r4-r6, r15
    2ad6:	1429      	subi      	r14, r14, 36
	EPT_Software_Prg();								//EPT software reset
    2ad8:	e3fffbbe 	bsr      	0x2254	// 2254 <EPT_Software_Prg>
//------------  EPT GPIO Setting  --------------------------------/
	EPT_IO_SET(EPT_IO_CHAX, IO_NUM_PA15);			// AX channel selection中转站
    2adc:	3112      	movi      	r1, 18
    2ade:	3000      	movi      	r0, 0
    2ae0:	e3fffbde 	bsr      	0x229c	// 229c <EPT_IO_SET>
	//EPT_IO_SET(EPT_IO_CHAY,IO_NUM_PB03);			//AY channel selection
	EPT_IO_SET(EPT_IO_CHBX,IO_NUM_PA14);			//BX channel selection
    2ae4:	3118      	movi      	r1, 24
    2ae6:	3002      	movi      	r0, 2
    2ae8:	e3fffbda 	bsr      	0x229c	// 229c <EPT_IO_SET>
	//EPT_IO_SET(EPT_IO_CHBY,IO_NUM_PB04);			//BY channel selection
	EPT_IO_SET(EPT_IO_CHCX,IO_NUM_PB05);			//CX channel selection
    2aec:	3114      	movi      	r1, 20
    2aee:	3004      	movi      	r0, 4
	//EPT_IO_SET(EPT_IO_CHD,IO_NUM_PA08);			//D channel selection
//------------  EPT Control  --------------------------------/
	EPT_PWM_Config(EPT_Selecte_PCLK,EPT_CNTMD_increase,EPT_OPM_Continue,0);//PCLK as clock，increasing mode,continuous mode,TCLK=PCLK/(0+1) 
	//EPT_Tevent_Selecte(0x00,0x00);				//T1 source selection SYNCIN4,T2 source selectionSYNCIN5
	//EPT_SYNCR_Config(EPT_Triggle_Continue,EPT_SYNCUSR0_REARMTrig_DIS,EPT_TRGSRC0_ExtSync_SYNCUSR0,EPT_TRGSRC1_ExtSync_SYNCUSR4,0x30);//enable SYNCUSR4 SYNCUSR5 as trigger event,continuous mode
	EPT_PWMX_Output_Control(EPT_PWMA,EPT_CA_Selecte_CMPA,EPT_CB_Selecte_CMPA,EPT_PWM_ZRO_Event_OutHigh,EPT_PWM_PRD_Event_Nochange,EPT_PWM_CAU_Event_OutLow,EPT_PWM_CAD_Event_OutLow,
    2af0:	3400      	movi      	r4, 0
	EPT_IO_SET(EPT_IO_CHCX,IO_NUM_PB05);			//CX channel selection
    2af2:	e3fffbd5 	bsr      	0x229c	// 229c <EPT_IO_SET>
	EPT_PWMX_Output_Control(EPT_PWMA,EPT_CA_Selecte_CMPA,EPT_CB_Selecte_CMPA,EPT_PWM_ZRO_Event_OutHigh,EPT_PWM_PRD_Event_Nochange,EPT_PWM_CAU_Event_OutLow,EPT_PWM_CAD_Event_OutLow,
    2af6:	3640      	movi      	r6, 64
    2af8:	3510      	movi      	r5, 16
	EPT_PWM_Config(EPT_Selecte_PCLK,EPT_CNTMD_increase,EPT_OPM_Continue,0);//PCLK as clock，increasing mode,continuous mode,TCLK=PCLK/(0+1) 
    2afa:	3300      	movi      	r3, 0
    2afc:	3200      	movi      	r2, 0
    2afe:	3100      	movi      	r1, 0
    2b00:	3000      	movi      	r0, 0
    2b02:	e3fffce9 	bsr      	0x24d4	// 24d4 <EPT_PWM_Config>
	EPT_PWMX_Output_Control(EPT_PWMA,EPT_CA_Selecte_CMPA,EPT_CB_Selecte_CMPA,EPT_PWM_ZRO_Event_OutHigh,EPT_PWM_PRD_Event_Nochange,EPT_PWM_CAU_Event_OutLow,EPT_PWM_CAD_Event_OutLow,
    2b06:	b888      	st.w      	r4, (r14, 0x20)
    2b08:	b887      	st.w      	r4, (r14, 0x1c)
    2b0a:	b886      	st.w      	r4, (r14, 0x18)
    2b0c:	b885      	st.w      	r4, (r14, 0x14)
    2b0e:	b884      	st.w      	r4, (r14, 0x10)
    2b10:	b883      	st.w      	r4, (r14, 0xc)
    2b12:	b8c2      	st.w      	r6, (r14, 0x8)
    2b14:	b8a1      	st.w      	r5, (r14, 0x4)
    2b16:	b880      	st.w      	r4, (r14, 0x0)
    2b18:	3302      	movi      	r3, 2
    2b1a:	3200      	movi      	r2, 0
    2b1c:	3100      	movi      	r1, 0
    2b1e:	3000      	movi      	r0, 0
    2b20:	e3fffd2e 	bsr      	0x257c	// 257c <EPT_PWMX_Output_Control>
							EPT_PWM_CBU_Event_Nochange,EPT_PWM_CBD_Event_Nochange,EPT_PWM_T1U_Event_Nochange,EPT_PWM_T1D_Event_Nochange,EPT_PWM_T2U_Event_Nochange,EPT_PWM_T2D_Event_Nochange);
	EPT_PWMX_Output_Control(EPT_PWMB,EPT_CA_Selecte_CMPB,EPT_CB_Selecte_CMPB,EPT_PWM_ZRO_Event_OutHigh,EPT_PWM_PRD_Event_Nochange,EPT_PWM_CAU_Event_OutLow,EPT_PWM_CAD_Event_OutLow,
    2b24:	3280      	movi      	r2, 128
    2b26:	3180      	movi      	r1, 128
    2b28:	424f      	lsli      	r2, r2, 15
    2b2a:	412d      	lsli      	r1, r1, 13
    2b2c:	b888      	st.w      	r4, (r14, 0x20)
    2b2e:	b887      	st.w      	r4, (r14, 0x1c)
    2b30:	b886      	st.w      	r4, (r14, 0x18)
    2b32:	b885      	st.w      	r4, (r14, 0x14)
    2b34:	b884      	st.w      	r4, (r14, 0x10)
    2b36:	b883      	st.w      	r4, (r14, 0xc)
    2b38:	b8c2      	st.w      	r6, (r14, 0x8)
    2b3a:	b8a1      	st.w      	r5, (r14, 0x4)
    2b3c:	b880      	st.w      	r4, (r14, 0x0)
    2b3e:	3302      	movi      	r3, 2
    2b40:	3001      	movi      	r0, 1
    2b42:	e3fffd1d 	bsr      	0x257c	// 257c <EPT_PWMX_Output_Control>
							EPT_PWM_CBU_Event_Nochange,EPT_PWM_CBD_Event_Nochange,EPT_PWM_T1U_Event_Nochange,EPT_PWM_T1D_Event_Nochange,EPT_PWM_T2U_Event_Nochange,EPT_PWM_T2D_Event_Nochange);						
	EPT_PWMX_Output_Control(EPT_PWMC,EPT_CA_Selecte_CMPC,EPT_CB_Selecte_CMPC,EPT_PWM_ZRO_Event_OutHigh,EPT_PWM_PRD_Event_Nochange,EPT_PWM_CAU_Event_OutLow,EPT_PWM_CAD_Event_OutLow,
    2b46:	3280      	movi      	r2, 128
    2b48:	3180      	movi      	r1, 128
    2b4a:	4250      	lsli      	r2, r2, 16
    2b4c:	412e      	lsli      	r1, r1, 14
    2b4e:	b888      	st.w      	r4, (r14, 0x20)
    2b50:	b887      	st.w      	r4, (r14, 0x1c)
    2b52:	b886      	st.w      	r4, (r14, 0x18)
    2b54:	b885      	st.w      	r4, (r14, 0x14)
    2b56:	b884      	st.w      	r4, (r14, 0x10)
    2b58:	b883      	st.w      	r4, (r14, 0xc)
    2b5a:	b8c2      	st.w      	r6, (r14, 0x8)
    2b5c:	b8a1      	st.w      	r5, (r14, 0x4)
    2b5e:	b880      	st.w      	r4, (r14, 0x0)
    2b60:	3302      	movi      	r3, 2
    2b62:	3002      	movi      	r0, 2
    2b64:	e3fffd0c 	bsr      	0x257c	// 257c <EPT_PWMX_Output_Control>
							EPT_PWM_CBU_Event_Nochange,EPT_PWM_CBD_Event_Nochange,EPT_PWM_T1U_Event_Nochange,EPT_PWM_T1D_Event_Nochange,EPT_PWM_T2U_Event_Nochange,EPT_PWM_T2D_Event_Nochange);	
	//EPT_PWMX_Output_Control(EPT_PWMD,EPT_CA_Selecte_CMPD,EPT_CB_Selecte_CMPD,EPT_PWM_ZRO_Event_OutHigh,EPT_PWM_PRD_Event_Nochange,EPT_PWM_CAU_Event_OutLow,EPT_PWM_CAD_Event_OutLow,
	//						EPT_PWM_CBU_Event_Nochange,EPT_PWM_CBD_Event_Nochange,EPT_PWM_T1U_Event_Nochange,EPT_PWM_T1D_Event_Nochange,EPT_PWM_T2U_Event_Nochange,EPT_PWM_T2D_Event_Nochange);		
	EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800,0,0,0,0);//PRDR=2400,CMPA=1200,CMPB=600,CMPC=2400,CMPD=0	
    2b68:	3096      	movi      	r0, 150
    2b6a:	3300      	movi      	r3, 0
    2b6c:	b880      	st.w      	r4, (r14, 0x0)
    2b6e:	3200      	movi      	r2, 0
    2b70:	3100      	movi      	r1, 0
    2b72:	4005      	lsli      	r0, r0, 5
    2b74:	e3fffd70 	bsr      	0x2654	// 2654 <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>
	EPT_DB_CLK_Config(0,24,24);//Fdbclk=Fhclk/(0+1)，DTR=24clk，DTF=24clk
    2b78:	3218      	movi      	r2, 24
    2b7a:	3118      	movi      	r1, 24
    2b7c:	3000      	movi      	r0, 0
    2b7e:	e3fffcf7 	bsr      	0x256c	// 256c <EPT_DB_CLK_Config>
	EPT_DBCR_Config(EPT_CHA_Selecte,EPT_CHAINSEL_PWMA_RISE_FALL,EPT_CHA_OUTSEL_EnRise_EnFall,EPT_PB_OUT_Reverse,EPT_PAtoCHX_PBtoCHY);//PWMA Complementary,CHX rising edge,CHY falling edge		
    2b82:	b880      	st.w      	r4, (r14, 0x0)
    2b84:	3302      	movi      	r3, 2
    2b86:	3203      	movi      	r2, 3
    2b88:	3100      	movi      	r1, 0
    2b8a:	3000      	movi      	r0, 0
    2b8c:	e3fffcc0 	bsr      	0x250c	// 250c <EPT_DBCR_Config>
	EPT_DBCR_Config(EPT_CHB_Selecte,EPT_CHBINSEL_PWMB_RISE_FALL,EPT_CHB_OUTSEL_EnRise_EnFall,EPT_PB_OUT_Reverse,EPT_PAtoCHX_PBtoCHY);//PWMB Complementary,CHX rising edge,CHY falling edge		
    2b90:	32c0      	movi      	r2, 192
    2b92:	b880      	st.w      	r4, (r14, 0x0)
    2b94:	3302      	movi      	r3, 2
    2b96:	4242      	lsli      	r2, r2, 2
    2b98:	3100      	movi      	r1, 0
    2b9a:	3001      	movi      	r0, 1
    2b9c:	e3fffcb8 	bsr      	0x250c	// 250c <EPT_DBCR_Config>
	EPT_DBCR_Config(EPT_CHC_Selecte,EPT_CHCINSEL_PWMC_RISE_FALL,EPT_CHC_OUTSEL_EnRise_EnFall,EPT_PB_OUT_Reverse,EPT_PAtoCHX_PBtoCHY);//PWMC Complementary,CHX rising edge,CHY falling edge
    2ba0:	32c0      	movi      	r2, 192
    2ba2:	424a      	lsli      	r2, r2, 10
    2ba4:	3302      	movi      	r3, 2
    2ba6:	3100      	movi      	r1, 0
    2ba8:	3002      	movi      	r0, 2
    2baa:	b880      	st.w      	r4, (r14, 0x0)
    2bac:	e3fffcb0 	bsr      	0x250c	// 250c <EPT_DBCR_Config>
	//EPT_Int_Enable(EPT_CDU);//Up-Counting phase CNT = CMPD interrupt request raw status
	//EPT_Int_Enable(EPT_CDD);//Down-Counting phase CNT = CMPD interrupt request raw status
	//EPT_Int_Enable(EPT_PEND);//End of cycle interrupt request raw status
	//EPT_Vector_Int_Enable();
//------------  EPT start  --------------------------------/	
	EPT_Start();
    2bb0:	e3fffb62 	bsr      	0x2274	// 2274 <EPT_Start>
	EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(0XFFFF,0,0,0,0);
	EPT_Int_Enable(EPT_CAP_LD0);//Capture Load to CMPA interrupt request raw status
	EPT_Int_Enable(EPT_CAP_LD1);//Capture Load to CMPB interrupt request raw status
	EPT_Vector_Int_Enable();
	EPT_Start();*/
}
    2bb4:	1409      	addi      	r14, r14, 36
    2bb6:	1493      	pop      	r4-r6, r15

Disassembly of section .text.BT_CONFIG:

00002bb8 <BT_CONFIG>:
//BT Initial
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/	
void BT_CONFIG(void)
{
    2bb8:	14d2      	push      	r4-r5, r15
    2bba:	1424      	subi      	r14, r14, 16
	BT_DeInit(BT0); //过零检测
    2bbc:	11a4      	lrw      	r5, 0x20000010	// 2c4c <BT_CONFIG+0x94>
	// BT_IO_Init(BT0_PA15);
	BT_Configure(BT0,BTCLK_EN,47,BT_IMMEDIATE,BT_CONTINUOUS,BT_PCLKDIV);//TCLK=PCLK/(0+1)
    2bbe:	3400      	movi      	r4, 0
	BT_DeInit(BT0); //过零检测
    2bc0:	9500      	ld.w      	r0, (r5, 0x0)
    2bc2:	e3fffa75 	bsr      	0x20ac	// 20ac <BT_DeInit>
	BT_Configure(BT0,BTCLK_EN,47,BT_IMMEDIATE,BT_CONTINUOUS,BT_PCLKDIV);//TCLK=PCLK/(0+1)
    2bc6:	b881      	st.w      	r4, (r14, 0x4)
    2bc8:	b880      	st.w      	r4, (r14, 0x0)
    2bca:	9500      	ld.w      	r0, (r5, 0x0)
    2bcc:	3308      	movi      	r3, 8
    2bce:	322f      	movi      	r2, 47
    2bd0:	3101      	movi      	r1, 1
    2bd2:	e3fffa7f 	bsr      	0x20d0	// 20d0 <BT_Configure>
	BT_ControlSet_Configure(BT0,BT_START_HIGH,BT_IDLE_LOW,BT_SYNC_DIS,BT_SYNCMD_DIS,BT_OSTMDX_ONCE,BT_AREARM_DIS,BT_CNTRLD_EN);
    2bd6:	3380      	movi      	r3, 128
    2bd8:	4363      	lsli      	r3, r3, 3
    2bda:	b861      	st.w      	r3, (r14, 0x4)
    2bdc:	b883      	st.w      	r4, (r14, 0xc)
    2bde:	b882      	st.w      	r4, (r14, 0x8)
    2be0:	b880      	st.w      	r4, (r14, 0x0)
    2be2:	3300      	movi      	r3, 0
    2be4:	9500      	ld.w      	r0, (r5, 0x0)
    2be6:	3200      	movi      	r2, 0
    2be8:	3180      	movi      	r1, 128
    2bea:	e3fffa7f 	bsr      	0x20e8	// 20e8 <BT_ControlSet_Configure>
	//BT_ControlSet_Configure(BT0,BT_START_HIGH,BT_IDLE_LOW,BT_SYNC_EN,BT_SYNCMD_DIS,BT_OSTMDX_ONCE,BT_AREARM_DIS,BT_CNTRLD_EN);
	//BT_Trigger_Configure(BT0,BT_TRGSRC_PEND,BT_TRGOE_EN);
	BT_Period_CMP_Write(BT0,100,500);
    2bee:	32fa      	movi      	r2, 250
    2bf0:	4241      	lsli      	r2, r2, 1
    2bf2:	3164      	movi      	r1, 100
    2bf4:	9500      	ld.w      	r0, (r5, 0x0)
    2bf6:	e3fffa8f 	bsr      	0x2114	// 2114 <BT_Period_CMP_Write>
	BT_Start(BT0);
    2bfa:	9500      	ld.w      	r0, (r5, 0x0)
    2bfc:	e3fffa66 	bsr      	0x20c8	// 20c8 <BT_Start>
	BT_ConfigInterrupt_CMD(BT0,ENABLE,BT_PEND);
    2c00:	9500      	ld.w      	r0, (r5, 0x0)
    2c02:	3201      	movi      	r2, 1
    2c04:	3101      	movi      	r1, 1
    2c06:	e3fffa8a 	bsr      	0x211a	// 211a <BT_ConfigInterrupt_CMD>
	BT0_INT_ENABLE();

	BT_DeInit(BT1); // 任务调用
    2c0a:	10b2      	lrw      	r5, 0x2000000c	// 2c50 <BT_CONFIG+0x98>
	BT0_INT_ENABLE();
    2c0c:	e3fffa90 	bsr      	0x212c	// 212c <BT0_INT_ENABLE>
	BT_DeInit(BT1); // 任务调用
    2c10:	9500      	ld.w      	r0, (r5, 0x0)
    2c12:	e3fffa4d 	bsr      	0x20ac	// 20ac <BT_DeInit>
	// BT_IO_Init(BT1_PA08);
	BT_Configure(BT1,BTCLK_EN,47,BT_IMMEDIATE,BT_CONTINUOUS,BT_PCLKDIV);
    2c16:	b881      	st.w      	r4, (r14, 0x4)
    2c18:	b880      	st.w      	r4, (r14, 0x0)
    2c1a:	3308      	movi      	r3, 8
    2c1c:	9500      	ld.w      	r0, (r5, 0x0)
    2c1e:	322f      	movi      	r2, 47
    2c20:	3101      	movi      	r1, 1
    2c22:	e3fffa57 	bsr      	0x20d0	// 20d0 <BT_Configure>
	// BT_ControlSet_Configure(BT1,BT_START_LOW,BT_IDLE_HIGH,BT_SYNC_DIS,BT_SYNCMD_DIS,BT_OSTMDX_ONCE,BT_AREARM_DIS,BT_CNTRLD_EN);
	// BT_Trigger_Configure(BT1,BT_TRGSRC_PEND,BT_TRGOE_EN);
	BT_Period_CMP_Write(BT1,1000,500);
    2c26:	32fa      	movi      	r2, 250
    2c28:	31fa      	movi      	r1, 250
    2c2a:	4241      	lsli      	r2, r2, 1
    2c2c:	4122      	lsli      	r1, r1, 2
    2c2e:	9500      	ld.w      	r0, (r5, 0x0)
    2c30:	e3fffa72 	bsr      	0x2114	// 2114 <BT_Period_CMP_Write>
	BT_Start(BT1);
    2c34:	9500      	ld.w      	r0, (r5, 0x0)
    2c36:	e3fffa49 	bsr      	0x20c8	// 20c8 <BT_Start>
	BT_ConfigInterrupt_CMD(BT1,ENABLE,BT_PEND);
    2c3a:	9500      	ld.w      	r0, (r5, 0x0)
    2c3c:	3201      	movi      	r2, 1
    2c3e:	3101      	movi      	r1, 1
    2c40:	e3fffa6d 	bsr      	0x211a	// 211a <BT_ConfigInterrupt_CMD>
	BT1_INT_ENABLE();
    2c44:	e3fffa7c 	bsr      	0x213c	// 213c <BT1_INT_ENABLE>
}
    2c48:	1404      	addi      	r14, r14, 16
    2c4a:	1492      	pop      	r4-r5, r15
    2c4c:	20000010 	.long	0x20000010
    2c50:	2000000c 	.long	0x2000000c

Disassembly of section .text.UART0_CONFIG:

00002c54 <UART0_CONFIG>:
//UART0  CONFIG
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/	
void UART0_CONFIG(void)
{
    2c54:	14d0      	push      	r15
	UART0_DeInit();                                               //clear all UART Register
    2c56:	e3fffa7b 	bsr      	0x214c	// 214c <UART0_DeInit>
    UART_IO_Init(IO_UART0,1);                                     //use PA0.1->RXD0, PA0.0->TXD0
    2c5a:	3101      	movi      	r1, 1
    2c5c:	3000      	movi      	r0, 0
    2c5e:	e3fffa83 	bsr      	0x2164	// 2164 <UART_IO_Init>
	UARTInit(UART0,48,UART_PAR_NONE);							  //baudrate=sysclock 48M/416=115200
    2c62:	1064      	lrw      	r3, 0x20000044	// 2c70 <UART0_CONFIG+0x1c>
    2c64:	3200      	movi      	r2, 0
    2c66:	9300      	ld.w      	r0, (r3, 0x0)
    2c68:	3130      	movi      	r1, 48
    2c6a:	e3fffae9 	bsr      	0x223c	// 223c <UARTInit>
    //UARTInitRxTxIntEn(UART0,416,UART_PAR_NONE);				  //baudrate=sysclock 48M/416=115200,tx rx int enabled 
	//UART0_Int_Enable();
}	
    2c6e:	1490      	pop      	r15
    2c70:	20000044 	.long	0x20000044

Disassembly of section .text.SYSCON_CONFIG:

00002c74 <SYSCON_CONFIG>:
//syscon Functions
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SYSCON_CONFIG(void)
{
    2c74:	14d0      	push      	r15
    2c76:	1421      	subi      	r14, r14, 4
//------SYSTEM CLK AND PCLK FUNTION---------------------------/
	SYSCON_RST_VALUE();                                                         //SYSCON all register clr
    2c78:	e3fff84e 	bsr      	0x1d14	// 1d14 <SYSCON_RST_VALUE>
	SYSCON_General_CMD(ENABLE,ENDIS_ISOSC);										//SYSCON enable/disable clock source
    2c7c:	3101      	movi      	r1, 1
    2c7e:	3001      	movi      	r0, 1
    2c80:	e3fff876 	bsr      	0x1d6c	// 1d6c <SYSCON_General_CMD>
	//EMOSC_OSTR_Config(0XAD,0X1f,EM_LFSEL_EN,EM_FLEN_EN,EM_FLSEL_10ns);		//EM_CNT=0X3FF,0xAD(36K),EM_GM=0,Low F modedisable,EM filter disable,if enable,cont set 5ns
	//SYSCON_General_CMD(ENABLE,ENDIS_EMOSC);
	SYSCON_HFOSC_SELECTE(HFOSC_SELECTE_48M);									//HFOSC selected 48MHz
    2c84:	3000      	movi      	r0, 0
    2c86:	e3fff8cf 	bsr      	0x1e24	// 1e24 <SYSCON_HFOSC_SELECTE>
	SystemCLK_HCLKDIV_PCLKDIV_Config(SYSCLK_HFOSC,HCLK_DIV_1,PCLK_DIV_1,HFOSC_48M);//system clock set, Hclk div ,Pclk div  set system clock=SystemCLK/Hclk div/Pclk div
    2c8a:	3180      	movi      	r1, 128
    2c8c:	3308      	movi      	r3, 8
    2c8e:	3200      	movi      	r2, 0
    2c90:	4121      	lsli      	r1, r1, 1
    2c92:	3002      	movi      	r0, 2
    2c94:	e3fff884 	bsr      	0x1d9c	// 1d9c <SystemCLK_HCLKDIV_PCLKDIV_Config>
//------------  WDT FUNTION  --------------------------------/
    SYSCON_IWDCNT_Config(IWDT_TIME_4S,IWDT_INTW_DIV_7);      					//WDT TIME 1s,WDT alarm interrupt time=1s-1s*1/8=0.875S
    2c98:	30c0      	movi      	r0, 192
    2c9a:	3118      	movi      	r1, 24
    2c9c:	4003      	lsli      	r0, r0, 3
    2c9e:	e3fff8ff 	bsr      	0x1e9c	// 1e9c <SYSCON_IWDCNT_Config>
    SYSCON_WDT_CMD(ENABLE);                                                  	//enable/disable WDT		
    2ca2:	3001      	movi      	r0, 1
    2ca4:	e3fff8d4 	bsr      	0x1e4c	// 1e4c <SYSCON_WDT_CMD>
    SYSCON_IWDCNT_Reload();                                                   	//reload WDT
    2ca8:	e3fff8f0 	bsr      	0x1e88	// 1e88 <SYSCON_IWDCNT_Reload>
	IWDT_Int_Enable();
    2cac:	e3fff922 	bsr      	0x1ef0	// 1ef0 <IWDT_Int_Enable>
//------------  WWDT FUNTION  --------------------------------/
	WWDT_CNT_Load(0xFF);
    2cb0:	30ff      	movi      	r0, 255
    2cb2:	e3fff9db 	bsr      	0x2068	// 2068 <WWDT_CNT_Load>
	WWDT_CONFIG(PCLK_4096_DIV0,0xFF,WWDT_DBGDIS);
    2cb6:	3200      	movi      	r2, 0
    2cb8:	31ff      	movi      	r1, 255
    2cba:	3000      	movi      	r0, 0
    2cbc:	e3fff9ca 	bsr      	0x2050	// 2050 <WWDT_CONFIG>
	WWDT_Int_Config(ENABLE);													
    2cc0:	3001      	movi      	r0, 1
    2cc2:	e3fff9db 	bsr      	0x2078	// 2078 <WWDT_Int_Config>
	//WWDT_CMD(ENABLE);															//enable wwdt
//------------  CLO Output --------------------------------/	
	//SYSCON_CLO_CONFIG(CLO_PA08);												//CLO output setting
	//SYSCON_CLO_SRC_SET(CLO_HFCLK,CLO_DIV16);									//CLO output clock and div
//------------  LVD FUNTION  --------------------------------/ 
    SYSCON_LVD_Config(ENABLE_LVDEN,INTDET_LVL_3_9V,RSTDET_LVL_1_9V,ENABLE_LVD_INT,INTDET_POL_fall);   //LVD LVR Enable/Disable
    2cc6:	3340      	movi      	r3, 64
    2cc8:	b860      	st.w      	r3, (r14, 0x0)
    2cca:	31c0      	movi      	r1, 192
    2ccc:	3380      	movi      	r3, 128
    2cce:	4364      	lsli      	r3, r3, 4
    2cd0:	3200      	movi      	r2, 0
    2cd2:	4123      	lsli      	r1, r1, 3
    2cd4:	3000      	movi      	r0, 0
    2cd6:	e3fff8ef 	bsr      	0x1eb4	// 1eb4 <SYSCON_LVD_Config>
    LVD_Int_Enable();	
    2cda:	e3fff8fd 	bsr      	0x1ed4	// 1ed4 <LVD_Int_Enable>
//------------  SYSCON Vector  --------------------------------/ 	
	SYSCON_Int_Enable();    														//SYSCON VECTOR
    2cde:	e3fff937 	bsr      	0x1f4c	// 1f4c <SYSCON_Int_Enable>
	//SYSCON_WakeUp_Enable();    													//Enable WDT wakeup INT
//------------------------------------------------------------/
//OSC CLOCK Calibration
//------------------------------------------------------------/	
	std_clk_calib_source(CLK_ISOSC_27K);
    2ce2:	3000      	movi      	r0, 0
    2ce4:	e0001124 	bsr      	0x4f2c	// 4f2c <std_clk_calib_source>
	std_clk_calib(CLK_HFOSC_48M);												//Select the same clock source as the system
    2ce8:	3000      	movi      	r0, 0
    2cea:	e0001139 	bsr      	0x4f5c	// 4f5c <std_clk_calib>
	
}
    2cee:	1401      	addi      	r14, r14, 4
    2cf0:	1490      	pop      	r15

Disassembly of section .text.APT32F102_init:

00002cf4 <APT32F102_init>:
//ReturnValue:NONE                                                                /
/*********************************************************************************/
/*********************************************************************************/  
/*********************************************************************************/
void APT32F102_init(void) 
{
    2cf4:	14d0      	push      	r15
//------------------------------------------------------------/
//Peripheral clock enable and disable
//EntryParameter:NONE
//ReturnValue:NONE
//------------------------------------------------------------/
    SYSCON->PCER0=0xFFFFFFF;                                        //PCLK Enable
    2cf6:	106b      	lrw      	r3, 0x20000060	// 2d20 <APT32F102_init+0x2c>
    SYSCON->PCER1=0xFFFFFFF;                                        //PCLK Enable
    while(!(SYSCON->PCSR0&0x1));                                    //Wait PCLK enabled	
    2cf8:	3101      	movi      	r1, 1
    SYSCON->PCER0=0xFFFFFFF;                                        //PCLK Enable
    2cfa:	9340      	ld.w      	r2, (r3, 0x0)
    2cfc:	106a      	lrw      	r3, 0xfffffff	// 2d24 <APT32F102_init+0x30>
    2cfe:	b26a      	st.w      	r3, (r2, 0x28)
    SYSCON->PCER1=0xFFFFFFF;                                        //PCLK Enable
    2d00:	b26d      	st.w      	r3, (r2, 0x34)
    while(!(SYSCON->PCSR0&0x1));                                    //Wait PCLK enabled	
    2d02:	926c      	ld.w      	r3, (r2, 0x30)
    2d04:	68c4      	and      	r3, r1
    2d06:	3b40      	cmpnei      	r3, 0
    2d08:	0ffd      	bf      	0x2d02	// 2d02 <APT32F102_init+0xe>
//------------------------------------------------------------/
//ISOSC/IMOSC/EMOSC/SYSCLK/IWDT/LVD/EM_CMFAIL/EM_CMRCV/CMD_ERR OSC stable interrupt
//EntryParameter:NONE
//ReturnValue:NONE
//------------------------------------------------------------/
    SYSCON_CONFIG();                                                 //syscon  initial
    2d0a:	e3ffffb5 	bsr      	0x2c74	// 2c74 <SYSCON_CONFIG>
	CK_CPU_EnAllNormalIrq();                                         //enable all IRQ
    2d0e:	e0000729 	bsr      	0x3b60	// 3b60 <CK_CPU_EnAllNormalIrq>
	//Set_INT_Priority(BT0_IRQ,0);									 //0:set int priority 1st
//------------------------------------------------------------/
//Other IP config
//------------------------------------------------------------/
	//GPIO_CONFIG();                                                //GPIO initial     
	EPT0_CONFIG();                                                //EPT0 initial 
    2d12:	e3fffee1 	bsr      	0x2ad4	// 2ad4 <EPT0_CONFIG>
	//GPT0_CONFIG();												//GPT0 initial	
	BT_CONFIG();													//BT initial
    2d16:	e3ffff51 	bsr      	0x2bb8	// 2bb8 <BT_CONFIG>
    //I2C_MASTER_CONFIG();                                          //I2C harware master initial 
	//I2C_SLAVE_CONFIG();                                           //I2C harware slave initial 
	//SPI_MASTER_CONFIG();											//SPI Master initial 	
	//SPI_SLAVE_CONFIG();											//SPI Slaver initial 
	//SIO_CONFIG();													//SIO initial
    UART0_CONFIG();                                               //UART0 initial 
    2d1a:	e3ffff9d 	bsr      	0x2c54	// 2c54 <UART0_CONFIG>
	//UART1_CONFIG();                                               //UART1 initial 
	//UART2_CONFIG();                                               //UART2 initial 
	//ADC12_CONFIG();                                               //ADC initial 
	//TK_CONFIG();													//Touch Key initial
}
    2d1e:	1490      	pop      	r15
    2d20:	20000060 	.long	0x20000060
    2d24:	0fffffff 	.long	0x0fffffff

Disassembly of section .text.SYSCONIntHandler:

00002d28 <SYSCONIntHandler>:
//SYSCON Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SYSCONIntHandler(void) 
{
    2d28:	1460      	nie
    2d2a:	1462      	ipush
    // ISR content ...
	nop;
    2d2c:	6c03      	mov      	r0, r0
	if((SYSCON->MISR&ISOSC_ST)==ISOSC_ST)				//ISOSC stable interrupt
    2d2e:	117c      	lrw      	r3, 0x20000060	// 2e1c <SYSCONIntHandler+0xf4>
    2d30:	3280      	movi      	r2, 128
    2d32:	9360      	ld.w      	r3, (r3, 0x0)
    2d34:	60c8      	addu      	r3, r2
    2d36:	9323      	ld.w      	r1, (r3, 0xc)
    2d38:	3001      	movi      	r0, 1
    2d3a:	6840      	and      	r1, r0
    2d3c:	3940      	cmpnei      	r1, 0
    2d3e:	0c04      	bf      	0x2d46	// 2d46 <SYSCONIntHandler+0x1e>
	{
		SYSCON->ICR = EMOSC_ST;
	} 
	else if((SYSCON->MISR&HFOSC_ST)==HFOSC_ST)			//HFOSC stable interrupt
	{
		SYSCON->ICR = HFOSC_ST;
    2d40:	b301      	st.w      	r0, (r3, 0x4)
	}
	else if((SYSCON->MISR&CMD_ERR_ST)==CMD_ERR_ST)		//Command error interrupt
	{
		SYSCON->ICR = CMD_ERR_ST;
	}
}
    2d42:	1463      	ipop
    2d44:	1461      	nir
	else if((SYSCON->MISR&IMOSC_ST)==IMOSC_ST)			//IMOSC stable interrupt
    2d46:	9323      	ld.w      	r1, (r3, 0xc)
    2d48:	3002      	movi      	r0, 2
    2d4a:	6840      	and      	r1, r0
    2d4c:	3940      	cmpnei      	r1, 0
    2d4e:	0bf9      	bt      	0x2d40	// 2d40 <SYSCONIntHandler+0x18>
	else if((SYSCON->MISR&EMOSC_ST)==EMOSC_ST)			//EMOSC stable interrupt
    2d50:	9323      	ld.w      	r1, (r3, 0xc)
    2d52:	3008      	movi      	r0, 8
    2d54:	6840      	and      	r1, r0
    2d56:	3940      	cmpnei      	r1, 0
    2d58:	0bf4      	bt      	0x2d40	// 2d40 <SYSCONIntHandler+0x18>
	else if((SYSCON->MISR&HFOSC_ST)==HFOSC_ST)			//HFOSC stable interrupt
    2d5a:	9323      	ld.w      	r1, (r3, 0xc)
    2d5c:	3010      	movi      	r0, 16
    2d5e:	6840      	and      	r1, r0
    2d60:	3940      	cmpnei      	r1, 0
    2d62:	0bef      	bt      	0x2d40	// 2d40 <SYSCONIntHandler+0x18>
	else if((SYSCON->MISR&SYSCLK_ST)==SYSCLK_ST)		//SYSCLK change end & stable interrupt
    2d64:	9323      	ld.w      	r1, (r3, 0xc)
    2d66:	6848      	and      	r1, r2
    2d68:	3940      	cmpnei      	r1, 0
    2d6a:	0c03      	bf      	0x2d70	// 2d70 <SYSCONIntHandler+0x48>
		SYSCON->ICR = CMD_ERR_ST;
    2d6c:	b341      	st.w      	r2, (r3, 0x4)
}
    2d6e:	07ea      	br      	0x2d42	// 2d42 <SYSCONIntHandler+0x1a>
	else if((SYSCON->MISR&IWDT_INT_ST)==IWDT_INT_ST)	//IWDT alarm window interrupt
    2d70:	3280      	movi      	r2, 128
    2d72:	9323      	ld.w      	r1, (r3, 0xc)
    2d74:	4241      	lsli      	r2, r2, 1
    2d76:	6848      	and      	r1, r2
    2d78:	3940      	cmpnei      	r1, 0
    2d7a:	0c06      	bf      	0x2d86	// 2d86 <SYSCONIntHandler+0x5e>
		SYSCON->ICR = IWDT_INT_ST;
    2d7c:	b341      	st.w      	r2, (r3, 0x4)
		SYSCON->IWDCNT=0x5aul<<24;
    2d7e:	32b4      	movi      	r2, 180
    2d80:	4257      	lsli      	r2, r2, 23
    2d82:	b34e      	st.w      	r2, (r3, 0x38)
    2d84:	07df      	br      	0x2d42	// 2d42 <SYSCONIntHandler+0x1a>
	else if((SYSCON->MISR&WKI_INT_ST)==WKI_INT_ST)
    2d86:	3280      	movi      	r2, 128
    2d88:	9323      	ld.w      	r1, (r3, 0xc)
    2d8a:	4242      	lsli      	r2, r2, 2
    2d8c:	6848      	and      	r1, r2
    2d8e:	3940      	cmpnei      	r1, 0
    2d90:	0bee      	bt      	0x2d6c	// 2d6c <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&RAMERRINT_ST)==RAMERRINT_ST)	//SRAM check fail interrupt
    2d92:	3280      	movi      	r2, 128
    2d94:	9323      	ld.w      	r1, (r3, 0xc)
    2d96:	4243      	lsli      	r2, r2, 3
    2d98:	6848      	and      	r1, r2
    2d9a:	3940      	cmpnei      	r1, 0
    2d9c:	0be8      	bt      	0x2d6c	// 2d6c <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&LVD_INT_ST)==LVD_INT_ST)		//LVD threshold interrupt
    2d9e:	3280      	movi      	r2, 128
    2da0:	9323      	ld.w      	r1, (r3, 0xc)
    2da2:	4244      	lsli      	r2, r2, 4
    2da4:	6848      	and      	r1, r2
    2da6:	3940      	cmpnei      	r1, 0
    2da8:	0c03      	bf      	0x2dae	// 2dae <SYSCONIntHandler+0x86>
		nop;
    2daa:	6c03      	mov      	r0, r0
    2dac:	07e0      	br      	0x2d6c	// 2d6c <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&HWD_ERR_ST)==HWD_ERR_ST)		//Hardware Divider divisor = 0 interrupt
    2dae:	3280      	movi      	r2, 128
    2db0:	9323      	ld.w      	r1, (r3, 0xc)
    2db2:	4245      	lsli      	r2, r2, 5
    2db4:	6848      	and      	r1, r2
    2db6:	3940      	cmpnei      	r1, 0
    2db8:	0bda      	bt      	0x2d6c	// 2d6c <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EFL_ERR_ST)==EFL_ERR_ST)		//Flash check fail interrupt
    2dba:	3280      	movi      	r2, 128
    2dbc:	9323      	ld.w      	r1, (r3, 0xc)
    2dbe:	4246      	lsli      	r2, r2, 6
    2dc0:	6848      	and      	r1, r2
    2dc2:	3940      	cmpnei      	r1, 0
    2dc4:	0bd4      	bt      	0x2d6c	// 2d6c <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&OPTERR_INT)==OPTERR_INT)		//Option load fail interrupt
    2dc6:	3280      	movi      	r2, 128
    2dc8:	9323      	ld.w      	r1, (r3, 0xc)
    2dca:	4247      	lsli      	r2, r2, 7
    2dcc:	6848      	and      	r1, r2
    2dce:	3940      	cmpnei      	r1, 0
    2dd0:	0bce      	bt      	0x2d6c	// 2d6c <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_CMLST_ST)==EM_CMLST_ST)	//EMOSC clock monitor fail interrupt
    2dd2:	3280      	movi      	r2, 128
    2dd4:	9323      	ld.w      	r1, (r3, 0xc)
    2dd6:	424b      	lsli      	r2, r2, 11
    2dd8:	6848      	and      	r1, r2
    2dda:	3940      	cmpnei      	r1, 0
    2ddc:	0bc8      	bt      	0x2d6c	// 2d6c <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG0_ST)==EM_EVTRG0_ST)	//Event Trigger Channel 0 Interrupt
    2dde:	3280      	movi      	r2, 128
    2de0:	9323      	ld.w      	r1, (r3, 0xc)
    2de2:	424c      	lsli      	r2, r2, 12
    2de4:	6848      	and      	r1, r2
    2de6:	3940      	cmpnei      	r1, 0
    2de8:	0bc2      	bt      	0x2d6c	// 2d6c <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG1_ST)==EM_EVTRG1_ST)	//Event Trigger Channel 1 Interrupt
    2dea:	3280      	movi      	r2, 128
    2dec:	9323      	ld.w      	r1, (r3, 0xc)
    2dee:	424d      	lsli      	r2, r2, 13
    2df0:	6848      	and      	r1, r2
    2df2:	3940      	cmpnei      	r1, 0
    2df4:	0bbc      	bt      	0x2d6c	// 2d6c <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG2_ST)==EM_EVTRG2_ST)	//Event Trigger Channel 2 Interrupt
    2df6:	3280      	movi      	r2, 128
    2df8:	9323      	ld.w      	r1, (r3, 0xc)
    2dfa:	424e      	lsli      	r2, r2, 14
    2dfc:	6848      	and      	r1, r2
    2dfe:	3940      	cmpnei      	r1, 0
    2e00:	0bb6      	bt      	0x2d6c	// 2d6c <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG3_ST)==EM_EVTRG3_ST)	//Event Trigger Channel 3 Interrupt
    2e02:	3280      	movi      	r2, 128
    2e04:	9323      	ld.w      	r1, (r3, 0xc)
    2e06:	424f      	lsli      	r2, r2, 15
    2e08:	6848      	and      	r1, r2
    2e0a:	3940      	cmpnei      	r1, 0
    2e0c:	0bb0      	bt      	0x2d6c	// 2d6c <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&CMD_ERR_ST)==CMD_ERR_ST)		//Command error interrupt
    2e0e:	3280      	movi      	r2, 128
    2e10:	9323      	ld.w      	r1, (r3, 0xc)
    2e12:	4256      	lsli      	r2, r2, 22
    2e14:	6848      	and      	r1, r2
    2e16:	3940      	cmpnei      	r1, 0
    2e18:	0baa      	bt      	0x2d6c	// 2d6c <SYSCONIntHandler+0x44>
    2e1a:	0794      	br      	0x2d42	// 2d42 <SYSCONIntHandler+0x1a>
    2e1c:	20000060 	.long	0x20000060

Disassembly of section .text.IFCIntHandler:

00002e20 <IFCIntHandler>:
//IFC Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void IFCIntHandler(void) 
{
    2e20:	1460      	nie
    2e22:	1462      	ipush
    // ISR content ...
	if(IFC->MISR&ERS_END_INT)			
    2e24:	1078      	lrw      	r3, 0x20000064	// 2e84 <IFCIntHandler+0x64>
    2e26:	3101      	movi      	r1, 1
    2e28:	9360      	ld.w      	r3, (r3, 0x0)
    2e2a:	934b      	ld.w      	r2, (r3, 0x2c)
    2e2c:	6884      	and      	r2, r1
    2e2e:	3a40      	cmpnei      	r2, 0
    2e30:	0c04      	bf      	0x2e38	// 2e38 <IFCIntHandler+0x18>
	{
		IFC->ICR=RGM_END_INT;
	}
	else if(IFC->MISR&PEP_END_INT)		
	{
		IFC->ICR=PEP_END_INT;
    2e32:	b32c      	st.w      	r1, (r3, 0x30)
	}
	else if(IFC->MISR&OVW_ERR_INT)		
	{
		IFC->ICR=OVW_ERR_INT;
	}
}
    2e34:	1463      	ipop
    2e36:	1461      	nir
	else if(IFC->MISR&RGM_END_INT)		
    2e38:	934b      	ld.w      	r2, (r3, 0x2c)
    2e3a:	3102      	movi      	r1, 2
    2e3c:	6884      	and      	r2, r1
    2e3e:	3a40      	cmpnei      	r2, 0
    2e40:	0bf9      	bt      	0x2e32	// 2e32 <IFCIntHandler+0x12>
	else if(IFC->MISR&PEP_END_INT)		
    2e42:	934b      	ld.w      	r2, (r3, 0x2c)
    2e44:	3104      	movi      	r1, 4
    2e46:	6884      	and      	r2, r1
    2e48:	3a40      	cmpnei      	r2, 0
    2e4a:	0bf4      	bt      	0x2e32	// 2e32 <IFCIntHandler+0x12>
	else if(IFC->MISR&PROT_ERR_INT)		
    2e4c:	3280      	movi      	r2, 128
    2e4e:	932b      	ld.w      	r1, (r3, 0x2c)
    2e50:	4245      	lsli      	r2, r2, 5
    2e52:	6848      	and      	r1, r2
    2e54:	3940      	cmpnei      	r1, 0
    2e56:	0c03      	bf      	0x2e5c	// 2e5c <IFCIntHandler+0x3c>
		IFC->ICR=OVW_ERR_INT;
    2e58:	b34c      	st.w      	r2, (r3, 0x30)
}
    2e5a:	07ed      	br      	0x2e34	// 2e34 <IFCIntHandler+0x14>
	else if(IFC->MISR&UDEF_ERR_INT)		
    2e5c:	3280      	movi      	r2, 128
    2e5e:	932b      	ld.w      	r1, (r3, 0x2c)
    2e60:	4246      	lsli      	r2, r2, 6
    2e62:	6848      	and      	r1, r2
    2e64:	3940      	cmpnei      	r1, 0
    2e66:	0bf9      	bt      	0x2e58	// 2e58 <IFCIntHandler+0x38>
	else if(IFC->MISR&ADDR_ERR_INT)		
    2e68:	3280      	movi      	r2, 128
    2e6a:	932b      	ld.w      	r1, (r3, 0x2c)
    2e6c:	4247      	lsli      	r2, r2, 7
    2e6e:	6848      	and      	r1, r2
    2e70:	3940      	cmpnei      	r1, 0
    2e72:	0bf3      	bt      	0x2e58	// 2e58 <IFCIntHandler+0x38>
	else if(IFC->MISR&OVW_ERR_INT)		
    2e74:	3280      	movi      	r2, 128
    2e76:	932b      	ld.w      	r1, (r3, 0x2c)
    2e78:	4248      	lsli      	r2, r2, 8
    2e7a:	6848      	and      	r1, r2
    2e7c:	3940      	cmpnei      	r1, 0
    2e7e:	0bed      	bt      	0x2e58	// 2e58 <IFCIntHandler+0x38>
    2e80:	07da      	br      	0x2e34	// 2e34 <IFCIntHandler+0x14>
    2e82:	0000      	bkpt
    2e84:	20000064 	.long	0x20000064

Disassembly of section .text.ADCIntHandler:

00002e88 <ADCIntHandler>:
//ADC Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void ADCIntHandler(void) 
{
    2e88:	1460      	nie
    2e8a:	1462      	ipush
    2e8c:	14d0      	push      	r15
    // ISR content ...
	if((ADC0->SR&ADC12_EOC)==ADC12_EOC)				//ADC EOC interrupt
    2e8e:	107e      	lrw      	r3, 0x20000054	// 2f04 <ADCIntHandler+0x7c>
    2e90:	3101      	movi      	r1, 1
    2e92:	9360      	ld.w      	r3, (r3, 0x0)
    2e94:	9348      	ld.w      	r2, (r3, 0x20)
    2e96:	6884      	and      	r2, r1
    2e98:	3a40      	cmpnei      	r2, 0
    2e9a:	0c07      	bf      	0x2ea8	// 2ea8 <ADCIntHandler+0x20>
	{
		ADC0->CSR = ADC12_READY;
	}
	else if((ADC0->SR&ADC12_OVR)==ADC12_OVR)		//ADC OVR interrupt
	{
		ADC0->CSR = ADC12_OVR;
    2e9c:	b327      	st.w      	r1, (r3, 0x1c)
	}
	else if((ADC0->SR&ADC12_SEQ_END0)==ADC12_SEQ_END0) //ADC SEQ0 interrupt,SEQ1~SEQ15 replace the parameter with ADC12_SEQ_END1~ADC12_SEQ_END15
	{
		ADC0->CSR = ADC12_SEQ_END0;
	}
}
    2e9e:	d9ee2000 	ld.w      	r15, (r14, 0x0)
    2ea2:	1401      	addi      	r14, r14, 4
    2ea4:	1463      	ipop
    2ea6:	1461      	nir
	else if((ADC0->SR&ADC12_READY)==ADC12_READY)	//ADC READY interrupt
    2ea8:	9348      	ld.w      	r2, (r3, 0x20)
    2eaa:	3102      	movi      	r1, 2
    2eac:	6884      	and      	r2, r1
    2eae:	3a40      	cmpnei      	r2, 0
    2eb0:	0bf6      	bt      	0x2e9c	// 2e9c <ADCIntHandler+0x14>
	else if((ADC0->SR&ADC12_OVR)==ADC12_OVR)		//ADC OVR interrupt
    2eb2:	9348      	ld.w      	r2, (r3, 0x20)
    2eb4:	3104      	movi      	r1, 4
    2eb6:	6884      	and      	r2, r1
    2eb8:	3a40      	cmpnei      	r2, 0
    2eba:	0bf1      	bt      	0x2e9c	// 2e9c <ADCIntHandler+0x14>
	else if((ADC0->SR&ADC12_CMP0H)==ADC12_CMP0H)	//ADC CMP0H interrupt
    2ebc:	9348      	ld.w      	r2, (r3, 0x20)
    2ebe:	3110      	movi      	r1, 16
    2ec0:	6884      	and      	r2, r1
    2ec2:	3a40      	cmpnei      	r2, 0
    2ec4:	0c06      	bf      	0x2ed0	// 2ed0 <ADCIntHandler+0x48>
		ADC0->CSR = ADC12_CMP1H;
    2ec6:	b327      	st.w      	r1, (r3, 0x1c)
		printf("+\n");
    2ec8:	1010      	lrw      	r0, 0x5324	// 2f08 <ADCIntHandler+0x80>
		printf("-\n");
    2eca:	e3fff55f 	bsr      	0x1988	// 1988 <__GI_puts>
    2ece:	07e8      	br      	0x2e9e	// 2e9e <ADCIntHandler+0x16>
	else if((ADC0->SR&ADC12_CMP0L)==ADC12_CMP0L)	//ADC CMP0L interrupt.
    2ed0:	9348      	ld.w      	r2, (r3, 0x20)
    2ed2:	3120      	movi      	r1, 32
    2ed4:	6884      	and      	r2, r1
    2ed6:	3a40      	cmpnei      	r2, 0
    2ed8:	0c04      	bf      	0x2ee0	// 2ee0 <ADCIntHandler+0x58>
		ADC0->CSR = ADC12_CMP1L;
    2eda:	b327      	st.w      	r1, (r3, 0x1c)
		printf("-\n");
    2edc:	100c      	lrw      	r0, 0x5326	// 2f0c <ADCIntHandler+0x84>
    2ede:	07f6      	br      	0x2eca	// 2eca <ADCIntHandler+0x42>
	else if((ADC0->SR&ADC12_CMP1H)==ADC12_CMP1H)	//ADC CMP1H interrupt.
    2ee0:	9348      	ld.w      	r2, (r3, 0x20)
    2ee2:	3140      	movi      	r1, 64
    2ee4:	6884      	and      	r2, r1
    2ee6:	3a40      	cmpnei      	r2, 0
    2ee8:	0bef      	bt      	0x2ec6	// 2ec6 <ADCIntHandler+0x3e>
	else if((ADC0->SR&ADC12_CMP1L)==ADC12_CMP1L)	//ADC CMP1L interrupt.
    2eea:	9348      	ld.w      	r2, (r3, 0x20)
    2eec:	3180      	movi      	r1, 128
    2eee:	6884      	and      	r2, r1
    2ef0:	3a40      	cmpnei      	r2, 0
    2ef2:	0bf4      	bt      	0x2eda	// 2eda <ADCIntHandler+0x52>
	else if((ADC0->SR&ADC12_SEQ_END0)==ADC12_SEQ_END0) //ADC SEQ0 interrupt,SEQ1~SEQ15 replace the parameter with ADC12_SEQ_END1~ADC12_SEQ_END15
    2ef4:	3280      	movi      	r2, 128
    2ef6:	9328      	ld.w      	r1, (r3, 0x20)
    2ef8:	4249      	lsli      	r2, r2, 9
    2efa:	6848      	and      	r1, r2
    2efc:	3940      	cmpnei      	r1, 0
    2efe:	0fd0      	bf      	0x2e9e	// 2e9e <ADCIntHandler+0x16>
		ADC0->CSR = ADC12_SEQ_END0;
    2f00:	b347      	st.w      	r2, (r3, 0x1c)
}
    2f02:	07ce      	br      	0x2e9e	// 2e9e <ADCIntHandler+0x16>
    2f04:	20000054 	.long	0x20000054
    2f08:	00005324 	.long	0x00005324
    2f0c:	00005326 	.long	0x00005326

Disassembly of section .text.EPT0IntHandler:

00002f10 <EPT0IntHandler>:
//EPT0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EPT0IntHandler(void) 
{
    2f10:	1460      	nie
    2f12:	1462      	ipush
    2f14:	14d1      	push      	r4, r15
    // ISR content ...
	if((EPT0->MISR&EPT_TRGEV0_INT)==EPT_TRGEV0_INT)			//TRGEV0 interrupt
    2f16:	1386      	lrw      	r4, 0x20000024	// 30ac <EPT0IntHandler+0x19c>
    2f18:	3280      	movi      	r2, 128
    2f1a:	9460      	ld.w      	r3, (r4, 0x0)
    2f1c:	60c8      	addu      	r3, r2
    2f1e:	9335      	ld.w      	r1, (r3, 0x54)
    2f20:	3001      	movi      	r0, 1
    2f22:	6840      	and      	r1, r0
    2f24:	3940      	cmpnei      	r1, 0
    2f26:	0c03      	bf      	0x2f2c	// 2f2c <EPT0IntHandler+0x1c>
		EXTI_trigger_CMD(DISABLE,EXI_PIN0,_EXIFT);
		R_CMPB_BUF=EPT0->CMPB;			//Duty counter
	}
	else if((EPT0->MISR&EPT_CAP_LD2)==EPT_CAP_LD2)			//Capture Load to CMPC interrupt
	{
		EPT0->ICR=EPT_CAP_LD2;
    2f28:	b317      	st.w      	r0, (r3, 0x5c)
    2f2a:	0424      	br      	0x2f72	// 2f72 <EPT0IntHandler+0x62>
	else if((EPT0->MISR&EPT_TRGEV1_INT)==EPT_TRGEV1_INT)	//TRGEV1 interrupt
    2f2c:	9335      	ld.w      	r1, (r3, 0x54)
    2f2e:	3002      	movi      	r0, 2
    2f30:	6840      	and      	r1, r0
    2f32:	3940      	cmpnei      	r1, 0
    2f34:	0bfa      	bt      	0x2f28	// 2f28 <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_TRGEV2_INT)==EPT_TRGEV2_INT)	//TRGEV2 interrupt
    2f36:	9335      	ld.w      	r1, (r3, 0x54)
    2f38:	3004      	movi      	r0, 4
    2f3a:	6840      	and      	r1, r0
    2f3c:	3940      	cmpnei      	r1, 0
    2f3e:	0bf5      	bt      	0x2f28	// 2f28 <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_TRGEV3_INT)==EPT_TRGEV3_INT)	//TRGEV3 interrupt
    2f40:	9335      	ld.w      	r1, (r3, 0x54)
    2f42:	3008      	movi      	r0, 8
    2f44:	6840      	and      	r1, r0
    2f46:	3940      	cmpnei      	r1, 0
    2f48:	0bf0      	bt      	0x2f28	// 2f28 <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_CAP_LD0)==EPT_CAP_LD0)			//Capture Load to CMPA interrupt
    2f4a:	9335      	ld.w      	r1, (r3, 0x54)
    2f4c:	3010      	movi      	r0, 16
    2f4e:	6840      	and      	r1, r0
    2f50:	3940      	cmpnei      	r1, 0
    2f52:	0c1f      	bf      	0x2f90	// 2f90 <EPT0IntHandler+0x80>
		EPT0->ICR=EPT_CAP_LD0;
    2f54:	b317      	st.w      	r0, (r3, 0x5c)
		EXTI_trigger_CMD(DISABLE,EXI_PIN0,_EXIRT);
    2f56:	3200      	movi      	r2, 0
    2f58:	3101      	movi      	r1, 1
    2f5a:	3000      	movi      	r0, 0
    2f5c:	e3fff7d8 	bsr      	0x1f0c	// 1f0c <EXTI_trigger_CMD>
		EXTI_trigger_CMD(ENABLE,EXI_PIN0,_EXIFT);
    2f60:	3201      	movi      	r2, 1
    2f62:	3101      	movi      	r1, 1
    2f64:	3001      	movi      	r0, 1
    2f66:	e3fff7d3 	bsr      	0x1f0c	// 1f0c <EXTI_trigger_CMD>
		R_CMPA_BUF=EPT0->CMPA;			//Low voltage counter
    2f6a:	9460      	ld.w      	r3, (r4, 0x0)
    2f6c:	934b      	ld.w      	r2, (r3, 0x2c)
    2f6e:	1271      	lrw      	r3, 0x200001bc	// 30b0 <EPT0IntHandler+0x1a0>
		R_CMPB_BUF=EPT0->CMPB;			//Duty counter
    2f70:	b340      	st.w      	r2, (r3, 0x0)
	else if((EPT0->MISR&EPT_PEND)==EPT_PEND)				//End of cycle interrupt
	{
		EPT0->ICR=EPT_PEND;
	}
	//Emergency interruption
	if((EPT0->EMMISR&EPT_EP0_EMINT)==EPT_EP0_EMINT)			//interrupt flag of EP0 event
    2f72:	9460      	ld.w      	r3, (r4, 0x0)
    2f74:	3280      	movi      	r2, 128
    2f76:	60c8      	addu      	r3, r2
    2f78:	932b      	ld.w      	r1, (r3, 0x2c)
    2f7a:	3001      	movi      	r0, 1
    2f7c:	6840      	and      	r1, r0
    2f7e:	3940      	cmpnei      	r1, 0
    2f80:	0c5e      	bf      	0x303c	// 303c <EPT0IntHandler+0x12c>
	{
		EPT0->EMICR=EPT_EP5_EMINT;
	}
	else if((EPT0->EMMISR&EPT_EP6_EMINT)==EPT_EP6_EMINT)	//interrupt flag of EP6 event
	{
		EPT0->EMICR=EPT_EP6_EMINT;
    2f82:	b30d      	st.w      	r0, (r3, 0x34)
	}
	else if((EPT0->EMMISR&EPT_EOM_FAULT_EMINT)==EPT_EOM_FAULT_EMINT)	//interrupt flag of EOM_FAULT event
	{
		EPT0->EMICR=EPT_EOM_FAULT_EMINT;
	}
}
    2f84:	d9ee2001 	ld.w      	r15, (r14, 0x4)
    2f88:	9880      	ld.w      	r4, (r14, 0x0)
    2f8a:	1402      	addi      	r14, r14, 8
    2f8c:	1463      	ipop
    2f8e:	1461      	nir
	else if((EPT0->MISR&EPT_CAP_LD1)==EPT_CAP_LD1)			//Capture Load to CMPB interrupt
    2f90:	9335      	ld.w      	r1, (r3, 0x54)
    2f92:	3020      	movi      	r0, 32
    2f94:	6840      	and      	r1, r0
    2f96:	3940      	cmpnei      	r1, 0
    2f98:	0c10      	bf      	0x2fb8	// 2fb8 <EPT0IntHandler+0xa8>
		EPT0->ICR=EPT_CAP_LD1;
    2f9a:	b317      	st.w      	r0, (r3, 0x5c)
		EXTI_trigger_CMD(ENABLE,EXI_PIN0,_EXIRT);
    2f9c:	3200      	movi      	r2, 0
    2f9e:	3101      	movi      	r1, 1
    2fa0:	3001      	movi      	r0, 1
    2fa2:	e3fff7b5 	bsr      	0x1f0c	// 1f0c <EXTI_trigger_CMD>
		EXTI_trigger_CMD(DISABLE,EXI_PIN0,_EXIFT);
    2fa6:	3201      	movi      	r2, 1
    2fa8:	3101      	movi      	r1, 1
    2faa:	3000      	movi      	r0, 0
    2fac:	e3fff7b0 	bsr      	0x1f0c	// 1f0c <EXTI_trigger_CMD>
		R_CMPB_BUF=EPT0->CMPB;			//Duty counter
    2fb0:	9460      	ld.w      	r3, (r4, 0x0)
    2fb2:	934c      	ld.w      	r2, (r3, 0x30)
    2fb4:	1260      	lrw      	r3, 0x200001b4	// 30b4 <EPT0IntHandler+0x1a4>
    2fb6:	07dd      	br      	0x2f70	// 2f70 <EPT0IntHandler+0x60>
	else if((EPT0->MISR&EPT_CAP_LD2)==EPT_CAP_LD2)			//Capture Load to CMPC interrupt
    2fb8:	9335      	ld.w      	r1, (r3, 0x54)
    2fba:	3040      	movi      	r0, 64
    2fbc:	6840      	and      	r1, r0
    2fbe:	3940      	cmpnei      	r1, 0
    2fc0:	0bb4      	bt      	0x2f28	// 2f28 <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_CAP_LD3)==EPT_CAP_LD3)			//Capture Load to CMPD interrupt
    2fc2:	9335      	ld.w      	r1, (r3, 0x54)
    2fc4:	6848      	and      	r1, r2
    2fc6:	3940      	cmpnei      	r1, 0
    2fc8:	0c03      	bf      	0x2fce	// 2fce <EPT0IntHandler+0xbe>
		EPT0->ICR=EPT_PEND;
    2fca:	b357      	st.w      	r2, (r3, 0x5c)
    2fcc:	07d3      	br      	0x2f72	// 2f72 <EPT0IntHandler+0x62>
	else if((EPT0->MISR&EPT_CAU)==EPT_CAU)					//Up-Counting phase CNT = CMPA interrupt
    2fce:	3280      	movi      	r2, 128
    2fd0:	9335      	ld.w      	r1, (r3, 0x54)
    2fd2:	4241      	lsli      	r2, r2, 1
    2fd4:	6848      	and      	r1, r2
    2fd6:	3940      	cmpnei      	r1, 0
    2fd8:	0bf9      	bt      	0x2fca	// 2fca <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CAD)==EPT_CAD)					//Down-Counting phase CNT = CMPA interrupt
    2fda:	3280      	movi      	r2, 128
    2fdc:	9335      	ld.w      	r1, (r3, 0x54)
    2fde:	4242      	lsli      	r2, r2, 2
    2fe0:	6848      	and      	r1, r2
    2fe2:	3940      	cmpnei      	r1, 0
    2fe4:	0bf3      	bt      	0x2fca	// 2fca <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CBU)==EPT_CBU)					//Up-Counting phase CNT = CMPB interrupt 
    2fe6:	3280      	movi      	r2, 128
    2fe8:	9335      	ld.w      	r1, (r3, 0x54)
    2fea:	4243      	lsli      	r2, r2, 3
    2fec:	6848      	and      	r1, r2
    2fee:	3940      	cmpnei      	r1, 0
    2ff0:	0bed      	bt      	0x2fca	// 2fca <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CBD)==EPT_CBD)					//Down-Counting phase CNT = CMPB interrupt
    2ff2:	3280      	movi      	r2, 128
    2ff4:	9335      	ld.w      	r1, (r3, 0x54)
    2ff6:	4244      	lsli      	r2, r2, 4
    2ff8:	6848      	and      	r1, r2
    2ffa:	3940      	cmpnei      	r1, 0
    2ffc:	0be7      	bt      	0x2fca	// 2fca <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CCU)==EPT_CCU)					//Up-Counting phase CNT = CMPC interrupt 
    2ffe:	3280      	movi      	r2, 128
    3000:	9335      	ld.w      	r1, (r3, 0x54)
    3002:	4245      	lsli      	r2, r2, 5
    3004:	6848      	and      	r1, r2
    3006:	3940      	cmpnei      	r1, 0
    3008:	0be1      	bt      	0x2fca	// 2fca <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CCD)==EPT_CCD)					//Down-Counting phase CNT = CMPC interrupt
    300a:	3280      	movi      	r2, 128
    300c:	9335      	ld.w      	r1, (r3, 0x54)
    300e:	4246      	lsli      	r2, r2, 6
    3010:	6848      	and      	r1, r2
    3012:	3940      	cmpnei      	r1, 0
    3014:	0bdb      	bt      	0x2fca	// 2fca <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CDU)==EPT_CDU)					//Up-Counting phase CNT = CMPD interrupt
    3016:	3280      	movi      	r2, 128
    3018:	9335      	ld.w      	r1, (r3, 0x54)
    301a:	4247      	lsli      	r2, r2, 7
    301c:	6848      	and      	r1, r2
    301e:	3940      	cmpnei      	r1, 0
    3020:	0bd5      	bt      	0x2fca	// 2fca <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CDD)==EPT_CDD)					//Down-Counting phase CNT = CMPD interrupt
    3022:	3280      	movi      	r2, 128
    3024:	9335      	ld.w      	r1, (r3, 0x54)
    3026:	4248      	lsli      	r2, r2, 8
    3028:	6848      	and      	r1, r2
    302a:	3940      	cmpnei      	r1, 0
    302c:	0bcf      	bt      	0x2fca	// 2fca <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_PEND)==EPT_PEND)				//End of cycle interrupt
    302e:	3280      	movi      	r2, 128
    3030:	9335      	ld.w      	r1, (r3, 0x54)
    3032:	4249      	lsli      	r2, r2, 9
    3034:	6848      	and      	r1, r2
    3036:	3940      	cmpnei      	r1, 0
    3038:	0f9d      	bf      	0x2f72	// 2f72 <EPT0IntHandler+0x62>
    303a:	07c8      	br      	0x2fca	// 2fca <EPT0IntHandler+0xba>
	else if((EPT0->EMMISR&EPT_EP1_EMINT)==EPT_EP1_EMINT)	//interrupt flag of EP1 event
    303c:	932b      	ld.w      	r1, (r3, 0x2c)
    303e:	3002      	movi      	r0, 2
    3040:	6840      	and      	r1, r0
    3042:	3940      	cmpnei      	r1, 0
    3044:	0b9f      	bt      	0x2f82	// 2f82 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP2_EMINT)==EPT_EP2_EMINT)	//interrupt flag of EP2 event
    3046:	932b      	ld.w      	r1, (r3, 0x2c)
    3048:	3004      	movi      	r0, 4
    304a:	6840      	and      	r1, r0
    304c:	3940      	cmpnei      	r1, 0
    304e:	0b9a      	bt      	0x2f82	// 2f82 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP3_EMINT)==EPT_EP3_EMINT)	//interrupt flag of EP3 event
    3050:	932b      	ld.w      	r1, (r3, 0x2c)
    3052:	3008      	movi      	r0, 8
    3054:	6840      	and      	r1, r0
    3056:	3940      	cmpnei      	r1, 0
    3058:	0b95      	bt      	0x2f82	// 2f82 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP4_EMINT)==EPT_EP4_EMINT)	//interrupt flag of EP4 event
    305a:	932b      	ld.w      	r1, (r3, 0x2c)
    305c:	3010      	movi      	r0, 16
    305e:	6840      	and      	r1, r0
    3060:	3940      	cmpnei      	r1, 0
    3062:	0b90      	bt      	0x2f82	// 2f82 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP5_EMINT)==EPT_EP5_EMINT)	//interrupt flag of EP5 event
    3064:	932b      	ld.w      	r1, (r3, 0x2c)
    3066:	3020      	movi      	r0, 32
    3068:	6840      	and      	r1, r0
    306a:	3940      	cmpnei      	r1, 0
    306c:	0b8b      	bt      	0x2f82	// 2f82 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP6_EMINT)==EPT_EP6_EMINT)	//interrupt flag of EP6 event
    306e:	932b      	ld.w      	r1, (r3, 0x2c)
    3070:	3040      	movi      	r0, 64
    3072:	6840      	and      	r1, r0
    3074:	3940      	cmpnei      	r1, 0
    3076:	0b86      	bt      	0x2f82	// 2f82 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP7_EMINT)==EPT_EP7_EMINT)	//interrupt flag of EP7 event
    3078:	932b      	ld.w      	r1, (r3, 0x2c)
    307a:	6848      	and      	r1, r2
    307c:	3940      	cmpnei      	r1, 0
    307e:	0c03      	bf      	0x3084	// 3084 <EPT0IntHandler+0x174>
		EPT0->EMICR=EPT_EOM_FAULT_EMINT;
    3080:	b34d      	st.w      	r2, (r3, 0x34)
}
    3082:	0781      	br      	0x2f84	// 2f84 <EPT0IntHandler+0x74>
	else if((EPT0->EMMISR&EPT_CPU_FAULT_EMINT)==EPT_CPU_FAULT_EMINT)	//interrupt flag of CPU_FAULT event
    3084:	3280      	movi      	r2, 128
    3086:	932b      	ld.w      	r1, (r3, 0x2c)
    3088:	4241      	lsli      	r2, r2, 1
    308a:	6848      	and      	r1, r2
    308c:	3940      	cmpnei      	r1, 0
    308e:	0bf9      	bt      	0x3080	// 3080 <EPT0IntHandler+0x170>
	else if((EPT0->EMMISR&EPT_MEM_FAULT_EMINT)==EPT_MEM_FAULT_EMINT)	//interrupt flag of MEM_FAULT event
    3090:	3280      	movi      	r2, 128
    3092:	932b      	ld.w      	r1, (r3, 0x2c)
    3094:	4242      	lsli      	r2, r2, 2
    3096:	6848      	and      	r1, r2
    3098:	3940      	cmpnei      	r1, 0
    309a:	0bf3      	bt      	0x3080	// 3080 <EPT0IntHandler+0x170>
	else if((EPT0->EMMISR&EPT_EOM_FAULT_EMINT)==EPT_EOM_FAULT_EMINT)	//interrupt flag of EOM_FAULT event
    309c:	3280      	movi      	r2, 128
    309e:	932b      	ld.w      	r1, (r3, 0x2c)
    30a0:	4243      	lsli      	r2, r2, 3
    30a2:	6848      	and      	r1, r2
    30a4:	3940      	cmpnei      	r1, 0
    30a6:	0bed      	bt      	0x3080	// 3080 <EPT0IntHandler+0x170>
    30a8:	076e      	br      	0x2f84	// 2f84 <EPT0IntHandler+0x74>
    30aa:	0000      	bkpt
    30ac:	20000024 	.long	0x20000024
    30b0:	200001bc 	.long	0x200001bc
    30b4:	200001b4 	.long	0x200001b4

Disassembly of section .text.WWDTHandler:

000030b8 <WWDTHandler>:
//WWDT Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void WWDTHandler(void)
{
    30b8:	1460      	nie
    30ba:	1462      	ipush
    30bc:	14d2      	push      	r4-r5, r15
	WWDT->ICR=0X01;
    30be:	10ab      	lrw      	r5, 0x20000014	// 30e8 <WWDTHandler+0x30>
    30c0:	3401      	movi      	r4, 1
    30c2:	9560      	ld.w      	r3, (r5, 0x0)
    30c4:	b385      	st.w      	r4, (r3, 0x14)
	WWDT_CNT_Load(0xFF);
    30c6:	30ff      	movi      	r0, 255
    30c8:	e3fff7d0 	bsr      	0x2068	// 2068 <WWDT_CNT_Load>
	if((WWDT->MISR&WWDT_EVI)==WWDT_EVI)					//WWDT EVI interrupt
    30cc:	9540      	ld.w      	r2, (r5, 0x0)
    30ce:	9263      	ld.w      	r3, (r2, 0xc)
    30d0:	68d0      	and      	r3, r4
    30d2:	3b40      	cmpnei      	r3, 0
    30d4:	0c02      	bf      	0x30d8	// 30d8 <WWDTHandler+0x20>
	{
		WWDT->ICR = WWDT_EVI;
    30d6:	b285      	st.w      	r4, (r2, 0x14)
	} 
}
    30d8:	d9ee2002 	ld.w      	r15, (r14, 0x8)
    30dc:	98a1      	ld.w      	r5, (r14, 0x4)
    30de:	9880      	ld.w      	r4, (r14, 0x0)
    30e0:	1403      	addi      	r14, r14, 12
    30e2:	1463      	ipop
    30e4:	1461      	nir
    30e6:	0000      	bkpt
    30e8:	20000014 	.long	0x20000014

Disassembly of section .text.GPT0IntHandler:

000030ec <GPT0IntHandler>:
//GPT0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void GPT0IntHandler(void) 
{
    30ec:	1460      	nie
    30ee:	1462      	ipush
    // ISR content ...
	if((GPT0->MISR&GPT_INT_TRGEV0)==GPT_INT_TRGEV0)			//TRGEV0 interrupt
    30f0:	107e      	lrw      	r3, 0x20000028	// 3168 <GPT0IntHandler+0x7c>
    30f2:	3101      	movi      	r1, 1
    30f4:	9360      	ld.w      	r3, (r3, 0x0)
    30f6:	237f      	addi      	r3, 128
    30f8:	9355      	ld.w      	r2, (r3, 0x54)
    30fa:	6884      	and      	r2, r1
    30fc:	3a40      	cmpnei      	r2, 0
    30fe:	0c04      	bf      	0x3106	// 3106 <GPT0IntHandler+0x1a>
	{
		GPT0->ICR = GPT_INT_CAPLD0;
	}
	else if((GPT0->MISR&GPT_INT_CAPLD1)==GPT_INT_CAPLD1)		//Capture Load to CMPB interrupt
	{
		GPT0->ICR = GPT_INT_CAPLD1;
    3100:	b337      	st.w      	r1, (r3, 0x5c)
	}
	else if((GPT0->MISR&GPT_INT_PEND)==GPT_INT_PEND)		//End of cycle interrupt 
	{
		GPT0->ICR = GPT_INT_PEND;
	}
}
    3102:	1463      	ipop
    3104:	1461      	nir
	else if((GPT0->MISR&GPT_INT_TRGEV1)==GPT_INT_TRGEV1)	//TRGEV1 interrupt
    3106:	9355      	ld.w      	r2, (r3, 0x54)
    3108:	3102      	movi      	r1, 2
    310a:	6884      	and      	r2, r1
    310c:	3a40      	cmpnei      	r2, 0
    310e:	0bf9      	bt      	0x3100	// 3100 <GPT0IntHandler+0x14>
	else if((GPT0->MISR&GPT_INT_CAPLD0)==GPT_INT_CAPLD0)		//Capture Load to CMPA interrupt
    3110:	9355      	ld.w      	r2, (r3, 0x54)
    3112:	3110      	movi      	r1, 16
    3114:	6884      	and      	r2, r1
    3116:	3a40      	cmpnei      	r2, 0
    3118:	0bf4      	bt      	0x3100	// 3100 <GPT0IntHandler+0x14>
	else if((GPT0->MISR&GPT_INT_CAPLD1)==GPT_INT_CAPLD1)		//Capture Load to CMPB interrupt
    311a:	9355      	ld.w      	r2, (r3, 0x54)
    311c:	3120      	movi      	r1, 32
    311e:	6884      	and      	r2, r1
    3120:	3a40      	cmpnei      	r2, 0
    3122:	0bef      	bt      	0x3100	// 3100 <GPT0IntHandler+0x14>
	else if((GPT0->MISR&GPT_INT_CAU)==GPT_INT_CAU)			//Up-Counting phase CNT = CMPA Interrupt
    3124:	3280      	movi      	r2, 128
    3126:	9335      	ld.w      	r1, (r3, 0x54)
    3128:	4241      	lsli      	r2, r2, 1
    312a:	6848      	and      	r1, r2
    312c:	3940      	cmpnei      	r1, 0
    312e:	0c03      	bf      	0x3134	// 3134 <GPT0IntHandler+0x48>
		GPT0->ICR = GPT_INT_PEND;
    3130:	b357      	st.w      	r2, (r3, 0x5c)
}
    3132:	07e8      	br      	0x3102	// 3102 <GPT0IntHandler+0x16>
	else if((GPT0->MISR&GPT_INT_CAD)==GPT_INT_CAD)			//Down-Counting phase CNT = CMPA Interrupt
    3134:	3280      	movi      	r2, 128
    3136:	9335      	ld.w      	r1, (r3, 0x54)
    3138:	4242      	lsli      	r2, r2, 2
    313a:	6848      	and      	r1, r2
    313c:	3940      	cmpnei      	r1, 0
    313e:	0bf9      	bt      	0x3130	// 3130 <GPT0IntHandler+0x44>
	else if((GPT0->MISR&GPT_INT_CBU)==GPT_INT_CBU)			//Up-Counting phase CNT = CMPB Interrupt
    3140:	3280      	movi      	r2, 128
    3142:	9335      	ld.w      	r1, (r3, 0x54)
    3144:	4243      	lsli      	r2, r2, 3
    3146:	6848      	and      	r1, r2
    3148:	3940      	cmpnei      	r1, 0
    314a:	0bf3      	bt      	0x3130	// 3130 <GPT0IntHandler+0x44>
	else if((GPT0->MISR&GPT_INT_CBD)==GPT_INT_CBD)			//Down-Counting phase CNT = CMPB Interrupt
    314c:	3280      	movi      	r2, 128
    314e:	9335      	ld.w      	r1, (r3, 0x54)
    3150:	4244      	lsli      	r2, r2, 4
    3152:	6848      	and      	r1, r2
    3154:	3940      	cmpnei      	r1, 0
    3156:	0bed      	bt      	0x3130	// 3130 <GPT0IntHandler+0x44>
	else if((GPT0->MISR&GPT_INT_PEND)==GPT_INT_PEND)		//End of cycle interrupt 
    3158:	3280      	movi      	r2, 128
    315a:	9335      	ld.w      	r1, (r3, 0x54)
    315c:	4249      	lsli      	r2, r2, 9
    315e:	6848      	and      	r1, r2
    3160:	3940      	cmpnei      	r1, 0
    3162:	0be7      	bt      	0x3130	// 3130 <GPT0IntHandler+0x44>
    3164:	07cf      	br      	0x3102	// 3102 <GPT0IntHandler+0x16>
    3166:	0000      	bkpt
    3168:	20000028 	.long	0x20000028

Disassembly of section .text.RTCIntHandler:

0000316c <RTCIntHandler>:
//RTC Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void RTCIntHandler(void) 
{
    316c:	1460      	nie
    316e:	1462      	ipush
    // ISR content ...
	if((RTC->MISR&ALRA_INT)==ALRA_INT)			//Interrupt of alarm A
    3170:	1079      	lrw      	r3, 0x2000001c	// 31d4 <RTCIntHandler+0x68>
    3172:	3101      	movi      	r1, 1
    3174:	9360      	ld.w      	r3, (r3, 0x0)
    3176:	934a      	ld.w      	r2, (r3, 0x28)
    3178:	6884      	and      	r2, r1
    317a:	3a40      	cmpnei      	r2, 0
    317c:	0c14      	bf      	0x31a4	// 31a4 <RTCIntHandler+0x38>
	{
		RTC->ICR=ALRA_INT;
		RTC->KEY=0XCA53;
    317e:	1057      	lrw      	r2, 0xca53	// 31d8 <RTCIntHandler+0x6c>
		RTC->ICR=ALRA_INT;
    3180:	b32b      	st.w      	r1, (r3, 0x2c)
		RTC->KEY=0XCA53;
    3182:	b34c      	st.w      	r2, (r3, 0x30)
		RTC->CR=RTC->CR|0x01;
    3184:	9342      	ld.w      	r2, (r3, 0x8)
    3186:	6c84      	or      	r2, r1
    3188:	b342      	st.w      	r2, (r3, 0x8)
		RTC->TIMR=(0x10<<16)|(0x00<<8)|(0x00);			//Hour bit6->0:am 1:pm	
    318a:	3280      	movi      	r2, 128
    318c:	424d      	lsli      	r2, r2, 13
    318e:	b340      	st.w      	r2, (r3, 0x0)
		while(RTC->CR&0x02);							//busy TIMR DATR ALRAR ALRBR Update done
    3190:	3102      	movi      	r1, 2
    3192:	9342      	ld.w      	r2, (r3, 0x8)
    3194:	6884      	and      	r2, r1
    3196:	3a40      	cmpnei      	r2, 0
    3198:	0bfd      	bt      	0x3192	// 3192 <RTCIntHandler+0x26>
		RTC->CR &= ~0x1;
    319a:	9342      	ld.w      	r2, (r3, 0x8)
    319c:	3a80      	bclri      	r2, 0
    319e:	b342      	st.w      	r2, (r3, 0x8)
	}
	else if((RTC->MISR&RTC_TRGEV1_INT)==RTC_TRGEV1_INT)		//Interrupt of trigger event 1
	{
		RTC->ICR=RTC_TRGEV1_INT;
	}
}
    31a0:	1463      	ipop
    31a2:	1461      	nir
	else if((RTC->MISR&ALRB_INT)==ALRB_INT)			//Interrupt of alarm B				
    31a4:	934a      	ld.w      	r2, (r3, 0x28)
    31a6:	3102      	movi      	r1, 2
    31a8:	6884      	and      	r2, r1
    31aa:	3a40      	cmpnei      	r2, 0
    31ac:	0c03      	bf      	0x31b2	// 31b2 <RTCIntHandler+0x46>
		RTC->ICR=RTC_TRGEV1_INT;
    31ae:	b32b      	st.w      	r1, (r3, 0x2c)
}
    31b0:	07f8      	br      	0x31a0	// 31a0 <RTCIntHandler+0x34>
	else if((RTC->MISR&CPRD_INT)==CPRD_INT)			//Interrupt of alarm CPRD
    31b2:	934a      	ld.w      	r2, (r3, 0x28)
    31b4:	3104      	movi      	r1, 4
    31b6:	6884      	and      	r2, r1
    31b8:	3a40      	cmpnei      	r2, 0
    31ba:	0bfa      	bt      	0x31ae	// 31ae <RTCIntHandler+0x42>
	else if((RTC->MISR&RTC_TRGEV0_INT)==RTC_TRGEV0_INT)		//Interrupt of trigger event 0
    31bc:	934a      	ld.w      	r2, (r3, 0x28)
    31be:	3108      	movi      	r1, 8
    31c0:	6884      	and      	r2, r1
    31c2:	3a40      	cmpnei      	r2, 0
    31c4:	0bf5      	bt      	0x31ae	// 31ae <RTCIntHandler+0x42>
	else if((RTC->MISR&RTC_TRGEV1_INT)==RTC_TRGEV1_INT)		//Interrupt of trigger event 1
    31c6:	934a      	ld.w      	r2, (r3, 0x28)
    31c8:	3110      	movi      	r1, 16
    31ca:	6884      	and      	r2, r1
    31cc:	3a40      	cmpnei      	r2, 0
    31ce:	0bf0      	bt      	0x31ae	// 31ae <RTCIntHandler+0x42>
    31d0:	07e8      	br      	0x31a0	// 31a0 <RTCIntHandler+0x34>
    31d2:	0000      	bkpt
    31d4:	2000001c 	.long	0x2000001c
    31d8:	0000ca53 	.long	0x0000ca53

Disassembly of section .text.UART0IntHandler:

000031dc <UART0IntHandler>:
//UART0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART0IntHandler(void) 
{
    31dc:	1460      	nie
    31de:	1462      	ipush
    // ISR content ...
	if ((UART0->ISR&UART_RX_INT_S)==UART_RX_INT_S)				//RX interrupt
    31e0:	106d      	lrw      	r3, 0x20000044	// 3214 <UART0IntHandler+0x38>
    31e2:	3102      	movi      	r1, 2
    31e4:	9360      	ld.w      	r3, (r3, 0x0)
    31e6:	9343      	ld.w      	r2, (r3, 0xc)
    31e8:	6884      	and      	r2, r1
    31ea:	3a40      	cmpnei      	r2, 0
    31ec:	0c03      	bf      	0x31f2	// 31f2 <UART0IntHandler+0x16>
	{
		UART0->ISR=UART_RX_IOV_S;
	}
	else if ((UART0->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
	{
		UART0->ISR=UART_TX_IOV_S;
    31ee:	b323      	st.w      	r1, (r3, 0xc)
	}
}
    31f0:	0410      	br      	0x3210	// 3210 <UART0IntHandler+0x34>
	else if( (UART0->ISR&UART_TX_INT_S)==UART_TX_INT_S ) 		//TX interrupt
    31f2:	9343      	ld.w      	r2, (r3, 0xc)
    31f4:	3101      	movi      	r1, 1
    31f6:	6884      	and      	r2, r1
    31f8:	3a40      	cmpnei      	r2, 0
    31fa:	0bfa      	bt      	0x31ee	// 31ee <UART0IntHandler+0x12>
	else if ((UART0->ISR&UART_RX_IOV_S)==UART_RX_IOV_S)			//RX overrun interrupt
    31fc:	9343      	ld.w      	r2, (r3, 0xc)
    31fe:	3108      	movi      	r1, 8
    3200:	6884      	and      	r2, r1
    3202:	3a40      	cmpnei      	r2, 0
    3204:	0bf5      	bt      	0x31ee	// 31ee <UART0IntHandler+0x12>
	else if ((UART0->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
    3206:	9343      	ld.w      	r2, (r3, 0xc)
    3208:	3104      	movi      	r1, 4
    320a:	6884      	and      	r2, r1
    320c:	3a40      	cmpnei      	r2, 0
    320e:	0bf0      	bt      	0x31ee	// 31ee <UART0IntHandler+0x12>
}
    3210:	1463      	ipop
    3212:	1461      	nir
    3214:	20000044 	.long	0x20000044

Disassembly of section .text.UART1IntHandler:

00003218 <UART1IntHandler>:
//UART1 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART1IntHandler(void) 
{
    3218:	1460      	nie
    321a:	1462      	ipush
    // ISR content ...
	if ((UART1->ISR&UART_RX_INT_S)==UART_RX_INT_S)				//RX interrupt
    321c:	106d      	lrw      	r3, 0x20000040	// 3250 <UART1IntHandler+0x38>
    321e:	3102      	movi      	r1, 2
    3220:	9360      	ld.w      	r3, (r3, 0x0)
    3222:	9343      	ld.w      	r2, (r3, 0xc)
    3224:	6884      	and      	r2, r1
    3226:	3a40      	cmpnei      	r2, 0
    3228:	0c03      	bf      	0x322e	// 322e <UART1IntHandler+0x16>
	{
		UART1->ISR=UART_RX_IOV_S;
	}
	else if ((UART1->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
	{
		UART1->ISR=UART_TX_IOV_S;
    322a:	b323      	st.w      	r1, (r3, 0xc)
	}
}
    322c:	0410      	br      	0x324c	// 324c <UART1IntHandler+0x34>
	else if( (UART1->ISR&UART_TX_INT_S)==UART_TX_INT_S ) 		//TX interrupt
    322e:	9343      	ld.w      	r2, (r3, 0xc)
    3230:	3101      	movi      	r1, 1
    3232:	6884      	and      	r2, r1
    3234:	3a40      	cmpnei      	r2, 0
    3236:	0bfa      	bt      	0x322a	// 322a <UART1IntHandler+0x12>
	else if ((UART1->ISR&UART_RX_IOV_S)==UART_RX_IOV_S)			//RX overrun interrupt
    3238:	9343      	ld.w      	r2, (r3, 0xc)
    323a:	3108      	movi      	r1, 8
    323c:	6884      	and      	r2, r1
    323e:	3a40      	cmpnei      	r2, 0
    3240:	0bf5      	bt      	0x322a	// 322a <UART1IntHandler+0x12>
	else if ((UART1->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
    3242:	9343      	ld.w      	r2, (r3, 0xc)
    3244:	3104      	movi      	r1, 4
    3246:	6884      	and      	r2, r1
    3248:	3a40      	cmpnei      	r2, 0
    324a:	0bf0      	bt      	0x322a	// 322a <UART1IntHandler+0x12>
}
    324c:	1463      	ipop
    324e:	1461      	nir
    3250:	20000040 	.long	0x20000040

Disassembly of section .text.UART2IntHandler:

00003254 <UART2IntHandler>:
//UART2 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART2IntHandler(void) 
{
    3254:	1460      	nie
    3256:	1462      	ipush
    // ISR content ...
	if ((UART2->ISR&UART_RX_INT_S)==UART_RX_INT_S)				//RX interrupt
    3258:	106d      	lrw      	r3, 0x2000003c	// 328c <UART2IntHandler+0x38>
    325a:	3102      	movi      	r1, 2
    325c:	9360      	ld.w      	r3, (r3, 0x0)
    325e:	9343      	ld.w      	r2, (r3, 0xc)
    3260:	6884      	and      	r2, r1
    3262:	3a40      	cmpnei      	r2, 0
    3264:	0c03      	bf      	0x326a	// 326a <UART2IntHandler+0x16>
	{
		UART2->ISR=UART_RX_IOV_S;
	}
	else if ((UART2->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
	{
		UART2->ISR=UART_TX_IOV_S;
    3266:	b323      	st.w      	r1, (r3, 0xc)
	}
}
    3268:	0410      	br      	0x3288	// 3288 <UART2IntHandler+0x34>
	else if( (UART2->ISR&UART_TX_INT_S)==UART_TX_INT_S ) 		//TX interrupt
    326a:	9343      	ld.w      	r2, (r3, 0xc)
    326c:	3101      	movi      	r1, 1
    326e:	6884      	and      	r2, r1
    3270:	3a40      	cmpnei      	r2, 0
    3272:	0bfa      	bt      	0x3266	// 3266 <UART2IntHandler+0x12>
	else if ((UART2->ISR&UART_RX_IOV_S)==UART_RX_IOV_S)			//RX overrun interrupt
    3274:	9343      	ld.w      	r2, (r3, 0xc)
    3276:	3108      	movi      	r1, 8
    3278:	6884      	and      	r2, r1
    327a:	3a40      	cmpnei      	r2, 0
    327c:	0bf5      	bt      	0x3266	// 3266 <UART2IntHandler+0x12>
	else if ((UART2->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
    327e:	9343      	ld.w      	r2, (r3, 0xc)
    3280:	3104      	movi      	r1, 4
    3282:	6884      	and      	r2, r1
    3284:	3a40      	cmpnei      	r2, 0
    3286:	0bf0      	bt      	0x3266	// 3266 <UART2IntHandler+0x12>
}
    3288:	1463      	ipop
    328a:	1461      	nir
    328c:	2000003c 	.long	0x2000003c

Disassembly of section .text.SPI0IntHandler:

00003290 <SPI0IntHandler>:
//SPI Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SPI0IntHandler(void) 
{
    3290:	1460      	nie
    3292:	1462      	ipush
    // ISR content ...
	if((SPI0->MISR&SPI_PORIM)==SPI_PORIM)					//Receive Overrun Interrupt
    3294:	1178      	lrw      	r3, 0x20000038	// 3374 <SPI0IntHandler+0xe4>
    3296:	3101      	movi      	r1, 1
    3298:	9360      	ld.w      	r3, (r3, 0x0)
    329a:	9347      	ld.w      	r2, (r3, 0x1c)
    329c:	6884      	and      	r2, r1
    329e:	3a40      	cmpnei      	r2, 0
    32a0:	0c03      	bf      	0x32a6	// 32a6 <SPI0IntHandler+0x16>
			}
		}
	}
	else if((SPI0->MISR&SPI_TXIM)==SPI_TXIM)				//Transmit FIFO Interrupt
	{
		SPI0->ICR = SPI_TXIM;
    32a2:	b328      	st.w      	r1, (r3, 0x20)
	}

}
    32a4:	0407      	br      	0x32b2	// 32b2 <SPI0IntHandler+0x22>
	else if((SPI0->MISR&SPI_RTIM)==SPI_RTIM)				//Receive Timeout Interrupt
    32a6:	9347      	ld.w      	r2, (r3, 0x1c)
    32a8:	3002      	movi      	r0, 2
    32aa:	6880      	and      	r2, r0
    32ac:	3a40      	cmpnei      	r2, 0
    32ae:	0c04      	bf      	0x32b6	// 32b6 <SPI0IntHandler+0x26>
		SPI0->ICR = SPI_RTIM;
    32b0:	b308      	st.w      	r0, (r3, 0x20)
}
    32b2:	1463      	ipop
    32b4:	1461      	nir
	else if((SPI0->MISR&SPI_RXIM)==SPI_RXIM)				//Receive FIFO Interrupt,FIFO can be set 1/8,1/4,1/2 FIFO Interrupt
    32b6:	9347      	ld.w      	r2, (r3, 0x1c)
    32b8:	3004      	movi      	r0, 4
    32ba:	6880      	and      	r2, r0
    32bc:	3a40      	cmpnei      	r2, 0
    32be:	0c55      	bf      	0x3368	// 3368 <SPI0IntHandler+0xd8>
		SPI0->ICR = SPI_RXIM;
    32c0:	b308      	st.w      	r0, (r3, 0x20)
		if(SPI0->DR==0xaa)
    32c2:	9302      	ld.w      	r0, (r3, 0x8)
    32c4:	32aa      	movi      	r2, 170
    32c6:	6482      	cmpne      	r0, r2
    32c8:	083e      	bt      	0x3344	// 3344 <SPI0IntHandler+0xb4>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    32ca:	3102      	movi      	r1, 2
    32cc:	9343      	ld.w      	r2, (r3, 0xc)
    32ce:	6884      	and      	r2, r1
    32d0:	3a40      	cmpnei      	r2, 0
    32d2:	0ffd      	bf      	0x32cc	// 32cc <SPI0IntHandler+0x3c>
			SPI0->DR = 0x11;
    32d4:	3211      	movi      	r2, 17
    32d6:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    32d8:	3110      	movi      	r1, 16
    32da:	9343      	ld.w      	r2, (r3, 0xc)
    32dc:	6884      	and      	r2, r1
    32de:	3a40      	cmpnei      	r2, 0
    32e0:	0bfd      	bt      	0x32da	// 32da <SPI0IntHandler+0x4a>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    32e2:	3102      	movi      	r1, 2
    32e4:	9343      	ld.w      	r2, (r3, 0xc)
    32e6:	6884      	and      	r2, r1
    32e8:	3a40      	cmpnei      	r2, 0
    32ea:	0ffd      	bf      	0x32e4	// 32e4 <SPI0IntHandler+0x54>
			SPI0->DR = 0x12;
    32ec:	3212      	movi      	r2, 18
    32ee:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    32f0:	3110      	movi      	r1, 16
    32f2:	9343      	ld.w      	r2, (r3, 0xc)
    32f4:	6884      	and      	r2, r1
    32f6:	3a40      	cmpnei      	r2, 0
    32f8:	0bfd      	bt      	0x32f2	// 32f2 <SPI0IntHandler+0x62>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    32fa:	3102      	movi      	r1, 2
    32fc:	9343      	ld.w      	r2, (r3, 0xc)
    32fe:	6884      	and      	r2, r1
    3300:	3a40      	cmpnei      	r2, 0
    3302:	0ffd      	bf      	0x32fc	// 32fc <SPI0IntHandler+0x6c>
			SPI0->DR = 0x13;
    3304:	3213      	movi      	r2, 19
    3306:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    3308:	3110      	movi      	r1, 16
    330a:	9343      	ld.w      	r2, (r3, 0xc)
    330c:	6884      	and      	r2, r1
    330e:	3a40      	cmpnei      	r2, 0
    3310:	0bfd      	bt      	0x330a	// 330a <SPI0IntHandler+0x7a>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    3312:	3102      	movi      	r1, 2
    3314:	9343      	ld.w      	r2, (r3, 0xc)
    3316:	6884      	and      	r2, r1
    3318:	3a40      	cmpnei      	r2, 0
    331a:	0ffd      	bf      	0x3314	// 3314 <SPI0IntHandler+0x84>
			SPI0->DR = 0x14;
    331c:	3214      	movi      	r2, 20
    331e:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    3320:	3110      	movi      	r1, 16
    3322:	9343      	ld.w      	r2, (r3, 0xc)
    3324:	6884      	and      	r2, r1
    3326:	3a40      	cmpnei      	r2, 0
    3328:	0bfd      	bt      	0x3322	// 3322 <SPI0IntHandler+0x92>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    332a:	3102      	movi      	r1, 2
    332c:	9343      	ld.w      	r2, (r3, 0xc)
    332e:	6884      	and      	r2, r1
    3330:	3a40      	cmpnei      	r2, 0
    3332:	0ffd      	bf      	0x332c	// 332c <SPI0IntHandler+0x9c>
			SPI0->DR = 0x15;
    3334:	3215      	movi      	r2, 21
    3336:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    3338:	3110      	movi      	r1, 16
    333a:	9343      	ld.w      	r2, (r3, 0xc)
    333c:	6884      	and      	r2, r1
    333e:	3a40      	cmpnei      	r2, 0
    3340:	0bfd      	bt      	0x333a	// 333a <SPI0IntHandler+0xaa>
    3342:	07b8      	br      	0x32b2	// 32b2 <SPI0IntHandler+0x22>
			if(((SPI0->SR) & SSP_TFE)!=SSP_TFE)
    3344:	9343      	ld.w      	r2, (r3, 0xc)
    3346:	6884      	and      	r2, r1
    3348:	3a40      	cmpnei      	r2, 0
    334a:	0bb4      	bt      	0x32b2	// 32b2 <SPI0IntHandler+0x22>
				SPI0->DR=0x0;								//FIFO=0
    334c:	b342      	st.w      	r2, (r3, 0x8)
				while(((SPI0->SR) & SSP_BSY) == SSP_BSY);		//Send or receive over？
    334e:	3110      	movi      	r1, 16
				SPI0->DR=0x0;								//FIFO=0
    3350:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    3352:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    3354:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    3356:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    3358:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    335a:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    335c:	b342      	st.w      	r2, (r3, 0x8)
				while(((SPI0->SR) & SSP_BSY) == SSP_BSY);		//Send or receive over？
    335e:	9343      	ld.w      	r2, (r3, 0xc)
    3360:	6884      	and      	r2, r1
    3362:	3a40      	cmpnei      	r2, 0
    3364:	0bfd      	bt      	0x335e	// 335e <SPI0IntHandler+0xce>
    3366:	07a6      	br      	0x32b2	// 32b2 <SPI0IntHandler+0x22>
	else if((SPI0->MISR&SPI_TXIM)==SPI_TXIM)				//Transmit FIFO Interrupt
    3368:	9347      	ld.w      	r2, (r3, 0x1c)
    336a:	3108      	movi      	r1, 8
    336c:	6884      	and      	r2, r1
    336e:	3a40      	cmpnei      	r2, 0
    3370:	0b99      	bt      	0x32a2	// 32a2 <SPI0IntHandler+0x12>
    3372:	07a0      	br      	0x32b2	// 32b2 <SPI0IntHandler+0x22>
    3374:	20000038 	.long	0x20000038

Disassembly of section .text.SIO0IntHandler:

00003378 <SIO0IntHandler>:
//SIO Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SIO0IntHandler(void) 
{
    3378:	1460      	nie
    337a:	1462      	ipush
		delay_nms(10);
		SIO0->TXBUF=(0x03<<30)|(0x02<<28)|(0x03<<26)|(0x02<<24)|(0x03<<22)|(0x02<<20)|(0x03<<18)|(0x02<<16)|
				(0x01<<14)|(0x00<<12)|(0x01<<10)|(0x00<<8)|(0x01<<6)|(0x00<<4)|(0x01<<2)|(0x0<<0);		//0:D0,1:D1,2:DL,3:DH;	
	}*/
	
	if(SIO0->MISR&0X02)					//RXDNE
    337c:	107d      	lrw      	r3, 0x20000030	// 33f0 <SIO0IntHandler+0x78>
    337e:	3102      	movi      	r1, 2
    3380:	9360      	ld.w      	r3, (r3, 0x0)
    3382:	9349      	ld.w      	r2, (r3, 0x24)
    3384:	6884      	and      	r2, r1
    3386:	3a40      	cmpnei      	r2, 0
    3388:	0c13      	bf      	0x33ae	// 33ae <SIO0IntHandler+0x36>
	{
		SIO0->ICR=0X02;
    338a:	b32b      	st.w      	r1, (r3, 0x2c)
		if(R_SIORX_count>=1)
    338c:	101a      	lrw      	r0, 0x200001c0	// 33f4 <SIO0IntHandler+0x7c>
    338e:	9040      	ld.w      	r2, (r0, 0x0)
    3390:	3a20      	cmplti      	r2, 1
    3392:	080c      	bt      	0x33aa	// 33aa <SIO0IntHandler+0x32>
		{
			R_SIORX_buf[R_SIORX_count]=SIO0->RXBUF&0xff000000;			//8bit
    3394:	9040      	ld.w      	r2, (r0, 0x0)
    3396:	9327      	ld.w      	r1, (r3, 0x1c)
    3398:	4938      	lsri      	r1, r1, 24
    339a:	4262      	lsli      	r3, r2, 2
    339c:	1057      	lrw      	r2, 0x200001c4	// 33f8 <SIO0IntHandler+0x80>
    339e:	4138      	lsli      	r1, r1, 24
    33a0:	60c8      	addu      	r3, r2
    33a2:	b320      	st.w      	r1, (r3, 0x0)
			nop;
    33a4:	6c03      	mov      	r0, r0
			R_SIORX_count=0;
    33a6:	3300      	movi      	r3, 0
    33a8:	b060      	st.w      	r3, (r0, 0x0)
	}
	else if(SIO0->MISR&0X020)				//TIMEOUT
	{
		SIO0->ICR=0X20;
	}
}
    33aa:	1463      	ipop
    33ac:	1461      	nir
	else if(SIO0->MISR&0X08)					//RXBUFFULL	
    33ae:	9349      	ld.w      	r2, (r3, 0x24)
    33b0:	3108      	movi      	r1, 8
    33b2:	6884      	and      	r2, r1
    33b4:	3a40      	cmpnei      	r2, 0
    33b6:	0c10      	bf      	0x33d6	// 33d6 <SIO0IntHandler+0x5e>
		SIO0->ICR=0X08;
    33b8:	b32b      	st.w      	r1, (r3, 0x2c)
		if(R_SIORX_count<1)
    33ba:	102f      	lrw      	r1, 0x200001c0	// 33f4 <SIO0IntHandler+0x7c>
    33bc:	9140      	ld.w      	r2, (r1, 0x0)
    33be:	3a20      	cmplti      	r2, 1
    33c0:	0ff5      	bf      	0x33aa	// 33aa <SIO0IntHandler+0x32>
			R_SIORX_buf[R_SIORX_count]=SIO0->RXBUF;				//32bit
    33c2:	9140      	ld.w      	r2, (r1, 0x0)
    33c4:	9307      	ld.w      	r0, (r3, 0x1c)
    33c6:	4262      	lsli      	r3, r2, 2
    33c8:	104c      	lrw      	r2, 0x200001c4	// 33f8 <SIO0IntHandler+0x80>
    33ca:	60c8      	addu      	r3, r2
    33cc:	b300      	st.w      	r0, (r3, 0x0)
			R_SIORX_count++;
    33ce:	9160      	ld.w      	r3, (r1, 0x0)
    33d0:	2300      	addi      	r3, 1
    33d2:	b160      	st.w      	r3, (r1, 0x0)
    33d4:	07eb      	br      	0x33aa	// 33aa <SIO0IntHandler+0x32>
	else if(SIO0->MISR&0X010)				//BREAK
    33d6:	9349      	ld.w      	r2, (r3, 0x24)
    33d8:	3110      	movi      	r1, 16
    33da:	6884      	and      	r2, r1
    33dc:	3a40      	cmpnei      	r2, 0
    33de:	0c03      	bf      	0x33e4	// 33e4 <SIO0IntHandler+0x6c>
		SIO0->ICR=0X20;
    33e0:	b32b      	st.w      	r1, (r3, 0x2c)
}
    33e2:	07e4      	br      	0x33aa	// 33aa <SIO0IntHandler+0x32>
	else if(SIO0->MISR&0X020)				//TIMEOUT
    33e4:	9349      	ld.w      	r2, (r3, 0x24)
    33e6:	3120      	movi      	r1, 32
    33e8:	6884      	and      	r2, r1
    33ea:	3a40      	cmpnei      	r2, 0
    33ec:	0bfa      	bt      	0x33e0	// 33e0 <SIO0IntHandler+0x68>
    33ee:	07de      	br      	0x33aa	// 33aa <SIO0IntHandler+0x32>
    33f0:	20000030 	.long	0x20000030
    33f4:	200001c0 	.long	0x200001c0
    33f8:	200001c4 	.long	0x200001c4

Disassembly of section .text.EXI0IntHandler:

000033fc <EXI0IntHandler>:
//EXT0/16 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI0IntHandler(void) 
{
    33fc:	1460      	nie
    33fe:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN0)==EXI_PIN0) 			//EXT0 Interrupt
    3400:	106a      	lrw      	r3, 0x20000060	// 3428 <EXI0IntHandler+0x2c>
    3402:	3101      	movi      	r1, 1
    3404:	9360      	ld.w      	r3, (r3, 0x0)
    3406:	237f      	addi      	r3, 128
    3408:	934c      	ld.w      	r2, (r3, 0x30)
    340a:	6884      	and      	r2, r1
    340c:	3a40      	cmpnei      	r2, 0
    340e:	0c04      	bf      	0x3416	// 3416 <EXI0IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN0;
    3410:	b32b      	st.w      	r1, (r3, 0x2c)
	}
	else if ((SYSCON->EXIRS&EXI_PIN16)==EXI_PIN16) 		//EXT16 Interrupt
	{
		SYSCON->EXICR = EXI_PIN16;
	}
}
    3412:	1463      	ipop
    3414:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN16)==EXI_PIN16) 		//EXT16 Interrupt
    3416:	3280      	movi      	r2, 128
    3418:	932c      	ld.w      	r1, (r3, 0x30)
    341a:	4249      	lsli      	r2, r2, 9
    341c:	6848      	and      	r1, r2
    341e:	3940      	cmpnei      	r1, 0
    3420:	0ff9      	bf      	0x3412	// 3412 <EXI0IntHandler+0x16>
		SYSCON->EXICR = EXI_PIN16;
    3422:	b34b      	st.w      	r2, (r3, 0x2c)
}
    3424:	07f7      	br      	0x3412	// 3412 <EXI0IntHandler+0x16>
    3426:	0000      	bkpt
    3428:	20000060 	.long	0x20000060

Disassembly of section .text.EXI1IntHandler:

0000342c <EXI1IntHandler>:
//EXT1/17 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI1IntHandler(void) 
{
    342c:	1460      	nie
    342e:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN1)==EXI_PIN1) 			//EXT1 Interrupt
    3430:	106a      	lrw      	r3, 0x20000060	// 3458 <EXI1IntHandler+0x2c>
    3432:	3102      	movi      	r1, 2
    3434:	9360      	ld.w      	r3, (r3, 0x0)
    3436:	237f      	addi      	r3, 128
    3438:	934c      	ld.w      	r2, (r3, 0x30)
    343a:	6884      	and      	r2, r1
    343c:	3a40      	cmpnei      	r2, 0
    343e:	0c04      	bf      	0x3446	// 3446 <EXI1IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN1;
    3440:	b32b      	st.w      	r1, (r3, 0x2c)
	}
	else if ((SYSCON->EXIRS&EXI_PIN17)==EXI_PIN17) 		//EXT17 Interrupt
	{
		SYSCON->EXICR = EXI_PIN17;
	}
}
    3442:	1463      	ipop
    3444:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN17)==EXI_PIN17) 		//EXT17 Interrupt
    3446:	3280      	movi      	r2, 128
    3448:	932c      	ld.w      	r1, (r3, 0x30)
    344a:	424a      	lsli      	r2, r2, 10
    344c:	6848      	and      	r1, r2
    344e:	3940      	cmpnei      	r1, 0
    3450:	0ff9      	bf      	0x3442	// 3442 <EXI1IntHandler+0x16>
		SYSCON->EXICR = EXI_PIN17;
    3452:	b34b      	st.w      	r2, (r3, 0x2c)
}
    3454:	07f7      	br      	0x3442	// 3442 <EXI1IntHandler+0x16>
    3456:	0000      	bkpt
    3458:	20000060 	.long	0x20000060

Disassembly of section .text.EXI2to3IntHandler:

0000345c <EXI2to3IntHandler>:
//EXI2~3 18~19Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI2to3IntHandler(void) 
{
    345c:	1460      	nie
    345e:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN2)==EXI_PIN2) 			//EXT2 Interrupt
    3460:	1070      	lrw      	r3, 0x20000060	// 34a0 <EXI2to3IntHandler+0x44>
    3462:	3104      	movi      	r1, 4
    3464:	9360      	ld.w      	r3, (r3, 0x0)
    3466:	237f      	addi      	r3, 128
    3468:	934c      	ld.w      	r2, (r3, 0x30)
    346a:	6884      	and      	r2, r1
    346c:	3a40      	cmpnei      	r2, 0
    346e:	0c04      	bf      	0x3476	// 3476 <EXI2to3IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN2;
	} 
	else if ((SYSCON->EXIRS&EXI_PIN3)==EXI_PIN3) 		//EXT3 Interrupt
	{
		SYSCON->EXICR = EXI_PIN3;
    3470:	b32b      	st.w      	r1, (r3, 0x2c)
	}
	else if ((SYSCON->EXIRS&EXI_PIN19)==EXI_PIN19) 		//EXT19 Interrupt
	{
		SYSCON->EXICR = EXI_PIN19;
	}
}
    3472:	1463      	ipop
    3474:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN3)==EXI_PIN3) 		//EXT3 Interrupt
    3476:	934c      	ld.w      	r2, (r3, 0x30)
    3478:	3108      	movi      	r1, 8
    347a:	6884      	and      	r2, r1
    347c:	3a40      	cmpnei      	r2, 0
    347e:	0bf9      	bt      	0x3470	// 3470 <EXI2to3IntHandler+0x14>
	else if ((SYSCON->EXIRS&EXI_PIN18)==EXI_PIN18) 		//EXT18 Interrupt
    3480:	3280      	movi      	r2, 128
    3482:	932c      	ld.w      	r1, (r3, 0x30)
    3484:	424b      	lsli      	r2, r2, 11
    3486:	6848      	and      	r1, r2
    3488:	3940      	cmpnei      	r1, 0
    348a:	0c03      	bf      	0x3490	// 3490 <EXI2to3IntHandler+0x34>
		SYSCON->EXICR = EXI_PIN19;
    348c:	b34b      	st.w      	r2, (r3, 0x2c)
}
    348e:	07f2      	br      	0x3472	// 3472 <EXI2to3IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN19)==EXI_PIN19) 		//EXT19 Interrupt
    3490:	3280      	movi      	r2, 128
    3492:	932c      	ld.w      	r1, (r3, 0x30)
    3494:	424c      	lsli      	r2, r2, 12
    3496:	6848      	and      	r1, r2
    3498:	3940      	cmpnei      	r1, 0
    349a:	0bf9      	bt      	0x348c	// 348c <EXI2to3IntHandler+0x30>
    349c:	07eb      	br      	0x3472	// 3472 <EXI2to3IntHandler+0x16>
    349e:	0000      	bkpt
    34a0:	20000060 	.long	0x20000060

Disassembly of section .text.EXI4to9IntHandler:

000034a4 <EXI4to9IntHandler>:
//EXI4~9 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI4to9IntHandler(void) 
{
    34a4:	1460      	nie
    34a6:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN4)==EXI_PIN4) 			//EXT4 Interrupt
    34a8:	1075      	lrw      	r3, 0x20000060	// 34fc <EXI4to9IntHandler+0x58>
    34aa:	3280      	movi      	r2, 128
    34ac:	9360      	ld.w      	r3, (r3, 0x0)
    34ae:	60c8      	addu      	r3, r2
    34b0:	932c      	ld.w      	r1, (r3, 0x30)
    34b2:	3010      	movi      	r0, 16
    34b4:	6840      	and      	r1, r0
    34b6:	3940      	cmpnei      	r1, 0
    34b8:	0c04      	bf      	0x34c0	// 34c0 <EXI4to9IntHandler+0x1c>
	{
		SYSCON->EXICR = EXI_PIN5;
	} 
	else if ((SYSCON->EXIRS&EXI_PIN6)==EXI_PIN6) 		//EXT6 Interrupt
	{
		SYSCON->EXICR = EXI_PIN6;
    34ba:	b30b      	st.w      	r0, (r3, 0x2c)
	else if ((SYSCON->EXIRS&EXI_PIN9)==EXI_PIN9) 		//EXT9 Interrupt
	{
		SYSCON->EXICR = EXI_PIN9;
	} 

}
    34bc:	1463      	ipop
    34be:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN5)==EXI_PIN5) 		//EXT5 Interrupt
    34c0:	932c      	ld.w      	r1, (r3, 0x30)
    34c2:	3020      	movi      	r0, 32
    34c4:	6840      	and      	r1, r0
    34c6:	3940      	cmpnei      	r1, 0
    34c8:	0bf9      	bt      	0x34ba	// 34ba <EXI4to9IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN6)==EXI_PIN6) 		//EXT6 Interrupt
    34ca:	932c      	ld.w      	r1, (r3, 0x30)
    34cc:	3040      	movi      	r0, 64
    34ce:	6840      	and      	r1, r0
    34d0:	3940      	cmpnei      	r1, 0
    34d2:	0bf4      	bt      	0x34ba	// 34ba <EXI4to9IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN7)==EXI_PIN7) 		//EXT7 Interrupt
    34d4:	932c      	ld.w      	r1, (r3, 0x30)
    34d6:	6848      	and      	r1, r2
    34d8:	3940      	cmpnei      	r1, 0
    34da:	0c03      	bf      	0x34e0	// 34e0 <EXI4to9IntHandler+0x3c>
		SYSCON->EXICR = EXI_PIN9;
    34dc:	b34b      	st.w      	r2, (r3, 0x2c)
}
    34de:	07ef      	br      	0x34bc	// 34bc <EXI4to9IntHandler+0x18>
	else if ((SYSCON->EXIRS&EXI_PIN8)==EXI_PIN8) 		//EXT8 Interrupt
    34e0:	3280      	movi      	r2, 128
    34e2:	932c      	ld.w      	r1, (r3, 0x30)
    34e4:	4241      	lsli      	r2, r2, 1
    34e6:	6848      	and      	r1, r2
    34e8:	3940      	cmpnei      	r1, 0
    34ea:	0bf9      	bt      	0x34dc	// 34dc <EXI4to9IntHandler+0x38>
	else if ((SYSCON->EXIRS&EXI_PIN9)==EXI_PIN9) 		//EXT9 Interrupt
    34ec:	3280      	movi      	r2, 128
    34ee:	932c      	ld.w      	r1, (r3, 0x30)
    34f0:	4242      	lsli      	r2, r2, 2
    34f2:	6848      	and      	r1, r2
    34f4:	3940      	cmpnei      	r1, 0
    34f6:	0bf3      	bt      	0x34dc	// 34dc <EXI4to9IntHandler+0x38>
    34f8:	07e2      	br      	0x34bc	// 34bc <EXI4to9IntHandler+0x18>
    34fa:	0000      	bkpt
    34fc:	20000060 	.long	0x20000060

Disassembly of section .text.EXI10to15IntHandler:

00003500 <EXI10to15IntHandler>:
//EXI4 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI10to15IntHandler(void) 
{
    3500:	1460      	nie
    3502:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN10)==EXI_PIN10) 			//EXT10 Interrupt
    3504:	1076      	lrw      	r3, 0x20000060	// 355c <EXI10to15IntHandler+0x5c>
    3506:	3280      	movi      	r2, 128
    3508:	9360      	ld.w      	r3, (r3, 0x0)
    350a:	237f      	addi      	r3, 128
    350c:	932c      	ld.w      	r1, (r3, 0x30)
    350e:	4243      	lsli      	r2, r2, 3
    3510:	6848      	and      	r1, r2
    3512:	3940      	cmpnei      	r1, 0
    3514:	0c03      	bf      	0x351a	// 351a <EXI10to15IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN14;
	}
	else if ((SYSCON->EXIRS&EXI_PIN15)==EXI_PIN15) 		//EXT15 Interrupt
	{
		SYSCON->EXICR = EXI_PIN15;
    3516:	b34b      	st.w      	r2, (r3, 0x2c)
	}
}
    3518:	041f      	br      	0x3556	// 3556 <EXI10to15IntHandler+0x56>
	else if ((SYSCON->EXIRS&EXI_PIN11)==EXI_PIN11) 		//EXT11 Interrupt
    351a:	3280      	movi      	r2, 128
    351c:	932c      	ld.w      	r1, (r3, 0x30)
    351e:	4244      	lsli      	r2, r2, 4
    3520:	6848      	and      	r1, r2
    3522:	3940      	cmpnei      	r1, 0
    3524:	0bf9      	bt      	0x3516	// 3516 <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN12)==EXI_PIN12) 		//EXT12 Interrupt
    3526:	3280      	movi      	r2, 128
    3528:	932c      	ld.w      	r1, (r3, 0x30)
    352a:	4245      	lsli      	r2, r2, 5
    352c:	6848      	and      	r1, r2
    352e:	3940      	cmpnei      	r1, 0
    3530:	0bf3      	bt      	0x3516	// 3516 <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN13)==EXI_PIN13) 		//EXT13 Interrupt
    3532:	3280      	movi      	r2, 128
    3534:	932c      	ld.w      	r1, (r3, 0x30)
    3536:	4246      	lsli      	r2, r2, 6
    3538:	6848      	and      	r1, r2
    353a:	3940      	cmpnei      	r1, 0
    353c:	0bed      	bt      	0x3516	// 3516 <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN14)==EXI_PIN14) 		//EXT14 Interrupt
    353e:	3280      	movi      	r2, 128
    3540:	932c      	ld.w      	r1, (r3, 0x30)
    3542:	4247      	lsli      	r2, r2, 7
    3544:	6848      	and      	r1, r2
    3546:	3940      	cmpnei      	r1, 0
    3548:	0be7      	bt      	0x3516	// 3516 <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN15)==EXI_PIN15) 		//EXT15 Interrupt
    354a:	3280      	movi      	r2, 128
    354c:	932c      	ld.w      	r1, (r3, 0x30)
    354e:	4248      	lsli      	r2, r2, 8
    3550:	6848      	and      	r1, r2
    3552:	3940      	cmpnei      	r1, 0
    3554:	0be1      	bt      	0x3516	// 3516 <EXI10to15IntHandler+0x16>
}
    3556:	1463      	ipop
    3558:	1461      	nir
    355a:	0000      	bkpt
    355c:	20000060 	.long	0x20000060

Disassembly of section .text.LPTIntHandler:

00003560 <LPTIntHandler>:
//LPT Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void LPTIntHandler(void) 
{
    3560:	1460      	nie
    3562:	1462      	ipush
    // ISR content ...
	if((LPT->MISR&LPT_TRGEV0)==LPT_TRGEV0)			//TRGEV0 interrupt
    3564:	106b      	lrw      	r3, 0x20000018	// 3590 <LPTIntHandler+0x30>
    3566:	3101      	movi      	r1, 1
    3568:	9360      	ld.w      	r3, (r3, 0x0)
    356a:	934e      	ld.w      	r2, (r3, 0x38)
    356c:	6884      	and      	r2, r1
    356e:	3a40      	cmpnei      	r2, 0
    3570:	0c03      	bf      	0x3576	// 3576 <LPTIntHandler+0x16>
	{
		LPT->ICR = LPT_MATCH;
	}
	else if((LPT->MISR&LPT_PEND)==LPT_PEND)			//PEND interrupt
	{
		LPT->ICR = LPT_PEND;
    3572:	b330      	st.w      	r1, (r3, 0x40)
	}
}
    3574:	040b      	br      	0x358a	// 358a <LPTIntHandler+0x2a>
	else if((LPT->MISR&LPT_MATCH)==LPT_MATCH)		//MATCH interrupt
    3576:	934e      	ld.w      	r2, (r3, 0x38)
    3578:	3102      	movi      	r1, 2
    357a:	6884      	and      	r2, r1
    357c:	3a40      	cmpnei      	r2, 0
    357e:	0bfa      	bt      	0x3572	// 3572 <LPTIntHandler+0x12>
	else if((LPT->MISR&LPT_PEND)==LPT_PEND)			//PEND interrupt
    3580:	934e      	ld.w      	r2, (r3, 0x38)
    3582:	3104      	movi      	r1, 4
    3584:	6884      	and      	r2, r1
    3586:	3a40      	cmpnei      	r2, 0
    3588:	0bf5      	bt      	0x3572	// 3572 <LPTIntHandler+0x12>
}
    358a:	1463      	ipop
    358c:	1461      	nir
    358e:	0000      	bkpt
    3590:	20000018 	.long	0x20000018

Disassembly of section .text.BT0IntHandler:

00003594 <BT0IntHandler>:
//BT0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void BT0IntHandler(void) 
{
    3594:	1460      	nie
    3596:	1462      	ipush
    3598:	14d0      	push      	r15
    // ISR content ...
	if((BT0->MISR&BT_PEND)==BT_PEND)				//BT0 PEND interrupt
    359a:	1073      	lrw      	r3, 0x20000010	// 35e4 <BT0IntHandler+0x50>
    359c:	3101      	movi      	r1, 1
    359e:	9360      	ld.w      	r3, (r3, 0x0)
    35a0:	934c      	ld.w      	r2, (r3, 0x30)
    35a2:	6884      	and      	r2, r1
    35a4:	3a40      	cmpnei      	r2, 0
    35a6:	0c0d      	bf      	0x35c0	// 35c0 <BT0IntHandler+0x2c>
	{
		BT0->ICR = BT_PEND;
		bldc.timer_phase++;
    35a8:	1050      	lrw      	r2, 0x200001f4	// 35e8 <BT0IntHandler+0x54>
		BT0->ICR = BT_PEND;
    35aa:	b32d      	st.w      	r1, (r3, 0x34)
		bldc.timer_phase++;
    35ac:	8a6e      	ld.h      	r3, (r2, 0x1c)
    35ae:	2300      	addi      	r3, 1
    35b0:	aa6e      	st.h      	r3, (r2, 0x1c)
		adc_get();
    35b2:	e00001d5 	bsr      	0x395c	// 395c <adc_get>
	} 
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT0 Event trigger interrupt
	{
		BT0->ICR = BT_EVTRG;
	} 
}
    35b6:	d9ee2000 	ld.w      	r15, (r14, 0x0)
    35ba:	1401      	addi      	r14, r14, 4
    35bc:	1463      	ipop
    35be:	1461      	nir
	else if((BT0->MISR&BT_CMP)==BT_CMP)				//BT0 CMP Match interrupt 
    35c0:	934c      	ld.w      	r2, (r3, 0x30)
    35c2:	3102      	movi      	r1, 2
    35c4:	6884      	and      	r2, r1
    35c6:	3a40      	cmpnei      	r2, 0
    35c8:	0c03      	bf      	0x35ce	// 35ce <BT0IntHandler+0x3a>
		BT0->ICR = BT_EVTRG;
    35ca:	b32d      	st.w      	r1, (r3, 0x34)
}
    35cc:	07f5      	br      	0x35b6	// 35b6 <BT0IntHandler+0x22>
	else if((BT0->MISR&BT_OVF)==BT_OVF)				//BT0 OVF interrupt
    35ce:	934c      	ld.w      	r2, (r3, 0x30)
    35d0:	3104      	movi      	r1, 4
    35d2:	6884      	and      	r2, r1
    35d4:	3a40      	cmpnei      	r2, 0
    35d6:	0bfa      	bt      	0x35ca	// 35ca <BT0IntHandler+0x36>
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT0 Event trigger interrupt
    35d8:	934c      	ld.w      	r2, (r3, 0x30)
    35da:	3108      	movi      	r1, 8
    35dc:	6884      	and      	r2, r1
    35de:	3a40      	cmpnei      	r2, 0
    35e0:	0bf5      	bt      	0x35ca	// 35ca <BT0IntHandler+0x36>
    35e2:	07ea      	br      	0x35b6	// 35b6 <BT0IntHandler+0x22>
    35e4:	20000010 	.long	0x20000010
    35e8:	200001f4 	.long	0x200001f4

Disassembly of section .text.BT1IntHandler:

000035ec <BT1IntHandler>:
//BT1 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void BT1IntHandler(void) 
{
    35ec:	1460      	nie
    35ee:	1462      	ipush
    // ISR content ...
	if((BT1->MISR&BT_PEND)==BT_PEND)				//BT1 PEND interrupt
    35f0:	1071      	lrw      	r3, 0x2000000c	// 3634 <BT1IntHandler+0x48>
    35f2:	3101      	movi      	r1, 1
    35f4:	9360      	ld.w      	r3, (r3, 0x0)
    35f6:	934c      	ld.w      	r2, (r3, 0x30)
    35f8:	6884      	and      	r2, r1
    35fa:	3a40      	cmpnei      	r2, 0
    35fc:	0c07      	bf      	0x360a	// 360a <BT1IntHandler+0x1e>
	{
		BT1->ICR = BT_PEND;
    35fe:	b32d      	st.w      	r1, (r3, 0x34)
		bldc.task_run = 1;
    3600:	3201      	movi      	r2, 1
    3602:	106e      	lrw      	r3, 0x200001f4	// 3638 <BT1IntHandler+0x4c>
    3604:	a341      	st.b      	r2, (r3, 0x1)
	} 
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT1 Event trigger interrupt
	{
		BT1->ICR = BT_EVTRG;
	} 
}
    3606:	1463      	ipop
    3608:	1461      	nir
	else if((BT0->MISR&BT_CMP)==BT_CMP)				//BT1 CMP Match interrupt 
    360a:	104d      	lrw      	r2, 0x20000010	// 363c <BT1IntHandler+0x50>
    360c:	3002      	movi      	r0, 2
    360e:	9240      	ld.w      	r2, (r2, 0x0)
    3610:	922c      	ld.w      	r1, (r2, 0x30)
    3612:	6840      	and      	r1, r0
    3614:	3940      	cmpnei      	r1, 0
    3616:	0c03      	bf      	0x361c	// 361c <BT1IntHandler+0x30>
		BT1->ICR = BT_OVF;
    3618:	b30d      	st.w      	r0, (r3, 0x34)
    361a:	07f6      	br      	0x3606	// 3606 <BT1IntHandler+0x1a>
	else if((BT0->MISR&BT_OVF)==BT_OVF)				//BT1 OVF interrupt
    361c:	922c      	ld.w      	r1, (r2, 0x30)
    361e:	3004      	movi      	r0, 4
    3620:	6840      	and      	r1, r0
    3622:	3940      	cmpnei      	r1, 0
    3624:	0bfa      	bt      	0x3618	// 3618 <BT1IntHandler+0x2c>
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT1 Event trigger interrupt
    3626:	924c      	ld.w      	r2, (r2, 0x30)
    3628:	3108      	movi      	r1, 8
    362a:	6884      	and      	r2, r1
    362c:	3a40      	cmpnei      	r2, 0
    362e:	0fec      	bf      	0x3606	// 3606 <BT1IntHandler+0x1a>
		BT1->ICR = BT_EVTRG;
    3630:	b32d      	st.w      	r1, (r3, 0x34)
}
    3632:	07ea      	br      	0x3606	// 3606 <BT1IntHandler+0x1a>
    3634:	2000000c 	.long	0x2000000c
    3638:	200001f4 	.long	0x200001f4
    363c:	20000010 	.long	0x20000010

Disassembly of section .text.PriviledgeVioHandler:

00003640 <PriviledgeVioHandler>:
    3640:	783c      	jmp      	r15

Disassembly of section .text.PendTrapHandler:

00003642 <PendTrapHandler>:
    // ISR content ...

}

void PendTrapHandler(void) 
{
    3642:	1460      	nie
    3644:	1462      	ipush
    // ISR content ...

}
    3646:	1463      	ipop
    3648:	1461      	nir

Disassembly of section .text.Trap3Handler:

0000364a <Trap3Handler>:
    364a:	1460      	nie
    364c:	1462      	ipush
    364e:	1463      	ipop
    3650:	1461      	nir

Disassembly of section .text.Trap2Handler:

00003652 <Trap2Handler>:
    3652:	1460      	nie
    3654:	1462      	ipush
    3656:	1463      	ipop
    3658:	1461      	nir

Disassembly of section .text.Trap1Handler:

0000365a <Trap1Handler>:
    365a:	1460      	nie
    365c:	1462      	ipush
    365e:	1463      	ipop
    3660:	1461      	nir

Disassembly of section .text.Trap0Handler:

00003662 <Trap0Handler>:
    3662:	1460      	nie
    3664:	1462      	ipush
    3666:	1463      	ipop
    3668:	1461      	nir

Disassembly of section .text.UnrecExecpHandler:

0000366a <UnrecExecpHandler>:
    366a:	1460      	nie
    366c:	1462      	ipush
    366e:	1463      	ipop
    3670:	1461      	nir

Disassembly of section .text.BreakPointHandler:

00003672 <BreakPointHandler>:
    3672:	1460      	nie
    3674:	1462      	ipush
    3676:	1463      	ipop
    3678:	1461      	nir

Disassembly of section .text.AccessErrHandler:

0000367a <AccessErrHandler>:
    367a:	1460      	nie
    367c:	1462      	ipush
    367e:	1463      	ipop
    3680:	1461      	nir

Disassembly of section .text.IllegalInstrHandler:

00003682 <IllegalInstrHandler>:
    3682:	1460      	nie
    3684:	1462      	ipush
    3686:	1463      	ipop
    3688:	1461      	nir

Disassembly of section .text.MisalignedHandler:

0000368a <MisalignedHandler>:
    368a:	1460      	nie
    368c:	1462      	ipush
    368e:	1463      	ipop
    3690:	1461      	nir

Disassembly of section .text.CNTAIntHandler:

00003692 <CNTAIntHandler>:
    3692:	1460      	nie
    3694:	1462      	ipush
    3696:	1463      	ipop
    3698:	1461      	nir

Disassembly of section .text.I2CIntHandler:

0000369a <I2CIntHandler>:
    369a:	1460      	nie
    369c:	1462      	ipush
    369e:	1463      	ipop
    36a0:	1461      	nir

Disassembly of section .text.startup.main:

000036a4 <main>:

/***************************************************/
//main
/**************************************************/
int main(void) 
{
    36a4:	14d2      	push      	r4-r5, r15
  static U8_T control_start;

  static U16_T timer_debug = 0;


	delay_nms(1000);							//power on delay if needed
    36a6:	30fa      	movi      	r0, 250
    36a8:	4002      	lsli      	r0, r0, 2
    36aa:	e3fff9ff 	bsr      	0x2aa8	// 2aa8 <delay_nms>
	APT32F102_init();							//102 initial
    36ae:	e3fffb23 	bsr      	0x2cf4	// 2cf4 <APT32F102_init>

  
 
  
   
   ADC_CONFIG();
    36b2:	e0000059 	bsr      	0x3764	// 3764 <ADC_CONFIG>
   bldcInit();
    36b6:	e0000089 	bsr      	0x37c8	// 37c8 <bldcInit>
   while (1)
   {
     SYSCON_IWDCNT_Reload();
      if(bldc.task_run == 1)
    36ba:	1182      	lrw      	r4, 0x200001f4	// 3740 <main+0x9c>
        }

        switch(bldc.status)
        {
        case ALIGN:
          timer_align++;
    36bc:	11a2      	lrw      	r5, 0x20000108	// 3744 <main+0xa0>
     SYSCON_IWDCNT_Reload();
    36be:	e3fff3e5 	bsr      	0x1e88	// 1e88 <SYSCON_IWDCNT_Reload>
      if(bldc.task_run == 1)
    36c2:	8461      	ld.b      	r3, (r4, 0x1)
    36c4:	3b41      	cmpnei      	r3, 1
    36c6:	0811      	bt      	0x36e8	// 36e8 <main+0x44>
        printf("%d\n",bldc.timer_phase1);
    36c8:	8c2f      	ld.h      	r1, (r4, 0x1e)
    36ca:	1100      	lrw      	r0, 0x5328	// 3748 <main+0xa4>
    36cc:	e3fff14c 	bsr      	0x1964	// 1964 <__cskyvprintfprintf>
        bldc.task_run = 0;
    36d0:	3300      	movi      	r3, 0
    36d2:	a461      	st.b      	r3, (r4, 0x1)
        if(bldc.timer_stuff)
    36d4:	8c65      	ld.h      	r3, (r4, 0xa)
    36d6:	3b40      	cmpnei      	r3, 0
    36d8:	0c0e      	bf      	0x36f4	// 36f4 <main+0x50>
          bldc.timer_stuff--;
    36da:	2b00      	subi      	r3, 1
    36dc:	ac65      	st.h      	r3, (r4, 0xa)
        switch(bldc.status)
    36de:	9469      	ld.w      	r3, (r4, 0x24)
    36e0:	3b40      	cmpnei      	r3, 0
    36e2:	0c0f      	bf      	0x3700	// 3700 <main+0x5c>
    36e4:	3b41      	cmpnei      	r3, 1
    36e6:	0c1c      	bf      	0x371e	// 371e <main+0x7a>
        }

        
        
      }
      if(bldc.motor_run)
    36e8:	8462      	ld.b      	r3, (r4, 0x2)
    36ea:	3b40      	cmpnei      	r3, 0
    36ec:	0fe9      	bf      	0x36be	// 36be <main+0x1a>
      {
        bldc.motor_run = 0;
    36ee:	3300      	movi      	r3, 0
    36f0:	a462      	st.b      	r3, (r4, 0x2)
    36f2:	07e6      	br      	0x36be	// 36be <main+0x1a>
          bldc.timer_stuff = 200;
    36f4:	32c8      	movi      	r2, 200
          bldc.status = ALIGN;
    36f6:	b469      	st.w      	r3, (r4, 0x24)
          control_start = 1;
    36f8:	3301      	movi      	r3, 1
          bldc.timer_stuff = 200;
    36fa:	ac45      	st.h      	r2, (r4, 0xa)
          control_start = 1;
    36fc:	a560      	st.b      	r3, (r5, 0x0)
    36fe:	07f0      	br      	0x36de	// 36de <main+0x3a>
          timer_align++;
    3700:	8d61      	ld.h      	r3, (r5, 0x2)
    3702:	2300      	addi      	r3, 1
    3704:	ad61      	st.h      	r3, (r5, 0x2)
          bldc.step = 0;
    3706:	3300      	movi      	r3, 0
    3708:	a460      	st.b      	r3, (r4, 0x0)
          stepMoter();
    370a:	e000007f 	bsr      	0x3808	// 3808 <stepMoter>
          if(timer_align > 3)
    370e:	8d61      	ld.h      	r3, (r5, 0x2)
    3710:	3b03      	cmphsi      	r3, 4
    3712:	0feb      	bf      	0x36e8	// 36e8 <main+0x44>
            timer_align = 0;
    3714:	3300      	movi      	r3, 0
    3716:	ad61      	st.h      	r3, (r5, 0x2)
            bldc.status = OPEN;
    3718:	3301      	movi      	r3, 1
            bldc.status = CLOSE;
    371a:	b469      	st.w      	r3, (r4, 0x24)
    371c:	07e6      	br      	0x36e8	// 36e8 <main+0x44>
          blcdStart(&control_start);
    371e:	100a      	lrw      	r0, 0x20000108	// 3744 <main+0xa0>
    3720:	e00001c2 	bsr      	0x3aa4	// 3aa4 <blcdStart>
          timer_close++;
    3724:	8d62      	ld.h      	r3, (r5, 0x4)
    3726:	2300      	addi      	r3, 1
    3728:	74cd      	zexth      	r3, r3
          if (timer_close > 100)
    372a:	3264      	movi      	r2, 100
    372c:	64c8      	cmphs      	r2, r3
    372e:	0c03      	bf      	0x3734	// 3734 <main+0x90>
          timer_close++;
    3730:	ad62      	st.h      	r3, (r5, 0x4)
    3732:	07db      	br      	0x36e8	// 36e8 <main+0x44>
            timer_close = 0;
    3734:	3300      	movi      	r3, 0
    3736:	ad62      	st.h      	r3, (r5, 0x4)
            bldc.xiao = _OK;
    3738:	3302      	movi      	r3, 2
    373a:	b46a      	st.w      	r3, (r4, 0x28)
    373c:	07ef      	br      	0x371a	// 371a <main+0x76>
    373e:	0000      	bkpt
    3740:	200001f4 	.long	0x200001f4
    3744:	20000108 	.long	0x20000108
    3748:	00005328 	.long	0x00005328

Disassembly of section .text.fputc:

0000374c <fputc>:
U16_T last_adc_value[3];
void blcdStart(U8_T*);
void stepMoter(void);
void __putchar__ (char ch) ;
int fputc(int ch, FILE *f)
{
    374c:	14d1      	push      	r4, r15
    UARTTxByte(UART0,ch);	
    374e:	1065      	lrw      	r3, 0x20000044	// 3760 <fputc+0x14>
{
    3750:	6d03      	mov      	r4, r0
    UARTTxByte(UART0,ch);	
    3752:	7440      	zextb      	r1, r0
    3754:	9300      	ld.w      	r0, (r3, 0x0)
    3756:	e3fff578 	bsr      	0x2246	// 2246 <UARTTxByte>
    return (ch);
}
    375a:	6c13      	mov      	r0, r4
    375c:	1491      	pop      	r4, r15
    375e:	0000      	bkpt
    3760:	20000044 	.long	0x20000044

Disassembly of section .text.ADC_CONFIG:

00003764 <ADC_CONFIG>:
{

}

void ADC_CONFIG(void)
{
    3764:	14d0      	push      	r15
    3766:	1422      	subi      	r14, r14, 8
    ADC12_Software_Reset();
    3768:	e3fff7b2 	bsr      	0x26cc	// 26cc <ADC12_Software_Reset>
    ADC12_CLK_CMD(ADC_CLK_CR, ENABLE);                                                  // enable ADC CLK
    376c:	3101      	movi      	r1, 1
    376e:	3002      	movi      	r0, 2
    3770:	e3fff798 	bsr      	0x26a0	// 26a0 <ADC12_CLK_CMD>
    ADC12_Configure_Mode(ADC12_12BIT, Continuous_mode, 0, 6, 2, 3);                     // 12BIT ADC; Continuous mode; Conversion priority selection 0; Holding cycles=6 ;ADC_CLK=PCLK/2*2=0.2us; Number of Conversions=1
    3774:	3303      	movi      	r3, 3
    3776:	b861      	st.w      	r3, (r14, 0x4)
    3778:	3302      	movi      	r3, 2
    377a:	b860      	st.w      	r3, (r14, 0x0)
    377c:	3200      	movi      	r2, 0
    377e:	3306      	movi      	r3, 6
    3780:	3101      	movi      	r1, 1
    3782:	3001      	movi      	r0, 1
    3784:	e3fff7c8 	bsr      	0x2714	// 2714 <ADC12_Configure_Mode>
    ADC12_Configure_VREF_Selecte(ADC12_VREFP_VDD_VREFN_VSS);                        // ADC VREF Positive FVR4.096V,negative VSS
    3788:	3000      	movi      	r0, 0
    378a:	e3fff803 	bsr      	0x2790	// 2790 <ADC12_Configure_VREF_Selecte>
    ADC12_ConversionChannel_Config(CH_A, ADC12_CV_RepeatNum1, ADC12_AVGDIS, 0); // SEQ0 chose ADCIN0, 6 Holding cycles, Average 1 time
    378e:	3300      	movi      	r3, 0
    3790:	3200      	movi      	r2, 0
    3792:	3100      	movi      	r1, 0
    3794:	3001      	movi      	r0, 1
    3796:	e3fff8c9 	bsr      	0x2928	// 2928 <ADC12_ConversionChannel_Config>
    ADC12_ConversionChannel_Config(CH_B, ADC12_CV_RepeatNum1, ADC12_AVGDIS, 1); // SEQ1 chose ADCIN1, 6 Holding cycles , Average 1 time
    379a:	3301      	movi      	r3, 1
    379c:	3200      	movi      	r2, 0
    379e:	3100      	movi      	r1, 0
    37a0:	3002      	movi      	r0, 2
    37a2:	e3fff8c3 	bsr      	0x2928	// 2928 <ADC12_ConversionChannel_Config>
    ADC12_ConversionChannel_Config(CH_C, ADC12_CV_RepeatNum1, ADC12_AVGDIS, 2); // SEQ1 chose ADCIN1, 6 Holding cycles , Average 1 time
    37a6:	3302      	movi      	r3, 2
    37a8:	3200      	movi      	r2, 0
    37aa:	3100      	movi      	r1, 0
    37ac:	3003      	movi      	r0, 3
    37ae:	e3fff8bd 	bsr      	0x2928	// 2928 <ADC12_ConversionChannel_Config>
    ADC12_CMD(ENABLE);                                                                  // enable ADC
    37b2:	3001      	movi      	r0, 1
    37b4:	e3fff792 	bsr      	0x26d8	// 26d8 <ADC12_CMD>
    ADC12_ready_wait();                                                                 // wait ADC get ready
    37b8:	e3fff7a4 	bsr      	0x2700	// 2700 <ADC12_ready_wait>
    ADC12_Control(ADC12_START);                                                         // ADC convert start
    37bc:	3008      	movi      	r0, 8
    37be:	e3fff759 	bsr      	0x2670	// 2670 <ADC12_Control>
    //    ADC12_ConfigInterrupt_CMD(ADC12_CMP0L, ENABLE);
    //    // ADC12_ConfigInterrupt_CMD(ADC12_CMP1H, ENABLE);
    //    // ADC12_ConfigInterrupt_CMD(ADC12_CMP1L, ENABLE);
    //    ADC0->MR |= (CSP_REGISTER_T)(1UL << 30);
    //    ADC_Int_Enable();
}
    37c2:	1402      	addi      	r14, r14, 8
    37c4:	1490      	pop      	r15

Disassembly of section .text.bldcInit:

000037c8 <bldcInit>:
    // last_adc_value[1] = adc_value[1];
    // last_adc_value[2] = adc_value[2];
}

void bldcInit(void)
{
    37c8:	14d1      	push      	r4, r15
    bldc.status = OPEN;
    37ca:	106d      	lrw      	r3, 0x200001f4	// 37fc <bldcInit+0x34>
    37cc:	3201      	movi      	r2, 1
    37ce:	b349      	st.w      	r2, (r3, 0x24)
    bldc.xiao = _OK;
    37d0:	3202      	movi      	r2, 2
    37d2:	b34a      	st.w      	r2, (r3, 0x28)
    bldc.zero_base = 1638;//1638 ;//12V
    37d4:	104c      	lrw      	r2, 0x666	// 3804 <bldcInit+0x3c>
    // GPIO_Init(GAL_PORT, GAL_PIN, 0);
    // GPIO_Init(GBL_PORT, GBL_PIN, 0);
    // GPIO_Init(GCL_PORT, GCL_PIN, 0);
    GPIO_Init(GAB_PORT, GAB_PIN, 0);
    37d6:	108b      	lrw      	r4, 0x2000004c	// 3800 <bldcInit+0x38>
    37d8:	3104      	movi      	r1, 4
    bldc.zero_base = 1638;//1638 ;//12V
    37da:	ab42      	st.h      	r2, (r3, 0x4)
    GPIO_Init(GAB_PORT, GAB_PIN, 0);
    37dc:	9400      	ld.w      	r0, (r4, 0x0)
    37de:	3200      	movi      	r2, 0
    37e0:	e3fff3bc 	bsr      	0x1f58	// 1f58 <GPIO_Init>
    GPIO_Init(GBB_PORT, GBB_PIN, 0);
    37e4:	9400      	ld.w      	r0, (r4, 0x0)
    37e6:	3200      	movi      	r2, 0
    37e8:	3101      	movi      	r1, 1
    37ea:	e3fff3b7 	bsr      	0x1f58	// 1f58 <GPIO_Init>
    GPIO_Init(GCB_PORT, GCB_PIN, 0);
    37ee:	9400      	ld.w      	r0, (r4, 0x0)
    37f0:	3200      	movi      	r2, 0
    37f2:	3100      	movi      	r1, 0
    37f4:	e3fff3b2 	bsr      	0x1f58	// 1f58 <GPIO_Init>
}
    37f8:	1491      	pop      	r4, r15
    37fa:	0000      	bkpt
    37fc:	200001f4 	.long	0x200001f4
    3800:	2000004c 	.long	0x2000004c
    3804:	00000666 	.long	0x00000666

Disassembly of section .text.stepMoter:

00003808 <stepMoter>:
     
}

#define DUTY ( 4800 )
void stepMoter(void)
{
    3808:	14d2      	push      	r4-r5, r15
    380a:	1421      	subi      	r14, r14, 4
    
    switch (bldc.step)
    380c:	1272      	lrw      	r3, 0x200001f4	// 3954 <stepMoter+0x14c>
    380e:	8300      	ld.b      	r0, (r3, 0x0)
    3810:	3805      	cmphsi      	r0, 6
    3812:	083d      	bt      	0x388c	// 388c <stepMoter+0x84>
    3814:	1291      	lrw      	r4, 0x2000004c	// 3958 <stepMoter+0x150>
    3816:	e3ffea73 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    381a:	2203      	.short	0x2203
    381c:	896d573b 	.long	0x896d573b
    {
    case 0: //AB
        // GAL_LOW;
        // GBL_LOW;
        // GCL_LOW;
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, 0, 0, 0);
    3820:	3500      	movi      	r5, 0
    3822:	3096      	movi      	r0, 150
    3824:	3300      	movi      	r3, 0
    3826:	3200      	movi      	r2, 0
    3828:	3100      	movi      	r1, 0
    382a:	4005      	lsli      	r0, r0, 5
    382c:	b8a0      	st.w      	r5, (r14, 0x0)
    382e:	e3fff713 	bsr      	0x2654	// 2654 <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>
        GAB_LOW;
    3832:	3200      	movi      	r2, 0
    3834:	3104      	movi      	r1, 4
    3836:	9400      	ld.w      	r0, (r4, 0x0)
    3838:	e3fff400 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GCB_LOW;
    383c:	3200      	movi      	r2, 0
    383e:	3100      	movi      	r1, 0
    3840:	9400      	ld.w      	r0, (r4, 0x0)
    3842:	e3fff3fb 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        bldc_delay();
//        ADC12_Compare_statue(NBRCMP0_TypeDef, NBRCMPX_L_TypeDef);
//        ADC12_CompareFunction_set(CH_A , CH_A , center , center ) ;
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, DUTY, 0, 0, 0); // PRDR=2400,CMPA=1200,CMPB=DUTY,CMPC=2400,CMPD=0
    3846:	3196      	movi      	r1, 150
    3848:	4125      	lsli      	r1, r1, 5
    384a:	b8a0      	st.w      	r5, (r14, 0x0)
    384c:	3300      	movi      	r3, 0
    384e:	3200      	movi      	r2, 0
    3850:	6c07      	mov      	r0, r1
    3852:	e3fff701 	bsr      	0x2654	// 2654 <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>

        GAB_LOW;
        GCB_LOW;
        bldc_delay();

        GBB_HIGH;
    3856:	9400      	ld.w      	r0, (r4, 0x0)
    3858:	3201      	movi      	r2, 1
    385a:	3101      	movi      	r1, 1
    385c:	0416      	br      	0x3888	// 3888 <stepMoter+0x80>
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, DUTY, 0, 0, 0);
    385e:	3196      	movi      	r1, 150
    3860:	3300      	movi      	r3, 0
    3862:	4125      	lsli      	r1, r1, 5
    3864:	6c07      	mov      	r0, r1
    3866:	b860      	st.w      	r3, (r14, 0x0)
    3868:	3200      	movi      	r2, 0
    386a:	e3fff6f5 	bsr      	0x2654	// 2654 <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>
        GAB_LOW;
    386e:	3200      	movi      	r2, 0
    3870:	3104      	movi      	r1, 4
    3872:	9400      	ld.w      	r0, (r4, 0x0)
    3874:	e3fff3e2 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GBB_LOW;
    3878:	3200      	movi      	r2, 0
    387a:	3101      	movi      	r1, 1
    387c:	9400      	ld.w      	r0, (r4, 0x0)
    387e:	e3fff3dd 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GCB_HIGH;
    3882:	9400      	ld.w      	r0, (r4, 0x0)
    3884:	3201      	movi      	r2, 1
    3886:	3100      	movi      	r1, 0
        GBB_HIGH;
    3888:	e3fff3d8 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
    

    default:
        break;
    }
}
    388c:	1401      	addi      	r14, r14, 4
    388e:	1492      	pop      	r4-r5, r15
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, 0, 0, 0);
    3890:	3500      	movi      	r5, 0
    3892:	3096      	movi      	r0, 150
    3894:	3300      	movi      	r3, 0
    3896:	b8a0      	st.w      	r5, (r14, 0x0)
    3898:	3200      	movi      	r2, 0
    389a:	3100      	movi      	r1, 0
    389c:	4005      	lsli      	r0, r0, 5
    389e:	e3fff6db 	bsr      	0x2654	// 2654 <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>
        GAB_LOW;
    38a2:	9400      	ld.w      	r0, (r4, 0x0)
    38a4:	3200      	movi      	r2, 0
    38a6:	3104      	movi      	r1, 4
    38a8:	e3fff3c8 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GBB_LOW;
    38ac:	9400      	ld.w      	r0, (r4, 0x0)
    38ae:	3200      	movi      	r2, 0
    38b0:	3101      	movi      	r1, 1
    38b2:	e3fff3c3 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, DUTY, 0, 0);
    38b6:	3296      	movi      	r2, 150
    38b8:	4245      	lsli      	r2, r2, 5
    38ba:	b8a0      	st.w      	r5, (r14, 0x0)
    38bc:	3300      	movi      	r3, 0
    38be:	3100      	movi      	r1, 0
    38c0:	6c0b      	mov      	r0, r2
    38c2:	e3fff6c9 	bsr      	0x2654	// 2654 <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>
    38c6:	07de      	br      	0x3882	// 3882 <stepMoter+0x7a>
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, DUTY, 0, 0);
    38c8:	3296      	movi      	r2, 150
    38ca:	3300      	movi      	r3, 0
    38cc:	4245      	lsli      	r2, r2, 5
    38ce:	6c0b      	mov      	r0, r2
    38d0:	b860      	st.w      	r3, (r14, 0x0)
    38d2:	3100      	movi      	r1, 0
    38d4:	e3fff6c0 	bsr      	0x2654	// 2654 <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>
        GBB_LOW;
    38d8:	3200      	movi      	r2, 0
    38da:	3101      	movi      	r1, 1
    38dc:	9400      	ld.w      	r0, (r4, 0x0)
    38de:	e3fff3ad 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GCB_LOW;
    38e2:	3200      	movi      	r2, 0
    38e4:	3100      	movi      	r1, 0
    38e6:	9400      	ld.w      	r0, (r4, 0x0)
    38e8:	e3fff3a8 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GAB_HIGH;
    38ec:	9400      	ld.w      	r0, (r4, 0x0)
    38ee:	3201      	movi      	r2, 1
    38f0:	3104      	movi      	r1, 4
    38f2:	07cb      	br      	0x3888	// 3888 <stepMoter+0x80>
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, 0, 0, 0);
    38f4:	3500      	movi      	r5, 0
    38f6:	3096      	movi      	r0, 150
    38f8:	3300      	movi      	r3, 0
    38fa:	b8a0      	st.w      	r5, (r14, 0x0)
    38fc:	3200      	movi      	r2, 0
    38fe:	3100      	movi      	r1, 0
    3900:	4005      	lsli      	r0, r0, 5
    3902:	e3fff6a9 	bsr      	0x2654	// 2654 <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>
        GBB_LOW;
    3906:	9400      	ld.w      	r0, (r4, 0x0)
    3908:	3200      	movi      	r2, 0
    390a:	3101      	movi      	r1, 1
    390c:	e3fff396 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GCB_LOW;
    3910:	9400      	ld.w      	r0, (r4, 0x0)
    3912:	3200      	movi      	r2, 0
    3914:	3100      	movi      	r1, 0
    3916:	e3fff391 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, 0, DUTY, 0);
    391a:	3396      	movi      	r3, 150
    391c:	4365      	lsli      	r3, r3, 5
    391e:	b8a0      	st.w      	r5, (r14, 0x0)
    3920:	3200      	movi      	r2, 0
    3922:	3100      	movi      	r1, 0
    3924:	6c0f      	mov      	r0, r3
    3926:	e3fff697 	bsr      	0x2654	// 2654 <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>
    392a:	07e1      	br      	0x38ec	// 38ec <stepMoter+0xe4>
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, 0, DUTY, 0);
    392c:	3300      	movi      	r3, 0
    392e:	b860      	st.w      	r3, (r14, 0x0)
    3930:	3396      	movi      	r3, 150
    3932:	4365      	lsli      	r3, r3, 5
    3934:	6c0f      	mov      	r0, r3
    3936:	3200      	movi      	r2, 0
    3938:	3100      	movi      	r1, 0
    393a:	e3fff68d 	bsr      	0x2654	// 2654 <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>
        GAB_LOW;
    393e:	9400      	ld.w      	r0, (r4, 0x0)
    3940:	3200      	movi      	r2, 0
    3942:	3104      	movi      	r1, 4
    3944:	e3fff37a 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GCB_LOW;
    3948:	3200      	movi      	r2, 0
    394a:	3100      	movi      	r1, 0
    394c:	9400      	ld.w      	r0, (r4, 0x0)
    394e:	e3fff375 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
    3952:	0782      	br      	0x3856	// 3856 <stepMoter+0x4e>
    3954:	200001f4 	.long	0x200001f4
    3958:	2000004c 	.long	0x2000004c

Disassembly of section .text.adc_get:

0000395c <adc_get>:
{
    395c:	14d2      	push      	r4-r5, r15
    adc_value[0] = ADC0->DR[0];
    395e:	126d      	lrw      	r3, 0x20000054	// 3a90 <adc_get+0x134>
    3960:	120d      	lrw      	r0, 0x200001ec	// 3a94 <adc_get+0x138>
        if(bldc.timer_delay)
    3962:	128e      	lrw      	r4, 0x200001f4	// 3a98 <adc_get+0x13c>
    adc_value[0] = ADC0->DR[0];
    3964:	9360      	ld.w      	r3, (r3, 0x0)
    3966:	23ff      	addi      	r3, 256
    3968:	9340      	ld.w      	r2, (r3, 0x0)
    adc_value[1] = ADC0->DR[1];
    396a:	9321      	ld.w      	r1, (r3, 0x4)
    adc_value[2] = ADC0->DR[2];
    396c:	9362      	ld.w      	r3, (r3, 0x8)
    adc_value[0] = ADC0->DR[0];
    396e:	7489      	zexth      	r2, r2
    adc_value[1] = ADC0->DR[1];
    3970:	7445      	zexth      	r1, r1
    adc_value[2] = ADC0->DR[2];
    3972:	74cd      	zexth      	r3, r3
    adc_value[0] = ADC0->DR[0];
    3974:	a840      	st.h      	r2, (r0, 0x0)
    adc_value[1] = ADC0->DR[1];
    3976:	a821      	st.h      	r1, (r0, 0x2)
    adc_value[2] = ADC0->DR[2];
    3978:	a862      	st.h      	r3, (r0, 0x4)
        if(bldc.timer_delay)
    397a:	8c10      	ld.h      	r0, (r4, 0x20)
    397c:	3840      	cmpnei      	r0, 0
    397e:	0c0b      	bf      	0x3994	// 3994 <adc_get+0x38>
            bldc.timer_delay--;
    3980:	2800      	subi      	r0, 1
    3982:	ac10      	st.h      	r0, (r4, 0x20)
        switch (bldc.step)
    3984:	8400      	ld.b      	r0, (r4, 0x0)
    3986:	3805      	cmphsi      	r0, 6
    3988:	0815      	bt      	0x39b2	// 39b2 <adc_get+0x56>
    398a:	e3ffe9b9 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    398e:	5f0d      	.short	0x5f0d
    3990:	6b686562 	.long	0x6b686562
        else if(bldc.timer_delay_start)
    3994:	3020      	movi      	r0, 32
    3996:	6010      	addu      	r0, r4
    3998:	80a2      	ld.b      	r5, (r0, 0x2)
    399a:	3d40      	cmpnei      	r5, 0
    399c:	0ff4      	bf      	0x3984	// 3984 <adc_get+0x28>
            bldc.timer_delay_start = 0;
    399e:	3500      	movi      	r5, 0
    39a0:	a0a2      	st.b      	r5, (r0, 0x2)
            bldc.delay_ok = 1;
    39a2:	3501      	movi      	r5, 1
    39a4:	a0a3      	st.b      	r5, (r0, 0x3)
    39a6:	07ef      	br      	0x3984	// 3984 <adc_get+0x28>
            if (adc_value[2] < adc_value[0]>>1)   // && last_adc_value[2] > bldc.zero_base)
    39a8:	4a41      	lsri      	r2, r2, 1
    39aa:	648c      	cmphs      	r3, r2
    39ac:	0803      	bt      	0x39b2	// 39b2 <adc_get+0x56>
                bldc.zero = 1;
    39ae:	3301      	movi      	r3, 1
    39b0:	a466      	st.b      	r3, (r4, 0x6)
    if (bldc.zero == 1  && bldc.xiao == _OK)//过零 且消磁
    39b2:	8466      	ld.b      	r3, (r4, 0x6)
    39b4:	3b41      	cmpnei      	r3, 1
    39b6:	0863      	bt      	0x3a7c	// 3a7c <adc_get+0x120>
    39b8:	946a      	ld.w      	r3, (r4, 0x28)
    39ba:	3b42      	cmpnei      	r3, 2
    39bc:	0860      	bt      	0x3a7c	// 3a7c <adc_get+0x120>
        bldc.zero = 0;
    39be:	3300      	movi      	r3, 0
    39c0:	a466      	st.b      	r3, (r4, 0x6)
        bldc.timer_phase_buff[j] = bldc.timer_phase;
    39c2:	8c0e      	ld.h      	r0, (r4, 0x1c)
    39c4:	1176      	lrw      	r3, 0x2000010e	// 3a9c <adc_get+0x140>
    39c6:	8340      	ld.b      	r2, (r3, 0x0)
    39c8:	5a36      	addi      	r1, r2, 6
        if (++j >= 8)
    39ca:	2200      	addi      	r2, 1
        bldc.timer_phase_buff[j] = bldc.timer_phase;
    39cc:	4121      	lsli      	r1, r1, 1
        if (++j >= 8)
    39ce:	7488      	zextb      	r2, r2
        bldc.timer_phase_buff[j] = bldc.timer_phase;
    39d0:	6050      	addu      	r1, r4
        if (++j >= 8)
    39d2:	3a07      	cmphsi      	r2, 8
        bldc.timer_phase_buff[j] = bldc.timer_phase;
    39d4:	a900      	st.h      	r0, (r1, 0x0)
        if (++j >= 8)
    39d6:	084a      	bt      	0x3a6a	// 3a6a <adc_get+0x10e>
            j = 0;
    39d8:	a340      	st.b      	r2, (r3, 0x0)
        for (bldc.timer_phase = 0, i = 0; i < 8; i++)
    39da:	3200      	movi      	r2, 0
    39dc:	ac4e      	st.h      	r2, (r4, 0x1c)
    39de:	a341      	st.b      	r2, (r3, 0x1)
    39e0:	3500      	movi      	r5, 0
    39e2:	110e      	lrw      	r0, 0x200001f4	// 3a98 <adc_get+0x13c>
    39e4:	3200      	movi      	r2, 0
    39e6:	3100      	movi      	r1, 0
    39e8:	3948      	cmpnei      	r1, 8
    39ea:	2001      	addi      	r0, 2
    39ec:	0841      	bt      	0x3a6e	// 3a6e <adc_get+0x112>
    39ee:	3d40      	cmpnei      	r5, 0
    39f0:	0c03      	bf      	0x39f6	// 39f6 <adc_get+0x9a>
    39f2:	a321      	st.b      	r1, (r3, 0x1)
    39f4:	ac4e      	st.h      	r2, (r4, 0x1c)
        bldc.timer_phase = (bldc.timer_phase >> 4) -2;
    39f6:	8c6e      	ld.h      	r3, (r4, 0x1c)
    39f8:	4b64      	lsri      	r3, r3, 4
    39fa:	2b01      	subi      	r3, 2
    39fc:	74cd      	zexth      	r3, r3
        bldc.delay_ok = 0;
    39fe:	3200      	movi      	r2, 0
        bldc.timer_phase1 = bldc.timer_phase;
    3a00:	ac6f      	st.h      	r3, (r4, 0x1e)
        bldc.timer_delay = bldc.timer_phase;  //装载30°延时
    3a02:	ac70      	st.h      	r3, (r4, 0x20)
        bldc.delay_ok = 0;
    3a04:	1167      	lrw      	r3, 0x20000214	// 3aa0 <adc_get+0x144>
    3a06:	a343      	st.b      	r2, (r3, 0x3)
        bldc.timer_delay_start = 1;
    3a08:	3201      	movi      	r2, 1
    3a0a:	a342      	st.b      	r2, (r3, 0x2)
        bldc.timer_phase = 0;//换相计数清零
    3a0c:	3300      	movi      	r3, 0
    3a0e:	ac6e      	st.h      	r3, (r4, 0x1c)
        bldc.xiao = _NO;  //需要消磁
    3a10:	3300      	movi      	r3, 0
    3a12:	b46a      	st.w      	r3, (r4, 0x28)
    if (bldc.delay_ok == 1)
    3a14:	11a3      	lrw      	r5, 0x20000214	// 3aa0 <adc_get+0x144>
    3a16:	8543      	ld.b      	r2, (r5, 0x3)
    3a18:	3a41      	cmpnei      	r2, 1
    3a1a:	0818      	bt      	0x3a4a	// 3a4a <adc_get+0xee>
        bldc.delay_ok = 0;
    3a1c:	3300      	movi      	r3, 0
    3a1e:	a563      	st.b      	r3, (r5, 0x3)
        if(bldc.xiao == _NO)
    3a20:	946a      	ld.w      	r3, (r4, 0x28)
    3a22:	3b40      	cmpnei      	r3, 0
    3a24:	0831      	bt      	0x3a86	// 3a86 <adc_get+0x12a>
            if (bldc.status == CLOSE)
    3a26:	9469      	ld.w      	r3, (r4, 0x24)
    3a28:	3b42      	cmpnei      	r3, 2
            bldc.xiao = _ING;
    3a2a:	b44a      	st.w      	r2, (r4, 0x28)
            if (bldc.status == CLOSE)
    3a2c:	080b      	bt      	0x3a42	// 3a42 <adc_get+0xe6>
                if (++bldc.step >= 6)
    3a2e:	8460      	ld.b      	r3, (r4, 0x0)
    3a30:	2300      	addi      	r3, 1
    3a32:	74cc      	zextb      	r3, r3
    3a34:	3b05      	cmphsi      	r3, 6
    3a36:	0826      	bt      	0x3a82	// 3a82 <adc_get+0x126>
                    bldc.step = 0;
    3a38:	a460      	st.b      	r3, (r4, 0x0)
                stepMoter();
    3a3a:	e3fffee7 	bsr      	0x3808	// 3808 <stepMoter>
                bldc.timer_stuff = 200;
    3a3e:	33c8      	movi      	r3, 200
    3a40:	ac65      	st.h      	r3, (r4, 0xa)
            bldc.timer_delay_start = 1;
    3a42:	3301      	movi      	r3, 1
    3a44:	a562      	st.b      	r3, (r5, 0x2)
            bldc.timer_delay = 1;
    3a46:	3301      	movi      	r3, 1
    3a48:	ac70      	st.h      	r3, (r4, 0x20)
}
    3a4a:	1492      	pop      	r4-r5, r15
            if (adc_value[1] > adc_value[0]>>1)   // && last_adc_value[1] < bldc.zero_base)
    3a4c:	4a41      	lsri      	r2, r2, 1
    3a4e:	6448      	cmphs      	r2, r1
    3a50:	07ae      	br      	0x39ac	// 39ac <adc_get+0x50>
            if (adc_value[0] < adc_value[1]>>1)   // && last_adc_value[0] > bldc.zero_base)
    3a52:	4921      	lsri      	r1, r1, 1
    3a54:	6448      	cmphs      	r2, r1
    3a56:	07ab      	br      	0x39ac	// 39ac <adc_get+0x50>
            if (adc_value[2] > adc_value[1]>>1)   // && last_adc_value[2] < bldc.zero_base)
    3a58:	4921      	lsri      	r1, r1, 1
    3a5a:	64c4      	cmphs      	r1, r3
    3a5c:	07a8      	br      	0x39ac	// 39ac <adc_get+0x50>
            if (adc_value[1] < adc_value[2]>>1)   // && last_adc_value[1] > bldc.zero_base)
    3a5e:	4b61      	lsri      	r3, r3, 1
    3a60:	64c4      	cmphs      	r1, r3
    3a62:	07a5      	br      	0x39ac	// 39ac <adc_get+0x50>
            if (adc_value[0] > adc_value[2]>>1)   // && last_adc_value[0] < bldc.zero_base)
    3a64:	4b61      	lsri      	r3, r3, 1
    3a66:	648c      	cmphs      	r3, r2
    3a68:	07a2      	br      	0x39ac	// 39ac <adc_get+0x50>
            j = 0;
    3a6a:	3200      	movi      	r2, 0
    3a6c:	07b6      	br      	0x39d8	// 39d8 <adc_get+0x7c>
            bldc.timer_phase += bldc.timer_phase_buff[i];
    3a6e:	88a5      	ld.h      	r5, (r0, 0xa)
    3a70:	6094      	addu      	r2, r5
        for (bldc.timer_phase = 0, i = 0; i < 8; i++)
    3a72:	2100      	addi      	r1, 1
            bldc.timer_phase += bldc.timer_phase_buff[i];
    3a74:	7489      	zexth      	r2, r2
        for (bldc.timer_phase = 0, i = 0; i < 8; i++)
    3a76:	7444      	zextb      	r1, r1
    3a78:	3501      	movi      	r5, 1
    3a7a:	07b7      	br      	0x39e8	// 39e8 <adc_get+0x8c>
        bldc.zero = 0;
    3a7c:	3300      	movi      	r3, 0
    3a7e:	a466      	st.b      	r3, (r4, 0x6)
    3a80:	07ca      	br      	0x3a14	// 3a14 <adc_get+0xb8>
                    bldc.step = 0;
    3a82:	3300      	movi      	r3, 0
    3a84:	07da      	br      	0x3a38	// 3a38 <adc_get+0xdc>
        else if (bldc.xiao == _ING)
    3a86:	3b41      	cmpnei      	r3, 1
    3a88:	0be1      	bt      	0x3a4a	// 3a4a <adc_get+0xee>
            bldc.xiao = _OK;
    3a8a:	3302      	movi      	r3, 2
    3a8c:	b46a      	st.w      	r3, (r4, 0x28)
}
    3a8e:	07de      	br      	0x3a4a	// 3a4a <adc_get+0xee>
    3a90:	20000054 	.long	0x20000054
    3a94:	200001ec 	.long	0x200001ec
    3a98:	200001f4 	.long	0x200001f4
    3a9c:	2000010e 	.long	0x2000010e
    3aa0:	20000214 	.long	0x20000214

Disassembly of section .text.blcdStart:

00003aa4 <blcdStart>:
{
    3aa4:	14d1      	push      	r4, r15
    if(*control == 1)
    3aa6:	8060      	ld.b      	r3, (r0, 0x0)
    3aa8:	3b41      	cmpnei      	r3, 1
    3aaa:	1090      	lrw      	r4, 0x20000000	// 3ae8 <blcdStart+0x44>
    3aac:	0805      	bt      	0x3ab6	// 3ab6 <blcdStart+0x12>
        i = 5;
    3aae:	3305      	movi      	r3, 5
    3ab0:	a460      	st.b      	r3, (r4, 0x0)
        *control = 0;
    3ab2:	3300      	movi      	r3, 0
    3ab4:	a060      	st.b      	r3, (r0, 0x0)
    if(timer++ > i)
    3ab6:	106e      	lrw      	r3, 0x2000010e	// 3aec <blcdStart+0x48>
    3ab8:	8b41      	ld.h      	r2, (r3, 0x2)
    3aba:	5a22      	addi      	r1, r2, 1
    3abc:	ab21      	st.h      	r1, (r3, 0x2)
    3abe:	8420      	ld.b      	r1, (r4, 0x0)
    3ac0:	6484      	cmphs      	r1, r2
    3ac2:	0812      	bt      	0x3ae6	// 3ae6 <blcdStart+0x42>
        timer = 0;
    3ac4:	3200      	movi      	r2, 0
    3ac6:	ab41      	st.h      	r2, (r3, 0x2)
        if (++bldc.step >= 6)
    3ac8:	104a      	lrw      	r2, 0x200001f4	// 3af0 <blcdStart+0x4c>
    3aca:	8260      	ld.b      	r3, (r2, 0x0)
    3acc:	2300      	addi      	r3, 1
    3ace:	74cc      	zextb      	r3, r3
    3ad0:	3b05      	cmphsi      	r3, 6
    3ad2:	a260      	st.b      	r3, (r2, 0x0)
    3ad4:	0c07      	bf      	0x3ae2	// 3ae2 <blcdStart+0x3e>
            if(i>=2)
    3ad6:	3901      	cmphsi      	r1, 2
    3ad8:	0c03      	bf      	0x3ade	// 3ade <blcdStart+0x3a>
                 i --;
    3ada:	2900      	subi      	r1, 1
    3adc:	a420      	st.b      	r1, (r4, 0x0)
            bldc.step = 0;
    3ade:	3300      	movi      	r3, 0
    3ae0:	a260      	st.b      	r3, (r2, 0x0)
        stepMoter();
    3ae2:	e3fffe93 	bsr      	0x3808	// 3808 <stepMoter>
}
    3ae6:	1491      	pop      	r4, r15
    3ae8:	20000000 	.long	0x20000000
    3aec:	2000010e 	.long	0x2000010e
    3af0:	200001f4 	.long	0x200001f4

Disassembly of section .text.__divsi3:

00003af4 <__divsi3>:
CSP_BT_T    	*BT1      = (CSP_BT_T   *)APB_BT1Base ;
CSP_CRC_T   	*CRC      = (CSP_CRC_T  *)AHB_CRCBase ;
CSP_HWD_T   	*HWD      = (CSP_HWD_T  *)APB_HWDBase ;

int __divsi3 (  int a,   int b)
{   
    3af4:	14c1      	push      	r4
	int PSR;
	__asm volatile(
    3af6:	c0006023 	mfcr      	r3, cr<0, 0>
    3afa:	c0807020 	psrclr      	ie
					"mfcr %0 , psr \n\r"
					"psrclr ie \n\r"
					: "=r"(PSR)
				   );

	HWD->CR = 0;
    3afe:	1046      	lrw      	r2, 0x20000004	// 3b14 <__divsi3+0x20>
    3b00:	3400      	movi      	r4, 0
    3b02:	9240      	ld.w      	r2, (r2, 0x0)
    3b04:	b284      	st.w      	r4, (r2, 0x10)
	HWD->DIVIDENT = a;
	HWD->DIVISOR = b;

	PSR |= 0x80000000;
    3b06:	3bbf      	bseti      	r3, 31
	HWD->DIVIDENT = a;
    3b08:	b200      	st.w      	r0, (r2, 0x0)
	HWD->DIVISOR = b;
    3b0a:	b221      	st.w      	r1, (r2, 0x4)
	__asm volatile(
    3b0c:	c0036420 	mtcr      	r3, cr<0, 0>
					 "mtcr %0 , psr \n\r"
					 : 
					 :"r"(PSR)
					);
					
	return HWD->QUOTIENT;
    3b10:	9202      	ld.w      	r0, (r2, 0x8)
}
    3b12:	1481      	pop      	r4
    3b14:	20000004 	.long	0x20000004

Disassembly of section .text.__udivsi3:

00003b18 <__udivsi3>:
 unsigned int __udivsi3 ( unsigned int a,  unsigned int b)
{   
    3b18:	14c1      	push      	r4
	int PSR;
	__asm volatile(
    3b1a:	c0006023 	mfcr      	r3, cr<0, 0>
    3b1e:	c0807020 	psrclr      	ie
					"mfcr %0 , psr \n\r"
					"psrclr ie \n\r"
					: "=r"(PSR)
				   );
	
	HWD->CR = 1;
    3b22:	1046      	lrw      	r2, 0x20000004	// 3b38 <__udivsi3+0x20>
    3b24:	3401      	movi      	r4, 1
    3b26:	9240      	ld.w      	r2, (r2, 0x0)
    3b28:	b284      	st.w      	r4, (r2, 0x10)
	HWD->DIVIDENT = a;
	HWD->DIVISOR = b;

	PSR |= 0x80000000;
    3b2a:	3bbf      	bseti      	r3, 31
	HWD->DIVIDENT = a;
    3b2c:	b200      	st.w      	r0, (r2, 0x0)
	HWD->DIVISOR = b;
    3b2e:	b221      	st.w      	r1, (r2, 0x4)
	__asm volatile(
    3b30:	c0036420 	mtcr      	r3, cr<0, 0>
					 "mtcr %0 , psr \n\r"
					 : 
					 :"r"(PSR)
					);

	return HWD->QUOTIENT;
    3b34:	9202      	ld.w      	r0, (r2, 0x8)
}
    3b36:	1481      	pop      	r4
    3b38:	20000004 	.long	0x20000004

Disassembly of section .text.__umodsi3:

00003b3c <__umodsi3>:
					);	
	return HWD->REMAIN;
}

unsigned int __umodsi3 ( unsigned int a,  unsigned int b)
{   
    3b3c:	14c1      	push      	r4
	int PSR;
	__asm volatile(
    3b3e:	c0006023 	mfcr      	r3, cr<0, 0>
    3b42:	c0807020 	psrclr      	ie
					"mfcr %0 , psr \n\r"
					"psrclr ie \n\r"
					: "=r"(PSR)
				   );
	
	HWD->CR = 1;
    3b46:	1046      	lrw      	r2, 0x20000004	// 3b5c <__umodsi3+0x20>
    3b48:	3401      	movi      	r4, 1
    3b4a:	9240      	ld.w      	r2, (r2, 0x0)
    3b4c:	b284      	st.w      	r4, (r2, 0x10)
	HWD->DIVIDENT = a;
	HWD->DIVISOR = b;

	PSR |= 0x80000000;
    3b4e:	3bbf      	bseti      	r3, 31
	HWD->DIVIDENT = a;
    3b50:	b200      	st.w      	r0, (r2, 0x0)
	HWD->DIVISOR = b;
    3b52:	b221      	st.w      	r1, (r2, 0x4)
	__asm volatile(
    3b54:	c0036420 	mtcr      	r3, cr<0, 0>
					 "mtcr %0 , psr \n\r"
					 : 
					 :"r"(PSR)
					);	
	return HWD->REMAIN;
    3b58:	9203      	ld.w      	r0, (r2, 0xc)
}
    3b5a:	1481      	pop      	r4
    3b5c:	20000004 	.long	0x20000004

Disassembly of section .text.CK_CPU_EnAllNormalIrq:

00003b60 <CK_CPU_EnAllNormalIrq>:
}


void CK_CPU_EnAllNormalIrq(void)
{
  asm  ("psrset ee,ie");
    3b60:	c1807420 	psrset      	ee, ie
}
    3b64:	783c      	jmp      	r15

Disassembly of section .text.TK_Sampling_prog:

00003b68 <TK_Sampling_prog>:
    3b68:	14c4      	push      	r4-r7
    3b6a:	1423      	subi      	r14, r14, 12
    3b6c:	1169      	lrw      	r3, 0x20000058	// 3c10 <TK_Sampling_prog+0xa8>
    3b6e:	114a      	lrw      	r2, 0x200004c1	// 3c14 <TK_Sampling_prog+0xac>
    3b70:	6d0b      	mov      	r4, r2
    3b72:	9320      	ld.w      	r1, (r3, 0x0)
    3b74:	b840      	st.w      	r2, (r14, 0x0)
    3b76:	3300      	movi      	r3, 0
    3b78:	11a8      	lrw      	r5, 0x2000054e	// 3c18 <TK_Sampling_prog+0xb0>
    3b7a:	9840      	ld.w      	r2, (r14, 0x0)
    3b7c:	8240      	ld.b      	r2, (r2, 0x0)
    3b7e:	3a41      	cmpnei      	r2, 1
    3b80:	0808      	bt      	0x3b90	// 3b90 <TK_Sampling_prog+0x28>
    3b82:	4342      	lsli      	r2, r3, 2
    3b84:	6084      	addu      	r2, r1
    3b86:	9200      	ld.w      	r0, (r2, 0x0)
    3b88:	4341      	lsli      	r2, r3, 1
    3b8a:	7401      	zexth      	r0, r0
    3b8c:	6094      	addu      	r2, r5
    3b8e:	aa00      	st.h      	r0, (r2, 0x0)
    3b90:	8440      	ld.b      	r2, (r4, 0x0)
    3b92:	3a42      	cmpnei      	r2, 2
    3b94:	0809      	bt      	0x3ba6	// 3ba6 <TK_Sampling_prog+0x3e>
    3b96:	4342      	lsli      	r2, r3, 2
    3b98:	6084      	addu      	r2, r1
    3b9a:	9200      	ld.w      	r0, (r2, 0x0)
    3b9c:	4341      	lsli      	r2, r3, 1
    3b9e:	11c0      	lrw      	r6, 0x20000308	// 3c1c <TK_Sampling_prog+0xb4>
    3ba0:	7401      	zexth      	r0, r0
    3ba2:	6098      	addu      	r2, r6
    3ba4:	aa00      	st.h      	r0, (r2, 0x0)
    3ba6:	8440      	ld.b      	r2, (r4, 0x0)
    3ba8:	3a40      	cmpnei      	r2, 0
    3baa:	0809      	bt      	0x3bbc	// 3bbc <TK_Sampling_prog+0x54>
    3bac:	4342      	lsli      	r2, r3, 2
    3bae:	6084      	addu      	r2, r1
    3bb0:	9200      	ld.w      	r0, (r2, 0x0)
    3bb2:	4341      	lsli      	r2, r3, 1
    3bb4:	10db      	lrw      	r6, 0x200003f6	// 3c20 <TK_Sampling_prog+0xb8>
    3bb6:	7401      	zexth      	r0, r0
    3bb8:	6098      	addu      	r2, r6
    3bba:	aa00      	st.h      	r0, (r2, 0x0)
    3bbc:	10da      	lrw      	r6, 0x20000361	// 3c24 <TK_Sampling_prog+0xbc>
    3bbe:	8640      	ld.b      	r2, (r6, 0x0)
    3bc0:	3a41      	cmpnei      	r2, 1
    3bc2:	0821      	bt      	0x3c04	// 3c04 <TK_Sampling_prog+0x9c>
    3bc4:	1079      	lrw      	r3, 0x2000022c	// 3c28 <TK_Sampling_prog+0xc0>
    3bc6:	3200      	movi      	r2, 0
    3bc8:	b861      	st.w      	r3, (r14, 0x4)
    3bca:	1075      	lrw      	r3, 0x20000308	// 3c1c <TK_Sampling_prog+0xb4>
    3bcc:	b862      	st.w      	r3, (r14, 0x8)
    3bce:	4261      	lsli      	r3, r2, 1
    3bd0:	5d0c      	addu      	r0, r5, r3
    3bd2:	8800      	ld.h      	r0, (r0, 0x0)
    3bd4:	98e1      	ld.w      	r7, (r14, 0x4)
    3bd6:	61cc      	addu      	r7, r3
    3bd8:	7401      	zexth      	r0, r0
    3bda:	af00      	st.h      	r0, (r7, 0x0)
    3bdc:	9802      	ld.w      	r0, (r14, 0x8)
    3bde:	600c      	addu      	r0, r3
    3be0:	8800      	ld.h      	r0, (r0, 0x0)
    3be2:	10f3      	lrw      	r7, 0x200003c2	// 3c2c <TK_Sampling_prog+0xc4>
    3be4:	61cc      	addu      	r7, r3
    3be6:	7401      	zexth      	r0, r0
    3be8:	af00      	st.h      	r0, (r7, 0x0)
    3bea:	2200      	addi      	r2, 1
    3bec:	100d      	lrw      	r0, 0x200003f6	// 3c20 <TK_Sampling_prog+0xb8>
    3bee:	600c      	addu      	r0, r3
    3bf0:	8800      	ld.h      	r0, (r0, 0x0)
    3bf2:	10f0      	lrw      	r7, 0x200004c2	// 3c30 <TK_Sampling_prog+0xc8>
    3bf4:	7401      	zexth      	r0, r0
    3bf6:	60dc      	addu      	r3, r7
    3bf8:	3a51      	cmpnei      	r2, 17
    3bfa:	ab00      	st.h      	r0, (r3, 0x0)
    3bfc:	0be9      	bt      	0x3bce	// 3bce <TK_Sampling_prog+0x66>
    3bfe:	3300      	movi      	r3, 0
    3c00:	a660      	st.b      	r3, (r6, 0x0)
    3c02:	3311      	movi      	r3, 17
    3c04:	2300      	addi      	r3, 1
    3c06:	74cc      	zextb      	r3, r3
    3c08:	3b10      	cmphsi      	r3, 17
    3c0a:	0fb8      	bf      	0x3b7a	// 3b7a <TK_Sampling_prog+0x12>
    3c0c:	1403      	addi      	r14, r14, 12
    3c0e:	1484      	pop      	r4-r7
    3c10:	20000058 	.long	0x20000058
    3c14:	200004c1 	.long	0x200004c1
    3c18:	2000054e 	.long	0x2000054e
    3c1c:	20000308 	.long	0x20000308
    3c20:	200003f6 	.long	0x200003f6
    3c24:	20000361 	.long	0x20000361
    3c28:	2000022c 	.long	0x2000022c
    3c2c:	200003c2 	.long	0x200003c2
    3c30:	200004c2 	.long	0x200004c2

Disassembly of section .text.get_key_number:

00003c34 <get_key_number>:
    3c34:	14c2      	push      	r4-r5
    3c36:	3200      	movi      	r2, 0
    3c38:	3000      	movi      	r0, 0
    3c3a:	1088      	lrw      	r4, 0x200003bc	// 3c58 <get_key_number+0x24>
    3c3c:	3501      	movi      	r5, 1
    3c3e:	3120      	movi      	r1, 32
    3c40:	9460      	ld.w      	r3, (r4, 0x0)
    3c42:	70c9      	lsr      	r3, r2
    3c44:	68d4      	and      	r3, r5
    3c46:	3b40      	cmpnei      	r3, 0
    3c48:	0c02      	bf      	0x3c4c	// 3c4c <get_key_number+0x18>
    3c4a:	2000      	addi      	r0, 1
    3c4c:	2200      	addi      	r2, 1
    3c4e:	644a      	cmpne      	r2, r1
    3c50:	0bf8      	bt      	0x3c40	// 3c40 <get_key_number+0xc>
    3c52:	7400      	zextb      	r0, r0
    3c54:	1482      	pop      	r4-r5
    3c56:	0000      	bkpt
    3c58:	200003bc 	.long	0x200003bc

Disassembly of section .text.TK_Scan_Start:

00003c5c <TK_Scan_Start>:
    3c5c:	1073      	lrw      	r3, 0x2000006c	// 3ca8 <TK_Scan_Start+0x4c>
    3c5e:	1054      	lrw      	r2, 0x200004c1	// 3cac <TK_Scan_Start+0x50>
    3c60:	8302      	ld.b      	r0, (r3, 0x2)
    3c62:	8220      	ld.b      	r1, (r2, 0x0)
    3c64:	6442      	cmpne      	r0, r1
    3c66:	0c16      	bf      	0x3c92	// 3c92 <TK_Scan_Start+0x36>
    3c68:	8220      	ld.b      	r1, (r2, 0x0)
    3c6a:	7444      	zextb      	r1, r1
    3c6c:	3941      	cmpnei      	r1, 1
    3c6e:	0c18      	bf      	0x3c9e	// 3c9e <TK_Scan_Start+0x42>
    3c70:	3940      	cmpnei      	r1, 0
    3c72:	0c11      	bf      	0x3c94	// 3c94 <TK_Scan_Start+0x38>
    3c74:	3942      	cmpnei      	r1, 2
    3c76:	0c16      	bf      	0x3ca2	// 3ca2 <TK_Scan_Start+0x46>
    3c78:	8240      	ld.b      	r2, (r2, 0x0)
    3c7a:	7488      	zextb      	r2, r2
    3c7c:	a342      	st.b      	r2, (r3, 0x2)
    3c7e:	8343      	ld.b      	r2, (r3, 0x3)
    3c80:	7488      	zextb      	r2, r2
    3c82:	3a41      	cmpnei      	r2, 1
    3c84:	0807      	bt      	0x3c92	// 3c92 <TK_Scan_Start+0x36>
    3c86:	102b      	lrw      	r1, 0x2000005c	// 3cb0 <TK_Scan_Start+0x54>
    3c88:	9120      	ld.w      	r1, (r1, 0x0)
    3c8a:	b142      	st.w      	r2, (r1, 0x8)
    3c8c:	3200      	movi      	r2, 0
    3c8e:	a340      	st.b      	r2, (r3, 0x0)
    3c90:	a343      	st.b      	r2, (r3, 0x3)
    3c92:	783c      	jmp      	r15
    3c94:	1028      	lrw      	r1, 0x20000570	// 3cb4 <TK_Scan_Start+0x58>
    3c96:	9100      	ld.w      	r0, (r1, 0x0)
    3c98:	1028      	lrw      	r1, 0x40011200	// 3cb8 <TK_Scan_Start+0x5c>
    3c9a:	b110      	st.w      	r0, (r1, 0x40)
    3c9c:	07ee      	br      	0x3c78	// 3c78 <TK_Scan_Start+0x1c>
    3c9e:	1028      	lrw      	r1, 0x20000304	// 3cbc <TK_Scan_Start+0x60>
    3ca0:	07fb      	br      	0x3c96	// 3c96 <TK_Scan_Start+0x3a>
    3ca2:	1028      	lrw      	r1, 0x20000330	// 3cc0 <TK_Scan_Start+0x64>
    3ca4:	07f9      	br      	0x3c96	// 3c96 <TK_Scan_Start+0x3a>
    3ca6:	0000      	bkpt
    3ca8:	2000006c 	.long	0x2000006c
    3cac:	200004c1 	.long	0x200004c1
    3cb0:	2000005c 	.long	0x2000005c
    3cb4:	20000570 	.long	0x20000570
    3cb8:	40011200 	.long	0x40011200
    3cbc:	20000304 	.long	0x20000304
    3cc0:	20000330 	.long	0x20000330

Disassembly of section .text.TK_Keymap_prog:

00003cc4 <TK_Keymap_prog>:
    3cc4:	14d4      	push      	r4-r7, r15
    3cc6:	142a      	subi      	r14, r14, 40
    3cc8:	0171      	lrw      	r3, 0x20000148	// 4000 <TK_Keymap_prog+0x33c>
    3cca:	8360      	ld.b      	r3, (r3, 0x0)
    3ccc:	b860      	st.w      	r3, (r14, 0x0)
    3cce:	3400      	movi      	r4, 0
    3cd0:	0172      	lrw      	r3, 0x20000114	// 4004 <TK_Keymap_prog+0x340>
    3cd2:	8360      	ld.b      	r3, (r3, 0x0)
    3cd4:	b863      	st.w      	r3, (r14, 0xc)
    3cd6:	0172      	lrw      	r3, 0x20000125	// 4008 <TK_Keymap_prog+0x344>
    3cd8:	83a0      	ld.b      	r5, (r3, 0x0)
    3cda:	0172      	lrw      	r3, 0x20000124	// 400c <TK_Keymap_prog+0x348>
    3cdc:	8360      	ld.b      	r3, (r3, 0x0)
    3cde:	b866      	st.w      	r3, (r14, 0x18)
    3ce0:	0173      	lrw      	r3, 0x2000054e	// 4010 <TK_Keymap_prog+0x34c>
    3ce2:	b868      	st.w      	r3, (r14, 0x20)
    3ce4:	0173      	lrw      	r3, 0x200002e0	// 4014 <TK_Keymap_prog+0x350>
    3ce6:	b864      	st.w      	r3, (r14, 0x10)
    3ce8:	b869      	st.w      	r3, (r14, 0x24)
    3cea:	4461      	lsli      	r3, r4, 1
    3cec:	9848      	ld.w      	r2, (r14, 0x20)
    3cee:	608c      	addu      	r2, r3
    3cf0:	0135      	lrw      	r1, 0x2000022c	// 4018 <TK_Keymap_prog+0x354>
    3cf2:	604c      	addu      	r1, r3
    3cf4:	8a40      	ld.h      	r2, (r2, 0x0)
    3cf6:	8920      	ld.h      	r1, (r1, 0x0)
    3cf8:	6086      	subu      	r2, r1
    3cfa:	9829      	ld.w      	r1, (r14, 0x24)
    3cfc:	604c      	addu      	r1, r3
    3cfe:	748b      	sexth      	r2, r2
    3d00:	a940      	st.h      	r2, (r1, 0x0)
    3d02:	0118      	lrw      	r0, 0x200003c2	// 401c <TK_Keymap_prog+0x358>
    3d04:	0158      	lrw      	r2, 0x20000308	// 4020 <TK_Keymap_prog+0x35c>
    3d06:	608c      	addu      	r2, r3
    3d08:	600c      	addu      	r0, r3
    3d0a:	8a40      	ld.h      	r2, (r2, 0x0)
    3d0c:	8800      	ld.h      	r0, (r0, 0x0)
    3d0e:	6082      	subu      	r2, r0
    3d10:	01da      	lrw      	r6, 0x20000418	// 4024 <TK_Keymap_prog+0x360>
    3d12:	5e0c      	addu      	r0, r6, r3
    3d14:	748b      	sexth      	r2, r2
    3d16:	a840      	st.h      	r2, (r0, 0x0)
    3d18:	b8c1      	st.w      	r6, (r14, 0x4)
    3d1a:	015b      	lrw      	r2, 0x200003f6	// 4028 <TK_Keymap_prog+0x364>
    3d1c:	011b      	lrw      	r0, 0x200004c2	// 402c <TK_Keymap_prog+0x368>
    3d1e:	608c      	addu      	r2, r3
    3d20:	600c      	addu      	r0, r3
    3d22:	8a40      	ld.h      	r2, (r2, 0x0)
    3d24:	8800      	ld.h      	r0, (r0, 0x0)
    3d26:	6082      	subu      	r2, r0
    3d28:	011d      	lrw      	r0, 0x2000052a	// 4030 <TK_Keymap_prog+0x36c>
    3d2a:	748b      	sexth      	r2, r2
    3d2c:	58ec      	addu      	r7, r0, r3
    3d2e:	af40      	st.h      	r2, (r7, 0x0)
    3d30:	8940      	ld.h      	r2, (r1, 0x0)
    3d32:	748b      	sexth      	r2, r2
    3d34:	3adf      	btsti      	r2, 31
    3d36:	015f      	lrw      	r2, 0x20000508	// 4034 <TK_Keymap_prog+0x370>
    3d38:	60c8      	addu      	r3, r2
    3d3a:	b802      	st.w      	r0, (r14, 0x8)
    3d3c:	0c49      	bf      	0x3dce	// 3dce <TK_Keymap_prog+0x10a>
    3d3e:	3200      	movi      	r2, 0
    3d40:	ab40      	st.h      	r2, (r3, 0x0)
    3d42:	9821      	ld.w      	r1, (r14, 0x4)
    3d44:	4461      	lsli      	r3, r4, 1
    3d46:	604c      	addu      	r1, r3
    3d48:	8940      	ld.h      	r2, (r1, 0x0)
    3d4a:	748b      	sexth      	r2, r2
    3d4c:	3adf      	btsti      	r2, 31
    3d4e:	0244      	lrw      	r2, 0x20000290	// 4038 <TK_Keymap_prog+0x374>
    3d50:	60c8      	addu      	r3, r2
    3d52:	0c41      	bf      	0x3dd4	// 3dd4 <TK_Keymap_prog+0x110>
    3d54:	3200      	movi      	r2, 0
    3d56:	ab40      	st.h      	r2, (r3, 0x0)
    3d58:	9822      	ld.w      	r1, (r14, 0x8)
    3d5a:	4461      	lsli      	r3, r4, 1
    3d5c:	604c      	addu      	r1, r3
    3d5e:	8940      	ld.h      	r2, (r1, 0x0)
    3d60:	748b      	sexth      	r2, r2
    3d62:	3adf      	btsti      	r2, 31
    3d64:	0249      	lrw      	r2, 0x20000264	// 403c <TK_Keymap_prog+0x378>
    3d66:	60c8      	addu      	r3, r2
    3d68:	0c39      	bf      	0x3dda	// 3dda <TK_Keymap_prog+0x116>
    3d6a:	3200      	movi      	r2, 0
    3d6c:	ab40      	st.h      	r2, (r3, 0x0)
    3d6e:	9860      	ld.w      	r3, (r14, 0x0)
    3d70:	3b03      	cmphsi      	r3, 4
    3d72:	4421      	lsli      	r1, r4, 1
    3d74:	0cb5      	bf      	0x3ede	// 3ede <TK_Keymap_prog+0x21a>
    3d76:	9864      	ld.w      	r3, (r14, 0x10)
    3d78:	60c4      	addu      	r3, r1
    3d7a:	024d      	lrw      	r2, 0x2000017e	// 4040 <TK_Keymap_prog+0x37c>
    3d7c:	6048      	addu      	r1, r2
    3d7e:	8b00      	ld.h      	r0, (r3, 0x0)
    3d80:	8940      	ld.h      	r2, (r1, 0x0)
    3d82:	7403      	sexth      	r0, r0
    3d84:	6409      	cmplt      	r2, r0
    3d86:	9820      	ld.w      	r1, (r14, 0x0)
    3d88:	7c84      	mult      	r2, r1
    3d8a:	0c9b      	bf      	0x3ec0	// 3ec0 <TK_Keymap_prog+0x1fc>
    3d8c:	8b20      	ld.h      	r1, (r3, 0x0)
    3d8e:	7447      	sexth      	r1, r1
    3d90:	6485      	cmplt      	r1, r2
    3d92:	0c97      	bf      	0x3ec0	// 3ec0 <TK_Keymap_prog+0x1fc>
    3d94:	0233      	lrw      	r1, 0x200002cd	// 4044 <TK_Keymap_prog+0x380>
    3d96:	6050      	addu      	r1, r4
    3d98:	8140      	ld.b      	r2, (r1, 0x0)
    3d9a:	2200      	addi      	r2, 1
    3d9c:	7488      	zextb      	r2, r2
    3d9e:	a140      	st.b      	r2, (r1, 0x0)
    3da0:	3000      	movi      	r0, 0
    3da2:	0255      	lrw      	r2, 0x200002b2	// 4048 <TK_Keymap_prog+0x384>
    3da4:	6090      	addu      	r2, r4
    3da6:	a200      	st.b      	r0, (r2, 0x0)
    3da8:	0256      	lrw      	r2, 0x200003e4	// 404c <TK_Keymap_prog+0x388>
    3daa:	6090      	addu      	r2, r4
    3dac:	a200      	st.b      	r0, (r2, 0x0)
    3dae:	0256      	lrw      	r2, 0x20000470	// 4050 <TK_Keymap_prog+0x38c>
    3db0:	6090      	addu      	r2, r4
    3db2:	a200      	st.b      	r0, (r2, 0x0)
    3db4:	8140      	ld.b      	r2, (r1, 0x0)
    3db6:	9803      	ld.w      	r0, (r14, 0xc)
    3db8:	6480      	cmphs      	r0, r2
    3dba:	081d      	bt      	0x3df4	// 3df4 <TK_Keymap_prog+0x130>
    3dbc:	3d40      	cmpnei      	r5, 0
    3dbe:	0811      	bt      	0x3de0	// 3de0 <TK_Keymap_prog+0x11c>
    3dc0:	025a      	lrw      	r2, 0x200002c4	// 4054 <TK_Keymap_prog+0x390>
    3dc2:	9260      	ld.w      	r3, (r2, 0x0)
    3dc4:	3b40      	cmpnei      	r3, 0
    3dc6:	0815      	bt      	0x3df0	// 3df0 <TK_Keymap_prog+0x12c>
    3dc8:	9200      	ld.w      	r0, (r2, 0x0)
    3dca:	3301      	movi      	r3, 1
    3dcc:	040f      	br      	0x3dea	// 3dea <TK_Keymap_prog+0x126>
    3dce:	8940      	ld.h      	r2, (r1, 0x0)
    3dd0:	7489      	zexth      	r2, r2
    3dd2:	07b7      	br      	0x3d40	// 3d40 <TK_Keymap_prog+0x7c>
    3dd4:	8940      	ld.h      	r2, (r1, 0x0)
    3dd6:	7489      	zexth      	r2, r2
    3dd8:	07bf      	br      	0x3d56	// 3d56 <TK_Keymap_prog+0x92>
    3dda:	8940      	ld.h      	r2, (r1, 0x0)
    3ddc:	7489      	zexth      	r2, r2
    3dde:	07c7      	br      	0x3d6c	// 3d6c <TK_Keymap_prog+0xa8>
    3de0:	3d41      	cmpnei      	r5, 1
    3de2:	085c      	bt      	0x3e9a	// 3e9a <TK_Keymap_prog+0x1d6>
    3de4:	0343      	lrw      	r2, 0x200002c4	// 4054 <TK_Keymap_prog+0x390>
    3de6:	6cd7      	mov      	r3, r5
    3de8:	9200      	ld.w      	r0, (r2, 0x0)
    3dea:	70d0      	lsl      	r3, r4
    3dec:	6cc0      	or      	r3, r0
    3dee:	b260      	st.w      	r3, (r2, 0x0)
    3df0:	3300      	movi      	r3, 0
    3df2:	a160      	st.b      	r3, (r1, 0x0)
    3df4:	4461      	lsli      	r3, r4, 1
    3df6:	9844      	ld.w      	r2, (r14, 0x10)
    3df8:	608c      	addu      	r2, r3
    3dfa:	8ac0      	ld.h      	r6, (r2, 0x0)
    3dfc:	034e      	lrw      	r2, 0x2000017e	// 4040 <TK_Keymap_prog+0x37c>
    3dfe:	60c8      	addu      	r3, r2
    3e00:	8be0      	ld.h      	r7, (r3, 0x0)
    3e02:	4702      	lsli      	r0, r7, 2
    3e04:	3105      	movi      	r1, 5
    3e06:	e3fffe77 	bsr      	0x3af4	// 3af4 <__divsi3>
    3e0a:	759b      	sexth      	r6, r6
    3e0c:	6419      	cmplt      	r6, r0
    3e0e:	b805      	st.w      	r0, (r14, 0x14)
    3e10:	0c18      	bf      	0x3e40	// 3e40 <TK_Keymap_prog+0x17c>
    3e12:	0351      	lrw      	r2, 0x200002b2	// 4048 <TK_Keymap_prog+0x384>
    3e14:	6090      	addu      	r2, r4
    3e16:	8260      	ld.b      	r3, (r2, 0x0)
    3e18:	2300      	addi      	r3, 1
    3e1a:	74cc      	zextb      	r3, r3
    3e1c:	a260      	st.b      	r3, (r2, 0x0)
    3e1e:	3100      	movi      	r1, 0
    3e20:	0376      	lrw      	r3, 0x200002cd	// 4044 <TK_Keymap_prog+0x380>
    3e22:	60d0      	addu      	r3, r4
    3e24:	a320      	st.b      	r1, (r3, 0x0)
    3e26:	8260      	ld.b      	r3, (r2, 0x0)
    3e28:	9826      	ld.w      	r1, (r14, 0x18)
    3e2a:	64c4      	cmphs      	r1, r3
    3e2c:	080a      	bt      	0x3e40	// 3e40 <TK_Keymap_prog+0x17c>
    3e2e:	3300      	movi      	r3, 0
    3e30:	0336      	lrw      	r1, 0x200002c4	// 4054 <TK_Keymap_prog+0x390>
    3e32:	2b01      	subi      	r3, 2
    3e34:	9100      	ld.w      	r0, (r1, 0x0)
    3e36:	70d3      	rotl      	r3, r4
    3e38:	68c0      	and      	r3, r0
    3e3a:	b160      	st.w      	r3, (r1, 0x0)
    3e3c:	3300      	movi      	r3, 0
    3e3e:	a260      	st.b      	r3, (r2, 0x0)
    3e40:	9860      	ld.w      	r3, (r14, 0x0)
    3e42:	9841      	ld.w      	r2, (r14, 0x4)
    3e44:	3b03      	cmphsi      	r3, 4
    3e46:	4461      	lsli      	r3, r4, 1
    3e48:	60c8      	addu      	r3, r2
    3e4a:	8b40      	ld.h      	r2, (r3, 0x0)
    3e4c:	748b      	sexth      	r2, r2
    3e4e:	0d4d      	bf      	0x40e8	// 40e8 <TK_Keymap_prog+0x424>
    3e50:	649d      	cmplt      	r7, r2
    3e52:	0d3a      	bf      	0x40c6	// 40c6 <TK_Keymap_prog+0x402>
    3e54:	8b40      	ld.h      	r2, (r3, 0x0)
    3e56:	9820      	ld.w      	r1, (r14, 0x0)
    3e58:	748b      	sexth      	r2, r2
    3e5a:	7c5c      	mult      	r1, r7
    3e5c:	6449      	cmplt      	r2, r1
    3e5e:	0d34      	bf      	0x40c6	// 40c6 <TK_Keymap_prog+0x402>
    3e60:	133e      	lrw      	r1, 0x20000488	// 4058 <TK_Keymap_prog+0x394>
    3e62:	6050      	addu      	r1, r4
    3e64:	8140      	ld.b      	r2, (r1, 0x0)
    3e66:	2200      	addi      	r2, 1
    3e68:	7488      	zextb      	r2, r2
    3e6a:	a140      	st.b      	r2, (r1, 0x0)
    3e6c:	3000      	movi      	r0, 0
    3e6e:	135c      	lrw      	r2, 0x20000338	// 405c <TK_Keymap_prog+0x398>
    3e70:	6090      	addu      	r2, r4
    3e72:	a200      	st.b      	r0, (r2, 0x0)
    3e74:	135b      	lrw      	r2, 0x20000362	// 4060 <TK_Keymap_prog+0x39c>
    3e76:	6090      	addu      	r2, r4
    3e78:	a200      	st.b      	r0, (r2, 0x0)
    3e7a:	135b      	lrw      	r2, 0x20000458	// 4064 <TK_Keymap_prog+0x3a0>
    3e7c:	6090      	addu      	r2, r4
    3e7e:	a200      	st.b      	r0, (r2, 0x0)
    3e80:	8140      	ld.b      	r2, (r1, 0x0)
    3e82:	9803      	ld.w      	r0, (r14, 0xc)
    3e84:	6480      	cmphs      	r0, r2
    3e86:	087d      	bt      	0x3f80	// 3f80 <TK_Keymap_prog+0x2bc>
    3e88:	3d40      	cmpnei      	r5, 0
    3e8a:	0871      	bt      	0x3f6c	// 3f6c <TK_Keymap_prog+0x2a8>
    3e8c:	1357      	lrw      	r2, 0x20000260	// 4068 <TK_Keymap_prog+0x3a4>
    3e8e:	9260      	ld.w      	r3, (r2, 0x0)
    3e90:	3b40      	cmpnei      	r3, 0
    3e92:	0875      	bt      	0x3f7c	// 3f7c <TK_Keymap_prog+0x2b8>
    3e94:	9200      	ld.w      	r0, (r2, 0x0)
    3e96:	3301      	movi      	r3, 1
    3e98:	046f      	br      	0x3f76	// 3f76 <TK_Keymap_prog+0x2b2>
    3e9a:	3d42      	cmpnei      	r5, 2
    3e9c:	0c03      	bf      	0x3ea2	// 3ea2 <TK_Keymap_prog+0x1de>
    3e9e:	e8000201 	br      	0x42a0	// 42a0 <TK_Keymap_prog+0x5dc>
    3ea2:	13d3      	lrw      	r6, 0x2000046a	// 406c <TK_Keymap_prog+0x3a8>
    3ea4:	8b00      	ld.h      	r0, (r3, 0x0)
    3ea6:	8e40      	ld.h      	r2, (r6, 0x0)
    3ea8:	7489      	zexth      	r2, r2
    3eaa:	7403      	sexth      	r0, r0
    3eac:	2209      	addi      	r2, 10
    3eae:	6409      	cmplt      	r2, r0
    3eb0:	0fa0      	bf      	0x3df0	// 3df0 <TK_Keymap_prog+0x12c>
    3eb2:	8b60      	ld.h      	r3, (r3, 0x0)
    3eb4:	74cd      	zexth      	r3, r3
    3eb6:	ae60      	st.h      	r3, (r6, 0x0)
    3eb8:	3300      	movi      	r3, 0
    3eba:	1347      	lrw      	r2, 0x200002c4	// 4054 <TK_Keymap_prog+0x390>
    3ebc:	b260      	st.w      	r3, (r2, 0x0)
    3ebe:	0785      	br      	0x3dc8	// 3dc8 <TK_Keymap_prog+0x104>
    3ec0:	4461      	lsli      	r3, r4, 1
    3ec2:	9824      	ld.w      	r1, (r14, 0x10)
    3ec4:	60c4      	addu      	r3, r1
    3ec6:	8b60      	ld.h      	r3, (r3, 0x0)
    3ec8:	74cf      	sexth      	r3, r3
    3eca:	64c9      	cmplt      	r2, r3
    3ecc:	0f94      	bf      	0x3df4	// 3df4 <TK_Keymap_prog+0x130>
    3ece:	3300      	movi      	r3, 0
    3ed0:	1341      	lrw      	r2, 0x200002c4	// 4054 <TK_Keymap_prog+0x390>
    3ed2:	2b01      	subi      	r3, 2
    3ed4:	9220      	ld.w      	r1, (r2, 0x0)
    3ed6:	70d3      	rotl      	r3, r4
    3ed8:	68c4      	and      	r3, r1
    3eda:	b260      	st.w      	r3, (r2, 0x0)
    3edc:	078c      	br      	0x3df4	// 3df4 <TK_Keymap_prog+0x130>
    3ede:	9844      	ld.w      	r2, (r14, 0x10)
    3ee0:	6084      	addu      	r2, r1
    3ee2:	1218      	lrw      	r0, 0x2000017e	// 4040 <TK_Keymap_prog+0x37c>
    3ee4:	8a60      	ld.h      	r3, (r2, 0x0)
    3ee6:	6040      	addu      	r1, r0
    3ee8:	74cf      	sexth      	r3, r3
    3eea:	8920      	ld.h      	r1, (r1, 0x0)
    3eec:	64c5      	cmplt      	r1, r3
    3eee:	0f83      	bf      	0x3df4	// 3df4 <TK_Keymap_prog+0x130>
    3ef0:	1360      	lrw      	r3, 0x200002de	// 4070 <TK_Keymap_prog+0x3ac>
    3ef2:	8360      	ld.b      	r3, (r3, 0x0)
    3ef4:	74cc      	zextb      	r3, r3
    3ef6:	3b40      	cmpnei      	r3, 0
    3ef8:	0b7e      	bt      	0x3df4	// 3df4 <TK_Keymap_prog+0x130>
    3efa:	1213      	lrw      	r0, 0x200002cd	// 4044 <TK_Keymap_prog+0x380>
    3efc:	6010      	addu      	r0, r4
    3efe:	8020      	ld.b      	r1, (r0, 0x0)
    3f00:	2100      	addi      	r1, 1
    3f02:	7444      	zextb      	r1, r1
    3f04:	a020      	st.b      	r1, (r0, 0x0)
    3f06:	3600      	movi      	r6, 0
    3f08:	1230      	lrw      	r1, 0x200002b2	// 4048 <TK_Keymap_prog+0x384>
    3f0a:	6050      	addu      	r1, r4
    3f0c:	a1c0      	st.b      	r6, (r1, 0x0)
    3f0e:	1230      	lrw      	r1, 0x200003e4	// 404c <TK_Keymap_prog+0x388>
    3f10:	6050      	addu      	r1, r4
    3f12:	a1c0      	st.b      	r6, (r1, 0x0)
    3f14:	122f      	lrw      	r1, 0x20000470	// 4050 <TK_Keymap_prog+0x38c>
    3f16:	6050      	addu      	r1, r4
    3f18:	a1c0      	st.b      	r6, (r1, 0x0)
    3f1a:	8020      	ld.b      	r1, (r0, 0x0)
    3f1c:	98c3      	ld.w      	r6, (r14, 0xc)
    3f1e:	6458      	cmphs      	r6, r1
    3f20:	0b6a      	bt      	0x3df4	// 3df4 <TK_Keymap_prog+0x130>
    3f22:	3d40      	cmpnei      	r5, 0
    3f24:	0808      	bt      	0x3f34	// 3f34 <TK_Keymap_prog+0x270>
    3f26:	124c      	lrw      	r2, 0x200002c4	// 4054 <TK_Keymap_prog+0x390>
    3f28:	9260      	ld.w      	r3, (r2, 0x0)
    3f2a:	3b40      	cmpnei      	r3, 0
    3f2c:	080c      	bt      	0x3f44	// 3f44 <TK_Keymap_prog+0x280>
    3f2e:	9220      	ld.w      	r1, (r2, 0x0)
    3f30:	3301      	movi      	r3, 1
    3f32:	0406      	br      	0x3f3e	// 3f3e <TK_Keymap_prog+0x27a>
    3f34:	3d41      	cmpnei      	r5, 1
    3f36:	080a      	bt      	0x3f4a	// 3f4a <TK_Keymap_prog+0x286>
    3f38:	1247      	lrw      	r2, 0x200002c4	// 4054 <TK_Keymap_prog+0x390>
    3f3a:	6cd7      	mov      	r3, r5
    3f3c:	9220      	ld.w      	r1, (r2, 0x0)
    3f3e:	70d0      	lsl      	r3, r4
    3f40:	6cc4      	or      	r3, r1
    3f42:	b260      	st.w      	r3, (r2, 0x0)
    3f44:	3300      	movi      	r3, 0
    3f46:	a060      	st.b      	r3, (r0, 0x0)
    3f48:	0756      	br      	0x3df4	// 3df4 <TK_Keymap_prog+0x130>
    3f4a:	3d42      	cmpnei      	r5, 2
    3f4c:	0c02      	bf      	0x3f50	// 3f50 <TK_Keymap_prog+0x28c>
    3f4e:	05dc      	br      	0x4306	// 4306 <TK_Keymap_prog+0x642>
    3f50:	12e7      	lrw      	r7, 0x2000046a	// 406c <TK_Keymap_prog+0x3a8>
    3f52:	8ac0      	ld.h      	r6, (r2, 0x0)
    3f54:	8f20      	ld.h      	r1, (r7, 0x0)
    3f56:	7445      	zexth      	r1, r1
    3f58:	759b      	sexth      	r6, r6
    3f5a:	2109      	addi      	r1, 10
    3f5c:	6585      	cmplt      	r1, r6
    3f5e:	0ff3      	bf      	0x3f44	// 3f44 <TK_Keymap_prog+0x280>
    3f60:	8a40      	ld.h      	r2, (r2, 0x0)
    3f62:	7489      	zexth      	r2, r2
    3f64:	af40      	st.h      	r2, (r7, 0x0)
    3f66:	115c      	lrw      	r2, 0x200002c4	// 4054 <TK_Keymap_prog+0x390>
    3f68:	b260      	st.w      	r3, (r2, 0x0)
    3f6a:	07e2      	br      	0x3f2e	// 3f2e <TK_Keymap_prog+0x26a>
    3f6c:	3d41      	cmpnei      	r5, 1
    3f6e:	089b      	bt      	0x40a4	// 40a4 <TK_Keymap_prog+0x3e0>
    3f70:	115e      	lrw      	r2, 0x20000260	// 4068 <TK_Keymap_prog+0x3a4>
    3f72:	6cd7      	mov      	r3, r5
    3f74:	9200      	ld.w      	r0, (r2, 0x0)
    3f76:	70d0      	lsl      	r3, r4
    3f78:	6cc0      	or      	r3, r0
    3f7a:	b260      	st.w      	r3, (r2, 0x0)
    3f7c:	3300      	movi      	r3, 0
    3f7e:	a160      	st.b      	r3, (r1, 0x0)
    3f80:	4461      	lsli      	r3, r4, 1
    3f82:	9841      	ld.w      	r2, (r14, 0x4)
    3f84:	608c      	addu      	r2, r3
    3f86:	8a60      	ld.h      	r3, (r2, 0x0)
    3f88:	74cf      	sexth      	r3, r3
    3f8a:	9845      	ld.w      	r2, (r14, 0x14)
    3f8c:	648d      	cmplt      	r3, r2
    3f8e:	0c18      	bf      	0x3fbe	// 3fbe <TK_Keymap_prog+0x2fa>
    3f90:	1153      	lrw      	r2, 0x20000338	// 405c <TK_Keymap_prog+0x398>
    3f92:	6090      	addu      	r2, r4
    3f94:	8260      	ld.b      	r3, (r2, 0x0)
    3f96:	2300      	addi      	r3, 1
    3f98:	74cc      	zextb      	r3, r3
    3f9a:	a260      	st.b      	r3, (r2, 0x0)
    3f9c:	3100      	movi      	r1, 0
    3f9e:	116f      	lrw      	r3, 0x20000488	// 4058 <TK_Keymap_prog+0x394>
    3fa0:	60d0      	addu      	r3, r4
    3fa2:	a320      	st.b      	r1, (r3, 0x0)
    3fa4:	8260      	ld.b      	r3, (r2, 0x0)
    3fa6:	9826      	ld.w      	r1, (r14, 0x18)
    3fa8:	64c4      	cmphs      	r1, r3
    3faa:	080a      	bt      	0x3fbe	// 3fbe <TK_Keymap_prog+0x2fa>
    3fac:	3300      	movi      	r3, 0
    3fae:	112f      	lrw      	r1, 0x20000260	// 4068 <TK_Keymap_prog+0x3a4>
    3fb0:	2b01      	subi      	r3, 2
    3fb2:	9100      	ld.w      	r0, (r1, 0x0)
    3fb4:	70d3      	rotl      	r3, r4
    3fb6:	68c0      	and      	r3, r0
    3fb8:	b160      	st.w      	r3, (r1, 0x0)
    3fba:	3300      	movi      	r3, 0
    3fbc:	a260      	st.b      	r3, (r2, 0x0)
    3fbe:	9860      	ld.w      	r3, (r14, 0x0)
    3fc0:	9842      	ld.w      	r2, (r14, 0x8)
    3fc2:	3b03      	cmphsi      	r3, 4
    3fc4:	4461      	lsli      	r3, r4, 1
    3fc6:	60c8      	addu      	r3, r2
    3fc8:	8b40      	ld.h      	r2, (r3, 0x0)
    3fca:	748b      	sexth      	r2, r2
    3fcc:	0d26      	bf      	0x4218	// 4218 <TK_Keymap_prog+0x554>
    3fce:	9820      	ld.w      	r1, (r14, 0x0)
    3fd0:	649d      	cmplt      	r7, r2
    3fd2:	7c5c      	mult      	r1, r7
    3fd4:	0d13      	bf      	0x41fa	// 41fa <TK_Keymap_prog+0x536>
    3fd6:	8b40      	ld.h      	r2, (r3, 0x0)
    3fd8:	748b      	sexth      	r2, r2
    3fda:	6449      	cmplt      	r2, r1
    3fdc:	0d0f      	bf      	0x41fa	// 41fa <TK_Keymap_prog+0x536>
    3fde:	1126      	lrw      	r1, 0x20000440	// 4074 <TK_Keymap_prog+0x3b0>
    3fe0:	6050      	addu      	r1, r4
    3fe2:	8140      	ld.b      	r2, (r1, 0x0)
    3fe4:	2200      	addi      	r2, 1
    3fe6:	7488      	zextb      	r2, r2
    3fe8:	a140      	st.b      	r2, (r1, 0x0)
    3fea:	3000      	movi      	r0, 0
    3fec:	1143      	lrw      	r2, 0x20000499	// 4078 <TK_Keymap_prog+0x3b4>
    3fee:	6090      	addu      	r2, r4
    3ff0:	a200      	st.b      	r0, (r2, 0x0)
    3ff2:	1143      	lrw      	r2, 0x2000024e	// 407c <TK_Keymap_prog+0x3b8>
    3ff4:	6090      	addu      	r2, r4
    3ff6:	a200      	st.b      	r0, (r2, 0x0)
    3ff8:	1142      	lrw      	r2, 0x20000350	// 4080 <TK_Keymap_prog+0x3bc>
    3ffa:	6090      	addu      	r2, r4
    3ffc:	a200      	st.b      	r0, (r2, 0x0)
    3ffe:	0443      	br      	0x4084	// 4084 <TK_Keymap_prog+0x3c0>
    4000:	20000148 	.long	0x20000148
    4004:	20000114 	.long	0x20000114
    4008:	20000125 	.long	0x20000125
    400c:	20000124 	.long	0x20000124
    4010:	2000054e 	.long	0x2000054e
    4014:	200002e0 	.long	0x200002e0
    4018:	2000022c 	.long	0x2000022c
    401c:	200003c2 	.long	0x200003c2
    4020:	20000308 	.long	0x20000308
    4024:	20000418 	.long	0x20000418
    4028:	200003f6 	.long	0x200003f6
    402c:	200004c2 	.long	0x200004c2
    4030:	2000052a 	.long	0x2000052a
    4034:	20000508 	.long	0x20000508
    4038:	20000290 	.long	0x20000290
    403c:	20000264 	.long	0x20000264
    4040:	2000017e 	.long	0x2000017e
    4044:	200002cd 	.long	0x200002cd
    4048:	200002b2 	.long	0x200002b2
    404c:	200003e4 	.long	0x200003e4
    4050:	20000470 	.long	0x20000470
    4054:	200002c4 	.long	0x200002c4
    4058:	20000488 	.long	0x20000488
    405c:	20000338 	.long	0x20000338
    4060:	20000362 	.long	0x20000362
    4064:	20000458 	.long	0x20000458
    4068:	20000260 	.long	0x20000260
    406c:	2000046a 	.long	0x2000046a
    4070:	200002de 	.long	0x200002de
    4074:	20000440 	.long	0x20000440
    4078:	20000499 	.long	0x20000499
    407c:	2000024e 	.long	0x2000024e
    4080:	20000350 	.long	0x20000350
    4084:	8140      	ld.b      	r2, (r1, 0x0)
    4086:	9803      	ld.w      	r0, (r14, 0xc)
    4088:	6480      	cmphs      	r0, r2
    408a:	0881      	bt      	0x418c	// 418c <TK_Keymap_prog+0x4c8>
    408c:	3d40      	cmpnei      	r5, 0
    408e:	0874      	bt      	0x4176	// 4176 <TK_Keymap_prog+0x4b2>
    4090:	014b      	lrw      	r2, 0x20000334	// 43e0 <TK_Keymap_prog+0x71c>
    4092:	9260      	ld.w      	r3, (r2, 0x0)
    4094:	3b40      	cmpnei      	r3, 0
    4096:	0879      	bt      	0x4188	// 4188 <TK_Keymap_prog+0x4c4>
    4098:	3301      	movi      	r3, 1
    409a:	9200      	ld.w      	r0, (r2, 0x0)
    409c:	70d0      	lsl      	r3, r4
    409e:	6cc0      	or      	r3, r0
    40a0:	b260      	st.w      	r3, (r2, 0x0)
    40a2:	0473      	br      	0x4188	// 4188 <TK_Keymap_prog+0x4c4>
    40a4:	3d42      	cmpnei      	r5, 2
    40a6:	0960      	bt      	0x4366	// 4366 <TK_Keymap_prog+0x6a2>
    40a8:	01d0      	lrw      	r6, 0x2000054c	// 43e4 <TK_Keymap_prog+0x720>
    40aa:	8b00      	ld.h      	r0, (r3, 0x0)
    40ac:	8e40      	ld.h      	r2, (r6, 0x0)
    40ae:	7489      	zexth      	r2, r2
    40b0:	7403      	sexth      	r0, r0
    40b2:	2209      	addi      	r2, 10
    40b4:	6409      	cmplt      	r2, r0
    40b6:	0f63      	bf      	0x3f7c	// 3f7c <TK_Keymap_prog+0x2b8>
    40b8:	8b60      	ld.h      	r3, (r3, 0x0)
    40ba:	74cd      	zexth      	r3, r3
    40bc:	ae60      	st.h      	r3, (r6, 0x0)
    40be:	3300      	movi      	r3, 0
    40c0:	0155      	lrw      	r2, 0x20000260	// 43e8 <TK_Keymap_prog+0x724>
    40c2:	b260      	st.w      	r3, (r2, 0x0)
    40c4:	06e8      	br      	0x3e94	// 3e94 <TK_Keymap_prog+0x1d0>
    40c6:	9841      	ld.w      	r2, (r14, 0x4)
    40c8:	4461      	lsli      	r3, r4, 1
    40ca:	60c8      	addu      	r3, r2
    40cc:	8b60      	ld.h      	r3, (r3, 0x0)
    40ce:	9840      	ld.w      	r2, (r14, 0x0)
    40d0:	74cf      	sexth      	r3, r3
    40d2:	7c9c      	mult      	r2, r7
    40d4:	64c9      	cmplt      	r2, r3
    40d6:	0f55      	bf      	0x3f80	// 3f80 <TK_Keymap_prog+0x2bc>
    40d8:	3300      	movi      	r3, 0
    40da:	015b      	lrw      	r2, 0x20000260	// 43e8 <TK_Keymap_prog+0x724>
    40dc:	2b01      	subi      	r3, 2
    40de:	9220      	ld.w      	r1, (r2, 0x0)
    40e0:	70d3      	rotl      	r3, r4
    40e2:	68c4      	and      	r3, r1
    40e4:	b260      	st.w      	r3, (r2, 0x0)
    40e6:	074d      	br      	0x3f80	// 3f80 <TK_Keymap_prog+0x2bc>
    40e8:	649d      	cmplt      	r7, r2
    40ea:	0f4b      	bf      	0x3f80	// 3f80 <TK_Keymap_prog+0x2bc>
    40ec:	015f      	lrw      	r2, 0x200002de	// 43ec <TK_Keymap_prog+0x728>
    40ee:	8240      	ld.b      	r2, (r2, 0x0)
    40f0:	7488      	zextb      	r2, r2
    40f2:	3a40      	cmpnei      	r2, 0
    40f4:	b847      	st.w      	r2, (r14, 0x1c)
    40f6:	0b45      	bt      	0x3f80	// 3f80 <TK_Keymap_prog+0x2bc>
    40f8:	0201      	lrw      	r0, 0x20000488	// 43f0 <TK_Keymap_prog+0x72c>
    40fa:	6010      	addu      	r0, r4
    40fc:	8020      	ld.b      	r1, (r0, 0x0)
    40fe:	2100      	addi      	r1, 1
    4100:	7444      	zextb      	r1, r1
    4102:	a020      	st.b      	r1, (r0, 0x0)
    4104:	3600      	movi      	r6, 0
    4106:	0223      	lrw      	r1, 0x20000338	// 43f4 <TK_Keymap_prog+0x730>
    4108:	6050      	addu      	r1, r4
    410a:	a1c0      	st.b      	r6, (r1, 0x0)
    410c:	0224      	lrw      	r1, 0x20000362	// 43f8 <TK_Keymap_prog+0x734>
    410e:	6050      	addu      	r1, r4
    4110:	a1c0      	st.b      	r6, (r1, 0x0)
    4112:	0224      	lrw      	r1, 0x20000458	// 43fc <TK_Keymap_prog+0x738>
    4114:	6050      	addu      	r1, r4
    4116:	a1c0      	st.b      	r6, (r1, 0x0)
    4118:	8020      	ld.b      	r1, (r0, 0x0)
    411a:	98c3      	ld.w      	r6, (r14, 0xc)
    411c:	6458      	cmphs      	r6, r1
    411e:	0b31      	bt      	0x3f80	// 3f80 <TK_Keymap_prog+0x2bc>
    4120:	3d40      	cmpnei      	r5, 0
    4122:	0808      	bt      	0x4132	// 4132 <TK_Keymap_prog+0x46e>
    4124:	024e      	lrw      	r2, 0x20000260	// 43e8 <TK_Keymap_prog+0x724>
    4126:	9260      	ld.w      	r3, (r2, 0x0)
    4128:	3b40      	cmpnei      	r3, 0
    412a:	0823      	bt      	0x4170	// 4170 <TK_Keymap_prog+0x4ac>
    412c:	9220      	ld.w      	r1, (r2, 0x0)
    412e:	3301      	movi      	r3, 1
    4130:	0406      	br      	0x413c	// 413c <TK_Keymap_prog+0x478>
    4132:	3d41      	cmpnei      	r5, 1
    4134:	0808      	bt      	0x4144	// 4144 <TK_Keymap_prog+0x480>
    4136:	0252      	lrw      	r2, 0x20000260	// 43e8 <TK_Keymap_prog+0x724>
    4138:	6cd7      	mov      	r3, r5
    413a:	9220      	ld.w      	r1, (r2, 0x0)
    413c:	70d0      	lsl      	r3, r4
    413e:	6cc4      	or      	r3, r1
    4140:	b260      	st.w      	r3, (r2, 0x0)
    4142:	0417      	br      	0x4170	// 4170 <TK_Keymap_prog+0x4ac>
    4144:	3d42      	cmpnei      	r5, 2
    4146:	0942      	bt      	0x43ca	// 43ca <TK_Keymap_prog+0x706>
    4148:	8bc0      	ld.h      	r6, (r3, 0x0)
    414a:	745b      	sexth      	r1, r6
    414c:	02d9      	lrw      	r6, 0x2000054c	// 43e4 <TK_Keymap_prog+0x720>
    414e:	6c87      	mov      	r2, r1
    4150:	8e20      	ld.h      	r1, (r6, 0x0)
    4152:	7445      	zexth      	r1, r1
    4154:	2109      	addi      	r1, 10
    4156:	6485      	cmplt      	r1, r2
    4158:	0c0c      	bf      	0x4170	// 4170 <TK_Keymap_prog+0x4ac>
    415a:	8b60      	ld.h      	r3, (r3, 0x0)
    415c:	74cd      	zexth      	r3, r3
    415e:	ae60      	st.h      	r3, (r6, 0x0)
    4160:	9867      	ld.w      	r3, (r14, 0x1c)
    4162:	023d      	lrw      	r1, 0x20000260	// 43e8 <TK_Keymap_prog+0x724>
    4164:	b160      	st.w      	r3, (r1, 0x0)
    4166:	3301      	movi      	r3, 1
    4168:	9140      	ld.w      	r2, (r1, 0x0)
    416a:	70d0      	lsl      	r3, r4
    416c:	6cc8      	or      	r3, r2
    416e:	b160      	st.w      	r3, (r1, 0x0)
    4170:	3300      	movi      	r3, 0
    4172:	a060      	st.b      	r3, (r0, 0x0)
    4174:	0706      	br      	0x3f80	// 3f80 <TK_Keymap_prog+0x2bc>
    4176:	3d41      	cmpnei      	r5, 1
    4178:	0830      	bt      	0x41d8	// 41d8 <TK_Keymap_prog+0x514>
    417a:	0345      	lrw      	r2, 0x20000334	// 43e0 <TK_Keymap_prog+0x71c>
    417c:	6cd7      	mov      	r3, r5
    417e:	9200      	ld.w      	r0, (r2, 0x0)
    4180:	70d0      	lsl      	r3, r4
    4182:	6cc0      	or      	r3, r0
    4184:	b260      	st.w      	r3, (r2, 0x0)
    4186:	6c03      	mov      	r0, r0
    4188:	3300      	movi      	r3, 0
    418a:	a160      	st.b      	r3, (r1, 0x0)
    418c:	4461      	lsli      	r3, r4, 1
    418e:	9842      	ld.w      	r2, (r14, 0x8)
    4190:	608c      	addu      	r2, r3
    4192:	8a60      	ld.h      	r3, (r2, 0x0)
    4194:	74cf      	sexth      	r3, r3
    4196:	9845      	ld.w      	r2, (r14, 0x14)
    4198:	648d      	cmplt      	r3, r2
    419a:	0c18      	bf      	0x41ca	// 41ca <TK_Keymap_prog+0x506>
    419c:	0346      	lrw      	r2, 0x20000499	// 4400 <TK_Keymap_prog+0x73c>
    419e:	6090      	addu      	r2, r4
    41a0:	8260      	ld.b      	r3, (r2, 0x0)
    41a2:	2300      	addi      	r3, 1
    41a4:	74cc      	zextb      	r3, r3
    41a6:	a260      	st.b      	r3, (r2, 0x0)
    41a8:	3100      	movi      	r1, 0
    41aa:	0368      	lrw      	r3, 0x20000440	// 4404 <TK_Keymap_prog+0x740>
    41ac:	60d0      	addu      	r3, r4
    41ae:	a320      	st.b      	r1, (r3, 0x0)
    41b0:	8260      	ld.b      	r3, (r2, 0x0)
    41b2:	9826      	ld.w      	r1, (r14, 0x18)
    41b4:	64c4      	cmphs      	r1, r3
    41b6:	080a      	bt      	0x41ca	// 41ca <TK_Keymap_prog+0x506>
    41b8:	3300      	movi      	r3, 0
    41ba:	0335      	lrw      	r1, 0x20000334	// 43e0 <TK_Keymap_prog+0x71c>
    41bc:	2b01      	subi      	r3, 2
    41be:	9100      	ld.w      	r0, (r1, 0x0)
    41c0:	70d3      	rotl      	r3, r4
    41c2:	68c0      	and      	r3, r0
    41c4:	b160      	st.w      	r3, (r1, 0x0)
    41c6:	3300      	movi      	r3, 0
    41c8:	a260      	st.b      	r3, (r2, 0x0)
    41ca:	2400      	addi      	r4, 1
    41cc:	3c51      	cmpnei      	r4, 17
    41ce:	0c03      	bf      	0x41d4	// 41d4 <TK_Keymap_prog+0x510>
    41d0:	e800fd8d 	br      	0x3cea	// 3cea <TK_Keymap_prog+0x26>
    41d4:	140a      	addi      	r14, r14, 40
    41d6:	1494      	pop      	r4-r7, r15
    41d8:	3d42      	cmpnei      	r5, 2
    41da:	0948      	bt      	0x446a	// 446a <TK_Keymap_prog+0x7a6>
    41dc:	03d4      	lrw      	r6, 0x20000302	// 4408 <TK_Keymap_prog+0x744>
    41de:	8b00      	ld.h      	r0, (r3, 0x0)
    41e0:	8e40      	ld.h      	r2, (r6, 0x0)
    41e2:	7489      	zexth      	r2, r2
    41e4:	7403      	sexth      	r0, r0
    41e6:	2209      	addi      	r2, 10
    41e8:	6409      	cmplt      	r2, r0
    41ea:	0fcf      	bf      	0x4188	// 4188 <TK_Keymap_prog+0x4c4>
    41ec:	8b60      	ld.h      	r3, (r3, 0x0)
    41ee:	74cd      	zexth      	r3, r3
    41f0:	ae60      	st.h      	r3, (r6, 0x0)
    41f2:	3300      	movi      	r3, 0
    41f4:	135b      	lrw      	r2, 0x20000334	// 43e0 <TK_Keymap_prog+0x71c>
    41f6:	b260      	st.w      	r3, (r2, 0x0)
    41f8:	0750      	br      	0x4098	// 4098 <TK_Keymap_prog+0x3d4>
    41fa:	4461      	lsli      	r3, r4, 1
    41fc:	9842      	ld.w      	r2, (r14, 0x8)
    41fe:	60c8      	addu      	r3, r2
    4200:	8b60      	ld.h      	r3, (r3, 0x0)
    4202:	74cf      	sexth      	r3, r3
    4204:	64c5      	cmplt      	r1, r3
    4206:	0fc3      	bf      	0x418c	// 418c <TK_Keymap_prog+0x4c8>
    4208:	3300      	movi      	r3, 0
    420a:	1356      	lrw      	r2, 0x20000334	// 43e0 <TK_Keymap_prog+0x71c>
    420c:	2b01      	subi      	r3, 2
    420e:	9220      	ld.w      	r1, (r2, 0x0)
    4210:	70d3      	rotl      	r3, r4
    4212:	68c4      	and      	r3, r1
    4214:	b260      	st.w      	r3, (r2, 0x0)
    4216:	07bb      	br      	0x418c	// 418c <TK_Keymap_prog+0x4c8>
    4218:	649d      	cmplt      	r7, r2
    421a:	0fb9      	bf      	0x418c	// 418c <TK_Keymap_prog+0x4c8>
    421c:	1354      	lrw      	r2, 0x200002de	// 43ec <TK_Keymap_prog+0x728>
    421e:	8240      	ld.b      	r2, (r2, 0x0)
    4220:	7488      	zextb      	r2, r2
    4222:	3a40      	cmpnei      	r2, 0
    4224:	0bb4      	bt      	0x418c	// 418c <TK_Keymap_prog+0x4c8>
    4226:	1318      	lrw      	r0, 0x20000440	// 4404 <TK_Keymap_prog+0x740>
    4228:	6010      	addu      	r0, r4
    422a:	8020      	ld.b      	r1, (r0, 0x0)
    422c:	2100      	addi      	r1, 1
    422e:	7444      	zextb      	r1, r1
    4230:	a020      	st.b      	r1, (r0, 0x0)
    4232:	3600      	movi      	r6, 0
    4234:	1333      	lrw      	r1, 0x20000499	// 4400 <TK_Keymap_prog+0x73c>
    4236:	6050      	addu      	r1, r4
    4238:	a1c0      	st.b      	r6, (r1, 0x0)
    423a:	1335      	lrw      	r1, 0x2000024e	// 440c <TK_Keymap_prog+0x748>
    423c:	6050      	addu      	r1, r4
    423e:	a1c0      	st.b      	r6, (r1, 0x0)
    4240:	1334      	lrw      	r1, 0x20000350	// 4410 <TK_Keymap_prog+0x74c>
    4242:	6050      	addu      	r1, r4
    4244:	a1c0      	st.b      	r6, (r1, 0x0)
    4246:	8020      	ld.b      	r1, (r0, 0x0)
    4248:	98c3      	ld.w      	r6, (r14, 0xc)
    424a:	6458      	cmphs      	r6, r1
    424c:	0ba0      	bt      	0x418c	// 418c <TK_Keymap_prog+0x4c8>
    424e:	3d40      	cmpnei      	r5, 0
    4250:	0808      	bt      	0x4260	// 4260 <TK_Keymap_prog+0x59c>
    4252:	1344      	lrw      	r2, 0x20000334	// 43e0 <TK_Keymap_prog+0x71c>
    4254:	9260      	ld.w      	r3, (r2, 0x0)
    4256:	3b40      	cmpnei      	r3, 0
    4258:	0821      	bt      	0x429a	// 429a <TK_Keymap_prog+0x5d6>
    425a:	9220      	ld.w      	r1, (r2, 0x0)
    425c:	3301      	movi      	r3, 1
    425e:	0406      	br      	0x426a	// 426a <TK_Keymap_prog+0x5a6>
    4260:	3d41      	cmpnei      	r5, 1
    4262:	0808      	bt      	0x4272	// 4272 <TK_Keymap_prog+0x5ae>
    4264:	125f      	lrw      	r2, 0x20000334	// 43e0 <TK_Keymap_prog+0x71c>
    4266:	6cd7      	mov      	r3, r5
    4268:	9220      	ld.w      	r1, (r2, 0x0)
    426a:	70d0      	lsl      	r3, r4
    426c:	6cc4      	or      	r3, r1
    426e:	b260      	st.w      	r3, (r2, 0x0)
    4270:	0415      	br      	0x429a	// 429a <TK_Keymap_prog+0x5d6>
    4272:	3d42      	cmpnei      	r5, 2
    4274:	092a      	bt      	0x44c8	// 44c8 <TK_Keymap_prog+0x804>
    4276:	13e5      	lrw      	r7, 0x20000302	// 4408 <TK_Keymap_prog+0x744>
    4278:	8bc0      	ld.h      	r6, (r3, 0x0)
    427a:	8f20      	ld.h      	r1, (r7, 0x0)
    427c:	7445      	zexth      	r1, r1
    427e:	759b      	sexth      	r6, r6
    4280:	2109      	addi      	r1, 10
    4282:	6585      	cmplt      	r1, r6
    4284:	0c0b      	bf      	0x429a	// 429a <TK_Keymap_prog+0x5d6>
    4286:	8b60      	ld.h      	r3, (r3, 0x0)
    4288:	1236      	lrw      	r1, 0x20000334	// 43e0 <TK_Keymap_prog+0x71c>
    428a:	74cd      	zexth      	r3, r3
    428c:	af60      	st.h      	r3, (r7, 0x0)
    428e:	b140      	st.w      	r2, (r1, 0x0)
    4290:	3301      	movi      	r3, 1
    4292:	9140      	ld.w      	r2, (r1, 0x0)
    4294:	70d0      	lsl      	r3, r4
    4296:	6cc8      	or      	r3, r2
    4298:	b160      	st.w      	r3, (r1, 0x0)
    429a:	3300      	movi      	r3, 0
    429c:	a060      	st.b      	r3, (r0, 0x0)
    429e:	0777      	br      	0x418c	// 418c <TK_Keymap_prog+0x4c8>
    42a0:	3d43      	cmpnei      	r5, 3
    42a2:	0c03      	bf      	0x42a8	// 42a8 <TK_Keymap_prog+0x5e4>
    42a4:	e800fda6 	br      	0x3df0	// 3df0 <TK_Keymap_prog+0x12c>
    42a8:	125b      	lrw      	r2, 0x2000046a	// 4414 <TK_Keymap_prog+0x750>
    42aa:	8bc0      	ld.h      	r6, (r3, 0x0)
    42ac:	8a00      	ld.h      	r0, (r2, 0x0)
    42ae:	7401      	zexth      	r0, r0
    42b0:	759b      	sexth      	r6, r6
    42b2:	2009      	addi      	r0, 10
    42b4:	6581      	cmplt      	r0, r6
    42b6:	0c0c      	bf      	0x42ce	// 42ce <TK_Keymap_prog+0x60a>
    42b8:	8b60      	ld.h      	r3, (r3, 0x0)
    42ba:	74cd      	zexth      	r3, r3
    42bc:	aa60      	st.h      	r3, (r2, 0x0)
    42be:	3300      	movi      	r3, 0
    42c0:	1216      	lrw      	r0, 0x200002c4	// 4418 <TK_Keymap_prog+0x754>
    42c2:	b060      	st.w      	r3, (r0, 0x0)
    42c4:	3301      	movi      	r3, 1
    42c6:	90c0      	ld.w      	r6, (r0, 0x0)
    42c8:	70d0      	lsl      	r3, r4
    42ca:	6cd8      	or      	r3, r6
    42cc:	b060      	st.w      	r3, (r0, 0x0)
    42ce:	9804      	ld.w      	r0, (r14, 0x10)
    42d0:	4461      	lsli      	r3, r4, 1
    42d2:	60c0      	addu      	r3, r0
    42d4:	8b00      	ld.h      	r0, (r3, 0x0)
    42d6:	8a40      	ld.h      	r2, (r2, 0x0)
    42d8:	7489      	zexth      	r2, r2
    42da:	7403      	sexth      	r0, r0
    42dc:	2a04      	subi      	r2, 5
    42de:	6481      	cmplt      	r0, r2
    42e0:	0803      	bt      	0x42e6	// 42e6 <TK_Keymap_prog+0x622>
    42e2:	e800fd87 	br      	0x3df0	// 3df0 <TK_Keymap_prog+0x12c>
    42e6:	12ce      	lrw      	r6, 0x2000028c	// 441c <TK_Keymap_prog+0x758>
    42e8:	8b00      	ld.h      	r0, (r3, 0x0)
    42ea:	8e40      	ld.h      	r2, (r6, 0x0)
    42ec:	7489      	zexth      	r2, r2
    42ee:	7403      	sexth      	r0, r0
    42f0:	2204      	addi      	r2, 5
    42f2:	6409      	cmplt      	r2, r0
    42f4:	0803      	bt      	0x42fa	// 42fa <TK_Keymap_prog+0x636>
    42f6:	e800fd7d 	br      	0x3df0	// 3df0 <TK_Keymap_prog+0x12c>
    42fa:	8b60      	ld.h      	r3, (r3, 0x0)
    42fc:	74cd      	zexth      	r3, r3
    42fe:	ae60      	st.h      	r3, (r6, 0x0)
    4300:	1246      	lrw      	r2, 0x200002c4	// 4418 <TK_Keymap_prog+0x754>
    4302:	e800fd63 	br      	0x3dc8	// 3dc8 <TK_Keymap_prog+0x104>
    4306:	3d43      	cmpnei      	r5, 3
    4308:	0c02      	bf      	0x430c	// 430c <TK_Keymap_prog+0x648>
    430a:	061d      	br      	0x3f44	// 3f44 <TK_Keymap_prog+0x280>
    430c:	12c2      	lrw      	r6, 0x2000046a	// 4414 <TK_Keymap_prog+0x750>
    430e:	8ae0      	ld.h      	r7, (r2, 0x0)
    4310:	8e20      	ld.h      	r1, (r6, 0x0)
    4312:	7445      	zexth      	r1, r1
    4314:	75df      	sexth      	r7, r7
    4316:	2109      	addi      	r1, 10
    4318:	65c5      	cmplt      	r1, r7
    431a:	0c0b      	bf      	0x4330	// 4330 <TK_Keymap_prog+0x66c>
    431c:	8a40      	ld.h      	r2, (r2, 0x0)
    431e:	7489      	zexth      	r2, r2
    4320:	ae40      	st.h      	r2, (r6, 0x0)
    4322:	115e      	lrw      	r2, 0x200002c4	// 4418 <TK_Keymap_prog+0x754>
    4324:	b260      	st.w      	r3, (r2, 0x0)
    4326:	3301      	movi      	r3, 1
    4328:	9220      	ld.w      	r1, (r2, 0x0)
    432a:	70d0      	lsl      	r3, r4
    432c:	6cc4      	or      	r3, r1
    432e:	b260      	st.w      	r3, (r2, 0x0)
    4330:	9844      	ld.w      	r2, (r14, 0x10)
    4332:	4461      	lsli      	r3, r4, 1
    4334:	60c8      	addu      	r3, r2
    4336:	8b40      	ld.h      	r2, (r3, 0x0)
    4338:	8e20      	ld.h      	r1, (r6, 0x0)
    433a:	7445      	zexth      	r1, r1
    433c:	748b      	sexth      	r2, r2
    433e:	2904      	subi      	r1, 5
    4340:	6449      	cmplt      	r2, r1
    4342:	0802      	bt      	0x4346	// 4346 <TK_Keymap_prog+0x682>
    4344:	0600      	br      	0x3f44	// 3f44 <TK_Keymap_prog+0x280>
    4346:	11d6      	lrw      	r6, 0x2000028c	// 441c <TK_Keymap_prog+0x758>
    4348:	8b20      	ld.h      	r1, (r3, 0x0)
    434a:	8e40      	ld.h      	r2, (r6, 0x0)
    434c:	7489      	zexth      	r2, r2
    434e:	7447      	sexth      	r1, r1
    4350:	2204      	addi      	r2, 5
    4352:	6449      	cmplt      	r2, r1
    4354:	0803      	bt      	0x435a	// 435a <TK_Keymap_prog+0x696>
    4356:	e800fdf7 	br      	0x3f44	// 3f44 <TK_Keymap_prog+0x280>
    435a:	8b60      	ld.h      	r3, (r3, 0x0)
    435c:	74cd      	zexth      	r3, r3
    435e:	ae60      	st.h      	r3, (r6, 0x0)
    4360:	114e      	lrw      	r2, 0x200002c4	// 4418 <TK_Keymap_prog+0x754>
    4362:	e800fde6 	br      	0x3f2e	// 3f2e <TK_Keymap_prog+0x26a>
    4366:	3d43      	cmpnei      	r5, 3
    4368:	0c02      	bf      	0x436c	// 436c <TK_Keymap_prog+0x6a8>
    436a:	0609      	br      	0x3f7c	// 3f7c <TK_Keymap_prog+0x2b8>
    436c:	105e      	lrw      	r2, 0x2000054c	// 43e4 <TK_Keymap_prog+0x720>
    436e:	8bc0      	ld.h      	r6, (r3, 0x0)
    4370:	8a00      	ld.h      	r0, (r2, 0x0)
    4372:	7401      	zexth      	r0, r0
    4374:	759b      	sexth      	r6, r6
    4376:	2009      	addi      	r0, 10
    4378:	6581      	cmplt      	r0, r6
    437a:	0c0c      	bf      	0x4392	// 4392 <TK_Keymap_prog+0x6ce>
    437c:	8b60      	ld.h      	r3, (r3, 0x0)
    437e:	74cd      	zexth      	r3, r3
    4380:	aa60      	st.h      	r3, (r2, 0x0)
    4382:	3300      	movi      	r3, 0
    4384:	1019      	lrw      	r0, 0x20000260	// 43e8 <TK_Keymap_prog+0x724>
    4386:	b060      	st.w      	r3, (r0, 0x0)
    4388:	3301      	movi      	r3, 1
    438a:	90c0      	ld.w      	r6, (r0, 0x0)
    438c:	70d0      	lsl      	r3, r4
    438e:	6cd8      	or      	r3, r6
    4390:	b060      	st.w      	r3, (r0, 0x0)
    4392:	9801      	ld.w      	r0, (r14, 0x4)
    4394:	4461      	lsli      	r3, r4, 1
    4396:	60c0      	addu      	r3, r0
    4398:	8b00      	ld.h      	r0, (r3, 0x0)
    439a:	8a40      	ld.h      	r2, (r2, 0x0)
    439c:	7489      	zexth      	r2, r2
    439e:	7403      	sexth      	r0, r0
    43a0:	2a04      	subi      	r2, 5
    43a2:	6481      	cmplt      	r0, r2
    43a4:	0803      	bt      	0x43aa	// 43aa <TK_Keymap_prog+0x6e6>
    43a6:	e800fdeb 	br      	0x3f7c	// 3f7c <TK_Keymap_prog+0x2b8>
    43aa:	10de      	lrw      	r6, 0x2000046e	// 4420 <TK_Keymap_prog+0x75c>
    43ac:	8b00      	ld.h      	r0, (r3, 0x0)
    43ae:	8e40      	ld.h      	r2, (r6, 0x0)
    43b0:	7489      	zexth      	r2, r2
    43b2:	7403      	sexth      	r0, r0
    43b4:	2204      	addi      	r2, 5
    43b6:	6409      	cmplt      	r2, r0
    43b8:	0803      	bt      	0x43be	// 43be <TK_Keymap_prog+0x6fa>
    43ba:	e800fde1 	br      	0x3f7c	// 3f7c <TK_Keymap_prog+0x2b8>
    43be:	8b60      	ld.h      	r3, (r3, 0x0)
    43c0:	74cd      	zexth      	r3, r3
    43c2:	ae60      	st.h      	r3, (r6, 0x0)
    43c4:	1049      	lrw      	r2, 0x20000260	// 43e8 <TK_Keymap_prog+0x724>
    43c6:	e800fd67 	br      	0x3e94	// 3e94 <TK_Keymap_prog+0x1d0>
    43ca:	3d43      	cmpnei      	r5, 3
    43cc:	0ad2      	bt      	0x4170	// 4170 <TK_Keymap_prog+0x4ac>
    43ce:	8b20      	ld.h      	r1, (r3, 0x0)
    43d0:	10c5      	lrw      	r6, 0x2000054c	// 43e4 <TK_Keymap_prog+0x720>
    43d2:	7487      	sexth      	r2, r1
    43d4:	8e20      	ld.h      	r1, (r6, 0x0)
    43d6:	7445      	zexth      	r1, r1
    43d8:	2109      	addi      	r1, 10
    43da:	6485      	cmplt      	r1, r2
    43dc:	0c2f      	bf      	0x443a	// 443a <TK_Keymap_prog+0x776>
    43de:	0423      	br      	0x4424	// 4424 <TK_Keymap_prog+0x760>
    43e0:	20000334 	.long	0x20000334
    43e4:	2000054c 	.long	0x2000054c
    43e8:	20000260 	.long	0x20000260
    43ec:	200002de 	.long	0x200002de
    43f0:	20000488 	.long	0x20000488
    43f4:	20000338 	.long	0x20000338
    43f8:	20000362 	.long	0x20000362
    43fc:	20000458 	.long	0x20000458
    4400:	20000499 	.long	0x20000499
    4404:	20000440 	.long	0x20000440
    4408:	20000302 	.long	0x20000302
    440c:	2000024e 	.long	0x2000024e
    4410:	20000350 	.long	0x20000350
    4414:	2000046a 	.long	0x2000046a
    4418:	200002c4 	.long	0x200002c4
    441c:	2000028c 	.long	0x2000028c
    4420:	2000046e 	.long	0x2000046e
    4424:	8b60      	ld.h      	r3, (r3, 0x0)
    4426:	74cd      	zexth      	r3, r3
    4428:	ae60      	st.h      	r3, (r6, 0x0)
    442a:	9867      	ld.w      	r3, (r14, 0x1c)
    442c:	113d      	lrw      	r1, 0x20000260	// 4520 <TK_Keymap_prog+0x85c>
    442e:	b160      	st.w      	r3, (r1, 0x0)
    4430:	3301      	movi      	r3, 1
    4432:	9140      	ld.w      	r2, (r1, 0x0)
    4434:	70d0      	lsl      	r3, r4
    4436:	6cc8      	or      	r3, r2
    4438:	b160      	st.w      	r3, (r1, 0x0)
    443a:	9841      	ld.w      	r2, (r14, 0x4)
    443c:	4461      	lsli      	r3, r4, 1
    443e:	60c8      	addu      	r3, r2
    4440:	8b40      	ld.h      	r2, (r3, 0x0)
    4442:	8e20      	ld.h      	r1, (r6, 0x0)
    4444:	7445      	zexth      	r1, r1
    4446:	748b      	sexth      	r2, r2
    4448:	2904      	subi      	r1, 5
    444a:	6449      	cmplt      	r2, r1
    444c:	0e92      	bf      	0x4170	// 4170 <TK_Keymap_prog+0x4ac>
    444e:	11d6      	lrw      	r6, 0x2000046e	// 4524 <TK_Keymap_prog+0x860>
    4450:	8b20      	ld.h      	r1, (r3, 0x0)
    4452:	8e40      	ld.h      	r2, (r6, 0x0)
    4454:	7489      	zexth      	r2, r2
    4456:	7447      	sexth      	r1, r1
    4458:	2204      	addi      	r2, 5
    445a:	6449      	cmplt      	r2, r1
    445c:	0802      	bt      	0x4460	// 4460 <TK_Keymap_prog+0x79c>
    445e:	0689      	br      	0x4170	// 4170 <TK_Keymap_prog+0x4ac>
    4460:	8b60      	ld.h      	r3, (r3, 0x0)
    4462:	74cd      	zexth      	r3, r3
    4464:	ae60      	st.h      	r3, (r6, 0x0)
    4466:	114f      	lrw      	r2, 0x20000260	// 4520 <TK_Keymap_prog+0x85c>
    4468:	0662      	br      	0x412c	// 412c <TK_Keymap_prog+0x468>
    446a:	3d43      	cmpnei      	r5, 3
    446c:	0a8e      	bt      	0x4188	// 4188 <TK_Keymap_prog+0x4c4>
    446e:	114f      	lrw      	r2, 0x20000302	// 4528 <TK_Keymap_prog+0x864>
    4470:	8bc0      	ld.h      	r6, (r3, 0x0)
    4472:	8a00      	ld.h      	r0, (r2, 0x0)
    4474:	7401      	zexth      	r0, r0
    4476:	759b      	sexth      	r6, r6
    4478:	2009      	addi      	r0, 10
    447a:	6581      	cmplt      	r0, r6
    447c:	0c0c      	bf      	0x4494	// 4494 <TK_Keymap_prog+0x7d0>
    447e:	8b60      	ld.h      	r3, (r3, 0x0)
    4480:	74cd      	zexth      	r3, r3
    4482:	aa60      	st.h      	r3, (r2, 0x0)
    4484:	3300      	movi      	r3, 0
    4486:	110a      	lrw      	r0, 0x20000334	// 452c <TK_Keymap_prog+0x868>
    4488:	b060      	st.w      	r3, (r0, 0x0)
    448a:	3301      	movi      	r3, 1
    448c:	90c0      	ld.w      	r6, (r0, 0x0)
    448e:	70d0      	lsl      	r3, r4
    4490:	6cd8      	or      	r3, r6
    4492:	b060      	st.w      	r3, (r0, 0x0)
    4494:	9802      	ld.w      	r0, (r14, 0x8)
    4496:	4461      	lsli      	r3, r4, 1
    4498:	60c0      	addu      	r3, r0
    449a:	8b00      	ld.h      	r0, (r3, 0x0)
    449c:	8a40      	ld.h      	r2, (r2, 0x0)
    449e:	7489      	zexth      	r2, r2
    44a0:	7403      	sexth      	r0, r0
    44a2:	2a04      	subi      	r2, 5
    44a4:	6481      	cmplt      	r0, r2
    44a6:	0802      	bt      	0x44aa	// 44aa <TK_Keymap_prog+0x7e6>
    44a8:	0670      	br      	0x4188	// 4188 <TK_Keymap_prog+0x4c4>
    44aa:	11c2      	lrw      	r6, 0x200003c0	// 4530 <TK_Keymap_prog+0x86c>
    44ac:	8b00      	ld.h      	r0, (r3, 0x0)
    44ae:	8e40      	ld.h      	r2, (r6, 0x0)
    44b0:	7489      	zexth      	r2, r2
    44b2:	7403      	sexth      	r0, r0
    44b4:	2204      	addi      	r2, 5
    44b6:	6409      	cmplt      	r2, r0
    44b8:	0802      	bt      	0x44bc	// 44bc <TK_Keymap_prog+0x7f8>
    44ba:	0667      	br      	0x4188	// 4188 <TK_Keymap_prog+0x4c4>
    44bc:	8b60      	ld.h      	r3, (r3, 0x0)
    44be:	74cd      	zexth      	r3, r3
    44c0:	ae60      	st.h      	r3, (r6, 0x0)
    44c2:	105b      	lrw      	r2, 0x20000334	// 452c <TK_Keymap_prog+0x868>
    44c4:	e800fdea 	br      	0x4098	// 4098 <TK_Keymap_prog+0x3d4>
    44c8:	3d43      	cmpnei      	r5, 3
    44ca:	0ae8      	bt      	0x429a	// 429a <TK_Keymap_prog+0x5d6>
    44cc:	10d7      	lrw      	r6, 0x20000302	// 4528 <TK_Keymap_prog+0x864>
    44ce:	8be0      	ld.h      	r7, (r3, 0x0)
    44d0:	8e20      	ld.h      	r1, (r6, 0x0)
    44d2:	7445      	zexth      	r1, r1
    44d4:	75df      	sexth      	r7, r7
    44d6:	2109      	addi      	r1, 10
    44d8:	65c5      	cmplt      	r1, r7
    44da:	0c0b      	bf      	0x44f0	// 44f0 <TK_Keymap_prog+0x82c>
    44dc:	8b60      	ld.h      	r3, (r3, 0x0)
    44de:	1034      	lrw      	r1, 0x20000334	// 452c <TK_Keymap_prog+0x868>
    44e0:	74cd      	zexth      	r3, r3
    44e2:	ae60      	st.h      	r3, (r6, 0x0)
    44e4:	b140      	st.w      	r2, (r1, 0x0)
    44e6:	3301      	movi      	r3, 1
    44e8:	9140      	ld.w      	r2, (r1, 0x0)
    44ea:	70d0      	lsl      	r3, r4
    44ec:	6cc8      	or      	r3, r2
    44ee:	b160      	st.w      	r3, (r1, 0x0)
    44f0:	9842      	ld.w      	r2, (r14, 0x8)
    44f2:	4461      	lsli      	r3, r4, 1
    44f4:	60c8      	addu      	r3, r2
    44f6:	8b40      	ld.h      	r2, (r3, 0x0)
    44f8:	8e20      	ld.h      	r1, (r6, 0x0)
    44fa:	7445      	zexth      	r1, r1
    44fc:	748b      	sexth      	r2, r2
    44fe:	2904      	subi      	r1, 5
    4500:	6449      	cmplt      	r2, r1
    4502:	0ecc      	bf      	0x429a	// 429a <TK_Keymap_prog+0x5d6>
    4504:	10cb      	lrw      	r6, 0x200003c0	// 4530 <TK_Keymap_prog+0x86c>
    4506:	8b20      	ld.h      	r1, (r3, 0x0)
    4508:	8e40      	ld.h      	r2, (r6, 0x0)
    450a:	7489      	zexth      	r2, r2
    450c:	7447      	sexth      	r1, r1
    450e:	2204      	addi      	r2, 5
    4510:	6449      	cmplt      	r2, r1
    4512:	0ec4      	bf      	0x429a	// 429a <TK_Keymap_prog+0x5d6>
    4514:	8b60      	ld.h      	r3, (r3, 0x0)
    4516:	74cd      	zexth      	r3, r3
    4518:	ae60      	st.h      	r3, (r6, 0x0)
    451a:	1045      	lrw      	r2, 0x20000334	// 452c <TK_Keymap_prog+0x868>
    451c:	069f      	br      	0x425a	// 425a <TK_Keymap_prog+0x596>
    451e:	0000      	bkpt
    4520:	20000260 	.long	0x20000260
    4524:	2000046e 	.long	0x2000046e
    4528:	20000302 	.long	0x20000302
    452c:	20000334 	.long	0x20000334
    4530:	200003c0 	.long	0x200003c0

Disassembly of section .text.TK_overflow_predict:

00004534 <TK_overflow_predict>:
    4534:	14d4      	push      	r4-r7, r15
    4536:	1422      	subi      	r14, r14, 8
    4538:	113c      	lrw      	r1, 0x2000006c	// 4628 <TK_overflow_predict+0xf4>
    453a:	8164      	ld.b      	r3, (r1, 0x4)
    453c:	3b41      	cmpnei      	r3, 1
    453e:	0823      	bt      	0x4584	// 4584 <TK_overflow_predict+0x50>
    4540:	115b      	lrw      	r2, 0x2000043a	// 462c <TK_overflow_predict+0xf8>
    4542:	8260      	ld.b      	r3, (r2, 0x0)
    4544:	2300      	addi      	r3, 1
    4546:	74cc      	zextb      	r3, r3
    4548:	a260      	st.b      	r3, (r2, 0x0)
    454a:	8260      	ld.b      	r3, (r2, 0x0)
    454c:	1119      	lrw      	r0, 0x2000014c	// 4630 <TK_overflow_predict+0xfc>
    454e:	8000      	ld.b      	r0, (r0, 0x0)
    4550:	64c0      	cmphs      	r0, r3
    4552:	0819      	bt      	0x4584	// 4584 <TK_overflow_predict+0x50>
    4554:	3300      	movi      	r3, 0
    4556:	a260      	st.b      	r3, (r2, 0x0)
    4558:	11b7      	lrw      	r5, 0x20000349	// 4634 <TK_overflow_predict+0x100>
    455a:	8560      	ld.b      	r3, (r5, 0x0)
    455c:	3b40      	cmpnei      	r3, 0
    455e:	0c15      	bf      	0x4588	// 4588 <TK_overflow_predict+0x54>
    4560:	8560      	ld.b      	r3, (r5, 0x0)
    4562:	3b41      	cmpnei      	r3, 1
    4564:	0810      	bt      	0x4584	// 4584 <TK_overflow_predict+0x50>
    4566:	3300      	movi      	r3, 0
    4568:	a560      	st.b      	r3, (r5, 0x0)
    456a:	3200      	movi      	r2, 0
    456c:	1173      	lrw      	r3, 0x2000005c	// 4638 <TK_overflow_predict+0x104>
    456e:	1114      	lrw      	r0, 0x2000046c	// 463c <TK_overflow_predict+0x108>
    4570:	11b4      	lrw      	r5, 0x200004b0	// 4640 <TK_overflow_predict+0x10c>
    4572:	11d5      	lrw      	r6, 0x20000126	// 4644 <TK_overflow_predict+0x110>
    4574:	9360      	ld.w      	r3, (r3, 0x0)
    4576:	b342      	st.w      	r2, (r3, 0x8)
    4578:	1174      	lrw      	r3, 0x20000058	// 4648 <TK_overflow_predict+0x114>
    457a:	9380      	ld.w      	r4, (r3, 0x0)
    457c:	3300      	movi      	r3, 0
    457e:	8040      	ld.b      	r2, (r0, 0x0)
    4580:	648c      	cmphs      	r3, r2
    4582:	0c44      	bf      	0x460a	// 460a <TK_overflow_predict+0xd6>
    4584:	1402      	addi      	r14, r14, 8
    4586:	1494      	pop      	r4-r7, r15
    4588:	5976      	addi      	r3, r1, 6
    458a:	3600      	movi      	r6, 0
    458c:	11f0      	lrw      	r7, 0x20000150	// 464c <TK_overflow_predict+0x118>
    458e:	b860      	st.w      	r3, (r14, 0x0)
    4590:	9760      	ld.w      	r3, (r7, 0x0)
    4592:	70d9      	lsr      	r3, r6
    4594:	3201      	movi      	r2, 1
    4596:	68c8      	and      	r3, r2
    4598:	3b40      	cmpnei      	r3, 0
    459a:	0c34      	bf      	0x4602	// 4602 <TK_overflow_predict+0xce>
    459c:	4681      	lsli      	r4, r6, 1
    459e:	9860      	ld.w      	r3, (r14, 0x0)
    45a0:	60d0      	addu      	r3, r4
    45a2:	8b00      	ld.h      	r0, (r3, 0x0)
    45a4:	e3ffe7fe 	bsr      	0x15a0	// 15a0 <__floatunsidf>
    45a8:	6cc7      	mov      	r3, r1
    45aa:	3180      	movi      	r1, 128
    45ac:	6c83      	mov      	r2, r0
    45ae:	4137      	lsli      	r1, r1, 23
    45b0:	3000      	movi      	r0, 0
    45b2:	e3ffde01 	bsr      	0x1b4	// 1b4 <__GI_pow>
    45b6:	1167      	lrw      	r3, 0x20000156	// 4650 <TK_overflow_predict+0x11c>
    45b8:	60d0      	addu      	r3, r4
    45ba:	8b60      	ld.h      	r3, (r3, 0x0)
    45bc:	4364      	lsli      	r3, r3, 4
    45be:	230e      	addi      	r3, 15
    45c0:	b861      	st.w      	r3, (r14, 0x4)
    45c2:	e3ffe3a7 	bsr      	0xd10	// d10 <__fixunsdfsi>
    45c6:	9861      	ld.w      	r3, (r14, 0x4)
    45c8:	7cc0      	mult      	r3, r0
    45ca:	1143      	lrw      	r2, 0x200004e4	// 4654 <TK_overflow_predict+0x120>
    45cc:	740d      	zexth      	r0, r3
    45ce:	6090      	addu      	r2, r4
    45d0:	1162      	lrw      	r3, 0x2000054e	// 4658 <TK_overflow_predict+0x124>
    45d2:	60d0      	addu      	r3, r4
    45d4:	aa00      	st.h      	r0, (r2, 0x0)
    45d6:	8b60      	ld.h      	r3, (r3, 0x0)
    45d8:	8a00      	ld.h      	r0, (r2, 0x0)
    45da:	7401      	zexth      	r0, r0
    45dc:	325f      	movi      	r2, 95
    45de:	74cd      	zexth      	r3, r3
    45e0:	7c08      	mult      	r0, r2
    45e2:	3164      	movi      	r1, 100
    45e4:	b861      	st.w      	r3, (r14, 0x4)
    45e6:	e3fffa87 	bsr      	0x3af4	// 3af4 <__divsi3>
    45ea:	9861      	ld.w      	r3, (r14, 0x4)
    45ec:	64c1      	cmplt      	r0, r3
    45ee:	0c0a      	bf      	0x4602	// 4602 <TK_overflow_predict+0xce>
    45f0:	1075      	lrw      	r3, 0x20000126	// 4644 <TK_overflow_predict+0x110>
    45f2:	610c      	addu      	r4, r3
    45f4:	8c60      	ld.h      	r3, (r4, 0x0)
    45f6:	3b06      	cmphsi      	r3, 7
    45f8:	0805      	bt      	0x4602	// 4602 <TK_overflow_predict+0xce>
    45fa:	2300      	addi      	r3, 1
    45fc:	ac60      	st.h      	r3, (r4, 0x0)
    45fe:	3301      	movi      	r3, 1
    4600:	a560      	st.b      	r3, (r5, 0x0)
    4602:	2600      	addi      	r6, 1
    4604:	3e51      	cmpnei      	r6, 17
    4606:	0bc5      	bt      	0x4590	// 4590 <TK_overflow_predict+0x5c>
    4608:	07ac      	br      	0x4560	// 4560 <TK_overflow_predict+0x2c>
    460a:	5d4c      	addu      	r2, r5, r3
    460c:	8240      	ld.b      	r2, (r2, 0x0)
    460e:	4241      	lsli      	r2, r2, 1
    4610:	4322      	lsli      	r1, r3, 2
    4612:	6098      	addu      	r2, r6
    4614:	6050      	addu      	r1, r4
    4616:	8a40      	ld.h      	r2, (r2, 0x0)
    4618:	91f2      	ld.w      	r7, (r1, 0x48)
    461a:	4254      	lsli      	r2, r2, 20
    461c:	6c9c      	or      	r2, r7
    461e:	2300      	addi      	r3, 1
    4620:	b152      	st.w      	r2, (r1, 0x48)
    4622:	74cc      	zextb      	r3, r3
    4624:	07ad      	br      	0x457e	// 457e <TK_overflow_predict+0x4a>
    4626:	0000      	bkpt
    4628:	2000006c 	.long	0x2000006c
    462c:	2000043a 	.long	0x2000043a
    4630:	2000014c 	.long	0x2000014c
    4634:	20000349 	.long	0x20000349
    4638:	2000005c 	.long	0x2000005c
    463c:	2000046c 	.long	0x2000046c
    4640:	200004b0 	.long	0x200004b0
    4644:	20000126 	.long	0x20000126
    4648:	20000058 	.long	0x20000058
    464c:	20000150 	.long	0x20000150
    4650:	20000156 	.long	0x20000156
    4654:	200004e4 	.long	0x200004e4
    4658:	2000054e 	.long	0x2000054e

Disassembly of section .text.TK_Baseline_tracking:

0000465c <TK_Baseline_tracking>:
    465c:	14c4      	push      	r4-r7
    465e:	1422      	subi      	r14, r14, 8
    4660:	0149      	lrw      	r2, 0x200003ba	// 49b8 <TK_Baseline_tracking+0x35c>
    4662:	8260      	ld.b      	r3, (r2, 0x0)
    4664:	2300      	addi      	r3, 1
    4666:	74cc      	zextb      	r3, r3
    4668:	a260      	st.b      	r3, (r2, 0x0)
    466a:	8260      	ld.b      	r3, (r2, 0x0)
    466c:	012b      	lrw      	r1, 0x2000014c	// 49bc <TK_Baseline_tracking+0x360>
    466e:	8120      	ld.b      	r1, (r1, 0x0)
    4670:	644c      	cmphs      	r3, r1
    4672:	0c10      	bf      	0x4692	// 4692 <TK_Baseline_tracking+0x36>
    4674:	3300      	movi      	r3, 0
    4676:	a260      	st.b      	r3, (r2, 0x0)
    4678:	016d      	lrw      	r3, 0x200002c4	// 49c0 <TK_Baseline_tracking+0x364>
    467a:	9360      	ld.w      	r3, (r3, 0x0)
    467c:	3b40      	cmpnei      	r3, 0
    467e:	0c0c      	bf      	0x4696	// 4696 <TK_Baseline_tracking+0x3a>
    4680:	016e      	lrw      	r3, 0x20000260	// 49c4 <TK_Baseline_tracking+0x368>
    4682:	9360      	ld.w      	r3, (r3, 0x0)
    4684:	3b40      	cmpnei      	r3, 0
    4686:	0cc6      	bf      	0x4812	// 4812 <TK_Baseline_tracking+0x1b6>
    4688:	016f      	lrw      	r3, 0x20000334	// 49c8 <TK_Baseline_tracking+0x36c>
    468a:	9360      	ld.w      	r3, (r3, 0x0)
    468c:	3b40      	cmpnei      	r3, 0
    468e:	0802      	bt      	0x4692	// 4692 <TK_Baseline_tracking+0x36>
    4690:	057f      	br      	0x498e	// 498e <TK_Baseline_tracking+0x332>
    4692:	1402      	addi      	r14, r14, 8
    4694:	1484      	pop      	r4-r7
    4696:	0131      	lrw      	r1, 0x200002e0	// 49cc <TK_Baseline_tracking+0x370>
    4698:	6dc7      	mov      	r7, r1
    469a:	b820      	st.w      	r1, (r14, 0x0)
    469c:	3200      	movi      	r2, 0
    469e:	0172      	lrw      	r3, 0x2000017e	// 49d0 <TK_Baseline_tracking+0x374>
    46a0:	0132      	lrw      	r1, 0x2000022c	// 49d4 <TK_Baseline_tracking+0x378>
    46a2:	4201      	lsli      	r0, r2, 1
    46a4:	9880      	ld.w      	r4, (r14, 0x0)
    46a6:	6100      	addu      	r4, r0
    46a8:	8c80      	ld.h      	r4, (r4, 0x0)
    46aa:	7513      	sexth      	r4, r4
    46ac:	3cdf      	btsti      	r4, 31
    46ae:	0c27      	bf      	0x46fc	// 46fc <TK_Baseline_tracking+0xa0>
    46b0:	01b5      	lrw      	r5, 0x2000054e	// 49d8 <TK_Baseline_tracking+0x37c>
    46b2:	5980      	addu      	r4, r1, r0
    46b4:	6014      	addu      	r0, r5
    46b6:	b881      	st.w      	r4, (r14, 0x4)
    46b8:	8c80      	ld.h      	r4, (r4, 0x0)
    46ba:	88c0      	ld.h      	r6, (r0, 0x0)
    46bc:	7511      	zexth      	r4, r4
    46be:	7599      	zexth      	r6, r6
    46c0:	8ba0      	ld.h      	r5, (r3, 0x0)
    46c2:	611a      	subu      	r4, r6
    46c4:	6551      	cmplt      	r4, r5
    46c6:	081b      	bt      	0x46fc	// 46fc <TK_Baseline_tracking+0xa0>
    46c8:	9881      	ld.w      	r4, (r14, 0x4)
    46ca:	8c80      	ld.h      	r4, (r4, 0x0)
    46cc:	8800      	ld.h      	r0, (r0, 0x0)
    46ce:	7511      	zexth      	r4, r4
    46d0:	7401      	zexth      	r0, r0
    46d2:	5c01      	subu      	r0, r4, r0
    46d4:	4581      	lsli      	r4, r5, 1
    46d6:	6150      	addu      	r5, r4
    46d8:	6541      	cmplt      	r0, r5
    46da:	0c11      	bf      	0x46fc	// 46fc <TK_Baseline_tracking+0xa0>
    46dc:	019f      	lrw      	r4, 0x20000470	// 49dc <TK_Baseline_tracking+0x380>
    46de:	6108      	addu      	r4, r2
    46e0:	8400      	ld.b      	r0, (r4, 0x0)
    46e2:	2000      	addi      	r0, 1
    46e4:	7400      	zextb      	r0, r0
    46e6:	a400      	st.b      	r0, (r4, 0x0)
    46e8:	0201      	lrw      	r0, 0x2000008c	// 49e0 <TK_Baseline_tracking+0x384>
    46ea:	84a0      	ld.b      	r5, (r4, 0x0)
    46ec:	8008      	ld.b      	r0, (r0, 0x8)
    46ee:	6540      	cmphs      	r0, r5
    46f0:	0806      	bt      	0x46fc	// 46fc <TK_Baseline_tracking+0xa0>
    46f2:	0202      	lrw      	r0, 0x20000361	// 49e4 <TK_Baseline_tracking+0x388>
    46f4:	3501      	movi      	r5, 1
    46f6:	a0a0      	st.b      	r5, (r0, 0x0)
    46f8:	3000      	movi      	r0, 0
    46fa:	a400      	st.b      	r0, (r4, 0x0)
    46fc:	4201      	lsli      	r0, r2, 1
    46fe:	5f80      	addu      	r4, r7, r0
    4700:	8c80      	ld.h      	r4, (r4, 0x0)
    4702:	7513      	sexth      	r4, r4
    4704:	3c20      	cmplti      	r4, 1
    4706:	086f      	bt      	0x47e4	// 47e4 <TK_Baseline_tracking+0x188>
    4708:	028b      	lrw      	r4, 0x2000054e	// 49d8 <TK_Baseline_tracking+0x37c>
    470a:	6100      	addu      	r4, r0
    470c:	59a0      	addu      	r5, r1, r0
    470e:	8c80      	ld.h      	r4, (r4, 0x0)
    4710:	8da0      	ld.h      	r5, (r5, 0x0)
    4712:	7555      	zexth      	r5, r5
    4714:	7511      	zexth      	r4, r4
    4716:	6116      	subu      	r4, r5
    4718:	8ba0      	ld.h      	r5, (r3, 0x0)
    471a:	45a2      	lsli      	r5, r5, 2
    471c:	6551      	cmplt      	r4, r5
    471e:	0863      	bt      	0x47e4	// 47e4 <TK_Baseline_tracking+0x188>
    4720:	028d      	lrw      	r4, 0x200003e4	// 49e8 <TK_Baseline_tracking+0x38c>
    4722:	6108      	addu      	r4, r2
    4724:	84a0      	ld.b      	r5, (r4, 0x0)
    4726:	2500      	addi      	r5, 1
    4728:	7554      	zextb      	r5, r5
    472a:	a4a0      	st.b      	r5, (r4, 0x0)
    472c:	02b2      	lrw      	r5, 0x2000008c	// 49e0 <TK_Baseline_tracking+0x384>
    472e:	84c0      	ld.b      	r6, (r4, 0x0)
    4730:	85a9      	ld.b      	r5, (r5, 0x9)
    4732:	6594      	cmphs      	r5, r6
    4734:	0806      	bt      	0x4740	// 4740 <TK_Baseline_tracking+0xe4>
    4736:	02b3      	lrw      	r5, 0x20000361	// 49e4 <TK_Baseline_tracking+0x388>
    4738:	3601      	movi      	r6, 1
    473a:	a5c0      	st.b      	r6, (r5, 0x0)
    473c:	3500      	movi      	r5, 0
    473e:	a4a0      	st.b      	r5, (r4, 0x0)
    4740:	5f80      	addu      	r4, r7, r0
    4742:	8c80      	ld.h      	r4, (r4, 0x0)
    4744:	7513      	sexth      	r4, r4
    4746:	3cdf      	btsti      	r4, 31
    4748:	0c10      	bf      	0x4768	// 4768 <TK_Baseline_tracking+0x10c>
    474a:	02db      	lrw      	r6, 0x2000054e	// 49d8 <TK_Baseline_tracking+0x37c>
    474c:	59a0      	addu      	r5, r1, r0
    474e:	6180      	addu      	r6, r0
    4750:	8d80      	ld.h      	r4, (r5, 0x0)
    4752:	8ec0      	ld.h      	r6, (r6, 0x0)
    4754:	7599      	zexth      	r6, r6
    4756:	7511      	zexth      	r4, r4
    4758:	611a      	subu      	r4, r6
    475a:	8bc0      	ld.h      	r6, (r3, 0x0)
    475c:	6591      	cmplt      	r4, r6
    475e:	0c05      	bf      	0x4768	// 4768 <TK_Baseline_tracking+0x10c>
    4760:	8d80      	ld.h      	r4, (r5, 0x0)
    4762:	2c00      	subi      	r4, 1
    4764:	7511      	zexth      	r4, r4
    4766:	ad80      	st.h      	r4, (r5, 0x0)
    4768:	5f80      	addu      	r4, r7, r0
    476a:	8c80      	ld.h      	r4, (r4, 0x0)
    476c:	7513      	sexth      	r4, r4
    476e:	3cdf      	btsti      	r4, 31
    4770:	0c11      	bf      	0x4792	// 4792 <TK_Baseline_tracking+0x136>
    4772:	03c5      	lrw      	r6, 0x2000054e	// 49d8 <TK_Baseline_tracking+0x37c>
    4774:	59a0      	addu      	r5, r1, r0
    4776:	6180      	addu      	r6, r0
    4778:	8d80      	ld.h      	r4, (r5, 0x0)
    477a:	8ec0      	ld.h      	r6, (r6, 0x0)
    477c:	7599      	zexth      	r6, r6
    477e:	7511      	zexth      	r4, r4
    4780:	611a      	subu      	r4, r6
    4782:	8bc0      	ld.h      	r6, (r3, 0x0)
    4784:	4ec1      	lsri      	r6, r6, 1
    4786:	6591      	cmplt      	r4, r6
    4788:	0805      	bt      	0x4792	// 4792 <TK_Baseline_tracking+0x136>
    478a:	8d80      	ld.h      	r4, (r5, 0x0)
    478c:	2c01      	subi      	r4, 2
    478e:	7511      	zexth      	r4, r4
    4790:	ad80      	st.h      	r4, (r5, 0x0)
    4792:	5fa0      	addu      	r5, r7, r0
    4794:	8d80      	ld.h      	r4, (r5, 0x0)
    4796:	7513      	sexth      	r4, r4
    4798:	3c20      	cmplti      	r4, 1
    479a:	080c      	bt      	0x47b2	// 47b2 <TK_Baseline_tracking+0x156>
    479c:	8da0      	ld.h      	r5, (r5, 0x0)
    479e:	8b80      	ld.h      	r4, (r3, 0x0)
    47a0:	7557      	sexth      	r5, r5
    47a2:	4c81      	lsri      	r4, r4, 1
    47a4:	6515      	cmplt      	r5, r4
    47a6:	0c06      	bf      	0x47b2	// 47b2 <TK_Baseline_tracking+0x156>
    47a8:	59a0      	addu      	r5, r1, r0
    47aa:	8d80      	ld.h      	r4, (r5, 0x0)
    47ac:	2400      	addi      	r4, 1
    47ae:	7511      	zexth      	r4, r4
    47b0:	ad80      	st.h      	r4, (r5, 0x0)
    47b2:	5fa0      	addu      	r5, r7, r0
    47b4:	8d80      	ld.h      	r4, (r5, 0x0)
    47b6:	7513      	sexth      	r4, r4
    47b8:	3c20      	cmplti      	r4, 1
    47ba:	0810      	bt      	0x47da	// 47da <TK_Baseline_tracking+0x17e>
    47bc:	8dc0      	ld.h      	r6, (r5, 0x0)
    47be:	759b      	sexth      	r6, r6
    47c0:	8b80      	ld.h      	r4, (r3, 0x0)
    47c2:	6519      	cmplt      	r6, r4
    47c4:	0c0b      	bf      	0x47da	// 47da <TK_Baseline_tracking+0x17e>
    47c6:	8da0      	ld.h      	r5, (r5, 0x0)
    47c8:	7557      	sexth      	r5, r5
    47ca:	4c81      	lsri      	r4, r4, 1
    47cc:	6515      	cmplt      	r5, r4
    47ce:	0806      	bt      	0x47da	// 47da <TK_Baseline_tracking+0x17e>
    47d0:	6004      	addu      	r0, r1
    47d2:	8880      	ld.h      	r4, (r0, 0x0)
    47d4:	2401      	addi      	r4, 2
    47d6:	7511      	zexth      	r4, r4
    47d8:	a880      	st.h      	r4, (r0, 0x0)
    47da:	2200      	addi      	r2, 1
    47dc:	3a51      	cmpnei      	r2, 17
    47de:	2301      	addi      	r3, 2
    47e0:	0b61      	bt      	0x46a2	// 46a2 <TK_Baseline_tracking+0x46>
    47e2:	074f      	br      	0x4680	// 4680 <TK_Baseline_tracking+0x24>
    47e4:	5f80      	addu      	r4, r7, r0
    47e6:	8c80      	ld.h      	r4, (r4, 0x0)
    47e8:	7513      	sexth      	r4, r4
    47ea:	3cdf      	btsti      	r4, 31
    47ec:	0faa      	bf      	0x4740	// 4740 <TK_Baseline_tracking+0xe4>
    47ee:	13bb      	lrw      	r5, 0x2000054e	// 49d8 <TK_Baseline_tracking+0x37c>
    47f0:	5980      	addu      	r4, r1, r0
    47f2:	6140      	addu      	r5, r0
    47f4:	8c80      	ld.h      	r4, (r4, 0x0)
    47f6:	8da0      	ld.h      	r5, (r5, 0x0)
    47f8:	7555      	zexth      	r5, r5
    47fa:	8bc0      	ld.h      	r6, (r3, 0x0)
    47fc:	7511      	zexth      	r4, r4
    47fe:	6116      	subu      	r4, r5
    4800:	46a1      	lsli      	r5, r6, 1
    4802:	6158      	addu      	r5, r6
    4804:	6551      	cmplt      	r4, r5
    4806:	0b9d      	bt      	0x4740	// 4740 <TK_Baseline_tracking+0xe4>
    4808:	1397      	lrw      	r4, 0x20000361	// 49e4 <TK_Baseline_tracking+0x388>
    480a:	3501      	movi      	r5, 1
    480c:	a4a0      	st.b      	r5, (r4, 0x0)
    480e:	6c03      	mov      	r0, r0
    4810:	0798      	br      	0x4740	// 4740 <TK_Baseline_tracking+0xe4>
    4812:	1337      	lrw      	r1, 0x20000418	// 49ec <TK_Baseline_tracking+0x390>
    4814:	6dc7      	mov      	r7, r1
    4816:	b820      	st.w      	r1, (r14, 0x0)
    4818:	3200      	movi      	r2, 0
    481a:	136e      	lrw      	r3, 0x2000017e	// 49d0 <TK_Baseline_tracking+0x374>
    481c:	1335      	lrw      	r1, 0x200003c2	// 49f0 <TK_Baseline_tracking+0x394>
    481e:	4201      	lsli      	r0, r2, 1
    4820:	9880      	ld.w      	r4, (r14, 0x0)
    4822:	6100      	addu      	r4, r0
    4824:	8c80      	ld.h      	r4, (r4, 0x0)
    4826:	7513      	sexth      	r4, r4
    4828:	3cdf      	btsti      	r4, 31
    482a:	0c27      	bf      	0x4878	// 4878 <TK_Baseline_tracking+0x21c>
    482c:	13b2      	lrw      	r5, 0x20000308	// 49f4 <TK_Baseline_tracking+0x398>
    482e:	5980      	addu      	r4, r1, r0
    4830:	6014      	addu      	r0, r5
    4832:	b881      	st.w      	r4, (r14, 0x4)
    4834:	8c80      	ld.h      	r4, (r4, 0x0)
    4836:	88c0      	ld.h      	r6, (r0, 0x0)
    4838:	7511      	zexth      	r4, r4
    483a:	7599      	zexth      	r6, r6
    483c:	8ba0      	ld.h      	r5, (r3, 0x0)
    483e:	611a      	subu      	r4, r6
    4840:	6551      	cmplt      	r4, r5
    4842:	081b      	bt      	0x4878	// 4878 <TK_Baseline_tracking+0x21c>
    4844:	9881      	ld.w      	r4, (r14, 0x4)
    4846:	8c80      	ld.h      	r4, (r4, 0x0)
    4848:	8800      	ld.h      	r0, (r0, 0x0)
    484a:	7511      	zexth      	r4, r4
    484c:	7401      	zexth      	r0, r0
    484e:	5c01      	subu      	r0, r4, r0
    4850:	4581      	lsli      	r4, r5, 1
    4852:	6150      	addu      	r5, r4
    4854:	6541      	cmplt      	r0, r5
    4856:	0c11      	bf      	0x4878	// 4878 <TK_Baseline_tracking+0x21c>
    4858:	1388      	lrw      	r4, 0x20000458	// 49f8 <TK_Baseline_tracking+0x39c>
    485a:	6108      	addu      	r4, r2
    485c:	8400      	ld.b      	r0, (r4, 0x0)
    485e:	2000      	addi      	r0, 1
    4860:	7400      	zextb      	r0, r0
    4862:	a400      	st.b      	r0, (r4, 0x0)
    4864:	121f      	lrw      	r0, 0x2000008c	// 49e0 <TK_Baseline_tracking+0x384>
    4866:	84a0      	ld.b      	r5, (r4, 0x0)
    4868:	8008      	ld.b      	r0, (r0, 0x8)
    486a:	6540      	cmphs      	r0, r5
    486c:	0806      	bt      	0x4878	// 4878 <TK_Baseline_tracking+0x21c>
    486e:	121e      	lrw      	r0, 0x20000361	// 49e4 <TK_Baseline_tracking+0x388>
    4870:	3501      	movi      	r5, 1
    4872:	a0a0      	st.b      	r5, (r0, 0x0)
    4874:	3000      	movi      	r0, 0
    4876:	a400      	st.b      	r0, (r4, 0x0)
    4878:	4201      	lsli      	r0, r2, 1
    487a:	5f80      	addu      	r4, r7, r0
    487c:	8c80      	ld.h      	r4, (r4, 0x0)
    487e:	7513      	sexth      	r4, r4
    4880:	3c20      	cmplti      	r4, 1
    4882:	086f      	bt      	0x4960	// 4960 <TK_Baseline_tracking+0x304>
    4884:	129c      	lrw      	r4, 0x20000308	// 49f4 <TK_Baseline_tracking+0x398>
    4886:	6100      	addu      	r4, r0
    4888:	59a0      	addu      	r5, r1, r0
    488a:	8c80      	ld.h      	r4, (r4, 0x0)
    488c:	8da0      	ld.h      	r5, (r5, 0x0)
    488e:	7555      	zexth      	r5, r5
    4890:	7511      	zexth      	r4, r4
    4892:	6116      	subu      	r4, r5
    4894:	8ba0      	ld.h      	r5, (r3, 0x0)
    4896:	45a2      	lsli      	r5, r5, 2
    4898:	6551      	cmplt      	r4, r5
    489a:	0863      	bt      	0x4960	// 4960 <TK_Baseline_tracking+0x304>
    489c:	1298      	lrw      	r4, 0x20000362	// 49fc <TK_Baseline_tracking+0x3a0>
    489e:	6108      	addu      	r4, r2
    48a0:	84a0      	ld.b      	r5, (r4, 0x0)
    48a2:	2500      	addi      	r5, 1
    48a4:	7554      	zextb      	r5, r5
    48a6:	a4a0      	st.b      	r5, (r4, 0x0)
    48a8:	12ae      	lrw      	r5, 0x2000008c	// 49e0 <TK_Baseline_tracking+0x384>
    48aa:	84c0      	ld.b      	r6, (r4, 0x0)
    48ac:	85a9      	ld.b      	r5, (r5, 0x9)
    48ae:	6594      	cmphs      	r5, r6
    48b0:	0806      	bt      	0x48bc	// 48bc <TK_Baseline_tracking+0x260>
    48b2:	12ad      	lrw      	r5, 0x20000361	// 49e4 <TK_Baseline_tracking+0x388>
    48b4:	3601      	movi      	r6, 1
    48b6:	a5c0      	st.b      	r6, (r5, 0x0)
    48b8:	3500      	movi      	r5, 0
    48ba:	a4a0      	st.b      	r5, (r4, 0x0)
    48bc:	5f80      	addu      	r4, r7, r0
    48be:	8c80      	ld.h      	r4, (r4, 0x0)
    48c0:	7513      	sexth      	r4, r4
    48c2:	3cdf      	btsti      	r4, 31
    48c4:	0c10      	bf      	0x48e4	// 48e4 <TK_Baseline_tracking+0x288>
    48c6:	12cc      	lrw      	r6, 0x20000308	// 49f4 <TK_Baseline_tracking+0x398>
    48c8:	59a0      	addu      	r5, r1, r0
    48ca:	6180      	addu      	r6, r0
    48cc:	8d80      	ld.h      	r4, (r5, 0x0)
    48ce:	8ec0      	ld.h      	r6, (r6, 0x0)
    48d0:	7599      	zexth      	r6, r6
    48d2:	7511      	zexth      	r4, r4
    48d4:	611a      	subu      	r4, r6
    48d6:	8bc0      	ld.h      	r6, (r3, 0x0)
    48d8:	6591      	cmplt      	r4, r6
    48da:	0c05      	bf      	0x48e4	// 48e4 <TK_Baseline_tracking+0x288>
    48dc:	8d80      	ld.h      	r4, (r5, 0x0)
    48de:	2c00      	subi      	r4, 1
    48e0:	7511      	zexth      	r4, r4
    48e2:	ad80      	st.h      	r4, (r5, 0x0)
    48e4:	5f80      	addu      	r4, r7, r0
    48e6:	8c80      	ld.h      	r4, (r4, 0x0)
    48e8:	7513      	sexth      	r4, r4
    48ea:	3cdf      	btsti      	r4, 31
    48ec:	0c11      	bf      	0x490e	// 490e <TK_Baseline_tracking+0x2b2>
    48ee:	12c2      	lrw      	r6, 0x20000308	// 49f4 <TK_Baseline_tracking+0x398>
    48f0:	59a0      	addu      	r5, r1, r0
    48f2:	6180      	addu      	r6, r0
    48f4:	8d80      	ld.h      	r4, (r5, 0x0)
    48f6:	8ec0      	ld.h      	r6, (r6, 0x0)
    48f8:	7599      	zexth      	r6, r6
    48fa:	7511      	zexth      	r4, r4
    48fc:	611a      	subu      	r4, r6
    48fe:	8bc0      	ld.h      	r6, (r3, 0x0)
    4900:	4ec1      	lsri      	r6, r6, 1
    4902:	6591      	cmplt      	r4, r6
    4904:	0805      	bt      	0x490e	// 490e <TK_Baseline_tracking+0x2b2>
    4906:	8d80      	ld.h      	r4, (r5, 0x0)
    4908:	2c01      	subi      	r4, 2
    490a:	7511      	zexth      	r4, r4
    490c:	ad80      	st.h      	r4, (r5, 0x0)
    490e:	5fa0      	addu      	r5, r7, r0
    4910:	8d80      	ld.h      	r4, (r5, 0x0)
    4912:	7513      	sexth      	r4, r4
    4914:	3c20      	cmplti      	r4, 1
    4916:	080c      	bt      	0x492e	// 492e <TK_Baseline_tracking+0x2d2>
    4918:	8da0      	ld.h      	r5, (r5, 0x0)
    491a:	8b80      	ld.h      	r4, (r3, 0x0)
    491c:	7557      	sexth      	r5, r5
    491e:	4c81      	lsri      	r4, r4, 1
    4920:	6515      	cmplt      	r5, r4
    4922:	0c06      	bf      	0x492e	// 492e <TK_Baseline_tracking+0x2d2>
    4924:	59a0      	addu      	r5, r1, r0
    4926:	8d80      	ld.h      	r4, (r5, 0x0)
    4928:	2400      	addi      	r4, 1
    492a:	7511      	zexth      	r4, r4
    492c:	ad80      	st.h      	r4, (r5, 0x0)
    492e:	5fa0      	addu      	r5, r7, r0
    4930:	8d80      	ld.h      	r4, (r5, 0x0)
    4932:	7513      	sexth      	r4, r4
    4934:	3c20      	cmplti      	r4, 1
    4936:	0810      	bt      	0x4956	// 4956 <TK_Baseline_tracking+0x2fa>
    4938:	8dc0      	ld.h      	r6, (r5, 0x0)
    493a:	759b      	sexth      	r6, r6
    493c:	8b80      	ld.h      	r4, (r3, 0x0)
    493e:	6519      	cmplt      	r6, r4
    4940:	0c0b      	bf      	0x4956	// 4956 <TK_Baseline_tracking+0x2fa>
    4942:	8da0      	ld.h      	r5, (r5, 0x0)
    4944:	7557      	sexth      	r5, r5
    4946:	4c81      	lsri      	r4, r4, 1
    4948:	6515      	cmplt      	r5, r4
    494a:	0806      	bt      	0x4956	// 4956 <TK_Baseline_tracking+0x2fa>
    494c:	6004      	addu      	r0, r1
    494e:	8880      	ld.h      	r4, (r0, 0x0)
    4950:	2401      	addi      	r4, 2
    4952:	7511      	zexth      	r4, r4
    4954:	a880      	st.h      	r4, (r0, 0x0)
    4956:	2200      	addi      	r2, 1
    4958:	3a51      	cmpnei      	r2, 17
    495a:	2301      	addi      	r3, 2
    495c:	0b61      	bt      	0x481e	// 481e <TK_Baseline_tracking+0x1c2>
    495e:	0695      	br      	0x4688	// 4688 <TK_Baseline_tracking+0x2c>
    4960:	5f80      	addu      	r4, r7, r0
    4962:	8c80      	ld.h      	r4, (r4, 0x0)
    4964:	7513      	sexth      	r4, r4
    4966:	3cdf      	btsti      	r4, 31
    4968:	0faa      	bf      	0x48bc	// 48bc <TK_Baseline_tracking+0x260>
    496a:	11a3      	lrw      	r5, 0x20000308	// 49f4 <TK_Baseline_tracking+0x398>
    496c:	5980      	addu      	r4, r1, r0
    496e:	6140      	addu      	r5, r0
    4970:	8c80      	ld.h      	r4, (r4, 0x0)
    4972:	8da0      	ld.h      	r5, (r5, 0x0)
    4974:	7555      	zexth      	r5, r5
    4976:	8bc0      	ld.h      	r6, (r3, 0x0)
    4978:	7511      	zexth      	r4, r4
    497a:	6116      	subu      	r4, r5
    497c:	46a1      	lsli      	r5, r6, 1
    497e:	6158      	addu      	r5, r6
    4980:	6551      	cmplt      	r4, r5
    4982:	0b9d      	bt      	0x48bc	// 48bc <TK_Baseline_tracking+0x260>
    4984:	1098      	lrw      	r4, 0x20000361	// 49e4 <TK_Baseline_tracking+0x388>
    4986:	3501      	movi      	r5, 1
    4988:	a4a0      	st.b      	r5, (r4, 0x0)
    498a:	6c03      	mov      	r0, r0
    498c:	0798      	br      	0x48bc	// 48bc <TK_Baseline_tracking+0x260>
    498e:	103d      	lrw      	r1, 0x2000052a	// 4a00 <TK_Baseline_tracking+0x3a4>
    4990:	6dc7      	mov      	r7, r1
    4992:	b820      	st.w      	r1, (r14, 0x0)
    4994:	3200      	movi      	r2, 0
    4996:	106f      	lrw      	r3, 0x2000017e	// 49d0 <TK_Baseline_tracking+0x374>
    4998:	103b      	lrw      	r1, 0x200004c2	// 4a04 <TK_Baseline_tracking+0x3a8>
    499a:	4201      	lsli      	r0, r2, 1
    499c:	9880      	ld.w      	r4, (r14, 0x0)
    499e:	6100      	addu      	r4, r0
    49a0:	8c80      	ld.h      	r4, (r4, 0x0)
    49a2:	7513      	sexth      	r4, r4
    49a4:	3cdf      	btsti      	r4, 31
    49a6:	0c53      	bf      	0x4a4c	// 4a4c <TK_Baseline_tracking+0x3f0>
    49a8:	10b8      	lrw      	r5, 0x200003f6	// 4a08 <TK_Baseline_tracking+0x3ac>
    49aa:	5980      	addu      	r4, r1, r0
    49ac:	6014      	addu      	r0, r5
    49ae:	b881      	st.w      	r4, (r14, 0x4)
    49b0:	8c80      	ld.h      	r4, (r4, 0x0)
    49b2:	88c0      	ld.h      	r6, (r0, 0x0)
    49b4:	042c      	br      	0x4a0c	// 4a0c <TK_Baseline_tracking+0x3b0>
    49b6:	0000      	bkpt
    49b8:	200003ba 	.long	0x200003ba
    49bc:	2000014c 	.long	0x2000014c
    49c0:	200002c4 	.long	0x200002c4
    49c4:	20000260 	.long	0x20000260
    49c8:	20000334 	.long	0x20000334
    49cc:	200002e0 	.long	0x200002e0
    49d0:	2000017e 	.long	0x2000017e
    49d4:	2000022c 	.long	0x2000022c
    49d8:	2000054e 	.long	0x2000054e
    49dc:	20000470 	.long	0x20000470
    49e0:	2000008c 	.long	0x2000008c
    49e4:	20000361 	.long	0x20000361
    49e8:	200003e4 	.long	0x200003e4
    49ec:	20000418 	.long	0x20000418
    49f0:	200003c2 	.long	0x200003c2
    49f4:	20000308 	.long	0x20000308
    49f8:	20000458 	.long	0x20000458
    49fc:	20000362 	.long	0x20000362
    4a00:	2000052a 	.long	0x2000052a
    4a04:	200004c2 	.long	0x200004c2
    4a08:	200003f6 	.long	0x200003f6
    4a0c:	7511      	zexth      	r4, r4
    4a0e:	7599      	zexth      	r6, r6
    4a10:	8ba0      	ld.h      	r5, (r3, 0x0)
    4a12:	611a      	subu      	r4, r6
    4a14:	6551      	cmplt      	r4, r5
    4a16:	081b      	bt      	0x4a4c	// 4a4c <TK_Baseline_tracking+0x3f0>
    4a18:	9881      	ld.w      	r4, (r14, 0x4)
    4a1a:	8c80      	ld.h      	r4, (r4, 0x0)
    4a1c:	8800      	ld.h      	r0, (r0, 0x0)
    4a1e:	7511      	zexth      	r4, r4
    4a20:	7401      	zexth      	r0, r0
    4a22:	5c01      	subu      	r0, r4, r0
    4a24:	4581      	lsli      	r4, r5, 1
    4a26:	6150      	addu      	r5, r4
    4a28:	6541      	cmplt      	r0, r5
    4a2a:	0c11      	bf      	0x4a4c	// 4a4c <TK_Baseline_tracking+0x3f0>
    4a2c:	128d      	lrw      	r4, 0x20000350	// 4b60 <TK_Baseline_tracking+0x504>
    4a2e:	6108      	addu      	r4, r2
    4a30:	8400      	ld.b      	r0, (r4, 0x0)
    4a32:	2000      	addi      	r0, 1
    4a34:	7400      	zextb      	r0, r0
    4a36:	a400      	st.b      	r0, (r4, 0x0)
    4a38:	120b      	lrw      	r0, 0x2000008c	// 4b64 <TK_Baseline_tracking+0x508>
    4a3a:	84a0      	ld.b      	r5, (r4, 0x0)
    4a3c:	8008      	ld.b      	r0, (r0, 0x8)
    4a3e:	6540      	cmphs      	r0, r5
    4a40:	0806      	bt      	0x4a4c	// 4a4c <TK_Baseline_tracking+0x3f0>
    4a42:	120a      	lrw      	r0, 0x20000361	// 4b68 <TK_Baseline_tracking+0x50c>
    4a44:	3501      	movi      	r5, 1
    4a46:	a0a0      	st.b      	r5, (r0, 0x0)
    4a48:	3000      	movi      	r0, 0
    4a4a:	a400      	st.b      	r0, (r4, 0x0)
    4a4c:	4201      	lsli      	r0, r2, 1
    4a4e:	5f80      	addu      	r4, r7, r0
    4a50:	8c80      	ld.h      	r4, (r4, 0x0)
    4a52:	7513      	sexth      	r4, r4
    4a54:	3c20      	cmplti      	r4, 1
    4a56:	0870      	bt      	0x4b36	// 4b36 <TK_Baseline_tracking+0x4da>
    4a58:	1285      	lrw      	r4, 0x200003f6	// 4b6c <TK_Baseline_tracking+0x510>
    4a5a:	6100      	addu      	r4, r0
    4a5c:	59a0      	addu      	r5, r1, r0
    4a5e:	8c80      	ld.h      	r4, (r4, 0x0)
    4a60:	8da0      	ld.h      	r5, (r5, 0x0)
    4a62:	7555      	zexth      	r5, r5
    4a64:	7511      	zexth      	r4, r4
    4a66:	6116      	subu      	r4, r5
    4a68:	8ba0      	ld.h      	r5, (r3, 0x0)
    4a6a:	45a2      	lsli      	r5, r5, 2
    4a6c:	6551      	cmplt      	r4, r5
    4a6e:	0864      	bt      	0x4b36	// 4b36 <TK_Baseline_tracking+0x4da>
    4a70:	1280      	lrw      	r4, 0x2000024e	// 4b70 <TK_Baseline_tracking+0x514>
    4a72:	6108      	addu      	r4, r2
    4a74:	84a0      	ld.b      	r5, (r4, 0x0)
    4a76:	2500      	addi      	r5, 1
    4a78:	7554      	zextb      	r5, r5
    4a7a:	a4a0      	st.b      	r5, (r4, 0x0)
    4a7c:	11ba      	lrw      	r5, 0x2000008c	// 4b64 <TK_Baseline_tracking+0x508>
    4a7e:	84c0      	ld.b      	r6, (r4, 0x0)
    4a80:	85a9      	ld.b      	r5, (r5, 0x9)
    4a82:	6594      	cmphs      	r5, r6
    4a84:	0806      	bt      	0x4a90	// 4a90 <TK_Baseline_tracking+0x434>
    4a86:	11b9      	lrw      	r5, 0x20000361	// 4b68 <TK_Baseline_tracking+0x50c>
    4a88:	3601      	movi      	r6, 1
    4a8a:	a5c0      	st.b      	r6, (r5, 0x0)
    4a8c:	3500      	movi      	r5, 0
    4a8e:	a4a0      	st.b      	r5, (r4, 0x0)
    4a90:	5f80      	addu      	r4, r7, r0
    4a92:	8c80      	ld.h      	r4, (r4, 0x0)
    4a94:	7513      	sexth      	r4, r4
    4a96:	3cdf      	btsti      	r4, 31
    4a98:	0c10      	bf      	0x4ab8	// 4ab8 <TK_Baseline_tracking+0x45c>
    4a9a:	11d5      	lrw      	r6, 0x200003f6	// 4b6c <TK_Baseline_tracking+0x510>
    4a9c:	59a0      	addu      	r5, r1, r0
    4a9e:	6180      	addu      	r6, r0
    4aa0:	8d80      	ld.h      	r4, (r5, 0x0)
    4aa2:	8ec0      	ld.h      	r6, (r6, 0x0)
    4aa4:	7599      	zexth      	r6, r6
    4aa6:	7511      	zexth      	r4, r4
    4aa8:	611a      	subu      	r4, r6
    4aaa:	8bc0      	ld.h      	r6, (r3, 0x0)
    4aac:	6591      	cmplt      	r4, r6
    4aae:	0c05      	bf      	0x4ab8	// 4ab8 <TK_Baseline_tracking+0x45c>
    4ab0:	8d80      	ld.h      	r4, (r5, 0x0)
    4ab2:	2c00      	subi      	r4, 1
    4ab4:	7511      	zexth      	r4, r4
    4ab6:	ad80      	st.h      	r4, (r5, 0x0)
    4ab8:	5f80      	addu      	r4, r7, r0
    4aba:	8c80      	ld.h      	r4, (r4, 0x0)
    4abc:	7513      	sexth      	r4, r4
    4abe:	3cdf      	btsti      	r4, 31
    4ac0:	0c11      	bf      	0x4ae2	// 4ae2 <TK_Baseline_tracking+0x486>
    4ac2:	11cb      	lrw      	r6, 0x200003f6	// 4b6c <TK_Baseline_tracking+0x510>
    4ac4:	59a0      	addu      	r5, r1, r0
    4ac6:	6180      	addu      	r6, r0
    4ac8:	8d80      	ld.h      	r4, (r5, 0x0)
    4aca:	8ec0      	ld.h      	r6, (r6, 0x0)
    4acc:	7599      	zexth      	r6, r6
    4ace:	7511      	zexth      	r4, r4
    4ad0:	611a      	subu      	r4, r6
    4ad2:	8bc0      	ld.h      	r6, (r3, 0x0)
    4ad4:	4ec1      	lsri      	r6, r6, 1
    4ad6:	6591      	cmplt      	r4, r6
    4ad8:	0805      	bt      	0x4ae2	// 4ae2 <TK_Baseline_tracking+0x486>
    4ada:	8d80      	ld.h      	r4, (r5, 0x0)
    4adc:	2c01      	subi      	r4, 2
    4ade:	7511      	zexth      	r4, r4
    4ae0:	ad80      	st.h      	r4, (r5, 0x0)
    4ae2:	5fa0      	addu      	r5, r7, r0
    4ae4:	8d80      	ld.h      	r4, (r5, 0x0)
    4ae6:	7513      	sexth      	r4, r4
    4ae8:	3c20      	cmplti      	r4, 1
    4aea:	080c      	bt      	0x4b02	// 4b02 <TK_Baseline_tracking+0x4a6>
    4aec:	8da0      	ld.h      	r5, (r5, 0x0)
    4aee:	8b80      	ld.h      	r4, (r3, 0x0)
    4af0:	7557      	sexth      	r5, r5
    4af2:	4c81      	lsri      	r4, r4, 1
    4af4:	6515      	cmplt      	r5, r4
    4af6:	0c06      	bf      	0x4b02	// 4b02 <TK_Baseline_tracking+0x4a6>
    4af8:	59a0      	addu      	r5, r1, r0
    4afa:	8d80      	ld.h      	r4, (r5, 0x0)
    4afc:	2400      	addi      	r4, 1
    4afe:	7511      	zexth      	r4, r4
    4b00:	ad80      	st.h      	r4, (r5, 0x0)
    4b02:	5fa0      	addu      	r5, r7, r0
    4b04:	8d80      	ld.h      	r4, (r5, 0x0)
    4b06:	7513      	sexth      	r4, r4
    4b08:	3c20      	cmplti      	r4, 1
    4b0a:	0810      	bt      	0x4b2a	// 4b2a <TK_Baseline_tracking+0x4ce>
    4b0c:	8dc0      	ld.h      	r6, (r5, 0x0)
    4b0e:	759b      	sexth      	r6, r6
    4b10:	8b80      	ld.h      	r4, (r3, 0x0)
    4b12:	6519      	cmplt      	r6, r4
    4b14:	0c0b      	bf      	0x4b2a	// 4b2a <TK_Baseline_tracking+0x4ce>
    4b16:	8da0      	ld.h      	r5, (r5, 0x0)
    4b18:	7557      	sexth      	r5, r5
    4b1a:	4c81      	lsri      	r4, r4, 1
    4b1c:	6515      	cmplt      	r5, r4
    4b1e:	0806      	bt      	0x4b2a	// 4b2a <TK_Baseline_tracking+0x4ce>
    4b20:	6004      	addu      	r0, r1
    4b22:	8880      	ld.h      	r4, (r0, 0x0)
    4b24:	2401      	addi      	r4, 2
    4b26:	7511      	zexth      	r4, r4
    4b28:	a880      	st.h      	r4, (r0, 0x0)
    4b2a:	2200      	addi      	r2, 1
    4b2c:	3a51      	cmpnei      	r2, 17
    4b2e:	2301      	addi      	r3, 2
    4b30:	0b35      	bt      	0x499a	// 499a <TK_Baseline_tracking+0x33e>
    4b32:	e800fdb0 	br      	0x4692	// 4692 <TK_Baseline_tracking+0x36>
    4b36:	5f80      	addu      	r4, r7, r0
    4b38:	8c80      	ld.h      	r4, (r4, 0x0)
    4b3a:	7513      	sexth      	r4, r4
    4b3c:	3cdf      	btsti      	r4, 31
    4b3e:	0fa9      	bf      	0x4a90	// 4a90 <TK_Baseline_tracking+0x434>
    4b40:	10ab      	lrw      	r5, 0x200003f6	// 4b6c <TK_Baseline_tracking+0x510>
    4b42:	5980      	addu      	r4, r1, r0
    4b44:	6140      	addu      	r5, r0
    4b46:	8c80      	ld.h      	r4, (r4, 0x0)
    4b48:	8da0      	ld.h      	r5, (r5, 0x0)
    4b4a:	7555      	zexth      	r5, r5
    4b4c:	8bc0      	ld.h      	r6, (r3, 0x0)
    4b4e:	7511      	zexth      	r4, r4
    4b50:	6116      	subu      	r4, r5
    4b52:	46a1      	lsli      	r5, r6, 1
    4b54:	6158      	addu      	r5, r6
    4b56:	6551      	cmplt      	r4, r5
    4b58:	0b9c      	bt      	0x4a90	// 4a90 <TK_Baseline_tracking+0x434>
    4b5a:	1084      	lrw      	r4, 0x20000361	// 4b68 <TK_Baseline_tracking+0x50c>
    4b5c:	3501      	movi      	r5, 1
    4b5e:	0798      	br      	0x4a8e	// 4a8e <TK_Baseline_tracking+0x432>
    4b60:	20000350 	.long	0x20000350
    4b64:	2000008c 	.long	0x2000008c
    4b68:	20000361 	.long	0x20000361
    4b6c:	200003f6 	.long	0x200003f6
    4b70:	2000024e 	.long	0x2000024e

Disassembly of section .text.TK_result_prog:

00004b74 <TK_result_prog>:
    4b74:	14d4      	push      	r4-r7, r15
    4b76:	1421      	subi      	r14, r14, 4
    4b78:	121a      	lrw      	r0, 0x200002c4	// 4ce0 <TK_result_prog+0x16c>
    4b7a:	12bb      	lrw      	r5, 0x20000260	// 4ce4 <TK_result_prog+0x170>
    4b7c:	127b      	lrw      	r3, 0x20000334	// 4ce8 <TK_result_prog+0x174>
    4b7e:	123b      	lrw      	r1, 0x20000334	// 4ce8 <TK_result_prog+0x174>
    4b80:	129b      	lrw      	r4, 0x200003bc	// 4cec <TK_result_prog+0x178>
    4b82:	90c0      	ld.w      	r6, (r0, 0x0)
    4b84:	9540      	ld.w      	r2, (r5, 0x0)
    4b86:	6d88      	or      	r6, r2
    4b88:	b860      	st.w      	r3, (r14, 0x0)
    4b8a:	9360      	ld.w      	r3, (r3, 0x0)
    4b8c:	6d8c      	or      	r6, r3
    4b8e:	3e40      	cmpnei      	r6, 0
    4b90:	6c83      	mov      	r2, r0
    4b92:	6cd7      	mov      	r3, r5
    4b94:	0c8f      	bf      	0x4cb2	// 4cb2 <TK_result_prog+0x13e>
    4b96:	12d7      	lrw      	r6, 0x20000112	// 4cf0 <TK_result_prog+0x17c>
    4b98:	86e0      	ld.b      	r7, (r6, 0x0)
    4b9a:	3f41      	cmpnei      	r7, 1
    4b9c:	080e      	bt      	0x4bb8	// 4bb8 <TK_result_prog+0x44>
    4b9e:	9040      	ld.w      	r2, (r0, 0x0)
    4ba0:	9560      	ld.w      	r3, (r5, 0x0)
    4ba2:	64ca      	cmpne      	r2, r3
    4ba4:	0807      	bt      	0x4bb2	// 4bb2 <TK_result_prog+0x3e>
    4ba6:	9540      	ld.w      	r2, (r5, 0x0)
    4ba8:	9160      	ld.w      	r3, (r1, 0x0)
    4baa:	64ca      	cmpne      	r2, r3
    4bac:	0803      	bt      	0x4bb2	// 4bb2 <TK_result_prog+0x3e>
    4bae:	9060      	ld.w      	r3, (r0, 0x0)
    4bb0:	0402      	br      	0x4bb4	// 4bb4 <TK_result_prog+0x40>
    4bb2:	3300      	movi      	r3, 0
    4bb4:	b460      	st.w      	r3, (r4, 0x0)
    4bb6:	0420      	br      	0x4bf6	// 4bf6 <TK_result_prog+0x82>
    4bb8:	86c0      	ld.b      	r6, (r6, 0x0)
    4bba:	3e40      	cmpnei      	r6, 0
    4bbc:	081d      	bt      	0x4bf6	// 4bf6 <TK_result_prog+0x82>
    4bbe:	90c0      	ld.w      	r6, (r0, 0x0)
    4bc0:	6ddb      	mov      	r7, r6
    4bc2:	95c0      	ld.w      	r6, (r5, 0x0)
    4bc4:	659e      	cmpne      	r7, r6
    4bc6:	0806      	bt      	0x4bd2	// 4bd2 <TK_result_prog+0x5e>
    4bc8:	95c0      	ld.w      	r6, (r5, 0x0)
    4bca:	12a8      	lrw      	r5, 0x20000334	// 4ce8 <TK_result_prog+0x174>
    4bcc:	95a0      	ld.w      	r5, (r5, 0x0)
    4bce:	655a      	cmpne      	r6, r5
    4bd0:	0fef      	bf      	0x4bae	// 4bae <TK_result_prog+0x3a>
    4bd2:	9300      	ld.w      	r0, (r3, 0x0)
    4bd4:	3840      	cmpnei      	r0, 0
    4bd6:	0c2a      	bf      	0x4c2a	// 4c2a <TK_result_prog+0xb6>
    4bd8:	9100      	ld.w      	r0, (r1, 0x0)
    4bda:	3840      	cmpnei      	r0, 0
    4bdc:	0c27      	bf      	0x4c2a	// 4c2a <TK_result_prog+0xb6>
    4bde:	93a0      	ld.w      	r5, (r3, 0x0)
    4be0:	9100      	ld.w      	r0, (r1, 0x0)
    4be2:	6416      	cmpne      	r5, r0
    4be4:	0823      	bt      	0x4c2a	// 4c2a <TK_result_prog+0xb6>
    4be6:	9360      	ld.w      	r3, (r3, 0x0)
    4be8:	b460      	st.w      	r3, (r4, 0x0)
    4bea:	9220      	ld.w      	r1, (r2, 0x0)
    4bec:	9460      	ld.w      	r3, (r4, 0x0)
    4bee:	64c6      	cmpne      	r1, r3
    4bf0:	0c03      	bf      	0x4bf6	// 4bf6 <TK_result_prog+0x82>
    4bf2:	3300      	movi      	r3, 0
    4bf4:	b260      	st.w      	r3, (r2, 0x0)
    4bf6:	9460      	ld.w      	r3, (r4, 0x0)
    4bf8:	3b40      	cmpnei      	r3, 0
    4bfa:	115f      	lrw      	r2, 0x200004ac	// 4cf4 <TK_result_prog+0x180>
    4bfc:	0c6a      	bf      	0x4cd0	// 4cd0 <TK_result_prog+0x15c>
    4bfe:	9420      	ld.w      	r1, (r4, 0x0)
    4c00:	9260      	ld.w      	r3, (r2, 0x0)
    4c02:	64c6      	cmpne      	r1, r3
    4c04:	0c06      	bf      	0x4c10	// 4c10 <TK_result_prog+0x9c>
    4c06:	9460      	ld.w      	r3, (r4, 0x0)
    4c08:	b260      	st.w      	r3, (r2, 0x0)
    4c0a:	3200      	movi      	r2, 0
    4c0c:	117b      	lrw      	r3, 0x200002de	// 4cf8 <TK_result_prog+0x184>
    4c0e:	a340      	st.b      	r2, (r3, 0x0)
    4c10:	e3fff812 	bsr      	0x3c34	// 3c34 <get_key_number>
    4c14:	117a      	lrw      	r3, 0x20000154	// 4cfc <TK_result_prog+0x188>
    4c16:	8360      	ld.b      	r3, (r3, 0x0)
    4c18:	640c      	cmphs      	r3, r0
    4c1a:	0806      	bt      	0x4c26	// 4c26 <TK_result_prog+0xb2>
    4c1c:	3300      	movi      	r3, 0
    4c1e:	b460      	st.w      	r3, (r4, 0x0)
    4c20:	3201      	movi      	r2, 1
    4c22:	1176      	lrw      	r3, 0x200002de	// 4cf8 <TK_result_prog+0x184>
    4c24:	a340      	st.b      	r2, (r3, 0x0)
    4c26:	1401      	addi      	r14, r14, 4
    4c28:	1494      	pop      	r4-r7, r15
    4c2a:	9200      	ld.w      	r0, (r2, 0x0)
    4c2c:	3840      	cmpnei      	r0, 0
    4c2e:	0c11      	bf      	0x4c50	// 4c50 <TK_result_prog+0xdc>
    4c30:	9300      	ld.w      	r0, (r3, 0x0)
    4c32:	3840      	cmpnei      	r0, 0
    4c34:	0c0e      	bf      	0x4c50	// 4c50 <TK_result_prog+0xdc>
    4c36:	92a0      	ld.w      	r5, (r2, 0x0)
    4c38:	9300      	ld.w      	r0, (r3, 0x0)
    4c3a:	6416      	cmpne      	r5, r0
    4c3c:	080a      	bt      	0x4c50	// 4c50 <TK_result_prog+0xdc>
    4c3e:	9260      	ld.w      	r3, (r2, 0x0)
    4c40:	b460      	st.w      	r3, (r4, 0x0)
    4c42:	9140      	ld.w      	r2, (r1, 0x0)
    4c44:	9460      	ld.w      	r3, (r4, 0x0)
    4c46:	64ca      	cmpne      	r2, r3
    4c48:	0fd7      	bf      	0x4bf6	// 4bf6 <TK_result_prog+0x82>
    4c4a:	3300      	movi      	r3, 0
    4c4c:	b160      	st.w      	r3, (r1, 0x0)
    4c4e:	07d4      	br      	0x4bf6	// 4bf6 <TK_result_prog+0x82>
    4c50:	9200      	ld.w      	r0, (r2, 0x0)
    4c52:	3840      	cmpnei      	r0, 0
    4c54:	0c11      	bf      	0x4c76	// 4c76 <TK_result_prog+0x102>
    4c56:	9100      	ld.w      	r0, (r1, 0x0)
    4c58:	3840      	cmpnei      	r0, 0
    4c5a:	0c0e      	bf      	0x4c76	// 4c76 <TK_result_prog+0x102>
    4c5c:	92a0      	ld.w      	r5, (r2, 0x0)
    4c5e:	9100      	ld.w      	r0, (r1, 0x0)
    4c60:	6416      	cmpne      	r5, r0
    4c62:	080a      	bt      	0x4c76	// 4c76 <TK_result_prog+0x102>
    4c64:	9140      	ld.w      	r2, (r1, 0x0)
    4c66:	b440      	st.w      	r2, (r4, 0x0)
    4c68:	9320      	ld.w      	r1, (r3, 0x0)
    4c6a:	9440      	ld.w      	r2, (r4, 0x0)
    4c6c:	6486      	cmpne      	r1, r2
    4c6e:	0fc4      	bf      	0x4bf6	// 4bf6 <TK_result_prog+0x82>
    4c70:	3200      	movi      	r2, 0
    4c72:	b340      	st.w      	r2, (r3, 0x0)
    4c74:	07c1      	br      	0x4bf6	// 4bf6 <TK_result_prog+0x82>
    4c76:	9200      	ld.w      	r0, (r2, 0x0)
    4c78:	3840      	cmpnei      	r0, 0
    4c7a:	0c09      	bf      	0x4c8c	// 4c8c <TK_result_prog+0x118>
    4c7c:	9300      	ld.w      	r0, (r3, 0x0)
    4c7e:	3840      	cmpnei      	r0, 0
    4c80:	0806      	bt      	0x4c8c	// 4c8c <TK_result_prog+0x118>
    4c82:	9100      	ld.w      	r0, (r1, 0x0)
    4c84:	3840      	cmpnei      	r0, 0
    4c86:	0803      	bt      	0x4c8c	// 4c8c <TK_result_prog+0x118>
    4c88:	b400      	st.w      	r0, (r4, 0x0)
    4c8a:	07b6      	br      	0x4bf6	// 4bf6 <TK_result_prog+0x82>
    4c8c:	9300      	ld.w      	r0, (r3, 0x0)
    4c8e:	3840      	cmpnei      	r0, 0
    4c90:	0c07      	bf      	0x4c9e	// 4c9e <TK_result_prog+0x12a>
    4c92:	9200      	ld.w      	r0, (r2, 0x0)
    4c94:	3840      	cmpnei      	r0, 0
    4c96:	0804      	bt      	0x4c9e	// 4c9e <TK_result_prog+0x12a>
    4c98:	9100      	ld.w      	r0, (r1, 0x0)
    4c9a:	3840      	cmpnei      	r0, 0
    4c9c:	0ff6      	bf      	0x4c88	// 4c88 <TK_result_prog+0x114>
    4c9e:	9120      	ld.w      	r1, (r1, 0x0)
    4ca0:	3940      	cmpnei      	r1, 0
    4ca2:	0faa      	bf      	0x4bf6	// 4bf6 <TK_result_prog+0x82>
    4ca4:	9240      	ld.w      	r2, (r2, 0x0)
    4ca6:	3a40      	cmpnei      	r2, 0
    4ca8:	0ba7      	bt      	0x4bf6	// 4bf6 <TK_result_prog+0x82>
    4caa:	9360      	ld.w      	r3, (r3, 0x0)
    4cac:	3b40      	cmpnei      	r3, 0
    4cae:	0ba4      	bt      	0x4bf6	// 4bf6 <TK_result_prog+0x82>
    4cb0:	0782      	br      	0x4bb4	// 4bb4 <TK_result_prog+0x40>
    4cb2:	3200      	movi      	r2, 0
    4cb4:	1073      	lrw      	r3, 0x2000046a	// 4d00 <TK_result_prog+0x18c>
    4cb6:	b4c0      	st.w      	r6, (r4, 0x0)
    4cb8:	ab40      	st.h      	r2, (r3, 0x0)
    4cba:	1073      	lrw      	r3, 0x2000028c	// 4d04 <TK_result_prog+0x190>
    4cbc:	ab40      	st.h      	r2, (r3, 0x0)
    4cbe:	1073      	lrw      	r3, 0x2000054c	// 4d08 <TK_result_prog+0x194>
    4cc0:	ab40      	st.h      	r2, (r3, 0x0)
    4cc2:	1073      	lrw      	r3, 0x2000046e	// 4d0c <TK_result_prog+0x198>
    4cc4:	ab40      	st.h      	r2, (r3, 0x0)
    4cc6:	1073      	lrw      	r3, 0x20000302	// 4d10 <TK_result_prog+0x19c>
    4cc8:	ab40      	st.h      	r2, (r3, 0x0)
    4cca:	1073      	lrw      	r3, 0x200003c0	// 4d14 <TK_result_prog+0x1a0>
    4ccc:	ab40      	st.h      	r2, (r3, 0x0)
    4cce:	0794      	br      	0x4bf6	// 4bf6 <TK_result_prog+0x82>
    4cd0:	b260      	st.w      	r3, (r2, 0x0)
    4cd2:	3100      	movi      	r1, 0
    4cd4:	1049      	lrw      	r2, 0x200002de	// 4cf8 <TK_result_prog+0x184>
    4cd6:	a220      	st.b      	r1, (r2, 0x0)
    4cd8:	1050      	lrw      	r2, 0x200003b4	// 4d18 <TK_result_prog+0x1a4>
    4cda:	b260      	st.w      	r3, (r2, 0x0)
    4cdc:	07a5      	br      	0x4c26	// 4c26 <TK_result_prog+0xb2>
    4cde:	0000      	bkpt
    4ce0:	200002c4 	.long	0x200002c4
    4ce4:	20000260 	.long	0x20000260
    4ce8:	20000334 	.long	0x20000334
    4cec:	200003bc 	.long	0x200003bc
    4cf0:	20000112 	.long	0x20000112
    4cf4:	200004ac 	.long	0x200004ac
    4cf8:	200002de 	.long	0x200002de
    4cfc:	20000154 	.long	0x20000154
    4d00:	2000046a 	.long	0x2000046a
    4d04:	2000028c 	.long	0x2000028c
    4d08:	2000054c 	.long	0x2000054c
    4d0c:	2000046e 	.long	0x2000046e
    4d10:	20000302 	.long	0x20000302
    4d14:	200003c0 	.long	0x200003c0
    4d18:	200003b4 	.long	0x200003b4

Disassembly of section .text.TKEYIntHandler:

00004d1c <TKEYIntHandler>:
    4d1c:	1460      	nie
    4d1e:	1462      	ipush
    4d20:	14d1      	push      	r4, r15
    4d22:	1183      	lrw      	r4, 0x2000006c	// 4dac <TKEYIntHandler+0x90>
    4d24:	8460      	ld.b      	r3, (r4, 0x0)
    4d26:	3b40      	cmpnei      	r3, 0
    4d28:	0815      	bt      	0x4d52	// 4d52 <TKEYIntHandler+0x36>
    4d2a:	3301      	movi      	r3, 1
    4d2c:	a460      	st.b      	r3, (r4, 0x0)
    4d2e:	1161      	lrw      	r3, 0x200002cc	// 4db0 <TKEYIntHandler+0x94>
    4d30:	8360      	ld.b      	r3, (r3, 0x0)
    4d32:	3b41      	cmpnei      	r3, 1
    4d34:	080f      	bt      	0x4d52	// 4d52 <TKEYIntHandler+0x36>
    4d36:	1140      	lrw      	r2, 0x200004c1	// 4db4 <TKEYIntHandler+0x98>
    4d38:	8260      	ld.b      	r3, (r2, 0x0)
    4d3a:	2300      	addi      	r3, 1
    4d3c:	74cc      	zextb      	r3, r3
    4d3e:	a260      	st.b      	r3, (r2, 0x0)
    4d40:	8260      	ld.b      	r3, (r2, 0x0)
    4d42:	3b43      	cmpnei      	r3, 3
    4d44:	0803      	bt      	0x4d4a	// 4d4a <TKEYIntHandler+0x2e>
    4d46:	3300      	movi      	r3, 0
    4d48:	a260      	st.b      	r3, (r2, 0x0)
    4d4a:	e3fff70f 	bsr      	0x3b68	// 3b68 <TK_Sampling_prog>
    4d4e:	3301      	movi      	r3, 1
    4d50:	a463      	st.b      	r3, (r4, 0x3)
    4d52:	107a      	lrw      	r3, 0x2000005c	// 4db8 <TKEYIntHandler+0x9c>
    4d54:	3101      	movi      	r1, 1
    4d56:	9360      	ld.w      	r3, (r3, 0x0)
    4d58:	934a      	ld.w      	r2, (r3, 0x28)
    4d5a:	6884      	and      	r2, r1
    4d5c:	3a40      	cmpnei      	r2, 0
    4d5e:	0c02      	bf      	0x4d62	// 4d62 <TKEYIntHandler+0x46>
    4d60:	b32c      	st.w      	r1, (r3, 0x30)
    4d62:	934a      	ld.w      	r2, (r3, 0x28)
    4d64:	3102      	movi      	r1, 2
    4d66:	6884      	and      	r2, r1
    4d68:	3a40      	cmpnei      	r2, 0
    4d6a:	0c02      	bf      	0x4d6e	// 4d6e <TKEYIntHandler+0x52>
    4d6c:	b32c      	st.w      	r1, (r3, 0x30)
    4d6e:	934a      	ld.w      	r2, (r3, 0x28)
    4d70:	3104      	movi      	r1, 4
    4d72:	6884      	and      	r2, r1
    4d74:	3a40      	cmpnei      	r2, 0
    4d76:	0c02      	bf      	0x4d7a	// 4d7a <TKEYIntHandler+0x5e>
    4d78:	b32c      	st.w      	r1, (r3, 0x30)
    4d7a:	934a      	ld.w      	r2, (r3, 0x28)
    4d7c:	3108      	movi      	r1, 8
    4d7e:	6884      	and      	r2, r1
    4d80:	3a40      	cmpnei      	r2, 0
    4d82:	0c02      	bf      	0x4d86	// 4d86 <TKEYIntHandler+0x6a>
    4d84:	b32c      	st.w      	r1, (r3, 0x30)
    4d86:	934a      	ld.w      	r2, (r3, 0x28)
    4d88:	3110      	movi      	r1, 16
    4d8a:	6884      	and      	r2, r1
    4d8c:	3a40      	cmpnei      	r2, 0
    4d8e:	0c02      	bf      	0x4d92	// 4d92 <TKEYIntHandler+0x76>
    4d90:	b32c      	st.w      	r1, (r3, 0x30)
    4d92:	934a      	ld.w      	r2, (r3, 0x28)
    4d94:	3120      	movi      	r1, 32
    4d96:	6884      	and      	r2, r1
    4d98:	3a40      	cmpnei      	r2, 0
    4d9a:	0c02      	bf      	0x4d9e	// 4d9e <TKEYIntHandler+0x82>
    4d9c:	b32c      	st.w      	r1, (r3, 0x30)
    4d9e:	d9ee2001 	ld.w      	r15, (r14, 0x4)
    4da2:	9880      	ld.w      	r4, (r14, 0x0)
    4da4:	1402      	addi      	r14, r14, 8
    4da6:	1463      	ipop
    4da8:	1461      	nir
    4daa:	0000      	bkpt
    4dac:	2000006c 	.long	0x2000006c
    4db0:	200002cc 	.long	0x200002cc
    4db4:	200004c1 	.long	0x200004c1
    4db8:	2000005c 	.long	0x2000005c

Disassembly of section .text.CORETHandler:

00004dbc <CORETHandler>:
    4dbc:	1460      	nie
    4dbe:	1462      	ipush
    4dc0:	14d3      	push      	r4-r6, r15
    4dc2:	126e      	lrw      	r3, 0x20000068	// 4ef8 <CORETHandler+0x13c>
    4dc4:	3400      	movi      	r4, 0
    4dc6:	9360      	ld.w      	r3, (r3, 0x0)
    4dc8:	b386      	st.w      	r4, (r3, 0x18)
    4dca:	126d      	lrw      	r3, 0x200002cc	// 4efc <CORETHandler+0x140>
    4dcc:	8360      	ld.b      	r3, (r3, 0x0)
    4dce:	3b41      	cmpnei      	r3, 1
    4dd0:	0844      	bt      	0x4e58	// 4e58 <CORETHandler+0x9c>
    4dd2:	e3fff745 	bsr      	0x3c5c	// 3c5c <TK_Scan_Start>
    4dd6:	e3fff777 	bsr      	0x3cc4	// 3cc4 <TK_Keymap_prog>
    4dda:	e3fffbad 	bsr      	0x4534	// 4534 <TK_overflow_predict>
    4dde:	e3fffc3f 	bsr      	0x465c	// 465c <TK_Baseline_tracking>
    4de2:	e3fffec9 	bsr      	0x4b74	// 4b74 <TK_result_prog>
    4de6:	1267      	lrw      	r3, 0x200003bc	// 4f00 <CORETHandler+0x144>
    4de8:	9360      	ld.w      	r3, (r3, 0x0)
    4dea:	3b40      	cmpnei      	r3, 0
    4dec:	0c12      	bf      	0x4e10	// 4e10 <CORETHandler+0x54>
    4dee:	1266      	lrw      	r3, 0x2000011c	// 4f04 <CORETHandler+0x148>
    4df0:	9340      	ld.w      	r2, (r3, 0x0)
    4df2:	3a40      	cmpnei      	r2, 0
    4df4:	0c0e      	bf      	0x4e10	// 4e10 <CORETHandler+0x54>
    4df6:	1265      	lrw      	r3, 0x200003b4	// 4f08 <CORETHandler+0x14c>
    4df8:	3064      	movi      	r0, 100
    4dfa:	9320      	ld.w      	r1, (r3, 0x0)
    4dfc:	2100      	addi      	r1, 1
    4dfe:	b320      	st.w      	r1, (r3, 0x0)
    4e00:	9320      	ld.w      	r1, (r3, 0x0)
    4e02:	7c80      	mult      	r2, r0
    4e04:	6448      	cmphs      	r2, r1
    4e06:	0805      	bt      	0x4e10	// 4e10 <CORETHandler+0x54>
    4e08:	1241      	lrw      	r2, 0x20000361	// 4f0c <CORETHandler+0x150>
    4e0a:	3101      	movi      	r1, 1
    4e0c:	a220      	st.b      	r1, (r2, 0x0)
    4e0e:	b380      	st.w      	r4, (r3, 0x0)
    4e10:	1260      	lrw      	r3, 0x20000112	// 4f10 <CORETHandler+0x154>
    4e12:	8340      	ld.b      	r2, (r3, 0x0)
    4e14:	3a41      	cmpnei      	r2, 1
    4e16:	0829      	bt      	0x4e68	// 4e68 <CORETHandler+0xac>
    4e18:	113f      	lrw      	r1, 0x200002c4	// 4f14 <CORETHandler+0x158>
    4e1a:	1240      	lrw      	r2, 0x20000260	// 4f18 <CORETHandler+0x15c>
    4e1c:	9100      	ld.w      	r0, (r1, 0x0)
    4e1e:	9260      	ld.w      	r3, (r2, 0x0)
    4e20:	64c2      	cmpne      	r0, r3
    4e22:	117f      	lrw      	r3, 0x20000454	// 4f1c <CORETHandler+0x160>
    4e24:	080a      	bt      	0x4e38	// 4e38 <CORETHandler+0x7c>
    4e26:	9280      	ld.w      	r4, (r2, 0x0)
    4e28:	115e      	lrw      	r2, 0x20000334	// 4f20 <CORETHandler+0x164>
    4e2a:	9200      	ld.w      	r0, (r2, 0x0)
    4e2c:	6412      	cmpne      	r4, r0
    4e2e:	0805      	bt      	0x4e38	// 4e38 <CORETHandler+0x7c>
    4e30:	9120      	ld.w      	r1, (r1, 0x0)
    4e32:	9240      	ld.w      	r2, (r2, 0x0)
    4e34:	6486      	cmpne      	r1, r2
    4e36:	0c0f      	bf      	0x4e54	// 4e54 <CORETHandler+0x98>
    4e38:	9340      	ld.w      	r2, (r3, 0x0)
    4e3a:	2200      	addi      	r2, 1
    4e3c:	b340      	st.w      	r2, (r3, 0x0)
    4e3e:	115a      	lrw      	r2, 0x2000008c	// 4f24 <CORETHandler+0x168>
    4e40:	8238      	ld.b      	r1, (r2, 0x18)
    4e42:	9340      	ld.w      	r2, (r3, 0x0)
    4e44:	6484      	cmphs      	r1, r2
    4e46:	0809      	bt      	0x4e58	// 4e58 <CORETHandler+0x9c>
    4e48:	3200      	movi      	r2, 0
    4e4a:	b340      	st.w      	r2, (r3, 0x0)
    4e4c:	1170      	lrw      	r3, 0x20000361	// 4f0c <CORETHandler+0x150>
    4e4e:	3201      	movi      	r2, 1
    4e50:	a340      	st.b      	r2, (r3, 0x0)
    4e52:	0403      	br      	0x4e58	// 4e58 <CORETHandler+0x9c>
    4e54:	3200      	movi      	r2, 0
    4e56:	b340      	st.w      	r2, (r3, 0x0)
    4e58:	d9ee2003 	ld.w      	r15, (r14, 0xc)
    4e5c:	98c2      	ld.w      	r6, (r14, 0x8)
    4e5e:	98a1      	ld.w      	r5, (r14, 0x4)
    4e60:	9880      	ld.w      	r4, (r14, 0x0)
    4e62:	1404      	addi      	r14, r14, 16
    4e64:	1463      	ipop
    4e66:	1461      	nir
    4e68:	83a0      	ld.b      	r5, (r3, 0x0)
    4e6a:	7554      	zextb      	r5, r5
    4e6c:	3d40      	cmpnei      	r5, 0
    4e6e:	0bf5      	bt      	0x4e58	// 4e58 <CORETHandler+0x9c>
    4e70:	1169      	lrw      	r3, 0x200002c4	// 4f14 <CORETHandler+0x158>
    4e72:	114a      	lrw      	r2, 0x20000260	// 4f18 <CORETHandler+0x15c>
    4e74:	9300      	ld.w      	r0, (r3, 0x0)
    4e76:	9220      	ld.w      	r1, (r2, 0x0)
    4e78:	6442      	cmpne      	r0, r1
    4e7a:	112a      	lrw      	r1, 0x20000334	// 4f20 <CORETHandler+0x164>
    4e7c:	1108      	lrw      	r0, 0x20000454	// 4f1c <CORETHandler+0x160>
    4e7e:	0c36      	bf      	0x4eea	// 4eea <CORETHandler+0x12e>
    4e80:	92c0      	ld.w      	r6, (r2, 0x0)
    4e82:	9180      	ld.w      	r4, (r1, 0x0)
    4e84:	651a      	cmpne      	r6, r4
    4e86:	0c32      	bf      	0x4eea	// 4eea <CORETHandler+0x12e>
    4e88:	93c0      	ld.w      	r6, (r3, 0x0)
    4e8a:	9180      	ld.w      	r4, (r1, 0x0)
    4e8c:	651a      	cmpne      	r6, r4
    4e8e:	0c2e      	bf      	0x4eea	// 4eea <CORETHandler+0x12e>
    4e90:	9080      	ld.w      	r4, (r0, 0x0)
    4e92:	2400      	addi      	r4, 1
    4e94:	b080      	st.w      	r4, (r0, 0x0)
    4e96:	1184      	lrw      	r4, 0x2000008c	// 4f24 <CORETHandler+0x168>
    4e98:	84d8      	ld.b      	r6, (r4, 0x18)
    4e9a:	9080      	ld.w      	r4, (r0, 0x0)
    4e9c:	6518      	cmphs      	r6, r4
    4e9e:	0805      	bt      	0x4ea8	// 4ea8 <CORETHandler+0xec>
    4ea0:	b0a0      	st.w      	r5, (r0, 0x0)
    4ea2:	3401      	movi      	r4, 1
    4ea4:	101a      	lrw      	r0, 0x20000361	// 4f0c <CORETHandler+0x150>
    4ea6:	a080      	st.b      	r4, (r0, 0x0)
    4ea8:	9380      	ld.w      	r4, (r3, 0x0)
    4eaa:	9200      	ld.w      	r0, (r2, 0x0)
    4eac:	6412      	cmpne      	r4, r0
    4eae:	101f      	lrw      	r0, 0x20000484	// 4f28 <CORETHandler+0x16c>
    4eb0:	0c04      	bf      	0x4eb8	// 4eb8 <CORETHandler+0xfc>
    4eb2:	9180      	ld.w      	r4, (r1, 0x0)
    4eb4:	3c40      	cmpnei      	r4, 0
    4eb6:	0c0f      	bf      	0x4ed4	// 4ed4 <CORETHandler+0x118>
    4eb8:	93a0      	ld.w      	r5, (r3, 0x0)
    4eba:	9180      	ld.w      	r4, (r1, 0x0)
    4ebc:	6516      	cmpne      	r5, r4
    4ebe:	0c04      	bf      	0x4ec6	// 4ec6 <CORETHandler+0x10a>
    4ec0:	9280      	ld.w      	r4, (r2, 0x0)
    4ec2:	3c40      	cmpnei      	r4, 0
    4ec4:	0c08      	bf      	0x4ed4	// 4ed4 <CORETHandler+0x118>
    4ec6:	9120      	ld.w      	r1, (r1, 0x0)
    4ec8:	9240      	ld.w      	r2, (r2, 0x0)
    4eca:	6486      	cmpne      	r1, r2
    4ecc:	0c12      	bf      	0x4ef0	// 4ef0 <CORETHandler+0x134>
    4ece:	9360      	ld.w      	r3, (r3, 0x0)
    4ed0:	3b40      	cmpnei      	r3, 0
    4ed2:	080f      	bt      	0x4ef0	// 4ef0 <CORETHandler+0x134>
    4ed4:	9060      	ld.w      	r3, (r0, 0x0)
    4ed6:	2300      	addi      	r3, 1
    4ed8:	b060      	st.w      	r3, (r0, 0x0)
    4eda:	1073      	lrw      	r3, 0x2000008c	// 4f24 <CORETHandler+0x168>
    4edc:	8358      	ld.b      	r2, (r3, 0x18)
    4ede:	9060      	ld.w      	r3, (r0, 0x0)
    4ee0:	64c8      	cmphs      	r2, r3
    4ee2:	0bbb      	bt      	0x4e58	// 4e58 <CORETHandler+0x9c>
    4ee4:	3300      	movi      	r3, 0
    4ee6:	b060      	st.w      	r3, (r0, 0x0)
    4ee8:	07b2      	br      	0x4e4c	// 4e4c <CORETHandler+0x90>
    4eea:	3400      	movi      	r4, 0
    4eec:	b080      	st.w      	r4, (r0, 0x0)
    4eee:	07dd      	br      	0x4ea8	// 4ea8 <CORETHandler+0xec>
    4ef0:	3300      	movi      	r3, 0
    4ef2:	b060      	st.w      	r3, (r0, 0x0)
    4ef4:	07b2      	br      	0x4e58	// 4e58 <CORETHandler+0x9c>
    4ef6:	0000      	bkpt
    4ef8:	20000068 	.long	0x20000068
    4efc:	200002cc 	.long	0x200002cc
    4f00:	200003bc 	.long	0x200003bc
    4f04:	2000011c 	.long	0x2000011c
    4f08:	200003b4 	.long	0x200003b4
    4f0c:	20000361 	.long	0x20000361
    4f10:	20000112 	.long	0x20000112
    4f14:	200002c4 	.long	0x200002c4
    4f18:	20000260 	.long	0x20000260
    4f1c:	20000454 	.long	0x20000454
    4f20:	20000334 	.long	0x20000334
    4f24:	2000008c 	.long	0x2000008c
    4f28:	20000484 	.long	0x20000484

Disassembly of section .text.std_clk_calib_source:

00004f2c <std_clk_calib_source>:
    4f2c:	3840      	cmpnei      	r0, 0
    4f2e:	1069      	lrw      	r3, 0x20000018	// 4f50 <std_clk_calib_source+0x24>
    4f30:	0807      	bt      	0x4f3e	// 4f3e <std_clk_calib_source+0x12>
    4f32:	9360      	ld.w      	r3, (r3, 0x0)
    4f34:	1048      	lrw      	r2, 0xbe9c0005	// 4f54 <std_clk_calib_source+0x28>
    4f36:	b340      	st.w      	r2, (r3, 0x0)
    4f38:	32d8      	movi      	r2, 216
    4f3a:	b345      	st.w      	r2, (r3, 0x14)
    4f3c:	0409      	br      	0x4f4e	// 4f4e <std_clk_calib_source+0x22>
    4f3e:	3841      	cmpnei      	r0, 1
    4f40:	0bf9      	bt      	0x4f32	// 4f32 <std_clk_calib_source+0x6>
    4f42:	9340      	ld.w      	r2, (r3, 0x0)
    4f44:	1065      	lrw      	r3, 0xbe9c000d	// 4f58 <std_clk_calib_source+0x2c>
    4f46:	b260      	st.w      	r3, (r2, 0x0)
    4f48:	3383      	movi      	r3, 131
    4f4a:	4361      	lsli      	r3, r3, 1
    4f4c:	b265      	st.w      	r3, (r2, 0x14)
    4f4e:	783c      	jmp      	r15
    4f50:	20000018 	.long	0x20000018
    4f54:	be9c0005 	.long	0xbe9c0005
    4f58:	be9c000d 	.long	0xbe9c000d

Disassembly of section .text.std_clk_calib:

00004f5c <std_clk_calib>:
    4f5c:	14d4      	push      	r4-r7, r15
    4f5e:	142d      	subi      	r14, r14, 52
    4f60:	3201      	movi      	r2, 1
    4f62:	03cd      	lrw      	r6, 0x20000060	// 51a8 <std_clk_calib+0x24c>
    4f64:	6cc3      	mov      	r3, r0
    4f66:	dc4e000a 	st.b      	r2, (r14, 0xa)
    4f6a:	9640      	ld.w      	r2, (r6, 0x0)
    4f6c:	9247      	ld.w      	r2, (r2, 0x1c)
    4f6e:	7488      	zextb      	r2, r2
    4f70:	dc4e0009 	st.b      	r2, (r14, 0x9)
    4f74:	d84e0009 	ld.b      	r2, (r14, 0x9)
    4f78:	3a40      	cmpnei      	r2, 0
    4f7a:	0c08      	bf      	0x4f8a	// 4f8a <std_clk_calib+0x2e>
    4f7c:	d84e0009 	ld.b      	r2, (r14, 0x9)
    4f80:	3a42      	cmpnei      	r2, 2
    4f82:	0c04      	bf      	0x4f8a	// 4f8a <std_clk_calib+0x2e>
    4f84:	3000      	movi      	r0, 0
    4f86:	140d      	addi      	r14, r14, 52
    4f88:	1494      	pop      	r4-r7, r15
    4f8a:	0396      	lrw      	r4, 0x20000010	// 51ac <std_clk_calib+0x250>
    4f8c:	3209      	movi      	r2, 9
    4f8e:	9400      	ld.w      	r0, (r4, 0x0)
    4f90:	3b40      	cmpnei      	r3, 0
    4f92:	b041      	st.w      	r2, (r0, 0x4)
    4f94:	0858      	bt      	0x5044	// 5044 <std_clk_calib+0xe8>
    4f96:	3307      	movi      	r3, 7
    4f98:	dc6e000b 	st.b      	r3, (r14, 0xb)
    4f9c:	037a      	lrw      	r3, 0x2dc6c00	// 51b0 <std_clk_calib+0x254>
    4f9e:	b863      	st.w      	r3, (r14, 0xc)
    4fa0:	3380      	movi      	r3, 128
    4fa2:	4362      	lsli      	r3, r3, 2
    4fa4:	b867      	st.w      	r3, (r14, 0x1c)
    4fa6:	d86e000b 	ld.b      	r3, (r14, 0xb)
    4faa:	74cc      	zextb      	r3, r3
    4fac:	b062      	st.w      	r3, (r0, 0x8)
    4fae:	037d      	lrw      	r3, 0xffff	// 51b4 <std_clk_calib+0x258>
    4fb0:	b063      	st.w      	r3, (r0, 0xc)
    4fb2:	3201      	movi      	r2, 1
    4fb4:	3101      	movi      	r1, 1
    4fb6:	03be      	lrw      	r5, 0x20000018	// 51b8 <std_clk_calib+0x25c>
    4fb8:	e3ffe8b1 	bsr      	0x211a	// 211a <BT_ConfigInterrupt_CMD>
    4fbc:	95e0      	ld.w      	r7, (r5, 0x0)
    4fbe:	3300      	movi      	r3, 0
    4fc0:	135f      	lrw      	r2, 0x30010	// 51bc <std_clk_calib+0x260>
    4fc2:	b762      	st.w      	r3, (r7, 0x8)
    4fc4:	b743      	st.w      	r2, (r7, 0xc)
    4fc6:	974f      	ld.w      	r2, (r7, 0x3c)
    4fc8:	3aa2      	bseti      	r2, 2
    4fca:	b74f      	st.w      	r2, (r7, 0x3c)
    4fcc:	9803      	ld.w      	r0, (r14, 0xc)
    4fce:	d82e000b 	ld.b      	r1, (r14, 0xb)
    4fd2:	327d      	movi      	r2, 125
    4fd4:	2100      	addi      	r1, 1
    4fd6:	7c48      	mult      	r1, r2
    4fd8:	b861      	st.w      	r3, (r14, 0x4)
    4fda:	e3fff59f 	bsr      	0x3b18	// 3b18 <__udivsi3>
    4fde:	b804      	st.w      	r0, (r14, 0x10)
    4fe0:	32fa      	movi      	r2, 250
    4fe2:	9824      	ld.w      	r1, (r14, 0x10)
    4fe4:	4242      	lsli      	r2, r2, 2
    4fe6:	6448      	cmphs      	r2, r1
    4fe8:	0bce      	bt      	0x4f84	// 4f84 <std_clk_calib+0x28>
    4fea:	9844      	ld.w      	r2, (r14, 0x10)
    4fec:	3178      	movi      	r1, 120
    4fee:	9804      	ld.w      	r0, (r14, 0x10)
    4ff0:	b840      	st.w      	r2, (r14, 0x0)
    4ff2:	e3fff593 	bsr      	0x3b18	// 3b18 <__udivsi3>
    4ff6:	9840      	ld.w      	r2, (r14, 0x0)
    4ff8:	6082      	subu      	r2, r0
    4ffa:	b845      	st.w      	r2, (r14, 0x14)
    4ffc:	9804      	ld.w      	r0, (r14, 0x10)
    4ffe:	3178      	movi      	r1, 120
    5000:	9844      	ld.w      	r2, (r14, 0x10)
    5002:	b840      	st.w      	r2, (r14, 0x0)
    5004:	e3fff58a 	bsr      	0x3b18	// 3b18 <__udivsi3>
    5008:	9840      	ld.w      	r2, (r14, 0x0)
    500a:	6008      	addu      	r0, r2
    500c:	b806      	st.w      	r0, (r14, 0x18)
    500e:	c0807020 	psrclr      	ie
    5012:	9640      	ld.w      	r2, (r6, 0x0)
    5014:	9254      	ld.w      	r2, (r2, 0x50)
    5016:	b848      	st.w      	r2, (r14, 0x20)
    5018:	9861      	ld.w      	r3, (r14, 0x4)
    501a:	9440      	ld.w      	r2, (r4, 0x0)
    501c:	b260      	st.w      	r3, (r2, 0x0)
    501e:	b761      	st.w      	r3, (r7, 0x4)
    5020:	d86e000a 	ld.b      	r3, (r14, 0xa)
    5024:	3b40      	cmpnei      	r3, 0
    5026:	0843      	bt      	0x50ac	// 50ac <std_clk_calib+0x150>
    5028:	9540      	ld.w      	r2, (r5, 0x0)
    502a:	9261      	ld.w      	r3, (r2, 0x4)
    502c:	3bac      	bseti      	r3, 12
    502e:	3bae      	bseti      	r3, 14
    5030:	b261      	st.w      	r3, (r2, 0x4)
    5032:	9440      	ld.w      	r2, (r4, 0x0)
    5034:	9260      	ld.w      	r3, (r2, 0x0)
    5036:	3bac      	bseti      	r3, 12
    5038:	3bae      	bseti      	r3, 14
    503a:	b260      	st.w      	r3, (r2, 0x0)
    503c:	c1807420 	psrset      	ee, ie
    5040:	3001      	movi      	r0, 1
    5042:	07a2      	br      	0x4f86	// 4f86 <std_clk_calib+0x2a>
    5044:	3b41      	cmpnei      	r3, 1
    5046:	0806      	bt      	0x5052	// 5052 <std_clk_calib+0xf6>
    5048:	3303      	movi      	r3, 3
    504a:	dc6e000b 	st.b      	r3, (r14, 0xb)
    504e:	127d      	lrw      	r3, 0x16e3600	// 51c0 <std_clk_calib+0x264>
    5050:	07a7      	br      	0x4f9e	// 4f9e <std_clk_calib+0x42>
    5052:	3b42      	cmpnei      	r3, 2
    5054:	0806      	bt      	0x5060	// 5060 <std_clk_calib+0x104>
    5056:	3301      	movi      	r3, 1
    5058:	dc6e000b 	st.b      	r3, (r14, 0xb)
    505c:	127a      	lrw      	r3, 0xb71b00	// 51c4 <std_clk_calib+0x268>
    505e:	07a0      	br      	0x4f9e	// 4f9e <std_clk_calib+0x42>
    5060:	3b43      	cmpnei      	r3, 3
    5062:	0806      	bt      	0x506e	// 506e <std_clk_calib+0x112>
    5064:	3300      	movi      	r3, 0
    5066:	dc6e000b 	st.b      	r3, (r14, 0xb)
    506a:	1278      	lrw      	r3, 0x5b8d80	// 51c8 <std_clk_calib+0x26c>
    506c:	0799      	br      	0x4f9e	// 4f9e <std_clk_calib+0x42>
    506e:	3b44      	cmpnei      	r3, 4
    5070:	0809      	bt      	0x5082	// 5082 <std_clk_calib+0x126>
    5072:	3300      	movi      	r3, 0
    5074:	dc6e000b 	st.b      	r3, (r14, 0xb)
    5078:	1275      	lrw      	r3, 0x54c720	// 51cc <std_clk_calib+0x270>
    507a:	b863      	st.w      	r3, (r14, 0xc)
    507c:	3380      	movi      	r3, 128
    507e:	4369      	lsli      	r3, r3, 9
    5080:	0792      	br      	0x4fa4	// 4fa4 <std_clk_calib+0x48>
    5082:	3b45      	cmpnei      	r3, 5
    5084:	0806      	bt      	0x5090	// 5090 <std_clk_calib+0x134>
    5086:	3300      	movi      	r3, 0
    5088:	dc6e000b 	st.b      	r3, (r14, 0xb)
    508c:	1271      	lrw      	r3, 0x3ffed0	// 51d0 <std_clk_calib+0x274>
    508e:	07f6      	br      	0x507a	// 507a <std_clk_calib+0x11e>
    5090:	3b46      	cmpnei      	r3, 6
    5092:	0806      	bt      	0x509e	// 509e <std_clk_calib+0x142>
    5094:	3300      	movi      	r3, 0
    5096:	dc6e000b 	st.b      	r3, (r14, 0xb)
    509a:	126f      	lrw      	r3, 0x1fff68	// 51d4 <std_clk_calib+0x278>
    509c:	07ef      	br      	0x507a	// 507a <std_clk_calib+0x11e>
    509e:	3b47      	cmpnei      	r3, 7
    50a0:	0b83      	bt      	0x4fa6	// 4fa6 <std_clk_calib+0x4a>
    50a2:	3300      	movi      	r3, 0
    50a4:	dc6e000b 	st.b      	r3, (r14, 0xb)
    50a8:	126c      	lrw      	r3, 0x1ffb8	// 51d8 <std_clk_calib+0x27c>
    50aa:	07e8      	br      	0x507a	// 507a <std_clk_calib+0x11e>
    50ac:	9560      	ld.w      	r3, (r5, 0x0)
    50ae:	3101      	movi      	r1, 1
    50b0:	9440      	ld.w      	r2, (r4, 0x0)
    50b2:	b321      	st.w      	r1, (r3, 0x4)
    50b4:	b220      	st.w      	r1, (r2, 0x0)
    50b6:	3100      	movi      	r1, 0
    50b8:	b327      	st.w      	r1, (r3, 0x1c)
    50ba:	3004      	movi      	r0, 4
    50bc:	b225      	st.w      	r1, (r2, 0x14)
    50be:	932e      	ld.w      	r1, (r3, 0x38)
    50c0:	6840      	and      	r1, r0
    50c2:	3940      	cmpnei      	r1, 0
    50c4:	0ffd      	bf      	0x50be	// 50be <std_clk_calib+0x162>
    50c6:	9225      	ld.w      	r1, (r2, 0x14)
    50c8:	b82a      	st.w      	r1, (r14, 0x28)
    50ca:	3100      	movi      	r1, 0
    50cc:	b310      	st.w      	r0, (r3, 0x40)
    50ce:	b327      	st.w      	r1, (r3, 0x1c)
    50d0:	3004      	movi      	r0, 4
    50d2:	b225      	st.w      	r1, (r2, 0x14)
    50d4:	932e      	ld.w      	r1, (r3, 0x38)
    50d6:	6840      	and      	r1, r0
    50d8:	3940      	cmpnei      	r1, 0
    50da:	0ffd      	bf      	0x50d4	// 50d4 <std_clk_calib+0x178>
    50dc:	9225      	ld.w      	r1, (r2, 0x14)
    50de:	b82b      	st.w      	r1, (r14, 0x2c)
    50e0:	3100      	movi      	r1, 0
    50e2:	b310      	st.w      	r0, (r3, 0x40)
    50e4:	b327      	st.w      	r1, (r3, 0x1c)
    50e6:	3004      	movi      	r0, 4
    50e8:	b225      	st.w      	r1, (r2, 0x14)
    50ea:	932e      	ld.w      	r1, (r3, 0x38)
    50ec:	6840      	and      	r1, r0
    50ee:	3940      	cmpnei      	r1, 0
    50f0:	0ffd      	bf      	0x50ea	// 50ea <std_clk_calib+0x18e>
    50f2:	9225      	ld.w      	r1, (r2, 0x14)
    50f4:	b82c      	st.w      	r1, (r14, 0x30)
    50f6:	b310      	st.w      	r0, (r3, 0x40)
    50f8:	982b      	ld.w      	r1, (r14, 0x2c)
    50fa:	980c      	ld.w      	r0, (r14, 0x30)
    50fc:	6040      	addu      	r1, r0
    50fe:	b829      	st.w      	r1, (r14, 0x24)
    5100:	9829      	ld.w      	r1, (r14, 0x24)
    5102:	4921      	lsri      	r1, r1, 1
    5104:	b829      	st.w      	r1, (r14, 0x24)
    5106:	3100      	movi      	r1, 0
    5108:	b321      	st.w      	r1, (r3, 0x4)
    510a:	b220      	st.w      	r1, (r2, 0x0)
    510c:	b327      	st.w      	r1, (r3, 0x1c)
    510e:	b225      	st.w      	r1, (r2, 0x14)
    5110:	d86e0009 	ld.b      	r3, (r14, 0x9)
    5114:	3b42      	cmpnei      	r3, 2
    5116:	9849      	ld.w      	r2, (r14, 0x24)
    5118:	082c      	bt      	0x5170	// 5170 <std_clk_calib+0x214>
    511a:	1171      	lrw      	r3, 0x7ff	// 51dc <std_clk_calib+0x280>
    511c:	648c      	cmphs      	r3, r2
    511e:	0c03      	bf      	0x5124	// 5124 <std_clk_calib+0x1c8>
    5120:	3300      	movi      	r3, 0
    5122:	040f      	br      	0x5140	// 5140 <std_clk_calib+0x1e4>
    5124:	9849      	ld.w      	r2, (r14, 0x24)
    5126:	9866      	ld.w      	r3, (r14, 0x18)
    5128:	648c      	cmphs      	r3, r2
    512a:	080e      	bt      	0x5146	// 5146 <std_clk_calib+0x1ea>
    512c:	9868      	ld.w      	r3, (r14, 0x20)
    512e:	9847      	ld.w      	r2, (r14, 0x1c)
    5130:	60ca      	subu      	r3, r2
    5132:	b868      	st.w      	r3, (r14, 0x20)
    5134:	32fe      	movi      	r2, 254
    5136:	9868      	ld.w      	r3, (r14, 0x20)
    5138:	4248      	lsli      	r2, r2, 8
    513a:	68c8      	and      	r3, r2
    513c:	3b40      	cmpnei      	r3, 0
    513e:	0812      	bt      	0x5162	// 5162 <std_clk_calib+0x206>
    5140:	dc6e000a 	st.b      	r3, (r14, 0xa)
    5144:	0720      	br      	0x4f84	// 4f84 <std_clk_calib+0x28>
    5146:	9849      	ld.w      	r2, (r14, 0x24)
    5148:	9865      	ld.w      	r3, (r14, 0x14)
    514a:	64c8      	cmphs      	r2, r3
    514c:	0829      	bt      	0x519e	// 519e <std_clk_calib+0x242>
    514e:	9868      	ld.w      	r3, (r14, 0x20)
    5150:	9847      	ld.w      	r2, (r14, 0x1c)
    5152:	60c8      	addu      	r3, r2
    5154:	b868      	st.w      	r3, (r14, 0x20)
    5156:	33fe      	movi      	r3, 254
    5158:	9848      	ld.w      	r2, (r14, 0x20)
    515a:	4368      	lsli      	r3, r3, 8
    515c:	688c      	and      	r2, r3
    515e:	64ca      	cmpne      	r2, r3
    5160:	0fe0      	bf      	0x5120	// 5120 <std_clk_calib+0x1c4>
    5162:	9660      	ld.w      	r3, (r6, 0x0)
    5164:	9848      	ld.w      	r2, (r14, 0x20)
    5166:	b354      	st.w      	r2, (r3, 0x50)
    5168:	3001      	movi      	r0, 1
    516a:	e3ffec9f 	bsr      	0x2aa8	// 2aa8 <delay_nms>
    516e:	0759      	br      	0x5020	// 5020 <std_clk_calib+0xc4>
    5170:	9866      	ld.w      	r3, (r14, 0x18)
    5172:	648c      	cmphs      	r3, r2
    5174:	0809      	bt      	0x5186	// 5186 <std_clk_calib+0x22a>
    5176:	9868      	ld.w      	r3, (r14, 0x20)
    5178:	9847      	ld.w      	r2, (r14, 0x1c)
    517a:	60ca      	subu      	r3, r2
    517c:	b868      	st.w      	r3, (r14, 0x20)
    517e:	32ff      	movi      	r2, 255
    5180:	9868      	ld.w      	r3, (r14, 0x20)
    5182:	4250      	lsli      	r2, r2, 16
    5184:	07db      	br      	0x513a	// 513a <std_clk_calib+0x1de>
    5186:	9849      	ld.w      	r2, (r14, 0x24)
    5188:	9865      	ld.w      	r3, (r14, 0x14)
    518a:	64c8      	cmphs      	r2, r3
    518c:	0809      	bt      	0x519e	// 519e <std_clk_calib+0x242>
    518e:	9868      	ld.w      	r3, (r14, 0x20)
    5190:	9847      	ld.w      	r2, (r14, 0x1c)
    5192:	60c8      	addu      	r3, r2
    5194:	b868      	st.w      	r3, (r14, 0x20)
    5196:	33ff      	movi      	r3, 255
    5198:	9848      	ld.w      	r2, (r14, 0x20)
    519a:	4370      	lsli      	r3, r3, 16
    519c:	07e0      	br      	0x515c	// 515c <std_clk_calib+0x200>
    519e:	3300      	movi      	r3, 0
    51a0:	dc6e000a 	st.b      	r3, (r14, 0xa)
    51a4:	07e2      	br      	0x5168	// 5168 <std_clk_calib+0x20c>
    51a6:	0000      	bkpt
    51a8:	20000060 	.long	0x20000060
    51ac:	20000010 	.long	0x20000010
    51b0:	02dc6c00 	.long	0x02dc6c00
    51b4:	0000ffff 	.long	0x0000ffff
    51b8:	20000018 	.long	0x20000018
    51bc:	00030010 	.long	0x00030010
    51c0:	016e3600 	.long	0x016e3600
    51c4:	00b71b00 	.long	0x00b71b00
    51c8:	005b8d80 	.long	0x005b8d80
    51cc:	0054c720 	.long	0x0054c720
    51d0:	003ffed0 	.long	0x003ffed0
    51d4:	001fff68 	.long	0x001fff68
    51d8:	0001ffb8 	.long	0x0001ffb8
    51dc:	000007ff 	.long	0x000007ff

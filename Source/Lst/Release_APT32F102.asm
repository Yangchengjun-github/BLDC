
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
       4:	000034f2 	.long	0x000034f2
	TK_senprd[0]=50;								//TCH0 scan period = TCH0 sens
       8:	000034e2 	.long	0x000034e2
	TK_senprd[11]=50;								//TCH11 scan period = TCH11 sens
	TK_senprd[12]=50;								//TCH12 scan period = TCH12 sens
	TK_senprd[13]=50;								//TCH13 scan period = TCH13 sens
	TK_senprd[14]=50;								//TCH14 scan period = TCH14 sens
	TK_senprd[15]=50;								//TCH15 scan period = TCH15 sens
	TK_senprd[16]=50;								//TCH16 scan period = TCH16 sens
       c:	00000184 	.long	0x00000184
	TK_senprd[1]=50;								//TCH1 scan period = TCH1 sens
      10:	000034ea 	.long	0x000034ea
	TK_senprd[3]=50;								//TCH3 scan period = TCH3 sens
      14:	000034a8 	.long	0x000034a8
	TK_senprd[5]=50;								//TCH5 scan period = TCH5 sens
      18:	00000184 	.long	0x00000184
	TK_senprd[7]=50;								//TCH7 scan period = TCH7 sens
      1c:	000034da 	.long	0x000034da
	TK_senprd[9]=50;								//TCH9 scan period = TCH9 sens
      20:	000034d2 	.long	0x000034d2
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
      40:	000034ca 	.long	0x000034ca
	TK_Triggerlevel[7]=60;							//TCH7 TK_Trigger level
	TK_Triggerlevel[8]=60;							//TCH8 TK_Trigger level
      44:	000034c2 	.long	0x000034c2
	TK_Triggerlevel[9]=60;							//TCH9 TK_Trigger level
	TK_Triggerlevel[10]=60;							//TCH10 TK_Trigger level
      48:	000034ba 	.long	0x000034ba
	TK_Triggerlevel[11]=60;							//TCH11 TK_Trigger level
	TK_Triggerlevel[12]=60;							//TCH12 TK_Trigger level
      4c:	000034b2 	.long	0x000034b2
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
      7c:	000034aa 	.long	0x000034aa
/****************************************************
//TK function define
*****************************************************/
	TK_Lowpower_mode=DISABLE;						//touch key can goto sleep when TK lowpower mode enable
      80:	00004c1c 	.long	0x00004c1c
      84:	00002b98 	.long	0x00002b98
	TK_Lowpower_level=2;							//0=20ms 1=50ms 2=100ms 3=150ms 4=200ms,Scan interval when sleep
      88:	00002c90 	.long	0x00002c90
	TK_Wakeup_level=50;								//touch key Trigger level in sleep
      8c:	00002cf8 	.long	0x00002cf8
      90:	00002d80 	.long	0x00002d80
/****************************************************
//TK special parameter define
*****************************************************/
	TK_PSEL_MODE=TK_PSEL_AVDD;						//tk power sel:TK_PSEL_FVR/TK_PSEL_AVDD   when select TK_PSEL_FVR PA0.2(TCH3) need a 104 cap
      94:	00000184 	.long	0x00000184
	TK_FVR_LEVEL=TK_FVR_4096V;						//FVR level:TK_FVR_2048V/TK_FVR_4096V
      98:	00002f28 	.long	0x00002f28
	TK_EC_LEVEL=TK_EC_3V;							//C0 voltage sel:TK_EC_1V/TK_EC_2V/TK_EC_3V/TK_EC_3_6V
      9c:	0000326c 	.long	0x0000326c
      a0:	0000329c 	.long	0x0000329c
	TK_icon[0]=4;									//TCH0 TK Scan icon
      a4:	00002f5c 	.long	0x00002f5c
      a8:	00000184 	.long	0x00000184
	TK_icon[1]=4;									//TCH1 TK Scan icon
	TK_icon[2]=4;									//TCH2 TK Scan icon
      ac:	00000184 	.long	0x00000184
	TK_icon[3]=4;									//TCH3 TK Scan icon
	TK_icon[4]=4;									//TCH4 TK Scan icon
      b0:	00002fdc 	.long	0x00002fdc
	TK_icon[5]=4;									//TCH5 TK Scan icon
	TK_icon[6]=4;									//TCH6 TK Scan icon
      b4:	0000304c 	.long	0x0000304c
	TK_icon[7]=4;									//TCH7 TK Scan icon
	TK_icon[8]=4;									//TCH8 TK Scan icon
      b8:	00003088 	.long	0x00003088
	TK_icon[9]=4;									//TCH9 TK Scan icon
	TK_icon[10]=4;									//TCH10 TK Scan icon
      bc:	000030c4 	.long	0x000030c4
	TK_icon[11]=4;									//TCH11 TK Scan icon
	TK_icon[12]=4;									//TCH12 TK Scan icon
      c0:	00000184 	.long	0x00000184
	TK_icon[13]=4;									//TCH13 TK Scan icon
	TK_icon[14]=4;									//TCH14 TK Scan icon
      c4:	00003502 	.long	0x00003502
	TK_Wheel_Seq[0]=14;								
	TK_Wheel_Seq[1]=0;
	TK_Wheel_Seq[2]=15;
	TK_Wheel_Seq[3]=1;	
#endif
      c8:	00000184 	.long	0x00000184
      cc:	00003100 	.long	0x00003100
      d0:	000031e8 	.long	0x000031e8
      d4:	000032cc 	.long	0x000032cc
      d8:	00003314 	.long	0x00003314
      dc:	00003370 	.long	0x00003370
      e0:	000034fa 	.long	0x000034fa
      e4:	00004b7c 	.long	0x00004b7c
      e8:	000033d0 	.long	0x000033d0
      ec:	00000184 	.long	0x00000184
      f0:	00003404 	.long	0x00003404
      f4:	00003454 	.long	0x00003454
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
     146:	1014      	lrw      	r0, 0x1ac0	// 194 <DummyHandler+0x10>
  jsr r0
     148:	7bc1      	jsr      	r0
  mov r0, r0
     14a:	6c03      	mov      	r0, r0
  mov r0, r0
     14c:	6c03      	mov      	r0, r0


  
  lrw r15, __exit
     14e:	ea8f0013 	lrw      	r15, 0x160	// 198 <DummyHandler+0x14>
  lrw r0,main
     152:	1013      	lrw      	r0, 0x350c	// 19c <DummyHandler+0x18>
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
     194:	00001ac0 	.long	0x00001ac0
     198:	00000160 	.long	0x00000160
     19c:	0000350c 	.long	0x0000350c
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
     53c:	1168      	lrw      	r3, 0x5040	// 5dc <__GI_pow+0x428>
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
     5dc:	00005040 	.long	0x00005040
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
     7de:	01db      	lrw      	r6, 0x5040	// aec <__GI_pow+0x938>
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
     7f8:	0202      	lrw      	r0, 0x5040	// aec <__GI_pow+0x938>
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
     aec:	00005040 	.long	0x00005040
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
     f24:	111d      	lrw      	r0, 0x5070	// 1018 <_fpadd_parts+0x2d0>
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
    1018:	00005070 	.long	0x00005070

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
    1264:	1013      	lrw      	r0, 0x5070	// 12b0 <__muldf3+0x22c>
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
    12b0:	00005070 	.long	0x00005070
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
    13b2:	1016      	lrw      	r0, 0x5070	// 1408 <__divdf3+0x150>
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
    1408:	00005070 	.long	0x00005070

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
    1656:	1048      	lrw      	r2, 0x5084	// 1674 <__clzsi2+0x3c>
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
    1674:	00005084 	.long	0x00005084

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

00001964 <__GI_puts>:
    1964:	14d1      	push      	r4, r15
    1966:	1085      	lrw      	r4, 0x200000c8	// 1978 <__GI_puts+0x14>
    1968:	9420      	ld.w      	r1, (r4, 0x0)
    196a:	e0000009 	bsr      	0x197c	// 197c <__GI_fputs>
    196e:	9420      	ld.w      	r1, (r4, 0x0)
    1970:	300a      	movi      	r0, 10
    1972:	e0000e1d 	bsr      	0x35ac	// 35ac <fputc>
    1976:	1491      	pop      	r4, r15
    1978:	200000c8 	.long	0x200000c8

0000197c <__GI_fputs>:
    197c:	14d4      	push      	r4-r7, r15
    197e:	1422      	subi      	r14, r14, 8
    1980:	3940      	cmpnei      	r1, 0
    1982:	6dc3      	mov      	r7, r0
    1984:	6d87      	mov      	r6, r1
    1986:	0806      	bt      	0x1992	// 1992 <__GI_fputs+0x16>
    1988:	3400      	movi      	r4, 0
    198a:	2c00      	subi      	r4, 1
    198c:	6c13      	mov      	r0, r4
    198e:	1402      	addi      	r14, r14, 8
    1990:	1494      	pop      	r4-r7, r15
    1992:	3018      	movi      	r0, 24
    1994:	6004      	addu      	r0, r1
    1996:	b800      	st.w      	r0, (r14, 0x0)
    1998:	e000008e 	bsr      	0x1ab4	// 1ab4 <__GI_os_critical_enter>
    199c:	3200      	movi      	r2, 0
    199e:	6d5f      	mov      	r5, r7
    19a0:	2a00      	subi      	r2, 1
    19a2:	8500      	ld.b      	r0, (r5, 0x0)
    19a4:	3840      	cmpnei      	r0, 0
    19a6:	5d9d      	subu      	r4, r5, r7
    19a8:	0805      	bt      	0x19b2	// 19b2 <__GI_fputs+0x36>
    19aa:	9800      	ld.w      	r0, (r14, 0x0)
    19ac:	e0000086 	bsr      	0x1ab8	// 1ab8 <__GI_os_critical_exit>
    19b0:	07ee      	br      	0x198c	// 198c <__GI_fputs+0x10>
    19b2:	6c5b      	mov      	r1, r6
    19b4:	b841      	st.w      	r2, (r14, 0x4)
    19b6:	e0000dfb 	bsr      	0x35ac	// 35ac <fputc>
    19ba:	9841      	ld.w      	r2, (r14, 0x4)
    19bc:	6482      	cmpne      	r0, r2
    19be:	0fe5      	bf      	0x1988	// 1988 <__GI_fputs+0xc>
    19c0:	2500      	addi      	r5, 1
    19c2:	07f0      	br      	0x19a2	// 19a2 <__GI_fputs+0x26>

000019c4 <__memset_fast>:
    19c4:	14c3      	push      	r4-r6
    19c6:	7444      	zextb      	r1, r1
    19c8:	3a40      	cmpnei      	r2, 0
    19ca:	0c1f      	bf      	0x1a08	// 1a08 <__memset_fast+0x44>
    19cc:	6d43      	mov      	r5, r0
    19ce:	6d03      	mov      	r4, r0
    19d0:	3603      	movi      	r6, 3
    19d2:	6918      	and      	r4, r6
    19d4:	3c40      	cmpnei      	r4, 0
    19d6:	0c1a      	bf      	0x1a0a	// 1a0a <__memset_fast+0x46>
    19d8:	a520      	st.b      	r1, (r5, 0x0)
    19da:	2a00      	subi      	r2, 1
    19dc:	3a40      	cmpnei      	r2, 0
    19de:	0c15      	bf      	0x1a08	// 1a08 <__memset_fast+0x44>
    19e0:	2500      	addi      	r5, 1
    19e2:	6d17      	mov      	r4, r5
    19e4:	3603      	movi      	r6, 3
    19e6:	6918      	and      	r4, r6
    19e8:	3c40      	cmpnei      	r4, 0
    19ea:	0c10      	bf      	0x1a0a	// 1a0a <__memset_fast+0x46>
    19ec:	a520      	st.b      	r1, (r5, 0x0)
    19ee:	2a00      	subi      	r2, 1
    19f0:	3a40      	cmpnei      	r2, 0
    19f2:	0c0b      	bf      	0x1a08	// 1a08 <__memset_fast+0x44>
    19f4:	2500      	addi      	r5, 1
    19f6:	6d17      	mov      	r4, r5
    19f8:	3603      	movi      	r6, 3
    19fa:	6918      	and      	r4, r6
    19fc:	3c40      	cmpnei      	r4, 0
    19fe:	0c06      	bf      	0x1a0a	// 1a0a <__memset_fast+0x46>
    1a00:	a520      	st.b      	r1, (r5, 0x0)
    1a02:	2a00      	subi      	r2, 1
    1a04:	2500      	addi      	r5, 1
    1a06:	0402      	br      	0x1a0a	// 1a0a <__memset_fast+0x46>
    1a08:	1483      	pop      	r4-r6
    1a0a:	4168      	lsli      	r3, r1, 8
    1a0c:	6c4c      	or      	r1, r3
    1a0e:	4170      	lsli      	r3, r1, 16
    1a10:	6c4c      	or      	r1, r3
    1a12:	3a2f      	cmplti      	r2, 16
    1a14:	0809      	bt      	0x1a26	// 1a26 <__memset_fast+0x62>
    1a16:	b520      	st.w      	r1, (r5, 0x0)
    1a18:	b521      	st.w      	r1, (r5, 0x4)
    1a1a:	b522      	st.w      	r1, (r5, 0x8)
    1a1c:	b523      	st.w      	r1, (r5, 0xc)
    1a1e:	2a0f      	subi      	r2, 16
    1a20:	250f      	addi      	r5, 16
    1a22:	3a2f      	cmplti      	r2, 16
    1a24:	0ff9      	bf      	0x1a16	// 1a16 <__memset_fast+0x52>
    1a26:	3a23      	cmplti      	r2, 4
    1a28:	0806      	bt      	0x1a34	// 1a34 <__memset_fast+0x70>
    1a2a:	2a03      	subi      	r2, 4
    1a2c:	b520      	st.w      	r1, (r5, 0x0)
    1a2e:	2503      	addi      	r5, 4
    1a30:	3a23      	cmplti      	r2, 4
    1a32:	0ffc      	bf      	0x1a2a	// 1a2a <__memset_fast+0x66>
    1a34:	3a40      	cmpnei      	r2, 0
    1a36:	0fe9      	bf      	0x1a08	// 1a08 <__memset_fast+0x44>
    1a38:	2a00      	subi      	r2, 1
    1a3a:	a520      	st.b      	r1, (r5, 0x0)
    1a3c:	3a40      	cmpnei      	r2, 0
    1a3e:	0fe5      	bf      	0x1a08	// 1a08 <__memset_fast+0x44>
    1a40:	2a00      	subi      	r2, 1
    1a42:	a521      	st.b      	r1, (r5, 0x1)
    1a44:	3a40      	cmpnei      	r2, 0
    1a46:	0fe1      	bf      	0x1a08	// 1a08 <__memset_fast+0x44>
    1a48:	a522      	st.b      	r1, (r5, 0x2)
    1a4a:	1483      	pop      	r4-r6

00001a4c <__memcpy_fast>:
    1a4c:	14c3      	push      	r4-r6
    1a4e:	6d83      	mov      	r6, r0
    1a50:	6d07      	mov      	r4, r1
    1a52:	6d18      	or      	r4, r6
    1a54:	3303      	movi      	r3, 3
    1a56:	690c      	and      	r4, r3
    1a58:	3c40      	cmpnei      	r4, 0
    1a5a:	0c0b      	bf      	0x1a70	// 1a70 <__memcpy_fast+0x24>
    1a5c:	3a40      	cmpnei      	r2, 0
    1a5e:	0c08      	bf      	0x1a6e	// 1a6e <__memcpy_fast+0x22>
    1a60:	8160      	ld.b      	r3, (r1, 0x0)
    1a62:	2100      	addi      	r1, 1
    1a64:	2a00      	subi      	r2, 1
    1a66:	a660      	st.b      	r3, (r6, 0x0)
    1a68:	2600      	addi      	r6, 1
    1a6a:	3a40      	cmpnei      	r2, 0
    1a6c:	0bfa      	bt      	0x1a60	// 1a60 <__memcpy_fast+0x14>
    1a6e:	1483      	pop      	r4-r6
    1a70:	3a2f      	cmplti      	r2, 16
    1a72:	080e      	bt      	0x1a8e	// 1a8e <__memcpy_fast+0x42>
    1a74:	91a0      	ld.w      	r5, (r1, 0x0)
    1a76:	9161      	ld.w      	r3, (r1, 0x4)
    1a78:	9182      	ld.w      	r4, (r1, 0x8)
    1a7a:	b6a0      	st.w      	r5, (r6, 0x0)
    1a7c:	91a3      	ld.w      	r5, (r1, 0xc)
    1a7e:	b661      	st.w      	r3, (r6, 0x4)
    1a80:	b682      	st.w      	r4, (r6, 0x8)
    1a82:	b6a3      	st.w      	r5, (r6, 0xc)
    1a84:	2a0f      	subi      	r2, 16
    1a86:	210f      	addi      	r1, 16
    1a88:	260f      	addi      	r6, 16
    1a8a:	3a2f      	cmplti      	r2, 16
    1a8c:	0ff4      	bf      	0x1a74	// 1a74 <__memcpy_fast+0x28>
    1a8e:	3a23      	cmplti      	r2, 4
    1a90:	0808      	bt      	0x1aa0	// 1aa0 <__memcpy_fast+0x54>
    1a92:	9160      	ld.w      	r3, (r1, 0x0)
    1a94:	2a03      	subi      	r2, 4
    1a96:	2103      	addi      	r1, 4
    1a98:	b660      	st.w      	r3, (r6, 0x0)
    1a9a:	2603      	addi      	r6, 4
    1a9c:	3a23      	cmplti      	r2, 4
    1a9e:	0ffa      	bf      	0x1a92	// 1a92 <__memcpy_fast+0x46>
    1aa0:	3a40      	cmpnei      	r2, 0
    1aa2:	0fe6      	bf      	0x1a6e	// 1a6e <__memcpy_fast+0x22>
    1aa4:	8160      	ld.b      	r3, (r1, 0x0)
    1aa6:	2100      	addi      	r1, 1
    1aa8:	2a00      	subi      	r2, 1
    1aaa:	a660      	st.b      	r3, (r6, 0x0)
    1aac:	2600      	addi      	r6, 1
    1aae:	07f9      	br      	0x1aa0	// 1aa0 <__memcpy_fast+0x54>

00001ab0 <__GI_os_critical_open>:
    1ab0:	3000      	movi      	r0, 0
    1ab2:	783c      	jmp      	r15

00001ab4 <__GI_os_critical_enter>:
    1ab4:	3000      	movi      	r0, 0
    1ab6:	783c      	jmp      	r15

00001ab8 <__GI_os_critical_exit>:
    1ab8:	3000      	movi      	r0, 0
    1aba:	783c      	jmp      	r15

00001abc <__GI_os_critical_close>:
    1abc:	3000      	movi      	r0, 0
    1abe:	783c      	jmp      	r15

Disassembly of section .text.__main:

00001ac0 <__main>:
extern char _bss_start[];
extern char _ebss[];


void __main( void ) 
{
    1ac0:	14d0      	push      	r15

  /* if the start of data (dst)
     is not equal to end of text (src) then
     copy it, else it's already in the right place
     */
  if( _start_data != _end_rodata ) {
    1ac2:	1009      	lrw      	r0, 0x20000000	// 1ae4 <__main+0x24>
    1ac4:	1029      	lrw      	r1, 0x5188	// 1ae8 <__main+0x28>
    1ac6:	6442      	cmpne      	r0, r1
    1ac8:	0c05      	bf      	0x1ad2	// 1ad2 <__main+0x12>
//    __memcpy_fast( dst, src, (_end_data - _start_data));
    memcpy( dst, src, (_end_data - _start_data));
    1aca:	1049      	lrw      	r2, 0x20000108	// 1aec <__main+0x2c>
    1acc:	6082      	subu      	r2, r0
    1ace:	e3ffffbf 	bsr      	0x1a4c	// 1a4c <__memcpy_fast>
  }

  /* zero the bss 
   */
  if( _ebss - _bss_start ) {
    1ad2:	1048      	lrw      	r2, 0x20000574	// 1af0 <__main+0x30>
    1ad4:	1008      	lrw      	r0, 0x20000108	// 1af4 <__main+0x34>
    1ad6:	640a      	cmpne      	r2, r0
    1ad8:	0c05      	bf      	0x1ae2	// 1ae2 <__main+0x22>
//    __memset_fast( _bss_start, 0x00, ( _ebss - _bss_start ));
    memset( _bss_start, 0x00, ( _ebss - _bss_start ));
    1ada:	6082      	subu      	r2, r0
    1adc:	3100      	movi      	r1, 0
    1ade:	e3ffff73 	bsr      	0x19c4	// 19c4 <__memset_fast>
  }

	
}
    1ae2:	1490      	pop      	r15
    1ae4:	20000000 	.long	0x20000000
    1ae8:	00005188 	.long	0x00005188
    1aec:	20000108 	.long	0x20000108
    1af0:	20000574 	.long	0x20000574
    1af4:	20000108 	.long	0x20000108

Disassembly of section .text.SYSCON_General_CMD.part.0:

00001af8 <SYSCON_General_CMD.part.0>:
/*************************************************************/  
void SYSCON_General_CMD(FunctionalStatus NewState, SYSCON_General_CMD_TypeDef ENDIS_X )
{
	if (NewState != DISABLE)
	{
		if(ENDIS_X==ENDIS_EMOSC) 
    1af8:	3848      	cmpnei      	r0, 8
    1afa:	080a      	bt      	0x1b0e	// 1b0e <SYSCON_General_CMD.part.0+0x16>
		GPIOA0->CONLR=(GPIOA0->CONLR & 0XFFF00FFF)|0x00044000;					//enable EMOSC PIN
    1afc:	107a      	lrw      	r3, 0x20000050	// 1b64 <SYSCON_General_CMD.part.0+0x6c>
    1afe:	32ff      	movi      	r2, 255
    1b00:	9320      	ld.w      	r1, (r3, 0x0)
    1b02:	9160      	ld.w      	r3, (r1, 0x0)
    1b04:	424c      	lsli      	r2, r2, 12
    1b06:	68c9      	andn      	r3, r2
    1b08:	3bae      	bseti      	r3, 14
    1b0a:	3bb2      	bseti      	r3, 18
    1b0c:	b160      	st.w      	r3, (r1, 0x0)
		SYSCON->GCER|=ENDIS_X;													//enable SYSCON General Control
    1b0e:	1077      	lrw      	r3, 0x20000060	// 1b68 <SYSCON_General_CMD.part.0+0x70>
    1b10:	9360      	ld.w      	r3, (r3, 0x0)
    1b12:	9341      	ld.w      	r2, (r3, 0x4)
    1b14:	6c80      	or      	r2, r0
    1b16:	b341      	st.w      	r2, (r3, 0x4)
		while(!(SYSCON->GCSR&ENDIS_X));											//check  Enable?	
    1b18:	9343      	ld.w      	r2, (r3, 0xc)
    1b1a:	6880      	and      	r2, r0
    1b1c:	3a40      	cmpnei      	r2, 0
    1b1e:	0ffd      	bf      	0x1b18	// 1b18 <SYSCON_General_CMD.part.0+0x20>
		switch(ENDIS_X)
    1b20:	3842      	cmpnei      	r0, 2
    1b22:	0807      	bt      	0x1b30	// 1b30 <SYSCON_General_CMD.part.0+0x38>
		{
			case ENDIS_IMOSC:
				while (!(SYSCON->CKST & ENDIS_IMOSC)); 	
    1b24:	3102      	movi      	r1, 2
    1b26:	9344      	ld.w      	r2, (r3, 0x10)
    1b28:	6884      	and      	r2, r1
    1b2a:	3a40      	cmpnei      	r2, 0
    1b2c:	0ffd      	bf      	0x1b26	// 1b26 <SYSCON_General_CMD.part.0+0x2e>
	{
		SYSCON->GCDR|=ENDIS_X;													//disable SYSCON General Control
		while(SYSCON->GCSR&ENDIS_X);											//check Disable?
		SYSCON->ICR|=ENDIS_X;													//Clear ENDIS_X stable bit
	}
}
    1b2e:	783c      	jmp      	r15
		switch(ENDIS_X)
    1b30:	3802      	cmphsi      	r0, 3
    1b32:	0809      	bt      	0x1b44	// 1b44 <SYSCON_General_CMD.part.0+0x4c>
    1b34:	3841      	cmpnei      	r0, 1
    1b36:	0bfc      	bt      	0x1b2e	// 1b2e <SYSCON_General_CMD.part.0+0x36>
				while (!(SYSCON->CKST & ENDIS_ISOSC)); 
    1b38:	3101      	movi      	r1, 1
    1b3a:	9344      	ld.w      	r2, (r3, 0x10)
    1b3c:	6884      	and      	r2, r1
    1b3e:	3a40      	cmpnei      	r2, 0
    1b40:	0ffd      	bf      	0x1b3a	// 1b3a <SYSCON_General_CMD.part.0+0x42>
    1b42:	07f6      	br      	0x1b2e	// 1b2e <SYSCON_General_CMD.part.0+0x36>
		switch(ENDIS_X)
    1b44:	3848      	cmpnei      	r0, 8
    1b46:	0807      	bt      	0x1b54	// 1b54 <SYSCON_General_CMD.part.0+0x5c>
				while (!(SYSCON->CKST & ENDIS_EMOSC)); 
    1b48:	3108      	movi      	r1, 8
    1b4a:	9344      	ld.w      	r2, (r3, 0x10)
    1b4c:	6884      	and      	r2, r1
    1b4e:	3a40      	cmpnei      	r2, 0
    1b50:	0ffd      	bf      	0x1b4a	// 1b4a <SYSCON_General_CMD.part.0+0x52>
    1b52:	07ee      	br      	0x1b2e	// 1b2e <SYSCON_General_CMD.part.0+0x36>
		switch(ENDIS_X)
    1b54:	3850      	cmpnei      	r0, 16
    1b56:	0bec      	bt      	0x1b2e	// 1b2e <SYSCON_General_CMD.part.0+0x36>
				while (!(SYSCON->CKST & ENDIS_HFOSC)); 
    1b58:	3110      	movi      	r1, 16
    1b5a:	9344      	ld.w      	r2, (r3, 0x10)
    1b5c:	6884      	and      	r2, r1
    1b5e:	3a40      	cmpnei      	r2, 0
    1b60:	0ffd      	bf      	0x1b5a	// 1b5a <SYSCON_General_CMD.part.0+0x62>
    1b62:	07e6      	br      	0x1b2e	// 1b2e <SYSCON_General_CMD.part.0+0x36>
    1b64:	20000050 	.long	0x20000050
    1b68:	20000060 	.long	0x20000060

Disassembly of section .text.SYSCON_RST_VALUE:

00001b6c <SYSCON_RST_VALUE>:
	SYSCON->RAMCHK=SYSCON_RAMCHK_RST;
    1b6c:	106f      	lrw      	r3, 0x20000060	// 1ba8 <SYSCON_RST_VALUE+0x3c>
    1b6e:	1050      	lrw      	r2, 0xffff	// 1bac <SYSCON_RST_VALUE+0x40>
    1b70:	9360      	ld.w      	r3, (r3, 0x0)
    1b72:	b345      	st.w      	r2, (r3, 0x14)
	SYSCON->EFLCHK=SYSCON_EFLCHK_RST;
    1b74:	104f      	lrw      	r2, 0xffffff	// 1bb0 <SYSCON_RST_VALUE+0x44>
    1b76:	b346      	st.w      	r2, (r3, 0x18)
	SYSCON->SCLKCR=SYSCON_SCLKCR_RST;
    1b78:	104f      	lrw      	r2, 0xd22d0000	// 1bb4 <SYSCON_RST_VALUE+0x48>
    1b7a:	b347      	st.w      	r2, (r3, 0x1c)
	SYSCON->OSTR=SYSCON_OSTR_RST;
    1b7c:	104f      	lrw      	r2, 0x70ff3bff	// 1bb8 <SYSCON_RST_VALUE+0x4c>
    1b7e:	b350      	st.w      	r2, (r3, 0x40)
	SYSCON->EXIRT=SYSCON_EXIRT_RST;
    1b80:	3180      	movi      	r1, 128
	SYSCON->LVDCR=SYSCON_LVDCR_RST;
    1b82:	320a      	movi      	r2, 10
    1b84:	b353      	st.w      	r2, (r3, 0x4c)
	SYSCON->EXIRT=SYSCON_EXIRT_RST;
    1b86:	604c      	addu      	r1, r3
    1b88:	3200      	movi      	r2, 0
	SYSCON->IWDCR=SYSCON_IWDCR_RST;
    1b8a:	100d      	lrw      	r0, 0x70c	// 1bbc <SYSCON_RST_VALUE+0x50>
	SYSCON->EXIRT=SYSCON_EXIRT_RST;
    1b8c:	b145      	st.w      	r2, (r1, 0x14)
	SYSCON->UREG0=SYSCON_UREG0_RST;
    1b8e:	23ff      	addi      	r3, 256
	SYSCON->EXIFT=SYSCON_EXIFT_RST;
    1b90:	b146      	st.w      	r2, (r1, 0x18)
	SYSCON->IWDCR=SYSCON_IWDCR_RST;
    1b92:	b10d      	st.w      	r0, (r1, 0x34)
	SYSCON->IWDCNT=SYSCON_IWDCNT_RST;
    1b94:	100b      	lrw      	r0, 0x3fe	// 1bc0 <SYSCON_RST_VALUE+0x54>
    1b96:	b10e      	st.w      	r0, (r1, 0x38)
	SYSCON->EVTRG=SYSCON_EVTRG_RST;
    1b98:	b15d      	st.w      	r2, (r1, 0x74)
	SYSCON->EVPS=SYSCON_EVPS_RST;
    1b9a:	b15e      	st.w      	r2, (r1, 0x78)
	SYSCON->EVSWF=SYSCON_EVSWF_RST;
    1b9c:	b15f      	st.w      	r2, (r1, 0x7c)
	SYSCON->UREG0=SYSCON_UREG0_RST;
    1b9e:	b340      	st.w      	r2, (r3, 0x0)
	SYSCON->UREG1=SYSCON_UREG1_RST;
    1ba0:	b341      	st.w      	r2, (r3, 0x4)
	SYSCON->UREG2=SYSCON_UREG2_RST;
    1ba2:	b342      	st.w      	r2, (r3, 0x8)
	SYSCON->UREG3=SYSCON_UREG3_RST;
    1ba4:	b343      	st.w      	r2, (r3, 0xc)
}
    1ba6:	783c      	jmp      	r15
    1ba8:	20000060 	.long	0x20000060
    1bac:	0000ffff 	.long	0x0000ffff
    1bb0:	00ffffff 	.long	0x00ffffff
    1bb4:	d22d0000 	.long	0xd22d0000
    1bb8:	70ff3bff 	.long	0x70ff3bff
    1bbc:	0000070c 	.long	0x0000070c
    1bc0:	000003fe 	.long	0x000003fe

Disassembly of section .text.SYSCON_General_CMD:

00001bc4 <SYSCON_General_CMD>:
{
    1bc4:	14d0      	push      	r15
	if (NewState != DISABLE)
    1bc6:	3840      	cmpnei      	r0, 0
    1bc8:	0c05      	bf      	0x1bd2	// 1bd2 <SYSCON_General_CMD+0xe>
    1bca:	6c07      	mov      	r0, r1
    1bcc:	e3ffff96 	bsr      	0x1af8	// 1af8 <SYSCON_General_CMD.part.0>
}
    1bd0:	1490      	pop      	r15
		SYSCON->GCDR|=ENDIS_X;													//disable SYSCON General Control
    1bd2:	1068      	lrw      	r3, 0x20000060	// 1bf0 <SYSCON_General_CMD+0x2c>
    1bd4:	9360      	ld.w      	r3, (r3, 0x0)
    1bd6:	9342      	ld.w      	r2, (r3, 0x8)
    1bd8:	6c84      	or      	r2, r1
    1bda:	b342      	st.w      	r2, (r3, 0x8)
		while(SYSCON->GCSR&ENDIS_X);											//check Disable?
    1bdc:	9343      	ld.w      	r2, (r3, 0xc)
    1bde:	6884      	and      	r2, r1
    1be0:	3a40      	cmpnei      	r2, 0
    1be2:	0bfd      	bt      	0x1bdc	// 1bdc <SYSCON_General_CMD+0x18>
		SYSCON->ICR|=ENDIS_X;													//Clear ENDIS_X stable bit
    1be4:	237f      	addi      	r3, 128
    1be6:	9301      	ld.w      	r0, (r3, 0x4)
    1be8:	6c40      	or      	r1, r0
    1bea:	b321      	st.w      	r1, (r3, 0x4)
}
    1bec:	07f2      	br      	0x1bd0	// 1bd0 <SYSCON_General_CMD+0xc>
    1bee:	0000      	bkpt
    1bf0:	20000060 	.long	0x20000060

Disassembly of section .text.SystemCLK_HCLKDIV_PCLKDIV_Config:

00001bf4 <SystemCLK_HCLKDIV_PCLKDIV_Config>:
//SystemClk_data_x:EMOSC_24M,EMOSC_16M,EMOSC_12M,EMOSC_8M,EMOSC_4M,EMOSC_36K,
//ISOSC,IMOSC,HFOSC_48M,HFOSC_24M,HFOSC_12M,HFOSC_6M
//ReturnValue:NONE
/*************************************************************/ 
void SystemCLK_HCLKDIV_PCLKDIV_Config(SystemCLK_TypeDef SYSCLK_X , SystemCLK_Div_TypeDef HCLK_DIV_X , PCLK_Div_TypeDef PCLK_DIV_X , SystemClk_data_TypeDef SystemClk_data_x )
{
    1bf4:	14c2      	push      	r4-r5
	if(SystemClk_data_x==HFOSC_48M)
    1bf6:	3b48      	cmpnei      	r3, 8
    1bf8:	0828      	bt      	0x1c48	// 1c48 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x54>
	{
		IFC->CEDR=0X01;						//CLKEN
    1bfa:	109d      	lrw      	r4, 0x20000064	// 1c6c <SystemCLK_HCLKDIV_PCLKDIV_Config+0x78>
    1bfc:	3501      	movi      	r5, 1
    1bfe:	9480      	ld.w      	r4, (r4, 0x0)
    1c00:	b4a1      	st.w      	r5, (r4, 0x4)
		IFC->MR=0X04|(0X00<<16);			//High speed mode
    1c02:	3504      	movi      	r5, 4
    1c04:	b4a5      	st.w      	r5, (r4, 0x14)
	if((SystemClk_data_x==EMOSC_24M)||(SystemClk_data_x==HFOSC_24M))
	{
		IFC->CEDR=0X01;						//CLKEN
		IFC->MR=0X02|(0X00<<16);			//Medium speed mode
	}
	if((SystemClk_data_x==EMOSC_12M)||(SystemClk_data_x==HFOSC_12M)||(SystemClk_data_x==EMOSC_16M))
    1c06:	5b83      	subi      	r4, r3, 1
    1c08:	3c01      	cmphsi      	r4, 2
    1c0a:	0c2b      	bf      	0x1c60	// 1c60 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x6c>
	{
		IFC->CEDR=0X01;						//CLKEN
		IFC->MR=0X01|(0X00<<16);			//Low speed mode
	}
	if((SystemClk_data_x==EMOSC_8M)||(SystemClk_data_x==EMOSC_4M)||(SystemClk_data_x==EMOSC_36K)
		||(SystemClk_data_x==IMOSC)||(SystemClk_data_x==ISOSC)||(SystemClk_data_x==HFOSC_6M))
    1c0c:	5b8b      	subi      	r4, r3, 3
	if((SystemClk_data_x==EMOSC_8M)||(SystemClk_data_x==EMOSC_4M)||(SystemClk_data_x==EMOSC_36K)
    1c0e:	3c04      	cmphsi      	r4, 5
    1c10:	0c03      	bf      	0x1c16	// 1c16 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x22>
		||(SystemClk_data_x==IMOSC)||(SystemClk_data_x==ISOSC)||(SystemClk_data_x==HFOSC_6M))
    1c12:	3b4b      	cmpnei      	r3, 11
    1c14:	0807      	bt      	0x1c22	// 1c22 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x2e>
	{
		IFC->CEDR=0X01;						//CLKEN
    1c16:	1076      	lrw      	r3, 0x20000064	// 1c6c <SystemCLK_HCLKDIV_PCLKDIV_Config+0x78>
    1c18:	3401      	movi      	r4, 1
    1c1a:	9360      	ld.w      	r3, (r3, 0x0)
    1c1c:	b381      	st.w      	r4, (r3, 0x4)
		IFC->MR=0X00|(0X00<<16);			//Low speed mode
    1c1e:	3400      	movi      	r4, 0
    1c20:	b385      	st.w      	r4, (r3, 0x14)
	}
	SYSCON->SCLKCR=SYSCLK_KEY | HCLK_DIV_X| SYSCLK_X;
    1c22:	1094      	lrw      	r4, 0xd22d0000	// 1c70 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x7c>
    1c24:	6c10      	or      	r0, r4
    1c26:	1074      	lrw      	r3, 0x20000060	// 1c74 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x80>
    1c28:	6c40      	or      	r1, r0
    1c2a:	9360      	ld.w      	r3, (r3, 0x0)
	while (!(SYSCON->CKST & (1<<8))); 											// waiting for sysclk stable
    1c2c:	3080      	movi      	r0, 128
	SYSCON->SCLKCR=SYSCLK_KEY | HCLK_DIV_X| SYSCLK_X;
    1c2e:	b327      	st.w      	r1, (r3, 0x1c)
	while (!(SYSCON->CKST & (1<<8))); 											// waiting for sysclk stable
    1c30:	4001      	lsli      	r0, r0, 1
    1c32:	9324      	ld.w      	r1, (r3, 0x10)
    1c34:	6840      	and      	r1, r0
    1c36:	3940      	cmpnei      	r1, 0
    1c38:	0ffd      	bf      	0x1c32	// 1c32 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x3e>
	SYSCON->PCLKCR=PCLK_KEY|PCLK_DIV_X;											//PCLK DIV 1 2 4 6 8 16		
    1c3a:	1030      	lrw      	r1, 0xc33c0000	// 1c78 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x84>
    1c3c:	6c48      	or      	r1, r2
    1c3e:	b328      	st.w      	r1, (r3, 0x20)
	while(SYSCON->PCLKCR!=PCLK_DIV_X);											//Wait PCLK DIV
    1c40:	9328      	ld.w      	r1, (r3, 0x20)
    1c42:	644a      	cmpne      	r2, r1
    1c44:	0bfe      	bt      	0x1c40	// 1c40 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x4c>
}
    1c46:	1482      	pop      	r4-r5
	if((SystemClk_data_x==EMOSC_24M)||(SystemClk_data_x==HFOSC_24M))
    1c48:	3b40      	cmpnei      	r3, 0
    1c4a:	0c03      	bf      	0x1c50	// 1c50 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x5c>
    1c4c:	3b49      	cmpnei      	r3, 9
    1c4e:	0807      	bt      	0x1c5c	// 1c5c <SystemCLK_HCLKDIV_PCLKDIV_Config+0x68>
		IFC->CEDR=0X01;						//CLKEN
    1c50:	1087      	lrw      	r4, 0x20000064	// 1c6c <SystemCLK_HCLKDIV_PCLKDIV_Config+0x78>
    1c52:	3501      	movi      	r5, 1
    1c54:	9480      	ld.w      	r4, (r4, 0x0)
    1c56:	b4a1      	st.w      	r5, (r4, 0x4)
		IFC->MR=0X02|(0X00<<16);			//Medium speed mode
    1c58:	3502      	movi      	r5, 2
    1c5a:	b4a5      	st.w      	r5, (r4, 0x14)
	if((SystemClk_data_x==EMOSC_12M)||(SystemClk_data_x==HFOSC_12M)||(SystemClk_data_x==EMOSC_16M))
    1c5c:	3b4a      	cmpnei      	r3, 10
    1c5e:	0bd4      	bt      	0x1c06	// 1c06 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x12>
		IFC->CEDR=0X01;						//CLKEN
    1c60:	1083      	lrw      	r4, 0x20000064	// 1c6c <SystemCLK_HCLKDIV_PCLKDIV_Config+0x78>
    1c62:	3501      	movi      	r5, 1
    1c64:	9480      	ld.w      	r4, (r4, 0x0)
    1c66:	b4a1      	st.w      	r5, (r4, 0x4)
		IFC->MR=0X01|(0X00<<16);			//Low speed mode
    1c68:	b4a5      	st.w      	r5, (r4, 0x14)
    1c6a:	07d1      	br      	0x1c0c	// 1c0c <SystemCLK_HCLKDIV_PCLKDIV_Config+0x18>
    1c6c:	20000064 	.long	0x20000064
    1c70:	d22d0000 	.long	0xd22d0000
    1c74:	20000060 	.long	0x20000060
    1c78:	c33c0000 	.long	0xc33c0000

Disassembly of section .text.SYSCON_HFOSC_SELECTE:

00001c7c <SYSCON_HFOSC_SELECTE>:
//EntryParameter:HFOSC_SELECTE_X
//HFOSC_SELECTE_X:HFOSC_SELECTE_48M,HFOSC_SELECTE_24M;HFOSC_SELECTE_12M;HFOSC_SELECTE_6M
//ReturnValue:NONE
/*************************************************************/  
void SYSCON_HFOSC_SELECTE(HFOSC_SELECTE_TypeDef HFOSC_SELECTE_X)
{		
    1c7c:	14d1      	push      	r4, r15
    1c7e:	6d03      	mov      	r4, r0
	SYSCON_General_CMD(DISABLE,ENDIS_HFOSC);					//disable HFOSC
    1c80:	3110      	movi      	r1, 16
    1c82:	3000      	movi      	r0, 0
    1c84:	e3ffffa0 	bsr      	0x1bc4	// 1bc4 <SYSCON_General_CMD>
	SYSCON->OPT1 = (SYSCON->OPT1 & 0XFFFFFFCF)|HFOSC_SELECTE_X;
    1c88:	1066      	lrw      	r3, 0x20000060	// 1ca0 <SYSCON_HFOSC_SELECTE+0x24>
    1c8a:	9360      	ld.w      	r3, (r3, 0x0)
    1c8c:	9319      	ld.w      	r0, (r3, 0x64)
    1c8e:	3884      	bclri      	r0, 4
    1c90:	3885      	bclri      	r0, 5
    1c92:	6c10      	or      	r0, r4
    1c94:	b319      	st.w      	r0, (r3, 0x64)
    1c96:	3010      	movi      	r0, 16
    1c98:	e3ffff30 	bsr      	0x1af8	// 1af8 <SYSCON_General_CMD.part.0>
	SYSCON_General_CMD(ENABLE,ENDIS_HFOSC);						//enable HFOSC
}
    1c9c:	1491      	pop      	r4, r15
    1c9e:	0000      	bkpt
    1ca0:	20000060 	.long	0x20000060

Disassembly of section .text.SYSCON_WDT_CMD:

00001ca4 <SYSCON_WDT_CMD>:
//EntryParameter:,NewState
//NewState:ENABLE,DISABLE
//ReturnValue:NONE
/*************************************************************/
void SYSCON_WDT_CMD(FunctionalStatus NewState)
{
    1ca4:	106c      	lrw      	r3, 0x20000060	// 1cd4 <SYSCON_WDT_CMD+0x30>
	if(NewState != DISABLE)
    1ca6:	3840      	cmpnei      	r0, 0
	{
		SYSCON->IWDEDR=IWDTEDR_KEY|Enable_IWDT;
    1ca8:	9360      	ld.w      	r3, (r3, 0x0)
    1caa:	237f      	addi      	r3, 128
	if(NewState != DISABLE)
    1cac:	0c0a      	bf      	0x1cc0	// 1cc0 <SYSCON_WDT_CMD+0x1c>
		SYSCON->IWDEDR=IWDTEDR_KEY|Enable_IWDT;
    1cae:	104b      	lrw      	r2, 0x78870000	// 1cd8 <SYSCON_WDT_CMD+0x34>
		while(!(SYSCON->IWDCR&Check_IWDT_BUSY));
    1cb0:	3180      	movi      	r1, 128
		SYSCON->IWDEDR=IWDTEDR_KEY|Enable_IWDT;
    1cb2:	b34f      	st.w      	r2, (r3, 0x3c)
		while(!(SYSCON->IWDCR&Check_IWDT_BUSY));
    1cb4:	4125      	lsli      	r1, r1, 5
    1cb6:	934d      	ld.w      	r2, (r3, 0x34)
    1cb8:	6884      	and      	r2, r1
    1cba:	3a40      	cmpnei      	r2, 0
    1cbc:	0ffd      	bf      	0x1cb6	// 1cb6 <SYSCON_WDT_CMD+0x12>
	else
	{
		SYSCON->IWDEDR=IWDTEDR_KEY|Disable_IWDT;
		while(SYSCON->IWDCR&Check_IWDT_BUSY);
	}
}
    1cbe:	783c      	jmp      	r15
		SYSCON->IWDEDR=IWDTEDR_KEY|Disable_IWDT;
    1cc0:	1047      	lrw      	r2, 0x788755aa	// 1cdc <SYSCON_WDT_CMD+0x38>
		while(SYSCON->IWDCR&Check_IWDT_BUSY);
    1cc2:	3180      	movi      	r1, 128
		SYSCON->IWDEDR=IWDTEDR_KEY|Disable_IWDT;
    1cc4:	b34f      	st.w      	r2, (r3, 0x3c)
		while(SYSCON->IWDCR&Check_IWDT_BUSY);
    1cc6:	4125      	lsli      	r1, r1, 5
    1cc8:	934d      	ld.w      	r2, (r3, 0x34)
    1cca:	6884      	and      	r2, r1
    1ccc:	3a40      	cmpnei      	r2, 0
    1cce:	0bfd      	bt      	0x1cc8	// 1cc8 <SYSCON_WDT_CMD+0x24>
    1cd0:	07f7      	br      	0x1cbe	// 1cbe <SYSCON_WDT_CMD+0x1a>
    1cd2:	0000      	bkpt
    1cd4:	20000060 	.long	0x20000060
    1cd8:	78870000 	.long	0x78870000
    1cdc:	788755aa 	.long	0x788755aa

Disassembly of section .text.SYSCON_IWDCNT_Reload:

00001ce0 <SYSCON_IWDCNT_Reload>:
//EntryParameter:NONE
//ReturnValue: NONE
/*************************************************************/
void SYSCON_IWDCNT_Reload(void)
{
	SYSCON->IWDCNT=CLR_IWDT;
    1ce0:	1064      	lrw      	r3, 0x20000060	// 1cf0 <SYSCON_IWDCNT_Reload+0x10>
    1ce2:	32b4      	movi      	r2, 180
    1ce4:	9360      	ld.w      	r3, (r3, 0x0)
    1ce6:	237f      	addi      	r3, 128
    1ce8:	4257      	lsli      	r2, r2, 23
    1cea:	b34e      	st.w      	r2, (r3, 0x38)
}
    1cec:	783c      	jmp      	r15
    1cee:	0000      	bkpt
    1cf0:	20000060 	.long	0x20000060

Disassembly of section .text.SYSCON_IWDCNT_Config:

00001cf4 <SYSCON_IWDCNT_Config>:
//IWDT_INTW_DIV_X:IWDT_INTW_DIV_1/2/3/4/4/5/6
//ReturnValue: NONE
/*************************************************************/
void SYSCON_IWDCNT_Config(IWDT_TIME_TypeDef IWDT_TIME_X , IWDT_TIMEDIV_TypeDef IWDT_INTW_DIV_X )
{
	SYSCON->IWDCR=IWDT_KEY|IWDT_TIME_X|IWDT_INTW_DIV_X;
    1cf4:	1044      	lrw      	r2, 0x87780000	// 1d04 <SYSCON_IWDCNT_Config+0x10>
    1cf6:	1065      	lrw      	r3, 0x20000060	// 1d08 <SYSCON_IWDCNT_Config+0x14>
    1cf8:	6c48      	or      	r1, r2
    1cfa:	9360      	ld.w      	r3, (r3, 0x0)
    1cfc:	6c04      	or      	r0, r1
    1cfe:	237f      	addi      	r3, 128
    1d00:	b30d      	st.w      	r0, (r3, 0x34)
}
    1d02:	783c      	jmp      	r15
    1d04:	87780000 	.long	0x87780000
    1d08:	20000060 	.long	0x20000060

Disassembly of section .text.SYSCON_LVD_Config:

00001d0c <SYSCON_LVD_Config>:
//X_LVD_INT:ENABLE_LVD_INT,DISABLE_LVD_INT
//INTDET_POL_X:INTDET_POL_fall,INTDET_POL_X_rise,INTDET_POL_X_riseORfall
//ReturnValue: NONE
/*************************************************************/
void SYSCON_LVD_Config(X_LVDEN_TypeDef X_LVDEN , INTDET_LVL_X_TypeDef INTDET_LVL_X , RSTDET_LVL_X_TypeDef RSTDET_LVL_X , X_LVD_INT_TypeDef X_LVD_INT , INTDET_POL_X_TypeDef INTDET_POL_X)
{
    1d0c:	14c3      	push      	r4-r6
    1d0e:	9883      	ld.w      	r4, (r14, 0xc)
	//SYSCON->LVDCR=LVD_KEY;
	SYSCON->LVDCR=LVD_KEY|X_LVDEN|INTDET_LVL_X|RSTDET_LVL_X|X_LVD_INT|INTDET_POL_X;
    1d10:	10c5      	lrw      	r6, 0xb44b0000	// 1d24 <SYSCON_LVD_Config+0x18>
    1d12:	6d18      	or      	r4, r6
    1d14:	6cd0      	or      	r3, r4
    1d16:	6c8c      	or      	r2, r3
    1d18:	6c48      	or      	r1, r2
    1d1a:	10a4      	lrw      	r5, 0x20000060	// 1d28 <SYSCON_LVD_Config+0x1c>
    1d1c:	6c04      	or      	r0, r1
    1d1e:	95a0      	ld.w      	r5, (r5, 0x0)
    1d20:	b513      	st.w      	r0, (r5, 0x4c)
}
    1d22:	1483      	pop      	r4-r6
    1d24:	b44b0000 	.long	0xb44b0000
    1d28:	20000060 	.long	0x20000060

Disassembly of section .text.LVD_Int_Enable:

00001d2c <LVD_Int_Enable>:
//EntryParameter:NONE
//ReturnValue: NONE
/*************************************************************/
void LVD_Int_Enable(void)
{
	SYSCON->ICR = LVD_INT_ST;				//clear LVD INT status
    1d2c:	1066      	lrw      	r3, 0x20000060	// 1d44 <LVD_Int_Enable+0x18>
    1d2e:	3180      	movi      	r1, 128
    1d30:	9360      	ld.w      	r3, (r3, 0x0)
    1d32:	3280      	movi      	r2, 128
    1d34:	604c      	addu      	r1, r3
    1d36:	4244      	lsli      	r2, r2, 4
    1d38:	b141      	st.w      	r2, (r1, 0x4)
	SYSCON->IMER  |= LVD_INT_ST;
    1d3a:	935d      	ld.w      	r2, (r3, 0x74)
    1d3c:	3aab      	bseti      	r2, 11
    1d3e:	b35d      	st.w      	r2, (r3, 0x74)
}
    1d40:	783c      	jmp      	r15
    1d42:	0000      	bkpt
    1d44:	20000060 	.long	0x20000060

Disassembly of section .text.IWDT_Int_Enable:

00001d48 <IWDT_Int_Enable>:
//EntryParameter:NONE
//ReturnValue: NONE
/*************************************************************/
void IWDT_Int_Enable(void)
{
	SYSCON->ICR = IWDT_INT_ST;				//clear LVD INT status
    1d48:	1066      	lrw      	r3, 0x20000060	// 1d60 <IWDT_Int_Enable+0x18>
    1d4a:	3180      	movi      	r1, 128
    1d4c:	9360      	ld.w      	r3, (r3, 0x0)
    1d4e:	3280      	movi      	r2, 128
    1d50:	604c      	addu      	r1, r3
    1d52:	4241      	lsli      	r2, r2, 1
    1d54:	b141      	st.w      	r2, (r1, 0x4)
	SYSCON->IMER  |= IWDT_INT_ST;
    1d56:	935d      	ld.w      	r2, (r3, 0x74)
    1d58:	3aa8      	bseti      	r2, 8
    1d5a:	b35d      	st.w      	r2, (r3, 0x74)
}
    1d5c:	783c      	jmp      	r15
    1d5e:	0000      	bkpt
    1d60:	20000060 	.long	0x20000060

Disassembly of section .text.EXTI_trigger_CMD:

00001d64 <EXTI_trigger_CMD>:
//EXI_tringer_mode:_EXIRT,_EXIFT
//ReturnValue: LVD detection flag
/*************************************************************/
void EXTI_trigger_CMD(FunctionalStatus NewState , SYSCON_EXIPIN_TypeDef  EXIPIN , EXI_tringer_mode_TypeDef EXI_tringer_mode)
{
	switch(EXI_tringer_mode)
    1d64:	3a40      	cmpnei      	r2, 0
    1d66:	0c04      	bf      	0x1d6e	// 1d6e <EXTI_trigger_CMD+0xa>
    1d68:	3a41      	cmpnei      	r2, 1
    1d6a:	0c0e      	bf      	0x1d86	// 1d86 <EXTI_trigger_CMD+0x22>
		{
			SYSCON->EXIFT &=~EXIPIN;	
		}
		break;
	}	
}
    1d6c:	783c      	jmp      	r15
    1d6e:	106d      	lrw      	r3, 0x20000060	// 1da0 <EXTI_trigger_CMD+0x3c>
		if(NewState != DISABLE)
    1d70:	3840      	cmpnei      	r0, 0
			SYSCON->EXIRT |=EXIPIN;
    1d72:	9360      	ld.w      	r3, (r3, 0x0)
    1d74:	237f      	addi      	r3, 128
    1d76:	9345      	ld.w      	r2, (r3, 0x14)
		if(NewState != DISABLE)
    1d78:	0c04      	bf      	0x1d80	// 1d80 <EXTI_trigger_CMD+0x1c>
			SYSCON->EXIRT |=EXIPIN;
    1d7a:	6c48      	or      	r1, r2
    1d7c:	b325      	st.w      	r1, (r3, 0x14)
    1d7e:	07f7      	br      	0x1d6c	// 1d6c <EXTI_trigger_CMD+0x8>
			SYSCON->EXIRT &=~EXIPIN;	
    1d80:	6885      	andn      	r2, r1
    1d82:	b345      	st.w      	r2, (r3, 0x14)
    1d84:	07f4      	br      	0x1d6c	// 1d6c <EXTI_trigger_CMD+0x8>
    1d86:	1067      	lrw      	r3, 0x20000060	// 1da0 <EXTI_trigger_CMD+0x3c>
		if(NewState != DISABLE)
    1d88:	3840      	cmpnei      	r0, 0
			SYSCON->EXIFT |=EXIPIN;
    1d8a:	9360      	ld.w      	r3, (r3, 0x0)
    1d8c:	237f      	addi      	r3, 128
    1d8e:	9346      	ld.w      	r2, (r3, 0x18)
		if(NewState != DISABLE)
    1d90:	0c04      	bf      	0x1d98	// 1d98 <EXTI_trigger_CMD+0x34>
			SYSCON->EXIFT |=EXIPIN;
    1d92:	6c48      	or      	r1, r2
    1d94:	b326      	st.w      	r1, (r3, 0x18)
    1d96:	07eb      	br      	0x1d6c	// 1d6c <EXTI_trigger_CMD+0x8>
			SYSCON->EXIFT &=~EXIPIN;	
    1d98:	6885      	andn      	r2, r1
    1d9a:	b346      	st.w      	r2, (r3, 0x18)
}
    1d9c:	07e8      	br      	0x1d6c	// 1d6c <EXTI_trigger_CMD+0x8>
    1d9e:	0000      	bkpt
    1da0:	20000060 	.long	0x20000060

Disassembly of section .text.SYSCON_Int_Enable:

00001da4 <SYSCON_Int_Enable>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SYSCON_Int_Enable(void)
{
    INTC_ISER_WRITE(SYSCON_INT);    
    1da4:	3202      	movi      	r2, 2
    1da6:	1062      	lrw      	r3, 0xe000e100	// 1dac <SYSCON_Int_Enable+0x8>
    1da8:	b340      	st.w      	r2, (r3, 0x0)
}
    1daa:	783c      	jmp      	r15
    1dac:	e000e100 	.long	0xe000e100

Disassembly of section .text.GPIO_Init:

00001db0 <GPIO_Init>:
//byte:Lowbyte(PIN_0~7),Highbyte(PIN_8~15)
//Dir:0:output 1:input
//ReturnValue:NONE
/*************************************************************/  
void GPIO_Init(CSP_GPIO_T *GPIOx,uint8_t PinNum,GPIO_Dir_TypeDef Dir)
{
    1db0:	14d1      	push      	r4, r15
    uint32_t data_temp;
    uint8_t GPIO_Pin;
    if(PinNum<8)
    1db2:	3907      	cmphsi      	r1, 8
{
    1db4:	6d03      	mov      	r4, r0
    if(PinNum<8)
    1db6:	0830      	bt      	0x1e16	// 1e16 <GPIO_Init+0x66>
    {
    switch (PinNum)
    1db8:	5903      	subi      	r0, r1, 1
    1dba:	3806      	cmphsi      	r0, 7
    1dbc:	0827      	bt      	0x1e0a	// 1e0a <GPIO_Init+0x5a>
    1dbe:	e3fff79f 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    1dc2:	1004      	.short	0x1004
    1dc4:	1d1a1613 	.long	0x1d1a1613
    1dc8:	0021      	.short	0x0021
    {
        case 0:data_temp=0xfffffff0;GPIO_Pin=0;break;
        case 1:data_temp=0xffffff0f;GPIO_Pin=4;break;
    1dca:	3300      	movi      	r3, 0
    1dcc:	3104      	movi      	r1, 4
    1dce:	2bf0      	subi      	r3, 241
        case 4:data_temp=0xfff0ffff;GPIO_Pin=16;break;
        case 5:data_temp=0xff0fffff;GPIO_Pin=20;break;
        case 6:data_temp=0xf0ffffff;GPIO_Pin=24;break;
        case 7:data_temp=0x0fffffff;GPIO_Pin=28;break;
    }
        if (Dir)
    1dd0:	3a40      	cmpnei      	r2, 0
        {
          (GPIOx)->CONLR =((GPIOx)->CONLR & data_temp) | 1<<GPIO_Pin;
    1dd2:	9440      	ld.w      	r2, (r4, 0x0)
    1dd4:	68c8      	and      	r3, r2
        if (Dir)
    1dd6:	0c1e      	bf      	0x1e12	// 1e12 <GPIO_Init+0x62>
          (GPIOx)->CONLR =((GPIOx)->CONLR & data_temp) | 1<<GPIO_Pin;
    1dd8:	3201      	movi      	r2, 1
        }
        else
        {
         (GPIOx)->CONLR = ((GPIOx)->CONLR & data_temp) | 2<<GPIO_Pin; 
    1dda:	7084      	lsl      	r2, r1
    1ddc:	6cc8      	or      	r3, r2
    1dde:	b460      	st.w      	r3, (r4, 0x0)
        else
        {
         (GPIOx)->CONHR = ((GPIOx)->CONHR & data_temp) | 2<<GPIO_Pin;    
        }
    }
}
    1de0:	1491      	pop      	r4, r15
        case 2:data_temp=0xfffff0ff;GPIO_Pin=8;break;
    1de2:	3108      	movi      	r1, 8
    1de4:	1166      	lrw      	r3, 0xfffff0ff	// 1e7c <GPIO_Init+0xcc>
    1de6:	07f5      	br      	0x1dd0	// 1dd0 <GPIO_Init+0x20>
        case 3:data_temp=0xffff0fff;GPIO_Pin=12;break;
    1de8:	310c      	movi      	r1, 12
    1dea:	1166      	lrw      	r3, 0xffff0fff	// 1e80 <GPIO_Init+0xd0>
    1dec:	07f2      	br      	0x1dd0	// 1dd0 <GPIO_Init+0x20>
        case 4:data_temp=0xfff0ffff;GPIO_Pin=16;break;
    1dee:	3110      	movi      	r1, 16
    1df0:	1165      	lrw      	r3, 0xfff10000	// 1e84 <GPIO_Init+0xd4>
        case 6:data_temp=0xf0ffffff;GPIO_Pin=24;break;
    1df2:	2b00      	subi      	r3, 1
    1df4:	07ee      	br      	0x1dd0	// 1dd0 <GPIO_Init+0x20>
        case 5:data_temp=0xff0fffff;GPIO_Pin=20;break;
    1df6:	3114      	movi      	r1, 20
    1df8:	1164      	lrw      	r3, 0xff100000	// 1e88 <GPIO_Init+0xd8>
    1dfa:	07fc      	br      	0x1df2	// 1df2 <GPIO_Init+0x42>
        case 6:data_temp=0xf0ffffff;GPIO_Pin=24;break;
    1dfc:	33f1      	movi      	r3, 241
    1dfe:	3118      	movi      	r1, 24
    1e00:	4378      	lsli      	r3, r3, 24
    1e02:	07f8      	br      	0x1df2	// 1df2 <GPIO_Init+0x42>
        case 7:data_temp=0x0fffffff;GPIO_Pin=28;break;
    1e04:	311c      	movi      	r1, 28
    1e06:	1162      	lrw      	r3, 0xfffffff	// 1e8c <GPIO_Init+0xdc>
    1e08:	07e4      	br      	0x1dd0	// 1dd0 <GPIO_Init+0x20>
        case 0:data_temp=0xfffffff0;GPIO_Pin=0;break;
    1e0a:	3300      	movi      	r3, 0
    1e0c:	3100      	movi      	r1, 0
    1e0e:	2b0f      	subi      	r3, 16
    1e10:	07e0      	br      	0x1dd0	// 1dd0 <GPIO_Init+0x20>
         (GPIOx)->CONLR = ((GPIOx)->CONLR & data_temp) | 2<<GPIO_Pin; 
    1e12:	3202      	movi      	r2, 2
    1e14:	07e3      	br      	0x1dda	// 1dda <GPIO_Init+0x2a>
    else if (PinNum<16)
    1e16:	390f      	cmphsi      	r1, 16
    1e18:	0be4      	bt      	0x1de0	// 1de0 <GPIO_Init+0x30>
        switch (PinNum)
    1e1a:	2908      	subi      	r1, 9
    1e1c:	3906      	cmphsi      	r1, 7
    1e1e:	6c07      	mov      	r0, r1
    1e20:	0827      	bt      	0x1e6e	// 1e6e <GPIO_Init+0xbe>
    1e22:	e3fff76d 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    1e26:	1004      	.short	0x1004
    1e28:	1d1a1613 	.long	0x1d1a1613
    1e2c:	0021      	.short	0x0021
        case 9:data_temp=0xffffff0f;GPIO_Pin=4;break;
    1e2e:	3300      	movi      	r3, 0
    1e30:	3104      	movi      	r1, 4
    1e32:	2bf0      	subi      	r3, 241
      if (Dir)
    1e34:	3a40      	cmpnei      	r2, 0
        (GPIOx)->CONHR = ((GPIOx)->CONHR & data_temp) | 1<<GPIO_Pin;  
    1e36:	9441      	ld.w      	r2, (r4, 0x4)
    1e38:	68c8      	and      	r3, r2
      if (Dir)
    1e3a:	0c1e      	bf      	0x1e76	// 1e76 <GPIO_Init+0xc6>
        (GPIOx)->CONHR = ((GPIOx)->CONHR & data_temp) | 1<<GPIO_Pin;  
    1e3c:	3201      	movi      	r2, 1
         (GPIOx)->CONHR = ((GPIOx)->CONHR & data_temp) | 2<<GPIO_Pin;    
    1e3e:	7084      	lsl      	r2, r1
    1e40:	6cc8      	or      	r3, r2
    1e42:	b461      	st.w      	r3, (r4, 0x4)
}
    1e44:	07ce      	br      	0x1de0	// 1de0 <GPIO_Init+0x30>
        case 10:data_temp=0xfffff0ff;GPIO_Pin=8;break;
    1e46:	3108      	movi      	r1, 8
    1e48:	106d      	lrw      	r3, 0xfffff0ff	// 1e7c <GPIO_Init+0xcc>
    1e4a:	07f5      	br      	0x1e34	// 1e34 <GPIO_Init+0x84>
        case 11:data_temp=0xffff0fff;GPIO_Pin=12;break;
    1e4c:	310c      	movi      	r1, 12
    1e4e:	106d      	lrw      	r3, 0xffff0fff	// 1e80 <GPIO_Init+0xd0>
    1e50:	07f2      	br      	0x1e34	// 1e34 <GPIO_Init+0x84>
        case 12:data_temp=0xfff0ffff;GPIO_Pin=16;break;
    1e52:	3110      	movi      	r1, 16
    1e54:	106c      	lrw      	r3, 0xfff10000	// 1e84 <GPIO_Init+0xd4>
        case 14:data_temp=0xf0ffffff;GPIO_Pin=24;break;
    1e56:	2b00      	subi      	r3, 1
    1e58:	07ee      	br      	0x1e34	// 1e34 <GPIO_Init+0x84>
        case 13:data_temp=0xff0fffff;GPIO_Pin=20;break;
    1e5a:	3114      	movi      	r1, 20
    1e5c:	106b      	lrw      	r3, 0xff100000	// 1e88 <GPIO_Init+0xd8>
    1e5e:	07fc      	br      	0x1e56	// 1e56 <GPIO_Init+0xa6>
        case 14:data_temp=0xf0ffffff;GPIO_Pin=24;break;
    1e60:	33f1      	movi      	r3, 241
    1e62:	3118      	movi      	r1, 24
    1e64:	4378      	lsli      	r3, r3, 24
    1e66:	07f8      	br      	0x1e56	// 1e56 <GPIO_Init+0xa6>
        case 15:data_temp=0x0fffffff;GPIO_Pin=28;break;
    1e68:	311c      	movi      	r1, 28
    1e6a:	1069      	lrw      	r3, 0xfffffff	// 1e8c <GPIO_Init+0xdc>
    1e6c:	07e4      	br      	0x1e34	// 1e34 <GPIO_Init+0x84>
        case 8:data_temp=0xfffffff0;GPIO_Pin=0;break;
    1e6e:	3300      	movi      	r3, 0
    1e70:	3100      	movi      	r1, 0
    1e72:	2b0f      	subi      	r3, 16
    1e74:	07e0      	br      	0x1e34	// 1e34 <GPIO_Init+0x84>
         (GPIOx)->CONHR = ((GPIOx)->CONHR & data_temp) | 2<<GPIO_Pin;    
    1e76:	3202      	movi      	r2, 2
    1e78:	07e3      	br      	0x1e3e	// 1e3e <GPIO_Init+0x8e>
    1e7a:	0000      	bkpt
    1e7c:	fffff0ff 	.long	0xfffff0ff
    1e80:	ffff0fff 	.long	0xffff0fff
    1e84:	fff10000 	.long	0xfff10000
    1e88:	ff100000 	.long	0xff100000
    1e8c:	0fffffff 	.long	0x0fffffff

Disassembly of section .text.GPIO_Set_Value:

00001e90 <GPIO_Set_Value>:
//bitposi:0~15 bitval:0~1 0=low 1=high
//ReturnValue:VALUE
/*************************************************************/
void GPIO_Set_Value(CSP_GPIO_T *GPIOx,uint8_t bitposi,uint8_t bitval)
{
    if (bitval==1)
    1e90:	3a41      	cmpnei      	r2, 1
    1e92:	0804      	bt      	0x1e9a	// 1e9a <GPIO_Set_Value+0xa>
    {
        (GPIOx)->SODR = (1ul<<bitposi);
    1e94:	7084      	lsl      	r2, r1
    1e96:	b043      	st.w      	r2, (r0, 0xc)
    }
    else if ((bitval==0))
    {
        (GPIOx)->CODR = (1ul<<bitposi);
    }
}
    1e98:	783c      	jmp      	r15
    else if ((bitval==0))
    1e9a:	3a40      	cmpnei      	r2, 0
    1e9c:	0bfe      	bt      	0x1e98	// 1e98 <GPIO_Set_Value+0x8>
        (GPIOx)->CODR = (1ul<<bitposi);
    1e9e:	3301      	movi      	r3, 1
    1ea0:	70c4      	lsl      	r3, r1
    1ea2:	b064      	st.w      	r3, (r0, 0x10)
}
    1ea4:	07fa      	br      	0x1e98	// 1e98 <GPIO_Set_Value+0x8>

Disassembly of section .text.WWDT_CONFIG:

00001ea8 <WWDT_CONFIG>:
//WWDT CONFIG
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/ 
void WWDT_CONFIG(WWDT_PSCDIV_TypeDef PSCDIVX,U8_T WND_DATA,WWDT_DBGEN_TypeDef DBGENX)
{
    1ea8:	14c1      	push      	r4
	WWDT->CFGR =WND_DATA;
    1eaa:	1065      	lrw      	r3, 0x20000014	// 1ebc <WWDT_CONFIG+0x14>
    1eac:	9380      	ld.w      	r4, (r3, 0x0)
    1eae:	b421      	st.w      	r1, (r4, 0x4)
	WWDT->CFGR |= PSCDIVX |DBGENX;
    1eb0:	9461      	ld.w      	r3, (r4, 0x4)
    1eb2:	6c8c      	or      	r2, r3
    1eb4:	6c08      	or      	r0, r2
    1eb6:	b401      	st.w      	r0, (r4, 0x4)
}
    1eb8:	1481      	pop      	r4
    1eba:	0000      	bkpt
    1ebc:	20000014 	.long	0x20000014

Disassembly of section .text.WWDT_CNT_Load:

00001ec0 <WWDT_CNT_Load>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/ 
void WWDT_CNT_Load(U8_T cnt_data)
{
	WWDT->CR  |= cnt_data;						//SET
    1ec0:	1063      	lrw      	r3, 0x20000014	// 1ecc <WWDT_CNT_Load+0xc>
    1ec2:	9360      	ld.w      	r3, (r3, 0x0)
    1ec4:	9340      	ld.w      	r2, (r3, 0x0)
    1ec6:	6c08      	or      	r0, r2
    1ec8:	b300      	st.w      	r0, (r3, 0x0)
}
    1eca:	783c      	jmp      	r15
    1ecc:	20000014 	.long	0x20000014

Disassembly of section .text.WWDT_Int_Config:

00001ed0 <WWDT_Int_Config>:
//EntryParameter:NONE
//ReturnValue: NONE
/*************************************************************/
void WWDT_Int_Config(FunctionalStatus NewState)
{
	if (NewState != DISABLE)
    1ed0:	3840      	cmpnei      	r0, 0
    1ed2:	106a      	lrw      	r3, 0x20000014	// 1ef8 <WWDT_Int_Config+0x28>
    1ed4:	0c0b      	bf      	0x1eea	// 1eea <WWDT_Int_Config+0x1a>
	{
		WWDT->ICR = WWDT_EVI;				
    1ed6:	9360      	ld.w      	r3, (r3, 0x0)
    1ed8:	3101      	movi      	r1, 1
    1eda:	b325      	st.w      	r1, (r3, 0x14)
		WWDT->IMCR  |= WWDT_EVI;
    1edc:	9344      	ld.w      	r2, (r3, 0x10)
    1ede:	6c84      	or      	r2, r1
    1ee0:	b344      	st.w      	r2, (r3, 0x10)
		INTC_ISER_WRITE(WWDT_INT);  
    1ee2:	3240      	movi      	r2, 64
    1ee4:	1066      	lrw      	r3, 0xe000e100	// 1efc <WWDT_Int_Config+0x2c>
	}
	else
	{
		WWDT->IMCR  &= ~WWDT_EVI;					//CLR
		INTC_ICER_WRITE(WWDT_INT);  
    1ee6:	b340      	st.w      	r2, (r3, 0x0)
	}
    1ee8:	783c      	jmp      	r15
		WWDT->IMCR  &= ~WWDT_EVI;					//CLR
    1eea:	9340      	ld.w      	r2, (r3, 0x0)
    1eec:	9264      	ld.w      	r3, (r2, 0x10)
    1eee:	3b80      	bclri      	r3, 0
    1ef0:	b264      	st.w      	r3, (r2, 0x10)
		INTC_ICER_WRITE(WWDT_INT);  
    1ef2:	3240      	movi      	r2, 64
    1ef4:	1063      	lrw      	r3, 0xe000e180	// 1f00 <WWDT_Int_Config+0x30>
    1ef6:	07f8      	br      	0x1ee6	// 1ee6 <WWDT_Int_Config+0x16>
    1ef8:	20000014 	.long	0x20000014
    1efc:	e000e100 	.long	0xe000e100
    1f00:	e000e180 	.long	0xe000e180

Disassembly of section .text.BT_DeInit:

00001f04 <BT_DeInit>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/    
void BT_DeInit(CSP_BT_T *BTx)
{
	BTx->RSSR=BT_RESET_VALUE;
    1f04:	3300      	movi      	r3, 0
    1f06:	b060      	st.w      	r3, (r0, 0x0)
	BTx->CR=BT_RESET_VALUE;
    1f08:	b061      	st.w      	r3, (r0, 0x4)
	BTx->PSCR=BT_RESET_VALUE;
    1f0a:	b062      	st.w      	r3, (r0, 0x8)
	BTx->PRDR=BT_RESET_VALUE;
    1f0c:	b063      	st.w      	r3, (r0, 0xc)
	BTx->CMP=BT_RESET_VALUE;
    1f0e:	b064      	st.w      	r3, (r0, 0x10)
	BTx->CNT=BT_RESET_VALUE;
    1f10:	b065      	st.w      	r3, (r0, 0x14)
	BTx->EVTRG=BT_RESET_VALUE;
    1f12:	b066      	st.w      	r3, (r0, 0x18)
	BTx->EVSWF=BT_RESET_VALUE;
    1f14:	b069      	st.w      	r3, (r0, 0x24)
	BTx->RISR=BT_RESET_VALUE;
    1f16:	b06a      	st.w      	r3, (r0, 0x28)
	BTx->IMCR=BT_RESET_VALUE;
    1f18:	b06b      	st.w      	r3, (r0, 0x2c)
	BTx->MISR=BT_RESET_VALUE;
    1f1a:	b06c      	st.w      	r3, (r0, 0x30)
	BTx->ICR=BT_RESET_VALUE;
    1f1c:	b06d      	st.w      	r3, (r0, 0x34)
}
    1f1e:	783c      	jmp      	r15

Disassembly of section .text.BT_Start:

00001f20 <BT_Start>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/ 
void BT_Start(CSP_BT_T *BTx)
{
	BTx->RSSR |=0X01;
    1f20:	9060      	ld.w      	r3, (r0, 0x0)
    1f22:	3ba0      	bseti      	r3, 0
    1f24:	b060      	st.w      	r3, (r0, 0x0)
}
    1f26:	783c      	jmp      	r15

Disassembly of section .text.BT_Configure:

00001f28 <BT_Configure>:
//BT Configure
//EntryParameter:
//ReturnValue:NONE
/*************************************************************/
void BT_Configure(CSP_BT_T *BTx,BT_CLK_TypeDef BTCLK,U16_T PSCR_DATA,BT_SHDWSTP_TypeDef BTSHDWSTP,BT_OPM_TypeDef BTOPM,BT_EXTCKM_TypeDef BTEXTCKM)
{
    1f28:	14c3      	push      	r4-r6
    1f2a:	98a4      	ld.w      	r5, (r14, 0x10)
    1f2c:	6d97      	mov      	r6, r5
    1f2e:	9883      	ld.w      	r4, (r14, 0xc)
	BTx->CR |=BTCLK| BTSHDWSTP| BTOPM| BTEXTCKM;
    1f30:	6d18      	or      	r4, r6
    1f32:	6cd0      	or      	r3, r4
    1f34:	90a1      	ld.w      	r5, (r0, 0x4)
    1f36:	6c4c      	or      	r1, r3
    1f38:	6c54      	or      	r1, r5
    1f3a:	b021      	st.w      	r1, (r0, 0x4)
	BTx->PSCR = PSCR_DATA;
    1f3c:	b042      	st.w      	r2, (r0, 0x8)
}
    1f3e:	1483      	pop      	r4-r6

Disassembly of section .text.BT_ControlSet_Configure:

00001f40 <BT_ControlSet_Configure>:
//EntryParameter:
//ReturnValue:NONE
/*************************************************************/
void BT_ControlSet_Configure(CSP_BT_T *BTx,BT_STARTST_TypeDef BTSTART,BT_IDLEST_TypeDef BTIDLE,BT_SYNCEN_TypeDef BTSYNC,BT_SYNCMD_TypeDef BTSYNCMD,
							BT_OSTMDX_TypeDef BTOSTMD,BT_AREARM_TypeDef BTAREARM,BT_CNTRLD_TypeDef BTCNTRLD)
{
    1f40:	14c4      	push      	r4-r7
    1f42:	1421      	subi      	r14, r14, 4
    1f44:	9885      	ld.w      	r4, (r14, 0x14)
    1f46:	6dd3      	mov      	r7, r4
    1f48:	9886      	ld.w      	r4, (r14, 0x18)
    1f4a:	b880      	st.w      	r4, (r14, 0x0)
    1f4c:	9887      	ld.w      	r4, (r14, 0x1c)
    1f4e:	6d93      	mov      	r6, r4
    1f50:	98a8      	ld.w      	r5, (r14, 0x20)
	BTx->CR |=BTSTART| BTIDLE| BTSYNC| BTSYNCMD| BTOSTMD| BTAREARM| BTCNTRLD;
    1f52:	6d58      	or      	r5, r6
    1f54:	98c0      	ld.w      	r6, (r14, 0x0)
    1f56:	6d58      	or      	r5, r6
    1f58:	6d5c      	or      	r5, r7
    1f5a:	6cd4      	or      	r3, r5
    1f5c:	6c8c      	or      	r2, r3
    1f5e:	9081      	ld.w      	r4, (r0, 0x4)
    1f60:	6c48      	or      	r1, r2
    1f62:	6d04      	or      	r4, r1
    1f64:	6d9f      	mov      	r6, r7
    1f66:	b081      	st.w      	r4, (r0, 0x4)
}
    1f68:	1401      	addi      	r14, r14, 4
    1f6a:	1484      	pop      	r4-r7

Disassembly of section .text.BT_Period_CMP_Write:

00001f6c <BT_Period_CMP_Write>:
//ReturnValue:NONE
/*************************************************************/
void BT_Period_CMP_Write(CSP_BT_T *BTx,U16_T BTPRDR_DATA,U16_T BTCMP_DATA)
{
	//BTx->CR|=0X01<<2;
	BTx->PRDR =BTPRDR_DATA;
    1f6c:	b023      	st.w      	r1, (r0, 0xc)
	BTx->CMP =BTCMP_DATA;
    1f6e:	b044      	st.w      	r2, (r0, 0x10)
}
    1f70:	783c      	jmp      	r15

Disassembly of section .text.BT_ConfigInterrupt_CMD:

00001f72 <BT_ConfigInterrupt_CMD>:
//NewState:ENABLE,DISABLE
//ReturnValue:NONE
/*************************************************************/ 
void BT_ConfigInterrupt_CMD(CSP_BT_T *BTx,FunctionalStatus NewState,BT_IMSCR_TypeDef BT_IMSCR_X)
{
	if (NewState != DISABLE)
    1f72:	3940      	cmpnei      	r1, 0
	{
		BTx->IMCR  |= BT_IMSCR_X;						
    1f74:	906b      	ld.w      	r3, (r0, 0x2c)
	if (NewState != DISABLE)
    1f76:	0c04      	bf      	0x1f7e	// 1f7e <BT_ConfigInterrupt_CMD+0xc>
		BTx->IMCR  |= BT_IMSCR_X;						
    1f78:	6c8c      	or      	r2, r3
    1f7a:	b04b      	st.w      	r2, (r0, 0x2c)
	}
	else
	{
		BTx->IMCR  &= ~BT_IMSCR_X;					
	}
}
    1f7c:	783c      	jmp      	r15
		BTx->IMCR  &= ~BT_IMSCR_X;					
    1f7e:	68c9      	andn      	r3, r2
    1f80:	b06b      	st.w      	r3, (r0, 0x2c)
}
    1f82:	07fd      	br      	0x1f7c	// 1f7c <BT_ConfigInterrupt_CMD+0xa>

Disassembly of section .text.BT0_INT_ENABLE:

00001f84 <BT0_INT_ENABLE>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void BT0_INT_ENABLE(void)
{
	INTC_ISER_WRITE(BT0_INT);
    1f84:	3380      	movi      	r3, 128
    1f86:	4375      	lsli      	r3, r3, 21
    1f88:	1042      	lrw      	r2, 0xe000e100	// 1f90 <BT0_INT_ENABLE+0xc>
    1f8a:	b260      	st.w      	r3, (r2, 0x0)
}
    1f8c:	783c      	jmp      	r15
    1f8e:	0000      	bkpt
    1f90:	e000e100 	.long	0xe000e100

Disassembly of section .text.BT1_INT_ENABLE:

00001f94 <BT1_INT_ENABLE>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void BT1_INT_ENABLE(void)
{
	INTC_ISER_WRITE(BT1_INT);
    1f94:	3380      	movi      	r3, 128
    1f96:	4376      	lsli      	r3, r3, 22
    1f98:	1042      	lrw      	r2, 0xe000e100	// 1fa0 <BT1_INT_ENABLE+0xc>
    1f9a:	b260      	st.w      	r3, (r2, 0x0)
}
    1f9c:	783c      	jmp      	r15
    1f9e:	0000      	bkpt
    1fa0:	e000e100 	.long	0xe000e100

Disassembly of section .text.UART0_DeInit:

00001fa4 <UART0_DeInit>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART0_DeInit(void)
{
    UART0->DATA = UART_RESET_VALUE;
    1fa4:	1065      	lrw      	r3, 0x20000044	// 1fb8 <UART0_DeInit+0x14>
    1fa6:	3200      	movi      	r2, 0
    1fa8:	9360      	ld.w      	r3, (r3, 0x0)
    1faa:	b340      	st.w      	r2, (r3, 0x0)
    UART0->SR   = UART_RESET_VALUE;
    1fac:	b341      	st.w      	r2, (r3, 0x4)
    UART0->CTRL = UART_RESET_VALUE;
    1fae:	b342      	st.w      	r2, (r3, 0x8)
    UART0->ISR  = UART_RESET_VALUE;
    1fb0:	b343      	st.w      	r2, (r3, 0xc)
    UART0->BRDIV =UART_RESET_VALUE;
    1fb2:	b344      	st.w      	r2, (r3, 0x10)
}
    1fb4:	783c      	jmp      	r15
    1fb6:	0000      	bkpt
    1fb8:	20000044 	.long	0x20000044

Disassembly of section .text.UART_IO_Init:

00001fbc <UART_IO_Init>:
//UART_IO_G:0 1
//ReturnValue:NONE
/*************************************************************/
void UART_IO_Init(UART_NUM_TypeDef IO_UART_NUM , U8_T UART_IO_G)
{
    if (IO_UART_NUM==IO_UART0)
    1fbc:	3840      	cmpnei      	r0, 0
    1fbe:	0819      	bt      	0x1ff0	// 1ff0 <UART_IO_Init+0x34>
    {
		if(UART_IO_G==0)
    1fc0:	3940      	cmpnei      	r1, 0
    1fc2:	080a      	bt      	0x1fd6	// 1fd6 <UART_IO_Init+0x1a>
		{
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFF00)  | 0x00000044;       //PA0.1->RXD0, PA0.0->TXD0
    1fc4:	1172      	lrw      	r3, 0x20000050	// 208c <UART_IO_Init+0xd0>
    1fc6:	31ff      	movi      	r1, 255
    1fc8:	9340      	ld.w      	r2, (r3, 0x0)
    1fca:	9260      	ld.w      	r3, (r2, 0x0)
    1fcc:	68c5      	andn      	r3, r1
    1fce:	3ba2      	bseti      	r3, 2
    1fd0:	3ba6      	bseti      	r3, 6
    }
	 if (IO_UART_NUM==IO_UART2)
    {
        if(UART_IO_G==0)
		{
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFF00)  | 0x00000077;       //PA0.0->RXD2, PA0.1->TXD2
    1fd2:	b260      	st.w      	r3, (r2, 0x0)
    1fd4:	040d      	br      	0x1fee	// 1fee <UART_IO_Init+0x32>
		else if(UART_IO_G==1)
    1fd6:	3941      	cmpnei      	r1, 1
    1fd8:	080b      	bt      	0x1fee	// 1fee <UART_IO_Init+0x32>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFF0FFFF)  | 0x00070000;      
    1fda:	116d      	lrw      	r3, 0x20000050	// 208c <UART_IO_Init+0xd0>
    1fdc:	32f0      	movi      	r2, 240
    1fde:	9320      	ld.w      	r1, (r3, 0x0)
    1fe0:	424c      	lsli      	r2, r2, 12
    1fe2:	9161      	ld.w      	r3, (r1, 0x4)
    1fe4:	68c9      	andn      	r3, r2
    1fe6:	32e0      	movi      	r2, 224
    1fe8:	424b      	lsli      	r2, r2, 11
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)  | 0x00700000;       
    1fea:	6cc8      	or      	r3, r2
    1fec:	b161      	st.w      	r3, (r1, 0x4)
		else if(UART_IO_G==2)
		{
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFF00FFFF) | 0X00660000;        //PB0.5->RXD2, PB0.4->TXD2
		}
    }
}
    1fee:	783c      	jmp      	r15
     if (IO_UART_NUM==IO_UART1)
    1ff0:	3841      	cmpnei      	r0, 1
    1ff2:	082b      	bt      	0x2048	// 2048 <UART_IO_Init+0x8c>
        if(UART_IO_G==0)
    1ff4:	3940      	cmpnei      	r1, 0
    1ff6:	0812      	bt      	0x201a	// 201a <UART_IO_Init+0x5e>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFF0)  | 0x00000007;       //PA0.13->RXD1, PB0.0->TXD1
    1ff8:	1166      	lrw      	r3, 0x2000004c	// 2090 <UART_IO_Init+0xd4>
    1ffa:	310f      	movi      	r1, 15
    1ffc:	9340      	ld.w      	r2, (r3, 0x0)
    1ffe:	9260      	ld.w      	r3, (r2, 0x0)
    2000:	68c5      	andn      	r3, r1
    2002:	3107      	movi      	r1, 7
    2004:	6cc4      	or      	r3, r1
    2006:	b260      	st.w      	r3, (r2, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)  | 0x00700000;       
    2008:	32f0      	movi      	r2, 240
    200a:	1161      	lrw      	r3, 0x20000050	// 208c <UART_IO_Init+0xd0>
    200c:	4250      	lsli      	r2, r2, 16
    200e:	9320      	ld.w      	r1, (r3, 0x0)
    2010:	9161      	ld.w      	r3, (r1, 0x4)
    2012:	68c9      	andn      	r3, r2
    2014:	32e0      	movi      	r2, 224
    2016:	424f      	lsli      	r2, r2, 15
    2018:	07e9      	br      	0x1fea	// 1fea <UART_IO_Init+0x2e>
		else if(UART_IO_G==1)
    201a:	3941      	cmpnei      	r1, 1
    201c:	080c      	bt      	0x2034	// 2034 <UART_IO_Init+0x78>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFF00FFF) | 0X00077000;        //PA0.4->RXD1, PA0.3->TXD1
    201e:	107c      	lrw      	r3, 0x20000050	// 208c <UART_IO_Init+0xd0>
    2020:	32ff      	movi      	r2, 255
    2022:	9320      	ld.w      	r1, (r3, 0x0)
    2024:	424c      	lsli      	r2, r2, 12
    2026:	9160      	ld.w      	r3, (r1, 0x0)
    2028:	68c9      	andn      	r3, r2
    202a:	32ee      	movi      	r2, 238
    202c:	424b      	lsli      	r2, r2, 11
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFF00FFFF) | 0X00660000;        //PB0.5->RXD2, PB0.4->TXD2
    202e:	6cc8      	or      	r3, r2
    2030:	b160      	st.w      	r3, (r1, 0x0)
}
    2032:	07de      	br      	0x1fee	// 1fee <UART_IO_Init+0x32>
		else if(UART_IO_G==2)
    2034:	3942      	cmpnei      	r1, 2
    2036:	0bdc      	bt      	0x1fee	// 1fee <UART_IO_Init+0x32>
			GPIOA0->CONHR = (GPIOA0->CONHR&0X00FFFFFF) | 0X77000000;        //PA0.15->RXD1, PA0.14->TXD1
    2038:	1075      	lrw      	r3, 0x20000050	// 208c <UART_IO_Init+0xd0>
    203a:	32ee      	movi      	r2, 238
    203c:	9320      	ld.w      	r1, (r3, 0x0)
    203e:	9161      	ld.w      	r3, (r1, 0x4)
    2040:	4368      	lsli      	r3, r3, 8
    2042:	4b68      	lsri      	r3, r3, 8
    2044:	4257      	lsli      	r2, r2, 23
    2046:	07d2      	br      	0x1fea	// 1fea <UART_IO_Init+0x2e>
	 if (IO_UART_NUM==IO_UART2)
    2048:	3842      	cmpnei      	r0, 2
    204a:	0bd2      	bt      	0x1fee	// 1fee <UART_IO_Init+0x32>
        if(UART_IO_G==0)
    204c:	3940      	cmpnei      	r1, 0
    204e:	0809      	bt      	0x2060	// 2060 <UART_IO_Init+0xa4>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFF00)  | 0x00000077;       //PA0.0->RXD2, PA0.1->TXD2
    2050:	106f      	lrw      	r3, 0x20000050	// 208c <UART_IO_Init+0xd0>
    2052:	31ff      	movi      	r1, 255
    2054:	9340      	ld.w      	r2, (r3, 0x0)
    2056:	9260      	ld.w      	r3, (r2, 0x0)
    2058:	68c5      	andn      	r3, r1
    205a:	3177      	movi      	r1, 119
    205c:	6cc4      	or      	r3, r1
    205e:	07ba      	br      	0x1fd2	// 1fd2 <UART_IO_Init+0x16>
		else if(UART_IO_G==1)
    2060:	3941      	cmpnei      	r1, 1
    2062:	0809      	bt      	0x2074	// 2074 <UART_IO_Init+0xb8>
			GPIOA0->CONLR = (GPIOA0->CONLR&0X00FFFFFF) | 0X77000000;        //PA0.7->RXD2, PA0.6->TXD2
    2064:	106a      	lrw      	r3, 0x20000050	// 208c <UART_IO_Init+0xd0>
    2066:	32ee      	movi      	r2, 238
    2068:	9320      	ld.w      	r1, (r3, 0x0)
    206a:	9160      	ld.w      	r3, (r1, 0x0)
    206c:	4368      	lsli      	r3, r3, 8
    206e:	4b68      	lsri      	r3, r3, 8
    2070:	4257      	lsli      	r2, r2, 23
    2072:	07de      	br      	0x202e	// 202e <UART_IO_Init+0x72>
		else if(UART_IO_G==2)
    2074:	3942      	cmpnei      	r1, 2
    2076:	0bbc      	bt      	0x1fee	// 1fee <UART_IO_Init+0x32>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFF00FFFF) | 0X00660000;        //PB0.5->RXD2, PB0.4->TXD2
    2078:	1066      	lrw      	r3, 0x2000004c	// 2090 <UART_IO_Init+0xd4>
    207a:	32ff      	movi      	r2, 255
    207c:	9320      	ld.w      	r1, (r3, 0x0)
    207e:	4250      	lsli      	r2, r2, 16
    2080:	9160      	ld.w      	r3, (r1, 0x0)
    2082:	68c9      	andn      	r3, r2
    2084:	32cc      	movi      	r2, 204
    2086:	424f      	lsli      	r2, r2, 15
    2088:	07d3      	br      	0x202e	// 202e <UART_IO_Init+0x72>
    208a:	0000      	bkpt
    208c:	20000050 	.long	0x20000050
    2090:	2000004c 	.long	0x2000004c

Disassembly of section .text.UARTInit:

00002094 <UARTInit>:
//ReturnValue:NONE
/*************************************************************/
void UARTInit(CSP_UART_T *uart,U16_T baudrate_u16,UART_PAR_TypeDef PAR_DAT)
{
   // Set Transmitter Enable
   CSP_UART_SET_CTRL(uart, UART_TX | UART_RX |PAR_DAT);
    2094:	3aa0      	bseti      	r2, 0
    2096:	3aa1      	bseti      	r2, 1
    2098:	b042      	st.w      	r2, (r0, 0x8)
   // Set Baudrate
   CSP_UART_SET_BRDIV(uart, baudrate_u16);
    209a:	b024      	st.w      	r1, (r0, 0x10)
}
    209c:	783c      	jmp      	r15

Disassembly of section .text.UARTTxByte:

0000209e <UARTTxByte>:
/*************************************************************/
void UARTTxByte(CSP_UART_T *uart,U8_T txdata_u8)
{
	unsigned int  DataI;
	// Write the transmit buffer
	CSP_UART_SET_DATA(uart,txdata_u8);
    209e:	b020      	st.w      	r1, (r0, 0x0)
	do
	{
		DataI = CSP_UART_GET_SR(uart);
		DataI = DataI & UART_TX_FULL;
    20a0:	3201      	movi      	r2, 1
		DataI = CSP_UART_GET_SR(uart);
    20a2:	9061      	ld.w      	r3, (r0, 0x4)
		DataI = DataI & UART_TX_FULL;
    20a4:	68c8      	and      	r3, r2
	}
	while(DataI == UART_TX_FULL);    //Loop  when tx is full
    20a6:	3b40      	cmpnei      	r3, 0
    20a8:	0bfd      	bt      	0x20a2	// 20a2 <UARTTxByte+0x4>
}
    20aa:	783c      	jmp      	r15

Disassembly of section .text.EPT_Software_Prg:

000020ac <EPT_Software_Prg>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/    
void EPT_Software_Prg(void)
{
	EPT0->CEDR|=0X01;
    20ac:	1067      	lrw      	r3, 0x20000024	// 20c8 <EPT_Software_Prg+0x1c>
	EPT0->RSSR=(EPT0->RSSR&0XFFFF0FFF)|(0X05<<12);
    20ae:	31f0      	movi      	r1, 240
	EPT0->CEDR|=0X01;
    20b0:	9340      	ld.w      	r2, (r3, 0x0)
    20b2:	9260      	ld.w      	r3, (r2, 0x0)
    20b4:	3ba0      	bseti      	r3, 0
    20b6:	b260      	st.w      	r3, (r2, 0x0)
	EPT0->RSSR=(EPT0->RSSR&0XFFFF0FFF)|(0X05<<12);
    20b8:	9261      	ld.w      	r3, (r2, 0x4)
    20ba:	4128      	lsli      	r1, r1, 8
    20bc:	68c5      	andn      	r3, r1
    20be:	3bac      	bseti      	r3, 12
    20c0:	3bae      	bseti      	r3, 14
    20c2:	b261      	st.w      	r3, (r2, 0x4)
}
    20c4:	783c      	jmp      	r15
    20c6:	0000      	bkpt
    20c8:	20000024 	.long	0x20000024

Disassembly of section .text.EPT_Start:

000020cc <EPT_Start>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/   
void EPT_Start(void)
{
	EPT0->REGPROT = (0xA55A<<16) | 0xC73A;
    20cc:	1068      	lrw      	r3, 0x20000024	// 20ec <EPT_Start+0x20>
    20ce:	3280      	movi      	r2, 128
    20d0:	9360      	ld.w      	r3, (r3, 0x0)
    20d2:	608c      	addu      	r2, r3
    20d4:	1027      	lrw      	r1, 0xa55ac73a	// 20f0 <EPT_Start+0x24>
    20d6:	b23a      	st.w      	r1, (r2, 0x68)
	EPT0->RSSR|=0X01;
    20d8:	9341      	ld.w      	r2, (r3, 0x4)
    20da:	3aa0      	bseti      	r2, 0
    20dc:	b341      	st.w      	r2, (r3, 0x4)
	while(!(EPT0->RSSR&0x01));
    20de:	3101      	movi      	r1, 1
    20e0:	9341      	ld.w      	r2, (r3, 0x4)
    20e2:	6884      	and      	r2, r1
    20e4:	3a40      	cmpnei      	r2, 0
    20e6:	0ffd      	bf      	0x20e0	// 20e0 <EPT_Start+0x14>
} 
    20e8:	783c      	jmp      	r15
    20ea:	0000      	bkpt
    20ec:	20000024 	.long	0x20000024
    20f0:	a55ac73a 	.long	0xa55ac73a

Disassembly of section .text.EPT_IO_SET:

000020f4 <EPT_IO_SET>:
//EPT_IO_X:EPT_IO_CHAX,EPT_IO_CHAY,EPT_IO_CHBX,EPT_IO_CHBY,EPT_IO_CHCX,EPT_IO_CHCX,EPT_IO_CHD,EPT_IO_EPI
//ReturnValue:NONE
/*************************************************************/    
void EPT_IO_SET(EPT_IO_Mode_Type EPT_IO_X , EPT_IO_NUM_Type IO_Num_X)
{
	if(EPT_IO_X==EPT_IO_CHAX)
    20f4:	3840      	cmpnei      	r0, 0
    20f6:	0822      	bt      	0x213a	// 213a <EPT_IO_SET+0x46>
	{
		if(IO_Num_X==IO_NUM_PA07)
    20f8:	3950      	cmpnei      	r1, 16
    20fa:	080a      	bt      	0x210e	// 210e <EPT_IO_SET+0x1a>
		{
			GPIOA0->CONLR = (GPIOA0->CONLR&0X0FFFFFFF)|0X60000000;				//PA0.7
    20fc:	0375      	lrw      	r3, 0x20000050	// 2324 <EPT_IO_SET+0x230>
    20fe:	9340      	ld.w      	r2, (r3, 0x0)
    2100:	9260      	ld.w      	r3, (r2, 0x0)
    2102:	4364      	lsli      	r3, r3, 4
    2104:	4b64      	lsri      	r3, r3, 4
    2106:	3bbd      	bseti      	r3, 29
    2108:	3bbe      	bseti      	r3, 30
		{
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFF0FFF)|0X00004000;				//PB0.3
		}
		else if(IO_Num_X==IO_NUM_PB00)
		{
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFF0)|0X00000005;				//PB0.0
    210a:	b260      	st.w      	r3, (r2, 0x0)
		else if(IO_Num_X==IO_NUM_PB02)
		{
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFF0FF)|0X00000700;				//PB0.2 EPI3
		}
	}
}
    210c:	783c      	jmp      	r15
		else if(IO_Num_X==IO_NUM_PA10)
    210e:	3951      	cmpnei      	r1, 17
    2110:	080b      	bt      	0x2126	// 2126 <EPT_IO_SET+0x32>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFF0FF)|0X00000500;				//PA0.10
    2112:	037a      	lrw      	r3, 0x20000050	// 2324 <EPT_IO_SET+0x230>
    2114:	32f0      	movi      	r2, 240
    2116:	9320      	ld.w      	r1, (r3, 0x0)
    2118:	9161      	ld.w      	r3, (r1, 0x4)
    211a:	4244      	lsli      	r2, r2, 4
    211c:	68c9      	andn      	r3, r2
    211e:	3ba8      	bseti      	r3, 8
    2120:	3baa      	bseti      	r3, 10
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)|0X00400000;				//PA0.13 EPI1
    2122:	b161      	st.w      	r3, (r1, 0x4)
    2124:	07f4      	br      	0x210c	// 210c <EPT_IO_SET+0x18>
		else if(IO_Num_X==IO_NUM_PA15)
    2126:	3952      	cmpnei      	r1, 18
    2128:	0bf2      	bt      	0x210c	// 210c <EPT_IO_SET+0x18>
			GPIOA0->CONHR = (GPIOA0->CONHR&0X0FFFFFFF)|0X40000000;				//PA0.15
    212a:	137f      	lrw      	r3, 0x20000050	// 2324 <EPT_IO_SET+0x230>
    212c:	9340      	ld.w      	r2, (r3, 0x0)
    212e:	9261      	ld.w      	r3, (r2, 0x4)
    2130:	4364      	lsli      	r3, r3, 4
    2132:	4b64      	lsri      	r3, r3, 4
    2134:	3bbe      	bseti      	r3, 30
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFF0)|0X00000004;				//PA0.8
    2136:	b261      	st.w      	r3, (r2, 0x4)
    2138:	07ea      	br      	0x210c	// 210c <EPT_IO_SET+0x18>
	else if(EPT_IO_X==EPT_IO_CHAY)
    213a:	3841      	cmpnei      	r0, 1
    213c:	0823      	bt      	0x2182	// 2182 <EPT_IO_SET+0x8e>
		if(IO_Num_X==IO_NUM_PB03)
    213e:	3953      	cmpnei      	r1, 19
    2140:	080a      	bt      	0x2154	// 2154 <EPT_IO_SET+0x60>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFF0FFF)|0X00005000;				//PB0.3
    2142:	137a      	lrw      	r3, 0x2000004c	// 2328 <EPT_IO_SET+0x234>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)|0X00005000;				//PA0.3
    2144:	9320      	ld.w      	r1, (r3, 0x0)
    2146:	32f0      	movi      	r2, 240
    2148:	9160      	ld.w      	r3, (r1, 0x0)
    214a:	4248      	lsli      	r2, r2, 8
    214c:	68c9      	andn      	r3, r2
    214e:	3bac      	bseti      	r3, 12
    2150:	3bae      	bseti      	r3, 14
    2152:	040b      	br      	0x2168	// 2168 <EPT_IO_SET+0x74>
		else if(IO_Num_X==IO_NUM_PB05)
    2154:	3954      	cmpnei      	r1, 20
    2156:	080b      	bt      	0x216c	// 216c <EPT_IO_SET+0x78>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFF0FFFFF)|0X00500000;				//PB0.5
    2158:	1374      	lrw      	r3, 0x2000004c	// 2328 <EPT_IO_SET+0x234>
    215a:	32f0      	movi      	r2, 240
    215c:	9320      	ld.w      	r1, (r3, 0x0)
    215e:	9160      	ld.w      	r3, (r1, 0x0)
    2160:	4250      	lsli      	r2, r2, 16
    2162:	68c9      	andn      	r3, r2
    2164:	3bb4      	bseti      	r3, 20
    2166:	3bb6      	bseti      	r3, 22
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFF0FF)|0X00000700;				//PB0.2 EPI3
    2168:	b160      	st.w      	r3, (r1, 0x0)
}
    216a:	07d1      	br      	0x210c	// 210c <EPT_IO_SET+0x18>
		else if(IO_Num_X==IO_NUM_PA12)
    216c:	3955      	cmpnei      	r1, 21
    216e:	0bcf      	bt      	0x210c	// 210c <EPT_IO_SET+0x18>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFF0FFFF)|0X00050000;				//PA0.12
    2170:	136d      	lrw      	r3, 0x20000050	// 2324 <EPT_IO_SET+0x230>
    2172:	32f0      	movi      	r2, 240
    2174:	9320      	ld.w      	r1, (r3, 0x0)
    2176:	9161      	ld.w      	r3, (r1, 0x4)
    2178:	424c      	lsli      	r2, r2, 12
    217a:	68c9      	andn      	r3, r2
    217c:	3bb0      	bseti      	r3, 16
    217e:	3bb2      	bseti      	r3, 18
    2180:	07d1      	br      	0x2122	// 2122 <EPT_IO_SET+0x2e>
	else if(EPT_IO_X==EPT_IO_CHBX)
    2182:	3842      	cmpnei      	r0, 2
    2184:	0821      	bt      	0x21c6	// 21c6 <EPT_IO_SET+0xd2>
		if(IO_Num_X==IO_NUM_PB02)
    2186:	3956      	cmpnei      	r1, 22
    2188:	080a      	bt      	0x219c	// 219c <EPT_IO_SET+0xa8>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFF0FF)|0X00000600;				//PB0.2
    218a:	1368      	lrw      	r3, 0x2000004c	// 2328 <EPT_IO_SET+0x234>
    218c:	32f0      	movi      	r2, 240
    218e:	9320      	ld.w      	r1, (r3, 0x0)
    2190:	9160      	ld.w      	r3, (r1, 0x0)
    2192:	4244      	lsli      	r2, r2, 4
    2194:	68c9      	andn      	r3, r2
    2196:	3ba9      	bseti      	r3, 9
    2198:	3baa      	bseti      	r3, 10
    219a:	07e7      	br      	0x2168	// 2168 <EPT_IO_SET+0x74>
		else if(IO_Num_X==IO_NUM_PA11)
    219c:	3957      	cmpnei      	r1, 23
    219e:	080a      	bt      	0x21b2	// 21b2 <EPT_IO_SET+0xbe>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFF0FFF)|0X00005000;				//PA0.11
    21a0:	1361      	lrw      	r3, 0x20000050	// 2324 <EPT_IO_SET+0x230>
    21a2:	32f0      	movi      	r2, 240
    21a4:	9320      	ld.w      	r1, (r3, 0x0)
    21a6:	9161      	ld.w      	r3, (r1, 0x4)
    21a8:	4248      	lsli      	r2, r2, 8
    21aa:	68c9      	andn      	r3, r2
    21ac:	3bac      	bseti      	r3, 12
    21ae:	3bae      	bseti      	r3, 14
    21b0:	07b9      	br      	0x2122	// 2122 <EPT_IO_SET+0x2e>
		else if(IO_Num_X==IO_NUM_PA14)
    21b2:	3958      	cmpnei      	r1, 24
    21b4:	0bac      	bt      	0x210c	// 210c <EPT_IO_SET+0x18>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XF0FFFFFF)|0X04000000;				//PA0.14
    21b6:	127c      	lrw      	r3, 0x20000050	// 2324 <EPT_IO_SET+0x230>
    21b8:	32f0      	movi      	r2, 240
    21ba:	9320      	ld.w      	r1, (r3, 0x0)
    21bc:	9161      	ld.w      	r3, (r1, 0x4)
    21be:	4254      	lsli      	r2, r2, 20
    21c0:	68c9      	andn      	r3, r2
    21c2:	3bba      	bseti      	r3, 26
    21c4:	07af      	br      	0x2122	// 2122 <EPT_IO_SET+0x2e>
	else if(EPT_IO_X==EPT_IO_CHBY)
    21c6:	3843      	cmpnei      	r0, 3
    21c8:	0820      	bt      	0x2208	// 2208 <EPT_IO_SET+0x114>
		if(IO_Num_X==IO_NUM_PB04)
    21ca:	3959      	cmpnei      	r1, 25
    21cc:	080a      	bt      	0x21e0	// 21e0 <EPT_IO_SET+0xec>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFF0FFFF)|0X00050000;				//PB0.4
    21ce:	1277      	lrw      	r3, 0x2000004c	// 2328 <EPT_IO_SET+0x234>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFF0FFFF)|0X00050000;				//PA0.4
    21d0:	9320      	ld.w      	r1, (r3, 0x0)
    21d2:	32f0      	movi      	r2, 240
    21d4:	9160      	ld.w      	r3, (r1, 0x0)
    21d6:	424c      	lsli      	r2, r2, 12
    21d8:	68c9      	andn      	r3, r2
    21da:	3bb0      	bseti      	r3, 16
    21dc:	3bb2      	bseti      	r3, 18
    21de:	07c5      	br      	0x2168	// 2168 <EPT_IO_SET+0x74>
		else if(IO_Num_X==IO_NUM_PA05)
    21e0:	395a      	cmpnei      	r1, 26
    21e2:	0809      	bt      	0x21f4	// 21f4 <EPT_IO_SET+0x100>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFF0FFFFF)|0X00800000;				//PA0.5
    21e4:	1270      	lrw      	r3, 0x20000050	// 2324 <EPT_IO_SET+0x230>
    21e6:	32f0      	movi      	r2, 240
    21e8:	9320      	ld.w      	r1, (r3, 0x0)
    21ea:	9160      	ld.w      	r3, (r1, 0x0)
    21ec:	4250      	lsli      	r2, r2, 16
    21ee:	68c9      	andn      	r3, r2
    21f0:	3bb7      	bseti      	r3, 23
    21f2:	07bb      	br      	0x2168	// 2168 <EPT_IO_SET+0x74>
		else if(IO_Num_X==IO_NUM_PA08)
    21f4:	395b      	cmpnei      	r1, 27
    21f6:	0b8b      	bt      	0x210c	// 210c <EPT_IO_SET+0x18>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFF0)|0X00000005;				//PA0.8
    21f8:	126b      	lrw      	r3, 0x20000050	// 2324 <EPT_IO_SET+0x230>
    21fa:	310f      	movi      	r1, 15
    21fc:	9340      	ld.w      	r2, (r3, 0x0)
    21fe:	9261      	ld.w      	r3, (r2, 0x4)
    2200:	68c5      	andn      	r3, r1
    2202:	3ba0      	bseti      	r3, 0
    2204:	3ba2      	bseti      	r3, 2
    2206:	0798      	br      	0x2136	// 2136 <EPT_IO_SET+0x42>
	else if(EPT_IO_X==EPT_IO_CHCX)
    2208:	3844      	cmpnei      	r0, 4
    220a:	0823      	bt      	0x2250	// 2250 <EPT_IO_SET+0x15c>
		if(IO_Num_X==IO_NUM_PB05)
    220c:	3954      	cmpnei      	r1, 20
    220e:	0809      	bt      	0x2220	// 2220 <EPT_IO_SET+0x12c>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFF0FFFFF)|0X00400000;				//PB0.5
    2210:	1266      	lrw      	r3, 0x2000004c	// 2328 <EPT_IO_SET+0x234>
    2212:	32f0      	movi      	r2, 240
    2214:	9320      	ld.w      	r1, (r3, 0x0)
    2216:	9160      	ld.w      	r3, (r1, 0x0)
    2218:	4250      	lsli      	r2, r2, 16
    221a:	68c9      	andn      	r3, r2
    221c:	3bb6      	bseti      	r3, 22
    221e:	07a5      	br      	0x2168	// 2168 <EPT_IO_SET+0x74>
		else if(IO_Num_X==IO_NUM_PA03)
    2220:	395c      	cmpnei      	r1, 28
    2222:	0803      	bt      	0x2228	// 2228 <EPT_IO_SET+0x134>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)|0X00005000;				//PA0.3
    2224:	1260      	lrw      	r3, 0x20000050	// 2324 <EPT_IO_SET+0x230>
    2226:	078f      	br      	0x2144	// 2144 <EPT_IO_SET+0x50>
		else if(IO_Num_X==IO_NUM_PB03)
    2228:	3953      	cmpnei      	r1, 19
    222a:	0809      	bt      	0x223c	// 223c <EPT_IO_SET+0x148>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFF0FFF)|0X00004000;				//PB0.3
    222c:	117f      	lrw      	r3, 0x2000004c	// 2328 <EPT_IO_SET+0x234>
    222e:	32f0      	movi      	r2, 240
    2230:	9320      	ld.w      	r1, (r3, 0x0)
    2232:	9160      	ld.w      	r3, (r1, 0x0)
    2234:	4248      	lsli      	r2, r2, 8
    2236:	68c9      	andn      	r3, r2
    2238:	3bae      	bseti      	r3, 14
    223a:	0797      	br      	0x2168	// 2168 <EPT_IO_SET+0x74>
		else if(IO_Num_X==IO_NUM_PB00)
    223c:	395d      	cmpnei      	r1, 29
    223e:	0b67      	bt      	0x210c	// 210c <EPT_IO_SET+0x18>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFF0)|0X00000005;				//PB0.0
    2240:	117a      	lrw      	r3, 0x2000004c	// 2328 <EPT_IO_SET+0x234>
    2242:	310f      	movi      	r1, 15
    2244:	9340      	ld.w      	r2, (r3, 0x0)
    2246:	9260      	ld.w      	r3, (r2, 0x0)
    2248:	68c5      	andn      	r3, r1
    224a:	3ba0      	bseti      	r3, 0
    224c:	3ba2      	bseti      	r3, 2
    224e:	075e      	br      	0x210a	// 210a <EPT_IO_SET+0x16>
	else if(EPT_IO_X==EPT_IO_CHCY)
    2250:	3845      	cmpnei      	r0, 5
    2252:	0825      	bt      	0x229c	// 229c <EPT_IO_SET+0x1a8>
		if(IO_Num_X==IO_NUM_PB04)
    2254:	3959      	cmpnei      	r1, 25
    2256:	0809      	bt      	0x2268	// 2268 <EPT_IO_SET+0x174>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFF0FFFF)|0X00040000;				//PB0.4
    2258:	1174      	lrw      	r3, 0x2000004c	// 2328 <EPT_IO_SET+0x234>
    225a:	32f0      	movi      	r2, 240
    225c:	9320      	ld.w      	r1, (r3, 0x0)
    225e:	9160      	ld.w      	r3, (r1, 0x0)
    2260:	424c      	lsli      	r2, r2, 12
    2262:	68c9      	andn      	r3, r2
    2264:	3bb2      	bseti      	r3, 18
    2266:	0781      	br      	0x2168	// 2168 <EPT_IO_SET+0x74>
		else if(IO_Num_X==IO_NUM_PA04)
    2268:	395e      	cmpnei      	r1, 30
    226a:	0803      	bt      	0x2270	// 2270 <EPT_IO_SET+0x17c>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFF0FFFF)|0X00050000;				//PA0.4
    226c:	116e      	lrw      	r3, 0x20000050	// 2324 <EPT_IO_SET+0x230>
    226e:	07b1      	br      	0x21d0	// 21d0 <EPT_IO_SET+0xdc>
		else if(IO_Num_X==IO_NUM_PA09)
    2270:	395f      	cmpnei      	r1, 31
    2272:	0809      	bt      	0x2284	// 2284 <EPT_IO_SET+0x190>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFF0F)|0X00000070;				//PA0.9
    2274:	116c      	lrw      	r3, 0x20000050	// 2324 <EPT_IO_SET+0x230>
    2276:	31f0      	movi      	r1, 240
    2278:	9340      	ld.w      	r2, (r3, 0x0)
    227a:	9261      	ld.w      	r3, (r2, 0x4)
    227c:	68c5      	andn      	r3, r1
    227e:	3170      	movi      	r1, 112
    2280:	6cc4      	or      	r3, r1
    2282:	075a      	br      	0x2136	// 2136 <EPT_IO_SET+0x42>
		else if(IO_Num_X==IO_NUM_PA013)
    2284:	3320      	movi      	r3, 32
    2286:	64c6      	cmpne      	r1, r3
    2288:	0b42      	bt      	0x210c	// 210c <EPT_IO_SET+0x18>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)|0X00500000;				//PA0.13
    228a:	1167      	lrw      	r3, 0x20000050	// 2324 <EPT_IO_SET+0x230>
    228c:	32f0      	movi      	r2, 240
    228e:	9320      	ld.w      	r1, (r3, 0x0)
    2290:	9161      	ld.w      	r3, (r1, 0x4)
    2292:	4250      	lsli      	r2, r2, 16
    2294:	68c9      	andn      	r3, r2
    2296:	3bb4      	bseti      	r3, 20
    2298:	3bb6      	bseti      	r3, 22
    229a:	0744      	br      	0x2122	// 2122 <EPT_IO_SET+0x2e>
	else if(EPT_IO_X==EPT_IO_CHD)
    229c:	3846      	cmpnei      	r0, 6
    229e:	0815      	bt      	0x22c8	// 22c8 <EPT_IO_SET+0x1d4>
		if(IO_Num_X==IO_NUM_PB03)
    22a0:	3953      	cmpnei      	r1, 19
    22a2:	080a      	bt      	0x22b6	// 22b6 <EPT_IO_SET+0x1c2>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFF0FFF)|0X00006000;				//PB0.3
    22a4:	1161      	lrw      	r3, 0x2000004c	// 2328 <EPT_IO_SET+0x234>
    22a6:	32f0      	movi      	r2, 240
    22a8:	9320      	ld.w      	r1, (r3, 0x0)
    22aa:	9160      	ld.w      	r3, (r1, 0x0)
    22ac:	4248      	lsli      	r2, r2, 8
    22ae:	68c9      	andn      	r3, r2
    22b0:	3bad      	bseti      	r3, 13
    22b2:	3bae      	bseti      	r3, 14
    22b4:	075a      	br      	0x2168	// 2168 <EPT_IO_SET+0x74>
		else if(IO_Num_X==IO_NUM_PA08)
    22b6:	395b      	cmpnei      	r1, 27
    22b8:	0b2a      	bt      	0x210c	// 210c <EPT_IO_SET+0x18>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFF0)|0X00000004;				//PA0.8
    22ba:	107b      	lrw      	r3, 0x20000050	// 2324 <EPT_IO_SET+0x230>
    22bc:	310f      	movi      	r1, 15
    22be:	9340      	ld.w      	r2, (r3, 0x0)
    22c0:	9261      	ld.w      	r3, (r2, 0x4)
    22c2:	68c5      	andn      	r3, r1
    22c4:	3ba2      	bseti      	r3, 2
    22c6:	0738      	br      	0x2136	// 2136 <EPT_IO_SET+0x42>
	else if(EPT_IO_X==EPT_IO_EPI)
    22c8:	3847      	cmpnei      	r0, 7
    22ca:	0b21      	bt      	0x210c	// 210c <EPT_IO_SET+0x18>
		if(IO_Num_X==IO_NUM_PA07)
    22cc:	3950      	cmpnei      	r1, 16
    22ce:	0809      	bt      	0x22e0	// 22e0 <EPT_IO_SET+0x1ec>
			GPIOA0->CONLR = (GPIOA0->CONLR&0X0FFFFFFF)|0X50000000;				//PA0.7 EPI0
    22d0:	1075      	lrw      	r3, 0x20000050	// 2324 <EPT_IO_SET+0x230>
    22d2:	9340      	ld.w      	r2, (r3, 0x0)
    22d4:	9260      	ld.w      	r3, (r2, 0x0)
    22d6:	4364      	lsli      	r3, r3, 4
    22d8:	4b64      	lsri      	r3, r3, 4
    22da:	3bbc      	bseti      	r3, 28
    22dc:	3bbe      	bseti      	r3, 30
    22de:	0716      	br      	0x210a	// 210a <EPT_IO_SET+0x16>
		else if(IO_Num_X==IO_NUM_PA013)
    22e0:	3320      	movi      	r3, 32
    22e2:	64c6      	cmpne      	r1, r3
    22e4:	0809      	bt      	0x22f6	// 22f6 <EPT_IO_SET+0x202>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)|0X00400000;				//PA0.13 EPI1
    22e6:	1070      	lrw      	r3, 0x20000050	// 2324 <EPT_IO_SET+0x230>
    22e8:	32f0      	movi      	r2, 240
    22ea:	9320      	ld.w      	r1, (r3, 0x0)
    22ec:	9161      	ld.w      	r3, (r1, 0x4)
    22ee:	4250      	lsli      	r2, r2, 16
    22f0:	68c9      	andn      	r3, r2
    22f2:	3bb6      	bseti      	r3, 22
    22f4:	0717      	br      	0x2122	// 2122 <EPT_IO_SET+0x2e>
		else if(IO_Num_X==IO_NUM_PB03)
    22f6:	3953      	cmpnei      	r1, 19
    22f8:	080b      	bt      	0x230e	// 230e <EPT_IO_SET+0x21a>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFF0FFF)|0X00007000;				//PB0.3 EPI2
    22fa:	106c      	lrw      	r3, 0x2000004c	// 2328 <EPT_IO_SET+0x234>
    22fc:	32f0      	movi      	r2, 240
    22fe:	9320      	ld.w      	r1, (r3, 0x0)
    2300:	4248      	lsli      	r2, r2, 8
    2302:	9160      	ld.w      	r3, (r1, 0x0)
    2304:	68c9      	andn      	r3, r2
    2306:	32e0      	movi      	r2, 224
    2308:	4247      	lsli      	r2, r2, 7
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFF0FF)|0X00000700;				//PB0.2 EPI3
    230a:	6cc8      	or      	r3, r2
    230c:	072e      	br      	0x2168	// 2168 <EPT_IO_SET+0x74>
		else if(IO_Num_X==IO_NUM_PB02)
    230e:	3956      	cmpnei      	r1, 22
    2310:	0afe      	bt      	0x210c	// 210c <EPT_IO_SET+0x18>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFF0FF)|0X00000700;				//PB0.2 EPI3
    2312:	1066      	lrw      	r3, 0x2000004c	// 2328 <EPT_IO_SET+0x234>
    2314:	32f0      	movi      	r2, 240
    2316:	9320      	ld.w      	r1, (r3, 0x0)
    2318:	4244      	lsli      	r2, r2, 4
    231a:	9160      	ld.w      	r3, (r1, 0x0)
    231c:	68c9      	andn      	r3, r2
    231e:	32e0      	movi      	r2, 224
    2320:	4243      	lsli      	r2, r2, 3
    2322:	07f4      	br      	0x230a	// 230a <EPT_IO_SET+0x216>
    2324:	20000050 	.long	0x20000050
    2328:	2000004c 	.long	0x2000004c

Disassembly of section .text.EPT_PWM_Config:

0000232c <EPT_PWM_Config>:
//ReturnValue:NONE
/*************************************************************/  
//Fclk=Fpclk/(PSC+1)
void EPT_PWM_Config(EPT_TCLK_Selecte_Type EPT_TCLK_Selecte_X , EPT_CNTMD_SELECTE_Type EPT_CNTMD_SELECTE_X  , EPT_OPM_SELECTE_Type EPT_OPM_SELECTE_X
					, U16_T EPT_PSCR)		
{
    232c:	14c3      	push      	r4-r6
    232e:	6d8b      	mov      	r6, r2
	EPT0->CEDR=(EPT0->CEDR&0XFFFFFF00)|(0X01|EPT_TCLK_Selecte_X|(0X01<<1)|(0X00<<6));
    2330:	104b      	lrw      	r2, 0x20000024	// 235c <EPT_PWM_Config+0x30>
	if(EPT_TCLK_Selecte_X==EPT_Selecte_PCLK)
    2332:	3840      	cmpnei      	r0, 0
	EPT0->CEDR=(EPT0->CEDR&0XFFFFFF00)|(0X01|EPT_TCLK_Selecte_X|(0X01<<1)|(0X00<<6));
    2334:	92a0      	ld.w      	r5, (r2, 0x0)
    2336:	9580      	ld.w      	r4, (r5, 0x0)
    2338:	32ff      	movi      	r2, 255
    233a:	6909      	andn      	r4, r2
    233c:	3ca0      	bseti      	r4, 0
    233e:	3ca1      	bseti      	r4, 1
    2340:	6d00      	or      	r4, r0
    2342:	b580      	st.w      	r4, (r5, 0x0)
	if(EPT_TCLK_Selecte_X==EPT_Selecte_PCLK)
    2344:	0802      	bt      	0x2348	// 2348 <EPT_PWM_Config+0x1c>
	{
		EPT0->PSCR=EPT_PSCR;
    2346:	b562      	st.w      	r3, (r5, 0x8)
	}
	EPT0->CR=(EPT0->CR&0xfff8ffc0)|EPT_CNTMD_SELECTE_X|(0x1<<2)|(0x0<<3)|(0x0<<4)|EPT_OPM_SELECTE_X|(0X0<<16)|(0x1<<18);
    2348:	9543      	ld.w      	r2, (r5, 0xc)
    234a:	1066      	lrw      	r3, 0x7003f	// 2360 <EPT_PWM_Config+0x34>
    234c:	688d      	andn      	r2, r3
    234e:	6c98      	or      	r2, r6
    2350:	3aa2      	bseti      	r2, 2
    2352:	3ab2      	bseti      	r2, 18
    2354:	6c48      	or      	r1, r2
    2356:	b523      	st.w      	r1, (r5, 0xc)
} 
    2358:	1483      	pop      	r4-r6
    235a:	0000      	bkpt
    235c:	20000024 	.long	0x20000024
    2360:	0007003f 	.long	0x0007003f

Disassembly of section .text.EPT_DBCR_Config:

00002364 <EPT_DBCR_Config>:
//EPT_OUT_POLARITY_X:EPT_PA_PB_OUT_Direct,EPT_PA_OUT_Reverse,EPT_PB_OUT_Reverse,EPT_PA_PB_OUT_Reverse
//EPT_OUT_SWAP_X:EPT_PAtoCHX_PBtoCHY,EPT_PBtoCHX_PBtoCHY,EPT_PAtoCHX_PAtoCHY,EPT_PBtoCHX_PAtoCHY
//ReturnValue:NONE
/*************************************************************/   
void EPT_DBCR_Config(EPT_CHX_Selecte_Type EPT_CHX_Selecte , EPT_INSEL_Type EPT_INSEL_X , EPT_OUTSEL_Type EPT_OUTSEL_X , EPT_OUT_POLARITY_Type EPT_OUT_POLARITY_X , EPT_OUT_SWAP_Type EPT_OUT_SWAP_X)
{	
    2364:	14c4      	push      	r4-r7
	if(EPT_CHX_Selecte==EPT_CHA_Selecte)
    2366:	3840      	cmpnei      	r0, 0
{	
    2368:	98c4      	ld.w      	r6, (r14, 0x10)
    236a:	1096      	lrw      	r4, 0x20000024	// 23c0 <EPT_DBCR_Config+0x5c>
	if(EPT_CHX_Selecte==EPT_CHA_Selecte)
    236c:	0811      	bt      	0x238e	// 238e <EPT_DBCR_Config+0x2a>
	{
		EPT0->DBCR=(EPT0->DBCR&0XFFFFFF00)|EPT_INSEL_X|EPT_OUTSEL_X|(EPT_OUT_POLARITY_X<<2)|(EPT_OUT_SWAP_X<<6);
    236e:	94a0      	ld.w      	r5, (r4, 0x0)
    2370:	95fa      	ld.w      	r7, (r5, 0x68)
    2372:	30ff      	movi      	r0, 255
    2374:	69c1      	andn      	r7, r0
    2376:	46c6      	lsli      	r6, r6, 6
    2378:	6d9c      	or      	r6, r7
    237a:	6c98      	or      	r2, r6
    237c:	4362      	lsli      	r3, r3, 2
	{
		EPT0->DBCR=(EPT0->DBCR&0XFFFF00FF)|EPT_INSEL_X|EPT_OUTSEL_X|(EPT_OUT_POLARITY_X<<10)|(EPT_OUT_SWAP_X<<14);
	}
	else if(EPT_CHX_Selecte==EPT_CHC_Selecte)
	{
		EPT0->DBCR=(EPT0->DBCR&0XFF00FFFF)|EPT_INSEL_X|EPT_OUTSEL_X|(EPT_OUT_POLARITY_X<<18)|(EPT_OUT_SWAP_X<<22);
    237e:	6cc8      	or      	r3, r2
    2380:	6c4c      	or      	r1, r3
    2382:	b53a      	st.w      	r1, (r5, 0x68)
	}
	EPT0->DBCR|=0x01<<24;
    2384:	9440      	ld.w      	r2, (r4, 0x0)
    2386:	927a      	ld.w      	r3, (r2, 0x68)
    2388:	3bb8      	bseti      	r3, 24
    238a:	b27a      	st.w      	r3, (r2, 0x68)
}
    238c:	1484      	pop      	r4-r7
	else if(EPT_CHX_Selecte==EPT_CHB_Selecte)
    238e:	3841      	cmpnei      	r0, 1
    2390:	080b      	bt      	0x23a6	// 23a6 <EPT_DBCR_Config+0x42>
		EPT0->DBCR=(EPT0->DBCR&0XFFFF00FF)|EPT_INSEL_X|EPT_OUTSEL_X|(EPT_OUT_POLARITY_X<<10)|(EPT_OUT_SWAP_X<<14);
    2392:	94a0      	ld.w      	r5, (r4, 0x0)
    2394:	30ff      	movi      	r0, 255
    2396:	95fa      	ld.w      	r7, (r5, 0x68)
    2398:	4008      	lsli      	r0, r0, 8
    239a:	69c1      	andn      	r7, r0
    239c:	46ce      	lsli      	r6, r6, 14
    239e:	6d9c      	or      	r6, r7
    23a0:	6c98      	or      	r2, r6
    23a2:	436a      	lsli      	r3, r3, 10
    23a4:	07ed      	br      	0x237e	// 237e <EPT_DBCR_Config+0x1a>
	else if(EPT_CHX_Selecte==EPT_CHC_Selecte)
    23a6:	3842      	cmpnei      	r0, 2
    23a8:	0bee      	bt      	0x2384	// 2384 <EPT_DBCR_Config+0x20>
		EPT0->DBCR=(EPT0->DBCR&0XFF00FFFF)|EPT_INSEL_X|EPT_OUTSEL_X|(EPT_OUT_POLARITY_X<<18)|(EPT_OUT_SWAP_X<<22);
    23aa:	94a0      	ld.w      	r5, (r4, 0x0)
    23ac:	37ff      	movi      	r7, 255
    23ae:	951a      	ld.w      	r0, (r5, 0x68)
    23b0:	47f0      	lsli      	r7, r7, 16
    23b2:	681d      	andn      	r0, r7
    23b4:	46d6      	lsli      	r6, r6, 22
    23b6:	6c18      	or      	r0, r6
    23b8:	6c80      	or      	r2, r0
    23ba:	4372      	lsli      	r3, r3, 18
    23bc:	07e1      	br      	0x237e	// 237e <EPT_DBCR_Config+0x1a>
    23be:	0000      	bkpt
    23c0:	20000024 	.long	0x20000024

Disassembly of section .text.EPT_DB_CLK_Config:

000023c4 <EPT_DB_CLK_Config>:
//ReturnValue:NONE
/*************************************************************/   
//Fdbclk=Fhclk/(DPSC+1)
void EPT_DB_CLK_Config(U16_T DPSC , U16_T DTR , U16_T DTF)
{
	EPT0->DPSCR=DPSC;
    23c4:	1063      	lrw      	r3, 0x20000024	// 23d0 <EPT_DB_CLK_Config+0xc>
    23c6:	9360      	ld.w      	r3, (r3, 0x0)
    23c8:	b31b      	st.w      	r0, (r3, 0x6c)
	EPT0->DBDTR=DTR;
    23ca:	b33c      	st.w      	r1, (r3, 0x70)
	EPT0->DBDTF=DTF;
    23cc:	b35d      	st.w      	r2, (r3, 0x74)
}
    23ce:	783c      	jmp      	r15
    23d0:	20000024 	.long	0x20000024

Disassembly of section .text.EPT_PWMX_Output_Control:

000023d4 <EPT_PWMX_Output_Control>:
							 EPT_PWM_CAU_Output_Type EPT_PWM_CAU_Event_Output , EPT_PWM_CAD_Output_Type EPT_PWM_CAD_Event_Output ,
							 EPT_PWM_CBU_Output_Type EPT_PWM_CBU_Event_Output , EPT_PWM_CBD_Output_Type EPT_PWM_CBD_Event_Output ,
							 EPT_PWM_T1U_Output_Type EPT_PWM_T1U_Event_Output , EPT_PWM_T1D_Output_Type EPT_PWM_T1D_Event_Output ,
							 EPT_PWM_T2U_Output_Type EPT_PWM_T2U_Event_Output , EPT_PWM_T2D_Output_Type EPT_PWM_T2D_Event_Output 
							 )
{
    23d4:	14c4      	push      	r4-r7
    23d6:	1425      	subi      	r14, r14, 20
    23d8:	9889      	ld.w      	r4, (r14, 0x24)
    23da:	b880      	st.w      	r4, (r14, 0x0)
    23dc:	988a      	ld.w      	r4, (r14, 0x28)
    23de:	b881      	st.w      	r4, (r14, 0x4)
    23e0:	988b      	ld.w      	r4, (r14, 0x2c)
    23e2:	b882      	st.w      	r4, (r14, 0x8)
    23e4:	988c      	ld.w      	r4, (r14, 0x30)
    23e6:	b883      	st.w      	r4, (r14, 0xc)
	if(EPT_PWMX_Selecte==EPT_PWMA)
    23e8:	3840      	cmpnei      	r0, 0
{
    23ea:	988d      	ld.w      	r4, (r14, 0x34)
    23ec:	b884      	st.w      	r4, (r14, 0x10)
    23ee:	98ce      	ld.w      	r6, (r14, 0x38)
    23f0:	98ef      	ld.w      	r7, (r14, 0x3c)
    23f2:	98b0      	ld.w      	r5, (r14, 0x40)
    23f4:	9891      	ld.w      	r4, (r14, 0x44)
	if(EPT_PWMX_Selecte==EPT_PWMA)
    23f6:	0816      	bt      	0x2422	// 2422 <EPT_PWMX_Output_Control+0x4e>
	{
		EPT0->AQCRA=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    23f8:	6d14      	or      	r4, r5
    23fa:	6d1c      	or      	r4, r7
    23fc:	98a4      	ld.w      	r5, (r14, 0x10)
    23fe:	6d18      	or      	r4, r6
    2400:	6d14      	or      	r4, r5
    2402:	98a3      	ld.w      	r5, (r14, 0xc)
    2404:	6d14      	or      	r4, r5
    2406:	98a2      	ld.w      	r5, (r14, 0x8)
    2408:	6d14      	or      	r4, r5
    240a:	98a1      	ld.w      	r5, (r14, 0x4)
    240c:	6d14      	or      	r4, r5
    240e:	98a0      	ld.w      	r5, (r14, 0x0)
    2410:	6d14      	or      	r4, r5
    2412:	6cd0      	or      	r3, r4
		EPT0->AQCRA=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    2414:	1105      	lrw      	r0, 0x20000024	// 24a8 <EPT_PWMX_Output_Control+0xd4>
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    2416:	6c8c      	or      	r2, r3
		EPT0->AQCRA=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    2418:	9000      	ld.w      	r0, (r0, 0x0)
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    241a:	6c48      	or      	r1, r2
		EPT0->AQCRA=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    241c:	b032      	st.w      	r1, (r0, 0x48)
	{
		EPT0->AQCRD=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
	}
	
}
    241e:	1405      	addi      	r14, r14, 20
    2420:	1484      	pop      	r4-r7
	else if(EPT_PWMX_Selecte==EPT_PWMB)
    2422:	3841      	cmpnei      	r0, 1
    2424:	0815      	bt      	0x244e	// 244e <EPT_PWMX_Output_Control+0x7a>
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    2426:	6d14      	or      	r4, r5
    2428:	6d1c      	or      	r4, r7
    242a:	98a4      	ld.w      	r5, (r14, 0x10)
    242c:	6d18      	or      	r4, r6
    242e:	6d14      	or      	r4, r5
    2430:	98a3      	ld.w      	r5, (r14, 0xc)
    2432:	6d14      	or      	r4, r5
    2434:	98a2      	ld.w      	r5, (r14, 0x8)
    2436:	6d14      	or      	r4, r5
    2438:	98a1      	ld.w      	r5, (r14, 0x4)
    243a:	6d14      	or      	r4, r5
    243c:	98a0      	ld.w      	r5, (r14, 0x0)
    243e:	6d14      	or      	r4, r5
    2440:	6cd0      	or      	r3, r4
		EPT0->AQCRB=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    2442:	101a      	lrw      	r0, 0x20000024	// 24a8 <EPT_PWMX_Output_Control+0xd4>
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    2444:	6c8c      	or      	r2, r3
		EPT0->AQCRB=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    2446:	9000      	ld.w      	r0, (r0, 0x0)
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    2448:	6c48      	or      	r1, r2
		EPT0->AQCRB=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    244a:	b033      	st.w      	r1, (r0, 0x4c)
    244c:	07e9      	br      	0x241e	// 241e <EPT_PWMX_Output_Control+0x4a>
	else if(EPT_PWMX_Selecte==EPT_PWMC)
    244e:	3842      	cmpnei      	r0, 2
    2450:	0815      	bt      	0x247a	// 247a <EPT_PWMX_Output_Control+0xa6>
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    2452:	6d14      	or      	r4, r5
    2454:	6d1c      	or      	r4, r7
    2456:	98a4      	ld.w      	r5, (r14, 0x10)
    2458:	6d18      	or      	r4, r6
    245a:	6d14      	or      	r4, r5
    245c:	98a3      	ld.w      	r5, (r14, 0xc)
    245e:	6d14      	or      	r4, r5
    2460:	98a2      	ld.w      	r5, (r14, 0x8)
    2462:	6d14      	or      	r4, r5
    2464:	98a1      	ld.w      	r5, (r14, 0x4)
    2466:	6d14      	or      	r4, r5
    2468:	98a0      	ld.w      	r5, (r14, 0x0)
    246a:	6d14      	or      	r4, r5
    246c:	6cd0      	or      	r3, r4
		EPT0->AQCRC=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    246e:	100f      	lrw      	r0, 0x20000024	// 24a8 <EPT_PWMX_Output_Control+0xd4>
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    2470:	6c8c      	or      	r2, r3
		EPT0->AQCRC=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    2472:	9000      	ld.w      	r0, (r0, 0x0)
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    2474:	6c48      	or      	r1, r2
		EPT0->AQCRC=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    2476:	b034      	st.w      	r1, (r0, 0x50)
    2478:	07d3      	br      	0x241e	// 241e <EPT_PWMX_Output_Control+0x4a>
	else if(EPT_PWMX_Selecte==EPT_PWMD)
    247a:	3843      	cmpnei      	r0, 3
    247c:	0bd1      	bt      	0x241e	// 241e <EPT_PWMX_Output_Control+0x4a>
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    247e:	6d14      	or      	r4, r5
    2480:	6d1c      	or      	r4, r7
    2482:	98a4      	ld.w      	r5, (r14, 0x10)
    2484:	6d18      	or      	r4, r6
    2486:	6d14      	or      	r4, r5
    2488:	98a3      	ld.w      	r5, (r14, 0xc)
    248a:	6d14      	or      	r4, r5
    248c:	98a2      	ld.w      	r5, (r14, 0x8)
    248e:	6d14      	or      	r4, r5
    2490:	98a1      	ld.w      	r5, (r14, 0x4)
    2492:	6d14      	or      	r4, r5
    2494:	98a0      	ld.w      	r5, (r14, 0x0)
    2496:	6d14      	or      	r4, r5
    2498:	6cd0      	or      	r3, r4
		EPT0->AQCRD=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    249a:	1004      	lrw      	r0, 0x20000024	// 24a8 <EPT_PWMX_Output_Control+0xd4>
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    249c:	6c8c      	or      	r2, r3
		EPT0->AQCRD=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    249e:	9000      	ld.w      	r0, (r0, 0x0)
					EPT_PWM_CBU_Event_Output|EPT_PWM_CBD_Event_Output|EPT_PWM_T1U_Event_Output|EPT_PWM_T1D_Event_Output|EPT_PWM_T2U_Event_Output|EPT_PWM_T2D_Event_Output;
    24a0:	6c48      	or      	r1, r2
		EPT0->AQCRD=EPT_CA_Selecte_X|EPT_CB_Selecte_X|EPT_PWM_ZRO_Event_Output|EPT_PWM_PRD_Event_Output|EPT_PWM_CAU_Event_Output|EPT_PWM_CAD_Event_Output|
    24a2:	b035      	st.w      	r1, (r0, 0x54)
}
    24a4:	07bd      	br      	0x241e	// 241e <EPT_PWMX_Output_Control+0x4a>
    24a6:	0000      	bkpt
    24a8:	20000024 	.long	0x20000024

Disassembly of section .text.EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config:

000024ac <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>:
//EPT_CMPB_Value:0~0xff
//EPT_CMPC_Value:0~0xff
//EPT_CMPD_Value:0~0xff
/*************************************************************/ 
void EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(U16_T EPT_PRDR_Value , U16_T EPT_CMPA_Value , U16_T EPT_CMPB_Value , U16_T EPT_CMPC_Value , U16_T EPT_CMPD_Value)
{
    24ac:	14c2      	push      	r4-r5
	EPT0->PRDR=EPT_PRDR_Value;
    24ae:	1086      	lrw      	r4, 0x20000024	// 24c4 <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config+0x18>
{
    24b0:	d8ae1004 	ld.h      	r5, (r14, 0x8)
	EPT0->PRDR=EPT_PRDR_Value;
    24b4:	9480      	ld.w      	r4, (r4, 0x0)
    24b6:	b409      	st.w      	r0, (r4, 0x24)
	EPT0->CMPA=EPT_CMPA_Value;
    24b8:	b42b      	st.w      	r1, (r4, 0x2c)
	EPT0->CMPB=EPT_CMPB_Value;
    24ba:	b44c      	st.w      	r2, (r4, 0x30)
	EPT0->CMPC=EPT_CMPC_Value;
    24bc:	b46d      	st.w      	r3, (r4, 0x34)
	EPT0->CMPD=EPT_CMPD_Value;
    24be:	b4ae      	st.w      	r5, (r4, 0x38)
}
    24c0:	1482      	pop      	r4-r5
    24c2:	0000      	bkpt
    24c4:	20000024 	.long	0x20000024

Disassembly of section .text.ADC12_Control:

000024c8 <ADC12_Control>:
//ReturnValue:NONE
/*************************************************************/  
  //control:ADC enable/disable ,start/stop,swrst
void ADC12_Control(ADC12_Control_TypeDef ADC12_Control_x )
{
	ADC0->CR |= ADC12_Control_x;							// 
    24c8:	1063      	lrw      	r3, 0x20000054	// 24d4 <ADC12_Control+0xc>
    24ca:	9340      	ld.w      	r2, (r3, 0x0)
    24cc:	9264      	ld.w      	r3, (r2, 0x10)
    24ce:	6c0c      	or      	r0, r3
    24d0:	b204      	st.w      	r0, (r2, 0x10)
}
    24d2:	783c      	jmp      	r15
    24d4:	20000054 	.long	0x20000054

Disassembly of section .text.ADC12_CMD.part.0:

000024d8 <ADC12_CMD.part.0>:
//ADC12 ENABLE
//EntryParameter:NewState
//NewState:ENABLE , DISABLE
//ReturnValue:NONE
/*************************************************************/ 
void ADC12_CMD(FunctionalStatus NewState)
    24d8:	14d0      	push      	r15
{
	if (NewState != DISABLE)
	{
		ADC12_Control(ADC12_ADCEN);						//ADC12 ENABLE
    24da:	3002      	movi      	r0, 2
    24dc:	e3fffff6 	bsr      	0x24c8	// 24c8 <ADC12_Control>
		while(!(ADC0->SR &ADC12_ADCENS));
    24e0:	1065      	lrw      	r3, 0x20000054	// 24f4 <ADC12_CMD.part.0+0x1c>
    24e2:	3280      	movi      	r2, 128
    24e4:	9320      	ld.w      	r1, (r3, 0x0)
    24e6:	4241      	lsli      	r2, r2, 1
    24e8:	9168      	ld.w      	r3, (r1, 0x20)
    24ea:	68c8      	and      	r3, r2
    24ec:	3b40      	cmpnei      	r3, 0
    24ee:	0ffd      	bf      	0x24e8	// 24e8 <ADC12_CMD.part.0+0x10>
	else
	{
		ADC12_Control(ADC12_ADCDIS);					//ADC12 DISABLE
		while(ADC0->SR&ADC12_ADCENS);
	}
}
    24f0:	1490      	pop      	r15
    24f2:	0000      	bkpt
    24f4:	20000054 	.long	0x20000054

Disassembly of section .text.ADC12_CLK_CMD:

000024f8 <ADC12_CLK_CMD>:
	if (NewState != DISABLE)
    24f8:	3940      	cmpnei      	r1, 0
    24fa:	106a      	lrw      	r3, 0x20000054	// 2520 <ADC12_CLK_CMD+0x28>
		ADC0->ECR  |= ADC_CLK_CMD;						//ENABLE
    24fc:	9340      	ld.w      	r2, (r3, 0x0)
	if (NewState != DISABLE)
    24fe:	0c09      	bf      	0x2510	// 2510 <ADC12_CLK_CMD+0x18>
		ADC0->ECR  |= ADC_CLK_CMD;						//ENABLE
    2500:	9260      	ld.w      	r3, (r2, 0x0)
    2502:	6cc0      	or      	r3, r0
    2504:	b260      	st.w      	r3, (r2, 0x0)
		while(!(ADC0->PMSR&ADC_CLK_CMD));
    2506:	9262      	ld.w      	r3, (r2, 0x8)
    2508:	68c0      	and      	r3, r0
    250a:	3b40      	cmpnei      	r3, 0
    250c:	0ffd      	bf      	0x2506	// 2506 <ADC12_CLK_CMD+0xe>
}
    250e:	783c      	jmp      	r15
		ADC0->DCR  |= ADC_CLK_CMD;						//DISABLE
    2510:	9261      	ld.w      	r3, (r2, 0x4)
    2512:	6cc0      	or      	r3, r0
    2514:	b261      	st.w      	r3, (r2, 0x4)
		while(ADC0->PMSR&ADC_CLK_CMD);
    2516:	9262      	ld.w      	r3, (r2, 0x8)
    2518:	68c0      	and      	r3, r0
    251a:	3b40      	cmpnei      	r3, 0
    251c:	0bfd      	bt      	0x2516	// 2516 <ADC12_CLK_CMD+0x1e>
    251e:	07f8      	br      	0x250e	// 250e <ADC12_CLK_CMD+0x16>
    2520:	20000054 	.long	0x20000054

Disassembly of section .text.ADC12_Software_Reset:

00002524 <ADC12_Software_Reset>:
{
    2524:	14d0      	push      	r15
	ADC12_Control(ADC12_SWRST);
    2526:	3001      	movi      	r0, 1
    2528:	e3ffffd0 	bsr      	0x24c8	// 24c8 <ADC12_Control>
}
    252c:	1490      	pop      	r15

Disassembly of section .text.ADC12_CMD:

00002530 <ADC12_CMD>:
{
    2530:	14d0      	push      	r15
	if (NewState != DISABLE)
    2532:	3840      	cmpnei      	r0, 0
    2534:	0c04      	bf      	0x253c	// 253c <ADC12_CMD+0xc>
    2536:	e3ffffd1 	bsr      	0x24d8	// 24d8 <ADC12_CMD.part.0>
}
    253a:	1490      	pop      	r15
		ADC12_Control(ADC12_ADCDIS);					//ADC12 DISABLE
    253c:	3004      	movi      	r0, 4
    253e:	e3ffffc5 	bsr      	0x24c8	// 24c8 <ADC12_Control>
		while(ADC0->SR&ADC12_ADCENS);
    2542:	1065      	lrw      	r3, 0x20000054	// 2554 <ADC12_CMD+0x24>
    2544:	3280      	movi      	r2, 128
    2546:	9320      	ld.w      	r1, (r3, 0x0)
    2548:	4241      	lsli      	r2, r2, 1
    254a:	9168      	ld.w      	r3, (r1, 0x20)
    254c:	68c8      	and      	r3, r2
    254e:	3b40      	cmpnei      	r3, 0
    2550:	0bfd      	bt      	0x254a	// 254a <ADC12_CMD+0x1a>
    2552:	07f4      	br      	0x253a	// 253a <ADC12_CMD+0xa>
    2554:	20000054 	.long	0x20000054

Disassembly of section .text.ADC12_ready_wait:

00002558 <ADC12_ready_wait>:
//EntryParameter:NONE
//ReturnValue:ADC12 READ FLAG
/*************************************************************/ 
void ADC12_ready_wait(void)  
{
	while(!(ADC0->SR&ADC12_READY));   					// Waiting for ADC0 Ready
    2558:	1064      	lrw      	r3, 0x20000054	// 2568 <ADC12_ready_wait+0x10>
    255a:	3202      	movi      	r2, 2
    255c:	9320      	ld.w      	r1, (r3, 0x0)
    255e:	9168      	ld.w      	r3, (r1, 0x20)
    2560:	68c8      	and      	r3, r2
    2562:	3b40      	cmpnei      	r3, 0
    2564:	0ffd      	bf      	0x255e	// 255e <ADC12_ready_wait+0x6>
}
    2566:	783c      	jmp      	r15
    2568:	20000054 	.long	0x20000054

Disassembly of section .text.ADC12_SEQEND_wait:

0000256c <ADC12_SEQEND_wait>:
//EntryParameter:NONE
//ReturnValue:ADC12 EOC
/*************************************************************/ 
void ADC12_SEQEND_wait(U8_T val)
{
	while(!(ADC0->SR & (0x01ul << (16+val))));			// EOC wait
    256c:	200f      	addi      	r0, 16
    256e:	1065      	lrw      	r3, 0x20000054	// 2580 <ADC12_SEQEND_wait+0x14>
    2570:	3201      	movi      	r2, 1
    2572:	9320      	ld.w      	r1, (r3, 0x0)
    2574:	7080      	lsl      	r2, r0
    2576:	9168      	ld.w      	r3, (r1, 0x20)
    2578:	68c8      	and      	r3, r2
    257a:	3b40      	cmpnei      	r3, 0
    257c:	0ffd      	bf      	0x2576	// 2576 <ADC12_SEQEND_wait+0xa>
}  
    257e:	783c      	jmp      	r15
    2580:	20000054 	.long	0x20000054

Disassembly of section .text.ADC12_Configure_Mode:

00002584 <ADC12_Configure_Mode>:
  //10BIT or 12BIT adc ;
  //ADC12_BIT_SELECTED:ADC12_12BIT/ADC12_10BIT;
  //ADC12_ConverMode:One_shot_mode/Continuous_mode;
  //adc date output=last number of Conversions;
void  ADC12_Configure_Mode(ADC12_10bitor12bit_TypeDef ADC12_BIT_SELECTED  , ADC12_ConverMode_TypeDef  ADC12_ConverMode  , U8_T ADC12_PRI, U8_T adc12_SHR , U8_T ADC12_DIV , U8_T NumConver ) 
{
    2584:	14d4      	push      	r4-r7, r15
    2586:	1422      	subi      	r14, r14, 8
    2588:	1c08      	addi      	r4, r14, 32
    258a:	84a0      	ld.b      	r5, (r4, 0x0)
	ADC0->MR=ADC12_DIV|((NumConver-1)<<10);
    258c:	2d00      	subi      	r5, 1
{
    258e:	6dc3      	mov      	r7, r0
	ADC0->MR=ADC12_DIV|((NumConver-1)<<10);
    2590:	10db      	lrw      	r6, 0x20000054	// 25fc <ADC12_Configure_Mode+0x78>
{
    2592:	d80e001c 	ld.b      	r0, (r14, 0x1c)
	ADC0->MR=ADC12_DIV|((NumConver-1)<<10);
    2596:	45aa      	lsli      	r5, r5, 10
    2598:	9680      	ld.w      	r4, (r6, 0x0)
    259a:	6d40      	or      	r5, r0
	if(ADC12_ConverMode==One_shot_mode)
    259c:	3940      	cmpnei      	r1, 0
	ADC0->MR=ADC12_DIV|((NumConver-1)<<10);
    259e:	b4a5      	st.w      	r5, (r4, 0x14)
	if(ADC12_ConverMode==One_shot_mode)
    25a0:	081c      	bt      	0x25d8	// 25d8 <ADC12_Configure_Mode+0x54>
	{
		ADC0->MR&=~CONTCV;								//one short mode
    25a2:	9425      	ld.w      	r1, (r4, 0x14)
    25a4:	4121      	lsli      	r1, r1, 1
    25a6:	4921      	lsri      	r1, r1, 1
		while(ADC0->SR&ADC12_CTCVS);							
    25a8:	3080      	movi      	r0, 128
		ADC0->MR&=~CONTCV;								//one short mode
    25aa:	b425      	st.w      	r1, (r4, 0x14)
		while(ADC0->SR&ADC12_CTCVS);							
    25ac:	4002      	lsli      	r0, r0, 2
    25ae:	9428      	ld.w      	r1, (r4, 0x20)
    25b0:	6840      	and      	r1, r0
    25b2:	3940      	cmpnei      	r1, 0
    25b4:	0bfd      	bt      	0x25ae	// 25ae <ADC12_Configure_Mode+0x2a>
    25b6:	b861      	st.w      	r3, (r14, 0x4)
    25b8:	b840      	st.w      	r2, (r14, 0x0)
    25ba:	e3ffff8f 	bsr      	0x24d8	// 24d8 <ADC12_CMD.part.0>
	{
		ADC0->MR|=CONTCV;								//Continuous mode
		while(!(ADC0->SR&ADC12_CTCVS));							
	}
	ADC12_CMD(ENABLE);									//ADC0 enable
	if(ADC12_BIT_SELECTED)
    25be:	3f40      	cmpnei      	r7, 0
    25c0:	9840      	ld.w      	r2, (r14, 0x0)
    25c2:	9861      	ld.w      	r3, (r14, 0x4)
    25c4:	0c16      	bf      	0x25f0	// 25f0 <ADC12_Configure_Mode+0x6c>
	{
		ADC0->CR|=ADC12_10BITor12BIT;
    25c6:	9600      	ld.w      	r0, (r6, 0x0)
    25c8:	9024      	ld.w      	r1, (r0, 0x10)
    25ca:	39bf      	bseti      	r1, 31
	}
	else
	{
		ADC0->CR&=~ADC12_10BITor12BIT;
    25cc:	b024      	st.w      	r1, (r0, 0x10)
	}
	//ADC0->CR|=ADC12_VREF_VDD | ADC12_FVR_DIS;
	ADC0->PRI=ADC12_PRI;
    25ce:	9620      	ld.w      	r1, (r6, 0x0)
    25d0:	b15c      	st.w      	r2, (r1, 0x70)
	ADC0->SHR=adc12_SHR;								//adc Sampling & Holding cycles
    25d2:	b166      	st.w      	r3, (r1, 0x18)
} 
    25d4:	1402      	addi      	r14, r14, 8
    25d6:	1494      	pop      	r4-r7, r15
	else if(ADC12_ConverMode==Continuous_mode)
    25d8:	3941      	cmpnei      	r1, 1
    25da:	0bee      	bt      	0x25b6	// 25b6 <ADC12_Configure_Mode+0x32>
		ADC0->MR|=CONTCV;								//Continuous mode
    25dc:	9425      	ld.w      	r1, (r4, 0x14)
    25de:	39bf      	bseti      	r1, 31
		while(!(ADC0->SR&ADC12_CTCVS));							
    25e0:	3080      	movi      	r0, 128
		ADC0->MR|=CONTCV;								//Continuous mode
    25e2:	b425      	st.w      	r1, (r4, 0x14)
		while(!(ADC0->SR&ADC12_CTCVS));							
    25e4:	4002      	lsli      	r0, r0, 2
    25e6:	9428      	ld.w      	r1, (r4, 0x20)
    25e8:	6840      	and      	r1, r0
    25ea:	3940      	cmpnei      	r1, 0
    25ec:	0ffd      	bf      	0x25e6	// 25e6 <ADC12_Configure_Mode+0x62>
    25ee:	07e4      	br      	0x25b6	// 25b6 <ADC12_Configure_Mode+0x32>
		ADC0->CR&=~ADC12_10BITor12BIT;
    25f0:	9600      	ld.w      	r0, (r6, 0x0)
    25f2:	9024      	ld.w      	r1, (r0, 0x10)
    25f4:	4121      	lsli      	r1, r1, 1
    25f6:	4921      	lsri      	r1, r1, 1
    25f8:	07ea      	br      	0x25cc	// 25cc <ADC12_Configure_Mode+0x48>
    25fa:	0000      	bkpt
    25fc:	20000054 	.long	0x20000054

Disassembly of section .text.ADC12_Configure_VREF_Selecte:

00002600 <ADC12_Configure_VREF_Selecte>:
//EntryParameter:NONE
//ReturnValue:None
/*************************************************************/ 
void ADC12_Configure_VREF_Selecte(ADC12_VREFP_VREFN_Selected_TypeDef ADC12_VREFP_X_VREFN_X )
{
	if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_VDD_VREFN_VSS)
    2600:	3840      	cmpnei      	r0, 0
    2602:	0808      	bt      	0x2612	// 2612 <ADC12_Configure_VREF_Selecte+0x12>
	{
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x00<<6);
    2604:	127c      	lrw      	r3, 0x20000054	// 2774 <ADC12_Configure_VREF_Selecte+0x174>
    2606:	123d      	lrw      	r1, 0x103c0	// 2778 <ADC12_Configure_VREF_Selecte+0x178>
    2608:	9340      	ld.w      	r2, (r3, 0x0)
    260a:	9264      	ld.w      	r3, (r2, 0x10)
    260c:	68c5      	andn      	r3, r1
		ADC0->CR=(ADC0->CR&0xfcfefc3f)|(0x0B<<6)|(0X01<<24)|(0X01<<25);	
	}
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_INTVREF1000_VREFN_EXIT)
	{
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;					
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x0C<<6)|(0X00<<16)|(0X02<<17);	
    260e:	b264      	st.w      	r3, (r2, 0x10)
	}
}
    2610:	783c      	jmp      	r15
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_EXIT_VREFN_VSS)
    2612:	3841      	cmpnei      	r0, 1
    2614:	0810      	bt      	0x2634	// 2634 <ADC12_Configure_VREF_Selecte+0x34>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;							
    2616:	127a      	lrw      	r3, 0x20000050	// 277c <ADC12_Configure_VREF_Selecte+0x17c>
    2618:	32f0      	movi      	r2, 240
    261a:	9320      	ld.w      	r1, (r3, 0x0)
    261c:	9160      	ld.w      	r3, (r1, 0x0)
    261e:	4244      	lsli      	r2, r2, 4
    2620:	68c9      	andn      	r3, r2
    2622:	3bab      	bseti      	r3, 11
    2624:	b160      	st.w      	r3, (r1, 0x0)
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x01<<6);
    2626:	1235      	lrw      	r1, 0x103c0	// 2778 <ADC12_Configure_VREF_Selecte+0x178>
    2628:	1273      	lrw      	r3, 0x20000054	// 2774 <ADC12_Configure_VREF_Selecte+0x174>
    262a:	9340      	ld.w      	r2, (r3, 0x0)
    262c:	9264      	ld.w      	r3, (r2, 0x10)
    262e:	68c5      	andn      	r3, r1
    2630:	3ba6      	bseti      	r3, 6
    2632:	07ee      	br      	0x260e	// 260e <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_FVR2048_VREFN_VSS)
    2634:	3842      	cmpnei      	r0, 2
    2636:	0811      	bt      	0x2658	// 2658 <ADC12_Configure_VREF_Selecte+0x58>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;							
    2638:	1271      	lrw      	r3, 0x20000050	// 277c <ADC12_Configure_VREF_Selecte+0x17c>
    263a:	32f0      	movi      	r2, 240
    263c:	9320      	ld.w      	r1, (r3, 0x0)
    263e:	9160      	ld.w      	r3, (r1, 0x0)
    2640:	4244      	lsli      	r2, r2, 4
    2642:	68c9      	andn      	r3, r2
    2644:	3bab      	bseti      	r3, 11
    2646:	b160      	st.w      	r3, (r1, 0x0)
		ADC0->CR=(ADC0->CR&0xfcfefc3f)|(0x02<<6)|(0X01<<24)|(0X00<<25);
    2648:	122e      	lrw      	r1, 0x30103c0	// 2780 <ADC12_Configure_VREF_Selecte+0x180>
    264a:	126b      	lrw      	r3, 0x20000054	// 2774 <ADC12_Configure_VREF_Selecte+0x174>
    264c:	9340      	ld.w      	r2, (r3, 0x0)
    264e:	9264      	ld.w      	r3, (r2, 0x10)
    2650:	68c5      	andn      	r3, r1
    2652:	3ba7      	bseti      	r3, 7
    2654:	3bb8      	bseti      	r3, 24
    2656:	07dc      	br      	0x260e	// 260e <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_FVR4096_VREFN_VSS)
    2658:	3843      	cmpnei      	r0, 3
    265a:	0811      	bt      	0x267c	// 267c <ADC12_Configure_VREF_Selecte+0x7c>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;							
    265c:	1268      	lrw      	r3, 0x20000050	// 277c <ADC12_Configure_VREF_Selecte+0x17c>
    265e:	32f0      	movi      	r2, 240
    2660:	9320      	ld.w      	r1, (r3, 0x0)
    2662:	9160      	ld.w      	r3, (r1, 0x0)
    2664:	4244      	lsli      	r2, r2, 4
    2666:	68c9      	andn      	r3, r2
    2668:	3bab      	bseti      	r3, 11
    266a:	b160      	st.w      	r3, (r1, 0x0)
		ADC0->CR=(ADC0->CR&0xfcfefc3f)|(0x03<<6)|(0X01<<24)|(0X01<<25);
    266c:	1225      	lrw      	r1, 0x30103c0	// 2780 <ADC12_Configure_VREF_Selecte+0x180>
    266e:	1262      	lrw      	r3, 0x20000054	// 2774 <ADC12_Configure_VREF_Selecte+0x174>
    2670:	9340      	ld.w      	r2, (r3, 0x0)
    2672:	9264      	ld.w      	r3, (r2, 0x10)
    2674:	68c5      	andn      	r3, r1
    2676:	1224      	lrw      	r1, 0x30000c0	// 2784 <ADC12_Configure_VREF_Selecte+0x184>
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x0C<<6)|(0X00<<16)|(0X02<<17);	
    2678:	6cc4      	or      	r3, r1
    267a:	07ca      	br      	0x260e	// 260e <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_INTVREF1000_VREFN_VSS)
    267c:	3845      	cmpnei      	r0, 5
    267e:	0809      	bt      	0x2690	// 2690 <ADC12_Configure_VREF_Selecte+0x90>
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x04<<6)|(0X00<<16)|(0X02<<17);
    2680:	117d      	lrw      	r3, 0x20000054	// 2774 <ADC12_Configure_VREF_Selecte+0x174>
    2682:	1222      	lrw      	r1, 0x503c0	// 2788 <ADC12_Configure_VREF_Selecte+0x188>
    2684:	9340      	ld.w      	r2, (r3, 0x0)
    2686:	9264      	ld.w      	r3, (r2, 0x10)
    2688:	68c5      	andn      	r3, r1
    268a:	3ba8      	bseti      	r3, 8
    268c:	3bb2      	bseti      	r3, 18
    268e:	07c0      	br      	0x260e	// 260e <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_VDD_VREFN_EXIT)
    2690:	3846      	cmpnei      	r0, 6
    2692:	0812      	bt      	0x26b6	// 26b6 <ADC12_Configure_VREF_Selecte+0xb6>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;	
    2694:	117a      	lrw      	r3, 0x20000050	// 277c <ADC12_Configure_VREF_Selecte+0x17c>
    2696:	32f0      	movi      	r2, 240
    2698:	9320      	ld.w      	r1, (r3, 0x0)
    269a:	9160      	ld.w      	r3, (r1, 0x0)
    269c:	4248      	lsli      	r2, r2, 8
    269e:	68c9      	andn      	r3, r2
    26a0:	32b0      	movi      	r2, 176
    26a2:	4248      	lsli      	r2, r2, 8
    26a4:	6cc8      	or      	r3, r2
    26a6:	b160      	st.w      	r3, (r1, 0x0)
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x08<<6);
    26a8:	1134      	lrw      	r1, 0x103c0	// 2778 <ADC12_Configure_VREF_Selecte+0x178>
    26aa:	1173      	lrw      	r3, 0x20000054	// 2774 <ADC12_Configure_VREF_Selecte+0x174>
    26ac:	9340      	ld.w      	r2, (r3, 0x0)
    26ae:	9264      	ld.w      	r3, (r2, 0x10)
    26b0:	68c5      	andn      	r3, r1
    26b2:	3ba9      	bseti      	r3, 9
    26b4:	07ad      	br      	0x260e	// 260e <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_EXIT_VREFN_EXIT)
    26b6:	3847      	cmpnei      	r0, 7
    26b8:	0819      	bt      	0x26ea	// 26ea <ADC12_Configure_VREF_Selecte+0xea>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;
    26ba:	1171      	lrw      	r3, 0x20000050	// 277c <ADC12_Configure_VREF_Selecte+0x17c>
    26bc:	31f0      	movi      	r1, 240
    26be:	9340      	ld.w      	r2, (r3, 0x0)
    26c0:	9260      	ld.w      	r3, (r2, 0x0)
    26c2:	4128      	lsli      	r1, r1, 8
    26c4:	68c5      	andn      	r3, r1
    26c6:	31b0      	movi      	r1, 176
    26c8:	4128      	lsli      	r1, r1, 8
    26ca:	6cc4      	or      	r3, r1
    26cc:	b260      	st.w      	r3, (r2, 0x0)
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;			
    26ce:	31f0      	movi      	r1, 240
    26d0:	9260      	ld.w      	r3, (r2, 0x0)
    26d2:	4124      	lsli      	r1, r1, 4
    26d4:	68c5      	andn      	r3, r1
    26d6:	3bab      	bseti      	r3, 11
    26d8:	b260      	st.w      	r3, (r2, 0x0)
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x09<<6);
    26da:	1128      	lrw      	r1, 0x103c0	// 2778 <ADC12_Configure_VREF_Selecte+0x178>
    26dc:	1166      	lrw      	r3, 0x20000054	// 2774 <ADC12_Configure_VREF_Selecte+0x174>
    26de:	9340      	ld.w      	r2, (r3, 0x0)
    26e0:	9264      	ld.w      	r3, (r2, 0x10)
    26e2:	68c5      	andn      	r3, r1
    26e4:	3ba6      	bseti      	r3, 6
    26e6:	3ba9      	bseti      	r3, 9
    26e8:	0793      	br      	0x260e	// 260e <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_FVR2048_VREFN_EXIT)
    26ea:	3848      	cmpnei      	r0, 8
    26ec:	0818      	bt      	0x271c	// 271c <ADC12_Configure_VREF_Selecte+0x11c>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;	
    26ee:	1164      	lrw      	r3, 0x20000050	// 277c <ADC12_Configure_VREF_Selecte+0x17c>
    26f0:	31f0      	movi      	r1, 240
    26f2:	9340      	ld.w      	r2, (r3, 0x0)
    26f4:	9260      	ld.w      	r3, (r2, 0x0)
    26f6:	4128      	lsli      	r1, r1, 8
    26f8:	68c5      	andn      	r3, r1
    26fa:	31b0      	movi      	r1, 176
    26fc:	4128      	lsli      	r1, r1, 8
    26fe:	6cc4      	or      	r3, r1
    2700:	b260      	st.w      	r3, (r2, 0x0)
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;
    2702:	31f0      	movi      	r1, 240
    2704:	9260      	ld.w      	r3, (r2, 0x0)
    2706:	4124      	lsli      	r1, r1, 4
    2708:	68c5      	andn      	r3, r1
    270a:	3bab      	bseti      	r3, 11
    270c:	b260      	st.w      	r3, (r2, 0x0)
		ADC0->CR=(ADC0->CR&0xfcfefc3f)|(0x0A<<6)|(0X01<<24)|(0X00<<25);			
    270e:	103d      	lrw      	r1, 0x30103c0	// 2780 <ADC12_Configure_VREF_Selecte+0x180>
    2710:	1079      	lrw      	r3, 0x20000054	// 2774 <ADC12_Configure_VREF_Selecte+0x174>
    2712:	9340      	ld.w      	r2, (r3, 0x0)
    2714:	9264      	ld.w      	r3, (r2, 0x10)
    2716:	68c5      	andn      	r3, r1
    2718:	103d      	lrw      	r1, 0x1000280	// 278c <ADC12_Configure_VREF_Selecte+0x18c>
    271a:	07af      	br      	0x2678	// 2678 <ADC12_Configure_VREF_Selecte+0x78>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_FVR4096_VREFN_EXIT)
    271c:	3849      	cmpnei      	r0, 9
    271e:	0818      	bt      	0x274e	// 274e <ADC12_Configure_VREF_Selecte+0x14e>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;	
    2720:	1077      	lrw      	r3, 0x20000050	// 277c <ADC12_Configure_VREF_Selecte+0x17c>
    2722:	31f0      	movi      	r1, 240
    2724:	9340      	ld.w      	r2, (r3, 0x0)
    2726:	9260      	ld.w      	r3, (r2, 0x0)
    2728:	4128      	lsli      	r1, r1, 8
    272a:	68c5      	andn      	r3, r1
    272c:	31b0      	movi      	r1, 176
    272e:	4128      	lsli      	r1, r1, 8
    2730:	6cc4      	or      	r3, r1
    2732:	b260      	st.w      	r3, (r2, 0x0)
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;
    2734:	31f0      	movi      	r1, 240
    2736:	9260      	ld.w      	r3, (r2, 0x0)
    2738:	4124      	lsli      	r1, r1, 4
    273a:	68c5      	andn      	r3, r1
    273c:	3bab      	bseti      	r3, 11
    273e:	b260      	st.w      	r3, (r2, 0x0)
		ADC0->CR=(ADC0->CR&0xfcfefc3f)|(0x0B<<6)|(0X01<<24)|(0X01<<25);	
    2740:	1030      	lrw      	r1, 0x30103c0	// 2780 <ADC12_Configure_VREF_Selecte+0x180>
    2742:	106d      	lrw      	r3, 0x20000054	// 2774 <ADC12_Configure_VREF_Selecte+0x174>
    2744:	9340      	ld.w      	r2, (r3, 0x0)
    2746:	9264      	ld.w      	r3, (r2, 0x10)
    2748:	68c5      	andn      	r3, r1
    274a:	1032      	lrw      	r1, 0x30002c0	// 2790 <ADC12_Configure_VREF_Selecte+0x190>
    274c:	0796      	br      	0x2678	// 2678 <ADC12_Configure_VREF_Selecte+0x78>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_INTVREF1000_VREFN_EXIT)
    274e:	384b      	cmpnei      	r0, 11
    2750:	0b60      	bt      	0x2610	// 2610 <ADC12_Configure_VREF_Selecte+0x10>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;					
    2752:	106b      	lrw      	r3, 0x20000050	// 277c <ADC12_Configure_VREF_Selecte+0x17c>
    2754:	32f0      	movi      	r2, 240
    2756:	9320      	ld.w      	r1, (r3, 0x0)
    2758:	9160      	ld.w      	r3, (r1, 0x0)
    275a:	4248      	lsli      	r2, r2, 8
    275c:	68c9      	andn      	r3, r2
    275e:	32b0      	movi      	r2, 176
    2760:	4248      	lsli      	r2, r2, 8
    2762:	6cc8      	or      	r3, r2
    2764:	b160      	st.w      	r3, (r1, 0x0)
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x0C<<6)|(0X00<<16)|(0X02<<17);	
    2766:	1029      	lrw      	r1, 0x503c0	// 2788 <ADC12_Configure_VREF_Selecte+0x188>
    2768:	1063      	lrw      	r3, 0x20000054	// 2774 <ADC12_Configure_VREF_Selecte+0x174>
    276a:	9340      	ld.w      	r2, (r3, 0x0)
    276c:	9264      	ld.w      	r3, (r2, 0x10)
    276e:	68c5      	andn      	r3, r1
    2770:	1029      	lrw      	r1, 0x40300	// 2794 <ADC12_Configure_VREF_Selecte+0x194>
    2772:	0783      	br      	0x2678	// 2678 <ADC12_Configure_VREF_Selecte+0x78>
    2774:	20000054 	.long	0x20000054
    2778:	000103c0 	.long	0x000103c0
    277c:	20000050 	.long	0x20000050
    2780:	030103c0 	.long	0x030103c0
    2784:	030000c0 	.long	0x030000c0
    2788:	000503c0 	.long	0x000503c0
    278c:	01000280 	.long	0x01000280
    2790:	030002c0 	.long	0x030002c0
    2794:	00040300 	.long	0x00040300

Disassembly of section .text.ADC12_ConversionChannel_Config:

00002798 <ADC12_ConversionChannel_Config>:
//ADC12_ADCINX:ADC12_ADCIN0~ADC12_ADCIN17,ADC12_INTVREF,ADC12_DIV4_VDD,ADC12_VSS
//ReturnValue:NONE
/*************************************************************/ 
void ADC12_ConversionChannel_Config(ADC12_InputSet_TypeDef ADC12_ADCINX ,
						ADC12_CV_RepeatNum_TypeDef CV_RepeatTime, ADC12_Control_TypeDef AVG_Set, U8_T SEQx)
{
    2798:	14d4      	push      	r4-r7, r15
    279a:	1421      	subi      	r14, r14, 4
    279c:	b840      	st.w      	r2, (r14, 0x0)
    279e:	6d43      	mov      	r5, r0
	U8_T i;
	for(i=0;i<15;i++)
	{
		ADC0->SEQ[i] &=~(0x01<<7);
    27a0:	125b      	lrw      	r2, 0x20000054	// 290c <ADC12_ConversionChannel_Config+0x174>
    27a2:	92c0      	ld.w      	r6, (r2, 0x0)
    27a4:	3200      	movi      	r2, 0
    27a6:	4202      	lsli      	r0, r2, 2
    27a8:	6018      	addu      	r0, r6
    27aa:	908c      	ld.w      	r4, (r0, 0x30)
    27ac:	2200      	addi      	r2, 1
    27ae:	3c87      	bclri      	r4, 7
	for(i=0;i<15;i++)
    27b0:	3a4f      	cmpnei      	r2, 15
		ADC0->SEQ[i] &=~(0x01<<7);
    27b2:	b08c      	st.w      	r4, (r0, 0x30)
	for(i=0;i<15;i++)
    27b4:	0bf9      	bt      	0x27a6	// 27a6 <ADC12_ConversionChannel_Config+0xe>
	}
	switch(ADC12_ADCINX)
    27b6:	3d0f      	cmphsi      	r5, 16
    27b8:	0825      	bt      	0x2802	// 2802 <ADC12_ConversionChannel_Config+0x6a>
    27ba:	6c17      	mov      	r0, r5
    27bc:	1255      	lrw      	r2, 0x20000050	// 2910 <ADC12_ConversionChannel_Config+0x178>
    27be:	1296      	lrw      	r4, 0x2000004c	// 2914 <ADC12_ConversionChannel_Config+0x17c>
    27c0:	e3fff29e 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    27c4:	322c1408 	.long	0x322c1408
    27c8:	4d474039 	.long	0x4d474039
    27cc:	756d6559 	.long	0x756d6559
    27d0:	9990877e 	.long	0x9990877e
	{
		case 0:	
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC0 PB0.1
    27d4:	9240      	ld.w      	r2, (r2, 0x0)
    27d6:	9200      	ld.w      	r0, (r2, 0x0)
    27d8:	b200      	st.w      	r0, (r2, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
    27da:	9201      	ld.w      	r0, (r2, 0x4)
    27dc:	b201      	st.w      	r0, (r2, 0x4)
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFF0F)  | 0x00000010;			
    27de:	9400      	ld.w      	r0, (r4, 0x0)
    27e0:	9040      	ld.w      	r2, (r0, 0x0)
    27e2:	34f0      	movi      	r4, 240
    27e4:	6891      	andn      	r2, r4
    27e6:	3aa4      	bseti      	r2, 4
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFFF)  | 0x00000000;		
			break;
		case 15:
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC15 PB0.0
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFF0)  | 0x00000001;		
    27e8:	b040      	st.w      	r2, (r0, 0x0)
			break;
    27ea:	040c      	br      	0x2802	// 2802 <ADC12_ConversionChannel_Config+0x6a>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFF0)  | 0x00000001;							//ADC1 PA0.0
    27ec:	9200      	ld.w      	r0, (r2, 0x0)
    27ee:	9040      	ld.w      	r2, (r0, 0x0)
    27f0:	370f      	movi      	r7, 15
    27f2:	689d      	andn      	r2, r7
    27f4:	3aa0      	bseti      	r2, 0
			GPIOA0->CONLR = (GPIOA0->CONLR&0X0FFFFFFF)  | 0x10000000;							//ADC6 PA0.7
    27f6:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
    27f8:	9041      	ld.w      	r2, (r0, 0x4)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)  | 0x00100000;	
    27fa:	b041      	st.w      	r2, (r0, 0x4)
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFFF)  | 0x00000000;		
    27fc:	9440      	ld.w      	r2, (r4, 0x0)
    27fe:	9200      	ld.w      	r0, (r2, 0x0)
    2800:	b200      	st.w      	r0, (r2, 0x0)
    2802:	4362      	lsli      	r3, r3, 2
    2804:	618c      	addu      	r6, r3
		//case 27: break;
		case 0x1Cul: break;
		case 0x1Dul: break;
		case 0x1Eul: break;
	}
	ADC0->SEQ[SEQx] = ADC0->SEQ[SEQx] & 0;
    2806:	966c      	ld.w      	r3, (r6, 0x30)
    2808:	3300      	movi      	r3, 0
    280a:	b66c      	st.w      	r3, (r6, 0x30)
	ADC0->SEQ[SEQx] = ADC0->SEQ[SEQx] | ADC12_ADCINX  | CV_RepeatTime | AVG_Set;
    280c:	9860      	ld.w      	r3, (r14, 0x0)
    280e:	6c4c      	or      	r1, r3
    2810:	964c      	ld.w      	r2, (r6, 0x30)
    2812:	6d44      	or      	r5, r1
    2814:	6d48      	or      	r5, r2
    2816:	b6ac      	st.w      	r5, (r6, 0x30)
}
    2818:	1401      	addi      	r14, r14, 4
    281a:	1494      	pop      	r4-r7, r15
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFF0F)  | 0x00000010;							//ADC2 PA0.1
    281c:	9200      	ld.w      	r0, (r2, 0x0)
    281e:	9040      	ld.w      	r2, (r0, 0x0)
    2820:	37f0      	movi      	r7, 240
    2822:	689d      	andn      	r2, r7
    2824:	3aa4      	bseti      	r2, 4
    2826:	07e8      	br      	0x27f6	// 27f6 <ADC12_ConversionChannel_Config+0x5e>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x00001000;							//ADC3 PA0.3
    2828:	9200      	ld.w      	r0, (r2, 0x0)
    282a:	37f0      	movi      	r7, 240
    282c:	9040      	ld.w      	r2, (r0, 0x0)
    282e:	47e8      	lsli      	r7, r7, 8
    2830:	689d      	andn      	r2, r7
    2832:	3aac      	bseti      	r2, 12
    2834:	07e1      	br      	0x27f6	// 27f6 <ADC12_ConversionChannel_Config+0x5e>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFF0FFFFF)  | 0x00100000;							//ADC4 PA0.5
    2836:	9200      	ld.w      	r0, (r2, 0x0)
    2838:	37f0      	movi      	r7, 240
    283a:	9040      	ld.w      	r2, (r0, 0x0)
    283c:	47f0      	lsli      	r7, r7, 16
    283e:	689d      	andn      	r2, r7
    2840:	3ab4      	bseti      	r2, 20
    2842:	07da      	br      	0x27f6	// 27f6 <ADC12_ConversionChannel_Config+0x5e>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XF0FFFFFF)  | 0x01000000;							//ADC5 PA0.6
    2844:	9200      	ld.w      	r0, (r2, 0x0)
    2846:	37f0      	movi      	r7, 240
    2848:	9040      	ld.w      	r2, (r0, 0x0)
    284a:	47f4      	lsli      	r7, r7, 20
    284c:	689d      	andn      	r2, r7
    284e:	3ab8      	bseti      	r2, 24
    2850:	07d3      	br      	0x27f6	// 27f6 <ADC12_ConversionChannel_Config+0x5e>
			GPIOA0->CONLR = (GPIOA0->CONLR&0X0FFFFFFF)  | 0x10000000;							//ADC6 PA0.7
    2852:	9200      	ld.w      	r0, (r2, 0x0)
    2854:	9040      	ld.w      	r2, (r0, 0x0)
    2856:	4244      	lsli      	r2, r2, 4
    2858:	4a44      	lsri      	r2, r2, 4
    285a:	3abc      	bseti      	r2, 28
    285c:	07cd      	br      	0x27f6	// 27f6 <ADC12_ConversionChannel_Config+0x5e>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC7 PB0.2
    285e:	9240      	ld.w      	r2, (r2, 0x0)
    2860:	9200      	ld.w      	r0, (r2, 0x0)
    2862:	b200      	st.w      	r0, (r2, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
    2864:	9201      	ld.w      	r0, (r2, 0x4)
    2866:	b201      	st.w      	r0, (r2, 0x4)
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFF0FF)  | 0x00000100;
    2868:	9400      	ld.w      	r0, (r4, 0x0)
    286a:	34f0      	movi      	r4, 240
    286c:	9040      	ld.w      	r2, (r0, 0x0)
    286e:	4484      	lsli      	r4, r4, 4
    2870:	6891      	andn      	r2, r4
    2872:	3aa8      	bseti      	r2, 8
    2874:	07ba      	br      	0x27e8	// 27e8 <ADC12_ConversionChannel_Config+0x50>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC8 PB0.3
    2876:	9240      	ld.w      	r2, (r2, 0x0)
    2878:	9200      	ld.w      	r0, (r2, 0x0)
    287a:	b200      	st.w      	r0, (r2, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
    287c:	9201      	ld.w      	r0, (r2, 0x4)
    287e:	b201      	st.w      	r0, (r2, 0x4)
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFF0FFF)  | 0x00001000;
    2880:	9400      	ld.w      	r0, (r4, 0x0)
    2882:	34f0      	movi      	r4, 240
    2884:	9040      	ld.w      	r2, (r0, 0x0)
    2886:	4488      	lsli      	r4, r4, 8
    2888:	6891      	andn      	r2, r4
    288a:	3aac      	bseti      	r2, 12
    288c:	07ae      	br      	0x27e8	// 27e8 <ADC12_ConversionChannel_Config+0x50>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC9 PA0.8
    288e:	9200      	ld.w      	r0, (r2, 0x0)
    2890:	9040      	ld.w      	r2, (r0, 0x0)
    2892:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFF0)  | 0x00000001;	
    2894:	9041      	ld.w      	r2, (r0, 0x4)
    2896:	370f      	movi      	r7, 15
    2898:	689d      	andn      	r2, r7
    289a:	3aa0      	bseti      	r2, 0
    289c:	07af      	br      	0x27fa	// 27fa <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC10 PA0.9
    289e:	9200      	ld.w      	r0, (r2, 0x0)
    28a0:	9040      	ld.w      	r2, (r0, 0x0)
    28a2:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFF0F)  | 0x00000010;	
    28a4:	9041      	ld.w      	r2, (r0, 0x4)
    28a6:	37f0      	movi      	r7, 240
    28a8:	689d      	andn      	r2, r7
    28aa:	3aa4      	bseti      	r2, 4
    28ac:	07a7      	br      	0x27fa	// 27fa <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC11 PA0.10
    28ae:	9200      	ld.w      	r0, (r2, 0x0)
    28b0:	9040      	ld.w      	r2, (r0, 0x0)
    28b2:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFF0FF)  | 0x00000100;	
    28b4:	37f0      	movi      	r7, 240
    28b6:	9041      	ld.w      	r2, (r0, 0x4)
    28b8:	47e4      	lsli      	r7, r7, 4
    28ba:	689d      	andn      	r2, r7
    28bc:	3aa8      	bseti      	r2, 8
    28be:	079e      	br      	0x27fa	// 27fa <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC12 PA0.11
    28c0:	9200      	ld.w      	r0, (r2, 0x0)
    28c2:	9040      	ld.w      	r2, (r0, 0x0)
    28c4:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFF0FFF)  | 0x00001000;	
    28c6:	37f0      	movi      	r7, 240
    28c8:	9041      	ld.w      	r2, (r0, 0x4)
    28ca:	47e8      	lsli      	r7, r7, 8
    28cc:	689d      	andn      	r2, r7
    28ce:	3aac      	bseti      	r2, 12
    28d0:	0795      	br      	0x27fa	// 27fa <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC13 PA0.12
    28d2:	9200      	ld.w      	r0, (r2, 0x0)
    28d4:	9040      	ld.w      	r2, (r0, 0x0)
    28d6:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFF0FFFF)  | 0x00010000;	
    28d8:	37f0      	movi      	r7, 240
    28da:	9041      	ld.w      	r2, (r0, 0x4)
    28dc:	47ec      	lsli      	r7, r7, 12
    28de:	689d      	andn      	r2, r7
    28e0:	3ab0      	bseti      	r2, 16
    28e2:	078c      	br      	0x27fa	// 27fa <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC14 PA0.13	
    28e4:	9200      	ld.w      	r0, (r2, 0x0)
    28e6:	9040      	ld.w      	r2, (r0, 0x0)
    28e8:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)  | 0x00100000;	
    28ea:	37f0      	movi      	r7, 240
    28ec:	9041      	ld.w      	r2, (r0, 0x4)
    28ee:	47f0      	lsli      	r7, r7, 16
    28f0:	689d      	andn      	r2, r7
    28f2:	3ab4      	bseti      	r2, 20
    28f4:	0783      	br      	0x27fa	// 27fa <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC15 PB0.0
    28f6:	9240      	ld.w      	r2, (r2, 0x0)
    28f8:	9200      	ld.w      	r0, (r2, 0x0)
    28fa:	b200      	st.w      	r0, (r2, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
    28fc:	9201      	ld.w      	r0, (r2, 0x4)
    28fe:	b201      	st.w      	r0, (r2, 0x4)
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFF0)  | 0x00000001;		
    2900:	9400      	ld.w      	r0, (r4, 0x0)
    2902:	9040      	ld.w      	r2, (r0, 0x0)
    2904:	340f      	movi      	r4, 15
    2906:	6891      	andn      	r2, r4
    2908:	3aa0      	bseti      	r2, 0
    290a:	076f      	br      	0x27e8	// 27e8 <ADC12_ConversionChannel_Config+0x50>
    290c:	20000054 	.long	0x20000054
    2910:	20000050 	.long	0x20000050
    2914:	2000004c 	.long	0x2000004c

Disassembly of section .text.delay_nms:

00002918 <delay_nms>:
//software delay
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/	
void delay_nms(unsigned int t)
{
    2918:	14d0      	push      	r15
    291a:	1423      	subi      	r14, r14, 12
    volatile unsigned int i,j ,k=0;
    j = 50* t;
    291c:	3232      	movi      	r2, 50
    volatile unsigned int i,j ,k=0;
    291e:	3300      	movi      	r3, 0
    j = 50* t;
    2920:	7c08      	mult      	r0, r2
    volatile unsigned int i,j ,k=0;
    2922:	b862      	st.w      	r3, (r14, 0x8)
    j = 50* t;
    2924:	b801      	st.w      	r0, (r14, 0x4)
    for ( i = 0; i < j; i++ )
    2926:	b860      	st.w      	r3, (r14, 0x0)
    2928:	9840      	ld.w      	r2, (r14, 0x0)
    292a:	9861      	ld.w      	r3, (r14, 0x4)
    292c:	64c8      	cmphs      	r2, r3
    292e:	0c03      	bf      	0x2934	// 2934 <delay_nms+0x1c>
    {
        k++;
		SYSCON_IWDCNT_Reload(); 
    }
}
    2930:	1403      	addi      	r14, r14, 12
    2932:	1490      	pop      	r15
        k++;
    2934:	9862      	ld.w      	r3, (r14, 0x8)
    2936:	2300      	addi      	r3, 1
    2938:	b862      	st.w      	r3, (r14, 0x8)
		SYSCON_IWDCNT_Reload(); 
    293a:	e3fff9d3 	bsr      	0x1ce0	// 1ce0 <SYSCON_IWDCNT_Reload>
    for ( i = 0; i < j; i++ )
    293e:	9860      	ld.w      	r3, (r14, 0x0)
    2940:	2300      	addi      	r3, 1
    2942:	07f2      	br      	0x2926	// 2926 <delay_nms+0xe>

Disassembly of section .text.EPT0_CONFIG:

00002944 <EPT0_CONFIG>:
//ETP0 Functions
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/ 
void EPT0_CONFIG(void)
{
    2944:	14d3      	push      	r4-r6, r15
    2946:	1429      	subi      	r14, r14, 36
	EPT_Software_Prg();								//EPT software reset
    2948:	e3fffbb2 	bsr      	0x20ac	// 20ac <EPT_Software_Prg>
//------------  EPT GPIO Setting  --------------------------------/
	EPT_IO_SET(EPT_IO_CHAX, IO_NUM_PA15);			// AX channel selection中转站
    294c:	3112      	movi      	r1, 18
    294e:	3000      	movi      	r0, 0
    2950:	e3fffbd2 	bsr      	0x20f4	// 20f4 <EPT_IO_SET>
	//EPT_IO_SET(EPT_IO_CHAY,IO_NUM_PB03);			//AY channel selection
	EPT_IO_SET(EPT_IO_CHBX,IO_NUM_PA14);			//BX channel selection
    2954:	3118      	movi      	r1, 24
    2956:	3002      	movi      	r0, 2
    2958:	e3fffbce 	bsr      	0x20f4	// 20f4 <EPT_IO_SET>
	//EPT_IO_SET(EPT_IO_CHBY,IO_NUM_PB04);			//BY channel selection
	EPT_IO_SET(EPT_IO_CHCX,IO_NUM_PB05);			//CX channel selection
    295c:	3114      	movi      	r1, 20
    295e:	3004      	movi      	r0, 4
	//EPT_IO_SET(EPT_IO_CHD,IO_NUM_PA08);			//D channel selection
//------------  EPT Control  --------------------------------/
	EPT_PWM_Config(EPT_Selecte_PCLK,EPT_CNTMD_increase,EPT_OPM_Continue,0);//PCLK as clock，increasing mode,continuous mode,TCLK=PCLK/(0+1) 
	//EPT_Tevent_Selecte(0x00,0x00);				//T1 source selection SYNCIN4,T2 source selectionSYNCIN5
	//EPT_SYNCR_Config(EPT_Triggle_Continue,EPT_SYNCUSR0_REARMTrig_DIS,EPT_TRGSRC0_ExtSync_SYNCUSR0,EPT_TRGSRC1_ExtSync_SYNCUSR4,0x30);//enable SYNCUSR4 SYNCUSR5 as trigger event,continuous mode
	EPT_PWMX_Output_Control(EPT_PWMA,EPT_CA_Selecte_CMPA,EPT_CB_Selecte_CMPA,EPT_PWM_ZRO_Event_OutHigh,EPT_PWM_PRD_Event_Nochange,EPT_PWM_CAU_Event_OutLow,EPT_PWM_CAD_Event_OutLow,
    2960:	3400      	movi      	r4, 0
	EPT_IO_SET(EPT_IO_CHCX,IO_NUM_PB05);			//CX channel selection
    2962:	e3fffbc9 	bsr      	0x20f4	// 20f4 <EPT_IO_SET>
	EPT_PWMX_Output_Control(EPT_PWMA,EPT_CA_Selecte_CMPA,EPT_CB_Selecte_CMPA,EPT_PWM_ZRO_Event_OutHigh,EPT_PWM_PRD_Event_Nochange,EPT_PWM_CAU_Event_OutLow,EPT_PWM_CAD_Event_OutLow,
    2966:	3640      	movi      	r6, 64
    2968:	3510      	movi      	r5, 16
	EPT_PWM_Config(EPT_Selecte_PCLK,EPT_CNTMD_increase,EPT_OPM_Continue,0);//PCLK as clock，increasing mode,continuous mode,TCLK=PCLK/(0+1) 
    296a:	3300      	movi      	r3, 0
    296c:	3200      	movi      	r2, 0
    296e:	3100      	movi      	r1, 0
    2970:	3000      	movi      	r0, 0
    2972:	e3fffcdd 	bsr      	0x232c	// 232c <EPT_PWM_Config>
	EPT_PWMX_Output_Control(EPT_PWMA,EPT_CA_Selecte_CMPA,EPT_CB_Selecte_CMPA,EPT_PWM_ZRO_Event_OutHigh,EPT_PWM_PRD_Event_Nochange,EPT_PWM_CAU_Event_OutLow,EPT_PWM_CAD_Event_OutLow,
    2976:	b888      	st.w      	r4, (r14, 0x20)
    2978:	b887      	st.w      	r4, (r14, 0x1c)
    297a:	b886      	st.w      	r4, (r14, 0x18)
    297c:	b885      	st.w      	r4, (r14, 0x14)
    297e:	b884      	st.w      	r4, (r14, 0x10)
    2980:	b883      	st.w      	r4, (r14, 0xc)
    2982:	b8c2      	st.w      	r6, (r14, 0x8)
    2984:	b8a1      	st.w      	r5, (r14, 0x4)
    2986:	b880      	st.w      	r4, (r14, 0x0)
    2988:	3302      	movi      	r3, 2
    298a:	3200      	movi      	r2, 0
    298c:	3100      	movi      	r1, 0
    298e:	3000      	movi      	r0, 0
    2990:	e3fffd22 	bsr      	0x23d4	// 23d4 <EPT_PWMX_Output_Control>
							EPT_PWM_CBU_Event_Nochange,EPT_PWM_CBD_Event_Nochange,EPT_PWM_T1U_Event_Nochange,EPT_PWM_T1D_Event_Nochange,EPT_PWM_T2U_Event_Nochange,EPT_PWM_T2D_Event_Nochange);
	EPT_PWMX_Output_Control(EPT_PWMB,EPT_CA_Selecte_CMPB,EPT_CB_Selecte_CMPB,EPT_PWM_ZRO_Event_OutHigh,EPT_PWM_PRD_Event_Nochange,EPT_PWM_CAU_Event_OutLow,EPT_PWM_CAD_Event_OutLow,
    2994:	3280      	movi      	r2, 128
    2996:	3180      	movi      	r1, 128
    2998:	424f      	lsli      	r2, r2, 15
    299a:	412d      	lsli      	r1, r1, 13
    299c:	b888      	st.w      	r4, (r14, 0x20)
    299e:	b887      	st.w      	r4, (r14, 0x1c)
    29a0:	b886      	st.w      	r4, (r14, 0x18)
    29a2:	b885      	st.w      	r4, (r14, 0x14)
    29a4:	b884      	st.w      	r4, (r14, 0x10)
    29a6:	b883      	st.w      	r4, (r14, 0xc)
    29a8:	b8c2      	st.w      	r6, (r14, 0x8)
    29aa:	b8a1      	st.w      	r5, (r14, 0x4)
    29ac:	b880      	st.w      	r4, (r14, 0x0)
    29ae:	3302      	movi      	r3, 2
    29b0:	3001      	movi      	r0, 1
    29b2:	e3fffd11 	bsr      	0x23d4	// 23d4 <EPT_PWMX_Output_Control>
							EPT_PWM_CBU_Event_Nochange,EPT_PWM_CBD_Event_Nochange,EPT_PWM_T1U_Event_Nochange,EPT_PWM_T1D_Event_Nochange,EPT_PWM_T2U_Event_Nochange,EPT_PWM_T2D_Event_Nochange);						
	EPT_PWMX_Output_Control(EPT_PWMC,EPT_CA_Selecte_CMPC,EPT_CB_Selecte_CMPC,EPT_PWM_ZRO_Event_OutHigh,EPT_PWM_PRD_Event_Nochange,EPT_PWM_CAU_Event_OutLow,EPT_PWM_CAD_Event_OutLow,
    29b6:	3280      	movi      	r2, 128
    29b8:	3180      	movi      	r1, 128
    29ba:	4250      	lsli      	r2, r2, 16
    29bc:	412e      	lsli      	r1, r1, 14
    29be:	b888      	st.w      	r4, (r14, 0x20)
    29c0:	b887      	st.w      	r4, (r14, 0x1c)
    29c2:	b886      	st.w      	r4, (r14, 0x18)
    29c4:	b885      	st.w      	r4, (r14, 0x14)
    29c6:	b884      	st.w      	r4, (r14, 0x10)
    29c8:	b883      	st.w      	r4, (r14, 0xc)
    29ca:	b8c2      	st.w      	r6, (r14, 0x8)
    29cc:	b8a1      	st.w      	r5, (r14, 0x4)
    29ce:	b880      	st.w      	r4, (r14, 0x0)
    29d0:	3302      	movi      	r3, 2
    29d2:	3002      	movi      	r0, 2
    29d4:	e3fffd00 	bsr      	0x23d4	// 23d4 <EPT_PWMX_Output_Control>
							EPT_PWM_CBU_Event_Nochange,EPT_PWM_CBD_Event_Nochange,EPT_PWM_T1U_Event_Nochange,EPT_PWM_T1D_Event_Nochange,EPT_PWM_T2U_Event_Nochange,EPT_PWM_T2D_Event_Nochange);	
	//EPT_PWMX_Output_Control(EPT_PWMD,EPT_CA_Selecte_CMPD,EPT_CB_Selecte_CMPD,EPT_PWM_ZRO_Event_OutHigh,EPT_PWM_PRD_Event_Nochange,EPT_PWM_CAU_Event_OutLow,EPT_PWM_CAD_Event_OutLow,
	//						EPT_PWM_CBU_Event_Nochange,EPT_PWM_CBD_Event_Nochange,EPT_PWM_T1U_Event_Nochange,EPT_PWM_T1D_Event_Nochange,EPT_PWM_T2U_Event_Nochange,EPT_PWM_T2D_Event_Nochange);		
	EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800,0,0,0,0);//PRDR=2400,CMPA=1200,CMPB=600,CMPC=2400,CMPD=0	
    29d8:	3096      	movi      	r0, 150
    29da:	3300      	movi      	r3, 0
    29dc:	b880      	st.w      	r4, (r14, 0x0)
    29de:	3200      	movi      	r2, 0
    29e0:	3100      	movi      	r1, 0
    29e2:	4005      	lsli      	r0, r0, 5
    29e4:	e3fffd64 	bsr      	0x24ac	// 24ac <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>
	EPT_DB_CLK_Config(0,24,24);//Fdbclk=Fhclk/(0+1)，DTR=24clk，DTF=24clk
    29e8:	3218      	movi      	r2, 24
    29ea:	3118      	movi      	r1, 24
    29ec:	3000      	movi      	r0, 0
    29ee:	e3fffceb 	bsr      	0x23c4	// 23c4 <EPT_DB_CLK_Config>
	EPT_DBCR_Config(EPT_CHA_Selecte,EPT_CHAINSEL_PWMA_RISE_FALL,EPT_CHA_OUTSEL_EnRise_EnFall,EPT_PB_OUT_Reverse,EPT_PAtoCHX_PBtoCHY);//PWMA Complementary,CHX rising edge,CHY falling edge		
    29f2:	b880      	st.w      	r4, (r14, 0x0)
    29f4:	3302      	movi      	r3, 2
    29f6:	3203      	movi      	r2, 3
    29f8:	3100      	movi      	r1, 0
    29fa:	3000      	movi      	r0, 0
    29fc:	e3fffcb4 	bsr      	0x2364	// 2364 <EPT_DBCR_Config>
	EPT_DBCR_Config(EPT_CHB_Selecte,EPT_CHBINSEL_PWMB_RISE_FALL,EPT_CHB_OUTSEL_EnRise_EnFall,EPT_PB_OUT_Reverse,EPT_PAtoCHX_PBtoCHY);//PWMB Complementary,CHX rising edge,CHY falling edge		
    2a00:	32c0      	movi      	r2, 192
    2a02:	b880      	st.w      	r4, (r14, 0x0)
    2a04:	3302      	movi      	r3, 2
    2a06:	4242      	lsli      	r2, r2, 2
    2a08:	3100      	movi      	r1, 0
    2a0a:	3001      	movi      	r0, 1
    2a0c:	e3fffcac 	bsr      	0x2364	// 2364 <EPT_DBCR_Config>
	EPT_DBCR_Config(EPT_CHC_Selecte,EPT_CHCINSEL_PWMC_RISE_FALL,EPT_CHC_OUTSEL_EnRise_EnFall,EPT_PB_OUT_Reverse,EPT_PAtoCHX_PBtoCHY);//PWMC Complementary,CHX rising edge,CHY falling edge
    2a10:	32c0      	movi      	r2, 192
    2a12:	424a      	lsli      	r2, r2, 10
    2a14:	3302      	movi      	r3, 2
    2a16:	3100      	movi      	r1, 0
    2a18:	3002      	movi      	r0, 2
    2a1a:	b880      	st.w      	r4, (r14, 0x0)
    2a1c:	e3fffca4 	bsr      	0x2364	// 2364 <EPT_DBCR_Config>
	//EPT_Int_Enable(EPT_CDU);//Up-Counting phase CNT = CMPD interrupt request raw status
	//EPT_Int_Enable(EPT_CDD);//Down-Counting phase CNT = CMPD interrupt request raw status
	//EPT_Int_Enable(EPT_PEND);//End of cycle interrupt request raw status
	//EPT_Vector_Int_Enable();
//------------  EPT start  --------------------------------/	
	EPT_Start();
    2a20:	e3fffb56 	bsr      	0x20cc	// 20cc <EPT_Start>
	EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(0XFFFF,0,0,0,0);
	EPT_Int_Enable(EPT_CAP_LD0);//Capture Load to CMPA interrupt request raw status
	EPT_Int_Enable(EPT_CAP_LD1);//Capture Load to CMPB interrupt request raw status
	EPT_Vector_Int_Enable();
	EPT_Start();*/
}
    2a24:	1409      	addi      	r14, r14, 36
    2a26:	1493      	pop      	r4-r6, r15

Disassembly of section .text.BT_CONFIG:

00002a28 <BT_CONFIG>:
//BT Initial
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/	
void BT_CONFIG(void)
{
    2a28:	14d2      	push      	r4-r5, r15
    2a2a:	1424      	subi      	r14, r14, 16
	BT_DeInit(BT0); //过零检测
    2a2c:	11a4      	lrw      	r5, 0x20000010	// 2abc <BT_CONFIG+0x94>
	// BT_IO_Init(BT0_PA15);
	BT_Configure(BT0,BTCLK_EN,47,BT_IMMEDIATE,BT_CONTINUOUS,BT_PCLKDIV);//TCLK=PCLK/(0+1)
    2a2e:	3400      	movi      	r4, 0
	BT_DeInit(BT0); //过零检测
    2a30:	9500      	ld.w      	r0, (r5, 0x0)
    2a32:	e3fffa69 	bsr      	0x1f04	// 1f04 <BT_DeInit>
	BT_Configure(BT0,BTCLK_EN,47,BT_IMMEDIATE,BT_CONTINUOUS,BT_PCLKDIV);//TCLK=PCLK/(0+1)
    2a36:	b881      	st.w      	r4, (r14, 0x4)
    2a38:	b880      	st.w      	r4, (r14, 0x0)
    2a3a:	9500      	ld.w      	r0, (r5, 0x0)
    2a3c:	3308      	movi      	r3, 8
    2a3e:	322f      	movi      	r2, 47
    2a40:	3101      	movi      	r1, 1
    2a42:	e3fffa73 	bsr      	0x1f28	// 1f28 <BT_Configure>
	BT_ControlSet_Configure(BT0,BT_START_HIGH,BT_IDLE_LOW,BT_SYNC_DIS,BT_SYNCMD_DIS,BT_OSTMDX_ONCE,BT_AREARM_DIS,BT_CNTRLD_EN);
    2a46:	3380      	movi      	r3, 128
    2a48:	4363      	lsli      	r3, r3, 3
    2a4a:	b861      	st.w      	r3, (r14, 0x4)
    2a4c:	b883      	st.w      	r4, (r14, 0xc)
    2a4e:	b882      	st.w      	r4, (r14, 0x8)
    2a50:	b880      	st.w      	r4, (r14, 0x0)
    2a52:	3300      	movi      	r3, 0
    2a54:	9500      	ld.w      	r0, (r5, 0x0)
    2a56:	3200      	movi      	r2, 0
    2a58:	3180      	movi      	r1, 128
    2a5a:	e3fffa73 	bsr      	0x1f40	// 1f40 <BT_ControlSet_Configure>
	//BT_ControlSet_Configure(BT0,BT_START_HIGH,BT_IDLE_LOW,BT_SYNC_EN,BT_SYNCMD_DIS,BT_OSTMDX_ONCE,BT_AREARM_DIS,BT_CNTRLD_EN);
	//BT_Trigger_Configure(BT0,BT_TRGSRC_PEND,BT_TRGOE_EN);
	BT_Period_CMP_Write(BT0,50,500);
    2a5e:	32fa      	movi      	r2, 250
    2a60:	4241      	lsli      	r2, r2, 1
    2a62:	3132      	movi      	r1, 50
    2a64:	9500      	ld.w      	r0, (r5, 0x0)
    2a66:	e3fffa83 	bsr      	0x1f6c	// 1f6c <BT_Period_CMP_Write>
	BT_Start(BT0);
    2a6a:	9500      	ld.w      	r0, (r5, 0x0)
    2a6c:	e3fffa5a 	bsr      	0x1f20	// 1f20 <BT_Start>
	BT_ConfigInterrupt_CMD(BT0,ENABLE,BT_PEND);
    2a70:	9500      	ld.w      	r0, (r5, 0x0)
    2a72:	3201      	movi      	r2, 1
    2a74:	3101      	movi      	r1, 1
    2a76:	e3fffa7e 	bsr      	0x1f72	// 1f72 <BT_ConfigInterrupt_CMD>
	BT0_INT_ENABLE();

	BT_DeInit(BT1); // 任务调用
    2a7a:	10b2      	lrw      	r5, 0x2000000c	// 2ac0 <BT_CONFIG+0x98>
	BT0_INT_ENABLE();
    2a7c:	e3fffa84 	bsr      	0x1f84	// 1f84 <BT0_INT_ENABLE>
	BT_DeInit(BT1); // 任务调用
    2a80:	9500      	ld.w      	r0, (r5, 0x0)
    2a82:	e3fffa41 	bsr      	0x1f04	// 1f04 <BT_DeInit>
	// BT_IO_Init(BT1_PA08);
	BT_Configure(BT1,BTCLK_EN,47,BT_IMMEDIATE,BT_CONTINUOUS,BT_PCLKDIV);
    2a86:	b881      	st.w      	r4, (r14, 0x4)
    2a88:	b880      	st.w      	r4, (r14, 0x0)
    2a8a:	3308      	movi      	r3, 8
    2a8c:	9500      	ld.w      	r0, (r5, 0x0)
    2a8e:	322f      	movi      	r2, 47
    2a90:	3101      	movi      	r1, 1
    2a92:	e3fffa4b 	bsr      	0x1f28	// 1f28 <BT_Configure>
	// BT_ControlSet_Configure(BT1,BT_START_LOW,BT_IDLE_HIGH,BT_SYNC_DIS,BT_SYNCMD_DIS,BT_OSTMDX_ONCE,BT_AREARM_DIS,BT_CNTRLD_EN);
	// BT_Trigger_Configure(BT1,BT_TRGSRC_PEND,BT_TRGOE_EN);
	BT_Period_CMP_Write(BT1,1000,500);
    2a96:	32fa      	movi      	r2, 250
    2a98:	31fa      	movi      	r1, 250
    2a9a:	4241      	lsli      	r2, r2, 1
    2a9c:	4122      	lsli      	r1, r1, 2
    2a9e:	9500      	ld.w      	r0, (r5, 0x0)
    2aa0:	e3fffa66 	bsr      	0x1f6c	// 1f6c <BT_Period_CMP_Write>
	BT_Start(BT1);
    2aa4:	9500      	ld.w      	r0, (r5, 0x0)
    2aa6:	e3fffa3d 	bsr      	0x1f20	// 1f20 <BT_Start>
	BT_ConfigInterrupt_CMD(BT1,ENABLE,BT_PEND);
    2aaa:	9500      	ld.w      	r0, (r5, 0x0)
    2aac:	3201      	movi      	r2, 1
    2aae:	3101      	movi      	r1, 1
    2ab0:	e3fffa61 	bsr      	0x1f72	// 1f72 <BT_ConfigInterrupt_CMD>
	BT1_INT_ENABLE();
    2ab4:	e3fffa70 	bsr      	0x1f94	// 1f94 <BT1_INT_ENABLE>
}
    2ab8:	1404      	addi      	r14, r14, 16
    2aba:	1492      	pop      	r4-r5, r15
    2abc:	20000010 	.long	0x20000010
    2ac0:	2000000c 	.long	0x2000000c

Disassembly of section .text.UART0_CONFIG:

00002ac4 <UART0_CONFIG>:
//UART0  CONFIG
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/	
void UART0_CONFIG(void)
{
    2ac4:	14d0      	push      	r15
	UART0_DeInit();                                               //clear all UART Register
    2ac6:	e3fffa6f 	bsr      	0x1fa4	// 1fa4 <UART0_DeInit>
    UART_IO_Init(IO_UART0,1);                                     //use PA0.1->RXD0, PA0.0->TXD0
    2aca:	3101      	movi      	r1, 1
    2acc:	3000      	movi      	r0, 0
    2ace:	e3fffa77 	bsr      	0x1fbc	// 1fbc <UART_IO_Init>
	UARTInit(UART0,48,UART_PAR_NONE);							  //baudrate=sysclock 48M/416=115200
    2ad2:	1064      	lrw      	r3, 0x20000044	// 2ae0 <UART0_CONFIG+0x1c>
    2ad4:	3200      	movi      	r2, 0
    2ad6:	9300      	ld.w      	r0, (r3, 0x0)
    2ad8:	3130      	movi      	r1, 48
    2ada:	e3fffadd 	bsr      	0x2094	// 2094 <UARTInit>
    //UARTInitRxTxIntEn(UART0,416,UART_PAR_NONE);				  //baudrate=sysclock 48M/416=115200,tx rx int enabled 
	//UART0_Int_Enable();
}	
    2ade:	1490      	pop      	r15
    2ae0:	20000044 	.long	0x20000044

Disassembly of section .text.SYSCON_CONFIG:

00002ae4 <SYSCON_CONFIG>:
//syscon Functions
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SYSCON_CONFIG(void)
{
    2ae4:	14d0      	push      	r15
    2ae6:	1421      	subi      	r14, r14, 4
//------SYSTEM CLK AND PCLK FUNTION---------------------------/
	SYSCON_RST_VALUE();                                                         //SYSCON all register clr
    2ae8:	e3fff842 	bsr      	0x1b6c	// 1b6c <SYSCON_RST_VALUE>
	SYSCON_General_CMD(ENABLE,ENDIS_ISOSC);										//SYSCON enable/disable clock source
    2aec:	3101      	movi      	r1, 1
    2aee:	3001      	movi      	r0, 1
    2af0:	e3fff86a 	bsr      	0x1bc4	// 1bc4 <SYSCON_General_CMD>
	//EMOSC_OSTR_Config(0XAD,0X1f,EM_LFSEL_EN,EM_FLEN_EN,EM_FLSEL_10ns);		//EM_CNT=0X3FF,0xAD(36K),EM_GM=0,Low F modedisable,EM filter disable,if enable,cont set 5ns
	//SYSCON_General_CMD(ENABLE,ENDIS_EMOSC);
	SYSCON_HFOSC_SELECTE(HFOSC_SELECTE_48M);									//HFOSC selected 48MHz
    2af4:	3000      	movi      	r0, 0
    2af6:	e3fff8c3 	bsr      	0x1c7c	// 1c7c <SYSCON_HFOSC_SELECTE>
	SystemCLK_HCLKDIV_PCLKDIV_Config(SYSCLK_HFOSC,HCLK_DIV_1,PCLK_DIV_1,HFOSC_48M);//system clock set, Hclk div ,Pclk div  set system clock=SystemCLK/Hclk div/Pclk div
    2afa:	3180      	movi      	r1, 128
    2afc:	3308      	movi      	r3, 8
    2afe:	3200      	movi      	r2, 0
    2b00:	4121      	lsli      	r1, r1, 1
    2b02:	3002      	movi      	r0, 2
    2b04:	e3fff878 	bsr      	0x1bf4	// 1bf4 <SystemCLK_HCLKDIV_PCLKDIV_Config>
//------------  WDT FUNTION  --------------------------------/
    SYSCON_IWDCNT_Config(IWDT_TIME_4S,IWDT_INTW_DIV_7);      					//WDT TIME 1s,WDT alarm interrupt time=1s-1s*1/8=0.875S
    2b08:	30c0      	movi      	r0, 192
    2b0a:	3118      	movi      	r1, 24
    2b0c:	4003      	lsli      	r0, r0, 3
    2b0e:	e3fff8f3 	bsr      	0x1cf4	// 1cf4 <SYSCON_IWDCNT_Config>
    SYSCON_WDT_CMD(ENABLE);                                                  	//enable/disable WDT		
    2b12:	3001      	movi      	r0, 1
    2b14:	e3fff8c8 	bsr      	0x1ca4	// 1ca4 <SYSCON_WDT_CMD>
    SYSCON_IWDCNT_Reload();                                                   	//reload WDT
    2b18:	e3fff8e4 	bsr      	0x1ce0	// 1ce0 <SYSCON_IWDCNT_Reload>
	IWDT_Int_Enable();
    2b1c:	e3fff916 	bsr      	0x1d48	// 1d48 <IWDT_Int_Enable>
//------------  WWDT FUNTION  --------------------------------/
	WWDT_CNT_Load(0xFF);
    2b20:	30ff      	movi      	r0, 255
    2b22:	e3fff9cf 	bsr      	0x1ec0	// 1ec0 <WWDT_CNT_Load>
	WWDT_CONFIG(PCLK_4096_DIV0,0xFF,WWDT_DBGDIS);
    2b26:	3200      	movi      	r2, 0
    2b28:	31ff      	movi      	r1, 255
    2b2a:	3000      	movi      	r0, 0
    2b2c:	e3fff9be 	bsr      	0x1ea8	// 1ea8 <WWDT_CONFIG>
	WWDT_Int_Config(ENABLE);													
    2b30:	3001      	movi      	r0, 1
    2b32:	e3fff9cf 	bsr      	0x1ed0	// 1ed0 <WWDT_Int_Config>
	//WWDT_CMD(ENABLE);															//enable wwdt
//------------  CLO Output --------------------------------/	
	//SYSCON_CLO_CONFIG(CLO_PA08);												//CLO output setting
	//SYSCON_CLO_SRC_SET(CLO_HFCLK,CLO_DIV16);									//CLO output clock and div
//------------  LVD FUNTION  --------------------------------/ 
    SYSCON_LVD_Config(ENABLE_LVDEN,INTDET_LVL_3_9V,RSTDET_LVL_1_9V,ENABLE_LVD_INT,INTDET_POL_fall);   //LVD LVR Enable/Disable
    2b36:	3340      	movi      	r3, 64
    2b38:	b860      	st.w      	r3, (r14, 0x0)
    2b3a:	31c0      	movi      	r1, 192
    2b3c:	3380      	movi      	r3, 128
    2b3e:	4364      	lsli      	r3, r3, 4
    2b40:	3200      	movi      	r2, 0
    2b42:	4123      	lsli      	r1, r1, 3
    2b44:	3000      	movi      	r0, 0
    2b46:	e3fff8e3 	bsr      	0x1d0c	// 1d0c <SYSCON_LVD_Config>
    LVD_Int_Enable();	
    2b4a:	e3fff8f1 	bsr      	0x1d2c	// 1d2c <LVD_Int_Enable>
//------------  SYSCON Vector  --------------------------------/ 	
	SYSCON_Int_Enable();    														//SYSCON VECTOR
    2b4e:	e3fff92b 	bsr      	0x1da4	// 1da4 <SYSCON_Int_Enable>
	//SYSCON_WakeUp_Enable();    													//Enable WDT wakeup INT
//------------------------------------------------------------/
//OSC CLOCK Calibration
//------------------------------------------------------------/	
	std_clk_calib_source(CLK_ISOSC_27K);
    2b52:	3000      	movi      	r0, 0
    2b54:	e000111c 	bsr      	0x4d8c	// 4d8c <std_clk_calib_source>
	std_clk_calib(CLK_HFOSC_48M);												//Select the same clock source as the system
    2b58:	3000      	movi      	r0, 0
    2b5a:	e0001131 	bsr      	0x4dbc	// 4dbc <std_clk_calib>
	
}
    2b5e:	1401      	addi      	r14, r14, 4
    2b60:	1490      	pop      	r15

Disassembly of section .text.APT32F102_init:

00002b64 <APT32F102_init>:
//ReturnValue:NONE                                                                /
/*********************************************************************************/
/*********************************************************************************/  
/*********************************************************************************/
void APT32F102_init(void) 
{
    2b64:	14d0      	push      	r15
//------------------------------------------------------------/
//Peripheral clock enable and disable
//EntryParameter:NONE
//ReturnValue:NONE
//------------------------------------------------------------/
    SYSCON->PCER0=0xFFFFFFF;                                        //PCLK Enable
    2b66:	106b      	lrw      	r3, 0x20000060	// 2b90 <APT32F102_init+0x2c>
    SYSCON->PCER1=0xFFFFFFF;                                        //PCLK Enable
    while(!(SYSCON->PCSR0&0x1));                                    //Wait PCLK enabled	
    2b68:	3101      	movi      	r1, 1
    SYSCON->PCER0=0xFFFFFFF;                                        //PCLK Enable
    2b6a:	9340      	ld.w      	r2, (r3, 0x0)
    2b6c:	106a      	lrw      	r3, 0xfffffff	// 2b94 <APT32F102_init+0x30>
    2b6e:	b26a      	st.w      	r3, (r2, 0x28)
    SYSCON->PCER1=0xFFFFFFF;                                        //PCLK Enable
    2b70:	b26d      	st.w      	r3, (r2, 0x34)
    while(!(SYSCON->PCSR0&0x1));                                    //Wait PCLK enabled	
    2b72:	926c      	ld.w      	r3, (r2, 0x30)
    2b74:	68c4      	and      	r3, r1
    2b76:	3b40      	cmpnei      	r3, 0
    2b78:	0ffd      	bf      	0x2b72	// 2b72 <APT32F102_init+0xe>
//------------------------------------------------------------/
//ISOSC/IMOSC/EMOSC/SYSCLK/IWDT/LVD/EM_CMFAIL/EM_CMRCV/CMD_ERR OSC stable interrupt
//EntryParameter:NONE
//ReturnValue:NONE
//------------------------------------------------------------/
    SYSCON_CONFIG();                                                 //syscon  initial
    2b7a:	e3ffffb5 	bsr      	0x2ae4	// 2ae4 <SYSCON_CONFIG>
	CK_CPU_EnAllNormalIrq();                                         //enable all IRQ
    2b7e:	e0000721 	bsr      	0x39c0	// 39c0 <CK_CPU_EnAllNormalIrq>
	//Set_INT_Priority(BT0_IRQ,0);									 //0:set int priority 1st
//------------------------------------------------------------/
//Other IP config
//------------------------------------------------------------/
	//GPIO_CONFIG();                                                //GPIO initial     
	EPT0_CONFIG();                                                //EPT0 initial 
    2b82:	e3fffee1 	bsr      	0x2944	// 2944 <EPT0_CONFIG>
	//GPT0_CONFIG();												//GPT0 initial	
	BT_CONFIG();													//BT initial
    2b86:	e3ffff51 	bsr      	0x2a28	// 2a28 <BT_CONFIG>
    //I2C_MASTER_CONFIG();                                          //I2C harware master initial 
	//I2C_SLAVE_CONFIG();                                           //I2C harware slave initial 
	//SPI_MASTER_CONFIG();											//SPI Master initial 	
	//SPI_SLAVE_CONFIG();											//SPI Slaver initial 
	//SIO_CONFIG();													//SIO initial
    UART0_CONFIG();                                               //UART0 initial 
    2b8a:	e3ffff9d 	bsr      	0x2ac4	// 2ac4 <UART0_CONFIG>
	//UART1_CONFIG();                                               //UART1 initial 
	//UART2_CONFIG();                                               //UART2 initial 
	//ADC12_CONFIG();                                               //ADC initial 
	//TK_CONFIG();													//Touch Key initial
}
    2b8e:	1490      	pop      	r15
    2b90:	20000060 	.long	0x20000060
    2b94:	0fffffff 	.long	0x0fffffff

Disassembly of section .text.SYSCONIntHandler:

00002b98 <SYSCONIntHandler>:
//SYSCON Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SYSCONIntHandler(void) 
{
    2b98:	1460      	nie
    2b9a:	1462      	ipush
    // ISR content ...
	nop;
    2b9c:	6c03      	mov      	r0, r0
	if((SYSCON->MISR&ISOSC_ST)==ISOSC_ST)				//ISOSC stable interrupt
    2b9e:	117c      	lrw      	r3, 0x20000060	// 2c8c <SYSCONIntHandler+0xf4>
    2ba0:	3280      	movi      	r2, 128
    2ba2:	9360      	ld.w      	r3, (r3, 0x0)
    2ba4:	60c8      	addu      	r3, r2
    2ba6:	9323      	ld.w      	r1, (r3, 0xc)
    2ba8:	3001      	movi      	r0, 1
    2baa:	6840      	and      	r1, r0
    2bac:	3940      	cmpnei      	r1, 0
    2bae:	0c04      	bf      	0x2bb6	// 2bb6 <SYSCONIntHandler+0x1e>
	{
		SYSCON->ICR = EMOSC_ST;
	} 
	else if((SYSCON->MISR&HFOSC_ST)==HFOSC_ST)			//HFOSC stable interrupt
	{
		SYSCON->ICR = HFOSC_ST;
    2bb0:	b301      	st.w      	r0, (r3, 0x4)
	}
	else if((SYSCON->MISR&CMD_ERR_ST)==CMD_ERR_ST)		//Command error interrupt
	{
		SYSCON->ICR = CMD_ERR_ST;
	}
}
    2bb2:	1463      	ipop
    2bb4:	1461      	nir
	else if((SYSCON->MISR&IMOSC_ST)==IMOSC_ST)			//IMOSC stable interrupt
    2bb6:	9323      	ld.w      	r1, (r3, 0xc)
    2bb8:	3002      	movi      	r0, 2
    2bba:	6840      	and      	r1, r0
    2bbc:	3940      	cmpnei      	r1, 0
    2bbe:	0bf9      	bt      	0x2bb0	// 2bb0 <SYSCONIntHandler+0x18>
	else if((SYSCON->MISR&EMOSC_ST)==EMOSC_ST)			//EMOSC stable interrupt
    2bc0:	9323      	ld.w      	r1, (r3, 0xc)
    2bc2:	3008      	movi      	r0, 8
    2bc4:	6840      	and      	r1, r0
    2bc6:	3940      	cmpnei      	r1, 0
    2bc8:	0bf4      	bt      	0x2bb0	// 2bb0 <SYSCONIntHandler+0x18>
	else if((SYSCON->MISR&HFOSC_ST)==HFOSC_ST)			//HFOSC stable interrupt
    2bca:	9323      	ld.w      	r1, (r3, 0xc)
    2bcc:	3010      	movi      	r0, 16
    2bce:	6840      	and      	r1, r0
    2bd0:	3940      	cmpnei      	r1, 0
    2bd2:	0bef      	bt      	0x2bb0	// 2bb0 <SYSCONIntHandler+0x18>
	else if((SYSCON->MISR&SYSCLK_ST)==SYSCLK_ST)		//SYSCLK change end & stable interrupt
    2bd4:	9323      	ld.w      	r1, (r3, 0xc)
    2bd6:	6848      	and      	r1, r2
    2bd8:	3940      	cmpnei      	r1, 0
    2bda:	0c03      	bf      	0x2be0	// 2be0 <SYSCONIntHandler+0x48>
		SYSCON->ICR = CMD_ERR_ST;
    2bdc:	b341      	st.w      	r2, (r3, 0x4)
}
    2bde:	07ea      	br      	0x2bb2	// 2bb2 <SYSCONIntHandler+0x1a>
	else if((SYSCON->MISR&IWDT_INT_ST)==IWDT_INT_ST)	//IWDT alarm window interrupt
    2be0:	3280      	movi      	r2, 128
    2be2:	9323      	ld.w      	r1, (r3, 0xc)
    2be4:	4241      	lsli      	r2, r2, 1
    2be6:	6848      	and      	r1, r2
    2be8:	3940      	cmpnei      	r1, 0
    2bea:	0c06      	bf      	0x2bf6	// 2bf6 <SYSCONIntHandler+0x5e>
		SYSCON->ICR = IWDT_INT_ST;
    2bec:	b341      	st.w      	r2, (r3, 0x4)
		SYSCON->IWDCNT=0x5aul<<24;
    2bee:	32b4      	movi      	r2, 180
    2bf0:	4257      	lsli      	r2, r2, 23
    2bf2:	b34e      	st.w      	r2, (r3, 0x38)
    2bf4:	07df      	br      	0x2bb2	// 2bb2 <SYSCONIntHandler+0x1a>
	else if((SYSCON->MISR&WKI_INT_ST)==WKI_INT_ST)
    2bf6:	3280      	movi      	r2, 128
    2bf8:	9323      	ld.w      	r1, (r3, 0xc)
    2bfa:	4242      	lsli      	r2, r2, 2
    2bfc:	6848      	and      	r1, r2
    2bfe:	3940      	cmpnei      	r1, 0
    2c00:	0bee      	bt      	0x2bdc	// 2bdc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&RAMERRINT_ST)==RAMERRINT_ST)	//SRAM check fail interrupt
    2c02:	3280      	movi      	r2, 128
    2c04:	9323      	ld.w      	r1, (r3, 0xc)
    2c06:	4243      	lsli      	r2, r2, 3
    2c08:	6848      	and      	r1, r2
    2c0a:	3940      	cmpnei      	r1, 0
    2c0c:	0be8      	bt      	0x2bdc	// 2bdc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&LVD_INT_ST)==LVD_INT_ST)		//LVD threshold interrupt
    2c0e:	3280      	movi      	r2, 128
    2c10:	9323      	ld.w      	r1, (r3, 0xc)
    2c12:	4244      	lsli      	r2, r2, 4
    2c14:	6848      	and      	r1, r2
    2c16:	3940      	cmpnei      	r1, 0
    2c18:	0c03      	bf      	0x2c1e	// 2c1e <SYSCONIntHandler+0x86>
		nop;
    2c1a:	6c03      	mov      	r0, r0
    2c1c:	07e0      	br      	0x2bdc	// 2bdc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&HWD_ERR_ST)==HWD_ERR_ST)		//Hardware Divider divisor = 0 interrupt
    2c1e:	3280      	movi      	r2, 128
    2c20:	9323      	ld.w      	r1, (r3, 0xc)
    2c22:	4245      	lsli      	r2, r2, 5
    2c24:	6848      	and      	r1, r2
    2c26:	3940      	cmpnei      	r1, 0
    2c28:	0bda      	bt      	0x2bdc	// 2bdc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EFL_ERR_ST)==EFL_ERR_ST)		//Flash check fail interrupt
    2c2a:	3280      	movi      	r2, 128
    2c2c:	9323      	ld.w      	r1, (r3, 0xc)
    2c2e:	4246      	lsli      	r2, r2, 6
    2c30:	6848      	and      	r1, r2
    2c32:	3940      	cmpnei      	r1, 0
    2c34:	0bd4      	bt      	0x2bdc	// 2bdc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&OPTERR_INT)==OPTERR_INT)		//Option load fail interrupt
    2c36:	3280      	movi      	r2, 128
    2c38:	9323      	ld.w      	r1, (r3, 0xc)
    2c3a:	4247      	lsli      	r2, r2, 7
    2c3c:	6848      	and      	r1, r2
    2c3e:	3940      	cmpnei      	r1, 0
    2c40:	0bce      	bt      	0x2bdc	// 2bdc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_CMLST_ST)==EM_CMLST_ST)	//EMOSC clock monitor fail interrupt
    2c42:	3280      	movi      	r2, 128
    2c44:	9323      	ld.w      	r1, (r3, 0xc)
    2c46:	424b      	lsli      	r2, r2, 11
    2c48:	6848      	and      	r1, r2
    2c4a:	3940      	cmpnei      	r1, 0
    2c4c:	0bc8      	bt      	0x2bdc	// 2bdc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG0_ST)==EM_EVTRG0_ST)	//Event Trigger Channel 0 Interrupt
    2c4e:	3280      	movi      	r2, 128
    2c50:	9323      	ld.w      	r1, (r3, 0xc)
    2c52:	424c      	lsli      	r2, r2, 12
    2c54:	6848      	and      	r1, r2
    2c56:	3940      	cmpnei      	r1, 0
    2c58:	0bc2      	bt      	0x2bdc	// 2bdc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG1_ST)==EM_EVTRG1_ST)	//Event Trigger Channel 1 Interrupt
    2c5a:	3280      	movi      	r2, 128
    2c5c:	9323      	ld.w      	r1, (r3, 0xc)
    2c5e:	424d      	lsli      	r2, r2, 13
    2c60:	6848      	and      	r1, r2
    2c62:	3940      	cmpnei      	r1, 0
    2c64:	0bbc      	bt      	0x2bdc	// 2bdc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG2_ST)==EM_EVTRG2_ST)	//Event Trigger Channel 2 Interrupt
    2c66:	3280      	movi      	r2, 128
    2c68:	9323      	ld.w      	r1, (r3, 0xc)
    2c6a:	424e      	lsli      	r2, r2, 14
    2c6c:	6848      	and      	r1, r2
    2c6e:	3940      	cmpnei      	r1, 0
    2c70:	0bb6      	bt      	0x2bdc	// 2bdc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG3_ST)==EM_EVTRG3_ST)	//Event Trigger Channel 3 Interrupt
    2c72:	3280      	movi      	r2, 128
    2c74:	9323      	ld.w      	r1, (r3, 0xc)
    2c76:	424f      	lsli      	r2, r2, 15
    2c78:	6848      	and      	r1, r2
    2c7a:	3940      	cmpnei      	r1, 0
    2c7c:	0bb0      	bt      	0x2bdc	// 2bdc <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&CMD_ERR_ST)==CMD_ERR_ST)		//Command error interrupt
    2c7e:	3280      	movi      	r2, 128
    2c80:	9323      	ld.w      	r1, (r3, 0xc)
    2c82:	4256      	lsli      	r2, r2, 22
    2c84:	6848      	and      	r1, r2
    2c86:	3940      	cmpnei      	r1, 0
    2c88:	0baa      	bt      	0x2bdc	// 2bdc <SYSCONIntHandler+0x44>
    2c8a:	0794      	br      	0x2bb2	// 2bb2 <SYSCONIntHandler+0x1a>
    2c8c:	20000060 	.long	0x20000060

Disassembly of section .text.IFCIntHandler:

00002c90 <IFCIntHandler>:
//IFC Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void IFCIntHandler(void) 
{
    2c90:	1460      	nie
    2c92:	1462      	ipush
    // ISR content ...
	if(IFC->MISR&ERS_END_INT)			
    2c94:	1078      	lrw      	r3, 0x20000064	// 2cf4 <IFCIntHandler+0x64>
    2c96:	3101      	movi      	r1, 1
    2c98:	9360      	ld.w      	r3, (r3, 0x0)
    2c9a:	934b      	ld.w      	r2, (r3, 0x2c)
    2c9c:	6884      	and      	r2, r1
    2c9e:	3a40      	cmpnei      	r2, 0
    2ca0:	0c04      	bf      	0x2ca8	// 2ca8 <IFCIntHandler+0x18>
	{
		IFC->ICR=RGM_END_INT;
	}
	else if(IFC->MISR&PEP_END_INT)		
	{
		IFC->ICR=PEP_END_INT;
    2ca2:	b32c      	st.w      	r1, (r3, 0x30)
	}
	else if(IFC->MISR&OVW_ERR_INT)		
	{
		IFC->ICR=OVW_ERR_INT;
	}
}
    2ca4:	1463      	ipop
    2ca6:	1461      	nir
	else if(IFC->MISR&RGM_END_INT)		
    2ca8:	934b      	ld.w      	r2, (r3, 0x2c)
    2caa:	3102      	movi      	r1, 2
    2cac:	6884      	and      	r2, r1
    2cae:	3a40      	cmpnei      	r2, 0
    2cb0:	0bf9      	bt      	0x2ca2	// 2ca2 <IFCIntHandler+0x12>
	else if(IFC->MISR&PEP_END_INT)		
    2cb2:	934b      	ld.w      	r2, (r3, 0x2c)
    2cb4:	3104      	movi      	r1, 4
    2cb6:	6884      	and      	r2, r1
    2cb8:	3a40      	cmpnei      	r2, 0
    2cba:	0bf4      	bt      	0x2ca2	// 2ca2 <IFCIntHandler+0x12>
	else if(IFC->MISR&PROT_ERR_INT)		
    2cbc:	3280      	movi      	r2, 128
    2cbe:	932b      	ld.w      	r1, (r3, 0x2c)
    2cc0:	4245      	lsli      	r2, r2, 5
    2cc2:	6848      	and      	r1, r2
    2cc4:	3940      	cmpnei      	r1, 0
    2cc6:	0c03      	bf      	0x2ccc	// 2ccc <IFCIntHandler+0x3c>
		IFC->ICR=OVW_ERR_INT;
    2cc8:	b34c      	st.w      	r2, (r3, 0x30)
}
    2cca:	07ed      	br      	0x2ca4	// 2ca4 <IFCIntHandler+0x14>
	else if(IFC->MISR&UDEF_ERR_INT)		
    2ccc:	3280      	movi      	r2, 128
    2cce:	932b      	ld.w      	r1, (r3, 0x2c)
    2cd0:	4246      	lsli      	r2, r2, 6
    2cd2:	6848      	and      	r1, r2
    2cd4:	3940      	cmpnei      	r1, 0
    2cd6:	0bf9      	bt      	0x2cc8	// 2cc8 <IFCIntHandler+0x38>
	else if(IFC->MISR&ADDR_ERR_INT)		
    2cd8:	3280      	movi      	r2, 128
    2cda:	932b      	ld.w      	r1, (r3, 0x2c)
    2cdc:	4247      	lsli      	r2, r2, 7
    2cde:	6848      	and      	r1, r2
    2ce0:	3940      	cmpnei      	r1, 0
    2ce2:	0bf3      	bt      	0x2cc8	// 2cc8 <IFCIntHandler+0x38>
	else if(IFC->MISR&OVW_ERR_INT)		
    2ce4:	3280      	movi      	r2, 128
    2ce6:	932b      	ld.w      	r1, (r3, 0x2c)
    2ce8:	4248      	lsli      	r2, r2, 8
    2cea:	6848      	and      	r1, r2
    2cec:	3940      	cmpnei      	r1, 0
    2cee:	0bed      	bt      	0x2cc8	// 2cc8 <IFCIntHandler+0x38>
    2cf0:	07da      	br      	0x2ca4	// 2ca4 <IFCIntHandler+0x14>
    2cf2:	0000      	bkpt
    2cf4:	20000064 	.long	0x20000064

Disassembly of section .text.ADCIntHandler:

00002cf8 <ADCIntHandler>:
//ADC Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void ADCIntHandler(void) 
{
    2cf8:	1460      	nie
    2cfa:	1462      	ipush
    2cfc:	14d0      	push      	r15
    // ISR content ...
	if((ADC0->SR&ADC12_EOC)==ADC12_EOC)				//ADC EOC interrupt
    2cfe:	107e      	lrw      	r3, 0x20000054	// 2d74 <ADCIntHandler+0x7c>
    2d00:	3101      	movi      	r1, 1
    2d02:	9360      	ld.w      	r3, (r3, 0x0)
    2d04:	9348      	ld.w      	r2, (r3, 0x20)
    2d06:	6884      	and      	r2, r1
    2d08:	3a40      	cmpnei      	r2, 0
    2d0a:	0c07      	bf      	0x2d18	// 2d18 <ADCIntHandler+0x20>
	{
		ADC0->CSR = ADC12_READY;
	}
	else if((ADC0->SR&ADC12_OVR)==ADC12_OVR)		//ADC OVR interrupt
	{
		ADC0->CSR = ADC12_OVR;
    2d0c:	b327      	st.w      	r1, (r3, 0x1c)
	}
	else if((ADC0->SR&ADC12_SEQ_END0)==ADC12_SEQ_END0) //ADC SEQ0 interrupt,SEQ1~SEQ15 replace the parameter with ADC12_SEQ_END1~ADC12_SEQ_END15
	{
		ADC0->CSR = ADC12_SEQ_END0;
	}
}
    2d0e:	d9ee2000 	ld.w      	r15, (r14, 0x0)
    2d12:	1401      	addi      	r14, r14, 4
    2d14:	1463      	ipop
    2d16:	1461      	nir
	else if((ADC0->SR&ADC12_READY)==ADC12_READY)	//ADC READY interrupt
    2d18:	9348      	ld.w      	r2, (r3, 0x20)
    2d1a:	3102      	movi      	r1, 2
    2d1c:	6884      	and      	r2, r1
    2d1e:	3a40      	cmpnei      	r2, 0
    2d20:	0bf6      	bt      	0x2d0c	// 2d0c <ADCIntHandler+0x14>
	else if((ADC0->SR&ADC12_OVR)==ADC12_OVR)		//ADC OVR interrupt
    2d22:	9348      	ld.w      	r2, (r3, 0x20)
    2d24:	3104      	movi      	r1, 4
    2d26:	6884      	and      	r2, r1
    2d28:	3a40      	cmpnei      	r2, 0
    2d2a:	0bf1      	bt      	0x2d0c	// 2d0c <ADCIntHandler+0x14>
	else if((ADC0->SR&ADC12_CMP0H)==ADC12_CMP0H)	//ADC CMP0H interrupt
    2d2c:	9348      	ld.w      	r2, (r3, 0x20)
    2d2e:	3110      	movi      	r1, 16
    2d30:	6884      	and      	r2, r1
    2d32:	3a40      	cmpnei      	r2, 0
    2d34:	0c06      	bf      	0x2d40	// 2d40 <ADCIntHandler+0x48>
		ADC0->CSR = ADC12_CMP1H;
    2d36:	b327      	st.w      	r1, (r3, 0x1c)
		printf("+\n");
    2d38:	1010      	lrw      	r0, 0x5184	// 2d78 <ADCIntHandler+0x80>
		printf("-\n");
    2d3a:	e3fff615 	bsr      	0x1964	// 1964 <__GI_puts>
    2d3e:	07e8      	br      	0x2d0e	// 2d0e <ADCIntHandler+0x16>
	else if((ADC0->SR&ADC12_CMP0L)==ADC12_CMP0L)	//ADC CMP0L interrupt.
    2d40:	9348      	ld.w      	r2, (r3, 0x20)
    2d42:	3120      	movi      	r1, 32
    2d44:	6884      	and      	r2, r1
    2d46:	3a40      	cmpnei      	r2, 0
    2d48:	0c04      	bf      	0x2d50	// 2d50 <ADCIntHandler+0x58>
		ADC0->CSR = ADC12_CMP1L;
    2d4a:	b327      	st.w      	r1, (r3, 0x1c)
		printf("-\n");
    2d4c:	100c      	lrw      	r0, 0x5186	// 2d7c <ADCIntHandler+0x84>
    2d4e:	07f6      	br      	0x2d3a	// 2d3a <ADCIntHandler+0x42>
	else if((ADC0->SR&ADC12_CMP1H)==ADC12_CMP1H)	//ADC CMP1H interrupt.
    2d50:	9348      	ld.w      	r2, (r3, 0x20)
    2d52:	3140      	movi      	r1, 64
    2d54:	6884      	and      	r2, r1
    2d56:	3a40      	cmpnei      	r2, 0
    2d58:	0bef      	bt      	0x2d36	// 2d36 <ADCIntHandler+0x3e>
	else if((ADC0->SR&ADC12_CMP1L)==ADC12_CMP1L)	//ADC CMP1L interrupt.
    2d5a:	9348      	ld.w      	r2, (r3, 0x20)
    2d5c:	3180      	movi      	r1, 128
    2d5e:	6884      	and      	r2, r1
    2d60:	3a40      	cmpnei      	r2, 0
    2d62:	0bf4      	bt      	0x2d4a	// 2d4a <ADCIntHandler+0x52>
	else if((ADC0->SR&ADC12_SEQ_END0)==ADC12_SEQ_END0) //ADC SEQ0 interrupt,SEQ1~SEQ15 replace the parameter with ADC12_SEQ_END1~ADC12_SEQ_END15
    2d64:	3280      	movi      	r2, 128
    2d66:	9328      	ld.w      	r1, (r3, 0x20)
    2d68:	4249      	lsli      	r2, r2, 9
    2d6a:	6848      	and      	r1, r2
    2d6c:	3940      	cmpnei      	r1, 0
    2d6e:	0fd0      	bf      	0x2d0e	// 2d0e <ADCIntHandler+0x16>
		ADC0->CSR = ADC12_SEQ_END0;
    2d70:	b347      	st.w      	r2, (r3, 0x1c)
}
    2d72:	07ce      	br      	0x2d0e	// 2d0e <ADCIntHandler+0x16>
    2d74:	20000054 	.long	0x20000054
    2d78:	00005184 	.long	0x00005184
    2d7c:	00005186 	.long	0x00005186

Disassembly of section .text.EPT0IntHandler:

00002d80 <EPT0IntHandler>:
//EPT0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EPT0IntHandler(void) 
{
    2d80:	1460      	nie
    2d82:	1462      	ipush
    2d84:	14d1      	push      	r4, r15
    // ISR content ...
	if((EPT0->MISR&EPT_TRGEV0_INT)==EPT_TRGEV0_INT)			//TRGEV0 interrupt
    2d86:	1386      	lrw      	r4, 0x20000024	// 2f1c <EPT0IntHandler+0x19c>
    2d88:	3280      	movi      	r2, 128
    2d8a:	9460      	ld.w      	r3, (r4, 0x0)
    2d8c:	60c8      	addu      	r3, r2
    2d8e:	9335      	ld.w      	r1, (r3, 0x54)
    2d90:	3001      	movi      	r0, 1
    2d92:	6840      	and      	r1, r0
    2d94:	3940      	cmpnei      	r1, 0
    2d96:	0c03      	bf      	0x2d9c	// 2d9c <EPT0IntHandler+0x1c>
		EXTI_trigger_CMD(DISABLE,EXI_PIN0,_EXIFT);
		R_CMPB_BUF=EPT0->CMPB;			//Duty counter
	}
	else if((EPT0->MISR&EPT_CAP_LD2)==EPT_CAP_LD2)			//Capture Load to CMPC interrupt
	{
		EPT0->ICR=EPT_CAP_LD2;
    2d98:	b317      	st.w      	r0, (r3, 0x5c)
    2d9a:	0424      	br      	0x2de2	// 2de2 <EPT0IntHandler+0x62>
	else if((EPT0->MISR&EPT_TRGEV1_INT)==EPT_TRGEV1_INT)	//TRGEV1 interrupt
    2d9c:	9335      	ld.w      	r1, (r3, 0x54)
    2d9e:	3002      	movi      	r0, 2
    2da0:	6840      	and      	r1, r0
    2da2:	3940      	cmpnei      	r1, 0
    2da4:	0bfa      	bt      	0x2d98	// 2d98 <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_TRGEV2_INT)==EPT_TRGEV2_INT)	//TRGEV2 interrupt
    2da6:	9335      	ld.w      	r1, (r3, 0x54)
    2da8:	3004      	movi      	r0, 4
    2daa:	6840      	and      	r1, r0
    2dac:	3940      	cmpnei      	r1, 0
    2dae:	0bf5      	bt      	0x2d98	// 2d98 <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_TRGEV3_INT)==EPT_TRGEV3_INT)	//TRGEV3 interrupt
    2db0:	9335      	ld.w      	r1, (r3, 0x54)
    2db2:	3008      	movi      	r0, 8
    2db4:	6840      	and      	r1, r0
    2db6:	3940      	cmpnei      	r1, 0
    2db8:	0bf0      	bt      	0x2d98	// 2d98 <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_CAP_LD0)==EPT_CAP_LD0)			//Capture Load to CMPA interrupt
    2dba:	9335      	ld.w      	r1, (r3, 0x54)
    2dbc:	3010      	movi      	r0, 16
    2dbe:	6840      	and      	r1, r0
    2dc0:	3940      	cmpnei      	r1, 0
    2dc2:	0c1f      	bf      	0x2e00	// 2e00 <EPT0IntHandler+0x80>
		EPT0->ICR=EPT_CAP_LD0;
    2dc4:	b317      	st.w      	r0, (r3, 0x5c)
		EXTI_trigger_CMD(DISABLE,EXI_PIN0,_EXIRT);
    2dc6:	3200      	movi      	r2, 0
    2dc8:	3101      	movi      	r1, 1
    2dca:	3000      	movi      	r0, 0
    2dcc:	e3fff7cc 	bsr      	0x1d64	// 1d64 <EXTI_trigger_CMD>
		EXTI_trigger_CMD(ENABLE,EXI_PIN0,_EXIFT);
    2dd0:	3201      	movi      	r2, 1
    2dd2:	3101      	movi      	r1, 1
    2dd4:	3001      	movi      	r0, 1
    2dd6:	e3fff7c7 	bsr      	0x1d64	// 1d64 <EXTI_trigger_CMD>
		R_CMPA_BUF=EPT0->CMPA;			//Low voltage counter
    2dda:	9460      	ld.w      	r3, (r4, 0x0)
    2ddc:	934b      	ld.w      	r2, (r3, 0x2c)
    2dde:	1271      	lrw      	r3, 0x200001bc	// 2f20 <EPT0IntHandler+0x1a0>
		R_CMPB_BUF=EPT0->CMPB;			//Duty counter
    2de0:	b340      	st.w      	r2, (r3, 0x0)
	else if((EPT0->MISR&EPT_PEND)==EPT_PEND)				//End of cycle interrupt
	{
		EPT0->ICR=EPT_PEND;
	}
	//Emergency interruption
	if((EPT0->EMMISR&EPT_EP0_EMINT)==EPT_EP0_EMINT)			//interrupt flag of EP0 event
    2de2:	9460      	ld.w      	r3, (r4, 0x0)
    2de4:	3280      	movi      	r2, 128
    2de6:	60c8      	addu      	r3, r2
    2de8:	932b      	ld.w      	r1, (r3, 0x2c)
    2dea:	3001      	movi      	r0, 1
    2dec:	6840      	and      	r1, r0
    2dee:	3940      	cmpnei      	r1, 0
    2df0:	0c5e      	bf      	0x2eac	// 2eac <EPT0IntHandler+0x12c>
	{
		EPT0->EMICR=EPT_EP5_EMINT;
	}
	else if((EPT0->EMMISR&EPT_EP6_EMINT)==EPT_EP6_EMINT)	//interrupt flag of EP6 event
	{
		EPT0->EMICR=EPT_EP6_EMINT;
    2df2:	b30d      	st.w      	r0, (r3, 0x34)
	}
	else if((EPT0->EMMISR&EPT_EOM_FAULT_EMINT)==EPT_EOM_FAULT_EMINT)	//interrupt flag of EOM_FAULT event
	{
		EPT0->EMICR=EPT_EOM_FAULT_EMINT;
	}
}
    2df4:	d9ee2001 	ld.w      	r15, (r14, 0x4)
    2df8:	9880      	ld.w      	r4, (r14, 0x0)
    2dfa:	1402      	addi      	r14, r14, 8
    2dfc:	1463      	ipop
    2dfe:	1461      	nir
	else if((EPT0->MISR&EPT_CAP_LD1)==EPT_CAP_LD1)			//Capture Load to CMPB interrupt
    2e00:	9335      	ld.w      	r1, (r3, 0x54)
    2e02:	3020      	movi      	r0, 32
    2e04:	6840      	and      	r1, r0
    2e06:	3940      	cmpnei      	r1, 0
    2e08:	0c10      	bf      	0x2e28	// 2e28 <EPT0IntHandler+0xa8>
		EPT0->ICR=EPT_CAP_LD1;
    2e0a:	b317      	st.w      	r0, (r3, 0x5c)
		EXTI_trigger_CMD(ENABLE,EXI_PIN0,_EXIRT);
    2e0c:	3200      	movi      	r2, 0
    2e0e:	3101      	movi      	r1, 1
    2e10:	3001      	movi      	r0, 1
    2e12:	e3fff7a9 	bsr      	0x1d64	// 1d64 <EXTI_trigger_CMD>
		EXTI_trigger_CMD(DISABLE,EXI_PIN0,_EXIFT);
    2e16:	3201      	movi      	r2, 1
    2e18:	3101      	movi      	r1, 1
    2e1a:	3000      	movi      	r0, 0
    2e1c:	e3fff7a4 	bsr      	0x1d64	// 1d64 <EXTI_trigger_CMD>
		R_CMPB_BUF=EPT0->CMPB;			//Duty counter
    2e20:	9460      	ld.w      	r3, (r4, 0x0)
    2e22:	934c      	ld.w      	r2, (r3, 0x30)
    2e24:	1260      	lrw      	r3, 0x200001b4	// 2f24 <EPT0IntHandler+0x1a4>
    2e26:	07dd      	br      	0x2de0	// 2de0 <EPT0IntHandler+0x60>
	else if((EPT0->MISR&EPT_CAP_LD2)==EPT_CAP_LD2)			//Capture Load to CMPC interrupt
    2e28:	9335      	ld.w      	r1, (r3, 0x54)
    2e2a:	3040      	movi      	r0, 64
    2e2c:	6840      	and      	r1, r0
    2e2e:	3940      	cmpnei      	r1, 0
    2e30:	0bb4      	bt      	0x2d98	// 2d98 <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_CAP_LD3)==EPT_CAP_LD3)			//Capture Load to CMPD interrupt
    2e32:	9335      	ld.w      	r1, (r3, 0x54)
    2e34:	6848      	and      	r1, r2
    2e36:	3940      	cmpnei      	r1, 0
    2e38:	0c03      	bf      	0x2e3e	// 2e3e <EPT0IntHandler+0xbe>
		EPT0->ICR=EPT_PEND;
    2e3a:	b357      	st.w      	r2, (r3, 0x5c)
    2e3c:	07d3      	br      	0x2de2	// 2de2 <EPT0IntHandler+0x62>
	else if((EPT0->MISR&EPT_CAU)==EPT_CAU)					//Up-Counting phase CNT = CMPA interrupt
    2e3e:	3280      	movi      	r2, 128
    2e40:	9335      	ld.w      	r1, (r3, 0x54)
    2e42:	4241      	lsli      	r2, r2, 1
    2e44:	6848      	and      	r1, r2
    2e46:	3940      	cmpnei      	r1, 0
    2e48:	0bf9      	bt      	0x2e3a	// 2e3a <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CAD)==EPT_CAD)					//Down-Counting phase CNT = CMPA interrupt
    2e4a:	3280      	movi      	r2, 128
    2e4c:	9335      	ld.w      	r1, (r3, 0x54)
    2e4e:	4242      	lsli      	r2, r2, 2
    2e50:	6848      	and      	r1, r2
    2e52:	3940      	cmpnei      	r1, 0
    2e54:	0bf3      	bt      	0x2e3a	// 2e3a <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CBU)==EPT_CBU)					//Up-Counting phase CNT = CMPB interrupt 
    2e56:	3280      	movi      	r2, 128
    2e58:	9335      	ld.w      	r1, (r3, 0x54)
    2e5a:	4243      	lsli      	r2, r2, 3
    2e5c:	6848      	and      	r1, r2
    2e5e:	3940      	cmpnei      	r1, 0
    2e60:	0bed      	bt      	0x2e3a	// 2e3a <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CBD)==EPT_CBD)					//Down-Counting phase CNT = CMPB interrupt
    2e62:	3280      	movi      	r2, 128
    2e64:	9335      	ld.w      	r1, (r3, 0x54)
    2e66:	4244      	lsli      	r2, r2, 4
    2e68:	6848      	and      	r1, r2
    2e6a:	3940      	cmpnei      	r1, 0
    2e6c:	0be7      	bt      	0x2e3a	// 2e3a <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CCU)==EPT_CCU)					//Up-Counting phase CNT = CMPC interrupt 
    2e6e:	3280      	movi      	r2, 128
    2e70:	9335      	ld.w      	r1, (r3, 0x54)
    2e72:	4245      	lsli      	r2, r2, 5
    2e74:	6848      	and      	r1, r2
    2e76:	3940      	cmpnei      	r1, 0
    2e78:	0be1      	bt      	0x2e3a	// 2e3a <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CCD)==EPT_CCD)					//Down-Counting phase CNT = CMPC interrupt
    2e7a:	3280      	movi      	r2, 128
    2e7c:	9335      	ld.w      	r1, (r3, 0x54)
    2e7e:	4246      	lsli      	r2, r2, 6
    2e80:	6848      	and      	r1, r2
    2e82:	3940      	cmpnei      	r1, 0
    2e84:	0bdb      	bt      	0x2e3a	// 2e3a <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CDU)==EPT_CDU)					//Up-Counting phase CNT = CMPD interrupt
    2e86:	3280      	movi      	r2, 128
    2e88:	9335      	ld.w      	r1, (r3, 0x54)
    2e8a:	4247      	lsli      	r2, r2, 7
    2e8c:	6848      	and      	r1, r2
    2e8e:	3940      	cmpnei      	r1, 0
    2e90:	0bd5      	bt      	0x2e3a	// 2e3a <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CDD)==EPT_CDD)					//Down-Counting phase CNT = CMPD interrupt
    2e92:	3280      	movi      	r2, 128
    2e94:	9335      	ld.w      	r1, (r3, 0x54)
    2e96:	4248      	lsli      	r2, r2, 8
    2e98:	6848      	and      	r1, r2
    2e9a:	3940      	cmpnei      	r1, 0
    2e9c:	0bcf      	bt      	0x2e3a	// 2e3a <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_PEND)==EPT_PEND)				//End of cycle interrupt
    2e9e:	3280      	movi      	r2, 128
    2ea0:	9335      	ld.w      	r1, (r3, 0x54)
    2ea2:	4249      	lsli      	r2, r2, 9
    2ea4:	6848      	and      	r1, r2
    2ea6:	3940      	cmpnei      	r1, 0
    2ea8:	0f9d      	bf      	0x2de2	// 2de2 <EPT0IntHandler+0x62>
    2eaa:	07c8      	br      	0x2e3a	// 2e3a <EPT0IntHandler+0xba>
	else if((EPT0->EMMISR&EPT_EP1_EMINT)==EPT_EP1_EMINT)	//interrupt flag of EP1 event
    2eac:	932b      	ld.w      	r1, (r3, 0x2c)
    2eae:	3002      	movi      	r0, 2
    2eb0:	6840      	and      	r1, r0
    2eb2:	3940      	cmpnei      	r1, 0
    2eb4:	0b9f      	bt      	0x2df2	// 2df2 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP2_EMINT)==EPT_EP2_EMINT)	//interrupt flag of EP2 event
    2eb6:	932b      	ld.w      	r1, (r3, 0x2c)
    2eb8:	3004      	movi      	r0, 4
    2eba:	6840      	and      	r1, r0
    2ebc:	3940      	cmpnei      	r1, 0
    2ebe:	0b9a      	bt      	0x2df2	// 2df2 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP3_EMINT)==EPT_EP3_EMINT)	//interrupt flag of EP3 event
    2ec0:	932b      	ld.w      	r1, (r3, 0x2c)
    2ec2:	3008      	movi      	r0, 8
    2ec4:	6840      	and      	r1, r0
    2ec6:	3940      	cmpnei      	r1, 0
    2ec8:	0b95      	bt      	0x2df2	// 2df2 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP4_EMINT)==EPT_EP4_EMINT)	//interrupt flag of EP4 event
    2eca:	932b      	ld.w      	r1, (r3, 0x2c)
    2ecc:	3010      	movi      	r0, 16
    2ece:	6840      	and      	r1, r0
    2ed0:	3940      	cmpnei      	r1, 0
    2ed2:	0b90      	bt      	0x2df2	// 2df2 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP5_EMINT)==EPT_EP5_EMINT)	//interrupt flag of EP5 event
    2ed4:	932b      	ld.w      	r1, (r3, 0x2c)
    2ed6:	3020      	movi      	r0, 32
    2ed8:	6840      	and      	r1, r0
    2eda:	3940      	cmpnei      	r1, 0
    2edc:	0b8b      	bt      	0x2df2	// 2df2 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP6_EMINT)==EPT_EP6_EMINT)	//interrupt flag of EP6 event
    2ede:	932b      	ld.w      	r1, (r3, 0x2c)
    2ee0:	3040      	movi      	r0, 64
    2ee2:	6840      	and      	r1, r0
    2ee4:	3940      	cmpnei      	r1, 0
    2ee6:	0b86      	bt      	0x2df2	// 2df2 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP7_EMINT)==EPT_EP7_EMINT)	//interrupt flag of EP7 event
    2ee8:	932b      	ld.w      	r1, (r3, 0x2c)
    2eea:	6848      	and      	r1, r2
    2eec:	3940      	cmpnei      	r1, 0
    2eee:	0c03      	bf      	0x2ef4	// 2ef4 <EPT0IntHandler+0x174>
		EPT0->EMICR=EPT_EOM_FAULT_EMINT;
    2ef0:	b34d      	st.w      	r2, (r3, 0x34)
}
    2ef2:	0781      	br      	0x2df4	// 2df4 <EPT0IntHandler+0x74>
	else if((EPT0->EMMISR&EPT_CPU_FAULT_EMINT)==EPT_CPU_FAULT_EMINT)	//interrupt flag of CPU_FAULT event
    2ef4:	3280      	movi      	r2, 128
    2ef6:	932b      	ld.w      	r1, (r3, 0x2c)
    2ef8:	4241      	lsli      	r2, r2, 1
    2efa:	6848      	and      	r1, r2
    2efc:	3940      	cmpnei      	r1, 0
    2efe:	0bf9      	bt      	0x2ef0	// 2ef0 <EPT0IntHandler+0x170>
	else if((EPT0->EMMISR&EPT_MEM_FAULT_EMINT)==EPT_MEM_FAULT_EMINT)	//interrupt flag of MEM_FAULT event
    2f00:	3280      	movi      	r2, 128
    2f02:	932b      	ld.w      	r1, (r3, 0x2c)
    2f04:	4242      	lsli      	r2, r2, 2
    2f06:	6848      	and      	r1, r2
    2f08:	3940      	cmpnei      	r1, 0
    2f0a:	0bf3      	bt      	0x2ef0	// 2ef0 <EPT0IntHandler+0x170>
	else if((EPT0->EMMISR&EPT_EOM_FAULT_EMINT)==EPT_EOM_FAULT_EMINT)	//interrupt flag of EOM_FAULT event
    2f0c:	3280      	movi      	r2, 128
    2f0e:	932b      	ld.w      	r1, (r3, 0x2c)
    2f10:	4243      	lsli      	r2, r2, 3
    2f12:	6848      	and      	r1, r2
    2f14:	3940      	cmpnei      	r1, 0
    2f16:	0bed      	bt      	0x2ef0	// 2ef0 <EPT0IntHandler+0x170>
    2f18:	076e      	br      	0x2df4	// 2df4 <EPT0IntHandler+0x74>
    2f1a:	0000      	bkpt
    2f1c:	20000024 	.long	0x20000024
    2f20:	200001bc 	.long	0x200001bc
    2f24:	200001b4 	.long	0x200001b4

Disassembly of section .text.WWDTHandler:

00002f28 <WWDTHandler>:
//WWDT Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void WWDTHandler(void)
{
    2f28:	1460      	nie
    2f2a:	1462      	ipush
    2f2c:	14d2      	push      	r4-r5, r15
	WWDT->ICR=0X01;
    2f2e:	10ab      	lrw      	r5, 0x20000014	// 2f58 <WWDTHandler+0x30>
    2f30:	3401      	movi      	r4, 1
    2f32:	9560      	ld.w      	r3, (r5, 0x0)
    2f34:	b385      	st.w      	r4, (r3, 0x14)
	WWDT_CNT_Load(0xFF);
    2f36:	30ff      	movi      	r0, 255
    2f38:	e3fff7c4 	bsr      	0x1ec0	// 1ec0 <WWDT_CNT_Load>
	if((WWDT->MISR&WWDT_EVI)==WWDT_EVI)					//WWDT EVI interrupt
    2f3c:	9540      	ld.w      	r2, (r5, 0x0)
    2f3e:	9263      	ld.w      	r3, (r2, 0xc)
    2f40:	68d0      	and      	r3, r4
    2f42:	3b40      	cmpnei      	r3, 0
    2f44:	0c02      	bf      	0x2f48	// 2f48 <WWDTHandler+0x20>
	{
		WWDT->ICR = WWDT_EVI;
    2f46:	b285      	st.w      	r4, (r2, 0x14)
	} 
}
    2f48:	d9ee2002 	ld.w      	r15, (r14, 0x8)
    2f4c:	98a1      	ld.w      	r5, (r14, 0x4)
    2f4e:	9880      	ld.w      	r4, (r14, 0x0)
    2f50:	1403      	addi      	r14, r14, 12
    2f52:	1463      	ipop
    2f54:	1461      	nir
    2f56:	0000      	bkpt
    2f58:	20000014 	.long	0x20000014

Disassembly of section .text.GPT0IntHandler:

00002f5c <GPT0IntHandler>:
//GPT0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void GPT0IntHandler(void) 
{
    2f5c:	1460      	nie
    2f5e:	1462      	ipush
    // ISR content ...
	if((GPT0->MISR&GPT_INT_TRGEV0)==GPT_INT_TRGEV0)			//TRGEV0 interrupt
    2f60:	107e      	lrw      	r3, 0x20000028	// 2fd8 <GPT0IntHandler+0x7c>
    2f62:	3101      	movi      	r1, 1
    2f64:	9360      	ld.w      	r3, (r3, 0x0)
    2f66:	237f      	addi      	r3, 128
    2f68:	9355      	ld.w      	r2, (r3, 0x54)
    2f6a:	6884      	and      	r2, r1
    2f6c:	3a40      	cmpnei      	r2, 0
    2f6e:	0c04      	bf      	0x2f76	// 2f76 <GPT0IntHandler+0x1a>
	{
		GPT0->ICR = GPT_INT_CAPLD0;
	}
	else if((GPT0->MISR&GPT_INT_CAPLD1)==GPT_INT_CAPLD1)		//Capture Load to CMPB interrupt
	{
		GPT0->ICR = GPT_INT_CAPLD1;
    2f70:	b337      	st.w      	r1, (r3, 0x5c)
	}
	else if((GPT0->MISR&GPT_INT_PEND)==GPT_INT_PEND)		//End of cycle interrupt 
	{
		GPT0->ICR = GPT_INT_PEND;
	}
}
    2f72:	1463      	ipop
    2f74:	1461      	nir
	else if((GPT0->MISR&GPT_INT_TRGEV1)==GPT_INT_TRGEV1)	//TRGEV1 interrupt
    2f76:	9355      	ld.w      	r2, (r3, 0x54)
    2f78:	3102      	movi      	r1, 2
    2f7a:	6884      	and      	r2, r1
    2f7c:	3a40      	cmpnei      	r2, 0
    2f7e:	0bf9      	bt      	0x2f70	// 2f70 <GPT0IntHandler+0x14>
	else if((GPT0->MISR&GPT_INT_CAPLD0)==GPT_INT_CAPLD0)		//Capture Load to CMPA interrupt
    2f80:	9355      	ld.w      	r2, (r3, 0x54)
    2f82:	3110      	movi      	r1, 16
    2f84:	6884      	and      	r2, r1
    2f86:	3a40      	cmpnei      	r2, 0
    2f88:	0bf4      	bt      	0x2f70	// 2f70 <GPT0IntHandler+0x14>
	else if((GPT0->MISR&GPT_INT_CAPLD1)==GPT_INT_CAPLD1)		//Capture Load to CMPB interrupt
    2f8a:	9355      	ld.w      	r2, (r3, 0x54)
    2f8c:	3120      	movi      	r1, 32
    2f8e:	6884      	and      	r2, r1
    2f90:	3a40      	cmpnei      	r2, 0
    2f92:	0bef      	bt      	0x2f70	// 2f70 <GPT0IntHandler+0x14>
	else if((GPT0->MISR&GPT_INT_CAU)==GPT_INT_CAU)			//Up-Counting phase CNT = CMPA Interrupt
    2f94:	3280      	movi      	r2, 128
    2f96:	9335      	ld.w      	r1, (r3, 0x54)
    2f98:	4241      	lsli      	r2, r2, 1
    2f9a:	6848      	and      	r1, r2
    2f9c:	3940      	cmpnei      	r1, 0
    2f9e:	0c03      	bf      	0x2fa4	// 2fa4 <GPT0IntHandler+0x48>
		GPT0->ICR = GPT_INT_PEND;
    2fa0:	b357      	st.w      	r2, (r3, 0x5c)
}
    2fa2:	07e8      	br      	0x2f72	// 2f72 <GPT0IntHandler+0x16>
	else if((GPT0->MISR&GPT_INT_CAD)==GPT_INT_CAD)			//Down-Counting phase CNT = CMPA Interrupt
    2fa4:	3280      	movi      	r2, 128
    2fa6:	9335      	ld.w      	r1, (r3, 0x54)
    2fa8:	4242      	lsli      	r2, r2, 2
    2faa:	6848      	and      	r1, r2
    2fac:	3940      	cmpnei      	r1, 0
    2fae:	0bf9      	bt      	0x2fa0	// 2fa0 <GPT0IntHandler+0x44>
	else if((GPT0->MISR&GPT_INT_CBU)==GPT_INT_CBU)			//Up-Counting phase CNT = CMPB Interrupt
    2fb0:	3280      	movi      	r2, 128
    2fb2:	9335      	ld.w      	r1, (r3, 0x54)
    2fb4:	4243      	lsli      	r2, r2, 3
    2fb6:	6848      	and      	r1, r2
    2fb8:	3940      	cmpnei      	r1, 0
    2fba:	0bf3      	bt      	0x2fa0	// 2fa0 <GPT0IntHandler+0x44>
	else if((GPT0->MISR&GPT_INT_CBD)==GPT_INT_CBD)			//Down-Counting phase CNT = CMPB Interrupt
    2fbc:	3280      	movi      	r2, 128
    2fbe:	9335      	ld.w      	r1, (r3, 0x54)
    2fc0:	4244      	lsli      	r2, r2, 4
    2fc2:	6848      	and      	r1, r2
    2fc4:	3940      	cmpnei      	r1, 0
    2fc6:	0bed      	bt      	0x2fa0	// 2fa0 <GPT0IntHandler+0x44>
	else if((GPT0->MISR&GPT_INT_PEND)==GPT_INT_PEND)		//End of cycle interrupt 
    2fc8:	3280      	movi      	r2, 128
    2fca:	9335      	ld.w      	r1, (r3, 0x54)
    2fcc:	4249      	lsli      	r2, r2, 9
    2fce:	6848      	and      	r1, r2
    2fd0:	3940      	cmpnei      	r1, 0
    2fd2:	0be7      	bt      	0x2fa0	// 2fa0 <GPT0IntHandler+0x44>
    2fd4:	07cf      	br      	0x2f72	// 2f72 <GPT0IntHandler+0x16>
    2fd6:	0000      	bkpt
    2fd8:	20000028 	.long	0x20000028

Disassembly of section .text.RTCIntHandler:

00002fdc <RTCIntHandler>:
//RTC Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void RTCIntHandler(void) 
{
    2fdc:	1460      	nie
    2fde:	1462      	ipush
    // ISR content ...
	if((RTC->MISR&ALRA_INT)==ALRA_INT)			//Interrupt of alarm A
    2fe0:	1079      	lrw      	r3, 0x2000001c	// 3044 <RTCIntHandler+0x68>
    2fe2:	3101      	movi      	r1, 1
    2fe4:	9360      	ld.w      	r3, (r3, 0x0)
    2fe6:	934a      	ld.w      	r2, (r3, 0x28)
    2fe8:	6884      	and      	r2, r1
    2fea:	3a40      	cmpnei      	r2, 0
    2fec:	0c14      	bf      	0x3014	// 3014 <RTCIntHandler+0x38>
	{
		RTC->ICR=ALRA_INT;
		RTC->KEY=0XCA53;
    2fee:	1057      	lrw      	r2, 0xca53	// 3048 <RTCIntHandler+0x6c>
		RTC->ICR=ALRA_INT;
    2ff0:	b32b      	st.w      	r1, (r3, 0x2c)
		RTC->KEY=0XCA53;
    2ff2:	b34c      	st.w      	r2, (r3, 0x30)
		RTC->CR=RTC->CR|0x01;
    2ff4:	9342      	ld.w      	r2, (r3, 0x8)
    2ff6:	6c84      	or      	r2, r1
    2ff8:	b342      	st.w      	r2, (r3, 0x8)
		RTC->TIMR=(0x10<<16)|(0x00<<8)|(0x00);			//Hour bit6->0:am 1:pm	
    2ffa:	3280      	movi      	r2, 128
    2ffc:	424d      	lsli      	r2, r2, 13
    2ffe:	b340      	st.w      	r2, (r3, 0x0)
		while(RTC->CR&0x02);							//busy TIMR DATR ALRAR ALRBR Update done
    3000:	3102      	movi      	r1, 2
    3002:	9342      	ld.w      	r2, (r3, 0x8)
    3004:	6884      	and      	r2, r1
    3006:	3a40      	cmpnei      	r2, 0
    3008:	0bfd      	bt      	0x3002	// 3002 <RTCIntHandler+0x26>
		RTC->CR &= ~0x1;
    300a:	9342      	ld.w      	r2, (r3, 0x8)
    300c:	3a80      	bclri      	r2, 0
    300e:	b342      	st.w      	r2, (r3, 0x8)
	}
	else if((RTC->MISR&RTC_TRGEV1_INT)==RTC_TRGEV1_INT)		//Interrupt of trigger event 1
	{
		RTC->ICR=RTC_TRGEV1_INT;
	}
}
    3010:	1463      	ipop
    3012:	1461      	nir
	else if((RTC->MISR&ALRB_INT)==ALRB_INT)			//Interrupt of alarm B				
    3014:	934a      	ld.w      	r2, (r3, 0x28)
    3016:	3102      	movi      	r1, 2
    3018:	6884      	and      	r2, r1
    301a:	3a40      	cmpnei      	r2, 0
    301c:	0c03      	bf      	0x3022	// 3022 <RTCIntHandler+0x46>
		RTC->ICR=RTC_TRGEV1_INT;
    301e:	b32b      	st.w      	r1, (r3, 0x2c)
}
    3020:	07f8      	br      	0x3010	// 3010 <RTCIntHandler+0x34>
	else if((RTC->MISR&CPRD_INT)==CPRD_INT)			//Interrupt of alarm CPRD
    3022:	934a      	ld.w      	r2, (r3, 0x28)
    3024:	3104      	movi      	r1, 4
    3026:	6884      	and      	r2, r1
    3028:	3a40      	cmpnei      	r2, 0
    302a:	0bfa      	bt      	0x301e	// 301e <RTCIntHandler+0x42>
	else if((RTC->MISR&RTC_TRGEV0_INT)==RTC_TRGEV0_INT)		//Interrupt of trigger event 0
    302c:	934a      	ld.w      	r2, (r3, 0x28)
    302e:	3108      	movi      	r1, 8
    3030:	6884      	and      	r2, r1
    3032:	3a40      	cmpnei      	r2, 0
    3034:	0bf5      	bt      	0x301e	// 301e <RTCIntHandler+0x42>
	else if((RTC->MISR&RTC_TRGEV1_INT)==RTC_TRGEV1_INT)		//Interrupt of trigger event 1
    3036:	934a      	ld.w      	r2, (r3, 0x28)
    3038:	3110      	movi      	r1, 16
    303a:	6884      	and      	r2, r1
    303c:	3a40      	cmpnei      	r2, 0
    303e:	0bf0      	bt      	0x301e	// 301e <RTCIntHandler+0x42>
    3040:	07e8      	br      	0x3010	// 3010 <RTCIntHandler+0x34>
    3042:	0000      	bkpt
    3044:	2000001c 	.long	0x2000001c
    3048:	0000ca53 	.long	0x0000ca53

Disassembly of section .text.UART0IntHandler:

0000304c <UART0IntHandler>:
//UART0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART0IntHandler(void) 
{
    304c:	1460      	nie
    304e:	1462      	ipush
    // ISR content ...
	if ((UART0->ISR&UART_RX_INT_S)==UART_RX_INT_S)				//RX interrupt
    3050:	106d      	lrw      	r3, 0x20000044	// 3084 <UART0IntHandler+0x38>
    3052:	3102      	movi      	r1, 2
    3054:	9360      	ld.w      	r3, (r3, 0x0)
    3056:	9343      	ld.w      	r2, (r3, 0xc)
    3058:	6884      	and      	r2, r1
    305a:	3a40      	cmpnei      	r2, 0
    305c:	0c03      	bf      	0x3062	// 3062 <UART0IntHandler+0x16>
	{
		UART0->ISR=UART_RX_IOV_S;
	}
	else if ((UART0->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
	{
		UART0->ISR=UART_TX_IOV_S;
    305e:	b323      	st.w      	r1, (r3, 0xc)
	}
}
    3060:	0410      	br      	0x3080	// 3080 <UART0IntHandler+0x34>
	else if( (UART0->ISR&UART_TX_INT_S)==UART_TX_INT_S ) 		//TX interrupt
    3062:	9343      	ld.w      	r2, (r3, 0xc)
    3064:	3101      	movi      	r1, 1
    3066:	6884      	and      	r2, r1
    3068:	3a40      	cmpnei      	r2, 0
    306a:	0bfa      	bt      	0x305e	// 305e <UART0IntHandler+0x12>
	else if ((UART0->ISR&UART_RX_IOV_S)==UART_RX_IOV_S)			//RX overrun interrupt
    306c:	9343      	ld.w      	r2, (r3, 0xc)
    306e:	3108      	movi      	r1, 8
    3070:	6884      	and      	r2, r1
    3072:	3a40      	cmpnei      	r2, 0
    3074:	0bf5      	bt      	0x305e	// 305e <UART0IntHandler+0x12>
	else if ((UART0->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
    3076:	9343      	ld.w      	r2, (r3, 0xc)
    3078:	3104      	movi      	r1, 4
    307a:	6884      	and      	r2, r1
    307c:	3a40      	cmpnei      	r2, 0
    307e:	0bf0      	bt      	0x305e	// 305e <UART0IntHandler+0x12>
}
    3080:	1463      	ipop
    3082:	1461      	nir
    3084:	20000044 	.long	0x20000044

Disassembly of section .text.UART1IntHandler:

00003088 <UART1IntHandler>:
//UART1 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART1IntHandler(void) 
{
    3088:	1460      	nie
    308a:	1462      	ipush
    // ISR content ...
	if ((UART1->ISR&UART_RX_INT_S)==UART_RX_INT_S)				//RX interrupt
    308c:	106d      	lrw      	r3, 0x20000040	// 30c0 <UART1IntHandler+0x38>
    308e:	3102      	movi      	r1, 2
    3090:	9360      	ld.w      	r3, (r3, 0x0)
    3092:	9343      	ld.w      	r2, (r3, 0xc)
    3094:	6884      	and      	r2, r1
    3096:	3a40      	cmpnei      	r2, 0
    3098:	0c03      	bf      	0x309e	// 309e <UART1IntHandler+0x16>
	{
		UART1->ISR=UART_RX_IOV_S;
	}
	else if ((UART1->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
	{
		UART1->ISR=UART_TX_IOV_S;
    309a:	b323      	st.w      	r1, (r3, 0xc)
	}
}
    309c:	0410      	br      	0x30bc	// 30bc <UART1IntHandler+0x34>
	else if( (UART1->ISR&UART_TX_INT_S)==UART_TX_INT_S ) 		//TX interrupt
    309e:	9343      	ld.w      	r2, (r3, 0xc)
    30a0:	3101      	movi      	r1, 1
    30a2:	6884      	and      	r2, r1
    30a4:	3a40      	cmpnei      	r2, 0
    30a6:	0bfa      	bt      	0x309a	// 309a <UART1IntHandler+0x12>
	else if ((UART1->ISR&UART_RX_IOV_S)==UART_RX_IOV_S)			//RX overrun interrupt
    30a8:	9343      	ld.w      	r2, (r3, 0xc)
    30aa:	3108      	movi      	r1, 8
    30ac:	6884      	and      	r2, r1
    30ae:	3a40      	cmpnei      	r2, 0
    30b0:	0bf5      	bt      	0x309a	// 309a <UART1IntHandler+0x12>
	else if ((UART1->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
    30b2:	9343      	ld.w      	r2, (r3, 0xc)
    30b4:	3104      	movi      	r1, 4
    30b6:	6884      	and      	r2, r1
    30b8:	3a40      	cmpnei      	r2, 0
    30ba:	0bf0      	bt      	0x309a	// 309a <UART1IntHandler+0x12>
}
    30bc:	1463      	ipop
    30be:	1461      	nir
    30c0:	20000040 	.long	0x20000040

Disassembly of section .text.UART2IntHandler:

000030c4 <UART2IntHandler>:
//UART2 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART2IntHandler(void) 
{
    30c4:	1460      	nie
    30c6:	1462      	ipush
    // ISR content ...
	if ((UART2->ISR&UART_RX_INT_S)==UART_RX_INT_S)				//RX interrupt
    30c8:	106d      	lrw      	r3, 0x2000003c	// 30fc <UART2IntHandler+0x38>
    30ca:	3102      	movi      	r1, 2
    30cc:	9360      	ld.w      	r3, (r3, 0x0)
    30ce:	9343      	ld.w      	r2, (r3, 0xc)
    30d0:	6884      	and      	r2, r1
    30d2:	3a40      	cmpnei      	r2, 0
    30d4:	0c03      	bf      	0x30da	// 30da <UART2IntHandler+0x16>
	{
		UART2->ISR=UART_RX_IOV_S;
	}
	else if ((UART2->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
	{
		UART2->ISR=UART_TX_IOV_S;
    30d6:	b323      	st.w      	r1, (r3, 0xc)
	}
}
    30d8:	0410      	br      	0x30f8	// 30f8 <UART2IntHandler+0x34>
	else if( (UART2->ISR&UART_TX_INT_S)==UART_TX_INT_S ) 		//TX interrupt
    30da:	9343      	ld.w      	r2, (r3, 0xc)
    30dc:	3101      	movi      	r1, 1
    30de:	6884      	and      	r2, r1
    30e0:	3a40      	cmpnei      	r2, 0
    30e2:	0bfa      	bt      	0x30d6	// 30d6 <UART2IntHandler+0x12>
	else if ((UART2->ISR&UART_RX_IOV_S)==UART_RX_IOV_S)			//RX overrun interrupt
    30e4:	9343      	ld.w      	r2, (r3, 0xc)
    30e6:	3108      	movi      	r1, 8
    30e8:	6884      	and      	r2, r1
    30ea:	3a40      	cmpnei      	r2, 0
    30ec:	0bf5      	bt      	0x30d6	// 30d6 <UART2IntHandler+0x12>
	else if ((UART2->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
    30ee:	9343      	ld.w      	r2, (r3, 0xc)
    30f0:	3104      	movi      	r1, 4
    30f2:	6884      	and      	r2, r1
    30f4:	3a40      	cmpnei      	r2, 0
    30f6:	0bf0      	bt      	0x30d6	// 30d6 <UART2IntHandler+0x12>
}
    30f8:	1463      	ipop
    30fa:	1461      	nir
    30fc:	2000003c 	.long	0x2000003c

Disassembly of section .text.SPI0IntHandler:

00003100 <SPI0IntHandler>:
//SPI Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SPI0IntHandler(void) 
{
    3100:	1460      	nie
    3102:	1462      	ipush
    // ISR content ...
	if((SPI0->MISR&SPI_PORIM)==SPI_PORIM)					//Receive Overrun Interrupt
    3104:	1178      	lrw      	r3, 0x20000038	// 31e4 <SPI0IntHandler+0xe4>
    3106:	3101      	movi      	r1, 1
    3108:	9360      	ld.w      	r3, (r3, 0x0)
    310a:	9347      	ld.w      	r2, (r3, 0x1c)
    310c:	6884      	and      	r2, r1
    310e:	3a40      	cmpnei      	r2, 0
    3110:	0c03      	bf      	0x3116	// 3116 <SPI0IntHandler+0x16>
			}
		}
	}
	else if((SPI0->MISR&SPI_TXIM)==SPI_TXIM)				//Transmit FIFO Interrupt
	{
		SPI0->ICR = SPI_TXIM;
    3112:	b328      	st.w      	r1, (r3, 0x20)
	}

}
    3114:	0407      	br      	0x3122	// 3122 <SPI0IntHandler+0x22>
	else if((SPI0->MISR&SPI_RTIM)==SPI_RTIM)				//Receive Timeout Interrupt
    3116:	9347      	ld.w      	r2, (r3, 0x1c)
    3118:	3002      	movi      	r0, 2
    311a:	6880      	and      	r2, r0
    311c:	3a40      	cmpnei      	r2, 0
    311e:	0c04      	bf      	0x3126	// 3126 <SPI0IntHandler+0x26>
		SPI0->ICR = SPI_RTIM;
    3120:	b308      	st.w      	r0, (r3, 0x20)
}
    3122:	1463      	ipop
    3124:	1461      	nir
	else if((SPI0->MISR&SPI_RXIM)==SPI_RXIM)				//Receive FIFO Interrupt,FIFO can be set 1/8,1/4,1/2 FIFO Interrupt
    3126:	9347      	ld.w      	r2, (r3, 0x1c)
    3128:	3004      	movi      	r0, 4
    312a:	6880      	and      	r2, r0
    312c:	3a40      	cmpnei      	r2, 0
    312e:	0c55      	bf      	0x31d8	// 31d8 <SPI0IntHandler+0xd8>
		SPI0->ICR = SPI_RXIM;
    3130:	b308      	st.w      	r0, (r3, 0x20)
		if(SPI0->DR==0xaa)
    3132:	9302      	ld.w      	r0, (r3, 0x8)
    3134:	32aa      	movi      	r2, 170
    3136:	6482      	cmpne      	r0, r2
    3138:	083e      	bt      	0x31b4	// 31b4 <SPI0IntHandler+0xb4>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    313a:	3102      	movi      	r1, 2
    313c:	9343      	ld.w      	r2, (r3, 0xc)
    313e:	6884      	and      	r2, r1
    3140:	3a40      	cmpnei      	r2, 0
    3142:	0ffd      	bf      	0x313c	// 313c <SPI0IntHandler+0x3c>
			SPI0->DR = 0x11;
    3144:	3211      	movi      	r2, 17
    3146:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    3148:	3110      	movi      	r1, 16
    314a:	9343      	ld.w      	r2, (r3, 0xc)
    314c:	6884      	and      	r2, r1
    314e:	3a40      	cmpnei      	r2, 0
    3150:	0bfd      	bt      	0x314a	// 314a <SPI0IntHandler+0x4a>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    3152:	3102      	movi      	r1, 2
    3154:	9343      	ld.w      	r2, (r3, 0xc)
    3156:	6884      	and      	r2, r1
    3158:	3a40      	cmpnei      	r2, 0
    315a:	0ffd      	bf      	0x3154	// 3154 <SPI0IntHandler+0x54>
			SPI0->DR = 0x12;
    315c:	3212      	movi      	r2, 18
    315e:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    3160:	3110      	movi      	r1, 16
    3162:	9343      	ld.w      	r2, (r3, 0xc)
    3164:	6884      	and      	r2, r1
    3166:	3a40      	cmpnei      	r2, 0
    3168:	0bfd      	bt      	0x3162	// 3162 <SPI0IntHandler+0x62>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    316a:	3102      	movi      	r1, 2
    316c:	9343      	ld.w      	r2, (r3, 0xc)
    316e:	6884      	and      	r2, r1
    3170:	3a40      	cmpnei      	r2, 0
    3172:	0ffd      	bf      	0x316c	// 316c <SPI0IntHandler+0x6c>
			SPI0->DR = 0x13;
    3174:	3213      	movi      	r2, 19
    3176:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    3178:	3110      	movi      	r1, 16
    317a:	9343      	ld.w      	r2, (r3, 0xc)
    317c:	6884      	and      	r2, r1
    317e:	3a40      	cmpnei      	r2, 0
    3180:	0bfd      	bt      	0x317a	// 317a <SPI0IntHandler+0x7a>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    3182:	3102      	movi      	r1, 2
    3184:	9343      	ld.w      	r2, (r3, 0xc)
    3186:	6884      	and      	r2, r1
    3188:	3a40      	cmpnei      	r2, 0
    318a:	0ffd      	bf      	0x3184	// 3184 <SPI0IntHandler+0x84>
			SPI0->DR = 0x14;
    318c:	3214      	movi      	r2, 20
    318e:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    3190:	3110      	movi      	r1, 16
    3192:	9343      	ld.w      	r2, (r3, 0xc)
    3194:	6884      	and      	r2, r1
    3196:	3a40      	cmpnei      	r2, 0
    3198:	0bfd      	bt      	0x3192	// 3192 <SPI0IntHandler+0x92>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    319a:	3102      	movi      	r1, 2
    319c:	9343      	ld.w      	r2, (r3, 0xc)
    319e:	6884      	and      	r2, r1
    31a0:	3a40      	cmpnei      	r2, 0
    31a2:	0ffd      	bf      	0x319c	// 319c <SPI0IntHandler+0x9c>
			SPI0->DR = 0x15;
    31a4:	3215      	movi      	r2, 21
    31a6:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    31a8:	3110      	movi      	r1, 16
    31aa:	9343      	ld.w      	r2, (r3, 0xc)
    31ac:	6884      	and      	r2, r1
    31ae:	3a40      	cmpnei      	r2, 0
    31b0:	0bfd      	bt      	0x31aa	// 31aa <SPI0IntHandler+0xaa>
    31b2:	07b8      	br      	0x3122	// 3122 <SPI0IntHandler+0x22>
			if(((SPI0->SR) & SSP_TFE)!=SSP_TFE)
    31b4:	9343      	ld.w      	r2, (r3, 0xc)
    31b6:	6884      	and      	r2, r1
    31b8:	3a40      	cmpnei      	r2, 0
    31ba:	0bb4      	bt      	0x3122	// 3122 <SPI0IntHandler+0x22>
				SPI0->DR=0x0;								//FIFO=0
    31bc:	b342      	st.w      	r2, (r3, 0x8)
				while(((SPI0->SR) & SSP_BSY) == SSP_BSY);		//Send or receive over？
    31be:	3110      	movi      	r1, 16
				SPI0->DR=0x0;								//FIFO=0
    31c0:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    31c2:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    31c4:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    31c6:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    31c8:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    31ca:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    31cc:	b342      	st.w      	r2, (r3, 0x8)
				while(((SPI0->SR) & SSP_BSY) == SSP_BSY);		//Send or receive over？
    31ce:	9343      	ld.w      	r2, (r3, 0xc)
    31d0:	6884      	and      	r2, r1
    31d2:	3a40      	cmpnei      	r2, 0
    31d4:	0bfd      	bt      	0x31ce	// 31ce <SPI0IntHandler+0xce>
    31d6:	07a6      	br      	0x3122	// 3122 <SPI0IntHandler+0x22>
	else if((SPI0->MISR&SPI_TXIM)==SPI_TXIM)				//Transmit FIFO Interrupt
    31d8:	9347      	ld.w      	r2, (r3, 0x1c)
    31da:	3108      	movi      	r1, 8
    31dc:	6884      	and      	r2, r1
    31de:	3a40      	cmpnei      	r2, 0
    31e0:	0b99      	bt      	0x3112	// 3112 <SPI0IntHandler+0x12>
    31e2:	07a0      	br      	0x3122	// 3122 <SPI0IntHandler+0x22>
    31e4:	20000038 	.long	0x20000038

Disassembly of section .text.SIO0IntHandler:

000031e8 <SIO0IntHandler>:
//SIO Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SIO0IntHandler(void) 
{
    31e8:	1460      	nie
    31ea:	1462      	ipush
		delay_nms(10);
		SIO0->TXBUF=(0x03<<30)|(0x02<<28)|(0x03<<26)|(0x02<<24)|(0x03<<22)|(0x02<<20)|(0x03<<18)|(0x02<<16)|
				(0x01<<14)|(0x00<<12)|(0x01<<10)|(0x00<<8)|(0x01<<6)|(0x00<<4)|(0x01<<2)|(0x0<<0);		//0:D0,1:D1,2:DL,3:DH;	
	}*/
	
	if(SIO0->MISR&0X02)					//RXDNE
    31ec:	107d      	lrw      	r3, 0x20000030	// 3260 <SIO0IntHandler+0x78>
    31ee:	3102      	movi      	r1, 2
    31f0:	9360      	ld.w      	r3, (r3, 0x0)
    31f2:	9349      	ld.w      	r2, (r3, 0x24)
    31f4:	6884      	and      	r2, r1
    31f6:	3a40      	cmpnei      	r2, 0
    31f8:	0c13      	bf      	0x321e	// 321e <SIO0IntHandler+0x36>
	{
		SIO0->ICR=0X02;
    31fa:	b32b      	st.w      	r1, (r3, 0x2c)
		if(R_SIORX_count>=1)
    31fc:	101a      	lrw      	r0, 0x200001c0	// 3264 <SIO0IntHandler+0x7c>
    31fe:	9040      	ld.w      	r2, (r0, 0x0)
    3200:	3a20      	cmplti      	r2, 1
    3202:	080c      	bt      	0x321a	// 321a <SIO0IntHandler+0x32>
		{
			R_SIORX_buf[R_SIORX_count]=SIO0->RXBUF&0xff000000;			//8bit
    3204:	9040      	ld.w      	r2, (r0, 0x0)
    3206:	9327      	ld.w      	r1, (r3, 0x1c)
    3208:	4938      	lsri      	r1, r1, 24
    320a:	4262      	lsli      	r3, r2, 2
    320c:	1057      	lrw      	r2, 0x200001c4	// 3268 <SIO0IntHandler+0x80>
    320e:	4138      	lsli      	r1, r1, 24
    3210:	60c8      	addu      	r3, r2
    3212:	b320      	st.w      	r1, (r3, 0x0)
			nop;
    3214:	6c03      	mov      	r0, r0
			R_SIORX_count=0;
    3216:	3300      	movi      	r3, 0
    3218:	b060      	st.w      	r3, (r0, 0x0)
	}
	else if(SIO0->MISR&0X020)				//TIMEOUT
	{
		SIO0->ICR=0X20;
	}
}
    321a:	1463      	ipop
    321c:	1461      	nir
	else if(SIO0->MISR&0X08)					//RXBUFFULL	
    321e:	9349      	ld.w      	r2, (r3, 0x24)
    3220:	3108      	movi      	r1, 8
    3222:	6884      	and      	r2, r1
    3224:	3a40      	cmpnei      	r2, 0
    3226:	0c10      	bf      	0x3246	// 3246 <SIO0IntHandler+0x5e>
		SIO0->ICR=0X08;
    3228:	b32b      	st.w      	r1, (r3, 0x2c)
		if(R_SIORX_count<1)
    322a:	102f      	lrw      	r1, 0x200001c0	// 3264 <SIO0IntHandler+0x7c>
    322c:	9140      	ld.w      	r2, (r1, 0x0)
    322e:	3a20      	cmplti      	r2, 1
    3230:	0ff5      	bf      	0x321a	// 321a <SIO0IntHandler+0x32>
			R_SIORX_buf[R_SIORX_count]=SIO0->RXBUF;				//32bit
    3232:	9140      	ld.w      	r2, (r1, 0x0)
    3234:	9307      	ld.w      	r0, (r3, 0x1c)
    3236:	4262      	lsli      	r3, r2, 2
    3238:	104c      	lrw      	r2, 0x200001c4	// 3268 <SIO0IntHandler+0x80>
    323a:	60c8      	addu      	r3, r2
    323c:	b300      	st.w      	r0, (r3, 0x0)
			R_SIORX_count++;
    323e:	9160      	ld.w      	r3, (r1, 0x0)
    3240:	2300      	addi      	r3, 1
    3242:	b160      	st.w      	r3, (r1, 0x0)
    3244:	07eb      	br      	0x321a	// 321a <SIO0IntHandler+0x32>
	else if(SIO0->MISR&0X010)				//BREAK
    3246:	9349      	ld.w      	r2, (r3, 0x24)
    3248:	3110      	movi      	r1, 16
    324a:	6884      	and      	r2, r1
    324c:	3a40      	cmpnei      	r2, 0
    324e:	0c03      	bf      	0x3254	// 3254 <SIO0IntHandler+0x6c>
		SIO0->ICR=0X20;
    3250:	b32b      	st.w      	r1, (r3, 0x2c)
}
    3252:	07e4      	br      	0x321a	// 321a <SIO0IntHandler+0x32>
	else if(SIO0->MISR&0X020)				//TIMEOUT
    3254:	9349      	ld.w      	r2, (r3, 0x24)
    3256:	3120      	movi      	r1, 32
    3258:	6884      	and      	r2, r1
    325a:	3a40      	cmpnei      	r2, 0
    325c:	0bfa      	bt      	0x3250	// 3250 <SIO0IntHandler+0x68>
    325e:	07de      	br      	0x321a	// 321a <SIO0IntHandler+0x32>
    3260:	20000030 	.long	0x20000030
    3264:	200001c0 	.long	0x200001c0
    3268:	200001c4 	.long	0x200001c4

Disassembly of section .text.EXI0IntHandler:

0000326c <EXI0IntHandler>:
//EXT0/16 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI0IntHandler(void) 
{
    326c:	1460      	nie
    326e:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN0)==EXI_PIN0) 			//EXT0 Interrupt
    3270:	106a      	lrw      	r3, 0x20000060	// 3298 <EXI0IntHandler+0x2c>
    3272:	3101      	movi      	r1, 1
    3274:	9360      	ld.w      	r3, (r3, 0x0)
    3276:	237f      	addi      	r3, 128
    3278:	934c      	ld.w      	r2, (r3, 0x30)
    327a:	6884      	and      	r2, r1
    327c:	3a40      	cmpnei      	r2, 0
    327e:	0c04      	bf      	0x3286	// 3286 <EXI0IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN0;
    3280:	b32b      	st.w      	r1, (r3, 0x2c)
	}
	else if ((SYSCON->EXIRS&EXI_PIN16)==EXI_PIN16) 		//EXT16 Interrupt
	{
		SYSCON->EXICR = EXI_PIN16;
	}
}
    3282:	1463      	ipop
    3284:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN16)==EXI_PIN16) 		//EXT16 Interrupt
    3286:	3280      	movi      	r2, 128
    3288:	932c      	ld.w      	r1, (r3, 0x30)
    328a:	4249      	lsli      	r2, r2, 9
    328c:	6848      	and      	r1, r2
    328e:	3940      	cmpnei      	r1, 0
    3290:	0ff9      	bf      	0x3282	// 3282 <EXI0IntHandler+0x16>
		SYSCON->EXICR = EXI_PIN16;
    3292:	b34b      	st.w      	r2, (r3, 0x2c)
}
    3294:	07f7      	br      	0x3282	// 3282 <EXI0IntHandler+0x16>
    3296:	0000      	bkpt
    3298:	20000060 	.long	0x20000060

Disassembly of section .text.EXI1IntHandler:

0000329c <EXI1IntHandler>:
//EXT1/17 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI1IntHandler(void) 
{
    329c:	1460      	nie
    329e:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN1)==EXI_PIN1) 			//EXT1 Interrupt
    32a0:	106a      	lrw      	r3, 0x20000060	// 32c8 <EXI1IntHandler+0x2c>
    32a2:	3102      	movi      	r1, 2
    32a4:	9360      	ld.w      	r3, (r3, 0x0)
    32a6:	237f      	addi      	r3, 128
    32a8:	934c      	ld.w      	r2, (r3, 0x30)
    32aa:	6884      	and      	r2, r1
    32ac:	3a40      	cmpnei      	r2, 0
    32ae:	0c04      	bf      	0x32b6	// 32b6 <EXI1IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN1;
    32b0:	b32b      	st.w      	r1, (r3, 0x2c)
	}
	else if ((SYSCON->EXIRS&EXI_PIN17)==EXI_PIN17) 		//EXT17 Interrupt
	{
		SYSCON->EXICR = EXI_PIN17;
	}
}
    32b2:	1463      	ipop
    32b4:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN17)==EXI_PIN17) 		//EXT17 Interrupt
    32b6:	3280      	movi      	r2, 128
    32b8:	932c      	ld.w      	r1, (r3, 0x30)
    32ba:	424a      	lsli      	r2, r2, 10
    32bc:	6848      	and      	r1, r2
    32be:	3940      	cmpnei      	r1, 0
    32c0:	0ff9      	bf      	0x32b2	// 32b2 <EXI1IntHandler+0x16>
		SYSCON->EXICR = EXI_PIN17;
    32c2:	b34b      	st.w      	r2, (r3, 0x2c)
}
    32c4:	07f7      	br      	0x32b2	// 32b2 <EXI1IntHandler+0x16>
    32c6:	0000      	bkpt
    32c8:	20000060 	.long	0x20000060

Disassembly of section .text.EXI2to3IntHandler:

000032cc <EXI2to3IntHandler>:
//EXI2~3 18~19Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI2to3IntHandler(void) 
{
    32cc:	1460      	nie
    32ce:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN2)==EXI_PIN2) 			//EXT2 Interrupt
    32d0:	1070      	lrw      	r3, 0x20000060	// 3310 <EXI2to3IntHandler+0x44>
    32d2:	3104      	movi      	r1, 4
    32d4:	9360      	ld.w      	r3, (r3, 0x0)
    32d6:	237f      	addi      	r3, 128
    32d8:	934c      	ld.w      	r2, (r3, 0x30)
    32da:	6884      	and      	r2, r1
    32dc:	3a40      	cmpnei      	r2, 0
    32de:	0c04      	bf      	0x32e6	// 32e6 <EXI2to3IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN2;
	} 
	else if ((SYSCON->EXIRS&EXI_PIN3)==EXI_PIN3) 		//EXT3 Interrupt
	{
		SYSCON->EXICR = EXI_PIN3;
    32e0:	b32b      	st.w      	r1, (r3, 0x2c)
	}
	else if ((SYSCON->EXIRS&EXI_PIN19)==EXI_PIN19) 		//EXT19 Interrupt
	{
		SYSCON->EXICR = EXI_PIN19;
	}
}
    32e2:	1463      	ipop
    32e4:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN3)==EXI_PIN3) 		//EXT3 Interrupt
    32e6:	934c      	ld.w      	r2, (r3, 0x30)
    32e8:	3108      	movi      	r1, 8
    32ea:	6884      	and      	r2, r1
    32ec:	3a40      	cmpnei      	r2, 0
    32ee:	0bf9      	bt      	0x32e0	// 32e0 <EXI2to3IntHandler+0x14>
	else if ((SYSCON->EXIRS&EXI_PIN18)==EXI_PIN18) 		//EXT18 Interrupt
    32f0:	3280      	movi      	r2, 128
    32f2:	932c      	ld.w      	r1, (r3, 0x30)
    32f4:	424b      	lsli      	r2, r2, 11
    32f6:	6848      	and      	r1, r2
    32f8:	3940      	cmpnei      	r1, 0
    32fa:	0c03      	bf      	0x3300	// 3300 <EXI2to3IntHandler+0x34>
		SYSCON->EXICR = EXI_PIN19;
    32fc:	b34b      	st.w      	r2, (r3, 0x2c)
}
    32fe:	07f2      	br      	0x32e2	// 32e2 <EXI2to3IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN19)==EXI_PIN19) 		//EXT19 Interrupt
    3300:	3280      	movi      	r2, 128
    3302:	932c      	ld.w      	r1, (r3, 0x30)
    3304:	424c      	lsli      	r2, r2, 12
    3306:	6848      	and      	r1, r2
    3308:	3940      	cmpnei      	r1, 0
    330a:	0bf9      	bt      	0x32fc	// 32fc <EXI2to3IntHandler+0x30>
    330c:	07eb      	br      	0x32e2	// 32e2 <EXI2to3IntHandler+0x16>
    330e:	0000      	bkpt
    3310:	20000060 	.long	0x20000060

Disassembly of section .text.EXI4to9IntHandler:

00003314 <EXI4to9IntHandler>:
//EXI4~9 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI4to9IntHandler(void) 
{
    3314:	1460      	nie
    3316:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN4)==EXI_PIN4) 			//EXT4 Interrupt
    3318:	1075      	lrw      	r3, 0x20000060	// 336c <EXI4to9IntHandler+0x58>
    331a:	3280      	movi      	r2, 128
    331c:	9360      	ld.w      	r3, (r3, 0x0)
    331e:	60c8      	addu      	r3, r2
    3320:	932c      	ld.w      	r1, (r3, 0x30)
    3322:	3010      	movi      	r0, 16
    3324:	6840      	and      	r1, r0
    3326:	3940      	cmpnei      	r1, 0
    3328:	0c04      	bf      	0x3330	// 3330 <EXI4to9IntHandler+0x1c>
	{
		SYSCON->EXICR = EXI_PIN5;
	} 
	else if ((SYSCON->EXIRS&EXI_PIN6)==EXI_PIN6) 		//EXT6 Interrupt
	{
		SYSCON->EXICR = EXI_PIN6;
    332a:	b30b      	st.w      	r0, (r3, 0x2c)
	else if ((SYSCON->EXIRS&EXI_PIN9)==EXI_PIN9) 		//EXT9 Interrupt
	{
		SYSCON->EXICR = EXI_PIN9;
	} 

}
    332c:	1463      	ipop
    332e:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN5)==EXI_PIN5) 		//EXT5 Interrupt
    3330:	932c      	ld.w      	r1, (r3, 0x30)
    3332:	3020      	movi      	r0, 32
    3334:	6840      	and      	r1, r0
    3336:	3940      	cmpnei      	r1, 0
    3338:	0bf9      	bt      	0x332a	// 332a <EXI4to9IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN6)==EXI_PIN6) 		//EXT6 Interrupt
    333a:	932c      	ld.w      	r1, (r3, 0x30)
    333c:	3040      	movi      	r0, 64
    333e:	6840      	and      	r1, r0
    3340:	3940      	cmpnei      	r1, 0
    3342:	0bf4      	bt      	0x332a	// 332a <EXI4to9IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN7)==EXI_PIN7) 		//EXT7 Interrupt
    3344:	932c      	ld.w      	r1, (r3, 0x30)
    3346:	6848      	and      	r1, r2
    3348:	3940      	cmpnei      	r1, 0
    334a:	0c03      	bf      	0x3350	// 3350 <EXI4to9IntHandler+0x3c>
		SYSCON->EXICR = EXI_PIN9;
    334c:	b34b      	st.w      	r2, (r3, 0x2c)
}
    334e:	07ef      	br      	0x332c	// 332c <EXI4to9IntHandler+0x18>
	else if ((SYSCON->EXIRS&EXI_PIN8)==EXI_PIN8) 		//EXT8 Interrupt
    3350:	3280      	movi      	r2, 128
    3352:	932c      	ld.w      	r1, (r3, 0x30)
    3354:	4241      	lsli      	r2, r2, 1
    3356:	6848      	and      	r1, r2
    3358:	3940      	cmpnei      	r1, 0
    335a:	0bf9      	bt      	0x334c	// 334c <EXI4to9IntHandler+0x38>
	else if ((SYSCON->EXIRS&EXI_PIN9)==EXI_PIN9) 		//EXT9 Interrupt
    335c:	3280      	movi      	r2, 128
    335e:	932c      	ld.w      	r1, (r3, 0x30)
    3360:	4242      	lsli      	r2, r2, 2
    3362:	6848      	and      	r1, r2
    3364:	3940      	cmpnei      	r1, 0
    3366:	0bf3      	bt      	0x334c	// 334c <EXI4to9IntHandler+0x38>
    3368:	07e2      	br      	0x332c	// 332c <EXI4to9IntHandler+0x18>
    336a:	0000      	bkpt
    336c:	20000060 	.long	0x20000060

Disassembly of section .text.EXI10to15IntHandler:

00003370 <EXI10to15IntHandler>:
//EXI4 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI10to15IntHandler(void) 
{
    3370:	1460      	nie
    3372:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN10)==EXI_PIN10) 			//EXT10 Interrupt
    3374:	1076      	lrw      	r3, 0x20000060	// 33cc <EXI10to15IntHandler+0x5c>
    3376:	3280      	movi      	r2, 128
    3378:	9360      	ld.w      	r3, (r3, 0x0)
    337a:	237f      	addi      	r3, 128
    337c:	932c      	ld.w      	r1, (r3, 0x30)
    337e:	4243      	lsli      	r2, r2, 3
    3380:	6848      	and      	r1, r2
    3382:	3940      	cmpnei      	r1, 0
    3384:	0c03      	bf      	0x338a	// 338a <EXI10to15IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN14;
	}
	else if ((SYSCON->EXIRS&EXI_PIN15)==EXI_PIN15) 		//EXT15 Interrupt
	{
		SYSCON->EXICR = EXI_PIN15;
    3386:	b34b      	st.w      	r2, (r3, 0x2c)
	}
}
    3388:	041f      	br      	0x33c6	// 33c6 <EXI10to15IntHandler+0x56>
	else if ((SYSCON->EXIRS&EXI_PIN11)==EXI_PIN11) 		//EXT11 Interrupt
    338a:	3280      	movi      	r2, 128
    338c:	932c      	ld.w      	r1, (r3, 0x30)
    338e:	4244      	lsli      	r2, r2, 4
    3390:	6848      	and      	r1, r2
    3392:	3940      	cmpnei      	r1, 0
    3394:	0bf9      	bt      	0x3386	// 3386 <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN12)==EXI_PIN12) 		//EXT12 Interrupt
    3396:	3280      	movi      	r2, 128
    3398:	932c      	ld.w      	r1, (r3, 0x30)
    339a:	4245      	lsli      	r2, r2, 5
    339c:	6848      	and      	r1, r2
    339e:	3940      	cmpnei      	r1, 0
    33a0:	0bf3      	bt      	0x3386	// 3386 <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN13)==EXI_PIN13) 		//EXT13 Interrupt
    33a2:	3280      	movi      	r2, 128
    33a4:	932c      	ld.w      	r1, (r3, 0x30)
    33a6:	4246      	lsli      	r2, r2, 6
    33a8:	6848      	and      	r1, r2
    33aa:	3940      	cmpnei      	r1, 0
    33ac:	0bed      	bt      	0x3386	// 3386 <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN14)==EXI_PIN14) 		//EXT14 Interrupt
    33ae:	3280      	movi      	r2, 128
    33b0:	932c      	ld.w      	r1, (r3, 0x30)
    33b2:	4247      	lsli      	r2, r2, 7
    33b4:	6848      	and      	r1, r2
    33b6:	3940      	cmpnei      	r1, 0
    33b8:	0be7      	bt      	0x3386	// 3386 <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN15)==EXI_PIN15) 		//EXT15 Interrupt
    33ba:	3280      	movi      	r2, 128
    33bc:	932c      	ld.w      	r1, (r3, 0x30)
    33be:	4248      	lsli      	r2, r2, 8
    33c0:	6848      	and      	r1, r2
    33c2:	3940      	cmpnei      	r1, 0
    33c4:	0be1      	bt      	0x3386	// 3386 <EXI10to15IntHandler+0x16>
}
    33c6:	1463      	ipop
    33c8:	1461      	nir
    33ca:	0000      	bkpt
    33cc:	20000060 	.long	0x20000060

Disassembly of section .text.LPTIntHandler:

000033d0 <LPTIntHandler>:
//LPT Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void LPTIntHandler(void) 
{
    33d0:	1460      	nie
    33d2:	1462      	ipush
    // ISR content ...
	if((LPT->MISR&LPT_TRGEV0)==LPT_TRGEV0)			//TRGEV0 interrupt
    33d4:	106b      	lrw      	r3, 0x20000018	// 3400 <LPTIntHandler+0x30>
    33d6:	3101      	movi      	r1, 1
    33d8:	9360      	ld.w      	r3, (r3, 0x0)
    33da:	934e      	ld.w      	r2, (r3, 0x38)
    33dc:	6884      	and      	r2, r1
    33de:	3a40      	cmpnei      	r2, 0
    33e0:	0c03      	bf      	0x33e6	// 33e6 <LPTIntHandler+0x16>
	{
		LPT->ICR = LPT_MATCH;
	}
	else if((LPT->MISR&LPT_PEND)==LPT_PEND)			//PEND interrupt
	{
		LPT->ICR = LPT_PEND;
    33e2:	b330      	st.w      	r1, (r3, 0x40)
	}
}
    33e4:	040b      	br      	0x33fa	// 33fa <LPTIntHandler+0x2a>
	else if((LPT->MISR&LPT_MATCH)==LPT_MATCH)		//MATCH interrupt
    33e6:	934e      	ld.w      	r2, (r3, 0x38)
    33e8:	3102      	movi      	r1, 2
    33ea:	6884      	and      	r2, r1
    33ec:	3a40      	cmpnei      	r2, 0
    33ee:	0bfa      	bt      	0x33e2	// 33e2 <LPTIntHandler+0x12>
	else if((LPT->MISR&LPT_PEND)==LPT_PEND)			//PEND interrupt
    33f0:	934e      	ld.w      	r2, (r3, 0x38)
    33f2:	3104      	movi      	r1, 4
    33f4:	6884      	and      	r2, r1
    33f6:	3a40      	cmpnei      	r2, 0
    33f8:	0bf5      	bt      	0x33e2	// 33e2 <LPTIntHandler+0x12>
}
    33fa:	1463      	ipop
    33fc:	1461      	nir
    33fe:	0000      	bkpt
    3400:	20000018 	.long	0x20000018

Disassembly of section .text.BT0IntHandler:

00003404 <BT0IntHandler>:
//BT0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void BT0IntHandler(void) 
{
    3404:	1460      	nie
    3406:	1462      	ipush
    // ISR content ...
	if((BT0->MISR&BT_PEND)==BT_PEND)				//BT0 PEND interrupt
    3408:	1071      	lrw      	r3, 0x20000010	// 344c <BT0IntHandler+0x48>
    340a:	3101      	movi      	r1, 1
    340c:	9360      	ld.w      	r3, (r3, 0x0)
    340e:	934c      	ld.w      	r2, (r3, 0x30)
    3410:	6884      	and      	r2, r1
    3412:	3a40      	cmpnei      	r2, 0
    3414:	0c0a      	bf      	0x3428	// 3428 <BT0IntHandler+0x24>
	{
		BT0->ICR = BT_PEND;
    3416:	b32d      	st.w      	r1, (r3, 0x34)
		bldc.timer_phase++;
    3418:	106e      	lrw      	r3, 0x200001f4	// 3450 <BT0IntHandler+0x4c>
    341a:	8b4e      	ld.h      	r2, (r3, 0x1c)
    341c:	2200      	addi      	r2, 1
    341e:	ab4e      	st.h      	r2, (r3, 0x1c)
		bldc.motor_run = 1;
    3420:	3201      	movi      	r2, 1
    3422:	a342      	st.b      	r2, (r3, 0x2)
	} 
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT0 Event trigger interrupt
	{
		BT0->ICR = BT_EVTRG;
	} 
}
    3424:	1463      	ipop
    3426:	1461      	nir
	else if((BT0->MISR&BT_CMP)==BT_CMP)				//BT0 CMP Match interrupt 
    3428:	934c      	ld.w      	r2, (r3, 0x30)
    342a:	3102      	movi      	r1, 2
    342c:	6884      	and      	r2, r1
    342e:	3a40      	cmpnei      	r2, 0
    3430:	0c03      	bf      	0x3436	// 3436 <BT0IntHandler+0x32>
		BT0->ICR = BT_EVTRG;
    3432:	b32d      	st.w      	r1, (r3, 0x34)
}
    3434:	07f8      	br      	0x3424	// 3424 <BT0IntHandler+0x20>
	else if((BT0->MISR&BT_OVF)==BT_OVF)				//BT0 OVF interrupt
    3436:	934c      	ld.w      	r2, (r3, 0x30)
    3438:	3104      	movi      	r1, 4
    343a:	6884      	and      	r2, r1
    343c:	3a40      	cmpnei      	r2, 0
    343e:	0bfa      	bt      	0x3432	// 3432 <BT0IntHandler+0x2e>
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT0 Event trigger interrupt
    3440:	934c      	ld.w      	r2, (r3, 0x30)
    3442:	3108      	movi      	r1, 8
    3444:	6884      	and      	r2, r1
    3446:	3a40      	cmpnei      	r2, 0
    3448:	0bf5      	bt      	0x3432	// 3432 <BT0IntHandler+0x2e>
    344a:	07ed      	br      	0x3424	// 3424 <BT0IntHandler+0x20>
    344c:	20000010 	.long	0x20000010
    3450:	200001f4 	.long	0x200001f4

Disassembly of section .text.BT1IntHandler:

00003454 <BT1IntHandler>:
//BT1 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void BT1IntHandler(void) 
{
    3454:	1460      	nie
    3456:	1462      	ipush
    // ISR content ...
	if((BT1->MISR&BT_PEND)==BT_PEND)				//BT1 PEND interrupt
    3458:	1071      	lrw      	r3, 0x2000000c	// 349c <BT1IntHandler+0x48>
    345a:	3101      	movi      	r1, 1
    345c:	9360      	ld.w      	r3, (r3, 0x0)
    345e:	934c      	ld.w      	r2, (r3, 0x30)
    3460:	6884      	and      	r2, r1
    3462:	3a40      	cmpnei      	r2, 0
    3464:	0c07      	bf      	0x3472	// 3472 <BT1IntHandler+0x1e>
	{
		BT1->ICR = BT_PEND;
    3466:	b32d      	st.w      	r1, (r3, 0x34)
		bldc.task_run = 1;
    3468:	3201      	movi      	r2, 1
    346a:	106e      	lrw      	r3, 0x200001f4	// 34a0 <BT1IntHandler+0x4c>
    346c:	a341      	st.b      	r2, (r3, 0x1)
	} 
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT1 Event trigger interrupt
	{
		BT1->ICR = BT_EVTRG;
	} 
}
    346e:	1463      	ipop
    3470:	1461      	nir
	else if((BT0->MISR&BT_CMP)==BT_CMP)				//BT1 CMP Match interrupt 
    3472:	104d      	lrw      	r2, 0x20000010	// 34a4 <BT1IntHandler+0x50>
    3474:	3002      	movi      	r0, 2
    3476:	9240      	ld.w      	r2, (r2, 0x0)
    3478:	922c      	ld.w      	r1, (r2, 0x30)
    347a:	6840      	and      	r1, r0
    347c:	3940      	cmpnei      	r1, 0
    347e:	0c03      	bf      	0x3484	// 3484 <BT1IntHandler+0x30>
		BT1->ICR = BT_OVF;
    3480:	b30d      	st.w      	r0, (r3, 0x34)
    3482:	07f6      	br      	0x346e	// 346e <BT1IntHandler+0x1a>
	else if((BT0->MISR&BT_OVF)==BT_OVF)				//BT1 OVF interrupt
    3484:	922c      	ld.w      	r1, (r2, 0x30)
    3486:	3004      	movi      	r0, 4
    3488:	6840      	and      	r1, r0
    348a:	3940      	cmpnei      	r1, 0
    348c:	0bfa      	bt      	0x3480	// 3480 <BT1IntHandler+0x2c>
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT1 Event trigger interrupt
    348e:	924c      	ld.w      	r2, (r2, 0x30)
    3490:	3108      	movi      	r1, 8
    3492:	6884      	and      	r2, r1
    3494:	3a40      	cmpnei      	r2, 0
    3496:	0fec      	bf      	0x346e	// 346e <BT1IntHandler+0x1a>
		BT1->ICR = BT_EVTRG;
    3498:	b32d      	st.w      	r1, (r3, 0x34)
}
    349a:	07ea      	br      	0x346e	// 346e <BT1IntHandler+0x1a>
    349c:	2000000c 	.long	0x2000000c
    34a0:	200001f4 	.long	0x200001f4
    34a4:	20000010 	.long	0x20000010

Disassembly of section .text.PriviledgeVioHandler:

000034a8 <PriviledgeVioHandler>:
    34a8:	783c      	jmp      	r15

Disassembly of section .text.PendTrapHandler:

000034aa <PendTrapHandler>:
    // ISR content ...

}

void PendTrapHandler(void) 
{
    34aa:	1460      	nie
    34ac:	1462      	ipush
    // ISR content ...

}
    34ae:	1463      	ipop
    34b0:	1461      	nir

Disassembly of section .text.Trap3Handler:

000034b2 <Trap3Handler>:
    34b2:	1460      	nie
    34b4:	1462      	ipush
    34b6:	1463      	ipop
    34b8:	1461      	nir

Disassembly of section .text.Trap2Handler:

000034ba <Trap2Handler>:
    34ba:	1460      	nie
    34bc:	1462      	ipush
    34be:	1463      	ipop
    34c0:	1461      	nir

Disassembly of section .text.Trap1Handler:

000034c2 <Trap1Handler>:
    34c2:	1460      	nie
    34c4:	1462      	ipush
    34c6:	1463      	ipop
    34c8:	1461      	nir

Disassembly of section .text.Trap0Handler:

000034ca <Trap0Handler>:
    34ca:	1460      	nie
    34cc:	1462      	ipush
    34ce:	1463      	ipop
    34d0:	1461      	nir

Disassembly of section .text.UnrecExecpHandler:

000034d2 <UnrecExecpHandler>:
    34d2:	1460      	nie
    34d4:	1462      	ipush
    34d6:	1463      	ipop
    34d8:	1461      	nir

Disassembly of section .text.BreakPointHandler:

000034da <BreakPointHandler>:
    34da:	1460      	nie
    34dc:	1462      	ipush
    34de:	1463      	ipop
    34e0:	1461      	nir

Disassembly of section .text.AccessErrHandler:

000034e2 <AccessErrHandler>:
    34e2:	1460      	nie
    34e4:	1462      	ipush
    34e6:	1463      	ipop
    34e8:	1461      	nir

Disassembly of section .text.IllegalInstrHandler:

000034ea <IllegalInstrHandler>:
    34ea:	1460      	nie
    34ec:	1462      	ipush
    34ee:	1463      	ipop
    34f0:	1461      	nir

Disassembly of section .text.MisalignedHandler:

000034f2 <MisalignedHandler>:
    34f2:	1460      	nie
    34f4:	1462      	ipush
    34f6:	1463      	ipop
    34f8:	1461      	nir

Disassembly of section .text.CNTAIntHandler:

000034fa <CNTAIntHandler>:
    34fa:	1460      	nie
    34fc:	1462      	ipush
    34fe:	1463      	ipop
    3500:	1461      	nir

Disassembly of section .text.I2CIntHandler:

00003502 <I2CIntHandler>:
    3502:	1460      	nie
    3504:	1462      	ipush
    3506:	1463      	ipop
    3508:	1461      	nir

Disassembly of section .text.startup.main:

0000350c <main>:

/***************************************************/
//main
/**************************************************/
int main(void) 
{
    350c:	14d2      	push      	r4-r5, r15
  static U16_T timer_close = 0;

  static U8_T control_start;


	delay_nms(1000);							//power on delay if needed
    350e:	30fa      	movi      	r0, 250
    3510:	4002      	lsli      	r0, r0, 2
    3512:	e3fffa03 	bsr      	0x2918	// 2918 <delay_nms>
	APT32F102_init();							//102 initial
    3516:	e3fffb27 	bsr      	0x2b64	// 2b64 <APT32F102_init>

  
 
  
   
   ADC_CONFIG();
    351a:	e0000055 	bsr      	0x35c4	// 35c4 <ADC_CONFIG>
   bldcInit();
    351e:	e0000085 	bsr      	0x3628	// 3628 <bldcInit>
   while (1)
   {
     SYSCON_IWDCNT_Reload();
      if(bldc.task_run == 1)
    3522:	1181      	lrw      	r4, 0x200001f4	// 35a4 <main+0x98>
        }

        switch(bldc.status)
        {
        case ALIGN:
          timer_align++;
    3524:	11a1      	lrw      	r5, 0x20000108	// 35a8 <main+0x9c>
     SYSCON_IWDCNT_Reload();
    3526:	e3fff3dd 	bsr      	0x1ce0	// 1ce0 <SYSCON_IWDCNT_Reload>
      if(bldc.task_run == 1)
    352a:	8461      	ld.b      	r3, (r4, 0x1)
    352c:	3b41      	cmpnei      	r3, 1
    352e:	080d      	bt      	0x3548	// 3548 <main+0x3c>
        bldc.task_run = 0;
    3530:	3300      	movi      	r3, 0
    3532:	a461      	st.b      	r3, (r4, 0x1)
        if(bldc.timer_stuff)
    3534:	8c65      	ld.h      	r3, (r4, 0xa)
    3536:	3b40      	cmpnei      	r3, 0
    3538:	0c10      	bf      	0x3558	// 3558 <main+0x4c>
          bldc.timer_stuff--;
    353a:	2b00      	subi      	r3, 1
    353c:	ac65      	st.h      	r3, (r4, 0xa)
        switch(bldc.status)
    353e:	9469      	ld.w      	r3, (r4, 0x24)
    3540:	3b40      	cmpnei      	r3, 0
    3542:	0c11      	bf      	0x3564	// 3564 <main+0x58>
    3544:	3b41      	cmpnei      	r3, 1
    3546:	0c1e      	bf      	0x3582	// 3582 <main+0x76>
        }

        
        
      }
      if(bldc.motor_run)
    3548:	8462      	ld.b      	r3, (r4, 0x2)
    354a:	3b40      	cmpnei      	r3, 0
    354c:	0fed      	bf      	0x3526	// 3526 <main+0x1a>
      {
        bldc.motor_run = 0;
    354e:	3300      	movi      	r3, 0
    3550:	a462      	st.b      	r3, (r4, 0x2)
        adc_get();
    3552:	e0000135 	bsr      	0x37bc	// 37bc <adc_get>
    3556:	07e8      	br      	0x3526	// 3526 <main+0x1a>
          bldc.timer_stuff = 200;
    3558:	32c8      	movi      	r2, 200
          bldc.status = ALIGN;
    355a:	b469      	st.w      	r3, (r4, 0x24)
          control_start = 1;
    355c:	3301      	movi      	r3, 1
          bldc.timer_stuff = 200;
    355e:	ac45      	st.h      	r2, (r4, 0xa)
          control_start = 1;
    3560:	a560      	st.b      	r3, (r5, 0x0)
    3562:	07ee      	br      	0x353e	// 353e <main+0x32>
          timer_align++;
    3564:	8d61      	ld.h      	r3, (r5, 0x2)
    3566:	2300      	addi      	r3, 1
    3568:	ad61      	st.h      	r3, (r5, 0x2)
          bldc.step = 0;
    356a:	3300      	movi      	r3, 0
    356c:	a460      	st.b      	r3, (r4, 0x0)
          stepMoter();
    356e:	e000007d 	bsr      	0x3668	// 3668 <stepMoter>
          if(timer_align > 3)
    3572:	8d61      	ld.h      	r3, (r5, 0x2)
    3574:	3b03      	cmphsi      	r3, 4
    3576:	0fe9      	bf      	0x3548	// 3548 <main+0x3c>
            timer_align = 0;
    3578:	3300      	movi      	r3, 0
    357a:	ad61      	st.h      	r3, (r5, 0x2)
            bldc.status = OPEN;
    357c:	3301      	movi      	r3, 1
            bldc.status = CLOSE;
    357e:	b469      	st.w      	r3, (r4, 0x24)
    3580:	07e4      	br      	0x3548	// 3548 <main+0x3c>
          blcdStart(&control_start);
    3582:	100a      	lrw      	r0, 0x20000108	// 35a8 <main+0x9c>
    3584:	e00001d2 	bsr      	0x3928	// 3928 <blcdStart>
          timer_close++;
    3588:	8d62      	ld.h      	r3, (r5, 0x4)
    358a:	2300      	addi      	r3, 1
    358c:	74cd      	zexth      	r3, r3
          if (timer_close > 100)
    358e:	3264      	movi      	r2, 100
    3590:	64c8      	cmphs      	r2, r3
    3592:	0c03      	bf      	0x3598	// 3598 <main+0x8c>
          timer_close++;
    3594:	ad62      	st.h      	r3, (r5, 0x4)
    3596:	07d9      	br      	0x3548	// 3548 <main+0x3c>
            timer_close = 0;
    3598:	3300      	movi      	r3, 0
    359a:	ad62      	st.h      	r3, (r5, 0x4)
            bldc.xiao = _OK;
    359c:	3302      	movi      	r3, 2
    359e:	b46a      	st.w      	r3, (r4, 0x28)
    35a0:	07ef      	br      	0x357e	// 357e <main+0x72>
    35a2:	0000      	bkpt
    35a4:	200001f4 	.long	0x200001f4
    35a8:	20000108 	.long	0x20000108

Disassembly of section .text.fputc:

000035ac <fputc>:
U16_T last_adc_value[3];
void blcdStart(U8_T*);
void stepMoter(void);
void __putchar__ (char ch) ;
int fputc(int ch, FILE *f)
{
    35ac:	14d1      	push      	r4, r15
    UARTTxByte(UART0,ch);	
    35ae:	1065      	lrw      	r3, 0x20000044	// 35c0 <fputc+0x14>
{
    35b0:	6d03      	mov      	r4, r0
    UARTTxByte(UART0,ch);	
    35b2:	7440      	zextb      	r1, r0
    35b4:	9300      	ld.w      	r0, (r3, 0x0)
    35b6:	e3fff574 	bsr      	0x209e	// 209e <UARTTxByte>
    return (ch);
}
    35ba:	6c13      	mov      	r0, r4
    35bc:	1491      	pop      	r4, r15
    35be:	0000      	bkpt
    35c0:	20000044 	.long	0x20000044

Disassembly of section .text.ADC_CONFIG:

000035c4 <ADC_CONFIG>:
{

}

void ADC_CONFIG(void)
{
    35c4:	14d0      	push      	r15
    35c6:	1422      	subi      	r14, r14, 8
    ADC12_Software_Reset();
    35c8:	e3fff7ae 	bsr      	0x2524	// 2524 <ADC12_Software_Reset>
    ADC12_CLK_CMD(ADC_CLK_CR, ENABLE);                                                  // enable ADC CLK
    35cc:	3101      	movi      	r1, 1
    35ce:	3002      	movi      	r0, 2
    35d0:	e3fff794 	bsr      	0x24f8	// 24f8 <ADC12_CLK_CMD>
    ADC12_Configure_Mode(ADC12_12BIT, Continuous_mode, 0, 6, 2, 3);                     // 12BIT ADC; Continuous mode; Conversion priority selection 0; Holding cycles=6 ;ADC_CLK=PCLK/2*2=0.2us; Number of Conversions=1
    35d4:	3303      	movi      	r3, 3
    35d6:	b861      	st.w      	r3, (r14, 0x4)
    35d8:	3302      	movi      	r3, 2
    35da:	b860      	st.w      	r3, (r14, 0x0)
    35dc:	3200      	movi      	r2, 0
    35de:	3306      	movi      	r3, 6
    35e0:	3101      	movi      	r1, 1
    35e2:	3001      	movi      	r0, 1
    35e4:	e3fff7d0 	bsr      	0x2584	// 2584 <ADC12_Configure_Mode>
    ADC12_Configure_VREF_Selecte(ADC12_VREFP_VDD_VREFN_VSS);                        // ADC VREF Positive FVR4.096V,negative VSS
    35e8:	3000      	movi      	r0, 0
    35ea:	e3fff80b 	bsr      	0x2600	// 2600 <ADC12_Configure_VREF_Selecte>
    ADC12_ConversionChannel_Config(CH_A, ADC12_CV_RepeatNum1, ADC12_AVGDIS, 0); // SEQ0 chose ADCIN0, 6 Holding cycles, Average 1 time
    35ee:	3300      	movi      	r3, 0
    35f0:	3200      	movi      	r2, 0
    35f2:	3100      	movi      	r1, 0
    35f4:	3001      	movi      	r0, 1
    35f6:	e3fff8d1 	bsr      	0x2798	// 2798 <ADC12_ConversionChannel_Config>
    ADC12_ConversionChannel_Config(CH_B, ADC12_CV_RepeatNum1, ADC12_AVGDIS, 1); // SEQ1 chose ADCIN1, 6 Holding cycles , Average 1 time
    35fa:	3301      	movi      	r3, 1
    35fc:	3200      	movi      	r2, 0
    35fe:	3100      	movi      	r1, 0
    3600:	3002      	movi      	r0, 2
    3602:	e3fff8cb 	bsr      	0x2798	// 2798 <ADC12_ConversionChannel_Config>
    ADC12_ConversionChannel_Config(CH_C, ADC12_CV_RepeatNum1, ADC12_AVGDIS, 2); // SEQ1 chose ADCIN1, 6 Holding cycles , Average 1 time
    3606:	3302      	movi      	r3, 2
    3608:	3200      	movi      	r2, 0
    360a:	3100      	movi      	r1, 0
    360c:	3003      	movi      	r0, 3
    360e:	e3fff8c5 	bsr      	0x2798	// 2798 <ADC12_ConversionChannel_Config>
    ADC12_CMD(ENABLE);                                                                  // enable ADC
    3612:	3001      	movi      	r0, 1
    3614:	e3fff78e 	bsr      	0x2530	// 2530 <ADC12_CMD>
    ADC12_ready_wait();                                                                 // wait ADC get ready
    3618:	e3fff7a0 	bsr      	0x2558	// 2558 <ADC12_ready_wait>
    ADC12_Control(ADC12_START);                                                         // ADC convert start
    361c:	3008      	movi      	r0, 8
    361e:	e3fff755 	bsr      	0x24c8	// 24c8 <ADC12_Control>
    //    ADC12_ConfigInterrupt_CMD(ADC12_CMP0L, ENABLE);
    //    // ADC12_ConfigInterrupt_CMD(ADC12_CMP1H, ENABLE);
    //    // ADC12_ConfigInterrupt_CMD(ADC12_CMP1L, ENABLE);
    //    ADC0->MR |= (CSP_REGISTER_T)(1UL << 30);
    //    ADC_Int_Enable();
}
    3622:	1402      	addi      	r14, r14, 8
    3624:	1490      	pop      	r15

Disassembly of section .text.bldcInit:

00003628 <bldcInit>:
    last_adc_value[1] = adc_value[1];
    last_adc_value[2] = adc_value[2];
}

void bldcInit(void)
{
    3628:	14d1      	push      	r4, r15
    bldc.status = OPEN;
    362a:	106d      	lrw      	r3, 0x200001f4	// 365c <bldcInit+0x34>
    362c:	3201      	movi      	r2, 1
    362e:	b349      	st.w      	r2, (r3, 0x24)
    bldc.xiao = _OK;
    3630:	3202      	movi      	r2, 2
    3632:	b34a      	st.w      	r2, (r3, 0x28)
    bldc.zero_base = 1638;//1638 ;//12V
    3634:	104c      	lrw      	r2, 0x666	// 3664 <bldcInit+0x3c>
    // GPIO_Init(GAL_PORT, GAL_PIN, 0);
    // GPIO_Init(GBL_PORT, GBL_PIN, 0);
    // GPIO_Init(GCL_PORT, GCL_PIN, 0);
    GPIO_Init(GAB_PORT, GAB_PIN, 0);
    3636:	108b      	lrw      	r4, 0x2000004c	// 3660 <bldcInit+0x38>
    3638:	3104      	movi      	r1, 4
    bldc.zero_base = 1638;//1638 ;//12V
    363a:	ab42      	st.h      	r2, (r3, 0x4)
    GPIO_Init(GAB_PORT, GAB_PIN, 0);
    363c:	9400      	ld.w      	r0, (r4, 0x0)
    363e:	3200      	movi      	r2, 0
    3640:	e3fff3b8 	bsr      	0x1db0	// 1db0 <GPIO_Init>
    GPIO_Init(GBB_PORT, GBB_PIN, 0);
    3644:	9400      	ld.w      	r0, (r4, 0x0)
    3646:	3200      	movi      	r2, 0
    3648:	3101      	movi      	r1, 1
    364a:	e3fff3b3 	bsr      	0x1db0	// 1db0 <GPIO_Init>
    GPIO_Init(GCB_PORT, GCB_PIN, 0);
    364e:	9400      	ld.w      	r0, (r4, 0x0)
    3650:	3200      	movi      	r2, 0
    3652:	3100      	movi      	r1, 0
    3654:	e3fff3ae 	bsr      	0x1db0	// 1db0 <GPIO_Init>
}
    3658:	1491      	pop      	r4, r15
    365a:	0000      	bkpt
    365c:	200001f4 	.long	0x200001f4
    3660:	2000004c 	.long	0x2000004c
    3664:	00000666 	.long	0x00000666

Disassembly of section .text.stepMoter:

00003668 <stepMoter>:
     
}

#define DUTY ( 4800 * 1.0)
void stepMoter(void)
{
    3668:	14d2      	push      	r4-r5, r15
    366a:	1421      	subi      	r14, r14, 4
    
    switch (bldc.step)
    366c:	1272      	lrw      	r3, 0x200001f4	// 37b4 <stepMoter+0x14c>
    366e:	8300      	ld.b      	r0, (r3, 0x0)
    3670:	3805      	cmphsi      	r0, 6
    3672:	083d      	bt      	0x36ec	// 36ec <stepMoter+0x84>
    3674:	1291      	lrw      	r4, 0x2000004c	// 37b8 <stepMoter+0x150>
    3676:	e3ffeb43 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    367a:	2203      	.short	0x2203
    367c:	896d573b 	.long	0x896d573b
    {
    case 0: //AB
        // GAL_LOW;
        // GBL_LOW;
        // GCL_LOW;
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, 0, 0, 0);
    3680:	3500      	movi      	r5, 0
    3682:	3096      	movi      	r0, 150
    3684:	3300      	movi      	r3, 0
    3686:	3200      	movi      	r2, 0
    3688:	3100      	movi      	r1, 0
    368a:	4005      	lsli      	r0, r0, 5
    368c:	b8a0      	st.w      	r5, (r14, 0x0)
    368e:	e3fff70f 	bsr      	0x24ac	// 24ac <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>
        GAB_LOW;
    3692:	3200      	movi      	r2, 0
    3694:	3104      	movi      	r1, 4
    3696:	9400      	ld.w      	r0, (r4, 0x0)
    3698:	e3fff3fc 	bsr      	0x1e90	// 1e90 <GPIO_Set_Value>
        GCB_LOW;
    369c:	3200      	movi      	r2, 0
    369e:	3100      	movi      	r1, 0
    36a0:	9400      	ld.w      	r0, (r4, 0x0)
    36a2:	e3fff3f7 	bsr      	0x1e90	// 1e90 <GPIO_Set_Value>
        bldc_delay();
//        ADC12_Compare_statue(NBRCMP0_TypeDef, NBRCMPX_L_TypeDef);
//        ADC12_CompareFunction_set(CH_A , CH_A , center , center ) ;
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, DUTY, 0, 0, 0); // PRDR=2400,CMPA=1200,CMPB=DUTY,CMPC=2400,CMPD=0
    36a6:	3196      	movi      	r1, 150
    36a8:	4125      	lsli      	r1, r1, 5
    36aa:	b8a0      	st.w      	r5, (r14, 0x0)
    36ac:	3300      	movi      	r3, 0
    36ae:	3200      	movi      	r2, 0
    36b0:	6c07      	mov      	r0, r1
    36b2:	e3fff6fd 	bsr      	0x24ac	// 24ac <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>

        GAB_LOW;
        GCB_LOW;
        bldc_delay();

        GBB_HIGH;
    36b6:	9400      	ld.w      	r0, (r4, 0x0)
    36b8:	3201      	movi      	r2, 1
    36ba:	3101      	movi      	r1, 1
    36bc:	0416      	br      	0x36e8	// 36e8 <stepMoter+0x80>
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, DUTY, 0, 0, 0);
    36be:	3196      	movi      	r1, 150
    36c0:	3300      	movi      	r3, 0
    36c2:	4125      	lsli      	r1, r1, 5
    36c4:	6c07      	mov      	r0, r1
    36c6:	b860      	st.w      	r3, (r14, 0x0)
    36c8:	3200      	movi      	r2, 0
    36ca:	e3fff6f1 	bsr      	0x24ac	// 24ac <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>
        GAB_LOW;
    36ce:	3200      	movi      	r2, 0
    36d0:	3104      	movi      	r1, 4
    36d2:	9400      	ld.w      	r0, (r4, 0x0)
    36d4:	e3fff3de 	bsr      	0x1e90	// 1e90 <GPIO_Set_Value>
        GBB_LOW;
    36d8:	3200      	movi      	r2, 0
    36da:	3101      	movi      	r1, 1
    36dc:	9400      	ld.w      	r0, (r4, 0x0)
    36de:	e3fff3d9 	bsr      	0x1e90	// 1e90 <GPIO_Set_Value>
        GCB_HIGH;
    36e2:	9400      	ld.w      	r0, (r4, 0x0)
    36e4:	3201      	movi      	r2, 1
    36e6:	3100      	movi      	r1, 0
        GBB_HIGH;
    36e8:	e3fff3d4 	bsr      	0x1e90	// 1e90 <GPIO_Set_Value>
    

    default:
        break;
    }
}
    36ec:	1401      	addi      	r14, r14, 4
    36ee:	1492      	pop      	r4-r5, r15
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, 0, 0, 0);
    36f0:	3500      	movi      	r5, 0
    36f2:	3096      	movi      	r0, 150
    36f4:	3300      	movi      	r3, 0
    36f6:	b8a0      	st.w      	r5, (r14, 0x0)
    36f8:	3200      	movi      	r2, 0
    36fa:	3100      	movi      	r1, 0
    36fc:	4005      	lsli      	r0, r0, 5
    36fe:	e3fff6d7 	bsr      	0x24ac	// 24ac <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>
        GAB_LOW;
    3702:	9400      	ld.w      	r0, (r4, 0x0)
    3704:	3200      	movi      	r2, 0
    3706:	3104      	movi      	r1, 4
    3708:	e3fff3c4 	bsr      	0x1e90	// 1e90 <GPIO_Set_Value>
        GBB_LOW;
    370c:	9400      	ld.w      	r0, (r4, 0x0)
    370e:	3200      	movi      	r2, 0
    3710:	3101      	movi      	r1, 1
    3712:	e3fff3bf 	bsr      	0x1e90	// 1e90 <GPIO_Set_Value>
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, DUTY, 0, 0);
    3716:	3296      	movi      	r2, 150
    3718:	4245      	lsli      	r2, r2, 5
    371a:	b8a0      	st.w      	r5, (r14, 0x0)
    371c:	3300      	movi      	r3, 0
    371e:	3100      	movi      	r1, 0
    3720:	6c0b      	mov      	r0, r2
    3722:	e3fff6c5 	bsr      	0x24ac	// 24ac <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>
    3726:	07de      	br      	0x36e2	// 36e2 <stepMoter+0x7a>
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, DUTY, 0, 0);
    3728:	3296      	movi      	r2, 150
    372a:	3300      	movi      	r3, 0
    372c:	4245      	lsli      	r2, r2, 5
    372e:	6c0b      	mov      	r0, r2
    3730:	b860      	st.w      	r3, (r14, 0x0)
    3732:	3100      	movi      	r1, 0
    3734:	e3fff6bc 	bsr      	0x24ac	// 24ac <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>
        GBB_LOW;
    3738:	3200      	movi      	r2, 0
    373a:	3101      	movi      	r1, 1
    373c:	9400      	ld.w      	r0, (r4, 0x0)
    373e:	e3fff3a9 	bsr      	0x1e90	// 1e90 <GPIO_Set_Value>
        GCB_LOW;
    3742:	3200      	movi      	r2, 0
    3744:	3100      	movi      	r1, 0
    3746:	9400      	ld.w      	r0, (r4, 0x0)
    3748:	e3fff3a4 	bsr      	0x1e90	// 1e90 <GPIO_Set_Value>
        GAB_HIGH;
    374c:	9400      	ld.w      	r0, (r4, 0x0)
    374e:	3201      	movi      	r2, 1
    3750:	3104      	movi      	r1, 4
    3752:	07cb      	br      	0x36e8	// 36e8 <stepMoter+0x80>
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, 0, 0, 0);
    3754:	3500      	movi      	r5, 0
    3756:	3096      	movi      	r0, 150
    3758:	3300      	movi      	r3, 0
    375a:	b8a0      	st.w      	r5, (r14, 0x0)
    375c:	3200      	movi      	r2, 0
    375e:	3100      	movi      	r1, 0
    3760:	4005      	lsli      	r0, r0, 5
    3762:	e3fff6a5 	bsr      	0x24ac	// 24ac <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>
        GBB_LOW;
    3766:	9400      	ld.w      	r0, (r4, 0x0)
    3768:	3200      	movi      	r2, 0
    376a:	3101      	movi      	r1, 1
    376c:	e3fff392 	bsr      	0x1e90	// 1e90 <GPIO_Set_Value>
        GCB_LOW;
    3770:	9400      	ld.w      	r0, (r4, 0x0)
    3772:	3200      	movi      	r2, 0
    3774:	3100      	movi      	r1, 0
    3776:	e3fff38d 	bsr      	0x1e90	// 1e90 <GPIO_Set_Value>
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, 0, DUTY, 0);
    377a:	3396      	movi      	r3, 150
    377c:	4365      	lsli      	r3, r3, 5
    377e:	b8a0      	st.w      	r5, (r14, 0x0)
    3780:	3200      	movi      	r2, 0
    3782:	3100      	movi      	r1, 0
    3784:	6c0f      	mov      	r0, r3
    3786:	e3fff693 	bsr      	0x24ac	// 24ac <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>
    378a:	07e1      	br      	0x374c	// 374c <stepMoter+0xe4>
        EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config(4800, 0, 0, DUTY, 0);
    378c:	3300      	movi      	r3, 0
    378e:	b860      	st.w      	r3, (r14, 0x0)
    3790:	3396      	movi      	r3, 150
    3792:	4365      	lsli      	r3, r3, 5
    3794:	6c0f      	mov      	r0, r3
    3796:	3200      	movi      	r2, 0
    3798:	3100      	movi      	r1, 0
    379a:	e3fff689 	bsr      	0x24ac	// 24ac <EPT_PRDR_CMPA_CMPB_CMPC_CMPD_Config>
        GAB_LOW;
    379e:	9400      	ld.w      	r0, (r4, 0x0)
    37a0:	3200      	movi      	r2, 0
    37a2:	3104      	movi      	r1, 4
    37a4:	e3fff376 	bsr      	0x1e90	// 1e90 <GPIO_Set_Value>
        GCB_LOW;
    37a8:	3200      	movi      	r2, 0
    37aa:	3100      	movi      	r1, 0
    37ac:	9400      	ld.w      	r0, (r4, 0x0)
    37ae:	e3fff371 	bsr      	0x1e90	// 1e90 <GPIO_Set_Value>
    37b2:	0782      	br      	0x36b6	// 36b6 <stepMoter+0x4e>
    37b4:	200001f4 	.long	0x200001f4
    37b8:	2000004c 	.long	0x2000004c

Disassembly of section .text.adc_get:

000037bc <adc_get>:
{
    37bc:	14d3      	push      	r4-r6, r15
    adc_value[0] = ADC0->DR[0];
    37be:	1295      	lrw      	r4, 0x20000054	// 3910 <adc_get+0x154>
    ADC12_SEQEND_wait(0);
    37c0:	3000      	movi      	r0, 0
    37c2:	e3fff6d5 	bsr      	0x256c	// 256c <ADC12_SEQEND_wait>
    adc_value[0] = ADC0->DR[0];
    37c6:	9460      	ld.w      	r3, (r4, 0x0)
    37c8:	23ff      	addi      	r3, 256
    37ca:	9360      	ld.w      	r3, (r3, 0x0)
    ADC12_SEQEND_wait(1);
    37cc:	3001      	movi      	r0, 1
    adc_value[0] = ADC0->DR[0];
    37ce:	12b2      	lrw      	r5, 0x200001ec	// 3914 <adc_get+0x158>
    37d0:	ad60      	st.h      	r3, (r5, 0x0)
    ADC12_SEQEND_wait(1);
    37d2:	e3fff6cd 	bsr      	0x256c	// 256c <ADC12_SEQEND_wait>
    adc_value[1] = ADC0->DR[1];
    37d6:	9460      	ld.w      	r3, (r4, 0x0)
    37d8:	23ff      	addi      	r3, 256
    37da:	9361      	ld.w      	r3, (r3, 0x4)
    ADC12_SEQEND_wait(2);
    37dc:	3002      	movi      	r0, 2
    adc_value[1] = ADC0->DR[1];
    37de:	ad61      	st.h      	r3, (r5, 0x2)
    ADC12_SEQEND_wait(2);
    37e0:	e3fff6c6 	bsr      	0x256c	// 256c <ADC12_SEQEND_wait>
    adc_value[2] = ADC0->DR[2];
    37e4:	9460      	ld.w      	r3, (r4, 0x0)
    37e6:	23ff      	addi      	r3, 256
        if(bldc.timer_delay)
    37e8:	128c      	lrw      	r4, 0x200001f4	// 3918 <adc_get+0x15c>
    adc_value[2] = ADC0->DR[2];
    37ea:	9342      	ld.w      	r2, (r3, 0x8)
        if(bldc.timer_delay)
    37ec:	8c6f      	ld.h      	r3, (r4, 0x1e)
    adc_value[2] = ADC0->DR[2];
    37ee:	7489      	zexth      	r2, r2
        if(bldc.timer_delay)
    37f0:	3b40      	cmpnei      	r3, 0
    adc_value[2] = ADC0->DR[2];
    37f2:	ad42      	st.h      	r2, (r5, 0x4)
        if(bldc.timer_delay)
    37f4:	0c0b      	bf      	0x380a	// 380a <adc_get+0x4e>
            bldc.timer_delay--;
    37f6:	2b00      	subi      	r3, 1
    37f8:	ac6f      	st.h      	r3, (r4, 0x1e)
    switch (bldc.step)
    37fa:	8400      	ld.b      	r0, (r4, 0x0)
    37fc:	3805      	cmphsi      	r0, 6
    37fe:	0815      	bt      	0x3828	// 3828 <adc_get+0x6c>
    3800:	e3ffea7e 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    3804:	6c68640d 	.long	0x6c68640d
    3808:	716f      	.short	0x716f
        else if(bldc.timer_delay_start)
    380a:	3320      	movi      	r3, 32
    380c:	60d0      	addu      	r3, r4
    380e:	8320      	ld.b      	r1, (r3, 0x0)
    3810:	3940      	cmpnei      	r1, 0
    3812:	0ff4      	bf      	0x37fa	// 37fa <adc_get+0x3e>
            bldc.timer_delay_start = 0;
    3814:	3100      	movi      	r1, 0
    3816:	a320      	st.b      	r1, (r3, 0x0)
            bldc.delay_ok = 1;
    3818:	3101      	movi      	r1, 1
    381a:	a321      	st.b      	r1, (r3, 0x1)
    381c:	07ef      	br      	0x37fa	// 37fa <adc_get+0x3e>
        if (adc_value[2] < bldc.zero_base )//&& last_adc_value[2] > bldc.zero_base)
    381e:	8c62      	ld.h      	r3, (r4, 0x4)
    3820:	64c8      	cmphs      	r2, r3
    3822:	0803      	bt      	0x3828	// 3828 <adc_get+0x6c>
            bldc.zero = 1;
    3824:	3301      	movi      	r3, 1
    3826:	a466      	st.b      	r3, (r4, 0x6)
    if (bldc.zero == 1  && bldc.xiao == _OK)//过零 且消磁
    3828:	8466      	ld.b      	r3, (r4, 0x6)
    382a:	3b41      	cmpnei      	r3, 1
    382c:	0868      	bt      	0x38fc	// 38fc <adc_get+0x140>
    382e:	946a      	ld.w      	r3, (r4, 0x28)
    3830:	3b42      	cmpnei      	r3, 2
    3832:	0865      	bt      	0x38fc	// 38fc <adc_get+0x140>
        bldc.zero = 0;
    3834:	3300      	movi      	r3, 0
    3836:	a466      	st.b      	r3, (r4, 0x6)
        bldc.timer_phase_buff[j] = bldc.timer_phase;
    3838:	8c0e      	ld.h      	r0, (r4, 0x1c)
    383a:	1179      	lrw      	r3, 0x2000010e	// 391c <adc_get+0x160>
    383c:	8340      	ld.b      	r2, (r3, 0x0)
    383e:	5a36      	addi      	r1, r2, 6
        if (++j >= 8)
    3840:	2200      	addi      	r2, 1
        bldc.timer_phase_buff[j] = bldc.timer_phase;
    3842:	4121      	lsli      	r1, r1, 1
        if (++j >= 8)
    3844:	7488      	zextb      	r2, r2
        bldc.timer_phase_buff[j] = bldc.timer_phase;
    3846:	6050      	addu      	r1, r4
        if (++j >= 8)
    3848:	3a07      	cmphsi      	r2, 8
        bldc.timer_phase_buff[j] = bldc.timer_phase;
    384a:	a900      	st.h      	r0, (r1, 0x0)
        if (++j >= 8)
    384c:	084f      	bt      	0x38ea	// 38ea <adc_get+0x12e>
            j = 0;
    384e:	a340      	st.b      	r2, (r3, 0x0)
        for (bldc.timer_phase = 0, i = 0; i < 8; i++)
    3850:	3200      	movi      	r2, 0
    3852:	ac4e      	st.h      	r2, (r4, 0x1c)
    3854:	a341      	st.b      	r2, (r3, 0x1)
    3856:	3100      	movi      	r1, 0
    3858:	11d0      	lrw      	r6, 0x200001f4	// 3918 <adc_get+0x15c>
    385a:	3200      	movi      	r2, 0
    385c:	3000      	movi      	r0, 0
    385e:	3848      	cmpnei      	r0, 8
    3860:	2601      	addi      	r6, 2
    3862:	0846      	bt      	0x38ee	// 38ee <adc_get+0x132>
    3864:	3940      	cmpnei      	r1, 0
    3866:	0c04      	bf      	0x386e	// 386e <adc_get+0xb2>
    3868:	3108      	movi      	r1, 8
    386a:	a321      	st.b      	r1, (r3, 0x1)
    386c:	ac4e      	st.h      	r2, (r4, 0x1c)
        bldc.timer_phase = bldc.timer_phase >> 4;
    386e:	8c6e      	ld.h      	r3, (r4, 0x1c)
    3870:	4b64      	lsri      	r3, r3, 4
        bldc.delay_ok = 0;
    3872:	3200      	movi      	r2, 0
        bldc.timer_delay = bldc.timer_phase;  //装载30°延时
    3874:	ac6f      	st.h      	r3, (r4, 0x1e)
        bldc.delay_ok = 0;
    3876:	116b      	lrw      	r3, 0x20000214	// 3920 <adc_get+0x164>
    3878:	a341      	st.b      	r2, (r3, 0x1)
        bldc.timer_delay_start = 1;
    387a:	3201      	movi      	r2, 1
    387c:	a340      	st.b      	r2, (r3, 0x0)
        bldc.timer_phase = 0;//换相计数清零
    387e:	3300      	movi      	r3, 0
    3880:	ac6e      	st.h      	r3, (r4, 0x1c)
        bldc.xiao = _NO;  //需要消磁
    3882:	3300      	movi      	r3, 0
    3884:	b46a      	st.w      	r3, (r4, 0x28)
    if (bldc.delay_ok == 1)
    3886:	11c7      	lrw      	r6, 0x20000214	// 3920 <adc_get+0x164>
    3888:	8641      	ld.b      	r2, (r6, 0x1)
    388a:	3a41      	cmpnei      	r2, 1
    388c:	0818      	bt      	0x38bc	// 38bc <adc_get+0x100>
        bldc.delay_ok = 0;
    388e:	3300      	movi      	r3, 0
    3890:	a661      	st.b      	r3, (r6, 0x1)
        if(bldc.xiao == _NO)
    3892:	946a      	ld.w      	r3, (r4, 0x28)
    3894:	3b40      	cmpnei      	r3, 0
    3896:	0838      	bt      	0x3906	// 3906 <adc_get+0x14a>
            if (bldc.status == CLOSE)
    3898:	9469      	ld.w      	r3, (r4, 0x24)
    389a:	3b42      	cmpnei      	r3, 2
            bldc.xiao = _ING;
    389c:	b44a      	st.w      	r2, (r4, 0x28)
            if (bldc.status == CLOSE)
    389e:	080b      	bt      	0x38b4	// 38b4 <adc_get+0xf8>
                if (++bldc.step >= 6)
    38a0:	8460      	ld.b      	r3, (r4, 0x0)
    38a2:	2300      	addi      	r3, 1
    38a4:	74cc      	zextb      	r3, r3
    38a6:	3b05      	cmphsi      	r3, 6
    38a8:	082d      	bt      	0x3902	// 3902 <adc_get+0x146>
                    bldc.step = 0;
    38aa:	a460      	st.b      	r3, (r4, 0x0)
                stepMoter();
    38ac:	e3fffede 	bsr      	0x3668	// 3668 <stepMoter>
                bldc.timer_stuff = 200;
    38b0:	33c8      	movi      	r3, 200
    38b2:	ac65      	st.h      	r3, (r4, 0xa)
            bldc.timer_delay_start = 1;
    38b4:	3301      	movi      	r3, 1
    38b6:	a660      	st.b      	r3, (r6, 0x0)
            bldc.timer_delay = 2;
    38b8:	3302      	movi      	r3, 2
    38ba:	ac6f      	st.h      	r3, (r4, 0x1e)
    last_adc_value[0] = adc_value[0];
    38bc:	107a      	lrw      	r3, 0x20000220	// 3924 <adc_get+0x168>
    38be:	8d40      	ld.h      	r2, (r5, 0x0)
    38c0:	ab40      	st.h      	r2, (r3, 0x0)
    last_adc_value[1] = adc_value[1];
    38c2:	8d41      	ld.h      	r2, (r5, 0x2)
    38c4:	ab41      	st.h      	r2, (r3, 0x2)
    last_adc_value[2] = adc_value[2];
    38c6:	8d42      	ld.h      	r2, (r5, 0x4)
    38c8:	ab42      	st.h      	r2, (r3, 0x4)
}
    38ca:	1493      	pop      	r4-r6, r15
        if (adc_value[1] > bldc.zero_base )//&& last_adc_value[1] < bldc.zero_base)
    38cc:	8d41      	ld.h      	r2, (r5, 0x2)
        if (adc_value[0] > bldc.zero_base )//&& last_adc_value[0] < bldc.zero_base)
    38ce:	8c62      	ld.h      	r3, (r4, 0x4)
    38d0:	648c      	cmphs      	r3, r2
    38d2:	07a8      	br      	0x3822	// 3822 <adc_get+0x66>
        if (adc_value[0] < bldc.zero_base )//&& last_adc_value[0] > bldc.zero_base)
    38d4:	8d40      	ld.h      	r2, (r5, 0x0)
        if (adc_value[1] < bldc.zero_base )//&& last_adc_value[1] > bldc.zero_base)
    38d6:	8c62      	ld.h      	r3, (r4, 0x4)
    38d8:	64c8      	cmphs      	r2, r3
    38da:	07a4      	br      	0x3822	// 3822 <adc_get+0x66>
        if (adc_value[2] > bldc.zero_base )//&& last_adc_value[2] < bldc.zero_base)
    38dc:	8c62      	ld.h      	r3, (r4, 0x4)
    38de:	648c      	cmphs      	r3, r2
    38e0:	07a1      	br      	0x3822	// 3822 <adc_get+0x66>
        if (adc_value[1] < bldc.zero_base )//&& last_adc_value[1] > bldc.zero_base)
    38e2:	8d41      	ld.h      	r2, (r5, 0x2)
    38e4:	07f9      	br      	0x38d6	// 38d6 <adc_get+0x11a>
        if (adc_value[0] > bldc.zero_base )//&& last_adc_value[0] < bldc.zero_base)
    38e6:	8d40      	ld.h      	r2, (r5, 0x0)
    38e8:	07f3      	br      	0x38ce	// 38ce <adc_get+0x112>
            j = 0;
    38ea:	3200      	movi      	r2, 0
    38ec:	07b1      	br      	0x384e	// 384e <adc_get+0x92>
            bldc.timer_phase += bldc.timer_phase_buff[i];
    38ee:	8e25      	ld.h      	r1, (r6, 0xa)
    38f0:	6084      	addu      	r2, r1
        for (bldc.timer_phase = 0, i = 0; i < 8; i++)
    38f2:	2000      	addi      	r0, 1
            bldc.timer_phase += bldc.timer_phase_buff[i];
    38f4:	7489      	zexth      	r2, r2
        for (bldc.timer_phase = 0, i = 0; i < 8; i++)
    38f6:	7400      	zextb      	r0, r0
    38f8:	3101      	movi      	r1, 1
    38fa:	07b2      	br      	0x385e	// 385e <adc_get+0xa2>
        bldc.zero = 0;
    38fc:	3300      	movi      	r3, 0
    38fe:	a466      	st.b      	r3, (r4, 0x6)
    3900:	07c3      	br      	0x3886	// 3886 <adc_get+0xca>
                    bldc.step = 0;
    3902:	3300      	movi      	r3, 0
    3904:	07d3      	br      	0x38aa	// 38aa <adc_get+0xee>
        else if (bldc.xiao == _ING)
    3906:	3b41      	cmpnei      	r3, 1
    3908:	0bda      	bt      	0x38bc	// 38bc <adc_get+0x100>
            bldc.xiao = _OK;
    390a:	3302      	movi      	r3, 2
    390c:	b46a      	st.w      	r3, (r4, 0x28)
    390e:	07d7      	br      	0x38bc	// 38bc <adc_get+0x100>
    3910:	20000054 	.long	0x20000054
    3914:	200001ec 	.long	0x200001ec
    3918:	200001f4 	.long	0x200001f4
    391c:	2000010e 	.long	0x2000010e
    3920:	20000214 	.long	0x20000214
    3924:	20000220 	.long	0x20000220

Disassembly of section .text.blcdStart:

00003928 <blcdStart>:
{
    3928:	14d1      	push      	r4, r15
    if(*control == 1)
    392a:	8060      	ld.b      	r3, (r0, 0x0)
    392c:	3b41      	cmpnei      	r3, 1
    392e:	1090      	lrw      	r4, 0x20000000	// 396c <blcdStart+0x44>
    3930:	0805      	bt      	0x393a	// 393a <blcdStart+0x12>
        i = 5;
    3932:	3305      	movi      	r3, 5
    3934:	a460      	st.b      	r3, (r4, 0x0)
        *control = 0;
    3936:	3300      	movi      	r3, 0
    3938:	a060      	st.b      	r3, (r0, 0x0)
    if(timer++ > i)
    393a:	106e      	lrw      	r3, 0x2000010e	// 3970 <blcdStart+0x48>
    393c:	8b41      	ld.h      	r2, (r3, 0x2)
    393e:	5a22      	addi      	r1, r2, 1
    3940:	ab21      	st.h      	r1, (r3, 0x2)
    3942:	8420      	ld.b      	r1, (r4, 0x0)
    3944:	6484      	cmphs      	r1, r2
    3946:	0812      	bt      	0x396a	// 396a <blcdStart+0x42>
        timer = 0;
    3948:	3200      	movi      	r2, 0
    394a:	ab41      	st.h      	r2, (r3, 0x2)
        if (++bldc.step >= 6)
    394c:	104a      	lrw      	r2, 0x200001f4	// 3974 <blcdStart+0x4c>
    394e:	8260      	ld.b      	r3, (r2, 0x0)
    3950:	2300      	addi      	r3, 1
    3952:	74cc      	zextb      	r3, r3
    3954:	3b05      	cmphsi      	r3, 6
    3956:	a260      	st.b      	r3, (r2, 0x0)
    3958:	0c07      	bf      	0x3966	// 3966 <blcdStart+0x3e>
            if(i>=2)
    395a:	3901      	cmphsi      	r1, 2
    395c:	0c03      	bf      	0x3962	// 3962 <blcdStart+0x3a>
                 i --;
    395e:	2900      	subi      	r1, 1
    3960:	a420      	st.b      	r1, (r4, 0x0)
            bldc.step = 0;
    3962:	3300      	movi      	r3, 0
    3964:	a260      	st.b      	r3, (r2, 0x0)
        stepMoter();
    3966:	e3fffe81 	bsr      	0x3668	// 3668 <stepMoter>
}
    396a:	1491      	pop      	r4, r15
    396c:	20000000 	.long	0x20000000
    3970:	2000010e 	.long	0x2000010e
    3974:	200001f4 	.long	0x200001f4

Disassembly of section .text.__divsi3:

00003978 <__divsi3>:
CSP_BT_T    	*BT1      = (CSP_BT_T   *)APB_BT1Base ;
CSP_CRC_T   	*CRC      = (CSP_CRC_T  *)AHB_CRCBase ;
CSP_HWD_T   	*HWD      = (CSP_HWD_T  *)APB_HWDBase ;

int __divsi3 (  int a,   int b)
{   
    3978:	14c1      	push      	r4
	int PSR;
	__asm volatile(
    397a:	c0006023 	mfcr      	r3, cr<0, 0>
    397e:	c0807020 	psrclr      	ie
					"mfcr %0 , psr \n\r"
					"psrclr ie \n\r"
					: "=r"(PSR)
				   );

	HWD->CR = 0;
    3982:	1046      	lrw      	r2, 0x20000004	// 3998 <__divsi3+0x20>
    3984:	3400      	movi      	r4, 0
    3986:	9240      	ld.w      	r2, (r2, 0x0)
    3988:	b284      	st.w      	r4, (r2, 0x10)
	HWD->DIVIDENT = a;
	HWD->DIVISOR = b;

	PSR |= 0x80000000;
    398a:	3bbf      	bseti      	r3, 31
	HWD->DIVIDENT = a;
    398c:	b200      	st.w      	r0, (r2, 0x0)
	HWD->DIVISOR = b;
    398e:	b221      	st.w      	r1, (r2, 0x4)
	__asm volatile(
    3990:	c0036420 	mtcr      	r3, cr<0, 0>
					 "mtcr %0 , psr \n\r"
					 : 
					 :"r"(PSR)
					);
					
	return HWD->QUOTIENT;
    3994:	9202      	ld.w      	r0, (r2, 0x8)
}
    3996:	1481      	pop      	r4
    3998:	20000004 	.long	0x20000004

Disassembly of section .text.__udivsi3:

0000399c <__udivsi3>:
 unsigned int __udivsi3 ( unsigned int a,  unsigned int b)
{   
    399c:	14c1      	push      	r4
	int PSR;
	__asm volatile(
    399e:	c0006023 	mfcr      	r3, cr<0, 0>
    39a2:	c0807020 	psrclr      	ie
					"mfcr %0 , psr \n\r"
					"psrclr ie \n\r"
					: "=r"(PSR)
				   );
	
	HWD->CR = 1;
    39a6:	1046      	lrw      	r2, 0x20000004	// 39bc <__udivsi3+0x20>
    39a8:	3401      	movi      	r4, 1
    39aa:	9240      	ld.w      	r2, (r2, 0x0)
    39ac:	b284      	st.w      	r4, (r2, 0x10)
	HWD->DIVIDENT = a;
	HWD->DIVISOR = b;

	PSR |= 0x80000000;
    39ae:	3bbf      	bseti      	r3, 31
	HWD->DIVIDENT = a;
    39b0:	b200      	st.w      	r0, (r2, 0x0)
	HWD->DIVISOR = b;
    39b2:	b221      	st.w      	r1, (r2, 0x4)
	__asm volatile(
    39b4:	c0036420 	mtcr      	r3, cr<0, 0>
					 "mtcr %0 , psr \n\r"
					 : 
					 :"r"(PSR)
					);

	return HWD->QUOTIENT;
    39b8:	9202      	ld.w      	r0, (r2, 0x8)
}
    39ba:	1481      	pop      	r4
    39bc:	20000004 	.long	0x20000004

Disassembly of section .text.CK_CPU_EnAllNormalIrq:

000039c0 <CK_CPU_EnAllNormalIrq>:
}


void CK_CPU_EnAllNormalIrq(void)
{
  asm  ("psrset ee,ie");
    39c0:	c1807420 	psrset      	ee, ie
}
    39c4:	783c      	jmp      	r15

Disassembly of section .text.TK_Sampling_prog:

000039c8 <TK_Sampling_prog>:
    39c8:	14c4      	push      	r4-r7
    39ca:	1423      	subi      	r14, r14, 12
    39cc:	1169      	lrw      	r3, 0x20000058	// 3a70 <TK_Sampling_prog+0xa8>
    39ce:	114a      	lrw      	r2, 0x200004c1	// 3a74 <TK_Sampling_prog+0xac>
    39d0:	6d0b      	mov      	r4, r2
    39d2:	9320      	ld.w      	r1, (r3, 0x0)
    39d4:	b840      	st.w      	r2, (r14, 0x0)
    39d6:	3300      	movi      	r3, 0
    39d8:	11a8      	lrw      	r5, 0x2000054e	// 3a78 <TK_Sampling_prog+0xb0>
    39da:	9840      	ld.w      	r2, (r14, 0x0)
    39dc:	8240      	ld.b      	r2, (r2, 0x0)
    39de:	3a41      	cmpnei      	r2, 1
    39e0:	0808      	bt      	0x39f0	// 39f0 <TK_Sampling_prog+0x28>
    39e2:	4342      	lsli      	r2, r3, 2
    39e4:	6084      	addu      	r2, r1
    39e6:	9200      	ld.w      	r0, (r2, 0x0)
    39e8:	4341      	lsli      	r2, r3, 1
    39ea:	7401      	zexth      	r0, r0
    39ec:	6094      	addu      	r2, r5
    39ee:	aa00      	st.h      	r0, (r2, 0x0)
    39f0:	8440      	ld.b      	r2, (r4, 0x0)
    39f2:	3a42      	cmpnei      	r2, 2
    39f4:	0809      	bt      	0x3a06	// 3a06 <TK_Sampling_prog+0x3e>
    39f6:	4342      	lsli      	r2, r3, 2
    39f8:	6084      	addu      	r2, r1
    39fa:	9200      	ld.w      	r0, (r2, 0x0)
    39fc:	4341      	lsli      	r2, r3, 1
    39fe:	11c0      	lrw      	r6, 0x20000308	// 3a7c <TK_Sampling_prog+0xb4>
    3a00:	7401      	zexth      	r0, r0
    3a02:	6098      	addu      	r2, r6
    3a04:	aa00      	st.h      	r0, (r2, 0x0)
    3a06:	8440      	ld.b      	r2, (r4, 0x0)
    3a08:	3a40      	cmpnei      	r2, 0
    3a0a:	0809      	bt      	0x3a1c	// 3a1c <TK_Sampling_prog+0x54>
    3a0c:	4342      	lsli      	r2, r3, 2
    3a0e:	6084      	addu      	r2, r1
    3a10:	9200      	ld.w      	r0, (r2, 0x0)
    3a12:	4341      	lsli      	r2, r3, 1
    3a14:	10db      	lrw      	r6, 0x200003f6	// 3a80 <TK_Sampling_prog+0xb8>
    3a16:	7401      	zexth      	r0, r0
    3a18:	6098      	addu      	r2, r6
    3a1a:	aa00      	st.h      	r0, (r2, 0x0)
    3a1c:	10da      	lrw      	r6, 0x20000361	// 3a84 <TK_Sampling_prog+0xbc>
    3a1e:	8640      	ld.b      	r2, (r6, 0x0)
    3a20:	3a41      	cmpnei      	r2, 1
    3a22:	0821      	bt      	0x3a64	// 3a64 <TK_Sampling_prog+0x9c>
    3a24:	1079      	lrw      	r3, 0x2000022c	// 3a88 <TK_Sampling_prog+0xc0>
    3a26:	3200      	movi      	r2, 0
    3a28:	b861      	st.w      	r3, (r14, 0x4)
    3a2a:	1075      	lrw      	r3, 0x20000308	// 3a7c <TK_Sampling_prog+0xb4>
    3a2c:	b862      	st.w      	r3, (r14, 0x8)
    3a2e:	4261      	lsli      	r3, r2, 1
    3a30:	5d0c      	addu      	r0, r5, r3
    3a32:	8800      	ld.h      	r0, (r0, 0x0)
    3a34:	98e1      	ld.w      	r7, (r14, 0x4)
    3a36:	61cc      	addu      	r7, r3
    3a38:	7401      	zexth      	r0, r0
    3a3a:	af00      	st.h      	r0, (r7, 0x0)
    3a3c:	9802      	ld.w      	r0, (r14, 0x8)
    3a3e:	600c      	addu      	r0, r3
    3a40:	8800      	ld.h      	r0, (r0, 0x0)
    3a42:	10f3      	lrw      	r7, 0x200003c2	// 3a8c <TK_Sampling_prog+0xc4>
    3a44:	61cc      	addu      	r7, r3
    3a46:	7401      	zexth      	r0, r0
    3a48:	af00      	st.h      	r0, (r7, 0x0)
    3a4a:	2200      	addi      	r2, 1
    3a4c:	100d      	lrw      	r0, 0x200003f6	// 3a80 <TK_Sampling_prog+0xb8>
    3a4e:	600c      	addu      	r0, r3
    3a50:	8800      	ld.h      	r0, (r0, 0x0)
    3a52:	10f0      	lrw      	r7, 0x200004c2	// 3a90 <TK_Sampling_prog+0xc8>
    3a54:	7401      	zexth      	r0, r0
    3a56:	60dc      	addu      	r3, r7
    3a58:	3a51      	cmpnei      	r2, 17
    3a5a:	ab00      	st.h      	r0, (r3, 0x0)
    3a5c:	0be9      	bt      	0x3a2e	// 3a2e <TK_Sampling_prog+0x66>
    3a5e:	3300      	movi      	r3, 0
    3a60:	a660      	st.b      	r3, (r6, 0x0)
    3a62:	3311      	movi      	r3, 17
    3a64:	2300      	addi      	r3, 1
    3a66:	74cc      	zextb      	r3, r3
    3a68:	3b10      	cmphsi      	r3, 17
    3a6a:	0fb8      	bf      	0x39da	// 39da <TK_Sampling_prog+0x12>
    3a6c:	1403      	addi      	r14, r14, 12
    3a6e:	1484      	pop      	r4-r7
    3a70:	20000058 	.long	0x20000058
    3a74:	200004c1 	.long	0x200004c1
    3a78:	2000054e 	.long	0x2000054e
    3a7c:	20000308 	.long	0x20000308
    3a80:	200003f6 	.long	0x200003f6
    3a84:	20000361 	.long	0x20000361
    3a88:	2000022c 	.long	0x2000022c
    3a8c:	200003c2 	.long	0x200003c2
    3a90:	200004c2 	.long	0x200004c2

Disassembly of section .text.get_key_number:

00003a94 <get_key_number>:
    3a94:	14c2      	push      	r4-r5
    3a96:	3200      	movi      	r2, 0
    3a98:	3000      	movi      	r0, 0
    3a9a:	1088      	lrw      	r4, 0x200003bc	// 3ab8 <get_key_number+0x24>
    3a9c:	3501      	movi      	r5, 1
    3a9e:	3120      	movi      	r1, 32
    3aa0:	9460      	ld.w      	r3, (r4, 0x0)
    3aa2:	70c9      	lsr      	r3, r2
    3aa4:	68d4      	and      	r3, r5
    3aa6:	3b40      	cmpnei      	r3, 0
    3aa8:	0c02      	bf      	0x3aac	// 3aac <get_key_number+0x18>
    3aaa:	2000      	addi      	r0, 1
    3aac:	2200      	addi      	r2, 1
    3aae:	644a      	cmpne      	r2, r1
    3ab0:	0bf8      	bt      	0x3aa0	// 3aa0 <get_key_number+0xc>
    3ab2:	7400      	zextb      	r0, r0
    3ab4:	1482      	pop      	r4-r5
    3ab6:	0000      	bkpt
    3ab8:	200003bc 	.long	0x200003bc

Disassembly of section .text.TK_Scan_Start:

00003abc <TK_Scan_Start>:
    3abc:	1073      	lrw      	r3, 0x2000006c	// 3b08 <TK_Scan_Start+0x4c>
    3abe:	1054      	lrw      	r2, 0x200004c1	// 3b0c <TK_Scan_Start+0x50>
    3ac0:	8302      	ld.b      	r0, (r3, 0x2)
    3ac2:	8220      	ld.b      	r1, (r2, 0x0)
    3ac4:	6442      	cmpne      	r0, r1
    3ac6:	0c16      	bf      	0x3af2	// 3af2 <TK_Scan_Start+0x36>
    3ac8:	8220      	ld.b      	r1, (r2, 0x0)
    3aca:	7444      	zextb      	r1, r1
    3acc:	3941      	cmpnei      	r1, 1
    3ace:	0c18      	bf      	0x3afe	// 3afe <TK_Scan_Start+0x42>
    3ad0:	3940      	cmpnei      	r1, 0
    3ad2:	0c11      	bf      	0x3af4	// 3af4 <TK_Scan_Start+0x38>
    3ad4:	3942      	cmpnei      	r1, 2
    3ad6:	0c16      	bf      	0x3b02	// 3b02 <TK_Scan_Start+0x46>
    3ad8:	8240      	ld.b      	r2, (r2, 0x0)
    3ada:	7488      	zextb      	r2, r2
    3adc:	a342      	st.b      	r2, (r3, 0x2)
    3ade:	8343      	ld.b      	r2, (r3, 0x3)
    3ae0:	7488      	zextb      	r2, r2
    3ae2:	3a41      	cmpnei      	r2, 1
    3ae4:	0807      	bt      	0x3af2	// 3af2 <TK_Scan_Start+0x36>
    3ae6:	102b      	lrw      	r1, 0x2000005c	// 3b10 <TK_Scan_Start+0x54>
    3ae8:	9120      	ld.w      	r1, (r1, 0x0)
    3aea:	b142      	st.w      	r2, (r1, 0x8)
    3aec:	3200      	movi      	r2, 0
    3aee:	a340      	st.b      	r2, (r3, 0x0)
    3af0:	a343      	st.b      	r2, (r3, 0x3)
    3af2:	783c      	jmp      	r15
    3af4:	1028      	lrw      	r1, 0x20000570	// 3b14 <TK_Scan_Start+0x58>
    3af6:	9100      	ld.w      	r0, (r1, 0x0)
    3af8:	1028      	lrw      	r1, 0x40011200	// 3b18 <TK_Scan_Start+0x5c>
    3afa:	b110      	st.w      	r0, (r1, 0x40)
    3afc:	07ee      	br      	0x3ad8	// 3ad8 <TK_Scan_Start+0x1c>
    3afe:	1028      	lrw      	r1, 0x20000304	// 3b1c <TK_Scan_Start+0x60>
    3b00:	07fb      	br      	0x3af6	// 3af6 <TK_Scan_Start+0x3a>
    3b02:	1028      	lrw      	r1, 0x20000330	// 3b20 <TK_Scan_Start+0x64>
    3b04:	07f9      	br      	0x3af6	// 3af6 <TK_Scan_Start+0x3a>
    3b06:	0000      	bkpt
    3b08:	2000006c 	.long	0x2000006c
    3b0c:	200004c1 	.long	0x200004c1
    3b10:	2000005c 	.long	0x2000005c
    3b14:	20000570 	.long	0x20000570
    3b18:	40011200 	.long	0x40011200
    3b1c:	20000304 	.long	0x20000304
    3b20:	20000330 	.long	0x20000330

Disassembly of section .text.TK_Keymap_prog:

00003b24 <TK_Keymap_prog>:
    3b24:	14d4      	push      	r4-r7, r15
    3b26:	142a      	subi      	r14, r14, 40
    3b28:	0171      	lrw      	r3, 0x20000148	// 3e60 <TK_Keymap_prog+0x33c>
    3b2a:	8360      	ld.b      	r3, (r3, 0x0)
    3b2c:	b860      	st.w      	r3, (r14, 0x0)
    3b2e:	3400      	movi      	r4, 0
    3b30:	0172      	lrw      	r3, 0x20000114	// 3e64 <TK_Keymap_prog+0x340>
    3b32:	8360      	ld.b      	r3, (r3, 0x0)
    3b34:	b863      	st.w      	r3, (r14, 0xc)
    3b36:	0172      	lrw      	r3, 0x20000125	// 3e68 <TK_Keymap_prog+0x344>
    3b38:	83a0      	ld.b      	r5, (r3, 0x0)
    3b3a:	0172      	lrw      	r3, 0x20000124	// 3e6c <TK_Keymap_prog+0x348>
    3b3c:	8360      	ld.b      	r3, (r3, 0x0)
    3b3e:	b866      	st.w      	r3, (r14, 0x18)
    3b40:	0173      	lrw      	r3, 0x2000054e	// 3e70 <TK_Keymap_prog+0x34c>
    3b42:	b868      	st.w      	r3, (r14, 0x20)
    3b44:	0173      	lrw      	r3, 0x200002e0	// 3e74 <TK_Keymap_prog+0x350>
    3b46:	b864      	st.w      	r3, (r14, 0x10)
    3b48:	b869      	st.w      	r3, (r14, 0x24)
    3b4a:	4461      	lsli      	r3, r4, 1
    3b4c:	9848      	ld.w      	r2, (r14, 0x20)
    3b4e:	608c      	addu      	r2, r3
    3b50:	0135      	lrw      	r1, 0x2000022c	// 3e78 <TK_Keymap_prog+0x354>
    3b52:	604c      	addu      	r1, r3
    3b54:	8a40      	ld.h      	r2, (r2, 0x0)
    3b56:	8920      	ld.h      	r1, (r1, 0x0)
    3b58:	6086      	subu      	r2, r1
    3b5a:	9829      	ld.w      	r1, (r14, 0x24)
    3b5c:	604c      	addu      	r1, r3
    3b5e:	748b      	sexth      	r2, r2
    3b60:	a940      	st.h      	r2, (r1, 0x0)
    3b62:	0118      	lrw      	r0, 0x200003c2	// 3e7c <TK_Keymap_prog+0x358>
    3b64:	0158      	lrw      	r2, 0x20000308	// 3e80 <TK_Keymap_prog+0x35c>
    3b66:	608c      	addu      	r2, r3
    3b68:	600c      	addu      	r0, r3
    3b6a:	8a40      	ld.h      	r2, (r2, 0x0)
    3b6c:	8800      	ld.h      	r0, (r0, 0x0)
    3b6e:	6082      	subu      	r2, r0
    3b70:	01da      	lrw      	r6, 0x20000418	// 3e84 <TK_Keymap_prog+0x360>
    3b72:	5e0c      	addu      	r0, r6, r3
    3b74:	748b      	sexth      	r2, r2
    3b76:	a840      	st.h      	r2, (r0, 0x0)
    3b78:	b8c1      	st.w      	r6, (r14, 0x4)
    3b7a:	015b      	lrw      	r2, 0x200003f6	// 3e88 <TK_Keymap_prog+0x364>
    3b7c:	011b      	lrw      	r0, 0x200004c2	// 3e8c <TK_Keymap_prog+0x368>
    3b7e:	608c      	addu      	r2, r3
    3b80:	600c      	addu      	r0, r3
    3b82:	8a40      	ld.h      	r2, (r2, 0x0)
    3b84:	8800      	ld.h      	r0, (r0, 0x0)
    3b86:	6082      	subu      	r2, r0
    3b88:	011d      	lrw      	r0, 0x2000052a	// 3e90 <TK_Keymap_prog+0x36c>
    3b8a:	748b      	sexth      	r2, r2
    3b8c:	58ec      	addu      	r7, r0, r3
    3b8e:	af40      	st.h      	r2, (r7, 0x0)
    3b90:	8940      	ld.h      	r2, (r1, 0x0)
    3b92:	748b      	sexth      	r2, r2
    3b94:	3adf      	btsti      	r2, 31
    3b96:	015f      	lrw      	r2, 0x20000508	// 3e94 <TK_Keymap_prog+0x370>
    3b98:	60c8      	addu      	r3, r2
    3b9a:	b802      	st.w      	r0, (r14, 0x8)
    3b9c:	0c49      	bf      	0x3c2e	// 3c2e <TK_Keymap_prog+0x10a>
    3b9e:	3200      	movi      	r2, 0
    3ba0:	ab40      	st.h      	r2, (r3, 0x0)
    3ba2:	9821      	ld.w      	r1, (r14, 0x4)
    3ba4:	4461      	lsli      	r3, r4, 1
    3ba6:	604c      	addu      	r1, r3
    3ba8:	8940      	ld.h      	r2, (r1, 0x0)
    3baa:	748b      	sexth      	r2, r2
    3bac:	3adf      	btsti      	r2, 31
    3bae:	0244      	lrw      	r2, 0x20000290	// 3e98 <TK_Keymap_prog+0x374>
    3bb0:	60c8      	addu      	r3, r2
    3bb2:	0c41      	bf      	0x3c34	// 3c34 <TK_Keymap_prog+0x110>
    3bb4:	3200      	movi      	r2, 0
    3bb6:	ab40      	st.h      	r2, (r3, 0x0)
    3bb8:	9822      	ld.w      	r1, (r14, 0x8)
    3bba:	4461      	lsli      	r3, r4, 1
    3bbc:	604c      	addu      	r1, r3
    3bbe:	8940      	ld.h      	r2, (r1, 0x0)
    3bc0:	748b      	sexth      	r2, r2
    3bc2:	3adf      	btsti      	r2, 31
    3bc4:	0249      	lrw      	r2, 0x20000264	// 3e9c <TK_Keymap_prog+0x378>
    3bc6:	60c8      	addu      	r3, r2
    3bc8:	0c39      	bf      	0x3c3a	// 3c3a <TK_Keymap_prog+0x116>
    3bca:	3200      	movi      	r2, 0
    3bcc:	ab40      	st.h      	r2, (r3, 0x0)
    3bce:	9860      	ld.w      	r3, (r14, 0x0)
    3bd0:	3b03      	cmphsi      	r3, 4
    3bd2:	4421      	lsli      	r1, r4, 1
    3bd4:	0cb5      	bf      	0x3d3e	// 3d3e <TK_Keymap_prog+0x21a>
    3bd6:	9864      	ld.w      	r3, (r14, 0x10)
    3bd8:	60c4      	addu      	r3, r1
    3bda:	024d      	lrw      	r2, 0x2000017e	// 3ea0 <TK_Keymap_prog+0x37c>
    3bdc:	6048      	addu      	r1, r2
    3bde:	8b00      	ld.h      	r0, (r3, 0x0)
    3be0:	8940      	ld.h      	r2, (r1, 0x0)
    3be2:	7403      	sexth      	r0, r0
    3be4:	6409      	cmplt      	r2, r0
    3be6:	9820      	ld.w      	r1, (r14, 0x0)
    3be8:	7c84      	mult      	r2, r1
    3bea:	0c9b      	bf      	0x3d20	// 3d20 <TK_Keymap_prog+0x1fc>
    3bec:	8b20      	ld.h      	r1, (r3, 0x0)
    3bee:	7447      	sexth      	r1, r1
    3bf0:	6485      	cmplt      	r1, r2
    3bf2:	0c97      	bf      	0x3d20	// 3d20 <TK_Keymap_prog+0x1fc>
    3bf4:	0233      	lrw      	r1, 0x200002cd	// 3ea4 <TK_Keymap_prog+0x380>
    3bf6:	6050      	addu      	r1, r4
    3bf8:	8140      	ld.b      	r2, (r1, 0x0)
    3bfa:	2200      	addi      	r2, 1
    3bfc:	7488      	zextb      	r2, r2
    3bfe:	a140      	st.b      	r2, (r1, 0x0)
    3c00:	3000      	movi      	r0, 0
    3c02:	0255      	lrw      	r2, 0x200002b2	// 3ea8 <TK_Keymap_prog+0x384>
    3c04:	6090      	addu      	r2, r4
    3c06:	a200      	st.b      	r0, (r2, 0x0)
    3c08:	0256      	lrw      	r2, 0x200003e4	// 3eac <TK_Keymap_prog+0x388>
    3c0a:	6090      	addu      	r2, r4
    3c0c:	a200      	st.b      	r0, (r2, 0x0)
    3c0e:	0256      	lrw      	r2, 0x20000470	// 3eb0 <TK_Keymap_prog+0x38c>
    3c10:	6090      	addu      	r2, r4
    3c12:	a200      	st.b      	r0, (r2, 0x0)
    3c14:	8140      	ld.b      	r2, (r1, 0x0)
    3c16:	9803      	ld.w      	r0, (r14, 0xc)
    3c18:	6480      	cmphs      	r0, r2
    3c1a:	081d      	bt      	0x3c54	// 3c54 <TK_Keymap_prog+0x130>
    3c1c:	3d40      	cmpnei      	r5, 0
    3c1e:	0811      	bt      	0x3c40	// 3c40 <TK_Keymap_prog+0x11c>
    3c20:	025a      	lrw      	r2, 0x200002c4	// 3eb4 <TK_Keymap_prog+0x390>
    3c22:	9260      	ld.w      	r3, (r2, 0x0)
    3c24:	3b40      	cmpnei      	r3, 0
    3c26:	0815      	bt      	0x3c50	// 3c50 <TK_Keymap_prog+0x12c>
    3c28:	9200      	ld.w      	r0, (r2, 0x0)
    3c2a:	3301      	movi      	r3, 1
    3c2c:	040f      	br      	0x3c4a	// 3c4a <TK_Keymap_prog+0x126>
    3c2e:	8940      	ld.h      	r2, (r1, 0x0)
    3c30:	7489      	zexth      	r2, r2
    3c32:	07b7      	br      	0x3ba0	// 3ba0 <TK_Keymap_prog+0x7c>
    3c34:	8940      	ld.h      	r2, (r1, 0x0)
    3c36:	7489      	zexth      	r2, r2
    3c38:	07bf      	br      	0x3bb6	// 3bb6 <TK_Keymap_prog+0x92>
    3c3a:	8940      	ld.h      	r2, (r1, 0x0)
    3c3c:	7489      	zexth      	r2, r2
    3c3e:	07c7      	br      	0x3bcc	// 3bcc <TK_Keymap_prog+0xa8>
    3c40:	3d41      	cmpnei      	r5, 1
    3c42:	085c      	bt      	0x3cfa	// 3cfa <TK_Keymap_prog+0x1d6>
    3c44:	0343      	lrw      	r2, 0x200002c4	// 3eb4 <TK_Keymap_prog+0x390>
    3c46:	6cd7      	mov      	r3, r5
    3c48:	9200      	ld.w      	r0, (r2, 0x0)
    3c4a:	70d0      	lsl      	r3, r4
    3c4c:	6cc0      	or      	r3, r0
    3c4e:	b260      	st.w      	r3, (r2, 0x0)
    3c50:	3300      	movi      	r3, 0
    3c52:	a160      	st.b      	r3, (r1, 0x0)
    3c54:	4461      	lsli      	r3, r4, 1
    3c56:	9844      	ld.w      	r2, (r14, 0x10)
    3c58:	608c      	addu      	r2, r3
    3c5a:	8ac0      	ld.h      	r6, (r2, 0x0)
    3c5c:	034e      	lrw      	r2, 0x2000017e	// 3ea0 <TK_Keymap_prog+0x37c>
    3c5e:	60c8      	addu      	r3, r2
    3c60:	8be0      	ld.h      	r7, (r3, 0x0)
    3c62:	4702      	lsli      	r0, r7, 2
    3c64:	3105      	movi      	r1, 5
    3c66:	e3fffe89 	bsr      	0x3978	// 3978 <__divsi3>
    3c6a:	759b      	sexth      	r6, r6
    3c6c:	6419      	cmplt      	r6, r0
    3c6e:	b805      	st.w      	r0, (r14, 0x14)
    3c70:	0c18      	bf      	0x3ca0	// 3ca0 <TK_Keymap_prog+0x17c>
    3c72:	0351      	lrw      	r2, 0x200002b2	// 3ea8 <TK_Keymap_prog+0x384>
    3c74:	6090      	addu      	r2, r4
    3c76:	8260      	ld.b      	r3, (r2, 0x0)
    3c78:	2300      	addi      	r3, 1
    3c7a:	74cc      	zextb      	r3, r3
    3c7c:	a260      	st.b      	r3, (r2, 0x0)
    3c7e:	3100      	movi      	r1, 0
    3c80:	0376      	lrw      	r3, 0x200002cd	// 3ea4 <TK_Keymap_prog+0x380>
    3c82:	60d0      	addu      	r3, r4
    3c84:	a320      	st.b      	r1, (r3, 0x0)
    3c86:	8260      	ld.b      	r3, (r2, 0x0)
    3c88:	9826      	ld.w      	r1, (r14, 0x18)
    3c8a:	64c4      	cmphs      	r1, r3
    3c8c:	080a      	bt      	0x3ca0	// 3ca0 <TK_Keymap_prog+0x17c>
    3c8e:	3300      	movi      	r3, 0
    3c90:	0336      	lrw      	r1, 0x200002c4	// 3eb4 <TK_Keymap_prog+0x390>
    3c92:	2b01      	subi      	r3, 2
    3c94:	9100      	ld.w      	r0, (r1, 0x0)
    3c96:	70d3      	rotl      	r3, r4
    3c98:	68c0      	and      	r3, r0
    3c9a:	b160      	st.w      	r3, (r1, 0x0)
    3c9c:	3300      	movi      	r3, 0
    3c9e:	a260      	st.b      	r3, (r2, 0x0)
    3ca0:	9860      	ld.w      	r3, (r14, 0x0)
    3ca2:	9841      	ld.w      	r2, (r14, 0x4)
    3ca4:	3b03      	cmphsi      	r3, 4
    3ca6:	4461      	lsli      	r3, r4, 1
    3ca8:	60c8      	addu      	r3, r2
    3caa:	8b40      	ld.h      	r2, (r3, 0x0)
    3cac:	748b      	sexth      	r2, r2
    3cae:	0d4d      	bf      	0x3f48	// 3f48 <TK_Keymap_prog+0x424>
    3cb0:	649d      	cmplt      	r7, r2
    3cb2:	0d3a      	bf      	0x3f26	// 3f26 <TK_Keymap_prog+0x402>
    3cb4:	8b40      	ld.h      	r2, (r3, 0x0)
    3cb6:	9820      	ld.w      	r1, (r14, 0x0)
    3cb8:	748b      	sexth      	r2, r2
    3cba:	7c5c      	mult      	r1, r7
    3cbc:	6449      	cmplt      	r2, r1
    3cbe:	0d34      	bf      	0x3f26	// 3f26 <TK_Keymap_prog+0x402>
    3cc0:	133e      	lrw      	r1, 0x20000488	// 3eb8 <TK_Keymap_prog+0x394>
    3cc2:	6050      	addu      	r1, r4
    3cc4:	8140      	ld.b      	r2, (r1, 0x0)
    3cc6:	2200      	addi      	r2, 1
    3cc8:	7488      	zextb      	r2, r2
    3cca:	a140      	st.b      	r2, (r1, 0x0)
    3ccc:	3000      	movi      	r0, 0
    3cce:	135c      	lrw      	r2, 0x20000338	// 3ebc <TK_Keymap_prog+0x398>
    3cd0:	6090      	addu      	r2, r4
    3cd2:	a200      	st.b      	r0, (r2, 0x0)
    3cd4:	135b      	lrw      	r2, 0x20000362	// 3ec0 <TK_Keymap_prog+0x39c>
    3cd6:	6090      	addu      	r2, r4
    3cd8:	a200      	st.b      	r0, (r2, 0x0)
    3cda:	135b      	lrw      	r2, 0x20000458	// 3ec4 <TK_Keymap_prog+0x3a0>
    3cdc:	6090      	addu      	r2, r4
    3cde:	a200      	st.b      	r0, (r2, 0x0)
    3ce0:	8140      	ld.b      	r2, (r1, 0x0)
    3ce2:	9803      	ld.w      	r0, (r14, 0xc)
    3ce4:	6480      	cmphs      	r0, r2
    3ce6:	087d      	bt      	0x3de0	// 3de0 <TK_Keymap_prog+0x2bc>
    3ce8:	3d40      	cmpnei      	r5, 0
    3cea:	0871      	bt      	0x3dcc	// 3dcc <TK_Keymap_prog+0x2a8>
    3cec:	1357      	lrw      	r2, 0x20000260	// 3ec8 <TK_Keymap_prog+0x3a4>
    3cee:	9260      	ld.w      	r3, (r2, 0x0)
    3cf0:	3b40      	cmpnei      	r3, 0
    3cf2:	0875      	bt      	0x3ddc	// 3ddc <TK_Keymap_prog+0x2b8>
    3cf4:	9200      	ld.w      	r0, (r2, 0x0)
    3cf6:	3301      	movi      	r3, 1
    3cf8:	046f      	br      	0x3dd6	// 3dd6 <TK_Keymap_prog+0x2b2>
    3cfa:	3d42      	cmpnei      	r5, 2
    3cfc:	0c03      	bf      	0x3d02	// 3d02 <TK_Keymap_prog+0x1de>
    3cfe:	e8000201 	br      	0x4100	// 4100 <TK_Keymap_prog+0x5dc>
    3d02:	13d3      	lrw      	r6, 0x2000046a	// 3ecc <TK_Keymap_prog+0x3a8>
    3d04:	8b00      	ld.h      	r0, (r3, 0x0)
    3d06:	8e40      	ld.h      	r2, (r6, 0x0)
    3d08:	7489      	zexth      	r2, r2
    3d0a:	7403      	sexth      	r0, r0
    3d0c:	2209      	addi      	r2, 10
    3d0e:	6409      	cmplt      	r2, r0
    3d10:	0fa0      	bf      	0x3c50	// 3c50 <TK_Keymap_prog+0x12c>
    3d12:	8b60      	ld.h      	r3, (r3, 0x0)
    3d14:	74cd      	zexth      	r3, r3
    3d16:	ae60      	st.h      	r3, (r6, 0x0)
    3d18:	3300      	movi      	r3, 0
    3d1a:	1347      	lrw      	r2, 0x200002c4	// 3eb4 <TK_Keymap_prog+0x390>
    3d1c:	b260      	st.w      	r3, (r2, 0x0)
    3d1e:	0785      	br      	0x3c28	// 3c28 <TK_Keymap_prog+0x104>
    3d20:	4461      	lsli      	r3, r4, 1
    3d22:	9824      	ld.w      	r1, (r14, 0x10)
    3d24:	60c4      	addu      	r3, r1
    3d26:	8b60      	ld.h      	r3, (r3, 0x0)
    3d28:	74cf      	sexth      	r3, r3
    3d2a:	64c9      	cmplt      	r2, r3
    3d2c:	0f94      	bf      	0x3c54	// 3c54 <TK_Keymap_prog+0x130>
    3d2e:	3300      	movi      	r3, 0
    3d30:	1341      	lrw      	r2, 0x200002c4	// 3eb4 <TK_Keymap_prog+0x390>
    3d32:	2b01      	subi      	r3, 2
    3d34:	9220      	ld.w      	r1, (r2, 0x0)
    3d36:	70d3      	rotl      	r3, r4
    3d38:	68c4      	and      	r3, r1
    3d3a:	b260      	st.w      	r3, (r2, 0x0)
    3d3c:	078c      	br      	0x3c54	// 3c54 <TK_Keymap_prog+0x130>
    3d3e:	9844      	ld.w      	r2, (r14, 0x10)
    3d40:	6084      	addu      	r2, r1
    3d42:	1218      	lrw      	r0, 0x2000017e	// 3ea0 <TK_Keymap_prog+0x37c>
    3d44:	8a60      	ld.h      	r3, (r2, 0x0)
    3d46:	6040      	addu      	r1, r0
    3d48:	74cf      	sexth      	r3, r3
    3d4a:	8920      	ld.h      	r1, (r1, 0x0)
    3d4c:	64c5      	cmplt      	r1, r3
    3d4e:	0f83      	bf      	0x3c54	// 3c54 <TK_Keymap_prog+0x130>
    3d50:	1360      	lrw      	r3, 0x200002de	// 3ed0 <TK_Keymap_prog+0x3ac>
    3d52:	8360      	ld.b      	r3, (r3, 0x0)
    3d54:	74cc      	zextb      	r3, r3
    3d56:	3b40      	cmpnei      	r3, 0
    3d58:	0b7e      	bt      	0x3c54	// 3c54 <TK_Keymap_prog+0x130>
    3d5a:	1213      	lrw      	r0, 0x200002cd	// 3ea4 <TK_Keymap_prog+0x380>
    3d5c:	6010      	addu      	r0, r4
    3d5e:	8020      	ld.b      	r1, (r0, 0x0)
    3d60:	2100      	addi      	r1, 1
    3d62:	7444      	zextb      	r1, r1
    3d64:	a020      	st.b      	r1, (r0, 0x0)
    3d66:	3600      	movi      	r6, 0
    3d68:	1230      	lrw      	r1, 0x200002b2	// 3ea8 <TK_Keymap_prog+0x384>
    3d6a:	6050      	addu      	r1, r4
    3d6c:	a1c0      	st.b      	r6, (r1, 0x0)
    3d6e:	1230      	lrw      	r1, 0x200003e4	// 3eac <TK_Keymap_prog+0x388>
    3d70:	6050      	addu      	r1, r4
    3d72:	a1c0      	st.b      	r6, (r1, 0x0)
    3d74:	122f      	lrw      	r1, 0x20000470	// 3eb0 <TK_Keymap_prog+0x38c>
    3d76:	6050      	addu      	r1, r4
    3d78:	a1c0      	st.b      	r6, (r1, 0x0)
    3d7a:	8020      	ld.b      	r1, (r0, 0x0)
    3d7c:	98c3      	ld.w      	r6, (r14, 0xc)
    3d7e:	6458      	cmphs      	r6, r1
    3d80:	0b6a      	bt      	0x3c54	// 3c54 <TK_Keymap_prog+0x130>
    3d82:	3d40      	cmpnei      	r5, 0
    3d84:	0808      	bt      	0x3d94	// 3d94 <TK_Keymap_prog+0x270>
    3d86:	124c      	lrw      	r2, 0x200002c4	// 3eb4 <TK_Keymap_prog+0x390>
    3d88:	9260      	ld.w      	r3, (r2, 0x0)
    3d8a:	3b40      	cmpnei      	r3, 0
    3d8c:	080c      	bt      	0x3da4	// 3da4 <TK_Keymap_prog+0x280>
    3d8e:	9220      	ld.w      	r1, (r2, 0x0)
    3d90:	3301      	movi      	r3, 1
    3d92:	0406      	br      	0x3d9e	// 3d9e <TK_Keymap_prog+0x27a>
    3d94:	3d41      	cmpnei      	r5, 1
    3d96:	080a      	bt      	0x3daa	// 3daa <TK_Keymap_prog+0x286>
    3d98:	1247      	lrw      	r2, 0x200002c4	// 3eb4 <TK_Keymap_prog+0x390>
    3d9a:	6cd7      	mov      	r3, r5
    3d9c:	9220      	ld.w      	r1, (r2, 0x0)
    3d9e:	70d0      	lsl      	r3, r4
    3da0:	6cc4      	or      	r3, r1
    3da2:	b260      	st.w      	r3, (r2, 0x0)
    3da4:	3300      	movi      	r3, 0
    3da6:	a060      	st.b      	r3, (r0, 0x0)
    3da8:	0756      	br      	0x3c54	// 3c54 <TK_Keymap_prog+0x130>
    3daa:	3d42      	cmpnei      	r5, 2
    3dac:	0c02      	bf      	0x3db0	// 3db0 <TK_Keymap_prog+0x28c>
    3dae:	05dc      	br      	0x4166	// 4166 <TK_Keymap_prog+0x642>
    3db0:	12e7      	lrw      	r7, 0x2000046a	// 3ecc <TK_Keymap_prog+0x3a8>
    3db2:	8ac0      	ld.h      	r6, (r2, 0x0)
    3db4:	8f20      	ld.h      	r1, (r7, 0x0)
    3db6:	7445      	zexth      	r1, r1
    3db8:	759b      	sexth      	r6, r6
    3dba:	2109      	addi      	r1, 10
    3dbc:	6585      	cmplt      	r1, r6
    3dbe:	0ff3      	bf      	0x3da4	// 3da4 <TK_Keymap_prog+0x280>
    3dc0:	8a40      	ld.h      	r2, (r2, 0x0)
    3dc2:	7489      	zexth      	r2, r2
    3dc4:	af40      	st.h      	r2, (r7, 0x0)
    3dc6:	115c      	lrw      	r2, 0x200002c4	// 3eb4 <TK_Keymap_prog+0x390>
    3dc8:	b260      	st.w      	r3, (r2, 0x0)
    3dca:	07e2      	br      	0x3d8e	// 3d8e <TK_Keymap_prog+0x26a>
    3dcc:	3d41      	cmpnei      	r5, 1
    3dce:	089b      	bt      	0x3f04	// 3f04 <TK_Keymap_prog+0x3e0>
    3dd0:	115e      	lrw      	r2, 0x20000260	// 3ec8 <TK_Keymap_prog+0x3a4>
    3dd2:	6cd7      	mov      	r3, r5
    3dd4:	9200      	ld.w      	r0, (r2, 0x0)
    3dd6:	70d0      	lsl      	r3, r4
    3dd8:	6cc0      	or      	r3, r0
    3dda:	b260      	st.w      	r3, (r2, 0x0)
    3ddc:	3300      	movi      	r3, 0
    3dde:	a160      	st.b      	r3, (r1, 0x0)
    3de0:	4461      	lsli      	r3, r4, 1
    3de2:	9841      	ld.w      	r2, (r14, 0x4)
    3de4:	608c      	addu      	r2, r3
    3de6:	8a60      	ld.h      	r3, (r2, 0x0)
    3de8:	74cf      	sexth      	r3, r3
    3dea:	9845      	ld.w      	r2, (r14, 0x14)
    3dec:	648d      	cmplt      	r3, r2
    3dee:	0c18      	bf      	0x3e1e	// 3e1e <TK_Keymap_prog+0x2fa>
    3df0:	1153      	lrw      	r2, 0x20000338	// 3ebc <TK_Keymap_prog+0x398>
    3df2:	6090      	addu      	r2, r4
    3df4:	8260      	ld.b      	r3, (r2, 0x0)
    3df6:	2300      	addi      	r3, 1
    3df8:	74cc      	zextb      	r3, r3
    3dfa:	a260      	st.b      	r3, (r2, 0x0)
    3dfc:	3100      	movi      	r1, 0
    3dfe:	116f      	lrw      	r3, 0x20000488	// 3eb8 <TK_Keymap_prog+0x394>
    3e00:	60d0      	addu      	r3, r4
    3e02:	a320      	st.b      	r1, (r3, 0x0)
    3e04:	8260      	ld.b      	r3, (r2, 0x0)
    3e06:	9826      	ld.w      	r1, (r14, 0x18)
    3e08:	64c4      	cmphs      	r1, r3
    3e0a:	080a      	bt      	0x3e1e	// 3e1e <TK_Keymap_prog+0x2fa>
    3e0c:	3300      	movi      	r3, 0
    3e0e:	112f      	lrw      	r1, 0x20000260	// 3ec8 <TK_Keymap_prog+0x3a4>
    3e10:	2b01      	subi      	r3, 2
    3e12:	9100      	ld.w      	r0, (r1, 0x0)
    3e14:	70d3      	rotl      	r3, r4
    3e16:	68c0      	and      	r3, r0
    3e18:	b160      	st.w      	r3, (r1, 0x0)
    3e1a:	3300      	movi      	r3, 0
    3e1c:	a260      	st.b      	r3, (r2, 0x0)
    3e1e:	9860      	ld.w      	r3, (r14, 0x0)
    3e20:	9842      	ld.w      	r2, (r14, 0x8)
    3e22:	3b03      	cmphsi      	r3, 4
    3e24:	4461      	lsli      	r3, r4, 1
    3e26:	60c8      	addu      	r3, r2
    3e28:	8b40      	ld.h      	r2, (r3, 0x0)
    3e2a:	748b      	sexth      	r2, r2
    3e2c:	0d26      	bf      	0x4078	// 4078 <TK_Keymap_prog+0x554>
    3e2e:	9820      	ld.w      	r1, (r14, 0x0)
    3e30:	649d      	cmplt      	r7, r2
    3e32:	7c5c      	mult      	r1, r7
    3e34:	0d13      	bf      	0x405a	// 405a <TK_Keymap_prog+0x536>
    3e36:	8b40      	ld.h      	r2, (r3, 0x0)
    3e38:	748b      	sexth      	r2, r2
    3e3a:	6449      	cmplt      	r2, r1
    3e3c:	0d0f      	bf      	0x405a	// 405a <TK_Keymap_prog+0x536>
    3e3e:	1126      	lrw      	r1, 0x20000440	// 3ed4 <TK_Keymap_prog+0x3b0>
    3e40:	6050      	addu      	r1, r4
    3e42:	8140      	ld.b      	r2, (r1, 0x0)
    3e44:	2200      	addi      	r2, 1
    3e46:	7488      	zextb      	r2, r2
    3e48:	a140      	st.b      	r2, (r1, 0x0)
    3e4a:	3000      	movi      	r0, 0
    3e4c:	1143      	lrw      	r2, 0x20000499	// 3ed8 <TK_Keymap_prog+0x3b4>
    3e4e:	6090      	addu      	r2, r4
    3e50:	a200      	st.b      	r0, (r2, 0x0)
    3e52:	1143      	lrw      	r2, 0x2000024e	// 3edc <TK_Keymap_prog+0x3b8>
    3e54:	6090      	addu      	r2, r4
    3e56:	a200      	st.b      	r0, (r2, 0x0)
    3e58:	1142      	lrw      	r2, 0x20000350	// 3ee0 <TK_Keymap_prog+0x3bc>
    3e5a:	6090      	addu      	r2, r4
    3e5c:	a200      	st.b      	r0, (r2, 0x0)
    3e5e:	0443      	br      	0x3ee4	// 3ee4 <TK_Keymap_prog+0x3c0>
    3e60:	20000148 	.long	0x20000148
    3e64:	20000114 	.long	0x20000114
    3e68:	20000125 	.long	0x20000125
    3e6c:	20000124 	.long	0x20000124
    3e70:	2000054e 	.long	0x2000054e
    3e74:	200002e0 	.long	0x200002e0
    3e78:	2000022c 	.long	0x2000022c
    3e7c:	200003c2 	.long	0x200003c2
    3e80:	20000308 	.long	0x20000308
    3e84:	20000418 	.long	0x20000418
    3e88:	200003f6 	.long	0x200003f6
    3e8c:	200004c2 	.long	0x200004c2
    3e90:	2000052a 	.long	0x2000052a
    3e94:	20000508 	.long	0x20000508
    3e98:	20000290 	.long	0x20000290
    3e9c:	20000264 	.long	0x20000264
    3ea0:	2000017e 	.long	0x2000017e
    3ea4:	200002cd 	.long	0x200002cd
    3ea8:	200002b2 	.long	0x200002b2
    3eac:	200003e4 	.long	0x200003e4
    3eb0:	20000470 	.long	0x20000470
    3eb4:	200002c4 	.long	0x200002c4
    3eb8:	20000488 	.long	0x20000488
    3ebc:	20000338 	.long	0x20000338
    3ec0:	20000362 	.long	0x20000362
    3ec4:	20000458 	.long	0x20000458
    3ec8:	20000260 	.long	0x20000260
    3ecc:	2000046a 	.long	0x2000046a
    3ed0:	200002de 	.long	0x200002de
    3ed4:	20000440 	.long	0x20000440
    3ed8:	20000499 	.long	0x20000499
    3edc:	2000024e 	.long	0x2000024e
    3ee0:	20000350 	.long	0x20000350
    3ee4:	8140      	ld.b      	r2, (r1, 0x0)
    3ee6:	9803      	ld.w      	r0, (r14, 0xc)
    3ee8:	6480      	cmphs      	r0, r2
    3eea:	0881      	bt      	0x3fec	// 3fec <TK_Keymap_prog+0x4c8>
    3eec:	3d40      	cmpnei      	r5, 0
    3eee:	0874      	bt      	0x3fd6	// 3fd6 <TK_Keymap_prog+0x4b2>
    3ef0:	014b      	lrw      	r2, 0x20000334	// 4240 <TK_Keymap_prog+0x71c>
    3ef2:	9260      	ld.w      	r3, (r2, 0x0)
    3ef4:	3b40      	cmpnei      	r3, 0
    3ef6:	0879      	bt      	0x3fe8	// 3fe8 <TK_Keymap_prog+0x4c4>
    3ef8:	3301      	movi      	r3, 1
    3efa:	9200      	ld.w      	r0, (r2, 0x0)
    3efc:	70d0      	lsl      	r3, r4
    3efe:	6cc0      	or      	r3, r0
    3f00:	b260      	st.w      	r3, (r2, 0x0)
    3f02:	0473      	br      	0x3fe8	// 3fe8 <TK_Keymap_prog+0x4c4>
    3f04:	3d42      	cmpnei      	r5, 2
    3f06:	0960      	bt      	0x41c6	// 41c6 <TK_Keymap_prog+0x6a2>
    3f08:	01d0      	lrw      	r6, 0x2000054c	// 4244 <TK_Keymap_prog+0x720>
    3f0a:	8b00      	ld.h      	r0, (r3, 0x0)
    3f0c:	8e40      	ld.h      	r2, (r6, 0x0)
    3f0e:	7489      	zexth      	r2, r2
    3f10:	7403      	sexth      	r0, r0
    3f12:	2209      	addi      	r2, 10
    3f14:	6409      	cmplt      	r2, r0
    3f16:	0f63      	bf      	0x3ddc	// 3ddc <TK_Keymap_prog+0x2b8>
    3f18:	8b60      	ld.h      	r3, (r3, 0x0)
    3f1a:	74cd      	zexth      	r3, r3
    3f1c:	ae60      	st.h      	r3, (r6, 0x0)
    3f1e:	3300      	movi      	r3, 0
    3f20:	0155      	lrw      	r2, 0x20000260	// 4248 <TK_Keymap_prog+0x724>
    3f22:	b260      	st.w      	r3, (r2, 0x0)
    3f24:	06e8      	br      	0x3cf4	// 3cf4 <TK_Keymap_prog+0x1d0>
    3f26:	9841      	ld.w      	r2, (r14, 0x4)
    3f28:	4461      	lsli      	r3, r4, 1
    3f2a:	60c8      	addu      	r3, r2
    3f2c:	8b60      	ld.h      	r3, (r3, 0x0)
    3f2e:	9840      	ld.w      	r2, (r14, 0x0)
    3f30:	74cf      	sexth      	r3, r3
    3f32:	7c9c      	mult      	r2, r7
    3f34:	64c9      	cmplt      	r2, r3
    3f36:	0f55      	bf      	0x3de0	// 3de0 <TK_Keymap_prog+0x2bc>
    3f38:	3300      	movi      	r3, 0
    3f3a:	015b      	lrw      	r2, 0x20000260	// 4248 <TK_Keymap_prog+0x724>
    3f3c:	2b01      	subi      	r3, 2
    3f3e:	9220      	ld.w      	r1, (r2, 0x0)
    3f40:	70d3      	rotl      	r3, r4
    3f42:	68c4      	and      	r3, r1
    3f44:	b260      	st.w      	r3, (r2, 0x0)
    3f46:	074d      	br      	0x3de0	// 3de0 <TK_Keymap_prog+0x2bc>
    3f48:	649d      	cmplt      	r7, r2
    3f4a:	0f4b      	bf      	0x3de0	// 3de0 <TK_Keymap_prog+0x2bc>
    3f4c:	015f      	lrw      	r2, 0x200002de	// 424c <TK_Keymap_prog+0x728>
    3f4e:	8240      	ld.b      	r2, (r2, 0x0)
    3f50:	7488      	zextb      	r2, r2
    3f52:	3a40      	cmpnei      	r2, 0
    3f54:	b847      	st.w      	r2, (r14, 0x1c)
    3f56:	0b45      	bt      	0x3de0	// 3de0 <TK_Keymap_prog+0x2bc>
    3f58:	0201      	lrw      	r0, 0x20000488	// 4250 <TK_Keymap_prog+0x72c>
    3f5a:	6010      	addu      	r0, r4
    3f5c:	8020      	ld.b      	r1, (r0, 0x0)
    3f5e:	2100      	addi      	r1, 1
    3f60:	7444      	zextb      	r1, r1
    3f62:	a020      	st.b      	r1, (r0, 0x0)
    3f64:	3600      	movi      	r6, 0
    3f66:	0223      	lrw      	r1, 0x20000338	// 4254 <TK_Keymap_prog+0x730>
    3f68:	6050      	addu      	r1, r4
    3f6a:	a1c0      	st.b      	r6, (r1, 0x0)
    3f6c:	0224      	lrw      	r1, 0x20000362	// 4258 <TK_Keymap_prog+0x734>
    3f6e:	6050      	addu      	r1, r4
    3f70:	a1c0      	st.b      	r6, (r1, 0x0)
    3f72:	0224      	lrw      	r1, 0x20000458	// 425c <TK_Keymap_prog+0x738>
    3f74:	6050      	addu      	r1, r4
    3f76:	a1c0      	st.b      	r6, (r1, 0x0)
    3f78:	8020      	ld.b      	r1, (r0, 0x0)
    3f7a:	98c3      	ld.w      	r6, (r14, 0xc)
    3f7c:	6458      	cmphs      	r6, r1
    3f7e:	0b31      	bt      	0x3de0	// 3de0 <TK_Keymap_prog+0x2bc>
    3f80:	3d40      	cmpnei      	r5, 0
    3f82:	0808      	bt      	0x3f92	// 3f92 <TK_Keymap_prog+0x46e>
    3f84:	024e      	lrw      	r2, 0x20000260	// 4248 <TK_Keymap_prog+0x724>
    3f86:	9260      	ld.w      	r3, (r2, 0x0)
    3f88:	3b40      	cmpnei      	r3, 0
    3f8a:	0823      	bt      	0x3fd0	// 3fd0 <TK_Keymap_prog+0x4ac>
    3f8c:	9220      	ld.w      	r1, (r2, 0x0)
    3f8e:	3301      	movi      	r3, 1
    3f90:	0406      	br      	0x3f9c	// 3f9c <TK_Keymap_prog+0x478>
    3f92:	3d41      	cmpnei      	r5, 1
    3f94:	0808      	bt      	0x3fa4	// 3fa4 <TK_Keymap_prog+0x480>
    3f96:	0252      	lrw      	r2, 0x20000260	// 4248 <TK_Keymap_prog+0x724>
    3f98:	6cd7      	mov      	r3, r5
    3f9a:	9220      	ld.w      	r1, (r2, 0x0)
    3f9c:	70d0      	lsl      	r3, r4
    3f9e:	6cc4      	or      	r3, r1
    3fa0:	b260      	st.w      	r3, (r2, 0x0)
    3fa2:	0417      	br      	0x3fd0	// 3fd0 <TK_Keymap_prog+0x4ac>
    3fa4:	3d42      	cmpnei      	r5, 2
    3fa6:	0942      	bt      	0x422a	// 422a <TK_Keymap_prog+0x706>
    3fa8:	8bc0      	ld.h      	r6, (r3, 0x0)
    3faa:	745b      	sexth      	r1, r6
    3fac:	02d9      	lrw      	r6, 0x2000054c	// 4244 <TK_Keymap_prog+0x720>
    3fae:	6c87      	mov      	r2, r1
    3fb0:	8e20      	ld.h      	r1, (r6, 0x0)
    3fb2:	7445      	zexth      	r1, r1
    3fb4:	2109      	addi      	r1, 10
    3fb6:	6485      	cmplt      	r1, r2
    3fb8:	0c0c      	bf      	0x3fd0	// 3fd0 <TK_Keymap_prog+0x4ac>
    3fba:	8b60      	ld.h      	r3, (r3, 0x0)
    3fbc:	74cd      	zexth      	r3, r3
    3fbe:	ae60      	st.h      	r3, (r6, 0x0)
    3fc0:	9867      	ld.w      	r3, (r14, 0x1c)
    3fc2:	023d      	lrw      	r1, 0x20000260	// 4248 <TK_Keymap_prog+0x724>
    3fc4:	b160      	st.w      	r3, (r1, 0x0)
    3fc6:	3301      	movi      	r3, 1
    3fc8:	9140      	ld.w      	r2, (r1, 0x0)
    3fca:	70d0      	lsl      	r3, r4
    3fcc:	6cc8      	or      	r3, r2
    3fce:	b160      	st.w      	r3, (r1, 0x0)
    3fd0:	3300      	movi      	r3, 0
    3fd2:	a060      	st.b      	r3, (r0, 0x0)
    3fd4:	0706      	br      	0x3de0	// 3de0 <TK_Keymap_prog+0x2bc>
    3fd6:	3d41      	cmpnei      	r5, 1
    3fd8:	0830      	bt      	0x4038	// 4038 <TK_Keymap_prog+0x514>
    3fda:	0345      	lrw      	r2, 0x20000334	// 4240 <TK_Keymap_prog+0x71c>
    3fdc:	6cd7      	mov      	r3, r5
    3fde:	9200      	ld.w      	r0, (r2, 0x0)
    3fe0:	70d0      	lsl      	r3, r4
    3fe2:	6cc0      	or      	r3, r0
    3fe4:	b260      	st.w      	r3, (r2, 0x0)
    3fe6:	6c03      	mov      	r0, r0
    3fe8:	3300      	movi      	r3, 0
    3fea:	a160      	st.b      	r3, (r1, 0x0)
    3fec:	4461      	lsli      	r3, r4, 1
    3fee:	9842      	ld.w      	r2, (r14, 0x8)
    3ff0:	608c      	addu      	r2, r3
    3ff2:	8a60      	ld.h      	r3, (r2, 0x0)
    3ff4:	74cf      	sexth      	r3, r3
    3ff6:	9845      	ld.w      	r2, (r14, 0x14)
    3ff8:	648d      	cmplt      	r3, r2
    3ffa:	0c18      	bf      	0x402a	// 402a <TK_Keymap_prog+0x506>
    3ffc:	0346      	lrw      	r2, 0x20000499	// 4260 <TK_Keymap_prog+0x73c>
    3ffe:	6090      	addu      	r2, r4
    4000:	8260      	ld.b      	r3, (r2, 0x0)
    4002:	2300      	addi      	r3, 1
    4004:	74cc      	zextb      	r3, r3
    4006:	a260      	st.b      	r3, (r2, 0x0)
    4008:	3100      	movi      	r1, 0
    400a:	0368      	lrw      	r3, 0x20000440	// 4264 <TK_Keymap_prog+0x740>
    400c:	60d0      	addu      	r3, r4
    400e:	a320      	st.b      	r1, (r3, 0x0)
    4010:	8260      	ld.b      	r3, (r2, 0x0)
    4012:	9826      	ld.w      	r1, (r14, 0x18)
    4014:	64c4      	cmphs      	r1, r3
    4016:	080a      	bt      	0x402a	// 402a <TK_Keymap_prog+0x506>
    4018:	3300      	movi      	r3, 0
    401a:	0335      	lrw      	r1, 0x20000334	// 4240 <TK_Keymap_prog+0x71c>
    401c:	2b01      	subi      	r3, 2
    401e:	9100      	ld.w      	r0, (r1, 0x0)
    4020:	70d3      	rotl      	r3, r4
    4022:	68c0      	and      	r3, r0
    4024:	b160      	st.w      	r3, (r1, 0x0)
    4026:	3300      	movi      	r3, 0
    4028:	a260      	st.b      	r3, (r2, 0x0)
    402a:	2400      	addi      	r4, 1
    402c:	3c51      	cmpnei      	r4, 17
    402e:	0c03      	bf      	0x4034	// 4034 <TK_Keymap_prog+0x510>
    4030:	e800fd8d 	br      	0x3b4a	// 3b4a <TK_Keymap_prog+0x26>
    4034:	140a      	addi      	r14, r14, 40
    4036:	1494      	pop      	r4-r7, r15
    4038:	3d42      	cmpnei      	r5, 2
    403a:	0948      	bt      	0x42ca	// 42ca <TK_Keymap_prog+0x7a6>
    403c:	03d4      	lrw      	r6, 0x20000302	// 4268 <TK_Keymap_prog+0x744>
    403e:	8b00      	ld.h      	r0, (r3, 0x0)
    4040:	8e40      	ld.h      	r2, (r6, 0x0)
    4042:	7489      	zexth      	r2, r2
    4044:	7403      	sexth      	r0, r0
    4046:	2209      	addi      	r2, 10
    4048:	6409      	cmplt      	r2, r0
    404a:	0fcf      	bf      	0x3fe8	// 3fe8 <TK_Keymap_prog+0x4c4>
    404c:	8b60      	ld.h      	r3, (r3, 0x0)
    404e:	74cd      	zexth      	r3, r3
    4050:	ae60      	st.h      	r3, (r6, 0x0)
    4052:	3300      	movi      	r3, 0
    4054:	135b      	lrw      	r2, 0x20000334	// 4240 <TK_Keymap_prog+0x71c>
    4056:	b260      	st.w      	r3, (r2, 0x0)
    4058:	0750      	br      	0x3ef8	// 3ef8 <TK_Keymap_prog+0x3d4>
    405a:	4461      	lsli      	r3, r4, 1
    405c:	9842      	ld.w      	r2, (r14, 0x8)
    405e:	60c8      	addu      	r3, r2
    4060:	8b60      	ld.h      	r3, (r3, 0x0)
    4062:	74cf      	sexth      	r3, r3
    4064:	64c5      	cmplt      	r1, r3
    4066:	0fc3      	bf      	0x3fec	// 3fec <TK_Keymap_prog+0x4c8>
    4068:	3300      	movi      	r3, 0
    406a:	1356      	lrw      	r2, 0x20000334	// 4240 <TK_Keymap_prog+0x71c>
    406c:	2b01      	subi      	r3, 2
    406e:	9220      	ld.w      	r1, (r2, 0x0)
    4070:	70d3      	rotl      	r3, r4
    4072:	68c4      	and      	r3, r1
    4074:	b260      	st.w      	r3, (r2, 0x0)
    4076:	07bb      	br      	0x3fec	// 3fec <TK_Keymap_prog+0x4c8>
    4078:	649d      	cmplt      	r7, r2
    407a:	0fb9      	bf      	0x3fec	// 3fec <TK_Keymap_prog+0x4c8>
    407c:	1354      	lrw      	r2, 0x200002de	// 424c <TK_Keymap_prog+0x728>
    407e:	8240      	ld.b      	r2, (r2, 0x0)
    4080:	7488      	zextb      	r2, r2
    4082:	3a40      	cmpnei      	r2, 0
    4084:	0bb4      	bt      	0x3fec	// 3fec <TK_Keymap_prog+0x4c8>
    4086:	1318      	lrw      	r0, 0x20000440	// 4264 <TK_Keymap_prog+0x740>
    4088:	6010      	addu      	r0, r4
    408a:	8020      	ld.b      	r1, (r0, 0x0)
    408c:	2100      	addi      	r1, 1
    408e:	7444      	zextb      	r1, r1
    4090:	a020      	st.b      	r1, (r0, 0x0)
    4092:	3600      	movi      	r6, 0
    4094:	1333      	lrw      	r1, 0x20000499	// 4260 <TK_Keymap_prog+0x73c>
    4096:	6050      	addu      	r1, r4
    4098:	a1c0      	st.b      	r6, (r1, 0x0)
    409a:	1335      	lrw      	r1, 0x2000024e	// 426c <TK_Keymap_prog+0x748>
    409c:	6050      	addu      	r1, r4
    409e:	a1c0      	st.b      	r6, (r1, 0x0)
    40a0:	1334      	lrw      	r1, 0x20000350	// 4270 <TK_Keymap_prog+0x74c>
    40a2:	6050      	addu      	r1, r4
    40a4:	a1c0      	st.b      	r6, (r1, 0x0)
    40a6:	8020      	ld.b      	r1, (r0, 0x0)
    40a8:	98c3      	ld.w      	r6, (r14, 0xc)
    40aa:	6458      	cmphs      	r6, r1
    40ac:	0ba0      	bt      	0x3fec	// 3fec <TK_Keymap_prog+0x4c8>
    40ae:	3d40      	cmpnei      	r5, 0
    40b0:	0808      	bt      	0x40c0	// 40c0 <TK_Keymap_prog+0x59c>
    40b2:	1344      	lrw      	r2, 0x20000334	// 4240 <TK_Keymap_prog+0x71c>
    40b4:	9260      	ld.w      	r3, (r2, 0x0)
    40b6:	3b40      	cmpnei      	r3, 0
    40b8:	0821      	bt      	0x40fa	// 40fa <TK_Keymap_prog+0x5d6>
    40ba:	9220      	ld.w      	r1, (r2, 0x0)
    40bc:	3301      	movi      	r3, 1
    40be:	0406      	br      	0x40ca	// 40ca <TK_Keymap_prog+0x5a6>
    40c0:	3d41      	cmpnei      	r5, 1
    40c2:	0808      	bt      	0x40d2	// 40d2 <TK_Keymap_prog+0x5ae>
    40c4:	125f      	lrw      	r2, 0x20000334	// 4240 <TK_Keymap_prog+0x71c>
    40c6:	6cd7      	mov      	r3, r5
    40c8:	9220      	ld.w      	r1, (r2, 0x0)
    40ca:	70d0      	lsl      	r3, r4
    40cc:	6cc4      	or      	r3, r1
    40ce:	b260      	st.w      	r3, (r2, 0x0)
    40d0:	0415      	br      	0x40fa	// 40fa <TK_Keymap_prog+0x5d6>
    40d2:	3d42      	cmpnei      	r5, 2
    40d4:	092a      	bt      	0x4328	// 4328 <TK_Keymap_prog+0x804>
    40d6:	13e5      	lrw      	r7, 0x20000302	// 4268 <TK_Keymap_prog+0x744>
    40d8:	8bc0      	ld.h      	r6, (r3, 0x0)
    40da:	8f20      	ld.h      	r1, (r7, 0x0)
    40dc:	7445      	zexth      	r1, r1
    40de:	759b      	sexth      	r6, r6
    40e0:	2109      	addi      	r1, 10
    40e2:	6585      	cmplt      	r1, r6
    40e4:	0c0b      	bf      	0x40fa	// 40fa <TK_Keymap_prog+0x5d6>
    40e6:	8b60      	ld.h      	r3, (r3, 0x0)
    40e8:	1236      	lrw      	r1, 0x20000334	// 4240 <TK_Keymap_prog+0x71c>
    40ea:	74cd      	zexth      	r3, r3
    40ec:	af60      	st.h      	r3, (r7, 0x0)
    40ee:	b140      	st.w      	r2, (r1, 0x0)
    40f0:	3301      	movi      	r3, 1
    40f2:	9140      	ld.w      	r2, (r1, 0x0)
    40f4:	70d0      	lsl      	r3, r4
    40f6:	6cc8      	or      	r3, r2
    40f8:	b160      	st.w      	r3, (r1, 0x0)
    40fa:	3300      	movi      	r3, 0
    40fc:	a060      	st.b      	r3, (r0, 0x0)
    40fe:	0777      	br      	0x3fec	// 3fec <TK_Keymap_prog+0x4c8>
    4100:	3d43      	cmpnei      	r5, 3
    4102:	0c03      	bf      	0x4108	// 4108 <TK_Keymap_prog+0x5e4>
    4104:	e800fda6 	br      	0x3c50	// 3c50 <TK_Keymap_prog+0x12c>
    4108:	125b      	lrw      	r2, 0x2000046a	// 4274 <TK_Keymap_prog+0x750>
    410a:	8bc0      	ld.h      	r6, (r3, 0x0)
    410c:	8a00      	ld.h      	r0, (r2, 0x0)
    410e:	7401      	zexth      	r0, r0
    4110:	759b      	sexth      	r6, r6
    4112:	2009      	addi      	r0, 10
    4114:	6581      	cmplt      	r0, r6
    4116:	0c0c      	bf      	0x412e	// 412e <TK_Keymap_prog+0x60a>
    4118:	8b60      	ld.h      	r3, (r3, 0x0)
    411a:	74cd      	zexth      	r3, r3
    411c:	aa60      	st.h      	r3, (r2, 0x0)
    411e:	3300      	movi      	r3, 0
    4120:	1216      	lrw      	r0, 0x200002c4	// 4278 <TK_Keymap_prog+0x754>
    4122:	b060      	st.w      	r3, (r0, 0x0)
    4124:	3301      	movi      	r3, 1
    4126:	90c0      	ld.w      	r6, (r0, 0x0)
    4128:	70d0      	lsl      	r3, r4
    412a:	6cd8      	or      	r3, r6
    412c:	b060      	st.w      	r3, (r0, 0x0)
    412e:	9804      	ld.w      	r0, (r14, 0x10)
    4130:	4461      	lsli      	r3, r4, 1
    4132:	60c0      	addu      	r3, r0
    4134:	8b00      	ld.h      	r0, (r3, 0x0)
    4136:	8a40      	ld.h      	r2, (r2, 0x0)
    4138:	7489      	zexth      	r2, r2
    413a:	7403      	sexth      	r0, r0
    413c:	2a04      	subi      	r2, 5
    413e:	6481      	cmplt      	r0, r2
    4140:	0803      	bt      	0x4146	// 4146 <TK_Keymap_prog+0x622>
    4142:	e800fd87 	br      	0x3c50	// 3c50 <TK_Keymap_prog+0x12c>
    4146:	12ce      	lrw      	r6, 0x2000028c	// 427c <TK_Keymap_prog+0x758>
    4148:	8b00      	ld.h      	r0, (r3, 0x0)
    414a:	8e40      	ld.h      	r2, (r6, 0x0)
    414c:	7489      	zexth      	r2, r2
    414e:	7403      	sexth      	r0, r0
    4150:	2204      	addi      	r2, 5
    4152:	6409      	cmplt      	r2, r0
    4154:	0803      	bt      	0x415a	// 415a <TK_Keymap_prog+0x636>
    4156:	e800fd7d 	br      	0x3c50	// 3c50 <TK_Keymap_prog+0x12c>
    415a:	8b60      	ld.h      	r3, (r3, 0x0)
    415c:	74cd      	zexth      	r3, r3
    415e:	ae60      	st.h      	r3, (r6, 0x0)
    4160:	1246      	lrw      	r2, 0x200002c4	// 4278 <TK_Keymap_prog+0x754>
    4162:	e800fd63 	br      	0x3c28	// 3c28 <TK_Keymap_prog+0x104>
    4166:	3d43      	cmpnei      	r5, 3
    4168:	0c02      	bf      	0x416c	// 416c <TK_Keymap_prog+0x648>
    416a:	061d      	br      	0x3da4	// 3da4 <TK_Keymap_prog+0x280>
    416c:	12c2      	lrw      	r6, 0x2000046a	// 4274 <TK_Keymap_prog+0x750>
    416e:	8ae0      	ld.h      	r7, (r2, 0x0)
    4170:	8e20      	ld.h      	r1, (r6, 0x0)
    4172:	7445      	zexth      	r1, r1
    4174:	75df      	sexth      	r7, r7
    4176:	2109      	addi      	r1, 10
    4178:	65c5      	cmplt      	r1, r7
    417a:	0c0b      	bf      	0x4190	// 4190 <TK_Keymap_prog+0x66c>
    417c:	8a40      	ld.h      	r2, (r2, 0x0)
    417e:	7489      	zexth      	r2, r2
    4180:	ae40      	st.h      	r2, (r6, 0x0)
    4182:	115e      	lrw      	r2, 0x200002c4	// 4278 <TK_Keymap_prog+0x754>
    4184:	b260      	st.w      	r3, (r2, 0x0)
    4186:	3301      	movi      	r3, 1
    4188:	9220      	ld.w      	r1, (r2, 0x0)
    418a:	70d0      	lsl      	r3, r4
    418c:	6cc4      	or      	r3, r1
    418e:	b260      	st.w      	r3, (r2, 0x0)
    4190:	9844      	ld.w      	r2, (r14, 0x10)
    4192:	4461      	lsli      	r3, r4, 1
    4194:	60c8      	addu      	r3, r2
    4196:	8b40      	ld.h      	r2, (r3, 0x0)
    4198:	8e20      	ld.h      	r1, (r6, 0x0)
    419a:	7445      	zexth      	r1, r1
    419c:	748b      	sexth      	r2, r2
    419e:	2904      	subi      	r1, 5
    41a0:	6449      	cmplt      	r2, r1
    41a2:	0802      	bt      	0x41a6	// 41a6 <TK_Keymap_prog+0x682>
    41a4:	0600      	br      	0x3da4	// 3da4 <TK_Keymap_prog+0x280>
    41a6:	11d6      	lrw      	r6, 0x2000028c	// 427c <TK_Keymap_prog+0x758>
    41a8:	8b20      	ld.h      	r1, (r3, 0x0)
    41aa:	8e40      	ld.h      	r2, (r6, 0x0)
    41ac:	7489      	zexth      	r2, r2
    41ae:	7447      	sexth      	r1, r1
    41b0:	2204      	addi      	r2, 5
    41b2:	6449      	cmplt      	r2, r1
    41b4:	0803      	bt      	0x41ba	// 41ba <TK_Keymap_prog+0x696>
    41b6:	e800fdf7 	br      	0x3da4	// 3da4 <TK_Keymap_prog+0x280>
    41ba:	8b60      	ld.h      	r3, (r3, 0x0)
    41bc:	74cd      	zexth      	r3, r3
    41be:	ae60      	st.h      	r3, (r6, 0x0)
    41c0:	114e      	lrw      	r2, 0x200002c4	// 4278 <TK_Keymap_prog+0x754>
    41c2:	e800fde6 	br      	0x3d8e	// 3d8e <TK_Keymap_prog+0x26a>
    41c6:	3d43      	cmpnei      	r5, 3
    41c8:	0c02      	bf      	0x41cc	// 41cc <TK_Keymap_prog+0x6a8>
    41ca:	0609      	br      	0x3ddc	// 3ddc <TK_Keymap_prog+0x2b8>
    41cc:	105e      	lrw      	r2, 0x2000054c	// 4244 <TK_Keymap_prog+0x720>
    41ce:	8bc0      	ld.h      	r6, (r3, 0x0)
    41d0:	8a00      	ld.h      	r0, (r2, 0x0)
    41d2:	7401      	zexth      	r0, r0
    41d4:	759b      	sexth      	r6, r6
    41d6:	2009      	addi      	r0, 10
    41d8:	6581      	cmplt      	r0, r6
    41da:	0c0c      	bf      	0x41f2	// 41f2 <TK_Keymap_prog+0x6ce>
    41dc:	8b60      	ld.h      	r3, (r3, 0x0)
    41de:	74cd      	zexth      	r3, r3
    41e0:	aa60      	st.h      	r3, (r2, 0x0)
    41e2:	3300      	movi      	r3, 0
    41e4:	1019      	lrw      	r0, 0x20000260	// 4248 <TK_Keymap_prog+0x724>
    41e6:	b060      	st.w      	r3, (r0, 0x0)
    41e8:	3301      	movi      	r3, 1
    41ea:	90c0      	ld.w      	r6, (r0, 0x0)
    41ec:	70d0      	lsl      	r3, r4
    41ee:	6cd8      	or      	r3, r6
    41f0:	b060      	st.w      	r3, (r0, 0x0)
    41f2:	9801      	ld.w      	r0, (r14, 0x4)
    41f4:	4461      	lsli      	r3, r4, 1
    41f6:	60c0      	addu      	r3, r0
    41f8:	8b00      	ld.h      	r0, (r3, 0x0)
    41fa:	8a40      	ld.h      	r2, (r2, 0x0)
    41fc:	7489      	zexth      	r2, r2
    41fe:	7403      	sexth      	r0, r0
    4200:	2a04      	subi      	r2, 5
    4202:	6481      	cmplt      	r0, r2
    4204:	0803      	bt      	0x420a	// 420a <TK_Keymap_prog+0x6e6>
    4206:	e800fdeb 	br      	0x3ddc	// 3ddc <TK_Keymap_prog+0x2b8>
    420a:	10de      	lrw      	r6, 0x2000046e	// 4280 <TK_Keymap_prog+0x75c>
    420c:	8b00      	ld.h      	r0, (r3, 0x0)
    420e:	8e40      	ld.h      	r2, (r6, 0x0)
    4210:	7489      	zexth      	r2, r2
    4212:	7403      	sexth      	r0, r0
    4214:	2204      	addi      	r2, 5
    4216:	6409      	cmplt      	r2, r0
    4218:	0803      	bt      	0x421e	// 421e <TK_Keymap_prog+0x6fa>
    421a:	e800fde1 	br      	0x3ddc	// 3ddc <TK_Keymap_prog+0x2b8>
    421e:	8b60      	ld.h      	r3, (r3, 0x0)
    4220:	74cd      	zexth      	r3, r3
    4222:	ae60      	st.h      	r3, (r6, 0x0)
    4224:	1049      	lrw      	r2, 0x20000260	// 4248 <TK_Keymap_prog+0x724>
    4226:	e800fd67 	br      	0x3cf4	// 3cf4 <TK_Keymap_prog+0x1d0>
    422a:	3d43      	cmpnei      	r5, 3
    422c:	0ad2      	bt      	0x3fd0	// 3fd0 <TK_Keymap_prog+0x4ac>
    422e:	8b20      	ld.h      	r1, (r3, 0x0)
    4230:	10c5      	lrw      	r6, 0x2000054c	// 4244 <TK_Keymap_prog+0x720>
    4232:	7487      	sexth      	r2, r1
    4234:	8e20      	ld.h      	r1, (r6, 0x0)
    4236:	7445      	zexth      	r1, r1
    4238:	2109      	addi      	r1, 10
    423a:	6485      	cmplt      	r1, r2
    423c:	0c2f      	bf      	0x429a	// 429a <TK_Keymap_prog+0x776>
    423e:	0423      	br      	0x4284	// 4284 <TK_Keymap_prog+0x760>
    4240:	20000334 	.long	0x20000334
    4244:	2000054c 	.long	0x2000054c
    4248:	20000260 	.long	0x20000260
    424c:	200002de 	.long	0x200002de
    4250:	20000488 	.long	0x20000488
    4254:	20000338 	.long	0x20000338
    4258:	20000362 	.long	0x20000362
    425c:	20000458 	.long	0x20000458
    4260:	20000499 	.long	0x20000499
    4264:	20000440 	.long	0x20000440
    4268:	20000302 	.long	0x20000302
    426c:	2000024e 	.long	0x2000024e
    4270:	20000350 	.long	0x20000350
    4274:	2000046a 	.long	0x2000046a
    4278:	200002c4 	.long	0x200002c4
    427c:	2000028c 	.long	0x2000028c
    4280:	2000046e 	.long	0x2000046e
    4284:	8b60      	ld.h      	r3, (r3, 0x0)
    4286:	74cd      	zexth      	r3, r3
    4288:	ae60      	st.h      	r3, (r6, 0x0)
    428a:	9867      	ld.w      	r3, (r14, 0x1c)
    428c:	113d      	lrw      	r1, 0x20000260	// 4380 <TK_Keymap_prog+0x85c>
    428e:	b160      	st.w      	r3, (r1, 0x0)
    4290:	3301      	movi      	r3, 1
    4292:	9140      	ld.w      	r2, (r1, 0x0)
    4294:	70d0      	lsl      	r3, r4
    4296:	6cc8      	or      	r3, r2
    4298:	b160      	st.w      	r3, (r1, 0x0)
    429a:	9841      	ld.w      	r2, (r14, 0x4)
    429c:	4461      	lsli      	r3, r4, 1
    429e:	60c8      	addu      	r3, r2
    42a0:	8b40      	ld.h      	r2, (r3, 0x0)
    42a2:	8e20      	ld.h      	r1, (r6, 0x0)
    42a4:	7445      	zexth      	r1, r1
    42a6:	748b      	sexth      	r2, r2
    42a8:	2904      	subi      	r1, 5
    42aa:	6449      	cmplt      	r2, r1
    42ac:	0e92      	bf      	0x3fd0	// 3fd0 <TK_Keymap_prog+0x4ac>
    42ae:	11d6      	lrw      	r6, 0x2000046e	// 4384 <TK_Keymap_prog+0x860>
    42b0:	8b20      	ld.h      	r1, (r3, 0x0)
    42b2:	8e40      	ld.h      	r2, (r6, 0x0)
    42b4:	7489      	zexth      	r2, r2
    42b6:	7447      	sexth      	r1, r1
    42b8:	2204      	addi      	r2, 5
    42ba:	6449      	cmplt      	r2, r1
    42bc:	0802      	bt      	0x42c0	// 42c0 <TK_Keymap_prog+0x79c>
    42be:	0689      	br      	0x3fd0	// 3fd0 <TK_Keymap_prog+0x4ac>
    42c0:	8b60      	ld.h      	r3, (r3, 0x0)
    42c2:	74cd      	zexth      	r3, r3
    42c4:	ae60      	st.h      	r3, (r6, 0x0)
    42c6:	114f      	lrw      	r2, 0x20000260	// 4380 <TK_Keymap_prog+0x85c>
    42c8:	0662      	br      	0x3f8c	// 3f8c <TK_Keymap_prog+0x468>
    42ca:	3d43      	cmpnei      	r5, 3
    42cc:	0a8e      	bt      	0x3fe8	// 3fe8 <TK_Keymap_prog+0x4c4>
    42ce:	114f      	lrw      	r2, 0x20000302	// 4388 <TK_Keymap_prog+0x864>
    42d0:	8bc0      	ld.h      	r6, (r3, 0x0)
    42d2:	8a00      	ld.h      	r0, (r2, 0x0)
    42d4:	7401      	zexth      	r0, r0
    42d6:	759b      	sexth      	r6, r6
    42d8:	2009      	addi      	r0, 10
    42da:	6581      	cmplt      	r0, r6
    42dc:	0c0c      	bf      	0x42f4	// 42f4 <TK_Keymap_prog+0x7d0>
    42de:	8b60      	ld.h      	r3, (r3, 0x0)
    42e0:	74cd      	zexth      	r3, r3
    42e2:	aa60      	st.h      	r3, (r2, 0x0)
    42e4:	3300      	movi      	r3, 0
    42e6:	110a      	lrw      	r0, 0x20000334	// 438c <TK_Keymap_prog+0x868>
    42e8:	b060      	st.w      	r3, (r0, 0x0)
    42ea:	3301      	movi      	r3, 1
    42ec:	90c0      	ld.w      	r6, (r0, 0x0)
    42ee:	70d0      	lsl      	r3, r4
    42f0:	6cd8      	or      	r3, r6
    42f2:	b060      	st.w      	r3, (r0, 0x0)
    42f4:	9802      	ld.w      	r0, (r14, 0x8)
    42f6:	4461      	lsli      	r3, r4, 1
    42f8:	60c0      	addu      	r3, r0
    42fa:	8b00      	ld.h      	r0, (r3, 0x0)
    42fc:	8a40      	ld.h      	r2, (r2, 0x0)
    42fe:	7489      	zexth      	r2, r2
    4300:	7403      	sexth      	r0, r0
    4302:	2a04      	subi      	r2, 5
    4304:	6481      	cmplt      	r0, r2
    4306:	0802      	bt      	0x430a	// 430a <TK_Keymap_prog+0x7e6>
    4308:	0670      	br      	0x3fe8	// 3fe8 <TK_Keymap_prog+0x4c4>
    430a:	11c2      	lrw      	r6, 0x200003c0	// 4390 <TK_Keymap_prog+0x86c>
    430c:	8b00      	ld.h      	r0, (r3, 0x0)
    430e:	8e40      	ld.h      	r2, (r6, 0x0)
    4310:	7489      	zexth      	r2, r2
    4312:	7403      	sexth      	r0, r0
    4314:	2204      	addi      	r2, 5
    4316:	6409      	cmplt      	r2, r0
    4318:	0802      	bt      	0x431c	// 431c <TK_Keymap_prog+0x7f8>
    431a:	0667      	br      	0x3fe8	// 3fe8 <TK_Keymap_prog+0x4c4>
    431c:	8b60      	ld.h      	r3, (r3, 0x0)
    431e:	74cd      	zexth      	r3, r3
    4320:	ae60      	st.h      	r3, (r6, 0x0)
    4322:	105b      	lrw      	r2, 0x20000334	// 438c <TK_Keymap_prog+0x868>
    4324:	e800fdea 	br      	0x3ef8	// 3ef8 <TK_Keymap_prog+0x3d4>
    4328:	3d43      	cmpnei      	r5, 3
    432a:	0ae8      	bt      	0x40fa	// 40fa <TK_Keymap_prog+0x5d6>
    432c:	10d7      	lrw      	r6, 0x20000302	// 4388 <TK_Keymap_prog+0x864>
    432e:	8be0      	ld.h      	r7, (r3, 0x0)
    4330:	8e20      	ld.h      	r1, (r6, 0x0)
    4332:	7445      	zexth      	r1, r1
    4334:	75df      	sexth      	r7, r7
    4336:	2109      	addi      	r1, 10
    4338:	65c5      	cmplt      	r1, r7
    433a:	0c0b      	bf      	0x4350	// 4350 <TK_Keymap_prog+0x82c>
    433c:	8b60      	ld.h      	r3, (r3, 0x0)
    433e:	1034      	lrw      	r1, 0x20000334	// 438c <TK_Keymap_prog+0x868>
    4340:	74cd      	zexth      	r3, r3
    4342:	ae60      	st.h      	r3, (r6, 0x0)
    4344:	b140      	st.w      	r2, (r1, 0x0)
    4346:	3301      	movi      	r3, 1
    4348:	9140      	ld.w      	r2, (r1, 0x0)
    434a:	70d0      	lsl      	r3, r4
    434c:	6cc8      	or      	r3, r2
    434e:	b160      	st.w      	r3, (r1, 0x0)
    4350:	9842      	ld.w      	r2, (r14, 0x8)
    4352:	4461      	lsli      	r3, r4, 1
    4354:	60c8      	addu      	r3, r2
    4356:	8b40      	ld.h      	r2, (r3, 0x0)
    4358:	8e20      	ld.h      	r1, (r6, 0x0)
    435a:	7445      	zexth      	r1, r1
    435c:	748b      	sexth      	r2, r2
    435e:	2904      	subi      	r1, 5
    4360:	6449      	cmplt      	r2, r1
    4362:	0ecc      	bf      	0x40fa	// 40fa <TK_Keymap_prog+0x5d6>
    4364:	10cb      	lrw      	r6, 0x200003c0	// 4390 <TK_Keymap_prog+0x86c>
    4366:	8b20      	ld.h      	r1, (r3, 0x0)
    4368:	8e40      	ld.h      	r2, (r6, 0x0)
    436a:	7489      	zexth      	r2, r2
    436c:	7447      	sexth      	r1, r1
    436e:	2204      	addi      	r2, 5
    4370:	6449      	cmplt      	r2, r1
    4372:	0ec4      	bf      	0x40fa	// 40fa <TK_Keymap_prog+0x5d6>
    4374:	8b60      	ld.h      	r3, (r3, 0x0)
    4376:	74cd      	zexth      	r3, r3
    4378:	ae60      	st.h      	r3, (r6, 0x0)
    437a:	1045      	lrw      	r2, 0x20000334	// 438c <TK_Keymap_prog+0x868>
    437c:	069f      	br      	0x40ba	// 40ba <TK_Keymap_prog+0x596>
    437e:	0000      	bkpt
    4380:	20000260 	.long	0x20000260
    4384:	2000046e 	.long	0x2000046e
    4388:	20000302 	.long	0x20000302
    438c:	20000334 	.long	0x20000334
    4390:	200003c0 	.long	0x200003c0

Disassembly of section .text.TK_overflow_predict:

00004394 <TK_overflow_predict>:
    4394:	14d4      	push      	r4-r7, r15
    4396:	1422      	subi      	r14, r14, 8
    4398:	113c      	lrw      	r1, 0x2000006c	// 4488 <TK_overflow_predict+0xf4>
    439a:	8164      	ld.b      	r3, (r1, 0x4)
    439c:	3b41      	cmpnei      	r3, 1
    439e:	0823      	bt      	0x43e4	// 43e4 <TK_overflow_predict+0x50>
    43a0:	115b      	lrw      	r2, 0x2000043a	// 448c <TK_overflow_predict+0xf8>
    43a2:	8260      	ld.b      	r3, (r2, 0x0)
    43a4:	2300      	addi      	r3, 1
    43a6:	74cc      	zextb      	r3, r3
    43a8:	a260      	st.b      	r3, (r2, 0x0)
    43aa:	8260      	ld.b      	r3, (r2, 0x0)
    43ac:	1119      	lrw      	r0, 0x2000014c	// 4490 <TK_overflow_predict+0xfc>
    43ae:	8000      	ld.b      	r0, (r0, 0x0)
    43b0:	64c0      	cmphs      	r0, r3
    43b2:	0819      	bt      	0x43e4	// 43e4 <TK_overflow_predict+0x50>
    43b4:	3300      	movi      	r3, 0
    43b6:	a260      	st.b      	r3, (r2, 0x0)
    43b8:	11b7      	lrw      	r5, 0x20000349	// 4494 <TK_overflow_predict+0x100>
    43ba:	8560      	ld.b      	r3, (r5, 0x0)
    43bc:	3b40      	cmpnei      	r3, 0
    43be:	0c15      	bf      	0x43e8	// 43e8 <TK_overflow_predict+0x54>
    43c0:	8560      	ld.b      	r3, (r5, 0x0)
    43c2:	3b41      	cmpnei      	r3, 1
    43c4:	0810      	bt      	0x43e4	// 43e4 <TK_overflow_predict+0x50>
    43c6:	3300      	movi      	r3, 0
    43c8:	a560      	st.b      	r3, (r5, 0x0)
    43ca:	3200      	movi      	r2, 0
    43cc:	1173      	lrw      	r3, 0x2000005c	// 4498 <TK_overflow_predict+0x104>
    43ce:	1114      	lrw      	r0, 0x2000046c	// 449c <TK_overflow_predict+0x108>
    43d0:	11b4      	lrw      	r5, 0x200004b0	// 44a0 <TK_overflow_predict+0x10c>
    43d2:	11d5      	lrw      	r6, 0x20000126	// 44a4 <TK_overflow_predict+0x110>
    43d4:	9360      	ld.w      	r3, (r3, 0x0)
    43d6:	b342      	st.w      	r2, (r3, 0x8)
    43d8:	1174      	lrw      	r3, 0x20000058	// 44a8 <TK_overflow_predict+0x114>
    43da:	9380      	ld.w      	r4, (r3, 0x0)
    43dc:	3300      	movi      	r3, 0
    43de:	8040      	ld.b      	r2, (r0, 0x0)
    43e0:	648c      	cmphs      	r3, r2
    43e2:	0c44      	bf      	0x446a	// 446a <TK_overflow_predict+0xd6>
    43e4:	1402      	addi      	r14, r14, 8
    43e6:	1494      	pop      	r4-r7, r15
    43e8:	5976      	addi      	r3, r1, 6
    43ea:	3600      	movi      	r6, 0
    43ec:	11f0      	lrw      	r7, 0x20000150	// 44ac <TK_overflow_predict+0x118>
    43ee:	b860      	st.w      	r3, (r14, 0x0)
    43f0:	9760      	ld.w      	r3, (r7, 0x0)
    43f2:	70d9      	lsr      	r3, r6
    43f4:	3201      	movi      	r2, 1
    43f6:	68c8      	and      	r3, r2
    43f8:	3b40      	cmpnei      	r3, 0
    43fa:	0c34      	bf      	0x4462	// 4462 <TK_overflow_predict+0xce>
    43fc:	4681      	lsli      	r4, r6, 1
    43fe:	9860      	ld.w      	r3, (r14, 0x0)
    4400:	60d0      	addu      	r3, r4
    4402:	8b00      	ld.h      	r0, (r3, 0x0)
    4404:	e3ffe8ce 	bsr      	0x15a0	// 15a0 <__floatunsidf>
    4408:	6cc7      	mov      	r3, r1
    440a:	3180      	movi      	r1, 128
    440c:	6c83      	mov      	r2, r0
    440e:	4137      	lsli      	r1, r1, 23
    4410:	3000      	movi      	r0, 0
    4412:	e3ffded1 	bsr      	0x1b4	// 1b4 <__GI_pow>
    4416:	1167      	lrw      	r3, 0x20000156	// 44b0 <TK_overflow_predict+0x11c>
    4418:	60d0      	addu      	r3, r4
    441a:	8b60      	ld.h      	r3, (r3, 0x0)
    441c:	4364      	lsli      	r3, r3, 4
    441e:	230e      	addi      	r3, 15
    4420:	b861      	st.w      	r3, (r14, 0x4)
    4422:	e3ffe477 	bsr      	0xd10	// d10 <__fixunsdfsi>
    4426:	9861      	ld.w      	r3, (r14, 0x4)
    4428:	7cc0      	mult      	r3, r0
    442a:	1143      	lrw      	r2, 0x200004e4	// 44b4 <TK_overflow_predict+0x120>
    442c:	740d      	zexth      	r0, r3
    442e:	6090      	addu      	r2, r4
    4430:	1162      	lrw      	r3, 0x2000054e	// 44b8 <TK_overflow_predict+0x124>
    4432:	60d0      	addu      	r3, r4
    4434:	aa00      	st.h      	r0, (r2, 0x0)
    4436:	8b60      	ld.h      	r3, (r3, 0x0)
    4438:	8a00      	ld.h      	r0, (r2, 0x0)
    443a:	7401      	zexth      	r0, r0
    443c:	325f      	movi      	r2, 95
    443e:	74cd      	zexth      	r3, r3
    4440:	7c08      	mult      	r0, r2
    4442:	3164      	movi      	r1, 100
    4444:	b861      	st.w      	r3, (r14, 0x4)
    4446:	e3fffa99 	bsr      	0x3978	// 3978 <__divsi3>
    444a:	9861      	ld.w      	r3, (r14, 0x4)
    444c:	64c1      	cmplt      	r0, r3
    444e:	0c0a      	bf      	0x4462	// 4462 <TK_overflow_predict+0xce>
    4450:	1075      	lrw      	r3, 0x20000126	// 44a4 <TK_overflow_predict+0x110>
    4452:	610c      	addu      	r4, r3
    4454:	8c60      	ld.h      	r3, (r4, 0x0)
    4456:	3b06      	cmphsi      	r3, 7
    4458:	0805      	bt      	0x4462	// 4462 <TK_overflow_predict+0xce>
    445a:	2300      	addi      	r3, 1
    445c:	ac60      	st.h      	r3, (r4, 0x0)
    445e:	3301      	movi      	r3, 1
    4460:	a560      	st.b      	r3, (r5, 0x0)
    4462:	2600      	addi      	r6, 1
    4464:	3e51      	cmpnei      	r6, 17
    4466:	0bc5      	bt      	0x43f0	// 43f0 <TK_overflow_predict+0x5c>
    4468:	07ac      	br      	0x43c0	// 43c0 <TK_overflow_predict+0x2c>
    446a:	5d4c      	addu      	r2, r5, r3
    446c:	8240      	ld.b      	r2, (r2, 0x0)
    446e:	4241      	lsli      	r2, r2, 1
    4470:	4322      	lsli      	r1, r3, 2
    4472:	6098      	addu      	r2, r6
    4474:	6050      	addu      	r1, r4
    4476:	8a40      	ld.h      	r2, (r2, 0x0)
    4478:	91f2      	ld.w      	r7, (r1, 0x48)
    447a:	4254      	lsli      	r2, r2, 20
    447c:	6c9c      	or      	r2, r7
    447e:	2300      	addi      	r3, 1
    4480:	b152      	st.w      	r2, (r1, 0x48)
    4482:	74cc      	zextb      	r3, r3
    4484:	07ad      	br      	0x43de	// 43de <TK_overflow_predict+0x4a>
    4486:	0000      	bkpt
    4488:	2000006c 	.long	0x2000006c
    448c:	2000043a 	.long	0x2000043a
    4490:	2000014c 	.long	0x2000014c
    4494:	20000349 	.long	0x20000349
    4498:	2000005c 	.long	0x2000005c
    449c:	2000046c 	.long	0x2000046c
    44a0:	200004b0 	.long	0x200004b0
    44a4:	20000126 	.long	0x20000126
    44a8:	20000058 	.long	0x20000058
    44ac:	20000150 	.long	0x20000150
    44b0:	20000156 	.long	0x20000156
    44b4:	200004e4 	.long	0x200004e4
    44b8:	2000054e 	.long	0x2000054e

Disassembly of section .text.TK_Baseline_tracking:

000044bc <TK_Baseline_tracking>:
    44bc:	14c4      	push      	r4-r7
    44be:	1422      	subi      	r14, r14, 8
    44c0:	0149      	lrw      	r2, 0x200003ba	// 4818 <TK_Baseline_tracking+0x35c>
    44c2:	8260      	ld.b      	r3, (r2, 0x0)
    44c4:	2300      	addi      	r3, 1
    44c6:	74cc      	zextb      	r3, r3
    44c8:	a260      	st.b      	r3, (r2, 0x0)
    44ca:	8260      	ld.b      	r3, (r2, 0x0)
    44cc:	012b      	lrw      	r1, 0x2000014c	// 481c <TK_Baseline_tracking+0x360>
    44ce:	8120      	ld.b      	r1, (r1, 0x0)
    44d0:	644c      	cmphs      	r3, r1
    44d2:	0c10      	bf      	0x44f2	// 44f2 <TK_Baseline_tracking+0x36>
    44d4:	3300      	movi      	r3, 0
    44d6:	a260      	st.b      	r3, (r2, 0x0)
    44d8:	016d      	lrw      	r3, 0x200002c4	// 4820 <TK_Baseline_tracking+0x364>
    44da:	9360      	ld.w      	r3, (r3, 0x0)
    44dc:	3b40      	cmpnei      	r3, 0
    44de:	0c0c      	bf      	0x44f6	// 44f6 <TK_Baseline_tracking+0x3a>
    44e0:	016e      	lrw      	r3, 0x20000260	// 4824 <TK_Baseline_tracking+0x368>
    44e2:	9360      	ld.w      	r3, (r3, 0x0)
    44e4:	3b40      	cmpnei      	r3, 0
    44e6:	0cc6      	bf      	0x4672	// 4672 <TK_Baseline_tracking+0x1b6>
    44e8:	016f      	lrw      	r3, 0x20000334	// 4828 <TK_Baseline_tracking+0x36c>
    44ea:	9360      	ld.w      	r3, (r3, 0x0)
    44ec:	3b40      	cmpnei      	r3, 0
    44ee:	0802      	bt      	0x44f2	// 44f2 <TK_Baseline_tracking+0x36>
    44f0:	057f      	br      	0x47ee	// 47ee <TK_Baseline_tracking+0x332>
    44f2:	1402      	addi      	r14, r14, 8
    44f4:	1484      	pop      	r4-r7
    44f6:	0131      	lrw      	r1, 0x200002e0	// 482c <TK_Baseline_tracking+0x370>
    44f8:	6dc7      	mov      	r7, r1
    44fa:	b820      	st.w      	r1, (r14, 0x0)
    44fc:	3200      	movi      	r2, 0
    44fe:	0172      	lrw      	r3, 0x2000017e	// 4830 <TK_Baseline_tracking+0x374>
    4500:	0132      	lrw      	r1, 0x2000022c	// 4834 <TK_Baseline_tracking+0x378>
    4502:	4201      	lsli      	r0, r2, 1
    4504:	9880      	ld.w      	r4, (r14, 0x0)
    4506:	6100      	addu      	r4, r0
    4508:	8c80      	ld.h      	r4, (r4, 0x0)
    450a:	7513      	sexth      	r4, r4
    450c:	3cdf      	btsti      	r4, 31
    450e:	0c27      	bf      	0x455c	// 455c <TK_Baseline_tracking+0xa0>
    4510:	01b5      	lrw      	r5, 0x2000054e	// 4838 <TK_Baseline_tracking+0x37c>
    4512:	5980      	addu      	r4, r1, r0
    4514:	6014      	addu      	r0, r5
    4516:	b881      	st.w      	r4, (r14, 0x4)
    4518:	8c80      	ld.h      	r4, (r4, 0x0)
    451a:	88c0      	ld.h      	r6, (r0, 0x0)
    451c:	7511      	zexth      	r4, r4
    451e:	7599      	zexth      	r6, r6
    4520:	8ba0      	ld.h      	r5, (r3, 0x0)
    4522:	611a      	subu      	r4, r6
    4524:	6551      	cmplt      	r4, r5
    4526:	081b      	bt      	0x455c	// 455c <TK_Baseline_tracking+0xa0>
    4528:	9881      	ld.w      	r4, (r14, 0x4)
    452a:	8c80      	ld.h      	r4, (r4, 0x0)
    452c:	8800      	ld.h      	r0, (r0, 0x0)
    452e:	7511      	zexth      	r4, r4
    4530:	7401      	zexth      	r0, r0
    4532:	5c01      	subu      	r0, r4, r0
    4534:	4581      	lsli      	r4, r5, 1
    4536:	6150      	addu      	r5, r4
    4538:	6541      	cmplt      	r0, r5
    453a:	0c11      	bf      	0x455c	// 455c <TK_Baseline_tracking+0xa0>
    453c:	019f      	lrw      	r4, 0x20000470	// 483c <TK_Baseline_tracking+0x380>
    453e:	6108      	addu      	r4, r2
    4540:	8400      	ld.b      	r0, (r4, 0x0)
    4542:	2000      	addi      	r0, 1
    4544:	7400      	zextb      	r0, r0
    4546:	a400      	st.b      	r0, (r4, 0x0)
    4548:	0201      	lrw      	r0, 0x2000008c	// 4840 <TK_Baseline_tracking+0x384>
    454a:	84a0      	ld.b      	r5, (r4, 0x0)
    454c:	8008      	ld.b      	r0, (r0, 0x8)
    454e:	6540      	cmphs      	r0, r5
    4550:	0806      	bt      	0x455c	// 455c <TK_Baseline_tracking+0xa0>
    4552:	0202      	lrw      	r0, 0x20000361	// 4844 <TK_Baseline_tracking+0x388>
    4554:	3501      	movi      	r5, 1
    4556:	a0a0      	st.b      	r5, (r0, 0x0)
    4558:	3000      	movi      	r0, 0
    455a:	a400      	st.b      	r0, (r4, 0x0)
    455c:	4201      	lsli      	r0, r2, 1
    455e:	5f80      	addu      	r4, r7, r0
    4560:	8c80      	ld.h      	r4, (r4, 0x0)
    4562:	7513      	sexth      	r4, r4
    4564:	3c20      	cmplti      	r4, 1
    4566:	086f      	bt      	0x4644	// 4644 <TK_Baseline_tracking+0x188>
    4568:	028b      	lrw      	r4, 0x2000054e	// 4838 <TK_Baseline_tracking+0x37c>
    456a:	6100      	addu      	r4, r0
    456c:	59a0      	addu      	r5, r1, r0
    456e:	8c80      	ld.h      	r4, (r4, 0x0)
    4570:	8da0      	ld.h      	r5, (r5, 0x0)
    4572:	7555      	zexth      	r5, r5
    4574:	7511      	zexth      	r4, r4
    4576:	6116      	subu      	r4, r5
    4578:	8ba0      	ld.h      	r5, (r3, 0x0)
    457a:	45a2      	lsli      	r5, r5, 2
    457c:	6551      	cmplt      	r4, r5
    457e:	0863      	bt      	0x4644	// 4644 <TK_Baseline_tracking+0x188>
    4580:	028d      	lrw      	r4, 0x200003e4	// 4848 <TK_Baseline_tracking+0x38c>
    4582:	6108      	addu      	r4, r2
    4584:	84a0      	ld.b      	r5, (r4, 0x0)
    4586:	2500      	addi      	r5, 1
    4588:	7554      	zextb      	r5, r5
    458a:	a4a0      	st.b      	r5, (r4, 0x0)
    458c:	02b2      	lrw      	r5, 0x2000008c	// 4840 <TK_Baseline_tracking+0x384>
    458e:	84c0      	ld.b      	r6, (r4, 0x0)
    4590:	85a9      	ld.b      	r5, (r5, 0x9)
    4592:	6594      	cmphs      	r5, r6
    4594:	0806      	bt      	0x45a0	// 45a0 <TK_Baseline_tracking+0xe4>
    4596:	02b3      	lrw      	r5, 0x20000361	// 4844 <TK_Baseline_tracking+0x388>
    4598:	3601      	movi      	r6, 1
    459a:	a5c0      	st.b      	r6, (r5, 0x0)
    459c:	3500      	movi      	r5, 0
    459e:	a4a0      	st.b      	r5, (r4, 0x0)
    45a0:	5f80      	addu      	r4, r7, r0
    45a2:	8c80      	ld.h      	r4, (r4, 0x0)
    45a4:	7513      	sexth      	r4, r4
    45a6:	3cdf      	btsti      	r4, 31
    45a8:	0c10      	bf      	0x45c8	// 45c8 <TK_Baseline_tracking+0x10c>
    45aa:	02db      	lrw      	r6, 0x2000054e	// 4838 <TK_Baseline_tracking+0x37c>
    45ac:	59a0      	addu      	r5, r1, r0
    45ae:	6180      	addu      	r6, r0
    45b0:	8d80      	ld.h      	r4, (r5, 0x0)
    45b2:	8ec0      	ld.h      	r6, (r6, 0x0)
    45b4:	7599      	zexth      	r6, r6
    45b6:	7511      	zexth      	r4, r4
    45b8:	611a      	subu      	r4, r6
    45ba:	8bc0      	ld.h      	r6, (r3, 0x0)
    45bc:	6591      	cmplt      	r4, r6
    45be:	0c05      	bf      	0x45c8	// 45c8 <TK_Baseline_tracking+0x10c>
    45c0:	8d80      	ld.h      	r4, (r5, 0x0)
    45c2:	2c00      	subi      	r4, 1
    45c4:	7511      	zexth      	r4, r4
    45c6:	ad80      	st.h      	r4, (r5, 0x0)
    45c8:	5f80      	addu      	r4, r7, r0
    45ca:	8c80      	ld.h      	r4, (r4, 0x0)
    45cc:	7513      	sexth      	r4, r4
    45ce:	3cdf      	btsti      	r4, 31
    45d0:	0c11      	bf      	0x45f2	// 45f2 <TK_Baseline_tracking+0x136>
    45d2:	03c5      	lrw      	r6, 0x2000054e	// 4838 <TK_Baseline_tracking+0x37c>
    45d4:	59a0      	addu      	r5, r1, r0
    45d6:	6180      	addu      	r6, r0
    45d8:	8d80      	ld.h      	r4, (r5, 0x0)
    45da:	8ec0      	ld.h      	r6, (r6, 0x0)
    45dc:	7599      	zexth      	r6, r6
    45de:	7511      	zexth      	r4, r4
    45e0:	611a      	subu      	r4, r6
    45e2:	8bc0      	ld.h      	r6, (r3, 0x0)
    45e4:	4ec1      	lsri      	r6, r6, 1
    45e6:	6591      	cmplt      	r4, r6
    45e8:	0805      	bt      	0x45f2	// 45f2 <TK_Baseline_tracking+0x136>
    45ea:	8d80      	ld.h      	r4, (r5, 0x0)
    45ec:	2c01      	subi      	r4, 2
    45ee:	7511      	zexth      	r4, r4
    45f0:	ad80      	st.h      	r4, (r5, 0x0)
    45f2:	5fa0      	addu      	r5, r7, r0
    45f4:	8d80      	ld.h      	r4, (r5, 0x0)
    45f6:	7513      	sexth      	r4, r4
    45f8:	3c20      	cmplti      	r4, 1
    45fa:	080c      	bt      	0x4612	// 4612 <TK_Baseline_tracking+0x156>
    45fc:	8da0      	ld.h      	r5, (r5, 0x0)
    45fe:	8b80      	ld.h      	r4, (r3, 0x0)
    4600:	7557      	sexth      	r5, r5
    4602:	4c81      	lsri      	r4, r4, 1
    4604:	6515      	cmplt      	r5, r4
    4606:	0c06      	bf      	0x4612	// 4612 <TK_Baseline_tracking+0x156>
    4608:	59a0      	addu      	r5, r1, r0
    460a:	8d80      	ld.h      	r4, (r5, 0x0)
    460c:	2400      	addi      	r4, 1
    460e:	7511      	zexth      	r4, r4
    4610:	ad80      	st.h      	r4, (r5, 0x0)
    4612:	5fa0      	addu      	r5, r7, r0
    4614:	8d80      	ld.h      	r4, (r5, 0x0)
    4616:	7513      	sexth      	r4, r4
    4618:	3c20      	cmplti      	r4, 1
    461a:	0810      	bt      	0x463a	// 463a <TK_Baseline_tracking+0x17e>
    461c:	8dc0      	ld.h      	r6, (r5, 0x0)
    461e:	759b      	sexth      	r6, r6
    4620:	8b80      	ld.h      	r4, (r3, 0x0)
    4622:	6519      	cmplt      	r6, r4
    4624:	0c0b      	bf      	0x463a	// 463a <TK_Baseline_tracking+0x17e>
    4626:	8da0      	ld.h      	r5, (r5, 0x0)
    4628:	7557      	sexth      	r5, r5
    462a:	4c81      	lsri      	r4, r4, 1
    462c:	6515      	cmplt      	r5, r4
    462e:	0806      	bt      	0x463a	// 463a <TK_Baseline_tracking+0x17e>
    4630:	6004      	addu      	r0, r1
    4632:	8880      	ld.h      	r4, (r0, 0x0)
    4634:	2401      	addi      	r4, 2
    4636:	7511      	zexth      	r4, r4
    4638:	a880      	st.h      	r4, (r0, 0x0)
    463a:	2200      	addi      	r2, 1
    463c:	3a51      	cmpnei      	r2, 17
    463e:	2301      	addi      	r3, 2
    4640:	0b61      	bt      	0x4502	// 4502 <TK_Baseline_tracking+0x46>
    4642:	074f      	br      	0x44e0	// 44e0 <TK_Baseline_tracking+0x24>
    4644:	5f80      	addu      	r4, r7, r0
    4646:	8c80      	ld.h      	r4, (r4, 0x0)
    4648:	7513      	sexth      	r4, r4
    464a:	3cdf      	btsti      	r4, 31
    464c:	0faa      	bf      	0x45a0	// 45a0 <TK_Baseline_tracking+0xe4>
    464e:	13bb      	lrw      	r5, 0x2000054e	// 4838 <TK_Baseline_tracking+0x37c>
    4650:	5980      	addu      	r4, r1, r0
    4652:	6140      	addu      	r5, r0
    4654:	8c80      	ld.h      	r4, (r4, 0x0)
    4656:	8da0      	ld.h      	r5, (r5, 0x0)
    4658:	7555      	zexth      	r5, r5
    465a:	8bc0      	ld.h      	r6, (r3, 0x0)
    465c:	7511      	zexth      	r4, r4
    465e:	6116      	subu      	r4, r5
    4660:	46a1      	lsli      	r5, r6, 1
    4662:	6158      	addu      	r5, r6
    4664:	6551      	cmplt      	r4, r5
    4666:	0b9d      	bt      	0x45a0	// 45a0 <TK_Baseline_tracking+0xe4>
    4668:	1397      	lrw      	r4, 0x20000361	// 4844 <TK_Baseline_tracking+0x388>
    466a:	3501      	movi      	r5, 1
    466c:	a4a0      	st.b      	r5, (r4, 0x0)
    466e:	6c03      	mov      	r0, r0
    4670:	0798      	br      	0x45a0	// 45a0 <TK_Baseline_tracking+0xe4>
    4672:	1337      	lrw      	r1, 0x20000418	// 484c <TK_Baseline_tracking+0x390>
    4674:	6dc7      	mov      	r7, r1
    4676:	b820      	st.w      	r1, (r14, 0x0)
    4678:	3200      	movi      	r2, 0
    467a:	136e      	lrw      	r3, 0x2000017e	// 4830 <TK_Baseline_tracking+0x374>
    467c:	1335      	lrw      	r1, 0x200003c2	// 4850 <TK_Baseline_tracking+0x394>
    467e:	4201      	lsli      	r0, r2, 1
    4680:	9880      	ld.w      	r4, (r14, 0x0)
    4682:	6100      	addu      	r4, r0
    4684:	8c80      	ld.h      	r4, (r4, 0x0)
    4686:	7513      	sexth      	r4, r4
    4688:	3cdf      	btsti      	r4, 31
    468a:	0c27      	bf      	0x46d8	// 46d8 <TK_Baseline_tracking+0x21c>
    468c:	13b2      	lrw      	r5, 0x20000308	// 4854 <TK_Baseline_tracking+0x398>
    468e:	5980      	addu      	r4, r1, r0
    4690:	6014      	addu      	r0, r5
    4692:	b881      	st.w      	r4, (r14, 0x4)
    4694:	8c80      	ld.h      	r4, (r4, 0x0)
    4696:	88c0      	ld.h      	r6, (r0, 0x0)
    4698:	7511      	zexth      	r4, r4
    469a:	7599      	zexth      	r6, r6
    469c:	8ba0      	ld.h      	r5, (r3, 0x0)
    469e:	611a      	subu      	r4, r6
    46a0:	6551      	cmplt      	r4, r5
    46a2:	081b      	bt      	0x46d8	// 46d8 <TK_Baseline_tracking+0x21c>
    46a4:	9881      	ld.w      	r4, (r14, 0x4)
    46a6:	8c80      	ld.h      	r4, (r4, 0x0)
    46a8:	8800      	ld.h      	r0, (r0, 0x0)
    46aa:	7511      	zexth      	r4, r4
    46ac:	7401      	zexth      	r0, r0
    46ae:	5c01      	subu      	r0, r4, r0
    46b0:	4581      	lsli      	r4, r5, 1
    46b2:	6150      	addu      	r5, r4
    46b4:	6541      	cmplt      	r0, r5
    46b6:	0c11      	bf      	0x46d8	// 46d8 <TK_Baseline_tracking+0x21c>
    46b8:	1388      	lrw      	r4, 0x20000458	// 4858 <TK_Baseline_tracking+0x39c>
    46ba:	6108      	addu      	r4, r2
    46bc:	8400      	ld.b      	r0, (r4, 0x0)
    46be:	2000      	addi      	r0, 1
    46c0:	7400      	zextb      	r0, r0
    46c2:	a400      	st.b      	r0, (r4, 0x0)
    46c4:	121f      	lrw      	r0, 0x2000008c	// 4840 <TK_Baseline_tracking+0x384>
    46c6:	84a0      	ld.b      	r5, (r4, 0x0)
    46c8:	8008      	ld.b      	r0, (r0, 0x8)
    46ca:	6540      	cmphs      	r0, r5
    46cc:	0806      	bt      	0x46d8	// 46d8 <TK_Baseline_tracking+0x21c>
    46ce:	121e      	lrw      	r0, 0x20000361	// 4844 <TK_Baseline_tracking+0x388>
    46d0:	3501      	movi      	r5, 1
    46d2:	a0a0      	st.b      	r5, (r0, 0x0)
    46d4:	3000      	movi      	r0, 0
    46d6:	a400      	st.b      	r0, (r4, 0x0)
    46d8:	4201      	lsli      	r0, r2, 1
    46da:	5f80      	addu      	r4, r7, r0
    46dc:	8c80      	ld.h      	r4, (r4, 0x0)
    46de:	7513      	sexth      	r4, r4
    46e0:	3c20      	cmplti      	r4, 1
    46e2:	086f      	bt      	0x47c0	// 47c0 <TK_Baseline_tracking+0x304>
    46e4:	129c      	lrw      	r4, 0x20000308	// 4854 <TK_Baseline_tracking+0x398>
    46e6:	6100      	addu      	r4, r0
    46e8:	59a0      	addu      	r5, r1, r0
    46ea:	8c80      	ld.h      	r4, (r4, 0x0)
    46ec:	8da0      	ld.h      	r5, (r5, 0x0)
    46ee:	7555      	zexth      	r5, r5
    46f0:	7511      	zexth      	r4, r4
    46f2:	6116      	subu      	r4, r5
    46f4:	8ba0      	ld.h      	r5, (r3, 0x0)
    46f6:	45a2      	lsli      	r5, r5, 2
    46f8:	6551      	cmplt      	r4, r5
    46fa:	0863      	bt      	0x47c0	// 47c0 <TK_Baseline_tracking+0x304>
    46fc:	1298      	lrw      	r4, 0x20000362	// 485c <TK_Baseline_tracking+0x3a0>
    46fe:	6108      	addu      	r4, r2
    4700:	84a0      	ld.b      	r5, (r4, 0x0)
    4702:	2500      	addi      	r5, 1
    4704:	7554      	zextb      	r5, r5
    4706:	a4a0      	st.b      	r5, (r4, 0x0)
    4708:	12ae      	lrw      	r5, 0x2000008c	// 4840 <TK_Baseline_tracking+0x384>
    470a:	84c0      	ld.b      	r6, (r4, 0x0)
    470c:	85a9      	ld.b      	r5, (r5, 0x9)
    470e:	6594      	cmphs      	r5, r6
    4710:	0806      	bt      	0x471c	// 471c <TK_Baseline_tracking+0x260>
    4712:	12ad      	lrw      	r5, 0x20000361	// 4844 <TK_Baseline_tracking+0x388>
    4714:	3601      	movi      	r6, 1
    4716:	a5c0      	st.b      	r6, (r5, 0x0)
    4718:	3500      	movi      	r5, 0
    471a:	a4a0      	st.b      	r5, (r4, 0x0)
    471c:	5f80      	addu      	r4, r7, r0
    471e:	8c80      	ld.h      	r4, (r4, 0x0)
    4720:	7513      	sexth      	r4, r4
    4722:	3cdf      	btsti      	r4, 31
    4724:	0c10      	bf      	0x4744	// 4744 <TK_Baseline_tracking+0x288>
    4726:	12cc      	lrw      	r6, 0x20000308	// 4854 <TK_Baseline_tracking+0x398>
    4728:	59a0      	addu      	r5, r1, r0
    472a:	6180      	addu      	r6, r0
    472c:	8d80      	ld.h      	r4, (r5, 0x0)
    472e:	8ec0      	ld.h      	r6, (r6, 0x0)
    4730:	7599      	zexth      	r6, r6
    4732:	7511      	zexth      	r4, r4
    4734:	611a      	subu      	r4, r6
    4736:	8bc0      	ld.h      	r6, (r3, 0x0)
    4738:	6591      	cmplt      	r4, r6
    473a:	0c05      	bf      	0x4744	// 4744 <TK_Baseline_tracking+0x288>
    473c:	8d80      	ld.h      	r4, (r5, 0x0)
    473e:	2c00      	subi      	r4, 1
    4740:	7511      	zexth      	r4, r4
    4742:	ad80      	st.h      	r4, (r5, 0x0)
    4744:	5f80      	addu      	r4, r7, r0
    4746:	8c80      	ld.h      	r4, (r4, 0x0)
    4748:	7513      	sexth      	r4, r4
    474a:	3cdf      	btsti      	r4, 31
    474c:	0c11      	bf      	0x476e	// 476e <TK_Baseline_tracking+0x2b2>
    474e:	12c2      	lrw      	r6, 0x20000308	// 4854 <TK_Baseline_tracking+0x398>
    4750:	59a0      	addu      	r5, r1, r0
    4752:	6180      	addu      	r6, r0
    4754:	8d80      	ld.h      	r4, (r5, 0x0)
    4756:	8ec0      	ld.h      	r6, (r6, 0x0)
    4758:	7599      	zexth      	r6, r6
    475a:	7511      	zexth      	r4, r4
    475c:	611a      	subu      	r4, r6
    475e:	8bc0      	ld.h      	r6, (r3, 0x0)
    4760:	4ec1      	lsri      	r6, r6, 1
    4762:	6591      	cmplt      	r4, r6
    4764:	0805      	bt      	0x476e	// 476e <TK_Baseline_tracking+0x2b2>
    4766:	8d80      	ld.h      	r4, (r5, 0x0)
    4768:	2c01      	subi      	r4, 2
    476a:	7511      	zexth      	r4, r4
    476c:	ad80      	st.h      	r4, (r5, 0x0)
    476e:	5fa0      	addu      	r5, r7, r0
    4770:	8d80      	ld.h      	r4, (r5, 0x0)
    4772:	7513      	sexth      	r4, r4
    4774:	3c20      	cmplti      	r4, 1
    4776:	080c      	bt      	0x478e	// 478e <TK_Baseline_tracking+0x2d2>
    4778:	8da0      	ld.h      	r5, (r5, 0x0)
    477a:	8b80      	ld.h      	r4, (r3, 0x0)
    477c:	7557      	sexth      	r5, r5
    477e:	4c81      	lsri      	r4, r4, 1
    4780:	6515      	cmplt      	r5, r4
    4782:	0c06      	bf      	0x478e	// 478e <TK_Baseline_tracking+0x2d2>
    4784:	59a0      	addu      	r5, r1, r0
    4786:	8d80      	ld.h      	r4, (r5, 0x0)
    4788:	2400      	addi      	r4, 1
    478a:	7511      	zexth      	r4, r4
    478c:	ad80      	st.h      	r4, (r5, 0x0)
    478e:	5fa0      	addu      	r5, r7, r0
    4790:	8d80      	ld.h      	r4, (r5, 0x0)
    4792:	7513      	sexth      	r4, r4
    4794:	3c20      	cmplti      	r4, 1
    4796:	0810      	bt      	0x47b6	// 47b6 <TK_Baseline_tracking+0x2fa>
    4798:	8dc0      	ld.h      	r6, (r5, 0x0)
    479a:	759b      	sexth      	r6, r6
    479c:	8b80      	ld.h      	r4, (r3, 0x0)
    479e:	6519      	cmplt      	r6, r4
    47a0:	0c0b      	bf      	0x47b6	// 47b6 <TK_Baseline_tracking+0x2fa>
    47a2:	8da0      	ld.h      	r5, (r5, 0x0)
    47a4:	7557      	sexth      	r5, r5
    47a6:	4c81      	lsri      	r4, r4, 1
    47a8:	6515      	cmplt      	r5, r4
    47aa:	0806      	bt      	0x47b6	// 47b6 <TK_Baseline_tracking+0x2fa>
    47ac:	6004      	addu      	r0, r1
    47ae:	8880      	ld.h      	r4, (r0, 0x0)
    47b0:	2401      	addi      	r4, 2
    47b2:	7511      	zexth      	r4, r4
    47b4:	a880      	st.h      	r4, (r0, 0x0)
    47b6:	2200      	addi      	r2, 1
    47b8:	3a51      	cmpnei      	r2, 17
    47ba:	2301      	addi      	r3, 2
    47bc:	0b61      	bt      	0x467e	// 467e <TK_Baseline_tracking+0x1c2>
    47be:	0695      	br      	0x44e8	// 44e8 <TK_Baseline_tracking+0x2c>
    47c0:	5f80      	addu      	r4, r7, r0
    47c2:	8c80      	ld.h      	r4, (r4, 0x0)
    47c4:	7513      	sexth      	r4, r4
    47c6:	3cdf      	btsti      	r4, 31
    47c8:	0faa      	bf      	0x471c	// 471c <TK_Baseline_tracking+0x260>
    47ca:	11a3      	lrw      	r5, 0x20000308	// 4854 <TK_Baseline_tracking+0x398>
    47cc:	5980      	addu      	r4, r1, r0
    47ce:	6140      	addu      	r5, r0
    47d0:	8c80      	ld.h      	r4, (r4, 0x0)
    47d2:	8da0      	ld.h      	r5, (r5, 0x0)
    47d4:	7555      	zexth      	r5, r5
    47d6:	8bc0      	ld.h      	r6, (r3, 0x0)
    47d8:	7511      	zexth      	r4, r4
    47da:	6116      	subu      	r4, r5
    47dc:	46a1      	lsli      	r5, r6, 1
    47de:	6158      	addu      	r5, r6
    47e0:	6551      	cmplt      	r4, r5
    47e2:	0b9d      	bt      	0x471c	// 471c <TK_Baseline_tracking+0x260>
    47e4:	1098      	lrw      	r4, 0x20000361	// 4844 <TK_Baseline_tracking+0x388>
    47e6:	3501      	movi      	r5, 1
    47e8:	a4a0      	st.b      	r5, (r4, 0x0)
    47ea:	6c03      	mov      	r0, r0
    47ec:	0798      	br      	0x471c	// 471c <TK_Baseline_tracking+0x260>
    47ee:	103d      	lrw      	r1, 0x2000052a	// 4860 <TK_Baseline_tracking+0x3a4>
    47f0:	6dc7      	mov      	r7, r1
    47f2:	b820      	st.w      	r1, (r14, 0x0)
    47f4:	3200      	movi      	r2, 0
    47f6:	106f      	lrw      	r3, 0x2000017e	// 4830 <TK_Baseline_tracking+0x374>
    47f8:	103b      	lrw      	r1, 0x200004c2	// 4864 <TK_Baseline_tracking+0x3a8>
    47fa:	4201      	lsli      	r0, r2, 1
    47fc:	9880      	ld.w      	r4, (r14, 0x0)
    47fe:	6100      	addu      	r4, r0
    4800:	8c80      	ld.h      	r4, (r4, 0x0)
    4802:	7513      	sexth      	r4, r4
    4804:	3cdf      	btsti      	r4, 31
    4806:	0c53      	bf      	0x48ac	// 48ac <TK_Baseline_tracking+0x3f0>
    4808:	10b8      	lrw      	r5, 0x200003f6	// 4868 <TK_Baseline_tracking+0x3ac>
    480a:	5980      	addu      	r4, r1, r0
    480c:	6014      	addu      	r0, r5
    480e:	b881      	st.w      	r4, (r14, 0x4)
    4810:	8c80      	ld.h      	r4, (r4, 0x0)
    4812:	88c0      	ld.h      	r6, (r0, 0x0)
    4814:	042c      	br      	0x486c	// 486c <TK_Baseline_tracking+0x3b0>
    4816:	0000      	bkpt
    4818:	200003ba 	.long	0x200003ba
    481c:	2000014c 	.long	0x2000014c
    4820:	200002c4 	.long	0x200002c4
    4824:	20000260 	.long	0x20000260
    4828:	20000334 	.long	0x20000334
    482c:	200002e0 	.long	0x200002e0
    4830:	2000017e 	.long	0x2000017e
    4834:	2000022c 	.long	0x2000022c
    4838:	2000054e 	.long	0x2000054e
    483c:	20000470 	.long	0x20000470
    4840:	2000008c 	.long	0x2000008c
    4844:	20000361 	.long	0x20000361
    4848:	200003e4 	.long	0x200003e4
    484c:	20000418 	.long	0x20000418
    4850:	200003c2 	.long	0x200003c2
    4854:	20000308 	.long	0x20000308
    4858:	20000458 	.long	0x20000458
    485c:	20000362 	.long	0x20000362
    4860:	2000052a 	.long	0x2000052a
    4864:	200004c2 	.long	0x200004c2
    4868:	200003f6 	.long	0x200003f6
    486c:	7511      	zexth      	r4, r4
    486e:	7599      	zexth      	r6, r6
    4870:	8ba0      	ld.h      	r5, (r3, 0x0)
    4872:	611a      	subu      	r4, r6
    4874:	6551      	cmplt      	r4, r5
    4876:	081b      	bt      	0x48ac	// 48ac <TK_Baseline_tracking+0x3f0>
    4878:	9881      	ld.w      	r4, (r14, 0x4)
    487a:	8c80      	ld.h      	r4, (r4, 0x0)
    487c:	8800      	ld.h      	r0, (r0, 0x0)
    487e:	7511      	zexth      	r4, r4
    4880:	7401      	zexth      	r0, r0
    4882:	5c01      	subu      	r0, r4, r0
    4884:	4581      	lsli      	r4, r5, 1
    4886:	6150      	addu      	r5, r4
    4888:	6541      	cmplt      	r0, r5
    488a:	0c11      	bf      	0x48ac	// 48ac <TK_Baseline_tracking+0x3f0>
    488c:	128d      	lrw      	r4, 0x20000350	// 49c0 <TK_Baseline_tracking+0x504>
    488e:	6108      	addu      	r4, r2
    4890:	8400      	ld.b      	r0, (r4, 0x0)
    4892:	2000      	addi      	r0, 1
    4894:	7400      	zextb      	r0, r0
    4896:	a400      	st.b      	r0, (r4, 0x0)
    4898:	120b      	lrw      	r0, 0x2000008c	// 49c4 <TK_Baseline_tracking+0x508>
    489a:	84a0      	ld.b      	r5, (r4, 0x0)
    489c:	8008      	ld.b      	r0, (r0, 0x8)
    489e:	6540      	cmphs      	r0, r5
    48a0:	0806      	bt      	0x48ac	// 48ac <TK_Baseline_tracking+0x3f0>
    48a2:	120a      	lrw      	r0, 0x20000361	// 49c8 <TK_Baseline_tracking+0x50c>
    48a4:	3501      	movi      	r5, 1
    48a6:	a0a0      	st.b      	r5, (r0, 0x0)
    48a8:	3000      	movi      	r0, 0
    48aa:	a400      	st.b      	r0, (r4, 0x0)
    48ac:	4201      	lsli      	r0, r2, 1
    48ae:	5f80      	addu      	r4, r7, r0
    48b0:	8c80      	ld.h      	r4, (r4, 0x0)
    48b2:	7513      	sexth      	r4, r4
    48b4:	3c20      	cmplti      	r4, 1
    48b6:	0870      	bt      	0x4996	// 4996 <TK_Baseline_tracking+0x4da>
    48b8:	1285      	lrw      	r4, 0x200003f6	// 49cc <TK_Baseline_tracking+0x510>
    48ba:	6100      	addu      	r4, r0
    48bc:	59a0      	addu      	r5, r1, r0
    48be:	8c80      	ld.h      	r4, (r4, 0x0)
    48c0:	8da0      	ld.h      	r5, (r5, 0x0)
    48c2:	7555      	zexth      	r5, r5
    48c4:	7511      	zexth      	r4, r4
    48c6:	6116      	subu      	r4, r5
    48c8:	8ba0      	ld.h      	r5, (r3, 0x0)
    48ca:	45a2      	lsli      	r5, r5, 2
    48cc:	6551      	cmplt      	r4, r5
    48ce:	0864      	bt      	0x4996	// 4996 <TK_Baseline_tracking+0x4da>
    48d0:	1280      	lrw      	r4, 0x2000024e	// 49d0 <TK_Baseline_tracking+0x514>
    48d2:	6108      	addu      	r4, r2
    48d4:	84a0      	ld.b      	r5, (r4, 0x0)
    48d6:	2500      	addi      	r5, 1
    48d8:	7554      	zextb      	r5, r5
    48da:	a4a0      	st.b      	r5, (r4, 0x0)
    48dc:	11ba      	lrw      	r5, 0x2000008c	// 49c4 <TK_Baseline_tracking+0x508>
    48de:	84c0      	ld.b      	r6, (r4, 0x0)
    48e0:	85a9      	ld.b      	r5, (r5, 0x9)
    48e2:	6594      	cmphs      	r5, r6
    48e4:	0806      	bt      	0x48f0	// 48f0 <TK_Baseline_tracking+0x434>
    48e6:	11b9      	lrw      	r5, 0x20000361	// 49c8 <TK_Baseline_tracking+0x50c>
    48e8:	3601      	movi      	r6, 1
    48ea:	a5c0      	st.b      	r6, (r5, 0x0)
    48ec:	3500      	movi      	r5, 0
    48ee:	a4a0      	st.b      	r5, (r4, 0x0)
    48f0:	5f80      	addu      	r4, r7, r0
    48f2:	8c80      	ld.h      	r4, (r4, 0x0)
    48f4:	7513      	sexth      	r4, r4
    48f6:	3cdf      	btsti      	r4, 31
    48f8:	0c10      	bf      	0x4918	// 4918 <TK_Baseline_tracking+0x45c>
    48fa:	11d5      	lrw      	r6, 0x200003f6	// 49cc <TK_Baseline_tracking+0x510>
    48fc:	59a0      	addu      	r5, r1, r0
    48fe:	6180      	addu      	r6, r0
    4900:	8d80      	ld.h      	r4, (r5, 0x0)
    4902:	8ec0      	ld.h      	r6, (r6, 0x0)
    4904:	7599      	zexth      	r6, r6
    4906:	7511      	zexth      	r4, r4
    4908:	611a      	subu      	r4, r6
    490a:	8bc0      	ld.h      	r6, (r3, 0x0)
    490c:	6591      	cmplt      	r4, r6
    490e:	0c05      	bf      	0x4918	// 4918 <TK_Baseline_tracking+0x45c>
    4910:	8d80      	ld.h      	r4, (r5, 0x0)
    4912:	2c00      	subi      	r4, 1
    4914:	7511      	zexth      	r4, r4
    4916:	ad80      	st.h      	r4, (r5, 0x0)
    4918:	5f80      	addu      	r4, r7, r0
    491a:	8c80      	ld.h      	r4, (r4, 0x0)
    491c:	7513      	sexth      	r4, r4
    491e:	3cdf      	btsti      	r4, 31
    4920:	0c11      	bf      	0x4942	// 4942 <TK_Baseline_tracking+0x486>
    4922:	11cb      	lrw      	r6, 0x200003f6	// 49cc <TK_Baseline_tracking+0x510>
    4924:	59a0      	addu      	r5, r1, r0
    4926:	6180      	addu      	r6, r0
    4928:	8d80      	ld.h      	r4, (r5, 0x0)
    492a:	8ec0      	ld.h      	r6, (r6, 0x0)
    492c:	7599      	zexth      	r6, r6
    492e:	7511      	zexth      	r4, r4
    4930:	611a      	subu      	r4, r6
    4932:	8bc0      	ld.h      	r6, (r3, 0x0)
    4934:	4ec1      	lsri      	r6, r6, 1
    4936:	6591      	cmplt      	r4, r6
    4938:	0805      	bt      	0x4942	// 4942 <TK_Baseline_tracking+0x486>
    493a:	8d80      	ld.h      	r4, (r5, 0x0)
    493c:	2c01      	subi      	r4, 2
    493e:	7511      	zexth      	r4, r4
    4940:	ad80      	st.h      	r4, (r5, 0x0)
    4942:	5fa0      	addu      	r5, r7, r0
    4944:	8d80      	ld.h      	r4, (r5, 0x0)
    4946:	7513      	sexth      	r4, r4
    4948:	3c20      	cmplti      	r4, 1
    494a:	080c      	bt      	0x4962	// 4962 <TK_Baseline_tracking+0x4a6>
    494c:	8da0      	ld.h      	r5, (r5, 0x0)
    494e:	8b80      	ld.h      	r4, (r3, 0x0)
    4950:	7557      	sexth      	r5, r5
    4952:	4c81      	lsri      	r4, r4, 1
    4954:	6515      	cmplt      	r5, r4
    4956:	0c06      	bf      	0x4962	// 4962 <TK_Baseline_tracking+0x4a6>
    4958:	59a0      	addu      	r5, r1, r0
    495a:	8d80      	ld.h      	r4, (r5, 0x0)
    495c:	2400      	addi      	r4, 1
    495e:	7511      	zexth      	r4, r4
    4960:	ad80      	st.h      	r4, (r5, 0x0)
    4962:	5fa0      	addu      	r5, r7, r0
    4964:	8d80      	ld.h      	r4, (r5, 0x0)
    4966:	7513      	sexth      	r4, r4
    4968:	3c20      	cmplti      	r4, 1
    496a:	0810      	bt      	0x498a	// 498a <TK_Baseline_tracking+0x4ce>
    496c:	8dc0      	ld.h      	r6, (r5, 0x0)
    496e:	759b      	sexth      	r6, r6
    4970:	8b80      	ld.h      	r4, (r3, 0x0)
    4972:	6519      	cmplt      	r6, r4
    4974:	0c0b      	bf      	0x498a	// 498a <TK_Baseline_tracking+0x4ce>
    4976:	8da0      	ld.h      	r5, (r5, 0x0)
    4978:	7557      	sexth      	r5, r5
    497a:	4c81      	lsri      	r4, r4, 1
    497c:	6515      	cmplt      	r5, r4
    497e:	0806      	bt      	0x498a	// 498a <TK_Baseline_tracking+0x4ce>
    4980:	6004      	addu      	r0, r1
    4982:	8880      	ld.h      	r4, (r0, 0x0)
    4984:	2401      	addi      	r4, 2
    4986:	7511      	zexth      	r4, r4
    4988:	a880      	st.h      	r4, (r0, 0x0)
    498a:	2200      	addi      	r2, 1
    498c:	3a51      	cmpnei      	r2, 17
    498e:	2301      	addi      	r3, 2
    4990:	0b35      	bt      	0x47fa	// 47fa <TK_Baseline_tracking+0x33e>
    4992:	e800fdb0 	br      	0x44f2	// 44f2 <TK_Baseline_tracking+0x36>
    4996:	5f80      	addu      	r4, r7, r0
    4998:	8c80      	ld.h      	r4, (r4, 0x0)
    499a:	7513      	sexth      	r4, r4
    499c:	3cdf      	btsti      	r4, 31
    499e:	0fa9      	bf      	0x48f0	// 48f0 <TK_Baseline_tracking+0x434>
    49a0:	10ab      	lrw      	r5, 0x200003f6	// 49cc <TK_Baseline_tracking+0x510>
    49a2:	5980      	addu      	r4, r1, r0
    49a4:	6140      	addu      	r5, r0
    49a6:	8c80      	ld.h      	r4, (r4, 0x0)
    49a8:	8da0      	ld.h      	r5, (r5, 0x0)
    49aa:	7555      	zexth      	r5, r5
    49ac:	8bc0      	ld.h      	r6, (r3, 0x0)
    49ae:	7511      	zexth      	r4, r4
    49b0:	6116      	subu      	r4, r5
    49b2:	46a1      	lsli      	r5, r6, 1
    49b4:	6158      	addu      	r5, r6
    49b6:	6551      	cmplt      	r4, r5
    49b8:	0b9c      	bt      	0x48f0	// 48f0 <TK_Baseline_tracking+0x434>
    49ba:	1084      	lrw      	r4, 0x20000361	// 49c8 <TK_Baseline_tracking+0x50c>
    49bc:	3501      	movi      	r5, 1
    49be:	0798      	br      	0x48ee	// 48ee <TK_Baseline_tracking+0x432>
    49c0:	20000350 	.long	0x20000350
    49c4:	2000008c 	.long	0x2000008c
    49c8:	20000361 	.long	0x20000361
    49cc:	200003f6 	.long	0x200003f6
    49d0:	2000024e 	.long	0x2000024e

Disassembly of section .text.TK_result_prog:

000049d4 <TK_result_prog>:
    49d4:	14d4      	push      	r4-r7, r15
    49d6:	1421      	subi      	r14, r14, 4
    49d8:	121a      	lrw      	r0, 0x200002c4	// 4b40 <TK_result_prog+0x16c>
    49da:	12bb      	lrw      	r5, 0x20000260	// 4b44 <TK_result_prog+0x170>
    49dc:	127b      	lrw      	r3, 0x20000334	// 4b48 <TK_result_prog+0x174>
    49de:	123b      	lrw      	r1, 0x20000334	// 4b48 <TK_result_prog+0x174>
    49e0:	129b      	lrw      	r4, 0x200003bc	// 4b4c <TK_result_prog+0x178>
    49e2:	90c0      	ld.w      	r6, (r0, 0x0)
    49e4:	9540      	ld.w      	r2, (r5, 0x0)
    49e6:	6d88      	or      	r6, r2
    49e8:	b860      	st.w      	r3, (r14, 0x0)
    49ea:	9360      	ld.w      	r3, (r3, 0x0)
    49ec:	6d8c      	or      	r6, r3
    49ee:	3e40      	cmpnei      	r6, 0
    49f0:	6c83      	mov      	r2, r0
    49f2:	6cd7      	mov      	r3, r5
    49f4:	0c8f      	bf      	0x4b12	// 4b12 <TK_result_prog+0x13e>
    49f6:	12d7      	lrw      	r6, 0x20000112	// 4b50 <TK_result_prog+0x17c>
    49f8:	86e0      	ld.b      	r7, (r6, 0x0)
    49fa:	3f41      	cmpnei      	r7, 1
    49fc:	080e      	bt      	0x4a18	// 4a18 <TK_result_prog+0x44>
    49fe:	9040      	ld.w      	r2, (r0, 0x0)
    4a00:	9560      	ld.w      	r3, (r5, 0x0)
    4a02:	64ca      	cmpne      	r2, r3
    4a04:	0807      	bt      	0x4a12	// 4a12 <TK_result_prog+0x3e>
    4a06:	9540      	ld.w      	r2, (r5, 0x0)
    4a08:	9160      	ld.w      	r3, (r1, 0x0)
    4a0a:	64ca      	cmpne      	r2, r3
    4a0c:	0803      	bt      	0x4a12	// 4a12 <TK_result_prog+0x3e>
    4a0e:	9060      	ld.w      	r3, (r0, 0x0)
    4a10:	0402      	br      	0x4a14	// 4a14 <TK_result_prog+0x40>
    4a12:	3300      	movi      	r3, 0
    4a14:	b460      	st.w      	r3, (r4, 0x0)
    4a16:	0420      	br      	0x4a56	// 4a56 <TK_result_prog+0x82>
    4a18:	86c0      	ld.b      	r6, (r6, 0x0)
    4a1a:	3e40      	cmpnei      	r6, 0
    4a1c:	081d      	bt      	0x4a56	// 4a56 <TK_result_prog+0x82>
    4a1e:	90c0      	ld.w      	r6, (r0, 0x0)
    4a20:	6ddb      	mov      	r7, r6
    4a22:	95c0      	ld.w      	r6, (r5, 0x0)
    4a24:	659e      	cmpne      	r7, r6
    4a26:	0806      	bt      	0x4a32	// 4a32 <TK_result_prog+0x5e>
    4a28:	95c0      	ld.w      	r6, (r5, 0x0)
    4a2a:	12a8      	lrw      	r5, 0x20000334	// 4b48 <TK_result_prog+0x174>
    4a2c:	95a0      	ld.w      	r5, (r5, 0x0)
    4a2e:	655a      	cmpne      	r6, r5
    4a30:	0fef      	bf      	0x4a0e	// 4a0e <TK_result_prog+0x3a>
    4a32:	9300      	ld.w      	r0, (r3, 0x0)
    4a34:	3840      	cmpnei      	r0, 0
    4a36:	0c2a      	bf      	0x4a8a	// 4a8a <TK_result_prog+0xb6>
    4a38:	9100      	ld.w      	r0, (r1, 0x0)
    4a3a:	3840      	cmpnei      	r0, 0
    4a3c:	0c27      	bf      	0x4a8a	// 4a8a <TK_result_prog+0xb6>
    4a3e:	93a0      	ld.w      	r5, (r3, 0x0)
    4a40:	9100      	ld.w      	r0, (r1, 0x0)
    4a42:	6416      	cmpne      	r5, r0
    4a44:	0823      	bt      	0x4a8a	// 4a8a <TK_result_prog+0xb6>
    4a46:	9360      	ld.w      	r3, (r3, 0x0)
    4a48:	b460      	st.w      	r3, (r4, 0x0)
    4a4a:	9220      	ld.w      	r1, (r2, 0x0)
    4a4c:	9460      	ld.w      	r3, (r4, 0x0)
    4a4e:	64c6      	cmpne      	r1, r3
    4a50:	0c03      	bf      	0x4a56	// 4a56 <TK_result_prog+0x82>
    4a52:	3300      	movi      	r3, 0
    4a54:	b260      	st.w      	r3, (r2, 0x0)
    4a56:	9460      	ld.w      	r3, (r4, 0x0)
    4a58:	3b40      	cmpnei      	r3, 0
    4a5a:	115f      	lrw      	r2, 0x200004ac	// 4b54 <TK_result_prog+0x180>
    4a5c:	0c6a      	bf      	0x4b30	// 4b30 <TK_result_prog+0x15c>
    4a5e:	9420      	ld.w      	r1, (r4, 0x0)
    4a60:	9260      	ld.w      	r3, (r2, 0x0)
    4a62:	64c6      	cmpne      	r1, r3
    4a64:	0c06      	bf      	0x4a70	// 4a70 <TK_result_prog+0x9c>
    4a66:	9460      	ld.w      	r3, (r4, 0x0)
    4a68:	b260      	st.w      	r3, (r2, 0x0)
    4a6a:	3200      	movi      	r2, 0
    4a6c:	117b      	lrw      	r3, 0x200002de	// 4b58 <TK_result_prog+0x184>
    4a6e:	a340      	st.b      	r2, (r3, 0x0)
    4a70:	e3fff812 	bsr      	0x3a94	// 3a94 <get_key_number>
    4a74:	117a      	lrw      	r3, 0x20000154	// 4b5c <TK_result_prog+0x188>
    4a76:	8360      	ld.b      	r3, (r3, 0x0)
    4a78:	640c      	cmphs      	r3, r0
    4a7a:	0806      	bt      	0x4a86	// 4a86 <TK_result_prog+0xb2>
    4a7c:	3300      	movi      	r3, 0
    4a7e:	b460      	st.w      	r3, (r4, 0x0)
    4a80:	3201      	movi      	r2, 1
    4a82:	1176      	lrw      	r3, 0x200002de	// 4b58 <TK_result_prog+0x184>
    4a84:	a340      	st.b      	r2, (r3, 0x0)
    4a86:	1401      	addi      	r14, r14, 4
    4a88:	1494      	pop      	r4-r7, r15
    4a8a:	9200      	ld.w      	r0, (r2, 0x0)
    4a8c:	3840      	cmpnei      	r0, 0
    4a8e:	0c11      	bf      	0x4ab0	// 4ab0 <TK_result_prog+0xdc>
    4a90:	9300      	ld.w      	r0, (r3, 0x0)
    4a92:	3840      	cmpnei      	r0, 0
    4a94:	0c0e      	bf      	0x4ab0	// 4ab0 <TK_result_prog+0xdc>
    4a96:	92a0      	ld.w      	r5, (r2, 0x0)
    4a98:	9300      	ld.w      	r0, (r3, 0x0)
    4a9a:	6416      	cmpne      	r5, r0
    4a9c:	080a      	bt      	0x4ab0	// 4ab0 <TK_result_prog+0xdc>
    4a9e:	9260      	ld.w      	r3, (r2, 0x0)
    4aa0:	b460      	st.w      	r3, (r4, 0x0)
    4aa2:	9140      	ld.w      	r2, (r1, 0x0)
    4aa4:	9460      	ld.w      	r3, (r4, 0x0)
    4aa6:	64ca      	cmpne      	r2, r3
    4aa8:	0fd7      	bf      	0x4a56	// 4a56 <TK_result_prog+0x82>
    4aaa:	3300      	movi      	r3, 0
    4aac:	b160      	st.w      	r3, (r1, 0x0)
    4aae:	07d4      	br      	0x4a56	// 4a56 <TK_result_prog+0x82>
    4ab0:	9200      	ld.w      	r0, (r2, 0x0)
    4ab2:	3840      	cmpnei      	r0, 0
    4ab4:	0c11      	bf      	0x4ad6	// 4ad6 <TK_result_prog+0x102>
    4ab6:	9100      	ld.w      	r0, (r1, 0x0)
    4ab8:	3840      	cmpnei      	r0, 0
    4aba:	0c0e      	bf      	0x4ad6	// 4ad6 <TK_result_prog+0x102>
    4abc:	92a0      	ld.w      	r5, (r2, 0x0)
    4abe:	9100      	ld.w      	r0, (r1, 0x0)
    4ac0:	6416      	cmpne      	r5, r0
    4ac2:	080a      	bt      	0x4ad6	// 4ad6 <TK_result_prog+0x102>
    4ac4:	9140      	ld.w      	r2, (r1, 0x0)
    4ac6:	b440      	st.w      	r2, (r4, 0x0)
    4ac8:	9320      	ld.w      	r1, (r3, 0x0)
    4aca:	9440      	ld.w      	r2, (r4, 0x0)
    4acc:	6486      	cmpne      	r1, r2
    4ace:	0fc4      	bf      	0x4a56	// 4a56 <TK_result_prog+0x82>
    4ad0:	3200      	movi      	r2, 0
    4ad2:	b340      	st.w      	r2, (r3, 0x0)
    4ad4:	07c1      	br      	0x4a56	// 4a56 <TK_result_prog+0x82>
    4ad6:	9200      	ld.w      	r0, (r2, 0x0)
    4ad8:	3840      	cmpnei      	r0, 0
    4ada:	0c09      	bf      	0x4aec	// 4aec <TK_result_prog+0x118>
    4adc:	9300      	ld.w      	r0, (r3, 0x0)
    4ade:	3840      	cmpnei      	r0, 0
    4ae0:	0806      	bt      	0x4aec	// 4aec <TK_result_prog+0x118>
    4ae2:	9100      	ld.w      	r0, (r1, 0x0)
    4ae4:	3840      	cmpnei      	r0, 0
    4ae6:	0803      	bt      	0x4aec	// 4aec <TK_result_prog+0x118>
    4ae8:	b400      	st.w      	r0, (r4, 0x0)
    4aea:	07b6      	br      	0x4a56	// 4a56 <TK_result_prog+0x82>
    4aec:	9300      	ld.w      	r0, (r3, 0x0)
    4aee:	3840      	cmpnei      	r0, 0
    4af0:	0c07      	bf      	0x4afe	// 4afe <TK_result_prog+0x12a>
    4af2:	9200      	ld.w      	r0, (r2, 0x0)
    4af4:	3840      	cmpnei      	r0, 0
    4af6:	0804      	bt      	0x4afe	// 4afe <TK_result_prog+0x12a>
    4af8:	9100      	ld.w      	r0, (r1, 0x0)
    4afa:	3840      	cmpnei      	r0, 0
    4afc:	0ff6      	bf      	0x4ae8	// 4ae8 <TK_result_prog+0x114>
    4afe:	9120      	ld.w      	r1, (r1, 0x0)
    4b00:	3940      	cmpnei      	r1, 0
    4b02:	0faa      	bf      	0x4a56	// 4a56 <TK_result_prog+0x82>
    4b04:	9240      	ld.w      	r2, (r2, 0x0)
    4b06:	3a40      	cmpnei      	r2, 0
    4b08:	0ba7      	bt      	0x4a56	// 4a56 <TK_result_prog+0x82>
    4b0a:	9360      	ld.w      	r3, (r3, 0x0)
    4b0c:	3b40      	cmpnei      	r3, 0
    4b0e:	0ba4      	bt      	0x4a56	// 4a56 <TK_result_prog+0x82>
    4b10:	0782      	br      	0x4a14	// 4a14 <TK_result_prog+0x40>
    4b12:	3200      	movi      	r2, 0
    4b14:	1073      	lrw      	r3, 0x2000046a	// 4b60 <TK_result_prog+0x18c>
    4b16:	b4c0      	st.w      	r6, (r4, 0x0)
    4b18:	ab40      	st.h      	r2, (r3, 0x0)
    4b1a:	1073      	lrw      	r3, 0x2000028c	// 4b64 <TK_result_prog+0x190>
    4b1c:	ab40      	st.h      	r2, (r3, 0x0)
    4b1e:	1073      	lrw      	r3, 0x2000054c	// 4b68 <TK_result_prog+0x194>
    4b20:	ab40      	st.h      	r2, (r3, 0x0)
    4b22:	1073      	lrw      	r3, 0x2000046e	// 4b6c <TK_result_prog+0x198>
    4b24:	ab40      	st.h      	r2, (r3, 0x0)
    4b26:	1073      	lrw      	r3, 0x20000302	// 4b70 <TK_result_prog+0x19c>
    4b28:	ab40      	st.h      	r2, (r3, 0x0)
    4b2a:	1073      	lrw      	r3, 0x200003c0	// 4b74 <TK_result_prog+0x1a0>
    4b2c:	ab40      	st.h      	r2, (r3, 0x0)
    4b2e:	0794      	br      	0x4a56	// 4a56 <TK_result_prog+0x82>
    4b30:	b260      	st.w      	r3, (r2, 0x0)
    4b32:	3100      	movi      	r1, 0
    4b34:	1049      	lrw      	r2, 0x200002de	// 4b58 <TK_result_prog+0x184>
    4b36:	a220      	st.b      	r1, (r2, 0x0)
    4b38:	1050      	lrw      	r2, 0x200003b4	// 4b78 <TK_result_prog+0x1a4>
    4b3a:	b260      	st.w      	r3, (r2, 0x0)
    4b3c:	07a5      	br      	0x4a86	// 4a86 <TK_result_prog+0xb2>
    4b3e:	0000      	bkpt
    4b40:	200002c4 	.long	0x200002c4
    4b44:	20000260 	.long	0x20000260
    4b48:	20000334 	.long	0x20000334
    4b4c:	200003bc 	.long	0x200003bc
    4b50:	20000112 	.long	0x20000112
    4b54:	200004ac 	.long	0x200004ac
    4b58:	200002de 	.long	0x200002de
    4b5c:	20000154 	.long	0x20000154
    4b60:	2000046a 	.long	0x2000046a
    4b64:	2000028c 	.long	0x2000028c
    4b68:	2000054c 	.long	0x2000054c
    4b6c:	2000046e 	.long	0x2000046e
    4b70:	20000302 	.long	0x20000302
    4b74:	200003c0 	.long	0x200003c0
    4b78:	200003b4 	.long	0x200003b4

Disassembly of section .text.TKEYIntHandler:

00004b7c <TKEYIntHandler>:
    4b7c:	1460      	nie
    4b7e:	1462      	ipush
    4b80:	14d1      	push      	r4, r15
    4b82:	1183      	lrw      	r4, 0x2000006c	// 4c0c <TKEYIntHandler+0x90>
    4b84:	8460      	ld.b      	r3, (r4, 0x0)
    4b86:	3b40      	cmpnei      	r3, 0
    4b88:	0815      	bt      	0x4bb2	// 4bb2 <TKEYIntHandler+0x36>
    4b8a:	3301      	movi      	r3, 1
    4b8c:	a460      	st.b      	r3, (r4, 0x0)
    4b8e:	1161      	lrw      	r3, 0x200002cc	// 4c10 <TKEYIntHandler+0x94>
    4b90:	8360      	ld.b      	r3, (r3, 0x0)
    4b92:	3b41      	cmpnei      	r3, 1
    4b94:	080f      	bt      	0x4bb2	// 4bb2 <TKEYIntHandler+0x36>
    4b96:	1140      	lrw      	r2, 0x200004c1	// 4c14 <TKEYIntHandler+0x98>
    4b98:	8260      	ld.b      	r3, (r2, 0x0)
    4b9a:	2300      	addi      	r3, 1
    4b9c:	74cc      	zextb      	r3, r3
    4b9e:	a260      	st.b      	r3, (r2, 0x0)
    4ba0:	8260      	ld.b      	r3, (r2, 0x0)
    4ba2:	3b43      	cmpnei      	r3, 3
    4ba4:	0803      	bt      	0x4baa	// 4baa <TKEYIntHandler+0x2e>
    4ba6:	3300      	movi      	r3, 0
    4ba8:	a260      	st.b      	r3, (r2, 0x0)
    4baa:	e3fff70f 	bsr      	0x39c8	// 39c8 <TK_Sampling_prog>
    4bae:	3301      	movi      	r3, 1
    4bb0:	a463      	st.b      	r3, (r4, 0x3)
    4bb2:	107a      	lrw      	r3, 0x2000005c	// 4c18 <TKEYIntHandler+0x9c>
    4bb4:	3101      	movi      	r1, 1
    4bb6:	9360      	ld.w      	r3, (r3, 0x0)
    4bb8:	934a      	ld.w      	r2, (r3, 0x28)
    4bba:	6884      	and      	r2, r1
    4bbc:	3a40      	cmpnei      	r2, 0
    4bbe:	0c02      	bf      	0x4bc2	// 4bc2 <TKEYIntHandler+0x46>
    4bc0:	b32c      	st.w      	r1, (r3, 0x30)
    4bc2:	934a      	ld.w      	r2, (r3, 0x28)
    4bc4:	3102      	movi      	r1, 2
    4bc6:	6884      	and      	r2, r1
    4bc8:	3a40      	cmpnei      	r2, 0
    4bca:	0c02      	bf      	0x4bce	// 4bce <TKEYIntHandler+0x52>
    4bcc:	b32c      	st.w      	r1, (r3, 0x30)
    4bce:	934a      	ld.w      	r2, (r3, 0x28)
    4bd0:	3104      	movi      	r1, 4
    4bd2:	6884      	and      	r2, r1
    4bd4:	3a40      	cmpnei      	r2, 0
    4bd6:	0c02      	bf      	0x4bda	// 4bda <TKEYIntHandler+0x5e>
    4bd8:	b32c      	st.w      	r1, (r3, 0x30)
    4bda:	934a      	ld.w      	r2, (r3, 0x28)
    4bdc:	3108      	movi      	r1, 8
    4bde:	6884      	and      	r2, r1
    4be0:	3a40      	cmpnei      	r2, 0
    4be2:	0c02      	bf      	0x4be6	// 4be6 <TKEYIntHandler+0x6a>
    4be4:	b32c      	st.w      	r1, (r3, 0x30)
    4be6:	934a      	ld.w      	r2, (r3, 0x28)
    4be8:	3110      	movi      	r1, 16
    4bea:	6884      	and      	r2, r1
    4bec:	3a40      	cmpnei      	r2, 0
    4bee:	0c02      	bf      	0x4bf2	// 4bf2 <TKEYIntHandler+0x76>
    4bf0:	b32c      	st.w      	r1, (r3, 0x30)
    4bf2:	934a      	ld.w      	r2, (r3, 0x28)
    4bf4:	3120      	movi      	r1, 32
    4bf6:	6884      	and      	r2, r1
    4bf8:	3a40      	cmpnei      	r2, 0
    4bfa:	0c02      	bf      	0x4bfe	// 4bfe <TKEYIntHandler+0x82>
    4bfc:	b32c      	st.w      	r1, (r3, 0x30)
    4bfe:	d9ee2001 	ld.w      	r15, (r14, 0x4)
    4c02:	9880      	ld.w      	r4, (r14, 0x0)
    4c04:	1402      	addi      	r14, r14, 8
    4c06:	1463      	ipop
    4c08:	1461      	nir
    4c0a:	0000      	bkpt
    4c0c:	2000006c 	.long	0x2000006c
    4c10:	200002cc 	.long	0x200002cc
    4c14:	200004c1 	.long	0x200004c1
    4c18:	2000005c 	.long	0x2000005c

Disassembly of section .text.CORETHandler:

00004c1c <CORETHandler>:
    4c1c:	1460      	nie
    4c1e:	1462      	ipush
    4c20:	14d3      	push      	r4-r6, r15
    4c22:	126e      	lrw      	r3, 0x20000068	// 4d58 <CORETHandler+0x13c>
    4c24:	3400      	movi      	r4, 0
    4c26:	9360      	ld.w      	r3, (r3, 0x0)
    4c28:	b386      	st.w      	r4, (r3, 0x18)
    4c2a:	126d      	lrw      	r3, 0x200002cc	// 4d5c <CORETHandler+0x140>
    4c2c:	8360      	ld.b      	r3, (r3, 0x0)
    4c2e:	3b41      	cmpnei      	r3, 1
    4c30:	0844      	bt      	0x4cb8	// 4cb8 <CORETHandler+0x9c>
    4c32:	e3fff745 	bsr      	0x3abc	// 3abc <TK_Scan_Start>
    4c36:	e3fff777 	bsr      	0x3b24	// 3b24 <TK_Keymap_prog>
    4c3a:	e3fffbad 	bsr      	0x4394	// 4394 <TK_overflow_predict>
    4c3e:	e3fffc3f 	bsr      	0x44bc	// 44bc <TK_Baseline_tracking>
    4c42:	e3fffec9 	bsr      	0x49d4	// 49d4 <TK_result_prog>
    4c46:	1267      	lrw      	r3, 0x200003bc	// 4d60 <CORETHandler+0x144>
    4c48:	9360      	ld.w      	r3, (r3, 0x0)
    4c4a:	3b40      	cmpnei      	r3, 0
    4c4c:	0c12      	bf      	0x4c70	// 4c70 <CORETHandler+0x54>
    4c4e:	1266      	lrw      	r3, 0x2000011c	// 4d64 <CORETHandler+0x148>
    4c50:	9340      	ld.w      	r2, (r3, 0x0)
    4c52:	3a40      	cmpnei      	r2, 0
    4c54:	0c0e      	bf      	0x4c70	// 4c70 <CORETHandler+0x54>
    4c56:	1265      	lrw      	r3, 0x200003b4	// 4d68 <CORETHandler+0x14c>
    4c58:	3064      	movi      	r0, 100
    4c5a:	9320      	ld.w      	r1, (r3, 0x0)
    4c5c:	2100      	addi      	r1, 1
    4c5e:	b320      	st.w      	r1, (r3, 0x0)
    4c60:	9320      	ld.w      	r1, (r3, 0x0)
    4c62:	7c80      	mult      	r2, r0
    4c64:	6448      	cmphs      	r2, r1
    4c66:	0805      	bt      	0x4c70	// 4c70 <CORETHandler+0x54>
    4c68:	1241      	lrw      	r2, 0x20000361	// 4d6c <CORETHandler+0x150>
    4c6a:	3101      	movi      	r1, 1
    4c6c:	a220      	st.b      	r1, (r2, 0x0)
    4c6e:	b380      	st.w      	r4, (r3, 0x0)
    4c70:	1260      	lrw      	r3, 0x20000112	// 4d70 <CORETHandler+0x154>
    4c72:	8340      	ld.b      	r2, (r3, 0x0)
    4c74:	3a41      	cmpnei      	r2, 1
    4c76:	0829      	bt      	0x4cc8	// 4cc8 <CORETHandler+0xac>
    4c78:	113f      	lrw      	r1, 0x200002c4	// 4d74 <CORETHandler+0x158>
    4c7a:	1240      	lrw      	r2, 0x20000260	// 4d78 <CORETHandler+0x15c>
    4c7c:	9100      	ld.w      	r0, (r1, 0x0)
    4c7e:	9260      	ld.w      	r3, (r2, 0x0)
    4c80:	64c2      	cmpne      	r0, r3
    4c82:	117f      	lrw      	r3, 0x20000454	// 4d7c <CORETHandler+0x160>
    4c84:	080a      	bt      	0x4c98	// 4c98 <CORETHandler+0x7c>
    4c86:	9280      	ld.w      	r4, (r2, 0x0)
    4c88:	115e      	lrw      	r2, 0x20000334	// 4d80 <CORETHandler+0x164>
    4c8a:	9200      	ld.w      	r0, (r2, 0x0)
    4c8c:	6412      	cmpne      	r4, r0
    4c8e:	0805      	bt      	0x4c98	// 4c98 <CORETHandler+0x7c>
    4c90:	9120      	ld.w      	r1, (r1, 0x0)
    4c92:	9240      	ld.w      	r2, (r2, 0x0)
    4c94:	6486      	cmpne      	r1, r2
    4c96:	0c0f      	bf      	0x4cb4	// 4cb4 <CORETHandler+0x98>
    4c98:	9340      	ld.w      	r2, (r3, 0x0)
    4c9a:	2200      	addi      	r2, 1
    4c9c:	b340      	st.w      	r2, (r3, 0x0)
    4c9e:	115a      	lrw      	r2, 0x2000008c	// 4d84 <CORETHandler+0x168>
    4ca0:	8238      	ld.b      	r1, (r2, 0x18)
    4ca2:	9340      	ld.w      	r2, (r3, 0x0)
    4ca4:	6484      	cmphs      	r1, r2
    4ca6:	0809      	bt      	0x4cb8	// 4cb8 <CORETHandler+0x9c>
    4ca8:	3200      	movi      	r2, 0
    4caa:	b340      	st.w      	r2, (r3, 0x0)
    4cac:	1170      	lrw      	r3, 0x20000361	// 4d6c <CORETHandler+0x150>
    4cae:	3201      	movi      	r2, 1
    4cb0:	a340      	st.b      	r2, (r3, 0x0)
    4cb2:	0403      	br      	0x4cb8	// 4cb8 <CORETHandler+0x9c>
    4cb4:	3200      	movi      	r2, 0
    4cb6:	b340      	st.w      	r2, (r3, 0x0)
    4cb8:	d9ee2003 	ld.w      	r15, (r14, 0xc)
    4cbc:	98c2      	ld.w      	r6, (r14, 0x8)
    4cbe:	98a1      	ld.w      	r5, (r14, 0x4)
    4cc0:	9880      	ld.w      	r4, (r14, 0x0)
    4cc2:	1404      	addi      	r14, r14, 16
    4cc4:	1463      	ipop
    4cc6:	1461      	nir
    4cc8:	83a0      	ld.b      	r5, (r3, 0x0)
    4cca:	7554      	zextb      	r5, r5
    4ccc:	3d40      	cmpnei      	r5, 0
    4cce:	0bf5      	bt      	0x4cb8	// 4cb8 <CORETHandler+0x9c>
    4cd0:	1169      	lrw      	r3, 0x200002c4	// 4d74 <CORETHandler+0x158>
    4cd2:	114a      	lrw      	r2, 0x20000260	// 4d78 <CORETHandler+0x15c>
    4cd4:	9300      	ld.w      	r0, (r3, 0x0)
    4cd6:	9220      	ld.w      	r1, (r2, 0x0)
    4cd8:	6442      	cmpne      	r0, r1
    4cda:	112a      	lrw      	r1, 0x20000334	// 4d80 <CORETHandler+0x164>
    4cdc:	1108      	lrw      	r0, 0x20000454	// 4d7c <CORETHandler+0x160>
    4cde:	0c36      	bf      	0x4d4a	// 4d4a <CORETHandler+0x12e>
    4ce0:	92c0      	ld.w      	r6, (r2, 0x0)
    4ce2:	9180      	ld.w      	r4, (r1, 0x0)
    4ce4:	651a      	cmpne      	r6, r4
    4ce6:	0c32      	bf      	0x4d4a	// 4d4a <CORETHandler+0x12e>
    4ce8:	93c0      	ld.w      	r6, (r3, 0x0)
    4cea:	9180      	ld.w      	r4, (r1, 0x0)
    4cec:	651a      	cmpne      	r6, r4
    4cee:	0c2e      	bf      	0x4d4a	// 4d4a <CORETHandler+0x12e>
    4cf0:	9080      	ld.w      	r4, (r0, 0x0)
    4cf2:	2400      	addi      	r4, 1
    4cf4:	b080      	st.w      	r4, (r0, 0x0)
    4cf6:	1184      	lrw      	r4, 0x2000008c	// 4d84 <CORETHandler+0x168>
    4cf8:	84d8      	ld.b      	r6, (r4, 0x18)
    4cfa:	9080      	ld.w      	r4, (r0, 0x0)
    4cfc:	6518      	cmphs      	r6, r4
    4cfe:	0805      	bt      	0x4d08	// 4d08 <CORETHandler+0xec>
    4d00:	b0a0      	st.w      	r5, (r0, 0x0)
    4d02:	3401      	movi      	r4, 1
    4d04:	101a      	lrw      	r0, 0x20000361	// 4d6c <CORETHandler+0x150>
    4d06:	a080      	st.b      	r4, (r0, 0x0)
    4d08:	9380      	ld.w      	r4, (r3, 0x0)
    4d0a:	9200      	ld.w      	r0, (r2, 0x0)
    4d0c:	6412      	cmpne      	r4, r0
    4d0e:	101f      	lrw      	r0, 0x20000484	// 4d88 <CORETHandler+0x16c>
    4d10:	0c04      	bf      	0x4d18	// 4d18 <CORETHandler+0xfc>
    4d12:	9180      	ld.w      	r4, (r1, 0x0)
    4d14:	3c40      	cmpnei      	r4, 0
    4d16:	0c0f      	bf      	0x4d34	// 4d34 <CORETHandler+0x118>
    4d18:	93a0      	ld.w      	r5, (r3, 0x0)
    4d1a:	9180      	ld.w      	r4, (r1, 0x0)
    4d1c:	6516      	cmpne      	r5, r4
    4d1e:	0c04      	bf      	0x4d26	// 4d26 <CORETHandler+0x10a>
    4d20:	9280      	ld.w      	r4, (r2, 0x0)
    4d22:	3c40      	cmpnei      	r4, 0
    4d24:	0c08      	bf      	0x4d34	// 4d34 <CORETHandler+0x118>
    4d26:	9120      	ld.w      	r1, (r1, 0x0)
    4d28:	9240      	ld.w      	r2, (r2, 0x0)
    4d2a:	6486      	cmpne      	r1, r2
    4d2c:	0c12      	bf      	0x4d50	// 4d50 <CORETHandler+0x134>
    4d2e:	9360      	ld.w      	r3, (r3, 0x0)
    4d30:	3b40      	cmpnei      	r3, 0
    4d32:	080f      	bt      	0x4d50	// 4d50 <CORETHandler+0x134>
    4d34:	9060      	ld.w      	r3, (r0, 0x0)
    4d36:	2300      	addi      	r3, 1
    4d38:	b060      	st.w      	r3, (r0, 0x0)
    4d3a:	1073      	lrw      	r3, 0x2000008c	// 4d84 <CORETHandler+0x168>
    4d3c:	8358      	ld.b      	r2, (r3, 0x18)
    4d3e:	9060      	ld.w      	r3, (r0, 0x0)
    4d40:	64c8      	cmphs      	r2, r3
    4d42:	0bbb      	bt      	0x4cb8	// 4cb8 <CORETHandler+0x9c>
    4d44:	3300      	movi      	r3, 0
    4d46:	b060      	st.w      	r3, (r0, 0x0)
    4d48:	07b2      	br      	0x4cac	// 4cac <CORETHandler+0x90>
    4d4a:	3400      	movi      	r4, 0
    4d4c:	b080      	st.w      	r4, (r0, 0x0)
    4d4e:	07dd      	br      	0x4d08	// 4d08 <CORETHandler+0xec>
    4d50:	3300      	movi      	r3, 0
    4d52:	b060      	st.w      	r3, (r0, 0x0)
    4d54:	07b2      	br      	0x4cb8	// 4cb8 <CORETHandler+0x9c>
    4d56:	0000      	bkpt
    4d58:	20000068 	.long	0x20000068
    4d5c:	200002cc 	.long	0x200002cc
    4d60:	200003bc 	.long	0x200003bc
    4d64:	2000011c 	.long	0x2000011c
    4d68:	200003b4 	.long	0x200003b4
    4d6c:	20000361 	.long	0x20000361
    4d70:	20000112 	.long	0x20000112
    4d74:	200002c4 	.long	0x200002c4
    4d78:	20000260 	.long	0x20000260
    4d7c:	20000454 	.long	0x20000454
    4d80:	20000334 	.long	0x20000334
    4d84:	2000008c 	.long	0x2000008c
    4d88:	20000484 	.long	0x20000484

Disassembly of section .text.std_clk_calib_source:

00004d8c <std_clk_calib_source>:
    4d8c:	3840      	cmpnei      	r0, 0
    4d8e:	1069      	lrw      	r3, 0x20000018	// 4db0 <std_clk_calib_source+0x24>
    4d90:	0807      	bt      	0x4d9e	// 4d9e <std_clk_calib_source+0x12>
    4d92:	9360      	ld.w      	r3, (r3, 0x0)
    4d94:	1048      	lrw      	r2, 0xbe9c0005	// 4db4 <std_clk_calib_source+0x28>
    4d96:	b340      	st.w      	r2, (r3, 0x0)
    4d98:	32d8      	movi      	r2, 216
    4d9a:	b345      	st.w      	r2, (r3, 0x14)
    4d9c:	0409      	br      	0x4dae	// 4dae <std_clk_calib_source+0x22>
    4d9e:	3841      	cmpnei      	r0, 1
    4da0:	0bf9      	bt      	0x4d92	// 4d92 <std_clk_calib_source+0x6>
    4da2:	9340      	ld.w      	r2, (r3, 0x0)
    4da4:	1065      	lrw      	r3, 0xbe9c000d	// 4db8 <std_clk_calib_source+0x2c>
    4da6:	b260      	st.w      	r3, (r2, 0x0)
    4da8:	3383      	movi      	r3, 131
    4daa:	4361      	lsli      	r3, r3, 1
    4dac:	b265      	st.w      	r3, (r2, 0x14)
    4dae:	783c      	jmp      	r15
    4db0:	20000018 	.long	0x20000018
    4db4:	be9c0005 	.long	0xbe9c0005
    4db8:	be9c000d 	.long	0xbe9c000d

Disassembly of section .text.std_clk_calib:

00004dbc <std_clk_calib>:
    4dbc:	14d4      	push      	r4-r7, r15
    4dbe:	142d      	subi      	r14, r14, 52
    4dc0:	3201      	movi      	r2, 1
    4dc2:	03cd      	lrw      	r6, 0x20000060	// 5008 <std_clk_calib+0x24c>
    4dc4:	6cc3      	mov      	r3, r0
    4dc6:	dc4e000a 	st.b      	r2, (r14, 0xa)
    4dca:	9640      	ld.w      	r2, (r6, 0x0)
    4dcc:	9247      	ld.w      	r2, (r2, 0x1c)
    4dce:	7488      	zextb      	r2, r2
    4dd0:	dc4e0009 	st.b      	r2, (r14, 0x9)
    4dd4:	d84e0009 	ld.b      	r2, (r14, 0x9)
    4dd8:	3a40      	cmpnei      	r2, 0
    4dda:	0c08      	bf      	0x4dea	// 4dea <std_clk_calib+0x2e>
    4ddc:	d84e0009 	ld.b      	r2, (r14, 0x9)
    4de0:	3a42      	cmpnei      	r2, 2
    4de2:	0c04      	bf      	0x4dea	// 4dea <std_clk_calib+0x2e>
    4de4:	3000      	movi      	r0, 0
    4de6:	140d      	addi      	r14, r14, 52
    4de8:	1494      	pop      	r4-r7, r15
    4dea:	0396      	lrw      	r4, 0x20000010	// 500c <std_clk_calib+0x250>
    4dec:	3209      	movi      	r2, 9
    4dee:	9400      	ld.w      	r0, (r4, 0x0)
    4df0:	3b40      	cmpnei      	r3, 0
    4df2:	b041      	st.w      	r2, (r0, 0x4)
    4df4:	0858      	bt      	0x4ea4	// 4ea4 <std_clk_calib+0xe8>
    4df6:	3307      	movi      	r3, 7
    4df8:	dc6e000b 	st.b      	r3, (r14, 0xb)
    4dfc:	037a      	lrw      	r3, 0x2dc6c00	// 5010 <std_clk_calib+0x254>
    4dfe:	b863      	st.w      	r3, (r14, 0xc)
    4e00:	3380      	movi      	r3, 128
    4e02:	4362      	lsli      	r3, r3, 2
    4e04:	b867      	st.w      	r3, (r14, 0x1c)
    4e06:	d86e000b 	ld.b      	r3, (r14, 0xb)
    4e0a:	74cc      	zextb      	r3, r3
    4e0c:	b062      	st.w      	r3, (r0, 0x8)
    4e0e:	037d      	lrw      	r3, 0xffff	// 5014 <std_clk_calib+0x258>
    4e10:	b063      	st.w      	r3, (r0, 0xc)
    4e12:	3201      	movi      	r2, 1
    4e14:	3101      	movi      	r1, 1
    4e16:	03be      	lrw      	r5, 0x20000018	// 5018 <std_clk_calib+0x25c>
    4e18:	e3ffe8ad 	bsr      	0x1f72	// 1f72 <BT_ConfigInterrupt_CMD>
    4e1c:	95e0      	ld.w      	r7, (r5, 0x0)
    4e1e:	3300      	movi      	r3, 0
    4e20:	135f      	lrw      	r2, 0x30010	// 501c <std_clk_calib+0x260>
    4e22:	b762      	st.w      	r3, (r7, 0x8)
    4e24:	b743      	st.w      	r2, (r7, 0xc)
    4e26:	974f      	ld.w      	r2, (r7, 0x3c)
    4e28:	3aa2      	bseti      	r2, 2
    4e2a:	b74f      	st.w      	r2, (r7, 0x3c)
    4e2c:	9803      	ld.w      	r0, (r14, 0xc)
    4e2e:	d82e000b 	ld.b      	r1, (r14, 0xb)
    4e32:	327d      	movi      	r2, 125
    4e34:	2100      	addi      	r1, 1
    4e36:	7c48      	mult      	r1, r2
    4e38:	b861      	st.w      	r3, (r14, 0x4)
    4e3a:	e3fff5b1 	bsr      	0x399c	// 399c <__udivsi3>
    4e3e:	b804      	st.w      	r0, (r14, 0x10)
    4e40:	32fa      	movi      	r2, 250
    4e42:	9824      	ld.w      	r1, (r14, 0x10)
    4e44:	4242      	lsli      	r2, r2, 2
    4e46:	6448      	cmphs      	r2, r1
    4e48:	0bce      	bt      	0x4de4	// 4de4 <std_clk_calib+0x28>
    4e4a:	9844      	ld.w      	r2, (r14, 0x10)
    4e4c:	3178      	movi      	r1, 120
    4e4e:	9804      	ld.w      	r0, (r14, 0x10)
    4e50:	b840      	st.w      	r2, (r14, 0x0)
    4e52:	e3fff5a5 	bsr      	0x399c	// 399c <__udivsi3>
    4e56:	9840      	ld.w      	r2, (r14, 0x0)
    4e58:	6082      	subu      	r2, r0
    4e5a:	b845      	st.w      	r2, (r14, 0x14)
    4e5c:	9804      	ld.w      	r0, (r14, 0x10)
    4e5e:	3178      	movi      	r1, 120
    4e60:	9844      	ld.w      	r2, (r14, 0x10)
    4e62:	b840      	st.w      	r2, (r14, 0x0)
    4e64:	e3fff59c 	bsr      	0x399c	// 399c <__udivsi3>
    4e68:	9840      	ld.w      	r2, (r14, 0x0)
    4e6a:	6008      	addu      	r0, r2
    4e6c:	b806      	st.w      	r0, (r14, 0x18)
    4e6e:	c0807020 	psrclr      	ie
    4e72:	9640      	ld.w      	r2, (r6, 0x0)
    4e74:	9254      	ld.w      	r2, (r2, 0x50)
    4e76:	b848      	st.w      	r2, (r14, 0x20)
    4e78:	9861      	ld.w      	r3, (r14, 0x4)
    4e7a:	9440      	ld.w      	r2, (r4, 0x0)
    4e7c:	b260      	st.w      	r3, (r2, 0x0)
    4e7e:	b761      	st.w      	r3, (r7, 0x4)
    4e80:	d86e000a 	ld.b      	r3, (r14, 0xa)
    4e84:	3b40      	cmpnei      	r3, 0
    4e86:	0843      	bt      	0x4f0c	// 4f0c <std_clk_calib+0x150>
    4e88:	9540      	ld.w      	r2, (r5, 0x0)
    4e8a:	9261      	ld.w      	r3, (r2, 0x4)
    4e8c:	3bac      	bseti      	r3, 12
    4e8e:	3bae      	bseti      	r3, 14
    4e90:	b261      	st.w      	r3, (r2, 0x4)
    4e92:	9440      	ld.w      	r2, (r4, 0x0)
    4e94:	9260      	ld.w      	r3, (r2, 0x0)
    4e96:	3bac      	bseti      	r3, 12
    4e98:	3bae      	bseti      	r3, 14
    4e9a:	b260      	st.w      	r3, (r2, 0x0)
    4e9c:	c1807420 	psrset      	ee, ie
    4ea0:	3001      	movi      	r0, 1
    4ea2:	07a2      	br      	0x4de6	// 4de6 <std_clk_calib+0x2a>
    4ea4:	3b41      	cmpnei      	r3, 1
    4ea6:	0806      	bt      	0x4eb2	// 4eb2 <std_clk_calib+0xf6>
    4ea8:	3303      	movi      	r3, 3
    4eaa:	dc6e000b 	st.b      	r3, (r14, 0xb)
    4eae:	127d      	lrw      	r3, 0x16e3600	// 5020 <std_clk_calib+0x264>
    4eb0:	07a7      	br      	0x4dfe	// 4dfe <std_clk_calib+0x42>
    4eb2:	3b42      	cmpnei      	r3, 2
    4eb4:	0806      	bt      	0x4ec0	// 4ec0 <std_clk_calib+0x104>
    4eb6:	3301      	movi      	r3, 1
    4eb8:	dc6e000b 	st.b      	r3, (r14, 0xb)
    4ebc:	127a      	lrw      	r3, 0xb71b00	// 5024 <std_clk_calib+0x268>
    4ebe:	07a0      	br      	0x4dfe	// 4dfe <std_clk_calib+0x42>
    4ec0:	3b43      	cmpnei      	r3, 3
    4ec2:	0806      	bt      	0x4ece	// 4ece <std_clk_calib+0x112>
    4ec4:	3300      	movi      	r3, 0
    4ec6:	dc6e000b 	st.b      	r3, (r14, 0xb)
    4eca:	1278      	lrw      	r3, 0x5b8d80	// 5028 <std_clk_calib+0x26c>
    4ecc:	0799      	br      	0x4dfe	// 4dfe <std_clk_calib+0x42>
    4ece:	3b44      	cmpnei      	r3, 4
    4ed0:	0809      	bt      	0x4ee2	// 4ee2 <std_clk_calib+0x126>
    4ed2:	3300      	movi      	r3, 0
    4ed4:	dc6e000b 	st.b      	r3, (r14, 0xb)
    4ed8:	1275      	lrw      	r3, 0x54c720	// 502c <std_clk_calib+0x270>
    4eda:	b863      	st.w      	r3, (r14, 0xc)
    4edc:	3380      	movi      	r3, 128
    4ede:	4369      	lsli      	r3, r3, 9
    4ee0:	0792      	br      	0x4e04	// 4e04 <std_clk_calib+0x48>
    4ee2:	3b45      	cmpnei      	r3, 5
    4ee4:	0806      	bt      	0x4ef0	// 4ef0 <std_clk_calib+0x134>
    4ee6:	3300      	movi      	r3, 0
    4ee8:	dc6e000b 	st.b      	r3, (r14, 0xb)
    4eec:	1271      	lrw      	r3, 0x3ffed0	// 5030 <std_clk_calib+0x274>
    4eee:	07f6      	br      	0x4eda	// 4eda <std_clk_calib+0x11e>
    4ef0:	3b46      	cmpnei      	r3, 6
    4ef2:	0806      	bt      	0x4efe	// 4efe <std_clk_calib+0x142>
    4ef4:	3300      	movi      	r3, 0
    4ef6:	dc6e000b 	st.b      	r3, (r14, 0xb)
    4efa:	126f      	lrw      	r3, 0x1fff68	// 5034 <std_clk_calib+0x278>
    4efc:	07ef      	br      	0x4eda	// 4eda <std_clk_calib+0x11e>
    4efe:	3b47      	cmpnei      	r3, 7
    4f00:	0b83      	bt      	0x4e06	// 4e06 <std_clk_calib+0x4a>
    4f02:	3300      	movi      	r3, 0
    4f04:	dc6e000b 	st.b      	r3, (r14, 0xb)
    4f08:	126c      	lrw      	r3, 0x1ffb8	// 5038 <std_clk_calib+0x27c>
    4f0a:	07e8      	br      	0x4eda	// 4eda <std_clk_calib+0x11e>
    4f0c:	9560      	ld.w      	r3, (r5, 0x0)
    4f0e:	3101      	movi      	r1, 1
    4f10:	9440      	ld.w      	r2, (r4, 0x0)
    4f12:	b321      	st.w      	r1, (r3, 0x4)
    4f14:	b220      	st.w      	r1, (r2, 0x0)
    4f16:	3100      	movi      	r1, 0
    4f18:	b327      	st.w      	r1, (r3, 0x1c)
    4f1a:	3004      	movi      	r0, 4
    4f1c:	b225      	st.w      	r1, (r2, 0x14)
    4f1e:	932e      	ld.w      	r1, (r3, 0x38)
    4f20:	6840      	and      	r1, r0
    4f22:	3940      	cmpnei      	r1, 0
    4f24:	0ffd      	bf      	0x4f1e	// 4f1e <std_clk_calib+0x162>
    4f26:	9225      	ld.w      	r1, (r2, 0x14)
    4f28:	b82a      	st.w      	r1, (r14, 0x28)
    4f2a:	3100      	movi      	r1, 0
    4f2c:	b310      	st.w      	r0, (r3, 0x40)
    4f2e:	b327      	st.w      	r1, (r3, 0x1c)
    4f30:	3004      	movi      	r0, 4
    4f32:	b225      	st.w      	r1, (r2, 0x14)
    4f34:	932e      	ld.w      	r1, (r3, 0x38)
    4f36:	6840      	and      	r1, r0
    4f38:	3940      	cmpnei      	r1, 0
    4f3a:	0ffd      	bf      	0x4f34	// 4f34 <std_clk_calib+0x178>
    4f3c:	9225      	ld.w      	r1, (r2, 0x14)
    4f3e:	b82b      	st.w      	r1, (r14, 0x2c)
    4f40:	3100      	movi      	r1, 0
    4f42:	b310      	st.w      	r0, (r3, 0x40)
    4f44:	b327      	st.w      	r1, (r3, 0x1c)
    4f46:	3004      	movi      	r0, 4
    4f48:	b225      	st.w      	r1, (r2, 0x14)
    4f4a:	932e      	ld.w      	r1, (r3, 0x38)
    4f4c:	6840      	and      	r1, r0
    4f4e:	3940      	cmpnei      	r1, 0
    4f50:	0ffd      	bf      	0x4f4a	// 4f4a <std_clk_calib+0x18e>
    4f52:	9225      	ld.w      	r1, (r2, 0x14)
    4f54:	b82c      	st.w      	r1, (r14, 0x30)
    4f56:	b310      	st.w      	r0, (r3, 0x40)
    4f58:	982b      	ld.w      	r1, (r14, 0x2c)
    4f5a:	980c      	ld.w      	r0, (r14, 0x30)
    4f5c:	6040      	addu      	r1, r0
    4f5e:	b829      	st.w      	r1, (r14, 0x24)
    4f60:	9829      	ld.w      	r1, (r14, 0x24)
    4f62:	4921      	lsri      	r1, r1, 1
    4f64:	b829      	st.w      	r1, (r14, 0x24)
    4f66:	3100      	movi      	r1, 0
    4f68:	b321      	st.w      	r1, (r3, 0x4)
    4f6a:	b220      	st.w      	r1, (r2, 0x0)
    4f6c:	b327      	st.w      	r1, (r3, 0x1c)
    4f6e:	b225      	st.w      	r1, (r2, 0x14)
    4f70:	d86e0009 	ld.b      	r3, (r14, 0x9)
    4f74:	3b42      	cmpnei      	r3, 2
    4f76:	9849      	ld.w      	r2, (r14, 0x24)
    4f78:	082c      	bt      	0x4fd0	// 4fd0 <std_clk_calib+0x214>
    4f7a:	1171      	lrw      	r3, 0x7ff	// 503c <std_clk_calib+0x280>
    4f7c:	648c      	cmphs      	r3, r2
    4f7e:	0c03      	bf      	0x4f84	// 4f84 <std_clk_calib+0x1c8>
    4f80:	3300      	movi      	r3, 0
    4f82:	040f      	br      	0x4fa0	// 4fa0 <std_clk_calib+0x1e4>
    4f84:	9849      	ld.w      	r2, (r14, 0x24)
    4f86:	9866      	ld.w      	r3, (r14, 0x18)
    4f88:	648c      	cmphs      	r3, r2
    4f8a:	080e      	bt      	0x4fa6	// 4fa6 <std_clk_calib+0x1ea>
    4f8c:	9868      	ld.w      	r3, (r14, 0x20)
    4f8e:	9847      	ld.w      	r2, (r14, 0x1c)
    4f90:	60ca      	subu      	r3, r2
    4f92:	b868      	st.w      	r3, (r14, 0x20)
    4f94:	32fe      	movi      	r2, 254
    4f96:	9868      	ld.w      	r3, (r14, 0x20)
    4f98:	4248      	lsli      	r2, r2, 8
    4f9a:	68c8      	and      	r3, r2
    4f9c:	3b40      	cmpnei      	r3, 0
    4f9e:	0812      	bt      	0x4fc2	// 4fc2 <std_clk_calib+0x206>
    4fa0:	dc6e000a 	st.b      	r3, (r14, 0xa)
    4fa4:	0720      	br      	0x4de4	// 4de4 <std_clk_calib+0x28>
    4fa6:	9849      	ld.w      	r2, (r14, 0x24)
    4fa8:	9865      	ld.w      	r3, (r14, 0x14)
    4faa:	64c8      	cmphs      	r2, r3
    4fac:	0829      	bt      	0x4ffe	// 4ffe <std_clk_calib+0x242>
    4fae:	9868      	ld.w      	r3, (r14, 0x20)
    4fb0:	9847      	ld.w      	r2, (r14, 0x1c)
    4fb2:	60c8      	addu      	r3, r2
    4fb4:	b868      	st.w      	r3, (r14, 0x20)
    4fb6:	33fe      	movi      	r3, 254
    4fb8:	9848      	ld.w      	r2, (r14, 0x20)
    4fba:	4368      	lsli      	r3, r3, 8
    4fbc:	688c      	and      	r2, r3
    4fbe:	64ca      	cmpne      	r2, r3
    4fc0:	0fe0      	bf      	0x4f80	// 4f80 <std_clk_calib+0x1c4>
    4fc2:	9660      	ld.w      	r3, (r6, 0x0)
    4fc4:	9848      	ld.w      	r2, (r14, 0x20)
    4fc6:	b354      	st.w      	r2, (r3, 0x50)
    4fc8:	3001      	movi      	r0, 1
    4fca:	e3ffeca7 	bsr      	0x2918	// 2918 <delay_nms>
    4fce:	0759      	br      	0x4e80	// 4e80 <std_clk_calib+0xc4>
    4fd0:	9866      	ld.w      	r3, (r14, 0x18)
    4fd2:	648c      	cmphs      	r3, r2
    4fd4:	0809      	bt      	0x4fe6	// 4fe6 <std_clk_calib+0x22a>
    4fd6:	9868      	ld.w      	r3, (r14, 0x20)
    4fd8:	9847      	ld.w      	r2, (r14, 0x1c)
    4fda:	60ca      	subu      	r3, r2
    4fdc:	b868      	st.w      	r3, (r14, 0x20)
    4fde:	32ff      	movi      	r2, 255
    4fe0:	9868      	ld.w      	r3, (r14, 0x20)
    4fe2:	4250      	lsli      	r2, r2, 16
    4fe4:	07db      	br      	0x4f9a	// 4f9a <std_clk_calib+0x1de>
    4fe6:	9849      	ld.w      	r2, (r14, 0x24)
    4fe8:	9865      	ld.w      	r3, (r14, 0x14)
    4fea:	64c8      	cmphs      	r2, r3
    4fec:	0809      	bt      	0x4ffe	// 4ffe <std_clk_calib+0x242>
    4fee:	9868      	ld.w      	r3, (r14, 0x20)
    4ff0:	9847      	ld.w      	r2, (r14, 0x1c)
    4ff2:	60c8      	addu      	r3, r2
    4ff4:	b868      	st.w      	r3, (r14, 0x20)
    4ff6:	33ff      	movi      	r3, 255
    4ff8:	9848      	ld.w      	r2, (r14, 0x20)
    4ffa:	4370      	lsli      	r3, r3, 16
    4ffc:	07e0      	br      	0x4fbc	// 4fbc <std_clk_calib+0x200>
    4ffe:	3300      	movi      	r3, 0
    5000:	dc6e000a 	st.b      	r3, (r14, 0xa)
    5004:	07e2      	br      	0x4fc8	// 4fc8 <std_clk_calib+0x20c>
    5006:	0000      	bkpt
    5008:	20000060 	.long	0x20000060
    500c:	20000010 	.long	0x20000010
    5010:	02dc6c00 	.long	0x02dc6c00
    5014:	0000ffff 	.long	0x0000ffff
    5018:	20000018 	.long	0x20000018
    501c:	00030010 	.long	0x00030010
    5020:	016e3600 	.long	0x016e3600
    5024:	00b71b00 	.long	0x00b71b00
    5028:	005b8d80 	.long	0x005b8d80
    502c:	0054c720 	.long	0x0054c720
    5030:	003ffed0 	.long	0x003ffed0
    5034:	001fff68 	.long	0x001fff68
    5038:	0001ffb8 	.long	0x0001ffb8
    503c:	000007ff 	.long	0x000007ff

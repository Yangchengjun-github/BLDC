
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
       4:	0000301e 	.long	0x0000301e
	TK_senprd[0]=50;								//TCH0 scan period = TCH0 sens
       8:	0000300e 	.long	0x0000300e
	TK_senprd[11]=50;								//TCH11 scan period = TCH11 sens
	TK_senprd[12]=50;								//TCH12 scan period = TCH12 sens
	TK_senprd[13]=50;								//TCH13 scan period = TCH13 sens
	TK_senprd[14]=50;								//TCH14 scan period = TCH14 sens
	TK_senprd[15]=50;								//TCH15 scan period = TCH15 sens
	TK_senprd[16]=50;								//TCH16 scan period = TCH16 sens
       c:	00000184 	.long	0x00000184
	TK_senprd[1]=50;								//TCH1 scan period = TCH1 sens
      10:	00003016 	.long	0x00003016
	TK_senprd[3]=50;								//TCH3 scan period = TCH3 sens
      14:	00002fd4 	.long	0x00002fd4
	TK_senprd[5]=50;								//TCH5 scan period = TCH5 sens
      18:	00000184 	.long	0x00000184
	TK_senprd[7]=50;								//TCH7 scan period = TCH7 sens
      1c:	00003006 	.long	0x00003006
	TK_senprd[9]=50;								//TCH9 scan period = TCH9 sens
      20:	00002ffe 	.long	0x00002ffe
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
      40:	00002ff6 	.long	0x00002ff6
	TK_Triggerlevel[7]=60;							//TCH7 TK_Trigger level
	TK_Triggerlevel[8]=60;							//TCH8 TK_Trigger level
      44:	00002fee 	.long	0x00002fee
	TK_Triggerlevel[9]=60;							//TCH9 TK_Trigger level
	TK_Triggerlevel[10]=60;							//TCH10 TK_Trigger level
      48:	00002fe6 	.long	0x00002fe6
	TK_Triggerlevel[11]=60;							//TCH11 TK_Trigger level
	TK_Triggerlevel[12]=60;							//TCH12 TK_Trigger level
      4c:	00002fde 	.long	0x00002fde
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
      7c:	00002fd6 	.long	0x00002fd6
/****************************************************
//TK function define
*****************************************************/
	TK_Lowpower_mode=DISABLE;						//touch key can goto sleep when TK lowpower mode enable
      80:	000045e0 	.long	0x000045e0
      84:	000026d4 	.long	0x000026d4
	TK_Lowpower_level=2;							//0=20ms 1=50ms 2=100ms 3=150ms 4=200ms,Scan interval when sleep
      88:	000027cc 	.long	0x000027cc
	TK_Wakeup_level=50;								//touch key Trigger level in sleep
      8c:	00002834 	.long	0x00002834
      90:	000028bc 	.long	0x000028bc
/****************************************************
//TK special parameter define
*****************************************************/
	TK_PSEL_MODE=TK_PSEL_AVDD;						//tk power sel:TK_PSEL_FVR/TK_PSEL_AVDD   when select TK_PSEL_FVR PA0.2(TCH3) need a 104 cap
      94:	00000184 	.long	0x00000184
	TK_FVR_LEVEL=TK_FVR_4096V;						//FVR level:TK_FVR_2048V/TK_FVR_4096V
      98:	00002a64 	.long	0x00002a64
	TK_EC_LEVEL=TK_EC_3V;							//C0 voltage sel:TK_EC_1V/TK_EC_2V/TK_EC_3V/TK_EC_3_6V
      9c:	00002da8 	.long	0x00002da8
      a0:	00002dd8 	.long	0x00002dd8
	TK_icon[0]=4;									//TCH0 TK Scan icon
      a4:	00002a98 	.long	0x00002a98
      a8:	00000184 	.long	0x00000184
	TK_icon[1]=4;									//TCH1 TK Scan icon
	TK_icon[2]=4;									//TCH2 TK Scan icon
      ac:	00000184 	.long	0x00000184
	TK_icon[3]=4;									//TCH3 TK Scan icon
	TK_icon[4]=4;									//TCH4 TK Scan icon
      b0:	00002b18 	.long	0x00002b18
	TK_icon[5]=4;									//TCH5 TK Scan icon
	TK_icon[6]=4;									//TCH6 TK Scan icon
      b4:	00002b88 	.long	0x00002b88
	TK_icon[7]=4;									//TCH7 TK Scan icon
	TK_icon[8]=4;									//TCH8 TK Scan icon
      b8:	00002bc4 	.long	0x00002bc4
	TK_icon[9]=4;									//TCH9 TK Scan icon
	TK_icon[10]=4;									//TCH10 TK Scan icon
      bc:	00002c00 	.long	0x00002c00
	TK_icon[11]=4;									//TCH11 TK Scan icon
	TK_icon[12]=4;									//TCH12 TK Scan icon
      c0:	00000184 	.long	0x00000184
	TK_icon[13]=4;									//TCH13 TK Scan icon
	TK_icon[14]=4;									//TCH14 TK Scan icon
      c4:	0000302e 	.long	0x0000302e
	TK_Wheel_Seq[0]=14;								
	TK_Wheel_Seq[1]=0;
	TK_Wheel_Seq[2]=15;
	TK_Wheel_Seq[3]=1;	
#endif
      c8:	00000184 	.long	0x00000184
      cc:	00002c3c 	.long	0x00002c3c
      d0:	00002d24 	.long	0x00002d24
      d4:	00002e08 	.long	0x00002e08
      d8:	00002e50 	.long	0x00002e50
      dc:	00002eac 	.long	0x00002eac
      e0:	00003026 	.long	0x00003026
      e4:	00004540 	.long	0x00004540
      e8:	00002f0c 	.long	0x00002f0c
      ec:	00000184 	.long	0x00000184
      f0:	00002f40 	.long	0x00002f40
      f4:	00002f8c 	.long	0x00002f8c
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
     152:	1013      	lrw      	r0, 0x3038	// 19c <DummyHandler+0x18>
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
     19c:	00003038 	.long	0x00003038
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
     53c:	1168      	lrw      	r3, 0x4a04	// 5dc <__GI_pow+0x428>
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
     5dc:	00004a04 	.long	0x00004a04
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
     7de:	01db      	lrw      	r6, 0x4a04	// aec <__GI_pow+0x938>
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
     7f8:	0202      	lrw      	r0, 0x4a04	// aec <__GI_pow+0x938>
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
     aec:	00004a04 	.long	0x00004a04
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
     f24:	111d      	lrw      	r0, 0x4a34	// 1018 <_fpadd_parts+0x2d0>
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
    1018:	00004a34 	.long	0x00004a34

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
    1264:	1013      	lrw      	r0, 0x4a34	// 12b0 <__muldf3+0x22c>
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
    12b0:	00004a34 	.long	0x00004a34
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
    13b2:	1016      	lrw      	r0, 0x4a34	// 1408 <__divdf3+0x150>
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
    1408:	00004a34 	.long	0x00004a34

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
    1656:	1048      	lrw      	r2, 0x4a48	// 1674 <__clzsi2+0x3c>
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
    1674:	00004a48 	.long	0x00004a48

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
    1966:	1085      	lrw      	r4, 0x200000c4	// 1978 <__GI_puts+0x14>
    1968:	9420      	ld.w      	r1, (r4, 0x0)
    196a:	e0000009 	bsr      	0x197c	// 197c <__GI_fputs>
    196e:	9420      	ld.w      	r1, (r4, 0x0)
    1970:	300a      	movi      	r0, 10
    1972:	e0000b7b 	bsr      	0x3068	// 3068 <fputc>
    1976:	1491      	pop      	r4, r15
    1978:	200000c4 	.long	0x200000c4

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
    19b6:	e0000b59 	bsr      	0x3068	// 3068 <fputc>
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
    1ac4:	1029      	lrw      	r1, 0x4b54	// 1ae8 <__main+0x28>
    1ac6:	6442      	cmpne      	r0, r1
    1ac8:	0c05      	bf      	0x1ad2	// 1ad2 <__main+0x12>
//    __memcpy_fast( dst, src, (_end_data - _start_data));
    memcpy( dst, src, (_end_data - _start_data));
    1aca:	1049      	lrw      	r2, 0x20000104	// 1aec <__main+0x2c>
    1acc:	6082      	subu      	r2, r0
    1ace:	e3ffffbf 	bsr      	0x1a4c	// 1a4c <__memcpy_fast>
  }

  /* zero the bss 
   */
  if( _ebss - _bss_start ) {
    1ad2:	1048      	lrw      	r2, 0x20000534	// 1af0 <__main+0x30>
    1ad4:	1008      	lrw      	r0, 0x20000104	// 1af4 <__main+0x34>
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
    1ae8:	00004b54 	.long	0x00004b54
    1aec:	20000104 	.long	0x20000104
    1af0:	20000534 	.long	0x20000534
    1af4:	20000104 	.long	0x20000104

Disassembly of section .text.__putchar__:

00001af8 <__putchar__>:
#define _debug_uart_io
/******************************************************************************
* Main code
******************************************************************************/
void __putchar__ (char ch) 
{
    1af8:	14d0      	push      	r15
#ifdef _debug_uart_io
	//UARTTxByte(UART0,s);			//uart 0
	UARTTxByte(UART0,ch);			//uart 1
    1afa:	1064      	lrw      	r3, 0x20000040	// 1b08 <__putchar__+0x10>
{
    1afc:	6c43      	mov      	r1, r0
	UARTTxByte(UART0,ch);			//uart 1
    1afe:	9300      	ld.w      	r0, (r3, 0x0)
    1b00:	e000033d 	bsr      	0x217a	// 217a <UARTTxByte>
	//select debug serial Pane
	volatile unsigned int *pdata = (unsigned int *)LDCC_DATA_P;
	while (*pdata & LDCC_BIT_STATUS);	//Waiting for data read.
	*pdata = ch;
#endif
}
    1b04:	1490      	pop      	r15
    1b06:	0000      	bkpt
    1b08:	20000040 	.long	0x20000040

Disassembly of section .text.myitoa:

00001b0c <myitoa>:

int *myitoa(int value, int* string, int radix)
{
    1b0c:	14d4      	push      	r4-r7, r15
    1b0e:	1524      	subi      	r14, r14, 144
    1b10:	6d47      	mov      	r5, r1
		int i;
		unsigned v;
		int sign;
		int* sp;
		
		if (radix > 36 || radix <= 1)
    1b12:	3322      	movi      	r3, 34
    1b14:	5a27      	subi      	r1, r2, 2
    1b16:	644c      	cmphs      	r3, r1
    1b18:	0c3b      	bf      	0x1b8e	// 1b8e <myitoa+0x82>
		{
			return 0;
		}
		
		sign = (radix == 10 && value < 0);
    1b1a:	3a4a      	cmpnei      	r2, 10
    1b1c:	083b      	bt      	0x1b92	// 1b92 <myitoa+0x86>
    1b1e:	38df      	btsti      	r0, 31
    1b20:	0c39      	bf      	0x1b92	// 1b92 <myitoa+0x86>
		if (sign)
		v = -value;
    1b22:	3400      	movi      	r4, 0
    1b24:	6102      	subu      	r4, r0
		sign = (radix == 10 && value < 0);
    1b26:	3301      	movi      	r3, 1
    1b28:	1f03      	addi      	r7, r14, 12
		else
		v = (unsigned)value;
    1b2a:	b860      	st.w      	r3, (r14, 0x0)
    1b2c:	6cdf      	mov      	r3, r7
    1b2e:	0415      	br      	0x1b58	// 1b58 <myitoa+0x4c>
		while (v || tp == tmp)
		{
			i = v % radix;
    1b30:	6c4b      	mov      	r1, r2
    1b32:	6c13      	mov      	r0, r4
    1b34:	b862      	st.w      	r3, (r14, 0x8)
    1b36:	b841      	st.w      	r2, (r14, 0x4)
    1b38:	e0000c14 	bsr      	0x3360	// 3360 <__umodsi3>
			v = v / radix;
    1b3c:	9841      	ld.w      	r2, (r14, 0x4)
			i = v % radix;
    1b3e:	6d83      	mov      	r6, r0
			v = v / radix;
    1b40:	6c4b      	mov      	r1, r2
    1b42:	6c13      	mov      	r0, r4
    1b44:	e0000bfc 	bsr      	0x333c	// 333c <__udivsi3>
			if (i < 10) {
    1b48:	3e09      	cmphsi      	r6, 10
			v = v / radix;
    1b4a:	6d03      	mov      	r4, r0
			if (i < 10) {
    1b4c:	9841      	ld.w      	r2, (r14, 0x4)
    1b4e:	9862      	ld.w      	r3, (r14, 0x8)
    1b50:	0816      	bt      	0x1b7c	// 1b7c <myitoa+0x70>
			*tp++ = i+'0';
    1b52:	262f      	addi      	r6, 48
			
			} else {
			*tp++ = i + 'a' - 10;
    1b54:	b7c0      	st.w      	r6, (r7, 0x0)
    1b56:	2703      	addi      	r7, 4
		while (v || tp == tmp)
    1b58:	3c40      	cmpnei      	r4, 0
    1b5a:	6c5f      	mov      	r1, r7
    1b5c:	0bea      	bt      	0x1b30	// 1b30 <myitoa+0x24>
    1b5e:	65ce      	cmpne      	r3, r7
    1b60:	0fe8      	bf      	0x1b30	// 1b30 <myitoa+0x24>
					
		}
		
		sp = string;
		
		if (sign)
    1b62:	9840      	ld.w      	r2, (r14, 0x0)
    1b64:	3a40      	cmpnei      	r2, 0
    1b66:	0c0d      	bf      	0x1b80	// 1b80 <myitoa+0x74>
		*sp++ = '-';
    1b68:	302d      	movi      	r0, 45
    1b6a:	5d4e      	addi      	r2, r5, 4
    1b6c:	b500      	st.w      	r0, (r5, 0x0)
		while (tp > tmp)
    1b6e:	644c      	cmphs      	r3, r1
    1b70:	0c0a      	bf      	0x1b84	// 1b84 <myitoa+0x78>
		*sp++ = *--tp;
		*sp = 0;
    1b72:	3300      	movi      	r3, 0
    1b74:	b260      	st.w      	r3, (r2, 0x0)
		return string;
    1b76:	6c17      	mov      	r0, r5
}
    1b78:	1504      	addi      	r14, r14, 144
    1b7a:	1494      	pop      	r4-r7, r15
			*tp++ = i + 'a' - 10;
    1b7c:	2656      	addi      	r6, 87
    1b7e:	07eb      	br      	0x1b54	// 1b54 <myitoa+0x48>
    1b80:	6c97      	mov      	r2, r5
    1b82:	07f6      	br      	0x1b6e	// 1b6e <myitoa+0x62>
		*sp++ = *--tp;
    1b84:	2903      	subi      	r1, 4
    1b86:	9100      	ld.w      	r0, (r1, 0x0)
    1b88:	b200      	st.w      	r0, (r2, 0x0)
    1b8a:	2203      	addi      	r2, 4
    1b8c:	07f1      	br      	0x1b6e	// 1b6e <myitoa+0x62>
			return 0;
    1b8e:	3000      	movi      	r0, 0
    1b90:	07f4      	br      	0x1b78	// 1b78 <myitoa+0x6c>
		v = (unsigned)value;
    1b92:	6d03      	mov      	r4, r0
    1b94:	3300      	movi      	r3, 0
    1b96:	07c9      	br      	0x1b28	// 1b28 <myitoa+0x1c>

Disassembly of section .text.my_printf:

00001b98 <my_printf>:


void my_printf(const char *fmt, ...)
{
    1b98:	1424      	subi      	r14, r14, 16
    1b9a:	b863      	st.w      	r3, (r14, 0xc)
    1b9c:	b842      	st.w      	r2, (r14, 0x8)
    1b9e:	b821      	st.w      	r1, (r14, 0x4)
    1ba0:	b800      	st.w      	r0, (r14, 0x0)
    1ba2:	14d3      	push      	r4-r6, r15
    1ba4:	1430      	subi      	r14, r14, 64
    1ba6:	98b4      	ld.w      	r5, (r14, 0x50)
    int d;
    //char ch, *pbuf, buf[16];
	char ch, *pbuf;
	int buf[16];
    va_list ap;
    va_start(ap, fmt);
    1ba8:	1c15      	addi      	r4, r14, 84
    while (*fmt) {
    1baa:	8500      	ld.b      	r0, (r5, 0x0)
    1bac:	3840      	cmpnei      	r0, 0
    1bae:	0809      	bt      	0x1bc0	// 1bc0 <my_printf+0x28>
                break;
        }
        fmt++;
    }
    va_end(ap);
}
    1bb0:	1410      	addi      	r14, r14, 64
    1bb2:	d9ee2003 	ld.w      	r15, (r14, 0xc)
    1bb6:	98c2      	ld.w      	r6, (r14, 0x8)
    1bb8:	98a1      	ld.w      	r5, (r14, 0x4)
    1bba:	9880      	ld.w      	r4, (r14, 0x0)
    1bbc:	1408      	addi      	r14, r14, 32
    1bbe:	783c      	jmp      	r15
        if (*fmt != '%') {
    1bc0:	3325      	movi      	r3, 37
    1bc2:	64c2      	cmpne      	r0, r3
    1bc4:	0c05      	bf      	0x1bce	// 1bce <my_printf+0x36>
              __putchar__(*fmt++);
    1bc6:	2500      	addi      	r5, 1
    1bc8:	e3ffff98 	bsr      	0x1af8	// 1af8 <__putchar__>
            continue;
    1bcc:	07ef      	br      	0x1baa	// 1baa <my_printf+0x12>
        switch (*++fmt) {
    1bce:	8501      	ld.b      	r0, (r5, 0x1)
    1bd0:	3363      	movi      	r3, 99
    1bd2:	64c2      	cmpne      	r0, r3
    1bd4:	0c40      	bf      	0x1c54	// 1c54 <my_printf+0xbc>
    1bd6:	640c      	cmphs      	r3, r0
    1bd8:	0c0a      	bf      	0x1bec	// 1bec <my_printf+0x54>
    1bda:	3343      	movi      	r3, 67
    1bdc:	64c2      	cmpne      	r0, r3
    1bde:	0c3b      	bf      	0x1c54	// 1c54 <my_printf+0xbc>
    1be0:	3358      	movi      	r3, 88
    1be2:	64c2      	cmpne      	r0, r3
    1be4:	0c29      	bf      	0x1c36	// 1c36 <my_printf+0x9e>
                __putchar__(*fmt);
    1be6:	e3ffff89 	bsr      	0x1af8	// 1af8 <__putchar__>
                break;
    1bea:	041f      	br      	0x1c28	// 1c28 <my_printf+0x90>
        switch (*++fmt) {
    1bec:	3373      	movi      	r3, 115
    1bee:	64c2      	cmpne      	r0, r3
    1bf0:	0c16      	bf      	0x1c1c	// 1c1c <my_printf+0x84>
    1bf2:	3378      	movi      	r3, 120
    1bf4:	64c2      	cmpne      	r0, r3
    1bf6:	0c20      	bf      	0x1c36	// 1c36 <my_printf+0x9e>
    1bf8:	3364      	movi      	r3, 100
    1bfa:	64c2      	cmpne      	r0, r3
    1bfc:	0bf5      	bt      	0x1be6	// 1be6 <my_printf+0x4e>
                myitoa(d, buf, 10);
    1bfe:	9400      	ld.w      	r0, (r4, 0x0)
    1c00:	320a      	movi      	r2, 10
    1c02:	6c7b      	mov      	r1, r14
                d = va_arg(ap, int);
    1c04:	5cce      	addi      	r6, r4, 4
                myitoa(d, buf, 10);
    1c06:	e3ffff83 	bsr      	0x1b0c	// 1b0c <myitoa>
                for (s = buf; *s; s++) {
    1c0a:	6d3b      	mov      	r4, r14
    1c0c:	9400      	ld.w      	r0, (r4, 0x0)
    1c0e:	3840      	cmpnei      	r0, 0
    1c10:	0c0b      	bf      	0x1c26	// 1c26 <my_printf+0x8e>
                 __putchar__(*s);
    1c12:	7400      	zextb      	r0, r0
    1c14:	e3ffff72 	bsr      	0x1af8	// 1af8 <__putchar__>
                for (s = buf; *s; s++) {
    1c18:	2403      	addi      	r4, 4
    1c1a:	07f9      	br      	0x1c0c	// 1c0c <my_printf+0x74>
                s = va_arg(ap, const int *);
    1c1c:	5cce      	addi      	r6, r4, 4
    1c1e:	9480      	ld.w      	r4, (r4, 0x0)
                for ( ; *s; s++) {
    1c20:	9400      	ld.w      	r0, (r4, 0x0)
    1c22:	3840      	cmpnei      	r0, 0
    1c24:	0804      	bt      	0x1c2c	// 1c2c <my_printf+0x94>
            	ch = (unsigned char)va_arg(ap, int);
    1c26:	6d1b      	mov      	r4, r6
        fmt++;
    1c28:	2501      	addi      	r5, 2
    1c2a:	07c0      	br      	0x1baa	// 1baa <my_printf+0x12>
                 __putchar__(*s);
    1c2c:	7400      	zextb      	r0, r0
    1c2e:	e3ffff65 	bsr      	0x1af8	// 1af8 <__putchar__>
                for ( ; *s; s++) {
    1c32:	2403      	addi      	r4, 4
    1c34:	07f6      	br      	0x1c20	// 1c20 <my_printf+0x88>
                myitoa(d, buf, 16);
    1c36:	9400      	ld.w      	r0, (r4, 0x0)
    1c38:	3210      	movi      	r2, 16
    1c3a:	6c7b      	mov      	r1, r14
                d = va_arg(ap, int);
    1c3c:	5cce      	addi      	r6, r4, 4
                myitoa(d, buf, 16);
    1c3e:	e3ffff67 	bsr      	0x1b0c	// 1b0c <myitoa>
                for (s = buf; *s; s++) {
    1c42:	6d3b      	mov      	r4, r14
    1c44:	9400      	ld.w      	r0, (r4, 0x0)
    1c46:	3840      	cmpnei      	r0, 0
    1c48:	0fef      	bf      	0x1c26	// 1c26 <my_printf+0x8e>
                 __putchar__(*s);
    1c4a:	7400      	zextb      	r0, r0
    1c4c:	e3ffff56 	bsr      	0x1af8	// 1af8 <__putchar__>
                for (s = buf; *s; s++) {
    1c50:	2403      	addi      	r4, 4
    1c52:	07f9      	br      	0x1c44	// 1c44 <my_printf+0xac>
            	__putchar__(*pbuf);
    1c54:	8400      	ld.b      	r0, (r4, 0x0)
            	ch = (unsigned char)va_arg(ap, int);
    1c56:	5cce      	addi      	r6, r4, 4
            	__putchar__(*pbuf);
    1c58:	e3ffff50 	bsr      	0x1af8	// 1af8 <__putchar__>
    1c5c:	07e5      	br      	0x1c26	// 1c26 <my_printf+0x8e>

Disassembly of section .text.SYSCON_General_CMD.part.0:

00001c60 <SYSCON_General_CMD.part.0>:
/*************************************************************/  
void SYSCON_General_CMD(FunctionalStatus NewState, SYSCON_General_CMD_TypeDef ENDIS_X )
{
	if (NewState != DISABLE)
	{
		if(ENDIS_X==ENDIS_EMOSC) 
    1c60:	3848      	cmpnei      	r0, 8
    1c62:	080a      	bt      	0x1c76	// 1c76 <SYSCON_General_CMD.part.0+0x16>
		GPIOA0->CONLR=(GPIOA0->CONLR & 0XFFF00FFF)|0x00044000;					//enable EMOSC PIN
    1c64:	107a      	lrw      	r3, 0x2000004c	// 1ccc <SYSCON_General_CMD.part.0+0x6c>
    1c66:	32ff      	movi      	r2, 255
    1c68:	9320      	ld.w      	r1, (r3, 0x0)
    1c6a:	9160      	ld.w      	r3, (r1, 0x0)
    1c6c:	424c      	lsli      	r2, r2, 12
    1c6e:	68c9      	andn      	r3, r2
    1c70:	3bae      	bseti      	r3, 14
    1c72:	3bb2      	bseti      	r3, 18
    1c74:	b160      	st.w      	r3, (r1, 0x0)
		SYSCON->GCER|=ENDIS_X;													//enable SYSCON General Control
    1c76:	1077      	lrw      	r3, 0x2000005c	// 1cd0 <SYSCON_General_CMD.part.0+0x70>
    1c78:	9360      	ld.w      	r3, (r3, 0x0)
    1c7a:	9341      	ld.w      	r2, (r3, 0x4)
    1c7c:	6c80      	or      	r2, r0
    1c7e:	b341      	st.w      	r2, (r3, 0x4)
		while(!(SYSCON->GCSR&ENDIS_X));											//check  Enable?	
    1c80:	9343      	ld.w      	r2, (r3, 0xc)
    1c82:	6880      	and      	r2, r0
    1c84:	3a40      	cmpnei      	r2, 0
    1c86:	0ffd      	bf      	0x1c80	// 1c80 <SYSCON_General_CMD.part.0+0x20>
		switch(ENDIS_X)
    1c88:	3842      	cmpnei      	r0, 2
    1c8a:	0807      	bt      	0x1c98	// 1c98 <SYSCON_General_CMD.part.0+0x38>
		{
			case ENDIS_IMOSC:
				while (!(SYSCON->CKST & ENDIS_IMOSC)); 	
    1c8c:	3102      	movi      	r1, 2
    1c8e:	9344      	ld.w      	r2, (r3, 0x10)
    1c90:	6884      	and      	r2, r1
    1c92:	3a40      	cmpnei      	r2, 0
    1c94:	0ffd      	bf      	0x1c8e	// 1c8e <SYSCON_General_CMD.part.0+0x2e>
	{
		SYSCON->GCDR|=ENDIS_X;													//disable SYSCON General Control
		while(SYSCON->GCSR&ENDIS_X);											//check Disable?
		SYSCON->ICR|=ENDIS_X;													//Clear ENDIS_X stable bit
	}
}
    1c96:	783c      	jmp      	r15
		switch(ENDIS_X)
    1c98:	3802      	cmphsi      	r0, 3
    1c9a:	0809      	bt      	0x1cac	// 1cac <SYSCON_General_CMD.part.0+0x4c>
    1c9c:	3841      	cmpnei      	r0, 1
    1c9e:	0bfc      	bt      	0x1c96	// 1c96 <SYSCON_General_CMD.part.0+0x36>
				while (!(SYSCON->CKST & ENDIS_ISOSC)); 
    1ca0:	3101      	movi      	r1, 1
    1ca2:	9344      	ld.w      	r2, (r3, 0x10)
    1ca4:	6884      	and      	r2, r1
    1ca6:	3a40      	cmpnei      	r2, 0
    1ca8:	0ffd      	bf      	0x1ca2	// 1ca2 <SYSCON_General_CMD.part.0+0x42>
    1caa:	07f6      	br      	0x1c96	// 1c96 <SYSCON_General_CMD.part.0+0x36>
		switch(ENDIS_X)
    1cac:	3848      	cmpnei      	r0, 8
    1cae:	0807      	bt      	0x1cbc	// 1cbc <SYSCON_General_CMD.part.0+0x5c>
				while (!(SYSCON->CKST & ENDIS_EMOSC)); 
    1cb0:	3108      	movi      	r1, 8
    1cb2:	9344      	ld.w      	r2, (r3, 0x10)
    1cb4:	6884      	and      	r2, r1
    1cb6:	3a40      	cmpnei      	r2, 0
    1cb8:	0ffd      	bf      	0x1cb2	// 1cb2 <SYSCON_General_CMD.part.0+0x52>
    1cba:	07ee      	br      	0x1c96	// 1c96 <SYSCON_General_CMD.part.0+0x36>
		switch(ENDIS_X)
    1cbc:	3850      	cmpnei      	r0, 16
    1cbe:	0bec      	bt      	0x1c96	// 1c96 <SYSCON_General_CMD.part.0+0x36>
				while (!(SYSCON->CKST & ENDIS_HFOSC)); 
    1cc0:	3110      	movi      	r1, 16
    1cc2:	9344      	ld.w      	r2, (r3, 0x10)
    1cc4:	6884      	and      	r2, r1
    1cc6:	3a40      	cmpnei      	r2, 0
    1cc8:	0ffd      	bf      	0x1cc2	// 1cc2 <SYSCON_General_CMD.part.0+0x62>
    1cca:	07e6      	br      	0x1c96	// 1c96 <SYSCON_General_CMD.part.0+0x36>
    1ccc:	2000004c 	.long	0x2000004c
    1cd0:	2000005c 	.long	0x2000005c

Disassembly of section .text.SYSCON_RST_VALUE:

00001cd4 <SYSCON_RST_VALUE>:
	SYSCON->RAMCHK=SYSCON_RAMCHK_RST;
    1cd4:	106f      	lrw      	r3, 0x2000005c	// 1d10 <SYSCON_RST_VALUE+0x3c>
    1cd6:	1050      	lrw      	r2, 0xffff	// 1d14 <SYSCON_RST_VALUE+0x40>
    1cd8:	9360      	ld.w      	r3, (r3, 0x0)
    1cda:	b345      	st.w      	r2, (r3, 0x14)
	SYSCON->EFLCHK=SYSCON_EFLCHK_RST;
    1cdc:	104f      	lrw      	r2, 0xffffff	// 1d18 <SYSCON_RST_VALUE+0x44>
    1cde:	b346      	st.w      	r2, (r3, 0x18)
	SYSCON->SCLKCR=SYSCON_SCLKCR_RST;
    1ce0:	104f      	lrw      	r2, 0xd22d0000	// 1d1c <SYSCON_RST_VALUE+0x48>
    1ce2:	b347      	st.w      	r2, (r3, 0x1c)
	SYSCON->OSTR=SYSCON_OSTR_RST;
    1ce4:	104f      	lrw      	r2, 0x70ff3bff	// 1d20 <SYSCON_RST_VALUE+0x4c>
    1ce6:	b350      	st.w      	r2, (r3, 0x40)
	SYSCON->EXIRT=SYSCON_EXIRT_RST;
    1ce8:	3180      	movi      	r1, 128
	SYSCON->LVDCR=SYSCON_LVDCR_RST;
    1cea:	320a      	movi      	r2, 10
    1cec:	b353      	st.w      	r2, (r3, 0x4c)
	SYSCON->EXIRT=SYSCON_EXIRT_RST;
    1cee:	604c      	addu      	r1, r3
    1cf0:	3200      	movi      	r2, 0
	SYSCON->IWDCR=SYSCON_IWDCR_RST;
    1cf2:	100d      	lrw      	r0, 0x70c	// 1d24 <SYSCON_RST_VALUE+0x50>
	SYSCON->EXIRT=SYSCON_EXIRT_RST;
    1cf4:	b145      	st.w      	r2, (r1, 0x14)
	SYSCON->UREG0=SYSCON_UREG0_RST;
    1cf6:	23ff      	addi      	r3, 256
	SYSCON->EXIFT=SYSCON_EXIFT_RST;
    1cf8:	b146      	st.w      	r2, (r1, 0x18)
	SYSCON->IWDCR=SYSCON_IWDCR_RST;
    1cfa:	b10d      	st.w      	r0, (r1, 0x34)
	SYSCON->IWDCNT=SYSCON_IWDCNT_RST;
    1cfc:	100b      	lrw      	r0, 0x3fe	// 1d28 <SYSCON_RST_VALUE+0x54>
    1cfe:	b10e      	st.w      	r0, (r1, 0x38)
	SYSCON->EVTRG=SYSCON_EVTRG_RST;
    1d00:	b15d      	st.w      	r2, (r1, 0x74)
	SYSCON->EVPS=SYSCON_EVPS_RST;
    1d02:	b15e      	st.w      	r2, (r1, 0x78)
	SYSCON->EVSWF=SYSCON_EVSWF_RST;
    1d04:	b15f      	st.w      	r2, (r1, 0x7c)
	SYSCON->UREG0=SYSCON_UREG0_RST;
    1d06:	b340      	st.w      	r2, (r3, 0x0)
	SYSCON->UREG1=SYSCON_UREG1_RST;
    1d08:	b341      	st.w      	r2, (r3, 0x4)
	SYSCON->UREG2=SYSCON_UREG2_RST;
    1d0a:	b342      	st.w      	r2, (r3, 0x8)
	SYSCON->UREG3=SYSCON_UREG3_RST;
    1d0c:	b343      	st.w      	r2, (r3, 0xc)
}
    1d0e:	783c      	jmp      	r15
    1d10:	2000005c 	.long	0x2000005c
    1d14:	0000ffff 	.long	0x0000ffff
    1d18:	00ffffff 	.long	0x00ffffff
    1d1c:	d22d0000 	.long	0xd22d0000
    1d20:	70ff3bff 	.long	0x70ff3bff
    1d24:	0000070c 	.long	0x0000070c
    1d28:	000003fe 	.long	0x000003fe

Disassembly of section .text.SYSCON_General_CMD:

00001d2c <SYSCON_General_CMD>:
{
    1d2c:	14d0      	push      	r15
	if (NewState != DISABLE)
    1d2e:	3840      	cmpnei      	r0, 0
    1d30:	0c05      	bf      	0x1d3a	// 1d3a <SYSCON_General_CMD+0xe>
    1d32:	6c07      	mov      	r0, r1
    1d34:	e3ffff96 	bsr      	0x1c60	// 1c60 <SYSCON_General_CMD.part.0>
}
    1d38:	1490      	pop      	r15
		SYSCON->GCDR|=ENDIS_X;													//disable SYSCON General Control
    1d3a:	1068      	lrw      	r3, 0x2000005c	// 1d58 <SYSCON_General_CMD+0x2c>
    1d3c:	9360      	ld.w      	r3, (r3, 0x0)
    1d3e:	9342      	ld.w      	r2, (r3, 0x8)
    1d40:	6c84      	or      	r2, r1
    1d42:	b342      	st.w      	r2, (r3, 0x8)
		while(SYSCON->GCSR&ENDIS_X);											//check Disable?
    1d44:	9343      	ld.w      	r2, (r3, 0xc)
    1d46:	6884      	and      	r2, r1
    1d48:	3a40      	cmpnei      	r2, 0
    1d4a:	0bfd      	bt      	0x1d44	// 1d44 <SYSCON_General_CMD+0x18>
		SYSCON->ICR|=ENDIS_X;													//Clear ENDIS_X stable bit
    1d4c:	237f      	addi      	r3, 128
    1d4e:	9301      	ld.w      	r0, (r3, 0x4)
    1d50:	6c40      	or      	r1, r0
    1d52:	b321      	st.w      	r1, (r3, 0x4)
}
    1d54:	07f2      	br      	0x1d38	// 1d38 <SYSCON_General_CMD+0xc>
    1d56:	0000      	bkpt
    1d58:	2000005c 	.long	0x2000005c

Disassembly of section .text.SystemCLK_HCLKDIV_PCLKDIV_Config:

00001d5c <SystemCLK_HCLKDIV_PCLKDIV_Config>:
//SystemClk_data_x:EMOSC_24M,EMOSC_16M,EMOSC_12M,EMOSC_8M,EMOSC_4M,EMOSC_36K,
//ISOSC,IMOSC,HFOSC_48M,HFOSC_24M,HFOSC_12M,HFOSC_6M
//ReturnValue:NONE
/*************************************************************/ 
void SystemCLK_HCLKDIV_PCLKDIV_Config(SystemCLK_TypeDef SYSCLK_X , SystemCLK_Div_TypeDef HCLK_DIV_X , PCLK_Div_TypeDef PCLK_DIV_X , SystemClk_data_TypeDef SystemClk_data_x )
{
    1d5c:	14c2      	push      	r4-r5
	if(SystemClk_data_x==HFOSC_48M)
    1d5e:	3b48      	cmpnei      	r3, 8
    1d60:	0828      	bt      	0x1db0	// 1db0 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x54>
	{
		IFC->CEDR=0X01;						//CLKEN
    1d62:	109d      	lrw      	r4, 0x20000060	// 1dd4 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x78>
    1d64:	3501      	movi      	r5, 1
    1d66:	9480      	ld.w      	r4, (r4, 0x0)
    1d68:	b4a1      	st.w      	r5, (r4, 0x4)
		IFC->MR=0X04|(0X00<<16);			//High speed mode
    1d6a:	3504      	movi      	r5, 4
    1d6c:	b4a5      	st.w      	r5, (r4, 0x14)
	if((SystemClk_data_x==EMOSC_24M)||(SystemClk_data_x==HFOSC_24M))
	{
		IFC->CEDR=0X01;						//CLKEN
		IFC->MR=0X02|(0X00<<16);			//Medium speed mode
	}
	if((SystemClk_data_x==EMOSC_12M)||(SystemClk_data_x==HFOSC_12M)||(SystemClk_data_x==EMOSC_16M))
    1d6e:	5b83      	subi      	r4, r3, 1
    1d70:	3c01      	cmphsi      	r4, 2
    1d72:	0c2b      	bf      	0x1dc8	// 1dc8 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x6c>
	{
		IFC->CEDR=0X01;						//CLKEN
		IFC->MR=0X01|(0X00<<16);			//Low speed mode
	}
	if((SystemClk_data_x==EMOSC_8M)||(SystemClk_data_x==EMOSC_4M)||(SystemClk_data_x==EMOSC_36K)
		||(SystemClk_data_x==IMOSC)||(SystemClk_data_x==ISOSC)||(SystemClk_data_x==HFOSC_6M))
    1d74:	5b8b      	subi      	r4, r3, 3
	if((SystemClk_data_x==EMOSC_8M)||(SystemClk_data_x==EMOSC_4M)||(SystemClk_data_x==EMOSC_36K)
    1d76:	3c04      	cmphsi      	r4, 5
    1d78:	0c03      	bf      	0x1d7e	// 1d7e <SystemCLK_HCLKDIV_PCLKDIV_Config+0x22>
		||(SystemClk_data_x==IMOSC)||(SystemClk_data_x==ISOSC)||(SystemClk_data_x==HFOSC_6M))
    1d7a:	3b4b      	cmpnei      	r3, 11
    1d7c:	0807      	bt      	0x1d8a	// 1d8a <SystemCLK_HCLKDIV_PCLKDIV_Config+0x2e>
	{
		IFC->CEDR=0X01;						//CLKEN
    1d7e:	1076      	lrw      	r3, 0x20000060	// 1dd4 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x78>
    1d80:	3401      	movi      	r4, 1
    1d82:	9360      	ld.w      	r3, (r3, 0x0)
    1d84:	b381      	st.w      	r4, (r3, 0x4)
		IFC->MR=0X00|(0X00<<16);			//Low speed mode
    1d86:	3400      	movi      	r4, 0
    1d88:	b385      	st.w      	r4, (r3, 0x14)
	}
	SYSCON->SCLKCR=SYSCLK_KEY | HCLK_DIV_X| SYSCLK_X;
    1d8a:	1094      	lrw      	r4, 0xd22d0000	// 1dd8 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x7c>
    1d8c:	6c10      	or      	r0, r4
    1d8e:	1074      	lrw      	r3, 0x2000005c	// 1ddc <SystemCLK_HCLKDIV_PCLKDIV_Config+0x80>
    1d90:	6c40      	or      	r1, r0
    1d92:	9360      	ld.w      	r3, (r3, 0x0)
	while (!(SYSCON->CKST & (1<<8))); 											// waiting for sysclk stable
    1d94:	3080      	movi      	r0, 128
	SYSCON->SCLKCR=SYSCLK_KEY | HCLK_DIV_X| SYSCLK_X;
    1d96:	b327      	st.w      	r1, (r3, 0x1c)
	while (!(SYSCON->CKST & (1<<8))); 											// waiting for sysclk stable
    1d98:	4001      	lsli      	r0, r0, 1
    1d9a:	9324      	ld.w      	r1, (r3, 0x10)
    1d9c:	6840      	and      	r1, r0
    1d9e:	3940      	cmpnei      	r1, 0
    1da0:	0ffd      	bf      	0x1d9a	// 1d9a <SystemCLK_HCLKDIV_PCLKDIV_Config+0x3e>
	SYSCON->PCLKCR=PCLK_KEY|PCLK_DIV_X;											//PCLK DIV 1 2 4 6 8 16		
    1da2:	1030      	lrw      	r1, 0xc33c0000	// 1de0 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x84>
    1da4:	6c48      	or      	r1, r2
    1da6:	b328      	st.w      	r1, (r3, 0x20)
	while(SYSCON->PCLKCR!=PCLK_DIV_X);											//Wait PCLK DIV
    1da8:	9328      	ld.w      	r1, (r3, 0x20)
    1daa:	644a      	cmpne      	r2, r1
    1dac:	0bfe      	bt      	0x1da8	// 1da8 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x4c>
}
    1dae:	1482      	pop      	r4-r5
	if((SystemClk_data_x==EMOSC_24M)||(SystemClk_data_x==HFOSC_24M))
    1db0:	3b40      	cmpnei      	r3, 0
    1db2:	0c03      	bf      	0x1db8	// 1db8 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x5c>
    1db4:	3b49      	cmpnei      	r3, 9
    1db6:	0807      	bt      	0x1dc4	// 1dc4 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x68>
		IFC->CEDR=0X01;						//CLKEN
    1db8:	1087      	lrw      	r4, 0x20000060	// 1dd4 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x78>
    1dba:	3501      	movi      	r5, 1
    1dbc:	9480      	ld.w      	r4, (r4, 0x0)
    1dbe:	b4a1      	st.w      	r5, (r4, 0x4)
		IFC->MR=0X02|(0X00<<16);			//Medium speed mode
    1dc0:	3502      	movi      	r5, 2
    1dc2:	b4a5      	st.w      	r5, (r4, 0x14)
	if((SystemClk_data_x==EMOSC_12M)||(SystemClk_data_x==HFOSC_12M)||(SystemClk_data_x==EMOSC_16M))
    1dc4:	3b4a      	cmpnei      	r3, 10
    1dc6:	0bd4      	bt      	0x1d6e	// 1d6e <SystemCLK_HCLKDIV_PCLKDIV_Config+0x12>
		IFC->CEDR=0X01;						//CLKEN
    1dc8:	1083      	lrw      	r4, 0x20000060	// 1dd4 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x78>
    1dca:	3501      	movi      	r5, 1
    1dcc:	9480      	ld.w      	r4, (r4, 0x0)
    1dce:	b4a1      	st.w      	r5, (r4, 0x4)
		IFC->MR=0X01|(0X00<<16);			//Low speed mode
    1dd0:	b4a5      	st.w      	r5, (r4, 0x14)
    1dd2:	07d1      	br      	0x1d74	// 1d74 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x18>
    1dd4:	20000060 	.long	0x20000060
    1dd8:	d22d0000 	.long	0xd22d0000
    1ddc:	2000005c 	.long	0x2000005c
    1de0:	c33c0000 	.long	0xc33c0000

Disassembly of section .text.SYSCON_HFOSC_SELECTE:

00001de4 <SYSCON_HFOSC_SELECTE>:
//EntryParameter:HFOSC_SELECTE_X
//HFOSC_SELECTE_X:HFOSC_SELECTE_48M,HFOSC_SELECTE_24M;HFOSC_SELECTE_12M;HFOSC_SELECTE_6M
//ReturnValue:NONE
/*************************************************************/  
void SYSCON_HFOSC_SELECTE(HFOSC_SELECTE_TypeDef HFOSC_SELECTE_X)
{		
    1de4:	14d1      	push      	r4, r15
    1de6:	6d03      	mov      	r4, r0
	SYSCON_General_CMD(DISABLE,ENDIS_HFOSC);					//disable HFOSC
    1de8:	3110      	movi      	r1, 16
    1dea:	3000      	movi      	r0, 0
    1dec:	e3ffffa0 	bsr      	0x1d2c	// 1d2c <SYSCON_General_CMD>
	SYSCON->OPT1 = (SYSCON->OPT1 & 0XFFFFFFCF)|HFOSC_SELECTE_X;
    1df0:	1066      	lrw      	r3, 0x2000005c	// 1e08 <SYSCON_HFOSC_SELECTE+0x24>
    1df2:	9360      	ld.w      	r3, (r3, 0x0)
    1df4:	9319      	ld.w      	r0, (r3, 0x64)
    1df6:	3884      	bclri      	r0, 4
    1df8:	3885      	bclri      	r0, 5
    1dfa:	6c10      	or      	r0, r4
    1dfc:	b319      	st.w      	r0, (r3, 0x64)
    1dfe:	3010      	movi      	r0, 16
    1e00:	e3ffff30 	bsr      	0x1c60	// 1c60 <SYSCON_General_CMD.part.0>
	SYSCON_General_CMD(ENABLE,ENDIS_HFOSC);						//enable HFOSC
}
    1e04:	1491      	pop      	r4, r15
    1e06:	0000      	bkpt
    1e08:	2000005c 	.long	0x2000005c

Disassembly of section .text.SYSCON_WDT_CMD:

00001e0c <SYSCON_WDT_CMD>:
//EntryParameter:,NewState
//NewState:ENABLE,DISABLE
//ReturnValue:NONE
/*************************************************************/
void SYSCON_WDT_CMD(FunctionalStatus NewState)
{
    1e0c:	106c      	lrw      	r3, 0x2000005c	// 1e3c <SYSCON_WDT_CMD+0x30>
	if(NewState != DISABLE)
    1e0e:	3840      	cmpnei      	r0, 0
	{
		SYSCON->IWDEDR=IWDTEDR_KEY|Enable_IWDT;
    1e10:	9360      	ld.w      	r3, (r3, 0x0)
    1e12:	237f      	addi      	r3, 128
	if(NewState != DISABLE)
    1e14:	0c0a      	bf      	0x1e28	// 1e28 <SYSCON_WDT_CMD+0x1c>
		SYSCON->IWDEDR=IWDTEDR_KEY|Enable_IWDT;
    1e16:	104b      	lrw      	r2, 0x78870000	// 1e40 <SYSCON_WDT_CMD+0x34>
		while(!(SYSCON->IWDCR&Check_IWDT_BUSY));
    1e18:	3180      	movi      	r1, 128
		SYSCON->IWDEDR=IWDTEDR_KEY|Enable_IWDT;
    1e1a:	b34f      	st.w      	r2, (r3, 0x3c)
		while(!(SYSCON->IWDCR&Check_IWDT_BUSY));
    1e1c:	4125      	lsli      	r1, r1, 5
    1e1e:	934d      	ld.w      	r2, (r3, 0x34)
    1e20:	6884      	and      	r2, r1
    1e22:	3a40      	cmpnei      	r2, 0
    1e24:	0ffd      	bf      	0x1e1e	// 1e1e <SYSCON_WDT_CMD+0x12>
	else
	{
		SYSCON->IWDEDR=IWDTEDR_KEY|Disable_IWDT;
		while(SYSCON->IWDCR&Check_IWDT_BUSY);
	}
}
    1e26:	783c      	jmp      	r15
		SYSCON->IWDEDR=IWDTEDR_KEY|Disable_IWDT;
    1e28:	1047      	lrw      	r2, 0x788755aa	// 1e44 <SYSCON_WDT_CMD+0x38>
		while(SYSCON->IWDCR&Check_IWDT_BUSY);
    1e2a:	3180      	movi      	r1, 128
		SYSCON->IWDEDR=IWDTEDR_KEY|Disable_IWDT;
    1e2c:	b34f      	st.w      	r2, (r3, 0x3c)
		while(SYSCON->IWDCR&Check_IWDT_BUSY);
    1e2e:	4125      	lsli      	r1, r1, 5
    1e30:	934d      	ld.w      	r2, (r3, 0x34)
    1e32:	6884      	and      	r2, r1
    1e34:	3a40      	cmpnei      	r2, 0
    1e36:	0bfd      	bt      	0x1e30	// 1e30 <SYSCON_WDT_CMD+0x24>
    1e38:	07f7      	br      	0x1e26	// 1e26 <SYSCON_WDT_CMD+0x1a>
    1e3a:	0000      	bkpt
    1e3c:	2000005c 	.long	0x2000005c
    1e40:	78870000 	.long	0x78870000
    1e44:	788755aa 	.long	0x788755aa

Disassembly of section .text.SYSCON_IWDCNT_Reload:

00001e48 <SYSCON_IWDCNT_Reload>:
//EntryParameter:NONE
//ReturnValue: NONE
/*************************************************************/
void SYSCON_IWDCNT_Reload(void)
{
	SYSCON->IWDCNT=CLR_IWDT;
    1e48:	1064      	lrw      	r3, 0x2000005c	// 1e58 <SYSCON_IWDCNT_Reload+0x10>
    1e4a:	32b4      	movi      	r2, 180
    1e4c:	9360      	ld.w      	r3, (r3, 0x0)
    1e4e:	237f      	addi      	r3, 128
    1e50:	4257      	lsli      	r2, r2, 23
    1e52:	b34e      	st.w      	r2, (r3, 0x38)
}
    1e54:	783c      	jmp      	r15
    1e56:	0000      	bkpt
    1e58:	2000005c 	.long	0x2000005c

Disassembly of section .text.SYSCON_IWDCNT_Config:

00001e5c <SYSCON_IWDCNT_Config>:
//IWDT_INTW_DIV_X:IWDT_INTW_DIV_1/2/3/4/4/5/6
//ReturnValue: NONE
/*************************************************************/
void SYSCON_IWDCNT_Config(IWDT_TIME_TypeDef IWDT_TIME_X , IWDT_TIMEDIV_TypeDef IWDT_INTW_DIV_X )
{
	SYSCON->IWDCR=IWDT_KEY|IWDT_TIME_X|IWDT_INTW_DIV_X;
    1e5c:	1044      	lrw      	r2, 0x87780000	// 1e6c <SYSCON_IWDCNT_Config+0x10>
    1e5e:	1065      	lrw      	r3, 0x2000005c	// 1e70 <SYSCON_IWDCNT_Config+0x14>
    1e60:	6c48      	or      	r1, r2
    1e62:	9360      	ld.w      	r3, (r3, 0x0)
    1e64:	6c04      	or      	r0, r1
    1e66:	237f      	addi      	r3, 128
    1e68:	b30d      	st.w      	r0, (r3, 0x34)
}
    1e6a:	783c      	jmp      	r15
    1e6c:	87780000 	.long	0x87780000
    1e70:	2000005c 	.long	0x2000005c

Disassembly of section .text.SYSCON_LVD_Config:

00001e74 <SYSCON_LVD_Config>:
//X_LVD_INT:ENABLE_LVD_INT,DISABLE_LVD_INT
//INTDET_POL_X:INTDET_POL_fall,INTDET_POL_X_rise,INTDET_POL_X_riseORfall
//ReturnValue: NONE
/*************************************************************/
void SYSCON_LVD_Config(X_LVDEN_TypeDef X_LVDEN , INTDET_LVL_X_TypeDef INTDET_LVL_X , RSTDET_LVL_X_TypeDef RSTDET_LVL_X , X_LVD_INT_TypeDef X_LVD_INT , INTDET_POL_X_TypeDef INTDET_POL_X)
{
    1e74:	14c3      	push      	r4-r6
    1e76:	9883      	ld.w      	r4, (r14, 0xc)
	//SYSCON->LVDCR=LVD_KEY;
	SYSCON->LVDCR=LVD_KEY|X_LVDEN|INTDET_LVL_X|RSTDET_LVL_X|X_LVD_INT|INTDET_POL_X;
    1e78:	10c5      	lrw      	r6, 0xb44b0000	// 1e8c <SYSCON_LVD_Config+0x18>
    1e7a:	6d18      	or      	r4, r6
    1e7c:	6cd0      	or      	r3, r4
    1e7e:	6c8c      	or      	r2, r3
    1e80:	6c48      	or      	r1, r2
    1e82:	10a4      	lrw      	r5, 0x2000005c	// 1e90 <SYSCON_LVD_Config+0x1c>
    1e84:	6c04      	or      	r0, r1
    1e86:	95a0      	ld.w      	r5, (r5, 0x0)
    1e88:	b513      	st.w      	r0, (r5, 0x4c)
}
    1e8a:	1483      	pop      	r4-r6
    1e8c:	b44b0000 	.long	0xb44b0000
    1e90:	2000005c 	.long	0x2000005c

Disassembly of section .text.LVD_Int_Enable:

00001e94 <LVD_Int_Enable>:
//EntryParameter:NONE
//ReturnValue: NONE
/*************************************************************/
void LVD_Int_Enable(void)
{
	SYSCON->ICR = LVD_INT_ST;				//clear LVD INT status
    1e94:	1066      	lrw      	r3, 0x2000005c	// 1eac <LVD_Int_Enable+0x18>
    1e96:	3180      	movi      	r1, 128
    1e98:	9360      	ld.w      	r3, (r3, 0x0)
    1e9a:	3280      	movi      	r2, 128
    1e9c:	604c      	addu      	r1, r3
    1e9e:	4244      	lsli      	r2, r2, 4
    1ea0:	b141      	st.w      	r2, (r1, 0x4)
	SYSCON->IMER  |= LVD_INT_ST;
    1ea2:	935d      	ld.w      	r2, (r3, 0x74)
    1ea4:	3aab      	bseti      	r2, 11
    1ea6:	b35d      	st.w      	r2, (r3, 0x74)
}
    1ea8:	783c      	jmp      	r15
    1eaa:	0000      	bkpt
    1eac:	2000005c 	.long	0x2000005c

Disassembly of section .text.IWDT_Int_Enable:

00001eb0 <IWDT_Int_Enable>:
//EntryParameter:NONE
//ReturnValue: NONE
/*************************************************************/
void IWDT_Int_Enable(void)
{
	SYSCON->ICR = IWDT_INT_ST;				//clear LVD INT status
    1eb0:	1066      	lrw      	r3, 0x2000005c	// 1ec8 <IWDT_Int_Enable+0x18>
    1eb2:	3180      	movi      	r1, 128
    1eb4:	9360      	ld.w      	r3, (r3, 0x0)
    1eb6:	3280      	movi      	r2, 128
    1eb8:	604c      	addu      	r1, r3
    1eba:	4241      	lsli      	r2, r2, 1
    1ebc:	b141      	st.w      	r2, (r1, 0x4)
	SYSCON->IMER  |= IWDT_INT_ST;
    1ebe:	935d      	ld.w      	r2, (r3, 0x74)
    1ec0:	3aa8      	bseti      	r2, 8
    1ec2:	b35d      	st.w      	r2, (r3, 0x74)
}
    1ec4:	783c      	jmp      	r15
    1ec6:	0000      	bkpt
    1ec8:	2000005c 	.long	0x2000005c

Disassembly of section .text.EXTI_trigger_CMD:

00001ecc <EXTI_trigger_CMD>:
//EXI_tringer_mode:_EXIRT,_EXIFT
//ReturnValue: LVD detection flag
/*************************************************************/
void EXTI_trigger_CMD(FunctionalStatus NewState , SYSCON_EXIPIN_TypeDef  EXIPIN , EXI_tringer_mode_TypeDef EXI_tringer_mode)
{
	switch(EXI_tringer_mode)
    1ecc:	3a40      	cmpnei      	r2, 0
    1ece:	0c04      	bf      	0x1ed6	// 1ed6 <EXTI_trigger_CMD+0xa>
    1ed0:	3a41      	cmpnei      	r2, 1
    1ed2:	0c0e      	bf      	0x1eee	// 1eee <EXTI_trigger_CMD+0x22>
		{
			SYSCON->EXIFT &=~EXIPIN;	
		}
		break;
	}	
}
    1ed4:	783c      	jmp      	r15
    1ed6:	106d      	lrw      	r3, 0x2000005c	// 1f08 <EXTI_trigger_CMD+0x3c>
		if(NewState != DISABLE)
    1ed8:	3840      	cmpnei      	r0, 0
			SYSCON->EXIRT |=EXIPIN;
    1eda:	9360      	ld.w      	r3, (r3, 0x0)
    1edc:	237f      	addi      	r3, 128
    1ede:	9345      	ld.w      	r2, (r3, 0x14)
		if(NewState != DISABLE)
    1ee0:	0c04      	bf      	0x1ee8	// 1ee8 <EXTI_trigger_CMD+0x1c>
			SYSCON->EXIRT |=EXIPIN;
    1ee2:	6c48      	or      	r1, r2
    1ee4:	b325      	st.w      	r1, (r3, 0x14)
    1ee6:	07f7      	br      	0x1ed4	// 1ed4 <EXTI_trigger_CMD+0x8>
			SYSCON->EXIRT &=~EXIPIN;	
    1ee8:	6885      	andn      	r2, r1
    1eea:	b345      	st.w      	r2, (r3, 0x14)
    1eec:	07f4      	br      	0x1ed4	// 1ed4 <EXTI_trigger_CMD+0x8>
    1eee:	1067      	lrw      	r3, 0x2000005c	// 1f08 <EXTI_trigger_CMD+0x3c>
		if(NewState != DISABLE)
    1ef0:	3840      	cmpnei      	r0, 0
			SYSCON->EXIFT |=EXIPIN;
    1ef2:	9360      	ld.w      	r3, (r3, 0x0)
    1ef4:	237f      	addi      	r3, 128
    1ef6:	9346      	ld.w      	r2, (r3, 0x18)
		if(NewState != DISABLE)
    1ef8:	0c04      	bf      	0x1f00	// 1f00 <EXTI_trigger_CMD+0x34>
			SYSCON->EXIFT |=EXIPIN;
    1efa:	6c48      	or      	r1, r2
    1efc:	b326      	st.w      	r1, (r3, 0x18)
    1efe:	07eb      	br      	0x1ed4	// 1ed4 <EXTI_trigger_CMD+0x8>
			SYSCON->EXIFT &=~EXIPIN;	
    1f00:	6885      	andn      	r2, r1
    1f02:	b346      	st.w      	r2, (r3, 0x18)
}
    1f04:	07e8      	br      	0x1ed4	// 1ed4 <EXTI_trigger_CMD+0x8>
    1f06:	0000      	bkpt
    1f08:	2000005c 	.long	0x2000005c

Disassembly of section .text.SYSCON_Int_Enable:

00001f0c <SYSCON_Int_Enable>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SYSCON_Int_Enable(void)
{
    INTC_ISER_WRITE(SYSCON_INT);    
    1f0c:	3202      	movi      	r2, 2
    1f0e:	1062      	lrw      	r3, 0xe000e100	// 1f14 <SYSCON_Int_Enable+0x8>
    1f10:	b340      	st.w      	r2, (r3, 0x0)
}
    1f12:	783c      	jmp      	r15
    1f14:	e000e100 	.long	0xe000e100

Disassembly of section .text.GPIO_Init:

00001f18 <GPIO_Init>:
//byte:Lowbyte(PIN_0~7),Highbyte(PIN_8~15)
//Dir:0:output 1:input
//ReturnValue:NONE
/*************************************************************/  
void GPIO_Init(CSP_GPIO_T *GPIOx,uint8_t PinNum,GPIO_Dir_TypeDef Dir)
{
    1f18:	14d1      	push      	r4, r15
    uint32_t data_temp;
    uint8_t GPIO_Pin;
    if(PinNum<8)
    1f1a:	3907      	cmphsi      	r1, 8
{
    1f1c:	6d03      	mov      	r4, r0
    if(PinNum<8)
    1f1e:	0830      	bt      	0x1f7e	// 1f7e <GPIO_Init+0x66>
    {
    switch (PinNum)
    1f20:	5903      	subi      	r0, r1, 1
    1f22:	3806      	cmphsi      	r0, 7
    1f24:	0827      	bt      	0x1f72	// 1f72 <GPIO_Init+0x5a>
    1f26:	e3fff6eb 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    1f2a:	1004      	.short	0x1004
    1f2c:	1d1a1613 	.long	0x1d1a1613
    1f30:	0021      	.short	0x0021
    {
        case 0:data_temp=0xfffffff0;GPIO_Pin=0;break;
        case 1:data_temp=0xffffff0f;GPIO_Pin=4;break;
    1f32:	3300      	movi      	r3, 0
    1f34:	3104      	movi      	r1, 4
    1f36:	2bf0      	subi      	r3, 241
        case 4:data_temp=0xfff0ffff;GPIO_Pin=16;break;
        case 5:data_temp=0xff0fffff;GPIO_Pin=20;break;
        case 6:data_temp=0xf0ffffff;GPIO_Pin=24;break;
        case 7:data_temp=0x0fffffff;GPIO_Pin=28;break;
    }
        if (Dir)
    1f38:	3a40      	cmpnei      	r2, 0
        {
          (GPIOx)->CONLR =((GPIOx)->CONLR & data_temp) | 1<<GPIO_Pin;
    1f3a:	9440      	ld.w      	r2, (r4, 0x0)
    1f3c:	68c8      	and      	r3, r2
        if (Dir)
    1f3e:	0c1e      	bf      	0x1f7a	// 1f7a <GPIO_Init+0x62>
          (GPIOx)->CONLR =((GPIOx)->CONLR & data_temp) | 1<<GPIO_Pin;
    1f40:	3201      	movi      	r2, 1
        }
        else
        {
         (GPIOx)->CONLR = ((GPIOx)->CONLR & data_temp) | 2<<GPIO_Pin; 
    1f42:	7084      	lsl      	r2, r1
    1f44:	6cc8      	or      	r3, r2
    1f46:	b460      	st.w      	r3, (r4, 0x0)
        else
        {
         (GPIOx)->CONHR = ((GPIOx)->CONHR & data_temp) | 2<<GPIO_Pin;    
        }
    }
}
    1f48:	1491      	pop      	r4, r15
        case 2:data_temp=0xfffff0ff;GPIO_Pin=8;break;
    1f4a:	3108      	movi      	r1, 8
    1f4c:	1166      	lrw      	r3, 0xfffff0ff	// 1fe4 <GPIO_Init+0xcc>
    1f4e:	07f5      	br      	0x1f38	// 1f38 <GPIO_Init+0x20>
        case 3:data_temp=0xffff0fff;GPIO_Pin=12;break;
    1f50:	310c      	movi      	r1, 12
    1f52:	1166      	lrw      	r3, 0xffff0fff	// 1fe8 <GPIO_Init+0xd0>
    1f54:	07f2      	br      	0x1f38	// 1f38 <GPIO_Init+0x20>
        case 4:data_temp=0xfff0ffff;GPIO_Pin=16;break;
    1f56:	3110      	movi      	r1, 16
    1f58:	1165      	lrw      	r3, 0xfff10000	// 1fec <GPIO_Init+0xd4>
        case 6:data_temp=0xf0ffffff;GPIO_Pin=24;break;
    1f5a:	2b00      	subi      	r3, 1
    1f5c:	07ee      	br      	0x1f38	// 1f38 <GPIO_Init+0x20>
        case 5:data_temp=0xff0fffff;GPIO_Pin=20;break;
    1f5e:	3114      	movi      	r1, 20
    1f60:	1164      	lrw      	r3, 0xff100000	// 1ff0 <GPIO_Init+0xd8>
    1f62:	07fc      	br      	0x1f5a	// 1f5a <GPIO_Init+0x42>
        case 6:data_temp=0xf0ffffff;GPIO_Pin=24;break;
    1f64:	33f1      	movi      	r3, 241
    1f66:	3118      	movi      	r1, 24
    1f68:	4378      	lsli      	r3, r3, 24
    1f6a:	07f8      	br      	0x1f5a	// 1f5a <GPIO_Init+0x42>
        case 7:data_temp=0x0fffffff;GPIO_Pin=28;break;
    1f6c:	311c      	movi      	r1, 28
    1f6e:	1162      	lrw      	r3, 0xfffffff	// 1ff4 <GPIO_Init+0xdc>
    1f70:	07e4      	br      	0x1f38	// 1f38 <GPIO_Init+0x20>
        case 0:data_temp=0xfffffff0;GPIO_Pin=0;break;
    1f72:	3300      	movi      	r3, 0
    1f74:	3100      	movi      	r1, 0
    1f76:	2b0f      	subi      	r3, 16
    1f78:	07e0      	br      	0x1f38	// 1f38 <GPIO_Init+0x20>
         (GPIOx)->CONLR = ((GPIOx)->CONLR & data_temp) | 2<<GPIO_Pin; 
    1f7a:	3202      	movi      	r2, 2
    1f7c:	07e3      	br      	0x1f42	// 1f42 <GPIO_Init+0x2a>
    else if (PinNum<16)
    1f7e:	390f      	cmphsi      	r1, 16
    1f80:	0be4      	bt      	0x1f48	// 1f48 <GPIO_Init+0x30>
        switch (PinNum)
    1f82:	2908      	subi      	r1, 9
    1f84:	3906      	cmphsi      	r1, 7
    1f86:	6c07      	mov      	r0, r1
    1f88:	0827      	bt      	0x1fd6	// 1fd6 <GPIO_Init+0xbe>
    1f8a:	e3fff6b9 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    1f8e:	1004      	.short	0x1004
    1f90:	1d1a1613 	.long	0x1d1a1613
    1f94:	0021      	.short	0x0021
        case 9:data_temp=0xffffff0f;GPIO_Pin=4;break;
    1f96:	3300      	movi      	r3, 0
    1f98:	3104      	movi      	r1, 4
    1f9a:	2bf0      	subi      	r3, 241
      if (Dir)
    1f9c:	3a40      	cmpnei      	r2, 0
        (GPIOx)->CONHR = ((GPIOx)->CONHR & data_temp) | 1<<GPIO_Pin;  
    1f9e:	9441      	ld.w      	r2, (r4, 0x4)
    1fa0:	68c8      	and      	r3, r2
      if (Dir)
    1fa2:	0c1e      	bf      	0x1fde	// 1fde <GPIO_Init+0xc6>
        (GPIOx)->CONHR = ((GPIOx)->CONHR & data_temp) | 1<<GPIO_Pin;  
    1fa4:	3201      	movi      	r2, 1
         (GPIOx)->CONHR = ((GPIOx)->CONHR & data_temp) | 2<<GPIO_Pin;    
    1fa6:	7084      	lsl      	r2, r1
    1fa8:	6cc8      	or      	r3, r2
    1faa:	b461      	st.w      	r3, (r4, 0x4)
}
    1fac:	07ce      	br      	0x1f48	// 1f48 <GPIO_Init+0x30>
        case 10:data_temp=0xfffff0ff;GPIO_Pin=8;break;
    1fae:	3108      	movi      	r1, 8
    1fb0:	106d      	lrw      	r3, 0xfffff0ff	// 1fe4 <GPIO_Init+0xcc>
    1fb2:	07f5      	br      	0x1f9c	// 1f9c <GPIO_Init+0x84>
        case 11:data_temp=0xffff0fff;GPIO_Pin=12;break;
    1fb4:	310c      	movi      	r1, 12
    1fb6:	106d      	lrw      	r3, 0xffff0fff	// 1fe8 <GPIO_Init+0xd0>
    1fb8:	07f2      	br      	0x1f9c	// 1f9c <GPIO_Init+0x84>
        case 12:data_temp=0xfff0ffff;GPIO_Pin=16;break;
    1fba:	3110      	movi      	r1, 16
    1fbc:	106c      	lrw      	r3, 0xfff10000	// 1fec <GPIO_Init+0xd4>
        case 14:data_temp=0xf0ffffff;GPIO_Pin=24;break;
    1fbe:	2b00      	subi      	r3, 1
    1fc0:	07ee      	br      	0x1f9c	// 1f9c <GPIO_Init+0x84>
        case 13:data_temp=0xff0fffff;GPIO_Pin=20;break;
    1fc2:	3114      	movi      	r1, 20
    1fc4:	106b      	lrw      	r3, 0xff100000	// 1ff0 <GPIO_Init+0xd8>
    1fc6:	07fc      	br      	0x1fbe	// 1fbe <GPIO_Init+0xa6>
        case 14:data_temp=0xf0ffffff;GPIO_Pin=24;break;
    1fc8:	33f1      	movi      	r3, 241
    1fca:	3118      	movi      	r1, 24
    1fcc:	4378      	lsli      	r3, r3, 24
    1fce:	07f8      	br      	0x1fbe	// 1fbe <GPIO_Init+0xa6>
        case 15:data_temp=0x0fffffff;GPIO_Pin=28;break;
    1fd0:	311c      	movi      	r1, 28
    1fd2:	1069      	lrw      	r3, 0xfffffff	// 1ff4 <GPIO_Init+0xdc>
    1fd4:	07e4      	br      	0x1f9c	// 1f9c <GPIO_Init+0x84>
        case 8:data_temp=0xfffffff0;GPIO_Pin=0;break;
    1fd6:	3300      	movi      	r3, 0
    1fd8:	3100      	movi      	r1, 0
    1fda:	2b0f      	subi      	r3, 16
    1fdc:	07e0      	br      	0x1f9c	// 1f9c <GPIO_Init+0x84>
         (GPIOx)->CONHR = ((GPIOx)->CONHR & data_temp) | 2<<GPIO_Pin;    
    1fde:	3202      	movi      	r2, 2
    1fe0:	07e3      	br      	0x1fa6	// 1fa6 <GPIO_Init+0x8e>
    1fe2:	0000      	bkpt
    1fe4:	fffff0ff 	.long	0xfffff0ff
    1fe8:	ffff0fff 	.long	0xffff0fff
    1fec:	fff10000 	.long	0xfff10000
    1ff0:	ff100000 	.long	0xff100000
    1ff4:	0fffffff 	.long	0x0fffffff

Disassembly of section .text.GPIO_Set_Value:

00001ff8 <GPIO_Set_Value>:
//bitposi:0~15 bitval:0~1 0=low 1=high
//ReturnValue:VALUE
/*************************************************************/
void GPIO_Set_Value(CSP_GPIO_T *GPIOx,uint8_t bitposi,uint8_t bitval)
{
    if (bitval==1)
    1ff8:	3a41      	cmpnei      	r2, 1
    1ffa:	0804      	bt      	0x2002	// 2002 <GPIO_Set_Value+0xa>
    {
        (GPIOx)->SODR = (1ul<<bitposi);
    1ffc:	7084      	lsl      	r2, r1
    1ffe:	b043      	st.w      	r2, (r0, 0xc)
    }
    else if ((bitval==0))
    {
        (GPIOx)->CODR = (1ul<<bitposi);
    }
}
    2000:	783c      	jmp      	r15
    else if ((bitval==0))
    2002:	3a40      	cmpnei      	r2, 0
    2004:	0bfe      	bt      	0x2000	// 2000 <GPIO_Set_Value+0x8>
        (GPIOx)->CODR = (1ul<<bitposi);
    2006:	3301      	movi      	r3, 1
    2008:	70c4      	lsl      	r3, r1
    200a:	b064      	st.w      	r3, (r0, 0x10)
}
    200c:	07fa      	br      	0x2000	// 2000 <GPIO_Set_Value+0x8>

Disassembly of section .text.WWDT_CONFIG:

00002010 <WWDT_CONFIG>:
//WWDT CONFIG
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/ 
void WWDT_CONFIG(WWDT_PSCDIV_TypeDef PSCDIVX,U8_T WND_DATA,WWDT_DBGEN_TypeDef DBGENX)
{
    2010:	14c1      	push      	r4
	WWDT->CFGR =WND_DATA;
    2012:	1065      	lrw      	r3, 0x20000010	// 2024 <WWDT_CONFIG+0x14>
    2014:	9380      	ld.w      	r4, (r3, 0x0)
    2016:	b421      	st.w      	r1, (r4, 0x4)
	WWDT->CFGR |= PSCDIVX |DBGENX;
    2018:	9461      	ld.w      	r3, (r4, 0x4)
    201a:	6c8c      	or      	r2, r3
    201c:	6c08      	or      	r0, r2
    201e:	b401      	st.w      	r0, (r4, 0x4)
}
    2020:	1481      	pop      	r4
    2022:	0000      	bkpt
    2024:	20000010 	.long	0x20000010

Disassembly of section .text.WWDT_CNT_Load:

00002028 <WWDT_CNT_Load>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/ 
void WWDT_CNT_Load(U8_T cnt_data)
{
	WWDT->CR  |= cnt_data;						//SET
    2028:	1063      	lrw      	r3, 0x20000010	// 2034 <WWDT_CNT_Load+0xc>
    202a:	9360      	ld.w      	r3, (r3, 0x0)
    202c:	9340      	ld.w      	r2, (r3, 0x0)
    202e:	6c08      	or      	r0, r2
    2030:	b300      	st.w      	r0, (r3, 0x0)
}
    2032:	783c      	jmp      	r15
    2034:	20000010 	.long	0x20000010

Disassembly of section .text.WWDT_Int_Config:

00002038 <WWDT_Int_Config>:
//EntryParameter:NONE
//ReturnValue: NONE
/*************************************************************/
void WWDT_Int_Config(FunctionalStatus NewState)
{
	if (NewState != DISABLE)
    2038:	3840      	cmpnei      	r0, 0
    203a:	106a      	lrw      	r3, 0x20000010	// 2060 <WWDT_Int_Config+0x28>
    203c:	0c0b      	bf      	0x2052	// 2052 <WWDT_Int_Config+0x1a>
	{
		WWDT->ICR = WWDT_EVI;				
    203e:	9360      	ld.w      	r3, (r3, 0x0)
    2040:	3101      	movi      	r1, 1
    2042:	b325      	st.w      	r1, (r3, 0x14)
		WWDT->IMCR  |= WWDT_EVI;
    2044:	9344      	ld.w      	r2, (r3, 0x10)
    2046:	6c84      	or      	r2, r1
    2048:	b344      	st.w      	r2, (r3, 0x10)
		INTC_ISER_WRITE(WWDT_INT);  
    204a:	3240      	movi      	r2, 64
    204c:	1066      	lrw      	r3, 0xe000e100	// 2064 <WWDT_Int_Config+0x2c>
	}
	else
	{
		WWDT->IMCR  &= ~WWDT_EVI;					//CLR
		INTC_ICER_WRITE(WWDT_INT);  
    204e:	b340      	st.w      	r2, (r3, 0x0)
	}
    2050:	783c      	jmp      	r15
		WWDT->IMCR  &= ~WWDT_EVI;					//CLR
    2052:	9340      	ld.w      	r2, (r3, 0x0)
    2054:	9264      	ld.w      	r3, (r2, 0x10)
    2056:	3b80      	bclri      	r3, 0
    2058:	b264      	st.w      	r3, (r2, 0x10)
		INTC_ICER_WRITE(WWDT_INT);  
    205a:	3240      	movi      	r2, 64
    205c:	1063      	lrw      	r3, 0xe000e180	// 2068 <WWDT_Int_Config+0x30>
    205e:	07f8      	br      	0x204e	// 204e <WWDT_Int_Config+0x16>
    2060:	20000010 	.long	0x20000010
    2064:	e000e100 	.long	0xe000e100
    2068:	e000e180 	.long	0xe000e180

Disassembly of section .text.BT_ConfigInterrupt_CMD:

0000206c <BT_ConfigInterrupt_CMD>:
//NewState:ENABLE,DISABLE
//ReturnValue:NONE
/*************************************************************/ 
void BT_ConfigInterrupt_CMD(CSP_BT_T *BTx,FunctionalStatus NewState,BT_IMSCR_TypeDef BT_IMSCR_X)
{
	if (NewState != DISABLE)
    206c:	3940      	cmpnei      	r1, 0
	{
		BTx->IMCR  |= BT_IMSCR_X;						
    206e:	906b      	ld.w      	r3, (r0, 0x2c)
	if (NewState != DISABLE)
    2070:	0c04      	bf      	0x2078	// 2078 <BT_ConfigInterrupt_CMD+0xc>
		BTx->IMCR  |= BT_IMSCR_X;						
    2072:	6c8c      	or      	r2, r3
    2074:	b04b      	st.w      	r2, (r0, 0x2c)
	}
	else
	{
		BTx->IMCR  &= ~BT_IMSCR_X;					
	}
}
    2076:	783c      	jmp      	r15
		BTx->IMCR  &= ~BT_IMSCR_X;					
    2078:	68c9      	andn      	r3, r2
    207a:	b06b      	st.w      	r3, (r0, 0x2c)
}
    207c:	07fd      	br      	0x2076	// 2076 <BT_ConfigInterrupt_CMD+0xa>

Disassembly of section .text.UART0_DeInit:

00002080 <UART0_DeInit>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART0_DeInit(void)
{
    UART0->DATA = UART_RESET_VALUE;
    2080:	1065      	lrw      	r3, 0x20000040	// 2094 <UART0_DeInit+0x14>
    2082:	3200      	movi      	r2, 0
    2084:	9360      	ld.w      	r3, (r3, 0x0)
    2086:	b340      	st.w      	r2, (r3, 0x0)
    UART0->SR   = UART_RESET_VALUE;
    2088:	b341      	st.w      	r2, (r3, 0x4)
    UART0->CTRL = UART_RESET_VALUE;
    208a:	b342      	st.w      	r2, (r3, 0x8)
    UART0->ISR  = UART_RESET_VALUE;
    208c:	b343      	st.w      	r2, (r3, 0xc)
    UART0->BRDIV =UART_RESET_VALUE;
    208e:	b344      	st.w      	r2, (r3, 0x10)
}
    2090:	783c      	jmp      	r15
    2092:	0000      	bkpt
    2094:	20000040 	.long	0x20000040

Disassembly of section .text.UART_IO_Init:

00002098 <UART_IO_Init>:
//UART_IO_G:0 1
//ReturnValue:NONE
/*************************************************************/
void UART_IO_Init(UART_NUM_TypeDef IO_UART_NUM , U8_T UART_IO_G)
{
    if (IO_UART_NUM==IO_UART0)
    2098:	3840      	cmpnei      	r0, 0
    209a:	0819      	bt      	0x20cc	// 20cc <UART_IO_Init+0x34>
    {
		if(UART_IO_G==0)
    209c:	3940      	cmpnei      	r1, 0
    209e:	080a      	bt      	0x20b2	// 20b2 <UART_IO_Init+0x1a>
		{
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFF00)  | 0x00000044;       //PA0.1->RXD0, PA0.0->TXD0
    20a0:	1172      	lrw      	r3, 0x2000004c	// 2168 <UART_IO_Init+0xd0>
    20a2:	31ff      	movi      	r1, 255
    20a4:	9340      	ld.w      	r2, (r3, 0x0)
    20a6:	9260      	ld.w      	r3, (r2, 0x0)
    20a8:	68c5      	andn      	r3, r1
    20aa:	3ba2      	bseti      	r3, 2
    20ac:	3ba6      	bseti      	r3, 6
    }
	 if (IO_UART_NUM==IO_UART2)
    {
        if(UART_IO_G==0)
		{
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFF00)  | 0x00000077;       //PA0.0->RXD2, PA0.1->TXD2
    20ae:	b260      	st.w      	r3, (r2, 0x0)
    20b0:	040d      	br      	0x20ca	// 20ca <UART_IO_Init+0x32>
		else if(UART_IO_G==1)
    20b2:	3941      	cmpnei      	r1, 1
    20b4:	080b      	bt      	0x20ca	// 20ca <UART_IO_Init+0x32>
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFF0FFFF)  | 0x00070000;      
    20b6:	116d      	lrw      	r3, 0x2000004c	// 2168 <UART_IO_Init+0xd0>
    20b8:	32f0      	movi      	r2, 240
    20ba:	9320      	ld.w      	r1, (r3, 0x0)
    20bc:	424c      	lsli      	r2, r2, 12
    20be:	9161      	ld.w      	r3, (r1, 0x4)
    20c0:	68c9      	andn      	r3, r2
    20c2:	32e0      	movi      	r2, 224
    20c4:	424b      	lsli      	r2, r2, 11
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)  | 0x00700000;       
    20c6:	6cc8      	or      	r3, r2
    20c8:	b161      	st.w      	r3, (r1, 0x4)
		else if(UART_IO_G==2)
		{
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFF00FFFF) | 0X00660000;        //PB0.5->RXD2, PB0.4->TXD2
		}
    }
}
    20ca:	783c      	jmp      	r15
     if (IO_UART_NUM==IO_UART1)
    20cc:	3841      	cmpnei      	r0, 1
    20ce:	082b      	bt      	0x2124	// 2124 <UART_IO_Init+0x8c>
        if(UART_IO_G==0)
    20d0:	3940      	cmpnei      	r1, 0
    20d2:	0812      	bt      	0x20f6	// 20f6 <UART_IO_Init+0x5e>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFF0)  | 0x00000007;       //PA0.13->RXD1, PB0.0->TXD1
    20d4:	1166      	lrw      	r3, 0x20000048	// 216c <UART_IO_Init+0xd4>
    20d6:	310f      	movi      	r1, 15
    20d8:	9340      	ld.w      	r2, (r3, 0x0)
    20da:	9260      	ld.w      	r3, (r2, 0x0)
    20dc:	68c5      	andn      	r3, r1
    20de:	3107      	movi      	r1, 7
    20e0:	6cc4      	or      	r3, r1
    20e2:	b260      	st.w      	r3, (r2, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)  | 0x00700000;       
    20e4:	32f0      	movi      	r2, 240
    20e6:	1161      	lrw      	r3, 0x2000004c	// 2168 <UART_IO_Init+0xd0>
    20e8:	4250      	lsli      	r2, r2, 16
    20ea:	9320      	ld.w      	r1, (r3, 0x0)
    20ec:	9161      	ld.w      	r3, (r1, 0x4)
    20ee:	68c9      	andn      	r3, r2
    20f0:	32e0      	movi      	r2, 224
    20f2:	424f      	lsli      	r2, r2, 15
    20f4:	07e9      	br      	0x20c6	// 20c6 <UART_IO_Init+0x2e>
		else if(UART_IO_G==1)
    20f6:	3941      	cmpnei      	r1, 1
    20f8:	080c      	bt      	0x2110	// 2110 <UART_IO_Init+0x78>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFF00FFF) | 0X00077000;        //PA0.4->RXD1, PA0.3->TXD1
    20fa:	107c      	lrw      	r3, 0x2000004c	// 2168 <UART_IO_Init+0xd0>
    20fc:	32ff      	movi      	r2, 255
    20fe:	9320      	ld.w      	r1, (r3, 0x0)
    2100:	424c      	lsli      	r2, r2, 12
    2102:	9160      	ld.w      	r3, (r1, 0x0)
    2104:	68c9      	andn      	r3, r2
    2106:	32ee      	movi      	r2, 238
    2108:	424b      	lsli      	r2, r2, 11
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFF00FFFF) | 0X00660000;        //PB0.5->RXD2, PB0.4->TXD2
    210a:	6cc8      	or      	r3, r2
    210c:	b160      	st.w      	r3, (r1, 0x0)
}
    210e:	07de      	br      	0x20ca	// 20ca <UART_IO_Init+0x32>
		else if(UART_IO_G==2)
    2110:	3942      	cmpnei      	r1, 2
    2112:	0bdc      	bt      	0x20ca	// 20ca <UART_IO_Init+0x32>
			GPIOA0->CONHR = (GPIOA0->CONHR&0X00FFFFFF) | 0X77000000;        //PA0.15->RXD1, PA0.14->TXD1
    2114:	1075      	lrw      	r3, 0x2000004c	// 2168 <UART_IO_Init+0xd0>
    2116:	32ee      	movi      	r2, 238
    2118:	9320      	ld.w      	r1, (r3, 0x0)
    211a:	9161      	ld.w      	r3, (r1, 0x4)
    211c:	4368      	lsli      	r3, r3, 8
    211e:	4b68      	lsri      	r3, r3, 8
    2120:	4257      	lsli      	r2, r2, 23
    2122:	07d2      	br      	0x20c6	// 20c6 <UART_IO_Init+0x2e>
	 if (IO_UART_NUM==IO_UART2)
    2124:	3842      	cmpnei      	r0, 2
    2126:	0bd2      	bt      	0x20ca	// 20ca <UART_IO_Init+0x32>
        if(UART_IO_G==0)
    2128:	3940      	cmpnei      	r1, 0
    212a:	0809      	bt      	0x213c	// 213c <UART_IO_Init+0xa4>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFF00)  | 0x00000077;       //PA0.0->RXD2, PA0.1->TXD2
    212c:	106f      	lrw      	r3, 0x2000004c	// 2168 <UART_IO_Init+0xd0>
    212e:	31ff      	movi      	r1, 255
    2130:	9340      	ld.w      	r2, (r3, 0x0)
    2132:	9260      	ld.w      	r3, (r2, 0x0)
    2134:	68c5      	andn      	r3, r1
    2136:	3177      	movi      	r1, 119
    2138:	6cc4      	or      	r3, r1
    213a:	07ba      	br      	0x20ae	// 20ae <UART_IO_Init+0x16>
		else if(UART_IO_G==1)
    213c:	3941      	cmpnei      	r1, 1
    213e:	0809      	bt      	0x2150	// 2150 <UART_IO_Init+0xb8>
			GPIOA0->CONLR = (GPIOA0->CONLR&0X00FFFFFF) | 0X77000000;        //PA0.7->RXD2, PA0.6->TXD2
    2140:	106a      	lrw      	r3, 0x2000004c	// 2168 <UART_IO_Init+0xd0>
    2142:	32ee      	movi      	r2, 238
    2144:	9320      	ld.w      	r1, (r3, 0x0)
    2146:	9160      	ld.w      	r3, (r1, 0x0)
    2148:	4368      	lsli      	r3, r3, 8
    214a:	4b68      	lsri      	r3, r3, 8
    214c:	4257      	lsli      	r2, r2, 23
    214e:	07de      	br      	0x210a	// 210a <UART_IO_Init+0x72>
		else if(UART_IO_G==2)
    2150:	3942      	cmpnei      	r1, 2
    2152:	0bbc      	bt      	0x20ca	// 20ca <UART_IO_Init+0x32>
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFF00FFFF) | 0X00660000;        //PB0.5->RXD2, PB0.4->TXD2
    2154:	1066      	lrw      	r3, 0x20000048	// 216c <UART_IO_Init+0xd4>
    2156:	32ff      	movi      	r2, 255
    2158:	9320      	ld.w      	r1, (r3, 0x0)
    215a:	4250      	lsli      	r2, r2, 16
    215c:	9160      	ld.w      	r3, (r1, 0x0)
    215e:	68c9      	andn      	r3, r2
    2160:	32cc      	movi      	r2, 204
    2162:	424f      	lsli      	r2, r2, 15
    2164:	07d3      	br      	0x210a	// 210a <UART_IO_Init+0x72>
    2166:	0000      	bkpt
    2168:	2000004c 	.long	0x2000004c
    216c:	20000048 	.long	0x20000048

Disassembly of section .text.UARTInit:

00002170 <UARTInit>:
//ReturnValue:NONE
/*************************************************************/
void UARTInit(CSP_UART_T *uart,U16_T baudrate_u16,UART_PAR_TypeDef PAR_DAT)
{
   // Set Transmitter Enable
   CSP_UART_SET_CTRL(uart, UART_TX | UART_RX |PAR_DAT);
    2170:	3aa0      	bseti      	r2, 0
    2172:	3aa1      	bseti      	r2, 1
    2174:	b042      	st.w      	r2, (r0, 0x8)
   // Set Baudrate
   CSP_UART_SET_BRDIV(uart, baudrate_u16);
    2176:	b024      	st.w      	r1, (r0, 0x10)
}
    2178:	783c      	jmp      	r15

Disassembly of section .text.UARTTxByte:

0000217a <UARTTxByte>:
/*************************************************************/
void UARTTxByte(CSP_UART_T *uart,U8_T txdata_u8)
{
	unsigned int  DataI;
	// Write the transmit buffer
	CSP_UART_SET_DATA(uart,txdata_u8);
    217a:	b020      	st.w      	r1, (r0, 0x0)
	do
	{
		DataI = CSP_UART_GET_SR(uart);
		DataI = DataI & UART_TX_FULL;
    217c:	3201      	movi      	r2, 1
		DataI = CSP_UART_GET_SR(uart);
    217e:	9061      	ld.w      	r3, (r0, 0x4)
		DataI = DataI & UART_TX_FULL;
    2180:	68c8      	and      	r3, r2
	}
	while(DataI == UART_TX_FULL);    //Loop  when tx is full
    2182:	3b40      	cmpnei      	r3, 0
    2184:	0bfd      	bt      	0x217e	// 217e <UARTTxByte+0x4>
}
    2186:	783c      	jmp      	r15

Disassembly of section .text.ADC12_Control:

00002188 <ADC12_Control>:
//ReturnValue:NONE
/*************************************************************/  
  //control:ADC enable/disable ,start/stop,swrst
void ADC12_Control(ADC12_Control_TypeDef ADC12_Control_x )
{
	ADC0->CR |= ADC12_Control_x;							// 
    2188:	1063      	lrw      	r3, 0x20000050	// 2194 <ADC12_Control+0xc>
    218a:	9340      	ld.w      	r2, (r3, 0x0)
    218c:	9264      	ld.w      	r3, (r2, 0x10)
    218e:	6c0c      	or      	r0, r3
    2190:	b204      	st.w      	r0, (r2, 0x10)
}
    2192:	783c      	jmp      	r15
    2194:	20000050 	.long	0x20000050

Disassembly of section .text.ADC12_CMD.part.0:

00002198 <ADC12_CMD.part.0>:
//ADC12 ENABLE
//EntryParameter:NewState
//NewState:ENABLE , DISABLE
//ReturnValue:NONE
/*************************************************************/ 
void ADC12_CMD(FunctionalStatus NewState)
    2198:	14d0      	push      	r15
{
	if (NewState != DISABLE)
	{
		ADC12_Control(ADC12_ADCEN);						//ADC12 ENABLE
    219a:	3002      	movi      	r0, 2
    219c:	e3fffff6 	bsr      	0x2188	// 2188 <ADC12_Control>
		while(!(ADC0->SR &ADC12_ADCENS));
    21a0:	1065      	lrw      	r3, 0x20000050	// 21b4 <ADC12_CMD.part.0+0x1c>
    21a2:	3280      	movi      	r2, 128
    21a4:	9320      	ld.w      	r1, (r3, 0x0)
    21a6:	4241      	lsli      	r2, r2, 1
    21a8:	9168      	ld.w      	r3, (r1, 0x20)
    21aa:	68c8      	and      	r3, r2
    21ac:	3b40      	cmpnei      	r3, 0
    21ae:	0ffd      	bf      	0x21a8	// 21a8 <ADC12_CMD.part.0+0x10>
	else
	{
		ADC12_Control(ADC12_ADCDIS);					//ADC12 DISABLE
		while(ADC0->SR&ADC12_ADCENS);
	}
}
    21b0:	1490      	pop      	r15
    21b2:	0000      	bkpt
    21b4:	20000050 	.long	0x20000050

Disassembly of section .text.ADC12_CLK_CMD:

000021b8 <ADC12_CLK_CMD>:
	if (NewState != DISABLE)
    21b8:	3940      	cmpnei      	r1, 0
    21ba:	106a      	lrw      	r3, 0x20000050	// 21e0 <ADC12_CLK_CMD+0x28>
		ADC0->ECR  |= ADC_CLK_CMD;						//ENABLE
    21bc:	9340      	ld.w      	r2, (r3, 0x0)
	if (NewState != DISABLE)
    21be:	0c09      	bf      	0x21d0	// 21d0 <ADC12_CLK_CMD+0x18>
		ADC0->ECR  |= ADC_CLK_CMD;						//ENABLE
    21c0:	9260      	ld.w      	r3, (r2, 0x0)
    21c2:	6cc0      	or      	r3, r0
    21c4:	b260      	st.w      	r3, (r2, 0x0)
		while(!(ADC0->PMSR&ADC_CLK_CMD));
    21c6:	9262      	ld.w      	r3, (r2, 0x8)
    21c8:	68c0      	and      	r3, r0
    21ca:	3b40      	cmpnei      	r3, 0
    21cc:	0ffd      	bf      	0x21c6	// 21c6 <ADC12_CLK_CMD+0xe>
}
    21ce:	783c      	jmp      	r15
		ADC0->DCR  |= ADC_CLK_CMD;						//DISABLE
    21d0:	9261      	ld.w      	r3, (r2, 0x4)
    21d2:	6cc0      	or      	r3, r0
    21d4:	b261      	st.w      	r3, (r2, 0x4)
		while(ADC0->PMSR&ADC_CLK_CMD);
    21d6:	9262      	ld.w      	r3, (r2, 0x8)
    21d8:	68c0      	and      	r3, r0
    21da:	3b40      	cmpnei      	r3, 0
    21dc:	0bfd      	bt      	0x21d6	// 21d6 <ADC12_CLK_CMD+0x1e>
    21de:	07f8      	br      	0x21ce	// 21ce <ADC12_CLK_CMD+0x16>
    21e0:	20000050 	.long	0x20000050

Disassembly of section .text.ADC12_Software_Reset:

000021e4 <ADC12_Software_Reset>:
{
    21e4:	14d0      	push      	r15
	ADC12_Control(ADC12_SWRST);
    21e6:	3001      	movi      	r0, 1
    21e8:	e3ffffd0 	bsr      	0x2188	// 2188 <ADC12_Control>
}
    21ec:	1490      	pop      	r15

Disassembly of section .text.ADC12_CMD:

000021f0 <ADC12_CMD>:
{
    21f0:	14d0      	push      	r15
	if (NewState != DISABLE)
    21f2:	3840      	cmpnei      	r0, 0
    21f4:	0c04      	bf      	0x21fc	// 21fc <ADC12_CMD+0xc>
    21f6:	e3ffffd1 	bsr      	0x2198	// 2198 <ADC12_CMD.part.0>
}
    21fa:	1490      	pop      	r15
		ADC12_Control(ADC12_ADCDIS);					//ADC12 DISABLE
    21fc:	3004      	movi      	r0, 4
    21fe:	e3ffffc5 	bsr      	0x2188	// 2188 <ADC12_Control>
		while(ADC0->SR&ADC12_ADCENS);
    2202:	1065      	lrw      	r3, 0x20000050	// 2214 <ADC12_CMD+0x24>
    2204:	3280      	movi      	r2, 128
    2206:	9320      	ld.w      	r1, (r3, 0x0)
    2208:	4241      	lsli      	r2, r2, 1
    220a:	9168      	ld.w      	r3, (r1, 0x20)
    220c:	68c8      	and      	r3, r2
    220e:	3b40      	cmpnei      	r3, 0
    2210:	0bfd      	bt      	0x220a	// 220a <ADC12_CMD+0x1a>
    2212:	07f4      	br      	0x21fa	// 21fa <ADC12_CMD+0xa>
    2214:	20000050 	.long	0x20000050

Disassembly of section .text.ADC12_ready_wait:

00002218 <ADC12_ready_wait>:
//EntryParameter:NONE
//ReturnValue:ADC12 READ FLAG
/*************************************************************/ 
void ADC12_ready_wait(void)  
{
	while(!(ADC0->SR&ADC12_READY));   					// Waiting for ADC0 Ready
    2218:	1064      	lrw      	r3, 0x20000050	// 2228 <ADC12_ready_wait+0x10>
    221a:	3202      	movi      	r2, 2
    221c:	9320      	ld.w      	r1, (r3, 0x0)
    221e:	9168      	ld.w      	r3, (r1, 0x20)
    2220:	68c8      	and      	r3, r2
    2222:	3b40      	cmpnei      	r3, 0
    2224:	0ffd      	bf      	0x221e	// 221e <ADC12_ready_wait+0x6>
}
    2226:	783c      	jmp      	r15
    2228:	20000050 	.long	0x20000050

Disassembly of section .text.ADC12_SEQEND_wait:

0000222c <ADC12_SEQEND_wait>:
//EntryParameter:NONE
//ReturnValue:ADC12 EOC
/*************************************************************/ 
void ADC12_SEQEND_wait(U8_T val)
{
	while(!(ADC0->SR & (0x01ul << (16+val))));			// EOC wait
    222c:	200f      	addi      	r0, 16
    222e:	1065      	lrw      	r3, 0x20000050	// 2240 <ADC12_SEQEND_wait+0x14>
    2230:	3201      	movi      	r2, 1
    2232:	9320      	ld.w      	r1, (r3, 0x0)
    2234:	7080      	lsl      	r2, r0
    2236:	9168      	ld.w      	r3, (r1, 0x20)
    2238:	68c8      	and      	r3, r2
    223a:	3b40      	cmpnei      	r3, 0
    223c:	0ffd      	bf      	0x2236	// 2236 <ADC12_SEQEND_wait+0xa>
}  
    223e:	783c      	jmp      	r15
    2240:	20000050 	.long	0x20000050

Disassembly of section .text.ADC12_Configure_Mode:

00002244 <ADC12_Configure_Mode>:
  //10BIT or 12BIT adc ;
  //ADC12_BIT_SELECTED:ADC12_12BIT/ADC12_10BIT;
  //ADC12_ConverMode:One_shot_mode/Continuous_mode;
  //adc date output=last number of Conversions;
void  ADC12_Configure_Mode(ADC12_10bitor12bit_TypeDef ADC12_BIT_SELECTED  , ADC12_ConverMode_TypeDef  ADC12_ConverMode  , U8_T ADC12_PRI, U8_T adc12_SHR , U8_T ADC12_DIV , U8_T NumConver ) 
{
    2244:	14d4      	push      	r4-r7, r15
    2246:	1422      	subi      	r14, r14, 8
    2248:	1c08      	addi      	r4, r14, 32
    224a:	84a0      	ld.b      	r5, (r4, 0x0)
	ADC0->MR=ADC12_DIV|((NumConver-1)<<10);
    224c:	2d00      	subi      	r5, 1
{
    224e:	6dc3      	mov      	r7, r0
	ADC0->MR=ADC12_DIV|((NumConver-1)<<10);
    2250:	10db      	lrw      	r6, 0x20000050	// 22bc <ADC12_Configure_Mode+0x78>
{
    2252:	d80e001c 	ld.b      	r0, (r14, 0x1c)
	ADC0->MR=ADC12_DIV|((NumConver-1)<<10);
    2256:	45aa      	lsli      	r5, r5, 10
    2258:	9680      	ld.w      	r4, (r6, 0x0)
    225a:	6d40      	or      	r5, r0
	if(ADC12_ConverMode==One_shot_mode)
    225c:	3940      	cmpnei      	r1, 0
	ADC0->MR=ADC12_DIV|((NumConver-1)<<10);
    225e:	b4a5      	st.w      	r5, (r4, 0x14)
	if(ADC12_ConverMode==One_shot_mode)
    2260:	081c      	bt      	0x2298	// 2298 <ADC12_Configure_Mode+0x54>
	{
		ADC0->MR&=~CONTCV;								//one short mode
    2262:	9425      	ld.w      	r1, (r4, 0x14)
    2264:	4121      	lsli      	r1, r1, 1
    2266:	4921      	lsri      	r1, r1, 1
		while(ADC0->SR&ADC12_CTCVS);							
    2268:	3080      	movi      	r0, 128
		ADC0->MR&=~CONTCV;								//one short mode
    226a:	b425      	st.w      	r1, (r4, 0x14)
		while(ADC0->SR&ADC12_CTCVS);							
    226c:	4002      	lsli      	r0, r0, 2
    226e:	9428      	ld.w      	r1, (r4, 0x20)
    2270:	6840      	and      	r1, r0
    2272:	3940      	cmpnei      	r1, 0
    2274:	0bfd      	bt      	0x226e	// 226e <ADC12_Configure_Mode+0x2a>
    2276:	b861      	st.w      	r3, (r14, 0x4)
    2278:	b840      	st.w      	r2, (r14, 0x0)
    227a:	e3ffff8f 	bsr      	0x2198	// 2198 <ADC12_CMD.part.0>
	{
		ADC0->MR|=CONTCV;								//Continuous mode
		while(!(ADC0->SR&ADC12_CTCVS));							
	}
	ADC12_CMD(ENABLE);									//ADC0 enable
	if(ADC12_BIT_SELECTED)
    227e:	3f40      	cmpnei      	r7, 0
    2280:	9840      	ld.w      	r2, (r14, 0x0)
    2282:	9861      	ld.w      	r3, (r14, 0x4)
    2284:	0c16      	bf      	0x22b0	// 22b0 <ADC12_Configure_Mode+0x6c>
	{
		ADC0->CR|=ADC12_10BITor12BIT;
    2286:	9600      	ld.w      	r0, (r6, 0x0)
    2288:	9024      	ld.w      	r1, (r0, 0x10)
    228a:	39bf      	bseti      	r1, 31
	}
	else
	{
		ADC0->CR&=~ADC12_10BITor12BIT;
    228c:	b024      	st.w      	r1, (r0, 0x10)
	}
	//ADC0->CR|=ADC12_VREF_VDD | ADC12_FVR_DIS;
	ADC0->PRI=ADC12_PRI;
    228e:	9620      	ld.w      	r1, (r6, 0x0)
    2290:	b15c      	st.w      	r2, (r1, 0x70)
	ADC0->SHR=adc12_SHR;								//adc Sampling & Holding cycles
    2292:	b166      	st.w      	r3, (r1, 0x18)
} 
    2294:	1402      	addi      	r14, r14, 8
    2296:	1494      	pop      	r4-r7, r15
	else if(ADC12_ConverMode==Continuous_mode)
    2298:	3941      	cmpnei      	r1, 1
    229a:	0bee      	bt      	0x2276	// 2276 <ADC12_Configure_Mode+0x32>
		ADC0->MR|=CONTCV;								//Continuous mode
    229c:	9425      	ld.w      	r1, (r4, 0x14)
    229e:	39bf      	bseti      	r1, 31
		while(!(ADC0->SR&ADC12_CTCVS));							
    22a0:	3080      	movi      	r0, 128
		ADC0->MR|=CONTCV;								//Continuous mode
    22a2:	b425      	st.w      	r1, (r4, 0x14)
		while(!(ADC0->SR&ADC12_CTCVS));							
    22a4:	4002      	lsli      	r0, r0, 2
    22a6:	9428      	ld.w      	r1, (r4, 0x20)
    22a8:	6840      	and      	r1, r0
    22aa:	3940      	cmpnei      	r1, 0
    22ac:	0ffd      	bf      	0x22a6	// 22a6 <ADC12_Configure_Mode+0x62>
    22ae:	07e4      	br      	0x2276	// 2276 <ADC12_Configure_Mode+0x32>
		ADC0->CR&=~ADC12_10BITor12BIT;
    22b0:	9600      	ld.w      	r0, (r6, 0x0)
    22b2:	9024      	ld.w      	r1, (r0, 0x10)
    22b4:	4121      	lsli      	r1, r1, 1
    22b6:	4921      	lsri      	r1, r1, 1
    22b8:	07ea      	br      	0x228c	// 228c <ADC12_Configure_Mode+0x48>
    22ba:	0000      	bkpt
    22bc:	20000050 	.long	0x20000050

Disassembly of section .text.ADC12_Configure_VREF_Selecte:

000022c0 <ADC12_Configure_VREF_Selecte>:
//EntryParameter:NONE
//ReturnValue:None
/*************************************************************/ 
void ADC12_Configure_VREF_Selecte(ADC12_VREFP_VREFN_Selected_TypeDef ADC12_VREFP_X_VREFN_X )
{
	if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_VDD_VREFN_VSS)
    22c0:	3840      	cmpnei      	r0, 0
    22c2:	0808      	bt      	0x22d2	// 22d2 <ADC12_Configure_VREF_Selecte+0x12>
	{
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x00<<6);
    22c4:	127c      	lrw      	r3, 0x20000050	// 2434 <ADC12_Configure_VREF_Selecte+0x174>
    22c6:	123d      	lrw      	r1, 0x103c0	// 2438 <ADC12_Configure_VREF_Selecte+0x178>
    22c8:	9340      	ld.w      	r2, (r3, 0x0)
    22ca:	9264      	ld.w      	r3, (r2, 0x10)
    22cc:	68c5      	andn      	r3, r1
		ADC0->CR=(ADC0->CR&0xfcfefc3f)|(0x0B<<6)|(0X01<<24)|(0X01<<25);	
	}
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_INTVREF1000_VREFN_EXIT)
	{
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;					
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x0C<<6)|(0X00<<16)|(0X02<<17);	
    22ce:	b264      	st.w      	r3, (r2, 0x10)
	}
}
    22d0:	783c      	jmp      	r15
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_EXIT_VREFN_VSS)
    22d2:	3841      	cmpnei      	r0, 1
    22d4:	0810      	bt      	0x22f4	// 22f4 <ADC12_Configure_VREF_Selecte+0x34>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;							
    22d6:	127a      	lrw      	r3, 0x2000004c	// 243c <ADC12_Configure_VREF_Selecte+0x17c>
    22d8:	32f0      	movi      	r2, 240
    22da:	9320      	ld.w      	r1, (r3, 0x0)
    22dc:	9160      	ld.w      	r3, (r1, 0x0)
    22de:	4244      	lsli      	r2, r2, 4
    22e0:	68c9      	andn      	r3, r2
    22e2:	3bab      	bseti      	r3, 11
    22e4:	b160      	st.w      	r3, (r1, 0x0)
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x01<<6);
    22e6:	1235      	lrw      	r1, 0x103c0	// 2438 <ADC12_Configure_VREF_Selecte+0x178>
    22e8:	1273      	lrw      	r3, 0x20000050	// 2434 <ADC12_Configure_VREF_Selecte+0x174>
    22ea:	9340      	ld.w      	r2, (r3, 0x0)
    22ec:	9264      	ld.w      	r3, (r2, 0x10)
    22ee:	68c5      	andn      	r3, r1
    22f0:	3ba6      	bseti      	r3, 6
    22f2:	07ee      	br      	0x22ce	// 22ce <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_FVR2048_VREFN_VSS)
    22f4:	3842      	cmpnei      	r0, 2
    22f6:	0811      	bt      	0x2318	// 2318 <ADC12_Configure_VREF_Selecte+0x58>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;							
    22f8:	1271      	lrw      	r3, 0x2000004c	// 243c <ADC12_Configure_VREF_Selecte+0x17c>
    22fa:	32f0      	movi      	r2, 240
    22fc:	9320      	ld.w      	r1, (r3, 0x0)
    22fe:	9160      	ld.w      	r3, (r1, 0x0)
    2300:	4244      	lsli      	r2, r2, 4
    2302:	68c9      	andn      	r3, r2
    2304:	3bab      	bseti      	r3, 11
    2306:	b160      	st.w      	r3, (r1, 0x0)
		ADC0->CR=(ADC0->CR&0xfcfefc3f)|(0x02<<6)|(0X01<<24)|(0X00<<25);
    2308:	122e      	lrw      	r1, 0x30103c0	// 2440 <ADC12_Configure_VREF_Selecte+0x180>
    230a:	126b      	lrw      	r3, 0x20000050	// 2434 <ADC12_Configure_VREF_Selecte+0x174>
    230c:	9340      	ld.w      	r2, (r3, 0x0)
    230e:	9264      	ld.w      	r3, (r2, 0x10)
    2310:	68c5      	andn      	r3, r1
    2312:	3ba7      	bseti      	r3, 7
    2314:	3bb8      	bseti      	r3, 24
    2316:	07dc      	br      	0x22ce	// 22ce <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_FVR4096_VREFN_VSS)
    2318:	3843      	cmpnei      	r0, 3
    231a:	0811      	bt      	0x233c	// 233c <ADC12_Configure_VREF_Selecte+0x7c>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;							
    231c:	1268      	lrw      	r3, 0x2000004c	// 243c <ADC12_Configure_VREF_Selecte+0x17c>
    231e:	32f0      	movi      	r2, 240
    2320:	9320      	ld.w      	r1, (r3, 0x0)
    2322:	9160      	ld.w      	r3, (r1, 0x0)
    2324:	4244      	lsli      	r2, r2, 4
    2326:	68c9      	andn      	r3, r2
    2328:	3bab      	bseti      	r3, 11
    232a:	b160      	st.w      	r3, (r1, 0x0)
		ADC0->CR=(ADC0->CR&0xfcfefc3f)|(0x03<<6)|(0X01<<24)|(0X01<<25);
    232c:	1225      	lrw      	r1, 0x30103c0	// 2440 <ADC12_Configure_VREF_Selecte+0x180>
    232e:	1262      	lrw      	r3, 0x20000050	// 2434 <ADC12_Configure_VREF_Selecte+0x174>
    2330:	9340      	ld.w      	r2, (r3, 0x0)
    2332:	9264      	ld.w      	r3, (r2, 0x10)
    2334:	68c5      	andn      	r3, r1
    2336:	1224      	lrw      	r1, 0x30000c0	// 2444 <ADC12_Configure_VREF_Selecte+0x184>
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x0C<<6)|(0X00<<16)|(0X02<<17);	
    2338:	6cc4      	or      	r3, r1
    233a:	07ca      	br      	0x22ce	// 22ce <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_INTVREF1000_VREFN_VSS)
    233c:	3845      	cmpnei      	r0, 5
    233e:	0809      	bt      	0x2350	// 2350 <ADC12_Configure_VREF_Selecte+0x90>
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x04<<6)|(0X00<<16)|(0X02<<17);
    2340:	117d      	lrw      	r3, 0x20000050	// 2434 <ADC12_Configure_VREF_Selecte+0x174>
    2342:	1222      	lrw      	r1, 0x503c0	// 2448 <ADC12_Configure_VREF_Selecte+0x188>
    2344:	9340      	ld.w      	r2, (r3, 0x0)
    2346:	9264      	ld.w      	r3, (r2, 0x10)
    2348:	68c5      	andn      	r3, r1
    234a:	3ba8      	bseti      	r3, 8
    234c:	3bb2      	bseti      	r3, 18
    234e:	07c0      	br      	0x22ce	// 22ce <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_VDD_VREFN_EXIT)
    2350:	3846      	cmpnei      	r0, 6
    2352:	0812      	bt      	0x2376	// 2376 <ADC12_Configure_VREF_Selecte+0xb6>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;	
    2354:	117a      	lrw      	r3, 0x2000004c	// 243c <ADC12_Configure_VREF_Selecte+0x17c>
    2356:	32f0      	movi      	r2, 240
    2358:	9320      	ld.w      	r1, (r3, 0x0)
    235a:	9160      	ld.w      	r3, (r1, 0x0)
    235c:	4248      	lsli      	r2, r2, 8
    235e:	68c9      	andn      	r3, r2
    2360:	32b0      	movi      	r2, 176
    2362:	4248      	lsli      	r2, r2, 8
    2364:	6cc8      	or      	r3, r2
    2366:	b160      	st.w      	r3, (r1, 0x0)
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x08<<6);
    2368:	1134      	lrw      	r1, 0x103c0	// 2438 <ADC12_Configure_VREF_Selecte+0x178>
    236a:	1173      	lrw      	r3, 0x20000050	// 2434 <ADC12_Configure_VREF_Selecte+0x174>
    236c:	9340      	ld.w      	r2, (r3, 0x0)
    236e:	9264      	ld.w      	r3, (r2, 0x10)
    2370:	68c5      	andn      	r3, r1
    2372:	3ba9      	bseti      	r3, 9
    2374:	07ad      	br      	0x22ce	// 22ce <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_EXIT_VREFN_EXIT)
    2376:	3847      	cmpnei      	r0, 7
    2378:	0819      	bt      	0x23aa	// 23aa <ADC12_Configure_VREF_Selecte+0xea>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;
    237a:	1171      	lrw      	r3, 0x2000004c	// 243c <ADC12_Configure_VREF_Selecte+0x17c>
    237c:	31f0      	movi      	r1, 240
    237e:	9340      	ld.w      	r2, (r3, 0x0)
    2380:	9260      	ld.w      	r3, (r2, 0x0)
    2382:	4128      	lsli      	r1, r1, 8
    2384:	68c5      	andn      	r3, r1
    2386:	31b0      	movi      	r1, 176
    2388:	4128      	lsli      	r1, r1, 8
    238a:	6cc4      	or      	r3, r1
    238c:	b260      	st.w      	r3, (r2, 0x0)
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;			
    238e:	31f0      	movi      	r1, 240
    2390:	9260      	ld.w      	r3, (r2, 0x0)
    2392:	4124      	lsli      	r1, r1, 4
    2394:	68c5      	andn      	r3, r1
    2396:	3bab      	bseti      	r3, 11
    2398:	b260      	st.w      	r3, (r2, 0x0)
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x09<<6);
    239a:	1128      	lrw      	r1, 0x103c0	// 2438 <ADC12_Configure_VREF_Selecte+0x178>
    239c:	1166      	lrw      	r3, 0x20000050	// 2434 <ADC12_Configure_VREF_Selecte+0x174>
    239e:	9340      	ld.w      	r2, (r3, 0x0)
    23a0:	9264      	ld.w      	r3, (r2, 0x10)
    23a2:	68c5      	andn      	r3, r1
    23a4:	3ba6      	bseti      	r3, 6
    23a6:	3ba9      	bseti      	r3, 9
    23a8:	0793      	br      	0x22ce	// 22ce <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_FVR2048_VREFN_EXIT)
    23aa:	3848      	cmpnei      	r0, 8
    23ac:	0818      	bt      	0x23dc	// 23dc <ADC12_Configure_VREF_Selecte+0x11c>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;	
    23ae:	1164      	lrw      	r3, 0x2000004c	// 243c <ADC12_Configure_VREF_Selecte+0x17c>
    23b0:	31f0      	movi      	r1, 240
    23b2:	9340      	ld.w      	r2, (r3, 0x0)
    23b4:	9260      	ld.w      	r3, (r2, 0x0)
    23b6:	4128      	lsli      	r1, r1, 8
    23b8:	68c5      	andn      	r3, r1
    23ba:	31b0      	movi      	r1, 176
    23bc:	4128      	lsli      	r1, r1, 8
    23be:	6cc4      	or      	r3, r1
    23c0:	b260      	st.w      	r3, (r2, 0x0)
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;
    23c2:	31f0      	movi      	r1, 240
    23c4:	9260      	ld.w      	r3, (r2, 0x0)
    23c6:	4124      	lsli      	r1, r1, 4
    23c8:	68c5      	andn      	r3, r1
    23ca:	3bab      	bseti      	r3, 11
    23cc:	b260      	st.w      	r3, (r2, 0x0)
		ADC0->CR=(ADC0->CR&0xfcfefc3f)|(0x0A<<6)|(0X01<<24)|(0X00<<25);			
    23ce:	103d      	lrw      	r1, 0x30103c0	// 2440 <ADC12_Configure_VREF_Selecte+0x180>
    23d0:	1079      	lrw      	r3, 0x20000050	// 2434 <ADC12_Configure_VREF_Selecte+0x174>
    23d2:	9340      	ld.w      	r2, (r3, 0x0)
    23d4:	9264      	ld.w      	r3, (r2, 0x10)
    23d6:	68c5      	andn      	r3, r1
    23d8:	103d      	lrw      	r1, 0x1000280	// 244c <ADC12_Configure_VREF_Selecte+0x18c>
    23da:	07af      	br      	0x2338	// 2338 <ADC12_Configure_VREF_Selecte+0x78>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_FVR4096_VREFN_EXIT)
    23dc:	3849      	cmpnei      	r0, 9
    23de:	0818      	bt      	0x240e	// 240e <ADC12_Configure_VREF_Selecte+0x14e>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;	
    23e0:	1077      	lrw      	r3, 0x2000004c	// 243c <ADC12_Configure_VREF_Selecte+0x17c>
    23e2:	31f0      	movi      	r1, 240
    23e4:	9340      	ld.w      	r2, (r3, 0x0)
    23e6:	9260      	ld.w      	r3, (r2, 0x0)
    23e8:	4128      	lsli      	r1, r1, 8
    23ea:	68c5      	andn      	r3, r1
    23ec:	31b0      	movi      	r1, 176
    23ee:	4128      	lsli      	r1, r1, 8
    23f0:	6cc4      	or      	r3, r1
    23f2:	b260      	st.w      	r3, (r2, 0x0)
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;
    23f4:	31f0      	movi      	r1, 240
    23f6:	9260      	ld.w      	r3, (r2, 0x0)
    23f8:	4124      	lsli      	r1, r1, 4
    23fa:	68c5      	andn      	r3, r1
    23fc:	3bab      	bseti      	r3, 11
    23fe:	b260      	st.w      	r3, (r2, 0x0)
		ADC0->CR=(ADC0->CR&0xfcfefc3f)|(0x0B<<6)|(0X01<<24)|(0X01<<25);	
    2400:	1030      	lrw      	r1, 0x30103c0	// 2440 <ADC12_Configure_VREF_Selecte+0x180>
    2402:	106d      	lrw      	r3, 0x20000050	// 2434 <ADC12_Configure_VREF_Selecte+0x174>
    2404:	9340      	ld.w      	r2, (r3, 0x0)
    2406:	9264      	ld.w      	r3, (r2, 0x10)
    2408:	68c5      	andn      	r3, r1
    240a:	1032      	lrw      	r1, 0x30002c0	// 2450 <ADC12_Configure_VREF_Selecte+0x190>
    240c:	0796      	br      	0x2338	// 2338 <ADC12_Configure_VREF_Selecte+0x78>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_INTVREF1000_VREFN_EXIT)
    240e:	384b      	cmpnei      	r0, 11
    2410:	0b60      	bt      	0x22d0	// 22d0 <ADC12_Configure_VREF_Selecte+0x10>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;					
    2412:	106b      	lrw      	r3, 0x2000004c	// 243c <ADC12_Configure_VREF_Selecte+0x17c>
    2414:	32f0      	movi      	r2, 240
    2416:	9320      	ld.w      	r1, (r3, 0x0)
    2418:	9160      	ld.w      	r3, (r1, 0x0)
    241a:	4248      	lsli      	r2, r2, 8
    241c:	68c9      	andn      	r3, r2
    241e:	32b0      	movi      	r2, 176
    2420:	4248      	lsli      	r2, r2, 8
    2422:	6cc8      	or      	r3, r2
    2424:	b160      	st.w      	r3, (r1, 0x0)
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x0C<<6)|(0X00<<16)|(0X02<<17);	
    2426:	1029      	lrw      	r1, 0x503c0	// 2448 <ADC12_Configure_VREF_Selecte+0x188>
    2428:	1063      	lrw      	r3, 0x20000050	// 2434 <ADC12_Configure_VREF_Selecte+0x174>
    242a:	9340      	ld.w      	r2, (r3, 0x0)
    242c:	9264      	ld.w      	r3, (r2, 0x10)
    242e:	68c5      	andn      	r3, r1
    2430:	1029      	lrw      	r1, 0x40300	// 2454 <ADC12_Configure_VREF_Selecte+0x194>
    2432:	0783      	br      	0x2338	// 2338 <ADC12_Configure_VREF_Selecte+0x78>
    2434:	20000050 	.long	0x20000050
    2438:	000103c0 	.long	0x000103c0
    243c:	2000004c 	.long	0x2000004c
    2440:	030103c0 	.long	0x030103c0
    2444:	030000c0 	.long	0x030000c0
    2448:	000503c0 	.long	0x000503c0
    244c:	01000280 	.long	0x01000280
    2450:	030002c0 	.long	0x030002c0
    2454:	00040300 	.long	0x00040300

Disassembly of section .text.ADC12_ConversionChannel_Config:

00002458 <ADC12_ConversionChannel_Config>:
//ADC12_ADCINX:ADC12_ADCIN0~ADC12_ADCIN17,ADC12_INTVREF,ADC12_DIV4_VDD,ADC12_VSS
//ReturnValue:NONE
/*************************************************************/ 
void ADC12_ConversionChannel_Config(ADC12_InputSet_TypeDef ADC12_ADCINX ,
						ADC12_CV_RepeatNum_TypeDef CV_RepeatTime, ADC12_Control_TypeDef AVG_Set, U8_T SEQx)
{
    2458:	14d4      	push      	r4-r7, r15
    245a:	1421      	subi      	r14, r14, 4
    245c:	b840      	st.w      	r2, (r14, 0x0)
    245e:	6d43      	mov      	r5, r0
	U8_T i;
	for(i=0;i<15;i++)
	{
		ADC0->SEQ[i] &=~(0x01<<7);
    2460:	125b      	lrw      	r2, 0x20000050	// 25cc <ADC12_ConversionChannel_Config+0x174>
    2462:	92c0      	ld.w      	r6, (r2, 0x0)
    2464:	3200      	movi      	r2, 0
    2466:	4202      	lsli      	r0, r2, 2
    2468:	6018      	addu      	r0, r6
    246a:	908c      	ld.w      	r4, (r0, 0x30)
    246c:	2200      	addi      	r2, 1
    246e:	3c87      	bclri      	r4, 7
	for(i=0;i<15;i++)
    2470:	3a4f      	cmpnei      	r2, 15
		ADC0->SEQ[i] &=~(0x01<<7);
    2472:	b08c      	st.w      	r4, (r0, 0x30)
	for(i=0;i<15;i++)
    2474:	0bf9      	bt      	0x2466	// 2466 <ADC12_ConversionChannel_Config+0xe>
	}
	switch(ADC12_ADCINX)
    2476:	3d0f      	cmphsi      	r5, 16
    2478:	0825      	bt      	0x24c2	// 24c2 <ADC12_ConversionChannel_Config+0x6a>
    247a:	6c17      	mov      	r0, r5
    247c:	1255      	lrw      	r2, 0x2000004c	// 25d0 <ADC12_ConversionChannel_Config+0x178>
    247e:	1296      	lrw      	r4, 0x20000048	// 25d4 <ADC12_ConversionChannel_Config+0x17c>
    2480:	e3fff43e 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    2484:	322c1408 	.long	0x322c1408
    2488:	4d474039 	.long	0x4d474039
    248c:	756d6559 	.long	0x756d6559
    2490:	9990877e 	.long	0x9990877e
	{
		case 0:	
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC0 PB0.1
    2494:	9240      	ld.w      	r2, (r2, 0x0)
    2496:	9200      	ld.w      	r0, (r2, 0x0)
    2498:	b200      	st.w      	r0, (r2, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
    249a:	9201      	ld.w      	r0, (r2, 0x4)
    249c:	b201      	st.w      	r0, (r2, 0x4)
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFF0F)  | 0x00000010;			
    249e:	9400      	ld.w      	r0, (r4, 0x0)
    24a0:	9040      	ld.w      	r2, (r0, 0x0)
    24a2:	34f0      	movi      	r4, 240
    24a4:	6891      	andn      	r2, r4
    24a6:	3aa4      	bseti      	r2, 4
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFFF)  | 0x00000000;		
			break;
		case 15:
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC15 PB0.0
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFF0)  | 0x00000001;		
    24a8:	b040      	st.w      	r2, (r0, 0x0)
			break;
    24aa:	040c      	br      	0x24c2	// 24c2 <ADC12_ConversionChannel_Config+0x6a>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFF0)  | 0x00000001;							//ADC1 PA0.0
    24ac:	9200      	ld.w      	r0, (r2, 0x0)
    24ae:	9040      	ld.w      	r2, (r0, 0x0)
    24b0:	370f      	movi      	r7, 15
    24b2:	689d      	andn      	r2, r7
    24b4:	3aa0      	bseti      	r2, 0
			GPIOA0->CONLR = (GPIOA0->CONLR&0X0FFFFFFF)  | 0x10000000;							//ADC6 PA0.7
    24b6:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
    24b8:	9041      	ld.w      	r2, (r0, 0x4)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)  | 0x00100000;	
    24ba:	b041      	st.w      	r2, (r0, 0x4)
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFFF)  | 0x00000000;		
    24bc:	9440      	ld.w      	r2, (r4, 0x0)
    24be:	9200      	ld.w      	r0, (r2, 0x0)
    24c0:	b200      	st.w      	r0, (r2, 0x0)
    24c2:	4362      	lsli      	r3, r3, 2
    24c4:	618c      	addu      	r6, r3
		//case 27: break;
		case 0x1Cul: break;
		case 0x1Dul: break;
		case 0x1Eul: break;
	}
	ADC0->SEQ[SEQx] = ADC0->SEQ[SEQx] & 0;
    24c6:	966c      	ld.w      	r3, (r6, 0x30)
    24c8:	3300      	movi      	r3, 0
    24ca:	b66c      	st.w      	r3, (r6, 0x30)
	ADC0->SEQ[SEQx] = ADC0->SEQ[SEQx] | ADC12_ADCINX  | CV_RepeatTime | AVG_Set;
    24cc:	9860      	ld.w      	r3, (r14, 0x0)
    24ce:	6c4c      	or      	r1, r3
    24d0:	964c      	ld.w      	r2, (r6, 0x30)
    24d2:	6d44      	or      	r5, r1
    24d4:	6d48      	or      	r5, r2
    24d6:	b6ac      	st.w      	r5, (r6, 0x30)
}
    24d8:	1401      	addi      	r14, r14, 4
    24da:	1494      	pop      	r4-r7, r15
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFF0F)  | 0x00000010;							//ADC2 PA0.1
    24dc:	9200      	ld.w      	r0, (r2, 0x0)
    24de:	9040      	ld.w      	r2, (r0, 0x0)
    24e0:	37f0      	movi      	r7, 240
    24e2:	689d      	andn      	r2, r7
    24e4:	3aa4      	bseti      	r2, 4
    24e6:	07e8      	br      	0x24b6	// 24b6 <ADC12_ConversionChannel_Config+0x5e>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x00001000;							//ADC3 PA0.3
    24e8:	9200      	ld.w      	r0, (r2, 0x0)
    24ea:	37f0      	movi      	r7, 240
    24ec:	9040      	ld.w      	r2, (r0, 0x0)
    24ee:	47e8      	lsli      	r7, r7, 8
    24f0:	689d      	andn      	r2, r7
    24f2:	3aac      	bseti      	r2, 12
    24f4:	07e1      	br      	0x24b6	// 24b6 <ADC12_ConversionChannel_Config+0x5e>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFF0FFFFF)  | 0x00100000;							//ADC4 PA0.5
    24f6:	9200      	ld.w      	r0, (r2, 0x0)
    24f8:	37f0      	movi      	r7, 240
    24fa:	9040      	ld.w      	r2, (r0, 0x0)
    24fc:	47f0      	lsli      	r7, r7, 16
    24fe:	689d      	andn      	r2, r7
    2500:	3ab4      	bseti      	r2, 20
    2502:	07da      	br      	0x24b6	// 24b6 <ADC12_ConversionChannel_Config+0x5e>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XF0FFFFFF)  | 0x01000000;							//ADC5 PA0.6
    2504:	9200      	ld.w      	r0, (r2, 0x0)
    2506:	37f0      	movi      	r7, 240
    2508:	9040      	ld.w      	r2, (r0, 0x0)
    250a:	47f4      	lsli      	r7, r7, 20
    250c:	689d      	andn      	r2, r7
    250e:	3ab8      	bseti      	r2, 24
    2510:	07d3      	br      	0x24b6	// 24b6 <ADC12_ConversionChannel_Config+0x5e>
			GPIOA0->CONLR = (GPIOA0->CONLR&0X0FFFFFFF)  | 0x10000000;							//ADC6 PA0.7
    2512:	9200      	ld.w      	r0, (r2, 0x0)
    2514:	9040      	ld.w      	r2, (r0, 0x0)
    2516:	4244      	lsli      	r2, r2, 4
    2518:	4a44      	lsri      	r2, r2, 4
    251a:	3abc      	bseti      	r2, 28
    251c:	07cd      	br      	0x24b6	// 24b6 <ADC12_ConversionChannel_Config+0x5e>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC7 PB0.2
    251e:	9240      	ld.w      	r2, (r2, 0x0)
    2520:	9200      	ld.w      	r0, (r2, 0x0)
    2522:	b200      	st.w      	r0, (r2, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
    2524:	9201      	ld.w      	r0, (r2, 0x4)
    2526:	b201      	st.w      	r0, (r2, 0x4)
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFF0FF)  | 0x00000100;
    2528:	9400      	ld.w      	r0, (r4, 0x0)
    252a:	34f0      	movi      	r4, 240
    252c:	9040      	ld.w      	r2, (r0, 0x0)
    252e:	4484      	lsli      	r4, r4, 4
    2530:	6891      	andn      	r2, r4
    2532:	3aa8      	bseti      	r2, 8
    2534:	07ba      	br      	0x24a8	// 24a8 <ADC12_ConversionChannel_Config+0x50>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC8 PB0.3
    2536:	9240      	ld.w      	r2, (r2, 0x0)
    2538:	9200      	ld.w      	r0, (r2, 0x0)
    253a:	b200      	st.w      	r0, (r2, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
    253c:	9201      	ld.w      	r0, (r2, 0x4)
    253e:	b201      	st.w      	r0, (r2, 0x4)
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFF0FFF)  | 0x00001000;
    2540:	9400      	ld.w      	r0, (r4, 0x0)
    2542:	34f0      	movi      	r4, 240
    2544:	9040      	ld.w      	r2, (r0, 0x0)
    2546:	4488      	lsli      	r4, r4, 8
    2548:	6891      	andn      	r2, r4
    254a:	3aac      	bseti      	r2, 12
    254c:	07ae      	br      	0x24a8	// 24a8 <ADC12_ConversionChannel_Config+0x50>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC9 PA0.8
    254e:	9200      	ld.w      	r0, (r2, 0x0)
    2550:	9040      	ld.w      	r2, (r0, 0x0)
    2552:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFF0)  | 0x00000001;	
    2554:	9041      	ld.w      	r2, (r0, 0x4)
    2556:	370f      	movi      	r7, 15
    2558:	689d      	andn      	r2, r7
    255a:	3aa0      	bseti      	r2, 0
    255c:	07af      	br      	0x24ba	// 24ba <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC10 PA0.9
    255e:	9200      	ld.w      	r0, (r2, 0x0)
    2560:	9040      	ld.w      	r2, (r0, 0x0)
    2562:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFF0F)  | 0x00000010;	
    2564:	9041      	ld.w      	r2, (r0, 0x4)
    2566:	37f0      	movi      	r7, 240
    2568:	689d      	andn      	r2, r7
    256a:	3aa4      	bseti      	r2, 4
    256c:	07a7      	br      	0x24ba	// 24ba <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC11 PA0.10
    256e:	9200      	ld.w      	r0, (r2, 0x0)
    2570:	9040      	ld.w      	r2, (r0, 0x0)
    2572:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFF0FF)  | 0x00000100;	
    2574:	37f0      	movi      	r7, 240
    2576:	9041      	ld.w      	r2, (r0, 0x4)
    2578:	47e4      	lsli      	r7, r7, 4
    257a:	689d      	andn      	r2, r7
    257c:	3aa8      	bseti      	r2, 8
    257e:	079e      	br      	0x24ba	// 24ba <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC12 PA0.11
    2580:	9200      	ld.w      	r0, (r2, 0x0)
    2582:	9040      	ld.w      	r2, (r0, 0x0)
    2584:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFF0FFF)  | 0x00001000;	
    2586:	37f0      	movi      	r7, 240
    2588:	9041      	ld.w      	r2, (r0, 0x4)
    258a:	47e8      	lsli      	r7, r7, 8
    258c:	689d      	andn      	r2, r7
    258e:	3aac      	bseti      	r2, 12
    2590:	0795      	br      	0x24ba	// 24ba <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC13 PA0.12
    2592:	9200      	ld.w      	r0, (r2, 0x0)
    2594:	9040      	ld.w      	r2, (r0, 0x0)
    2596:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFF0FFFF)  | 0x00010000;	
    2598:	37f0      	movi      	r7, 240
    259a:	9041      	ld.w      	r2, (r0, 0x4)
    259c:	47ec      	lsli      	r7, r7, 12
    259e:	689d      	andn      	r2, r7
    25a0:	3ab0      	bseti      	r2, 16
    25a2:	078c      	br      	0x24ba	// 24ba <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC14 PA0.13	
    25a4:	9200      	ld.w      	r0, (r2, 0x0)
    25a6:	9040      	ld.w      	r2, (r0, 0x0)
    25a8:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)  | 0x00100000;	
    25aa:	37f0      	movi      	r7, 240
    25ac:	9041      	ld.w      	r2, (r0, 0x4)
    25ae:	47f0      	lsli      	r7, r7, 16
    25b0:	689d      	andn      	r2, r7
    25b2:	3ab4      	bseti      	r2, 20
    25b4:	0783      	br      	0x24ba	// 24ba <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC15 PB0.0
    25b6:	9240      	ld.w      	r2, (r2, 0x0)
    25b8:	9200      	ld.w      	r0, (r2, 0x0)
    25ba:	b200      	st.w      	r0, (r2, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
    25bc:	9201      	ld.w      	r0, (r2, 0x4)
    25be:	b201      	st.w      	r0, (r2, 0x4)
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFF0)  | 0x00000001;		
    25c0:	9400      	ld.w      	r0, (r4, 0x0)
    25c2:	9040      	ld.w      	r2, (r0, 0x0)
    25c4:	340f      	movi      	r4, 15
    25c6:	6891      	andn      	r2, r4
    25c8:	3aa0      	bseti      	r2, 0
    25ca:	076f      	br      	0x24a8	// 24a8 <ADC12_ConversionChannel_Config+0x50>
    25cc:	20000050 	.long	0x20000050
    25d0:	2000004c 	.long	0x2000004c
    25d4:	20000048 	.long	0x20000048

Disassembly of section .text.delay_nms:

000025d8 <delay_nms>:
//software delay
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/	
void delay_nms(unsigned int t)
{
    25d8:	14d0      	push      	r15
    25da:	1423      	subi      	r14, r14, 12
    volatile unsigned int i,j ,k=0;
    j = 50* t;
    25dc:	3232      	movi      	r2, 50
    volatile unsigned int i,j ,k=0;
    25de:	3300      	movi      	r3, 0
    j = 50* t;
    25e0:	7c08      	mult      	r0, r2
    volatile unsigned int i,j ,k=0;
    25e2:	b862      	st.w      	r3, (r14, 0x8)
    j = 50* t;
    25e4:	b801      	st.w      	r0, (r14, 0x4)
    for ( i = 0; i < j; i++ )
    25e6:	b860      	st.w      	r3, (r14, 0x0)
    25e8:	9840      	ld.w      	r2, (r14, 0x0)
    25ea:	9861      	ld.w      	r3, (r14, 0x4)
    25ec:	64c8      	cmphs      	r2, r3
    25ee:	0c03      	bf      	0x25f4	// 25f4 <delay_nms+0x1c>
    {
        k++;
		SYSCON_IWDCNT_Reload(); 
    }
}
    25f0:	1403      	addi      	r14, r14, 12
    25f2:	1490      	pop      	r15
        k++;
    25f4:	9862      	ld.w      	r3, (r14, 0x8)
    25f6:	2300      	addi      	r3, 1
    25f8:	b862      	st.w      	r3, (r14, 0x8)
		SYSCON_IWDCNT_Reload(); 
    25fa:	e3fffc27 	bsr      	0x1e48	// 1e48 <SYSCON_IWDCNT_Reload>
    for ( i = 0; i < j; i++ )
    25fe:	9860      	ld.w      	r3, (r14, 0x0)
    2600:	2300      	addi      	r3, 1
    2602:	07f2      	br      	0x25e6	// 25e6 <delay_nms+0xe>

Disassembly of section .text.UART0_CONFIG:

00002604 <UART0_CONFIG>:
//UART0  CONFIG
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/	
void UART0_CONFIG(void)
{
    2604:	14d0      	push      	r15
	UART0_DeInit();                                               //clear all UART Register
    2606:	e3fffd3d 	bsr      	0x2080	// 2080 <UART0_DeInit>
    UART_IO_Init(IO_UART0,1);                                     //use PA0.1->RXD0, PA0.0->TXD0
    260a:	3101      	movi      	r1, 1
    260c:	3000      	movi      	r0, 0
    260e:	e3fffd45 	bsr      	0x2098	// 2098 <UART_IO_Init>
	UARTInit(UART0,416,UART_PAR_NONE);							  //baudrate=sysclock 48M/416=115200
    2612:	1065      	lrw      	r3, 0x20000040	// 2624 <UART0_CONFIG+0x20>
    2614:	31d0      	movi      	r1, 208
    2616:	9300      	ld.w      	r0, (r3, 0x0)
    2618:	3200      	movi      	r2, 0
    261a:	4121      	lsli      	r1, r1, 1
    261c:	e3fffdaa 	bsr      	0x2170	// 2170 <UARTInit>
    //UARTInitRxTxIntEn(UART0,416,UART_PAR_NONE);				  //baudrate=sysclock 48M/416=115200,tx rx int enabled 
	//UART0_Int_Enable();
}	
    2620:	1490      	pop      	r15
    2622:	0000      	bkpt
    2624:	20000040 	.long	0x20000040

Disassembly of section .text.SYSCON_CONFIG:

00002628 <SYSCON_CONFIG>:
//syscon Functions
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SYSCON_CONFIG(void)
{
    2628:	14d0      	push      	r15
    262a:	1421      	subi      	r14, r14, 4
//------SYSTEM CLK AND PCLK FUNTION---------------------------/
	SYSCON_RST_VALUE();                                                         //SYSCON all register clr
    262c:	e3fffb54 	bsr      	0x1cd4	// 1cd4 <SYSCON_RST_VALUE>
	SYSCON_General_CMD(ENABLE,ENDIS_ISOSC);										//SYSCON enable/disable clock source
    2630:	3101      	movi      	r1, 1
    2632:	3001      	movi      	r0, 1
    2634:	e3fffb7c 	bsr      	0x1d2c	// 1d2c <SYSCON_General_CMD>
	//EMOSC_OSTR_Config(0XAD,0X1f,EM_LFSEL_EN,EM_FLEN_EN,EM_FLSEL_10ns);		//EM_CNT=0X3FF,0xAD(36K),EM_GM=0,Low F modedisable,EM filter disable,if enable,cont set 5ns
	//SYSCON_General_CMD(ENABLE,ENDIS_EMOSC);
	SYSCON_HFOSC_SELECTE(HFOSC_SELECTE_48M);									//HFOSC selected 48MHz
    2638:	3000      	movi      	r0, 0
    263a:	e3fffbd5 	bsr      	0x1de4	// 1de4 <SYSCON_HFOSC_SELECTE>
	SystemCLK_HCLKDIV_PCLKDIV_Config(SYSCLK_HFOSC,HCLK_DIV_1,PCLK_DIV_1,HFOSC_48M);//system clock set, Hclk div ,Pclk div  set system clock=SystemCLK/Hclk div/Pclk div
    263e:	3180      	movi      	r1, 128
    2640:	3308      	movi      	r3, 8
    2642:	3200      	movi      	r2, 0
    2644:	4121      	lsli      	r1, r1, 1
    2646:	3002      	movi      	r0, 2
    2648:	e3fffb8a 	bsr      	0x1d5c	// 1d5c <SystemCLK_HCLKDIV_PCLKDIV_Config>
//------------  WDT FUNTION  --------------------------------/
    SYSCON_IWDCNT_Config(IWDT_TIME_4S,IWDT_INTW_DIV_7);      					//WDT TIME 1s,WDT alarm interrupt time=1s-1s*1/8=0.875S
    264c:	30c0      	movi      	r0, 192
    264e:	3118      	movi      	r1, 24
    2650:	4003      	lsli      	r0, r0, 3
    2652:	e3fffc05 	bsr      	0x1e5c	// 1e5c <SYSCON_IWDCNT_Config>
    SYSCON_WDT_CMD(ENABLE);                                                  	//enable/disable WDT		
    2656:	3001      	movi      	r0, 1
    2658:	e3fffbda 	bsr      	0x1e0c	// 1e0c <SYSCON_WDT_CMD>
    SYSCON_IWDCNT_Reload();                                                   	//reload WDT
    265c:	e3fffbf6 	bsr      	0x1e48	// 1e48 <SYSCON_IWDCNT_Reload>
	IWDT_Int_Enable();
    2660:	e3fffc28 	bsr      	0x1eb0	// 1eb0 <IWDT_Int_Enable>
//------------  WWDT FUNTION  --------------------------------/
	WWDT_CNT_Load(0xFF);
    2664:	30ff      	movi      	r0, 255
    2666:	e3fffce1 	bsr      	0x2028	// 2028 <WWDT_CNT_Load>
	WWDT_CONFIG(PCLK_4096_DIV0,0xFF,WWDT_DBGDIS);
    266a:	3200      	movi      	r2, 0
    266c:	31ff      	movi      	r1, 255
    266e:	3000      	movi      	r0, 0
    2670:	e3fffcd0 	bsr      	0x2010	// 2010 <WWDT_CONFIG>
	WWDT_Int_Config(ENABLE);													
    2674:	3001      	movi      	r0, 1
    2676:	e3fffce1 	bsr      	0x2038	// 2038 <WWDT_Int_Config>
	//WWDT_CMD(ENABLE);															//enable wwdt
//------------  CLO Output --------------------------------/	
	//SYSCON_CLO_CONFIG(CLO_PA08);												//CLO output setting
	//SYSCON_CLO_SRC_SET(CLO_HFCLK,CLO_DIV16);									//CLO output clock and div
//------------  LVD FUNTION  --------------------------------/ 
    SYSCON_LVD_Config(ENABLE_LVDEN,INTDET_LVL_3_9V,RSTDET_LVL_1_9V,ENABLE_LVD_INT,INTDET_POL_fall);   //LVD LVR Enable/Disable
    267a:	3340      	movi      	r3, 64
    267c:	b860      	st.w      	r3, (r14, 0x0)
    267e:	31c0      	movi      	r1, 192
    2680:	3380      	movi      	r3, 128
    2682:	4364      	lsli      	r3, r3, 4
    2684:	3200      	movi      	r2, 0
    2686:	4123      	lsli      	r1, r1, 3
    2688:	3000      	movi      	r0, 0
    268a:	e3fffbf5 	bsr      	0x1e74	// 1e74 <SYSCON_LVD_Config>
    LVD_Int_Enable();	
    268e:	e3fffc03 	bsr      	0x1e94	// 1e94 <LVD_Int_Enable>
//------------  SYSCON Vector  --------------------------------/ 	
	SYSCON_Int_Enable();    														//SYSCON VECTOR
    2692:	e3fffc3d 	bsr      	0x1f0c	// 1f0c <SYSCON_Int_Enable>
	//SYSCON_WakeUp_Enable();    													//Enable WDT wakeup INT
//------------------------------------------------------------/
//OSC CLOCK Calibration
//------------------------------------------------------------/	
	std_clk_calib_source(CLK_ISOSC_27K);
    2696:	3000      	movi      	r0, 0
    2698:	e000105c 	bsr      	0x4750	// 4750 <std_clk_calib_source>
	std_clk_calib(CLK_HFOSC_48M);												//Select the same clock source as the system
    269c:	3000      	movi      	r0, 0
    269e:	e0001071 	bsr      	0x4780	// 4780 <std_clk_calib>
	
}
    26a2:	1401      	addi      	r14, r14, 4
    26a4:	1490      	pop      	r15

Disassembly of section .text.APT32F102_init:

000026a8 <APT32F102_init>:
//ReturnValue:NONE                                                                /
/*********************************************************************************/
/*********************************************************************************/  
/*********************************************************************************/
void APT32F102_init(void) 
{
    26a8:	14d0      	push      	r15
//------------------------------------------------------------/
//Peripheral clock enable and disable
//EntryParameter:NONE
//ReturnValue:NONE
//------------------------------------------------------------/
    SYSCON->PCER0=0xFFFFFFF;                                        //PCLK Enable
    26aa:	1069      	lrw      	r3, 0x2000005c	// 26cc <APT32F102_init+0x24>
    SYSCON->PCER1=0xFFFFFFF;                                        //PCLK Enable
    while(!(SYSCON->PCSR0&0x1));                                    //Wait PCLK enabled	
    26ac:	3101      	movi      	r1, 1
    SYSCON->PCER0=0xFFFFFFF;                                        //PCLK Enable
    26ae:	9340      	ld.w      	r2, (r3, 0x0)
    26b0:	1068      	lrw      	r3, 0xfffffff	// 26d0 <APT32F102_init+0x28>
    26b2:	b26a      	st.w      	r3, (r2, 0x28)
    SYSCON->PCER1=0xFFFFFFF;                                        //PCLK Enable
    26b4:	b26d      	st.w      	r3, (r2, 0x34)
    while(!(SYSCON->PCSR0&0x1));                                    //Wait PCLK enabled	
    26b6:	926c      	ld.w      	r3, (r2, 0x30)
    26b8:	68c4      	and      	r3, r1
    26ba:	3b40      	cmpnei      	r3, 0
    26bc:	0ffd      	bf      	0x26b6	// 26b6 <APT32F102_init+0xe>
//------------------------------------------------------------/
//ISOSC/IMOSC/EMOSC/SYSCLK/IWDT/LVD/EM_CMFAIL/EM_CMRCV/CMD_ERR OSC stable interrupt
//EntryParameter:NONE
//ReturnValue:NONE
//------------------------------------------------------------/
    SYSCON_CONFIG();                                                 //syscon  initial
    26be:	e3ffffb5 	bsr      	0x2628	// 2628 <SYSCON_CONFIG>
	CK_CPU_EnAllNormalIrq();                                         //enable all IRQ
    26c2:	e0000661 	bsr      	0x3384	// 3384 <CK_CPU_EnAllNormalIrq>
    //I2C_MASTER_CONFIG();                                          //I2C harware master initial 
	//I2C_SLAVE_CONFIG();                                           //I2C harware slave initial 
	//SPI_MASTER_CONFIG();											//SPI Master initial 	
	//SPI_SLAVE_CONFIG();											//SPI Slaver initial 
	//SIO_CONFIG();													//SIO initial
    UART0_CONFIG();                                               //UART0 initial 
    26c6:	e3ffff9f 	bsr      	0x2604	// 2604 <UART0_CONFIG>
	//UART1_CONFIG();                                               //UART1 initial 
	//UART2_CONFIG();                                               //UART2 initial 
	//ADC12_CONFIG();                                               //ADC initial 
	//TK_CONFIG();													//Touch Key initial
}
    26ca:	1490      	pop      	r15
    26cc:	2000005c 	.long	0x2000005c
    26d0:	0fffffff 	.long	0x0fffffff

Disassembly of section .text.SYSCONIntHandler:

000026d4 <SYSCONIntHandler>:
//SYSCON Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SYSCONIntHandler(void) 
{
    26d4:	1460      	nie
    26d6:	1462      	ipush
    // ISR content ...
	nop;
    26d8:	6c03      	mov      	r0, r0
	if((SYSCON->MISR&ISOSC_ST)==ISOSC_ST)				//ISOSC stable interrupt
    26da:	117c      	lrw      	r3, 0x2000005c	// 27c8 <SYSCONIntHandler+0xf4>
    26dc:	3280      	movi      	r2, 128
    26de:	9360      	ld.w      	r3, (r3, 0x0)
    26e0:	60c8      	addu      	r3, r2
    26e2:	9323      	ld.w      	r1, (r3, 0xc)
    26e4:	3001      	movi      	r0, 1
    26e6:	6840      	and      	r1, r0
    26e8:	3940      	cmpnei      	r1, 0
    26ea:	0c04      	bf      	0x26f2	// 26f2 <SYSCONIntHandler+0x1e>
	{
		SYSCON->ICR = EMOSC_ST;
	} 
	else if((SYSCON->MISR&HFOSC_ST)==HFOSC_ST)			//HFOSC stable interrupt
	{
		SYSCON->ICR = HFOSC_ST;
    26ec:	b301      	st.w      	r0, (r3, 0x4)
	}
	else if((SYSCON->MISR&CMD_ERR_ST)==CMD_ERR_ST)		//Command error interrupt
	{
		SYSCON->ICR = CMD_ERR_ST;
	}
}
    26ee:	1463      	ipop
    26f0:	1461      	nir
	else if((SYSCON->MISR&IMOSC_ST)==IMOSC_ST)			//IMOSC stable interrupt
    26f2:	9323      	ld.w      	r1, (r3, 0xc)
    26f4:	3002      	movi      	r0, 2
    26f6:	6840      	and      	r1, r0
    26f8:	3940      	cmpnei      	r1, 0
    26fa:	0bf9      	bt      	0x26ec	// 26ec <SYSCONIntHandler+0x18>
	else if((SYSCON->MISR&EMOSC_ST)==EMOSC_ST)			//EMOSC stable interrupt
    26fc:	9323      	ld.w      	r1, (r3, 0xc)
    26fe:	3008      	movi      	r0, 8
    2700:	6840      	and      	r1, r0
    2702:	3940      	cmpnei      	r1, 0
    2704:	0bf4      	bt      	0x26ec	// 26ec <SYSCONIntHandler+0x18>
	else if((SYSCON->MISR&HFOSC_ST)==HFOSC_ST)			//HFOSC stable interrupt
    2706:	9323      	ld.w      	r1, (r3, 0xc)
    2708:	3010      	movi      	r0, 16
    270a:	6840      	and      	r1, r0
    270c:	3940      	cmpnei      	r1, 0
    270e:	0bef      	bt      	0x26ec	// 26ec <SYSCONIntHandler+0x18>
	else if((SYSCON->MISR&SYSCLK_ST)==SYSCLK_ST)		//SYSCLK change end & stable interrupt
    2710:	9323      	ld.w      	r1, (r3, 0xc)
    2712:	6848      	and      	r1, r2
    2714:	3940      	cmpnei      	r1, 0
    2716:	0c03      	bf      	0x271c	// 271c <SYSCONIntHandler+0x48>
		SYSCON->ICR = CMD_ERR_ST;
    2718:	b341      	st.w      	r2, (r3, 0x4)
}
    271a:	07ea      	br      	0x26ee	// 26ee <SYSCONIntHandler+0x1a>
	else if((SYSCON->MISR&IWDT_INT_ST)==IWDT_INT_ST)	//IWDT alarm window interrupt
    271c:	3280      	movi      	r2, 128
    271e:	9323      	ld.w      	r1, (r3, 0xc)
    2720:	4241      	lsli      	r2, r2, 1
    2722:	6848      	and      	r1, r2
    2724:	3940      	cmpnei      	r1, 0
    2726:	0c06      	bf      	0x2732	// 2732 <SYSCONIntHandler+0x5e>
		SYSCON->ICR = IWDT_INT_ST;
    2728:	b341      	st.w      	r2, (r3, 0x4)
		SYSCON->IWDCNT=0x5aul<<24;
    272a:	32b4      	movi      	r2, 180
    272c:	4257      	lsli      	r2, r2, 23
    272e:	b34e      	st.w      	r2, (r3, 0x38)
    2730:	07df      	br      	0x26ee	// 26ee <SYSCONIntHandler+0x1a>
	else if((SYSCON->MISR&WKI_INT_ST)==WKI_INT_ST)
    2732:	3280      	movi      	r2, 128
    2734:	9323      	ld.w      	r1, (r3, 0xc)
    2736:	4242      	lsli      	r2, r2, 2
    2738:	6848      	and      	r1, r2
    273a:	3940      	cmpnei      	r1, 0
    273c:	0bee      	bt      	0x2718	// 2718 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&RAMERRINT_ST)==RAMERRINT_ST)	//SRAM check fail interrupt
    273e:	3280      	movi      	r2, 128
    2740:	9323      	ld.w      	r1, (r3, 0xc)
    2742:	4243      	lsli      	r2, r2, 3
    2744:	6848      	and      	r1, r2
    2746:	3940      	cmpnei      	r1, 0
    2748:	0be8      	bt      	0x2718	// 2718 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&LVD_INT_ST)==LVD_INT_ST)		//LVD threshold interrupt
    274a:	3280      	movi      	r2, 128
    274c:	9323      	ld.w      	r1, (r3, 0xc)
    274e:	4244      	lsli      	r2, r2, 4
    2750:	6848      	and      	r1, r2
    2752:	3940      	cmpnei      	r1, 0
    2754:	0c03      	bf      	0x275a	// 275a <SYSCONIntHandler+0x86>
		nop;
    2756:	6c03      	mov      	r0, r0
    2758:	07e0      	br      	0x2718	// 2718 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&HWD_ERR_ST)==HWD_ERR_ST)		//Hardware Divider divisor = 0 interrupt
    275a:	3280      	movi      	r2, 128
    275c:	9323      	ld.w      	r1, (r3, 0xc)
    275e:	4245      	lsli      	r2, r2, 5
    2760:	6848      	and      	r1, r2
    2762:	3940      	cmpnei      	r1, 0
    2764:	0bda      	bt      	0x2718	// 2718 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EFL_ERR_ST)==EFL_ERR_ST)		//Flash check fail interrupt
    2766:	3280      	movi      	r2, 128
    2768:	9323      	ld.w      	r1, (r3, 0xc)
    276a:	4246      	lsli      	r2, r2, 6
    276c:	6848      	and      	r1, r2
    276e:	3940      	cmpnei      	r1, 0
    2770:	0bd4      	bt      	0x2718	// 2718 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&OPTERR_INT)==OPTERR_INT)		//Option load fail interrupt
    2772:	3280      	movi      	r2, 128
    2774:	9323      	ld.w      	r1, (r3, 0xc)
    2776:	4247      	lsli      	r2, r2, 7
    2778:	6848      	and      	r1, r2
    277a:	3940      	cmpnei      	r1, 0
    277c:	0bce      	bt      	0x2718	// 2718 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_CMLST_ST)==EM_CMLST_ST)	//EMOSC clock monitor fail interrupt
    277e:	3280      	movi      	r2, 128
    2780:	9323      	ld.w      	r1, (r3, 0xc)
    2782:	424b      	lsli      	r2, r2, 11
    2784:	6848      	and      	r1, r2
    2786:	3940      	cmpnei      	r1, 0
    2788:	0bc8      	bt      	0x2718	// 2718 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG0_ST)==EM_EVTRG0_ST)	//Event Trigger Channel 0 Interrupt
    278a:	3280      	movi      	r2, 128
    278c:	9323      	ld.w      	r1, (r3, 0xc)
    278e:	424c      	lsli      	r2, r2, 12
    2790:	6848      	and      	r1, r2
    2792:	3940      	cmpnei      	r1, 0
    2794:	0bc2      	bt      	0x2718	// 2718 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG1_ST)==EM_EVTRG1_ST)	//Event Trigger Channel 1 Interrupt
    2796:	3280      	movi      	r2, 128
    2798:	9323      	ld.w      	r1, (r3, 0xc)
    279a:	424d      	lsli      	r2, r2, 13
    279c:	6848      	and      	r1, r2
    279e:	3940      	cmpnei      	r1, 0
    27a0:	0bbc      	bt      	0x2718	// 2718 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG2_ST)==EM_EVTRG2_ST)	//Event Trigger Channel 2 Interrupt
    27a2:	3280      	movi      	r2, 128
    27a4:	9323      	ld.w      	r1, (r3, 0xc)
    27a6:	424e      	lsli      	r2, r2, 14
    27a8:	6848      	and      	r1, r2
    27aa:	3940      	cmpnei      	r1, 0
    27ac:	0bb6      	bt      	0x2718	// 2718 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG3_ST)==EM_EVTRG3_ST)	//Event Trigger Channel 3 Interrupt
    27ae:	3280      	movi      	r2, 128
    27b0:	9323      	ld.w      	r1, (r3, 0xc)
    27b2:	424f      	lsli      	r2, r2, 15
    27b4:	6848      	and      	r1, r2
    27b6:	3940      	cmpnei      	r1, 0
    27b8:	0bb0      	bt      	0x2718	// 2718 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&CMD_ERR_ST)==CMD_ERR_ST)		//Command error interrupt
    27ba:	3280      	movi      	r2, 128
    27bc:	9323      	ld.w      	r1, (r3, 0xc)
    27be:	4256      	lsli      	r2, r2, 22
    27c0:	6848      	and      	r1, r2
    27c2:	3940      	cmpnei      	r1, 0
    27c4:	0baa      	bt      	0x2718	// 2718 <SYSCONIntHandler+0x44>
    27c6:	0794      	br      	0x26ee	// 26ee <SYSCONIntHandler+0x1a>
    27c8:	2000005c 	.long	0x2000005c

Disassembly of section .text.IFCIntHandler:

000027cc <IFCIntHandler>:
//IFC Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void IFCIntHandler(void) 
{
    27cc:	1460      	nie
    27ce:	1462      	ipush
    // ISR content ...
	if(IFC->MISR&ERS_END_INT)			
    27d0:	1078      	lrw      	r3, 0x20000060	// 2830 <IFCIntHandler+0x64>
    27d2:	3101      	movi      	r1, 1
    27d4:	9360      	ld.w      	r3, (r3, 0x0)
    27d6:	934b      	ld.w      	r2, (r3, 0x2c)
    27d8:	6884      	and      	r2, r1
    27da:	3a40      	cmpnei      	r2, 0
    27dc:	0c04      	bf      	0x27e4	// 27e4 <IFCIntHandler+0x18>
	{
		IFC->ICR=RGM_END_INT;
	}
	else if(IFC->MISR&PEP_END_INT)		
	{
		IFC->ICR=PEP_END_INT;
    27de:	b32c      	st.w      	r1, (r3, 0x30)
	}
	else if(IFC->MISR&OVW_ERR_INT)		
	{
		IFC->ICR=OVW_ERR_INT;
	}
}
    27e0:	1463      	ipop
    27e2:	1461      	nir
	else if(IFC->MISR&RGM_END_INT)		
    27e4:	934b      	ld.w      	r2, (r3, 0x2c)
    27e6:	3102      	movi      	r1, 2
    27e8:	6884      	and      	r2, r1
    27ea:	3a40      	cmpnei      	r2, 0
    27ec:	0bf9      	bt      	0x27de	// 27de <IFCIntHandler+0x12>
	else if(IFC->MISR&PEP_END_INT)		
    27ee:	934b      	ld.w      	r2, (r3, 0x2c)
    27f0:	3104      	movi      	r1, 4
    27f2:	6884      	and      	r2, r1
    27f4:	3a40      	cmpnei      	r2, 0
    27f6:	0bf4      	bt      	0x27de	// 27de <IFCIntHandler+0x12>
	else if(IFC->MISR&PROT_ERR_INT)		
    27f8:	3280      	movi      	r2, 128
    27fa:	932b      	ld.w      	r1, (r3, 0x2c)
    27fc:	4245      	lsli      	r2, r2, 5
    27fe:	6848      	and      	r1, r2
    2800:	3940      	cmpnei      	r1, 0
    2802:	0c03      	bf      	0x2808	// 2808 <IFCIntHandler+0x3c>
		IFC->ICR=OVW_ERR_INT;
    2804:	b34c      	st.w      	r2, (r3, 0x30)
}
    2806:	07ed      	br      	0x27e0	// 27e0 <IFCIntHandler+0x14>
	else if(IFC->MISR&UDEF_ERR_INT)		
    2808:	3280      	movi      	r2, 128
    280a:	932b      	ld.w      	r1, (r3, 0x2c)
    280c:	4246      	lsli      	r2, r2, 6
    280e:	6848      	and      	r1, r2
    2810:	3940      	cmpnei      	r1, 0
    2812:	0bf9      	bt      	0x2804	// 2804 <IFCIntHandler+0x38>
	else if(IFC->MISR&ADDR_ERR_INT)		
    2814:	3280      	movi      	r2, 128
    2816:	932b      	ld.w      	r1, (r3, 0x2c)
    2818:	4247      	lsli      	r2, r2, 7
    281a:	6848      	and      	r1, r2
    281c:	3940      	cmpnei      	r1, 0
    281e:	0bf3      	bt      	0x2804	// 2804 <IFCIntHandler+0x38>
	else if(IFC->MISR&OVW_ERR_INT)		
    2820:	3280      	movi      	r2, 128
    2822:	932b      	ld.w      	r1, (r3, 0x2c)
    2824:	4248      	lsli      	r2, r2, 8
    2826:	6848      	and      	r1, r2
    2828:	3940      	cmpnei      	r1, 0
    282a:	0bed      	bt      	0x2804	// 2804 <IFCIntHandler+0x38>
    282c:	07da      	br      	0x27e0	// 27e0 <IFCIntHandler+0x14>
    282e:	0000      	bkpt
    2830:	20000060 	.long	0x20000060

Disassembly of section .text.ADCIntHandler:

00002834 <ADCIntHandler>:
//ADC Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void ADCIntHandler(void) 
{
    2834:	1460      	nie
    2836:	1462      	ipush
    2838:	14d0      	push      	r15
    // ISR content ...
	if((ADC0->SR&ADC12_EOC)==ADC12_EOC)				//ADC EOC interrupt
    283a:	107e      	lrw      	r3, 0x20000050	// 28b0 <ADCIntHandler+0x7c>
    283c:	3101      	movi      	r1, 1
    283e:	9360      	ld.w      	r3, (r3, 0x0)
    2840:	9348      	ld.w      	r2, (r3, 0x20)
    2842:	6884      	and      	r2, r1
    2844:	3a40      	cmpnei      	r2, 0
    2846:	0c07      	bf      	0x2854	// 2854 <ADCIntHandler+0x20>
	{
		ADC0->CSR = ADC12_READY;
	}
	else if((ADC0->SR&ADC12_OVR)==ADC12_OVR)		//ADC OVR interrupt
	{
		ADC0->CSR = ADC12_OVR;
    2848:	b327      	st.w      	r1, (r3, 0x1c)
	}
	else if((ADC0->SR&ADC12_SEQ_END0)==ADC12_SEQ_END0) //ADC SEQ0 interrupt,SEQ1~SEQ15 replace the parameter with ADC12_SEQ_END1~ADC12_SEQ_END15
	{
		ADC0->CSR = ADC12_SEQ_END0;
	}
}
    284a:	d9ee2000 	ld.w      	r15, (r14, 0x0)
    284e:	1401      	addi      	r14, r14, 4
    2850:	1463      	ipop
    2852:	1461      	nir
	else if((ADC0->SR&ADC12_READY)==ADC12_READY)	//ADC READY interrupt
    2854:	9348      	ld.w      	r2, (r3, 0x20)
    2856:	3102      	movi      	r1, 2
    2858:	6884      	and      	r2, r1
    285a:	3a40      	cmpnei      	r2, 0
    285c:	0bf6      	bt      	0x2848	// 2848 <ADCIntHandler+0x14>
	else if((ADC0->SR&ADC12_OVR)==ADC12_OVR)		//ADC OVR interrupt
    285e:	9348      	ld.w      	r2, (r3, 0x20)
    2860:	3104      	movi      	r1, 4
    2862:	6884      	and      	r2, r1
    2864:	3a40      	cmpnei      	r2, 0
    2866:	0bf1      	bt      	0x2848	// 2848 <ADCIntHandler+0x14>
	else if((ADC0->SR&ADC12_CMP0H)==ADC12_CMP0H)	//ADC CMP0H interrupt
    2868:	9348      	ld.w      	r2, (r3, 0x20)
    286a:	3110      	movi      	r1, 16
    286c:	6884      	and      	r2, r1
    286e:	3a40      	cmpnei      	r2, 0
    2870:	0c06      	bf      	0x287c	// 287c <ADCIntHandler+0x48>
		ADC0->CSR = ADC12_CMP1H;
    2872:	b327      	st.w      	r1, (r3, 0x1c)
		printf("+\n");
    2874:	1010      	lrw      	r0, 0x4b48	// 28b4 <ADCIntHandler+0x80>
		printf("-\n");
    2876:	e3fff877 	bsr      	0x1964	// 1964 <__GI_puts>
    287a:	07e8      	br      	0x284a	// 284a <ADCIntHandler+0x16>
	else if((ADC0->SR&ADC12_CMP0L)==ADC12_CMP0L)	//ADC CMP0L interrupt.
    287c:	9348      	ld.w      	r2, (r3, 0x20)
    287e:	3120      	movi      	r1, 32
    2880:	6884      	and      	r2, r1
    2882:	3a40      	cmpnei      	r2, 0
    2884:	0c04      	bf      	0x288c	// 288c <ADCIntHandler+0x58>
		ADC0->CSR = ADC12_CMP1L;
    2886:	b327      	st.w      	r1, (r3, 0x1c)
		printf("-\n");
    2888:	100c      	lrw      	r0, 0x4b4a	// 28b8 <ADCIntHandler+0x84>
    288a:	07f6      	br      	0x2876	// 2876 <ADCIntHandler+0x42>
	else if((ADC0->SR&ADC12_CMP1H)==ADC12_CMP1H)	//ADC CMP1H interrupt.
    288c:	9348      	ld.w      	r2, (r3, 0x20)
    288e:	3140      	movi      	r1, 64
    2890:	6884      	and      	r2, r1
    2892:	3a40      	cmpnei      	r2, 0
    2894:	0bef      	bt      	0x2872	// 2872 <ADCIntHandler+0x3e>
	else if((ADC0->SR&ADC12_CMP1L)==ADC12_CMP1L)	//ADC CMP1L interrupt.
    2896:	9348      	ld.w      	r2, (r3, 0x20)
    2898:	3180      	movi      	r1, 128
    289a:	6884      	and      	r2, r1
    289c:	3a40      	cmpnei      	r2, 0
    289e:	0bf4      	bt      	0x2886	// 2886 <ADCIntHandler+0x52>
	else if((ADC0->SR&ADC12_SEQ_END0)==ADC12_SEQ_END0) //ADC SEQ0 interrupt,SEQ1~SEQ15 replace the parameter with ADC12_SEQ_END1~ADC12_SEQ_END15
    28a0:	3280      	movi      	r2, 128
    28a2:	9328      	ld.w      	r1, (r3, 0x20)
    28a4:	4249      	lsli      	r2, r2, 9
    28a6:	6848      	and      	r1, r2
    28a8:	3940      	cmpnei      	r1, 0
    28aa:	0fd0      	bf      	0x284a	// 284a <ADCIntHandler+0x16>
		ADC0->CSR = ADC12_SEQ_END0;
    28ac:	b347      	st.w      	r2, (r3, 0x1c)
}
    28ae:	07ce      	br      	0x284a	// 284a <ADCIntHandler+0x16>
    28b0:	20000050 	.long	0x20000050
    28b4:	00004b48 	.long	0x00004b48
    28b8:	00004b4a 	.long	0x00004b4a

Disassembly of section .text.EPT0IntHandler:

000028bc <EPT0IntHandler>:
//EPT0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EPT0IntHandler(void) 
{
    28bc:	1460      	nie
    28be:	1462      	ipush
    28c0:	14d1      	push      	r4, r15
    // ISR content ...
	if((EPT0->MISR&EPT_TRGEV0_INT)==EPT_TRGEV0_INT)			//TRGEV0 interrupt
    28c2:	1386      	lrw      	r4, 0x20000020	// 2a58 <EPT0IntHandler+0x19c>
    28c4:	3280      	movi      	r2, 128
    28c6:	9460      	ld.w      	r3, (r4, 0x0)
    28c8:	60c8      	addu      	r3, r2
    28ca:	9335      	ld.w      	r1, (r3, 0x54)
    28cc:	3001      	movi      	r0, 1
    28ce:	6840      	and      	r1, r0
    28d0:	3940      	cmpnei      	r1, 0
    28d2:	0c03      	bf      	0x28d8	// 28d8 <EPT0IntHandler+0x1c>
		EXTI_trigger_CMD(DISABLE,EXI_PIN0,_EXIFT);
		R_CMPB_BUF=EPT0->CMPB;			//Duty counter
	}
	else if((EPT0->MISR&EPT_CAP_LD2)==EPT_CAP_LD2)			//Capture Load to CMPC interrupt
	{
		EPT0->ICR=EPT_CAP_LD2;
    28d4:	b317      	st.w      	r0, (r3, 0x5c)
    28d6:	0424      	br      	0x291e	// 291e <EPT0IntHandler+0x62>
	else if((EPT0->MISR&EPT_TRGEV1_INT)==EPT_TRGEV1_INT)	//TRGEV1 interrupt
    28d8:	9335      	ld.w      	r1, (r3, 0x54)
    28da:	3002      	movi      	r0, 2
    28dc:	6840      	and      	r1, r0
    28de:	3940      	cmpnei      	r1, 0
    28e0:	0bfa      	bt      	0x28d4	// 28d4 <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_TRGEV2_INT)==EPT_TRGEV2_INT)	//TRGEV2 interrupt
    28e2:	9335      	ld.w      	r1, (r3, 0x54)
    28e4:	3004      	movi      	r0, 4
    28e6:	6840      	and      	r1, r0
    28e8:	3940      	cmpnei      	r1, 0
    28ea:	0bf5      	bt      	0x28d4	// 28d4 <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_TRGEV3_INT)==EPT_TRGEV3_INT)	//TRGEV3 interrupt
    28ec:	9335      	ld.w      	r1, (r3, 0x54)
    28ee:	3008      	movi      	r0, 8
    28f0:	6840      	and      	r1, r0
    28f2:	3940      	cmpnei      	r1, 0
    28f4:	0bf0      	bt      	0x28d4	// 28d4 <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_CAP_LD0)==EPT_CAP_LD0)			//Capture Load to CMPA interrupt
    28f6:	9335      	ld.w      	r1, (r3, 0x54)
    28f8:	3010      	movi      	r0, 16
    28fa:	6840      	and      	r1, r0
    28fc:	3940      	cmpnei      	r1, 0
    28fe:	0c1f      	bf      	0x293c	// 293c <EPT0IntHandler+0x80>
		EPT0->ICR=EPT_CAP_LD0;
    2900:	b317      	st.w      	r0, (r3, 0x5c)
		EXTI_trigger_CMD(DISABLE,EXI_PIN0,_EXIRT);
    2902:	3200      	movi      	r2, 0
    2904:	3101      	movi      	r1, 1
    2906:	3000      	movi      	r0, 0
    2908:	e3fffae2 	bsr      	0x1ecc	// 1ecc <EXTI_trigger_CMD>
		EXTI_trigger_CMD(ENABLE,EXI_PIN0,_EXIFT);
    290c:	3201      	movi      	r2, 1
    290e:	3101      	movi      	r1, 1
    2910:	3001      	movi      	r0, 1
    2912:	e3fffadd 	bsr      	0x1ecc	// 1ecc <EXTI_trigger_CMD>
		R_CMPA_BUF=EPT0->CMPA;			//Low voltage counter
    2916:	9460      	ld.w      	r3, (r4, 0x0)
    2918:	934b      	ld.w      	r2, (r3, 0x2c)
    291a:	1271      	lrw      	r3, 0x200001b0	// 2a5c <EPT0IntHandler+0x1a0>
		R_CMPB_BUF=EPT0->CMPB;			//Duty counter
    291c:	b340      	st.w      	r2, (r3, 0x0)
	else if((EPT0->MISR&EPT_PEND)==EPT_PEND)				//End of cycle interrupt
	{
		EPT0->ICR=EPT_PEND;
	}
	//Emergency interruption
	if((EPT0->EMMISR&EPT_EP0_EMINT)==EPT_EP0_EMINT)			//interrupt flag of EP0 event
    291e:	9460      	ld.w      	r3, (r4, 0x0)
    2920:	3280      	movi      	r2, 128
    2922:	60c8      	addu      	r3, r2
    2924:	932b      	ld.w      	r1, (r3, 0x2c)
    2926:	3001      	movi      	r0, 1
    2928:	6840      	and      	r1, r0
    292a:	3940      	cmpnei      	r1, 0
    292c:	0c5e      	bf      	0x29e8	// 29e8 <EPT0IntHandler+0x12c>
	{
		EPT0->EMICR=EPT_EP5_EMINT;
	}
	else if((EPT0->EMMISR&EPT_EP6_EMINT)==EPT_EP6_EMINT)	//interrupt flag of EP6 event
	{
		EPT0->EMICR=EPT_EP6_EMINT;
    292e:	b30d      	st.w      	r0, (r3, 0x34)
	}
	else if((EPT0->EMMISR&EPT_EOM_FAULT_EMINT)==EPT_EOM_FAULT_EMINT)	//interrupt flag of EOM_FAULT event
	{
		EPT0->EMICR=EPT_EOM_FAULT_EMINT;
	}
}
    2930:	d9ee2001 	ld.w      	r15, (r14, 0x4)
    2934:	9880      	ld.w      	r4, (r14, 0x0)
    2936:	1402      	addi      	r14, r14, 8
    2938:	1463      	ipop
    293a:	1461      	nir
	else if((EPT0->MISR&EPT_CAP_LD1)==EPT_CAP_LD1)			//Capture Load to CMPB interrupt
    293c:	9335      	ld.w      	r1, (r3, 0x54)
    293e:	3020      	movi      	r0, 32
    2940:	6840      	and      	r1, r0
    2942:	3940      	cmpnei      	r1, 0
    2944:	0c10      	bf      	0x2964	// 2964 <EPT0IntHandler+0xa8>
		EPT0->ICR=EPT_CAP_LD1;
    2946:	b317      	st.w      	r0, (r3, 0x5c)
		EXTI_trigger_CMD(ENABLE,EXI_PIN0,_EXIRT);
    2948:	3200      	movi      	r2, 0
    294a:	3101      	movi      	r1, 1
    294c:	3001      	movi      	r0, 1
    294e:	e3fffabf 	bsr      	0x1ecc	// 1ecc <EXTI_trigger_CMD>
		EXTI_trigger_CMD(DISABLE,EXI_PIN0,_EXIFT);
    2952:	3201      	movi      	r2, 1
    2954:	3101      	movi      	r1, 1
    2956:	3000      	movi      	r0, 0
    2958:	e3fffaba 	bsr      	0x1ecc	// 1ecc <EXTI_trigger_CMD>
		R_CMPB_BUF=EPT0->CMPB;			//Duty counter
    295c:	9460      	ld.w      	r3, (r4, 0x0)
    295e:	934c      	ld.w      	r2, (r3, 0x30)
    2960:	1260      	lrw      	r3, 0x200001a8	// 2a60 <EPT0IntHandler+0x1a4>
    2962:	07dd      	br      	0x291c	// 291c <EPT0IntHandler+0x60>
	else if((EPT0->MISR&EPT_CAP_LD2)==EPT_CAP_LD2)			//Capture Load to CMPC interrupt
    2964:	9335      	ld.w      	r1, (r3, 0x54)
    2966:	3040      	movi      	r0, 64
    2968:	6840      	and      	r1, r0
    296a:	3940      	cmpnei      	r1, 0
    296c:	0bb4      	bt      	0x28d4	// 28d4 <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_CAP_LD3)==EPT_CAP_LD3)			//Capture Load to CMPD interrupt
    296e:	9335      	ld.w      	r1, (r3, 0x54)
    2970:	6848      	and      	r1, r2
    2972:	3940      	cmpnei      	r1, 0
    2974:	0c03      	bf      	0x297a	// 297a <EPT0IntHandler+0xbe>
		EPT0->ICR=EPT_PEND;
    2976:	b357      	st.w      	r2, (r3, 0x5c)
    2978:	07d3      	br      	0x291e	// 291e <EPT0IntHandler+0x62>
	else if((EPT0->MISR&EPT_CAU)==EPT_CAU)					//Up-Counting phase CNT = CMPA interrupt
    297a:	3280      	movi      	r2, 128
    297c:	9335      	ld.w      	r1, (r3, 0x54)
    297e:	4241      	lsli      	r2, r2, 1
    2980:	6848      	and      	r1, r2
    2982:	3940      	cmpnei      	r1, 0
    2984:	0bf9      	bt      	0x2976	// 2976 <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CAD)==EPT_CAD)					//Down-Counting phase CNT = CMPA interrupt
    2986:	3280      	movi      	r2, 128
    2988:	9335      	ld.w      	r1, (r3, 0x54)
    298a:	4242      	lsli      	r2, r2, 2
    298c:	6848      	and      	r1, r2
    298e:	3940      	cmpnei      	r1, 0
    2990:	0bf3      	bt      	0x2976	// 2976 <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CBU)==EPT_CBU)					//Up-Counting phase CNT = CMPB interrupt 
    2992:	3280      	movi      	r2, 128
    2994:	9335      	ld.w      	r1, (r3, 0x54)
    2996:	4243      	lsli      	r2, r2, 3
    2998:	6848      	and      	r1, r2
    299a:	3940      	cmpnei      	r1, 0
    299c:	0bed      	bt      	0x2976	// 2976 <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CBD)==EPT_CBD)					//Down-Counting phase CNT = CMPB interrupt
    299e:	3280      	movi      	r2, 128
    29a0:	9335      	ld.w      	r1, (r3, 0x54)
    29a2:	4244      	lsli      	r2, r2, 4
    29a4:	6848      	and      	r1, r2
    29a6:	3940      	cmpnei      	r1, 0
    29a8:	0be7      	bt      	0x2976	// 2976 <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CCU)==EPT_CCU)					//Up-Counting phase CNT = CMPC interrupt 
    29aa:	3280      	movi      	r2, 128
    29ac:	9335      	ld.w      	r1, (r3, 0x54)
    29ae:	4245      	lsli      	r2, r2, 5
    29b0:	6848      	and      	r1, r2
    29b2:	3940      	cmpnei      	r1, 0
    29b4:	0be1      	bt      	0x2976	// 2976 <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CCD)==EPT_CCD)					//Down-Counting phase CNT = CMPC interrupt
    29b6:	3280      	movi      	r2, 128
    29b8:	9335      	ld.w      	r1, (r3, 0x54)
    29ba:	4246      	lsli      	r2, r2, 6
    29bc:	6848      	and      	r1, r2
    29be:	3940      	cmpnei      	r1, 0
    29c0:	0bdb      	bt      	0x2976	// 2976 <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CDU)==EPT_CDU)					//Up-Counting phase CNT = CMPD interrupt
    29c2:	3280      	movi      	r2, 128
    29c4:	9335      	ld.w      	r1, (r3, 0x54)
    29c6:	4247      	lsli      	r2, r2, 7
    29c8:	6848      	and      	r1, r2
    29ca:	3940      	cmpnei      	r1, 0
    29cc:	0bd5      	bt      	0x2976	// 2976 <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CDD)==EPT_CDD)					//Down-Counting phase CNT = CMPD interrupt
    29ce:	3280      	movi      	r2, 128
    29d0:	9335      	ld.w      	r1, (r3, 0x54)
    29d2:	4248      	lsli      	r2, r2, 8
    29d4:	6848      	and      	r1, r2
    29d6:	3940      	cmpnei      	r1, 0
    29d8:	0bcf      	bt      	0x2976	// 2976 <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_PEND)==EPT_PEND)				//End of cycle interrupt
    29da:	3280      	movi      	r2, 128
    29dc:	9335      	ld.w      	r1, (r3, 0x54)
    29de:	4249      	lsli      	r2, r2, 9
    29e0:	6848      	and      	r1, r2
    29e2:	3940      	cmpnei      	r1, 0
    29e4:	0f9d      	bf      	0x291e	// 291e <EPT0IntHandler+0x62>
    29e6:	07c8      	br      	0x2976	// 2976 <EPT0IntHandler+0xba>
	else if((EPT0->EMMISR&EPT_EP1_EMINT)==EPT_EP1_EMINT)	//interrupt flag of EP1 event
    29e8:	932b      	ld.w      	r1, (r3, 0x2c)
    29ea:	3002      	movi      	r0, 2
    29ec:	6840      	and      	r1, r0
    29ee:	3940      	cmpnei      	r1, 0
    29f0:	0b9f      	bt      	0x292e	// 292e <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP2_EMINT)==EPT_EP2_EMINT)	//interrupt flag of EP2 event
    29f2:	932b      	ld.w      	r1, (r3, 0x2c)
    29f4:	3004      	movi      	r0, 4
    29f6:	6840      	and      	r1, r0
    29f8:	3940      	cmpnei      	r1, 0
    29fa:	0b9a      	bt      	0x292e	// 292e <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP3_EMINT)==EPT_EP3_EMINT)	//interrupt flag of EP3 event
    29fc:	932b      	ld.w      	r1, (r3, 0x2c)
    29fe:	3008      	movi      	r0, 8
    2a00:	6840      	and      	r1, r0
    2a02:	3940      	cmpnei      	r1, 0
    2a04:	0b95      	bt      	0x292e	// 292e <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP4_EMINT)==EPT_EP4_EMINT)	//interrupt flag of EP4 event
    2a06:	932b      	ld.w      	r1, (r3, 0x2c)
    2a08:	3010      	movi      	r0, 16
    2a0a:	6840      	and      	r1, r0
    2a0c:	3940      	cmpnei      	r1, 0
    2a0e:	0b90      	bt      	0x292e	// 292e <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP5_EMINT)==EPT_EP5_EMINT)	//interrupt flag of EP5 event
    2a10:	932b      	ld.w      	r1, (r3, 0x2c)
    2a12:	3020      	movi      	r0, 32
    2a14:	6840      	and      	r1, r0
    2a16:	3940      	cmpnei      	r1, 0
    2a18:	0b8b      	bt      	0x292e	// 292e <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP6_EMINT)==EPT_EP6_EMINT)	//interrupt flag of EP6 event
    2a1a:	932b      	ld.w      	r1, (r3, 0x2c)
    2a1c:	3040      	movi      	r0, 64
    2a1e:	6840      	and      	r1, r0
    2a20:	3940      	cmpnei      	r1, 0
    2a22:	0b86      	bt      	0x292e	// 292e <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP7_EMINT)==EPT_EP7_EMINT)	//interrupt flag of EP7 event
    2a24:	932b      	ld.w      	r1, (r3, 0x2c)
    2a26:	6848      	and      	r1, r2
    2a28:	3940      	cmpnei      	r1, 0
    2a2a:	0c03      	bf      	0x2a30	// 2a30 <EPT0IntHandler+0x174>
		EPT0->EMICR=EPT_EOM_FAULT_EMINT;
    2a2c:	b34d      	st.w      	r2, (r3, 0x34)
}
    2a2e:	0781      	br      	0x2930	// 2930 <EPT0IntHandler+0x74>
	else if((EPT0->EMMISR&EPT_CPU_FAULT_EMINT)==EPT_CPU_FAULT_EMINT)	//interrupt flag of CPU_FAULT event
    2a30:	3280      	movi      	r2, 128
    2a32:	932b      	ld.w      	r1, (r3, 0x2c)
    2a34:	4241      	lsli      	r2, r2, 1
    2a36:	6848      	and      	r1, r2
    2a38:	3940      	cmpnei      	r1, 0
    2a3a:	0bf9      	bt      	0x2a2c	// 2a2c <EPT0IntHandler+0x170>
	else if((EPT0->EMMISR&EPT_MEM_FAULT_EMINT)==EPT_MEM_FAULT_EMINT)	//interrupt flag of MEM_FAULT event
    2a3c:	3280      	movi      	r2, 128
    2a3e:	932b      	ld.w      	r1, (r3, 0x2c)
    2a40:	4242      	lsli      	r2, r2, 2
    2a42:	6848      	and      	r1, r2
    2a44:	3940      	cmpnei      	r1, 0
    2a46:	0bf3      	bt      	0x2a2c	// 2a2c <EPT0IntHandler+0x170>
	else if((EPT0->EMMISR&EPT_EOM_FAULT_EMINT)==EPT_EOM_FAULT_EMINT)	//interrupt flag of EOM_FAULT event
    2a48:	3280      	movi      	r2, 128
    2a4a:	932b      	ld.w      	r1, (r3, 0x2c)
    2a4c:	4243      	lsli      	r2, r2, 3
    2a4e:	6848      	and      	r1, r2
    2a50:	3940      	cmpnei      	r1, 0
    2a52:	0bed      	bt      	0x2a2c	// 2a2c <EPT0IntHandler+0x170>
    2a54:	076e      	br      	0x2930	// 2930 <EPT0IntHandler+0x74>
    2a56:	0000      	bkpt
    2a58:	20000020 	.long	0x20000020
    2a5c:	200001b0 	.long	0x200001b0
    2a60:	200001a8 	.long	0x200001a8

Disassembly of section .text.WWDTHandler:

00002a64 <WWDTHandler>:
//WWDT Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void WWDTHandler(void)
{
    2a64:	1460      	nie
    2a66:	1462      	ipush
    2a68:	14d2      	push      	r4-r5, r15
	WWDT->ICR=0X01;
    2a6a:	10ab      	lrw      	r5, 0x20000010	// 2a94 <WWDTHandler+0x30>
    2a6c:	3401      	movi      	r4, 1
    2a6e:	9560      	ld.w      	r3, (r5, 0x0)
    2a70:	b385      	st.w      	r4, (r3, 0x14)
	WWDT_CNT_Load(0xFF);
    2a72:	30ff      	movi      	r0, 255
    2a74:	e3fffada 	bsr      	0x2028	// 2028 <WWDT_CNT_Load>
	if((WWDT->MISR&WWDT_EVI)==WWDT_EVI)					//WWDT EVI interrupt
    2a78:	9540      	ld.w      	r2, (r5, 0x0)
    2a7a:	9263      	ld.w      	r3, (r2, 0xc)
    2a7c:	68d0      	and      	r3, r4
    2a7e:	3b40      	cmpnei      	r3, 0
    2a80:	0c02      	bf      	0x2a84	// 2a84 <WWDTHandler+0x20>
	{
		WWDT->ICR = WWDT_EVI;
    2a82:	b285      	st.w      	r4, (r2, 0x14)
	} 
}
    2a84:	d9ee2002 	ld.w      	r15, (r14, 0x8)
    2a88:	98a1      	ld.w      	r5, (r14, 0x4)
    2a8a:	9880      	ld.w      	r4, (r14, 0x0)
    2a8c:	1403      	addi      	r14, r14, 12
    2a8e:	1463      	ipop
    2a90:	1461      	nir
    2a92:	0000      	bkpt
    2a94:	20000010 	.long	0x20000010

Disassembly of section .text.GPT0IntHandler:

00002a98 <GPT0IntHandler>:
//GPT0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void GPT0IntHandler(void) 
{
    2a98:	1460      	nie
    2a9a:	1462      	ipush
    // ISR content ...
	if((GPT0->MISR&GPT_INT_TRGEV0)==GPT_INT_TRGEV0)			//TRGEV0 interrupt
    2a9c:	107e      	lrw      	r3, 0x20000024	// 2b14 <GPT0IntHandler+0x7c>
    2a9e:	3101      	movi      	r1, 1
    2aa0:	9360      	ld.w      	r3, (r3, 0x0)
    2aa2:	237f      	addi      	r3, 128
    2aa4:	9355      	ld.w      	r2, (r3, 0x54)
    2aa6:	6884      	and      	r2, r1
    2aa8:	3a40      	cmpnei      	r2, 0
    2aaa:	0c04      	bf      	0x2ab2	// 2ab2 <GPT0IntHandler+0x1a>
	{
		GPT0->ICR = GPT_INT_CAPLD0;
	}
	else if((GPT0->MISR&GPT_INT_CAPLD1)==GPT_INT_CAPLD1)		//Capture Load to CMPB interrupt
	{
		GPT0->ICR = GPT_INT_CAPLD1;
    2aac:	b337      	st.w      	r1, (r3, 0x5c)
	}
	else if((GPT0->MISR&GPT_INT_PEND)==GPT_INT_PEND)		//End of cycle interrupt 
	{
		GPT0->ICR = GPT_INT_PEND;
	}
}
    2aae:	1463      	ipop
    2ab0:	1461      	nir
	else if((GPT0->MISR&GPT_INT_TRGEV1)==GPT_INT_TRGEV1)	//TRGEV1 interrupt
    2ab2:	9355      	ld.w      	r2, (r3, 0x54)
    2ab4:	3102      	movi      	r1, 2
    2ab6:	6884      	and      	r2, r1
    2ab8:	3a40      	cmpnei      	r2, 0
    2aba:	0bf9      	bt      	0x2aac	// 2aac <GPT0IntHandler+0x14>
	else if((GPT0->MISR&GPT_INT_CAPLD0)==GPT_INT_CAPLD0)		//Capture Load to CMPA interrupt
    2abc:	9355      	ld.w      	r2, (r3, 0x54)
    2abe:	3110      	movi      	r1, 16
    2ac0:	6884      	and      	r2, r1
    2ac2:	3a40      	cmpnei      	r2, 0
    2ac4:	0bf4      	bt      	0x2aac	// 2aac <GPT0IntHandler+0x14>
	else if((GPT0->MISR&GPT_INT_CAPLD1)==GPT_INT_CAPLD1)		//Capture Load to CMPB interrupt
    2ac6:	9355      	ld.w      	r2, (r3, 0x54)
    2ac8:	3120      	movi      	r1, 32
    2aca:	6884      	and      	r2, r1
    2acc:	3a40      	cmpnei      	r2, 0
    2ace:	0bef      	bt      	0x2aac	// 2aac <GPT0IntHandler+0x14>
	else if((GPT0->MISR&GPT_INT_CAU)==GPT_INT_CAU)			//Up-Counting phase CNT = CMPA Interrupt
    2ad0:	3280      	movi      	r2, 128
    2ad2:	9335      	ld.w      	r1, (r3, 0x54)
    2ad4:	4241      	lsli      	r2, r2, 1
    2ad6:	6848      	and      	r1, r2
    2ad8:	3940      	cmpnei      	r1, 0
    2ada:	0c03      	bf      	0x2ae0	// 2ae0 <GPT0IntHandler+0x48>
		GPT0->ICR = GPT_INT_PEND;
    2adc:	b357      	st.w      	r2, (r3, 0x5c)
}
    2ade:	07e8      	br      	0x2aae	// 2aae <GPT0IntHandler+0x16>
	else if((GPT0->MISR&GPT_INT_CAD)==GPT_INT_CAD)			//Down-Counting phase CNT = CMPA Interrupt
    2ae0:	3280      	movi      	r2, 128
    2ae2:	9335      	ld.w      	r1, (r3, 0x54)
    2ae4:	4242      	lsli      	r2, r2, 2
    2ae6:	6848      	and      	r1, r2
    2ae8:	3940      	cmpnei      	r1, 0
    2aea:	0bf9      	bt      	0x2adc	// 2adc <GPT0IntHandler+0x44>
	else if((GPT0->MISR&GPT_INT_CBU)==GPT_INT_CBU)			//Up-Counting phase CNT = CMPB Interrupt
    2aec:	3280      	movi      	r2, 128
    2aee:	9335      	ld.w      	r1, (r3, 0x54)
    2af0:	4243      	lsli      	r2, r2, 3
    2af2:	6848      	and      	r1, r2
    2af4:	3940      	cmpnei      	r1, 0
    2af6:	0bf3      	bt      	0x2adc	// 2adc <GPT0IntHandler+0x44>
	else if((GPT0->MISR&GPT_INT_CBD)==GPT_INT_CBD)			//Down-Counting phase CNT = CMPB Interrupt
    2af8:	3280      	movi      	r2, 128
    2afa:	9335      	ld.w      	r1, (r3, 0x54)
    2afc:	4244      	lsli      	r2, r2, 4
    2afe:	6848      	and      	r1, r2
    2b00:	3940      	cmpnei      	r1, 0
    2b02:	0bed      	bt      	0x2adc	// 2adc <GPT0IntHandler+0x44>
	else if((GPT0->MISR&GPT_INT_PEND)==GPT_INT_PEND)		//End of cycle interrupt 
    2b04:	3280      	movi      	r2, 128
    2b06:	9335      	ld.w      	r1, (r3, 0x54)
    2b08:	4249      	lsli      	r2, r2, 9
    2b0a:	6848      	and      	r1, r2
    2b0c:	3940      	cmpnei      	r1, 0
    2b0e:	0be7      	bt      	0x2adc	// 2adc <GPT0IntHandler+0x44>
    2b10:	07cf      	br      	0x2aae	// 2aae <GPT0IntHandler+0x16>
    2b12:	0000      	bkpt
    2b14:	20000024 	.long	0x20000024

Disassembly of section .text.RTCIntHandler:

00002b18 <RTCIntHandler>:
//RTC Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void RTCIntHandler(void) 
{
    2b18:	1460      	nie
    2b1a:	1462      	ipush
    // ISR content ...
	if((RTC->MISR&ALRA_INT)==ALRA_INT)			//Interrupt of alarm A
    2b1c:	1079      	lrw      	r3, 0x20000018	// 2b80 <RTCIntHandler+0x68>
    2b1e:	3101      	movi      	r1, 1
    2b20:	9360      	ld.w      	r3, (r3, 0x0)
    2b22:	934a      	ld.w      	r2, (r3, 0x28)
    2b24:	6884      	and      	r2, r1
    2b26:	3a40      	cmpnei      	r2, 0
    2b28:	0c14      	bf      	0x2b50	// 2b50 <RTCIntHandler+0x38>
	{
		RTC->ICR=ALRA_INT;
		RTC->KEY=0XCA53;
    2b2a:	1057      	lrw      	r2, 0xca53	// 2b84 <RTCIntHandler+0x6c>
		RTC->ICR=ALRA_INT;
    2b2c:	b32b      	st.w      	r1, (r3, 0x2c)
		RTC->KEY=0XCA53;
    2b2e:	b34c      	st.w      	r2, (r3, 0x30)
		RTC->CR=RTC->CR|0x01;
    2b30:	9342      	ld.w      	r2, (r3, 0x8)
    2b32:	6c84      	or      	r2, r1
    2b34:	b342      	st.w      	r2, (r3, 0x8)
		RTC->TIMR=(0x10<<16)|(0x00<<8)|(0x00);			//Hour bit6->0:am 1:pm	
    2b36:	3280      	movi      	r2, 128
    2b38:	424d      	lsli      	r2, r2, 13
    2b3a:	b340      	st.w      	r2, (r3, 0x0)
		while(RTC->CR&0x02);							//busy TIMR DATR ALRAR ALRBR Update done
    2b3c:	3102      	movi      	r1, 2
    2b3e:	9342      	ld.w      	r2, (r3, 0x8)
    2b40:	6884      	and      	r2, r1
    2b42:	3a40      	cmpnei      	r2, 0
    2b44:	0bfd      	bt      	0x2b3e	// 2b3e <RTCIntHandler+0x26>
		RTC->CR &= ~0x1;
    2b46:	9342      	ld.w      	r2, (r3, 0x8)
    2b48:	3a80      	bclri      	r2, 0
    2b4a:	b342      	st.w      	r2, (r3, 0x8)
	}
	else if((RTC->MISR&RTC_TRGEV1_INT)==RTC_TRGEV1_INT)		//Interrupt of trigger event 1
	{
		RTC->ICR=RTC_TRGEV1_INT;
	}
}
    2b4c:	1463      	ipop
    2b4e:	1461      	nir
	else if((RTC->MISR&ALRB_INT)==ALRB_INT)			//Interrupt of alarm B				
    2b50:	934a      	ld.w      	r2, (r3, 0x28)
    2b52:	3102      	movi      	r1, 2
    2b54:	6884      	and      	r2, r1
    2b56:	3a40      	cmpnei      	r2, 0
    2b58:	0c03      	bf      	0x2b5e	// 2b5e <RTCIntHandler+0x46>
		RTC->ICR=RTC_TRGEV1_INT;
    2b5a:	b32b      	st.w      	r1, (r3, 0x2c)
}
    2b5c:	07f8      	br      	0x2b4c	// 2b4c <RTCIntHandler+0x34>
	else if((RTC->MISR&CPRD_INT)==CPRD_INT)			//Interrupt of alarm CPRD
    2b5e:	934a      	ld.w      	r2, (r3, 0x28)
    2b60:	3104      	movi      	r1, 4
    2b62:	6884      	and      	r2, r1
    2b64:	3a40      	cmpnei      	r2, 0
    2b66:	0bfa      	bt      	0x2b5a	// 2b5a <RTCIntHandler+0x42>
	else if((RTC->MISR&RTC_TRGEV0_INT)==RTC_TRGEV0_INT)		//Interrupt of trigger event 0
    2b68:	934a      	ld.w      	r2, (r3, 0x28)
    2b6a:	3108      	movi      	r1, 8
    2b6c:	6884      	and      	r2, r1
    2b6e:	3a40      	cmpnei      	r2, 0
    2b70:	0bf5      	bt      	0x2b5a	// 2b5a <RTCIntHandler+0x42>
	else if((RTC->MISR&RTC_TRGEV1_INT)==RTC_TRGEV1_INT)		//Interrupt of trigger event 1
    2b72:	934a      	ld.w      	r2, (r3, 0x28)
    2b74:	3110      	movi      	r1, 16
    2b76:	6884      	and      	r2, r1
    2b78:	3a40      	cmpnei      	r2, 0
    2b7a:	0bf0      	bt      	0x2b5a	// 2b5a <RTCIntHandler+0x42>
    2b7c:	07e8      	br      	0x2b4c	// 2b4c <RTCIntHandler+0x34>
    2b7e:	0000      	bkpt
    2b80:	20000018 	.long	0x20000018
    2b84:	0000ca53 	.long	0x0000ca53

Disassembly of section .text.UART0IntHandler:

00002b88 <UART0IntHandler>:
//UART0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART0IntHandler(void) 
{
    2b88:	1460      	nie
    2b8a:	1462      	ipush
    // ISR content ...
	if ((UART0->ISR&UART_RX_INT_S)==UART_RX_INT_S)				//RX interrupt
    2b8c:	106d      	lrw      	r3, 0x20000040	// 2bc0 <UART0IntHandler+0x38>
    2b8e:	3102      	movi      	r1, 2
    2b90:	9360      	ld.w      	r3, (r3, 0x0)
    2b92:	9343      	ld.w      	r2, (r3, 0xc)
    2b94:	6884      	and      	r2, r1
    2b96:	3a40      	cmpnei      	r2, 0
    2b98:	0c03      	bf      	0x2b9e	// 2b9e <UART0IntHandler+0x16>
	{
		UART0->ISR=UART_RX_IOV_S;
	}
	else if ((UART0->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
	{
		UART0->ISR=UART_TX_IOV_S;
    2b9a:	b323      	st.w      	r1, (r3, 0xc)
	}
}
    2b9c:	0410      	br      	0x2bbc	// 2bbc <UART0IntHandler+0x34>
	else if( (UART0->ISR&UART_TX_INT_S)==UART_TX_INT_S ) 		//TX interrupt
    2b9e:	9343      	ld.w      	r2, (r3, 0xc)
    2ba0:	3101      	movi      	r1, 1
    2ba2:	6884      	and      	r2, r1
    2ba4:	3a40      	cmpnei      	r2, 0
    2ba6:	0bfa      	bt      	0x2b9a	// 2b9a <UART0IntHandler+0x12>
	else if ((UART0->ISR&UART_RX_IOV_S)==UART_RX_IOV_S)			//RX overrun interrupt
    2ba8:	9343      	ld.w      	r2, (r3, 0xc)
    2baa:	3108      	movi      	r1, 8
    2bac:	6884      	and      	r2, r1
    2bae:	3a40      	cmpnei      	r2, 0
    2bb0:	0bf5      	bt      	0x2b9a	// 2b9a <UART0IntHandler+0x12>
	else if ((UART0->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
    2bb2:	9343      	ld.w      	r2, (r3, 0xc)
    2bb4:	3104      	movi      	r1, 4
    2bb6:	6884      	and      	r2, r1
    2bb8:	3a40      	cmpnei      	r2, 0
    2bba:	0bf0      	bt      	0x2b9a	// 2b9a <UART0IntHandler+0x12>
}
    2bbc:	1463      	ipop
    2bbe:	1461      	nir
    2bc0:	20000040 	.long	0x20000040

Disassembly of section .text.UART1IntHandler:

00002bc4 <UART1IntHandler>:
//UART1 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART1IntHandler(void) 
{
    2bc4:	1460      	nie
    2bc6:	1462      	ipush
    // ISR content ...
	if ((UART1->ISR&UART_RX_INT_S)==UART_RX_INT_S)				//RX interrupt
    2bc8:	106d      	lrw      	r3, 0x2000003c	// 2bfc <UART1IntHandler+0x38>
    2bca:	3102      	movi      	r1, 2
    2bcc:	9360      	ld.w      	r3, (r3, 0x0)
    2bce:	9343      	ld.w      	r2, (r3, 0xc)
    2bd0:	6884      	and      	r2, r1
    2bd2:	3a40      	cmpnei      	r2, 0
    2bd4:	0c03      	bf      	0x2bda	// 2bda <UART1IntHandler+0x16>
	{
		UART1->ISR=UART_RX_IOV_S;
	}
	else if ((UART1->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
	{
		UART1->ISR=UART_TX_IOV_S;
    2bd6:	b323      	st.w      	r1, (r3, 0xc)
	}
}
    2bd8:	0410      	br      	0x2bf8	// 2bf8 <UART1IntHandler+0x34>
	else if( (UART1->ISR&UART_TX_INT_S)==UART_TX_INT_S ) 		//TX interrupt
    2bda:	9343      	ld.w      	r2, (r3, 0xc)
    2bdc:	3101      	movi      	r1, 1
    2bde:	6884      	and      	r2, r1
    2be0:	3a40      	cmpnei      	r2, 0
    2be2:	0bfa      	bt      	0x2bd6	// 2bd6 <UART1IntHandler+0x12>
	else if ((UART1->ISR&UART_RX_IOV_S)==UART_RX_IOV_S)			//RX overrun interrupt
    2be4:	9343      	ld.w      	r2, (r3, 0xc)
    2be6:	3108      	movi      	r1, 8
    2be8:	6884      	and      	r2, r1
    2bea:	3a40      	cmpnei      	r2, 0
    2bec:	0bf5      	bt      	0x2bd6	// 2bd6 <UART1IntHandler+0x12>
	else if ((UART1->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
    2bee:	9343      	ld.w      	r2, (r3, 0xc)
    2bf0:	3104      	movi      	r1, 4
    2bf2:	6884      	and      	r2, r1
    2bf4:	3a40      	cmpnei      	r2, 0
    2bf6:	0bf0      	bt      	0x2bd6	// 2bd6 <UART1IntHandler+0x12>
}
    2bf8:	1463      	ipop
    2bfa:	1461      	nir
    2bfc:	2000003c 	.long	0x2000003c

Disassembly of section .text.UART2IntHandler:

00002c00 <UART2IntHandler>:
//UART2 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART2IntHandler(void) 
{
    2c00:	1460      	nie
    2c02:	1462      	ipush
    // ISR content ...
	if ((UART2->ISR&UART_RX_INT_S)==UART_RX_INT_S)				//RX interrupt
    2c04:	106d      	lrw      	r3, 0x20000038	// 2c38 <UART2IntHandler+0x38>
    2c06:	3102      	movi      	r1, 2
    2c08:	9360      	ld.w      	r3, (r3, 0x0)
    2c0a:	9343      	ld.w      	r2, (r3, 0xc)
    2c0c:	6884      	and      	r2, r1
    2c0e:	3a40      	cmpnei      	r2, 0
    2c10:	0c03      	bf      	0x2c16	// 2c16 <UART2IntHandler+0x16>
	{
		UART2->ISR=UART_RX_IOV_S;
	}
	else if ((UART2->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
	{
		UART2->ISR=UART_TX_IOV_S;
    2c12:	b323      	st.w      	r1, (r3, 0xc)
	}
}
    2c14:	0410      	br      	0x2c34	// 2c34 <UART2IntHandler+0x34>
	else if( (UART2->ISR&UART_TX_INT_S)==UART_TX_INT_S ) 		//TX interrupt
    2c16:	9343      	ld.w      	r2, (r3, 0xc)
    2c18:	3101      	movi      	r1, 1
    2c1a:	6884      	and      	r2, r1
    2c1c:	3a40      	cmpnei      	r2, 0
    2c1e:	0bfa      	bt      	0x2c12	// 2c12 <UART2IntHandler+0x12>
	else if ((UART2->ISR&UART_RX_IOV_S)==UART_RX_IOV_S)			//RX overrun interrupt
    2c20:	9343      	ld.w      	r2, (r3, 0xc)
    2c22:	3108      	movi      	r1, 8
    2c24:	6884      	and      	r2, r1
    2c26:	3a40      	cmpnei      	r2, 0
    2c28:	0bf5      	bt      	0x2c12	// 2c12 <UART2IntHandler+0x12>
	else if ((UART2->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
    2c2a:	9343      	ld.w      	r2, (r3, 0xc)
    2c2c:	3104      	movi      	r1, 4
    2c2e:	6884      	and      	r2, r1
    2c30:	3a40      	cmpnei      	r2, 0
    2c32:	0bf0      	bt      	0x2c12	// 2c12 <UART2IntHandler+0x12>
}
    2c34:	1463      	ipop
    2c36:	1461      	nir
    2c38:	20000038 	.long	0x20000038

Disassembly of section .text.SPI0IntHandler:

00002c3c <SPI0IntHandler>:
//SPI Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SPI0IntHandler(void) 
{
    2c3c:	1460      	nie
    2c3e:	1462      	ipush
    // ISR content ...
	if((SPI0->MISR&SPI_PORIM)==SPI_PORIM)					//Receive Overrun Interrupt
    2c40:	1178      	lrw      	r3, 0x20000034	// 2d20 <SPI0IntHandler+0xe4>
    2c42:	3101      	movi      	r1, 1
    2c44:	9360      	ld.w      	r3, (r3, 0x0)
    2c46:	9347      	ld.w      	r2, (r3, 0x1c)
    2c48:	6884      	and      	r2, r1
    2c4a:	3a40      	cmpnei      	r2, 0
    2c4c:	0c03      	bf      	0x2c52	// 2c52 <SPI0IntHandler+0x16>
			}
		}
	}
	else if((SPI0->MISR&SPI_TXIM)==SPI_TXIM)				//Transmit FIFO Interrupt
	{
		SPI0->ICR = SPI_TXIM;
    2c4e:	b328      	st.w      	r1, (r3, 0x20)
	}

}
    2c50:	0407      	br      	0x2c5e	// 2c5e <SPI0IntHandler+0x22>
	else if((SPI0->MISR&SPI_RTIM)==SPI_RTIM)				//Receive Timeout Interrupt
    2c52:	9347      	ld.w      	r2, (r3, 0x1c)
    2c54:	3002      	movi      	r0, 2
    2c56:	6880      	and      	r2, r0
    2c58:	3a40      	cmpnei      	r2, 0
    2c5a:	0c04      	bf      	0x2c62	// 2c62 <SPI0IntHandler+0x26>
		SPI0->ICR = SPI_RTIM;
    2c5c:	b308      	st.w      	r0, (r3, 0x20)
}
    2c5e:	1463      	ipop
    2c60:	1461      	nir
	else if((SPI0->MISR&SPI_RXIM)==SPI_RXIM)				//Receive FIFO Interrupt,FIFO can be set 1/8,1/4,1/2 FIFO Interrupt
    2c62:	9347      	ld.w      	r2, (r3, 0x1c)
    2c64:	3004      	movi      	r0, 4
    2c66:	6880      	and      	r2, r0
    2c68:	3a40      	cmpnei      	r2, 0
    2c6a:	0c55      	bf      	0x2d14	// 2d14 <SPI0IntHandler+0xd8>
		SPI0->ICR = SPI_RXIM;
    2c6c:	b308      	st.w      	r0, (r3, 0x20)
		if(SPI0->DR==0xaa)
    2c6e:	9302      	ld.w      	r0, (r3, 0x8)
    2c70:	32aa      	movi      	r2, 170
    2c72:	6482      	cmpne      	r0, r2
    2c74:	083e      	bt      	0x2cf0	// 2cf0 <SPI0IntHandler+0xb4>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    2c76:	3102      	movi      	r1, 2
    2c78:	9343      	ld.w      	r2, (r3, 0xc)
    2c7a:	6884      	and      	r2, r1
    2c7c:	3a40      	cmpnei      	r2, 0
    2c7e:	0ffd      	bf      	0x2c78	// 2c78 <SPI0IntHandler+0x3c>
			SPI0->DR = 0x11;
    2c80:	3211      	movi      	r2, 17
    2c82:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    2c84:	3110      	movi      	r1, 16
    2c86:	9343      	ld.w      	r2, (r3, 0xc)
    2c88:	6884      	and      	r2, r1
    2c8a:	3a40      	cmpnei      	r2, 0
    2c8c:	0bfd      	bt      	0x2c86	// 2c86 <SPI0IntHandler+0x4a>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    2c8e:	3102      	movi      	r1, 2
    2c90:	9343      	ld.w      	r2, (r3, 0xc)
    2c92:	6884      	and      	r2, r1
    2c94:	3a40      	cmpnei      	r2, 0
    2c96:	0ffd      	bf      	0x2c90	// 2c90 <SPI0IntHandler+0x54>
			SPI0->DR = 0x12;
    2c98:	3212      	movi      	r2, 18
    2c9a:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    2c9c:	3110      	movi      	r1, 16
    2c9e:	9343      	ld.w      	r2, (r3, 0xc)
    2ca0:	6884      	and      	r2, r1
    2ca2:	3a40      	cmpnei      	r2, 0
    2ca4:	0bfd      	bt      	0x2c9e	// 2c9e <SPI0IntHandler+0x62>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    2ca6:	3102      	movi      	r1, 2
    2ca8:	9343      	ld.w      	r2, (r3, 0xc)
    2caa:	6884      	and      	r2, r1
    2cac:	3a40      	cmpnei      	r2, 0
    2cae:	0ffd      	bf      	0x2ca8	// 2ca8 <SPI0IntHandler+0x6c>
			SPI0->DR = 0x13;
    2cb0:	3213      	movi      	r2, 19
    2cb2:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    2cb4:	3110      	movi      	r1, 16
    2cb6:	9343      	ld.w      	r2, (r3, 0xc)
    2cb8:	6884      	and      	r2, r1
    2cba:	3a40      	cmpnei      	r2, 0
    2cbc:	0bfd      	bt      	0x2cb6	// 2cb6 <SPI0IntHandler+0x7a>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    2cbe:	3102      	movi      	r1, 2
    2cc0:	9343      	ld.w      	r2, (r3, 0xc)
    2cc2:	6884      	and      	r2, r1
    2cc4:	3a40      	cmpnei      	r2, 0
    2cc6:	0ffd      	bf      	0x2cc0	// 2cc0 <SPI0IntHandler+0x84>
			SPI0->DR = 0x14;
    2cc8:	3214      	movi      	r2, 20
    2cca:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    2ccc:	3110      	movi      	r1, 16
    2cce:	9343      	ld.w      	r2, (r3, 0xc)
    2cd0:	6884      	and      	r2, r1
    2cd2:	3a40      	cmpnei      	r2, 0
    2cd4:	0bfd      	bt      	0x2cce	// 2cce <SPI0IntHandler+0x92>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    2cd6:	3102      	movi      	r1, 2
    2cd8:	9343      	ld.w      	r2, (r3, 0xc)
    2cda:	6884      	and      	r2, r1
    2cdc:	3a40      	cmpnei      	r2, 0
    2cde:	0ffd      	bf      	0x2cd8	// 2cd8 <SPI0IntHandler+0x9c>
			SPI0->DR = 0x15;
    2ce0:	3215      	movi      	r2, 21
    2ce2:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    2ce4:	3110      	movi      	r1, 16
    2ce6:	9343      	ld.w      	r2, (r3, 0xc)
    2ce8:	6884      	and      	r2, r1
    2cea:	3a40      	cmpnei      	r2, 0
    2cec:	0bfd      	bt      	0x2ce6	// 2ce6 <SPI0IntHandler+0xaa>
    2cee:	07b8      	br      	0x2c5e	// 2c5e <SPI0IntHandler+0x22>
			if(((SPI0->SR) & SSP_TFE)!=SSP_TFE)
    2cf0:	9343      	ld.w      	r2, (r3, 0xc)
    2cf2:	6884      	and      	r2, r1
    2cf4:	3a40      	cmpnei      	r2, 0
    2cf6:	0bb4      	bt      	0x2c5e	// 2c5e <SPI0IntHandler+0x22>
				SPI0->DR=0x0;								//FIFO=0
    2cf8:	b342      	st.w      	r2, (r3, 0x8)
				while(((SPI0->SR) & SSP_BSY) == SSP_BSY);		//Send or receive over？
    2cfa:	3110      	movi      	r1, 16
				SPI0->DR=0x0;								//FIFO=0
    2cfc:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    2cfe:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    2d00:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    2d02:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    2d04:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    2d06:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    2d08:	b342      	st.w      	r2, (r3, 0x8)
				while(((SPI0->SR) & SSP_BSY) == SSP_BSY);		//Send or receive over？
    2d0a:	9343      	ld.w      	r2, (r3, 0xc)
    2d0c:	6884      	and      	r2, r1
    2d0e:	3a40      	cmpnei      	r2, 0
    2d10:	0bfd      	bt      	0x2d0a	// 2d0a <SPI0IntHandler+0xce>
    2d12:	07a6      	br      	0x2c5e	// 2c5e <SPI0IntHandler+0x22>
	else if((SPI0->MISR&SPI_TXIM)==SPI_TXIM)				//Transmit FIFO Interrupt
    2d14:	9347      	ld.w      	r2, (r3, 0x1c)
    2d16:	3108      	movi      	r1, 8
    2d18:	6884      	and      	r2, r1
    2d1a:	3a40      	cmpnei      	r2, 0
    2d1c:	0b99      	bt      	0x2c4e	// 2c4e <SPI0IntHandler+0x12>
    2d1e:	07a0      	br      	0x2c5e	// 2c5e <SPI0IntHandler+0x22>
    2d20:	20000034 	.long	0x20000034

Disassembly of section .text.SIO0IntHandler:

00002d24 <SIO0IntHandler>:
//SIO Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SIO0IntHandler(void) 
{
    2d24:	1460      	nie
    2d26:	1462      	ipush
		delay_nms(10);
		SIO0->TXBUF=(0x03<<30)|(0x02<<28)|(0x03<<26)|(0x02<<24)|(0x03<<22)|(0x02<<20)|(0x03<<18)|(0x02<<16)|
				(0x01<<14)|(0x00<<12)|(0x01<<10)|(0x00<<8)|(0x01<<6)|(0x00<<4)|(0x01<<2)|(0x0<<0);		//0:D0,1:D1,2:DL,3:DH;	
	}*/
	
	if(SIO0->MISR&0X02)					//RXDNE
    2d28:	107d      	lrw      	r3, 0x2000002c	// 2d9c <SIO0IntHandler+0x78>
    2d2a:	3102      	movi      	r1, 2
    2d2c:	9360      	ld.w      	r3, (r3, 0x0)
    2d2e:	9349      	ld.w      	r2, (r3, 0x24)
    2d30:	6884      	and      	r2, r1
    2d32:	3a40      	cmpnei      	r2, 0
    2d34:	0c13      	bf      	0x2d5a	// 2d5a <SIO0IntHandler+0x36>
	{
		SIO0->ICR=0X02;
    2d36:	b32b      	st.w      	r1, (r3, 0x2c)
		if(R_SIORX_count>=1)
    2d38:	101a      	lrw      	r0, 0x200001b4	// 2da0 <SIO0IntHandler+0x7c>
    2d3a:	9040      	ld.w      	r2, (r0, 0x0)
    2d3c:	3a20      	cmplti      	r2, 1
    2d3e:	080c      	bt      	0x2d56	// 2d56 <SIO0IntHandler+0x32>
		{
			R_SIORX_buf[R_SIORX_count]=SIO0->RXBUF&0xff000000;			//8bit
    2d40:	9040      	ld.w      	r2, (r0, 0x0)
    2d42:	9327      	ld.w      	r1, (r3, 0x1c)
    2d44:	4938      	lsri      	r1, r1, 24
    2d46:	4262      	lsli      	r3, r2, 2
    2d48:	1057      	lrw      	r2, 0x200001b8	// 2da4 <SIO0IntHandler+0x80>
    2d4a:	4138      	lsli      	r1, r1, 24
    2d4c:	60c8      	addu      	r3, r2
    2d4e:	b320      	st.w      	r1, (r3, 0x0)
			nop;
    2d50:	6c03      	mov      	r0, r0
			R_SIORX_count=0;
    2d52:	3300      	movi      	r3, 0
    2d54:	b060      	st.w      	r3, (r0, 0x0)
	}
	else if(SIO0->MISR&0X020)				//TIMEOUT
	{
		SIO0->ICR=0X20;
	}
}
    2d56:	1463      	ipop
    2d58:	1461      	nir
	else if(SIO0->MISR&0X08)					//RXBUFFULL	
    2d5a:	9349      	ld.w      	r2, (r3, 0x24)
    2d5c:	3108      	movi      	r1, 8
    2d5e:	6884      	and      	r2, r1
    2d60:	3a40      	cmpnei      	r2, 0
    2d62:	0c10      	bf      	0x2d82	// 2d82 <SIO0IntHandler+0x5e>
		SIO0->ICR=0X08;
    2d64:	b32b      	st.w      	r1, (r3, 0x2c)
		if(R_SIORX_count<1)
    2d66:	102f      	lrw      	r1, 0x200001b4	// 2da0 <SIO0IntHandler+0x7c>
    2d68:	9140      	ld.w      	r2, (r1, 0x0)
    2d6a:	3a20      	cmplti      	r2, 1
    2d6c:	0ff5      	bf      	0x2d56	// 2d56 <SIO0IntHandler+0x32>
			R_SIORX_buf[R_SIORX_count]=SIO0->RXBUF;				//32bit
    2d6e:	9140      	ld.w      	r2, (r1, 0x0)
    2d70:	9307      	ld.w      	r0, (r3, 0x1c)
    2d72:	4262      	lsli      	r3, r2, 2
    2d74:	104c      	lrw      	r2, 0x200001b8	// 2da4 <SIO0IntHandler+0x80>
    2d76:	60c8      	addu      	r3, r2
    2d78:	b300      	st.w      	r0, (r3, 0x0)
			R_SIORX_count++;
    2d7a:	9160      	ld.w      	r3, (r1, 0x0)
    2d7c:	2300      	addi      	r3, 1
    2d7e:	b160      	st.w      	r3, (r1, 0x0)
    2d80:	07eb      	br      	0x2d56	// 2d56 <SIO0IntHandler+0x32>
	else if(SIO0->MISR&0X010)				//BREAK
    2d82:	9349      	ld.w      	r2, (r3, 0x24)
    2d84:	3110      	movi      	r1, 16
    2d86:	6884      	and      	r2, r1
    2d88:	3a40      	cmpnei      	r2, 0
    2d8a:	0c03      	bf      	0x2d90	// 2d90 <SIO0IntHandler+0x6c>
		SIO0->ICR=0X20;
    2d8c:	b32b      	st.w      	r1, (r3, 0x2c)
}
    2d8e:	07e4      	br      	0x2d56	// 2d56 <SIO0IntHandler+0x32>
	else if(SIO0->MISR&0X020)				//TIMEOUT
    2d90:	9349      	ld.w      	r2, (r3, 0x24)
    2d92:	3120      	movi      	r1, 32
    2d94:	6884      	and      	r2, r1
    2d96:	3a40      	cmpnei      	r2, 0
    2d98:	0bfa      	bt      	0x2d8c	// 2d8c <SIO0IntHandler+0x68>
    2d9a:	07de      	br      	0x2d56	// 2d56 <SIO0IntHandler+0x32>
    2d9c:	2000002c 	.long	0x2000002c
    2da0:	200001b4 	.long	0x200001b4
    2da4:	200001b8 	.long	0x200001b8

Disassembly of section .text.EXI0IntHandler:

00002da8 <EXI0IntHandler>:
//EXT0/16 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI0IntHandler(void) 
{
    2da8:	1460      	nie
    2daa:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN0)==EXI_PIN0) 			//EXT0 Interrupt
    2dac:	106a      	lrw      	r3, 0x2000005c	// 2dd4 <EXI0IntHandler+0x2c>
    2dae:	3101      	movi      	r1, 1
    2db0:	9360      	ld.w      	r3, (r3, 0x0)
    2db2:	237f      	addi      	r3, 128
    2db4:	934c      	ld.w      	r2, (r3, 0x30)
    2db6:	6884      	and      	r2, r1
    2db8:	3a40      	cmpnei      	r2, 0
    2dba:	0c04      	bf      	0x2dc2	// 2dc2 <EXI0IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN0;
    2dbc:	b32b      	st.w      	r1, (r3, 0x2c)
	}
	else if ((SYSCON->EXIRS&EXI_PIN16)==EXI_PIN16) 		//EXT16 Interrupt
	{
		SYSCON->EXICR = EXI_PIN16;
	}
}
    2dbe:	1463      	ipop
    2dc0:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN16)==EXI_PIN16) 		//EXT16 Interrupt
    2dc2:	3280      	movi      	r2, 128
    2dc4:	932c      	ld.w      	r1, (r3, 0x30)
    2dc6:	4249      	lsli      	r2, r2, 9
    2dc8:	6848      	and      	r1, r2
    2dca:	3940      	cmpnei      	r1, 0
    2dcc:	0ff9      	bf      	0x2dbe	// 2dbe <EXI0IntHandler+0x16>
		SYSCON->EXICR = EXI_PIN16;
    2dce:	b34b      	st.w      	r2, (r3, 0x2c)
}
    2dd0:	07f7      	br      	0x2dbe	// 2dbe <EXI0IntHandler+0x16>
    2dd2:	0000      	bkpt
    2dd4:	2000005c 	.long	0x2000005c

Disassembly of section .text.EXI1IntHandler:

00002dd8 <EXI1IntHandler>:
//EXT1/17 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI1IntHandler(void) 
{
    2dd8:	1460      	nie
    2dda:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN1)==EXI_PIN1) 			//EXT1 Interrupt
    2ddc:	106a      	lrw      	r3, 0x2000005c	// 2e04 <EXI1IntHandler+0x2c>
    2dde:	3102      	movi      	r1, 2
    2de0:	9360      	ld.w      	r3, (r3, 0x0)
    2de2:	237f      	addi      	r3, 128
    2de4:	934c      	ld.w      	r2, (r3, 0x30)
    2de6:	6884      	and      	r2, r1
    2de8:	3a40      	cmpnei      	r2, 0
    2dea:	0c04      	bf      	0x2df2	// 2df2 <EXI1IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN1;
    2dec:	b32b      	st.w      	r1, (r3, 0x2c)
	}
	else if ((SYSCON->EXIRS&EXI_PIN17)==EXI_PIN17) 		//EXT17 Interrupt
	{
		SYSCON->EXICR = EXI_PIN17;
	}
}
    2dee:	1463      	ipop
    2df0:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN17)==EXI_PIN17) 		//EXT17 Interrupt
    2df2:	3280      	movi      	r2, 128
    2df4:	932c      	ld.w      	r1, (r3, 0x30)
    2df6:	424a      	lsli      	r2, r2, 10
    2df8:	6848      	and      	r1, r2
    2dfa:	3940      	cmpnei      	r1, 0
    2dfc:	0ff9      	bf      	0x2dee	// 2dee <EXI1IntHandler+0x16>
		SYSCON->EXICR = EXI_PIN17;
    2dfe:	b34b      	st.w      	r2, (r3, 0x2c)
}
    2e00:	07f7      	br      	0x2dee	// 2dee <EXI1IntHandler+0x16>
    2e02:	0000      	bkpt
    2e04:	2000005c 	.long	0x2000005c

Disassembly of section .text.EXI2to3IntHandler:

00002e08 <EXI2to3IntHandler>:
//EXI2~3 18~19Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI2to3IntHandler(void) 
{
    2e08:	1460      	nie
    2e0a:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN2)==EXI_PIN2) 			//EXT2 Interrupt
    2e0c:	1070      	lrw      	r3, 0x2000005c	// 2e4c <EXI2to3IntHandler+0x44>
    2e0e:	3104      	movi      	r1, 4
    2e10:	9360      	ld.w      	r3, (r3, 0x0)
    2e12:	237f      	addi      	r3, 128
    2e14:	934c      	ld.w      	r2, (r3, 0x30)
    2e16:	6884      	and      	r2, r1
    2e18:	3a40      	cmpnei      	r2, 0
    2e1a:	0c04      	bf      	0x2e22	// 2e22 <EXI2to3IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN2;
	} 
	else if ((SYSCON->EXIRS&EXI_PIN3)==EXI_PIN3) 		//EXT3 Interrupt
	{
		SYSCON->EXICR = EXI_PIN3;
    2e1c:	b32b      	st.w      	r1, (r3, 0x2c)
	}
	else if ((SYSCON->EXIRS&EXI_PIN19)==EXI_PIN19) 		//EXT19 Interrupt
	{
		SYSCON->EXICR = EXI_PIN19;
	}
}
    2e1e:	1463      	ipop
    2e20:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN3)==EXI_PIN3) 		//EXT3 Interrupt
    2e22:	934c      	ld.w      	r2, (r3, 0x30)
    2e24:	3108      	movi      	r1, 8
    2e26:	6884      	and      	r2, r1
    2e28:	3a40      	cmpnei      	r2, 0
    2e2a:	0bf9      	bt      	0x2e1c	// 2e1c <EXI2to3IntHandler+0x14>
	else if ((SYSCON->EXIRS&EXI_PIN18)==EXI_PIN18) 		//EXT18 Interrupt
    2e2c:	3280      	movi      	r2, 128
    2e2e:	932c      	ld.w      	r1, (r3, 0x30)
    2e30:	424b      	lsli      	r2, r2, 11
    2e32:	6848      	and      	r1, r2
    2e34:	3940      	cmpnei      	r1, 0
    2e36:	0c03      	bf      	0x2e3c	// 2e3c <EXI2to3IntHandler+0x34>
		SYSCON->EXICR = EXI_PIN19;
    2e38:	b34b      	st.w      	r2, (r3, 0x2c)
}
    2e3a:	07f2      	br      	0x2e1e	// 2e1e <EXI2to3IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN19)==EXI_PIN19) 		//EXT19 Interrupt
    2e3c:	3280      	movi      	r2, 128
    2e3e:	932c      	ld.w      	r1, (r3, 0x30)
    2e40:	424c      	lsli      	r2, r2, 12
    2e42:	6848      	and      	r1, r2
    2e44:	3940      	cmpnei      	r1, 0
    2e46:	0bf9      	bt      	0x2e38	// 2e38 <EXI2to3IntHandler+0x30>
    2e48:	07eb      	br      	0x2e1e	// 2e1e <EXI2to3IntHandler+0x16>
    2e4a:	0000      	bkpt
    2e4c:	2000005c 	.long	0x2000005c

Disassembly of section .text.EXI4to9IntHandler:

00002e50 <EXI4to9IntHandler>:
//EXI4~9 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI4to9IntHandler(void) 
{
    2e50:	1460      	nie
    2e52:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN4)==EXI_PIN4) 			//EXT4 Interrupt
    2e54:	1075      	lrw      	r3, 0x2000005c	// 2ea8 <EXI4to9IntHandler+0x58>
    2e56:	3280      	movi      	r2, 128
    2e58:	9360      	ld.w      	r3, (r3, 0x0)
    2e5a:	60c8      	addu      	r3, r2
    2e5c:	932c      	ld.w      	r1, (r3, 0x30)
    2e5e:	3010      	movi      	r0, 16
    2e60:	6840      	and      	r1, r0
    2e62:	3940      	cmpnei      	r1, 0
    2e64:	0c04      	bf      	0x2e6c	// 2e6c <EXI4to9IntHandler+0x1c>
	{
		SYSCON->EXICR = EXI_PIN5;
	} 
	else if ((SYSCON->EXIRS&EXI_PIN6)==EXI_PIN6) 		//EXT6 Interrupt
	{
		SYSCON->EXICR = EXI_PIN6;
    2e66:	b30b      	st.w      	r0, (r3, 0x2c)
	else if ((SYSCON->EXIRS&EXI_PIN9)==EXI_PIN9) 		//EXT9 Interrupt
	{
		SYSCON->EXICR = EXI_PIN9;
	} 

}
    2e68:	1463      	ipop
    2e6a:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN5)==EXI_PIN5) 		//EXT5 Interrupt
    2e6c:	932c      	ld.w      	r1, (r3, 0x30)
    2e6e:	3020      	movi      	r0, 32
    2e70:	6840      	and      	r1, r0
    2e72:	3940      	cmpnei      	r1, 0
    2e74:	0bf9      	bt      	0x2e66	// 2e66 <EXI4to9IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN6)==EXI_PIN6) 		//EXT6 Interrupt
    2e76:	932c      	ld.w      	r1, (r3, 0x30)
    2e78:	3040      	movi      	r0, 64
    2e7a:	6840      	and      	r1, r0
    2e7c:	3940      	cmpnei      	r1, 0
    2e7e:	0bf4      	bt      	0x2e66	// 2e66 <EXI4to9IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN7)==EXI_PIN7) 		//EXT7 Interrupt
    2e80:	932c      	ld.w      	r1, (r3, 0x30)
    2e82:	6848      	and      	r1, r2
    2e84:	3940      	cmpnei      	r1, 0
    2e86:	0c03      	bf      	0x2e8c	// 2e8c <EXI4to9IntHandler+0x3c>
		SYSCON->EXICR = EXI_PIN9;
    2e88:	b34b      	st.w      	r2, (r3, 0x2c)
}
    2e8a:	07ef      	br      	0x2e68	// 2e68 <EXI4to9IntHandler+0x18>
	else if ((SYSCON->EXIRS&EXI_PIN8)==EXI_PIN8) 		//EXT8 Interrupt
    2e8c:	3280      	movi      	r2, 128
    2e8e:	932c      	ld.w      	r1, (r3, 0x30)
    2e90:	4241      	lsli      	r2, r2, 1
    2e92:	6848      	and      	r1, r2
    2e94:	3940      	cmpnei      	r1, 0
    2e96:	0bf9      	bt      	0x2e88	// 2e88 <EXI4to9IntHandler+0x38>
	else if ((SYSCON->EXIRS&EXI_PIN9)==EXI_PIN9) 		//EXT9 Interrupt
    2e98:	3280      	movi      	r2, 128
    2e9a:	932c      	ld.w      	r1, (r3, 0x30)
    2e9c:	4242      	lsli      	r2, r2, 2
    2e9e:	6848      	and      	r1, r2
    2ea0:	3940      	cmpnei      	r1, 0
    2ea2:	0bf3      	bt      	0x2e88	// 2e88 <EXI4to9IntHandler+0x38>
    2ea4:	07e2      	br      	0x2e68	// 2e68 <EXI4to9IntHandler+0x18>
    2ea6:	0000      	bkpt
    2ea8:	2000005c 	.long	0x2000005c

Disassembly of section .text.EXI10to15IntHandler:

00002eac <EXI10to15IntHandler>:
//EXI4 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI10to15IntHandler(void) 
{
    2eac:	1460      	nie
    2eae:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN10)==EXI_PIN10) 			//EXT10 Interrupt
    2eb0:	1076      	lrw      	r3, 0x2000005c	// 2f08 <EXI10to15IntHandler+0x5c>
    2eb2:	3280      	movi      	r2, 128
    2eb4:	9360      	ld.w      	r3, (r3, 0x0)
    2eb6:	237f      	addi      	r3, 128
    2eb8:	932c      	ld.w      	r1, (r3, 0x30)
    2eba:	4243      	lsli      	r2, r2, 3
    2ebc:	6848      	and      	r1, r2
    2ebe:	3940      	cmpnei      	r1, 0
    2ec0:	0c03      	bf      	0x2ec6	// 2ec6 <EXI10to15IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN14;
	}
	else if ((SYSCON->EXIRS&EXI_PIN15)==EXI_PIN15) 		//EXT15 Interrupt
	{
		SYSCON->EXICR = EXI_PIN15;
    2ec2:	b34b      	st.w      	r2, (r3, 0x2c)
	}
}
    2ec4:	041f      	br      	0x2f02	// 2f02 <EXI10to15IntHandler+0x56>
	else if ((SYSCON->EXIRS&EXI_PIN11)==EXI_PIN11) 		//EXT11 Interrupt
    2ec6:	3280      	movi      	r2, 128
    2ec8:	932c      	ld.w      	r1, (r3, 0x30)
    2eca:	4244      	lsli      	r2, r2, 4
    2ecc:	6848      	and      	r1, r2
    2ece:	3940      	cmpnei      	r1, 0
    2ed0:	0bf9      	bt      	0x2ec2	// 2ec2 <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN12)==EXI_PIN12) 		//EXT12 Interrupt
    2ed2:	3280      	movi      	r2, 128
    2ed4:	932c      	ld.w      	r1, (r3, 0x30)
    2ed6:	4245      	lsli      	r2, r2, 5
    2ed8:	6848      	and      	r1, r2
    2eda:	3940      	cmpnei      	r1, 0
    2edc:	0bf3      	bt      	0x2ec2	// 2ec2 <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN13)==EXI_PIN13) 		//EXT13 Interrupt
    2ede:	3280      	movi      	r2, 128
    2ee0:	932c      	ld.w      	r1, (r3, 0x30)
    2ee2:	4246      	lsli      	r2, r2, 6
    2ee4:	6848      	and      	r1, r2
    2ee6:	3940      	cmpnei      	r1, 0
    2ee8:	0bed      	bt      	0x2ec2	// 2ec2 <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN14)==EXI_PIN14) 		//EXT14 Interrupt
    2eea:	3280      	movi      	r2, 128
    2eec:	932c      	ld.w      	r1, (r3, 0x30)
    2eee:	4247      	lsli      	r2, r2, 7
    2ef0:	6848      	and      	r1, r2
    2ef2:	3940      	cmpnei      	r1, 0
    2ef4:	0be7      	bt      	0x2ec2	// 2ec2 <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN15)==EXI_PIN15) 		//EXT15 Interrupt
    2ef6:	3280      	movi      	r2, 128
    2ef8:	932c      	ld.w      	r1, (r3, 0x30)
    2efa:	4248      	lsli      	r2, r2, 8
    2efc:	6848      	and      	r1, r2
    2efe:	3940      	cmpnei      	r1, 0
    2f00:	0be1      	bt      	0x2ec2	// 2ec2 <EXI10to15IntHandler+0x16>
}
    2f02:	1463      	ipop
    2f04:	1461      	nir
    2f06:	0000      	bkpt
    2f08:	2000005c 	.long	0x2000005c

Disassembly of section .text.LPTIntHandler:

00002f0c <LPTIntHandler>:
//LPT Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void LPTIntHandler(void) 
{
    2f0c:	1460      	nie
    2f0e:	1462      	ipush
    // ISR content ...
	if((LPT->MISR&LPT_TRGEV0)==LPT_TRGEV0)			//TRGEV0 interrupt
    2f10:	106b      	lrw      	r3, 0x20000014	// 2f3c <LPTIntHandler+0x30>
    2f12:	3101      	movi      	r1, 1
    2f14:	9360      	ld.w      	r3, (r3, 0x0)
    2f16:	934e      	ld.w      	r2, (r3, 0x38)
    2f18:	6884      	and      	r2, r1
    2f1a:	3a40      	cmpnei      	r2, 0
    2f1c:	0c03      	bf      	0x2f22	// 2f22 <LPTIntHandler+0x16>
	{
		LPT->ICR = LPT_MATCH;
	}
	else if((LPT->MISR&LPT_PEND)==LPT_PEND)			//PEND interrupt
	{
		LPT->ICR = LPT_PEND;
    2f1e:	b330      	st.w      	r1, (r3, 0x40)
	}
}
    2f20:	040b      	br      	0x2f36	// 2f36 <LPTIntHandler+0x2a>
	else if((LPT->MISR&LPT_MATCH)==LPT_MATCH)		//MATCH interrupt
    2f22:	934e      	ld.w      	r2, (r3, 0x38)
    2f24:	3102      	movi      	r1, 2
    2f26:	6884      	and      	r2, r1
    2f28:	3a40      	cmpnei      	r2, 0
    2f2a:	0bfa      	bt      	0x2f1e	// 2f1e <LPTIntHandler+0x12>
	else if((LPT->MISR&LPT_PEND)==LPT_PEND)			//PEND interrupt
    2f2c:	934e      	ld.w      	r2, (r3, 0x38)
    2f2e:	3104      	movi      	r1, 4
    2f30:	6884      	and      	r2, r1
    2f32:	3a40      	cmpnei      	r2, 0
    2f34:	0bf5      	bt      	0x2f1e	// 2f1e <LPTIntHandler+0x12>
}
    2f36:	1463      	ipop
    2f38:	1461      	nir
    2f3a:	0000      	bkpt
    2f3c:	20000014 	.long	0x20000014

Disassembly of section .text.BT0IntHandler:

00002f40 <BT0IntHandler>:
//BT0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void BT0IntHandler(void) 
{
    2f40:	1460      	nie
    2f42:	1462      	ipush
    2f44:	14d0      	push      	r15
    // ISR content ...
	if((BT0->MISR&BT_PEND)==BT_PEND)				//BT0 PEND interrupt
    2f46:	1071      	lrw      	r3, 0x2000000c	// 2f88 <BT0IntHandler+0x48>
    2f48:	3101      	movi      	r1, 1
    2f4a:	9360      	ld.w      	r3, (r3, 0x0)
    2f4c:	934c      	ld.w      	r2, (r3, 0x30)
    2f4e:	6884      	and      	r2, r1
    2f50:	3a40      	cmpnei      	r2, 0
    2f52:	0c09      	bf      	0x2f64	// 2f64 <BT0IntHandler+0x24>
	{
		BT0->ICR = BT_PEND;
    2f54:	b32d      	st.w      	r1, (r3, 0x34)
		adc_get();
    2f56:	e00000c7 	bsr      	0x30e4	// 30e4 <adc_get>
	} 
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT0 Event trigger interrupt
	{
		BT0->ICR = BT_EVTRG;
	} 
}
    2f5a:	d9ee2000 	ld.w      	r15, (r14, 0x0)
    2f5e:	1401      	addi      	r14, r14, 4
    2f60:	1463      	ipop
    2f62:	1461      	nir
	else if((BT0->MISR&BT_CMP)==BT_CMP)				//BT0 CMP Match interrupt 
    2f64:	934c      	ld.w      	r2, (r3, 0x30)
    2f66:	3102      	movi      	r1, 2
    2f68:	6884      	and      	r2, r1
    2f6a:	3a40      	cmpnei      	r2, 0
    2f6c:	0c03      	bf      	0x2f72	// 2f72 <BT0IntHandler+0x32>
		BT0->ICR = BT_EVTRG;
    2f6e:	b32d      	st.w      	r1, (r3, 0x34)
}
    2f70:	07f5      	br      	0x2f5a	// 2f5a <BT0IntHandler+0x1a>
	else if((BT0->MISR&BT_OVF)==BT_OVF)				//BT0 OVF interrupt
    2f72:	934c      	ld.w      	r2, (r3, 0x30)
    2f74:	3104      	movi      	r1, 4
    2f76:	6884      	and      	r2, r1
    2f78:	3a40      	cmpnei      	r2, 0
    2f7a:	0bfa      	bt      	0x2f6e	// 2f6e <BT0IntHandler+0x2e>
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT0 Event trigger interrupt
    2f7c:	934c      	ld.w      	r2, (r3, 0x30)
    2f7e:	3108      	movi      	r1, 8
    2f80:	6884      	and      	r2, r1
    2f82:	3a40      	cmpnei      	r2, 0
    2f84:	0bf5      	bt      	0x2f6e	// 2f6e <BT0IntHandler+0x2e>
    2f86:	07ea      	br      	0x2f5a	// 2f5a <BT0IntHandler+0x1a>
    2f88:	2000000c 	.long	0x2000000c

Disassembly of section .text.BT1IntHandler:

00002f8c <BT1IntHandler>:
//BT1 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void BT1IntHandler(void) 
{
    2f8c:	1460      	nie
    2f8e:	1462      	ipush
    // ISR content ...
	if((BT1->MISR&BT_PEND)==BT_PEND)				//BT1 PEND interrupt
    2f90:	106f      	lrw      	r3, 0x20000008	// 2fcc <BT1IntHandler+0x40>
    2f92:	3101      	movi      	r1, 1
    2f94:	9360      	ld.w      	r3, (r3, 0x0)
    2f96:	934c      	ld.w      	r2, (r3, 0x30)
    2f98:	6884      	and      	r2, r1
    2f9a:	3a40      	cmpnei      	r2, 0
    2f9c:	0c03      	bf      	0x2fa2	// 2fa2 <BT1IntHandler+0x16>
	{
		BT1->ICR = BT_OVF;
	} 
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT1 Event trigger interrupt
	{
		BT1->ICR = BT_EVTRG;
    2f9e:	b32d      	st.w      	r1, (r3, 0x34)
	} 
}
    2fa0:	0409      	br      	0x2fb2	// 2fb2 <BT1IntHandler+0x26>
	else if((BT0->MISR&BT_CMP)==BT_CMP)				//BT1 CMP Match interrupt 
    2fa2:	104c      	lrw      	r2, 0x2000000c	// 2fd0 <BT1IntHandler+0x44>
    2fa4:	3002      	movi      	r0, 2
    2fa6:	9240      	ld.w      	r2, (r2, 0x0)
    2fa8:	922c      	ld.w      	r1, (r2, 0x30)
    2faa:	6840      	and      	r1, r0
    2fac:	3940      	cmpnei      	r1, 0
    2fae:	0c04      	bf      	0x2fb6	// 2fb6 <BT1IntHandler+0x2a>
		BT1->ICR = BT_OVF;
    2fb0:	b30d      	st.w      	r0, (r3, 0x34)
}
    2fb2:	1463      	ipop
    2fb4:	1461      	nir
	else if((BT0->MISR&BT_OVF)==BT_OVF)				//BT1 OVF interrupt
    2fb6:	922c      	ld.w      	r1, (r2, 0x30)
    2fb8:	3004      	movi      	r0, 4
    2fba:	6840      	and      	r1, r0
    2fbc:	3940      	cmpnei      	r1, 0
    2fbe:	0bf9      	bt      	0x2fb0	// 2fb0 <BT1IntHandler+0x24>
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT1 Event trigger interrupt
    2fc0:	924c      	ld.w      	r2, (r2, 0x30)
    2fc2:	3108      	movi      	r1, 8
    2fc4:	6884      	and      	r2, r1
    2fc6:	3a40      	cmpnei      	r2, 0
    2fc8:	0beb      	bt      	0x2f9e	// 2f9e <BT1IntHandler+0x12>
    2fca:	07f4      	br      	0x2fb2	// 2fb2 <BT1IntHandler+0x26>
    2fcc:	20000008 	.long	0x20000008
    2fd0:	2000000c 	.long	0x2000000c

Disassembly of section .text.PriviledgeVioHandler:

00002fd4 <PriviledgeVioHandler>:
    2fd4:	783c      	jmp      	r15

Disassembly of section .text.PendTrapHandler:

00002fd6 <PendTrapHandler>:
    // ISR content ...

}

void PendTrapHandler(void) 
{
    2fd6:	1460      	nie
    2fd8:	1462      	ipush
    // ISR content ...

}
    2fda:	1463      	ipop
    2fdc:	1461      	nir

Disassembly of section .text.Trap3Handler:

00002fde <Trap3Handler>:
    2fde:	1460      	nie
    2fe0:	1462      	ipush
    2fe2:	1463      	ipop
    2fe4:	1461      	nir

Disassembly of section .text.Trap2Handler:

00002fe6 <Trap2Handler>:
    2fe6:	1460      	nie
    2fe8:	1462      	ipush
    2fea:	1463      	ipop
    2fec:	1461      	nir

Disassembly of section .text.Trap1Handler:

00002fee <Trap1Handler>:
    2fee:	1460      	nie
    2ff0:	1462      	ipush
    2ff2:	1463      	ipop
    2ff4:	1461      	nir

Disassembly of section .text.Trap0Handler:

00002ff6 <Trap0Handler>:
    2ff6:	1460      	nie
    2ff8:	1462      	ipush
    2ffa:	1463      	ipop
    2ffc:	1461      	nir

Disassembly of section .text.UnrecExecpHandler:

00002ffe <UnrecExecpHandler>:
    2ffe:	1460      	nie
    3000:	1462      	ipush
    3002:	1463      	ipop
    3004:	1461      	nir

Disassembly of section .text.BreakPointHandler:

00003006 <BreakPointHandler>:
    3006:	1460      	nie
    3008:	1462      	ipush
    300a:	1463      	ipop
    300c:	1461      	nir

Disassembly of section .text.AccessErrHandler:

0000300e <AccessErrHandler>:
    300e:	1460      	nie
    3010:	1462      	ipush
    3012:	1463      	ipop
    3014:	1461      	nir

Disassembly of section .text.IllegalInstrHandler:

00003016 <IllegalInstrHandler>:
    3016:	1460      	nie
    3018:	1462      	ipush
    301a:	1463      	ipop
    301c:	1461      	nir

Disassembly of section .text.MisalignedHandler:

0000301e <MisalignedHandler>:
    301e:	1460      	nie
    3020:	1462      	ipush
    3022:	1463      	ipop
    3024:	1461      	nir

Disassembly of section .text.CNTAIntHandler:

00003026 <CNTAIntHandler>:
    3026:	1460      	nie
    3028:	1462      	ipush
    302a:	1463      	ipop
    302c:	1461      	nir

Disassembly of section .text.I2CIntHandler:

0000302e <I2CIntHandler>:
    302e:	1460      	nie
    3030:	1462      	ipush
    3032:	1463      	ipop
    3034:	1461      	nir

Disassembly of section .text.startup.main:

00003038 <main>:

/***************************************************/
//main
/**************************************************/
int main(void) 
{
    3038:	14d1      	push      	r4, r15
	delay_nms(2000);							//power on delay if needed
    303a:	30fa      	movi      	r0, 250
    303c:	4003      	lsli      	r0, r0, 3
    303e:	e3fffacd 	bsr      	0x25d8	// 25d8 <delay_nms>
	APT32F102_init();							//102 initial
    3042:	e3fffb33 	bsr      	0x26a8	// 26a8 <APT32F102_init>

  
 
  
   
   ADC_CONFIG();
    3046:	e000001d 	bsr      	0x3080	// 3080 <ADC_CONFIG>
   bldcInit();
    304a:	e000006f 	bsr      	0x3128	// 3128 <bldcInit>
   {
     SYSCON_IWDCNT_Reload();

     blcdStart();
     adc_get();
	 my_printf("nihao\n");
    304e:	1086      	lrw      	r4, 0x4b4c	// 3064 <main+0x2c>
     SYSCON_IWDCNT_Reload();
    3050:	e3fff6fc 	bsr      	0x1e48	// 1e48 <SYSCON_IWDCNT_Reload>
     blcdStart();
    3054:	e000015a 	bsr      	0x3308	// 3308 <blcdStart>
     adc_get();
    3058:	e0000046 	bsr      	0x30e4	// 30e4 <adc_get>
	 my_printf("nihao\n");
    305c:	6c13      	mov      	r0, r4
    305e:	e3fff59d 	bsr      	0x1b98	// 1b98 <my_printf>
    3062:	07f7      	br      	0x3050	// 3050 <main+0x18>
    3064:	00004b4c 	.long	0x00004b4c

Disassembly of section .text.fputc:

00003068 <fputc>:
U16_T adc_value[3];
void blcdStart(void);
void stepMoter(void);
void __putchar__ (char ch) ;
int fputc(int ch, FILE *f)
{
    3068:	14d1      	push      	r4, r15
    UARTTxByte(UART0,ch);	
    306a:	1065      	lrw      	r3, 0x20000040	// 307c <fputc+0x14>
{
    306c:	6d03      	mov      	r4, r0
    UARTTxByte(UART0,ch);	
    306e:	7440      	zextb      	r1, r0
    3070:	9300      	ld.w      	r0, (r3, 0x0)
    3072:	e3fff884 	bsr      	0x217a	// 217a <UARTTxByte>
    return (ch);
}
    3076:	6c13      	mov      	r0, r4
    3078:	1491      	pop      	r4, r15
    307a:	0000      	bkpt
    307c:	20000040 	.long	0x20000040

Disassembly of section .text.ADC_CONFIG:

00003080 <ADC_CONFIG>:
{

}

void ADC_CONFIG(void)
{
    3080:	14d0      	push      	r15
    3082:	1422      	subi      	r14, r14, 8
    ADC12_Software_Reset();
    3084:	e3fff8b0 	bsr      	0x21e4	// 21e4 <ADC12_Software_Reset>
    ADC12_CLK_CMD(ADC_CLK_CR, ENABLE);                                                  // enable ADC CLK
    3088:	3101      	movi      	r1, 1
    308a:	3002      	movi      	r0, 2
    308c:	e3fff896 	bsr      	0x21b8	// 21b8 <ADC12_CLK_CMD>
    ADC12_Configure_Mode(ADC12_12BIT, Continuous_mode, 0, 6, 2, 3);                     // 12BIT ADC; Continuous mode; Conversion priority selection 0; Holding cycles=6 ;ADC_CLK=PCLK/2*2=0.2us; Number of Conversions=1
    3090:	3303      	movi      	r3, 3
    3092:	b861      	st.w      	r3, (r14, 0x4)
    3094:	3302      	movi      	r3, 2
    3096:	b860      	st.w      	r3, (r14, 0x0)
    3098:	3200      	movi      	r2, 0
    309a:	3306      	movi      	r3, 6
    309c:	3101      	movi      	r1, 1
    309e:	3001      	movi      	r0, 1
    30a0:	e3fff8d2 	bsr      	0x2244	// 2244 <ADC12_Configure_Mode>
    ADC12_Configure_VREF_Selecte(ADC12_VREFP_FVR2048_VREFN_VSS);                        // ADC VREF Positive FVR4.096V,negative VSS
    30a4:	3002      	movi      	r0, 2
    30a6:	e3fff90d 	bsr      	0x22c0	// 22c0 <ADC12_Configure_VREF_Selecte>
    ADC12_ConversionChannel_Config(CH_A, ADC12_CV_RepeatNum1, ADC12_AVGDIS, 0); // SEQ0 chose ADCIN0, 6 Holding cycles, Average 1 time
    30aa:	3300      	movi      	r3, 0
    30ac:	3200      	movi      	r2, 0
    30ae:	3100      	movi      	r1, 0
    30b0:	3001      	movi      	r0, 1
    30b2:	e3fff9d3 	bsr      	0x2458	// 2458 <ADC12_ConversionChannel_Config>
    ADC12_ConversionChannel_Config(CH_B, ADC12_CV_RepeatNum1, ADC12_AVGDIS, 1); // SEQ1 chose ADCIN1, 6 Holding cycles , Average 1 time
    30b6:	3301      	movi      	r3, 1
    30b8:	3200      	movi      	r2, 0
    30ba:	3100      	movi      	r1, 0
    30bc:	3002      	movi      	r0, 2
    30be:	e3fff9cd 	bsr      	0x2458	// 2458 <ADC12_ConversionChannel_Config>
    ADC12_ConversionChannel_Config(CH_C, ADC12_CV_RepeatNum1, ADC12_AVGDIS, 2); // SEQ1 chose ADCIN1, 6 Holding cycles , Average 1 time
    30c2:	3302      	movi      	r3, 2
    30c4:	3200      	movi      	r2, 0
    30c6:	3100      	movi      	r1, 0
    30c8:	3003      	movi      	r0, 3
    30ca:	e3fff9c7 	bsr      	0x2458	// 2458 <ADC12_ConversionChannel_Config>
    ADC12_CMD(ENABLE);                                                                  // enable ADC
    30ce:	3001      	movi      	r0, 1
    30d0:	e3fff890 	bsr      	0x21f0	// 21f0 <ADC12_CMD>
    ADC12_ready_wait();                                                                 // wait ADC get ready
    30d4:	e3fff8a2 	bsr      	0x2218	// 2218 <ADC12_ready_wait>
    ADC12_Control(ADC12_START);                                                         // ADC convert start
    30d8:	3008      	movi      	r0, 8
    30da:	e3fff857 	bsr      	0x2188	// 2188 <ADC12_Control>
    //    ADC12_ConfigInterrupt_CMD(ADC12_CMP0L, ENABLE);
    //    // ADC12_ConfigInterrupt_CMD(ADC12_CMP1H, ENABLE);
    //    // ADC12_ConfigInterrupt_CMD(ADC12_CMP1L, ENABLE);
    //    ADC0->MR |= (CSP_REGISTER_T)(1UL << 30);
    //    ADC_Int_Enable();
}
    30de:	1402      	addi      	r14, r14, 8
    30e0:	1490      	pop      	r15

Disassembly of section .text.adc_get:

000030e4 <adc_get>:
void adc_get(void)
{
    30e4:	14d2      	push      	r4-r5, r15
    ADC12_SEQEND_wait(0);
    adc_value[0] = ADC0->DR[0];
    30e6:	10ae      	lrw      	r5, 0x20000050	// 311c <adc_get+0x38>
    ADC12_SEQEND_wait(0);
    30e8:	3000      	movi      	r0, 0
    30ea:	e3fff8a1 	bsr      	0x222c	// 222c <ADC12_SEQEND_wait>
    adc_value[0] = ADC0->DR[0];
    30ee:	9560      	ld.w      	r3, (r5, 0x0)
    30f0:	23ff      	addi      	r3, 256
    30f2:	108c      	lrw      	r4, 0x200001e0	// 3120 <adc_get+0x3c>
    ADC12_SEQEND_wait(1);
    30f4:	3001      	movi      	r0, 1
    adc_value[0] = ADC0->DR[0];
    30f6:	9360      	ld.w      	r3, (r3, 0x0)
    30f8:	ac60      	st.h      	r3, (r4, 0x0)
    ADC12_SEQEND_wait(1);
    30fa:	e3fff899 	bsr      	0x222c	// 222c <ADC12_SEQEND_wait>
    adc_value[1] = ADC0->DR[1];
    30fe:	9560      	ld.w      	r3, (r5, 0x0)
    3100:	23ff      	addi      	r3, 256
    3102:	9361      	ld.w      	r3, (r3, 0x4)
    ADC12_SEQEND_wait(2);
    3104:	3002      	movi      	r0, 2
    adc_value[1] = ADC0->DR[1];
    3106:	ac61      	st.h      	r3, (r4, 0x2)
    ADC12_SEQEND_wait(2);
    3108:	e3fff892 	bsr      	0x222c	// 222c <ADC12_SEQEND_wait>
    adc_value[2] = ADC0->DR[2];
    310c:	9560      	ld.w      	r3, (r5, 0x0)
    310e:	23ff      	addi      	r3, 256
    3110:	9362      	ld.w      	r3, (r3, 0x8)
    3112:	ac62      	st.h      	r3, (r4, 0x4)
    //printf("%d,%d,%d\n", adc_value[0], adc_value[1], adc_value[2]);
	my_printf("nihao\n");
    3114:	1004      	lrw      	r0, 0x4b4c	// 3124 <adc_get+0x40>
    3116:	e3fff541 	bsr      	0x1b98	// 1b98 <my_printf>
}
    311a:	1492      	pop      	r4-r5, r15
    311c:	20000050 	.long	0x20000050
    3120:	200001e0 	.long	0x200001e0
    3124:	00004b4c 	.long	0x00004b4c

Disassembly of section .text.bldcInit:

00003128 <bldcInit>:

void bldcInit(void)
{
    3128:	14d1      	push      	r4, r15
    GPIO_Init(GAL_PORT, GAL_PIN, 0);
    312a:	1091      	lrw      	r4, 0x2000004c	// 316c <bldcInit+0x44>
    312c:	3200      	movi      	r2, 0
    312e:	9400      	ld.w      	r0, (r4, 0x0)
    3130:	310f      	movi      	r1, 15
    3132:	e3fff6f3 	bsr      	0x1f18	// 1f18 <GPIO_Init>
    GPIO_Init(GBL_PORT, GBL_PIN, 0);
    3136:	9400      	ld.w      	r0, (r4, 0x0)
    3138:	3200      	movi      	r2, 0
    GPIO_Init(GCL_PORT, GCL_PIN, 0);
    313a:	108e      	lrw      	r4, 0x20000048	// 3170 <bldcInit+0x48>
    GPIO_Init(GBL_PORT, GBL_PIN, 0);
    313c:	310e      	movi      	r1, 14
    313e:	e3fff6ed 	bsr      	0x1f18	// 1f18 <GPIO_Init>
    GPIO_Init(GCL_PORT, GCL_PIN, 0);
    3142:	9400      	ld.w      	r0, (r4, 0x0)
    3144:	3200      	movi      	r2, 0
    3146:	3105      	movi      	r1, 5
    3148:	e3fff6e8 	bsr      	0x1f18	// 1f18 <GPIO_Init>
    GPIO_Init(GAB_PORT, GAB_PIN, 0);
    314c:	9400      	ld.w      	r0, (r4, 0x0)
    314e:	3200      	movi      	r2, 0
    3150:	3104      	movi      	r1, 4
    3152:	e3fff6e3 	bsr      	0x1f18	// 1f18 <GPIO_Init>
    GPIO_Init(GBB_PORT, GBB_PIN, 0);
    3156:	9400      	ld.w      	r0, (r4, 0x0)
    3158:	3200      	movi      	r2, 0
    315a:	3101      	movi      	r1, 1
    315c:	e3fff6de 	bsr      	0x1f18	// 1f18 <GPIO_Init>
    GPIO_Init(GCB_PORT, GCB_PIN, 0);
    3160:	9400      	ld.w      	r0, (r4, 0x0)
    3162:	3200      	movi      	r2, 0
    3164:	3100      	movi      	r1, 0
    3166:	e3fff6d9 	bsr      	0x1f18	// 1f18 <GPIO_Init>
}
    316a:	1491      	pop      	r4, r15
    316c:	2000004c 	.long	0x2000004c
    3170:	20000048 	.long	0x20000048

Disassembly of section .text.stepMoter:

00003174 <stepMoter>:
    delay_nms(50); //delay 100ms
}


void stepMoter(void)
{
    3174:	14d2      	push      	r4-r5, r15
    if(++bldc.step >= 6)
    3176:	1362      	lrw      	r3, 0x200001e6	// 32fc <stepMoter+0x188>
    3178:	8340      	ld.b      	r2, (r3, 0x0)
    317a:	2200      	addi      	r2, 1
    317c:	7488      	zextb      	r2, r2
    317e:	3a05      	cmphsi      	r2, 6
    3180:	080c      	bt      	0x3198	// 3198 <stepMoter+0x24>
    {
        bldc.step = 0;
    3182:	a340      	st.b      	r2, (r3, 0x0)
    }
    switch (bldc.step)
    3184:	8300      	ld.b      	r0, (r3, 0x0)
    3186:	3805      	cmphsi      	r0, 6
    3188:	084a      	bt      	0x321c	// 321c <stepMoter+0xa8>
    318a:	12be      	lrw      	r5, 0x2000004c	// 3300 <stepMoter+0x18c>
    318c:	129e      	lrw      	r4, 0x20000048	// 3304 <stepMoter+0x190>
    318e:	e3ffedb7 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    3192:	2705      	.short	0x2705
    3194:	9c806346 	.long	0x9c806346
        bldc.step = 0;
    3198:	3200      	movi      	r2, 0
    319a:	07f4      	br      	0x3182	// 3182 <stepMoter+0xe>
    {
    case 0: //AB
        GAL_LOW;
    319c:	3200      	movi      	r2, 0
    319e:	310f      	movi      	r1, 15
    31a0:	9500      	ld.w      	r0, (r5, 0x0)
    31a2:	e3fff72b 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GBL_LOW;
    31a6:	3200      	movi      	r2, 0
    31a8:	310e      	movi      	r1, 14
    31aa:	9500      	ld.w      	r0, (r5, 0x0)
    31ac:	e3fff726 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GCL_LOW;
    31b0:	3200      	movi      	r2, 0
    31b2:	3105      	movi      	r1, 5
    31b4:	9400      	ld.w      	r0, (r4, 0x0)
    31b6:	e3fff721 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>

        GAB_LOW;
    31ba:	3200      	movi      	r2, 0
    31bc:	3104      	movi      	r1, 4
    31be:	9400      	ld.w      	r0, (r4, 0x0)
    31c0:	e3fff71c 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GCB_LOW;
    31c4:	3200      	movi      	r2, 0
    31c6:	3100      	movi      	r1, 0
    31c8:	9400      	ld.w      	r0, (r4, 0x0)
    31ca:	e3fff717 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        bldc_delay();
//        ADC12_Compare_statue(NBRCMP0_TypeDef, NBRCMPX_L_TypeDef);
//        ADC12_CompareFunction_set(CH_A , CH_A , center , center ) ;

        GAL_HIGH;
    31ce:	9500      	ld.w      	r0, (r5, 0x0)
    31d0:	3201      	movi      	r2, 1
    31d2:	310f      	movi      	r1, 15
    case 5: //CB
        GCL_HIGH;
        GAL_LOW;
        GBL_LOW;
        GAB_LOW;
        GCB_LOW;
    31d4:	e3fff712 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        bldc_delay();

        GBB_HIGH;
    31d8:	9400      	ld.w      	r0, (r4, 0x0)
    31da:	3201      	movi      	r2, 1
    31dc:	3101      	movi      	r1, 1
    31de:	041d      	br      	0x3218	// 3218 <stepMoter+0xa4>
        GAL_HIGH;
    31e0:	3201      	movi      	r2, 1
    31e2:	310f      	movi      	r1, 15
    31e4:	9500      	ld.w      	r0, (r5, 0x0)
    31e6:	e3fff709 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GBL_LOW;
    31ea:	9500      	ld.w      	r0, (r5, 0x0)
    31ec:	3200      	movi      	r2, 0
    31ee:	310e      	movi      	r1, 14
    31f0:	e3fff704 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GCL_LOW;
    31f4:	3200      	movi      	r2, 0
    31f6:	3105      	movi      	r1, 5
    31f8:	9400      	ld.w      	r0, (r4, 0x0)
    31fa:	e3fff6ff 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GAB_LOW;
    31fe:	3200      	movi      	r2, 0
    3200:	3104      	movi      	r1, 4
    3202:	9400      	ld.w      	r0, (r4, 0x0)
    3204:	e3fff6fa 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GBB_LOW;
    3208:	3200      	movi      	r2, 0
    320a:	3101      	movi      	r1, 1
    320c:	9400      	ld.w      	r0, (r4, 0x0)
        GBL_HIGH;
    320e:	e3fff6f5 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GCB_HIGH;
    3212:	9400      	ld.w      	r0, (r4, 0x0)
    3214:	3201      	movi      	r2, 1
    3216:	3100      	movi      	r1, 0
        GBB_HIGH;
    3218:	e3fff6f0 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
    

    default:
        break;
    }
}
    321c:	1492      	pop      	r4-r5, r15
        GAL_LOW;
    321e:	3200      	movi      	r2, 0
    3220:	310f      	movi      	r1, 15
    3222:	9500      	ld.w      	r0, (r5, 0x0)
    3224:	e3fff6ea 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GBL_LOW;
    3228:	3200      	movi      	r2, 0
    322a:	310e      	movi      	r1, 14
    322c:	9500      	ld.w      	r0, (r5, 0x0)
    322e:	e3fff6e5 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GCL_LOW;
    3232:	3200      	movi      	r2, 0
    3234:	3105      	movi      	r1, 5
    3236:	9400      	ld.w      	r0, (r4, 0x0)
    3238:	e3fff6e0 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GAB_LOW;
    323c:	3200      	movi      	r2, 0
    323e:	3104      	movi      	r1, 4
    3240:	9400      	ld.w      	r0, (r4, 0x0)
    3242:	e3fff6db 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GBB_LOW;
    3246:	3200      	movi      	r2, 0
    3248:	3101      	movi      	r1, 1
    324a:	9400      	ld.w      	r0, (r4, 0x0)
    324c:	e3fff6d6 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GBL_HIGH;
    3250:	9500      	ld.w      	r0, (r5, 0x0)
    3252:	3201      	movi      	r2, 1
    3254:	310e      	movi      	r1, 14
    3256:	07dc      	br      	0x320e	// 320e <stepMoter+0x9a>
        GBL_HIGH;
    3258:	3201      	movi      	r2, 1
    325a:	310e      	movi      	r1, 14
    325c:	9500      	ld.w      	r0, (r5, 0x0)
    325e:	e3fff6cd 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GAL_LOW;
    3262:	9500      	ld.w      	r0, (r5, 0x0)
    3264:	3200      	movi      	r2, 0
    3266:	310f      	movi      	r1, 15
    3268:	e3fff6c8 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GCL_LOW;
    326c:	3200      	movi      	r2, 0
    326e:	3105      	movi      	r1, 5
    3270:	9400      	ld.w      	r0, (r4, 0x0)
    3272:	e3fff6c3 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GBB_LOW;
    3276:	3200      	movi      	r2, 0
    3278:	3101      	movi      	r1, 1
    327a:	9400      	ld.w      	r0, (r4, 0x0)
    327c:	e3fff6be 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GCB_LOW;
    3280:	3200      	movi      	r2, 0
    3282:	3100      	movi      	r1, 0
        GCL_HIGH;
    3284:	9400      	ld.w      	r0, (r4, 0x0)
    3286:	e3fff6b9 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GAB_HIGH;
    328a:	9400      	ld.w      	r0, (r4, 0x0)
    328c:	3201      	movi      	r2, 1
    328e:	3104      	movi      	r1, 4
    3290:	07c4      	br      	0x3218	// 3218 <stepMoter+0xa4>
        GAL_LOW;
    3292:	3200      	movi      	r2, 0
    3294:	310f      	movi      	r1, 15
    3296:	9500      	ld.w      	r0, (r5, 0x0)
    3298:	e3fff6b0 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GBL_LOW;
    329c:	9500      	ld.w      	r0, (r5, 0x0)
    329e:	3200      	movi      	r2, 0
    32a0:	310e      	movi      	r1, 14
    32a2:	e3fff6ab 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GCL_LOW;
    32a6:	3200      	movi      	r2, 0
    32a8:	3105      	movi      	r1, 5
    32aa:	9400      	ld.w      	r0, (r4, 0x0)
    32ac:	e3fff6a6 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GBB_LOW;
    32b0:	3200      	movi      	r2, 0
    32b2:	3101      	movi      	r1, 1
    32b4:	9400      	ld.w      	r0, (r4, 0x0)
    32b6:	e3fff6a1 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GCB_LOW;
    32ba:	3200      	movi      	r2, 0
    32bc:	3100      	movi      	r1, 0
    32be:	9400      	ld.w      	r0, (r4, 0x0)
    32c0:	e3fff69c 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GCL_HIGH;
    32c4:	3201      	movi      	r2, 1
    32c6:	3105      	movi      	r1, 5
    32c8:	07de      	br      	0x3284	// 3284 <stepMoter+0x110>
        GCL_HIGH;
    32ca:	3201      	movi      	r2, 1
    32cc:	3105      	movi      	r1, 5
    32ce:	9400      	ld.w      	r0, (r4, 0x0)
    32d0:	e3fff694 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GAL_LOW;
    32d4:	3200      	movi      	r2, 0
    32d6:	310f      	movi      	r1, 15
    32d8:	9500      	ld.w      	r0, (r5, 0x0)
    32da:	e3fff68f 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GBL_LOW;
    32de:	9500      	ld.w      	r0, (r5, 0x0)
    32e0:	3200      	movi      	r2, 0
    32e2:	310e      	movi      	r1, 14
    32e4:	e3fff68a 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GAB_LOW;
    32e8:	3200      	movi      	r2, 0
    32ea:	3104      	movi      	r1, 4
    32ec:	9400      	ld.w      	r0, (r4, 0x0)
    32ee:	e3fff685 	bsr      	0x1ff8	// 1ff8 <GPIO_Set_Value>
        GCB_LOW;
    32f2:	3200      	movi      	r2, 0
    32f4:	3100      	movi      	r1, 0
    32f6:	9400      	ld.w      	r0, (r4, 0x0)
    32f8:	076e      	br      	0x31d4	// 31d4 <stepMoter+0x60>
    32fa:	0000      	bkpt
    32fc:	200001e6 	.long	0x200001e6
    3300:	2000004c 	.long	0x2000004c
    3304:	20000048 	.long	0x20000048

Disassembly of section .text.blcdStart:

00003308 <blcdStart>:
{
    3308:	14d0      	push      	r15
    stepMoter()  ;
    330a:	e3ffff35 	bsr      	0x3174	// 3174 <stepMoter>
    delay_nms(50); //delay 100ms
    330e:	3032      	movi      	r0, 50
    3310:	e3fff964 	bsr      	0x25d8	// 25d8 <delay_nms>
}
    3314:	1490      	pop      	r15

Disassembly of section .text.__divsi3:

00003318 <__divsi3>:
CSP_BT_T    	*BT1      = (CSP_BT_T   *)APB_BT1Base ;
CSP_CRC_T   	*CRC      = (CSP_CRC_T  *)AHB_CRCBase ;
CSP_HWD_T   	*HWD      = (CSP_HWD_T  *)APB_HWDBase ;

int __divsi3 (  int a,   int b)
{   
    3318:	14c1      	push      	r4
	int PSR;
	__asm volatile(
    331a:	c0006023 	mfcr      	r3, cr<0, 0>
    331e:	c0807020 	psrclr      	ie
					"mfcr %0 , psr \n\r"
					"psrclr ie \n\r"
					: "=r"(PSR)
				   );

	HWD->CR = 0;
    3322:	1046      	lrw      	r2, 0x20000000	// 3338 <__divsi3+0x20>
    3324:	3400      	movi      	r4, 0
    3326:	9240      	ld.w      	r2, (r2, 0x0)
    3328:	b284      	st.w      	r4, (r2, 0x10)
	HWD->DIVIDENT = a;
	HWD->DIVISOR = b;

	PSR |= 0x80000000;
    332a:	3bbf      	bseti      	r3, 31
	HWD->DIVIDENT = a;
    332c:	b200      	st.w      	r0, (r2, 0x0)
	HWD->DIVISOR = b;
    332e:	b221      	st.w      	r1, (r2, 0x4)
	__asm volatile(
    3330:	c0036420 	mtcr      	r3, cr<0, 0>
					 "mtcr %0 , psr \n\r"
					 : 
					 :"r"(PSR)
					);
					
	return HWD->QUOTIENT;
    3334:	9202      	ld.w      	r0, (r2, 0x8)
}
    3336:	1481      	pop      	r4
    3338:	20000000 	.long	0x20000000

Disassembly of section .text.__udivsi3:

0000333c <__udivsi3>:
 unsigned int __udivsi3 ( unsigned int a,  unsigned int b)
{   
    333c:	14c1      	push      	r4
	int PSR;
	__asm volatile(
    333e:	c0006023 	mfcr      	r3, cr<0, 0>
    3342:	c0807020 	psrclr      	ie
					"mfcr %0 , psr \n\r"
					"psrclr ie \n\r"
					: "=r"(PSR)
				   );
	
	HWD->CR = 1;
    3346:	1046      	lrw      	r2, 0x20000000	// 335c <__udivsi3+0x20>
    3348:	3401      	movi      	r4, 1
    334a:	9240      	ld.w      	r2, (r2, 0x0)
    334c:	b284      	st.w      	r4, (r2, 0x10)
	HWD->DIVIDENT = a;
	HWD->DIVISOR = b;

	PSR |= 0x80000000;
    334e:	3bbf      	bseti      	r3, 31
	HWD->DIVIDENT = a;
    3350:	b200      	st.w      	r0, (r2, 0x0)
	HWD->DIVISOR = b;
    3352:	b221      	st.w      	r1, (r2, 0x4)
	__asm volatile(
    3354:	c0036420 	mtcr      	r3, cr<0, 0>
					 "mtcr %0 , psr \n\r"
					 : 
					 :"r"(PSR)
					);

	return HWD->QUOTIENT;
    3358:	9202      	ld.w      	r0, (r2, 0x8)
}
    335a:	1481      	pop      	r4
    335c:	20000000 	.long	0x20000000

Disassembly of section .text.__umodsi3:

00003360 <__umodsi3>:
					);	
	return HWD->REMAIN;
}

unsigned int __umodsi3 ( unsigned int a,  unsigned int b)
{   
    3360:	14c1      	push      	r4
	int PSR;
	__asm volatile(
    3362:	c0006023 	mfcr      	r3, cr<0, 0>
    3366:	c0807020 	psrclr      	ie
					"mfcr %0 , psr \n\r"
					"psrclr ie \n\r"
					: "=r"(PSR)
				   );
	
	HWD->CR = 1;
    336a:	1046      	lrw      	r2, 0x20000000	// 3380 <__umodsi3+0x20>
    336c:	3401      	movi      	r4, 1
    336e:	9240      	ld.w      	r2, (r2, 0x0)
    3370:	b284      	st.w      	r4, (r2, 0x10)
	HWD->DIVIDENT = a;
	HWD->DIVISOR = b;

	PSR |= 0x80000000;
    3372:	3bbf      	bseti      	r3, 31
	HWD->DIVIDENT = a;
    3374:	b200      	st.w      	r0, (r2, 0x0)
	HWD->DIVISOR = b;
    3376:	b221      	st.w      	r1, (r2, 0x4)
	__asm volatile(
    3378:	c0036420 	mtcr      	r3, cr<0, 0>
					 "mtcr %0 , psr \n\r"
					 : 
					 :"r"(PSR)
					);	
	return HWD->REMAIN;
    337c:	9203      	ld.w      	r0, (r2, 0xc)
}
    337e:	1481      	pop      	r4
    3380:	20000000 	.long	0x20000000

Disassembly of section .text.CK_CPU_EnAllNormalIrq:

00003384 <CK_CPU_EnAllNormalIrq>:
}


void CK_CPU_EnAllNormalIrq(void)
{
  asm  ("psrset ee,ie");
    3384:	c1807420 	psrset      	ee, ie
}
    3388:	783c      	jmp      	r15

Disassembly of section .text.TK_Sampling_prog:

0000338c <TK_Sampling_prog>:
    338c:	14c4      	push      	r4-r7
    338e:	1423      	subi      	r14, r14, 12
    3390:	1169      	lrw      	r3, 0x20000054	// 3434 <TK_Sampling_prog+0xa8>
    3392:	114a      	lrw      	r2, 0x20000481	// 3438 <TK_Sampling_prog+0xac>
    3394:	6d0b      	mov      	r4, r2
    3396:	9320      	ld.w      	r1, (r3, 0x0)
    3398:	b840      	st.w      	r2, (r14, 0x0)
    339a:	3300      	movi      	r3, 0
    339c:	11a8      	lrw      	r5, 0x2000050e	// 343c <TK_Sampling_prog+0xb0>
    339e:	9840      	ld.w      	r2, (r14, 0x0)
    33a0:	8240      	ld.b      	r2, (r2, 0x0)
    33a2:	3a41      	cmpnei      	r2, 1
    33a4:	0808      	bt      	0x33b4	// 33b4 <TK_Sampling_prog+0x28>
    33a6:	4342      	lsli      	r2, r3, 2
    33a8:	6084      	addu      	r2, r1
    33aa:	9200      	ld.w      	r0, (r2, 0x0)
    33ac:	4341      	lsli      	r2, r3, 1
    33ae:	7401      	zexth      	r0, r0
    33b0:	6094      	addu      	r2, r5
    33b2:	aa00      	st.h      	r0, (r2, 0x0)
    33b4:	8440      	ld.b      	r2, (r4, 0x0)
    33b6:	3a42      	cmpnei      	r2, 2
    33b8:	0809      	bt      	0x33ca	// 33ca <TK_Sampling_prog+0x3e>
    33ba:	4342      	lsli      	r2, r3, 2
    33bc:	6084      	addu      	r2, r1
    33be:	9200      	ld.w      	r0, (r2, 0x0)
    33c0:	4341      	lsli      	r2, r3, 1
    33c2:	11c0      	lrw      	r6, 0x200002c8	// 3440 <TK_Sampling_prog+0xb4>
    33c4:	7401      	zexth      	r0, r0
    33c6:	6098      	addu      	r2, r6
    33c8:	aa00      	st.h      	r0, (r2, 0x0)
    33ca:	8440      	ld.b      	r2, (r4, 0x0)
    33cc:	3a40      	cmpnei      	r2, 0
    33ce:	0809      	bt      	0x33e0	// 33e0 <TK_Sampling_prog+0x54>
    33d0:	4342      	lsli      	r2, r3, 2
    33d2:	6084      	addu      	r2, r1
    33d4:	9200      	ld.w      	r0, (r2, 0x0)
    33d6:	4341      	lsli      	r2, r3, 1
    33d8:	10db      	lrw      	r6, 0x200003b6	// 3444 <TK_Sampling_prog+0xb8>
    33da:	7401      	zexth      	r0, r0
    33dc:	6098      	addu      	r2, r6
    33de:	aa00      	st.h      	r0, (r2, 0x0)
    33e0:	10da      	lrw      	r6, 0x20000321	// 3448 <TK_Sampling_prog+0xbc>
    33e2:	8640      	ld.b      	r2, (r6, 0x0)
    33e4:	3a41      	cmpnei      	r2, 1
    33e6:	0821      	bt      	0x3428	// 3428 <TK_Sampling_prog+0x9c>
    33e8:	1079      	lrw      	r3, 0x200001ec	// 344c <TK_Sampling_prog+0xc0>
    33ea:	3200      	movi      	r2, 0
    33ec:	b861      	st.w      	r3, (r14, 0x4)
    33ee:	1075      	lrw      	r3, 0x200002c8	// 3440 <TK_Sampling_prog+0xb4>
    33f0:	b862      	st.w      	r3, (r14, 0x8)
    33f2:	4261      	lsli      	r3, r2, 1
    33f4:	5d0c      	addu      	r0, r5, r3
    33f6:	8800      	ld.h      	r0, (r0, 0x0)
    33f8:	98e1      	ld.w      	r7, (r14, 0x4)
    33fa:	61cc      	addu      	r7, r3
    33fc:	7401      	zexth      	r0, r0
    33fe:	af00      	st.h      	r0, (r7, 0x0)
    3400:	9802      	ld.w      	r0, (r14, 0x8)
    3402:	600c      	addu      	r0, r3
    3404:	8800      	ld.h      	r0, (r0, 0x0)
    3406:	10f3      	lrw      	r7, 0x20000382	// 3450 <TK_Sampling_prog+0xc4>
    3408:	61cc      	addu      	r7, r3
    340a:	7401      	zexth      	r0, r0
    340c:	af00      	st.h      	r0, (r7, 0x0)
    340e:	2200      	addi      	r2, 1
    3410:	100d      	lrw      	r0, 0x200003b6	// 3444 <TK_Sampling_prog+0xb8>
    3412:	600c      	addu      	r0, r3
    3414:	8800      	ld.h      	r0, (r0, 0x0)
    3416:	10f0      	lrw      	r7, 0x20000482	// 3454 <TK_Sampling_prog+0xc8>
    3418:	7401      	zexth      	r0, r0
    341a:	60dc      	addu      	r3, r7
    341c:	3a51      	cmpnei      	r2, 17
    341e:	ab00      	st.h      	r0, (r3, 0x0)
    3420:	0be9      	bt      	0x33f2	// 33f2 <TK_Sampling_prog+0x66>
    3422:	3300      	movi      	r3, 0
    3424:	a660      	st.b      	r3, (r6, 0x0)
    3426:	3311      	movi      	r3, 17
    3428:	2300      	addi      	r3, 1
    342a:	74cc      	zextb      	r3, r3
    342c:	3b10      	cmphsi      	r3, 17
    342e:	0fb8      	bf      	0x339e	// 339e <TK_Sampling_prog+0x12>
    3430:	1403      	addi      	r14, r14, 12
    3432:	1484      	pop      	r4-r7
    3434:	20000054 	.long	0x20000054
    3438:	20000481 	.long	0x20000481
    343c:	2000050e 	.long	0x2000050e
    3440:	200002c8 	.long	0x200002c8
    3444:	200003b6 	.long	0x200003b6
    3448:	20000321 	.long	0x20000321
    344c:	200001ec 	.long	0x200001ec
    3450:	20000382 	.long	0x20000382
    3454:	20000482 	.long	0x20000482

Disassembly of section .text.get_key_number:

00003458 <get_key_number>:
    3458:	14c2      	push      	r4-r5
    345a:	3200      	movi      	r2, 0
    345c:	3000      	movi      	r0, 0
    345e:	1088      	lrw      	r4, 0x2000037c	// 347c <get_key_number+0x24>
    3460:	3501      	movi      	r5, 1
    3462:	3120      	movi      	r1, 32
    3464:	9460      	ld.w      	r3, (r4, 0x0)
    3466:	70c9      	lsr      	r3, r2
    3468:	68d4      	and      	r3, r5
    346a:	3b40      	cmpnei      	r3, 0
    346c:	0c02      	bf      	0x3470	// 3470 <get_key_number+0x18>
    346e:	2000      	addi      	r0, 1
    3470:	2200      	addi      	r2, 1
    3472:	644a      	cmpne      	r2, r1
    3474:	0bf8      	bt      	0x3464	// 3464 <get_key_number+0xc>
    3476:	7400      	zextb      	r0, r0
    3478:	1482      	pop      	r4-r5
    347a:	0000      	bkpt
    347c:	2000037c 	.long	0x2000037c

Disassembly of section .text.TK_Scan_Start:

00003480 <TK_Scan_Start>:
    3480:	1073      	lrw      	r3, 0x20000068	// 34cc <TK_Scan_Start+0x4c>
    3482:	1054      	lrw      	r2, 0x20000481	// 34d0 <TK_Scan_Start+0x50>
    3484:	8302      	ld.b      	r0, (r3, 0x2)
    3486:	8220      	ld.b      	r1, (r2, 0x0)
    3488:	6442      	cmpne      	r0, r1
    348a:	0c16      	bf      	0x34b6	// 34b6 <TK_Scan_Start+0x36>
    348c:	8220      	ld.b      	r1, (r2, 0x0)
    348e:	7444      	zextb      	r1, r1
    3490:	3941      	cmpnei      	r1, 1
    3492:	0c18      	bf      	0x34c2	// 34c2 <TK_Scan_Start+0x42>
    3494:	3940      	cmpnei      	r1, 0
    3496:	0c11      	bf      	0x34b8	// 34b8 <TK_Scan_Start+0x38>
    3498:	3942      	cmpnei      	r1, 2
    349a:	0c16      	bf      	0x34c6	// 34c6 <TK_Scan_Start+0x46>
    349c:	8240      	ld.b      	r2, (r2, 0x0)
    349e:	7488      	zextb      	r2, r2
    34a0:	a342      	st.b      	r2, (r3, 0x2)
    34a2:	8343      	ld.b      	r2, (r3, 0x3)
    34a4:	7488      	zextb      	r2, r2
    34a6:	3a41      	cmpnei      	r2, 1
    34a8:	0807      	bt      	0x34b6	// 34b6 <TK_Scan_Start+0x36>
    34aa:	102b      	lrw      	r1, 0x20000058	// 34d4 <TK_Scan_Start+0x54>
    34ac:	9120      	ld.w      	r1, (r1, 0x0)
    34ae:	b142      	st.w      	r2, (r1, 0x8)
    34b0:	3200      	movi      	r2, 0
    34b2:	a340      	st.b      	r2, (r3, 0x0)
    34b4:	a343      	st.b      	r2, (r3, 0x3)
    34b6:	783c      	jmp      	r15
    34b8:	1028      	lrw      	r1, 0x20000530	// 34d8 <TK_Scan_Start+0x58>
    34ba:	9100      	ld.w      	r0, (r1, 0x0)
    34bc:	1028      	lrw      	r1, 0x40011200	// 34dc <TK_Scan_Start+0x5c>
    34be:	b110      	st.w      	r0, (r1, 0x40)
    34c0:	07ee      	br      	0x349c	// 349c <TK_Scan_Start+0x1c>
    34c2:	1028      	lrw      	r1, 0x200002c4	// 34e0 <TK_Scan_Start+0x60>
    34c4:	07fb      	br      	0x34ba	// 34ba <TK_Scan_Start+0x3a>
    34c6:	1028      	lrw      	r1, 0x200002f0	// 34e4 <TK_Scan_Start+0x64>
    34c8:	07f9      	br      	0x34ba	// 34ba <TK_Scan_Start+0x3a>
    34ca:	0000      	bkpt
    34cc:	20000068 	.long	0x20000068
    34d0:	20000481 	.long	0x20000481
    34d4:	20000058 	.long	0x20000058
    34d8:	20000530 	.long	0x20000530
    34dc:	40011200 	.long	0x40011200
    34e0:	200002c4 	.long	0x200002c4
    34e4:	200002f0 	.long	0x200002f0

Disassembly of section .text.TK_Keymap_prog:

000034e8 <TK_Keymap_prog>:
    34e8:	14d4      	push      	r4-r7, r15
    34ea:	142a      	subi      	r14, r14, 40
    34ec:	0171      	lrw      	r3, 0x2000013c	// 3824 <TK_Keymap_prog+0x33c>
    34ee:	8360      	ld.b      	r3, (r3, 0x0)
    34f0:	b860      	st.w      	r3, (r14, 0x0)
    34f2:	3400      	movi      	r4, 0
    34f4:	0172      	lrw      	r3, 0x20000108	// 3828 <TK_Keymap_prog+0x340>
    34f6:	8360      	ld.b      	r3, (r3, 0x0)
    34f8:	b863      	st.w      	r3, (r14, 0xc)
    34fa:	0172      	lrw      	r3, 0x20000119	// 382c <TK_Keymap_prog+0x344>
    34fc:	83a0      	ld.b      	r5, (r3, 0x0)
    34fe:	0172      	lrw      	r3, 0x20000118	// 3830 <TK_Keymap_prog+0x348>
    3500:	8360      	ld.b      	r3, (r3, 0x0)
    3502:	b866      	st.w      	r3, (r14, 0x18)
    3504:	0173      	lrw      	r3, 0x2000050e	// 3834 <TK_Keymap_prog+0x34c>
    3506:	b868      	st.w      	r3, (r14, 0x20)
    3508:	0173      	lrw      	r3, 0x200002a0	// 3838 <TK_Keymap_prog+0x350>
    350a:	b864      	st.w      	r3, (r14, 0x10)
    350c:	b869      	st.w      	r3, (r14, 0x24)
    350e:	4461      	lsli      	r3, r4, 1
    3510:	9848      	ld.w      	r2, (r14, 0x20)
    3512:	608c      	addu      	r2, r3
    3514:	0135      	lrw      	r1, 0x200001ec	// 383c <TK_Keymap_prog+0x354>
    3516:	604c      	addu      	r1, r3
    3518:	8a40      	ld.h      	r2, (r2, 0x0)
    351a:	8920      	ld.h      	r1, (r1, 0x0)
    351c:	6086      	subu      	r2, r1
    351e:	9829      	ld.w      	r1, (r14, 0x24)
    3520:	604c      	addu      	r1, r3
    3522:	748b      	sexth      	r2, r2
    3524:	a940      	st.h      	r2, (r1, 0x0)
    3526:	0118      	lrw      	r0, 0x20000382	// 3840 <TK_Keymap_prog+0x358>
    3528:	0158      	lrw      	r2, 0x200002c8	// 3844 <TK_Keymap_prog+0x35c>
    352a:	608c      	addu      	r2, r3
    352c:	600c      	addu      	r0, r3
    352e:	8a40      	ld.h      	r2, (r2, 0x0)
    3530:	8800      	ld.h      	r0, (r0, 0x0)
    3532:	6082      	subu      	r2, r0
    3534:	01da      	lrw      	r6, 0x200003d8	// 3848 <TK_Keymap_prog+0x360>
    3536:	5e0c      	addu      	r0, r6, r3
    3538:	748b      	sexth      	r2, r2
    353a:	a840      	st.h      	r2, (r0, 0x0)
    353c:	b8c1      	st.w      	r6, (r14, 0x4)
    353e:	015b      	lrw      	r2, 0x200003b6	// 384c <TK_Keymap_prog+0x364>
    3540:	011b      	lrw      	r0, 0x20000482	// 3850 <TK_Keymap_prog+0x368>
    3542:	608c      	addu      	r2, r3
    3544:	600c      	addu      	r0, r3
    3546:	8a40      	ld.h      	r2, (r2, 0x0)
    3548:	8800      	ld.h      	r0, (r0, 0x0)
    354a:	6082      	subu      	r2, r0
    354c:	011d      	lrw      	r0, 0x200004ea	// 3854 <TK_Keymap_prog+0x36c>
    354e:	748b      	sexth      	r2, r2
    3550:	58ec      	addu      	r7, r0, r3
    3552:	af40      	st.h      	r2, (r7, 0x0)
    3554:	8940      	ld.h      	r2, (r1, 0x0)
    3556:	748b      	sexth      	r2, r2
    3558:	3adf      	btsti      	r2, 31
    355a:	015f      	lrw      	r2, 0x200004c8	// 3858 <TK_Keymap_prog+0x370>
    355c:	60c8      	addu      	r3, r2
    355e:	b802      	st.w      	r0, (r14, 0x8)
    3560:	0c49      	bf      	0x35f2	// 35f2 <TK_Keymap_prog+0x10a>
    3562:	3200      	movi      	r2, 0
    3564:	ab40      	st.h      	r2, (r3, 0x0)
    3566:	9821      	ld.w      	r1, (r14, 0x4)
    3568:	4461      	lsli      	r3, r4, 1
    356a:	604c      	addu      	r1, r3
    356c:	8940      	ld.h      	r2, (r1, 0x0)
    356e:	748b      	sexth      	r2, r2
    3570:	3adf      	btsti      	r2, 31
    3572:	0244      	lrw      	r2, 0x20000250	// 385c <TK_Keymap_prog+0x374>
    3574:	60c8      	addu      	r3, r2
    3576:	0c41      	bf      	0x35f8	// 35f8 <TK_Keymap_prog+0x110>
    3578:	3200      	movi      	r2, 0
    357a:	ab40      	st.h      	r2, (r3, 0x0)
    357c:	9822      	ld.w      	r1, (r14, 0x8)
    357e:	4461      	lsli      	r3, r4, 1
    3580:	604c      	addu      	r1, r3
    3582:	8940      	ld.h      	r2, (r1, 0x0)
    3584:	748b      	sexth      	r2, r2
    3586:	3adf      	btsti      	r2, 31
    3588:	0249      	lrw      	r2, 0x20000224	// 3860 <TK_Keymap_prog+0x378>
    358a:	60c8      	addu      	r3, r2
    358c:	0c39      	bf      	0x35fe	// 35fe <TK_Keymap_prog+0x116>
    358e:	3200      	movi      	r2, 0
    3590:	ab40      	st.h      	r2, (r3, 0x0)
    3592:	9860      	ld.w      	r3, (r14, 0x0)
    3594:	3b03      	cmphsi      	r3, 4
    3596:	4421      	lsli      	r1, r4, 1
    3598:	0cb5      	bf      	0x3702	// 3702 <TK_Keymap_prog+0x21a>
    359a:	9864      	ld.w      	r3, (r14, 0x10)
    359c:	60c4      	addu      	r3, r1
    359e:	024d      	lrw      	r2, 0x20000172	// 3864 <TK_Keymap_prog+0x37c>
    35a0:	6048      	addu      	r1, r2
    35a2:	8b00      	ld.h      	r0, (r3, 0x0)
    35a4:	8940      	ld.h      	r2, (r1, 0x0)
    35a6:	7403      	sexth      	r0, r0
    35a8:	6409      	cmplt      	r2, r0
    35aa:	9820      	ld.w      	r1, (r14, 0x0)
    35ac:	7c84      	mult      	r2, r1
    35ae:	0c9b      	bf      	0x36e4	// 36e4 <TK_Keymap_prog+0x1fc>
    35b0:	8b20      	ld.h      	r1, (r3, 0x0)
    35b2:	7447      	sexth      	r1, r1
    35b4:	6485      	cmplt      	r1, r2
    35b6:	0c97      	bf      	0x36e4	// 36e4 <TK_Keymap_prog+0x1fc>
    35b8:	0233      	lrw      	r1, 0x2000028d	// 3868 <TK_Keymap_prog+0x380>
    35ba:	6050      	addu      	r1, r4
    35bc:	8140      	ld.b      	r2, (r1, 0x0)
    35be:	2200      	addi      	r2, 1
    35c0:	7488      	zextb      	r2, r2
    35c2:	a140      	st.b      	r2, (r1, 0x0)
    35c4:	3000      	movi      	r0, 0
    35c6:	0255      	lrw      	r2, 0x20000272	// 386c <TK_Keymap_prog+0x384>
    35c8:	6090      	addu      	r2, r4
    35ca:	a200      	st.b      	r0, (r2, 0x0)
    35cc:	0256      	lrw      	r2, 0x200003a4	// 3870 <TK_Keymap_prog+0x388>
    35ce:	6090      	addu      	r2, r4
    35d0:	a200      	st.b      	r0, (r2, 0x0)
    35d2:	0256      	lrw      	r2, 0x20000430	// 3874 <TK_Keymap_prog+0x38c>
    35d4:	6090      	addu      	r2, r4
    35d6:	a200      	st.b      	r0, (r2, 0x0)
    35d8:	8140      	ld.b      	r2, (r1, 0x0)
    35da:	9803      	ld.w      	r0, (r14, 0xc)
    35dc:	6480      	cmphs      	r0, r2
    35de:	081d      	bt      	0x3618	// 3618 <TK_Keymap_prog+0x130>
    35e0:	3d40      	cmpnei      	r5, 0
    35e2:	0811      	bt      	0x3604	// 3604 <TK_Keymap_prog+0x11c>
    35e4:	025a      	lrw      	r2, 0x20000284	// 3878 <TK_Keymap_prog+0x390>
    35e6:	9260      	ld.w      	r3, (r2, 0x0)
    35e8:	3b40      	cmpnei      	r3, 0
    35ea:	0815      	bt      	0x3614	// 3614 <TK_Keymap_prog+0x12c>
    35ec:	9200      	ld.w      	r0, (r2, 0x0)
    35ee:	3301      	movi      	r3, 1
    35f0:	040f      	br      	0x360e	// 360e <TK_Keymap_prog+0x126>
    35f2:	8940      	ld.h      	r2, (r1, 0x0)
    35f4:	7489      	zexth      	r2, r2
    35f6:	07b7      	br      	0x3564	// 3564 <TK_Keymap_prog+0x7c>
    35f8:	8940      	ld.h      	r2, (r1, 0x0)
    35fa:	7489      	zexth      	r2, r2
    35fc:	07bf      	br      	0x357a	// 357a <TK_Keymap_prog+0x92>
    35fe:	8940      	ld.h      	r2, (r1, 0x0)
    3600:	7489      	zexth      	r2, r2
    3602:	07c7      	br      	0x3590	// 3590 <TK_Keymap_prog+0xa8>
    3604:	3d41      	cmpnei      	r5, 1
    3606:	085c      	bt      	0x36be	// 36be <TK_Keymap_prog+0x1d6>
    3608:	0343      	lrw      	r2, 0x20000284	// 3878 <TK_Keymap_prog+0x390>
    360a:	6cd7      	mov      	r3, r5
    360c:	9200      	ld.w      	r0, (r2, 0x0)
    360e:	70d0      	lsl      	r3, r4
    3610:	6cc0      	or      	r3, r0
    3612:	b260      	st.w      	r3, (r2, 0x0)
    3614:	3300      	movi      	r3, 0
    3616:	a160      	st.b      	r3, (r1, 0x0)
    3618:	4461      	lsli      	r3, r4, 1
    361a:	9844      	ld.w      	r2, (r14, 0x10)
    361c:	608c      	addu      	r2, r3
    361e:	8ac0      	ld.h      	r6, (r2, 0x0)
    3620:	034e      	lrw      	r2, 0x20000172	// 3864 <TK_Keymap_prog+0x37c>
    3622:	60c8      	addu      	r3, r2
    3624:	8be0      	ld.h      	r7, (r3, 0x0)
    3626:	4702      	lsli      	r0, r7, 2
    3628:	3105      	movi      	r1, 5
    362a:	e3fffe77 	bsr      	0x3318	// 3318 <__divsi3>
    362e:	759b      	sexth      	r6, r6
    3630:	6419      	cmplt      	r6, r0
    3632:	b805      	st.w      	r0, (r14, 0x14)
    3634:	0c18      	bf      	0x3664	// 3664 <TK_Keymap_prog+0x17c>
    3636:	0351      	lrw      	r2, 0x20000272	// 386c <TK_Keymap_prog+0x384>
    3638:	6090      	addu      	r2, r4
    363a:	8260      	ld.b      	r3, (r2, 0x0)
    363c:	2300      	addi      	r3, 1
    363e:	74cc      	zextb      	r3, r3
    3640:	a260      	st.b      	r3, (r2, 0x0)
    3642:	3100      	movi      	r1, 0
    3644:	0376      	lrw      	r3, 0x2000028d	// 3868 <TK_Keymap_prog+0x380>
    3646:	60d0      	addu      	r3, r4
    3648:	a320      	st.b      	r1, (r3, 0x0)
    364a:	8260      	ld.b      	r3, (r2, 0x0)
    364c:	9826      	ld.w      	r1, (r14, 0x18)
    364e:	64c4      	cmphs      	r1, r3
    3650:	080a      	bt      	0x3664	// 3664 <TK_Keymap_prog+0x17c>
    3652:	3300      	movi      	r3, 0
    3654:	0336      	lrw      	r1, 0x20000284	// 3878 <TK_Keymap_prog+0x390>
    3656:	2b01      	subi      	r3, 2
    3658:	9100      	ld.w      	r0, (r1, 0x0)
    365a:	70d3      	rotl      	r3, r4
    365c:	68c0      	and      	r3, r0
    365e:	b160      	st.w      	r3, (r1, 0x0)
    3660:	3300      	movi      	r3, 0
    3662:	a260      	st.b      	r3, (r2, 0x0)
    3664:	9860      	ld.w      	r3, (r14, 0x0)
    3666:	9841      	ld.w      	r2, (r14, 0x4)
    3668:	3b03      	cmphsi      	r3, 4
    366a:	4461      	lsli      	r3, r4, 1
    366c:	60c8      	addu      	r3, r2
    366e:	8b40      	ld.h      	r2, (r3, 0x0)
    3670:	748b      	sexth      	r2, r2
    3672:	0d4d      	bf      	0x390c	// 390c <TK_Keymap_prog+0x424>
    3674:	649d      	cmplt      	r7, r2
    3676:	0d3a      	bf      	0x38ea	// 38ea <TK_Keymap_prog+0x402>
    3678:	8b40      	ld.h      	r2, (r3, 0x0)
    367a:	9820      	ld.w      	r1, (r14, 0x0)
    367c:	748b      	sexth      	r2, r2
    367e:	7c5c      	mult      	r1, r7
    3680:	6449      	cmplt      	r2, r1
    3682:	0d34      	bf      	0x38ea	// 38ea <TK_Keymap_prog+0x402>
    3684:	133e      	lrw      	r1, 0x20000448	// 387c <TK_Keymap_prog+0x394>
    3686:	6050      	addu      	r1, r4
    3688:	8140      	ld.b      	r2, (r1, 0x0)
    368a:	2200      	addi      	r2, 1
    368c:	7488      	zextb      	r2, r2
    368e:	a140      	st.b      	r2, (r1, 0x0)
    3690:	3000      	movi      	r0, 0
    3692:	135c      	lrw      	r2, 0x200002f8	// 3880 <TK_Keymap_prog+0x398>
    3694:	6090      	addu      	r2, r4
    3696:	a200      	st.b      	r0, (r2, 0x0)
    3698:	135b      	lrw      	r2, 0x20000322	// 3884 <TK_Keymap_prog+0x39c>
    369a:	6090      	addu      	r2, r4
    369c:	a200      	st.b      	r0, (r2, 0x0)
    369e:	135b      	lrw      	r2, 0x20000418	// 3888 <TK_Keymap_prog+0x3a0>
    36a0:	6090      	addu      	r2, r4
    36a2:	a200      	st.b      	r0, (r2, 0x0)
    36a4:	8140      	ld.b      	r2, (r1, 0x0)
    36a6:	9803      	ld.w      	r0, (r14, 0xc)
    36a8:	6480      	cmphs      	r0, r2
    36aa:	087d      	bt      	0x37a4	// 37a4 <TK_Keymap_prog+0x2bc>
    36ac:	3d40      	cmpnei      	r5, 0
    36ae:	0871      	bt      	0x3790	// 3790 <TK_Keymap_prog+0x2a8>
    36b0:	1357      	lrw      	r2, 0x20000220	// 388c <TK_Keymap_prog+0x3a4>
    36b2:	9260      	ld.w      	r3, (r2, 0x0)
    36b4:	3b40      	cmpnei      	r3, 0
    36b6:	0875      	bt      	0x37a0	// 37a0 <TK_Keymap_prog+0x2b8>
    36b8:	9200      	ld.w      	r0, (r2, 0x0)
    36ba:	3301      	movi      	r3, 1
    36bc:	046f      	br      	0x379a	// 379a <TK_Keymap_prog+0x2b2>
    36be:	3d42      	cmpnei      	r5, 2
    36c0:	0c03      	bf      	0x36c6	// 36c6 <TK_Keymap_prog+0x1de>
    36c2:	e8000201 	br      	0x3ac4	// 3ac4 <TK_Keymap_prog+0x5dc>
    36c6:	13d3      	lrw      	r6, 0x2000042a	// 3890 <TK_Keymap_prog+0x3a8>
    36c8:	8b00      	ld.h      	r0, (r3, 0x0)
    36ca:	8e40      	ld.h      	r2, (r6, 0x0)
    36cc:	7489      	zexth      	r2, r2
    36ce:	7403      	sexth      	r0, r0
    36d0:	2209      	addi      	r2, 10
    36d2:	6409      	cmplt      	r2, r0
    36d4:	0fa0      	bf      	0x3614	// 3614 <TK_Keymap_prog+0x12c>
    36d6:	8b60      	ld.h      	r3, (r3, 0x0)
    36d8:	74cd      	zexth      	r3, r3
    36da:	ae60      	st.h      	r3, (r6, 0x0)
    36dc:	3300      	movi      	r3, 0
    36de:	1347      	lrw      	r2, 0x20000284	// 3878 <TK_Keymap_prog+0x390>
    36e0:	b260      	st.w      	r3, (r2, 0x0)
    36e2:	0785      	br      	0x35ec	// 35ec <TK_Keymap_prog+0x104>
    36e4:	4461      	lsli      	r3, r4, 1
    36e6:	9824      	ld.w      	r1, (r14, 0x10)
    36e8:	60c4      	addu      	r3, r1
    36ea:	8b60      	ld.h      	r3, (r3, 0x0)
    36ec:	74cf      	sexth      	r3, r3
    36ee:	64c9      	cmplt      	r2, r3
    36f0:	0f94      	bf      	0x3618	// 3618 <TK_Keymap_prog+0x130>
    36f2:	3300      	movi      	r3, 0
    36f4:	1341      	lrw      	r2, 0x20000284	// 3878 <TK_Keymap_prog+0x390>
    36f6:	2b01      	subi      	r3, 2
    36f8:	9220      	ld.w      	r1, (r2, 0x0)
    36fa:	70d3      	rotl      	r3, r4
    36fc:	68c4      	and      	r3, r1
    36fe:	b260      	st.w      	r3, (r2, 0x0)
    3700:	078c      	br      	0x3618	// 3618 <TK_Keymap_prog+0x130>
    3702:	9844      	ld.w      	r2, (r14, 0x10)
    3704:	6084      	addu      	r2, r1
    3706:	1218      	lrw      	r0, 0x20000172	// 3864 <TK_Keymap_prog+0x37c>
    3708:	8a60      	ld.h      	r3, (r2, 0x0)
    370a:	6040      	addu      	r1, r0
    370c:	74cf      	sexth      	r3, r3
    370e:	8920      	ld.h      	r1, (r1, 0x0)
    3710:	64c5      	cmplt      	r1, r3
    3712:	0f83      	bf      	0x3618	// 3618 <TK_Keymap_prog+0x130>
    3714:	1360      	lrw      	r3, 0x2000029e	// 3894 <TK_Keymap_prog+0x3ac>
    3716:	8360      	ld.b      	r3, (r3, 0x0)
    3718:	74cc      	zextb      	r3, r3
    371a:	3b40      	cmpnei      	r3, 0
    371c:	0b7e      	bt      	0x3618	// 3618 <TK_Keymap_prog+0x130>
    371e:	1213      	lrw      	r0, 0x2000028d	// 3868 <TK_Keymap_prog+0x380>
    3720:	6010      	addu      	r0, r4
    3722:	8020      	ld.b      	r1, (r0, 0x0)
    3724:	2100      	addi      	r1, 1
    3726:	7444      	zextb      	r1, r1
    3728:	a020      	st.b      	r1, (r0, 0x0)
    372a:	3600      	movi      	r6, 0
    372c:	1230      	lrw      	r1, 0x20000272	// 386c <TK_Keymap_prog+0x384>
    372e:	6050      	addu      	r1, r4
    3730:	a1c0      	st.b      	r6, (r1, 0x0)
    3732:	1230      	lrw      	r1, 0x200003a4	// 3870 <TK_Keymap_prog+0x388>
    3734:	6050      	addu      	r1, r4
    3736:	a1c0      	st.b      	r6, (r1, 0x0)
    3738:	122f      	lrw      	r1, 0x20000430	// 3874 <TK_Keymap_prog+0x38c>
    373a:	6050      	addu      	r1, r4
    373c:	a1c0      	st.b      	r6, (r1, 0x0)
    373e:	8020      	ld.b      	r1, (r0, 0x0)
    3740:	98c3      	ld.w      	r6, (r14, 0xc)
    3742:	6458      	cmphs      	r6, r1
    3744:	0b6a      	bt      	0x3618	// 3618 <TK_Keymap_prog+0x130>
    3746:	3d40      	cmpnei      	r5, 0
    3748:	0808      	bt      	0x3758	// 3758 <TK_Keymap_prog+0x270>
    374a:	124c      	lrw      	r2, 0x20000284	// 3878 <TK_Keymap_prog+0x390>
    374c:	9260      	ld.w      	r3, (r2, 0x0)
    374e:	3b40      	cmpnei      	r3, 0
    3750:	080c      	bt      	0x3768	// 3768 <TK_Keymap_prog+0x280>
    3752:	9220      	ld.w      	r1, (r2, 0x0)
    3754:	3301      	movi      	r3, 1
    3756:	0406      	br      	0x3762	// 3762 <TK_Keymap_prog+0x27a>
    3758:	3d41      	cmpnei      	r5, 1
    375a:	080a      	bt      	0x376e	// 376e <TK_Keymap_prog+0x286>
    375c:	1247      	lrw      	r2, 0x20000284	// 3878 <TK_Keymap_prog+0x390>
    375e:	6cd7      	mov      	r3, r5
    3760:	9220      	ld.w      	r1, (r2, 0x0)
    3762:	70d0      	lsl      	r3, r4
    3764:	6cc4      	or      	r3, r1
    3766:	b260      	st.w      	r3, (r2, 0x0)
    3768:	3300      	movi      	r3, 0
    376a:	a060      	st.b      	r3, (r0, 0x0)
    376c:	0756      	br      	0x3618	// 3618 <TK_Keymap_prog+0x130>
    376e:	3d42      	cmpnei      	r5, 2
    3770:	0c02      	bf      	0x3774	// 3774 <TK_Keymap_prog+0x28c>
    3772:	05dc      	br      	0x3b2a	// 3b2a <TK_Keymap_prog+0x642>
    3774:	12e7      	lrw      	r7, 0x2000042a	// 3890 <TK_Keymap_prog+0x3a8>
    3776:	8ac0      	ld.h      	r6, (r2, 0x0)
    3778:	8f20      	ld.h      	r1, (r7, 0x0)
    377a:	7445      	zexth      	r1, r1
    377c:	759b      	sexth      	r6, r6
    377e:	2109      	addi      	r1, 10
    3780:	6585      	cmplt      	r1, r6
    3782:	0ff3      	bf      	0x3768	// 3768 <TK_Keymap_prog+0x280>
    3784:	8a40      	ld.h      	r2, (r2, 0x0)
    3786:	7489      	zexth      	r2, r2
    3788:	af40      	st.h      	r2, (r7, 0x0)
    378a:	115c      	lrw      	r2, 0x20000284	// 3878 <TK_Keymap_prog+0x390>
    378c:	b260      	st.w      	r3, (r2, 0x0)
    378e:	07e2      	br      	0x3752	// 3752 <TK_Keymap_prog+0x26a>
    3790:	3d41      	cmpnei      	r5, 1
    3792:	089b      	bt      	0x38c8	// 38c8 <TK_Keymap_prog+0x3e0>
    3794:	115e      	lrw      	r2, 0x20000220	// 388c <TK_Keymap_prog+0x3a4>
    3796:	6cd7      	mov      	r3, r5
    3798:	9200      	ld.w      	r0, (r2, 0x0)
    379a:	70d0      	lsl      	r3, r4
    379c:	6cc0      	or      	r3, r0
    379e:	b260      	st.w      	r3, (r2, 0x0)
    37a0:	3300      	movi      	r3, 0
    37a2:	a160      	st.b      	r3, (r1, 0x0)
    37a4:	4461      	lsli      	r3, r4, 1
    37a6:	9841      	ld.w      	r2, (r14, 0x4)
    37a8:	608c      	addu      	r2, r3
    37aa:	8a60      	ld.h      	r3, (r2, 0x0)
    37ac:	74cf      	sexth      	r3, r3
    37ae:	9845      	ld.w      	r2, (r14, 0x14)
    37b0:	648d      	cmplt      	r3, r2
    37b2:	0c18      	bf      	0x37e2	// 37e2 <TK_Keymap_prog+0x2fa>
    37b4:	1153      	lrw      	r2, 0x200002f8	// 3880 <TK_Keymap_prog+0x398>
    37b6:	6090      	addu      	r2, r4
    37b8:	8260      	ld.b      	r3, (r2, 0x0)
    37ba:	2300      	addi      	r3, 1
    37bc:	74cc      	zextb      	r3, r3
    37be:	a260      	st.b      	r3, (r2, 0x0)
    37c0:	3100      	movi      	r1, 0
    37c2:	116f      	lrw      	r3, 0x20000448	// 387c <TK_Keymap_prog+0x394>
    37c4:	60d0      	addu      	r3, r4
    37c6:	a320      	st.b      	r1, (r3, 0x0)
    37c8:	8260      	ld.b      	r3, (r2, 0x0)
    37ca:	9826      	ld.w      	r1, (r14, 0x18)
    37cc:	64c4      	cmphs      	r1, r3
    37ce:	080a      	bt      	0x37e2	// 37e2 <TK_Keymap_prog+0x2fa>
    37d0:	3300      	movi      	r3, 0
    37d2:	112f      	lrw      	r1, 0x20000220	// 388c <TK_Keymap_prog+0x3a4>
    37d4:	2b01      	subi      	r3, 2
    37d6:	9100      	ld.w      	r0, (r1, 0x0)
    37d8:	70d3      	rotl      	r3, r4
    37da:	68c0      	and      	r3, r0
    37dc:	b160      	st.w      	r3, (r1, 0x0)
    37de:	3300      	movi      	r3, 0
    37e0:	a260      	st.b      	r3, (r2, 0x0)
    37e2:	9860      	ld.w      	r3, (r14, 0x0)
    37e4:	9842      	ld.w      	r2, (r14, 0x8)
    37e6:	3b03      	cmphsi      	r3, 4
    37e8:	4461      	lsli      	r3, r4, 1
    37ea:	60c8      	addu      	r3, r2
    37ec:	8b40      	ld.h      	r2, (r3, 0x0)
    37ee:	748b      	sexth      	r2, r2
    37f0:	0d26      	bf      	0x3a3c	// 3a3c <TK_Keymap_prog+0x554>
    37f2:	9820      	ld.w      	r1, (r14, 0x0)
    37f4:	649d      	cmplt      	r7, r2
    37f6:	7c5c      	mult      	r1, r7
    37f8:	0d13      	bf      	0x3a1e	// 3a1e <TK_Keymap_prog+0x536>
    37fa:	8b40      	ld.h      	r2, (r3, 0x0)
    37fc:	748b      	sexth      	r2, r2
    37fe:	6449      	cmplt      	r2, r1
    3800:	0d0f      	bf      	0x3a1e	// 3a1e <TK_Keymap_prog+0x536>
    3802:	1126      	lrw      	r1, 0x20000400	// 3898 <TK_Keymap_prog+0x3b0>
    3804:	6050      	addu      	r1, r4
    3806:	8140      	ld.b      	r2, (r1, 0x0)
    3808:	2200      	addi      	r2, 1
    380a:	7488      	zextb      	r2, r2
    380c:	a140      	st.b      	r2, (r1, 0x0)
    380e:	3000      	movi      	r0, 0
    3810:	1143      	lrw      	r2, 0x20000459	// 389c <TK_Keymap_prog+0x3b4>
    3812:	6090      	addu      	r2, r4
    3814:	a200      	st.b      	r0, (r2, 0x0)
    3816:	1143      	lrw      	r2, 0x2000020e	// 38a0 <TK_Keymap_prog+0x3b8>
    3818:	6090      	addu      	r2, r4
    381a:	a200      	st.b      	r0, (r2, 0x0)
    381c:	1142      	lrw      	r2, 0x20000310	// 38a4 <TK_Keymap_prog+0x3bc>
    381e:	6090      	addu      	r2, r4
    3820:	a200      	st.b      	r0, (r2, 0x0)
    3822:	0443      	br      	0x38a8	// 38a8 <TK_Keymap_prog+0x3c0>
    3824:	2000013c 	.long	0x2000013c
    3828:	20000108 	.long	0x20000108
    382c:	20000119 	.long	0x20000119
    3830:	20000118 	.long	0x20000118
    3834:	2000050e 	.long	0x2000050e
    3838:	200002a0 	.long	0x200002a0
    383c:	200001ec 	.long	0x200001ec
    3840:	20000382 	.long	0x20000382
    3844:	200002c8 	.long	0x200002c8
    3848:	200003d8 	.long	0x200003d8
    384c:	200003b6 	.long	0x200003b6
    3850:	20000482 	.long	0x20000482
    3854:	200004ea 	.long	0x200004ea
    3858:	200004c8 	.long	0x200004c8
    385c:	20000250 	.long	0x20000250
    3860:	20000224 	.long	0x20000224
    3864:	20000172 	.long	0x20000172
    3868:	2000028d 	.long	0x2000028d
    386c:	20000272 	.long	0x20000272
    3870:	200003a4 	.long	0x200003a4
    3874:	20000430 	.long	0x20000430
    3878:	20000284 	.long	0x20000284
    387c:	20000448 	.long	0x20000448
    3880:	200002f8 	.long	0x200002f8
    3884:	20000322 	.long	0x20000322
    3888:	20000418 	.long	0x20000418
    388c:	20000220 	.long	0x20000220
    3890:	2000042a 	.long	0x2000042a
    3894:	2000029e 	.long	0x2000029e
    3898:	20000400 	.long	0x20000400
    389c:	20000459 	.long	0x20000459
    38a0:	2000020e 	.long	0x2000020e
    38a4:	20000310 	.long	0x20000310
    38a8:	8140      	ld.b      	r2, (r1, 0x0)
    38aa:	9803      	ld.w      	r0, (r14, 0xc)
    38ac:	6480      	cmphs      	r0, r2
    38ae:	0881      	bt      	0x39b0	// 39b0 <TK_Keymap_prog+0x4c8>
    38b0:	3d40      	cmpnei      	r5, 0
    38b2:	0874      	bt      	0x399a	// 399a <TK_Keymap_prog+0x4b2>
    38b4:	014b      	lrw      	r2, 0x200002f4	// 3c04 <TK_Keymap_prog+0x71c>
    38b6:	9260      	ld.w      	r3, (r2, 0x0)
    38b8:	3b40      	cmpnei      	r3, 0
    38ba:	0879      	bt      	0x39ac	// 39ac <TK_Keymap_prog+0x4c4>
    38bc:	3301      	movi      	r3, 1
    38be:	9200      	ld.w      	r0, (r2, 0x0)
    38c0:	70d0      	lsl      	r3, r4
    38c2:	6cc0      	or      	r3, r0
    38c4:	b260      	st.w      	r3, (r2, 0x0)
    38c6:	0473      	br      	0x39ac	// 39ac <TK_Keymap_prog+0x4c4>
    38c8:	3d42      	cmpnei      	r5, 2
    38ca:	0960      	bt      	0x3b8a	// 3b8a <TK_Keymap_prog+0x6a2>
    38cc:	01d0      	lrw      	r6, 0x2000050c	// 3c08 <TK_Keymap_prog+0x720>
    38ce:	8b00      	ld.h      	r0, (r3, 0x0)
    38d0:	8e40      	ld.h      	r2, (r6, 0x0)
    38d2:	7489      	zexth      	r2, r2
    38d4:	7403      	sexth      	r0, r0
    38d6:	2209      	addi      	r2, 10
    38d8:	6409      	cmplt      	r2, r0
    38da:	0f63      	bf      	0x37a0	// 37a0 <TK_Keymap_prog+0x2b8>
    38dc:	8b60      	ld.h      	r3, (r3, 0x0)
    38de:	74cd      	zexth      	r3, r3
    38e0:	ae60      	st.h      	r3, (r6, 0x0)
    38e2:	3300      	movi      	r3, 0
    38e4:	0155      	lrw      	r2, 0x20000220	// 3c0c <TK_Keymap_prog+0x724>
    38e6:	b260      	st.w      	r3, (r2, 0x0)
    38e8:	06e8      	br      	0x36b8	// 36b8 <TK_Keymap_prog+0x1d0>
    38ea:	9841      	ld.w      	r2, (r14, 0x4)
    38ec:	4461      	lsli      	r3, r4, 1
    38ee:	60c8      	addu      	r3, r2
    38f0:	8b60      	ld.h      	r3, (r3, 0x0)
    38f2:	9840      	ld.w      	r2, (r14, 0x0)
    38f4:	74cf      	sexth      	r3, r3
    38f6:	7c9c      	mult      	r2, r7
    38f8:	64c9      	cmplt      	r2, r3
    38fa:	0f55      	bf      	0x37a4	// 37a4 <TK_Keymap_prog+0x2bc>
    38fc:	3300      	movi      	r3, 0
    38fe:	015b      	lrw      	r2, 0x20000220	// 3c0c <TK_Keymap_prog+0x724>
    3900:	2b01      	subi      	r3, 2
    3902:	9220      	ld.w      	r1, (r2, 0x0)
    3904:	70d3      	rotl      	r3, r4
    3906:	68c4      	and      	r3, r1
    3908:	b260      	st.w      	r3, (r2, 0x0)
    390a:	074d      	br      	0x37a4	// 37a4 <TK_Keymap_prog+0x2bc>
    390c:	649d      	cmplt      	r7, r2
    390e:	0f4b      	bf      	0x37a4	// 37a4 <TK_Keymap_prog+0x2bc>
    3910:	015f      	lrw      	r2, 0x2000029e	// 3c10 <TK_Keymap_prog+0x728>
    3912:	8240      	ld.b      	r2, (r2, 0x0)
    3914:	7488      	zextb      	r2, r2
    3916:	3a40      	cmpnei      	r2, 0
    3918:	b847      	st.w      	r2, (r14, 0x1c)
    391a:	0b45      	bt      	0x37a4	// 37a4 <TK_Keymap_prog+0x2bc>
    391c:	0201      	lrw      	r0, 0x20000448	// 3c14 <TK_Keymap_prog+0x72c>
    391e:	6010      	addu      	r0, r4
    3920:	8020      	ld.b      	r1, (r0, 0x0)
    3922:	2100      	addi      	r1, 1
    3924:	7444      	zextb      	r1, r1
    3926:	a020      	st.b      	r1, (r0, 0x0)
    3928:	3600      	movi      	r6, 0
    392a:	0223      	lrw      	r1, 0x200002f8	// 3c18 <TK_Keymap_prog+0x730>
    392c:	6050      	addu      	r1, r4
    392e:	a1c0      	st.b      	r6, (r1, 0x0)
    3930:	0224      	lrw      	r1, 0x20000322	// 3c1c <TK_Keymap_prog+0x734>
    3932:	6050      	addu      	r1, r4
    3934:	a1c0      	st.b      	r6, (r1, 0x0)
    3936:	0224      	lrw      	r1, 0x20000418	// 3c20 <TK_Keymap_prog+0x738>
    3938:	6050      	addu      	r1, r4
    393a:	a1c0      	st.b      	r6, (r1, 0x0)
    393c:	8020      	ld.b      	r1, (r0, 0x0)
    393e:	98c3      	ld.w      	r6, (r14, 0xc)
    3940:	6458      	cmphs      	r6, r1
    3942:	0b31      	bt      	0x37a4	// 37a4 <TK_Keymap_prog+0x2bc>
    3944:	3d40      	cmpnei      	r5, 0
    3946:	0808      	bt      	0x3956	// 3956 <TK_Keymap_prog+0x46e>
    3948:	024e      	lrw      	r2, 0x20000220	// 3c0c <TK_Keymap_prog+0x724>
    394a:	9260      	ld.w      	r3, (r2, 0x0)
    394c:	3b40      	cmpnei      	r3, 0
    394e:	0823      	bt      	0x3994	// 3994 <TK_Keymap_prog+0x4ac>
    3950:	9220      	ld.w      	r1, (r2, 0x0)
    3952:	3301      	movi      	r3, 1
    3954:	0406      	br      	0x3960	// 3960 <TK_Keymap_prog+0x478>
    3956:	3d41      	cmpnei      	r5, 1
    3958:	0808      	bt      	0x3968	// 3968 <TK_Keymap_prog+0x480>
    395a:	0252      	lrw      	r2, 0x20000220	// 3c0c <TK_Keymap_prog+0x724>
    395c:	6cd7      	mov      	r3, r5
    395e:	9220      	ld.w      	r1, (r2, 0x0)
    3960:	70d0      	lsl      	r3, r4
    3962:	6cc4      	or      	r3, r1
    3964:	b260      	st.w      	r3, (r2, 0x0)
    3966:	0417      	br      	0x3994	// 3994 <TK_Keymap_prog+0x4ac>
    3968:	3d42      	cmpnei      	r5, 2
    396a:	0942      	bt      	0x3bee	// 3bee <TK_Keymap_prog+0x706>
    396c:	8bc0      	ld.h      	r6, (r3, 0x0)
    396e:	745b      	sexth      	r1, r6
    3970:	02d9      	lrw      	r6, 0x2000050c	// 3c08 <TK_Keymap_prog+0x720>
    3972:	6c87      	mov      	r2, r1
    3974:	8e20      	ld.h      	r1, (r6, 0x0)
    3976:	7445      	zexth      	r1, r1
    3978:	2109      	addi      	r1, 10
    397a:	6485      	cmplt      	r1, r2
    397c:	0c0c      	bf      	0x3994	// 3994 <TK_Keymap_prog+0x4ac>
    397e:	8b60      	ld.h      	r3, (r3, 0x0)
    3980:	74cd      	zexth      	r3, r3
    3982:	ae60      	st.h      	r3, (r6, 0x0)
    3984:	9867      	ld.w      	r3, (r14, 0x1c)
    3986:	023d      	lrw      	r1, 0x20000220	// 3c0c <TK_Keymap_prog+0x724>
    3988:	b160      	st.w      	r3, (r1, 0x0)
    398a:	3301      	movi      	r3, 1
    398c:	9140      	ld.w      	r2, (r1, 0x0)
    398e:	70d0      	lsl      	r3, r4
    3990:	6cc8      	or      	r3, r2
    3992:	b160      	st.w      	r3, (r1, 0x0)
    3994:	3300      	movi      	r3, 0
    3996:	a060      	st.b      	r3, (r0, 0x0)
    3998:	0706      	br      	0x37a4	// 37a4 <TK_Keymap_prog+0x2bc>
    399a:	3d41      	cmpnei      	r5, 1
    399c:	0830      	bt      	0x39fc	// 39fc <TK_Keymap_prog+0x514>
    399e:	0345      	lrw      	r2, 0x200002f4	// 3c04 <TK_Keymap_prog+0x71c>
    39a0:	6cd7      	mov      	r3, r5
    39a2:	9200      	ld.w      	r0, (r2, 0x0)
    39a4:	70d0      	lsl      	r3, r4
    39a6:	6cc0      	or      	r3, r0
    39a8:	b260      	st.w      	r3, (r2, 0x0)
    39aa:	6c03      	mov      	r0, r0
    39ac:	3300      	movi      	r3, 0
    39ae:	a160      	st.b      	r3, (r1, 0x0)
    39b0:	4461      	lsli      	r3, r4, 1
    39b2:	9842      	ld.w      	r2, (r14, 0x8)
    39b4:	608c      	addu      	r2, r3
    39b6:	8a60      	ld.h      	r3, (r2, 0x0)
    39b8:	74cf      	sexth      	r3, r3
    39ba:	9845      	ld.w      	r2, (r14, 0x14)
    39bc:	648d      	cmplt      	r3, r2
    39be:	0c18      	bf      	0x39ee	// 39ee <TK_Keymap_prog+0x506>
    39c0:	0346      	lrw      	r2, 0x20000459	// 3c24 <TK_Keymap_prog+0x73c>
    39c2:	6090      	addu      	r2, r4
    39c4:	8260      	ld.b      	r3, (r2, 0x0)
    39c6:	2300      	addi      	r3, 1
    39c8:	74cc      	zextb      	r3, r3
    39ca:	a260      	st.b      	r3, (r2, 0x0)
    39cc:	3100      	movi      	r1, 0
    39ce:	0368      	lrw      	r3, 0x20000400	// 3c28 <TK_Keymap_prog+0x740>
    39d0:	60d0      	addu      	r3, r4
    39d2:	a320      	st.b      	r1, (r3, 0x0)
    39d4:	8260      	ld.b      	r3, (r2, 0x0)
    39d6:	9826      	ld.w      	r1, (r14, 0x18)
    39d8:	64c4      	cmphs      	r1, r3
    39da:	080a      	bt      	0x39ee	// 39ee <TK_Keymap_prog+0x506>
    39dc:	3300      	movi      	r3, 0
    39de:	0335      	lrw      	r1, 0x200002f4	// 3c04 <TK_Keymap_prog+0x71c>
    39e0:	2b01      	subi      	r3, 2
    39e2:	9100      	ld.w      	r0, (r1, 0x0)
    39e4:	70d3      	rotl      	r3, r4
    39e6:	68c0      	and      	r3, r0
    39e8:	b160      	st.w      	r3, (r1, 0x0)
    39ea:	3300      	movi      	r3, 0
    39ec:	a260      	st.b      	r3, (r2, 0x0)
    39ee:	2400      	addi      	r4, 1
    39f0:	3c51      	cmpnei      	r4, 17
    39f2:	0c03      	bf      	0x39f8	// 39f8 <TK_Keymap_prog+0x510>
    39f4:	e800fd8d 	br      	0x350e	// 350e <TK_Keymap_prog+0x26>
    39f8:	140a      	addi      	r14, r14, 40
    39fa:	1494      	pop      	r4-r7, r15
    39fc:	3d42      	cmpnei      	r5, 2
    39fe:	0948      	bt      	0x3c8e	// 3c8e <TK_Keymap_prog+0x7a6>
    3a00:	03d4      	lrw      	r6, 0x200002c2	// 3c2c <TK_Keymap_prog+0x744>
    3a02:	8b00      	ld.h      	r0, (r3, 0x0)
    3a04:	8e40      	ld.h      	r2, (r6, 0x0)
    3a06:	7489      	zexth      	r2, r2
    3a08:	7403      	sexth      	r0, r0
    3a0a:	2209      	addi      	r2, 10
    3a0c:	6409      	cmplt      	r2, r0
    3a0e:	0fcf      	bf      	0x39ac	// 39ac <TK_Keymap_prog+0x4c4>
    3a10:	8b60      	ld.h      	r3, (r3, 0x0)
    3a12:	74cd      	zexth      	r3, r3
    3a14:	ae60      	st.h      	r3, (r6, 0x0)
    3a16:	3300      	movi      	r3, 0
    3a18:	135b      	lrw      	r2, 0x200002f4	// 3c04 <TK_Keymap_prog+0x71c>
    3a1a:	b260      	st.w      	r3, (r2, 0x0)
    3a1c:	0750      	br      	0x38bc	// 38bc <TK_Keymap_prog+0x3d4>
    3a1e:	4461      	lsli      	r3, r4, 1
    3a20:	9842      	ld.w      	r2, (r14, 0x8)
    3a22:	60c8      	addu      	r3, r2
    3a24:	8b60      	ld.h      	r3, (r3, 0x0)
    3a26:	74cf      	sexth      	r3, r3
    3a28:	64c5      	cmplt      	r1, r3
    3a2a:	0fc3      	bf      	0x39b0	// 39b0 <TK_Keymap_prog+0x4c8>
    3a2c:	3300      	movi      	r3, 0
    3a2e:	1356      	lrw      	r2, 0x200002f4	// 3c04 <TK_Keymap_prog+0x71c>
    3a30:	2b01      	subi      	r3, 2
    3a32:	9220      	ld.w      	r1, (r2, 0x0)
    3a34:	70d3      	rotl      	r3, r4
    3a36:	68c4      	and      	r3, r1
    3a38:	b260      	st.w      	r3, (r2, 0x0)
    3a3a:	07bb      	br      	0x39b0	// 39b0 <TK_Keymap_prog+0x4c8>
    3a3c:	649d      	cmplt      	r7, r2
    3a3e:	0fb9      	bf      	0x39b0	// 39b0 <TK_Keymap_prog+0x4c8>
    3a40:	1354      	lrw      	r2, 0x2000029e	// 3c10 <TK_Keymap_prog+0x728>
    3a42:	8240      	ld.b      	r2, (r2, 0x0)
    3a44:	7488      	zextb      	r2, r2
    3a46:	3a40      	cmpnei      	r2, 0
    3a48:	0bb4      	bt      	0x39b0	// 39b0 <TK_Keymap_prog+0x4c8>
    3a4a:	1318      	lrw      	r0, 0x20000400	// 3c28 <TK_Keymap_prog+0x740>
    3a4c:	6010      	addu      	r0, r4
    3a4e:	8020      	ld.b      	r1, (r0, 0x0)
    3a50:	2100      	addi      	r1, 1
    3a52:	7444      	zextb      	r1, r1
    3a54:	a020      	st.b      	r1, (r0, 0x0)
    3a56:	3600      	movi      	r6, 0
    3a58:	1333      	lrw      	r1, 0x20000459	// 3c24 <TK_Keymap_prog+0x73c>
    3a5a:	6050      	addu      	r1, r4
    3a5c:	a1c0      	st.b      	r6, (r1, 0x0)
    3a5e:	1335      	lrw      	r1, 0x2000020e	// 3c30 <TK_Keymap_prog+0x748>
    3a60:	6050      	addu      	r1, r4
    3a62:	a1c0      	st.b      	r6, (r1, 0x0)
    3a64:	1334      	lrw      	r1, 0x20000310	// 3c34 <TK_Keymap_prog+0x74c>
    3a66:	6050      	addu      	r1, r4
    3a68:	a1c0      	st.b      	r6, (r1, 0x0)
    3a6a:	8020      	ld.b      	r1, (r0, 0x0)
    3a6c:	98c3      	ld.w      	r6, (r14, 0xc)
    3a6e:	6458      	cmphs      	r6, r1
    3a70:	0ba0      	bt      	0x39b0	// 39b0 <TK_Keymap_prog+0x4c8>
    3a72:	3d40      	cmpnei      	r5, 0
    3a74:	0808      	bt      	0x3a84	// 3a84 <TK_Keymap_prog+0x59c>
    3a76:	1344      	lrw      	r2, 0x200002f4	// 3c04 <TK_Keymap_prog+0x71c>
    3a78:	9260      	ld.w      	r3, (r2, 0x0)
    3a7a:	3b40      	cmpnei      	r3, 0
    3a7c:	0821      	bt      	0x3abe	// 3abe <TK_Keymap_prog+0x5d6>
    3a7e:	9220      	ld.w      	r1, (r2, 0x0)
    3a80:	3301      	movi      	r3, 1
    3a82:	0406      	br      	0x3a8e	// 3a8e <TK_Keymap_prog+0x5a6>
    3a84:	3d41      	cmpnei      	r5, 1
    3a86:	0808      	bt      	0x3a96	// 3a96 <TK_Keymap_prog+0x5ae>
    3a88:	125f      	lrw      	r2, 0x200002f4	// 3c04 <TK_Keymap_prog+0x71c>
    3a8a:	6cd7      	mov      	r3, r5
    3a8c:	9220      	ld.w      	r1, (r2, 0x0)
    3a8e:	70d0      	lsl      	r3, r4
    3a90:	6cc4      	or      	r3, r1
    3a92:	b260      	st.w      	r3, (r2, 0x0)
    3a94:	0415      	br      	0x3abe	// 3abe <TK_Keymap_prog+0x5d6>
    3a96:	3d42      	cmpnei      	r5, 2
    3a98:	092a      	bt      	0x3cec	// 3cec <TK_Keymap_prog+0x804>
    3a9a:	13e5      	lrw      	r7, 0x200002c2	// 3c2c <TK_Keymap_prog+0x744>
    3a9c:	8bc0      	ld.h      	r6, (r3, 0x0)
    3a9e:	8f20      	ld.h      	r1, (r7, 0x0)
    3aa0:	7445      	zexth      	r1, r1
    3aa2:	759b      	sexth      	r6, r6
    3aa4:	2109      	addi      	r1, 10
    3aa6:	6585      	cmplt      	r1, r6
    3aa8:	0c0b      	bf      	0x3abe	// 3abe <TK_Keymap_prog+0x5d6>
    3aaa:	8b60      	ld.h      	r3, (r3, 0x0)
    3aac:	1236      	lrw      	r1, 0x200002f4	// 3c04 <TK_Keymap_prog+0x71c>
    3aae:	74cd      	zexth      	r3, r3
    3ab0:	af60      	st.h      	r3, (r7, 0x0)
    3ab2:	b140      	st.w      	r2, (r1, 0x0)
    3ab4:	3301      	movi      	r3, 1
    3ab6:	9140      	ld.w      	r2, (r1, 0x0)
    3ab8:	70d0      	lsl      	r3, r4
    3aba:	6cc8      	or      	r3, r2
    3abc:	b160      	st.w      	r3, (r1, 0x0)
    3abe:	3300      	movi      	r3, 0
    3ac0:	a060      	st.b      	r3, (r0, 0x0)
    3ac2:	0777      	br      	0x39b0	// 39b0 <TK_Keymap_prog+0x4c8>
    3ac4:	3d43      	cmpnei      	r5, 3
    3ac6:	0c03      	bf      	0x3acc	// 3acc <TK_Keymap_prog+0x5e4>
    3ac8:	e800fda6 	br      	0x3614	// 3614 <TK_Keymap_prog+0x12c>
    3acc:	125b      	lrw      	r2, 0x2000042a	// 3c38 <TK_Keymap_prog+0x750>
    3ace:	8bc0      	ld.h      	r6, (r3, 0x0)
    3ad0:	8a00      	ld.h      	r0, (r2, 0x0)
    3ad2:	7401      	zexth      	r0, r0
    3ad4:	759b      	sexth      	r6, r6
    3ad6:	2009      	addi      	r0, 10
    3ad8:	6581      	cmplt      	r0, r6
    3ada:	0c0c      	bf      	0x3af2	// 3af2 <TK_Keymap_prog+0x60a>
    3adc:	8b60      	ld.h      	r3, (r3, 0x0)
    3ade:	74cd      	zexth      	r3, r3
    3ae0:	aa60      	st.h      	r3, (r2, 0x0)
    3ae2:	3300      	movi      	r3, 0
    3ae4:	1216      	lrw      	r0, 0x20000284	// 3c3c <TK_Keymap_prog+0x754>
    3ae6:	b060      	st.w      	r3, (r0, 0x0)
    3ae8:	3301      	movi      	r3, 1
    3aea:	90c0      	ld.w      	r6, (r0, 0x0)
    3aec:	70d0      	lsl      	r3, r4
    3aee:	6cd8      	or      	r3, r6
    3af0:	b060      	st.w      	r3, (r0, 0x0)
    3af2:	9804      	ld.w      	r0, (r14, 0x10)
    3af4:	4461      	lsli      	r3, r4, 1
    3af6:	60c0      	addu      	r3, r0
    3af8:	8b00      	ld.h      	r0, (r3, 0x0)
    3afa:	8a40      	ld.h      	r2, (r2, 0x0)
    3afc:	7489      	zexth      	r2, r2
    3afe:	7403      	sexth      	r0, r0
    3b00:	2a04      	subi      	r2, 5
    3b02:	6481      	cmplt      	r0, r2
    3b04:	0803      	bt      	0x3b0a	// 3b0a <TK_Keymap_prog+0x622>
    3b06:	e800fd87 	br      	0x3614	// 3614 <TK_Keymap_prog+0x12c>
    3b0a:	12ce      	lrw      	r6, 0x2000024c	// 3c40 <TK_Keymap_prog+0x758>
    3b0c:	8b00      	ld.h      	r0, (r3, 0x0)
    3b0e:	8e40      	ld.h      	r2, (r6, 0x0)
    3b10:	7489      	zexth      	r2, r2
    3b12:	7403      	sexth      	r0, r0
    3b14:	2204      	addi      	r2, 5
    3b16:	6409      	cmplt      	r2, r0
    3b18:	0803      	bt      	0x3b1e	// 3b1e <TK_Keymap_prog+0x636>
    3b1a:	e800fd7d 	br      	0x3614	// 3614 <TK_Keymap_prog+0x12c>
    3b1e:	8b60      	ld.h      	r3, (r3, 0x0)
    3b20:	74cd      	zexth      	r3, r3
    3b22:	ae60      	st.h      	r3, (r6, 0x0)
    3b24:	1246      	lrw      	r2, 0x20000284	// 3c3c <TK_Keymap_prog+0x754>
    3b26:	e800fd63 	br      	0x35ec	// 35ec <TK_Keymap_prog+0x104>
    3b2a:	3d43      	cmpnei      	r5, 3
    3b2c:	0c02      	bf      	0x3b30	// 3b30 <TK_Keymap_prog+0x648>
    3b2e:	061d      	br      	0x3768	// 3768 <TK_Keymap_prog+0x280>
    3b30:	12c2      	lrw      	r6, 0x2000042a	// 3c38 <TK_Keymap_prog+0x750>
    3b32:	8ae0      	ld.h      	r7, (r2, 0x0)
    3b34:	8e20      	ld.h      	r1, (r6, 0x0)
    3b36:	7445      	zexth      	r1, r1
    3b38:	75df      	sexth      	r7, r7
    3b3a:	2109      	addi      	r1, 10
    3b3c:	65c5      	cmplt      	r1, r7
    3b3e:	0c0b      	bf      	0x3b54	// 3b54 <TK_Keymap_prog+0x66c>
    3b40:	8a40      	ld.h      	r2, (r2, 0x0)
    3b42:	7489      	zexth      	r2, r2
    3b44:	ae40      	st.h      	r2, (r6, 0x0)
    3b46:	115e      	lrw      	r2, 0x20000284	// 3c3c <TK_Keymap_prog+0x754>
    3b48:	b260      	st.w      	r3, (r2, 0x0)
    3b4a:	3301      	movi      	r3, 1
    3b4c:	9220      	ld.w      	r1, (r2, 0x0)
    3b4e:	70d0      	lsl      	r3, r4
    3b50:	6cc4      	or      	r3, r1
    3b52:	b260      	st.w      	r3, (r2, 0x0)
    3b54:	9844      	ld.w      	r2, (r14, 0x10)
    3b56:	4461      	lsli      	r3, r4, 1
    3b58:	60c8      	addu      	r3, r2
    3b5a:	8b40      	ld.h      	r2, (r3, 0x0)
    3b5c:	8e20      	ld.h      	r1, (r6, 0x0)
    3b5e:	7445      	zexth      	r1, r1
    3b60:	748b      	sexth      	r2, r2
    3b62:	2904      	subi      	r1, 5
    3b64:	6449      	cmplt      	r2, r1
    3b66:	0802      	bt      	0x3b6a	// 3b6a <TK_Keymap_prog+0x682>
    3b68:	0600      	br      	0x3768	// 3768 <TK_Keymap_prog+0x280>
    3b6a:	11d6      	lrw      	r6, 0x2000024c	// 3c40 <TK_Keymap_prog+0x758>
    3b6c:	8b20      	ld.h      	r1, (r3, 0x0)
    3b6e:	8e40      	ld.h      	r2, (r6, 0x0)
    3b70:	7489      	zexth      	r2, r2
    3b72:	7447      	sexth      	r1, r1
    3b74:	2204      	addi      	r2, 5
    3b76:	6449      	cmplt      	r2, r1
    3b78:	0803      	bt      	0x3b7e	// 3b7e <TK_Keymap_prog+0x696>
    3b7a:	e800fdf7 	br      	0x3768	// 3768 <TK_Keymap_prog+0x280>
    3b7e:	8b60      	ld.h      	r3, (r3, 0x0)
    3b80:	74cd      	zexth      	r3, r3
    3b82:	ae60      	st.h      	r3, (r6, 0x0)
    3b84:	114e      	lrw      	r2, 0x20000284	// 3c3c <TK_Keymap_prog+0x754>
    3b86:	e800fde6 	br      	0x3752	// 3752 <TK_Keymap_prog+0x26a>
    3b8a:	3d43      	cmpnei      	r5, 3
    3b8c:	0c02      	bf      	0x3b90	// 3b90 <TK_Keymap_prog+0x6a8>
    3b8e:	0609      	br      	0x37a0	// 37a0 <TK_Keymap_prog+0x2b8>
    3b90:	105e      	lrw      	r2, 0x2000050c	// 3c08 <TK_Keymap_prog+0x720>
    3b92:	8bc0      	ld.h      	r6, (r3, 0x0)
    3b94:	8a00      	ld.h      	r0, (r2, 0x0)
    3b96:	7401      	zexth      	r0, r0
    3b98:	759b      	sexth      	r6, r6
    3b9a:	2009      	addi      	r0, 10
    3b9c:	6581      	cmplt      	r0, r6
    3b9e:	0c0c      	bf      	0x3bb6	// 3bb6 <TK_Keymap_prog+0x6ce>
    3ba0:	8b60      	ld.h      	r3, (r3, 0x0)
    3ba2:	74cd      	zexth      	r3, r3
    3ba4:	aa60      	st.h      	r3, (r2, 0x0)
    3ba6:	3300      	movi      	r3, 0
    3ba8:	1019      	lrw      	r0, 0x20000220	// 3c0c <TK_Keymap_prog+0x724>
    3baa:	b060      	st.w      	r3, (r0, 0x0)
    3bac:	3301      	movi      	r3, 1
    3bae:	90c0      	ld.w      	r6, (r0, 0x0)
    3bb0:	70d0      	lsl      	r3, r4
    3bb2:	6cd8      	or      	r3, r6
    3bb4:	b060      	st.w      	r3, (r0, 0x0)
    3bb6:	9801      	ld.w      	r0, (r14, 0x4)
    3bb8:	4461      	lsli      	r3, r4, 1
    3bba:	60c0      	addu      	r3, r0
    3bbc:	8b00      	ld.h      	r0, (r3, 0x0)
    3bbe:	8a40      	ld.h      	r2, (r2, 0x0)
    3bc0:	7489      	zexth      	r2, r2
    3bc2:	7403      	sexth      	r0, r0
    3bc4:	2a04      	subi      	r2, 5
    3bc6:	6481      	cmplt      	r0, r2
    3bc8:	0803      	bt      	0x3bce	// 3bce <TK_Keymap_prog+0x6e6>
    3bca:	e800fdeb 	br      	0x37a0	// 37a0 <TK_Keymap_prog+0x2b8>
    3bce:	10de      	lrw      	r6, 0x2000042e	// 3c44 <TK_Keymap_prog+0x75c>
    3bd0:	8b00      	ld.h      	r0, (r3, 0x0)
    3bd2:	8e40      	ld.h      	r2, (r6, 0x0)
    3bd4:	7489      	zexth      	r2, r2
    3bd6:	7403      	sexth      	r0, r0
    3bd8:	2204      	addi      	r2, 5
    3bda:	6409      	cmplt      	r2, r0
    3bdc:	0803      	bt      	0x3be2	// 3be2 <TK_Keymap_prog+0x6fa>
    3bde:	e800fde1 	br      	0x37a0	// 37a0 <TK_Keymap_prog+0x2b8>
    3be2:	8b60      	ld.h      	r3, (r3, 0x0)
    3be4:	74cd      	zexth      	r3, r3
    3be6:	ae60      	st.h      	r3, (r6, 0x0)
    3be8:	1049      	lrw      	r2, 0x20000220	// 3c0c <TK_Keymap_prog+0x724>
    3bea:	e800fd67 	br      	0x36b8	// 36b8 <TK_Keymap_prog+0x1d0>
    3bee:	3d43      	cmpnei      	r5, 3
    3bf0:	0ad2      	bt      	0x3994	// 3994 <TK_Keymap_prog+0x4ac>
    3bf2:	8b20      	ld.h      	r1, (r3, 0x0)
    3bf4:	10c5      	lrw      	r6, 0x2000050c	// 3c08 <TK_Keymap_prog+0x720>
    3bf6:	7487      	sexth      	r2, r1
    3bf8:	8e20      	ld.h      	r1, (r6, 0x0)
    3bfa:	7445      	zexth      	r1, r1
    3bfc:	2109      	addi      	r1, 10
    3bfe:	6485      	cmplt      	r1, r2
    3c00:	0c2f      	bf      	0x3c5e	// 3c5e <TK_Keymap_prog+0x776>
    3c02:	0423      	br      	0x3c48	// 3c48 <TK_Keymap_prog+0x760>
    3c04:	200002f4 	.long	0x200002f4
    3c08:	2000050c 	.long	0x2000050c
    3c0c:	20000220 	.long	0x20000220
    3c10:	2000029e 	.long	0x2000029e
    3c14:	20000448 	.long	0x20000448
    3c18:	200002f8 	.long	0x200002f8
    3c1c:	20000322 	.long	0x20000322
    3c20:	20000418 	.long	0x20000418
    3c24:	20000459 	.long	0x20000459
    3c28:	20000400 	.long	0x20000400
    3c2c:	200002c2 	.long	0x200002c2
    3c30:	2000020e 	.long	0x2000020e
    3c34:	20000310 	.long	0x20000310
    3c38:	2000042a 	.long	0x2000042a
    3c3c:	20000284 	.long	0x20000284
    3c40:	2000024c 	.long	0x2000024c
    3c44:	2000042e 	.long	0x2000042e
    3c48:	8b60      	ld.h      	r3, (r3, 0x0)
    3c4a:	74cd      	zexth      	r3, r3
    3c4c:	ae60      	st.h      	r3, (r6, 0x0)
    3c4e:	9867      	ld.w      	r3, (r14, 0x1c)
    3c50:	113d      	lrw      	r1, 0x20000220	// 3d44 <TK_Keymap_prog+0x85c>
    3c52:	b160      	st.w      	r3, (r1, 0x0)
    3c54:	3301      	movi      	r3, 1
    3c56:	9140      	ld.w      	r2, (r1, 0x0)
    3c58:	70d0      	lsl      	r3, r4
    3c5a:	6cc8      	or      	r3, r2
    3c5c:	b160      	st.w      	r3, (r1, 0x0)
    3c5e:	9841      	ld.w      	r2, (r14, 0x4)
    3c60:	4461      	lsli      	r3, r4, 1
    3c62:	60c8      	addu      	r3, r2
    3c64:	8b40      	ld.h      	r2, (r3, 0x0)
    3c66:	8e20      	ld.h      	r1, (r6, 0x0)
    3c68:	7445      	zexth      	r1, r1
    3c6a:	748b      	sexth      	r2, r2
    3c6c:	2904      	subi      	r1, 5
    3c6e:	6449      	cmplt      	r2, r1
    3c70:	0e92      	bf      	0x3994	// 3994 <TK_Keymap_prog+0x4ac>
    3c72:	11d6      	lrw      	r6, 0x2000042e	// 3d48 <TK_Keymap_prog+0x860>
    3c74:	8b20      	ld.h      	r1, (r3, 0x0)
    3c76:	8e40      	ld.h      	r2, (r6, 0x0)
    3c78:	7489      	zexth      	r2, r2
    3c7a:	7447      	sexth      	r1, r1
    3c7c:	2204      	addi      	r2, 5
    3c7e:	6449      	cmplt      	r2, r1
    3c80:	0802      	bt      	0x3c84	// 3c84 <TK_Keymap_prog+0x79c>
    3c82:	0689      	br      	0x3994	// 3994 <TK_Keymap_prog+0x4ac>
    3c84:	8b60      	ld.h      	r3, (r3, 0x0)
    3c86:	74cd      	zexth      	r3, r3
    3c88:	ae60      	st.h      	r3, (r6, 0x0)
    3c8a:	114f      	lrw      	r2, 0x20000220	// 3d44 <TK_Keymap_prog+0x85c>
    3c8c:	0662      	br      	0x3950	// 3950 <TK_Keymap_prog+0x468>
    3c8e:	3d43      	cmpnei      	r5, 3
    3c90:	0a8e      	bt      	0x39ac	// 39ac <TK_Keymap_prog+0x4c4>
    3c92:	114f      	lrw      	r2, 0x200002c2	// 3d4c <TK_Keymap_prog+0x864>
    3c94:	8bc0      	ld.h      	r6, (r3, 0x0)
    3c96:	8a00      	ld.h      	r0, (r2, 0x0)
    3c98:	7401      	zexth      	r0, r0
    3c9a:	759b      	sexth      	r6, r6
    3c9c:	2009      	addi      	r0, 10
    3c9e:	6581      	cmplt      	r0, r6
    3ca0:	0c0c      	bf      	0x3cb8	// 3cb8 <TK_Keymap_prog+0x7d0>
    3ca2:	8b60      	ld.h      	r3, (r3, 0x0)
    3ca4:	74cd      	zexth      	r3, r3
    3ca6:	aa60      	st.h      	r3, (r2, 0x0)
    3ca8:	3300      	movi      	r3, 0
    3caa:	110a      	lrw      	r0, 0x200002f4	// 3d50 <TK_Keymap_prog+0x868>
    3cac:	b060      	st.w      	r3, (r0, 0x0)
    3cae:	3301      	movi      	r3, 1
    3cb0:	90c0      	ld.w      	r6, (r0, 0x0)
    3cb2:	70d0      	lsl      	r3, r4
    3cb4:	6cd8      	or      	r3, r6
    3cb6:	b060      	st.w      	r3, (r0, 0x0)
    3cb8:	9802      	ld.w      	r0, (r14, 0x8)
    3cba:	4461      	lsli      	r3, r4, 1
    3cbc:	60c0      	addu      	r3, r0
    3cbe:	8b00      	ld.h      	r0, (r3, 0x0)
    3cc0:	8a40      	ld.h      	r2, (r2, 0x0)
    3cc2:	7489      	zexth      	r2, r2
    3cc4:	7403      	sexth      	r0, r0
    3cc6:	2a04      	subi      	r2, 5
    3cc8:	6481      	cmplt      	r0, r2
    3cca:	0802      	bt      	0x3cce	// 3cce <TK_Keymap_prog+0x7e6>
    3ccc:	0670      	br      	0x39ac	// 39ac <TK_Keymap_prog+0x4c4>
    3cce:	11c2      	lrw      	r6, 0x20000380	// 3d54 <TK_Keymap_prog+0x86c>
    3cd0:	8b00      	ld.h      	r0, (r3, 0x0)
    3cd2:	8e40      	ld.h      	r2, (r6, 0x0)
    3cd4:	7489      	zexth      	r2, r2
    3cd6:	7403      	sexth      	r0, r0
    3cd8:	2204      	addi      	r2, 5
    3cda:	6409      	cmplt      	r2, r0
    3cdc:	0802      	bt      	0x3ce0	// 3ce0 <TK_Keymap_prog+0x7f8>
    3cde:	0667      	br      	0x39ac	// 39ac <TK_Keymap_prog+0x4c4>
    3ce0:	8b60      	ld.h      	r3, (r3, 0x0)
    3ce2:	74cd      	zexth      	r3, r3
    3ce4:	ae60      	st.h      	r3, (r6, 0x0)
    3ce6:	105b      	lrw      	r2, 0x200002f4	// 3d50 <TK_Keymap_prog+0x868>
    3ce8:	e800fdea 	br      	0x38bc	// 38bc <TK_Keymap_prog+0x3d4>
    3cec:	3d43      	cmpnei      	r5, 3
    3cee:	0ae8      	bt      	0x3abe	// 3abe <TK_Keymap_prog+0x5d6>
    3cf0:	10d7      	lrw      	r6, 0x200002c2	// 3d4c <TK_Keymap_prog+0x864>
    3cf2:	8be0      	ld.h      	r7, (r3, 0x0)
    3cf4:	8e20      	ld.h      	r1, (r6, 0x0)
    3cf6:	7445      	zexth      	r1, r1
    3cf8:	75df      	sexth      	r7, r7
    3cfa:	2109      	addi      	r1, 10
    3cfc:	65c5      	cmplt      	r1, r7
    3cfe:	0c0b      	bf      	0x3d14	// 3d14 <TK_Keymap_prog+0x82c>
    3d00:	8b60      	ld.h      	r3, (r3, 0x0)
    3d02:	1034      	lrw      	r1, 0x200002f4	// 3d50 <TK_Keymap_prog+0x868>
    3d04:	74cd      	zexth      	r3, r3
    3d06:	ae60      	st.h      	r3, (r6, 0x0)
    3d08:	b140      	st.w      	r2, (r1, 0x0)
    3d0a:	3301      	movi      	r3, 1
    3d0c:	9140      	ld.w      	r2, (r1, 0x0)
    3d0e:	70d0      	lsl      	r3, r4
    3d10:	6cc8      	or      	r3, r2
    3d12:	b160      	st.w      	r3, (r1, 0x0)
    3d14:	9842      	ld.w      	r2, (r14, 0x8)
    3d16:	4461      	lsli      	r3, r4, 1
    3d18:	60c8      	addu      	r3, r2
    3d1a:	8b40      	ld.h      	r2, (r3, 0x0)
    3d1c:	8e20      	ld.h      	r1, (r6, 0x0)
    3d1e:	7445      	zexth      	r1, r1
    3d20:	748b      	sexth      	r2, r2
    3d22:	2904      	subi      	r1, 5
    3d24:	6449      	cmplt      	r2, r1
    3d26:	0ecc      	bf      	0x3abe	// 3abe <TK_Keymap_prog+0x5d6>
    3d28:	10cb      	lrw      	r6, 0x20000380	// 3d54 <TK_Keymap_prog+0x86c>
    3d2a:	8b20      	ld.h      	r1, (r3, 0x0)
    3d2c:	8e40      	ld.h      	r2, (r6, 0x0)
    3d2e:	7489      	zexth      	r2, r2
    3d30:	7447      	sexth      	r1, r1
    3d32:	2204      	addi      	r2, 5
    3d34:	6449      	cmplt      	r2, r1
    3d36:	0ec4      	bf      	0x3abe	// 3abe <TK_Keymap_prog+0x5d6>
    3d38:	8b60      	ld.h      	r3, (r3, 0x0)
    3d3a:	74cd      	zexth      	r3, r3
    3d3c:	ae60      	st.h      	r3, (r6, 0x0)
    3d3e:	1045      	lrw      	r2, 0x200002f4	// 3d50 <TK_Keymap_prog+0x868>
    3d40:	069f      	br      	0x3a7e	// 3a7e <TK_Keymap_prog+0x596>
    3d42:	0000      	bkpt
    3d44:	20000220 	.long	0x20000220
    3d48:	2000042e 	.long	0x2000042e
    3d4c:	200002c2 	.long	0x200002c2
    3d50:	200002f4 	.long	0x200002f4
    3d54:	20000380 	.long	0x20000380

Disassembly of section .text.TK_overflow_predict:

00003d58 <TK_overflow_predict>:
    3d58:	14d4      	push      	r4-r7, r15
    3d5a:	1422      	subi      	r14, r14, 8
    3d5c:	113c      	lrw      	r1, 0x20000068	// 3e4c <TK_overflow_predict+0xf4>
    3d5e:	8164      	ld.b      	r3, (r1, 0x4)
    3d60:	3b41      	cmpnei      	r3, 1
    3d62:	0823      	bt      	0x3da8	// 3da8 <TK_overflow_predict+0x50>
    3d64:	115b      	lrw      	r2, 0x200003fa	// 3e50 <TK_overflow_predict+0xf8>
    3d66:	8260      	ld.b      	r3, (r2, 0x0)
    3d68:	2300      	addi      	r3, 1
    3d6a:	74cc      	zextb      	r3, r3
    3d6c:	a260      	st.b      	r3, (r2, 0x0)
    3d6e:	8260      	ld.b      	r3, (r2, 0x0)
    3d70:	1119      	lrw      	r0, 0x20000140	// 3e54 <TK_overflow_predict+0xfc>
    3d72:	8000      	ld.b      	r0, (r0, 0x0)
    3d74:	64c0      	cmphs      	r0, r3
    3d76:	0819      	bt      	0x3da8	// 3da8 <TK_overflow_predict+0x50>
    3d78:	3300      	movi      	r3, 0
    3d7a:	a260      	st.b      	r3, (r2, 0x0)
    3d7c:	11b7      	lrw      	r5, 0x20000309	// 3e58 <TK_overflow_predict+0x100>
    3d7e:	8560      	ld.b      	r3, (r5, 0x0)
    3d80:	3b40      	cmpnei      	r3, 0
    3d82:	0c15      	bf      	0x3dac	// 3dac <TK_overflow_predict+0x54>
    3d84:	8560      	ld.b      	r3, (r5, 0x0)
    3d86:	3b41      	cmpnei      	r3, 1
    3d88:	0810      	bt      	0x3da8	// 3da8 <TK_overflow_predict+0x50>
    3d8a:	3300      	movi      	r3, 0
    3d8c:	a560      	st.b      	r3, (r5, 0x0)
    3d8e:	3200      	movi      	r2, 0
    3d90:	1173      	lrw      	r3, 0x20000058	// 3e5c <TK_overflow_predict+0x104>
    3d92:	1114      	lrw      	r0, 0x2000042c	// 3e60 <TK_overflow_predict+0x108>
    3d94:	11b4      	lrw      	r5, 0x20000470	// 3e64 <TK_overflow_predict+0x10c>
    3d96:	11d5      	lrw      	r6, 0x2000011a	// 3e68 <TK_overflow_predict+0x110>
    3d98:	9360      	ld.w      	r3, (r3, 0x0)
    3d9a:	b342      	st.w      	r2, (r3, 0x8)
    3d9c:	1174      	lrw      	r3, 0x20000054	// 3e6c <TK_overflow_predict+0x114>
    3d9e:	9380      	ld.w      	r4, (r3, 0x0)
    3da0:	3300      	movi      	r3, 0
    3da2:	8040      	ld.b      	r2, (r0, 0x0)
    3da4:	648c      	cmphs      	r3, r2
    3da6:	0c44      	bf      	0x3e2e	// 3e2e <TK_overflow_predict+0xd6>
    3da8:	1402      	addi      	r14, r14, 8
    3daa:	1494      	pop      	r4-r7, r15
    3dac:	5976      	addi      	r3, r1, 6
    3dae:	3600      	movi      	r6, 0
    3db0:	11f0      	lrw      	r7, 0x20000144	// 3e70 <TK_overflow_predict+0x118>
    3db2:	b860      	st.w      	r3, (r14, 0x0)
    3db4:	9760      	ld.w      	r3, (r7, 0x0)
    3db6:	70d9      	lsr      	r3, r6
    3db8:	3201      	movi      	r2, 1
    3dba:	68c8      	and      	r3, r2
    3dbc:	3b40      	cmpnei      	r3, 0
    3dbe:	0c34      	bf      	0x3e26	// 3e26 <TK_overflow_predict+0xce>
    3dc0:	4681      	lsli      	r4, r6, 1
    3dc2:	9860      	ld.w      	r3, (r14, 0x0)
    3dc4:	60d0      	addu      	r3, r4
    3dc6:	8b00      	ld.h      	r0, (r3, 0x0)
    3dc8:	e3ffebec 	bsr      	0x15a0	// 15a0 <__floatunsidf>
    3dcc:	6cc7      	mov      	r3, r1
    3dce:	3180      	movi      	r1, 128
    3dd0:	6c83      	mov      	r2, r0
    3dd2:	4137      	lsli      	r1, r1, 23
    3dd4:	3000      	movi      	r0, 0
    3dd6:	e3ffe1ef 	bsr      	0x1b4	// 1b4 <__GI_pow>
    3dda:	1167      	lrw      	r3, 0x2000014a	// 3e74 <TK_overflow_predict+0x11c>
    3ddc:	60d0      	addu      	r3, r4
    3dde:	8b60      	ld.h      	r3, (r3, 0x0)
    3de0:	4364      	lsli      	r3, r3, 4
    3de2:	230e      	addi      	r3, 15
    3de4:	b861      	st.w      	r3, (r14, 0x4)
    3de6:	e3ffe795 	bsr      	0xd10	// d10 <__fixunsdfsi>
    3dea:	9861      	ld.w      	r3, (r14, 0x4)
    3dec:	7cc0      	mult      	r3, r0
    3dee:	1143      	lrw      	r2, 0x200004a4	// 3e78 <TK_overflow_predict+0x120>
    3df0:	740d      	zexth      	r0, r3
    3df2:	6090      	addu      	r2, r4
    3df4:	1162      	lrw      	r3, 0x2000050e	// 3e7c <TK_overflow_predict+0x124>
    3df6:	60d0      	addu      	r3, r4
    3df8:	aa00      	st.h      	r0, (r2, 0x0)
    3dfa:	8b60      	ld.h      	r3, (r3, 0x0)
    3dfc:	8a00      	ld.h      	r0, (r2, 0x0)
    3dfe:	7401      	zexth      	r0, r0
    3e00:	325f      	movi      	r2, 95
    3e02:	74cd      	zexth      	r3, r3
    3e04:	7c08      	mult      	r0, r2
    3e06:	3164      	movi      	r1, 100
    3e08:	b861      	st.w      	r3, (r14, 0x4)
    3e0a:	e3fffa87 	bsr      	0x3318	// 3318 <__divsi3>
    3e0e:	9861      	ld.w      	r3, (r14, 0x4)
    3e10:	64c1      	cmplt      	r0, r3
    3e12:	0c0a      	bf      	0x3e26	// 3e26 <TK_overflow_predict+0xce>
    3e14:	1075      	lrw      	r3, 0x2000011a	// 3e68 <TK_overflow_predict+0x110>
    3e16:	610c      	addu      	r4, r3
    3e18:	8c60      	ld.h      	r3, (r4, 0x0)
    3e1a:	3b06      	cmphsi      	r3, 7
    3e1c:	0805      	bt      	0x3e26	// 3e26 <TK_overflow_predict+0xce>
    3e1e:	2300      	addi      	r3, 1
    3e20:	ac60      	st.h      	r3, (r4, 0x0)
    3e22:	3301      	movi      	r3, 1
    3e24:	a560      	st.b      	r3, (r5, 0x0)
    3e26:	2600      	addi      	r6, 1
    3e28:	3e51      	cmpnei      	r6, 17
    3e2a:	0bc5      	bt      	0x3db4	// 3db4 <TK_overflow_predict+0x5c>
    3e2c:	07ac      	br      	0x3d84	// 3d84 <TK_overflow_predict+0x2c>
    3e2e:	5d4c      	addu      	r2, r5, r3
    3e30:	8240      	ld.b      	r2, (r2, 0x0)
    3e32:	4241      	lsli      	r2, r2, 1
    3e34:	4322      	lsli      	r1, r3, 2
    3e36:	6098      	addu      	r2, r6
    3e38:	6050      	addu      	r1, r4
    3e3a:	8a40      	ld.h      	r2, (r2, 0x0)
    3e3c:	91f2      	ld.w      	r7, (r1, 0x48)
    3e3e:	4254      	lsli      	r2, r2, 20
    3e40:	6c9c      	or      	r2, r7
    3e42:	2300      	addi      	r3, 1
    3e44:	b152      	st.w      	r2, (r1, 0x48)
    3e46:	74cc      	zextb      	r3, r3
    3e48:	07ad      	br      	0x3da2	// 3da2 <TK_overflow_predict+0x4a>
    3e4a:	0000      	bkpt
    3e4c:	20000068 	.long	0x20000068
    3e50:	200003fa 	.long	0x200003fa
    3e54:	20000140 	.long	0x20000140
    3e58:	20000309 	.long	0x20000309
    3e5c:	20000058 	.long	0x20000058
    3e60:	2000042c 	.long	0x2000042c
    3e64:	20000470 	.long	0x20000470
    3e68:	2000011a 	.long	0x2000011a
    3e6c:	20000054 	.long	0x20000054
    3e70:	20000144 	.long	0x20000144
    3e74:	2000014a 	.long	0x2000014a
    3e78:	200004a4 	.long	0x200004a4
    3e7c:	2000050e 	.long	0x2000050e

Disassembly of section .text.TK_Baseline_tracking:

00003e80 <TK_Baseline_tracking>:
    3e80:	14c4      	push      	r4-r7
    3e82:	1422      	subi      	r14, r14, 8
    3e84:	0149      	lrw      	r2, 0x2000037a	// 41dc <TK_Baseline_tracking+0x35c>
    3e86:	8260      	ld.b      	r3, (r2, 0x0)
    3e88:	2300      	addi      	r3, 1
    3e8a:	74cc      	zextb      	r3, r3
    3e8c:	a260      	st.b      	r3, (r2, 0x0)
    3e8e:	8260      	ld.b      	r3, (r2, 0x0)
    3e90:	012b      	lrw      	r1, 0x20000140	// 41e0 <TK_Baseline_tracking+0x360>
    3e92:	8120      	ld.b      	r1, (r1, 0x0)
    3e94:	644c      	cmphs      	r3, r1
    3e96:	0c10      	bf      	0x3eb6	// 3eb6 <TK_Baseline_tracking+0x36>
    3e98:	3300      	movi      	r3, 0
    3e9a:	a260      	st.b      	r3, (r2, 0x0)
    3e9c:	016d      	lrw      	r3, 0x20000284	// 41e4 <TK_Baseline_tracking+0x364>
    3e9e:	9360      	ld.w      	r3, (r3, 0x0)
    3ea0:	3b40      	cmpnei      	r3, 0
    3ea2:	0c0c      	bf      	0x3eba	// 3eba <TK_Baseline_tracking+0x3a>
    3ea4:	016e      	lrw      	r3, 0x20000220	// 41e8 <TK_Baseline_tracking+0x368>
    3ea6:	9360      	ld.w      	r3, (r3, 0x0)
    3ea8:	3b40      	cmpnei      	r3, 0
    3eaa:	0cc6      	bf      	0x4036	// 4036 <TK_Baseline_tracking+0x1b6>
    3eac:	016f      	lrw      	r3, 0x200002f4	// 41ec <TK_Baseline_tracking+0x36c>
    3eae:	9360      	ld.w      	r3, (r3, 0x0)
    3eb0:	3b40      	cmpnei      	r3, 0
    3eb2:	0802      	bt      	0x3eb6	// 3eb6 <TK_Baseline_tracking+0x36>
    3eb4:	057f      	br      	0x41b2	// 41b2 <TK_Baseline_tracking+0x332>
    3eb6:	1402      	addi      	r14, r14, 8
    3eb8:	1484      	pop      	r4-r7
    3eba:	0131      	lrw      	r1, 0x200002a0	// 41f0 <TK_Baseline_tracking+0x370>
    3ebc:	6dc7      	mov      	r7, r1
    3ebe:	b820      	st.w      	r1, (r14, 0x0)
    3ec0:	3200      	movi      	r2, 0
    3ec2:	0172      	lrw      	r3, 0x20000172	// 41f4 <TK_Baseline_tracking+0x374>
    3ec4:	0132      	lrw      	r1, 0x200001ec	// 41f8 <TK_Baseline_tracking+0x378>
    3ec6:	4201      	lsli      	r0, r2, 1
    3ec8:	9880      	ld.w      	r4, (r14, 0x0)
    3eca:	6100      	addu      	r4, r0
    3ecc:	8c80      	ld.h      	r4, (r4, 0x0)
    3ece:	7513      	sexth      	r4, r4
    3ed0:	3cdf      	btsti      	r4, 31
    3ed2:	0c27      	bf      	0x3f20	// 3f20 <TK_Baseline_tracking+0xa0>
    3ed4:	01b5      	lrw      	r5, 0x2000050e	// 41fc <TK_Baseline_tracking+0x37c>
    3ed6:	5980      	addu      	r4, r1, r0
    3ed8:	6014      	addu      	r0, r5
    3eda:	b881      	st.w      	r4, (r14, 0x4)
    3edc:	8c80      	ld.h      	r4, (r4, 0x0)
    3ede:	88c0      	ld.h      	r6, (r0, 0x0)
    3ee0:	7511      	zexth      	r4, r4
    3ee2:	7599      	zexth      	r6, r6
    3ee4:	8ba0      	ld.h      	r5, (r3, 0x0)
    3ee6:	611a      	subu      	r4, r6
    3ee8:	6551      	cmplt      	r4, r5
    3eea:	081b      	bt      	0x3f20	// 3f20 <TK_Baseline_tracking+0xa0>
    3eec:	9881      	ld.w      	r4, (r14, 0x4)
    3eee:	8c80      	ld.h      	r4, (r4, 0x0)
    3ef0:	8800      	ld.h      	r0, (r0, 0x0)
    3ef2:	7511      	zexth      	r4, r4
    3ef4:	7401      	zexth      	r0, r0
    3ef6:	5c01      	subu      	r0, r4, r0
    3ef8:	4581      	lsli      	r4, r5, 1
    3efa:	6150      	addu      	r5, r4
    3efc:	6541      	cmplt      	r0, r5
    3efe:	0c11      	bf      	0x3f20	// 3f20 <TK_Baseline_tracking+0xa0>
    3f00:	019f      	lrw      	r4, 0x20000430	// 4200 <TK_Baseline_tracking+0x380>
    3f02:	6108      	addu      	r4, r2
    3f04:	8400      	ld.b      	r0, (r4, 0x0)
    3f06:	2000      	addi      	r0, 1
    3f08:	7400      	zextb      	r0, r0
    3f0a:	a400      	st.b      	r0, (r4, 0x0)
    3f0c:	0201      	lrw      	r0, 0x20000088	// 4204 <TK_Baseline_tracking+0x384>
    3f0e:	84a0      	ld.b      	r5, (r4, 0x0)
    3f10:	8008      	ld.b      	r0, (r0, 0x8)
    3f12:	6540      	cmphs      	r0, r5
    3f14:	0806      	bt      	0x3f20	// 3f20 <TK_Baseline_tracking+0xa0>
    3f16:	0202      	lrw      	r0, 0x20000321	// 4208 <TK_Baseline_tracking+0x388>
    3f18:	3501      	movi      	r5, 1
    3f1a:	a0a0      	st.b      	r5, (r0, 0x0)
    3f1c:	3000      	movi      	r0, 0
    3f1e:	a400      	st.b      	r0, (r4, 0x0)
    3f20:	4201      	lsli      	r0, r2, 1
    3f22:	5f80      	addu      	r4, r7, r0
    3f24:	8c80      	ld.h      	r4, (r4, 0x0)
    3f26:	7513      	sexth      	r4, r4
    3f28:	3c20      	cmplti      	r4, 1
    3f2a:	086f      	bt      	0x4008	// 4008 <TK_Baseline_tracking+0x188>
    3f2c:	028b      	lrw      	r4, 0x2000050e	// 41fc <TK_Baseline_tracking+0x37c>
    3f2e:	6100      	addu      	r4, r0
    3f30:	59a0      	addu      	r5, r1, r0
    3f32:	8c80      	ld.h      	r4, (r4, 0x0)
    3f34:	8da0      	ld.h      	r5, (r5, 0x0)
    3f36:	7555      	zexth      	r5, r5
    3f38:	7511      	zexth      	r4, r4
    3f3a:	6116      	subu      	r4, r5
    3f3c:	8ba0      	ld.h      	r5, (r3, 0x0)
    3f3e:	45a2      	lsli      	r5, r5, 2
    3f40:	6551      	cmplt      	r4, r5
    3f42:	0863      	bt      	0x4008	// 4008 <TK_Baseline_tracking+0x188>
    3f44:	028d      	lrw      	r4, 0x200003a4	// 420c <TK_Baseline_tracking+0x38c>
    3f46:	6108      	addu      	r4, r2
    3f48:	84a0      	ld.b      	r5, (r4, 0x0)
    3f4a:	2500      	addi      	r5, 1
    3f4c:	7554      	zextb      	r5, r5
    3f4e:	a4a0      	st.b      	r5, (r4, 0x0)
    3f50:	02b2      	lrw      	r5, 0x20000088	// 4204 <TK_Baseline_tracking+0x384>
    3f52:	84c0      	ld.b      	r6, (r4, 0x0)
    3f54:	85a9      	ld.b      	r5, (r5, 0x9)
    3f56:	6594      	cmphs      	r5, r6
    3f58:	0806      	bt      	0x3f64	// 3f64 <TK_Baseline_tracking+0xe4>
    3f5a:	02b3      	lrw      	r5, 0x20000321	// 4208 <TK_Baseline_tracking+0x388>
    3f5c:	3601      	movi      	r6, 1
    3f5e:	a5c0      	st.b      	r6, (r5, 0x0)
    3f60:	3500      	movi      	r5, 0
    3f62:	a4a0      	st.b      	r5, (r4, 0x0)
    3f64:	5f80      	addu      	r4, r7, r0
    3f66:	8c80      	ld.h      	r4, (r4, 0x0)
    3f68:	7513      	sexth      	r4, r4
    3f6a:	3cdf      	btsti      	r4, 31
    3f6c:	0c10      	bf      	0x3f8c	// 3f8c <TK_Baseline_tracking+0x10c>
    3f6e:	02db      	lrw      	r6, 0x2000050e	// 41fc <TK_Baseline_tracking+0x37c>
    3f70:	59a0      	addu      	r5, r1, r0
    3f72:	6180      	addu      	r6, r0
    3f74:	8d80      	ld.h      	r4, (r5, 0x0)
    3f76:	8ec0      	ld.h      	r6, (r6, 0x0)
    3f78:	7599      	zexth      	r6, r6
    3f7a:	7511      	zexth      	r4, r4
    3f7c:	611a      	subu      	r4, r6
    3f7e:	8bc0      	ld.h      	r6, (r3, 0x0)
    3f80:	6591      	cmplt      	r4, r6
    3f82:	0c05      	bf      	0x3f8c	// 3f8c <TK_Baseline_tracking+0x10c>
    3f84:	8d80      	ld.h      	r4, (r5, 0x0)
    3f86:	2c00      	subi      	r4, 1
    3f88:	7511      	zexth      	r4, r4
    3f8a:	ad80      	st.h      	r4, (r5, 0x0)
    3f8c:	5f80      	addu      	r4, r7, r0
    3f8e:	8c80      	ld.h      	r4, (r4, 0x0)
    3f90:	7513      	sexth      	r4, r4
    3f92:	3cdf      	btsti      	r4, 31
    3f94:	0c11      	bf      	0x3fb6	// 3fb6 <TK_Baseline_tracking+0x136>
    3f96:	03c5      	lrw      	r6, 0x2000050e	// 41fc <TK_Baseline_tracking+0x37c>
    3f98:	59a0      	addu      	r5, r1, r0
    3f9a:	6180      	addu      	r6, r0
    3f9c:	8d80      	ld.h      	r4, (r5, 0x0)
    3f9e:	8ec0      	ld.h      	r6, (r6, 0x0)
    3fa0:	7599      	zexth      	r6, r6
    3fa2:	7511      	zexth      	r4, r4
    3fa4:	611a      	subu      	r4, r6
    3fa6:	8bc0      	ld.h      	r6, (r3, 0x0)
    3fa8:	4ec1      	lsri      	r6, r6, 1
    3faa:	6591      	cmplt      	r4, r6
    3fac:	0805      	bt      	0x3fb6	// 3fb6 <TK_Baseline_tracking+0x136>
    3fae:	8d80      	ld.h      	r4, (r5, 0x0)
    3fb0:	2c01      	subi      	r4, 2
    3fb2:	7511      	zexth      	r4, r4
    3fb4:	ad80      	st.h      	r4, (r5, 0x0)
    3fb6:	5fa0      	addu      	r5, r7, r0
    3fb8:	8d80      	ld.h      	r4, (r5, 0x0)
    3fba:	7513      	sexth      	r4, r4
    3fbc:	3c20      	cmplti      	r4, 1
    3fbe:	080c      	bt      	0x3fd6	// 3fd6 <TK_Baseline_tracking+0x156>
    3fc0:	8da0      	ld.h      	r5, (r5, 0x0)
    3fc2:	8b80      	ld.h      	r4, (r3, 0x0)
    3fc4:	7557      	sexth      	r5, r5
    3fc6:	4c81      	lsri      	r4, r4, 1
    3fc8:	6515      	cmplt      	r5, r4
    3fca:	0c06      	bf      	0x3fd6	// 3fd6 <TK_Baseline_tracking+0x156>
    3fcc:	59a0      	addu      	r5, r1, r0
    3fce:	8d80      	ld.h      	r4, (r5, 0x0)
    3fd0:	2400      	addi      	r4, 1
    3fd2:	7511      	zexth      	r4, r4
    3fd4:	ad80      	st.h      	r4, (r5, 0x0)
    3fd6:	5fa0      	addu      	r5, r7, r0
    3fd8:	8d80      	ld.h      	r4, (r5, 0x0)
    3fda:	7513      	sexth      	r4, r4
    3fdc:	3c20      	cmplti      	r4, 1
    3fde:	0810      	bt      	0x3ffe	// 3ffe <TK_Baseline_tracking+0x17e>
    3fe0:	8dc0      	ld.h      	r6, (r5, 0x0)
    3fe2:	759b      	sexth      	r6, r6
    3fe4:	8b80      	ld.h      	r4, (r3, 0x0)
    3fe6:	6519      	cmplt      	r6, r4
    3fe8:	0c0b      	bf      	0x3ffe	// 3ffe <TK_Baseline_tracking+0x17e>
    3fea:	8da0      	ld.h      	r5, (r5, 0x0)
    3fec:	7557      	sexth      	r5, r5
    3fee:	4c81      	lsri      	r4, r4, 1
    3ff0:	6515      	cmplt      	r5, r4
    3ff2:	0806      	bt      	0x3ffe	// 3ffe <TK_Baseline_tracking+0x17e>
    3ff4:	6004      	addu      	r0, r1
    3ff6:	8880      	ld.h      	r4, (r0, 0x0)
    3ff8:	2401      	addi      	r4, 2
    3ffa:	7511      	zexth      	r4, r4
    3ffc:	a880      	st.h      	r4, (r0, 0x0)
    3ffe:	2200      	addi      	r2, 1
    4000:	3a51      	cmpnei      	r2, 17
    4002:	2301      	addi      	r3, 2
    4004:	0b61      	bt      	0x3ec6	// 3ec6 <TK_Baseline_tracking+0x46>
    4006:	074f      	br      	0x3ea4	// 3ea4 <TK_Baseline_tracking+0x24>
    4008:	5f80      	addu      	r4, r7, r0
    400a:	8c80      	ld.h      	r4, (r4, 0x0)
    400c:	7513      	sexth      	r4, r4
    400e:	3cdf      	btsti      	r4, 31
    4010:	0faa      	bf      	0x3f64	// 3f64 <TK_Baseline_tracking+0xe4>
    4012:	13bb      	lrw      	r5, 0x2000050e	// 41fc <TK_Baseline_tracking+0x37c>
    4014:	5980      	addu      	r4, r1, r0
    4016:	6140      	addu      	r5, r0
    4018:	8c80      	ld.h      	r4, (r4, 0x0)
    401a:	8da0      	ld.h      	r5, (r5, 0x0)
    401c:	7555      	zexth      	r5, r5
    401e:	8bc0      	ld.h      	r6, (r3, 0x0)
    4020:	7511      	zexth      	r4, r4
    4022:	6116      	subu      	r4, r5
    4024:	46a1      	lsli      	r5, r6, 1
    4026:	6158      	addu      	r5, r6
    4028:	6551      	cmplt      	r4, r5
    402a:	0b9d      	bt      	0x3f64	// 3f64 <TK_Baseline_tracking+0xe4>
    402c:	1397      	lrw      	r4, 0x20000321	// 4208 <TK_Baseline_tracking+0x388>
    402e:	3501      	movi      	r5, 1
    4030:	a4a0      	st.b      	r5, (r4, 0x0)
    4032:	6c03      	mov      	r0, r0
    4034:	0798      	br      	0x3f64	// 3f64 <TK_Baseline_tracking+0xe4>
    4036:	1337      	lrw      	r1, 0x200003d8	// 4210 <TK_Baseline_tracking+0x390>
    4038:	6dc7      	mov      	r7, r1
    403a:	b820      	st.w      	r1, (r14, 0x0)
    403c:	3200      	movi      	r2, 0
    403e:	136e      	lrw      	r3, 0x20000172	// 41f4 <TK_Baseline_tracking+0x374>
    4040:	1335      	lrw      	r1, 0x20000382	// 4214 <TK_Baseline_tracking+0x394>
    4042:	4201      	lsli      	r0, r2, 1
    4044:	9880      	ld.w      	r4, (r14, 0x0)
    4046:	6100      	addu      	r4, r0
    4048:	8c80      	ld.h      	r4, (r4, 0x0)
    404a:	7513      	sexth      	r4, r4
    404c:	3cdf      	btsti      	r4, 31
    404e:	0c27      	bf      	0x409c	// 409c <TK_Baseline_tracking+0x21c>
    4050:	13b2      	lrw      	r5, 0x200002c8	// 4218 <TK_Baseline_tracking+0x398>
    4052:	5980      	addu      	r4, r1, r0
    4054:	6014      	addu      	r0, r5
    4056:	b881      	st.w      	r4, (r14, 0x4)
    4058:	8c80      	ld.h      	r4, (r4, 0x0)
    405a:	88c0      	ld.h      	r6, (r0, 0x0)
    405c:	7511      	zexth      	r4, r4
    405e:	7599      	zexth      	r6, r6
    4060:	8ba0      	ld.h      	r5, (r3, 0x0)
    4062:	611a      	subu      	r4, r6
    4064:	6551      	cmplt      	r4, r5
    4066:	081b      	bt      	0x409c	// 409c <TK_Baseline_tracking+0x21c>
    4068:	9881      	ld.w      	r4, (r14, 0x4)
    406a:	8c80      	ld.h      	r4, (r4, 0x0)
    406c:	8800      	ld.h      	r0, (r0, 0x0)
    406e:	7511      	zexth      	r4, r4
    4070:	7401      	zexth      	r0, r0
    4072:	5c01      	subu      	r0, r4, r0
    4074:	4581      	lsli      	r4, r5, 1
    4076:	6150      	addu      	r5, r4
    4078:	6541      	cmplt      	r0, r5
    407a:	0c11      	bf      	0x409c	// 409c <TK_Baseline_tracking+0x21c>
    407c:	1388      	lrw      	r4, 0x20000418	// 421c <TK_Baseline_tracking+0x39c>
    407e:	6108      	addu      	r4, r2
    4080:	8400      	ld.b      	r0, (r4, 0x0)
    4082:	2000      	addi      	r0, 1
    4084:	7400      	zextb      	r0, r0
    4086:	a400      	st.b      	r0, (r4, 0x0)
    4088:	121f      	lrw      	r0, 0x20000088	// 4204 <TK_Baseline_tracking+0x384>
    408a:	84a0      	ld.b      	r5, (r4, 0x0)
    408c:	8008      	ld.b      	r0, (r0, 0x8)
    408e:	6540      	cmphs      	r0, r5
    4090:	0806      	bt      	0x409c	// 409c <TK_Baseline_tracking+0x21c>
    4092:	121e      	lrw      	r0, 0x20000321	// 4208 <TK_Baseline_tracking+0x388>
    4094:	3501      	movi      	r5, 1
    4096:	a0a0      	st.b      	r5, (r0, 0x0)
    4098:	3000      	movi      	r0, 0
    409a:	a400      	st.b      	r0, (r4, 0x0)
    409c:	4201      	lsli      	r0, r2, 1
    409e:	5f80      	addu      	r4, r7, r0
    40a0:	8c80      	ld.h      	r4, (r4, 0x0)
    40a2:	7513      	sexth      	r4, r4
    40a4:	3c20      	cmplti      	r4, 1
    40a6:	086f      	bt      	0x4184	// 4184 <TK_Baseline_tracking+0x304>
    40a8:	129c      	lrw      	r4, 0x200002c8	// 4218 <TK_Baseline_tracking+0x398>
    40aa:	6100      	addu      	r4, r0
    40ac:	59a0      	addu      	r5, r1, r0
    40ae:	8c80      	ld.h      	r4, (r4, 0x0)
    40b0:	8da0      	ld.h      	r5, (r5, 0x0)
    40b2:	7555      	zexth      	r5, r5
    40b4:	7511      	zexth      	r4, r4
    40b6:	6116      	subu      	r4, r5
    40b8:	8ba0      	ld.h      	r5, (r3, 0x0)
    40ba:	45a2      	lsli      	r5, r5, 2
    40bc:	6551      	cmplt      	r4, r5
    40be:	0863      	bt      	0x4184	// 4184 <TK_Baseline_tracking+0x304>
    40c0:	1298      	lrw      	r4, 0x20000322	// 4220 <TK_Baseline_tracking+0x3a0>
    40c2:	6108      	addu      	r4, r2
    40c4:	84a0      	ld.b      	r5, (r4, 0x0)
    40c6:	2500      	addi      	r5, 1
    40c8:	7554      	zextb      	r5, r5
    40ca:	a4a0      	st.b      	r5, (r4, 0x0)
    40cc:	12ae      	lrw      	r5, 0x20000088	// 4204 <TK_Baseline_tracking+0x384>
    40ce:	84c0      	ld.b      	r6, (r4, 0x0)
    40d0:	85a9      	ld.b      	r5, (r5, 0x9)
    40d2:	6594      	cmphs      	r5, r6
    40d4:	0806      	bt      	0x40e0	// 40e0 <TK_Baseline_tracking+0x260>
    40d6:	12ad      	lrw      	r5, 0x20000321	// 4208 <TK_Baseline_tracking+0x388>
    40d8:	3601      	movi      	r6, 1
    40da:	a5c0      	st.b      	r6, (r5, 0x0)
    40dc:	3500      	movi      	r5, 0
    40de:	a4a0      	st.b      	r5, (r4, 0x0)
    40e0:	5f80      	addu      	r4, r7, r0
    40e2:	8c80      	ld.h      	r4, (r4, 0x0)
    40e4:	7513      	sexth      	r4, r4
    40e6:	3cdf      	btsti      	r4, 31
    40e8:	0c10      	bf      	0x4108	// 4108 <TK_Baseline_tracking+0x288>
    40ea:	12cc      	lrw      	r6, 0x200002c8	// 4218 <TK_Baseline_tracking+0x398>
    40ec:	59a0      	addu      	r5, r1, r0
    40ee:	6180      	addu      	r6, r0
    40f0:	8d80      	ld.h      	r4, (r5, 0x0)
    40f2:	8ec0      	ld.h      	r6, (r6, 0x0)
    40f4:	7599      	zexth      	r6, r6
    40f6:	7511      	zexth      	r4, r4
    40f8:	611a      	subu      	r4, r6
    40fa:	8bc0      	ld.h      	r6, (r3, 0x0)
    40fc:	6591      	cmplt      	r4, r6
    40fe:	0c05      	bf      	0x4108	// 4108 <TK_Baseline_tracking+0x288>
    4100:	8d80      	ld.h      	r4, (r5, 0x0)
    4102:	2c00      	subi      	r4, 1
    4104:	7511      	zexth      	r4, r4
    4106:	ad80      	st.h      	r4, (r5, 0x0)
    4108:	5f80      	addu      	r4, r7, r0
    410a:	8c80      	ld.h      	r4, (r4, 0x0)
    410c:	7513      	sexth      	r4, r4
    410e:	3cdf      	btsti      	r4, 31
    4110:	0c11      	bf      	0x4132	// 4132 <TK_Baseline_tracking+0x2b2>
    4112:	12c2      	lrw      	r6, 0x200002c8	// 4218 <TK_Baseline_tracking+0x398>
    4114:	59a0      	addu      	r5, r1, r0
    4116:	6180      	addu      	r6, r0
    4118:	8d80      	ld.h      	r4, (r5, 0x0)
    411a:	8ec0      	ld.h      	r6, (r6, 0x0)
    411c:	7599      	zexth      	r6, r6
    411e:	7511      	zexth      	r4, r4
    4120:	611a      	subu      	r4, r6
    4122:	8bc0      	ld.h      	r6, (r3, 0x0)
    4124:	4ec1      	lsri      	r6, r6, 1
    4126:	6591      	cmplt      	r4, r6
    4128:	0805      	bt      	0x4132	// 4132 <TK_Baseline_tracking+0x2b2>
    412a:	8d80      	ld.h      	r4, (r5, 0x0)
    412c:	2c01      	subi      	r4, 2
    412e:	7511      	zexth      	r4, r4
    4130:	ad80      	st.h      	r4, (r5, 0x0)
    4132:	5fa0      	addu      	r5, r7, r0
    4134:	8d80      	ld.h      	r4, (r5, 0x0)
    4136:	7513      	sexth      	r4, r4
    4138:	3c20      	cmplti      	r4, 1
    413a:	080c      	bt      	0x4152	// 4152 <TK_Baseline_tracking+0x2d2>
    413c:	8da0      	ld.h      	r5, (r5, 0x0)
    413e:	8b80      	ld.h      	r4, (r3, 0x0)
    4140:	7557      	sexth      	r5, r5
    4142:	4c81      	lsri      	r4, r4, 1
    4144:	6515      	cmplt      	r5, r4
    4146:	0c06      	bf      	0x4152	// 4152 <TK_Baseline_tracking+0x2d2>
    4148:	59a0      	addu      	r5, r1, r0
    414a:	8d80      	ld.h      	r4, (r5, 0x0)
    414c:	2400      	addi      	r4, 1
    414e:	7511      	zexth      	r4, r4
    4150:	ad80      	st.h      	r4, (r5, 0x0)
    4152:	5fa0      	addu      	r5, r7, r0
    4154:	8d80      	ld.h      	r4, (r5, 0x0)
    4156:	7513      	sexth      	r4, r4
    4158:	3c20      	cmplti      	r4, 1
    415a:	0810      	bt      	0x417a	// 417a <TK_Baseline_tracking+0x2fa>
    415c:	8dc0      	ld.h      	r6, (r5, 0x0)
    415e:	759b      	sexth      	r6, r6
    4160:	8b80      	ld.h      	r4, (r3, 0x0)
    4162:	6519      	cmplt      	r6, r4
    4164:	0c0b      	bf      	0x417a	// 417a <TK_Baseline_tracking+0x2fa>
    4166:	8da0      	ld.h      	r5, (r5, 0x0)
    4168:	7557      	sexth      	r5, r5
    416a:	4c81      	lsri      	r4, r4, 1
    416c:	6515      	cmplt      	r5, r4
    416e:	0806      	bt      	0x417a	// 417a <TK_Baseline_tracking+0x2fa>
    4170:	6004      	addu      	r0, r1
    4172:	8880      	ld.h      	r4, (r0, 0x0)
    4174:	2401      	addi      	r4, 2
    4176:	7511      	zexth      	r4, r4
    4178:	a880      	st.h      	r4, (r0, 0x0)
    417a:	2200      	addi      	r2, 1
    417c:	3a51      	cmpnei      	r2, 17
    417e:	2301      	addi      	r3, 2
    4180:	0b61      	bt      	0x4042	// 4042 <TK_Baseline_tracking+0x1c2>
    4182:	0695      	br      	0x3eac	// 3eac <TK_Baseline_tracking+0x2c>
    4184:	5f80      	addu      	r4, r7, r0
    4186:	8c80      	ld.h      	r4, (r4, 0x0)
    4188:	7513      	sexth      	r4, r4
    418a:	3cdf      	btsti      	r4, 31
    418c:	0faa      	bf      	0x40e0	// 40e0 <TK_Baseline_tracking+0x260>
    418e:	11a3      	lrw      	r5, 0x200002c8	// 4218 <TK_Baseline_tracking+0x398>
    4190:	5980      	addu      	r4, r1, r0
    4192:	6140      	addu      	r5, r0
    4194:	8c80      	ld.h      	r4, (r4, 0x0)
    4196:	8da0      	ld.h      	r5, (r5, 0x0)
    4198:	7555      	zexth      	r5, r5
    419a:	8bc0      	ld.h      	r6, (r3, 0x0)
    419c:	7511      	zexth      	r4, r4
    419e:	6116      	subu      	r4, r5
    41a0:	46a1      	lsli      	r5, r6, 1
    41a2:	6158      	addu      	r5, r6
    41a4:	6551      	cmplt      	r4, r5
    41a6:	0b9d      	bt      	0x40e0	// 40e0 <TK_Baseline_tracking+0x260>
    41a8:	1098      	lrw      	r4, 0x20000321	// 4208 <TK_Baseline_tracking+0x388>
    41aa:	3501      	movi      	r5, 1
    41ac:	a4a0      	st.b      	r5, (r4, 0x0)
    41ae:	6c03      	mov      	r0, r0
    41b0:	0798      	br      	0x40e0	// 40e0 <TK_Baseline_tracking+0x260>
    41b2:	103d      	lrw      	r1, 0x200004ea	// 4224 <TK_Baseline_tracking+0x3a4>
    41b4:	6dc7      	mov      	r7, r1
    41b6:	b820      	st.w      	r1, (r14, 0x0)
    41b8:	3200      	movi      	r2, 0
    41ba:	106f      	lrw      	r3, 0x20000172	// 41f4 <TK_Baseline_tracking+0x374>
    41bc:	103b      	lrw      	r1, 0x20000482	// 4228 <TK_Baseline_tracking+0x3a8>
    41be:	4201      	lsli      	r0, r2, 1
    41c0:	9880      	ld.w      	r4, (r14, 0x0)
    41c2:	6100      	addu      	r4, r0
    41c4:	8c80      	ld.h      	r4, (r4, 0x0)
    41c6:	7513      	sexth      	r4, r4
    41c8:	3cdf      	btsti      	r4, 31
    41ca:	0c53      	bf      	0x4270	// 4270 <TK_Baseline_tracking+0x3f0>
    41cc:	10b8      	lrw      	r5, 0x200003b6	// 422c <TK_Baseline_tracking+0x3ac>
    41ce:	5980      	addu      	r4, r1, r0
    41d0:	6014      	addu      	r0, r5
    41d2:	b881      	st.w      	r4, (r14, 0x4)
    41d4:	8c80      	ld.h      	r4, (r4, 0x0)
    41d6:	88c0      	ld.h      	r6, (r0, 0x0)
    41d8:	042c      	br      	0x4230	// 4230 <TK_Baseline_tracking+0x3b0>
    41da:	0000      	bkpt
    41dc:	2000037a 	.long	0x2000037a
    41e0:	20000140 	.long	0x20000140
    41e4:	20000284 	.long	0x20000284
    41e8:	20000220 	.long	0x20000220
    41ec:	200002f4 	.long	0x200002f4
    41f0:	200002a0 	.long	0x200002a0
    41f4:	20000172 	.long	0x20000172
    41f8:	200001ec 	.long	0x200001ec
    41fc:	2000050e 	.long	0x2000050e
    4200:	20000430 	.long	0x20000430
    4204:	20000088 	.long	0x20000088
    4208:	20000321 	.long	0x20000321
    420c:	200003a4 	.long	0x200003a4
    4210:	200003d8 	.long	0x200003d8
    4214:	20000382 	.long	0x20000382
    4218:	200002c8 	.long	0x200002c8
    421c:	20000418 	.long	0x20000418
    4220:	20000322 	.long	0x20000322
    4224:	200004ea 	.long	0x200004ea
    4228:	20000482 	.long	0x20000482
    422c:	200003b6 	.long	0x200003b6
    4230:	7511      	zexth      	r4, r4
    4232:	7599      	zexth      	r6, r6
    4234:	8ba0      	ld.h      	r5, (r3, 0x0)
    4236:	611a      	subu      	r4, r6
    4238:	6551      	cmplt      	r4, r5
    423a:	081b      	bt      	0x4270	// 4270 <TK_Baseline_tracking+0x3f0>
    423c:	9881      	ld.w      	r4, (r14, 0x4)
    423e:	8c80      	ld.h      	r4, (r4, 0x0)
    4240:	8800      	ld.h      	r0, (r0, 0x0)
    4242:	7511      	zexth      	r4, r4
    4244:	7401      	zexth      	r0, r0
    4246:	5c01      	subu      	r0, r4, r0
    4248:	4581      	lsli      	r4, r5, 1
    424a:	6150      	addu      	r5, r4
    424c:	6541      	cmplt      	r0, r5
    424e:	0c11      	bf      	0x4270	// 4270 <TK_Baseline_tracking+0x3f0>
    4250:	128d      	lrw      	r4, 0x20000310	// 4384 <TK_Baseline_tracking+0x504>
    4252:	6108      	addu      	r4, r2
    4254:	8400      	ld.b      	r0, (r4, 0x0)
    4256:	2000      	addi      	r0, 1
    4258:	7400      	zextb      	r0, r0
    425a:	a400      	st.b      	r0, (r4, 0x0)
    425c:	120b      	lrw      	r0, 0x20000088	// 4388 <TK_Baseline_tracking+0x508>
    425e:	84a0      	ld.b      	r5, (r4, 0x0)
    4260:	8008      	ld.b      	r0, (r0, 0x8)
    4262:	6540      	cmphs      	r0, r5
    4264:	0806      	bt      	0x4270	// 4270 <TK_Baseline_tracking+0x3f0>
    4266:	120a      	lrw      	r0, 0x20000321	// 438c <TK_Baseline_tracking+0x50c>
    4268:	3501      	movi      	r5, 1
    426a:	a0a0      	st.b      	r5, (r0, 0x0)
    426c:	3000      	movi      	r0, 0
    426e:	a400      	st.b      	r0, (r4, 0x0)
    4270:	4201      	lsli      	r0, r2, 1
    4272:	5f80      	addu      	r4, r7, r0
    4274:	8c80      	ld.h      	r4, (r4, 0x0)
    4276:	7513      	sexth      	r4, r4
    4278:	3c20      	cmplti      	r4, 1
    427a:	0870      	bt      	0x435a	// 435a <TK_Baseline_tracking+0x4da>
    427c:	1285      	lrw      	r4, 0x200003b6	// 4390 <TK_Baseline_tracking+0x510>
    427e:	6100      	addu      	r4, r0
    4280:	59a0      	addu      	r5, r1, r0
    4282:	8c80      	ld.h      	r4, (r4, 0x0)
    4284:	8da0      	ld.h      	r5, (r5, 0x0)
    4286:	7555      	zexth      	r5, r5
    4288:	7511      	zexth      	r4, r4
    428a:	6116      	subu      	r4, r5
    428c:	8ba0      	ld.h      	r5, (r3, 0x0)
    428e:	45a2      	lsli      	r5, r5, 2
    4290:	6551      	cmplt      	r4, r5
    4292:	0864      	bt      	0x435a	// 435a <TK_Baseline_tracking+0x4da>
    4294:	1280      	lrw      	r4, 0x2000020e	// 4394 <TK_Baseline_tracking+0x514>
    4296:	6108      	addu      	r4, r2
    4298:	84a0      	ld.b      	r5, (r4, 0x0)
    429a:	2500      	addi      	r5, 1
    429c:	7554      	zextb      	r5, r5
    429e:	a4a0      	st.b      	r5, (r4, 0x0)
    42a0:	11ba      	lrw      	r5, 0x20000088	// 4388 <TK_Baseline_tracking+0x508>
    42a2:	84c0      	ld.b      	r6, (r4, 0x0)
    42a4:	85a9      	ld.b      	r5, (r5, 0x9)
    42a6:	6594      	cmphs      	r5, r6
    42a8:	0806      	bt      	0x42b4	// 42b4 <TK_Baseline_tracking+0x434>
    42aa:	11b9      	lrw      	r5, 0x20000321	// 438c <TK_Baseline_tracking+0x50c>
    42ac:	3601      	movi      	r6, 1
    42ae:	a5c0      	st.b      	r6, (r5, 0x0)
    42b0:	3500      	movi      	r5, 0
    42b2:	a4a0      	st.b      	r5, (r4, 0x0)
    42b4:	5f80      	addu      	r4, r7, r0
    42b6:	8c80      	ld.h      	r4, (r4, 0x0)
    42b8:	7513      	sexth      	r4, r4
    42ba:	3cdf      	btsti      	r4, 31
    42bc:	0c10      	bf      	0x42dc	// 42dc <TK_Baseline_tracking+0x45c>
    42be:	11d5      	lrw      	r6, 0x200003b6	// 4390 <TK_Baseline_tracking+0x510>
    42c0:	59a0      	addu      	r5, r1, r0
    42c2:	6180      	addu      	r6, r0
    42c4:	8d80      	ld.h      	r4, (r5, 0x0)
    42c6:	8ec0      	ld.h      	r6, (r6, 0x0)
    42c8:	7599      	zexth      	r6, r6
    42ca:	7511      	zexth      	r4, r4
    42cc:	611a      	subu      	r4, r6
    42ce:	8bc0      	ld.h      	r6, (r3, 0x0)
    42d0:	6591      	cmplt      	r4, r6
    42d2:	0c05      	bf      	0x42dc	// 42dc <TK_Baseline_tracking+0x45c>
    42d4:	8d80      	ld.h      	r4, (r5, 0x0)
    42d6:	2c00      	subi      	r4, 1
    42d8:	7511      	zexth      	r4, r4
    42da:	ad80      	st.h      	r4, (r5, 0x0)
    42dc:	5f80      	addu      	r4, r7, r0
    42de:	8c80      	ld.h      	r4, (r4, 0x0)
    42e0:	7513      	sexth      	r4, r4
    42e2:	3cdf      	btsti      	r4, 31
    42e4:	0c11      	bf      	0x4306	// 4306 <TK_Baseline_tracking+0x486>
    42e6:	11cb      	lrw      	r6, 0x200003b6	// 4390 <TK_Baseline_tracking+0x510>
    42e8:	59a0      	addu      	r5, r1, r0
    42ea:	6180      	addu      	r6, r0
    42ec:	8d80      	ld.h      	r4, (r5, 0x0)
    42ee:	8ec0      	ld.h      	r6, (r6, 0x0)
    42f0:	7599      	zexth      	r6, r6
    42f2:	7511      	zexth      	r4, r4
    42f4:	611a      	subu      	r4, r6
    42f6:	8bc0      	ld.h      	r6, (r3, 0x0)
    42f8:	4ec1      	lsri      	r6, r6, 1
    42fa:	6591      	cmplt      	r4, r6
    42fc:	0805      	bt      	0x4306	// 4306 <TK_Baseline_tracking+0x486>
    42fe:	8d80      	ld.h      	r4, (r5, 0x0)
    4300:	2c01      	subi      	r4, 2
    4302:	7511      	zexth      	r4, r4
    4304:	ad80      	st.h      	r4, (r5, 0x0)
    4306:	5fa0      	addu      	r5, r7, r0
    4308:	8d80      	ld.h      	r4, (r5, 0x0)
    430a:	7513      	sexth      	r4, r4
    430c:	3c20      	cmplti      	r4, 1
    430e:	080c      	bt      	0x4326	// 4326 <TK_Baseline_tracking+0x4a6>
    4310:	8da0      	ld.h      	r5, (r5, 0x0)
    4312:	8b80      	ld.h      	r4, (r3, 0x0)
    4314:	7557      	sexth      	r5, r5
    4316:	4c81      	lsri      	r4, r4, 1
    4318:	6515      	cmplt      	r5, r4
    431a:	0c06      	bf      	0x4326	// 4326 <TK_Baseline_tracking+0x4a6>
    431c:	59a0      	addu      	r5, r1, r0
    431e:	8d80      	ld.h      	r4, (r5, 0x0)
    4320:	2400      	addi      	r4, 1
    4322:	7511      	zexth      	r4, r4
    4324:	ad80      	st.h      	r4, (r5, 0x0)
    4326:	5fa0      	addu      	r5, r7, r0
    4328:	8d80      	ld.h      	r4, (r5, 0x0)
    432a:	7513      	sexth      	r4, r4
    432c:	3c20      	cmplti      	r4, 1
    432e:	0810      	bt      	0x434e	// 434e <TK_Baseline_tracking+0x4ce>
    4330:	8dc0      	ld.h      	r6, (r5, 0x0)
    4332:	759b      	sexth      	r6, r6
    4334:	8b80      	ld.h      	r4, (r3, 0x0)
    4336:	6519      	cmplt      	r6, r4
    4338:	0c0b      	bf      	0x434e	// 434e <TK_Baseline_tracking+0x4ce>
    433a:	8da0      	ld.h      	r5, (r5, 0x0)
    433c:	7557      	sexth      	r5, r5
    433e:	4c81      	lsri      	r4, r4, 1
    4340:	6515      	cmplt      	r5, r4
    4342:	0806      	bt      	0x434e	// 434e <TK_Baseline_tracking+0x4ce>
    4344:	6004      	addu      	r0, r1
    4346:	8880      	ld.h      	r4, (r0, 0x0)
    4348:	2401      	addi      	r4, 2
    434a:	7511      	zexth      	r4, r4
    434c:	a880      	st.h      	r4, (r0, 0x0)
    434e:	2200      	addi      	r2, 1
    4350:	3a51      	cmpnei      	r2, 17
    4352:	2301      	addi      	r3, 2
    4354:	0b35      	bt      	0x41be	// 41be <TK_Baseline_tracking+0x33e>
    4356:	e800fdb0 	br      	0x3eb6	// 3eb6 <TK_Baseline_tracking+0x36>
    435a:	5f80      	addu      	r4, r7, r0
    435c:	8c80      	ld.h      	r4, (r4, 0x0)
    435e:	7513      	sexth      	r4, r4
    4360:	3cdf      	btsti      	r4, 31
    4362:	0fa9      	bf      	0x42b4	// 42b4 <TK_Baseline_tracking+0x434>
    4364:	10ab      	lrw      	r5, 0x200003b6	// 4390 <TK_Baseline_tracking+0x510>
    4366:	5980      	addu      	r4, r1, r0
    4368:	6140      	addu      	r5, r0
    436a:	8c80      	ld.h      	r4, (r4, 0x0)
    436c:	8da0      	ld.h      	r5, (r5, 0x0)
    436e:	7555      	zexth      	r5, r5
    4370:	8bc0      	ld.h      	r6, (r3, 0x0)
    4372:	7511      	zexth      	r4, r4
    4374:	6116      	subu      	r4, r5
    4376:	46a1      	lsli      	r5, r6, 1
    4378:	6158      	addu      	r5, r6
    437a:	6551      	cmplt      	r4, r5
    437c:	0b9c      	bt      	0x42b4	// 42b4 <TK_Baseline_tracking+0x434>
    437e:	1084      	lrw      	r4, 0x20000321	// 438c <TK_Baseline_tracking+0x50c>
    4380:	3501      	movi      	r5, 1
    4382:	0798      	br      	0x42b2	// 42b2 <TK_Baseline_tracking+0x432>
    4384:	20000310 	.long	0x20000310
    4388:	20000088 	.long	0x20000088
    438c:	20000321 	.long	0x20000321
    4390:	200003b6 	.long	0x200003b6
    4394:	2000020e 	.long	0x2000020e

Disassembly of section .text.TK_result_prog:

00004398 <TK_result_prog>:
    4398:	14d4      	push      	r4-r7, r15
    439a:	1421      	subi      	r14, r14, 4
    439c:	121a      	lrw      	r0, 0x20000284	// 4504 <TK_result_prog+0x16c>
    439e:	12bb      	lrw      	r5, 0x20000220	// 4508 <TK_result_prog+0x170>
    43a0:	127b      	lrw      	r3, 0x200002f4	// 450c <TK_result_prog+0x174>
    43a2:	123b      	lrw      	r1, 0x200002f4	// 450c <TK_result_prog+0x174>
    43a4:	129b      	lrw      	r4, 0x2000037c	// 4510 <TK_result_prog+0x178>
    43a6:	90c0      	ld.w      	r6, (r0, 0x0)
    43a8:	9540      	ld.w      	r2, (r5, 0x0)
    43aa:	6d88      	or      	r6, r2
    43ac:	b860      	st.w      	r3, (r14, 0x0)
    43ae:	9360      	ld.w      	r3, (r3, 0x0)
    43b0:	6d8c      	or      	r6, r3
    43b2:	3e40      	cmpnei      	r6, 0
    43b4:	6c83      	mov      	r2, r0
    43b6:	6cd7      	mov      	r3, r5
    43b8:	0c8f      	bf      	0x44d6	// 44d6 <TK_result_prog+0x13e>
    43ba:	12d7      	lrw      	r6, 0x20000104	// 4514 <TK_result_prog+0x17c>
    43bc:	86e0      	ld.b      	r7, (r6, 0x0)
    43be:	3f41      	cmpnei      	r7, 1
    43c0:	080e      	bt      	0x43dc	// 43dc <TK_result_prog+0x44>
    43c2:	9040      	ld.w      	r2, (r0, 0x0)
    43c4:	9560      	ld.w      	r3, (r5, 0x0)
    43c6:	64ca      	cmpne      	r2, r3
    43c8:	0807      	bt      	0x43d6	// 43d6 <TK_result_prog+0x3e>
    43ca:	9540      	ld.w      	r2, (r5, 0x0)
    43cc:	9160      	ld.w      	r3, (r1, 0x0)
    43ce:	64ca      	cmpne      	r2, r3
    43d0:	0803      	bt      	0x43d6	// 43d6 <TK_result_prog+0x3e>
    43d2:	9060      	ld.w      	r3, (r0, 0x0)
    43d4:	0402      	br      	0x43d8	// 43d8 <TK_result_prog+0x40>
    43d6:	3300      	movi      	r3, 0
    43d8:	b460      	st.w      	r3, (r4, 0x0)
    43da:	0420      	br      	0x441a	// 441a <TK_result_prog+0x82>
    43dc:	86c0      	ld.b      	r6, (r6, 0x0)
    43de:	3e40      	cmpnei      	r6, 0
    43e0:	081d      	bt      	0x441a	// 441a <TK_result_prog+0x82>
    43e2:	90c0      	ld.w      	r6, (r0, 0x0)
    43e4:	6ddb      	mov      	r7, r6
    43e6:	95c0      	ld.w      	r6, (r5, 0x0)
    43e8:	659e      	cmpne      	r7, r6
    43ea:	0806      	bt      	0x43f6	// 43f6 <TK_result_prog+0x5e>
    43ec:	95c0      	ld.w      	r6, (r5, 0x0)
    43ee:	12a8      	lrw      	r5, 0x200002f4	// 450c <TK_result_prog+0x174>
    43f0:	95a0      	ld.w      	r5, (r5, 0x0)
    43f2:	655a      	cmpne      	r6, r5
    43f4:	0fef      	bf      	0x43d2	// 43d2 <TK_result_prog+0x3a>
    43f6:	9300      	ld.w      	r0, (r3, 0x0)
    43f8:	3840      	cmpnei      	r0, 0
    43fa:	0c2a      	bf      	0x444e	// 444e <TK_result_prog+0xb6>
    43fc:	9100      	ld.w      	r0, (r1, 0x0)
    43fe:	3840      	cmpnei      	r0, 0
    4400:	0c27      	bf      	0x444e	// 444e <TK_result_prog+0xb6>
    4402:	93a0      	ld.w      	r5, (r3, 0x0)
    4404:	9100      	ld.w      	r0, (r1, 0x0)
    4406:	6416      	cmpne      	r5, r0
    4408:	0823      	bt      	0x444e	// 444e <TK_result_prog+0xb6>
    440a:	9360      	ld.w      	r3, (r3, 0x0)
    440c:	b460      	st.w      	r3, (r4, 0x0)
    440e:	9220      	ld.w      	r1, (r2, 0x0)
    4410:	9460      	ld.w      	r3, (r4, 0x0)
    4412:	64c6      	cmpne      	r1, r3
    4414:	0c03      	bf      	0x441a	// 441a <TK_result_prog+0x82>
    4416:	3300      	movi      	r3, 0
    4418:	b260      	st.w      	r3, (r2, 0x0)
    441a:	9460      	ld.w      	r3, (r4, 0x0)
    441c:	3b40      	cmpnei      	r3, 0
    441e:	115f      	lrw      	r2, 0x2000046c	// 4518 <TK_result_prog+0x180>
    4420:	0c6a      	bf      	0x44f4	// 44f4 <TK_result_prog+0x15c>
    4422:	9420      	ld.w      	r1, (r4, 0x0)
    4424:	9260      	ld.w      	r3, (r2, 0x0)
    4426:	64c6      	cmpne      	r1, r3
    4428:	0c06      	bf      	0x4434	// 4434 <TK_result_prog+0x9c>
    442a:	9460      	ld.w      	r3, (r4, 0x0)
    442c:	b260      	st.w      	r3, (r2, 0x0)
    442e:	3200      	movi      	r2, 0
    4430:	117b      	lrw      	r3, 0x2000029e	// 451c <TK_result_prog+0x184>
    4432:	a340      	st.b      	r2, (r3, 0x0)
    4434:	e3fff812 	bsr      	0x3458	// 3458 <get_key_number>
    4438:	117a      	lrw      	r3, 0x20000148	// 4520 <TK_result_prog+0x188>
    443a:	8360      	ld.b      	r3, (r3, 0x0)
    443c:	640c      	cmphs      	r3, r0
    443e:	0806      	bt      	0x444a	// 444a <TK_result_prog+0xb2>
    4440:	3300      	movi      	r3, 0
    4442:	b460      	st.w      	r3, (r4, 0x0)
    4444:	3201      	movi      	r2, 1
    4446:	1176      	lrw      	r3, 0x2000029e	// 451c <TK_result_prog+0x184>
    4448:	a340      	st.b      	r2, (r3, 0x0)
    444a:	1401      	addi      	r14, r14, 4
    444c:	1494      	pop      	r4-r7, r15
    444e:	9200      	ld.w      	r0, (r2, 0x0)
    4450:	3840      	cmpnei      	r0, 0
    4452:	0c11      	bf      	0x4474	// 4474 <TK_result_prog+0xdc>
    4454:	9300      	ld.w      	r0, (r3, 0x0)
    4456:	3840      	cmpnei      	r0, 0
    4458:	0c0e      	bf      	0x4474	// 4474 <TK_result_prog+0xdc>
    445a:	92a0      	ld.w      	r5, (r2, 0x0)
    445c:	9300      	ld.w      	r0, (r3, 0x0)
    445e:	6416      	cmpne      	r5, r0
    4460:	080a      	bt      	0x4474	// 4474 <TK_result_prog+0xdc>
    4462:	9260      	ld.w      	r3, (r2, 0x0)
    4464:	b460      	st.w      	r3, (r4, 0x0)
    4466:	9140      	ld.w      	r2, (r1, 0x0)
    4468:	9460      	ld.w      	r3, (r4, 0x0)
    446a:	64ca      	cmpne      	r2, r3
    446c:	0fd7      	bf      	0x441a	// 441a <TK_result_prog+0x82>
    446e:	3300      	movi      	r3, 0
    4470:	b160      	st.w      	r3, (r1, 0x0)
    4472:	07d4      	br      	0x441a	// 441a <TK_result_prog+0x82>
    4474:	9200      	ld.w      	r0, (r2, 0x0)
    4476:	3840      	cmpnei      	r0, 0
    4478:	0c11      	bf      	0x449a	// 449a <TK_result_prog+0x102>
    447a:	9100      	ld.w      	r0, (r1, 0x0)
    447c:	3840      	cmpnei      	r0, 0
    447e:	0c0e      	bf      	0x449a	// 449a <TK_result_prog+0x102>
    4480:	92a0      	ld.w      	r5, (r2, 0x0)
    4482:	9100      	ld.w      	r0, (r1, 0x0)
    4484:	6416      	cmpne      	r5, r0
    4486:	080a      	bt      	0x449a	// 449a <TK_result_prog+0x102>
    4488:	9140      	ld.w      	r2, (r1, 0x0)
    448a:	b440      	st.w      	r2, (r4, 0x0)
    448c:	9320      	ld.w      	r1, (r3, 0x0)
    448e:	9440      	ld.w      	r2, (r4, 0x0)
    4490:	6486      	cmpne      	r1, r2
    4492:	0fc4      	bf      	0x441a	// 441a <TK_result_prog+0x82>
    4494:	3200      	movi      	r2, 0
    4496:	b340      	st.w      	r2, (r3, 0x0)
    4498:	07c1      	br      	0x441a	// 441a <TK_result_prog+0x82>
    449a:	9200      	ld.w      	r0, (r2, 0x0)
    449c:	3840      	cmpnei      	r0, 0
    449e:	0c09      	bf      	0x44b0	// 44b0 <TK_result_prog+0x118>
    44a0:	9300      	ld.w      	r0, (r3, 0x0)
    44a2:	3840      	cmpnei      	r0, 0
    44a4:	0806      	bt      	0x44b0	// 44b0 <TK_result_prog+0x118>
    44a6:	9100      	ld.w      	r0, (r1, 0x0)
    44a8:	3840      	cmpnei      	r0, 0
    44aa:	0803      	bt      	0x44b0	// 44b0 <TK_result_prog+0x118>
    44ac:	b400      	st.w      	r0, (r4, 0x0)
    44ae:	07b6      	br      	0x441a	// 441a <TK_result_prog+0x82>
    44b0:	9300      	ld.w      	r0, (r3, 0x0)
    44b2:	3840      	cmpnei      	r0, 0
    44b4:	0c07      	bf      	0x44c2	// 44c2 <TK_result_prog+0x12a>
    44b6:	9200      	ld.w      	r0, (r2, 0x0)
    44b8:	3840      	cmpnei      	r0, 0
    44ba:	0804      	bt      	0x44c2	// 44c2 <TK_result_prog+0x12a>
    44bc:	9100      	ld.w      	r0, (r1, 0x0)
    44be:	3840      	cmpnei      	r0, 0
    44c0:	0ff6      	bf      	0x44ac	// 44ac <TK_result_prog+0x114>
    44c2:	9120      	ld.w      	r1, (r1, 0x0)
    44c4:	3940      	cmpnei      	r1, 0
    44c6:	0faa      	bf      	0x441a	// 441a <TK_result_prog+0x82>
    44c8:	9240      	ld.w      	r2, (r2, 0x0)
    44ca:	3a40      	cmpnei      	r2, 0
    44cc:	0ba7      	bt      	0x441a	// 441a <TK_result_prog+0x82>
    44ce:	9360      	ld.w      	r3, (r3, 0x0)
    44d0:	3b40      	cmpnei      	r3, 0
    44d2:	0ba4      	bt      	0x441a	// 441a <TK_result_prog+0x82>
    44d4:	0782      	br      	0x43d8	// 43d8 <TK_result_prog+0x40>
    44d6:	3200      	movi      	r2, 0
    44d8:	1073      	lrw      	r3, 0x2000042a	// 4524 <TK_result_prog+0x18c>
    44da:	b4c0      	st.w      	r6, (r4, 0x0)
    44dc:	ab40      	st.h      	r2, (r3, 0x0)
    44de:	1073      	lrw      	r3, 0x2000024c	// 4528 <TK_result_prog+0x190>
    44e0:	ab40      	st.h      	r2, (r3, 0x0)
    44e2:	1073      	lrw      	r3, 0x2000050c	// 452c <TK_result_prog+0x194>
    44e4:	ab40      	st.h      	r2, (r3, 0x0)
    44e6:	1073      	lrw      	r3, 0x2000042e	// 4530 <TK_result_prog+0x198>
    44e8:	ab40      	st.h      	r2, (r3, 0x0)
    44ea:	1073      	lrw      	r3, 0x200002c2	// 4534 <TK_result_prog+0x19c>
    44ec:	ab40      	st.h      	r2, (r3, 0x0)
    44ee:	1073      	lrw      	r3, 0x20000380	// 4538 <TK_result_prog+0x1a0>
    44f0:	ab40      	st.h      	r2, (r3, 0x0)
    44f2:	0794      	br      	0x441a	// 441a <TK_result_prog+0x82>
    44f4:	b260      	st.w      	r3, (r2, 0x0)
    44f6:	3100      	movi      	r1, 0
    44f8:	1049      	lrw      	r2, 0x2000029e	// 451c <TK_result_prog+0x184>
    44fa:	a220      	st.b      	r1, (r2, 0x0)
    44fc:	1050      	lrw      	r2, 0x20000374	// 453c <TK_result_prog+0x1a4>
    44fe:	b260      	st.w      	r3, (r2, 0x0)
    4500:	07a5      	br      	0x444a	// 444a <TK_result_prog+0xb2>
    4502:	0000      	bkpt
    4504:	20000284 	.long	0x20000284
    4508:	20000220 	.long	0x20000220
    450c:	200002f4 	.long	0x200002f4
    4510:	2000037c 	.long	0x2000037c
    4514:	20000104 	.long	0x20000104
    4518:	2000046c 	.long	0x2000046c
    451c:	2000029e 	.long	0x2000029e
    4520:	20000148 	.long	0x20000148
    4524:	2000042a 	.long	0x2000042a
    4528:	2000024c 	.long	0x2000024c
    452c:	2000050c 	.long	0x2000050c
    4530:	2000042e 	.long	0x2000042e
    4534:	200002c2 	.long	0x200002c2
    4538:	20000380 	.long	0x20000380
    453c:	20000374 	.long	0x20000374

Disassembly of section .text.TKEYIntHandler:

00004540 <TKEYIntHandler>:
    4540:	1460      	nie
    4542:	1462      	ipush
    4544:	14d1      	push      	r4, r15
    4546:	1183      	lrw      	r4, 0x20000068	// 45d0 <TKEYIntHandler+0x90>
    4548:	8460      	ld.b      	r3, (r4, 0x0)
    454a:	3b40      	cmpnei      	r3, 0
    454c:	0815      	bt      	0x4576	// 4576 <TKEYIntHandler+0x36>
    454e:	3301      	movi      	r3, 1
    4550:	a460      	st.b      	r3, (r4, 0x0)
    4552:	1161      	lrw      	r3, 0x2000028c	// 45d4 <TKEYIntHandler+0x94>
    4554:	8360      	ld.b      	r3, (r3, 0x0)
    4556:	3b41      	cmpnei      	r3, 1
    4558:	080f      	bt      	0x4576	// 4576 <TKEYIntHandler+0x36>
    455a:	1140      	lrw      	r2, 0x20000481	// 45d8 <TKEYIntHandler+0x98>
    455c:	8260      	ld.b      	r3, (r2, 0x0)
    455e:	2300      	addi      	r3, 1
    4560:	74cc      	zextb      	r3, r3
    4562:	a260      	st.b      	r3, (r2, 0x0)
    4564:	8260      	ld.b      	r3, (r2, 0x0)
    4566:	3b43      	cmpnei      	r3, 3
    4568:	0803      	bt      	0x456e	// 456e <TKEYIntHandler+0x2e>
    456a:	3300      	movi      	r3, 0
    456c:	a260      	st.b      	r3, (r2, 0x0)
    456e:	e3fff70f 	bsr      	0x338c	// 338c <TK_Sampling_prog>
    4572:	3301      	movi      	r3, 1
    4574:	a463      	st.b      	r3, (r4, 0x3)
    4576:	107a      	lrw      	r3, 0x20000058	// 45dc <TKEYIntHandler+0x9c>
    4578:	3101      	movi      	r1, 1
    457a:	9360      	ld.w      	r3, (r3, 0x0)
    457c:	934a      	ld.w      	r2, (r3, 0x28)
    457e:	6884      	and      	r2, r1
    4580:	3a40      	cmpnei      	r2, 0
    4582:	0c02      	bf      	0x4586	// 4586 <TKEYIntHandler+0x46>
    4584:	b32c      	st.w      	r1, (r3, 0x30)
    4586:	934a      	ld.w      	r2, (r3, 0x28)
    4588:	3102      	movi      	r1, 2
    458a:	6884      	and      	r2, r1
    458c:	3a40      	cmpnei      	r2, 0
    458e:	0c02      	bf      	0x4592	// 4592 <TKEYIntHandler+0x52>
    4590:	b32c      	st.w      	r1, (r3, 0x30)
    4592:	934a      	ld.w      	r2, (r3, 0x28)
    4594:	3104      	movi      	r1, 4
    4596:	6884      	and      	r2, r1
    4598:	3a40      	cmpnei      	r2, 0
    459a:	0c02      	bf      	0x459e	// 459e <TKEYIntHandler+0x5e>
    459c:	b32c      	st.w      	r1, (r3, 0x30)
    459e:	934a      	ld.w      	r2, (r3, 0x28)
    45a0:	3108      	movi      	r1, 8
    45a2:	6884      	and      	r2, r1
    45a4:	3a40      	cmpnei      	r2, 0
    45a6:	0c02      	bf      	0x45aa	// 45aa <TKEYIntHandler+0x6a>
    45a8:	b32c      	st.w      	r1, (r3, 0x30)
    45aa:	934a      	ld.w      	r2, (r3, 0x28)
    45ac:	3110      	movi      	r1, 16
    45ae:	6884      	and      	r2, r1
    45b0:	3a40      	cmpnei      	r2, 0
    45b2:	0c02      	bf      	0x45b6	// 45b6 <TKEYIntHandler+0x76>
    45b4:	b32c      	st.w      	r1, (r3, 0x30)
    45b6:	934a      	ld.w      	r2, (r3, 0x28)
    45b8:	3120      	movi      	r1, 32
    45ba:	6884      	and      	r2, r1
    45bc:	3a40      	cmpnei      	r2, 0
    45be:	0c02      	bf      	0x45c2	// 45c2 <TKEYIntHandler+0x82>
    45c0:	b32c      	st.w      	r1, (r3, 0x30)
    45c2:	d9ee2001 	ld.w      	r15, (r14, 0x4)
    45c6:	9880      	ld.w      	r4, (r14, 0x0)
    45c8:	1402      	addi      	r14, r14, 8
    45ca:	1463      	ipop
    45cc:	1461      	nir
    45ce:	0000      	bkpt
    45d0:	20000068 	.long	0x20000068
    45d4:	2000028c 	.long	0x2000028c
    45d8:	20000481 	.long	0x20000481
    45dc:	20000058 	.long	0x20000058

Disassembly of section .text.CORETHandler:

000045e0 <CORETHandler>:
    45e0:	1460      	nie
    45e2:	1462      	ipush
    45e4:	14d3      	push      	r4-r6, r15
    45e6:	126e      	lrw      	r3, 0x20000064	// 471c <CORETHandler+0x13c>
    45e8:	3400      	movi      	r4, 0
    45ea:	9360      	ld.w      	r3, (r3, 0x0)
    45ec:	b386      	st.w      	r4, (r3, 0x18)
    45ee:	126d      	lrw      	r3, 0x2000028c	// 4720 <CORETHandler+0x140>
    45f0:	8360      	ld.b      	r3, (r3, 0x0)
    45f2:	3b41      	cmpnei      	r3, 1
    45f4:	0844      	bt      	0x467c	// 467c <CORETHandler+0x9c>
    45f6:	e3fff745 	bsr      	0x3480	// 3480 <TK_Scan_Start>
    45fa:	e3fff777 	bsr      	0x34e8	// 34e8 <TK_Keymap_prog>
    45fe:	e3fffbad 	bsr      	0x3d58	// 3d58 <TK_overflow_predict>
    4602:	e3fffc3f 	bsr      	0x3e80	// 3e80 <TK_Baseline_tracking>
    4606:	e3fffec9 	bsr      	0x4398	// 4398 <TK_result_prog>
    460a:	1267      	lrw      	r3, 0x2000037c	// 4724 <CORETHandler+0x144>
    460c:	9360      	ld.w      	r3, (r3, 0x0)
    460e:	3b40      	cmpnei      	r3, 0
    4610:	0c12      	bf      	0x4634	// 4634 <CORETHandler+0x54>
    4612:	1266      	lrw      	r3, 0x20000110	// 4728 <CORETHandler+0x148>
    4614:	9340      	ld.w      	r2, (r3, 0x0)
    4616:	3a40      	cmpnei      	r2, 0
    4618:	0c0e      	bf      	0x4634	// 4634 <CORETHandler+0x54>
    461a:	1265      	lrw      	r3, 0x20000374	// 472c <CORETHandler+0x14c>
    461c:	3064      	movi      	r0, 100
    461e:	9320      	ld.w      	r1, (r3, 0x0)
    4620:	2100      	addi      	r1, 1
    4622:	b320      	st.w      	r1, (r3, 0x0)
    4624:	9320      	ld.w      	r1, (r3, 0x0)
    4626:	7c80      	mult      	r2, r0
    4628:	6448      	cmphs      	r2, r1
    462a:	0805      	bt      	0x4634	// 4634 <CORETHandler+0x54>
    462c:	1241      	lrw      	r2, 0x20000321	// 4730 <CORETHandler+0x150>
    462e:	3101      	movi      	r1, 1
    4630:	a220      	st.b      	r1, (r2, 0x0)
    4632:	b380      	st.w      	r4, (r3, 0x0)
    4634:	1260      	lrw      	r3, 0x20000104	// 4734 <CORETHandler+0x154>
    4636:	8340      	ld.b      	r2, (r3, 0x0)
    4638:	3a41      	cmpnei      	r2, 1
    463a:	0829      	bt      	0x468c	// 468c <CORETHandler+0xac>
    463c:	113f      	lrw      	r1, 0x20000284	// 4738 <CORETHandler+0x158>
    463e:	1240      	lrw      	r2, 0x20000220	// 473c <CORETHandler+0x15c>
    4640:	9100      	ld.w      	r0, (r1, 0x0)
    4642:	9260      	ld.w      	r3, (r2, 0x0)
    4644:	64c2      	cmpne      	r0, r3
    4646:	117f      	lrw      	r3, 0x20000414	// 4740 <CORETHandler+0x160>
    4648:	080a      	bt      	0x465c	// 465c <CORETHandler+0x7c>
    464a:	9280      	ld.w      	r4, (r2, 0x0)
    464c:	115e      	lrw      	r2, 0x200002f4	// 4744 <CORETHandler+0x164>
    464e:	9200      	ld.w      	r0, (r2, 0x0)
    4650:	6412      	cmpne      	r4, r0
    4652:	0805      	bt      	0x465c	// 465c <CORETHandler+0x7c>
    4654:	9120      	ld.w      	r1, (r1, 0x0)
    4656:	9240      	ld.w      	r2, (r2, 0x0)
    4658:	6486      	cmpne      	r1, r2
    465a:	0c0f      	bf      	0x4678	// 4678 <CORETHandler+0x98>
    465c:	9340      	ld.w      	r2, (r3, 0x0)
    465e:	2200      	addi      	r2, 1
    4660:	b340      	st.w      	r2, (r3, 0x0)
    4662:	115a      	lrw      	r2, 0x20000088	// 4748 <CORETHandler+0x168>
    4664:	8238      	ld.b      	r1, (r2, 0x18)
    4666:	9340      	ld.w      	r2, (r3, 0x0)
    4668:	6484      	cmphs      	r1, r2
    466a:	0809      	bt      	0x467c	// 467c <CORETHandler+0x9c>
    466c:	3200      	movi      	r2, 0
    466e:	b340      	st.w      	r2, (r3, 0x0)
    4670:	1170      	lrw      	r3, 0x20000321	// 4730 <CORETHandler+0x150>
    4672:	3201      	movi      	r2, 1
    4674:	a340      	st.b      	r2, (r3, 0x0)
    4676:	0403      	br      	0x467c	// 467c <CORETHandler+0x9c>
    4678:	3200      	movi      	r2, 0
    467a:	b340      	st.w      	r2, (r3, 0x0)
    467c:	d9ee2003 	ld.w      	r15, (r14, 0xc)
    4680:	98c2      	ld.w      	r6, (r14, 0x8)
    4682:	98a1      	ld.w      	r5, (r14, 0x4)
    4684:	9880      	ld.w      	r4, (r14, 0x0)
    4686:	1404      	addi      	r14, r14, 16
    4688:	1463      	ipop
    468a:	1461      	nir
    468c:	83a0      	ld.b      	r5, (r3, 0x0)
    468e:	7554      	zextb      	r5, r5
    4690:	3d40      	cmpnei      	r5, 0
    4692:	0bf5      	bt      	0x467c	// 467c <CORETHandler+0x9c>
    4694:	1169      	lrw      	r3, 0x20000284	// 4738 <CORETHandler+0x158>
    4696:	114a      	lrw      	r2, 0x20000220	// 473c <CORETHandler+0x15c>
    4698:	9300      	ld.w      	r0, (r3, 0x0)
    469a:	9220      	ld.w      	r1, (r2, 0x0)
    469c:	6442      	cmpne      	r0, r1
    469e:	112a      	lrw      	r1, 0x200002f4	// 4744 <CORETHandler+0x164>
    46a0:	1108      	lrw      	r0, 0x20000414	// 4740 <CORETHandler+0x160>
    46a2:	0c36      	bf      	0x470e	// 470e <CORETHandler+0x12e>
    46a4:	92c0      	ld.w      	r6, (r2, 0x0)
    46a6:	9180      	ld.w      	r4, (r1, 0x0)
    46a8:	651a      	cmpne      	r6, r4
    46aa:	0c32      	bf      	0x470e	// 470e <CORETHandler+0x12e>
    46ac:	93c0      	ld.w      	r6, (r3, 0x0)
    46ae:	9180      	ld.w      	r4, (r1, 0x0)
    46b0:	651a      	cmpne      	r6, r4
    46b2:	0c2e      	bf      	0x470e	// 470e <CORETHandler+0x12e>
    46b4:	9080      	ld.w      	r4, (r0, 0x0)
    46b6:	2400      	addi      	r4, 1
    46b8:	b080      	st.w      	r4, (r0, 0x0)
    46ba:	1184      	lrw      	r4, 0x20000088	// 4748 <CORETHandler+0x168>
    46bc:	84d8      	ld.b      	r6, (r4, 0x18)
    46be:	9080      	ld.w      	r4, (r0, 0x0)
    46c0:	6518      	cmphs      	r6, r4
    46c2:	0805      	bt      	0x46cc	// 46cc <CORETHandler+0xec>
    46c4:	b0a0      	st.w      	r5, (r0, 0x0)
    46c6:	3401      	movi      	r4, 1
    46c8:	101a      	lrw      	r0, 0x20000321	// 4730 <CORETHandler+0x150>
    46ca:	a080      	st.b      	r4, (r0, 0x0)
    46cc:	9380      	ld.w      	r4, (r3, 0x0)
    46ce:	9200      	ld.w      	r0, (r2, 0x0)
    46d0:	6412      	cmpne      	r4, r0
    46d2:	101f      	lrw      	r0, 0x20000444	// 474c <CORETHandler+0x16c>
    46d4:	0c04      	bf      	0x46dc	// 46dc <CORETHandler+0xfc>
    46d6:	9180      	ld.w      	r4, (r1, 0x0)
    46d8:	3c40      	cmpnei      	r4, 0
    46da:	0c0f      	bf      	0x46f8	// 46f8 <CORETHandler+0x118>
    46dc:	93a0      	ld.w      	r5, (r3, 0x0)
    46de:	9180      	ld.w      	r4, (r1, 0x0)
    46e0:	6516      	cmpne      	r5, r4
    46e2:	0c04      	bf      	0x46ea	// 46ea <CORETHandler+0x10a>
    46e4:	9280      	ld.w      	r4, (r2, 0x0)
    46e6:	3c40      	cmpnei      	r4, 0
    46e8:	0c08      	bf      	0x46f8	// 46f8 <CORETHandler+0x118>
    46ea:	9120      	ld.w      	r1, (r1, 0x0)
    46ec:	9240      	ld.w      	r2, (r2, 0x0)
    46ee:	6486      	cmpne      	r1, r2
    46f0:	0c12      	bf      	0x4714	// 4714 <CORETHandler+0x134>
    46f2:	9360      	ld.w      	r3, (r3, 0x0)
    46f4:	3b40      	cmpnei      	r3, 0
    46f6:	080f      	bt      	0x4714	// 4714 <CORETHandler+0x134>
    46f8:	9060      	ld.w      	r3, (r0, 0x0)
    46fa:	2300      	addi      	r3, 1
    46fc:	b060      	st.w      	r3, (r0, 0x0)
    46fe:	1073      	lrw      	r3, 0x20000088	// 4748 <CORETHandler+0x168>
    4700:	8358      	ld.b      	r2, (r3, 0x18)
    4702:	9060      	ld.w      	r3, (r0, 0x0)
    4704:	64c8      	cmphs      	r2, r3
    4706:	0bbb      	bt      	0x467c	// 467c <CORETHandler+0x9c>
    4708:	3300      	movi      	r3, 0
    470a:	b060      	st.w      	r3, (r0, 0x0)
    470c:	07b2      	br      	0x4670	// 4670 <CORETHandler+0x90>
    470e:	3400      	movi      	r4, 0
    4710:	b080      	st.w      	r4, (r0, 0x0)
    4712:	07dd      	br      	0x46cc	// 46cc <CORETHandler+0xec>
    4714:	3300      	movi      	r3, 0
    4716:	b060      	st.w      	r3, (r0, 0x0)
    4718:	07b2      	br      	0x467c	// 467c <CORETHandler+0x9c>
    471a:	0000      	bkpt
    471c:	20000064 	.long	0x20000064
    4720:	2000028c 	.long	0x2000028c
    4724:	2000037c 	.long	0x2000037c
    4728:	20000110 	.long	0x20000110
    472c:	20000374 	.long	0x20000374
    4730:	20000321 	.long	0x20000321
    4734:	20000104 	.long	0x20000104
    4738:	20000284 	.long	0x20000284
    473c:	20000220 	.long	0x20000220
    4740:	20000414 	.long	0x20000414
    4744:	200002f4 	.long	0x200002f4
    4748:	20000088 	.long	0x20000088
    474c:	20000444 	.long	0x20000444

Disassembly of section .text.std_clk_calib_source:

00004750 <std_clk_calib_source>:
    4750:	3840      	cmpnei      	r0, 0
    4752:	1069      	lrw      	r3, 0x20000014	// 4774 <std_clk_calib_source+0x24>
    4754:	0807      	bt      	0x4762	// 4762 <std_clk_calib_source+0x12>
    4756:	9360      	ld.w      	r3, (r3, 0x0)
    4758:	1048      	lrw      	r2, 0xbe9c0005	// 4778 <std_clk_calib_source+0x28>
    475a:	b340      	st.w      	r2, (r3, 0x0)
    475c:	32d8      	movi      	r2, 216
    475e:	b345      	st.w      	r2, (r3, 0x14)
    4760:	0409      	br      	0x4772	// 4772 <std_clk_calib_source+0x22>
    4762:	3841      	cmpnei      	r0, 1
    4764:	0bf9      	bt      	0x4756	// 4756 <std_clk_calib_source+0x6>
    4766:	9340      	ld.w      	r2, (r3, 0x0)
    4768:	1065      	lrw      	r3, 0xbe9c000d	// 477c <std_clk_calib_source+0x2c>
    476a:	b260      	st.w      	r3, (r2, 0x0)
    476c:	3383      	movi      	r3, 131
    476e:	4361      	lsli      	r3, r3, 1
    4770:	b265      	st.w      	r3, (r2, 0x14)
    4772:	783c      	jmp      	r15
    4774:	20000014 	.long	0x20000014
    4778:	be9c0005 	.long	0xbe9c0005
    477c:	be9c000d 	.long	0xbe9c000d

Disassembly of section .text.std_clk_calib:

00004780 <std_clk_calib>:
    4780:	14d4      	push      	r4-r7, r15
    4782:	142d      	subi      	r14, r14, 52
    4784:	3201      	movi      	r2, 1
    4786:	03cd      	lrw      	r6, 0x2000005c	// 49cc <std_clk_calib+0x24c>
    4788:	6cc3      	mov      	r3, r0
    478a:	dc4e000a 	st.b      	r2, (r14, 0xa)
    478e:	9640      	ld.w      	r2, (r6, 0x0)
    4790:	9247      	ld.w      	r2, (r2, 0x1c)
    4792:	7488      	zextb      	r2, r2
    4794:	dc4e0009 	st.b      	r2, (r14, 0x9)
    4798:	d84e0009 	ld.b      	r2, (r14, 0x9)
    479c:	3a40      	cmpnei      	r2, 0
    479e:	0c08      	bf      	0x47ae	// 47ae <std_clk_calib+0x2e>
    47a0:	d84e0009 	ld.b      	r2, (r14, 0x9)
    47a4:	3a42      	cmpnei      	r2, 2
    47a6:	0c04      	bf      	0x47ae	// 47ae <std_clk_calib+0x2e>
    47a8:	3000      	movi      	r0, 0
    47aa:	140d      	addi      	r14, r14, 52
    47ac:	1494      	pop      	r4-r7, r15
    47ae:	0396      	lrw      	r4, 0x2000000c	// 49d0 <std_clk_calib+0x250>
    47b0:	3209      	movi      	r2, 9
    47b2:	9400      	ld.w      	r0, (r4, 0x0)
    47b4:	3b40      	cmpnei      	r3, 0
    47b6:	b041      	st.w      	r2, (r0, 0x4)
    47b8:	0858      	bt      	0x4868	// 4868 <std_clk_calib+0xe8>
    47ba:	3307      	movi      	r3, 7
    47bc:	dc6e000b 	st.b      	r3, (r14, 0xb)
    47c0:	037a      	lrw      	r3, 0x2dc6c00	// 49d4 <std_clk_calib+0x254>
    47c2:	b863      	st.w      	r3, (r14, 0xc)
    47c4:	3380      	movi      	r3, 128
    47c6:	4362      	lsli      	r3, r3, 2
    47c8:	b867      	st.w      	r3, (r14, 0x1c)
    47ca:	d86e000b 	ld.b      	r3, (r14, 0xb)
    47ce:	74cc      	zextb      	r3, r3
    47d0:	b062      	st.w      	r3, (r0, 0x8)
    47d2:	037d      	lrw      	r3, 0xffff	// 49d8 <std_clk_calib+0x258>
    47d4:	b063      	st.w      	r3, (r0, 0xc)
    47d6:	3201      	movi      	r2, 1
    47d8:	3101      	movi      	r1, 1
    47da:	03be      	lrw      	r5, 0x20000014	// 49dc <std_clk_calib+0x25c>
    47dc:	e3ffec48 	bsr      	0x206c	// 206c <BT_ConfigInterrupt_CMD>
    47e0:	95e0      	ld.w      	r7, (r5, 0x0)
    47e2:	3300      	movi      	r3, 0
    47e4:	135f      	lrw      	r2, 0x30010	// 49e0 <std_clk_calib+0x260>
    47e6:	b762      	st.w      	r3, (r7, 0x8)
    47e8:	b743      	st.w      	r2, (r7, 0xc)
    47ea:	974f      	ld.w      	r2, (r7, 0x3c)
    47ec:	3aa2      	bseti      	r2, 2
    47ee:	b74f      	st.w      	r2, (r7, 0x3c)
    47f0:	9803      	ld.w      	r0, (r14, 0xc)
    47f2:	d82e000b 	ld.b      	r1, (r14, 0xb)
    47f6:	327d      	movi      	r2, 125
    47f8:	2100      	addi      	r1, 1
    47fa:	7c48      	mult      	r1, r2
    47fc:	b861      	st.w      	r3, (r14, 0x4)
    47fe:	e3fff59f 	bsr      	0x333c	// 333c <__udivsi3>
    4802:	b804      	st.w      	r0, (r14, 0x10)
    4804:	32fa      	movi      	r2, 250
    4806:	9824      	ld.w      	r1, (r14, 0x10)
    4808:	4242      	lsli      	r2, r2, 2
    480a:	6448      	cmphs      	r2, r1
    480c:	0bce      	bt      	0x47a8	// 47a8 <std_clk_calib+0x28>
    480e:	9844      	ld.w      	r2, (r14, 0x10)
    4810:	3178      	movi      	r1, 120
    4812:	9804      	ld.w      	r0, (r14, 0x10)
    4814:	b840      	st.w      	r2, (r14, 0x0)
    4816:	e3fff593 	bsr      	0x333c	// 333c <__udivsi3>
    481a:	9840      	ld.w      	r2, (r14, 0x0)
    481c:	6082      	subu      	r2, r0
    481e:	b845      	st.w      	r2, (r14, 0x14)
    4820:	9804      	ld.w      	r0, (r14, 0x10)
    4822:	3178      	movi      	r1, 120
    4824:	9844      	ld.w      	r2, (r14, 0x10)
    4826:	b840      	st.w      	r2, (r14, 0x0)
    4828:	e3fff58a 	bsr      	0x333c	// 333c <__udivsi3>
    482c:	9840      	ld.w      	r2, (r14, 0x0)
    482e:	6008      	addu      	r0, r2
    4830:	b806      	st.w      	r0, (r14, 0x18)
    4832:	c0807020 	psrclr      	ie
    4836:	9640      	ld.w      	r2, (r6, 0x0)
    4838:	9254      	ld.w      	r2, (r2, 0x50)
    483a:	b848      	st.w      	r2, (r14, 0x20)
    483c:	9861      	ld.w      	r3, (r14, 0x4)
    483e:	9440      	ld.w      	r2, (r4, 0x0)
    4840:	b260      	st.w      	r3, (r2, 0x0)
    4842:	b761      	st.w      	r3, (r7, 0x4)
    4844:	d86e000a 	ld.b      	r3, (r14, 0xa)
    4848:	3b40      	cmpnei      	r3, 0
    484a:	0843      	bt      	0x48d0	// 48d0 <std_clk_calib+0x150>
    484c:	9540      	ld.w      	r2, (r5, 0x0)
    484e:	9261      	ld.w      	r3, (r2, 0x4)
    4850:	3bac      	bseti      	r3, 12
    4852:	3bae      	bseti      	r3, 14
    4854:	b261      	st.w      	r3, (r2, 0x4)
    4856:	9440      	ld.w      	r2, (r4, 0x0)
    4858:	9260      	ld.w      	r3, (r2, 0x0)
    485a:	3bac      	bseti      	r3, 12
    485c:	3bae      	bseti      	r3, 14
    485e:	b260      	st.w      	r3, (r2, 0x0)
    4860:	c1807420 	psrset      	ee, ie
    4864:	3001      	movi      	r0, 1
    4866:	07a2      	br      	0x47aa	// 47aa <std_clk_calib+0x2a>
    4868:	3b41      	cmpnei      	r3, 1
    486a:	0806      	bt      	0x4876	// 4876 <std_clk_calib+0xf6>
    486c:	3303      	movi      	r3, 3
    486e:	dc6e000b 	st.b      	r3, (r14, 0xb)
    4872:	127d      	lrw      	r3, 0x16e3600	// 49e4 <std_clk_calib+0x264>
    4874:	07a7      	br      	0x47c2	// 47c2 <std_clk_calib+0x42>
    4876:	3b42      	cmpnei      	r3, 2
    4878:	0806      	bt      	0x4884	// 4884 <std_clk_calib+0x104>
    487a:	3301      	movi      	r3, 1
    487c:	dc6e000b 	st.b      	r3, (r14, 0xb)
    4880:	127a      	lrw      	r3, 0xb71b00	// 49e8 <std_clk_calib+0x268>
    4882:	07a0      	br      	0x47c2	// 47c2 <std_clk_calib+0x42>
    4884:	3b43      	cmpnei      	r3, 3
    4886:	0806      	bt      	0x4892	// 4892 <std_clk_calib+0x112>
    4888:	3300      	movi      	r3, 0
    488a:	dc6e000b 	st.b      	r3, (r14, 0xb)
    488e:	1278      	lrw      	r3, 0x5b8d80	// 49ec <std_clk_calib+0x26c>
    4890:	0799      	br      	0x47c2	// 47c2 <std_clk_calib+0x42>
    4892:	3b44      	cmpnei      	r3, 4
    4894:	0809      	bt      	0x48a6	// 48a6 <std_clk_calib+0x126>
    4896:	3300      	movi      	r3, 0
    4898:	dc6e000b 	st.b      	r3, (r14, 0xb)
    489c:	1275      	lrw      	r3, 0x54c720	// 49f0 <std_clk_calib+0x270>
    489e:	b863      	st.w      	r3, (r14, 0xc)
    48a0:	3380      	movi      	r3, 128
    48a2:	4369      	lsli      	r3, r3, 9
    48a4:	0792      	br      	0x47c8	// 47c8 <std_clk_calib+0x48>
    48a6:	3b45      	cmpnei      	r3, 5
    48a8:	0806      	bt      	0x48b4	// 48b4 <std_clk_calib+0x134>
    48aa:	3300      	movi      	r3, 0
    48ac:	dc6e000b 	st.b      	r3, (r14, 0xb)
    48b0:	1271      	lrw      	r3, 0x3ffed0	// 49f4 <std_clk_calib+0x274>
    48b2:	07f6      	br      	0x489e	// 489e <std_clk_calib+0x11e>
    48b4:	3b46      	cmpnei      	r3, 6
    48b6:	0806      	bt      	0x48c2	// 48c2 <std_clk_calib+0x142>
    48b8:	3300      	movi      	r3, 0
    48ba:	dc6e000b 	st.b      	r3, (r14, 0xb)
    48be:	126f      	lrw      	r3, 0x1fff68	// 49f8 <std_clk_calib+0x278>
    48c0:	07ef      	br      	0x489e	// 489e <std_clk_calib+0x11e>
    48c2:	3b47      	cmpnei      	r3, 7
    48c4:	0b83      	bt      	0x47ca	// 47ca <std_clk_calib+0x4a>
    48c6:	3300      	movi      	r3, 0
    48c8:	dc6e000b 	st.b      	r3, (r14, 0xb)
    48cc:	126c      	lrw      	r3, 0x1ffb8	// 49fc <std_clk_calib+0x27c>
    48ce:	07e8      	br      	0x489e	// 489e <std_clk_calib+0x11e>
    48d0:	9560      	ld.w      	r3, (r5, 0x0)
    48d2:	3101      	movi      	r1, 1
    48d4:	9440      	ld.w      	r2, (r4, 0x0)
    48d6:	b321      	st.w      	r1, (r3, 0x4)
    48d8:	b220      	st.w      	r1, (r2, 0x0)
    48da:	3100      	movi      	r1, 0
    48dc:	b327      	st.w      	r1, (r3, 0x1c)
    48de:	3004      	movi      	r0, 4
    48e0:	b225      	st.w      	r1, (r2, 0x14)
    48e2:	932e      	ld.w      	r1, (r3, 0x38)
    48e4:	6840      	and      	r1, r0
    48e6:	3940      	cmpnei      	r1, 0
    48e8:	0ffd      	bf      	0x48e2	// 48e2 <std_clk_calib+0x162>
    48ea:	9225      	ld.w      	r1, (r2, 0x14)
    48ec:	b82a      	st.w      	r1, (r14, 0x28)
    48ee:	3100      	movi      	r1, 0
    48f0:	b310      	st.w      	r0, (r3, 0x40)
    48f2:	b327      	st.w      	r1, (r3, 0x1c)
    48f4:	3004      	movi      	r0, 4
    48f6:	b225      	st.w      	r1, (r2, 0x14)
    48f8:	932e      	ld.w      	r1, (r3, 0x38)
    48fa:	6840      	and      	r1, r0
    48fc:	3940      	cmpnei      	r1, 0
    48fe:	0ffd      	bf      	0x48f8	// 48f8 <std_clk_calib+0x178>
    4900:	9225      	ld.w      	r1, (r2, 0x14)
    4902:	b82b      	st.w      	r1, (r14, 0x2c)
    4904:	3100      	movi      	r1, 0
    4906:	b310      	st.w      	r0, (r3, 0x40)
    4908:	b327      	st.w      	r1, (r3, 0x1c)
    490a:	3004      	movi      	r0, 4
    490c:	b225      	st.w      	r1, (r2, 0x14)
    490e:	932e      	ld.w      	r1, (r3, 0x38)
    4910:	6840      	and      	r1, r0
    4912:	3940      	cmpnei      	r1, 0
    4914:	0ffd      	bf      	0x490e	// 490e <std_clk_calib+0x18e>
    4916:	9225      	ld.w      	r1, (r2, 0x14)
    4918:	b82c      	st.w      	r1, (r14, 0x30)
    491a:	b310      	st.w      	r0, (r3, 0x40)
    491c:	982b      	ld.w      	r1, (r14, 0x2c)
    491e:	980c      	ld.w      	r0, (r14, 0x30)
    4920:	6040      	addu      	r1, r0
    4922:	b829      	st.w      	r1, (r14, 0x24)
    4924:	9829      	ld.w      	r1, (r14, 0x24)
    4926:	4921      	lsri      	r1, r1, 1
    4928:	b829      	st.w      	r1, (r14, 0x24)
    492a:	3100      	movi      	r1, 0
    492c:	b321      	st.w      	r1, (r3, 0x4)
    492e:	b220      	st.w      	r1, (r2, 0x0)
    4930:	b327      	st.w      	r1, (r3, 0x1c)
    4932:	b225      	st.w      	r1, (r2, 0x14)
    4934:	d86e0009 	ld.b      	r3, (r14, 0x9)
    4938:	3b42      	cmpnei      	r3, 2
    493a:	9849      	ld.w      	r2, (r14, 0x24)
    493c:	082c      	bt      	0x4994	// 4994 <std_clk_calib+0x214>
    493e:	1171      	lrw      	r3, 0x7ff	// 4a00 <std_clk_calib+0x280>
    4940:	648c      	cmphs      	r3, r2
    4942:	0c03      	bf      	0x4948	// 4948 <std_clk_calib+0x1c8>
    4944:	3300      	movi      	r3, 0
    4946:	040f      	br      	0x4964	// 4964 <std_clk_calib+0x1e4>
    4948:	9849      	ld.w      	r2, (r14, 0x24)
    494a:	9866      	ld.w      	r3, (r14, 0x18)
    494c:	648c      	cmphs      	r3, r2
    494e:	080e      	bt      	0x496a	// 496a <std_clk_calib+0x1ea>
    4950:	9868      	ld.w      	r3, (r14, 0x20)
    4952:	9847      	ld.w      	r2, (r14, 0x1c)
    4954:	60ca      	subu      	r3, r2
    4956:	b868      	st.w      	r3, (r14, 0x20)
    4958:	32fe      	movi      	r2, 254
    495a:	9868      	ld.w      	r3, (r14, 0x20)
    495c:	4248      	lsli      	r2, r2, 8
    495e:	68c8      	and      	r3, r2
    4960:	3b40      	cmpnei      	r3, 0
    4962:	0812      	bt      	0x4986	// 4986 <std_clk_calib+0x206>
    4964:	dc6e000a 	st.b      	r3, (r14, 0xa)
    4968:	0720      	br      	0x47a8	// 47a8 <std_clk_calib+0x28>
    496a:	9849      	ld.w      	r2, (r14, 0x24)
    496c:	9865      	ld.w      	r3, (r14, 0x14)
    496e:	64c8      	cmphs      	r2, r3
    4970:	0829      	bt      	0x49c2	// 49c2 <std_clk_calib+0x242>
    4972:	9868      	ld.w      	r3, (r14, 0x20)
    4974:	9847      	ld.w      	r2, (r14, 0x1c)
    4976:	60c8      	addu      	r3, r2
    4978:	b868      	st.w      	r3, (r14, 0x20)
    497a:	33fe      	movi      	r3, 254
    497c:	9848      	ld.w      	r2, (r14, 0x20)
    497e:	4368      	lsli      	r3, r3, 8
    4980:	688c      	and      	r2, r3
    4982:	64ca      	cmpne      	r2, r3
    4984:	0fe0      	bf      	0x4944	// 4944 <std_clk_calib+0x1c4>
    4986:	9660      	ld.w      	r3, (r6, 0x0)
    4988:	9848      	ld.w      	r2, (r14, 0x20)
    498a:	b354      	st.w      	r2, (r3, 0x50)
    498c:	3001      	movi      	r0, 1
    498e:	e3ffee25 	bsr      	0x25d8	// 25d8 <delay_nms>
    4992:	0759      	br      	0x4844	// 4844 <std_clk_calib+0xc4>
    4994:	9866      	ld.w      	r3, (r14, 0x18)
    4996:	648c      	cmphs      	r3, r2
    4998:	0809      	bt      	0x49aa	// 49aa <std_clk_calib+0x22a>
    499a:	9868      	ld.w      	r3, (r14, 0x20)
    499c:	9847      	ld.w      	r2, (r14, 0x1c)
    499e:	60ca      	subu      	r3, r2
    49a0:	b868      	st.w      	r3, (r14, 0x20)
    49a2:	32ff      	movi      	r2, 255
    49a4:	9868      	ld.w      	r3, (r14, 0x20)
    49a6:	4250      	lsli      	r2, r2, 16
    49a8:	07db      	br      	0x495e	// 495e <std_clk_calib+0x1de>
    49aa:	9849      	ld.w      	r2, (r14, 0x24)
    49ac:	9865      	ld.w      	r3, (r14, 0x14)
    49ae:	64c8      	cmphs      	r2, r3
    49b0:	0809      	bt      	0x49c2	// 49c2 <std_clk_calib+0x242>
    49b2:	9868      	ld.w      	r3, (r14, 0x20)
    49b4:	9847      	ld.w      	r2, (r14, 0x1c)
    49b6:	60c8      	addu      	r3, r2
    49b8:	b868      	st.w      	r3, (r14, 0x20)
    49ba:	33ff      	movi      	r3, 255
    49bc:	9848      	ld.w      	r2, (r14, 0x20)
    49be:	4370      	lsli      	r3, r3, 16
    49c0:	07e0      	br      	0x4980	// 4980 <std_clk_calib+0x200>
    49c2:	3300      	movi      	r3, 0
    49c4:	dc6e000a 	st.b      	r3, (r14, 0xa)
    49c8:	07e2      	br      	0x498c	// 498c <std_clk_calib+0x20c>
    49ca:	0000      	bkpt
    49cc:	2000005c 	.long	0x2000005c
    49d0:	2000000c 	.long	0x2000000c
    49d4:	02dc6c00 	.long	0x02dc6c00
    49d8:	0000ffff 	.long	0x0000ffff
    49dc:	20000014 	.long	0x20000014
    49e0:	00030010 	.long	0x00030010
    49e4:	016e3600 	.long	0x016e3600
    49e8:	00b71b00 	.long	0x00b71b00
    49ec:	005b8d80 	.long	0x005b8d80
    49f0:	0054c720 	.long	0x0054c720
    49f4:	003ffed0 	.long	0x003ffed0
    49f8:	001fff68 	.long	0x001fff68
    49fc:	0001ffb8 	.long	0x0001ffb8
    4a00:	000007ff 	.long	0x000007ff


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
       4:	00002cc6 	.long	0x00002cc6
	TK_senprd[0]=50;								//TCH0 scan period = TCH0 sens
       8:	00002cb6 	.long	0x00002cb6
	TK_senprd[11]=50;								//TCH11 scan period = TCH11 sens
	TK_senprd[12]=50;								//TCH12 scan period = TCH12 sens
	TK_senprd[13]=50;								//TCH13 scan period = TCH13 sens
	TK_senprd[14]=50;								//TCH14 scan period = TCH14 sens
	TK_senprd[15]=50;								//TCH15 scan period = TCH15 sens
	TK_senprd[16]=50;								//TCH16 scan period = TCH16 sens
       c:	00000184 	.long	0x00000184
	TK_senprd[1]=50;								//TCH1 scan period = TCH1 sens
      10:	00002cbe 	.long	0x00002cbe
	TK_senprd[3]=50;								//TCH3 scan period = TCH3 sens
      14:	00002c7c 	.long	0x00002c7c
	TK_senprd[5]=50;								//TCH5 scan period = TCH5 sens
      18:	00000184 	.long	0x00000184
	TK_senprd[7]=50;								//TCH7 scan period = TCH7 sens
      1c:	00002cae 	.long	0x00002cae
	TK_senprd[9]=50;								//TCH9 scan period = TCH9 sens
      20:	00002ca6 	.long	0x00002ca6
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
      40:	00002c9e 	.long	0x00002c9e
	TK_Triggerlevel[7]=60;							//TCH7 TK_Trigger level
	TK_Triggerlevel[8]=60;							//TCH8 TK_Trigger level
      44:	00002c96 	.long	0x00002c96
	TK_Triggerlevel[9]=60;							//TCH9 TK_Trigger level
	TK_Triggerlevel[10]=60;							//TCH10 TK_Trigger level
      48:	00002c8e 	.long	0x00002c8e
	TK_Triggerlevel[11]=60;							//TCH11 TK_Trigger level
	TK_Triggerlevel[12]=60;							//TCH12 TK_Trigger level
      4c:	00002c86 	.long	0x00002c86
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
      7c:	00002c7e 	.long	0x00002c7e
/****************************************************
//TK function define
*****************************************************/
	TK_Lowpower_mode=DISABLE;						//touch key can goto sleep when TK lowpower mode enable
      80:	00004054 	.long	0x00004054
      84:	000023ac 	.long	0x000023ac
	TK_Lowpower_level=2;							//0=20ms 1=50ms 2=100ms 3=150ms 4=200ms,Scan interval when sleep
      88:	000024a4 	.long	0x000024a4
	TK_Wakeup_level=50;								//touch key Trigger level in sleep
      8c:	0000250c 	.long	0x0000250c
      90:	00002574 	.long	0x00002574
/****************************************************
//TK special parameter define
*****************************************************/
	TK_PSEL_MODE=TK_PSEL_AVDD;						//tk power sel:TK_PSEL_FVR/TK_PSEL_AVDD   when select TK_PSEL_FVR PA0.2(TCH3) need a 104 cap
      94:	00000184 	.long	0x00000184
	TK_FVR_LEVEL=TK_FVR_4096V;						//FVR level:TK_FVR_2048V/TK_FVR_4096V
      98:	0000271c 	.long	0x0000271c
	TK_EC_LEVEL=TK_EC_3V;							//C0 voltage sel:TK_EC_1V/TK_EC_2V/TK_EC_3V/TK_EC_3_6V
      9c:	00002a60 	.long	0x00002a60
      a0:	00002a90 	.long	0x00002a90
	TK_icon[0]=4;									//TCH0 TK Scan icon
      a4:	00002750 	.long	0x00002750
      a8:	00000184 	.long	0x00000184
	TK_icon[1]=4;									//TCH1 TK Scan icon
	TK_icon[2]=4;									//TCH2 TK Scan icon
      ac:	00000184 	.long	0x00000184
	TK_icon[3]=4;									//TCH3 TK Scan icon
	TK_icon[4]=4;									//TCH4 TK Scan icon
      b0:	000027d0 	.long	0x000027d0
	TK_icon[5]=4;									//TCH5 TK Scan icon
	TK_icon[6]=4;									//TCH6 TK Scan icon
      b4:	00002840 	.long	0x00002840
	TK_icon[7]=4;									//TCH7 TK Scan icon
	TK_icon[8]=4;									//TCH8 TK Scan icon
      b8:	0000287c 	.long	0x0000287c
	TK_icon[9]=4;									//TCH9 TK Scan icon
	TK_icon[10]=4;									//TCH10 TK Scan icon
      bc:	000028b8 	.long	0x000028b8
	TK_icon[11]=4;									//TCH11 TK Scan icon
	TK_icon[12]=4;									//TCH12 TK Scan icon
      c0:	00000184 	.long	0x00000184
	TK_icon[13]=4;									//TCH13 TK Scan icon
	TK_icon[14]=4;									//TCH14 TK Scan icon
      c4:	00002cd6 	.long	0x00002cd6
	TK_Wheel_Seq[0]=14;								
	TK_Wheel_Seq[1]=0;
	TK_Wheel_Seq[2]=15;
	TK_Wheel_Seq[3]=1;	
#endif
      c8:	00000184 	.long	0x00000184
      cc:	000028f4 	.long	0x000028f4
      d0:	000029dc 	.long	0x000029dc
      d4:	00002ac0 	.long	0x00002ac0
      d8:	00002b08 	.long	0x00002b08
      dc:	00002b64 	.long	0x00002b64
      e0:	00002cce 	.long	0x00002cce
      e4:	00003fb4 	.long	0x00003fb4
      e8:	00002bc4 	.long	0x00002bc4
      ec:	00000184 	.long	0x00000184
      f0:	00002bf8 	.long	0x00002bf8
      f4:	00002c34 	.long	0x00002c34
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
     152:	1013      	lrw      	r0, 0x2d70	// 19c <DummyHandler+0x18>
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
     19c:	00002d70 	.long	0x00002d70
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
     53c:	1168      	lrw      	r3, 0x4478	// 5dc <__GI_pow+0x428>
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
     5dc:	00004478 	.long	0x00004478
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
     7de:	01db      	lrw      	r6, 0x4478	// aec <__GI_pow+0x938>
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
     7f8:	0202      	lrw      	r0, 0x4478	// aec <__GI_pow+0x938>
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
     aec:	00004478 	.long	0x00004478
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
     f24:	111d      	lrw      	r0, 0x44a8	// 1018 <_fpadd_parts+0x2d0>
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
    1018:	000044a8 	.long	0x000044a8

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
    1264:	1013      	lrw      	r0, 0x44a8	// 12b0 <__muldf3+0x22c>
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
    12b0:	000044a8 	.long	0x000044a8
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
    13b2:	1016      	lrw      	r0, 0x44a8	// 1408 <__divdf3+0x150>
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
    1408:	000044a8 	.long	0x000044a8

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
    1656:	1048      	lrw      	r2, 0x44bc	// 1674 <__clzsi2+0x3c>
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
    1674:	000044bc 	.long	0x000044bc

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
    1a54:	1029      	lrw      	r1, 0x45bc	// 1a78 <__main+0x28>
    1a56:	6442      	cmpne      	r0, r1
    1a58:	0c05      	bf      	0x1a62	// 1a62 <__main+0x12>
//    __memcpy_fast( dst, src, (_end_data - _start_data));
    memcpy( dst, src, (_end_data - _start_data));
    1a5a:	1049      	lrw      	r2, 0x200000a4	// 1a7c <__main+0x2c>
    1a5c:	6082      	subu      	r2, r0
    1a5e:	e3ffffc7 	bsr      	0x19ec	// 19ec <__memcpy_fast>
  }

  /* zero the bss 
   */
  if( _ebss - _bss_start ) {
    1a62:	1048      	lrw      	r2, 0x200004cc	// 1a80 <__main+0x30>
    1a64:	1008      	lrw      	r0, 0x200000a4	// 1a84 <__main+0x34>
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
    1a78:	000045bc 	.long	0x000045bc
    1a7c:	200000a4 	.long	0x200000a4
    1a80:	200004cc 	.long	0x200004cc
    1a84:	200000a4 	.long	0x200000a4

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

Disassembly of section .text.EXTI_interrupt_CMD:

00001d34 <EXTI_interrupt_CMD>:
//NewState:ENABLE,DISABLE
//ReturnValue:NONE
/*************************************************************/
void EXTI_interrupt_CMD(FunctionalStatus NewState , SYSCON_EXIPIN_TypeDef  EXIPIN)
{
	SYSCON->EXICR = 0X3FFF;									//Claer EXI INT status
    1d34:	106b      	lrw      	r3, 0x2000005c	// 1d60 <EXTI_interrupt_CMD+0x2c>
    1d36:	104c      	lrw      	r2, 0x3fff	// 1d64 <EXTI_interrupt_CMD+0x30>
    1d38:	9360      	ld.w      	r3, (r3, 0x0)
    1d3a:	237f      	addi      	r3, 128
	if(NewState != DISABLE)
    1d3c:	3840      	cmpnei      	r0, 0
	SYSCON->EXICR = 0X3FFF;									//Claer EXI INT status
    1d3e:	b34b      	st.w      	r2, (r3, 0x2c)
	if(NewState != DISABLE)
    1d40:	0c0c      	bf      	0x1d58	// 1d58 <EXTI_interrupt_CMD+0x24>
	{
		SYSCON->EXIER|=EXIPIN;								//EXI4 interrupt enable
    1d42:	9347      	ld.w      	r2, (r3, 0x1c)
    1d44:	6c84      	or      	r2, r1
    1d46:	b347      	st.w      	r2, (r3, 0x1c)
		while(!(SYSCON->EXIMR&EXIPIN));						//Check EXI is enabled or not
    1d48:	9349      	ld.w      	r2, (r3, 0x24)
    1d4a:	6884      	and      	r2, r1
    1d4c:	3a40      	cmpnei      	r2, 0
    1d4e:	0ffd      	bf      	0x1d48	// 1d48 <EXTI_interrupt_CMD+0x14>
		SYSCON->EXICR |=EXIPIN;								// Clear EXI status bit
    1d50:	934b      	ld.w      	r2, (r3, 0x2c)
    1d52:	6c48      	or      	r1, r2
    1d54:	b32b      	st.w      	r1, (r3, 0x2c)
	}
	else
	{
		SYSCON->EXIDR|=EXIPIN;
	}
}
    1d56:	783c      	jmp      	r15
		SYSCON->EXIDR|=EXIPIN;
    1d58:	9348      	ld.w      	r2, (r3, 0x20)
    1d5a:	6c48      	or      	r1, r2
    1d5c:	b328      	st.w      	r1, (r3, 0x20)
}
    1d5e:	07fc      	br      	0x1d56	// 1d56 <EXTI_interrupt_CMD+0x22>
    1d60:	2000005c 	.long	0x2000005c
    1d64:	00003fff 	.long	0x00003fff

Disassembly of section .text.GPIO_EXTI_interrupt:

00001d68 <GPIO_EXTI_interrupt>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void GPIO_EXTI_interrupt(CSP_GPIO_T * GPIOX,U32_T GPIO_IECR_VALUE)
{
	GPIOX->IECR=GPIO_IECR_VALUE;
    1d68:	b02b      	st.w      	r1, (r0, 0x2c)
}
    1d6a:	783c      	jmp      	r15

Disassembly of section .text.EXI0_Int_Enable:

00001d6c <EXI0_Int_Enable>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI0_Int_Enable(void)
{
	INTC_ISER_WRITE(EXI0_INT);    
    1d6c:	3280      	movi      	r2, 128
    1d6e:	1062      	lrw      	r3, 0xe000e100	// 1d74 <EXI0_Int_Enable+0x8>
    1d70:	b340      	st.w      	r2, (r3, 0x0)
}
    1d72:	783c      	jmp      	r15
    1d74:	e000e100 	.long	0xe000e100

Disassembly of section .text.EXI2_Int_Enable:

00001d78 <EXI2_Int_Enable>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI2_Int_Enable(void)
{
	INTC_ISER_WRITE(EXI2_INT);    
    1d78:	3380      	movi      	r3, 128
    1d7a:	436e      	lsli      	r3, r3, 14
    1d7c:	1042      	lrw      	r2, 0xe000e100	// 1d84 <EXI2_Int_Enable+0xc>
    1d7e:	b260      	st.w      	r3, (r2, 0x0)
}
    1d80:	783c      	jmp      	r15
    1d82:	0000      	bkpt
    1d84:	e000e100 	.long	0xe000e100

Disassembly of section .text.SYSCON_Int_Enable:

00001d88 <SYSCON_Int_Enable>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SYSCON_Int_Enable(void)
{
    INTC_ISER_WRITE(SYSCON_INT);    
    1d88:	3202      	movi      	r2, 2
    1d8a:	1062      	lrw      	r3, 0xe000e100	// 1d90 <SYSCON_Int_Enable+0x8>
    1d8c:	b340      	st.w      	r2, (r3, 0x0)
}
    1d8e:	783c      	jmp      	r15
    1d90:	e000e100 	.long	0xe000e100

Disassembly of section .text.GPIO_Init:

00001d94 <GPIO_Init>:
//byte:Lowbyte(PIN_0~7),Highbyte(PIN_8~15)
//Dir:0:output 1:input
//ReturnValue:NONE
/*************************************************************/  
void GPIO_Init(CSP_GPIO_T *GPIOx,uint8_t PinNum,GPIO_Dir_TypeDef Dir)
{
    1d94:	14d1      	push      	r4, r15
    uint32_t data_temp;
    uint8_t GPIO_Pin;
    if(PinNum<8)
    1d96:	3907      	cmphsi      	r1, 8
{
    1d98:	6d03      	mov      	r4, r0
    if(PinNum<8)
    1d9a:	0830      	bt      	0x1dfa	// 1dfa <GPIO_Init+0x66>
    {
    switch (PinNum)
    1d9c:	5903      	subi      	r0, r1, 1
    1d9e:	3806      	cmphsi      	r0, 7
    1da0:	0827      	bt      	0x1dee	// 1dee <GPIO_Init+0x5a>
    1da2:	e3fff7ad 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    1da6:	1004      	.short	0x1004
    1da8:	1d1a1613 	.long	0x1d1a1613
    1dac:	0021      	.short	0x0021
    {
        case 0:data_temp=0xfffffff0;GPIO_Pin=0;break;
        case 1:data_temp=0xffffff0f;GPIO_Pin=4;break;
    1dae:	3300      	movi      	r3, 0
    1db0:	3104      	movi      	r1, 4
    1db2:	2bf0      	subi      	r3, 241
        case 4:data_temp=0xfff0ffff;GPIO_Pin=16;break;
        case 5:data_temp=0xff0fffff;GPIO_Pin=20;break;
        case 6:data_temp=0xf0ffffff;GPIO_Pin=24;break;
        case 7:data_temp=0x0fffffff;GPIO_Pin=28;break;
    }
        if (Dir)
    1db4:	3a40      	cmpnei      	r2, 0
        {
          (GPIOx)->CONLR =((GPIOx)->CONLR & data_temp) | 1<<GPIO_Pin;
    1db6:	9440      	ld.w      	r2, (r4, 0x0)
    1db8:	68c8      	and      	r3, r2
        if (Dir)
    1dba:	0c1e      	bf      	0x1df6	// 1df6 <GPIO_Init+0x62>
          (GPIOx)->CONLR =((GPIOx)->CONLR & data_temp) | 1<<GPIO_Pin;
    1dbc:	3201      	movi      	r2, 1
        }
        else
        {
         (GPIOx)->CONLR = ((GPIOx)->CONLR & data_temp) | 2<<GPIO_Pin; 
    1dbe:	7084      	lsl      	r2, r1
    1dc0:	6cc8      	or      	r3, r2
    1dc2:	b460      	st.w      	r3, (r4, 0x0)
        else
        {
         (GPIOx)->CONHR = ((GPIOx)->CONHR & data_temp) | 2<<GPIO_Pin;    
        }
    }
}
    1dc4:	1491      	pop      	r4, r15
        case 2:data_temp=0xfffff0ff;GPIO_Pin=8;break;
    1dc6:	3108      	movi      	r1, 8
    1dc8:	1166      	lrw      	r3, 0xfffff0ff	// 1e60 <GPIO_Init+0xcc>
    1dca:	07f5      	br      	0x1db4	// 1db4 <GPIO_Init+0x20>
        case 3:data_temp=0xffff0fff;GPIO_Pin=12;break;
    1dcc:	310c      	movi      	r1, 12
    1dce:	1166      	lrw      	r3, 0xffff0fff	// 1e64 <GPIO_Init+0xd0>
    1dd0:	07f2      	br      	0x1db4	// 1db4 <GPIO_Init+0x20>
        case 4:data_temp=0xfff0ffff;GPIO_Pin=16;break;
    1dd2:	3110      	movi      	r1, 16
    1dd4:	1165      	lrw      	r3, 0xfff10000	// 1e68 <GPIO_Init+0xd4>
        case 6:data_temp=0xf0ffffff;GPIO_Pin=24;break;
    1dd6:	2b00      	subi      	r3, 1
    1dd8:	07ee      	br      	0x1db4	// 1db4 <GPIO_Init+0x20>
        case 5:data_temp=0xff0fffff;GPIO_Pin=20;break;
    1dda:	3114      	movi      	r1, 20
    1ddc:	1164      	lrw      	r3, 0xff100000	// 1e6c <GPIO_Init+0xd8>
    1dde:	07fc      	br      	0x1dd6	// 1dd6 <GPIO_Init+0x42>
        case 6:data_temp=0xf0ffffff;GPIO_Pin=24;break;
    1de0:	33f1      	movi      	r3, 241
    1de2:	3118      	movi      	r1, 24
    1de4:	4378      	lsli      	r3, r3, 24
    1de6:	07f8      	br      	0x1dd6	// 1dd6 <GPIO_Init+0x42>
        case 7:data_temp=0x0fffffff;GPIO_Pin=28;break;
    1de8:	311c      	movi      	r1, 28
    1dea:	1162      	lrw      	r3, 0xfffffff	// 1e70 <GPIO_Init+0xdc>
    1dec:	07e4      	br      	0x1db4	// 1db4 <GPIO_Init+0x20>
        case 0:data_temp=0xfffffff0;GPIO_Pin=0;break;
    1dee:	3300      	movi      	r3, 0
    1df0:	3100      	movi      	r1, 0
    1df2:	2b0f      	subi      	r3, 16
    1df4:	07e0      	br      	0x1db4	// 1db4 <GPIO_Init+0x20>
         (GPIOx)->CONLR = ((GPIOx)->CONLR & data_temp) | 2<<GPIO_Pin; 
    1df6:	3202      	movi      	r2, 2
    1df8:	07e3      	br      	0x1dbe	// 1dbe <GPIO_Init+0x2a>
    else if (PinNum<16)
    1dfa:	390f      	cmphsi      	r1, 16
    1dfc:	0be4      	bt      	0x1dc4	// 1dc4 <GPIO_Init+0x30>
        switch (PinNum)
    1dfe:	2908      	subi      	r1, 9
    1e00:	3906      	cmphsi      	r1, 7
    1e02:	6c07      	mov      	r0, r1
    1e04:	0827      	bt      	0x1e52	// 1e52 <GPIO_Init+0xbe>
    1e06:	e3fff77b 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    1e0a:	1004      	.short	0x1004
    1e0c:	1d1a1613 	.long	0x1d1a1613
    1e10:	0021      	.short	0x0021
        case 9:data_temp=0xffffff0f;GPIO_Pin=4;break;
    1e12:	3300      	movi      	r3, 0
    1e14:	3104      	movi      	r1, 4
    1e16:	2bf0      	subi      	r3, 241
      if (Dir)
    1e18:	3a40      	cmpnei      	r2, 0
        (GPIOx)->CONHR = ((GPIOx)->CONHR & data_temp) | 1<<GPIO_Pin;  
    1e1a:	9441      	ld.w      	r2, (r4, 0x4)
    1e1c:	68c8      	and      	r3, r2
      if (Dir)
    1e1e:	0c1e      	bf      	0x1e5a	// 1e5a <GPIO_Init+0xc6>
        (GPIOx)->CONHR = ((GPIOx)->CONHR & data_temp) | 1<<GPIO_Pin;  
    1e20:	3201      	movi      	r2, 1
         (GPIOx)->CONHR = ((GPIOx)->CONHR & data_temp) | 2<<GPIO_Pin;    
    1e22:	7084      	lsl      	r2, r1
    1e24:	6cc8      	or      	r3, r2
    1e26:	b461      	st.w      	r3, (r4, 0x4)
}
    1e28:	07ce      	br      	0x1dc4	// 1dc4 <GPIO_Init+0x30>
        case 10:data_temp=0xfffff0ff;GPIO_Pin=8;break;
    1e2a:	3108      	movi      	r1, 8
    1e2c:	106d      	lrw      	r3, 0xfffff0ff	// 1e60 <GPIO_Init+0xcc>
    1e2e:	07f5      	br      	0x1e18	// 1e18 <GPIO_Init+0x84>
        case 11:data_temp=0xffff0fff;GPIO_Pin=12;break;
    1e30:	310c      	movi      	r1, 12
    1e32:	106d      	lrw      	r3, 0xffff0fff	// 1e64 <GPIO_Init+0xd0>
    1e34:	07f2      	br      	0x1e18	// 1e18 <GPIO_Init+0x84>
        case 12:data_temp=0xfff0ffff;GPIO_Pin=16;break;
    1e36:	3110      	movi      	r1, 16
    1e38:	106c      	lrw      	r3, 0xfff10000	// 1e68 <GPIO_Init+0xd4>
        case 14:data_temp=0xf0ffffff;GPIO_Pin=24;break;
    1e3a:	2b00      	subi      	r3, 1
    1e3c:	07ee      	br      	0x1e18	// 1e18 <GPIO_Init+0x84>
        case 13:data_temp=0xff0fffff;GPIO_Pin=20;break;
    1e3e:	3114      	movi      	r1, 20
    1e40:	106b      	lrw      	r3, 0xff100000	// 1e6c <GPIO_Init+0xd8>
    1e42:	07fc      	br      	0x1e3a	// 1e3a <GPIO_Init+0xa6>
        case 14:data_temp=0xf0ffffff;GPIO_Pin=24;break;
    1e44:	33f1      	movi      	r3, 241
    1e46:	3118      	movi      	r1, 24
    1e48:	4378      	lsli      	r3, r3, 24
    1e4a:	07f8      	br      	0x1e3a	// 1e3a <GPIO_Init+0xa6>
        case 15:data_temp=0x0fffffff;GPIO_Pin=28;break;
    1e4c:	311c      	movi      	r1, 28
    1e4e:	1069      	lrw      	r3, 0xfffffff	// 1e70 <GPIO_Init+0xdc>
    1e50:	07e4      	br      	0x1e18	// 1e18 <GPIO_Init+0x84>
        case 8:data_temp=0xfffffff0;GPIO_Pin=0;break;
    1e52:	3300      	movi      	r3, 0
    1e54:	3100      	movi      	r1, 0
    1e56:	2b0f      	subi      	r3, 16
    1e58:	07e0      	br      	0x1e18	// 1e18 <GPIO_Init+0x84>
         (GPIOx)->CONHR = ((GPIOx)->CONHR & data_temp) | 2<<GPIO_Pin;    
    1e5a:	3202      	movi      	r2, 2
    1e5c:	07e3      	br      	0x1e22	// 1e22 <GPIO_Init+0x8e>
    1e5e:	0000      	bkpt
    1e60:	fffff0ff 	.long	0xfffff0ff
    1e64:	ffff0fff 	.long	0xffff0fff
    1e68:	fff10000 	.long	0xfff10000
    1e6c:	ff100000 	.long	0xff100000
    1e70:	0fffffff 	.long	0x0fffffff

Disassembly of section .text.GPIO_InPutOutPut_Disable:

00001e74 <GPIO_InPutOutPut_Disable>:
//GPIO_Pin:PIN_0~15
//byte:Lowbyte(PIN_0~7),Highbyte(PIN_8~15)
//ReturnValue:NONE
/*************************************************************/  
void GPIO_InPutOutPut_Disable(CSP_GPIO_T *GPIOx,uint8_t PinNum)
{
    1e74:	14d0      	push      	r15
    uint32_t data_temp;
    if(PinNum<8)
    1e76:	3907      	cmphsi      	r1, 8
{
    1e78:	6c83      	mov      	r2, r0
    if(PinNum<8)
    1e7a:	0821      	bt      	0x1ebc	// 1ebc <GPIO_InPutOutPut_Disable+0x48>
    {
    switch (PinNum)
    1e7c:	5903      	subi      	r0, r1, 1
    1e7e:	3806      	cmphsi      	r0, 7
    1e80:	081b      	bt      	0x1eb6	// 1eb6 <GPIO_InPutOutPut_Disable+0x42>
    1e82:	e3fff73d 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    1e86:	0a04      	.short	0x0a04
    1e88:	13110e0c 	.long	0x13110e0c
    1e8c:	0016      	.short	0x0016
    {
        case 0:data_temp=0xfffffff0;break;
        case 1:data_temp=0xffffff0f;break;
    1e8e:	3300      	movi      	r3, 0
    1e90:	2bf0      	subi      	r3, 241
        case 4:data_temp=0xfff0ffff;break;
        case 5:data_temp=0xff0fffff;break;
        case 6:data_temp=0xf0ffffff;break;
        case 7:data_temp=0x0fffffff;break;
    }
         (GPIOx)->CONLR = (GPIOx)->CONLR & data_temp;
    1e92:	9220      	ld.w      	r1, (r2, 0x0)
    1e94:	68c4      	and      	r3, r1
    1e96:	b260      	st.w      	r3, (r2, 0x0)
        case 14:data_temp=0xf0ffffff;break;
        case 15:data_temp=0x0fffffff;break;
    } 
         (GPIOx)->CONHR = (GPIOx)->CONHR & data_temp;    
    }
}
    1e98:	1490      	pop      	r15
        case 2:data_temp=0xfffff0ff;break;
    1e9a:	107b      	lrw      	r3, 0xfffff0ff	// 1f04 <GPIO_InPutOutPut_Disable+0x90>
    1e9c:	07fb      	br      	0x1e92	// 1e92 <GPIO_InPutOutPut_Disable+0x1e>
        case 3:data_temp=0xffff0fff;break;
    1e9e:	107b      	lrw      	r3, 0xffff0fff	// 1f08 <GPIO_InPutOutPut_Disable+0x94>
    1ea0:	07f9      	br      	0x1e92	// 1e92 <GPIO_InPutOutPut_Disable+0x1e>
        case 4:data_temp=0xfff0ffff;break;
    1ea2:	107b      	lrw      	r3, 0xfff10000	// 1f0c <GPIO_InPutOutPut_Disable+0x98>
        case 6:data_temp=0xf0ffffff;break;
    1ea4:	2b00      	subi      	r3, 1
    1ea6:	07f6      	br      	0x1e92	// 1e92 <GPIO_InPutOutPut_Disable+0x1e>
        case 5:data_temp=0xff0fffff;break;
    1ea8:	107a      	lrw      	r3, 0xff100000	// 1f10 <GPIO_InPutOutPut_Disable+0x9c>
    1eaa:	07fd      	br      	0x1ea4	// 1ea4 <GPIO_InPutOutPut_Disable+0x30>
        case 6:data_temp=0xf0ffffff;break;
    1eac:	33f1      	movi      	r3, 241
    1eae:	4378      	lsli      	r3, r3, 24
    1eb0:	07fa      	br      	0x1ea4	// 1ea4 <GPIO_InPutOutPut_Disable+0x30>
        case 7:data_temp=0x0fffffff;break;
    1eb2:	1079      	lrw      	r3, 0xfffffff	// 1f14 <GPIO_InPutOutPut_Disable+0xa0>
    1eb4:	07ef      	br      	0x1e92	// 1e92 <GPIO_InPutOutPut_Disable+0x1e>
        case 0:data_temp=0xfffffff0;break;
    1eb6:	3300      	movi      	r3, 0
    1eb8:	2b0f      	subi      	r3, 16
    1eba:	07ec      	br      	0x1e92	// 1e92 <GPIO_InPutOutPut_Disable+0x1e>
    else if (PinNum<16)
    1ebc:	390f      	cmphsi      	r1, 16
    1ebe:	0bed      	bt      	0x1e98	// 1e98 <GPIO_InPutOutPut_Disable+0x24>
        switch (PinNum)
    1ec0:	2908      	subi      	r1, 9
    1ec2:	3906      	cmphsi      	r1, 7
    1ec4:	6c07      	mov      	r0, r1
    1ec6:	081b      	bt      	0x1efc	// 1efc <GPIO_InPutOutPut_Disable+0x88>
    1ec8:	e3fff71a 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    1ecc:	0e0c0a04 	.long	0x0e0c0a04
    1ed0:	00161311 	.long	0x00161311
        case 9:data_temp=0xffffff0f;break;
    1ed4:	3300      	movi      	r3, 0
    1ed6:	2bf0      	subi      	r3, 241
         (GPIOx)->CONHR = (GPIOx)->CONHR & data_temp;    
    1ed8:	9221      	ld.w      	r1, (r2, 0x4)
    1eda:	68c4      	and      	r3, r1
    1edc:	b261      	st.w      	r3, (r2, 0x4)
}
    1ede:	07dd      	br      	0x1e98	// 1e98 <GPIO_InPutOutPut_Disable+0x24>
        case 10:data_temp=0xfffff0ff;break;
    1ee0:	1069      	lrw      	r3, 0xfffff0ff	// 1f04 <GPIO_InPutOutPut_Disable+0x90>
    1ee2:	07fb      	br      	0x1ed8	// 1ed8 <GPIO_InPutOutPut_Disable+0x64>
        case 11:data_temp=0xffff0fff;break;
    1ee4:	1069      	lrw      	r3, 0xffff0fff	// 1f08 <GPIO_InPutOutPut_Disable+0x94>
    1ee6:	07f9      	br      	0x1ed8	// 1ed8 <GPIO_InPutOutPut_Disable+0x64>
        case 12:data_temp=0xfff0ffff;break;
    1ee8:	1069      	lrw      	r3, 0xfff10000	// 1f0c <GPIO_InPutOutPut_Disable+0x98>
        case 14:data_temp=0xf0ffffff;break;
    1eea:	2b00      	subi      	r3, 1
    1eec:	07f6      	br      	0x1ed8	// 1ed8 <GPIO_InPutOutPut_Disable+0x64>
        case 13:data_temp=0xff0fffff;break;
    1eee:	1069      	lrw      	r3, 0xff100000	// 1f10 <GPIO_InPutOutPut_Disable+0x9c>
    1ef0:	07fd      	br      	0x1eea	// 1eea <GPIO_InPutOutPut_Disable+0x76>
        case 14:data_temp=0xf0ffffff;break;
    1ef2:	33f1      	movi      	r3, 241
    1ef4:	4378      	lsli      	r3, r3, 24
    1ef6:	07fa      	br      	0x1eea	// 1eea <GPIO_InPutOutPut_Disable+0x76>
        case 15:data_temp=0x0fffffff;break;
    1ef8:	1067      	lrw      	r3, 0xfffffff	// 1f14 <GPIO_InPutOutPut_Disable+0xa0>
    1efa:	07ef      	br      	0x1ed8	// 1ed8 <GPIO_InPutOutPut_Disable+0x64>
        case 8:data_temp=0xfffffff0;break;
    1efc:	3300      	movi      	r3, 0
    1efe:	2b0f      	subi      	r3, 16
    1f00:	07ec      	br      	0x1ed8	// 1ed8 <GPIO_InPutOutPut_Disable+0x64>
    1f02:	0000      	bkpt
    1f04:	fffff0ff 	.long	0xfffff0ff
    1f08:	ffff0fff 	.long	0xffff0fff
    1f0c:	fff10000 	.long	0xfff10000
    1f10:	ff100000 	.long	0xff100000
    1f14:	0fffffff 	.long	0x0fffffff

Disassembly of section .text.GPIO_PullHigh_Init:

00001f18 <GPIO_PullHigh_Init>:
//bit:0~15
//ReturnValue:VALUE
/*************************************************************/
void GPIO_PullHigh_Init(CSP_GPIO_T *GPIOx,uint8_t bit)
{
	(GPIOx)->PUDR  = (((GPIOx)->PUDR) & ~(0x03<<(bit*2))) | (0x01<<(bit*2));
    1f18:	4121      	lsli      	r1, r1, 1
    1f1a:	3203      	movi      	r2, 3
    1f1c:	9068      	ld.w      	r3, (r0, 0x20)
    1f1e:	7084      	lsl      	r2, r1
    1f20:	68c9      	andn      	r3, r2
    1f22:	3201      	movi      	r2, 1
    1f24:	7084      	lsl      	r2, r1
    1f26:	6cc8      	or      	r3, r2
    1f28:	b068      	st.w      	r3, (r0, 0x20)
}
    1f2a:	783c      	jmp      	r15

Disassembly of section .text.GPIO_PullLow_Init:

00001f2c <GPIO_PullLow_Init>:
void GPIO_PullLow_Init(CSP_GPIO_T *GPIOx,uint8_t bit)
{
	(GPIOx)->PUDR  = (((GPIOx)->PUDR) & ~(0x03<<(bit*2))) | (0x02<<(bit*2));
    1f2c:	4121      	lsli      	r1, r1, 1
    1f2e:	3203      	movi      	r2, 3
    1f30:	9068      	ld.w      	r3, (r0, 0x20)
    1f32:	7084      	lsl      	r2, r1
    1f34:	68c9      	andn      	r3, r2
    1f36:	3202      	movi      	r2, 2
    1f38:	7084      	lsl      	r2, r1
    1f3a:	6cc8      	or      	r3, r2
    1f3c:	b068      	st.w      	r3, (r0, 0x20)
}
    1f3e:	783c      	jmp      	r15

Disassembly of section .text.GPIO_PullHighLow_DIS:

00001f40 <GPIO_PullHighLow_DIS>:
void GPIO_PullHighLow_DIS(CSP_GPIO_T *GPIOx,uint8_t bit)
{
	(GPIOx)->PUDR  = ((GPIOx)->PUDR) & ~(0x03<<(bit*2));
    1f40:	4121      	lsli      	r1, r1, 1
    1f42:	3203      	movi      	r2, 3
    1f44:	9068      	ld.w      	r3, (r0, 0x20)
    1f46:	7084      	lsl      	r2, r1
    1f48:	68c9      	andn      	r3, r2
    1f4a:	b068      	st.w      	r3, (r0, 0x20)
}
    1f4c:	783c      	jmp      	r15

Disassembly of section .text.GPIO_OpenDrain_EN:

00001f4e <GPIO_OpenDrain_EN>:
//bit:0~15
//ReturnValue:VALUE
/*************************************************************/
void GPIO_OpenDrain_EN(CSP_GPIO_T *GPIOx,uint8_t bit)
{
	(GPIOx)->OMCR  = ((GPIOx)->OMCR) | (0x01<<bit);
    1f4e:	3301      	movi      	r3, 1
    1f50:	904a      	ld.w      	r2, (r0, 0x28)
    1f52:	70c4      	lsl      	r3, r1
    1f54:	6cc8      	or      	r3, r2
    1f56:	b06a      	st.w      	r3, (r0, 0x28)
}
    1f58:	783c      	jmp      	r15

Disassembly of section .text.GPIO_OpenDrain_DIS:

00001f5a <GPIO_OpenDrain_DIS>:
void GPIO_OpenDrain_DIS(CSP_GPIO_T *GPIOx,uint8_t bit)
{
	(GPIOx)->OMCR  = ((GPIOx)->OMCR) & ~(0x01<<bit);
    1f5a:	3300      	movi      	r3, 0
    1f5c:	2b01      	subi      	r3, 2
    1f5e:	904a      	ld.w      	r2, (r0, 0x28)
    1f60:	70c7      	rotl      	r3, r1
    1f62:	68c8      	and      	r3, r2
    1f64:	b06a      	st.w      	r3, (r0, 0x28)
}
    1f66:	783c      	jmp      	r15

Disassembly of section .text.GPIO_DriveStrength_EN:

00001f68 <GPIO_DriveStrength_EN>:
//bit:0~15
//ReturnValue:VALUE
/*************************************************************/
void GPIO_DriveStrength_EN(CSP_GPIO_T *GPIOx,uint8_t bit)
{
	(GPIOx)->DSCR  = ((GPIOx)->DSCR) | (0x01<<(bit*2));
    1f68:	4121      	lsli      	r1, r1, 1
    1f6a:	3301      	movi      	r3, 1
    1f6c:	9049      	ld.w      	r2, (r0, 0x24)
    1f6e:	70c4      	lsl      	r3, r1
    1f70:	6cc8      	or      	r3, r2
    1f72:	b069      	st.w      	r3, (r0, 0x24)
}
    1f74:	783c      	jmp      	r15

Disassembly of section .text.GPIO_DriveStrength_DIS:

00001f76 <GPIO_DriveStrength_DIS>:
void GPIO_DriveStrength_DIS(CSP_GPIO_T *GPIOx,uint8_t bit)
{
	(GPIOx)->DSCR  = ((GPIOx)->DSCR) & ~(0x01<<(bit*2));
    1f76:	3300      	movi      	r3, 0
    1f78:	4121      	lsli      	r1, r1, 1
    1f7a:	2b01      	subi      	r3, 2
    1f7c:	9049      	ld.w      	r2, (r0, 0x24)
    1f7e:	70c7      	rotl      	r3, r1
    1f80:	68c8      	and      	r3, r2
    1f82:	b069      	st.w      	r3, (r0, 0x24)
}
    1f84:	783c      	jmp      	r15

Disassembly of section .text.GPIO_IntGroup_Set:

00001f88 <GPIO_IntGroup_Set>:
//EXI16~EXI17:GPIOA0.0~GPIOA0.7
//EXI18~EXI19:GPIOB0.0~GPIOB0.3
//ReturnValue:NONE
/*************************************************************/  
void GPIO_IntGroup_Set(GPIO_Group_TypeDef IO_MODE , uint8_t PinNum , GPIO_EXIPIN_TypeDef Selete_EXI_x)
{
    1f88:	14c1      	push      	r4
    1f8a:	1422      	subi      	r14, r14, 8
	volatile unsigned int  R_data_temp;
    volatile unsigned char R_GPIO_Pin;
	if(Selete_EXI_x<16)
    1f8c:	3a0f      	cmphsi      	r2, 16
    1f8e:	084f      	bt      	0x202c	// 202c <GPIO_IntGroup_Set+0xa4>
	{
		if((Selete_EXI_x==0)||(Selete_EXI_x==8))
    1f90:	6ccb      	mov      	r3, r2
    1f92:	3b83      	bclri      	r3, 3
    1f94:	3b40      	cmpnei      	r3, 0
    1f96:	0813      	bt      	0x1fbc	// 1fbc <GPIO_IntGroup_Set+0x34>
		{
			R_data_temp=0xfffffff0;
    1f98:	2b0f      	subi      	r3, 16
    1f9a:	b861      	st.w      	r3, (r14, 0x4)
			R_GPIO_Pin=0;
    1f9c:	3300      	movi      	r3, 0
		else if((Selete_EXI_x==7)||(Selete_EXI_x==15))
		{
			R_data_temp=0x0fffffff;
			R_GPIO_Pin=28;
		}
		if(Selete_EXI_x<8)
    1f9e:	3a07      	cmphsi      	r2, 8
			R_GPIO_Pin=28;
    1fa0:	dc6e0003 	st.b      	r3, (r14, 0x3)
    1fa4:	1176      	lrw      	r3, 0x20000044	// 207c <GPIO_IntGroup_Set+0xf4>
		if(Selete_EXI_x<8)
    1fa6:	0c38      	bf      	0x2016	// 2016 <GPIO_IntGroup_Set+0x8e>
		{
			GPIOGRP->IGRPL =(GPIOGRP->IGRPL & R_data_temp) | (IO_MODE<<R_GPIO_Pin);
		}
		else if((Selete_EXI_x<16)&&(Selete_EXI_x>=8))
		{
			GPIOGRP->IGRPH =(GPIOGRP->IGRPH & R_data_temp) | (IO_MODE<<R_GPIO_Pin);    
    1fa8:	9340      	ld.w      	r2, (r3, 0x0)
    1faa:	9261      	ld.w      	r3, (r2, 0x4)
    1fac:	9881      	ld.w      	r4, (r14, 0x4)
    1fae:	d82e0003 	ld.b      	r1, (r14, 0x3)
    1fb2:	68d0      	and      	r3, r4
    1fb4:	7004      	lsl      	r0, r1
    1fb6:	6c0c      	or      	r0, r3
    1fb8:	b201      	st.w      	r0, (r2, 0x4)
    1fba:	0437      	br      	0x2028	// 2028 <GPIO_IntGroup_Set+0xa0>
		else if((Selete_EXI_x==1)||(Selete_EXI_x==9))
    1fbc:	3b41      	cmpnei      	r3, 1
    1fbe:	0806      	bt      	0x1fca	// 1fca <GPIO_IntGroup_Set+0x42>
			R_data_temp=0xffffff0f;
    1fc0:	3300      	movi      	r3, 0
    1fc2:	2bf0      	subi      	r3, 241
    1fc4:	b861      	st.w      	r3, (r14, 0x4)
			R_GPIO_Pin=4;
    1fc6:	3304      	movi      	r3, 4
    1fc8:	07eb      	br      	0x1f9e	// 1f9e <GPIO_IntGroup_Set+0x16>
		else if((Selete_EXI_x==2)||(Selete_EXI_x==10))
    1fca:	3b42      	cmpnei      	r3, 2
    1fcc:	0805      	bt      	0x1fd6	// 1fd6 <GPIO_IntGroup_Set+0x4e>
			R_data_temp=0xfffff0ff;
    1fce:	116d      	lrw      	r3, 0xfffff0ff	// 2080 <GPIO_IntGroup_Set+0xf8>
    1fd0:	b861      	st.w      	r3, (r14, 0x4)
			R_GPIO_Pin=8;
    1fd2:	3308      	movi      	r3, 8
    1fd4:	07e5      	br      	0x1f9e	// 1f9e <GPIO_IntGroup_Set+0x16>
		else if((Selete_EXI_x==3)||(Selete_EXI_x==11))
    1fd6:	3b43      	cmpnei      	r3, 3
    1fd8:	0805      	bt      	0x1fe2	// 1fe2 <GPIO_IntGroup_Set+0x5a>
			R_data_temp=0xffff0fff;
    1fda:	116b      	lrw      	r3, 0xffff0fff	// 2084 <GPIO_IntGroup_Set+0xfc>
    1fdc:	b861      	st.w      	r3, (r14, 0x4)
			R_GPIO_Pin=12;
    1fde:	330c      	movi      	r3, 12
    1fe0:	07df      	br      	0x1f9e	// 1f9e <GPIO_IntGroup_Set+0x16>
		else if((Selete_EXI_x==4)||(Selete_EXI_x==12))
    1fe2:	3b44      	cmpnei      	r3, 4
    1fe4:	0806      	bt      	0x1ff0	// 1ff0 <GPIO_IntGroup_Set+0x68>
			R_data_temp=0xfff0ffff;
    1fe6:	1169      	lrw      	r3, 0xfff10000	// 2088 <GPIO_IntGroup_Set+0x100>
    1fe8:	2b00      	subi      	r3, 1
    1fea:	b861      	st.w      	r3, (r14, 0x4)
			R_GPIO_Pin=16;
    1fec:	3310      	movi      	r3, 16
    1fee:	07d8      	br      	0x1f9e	// 1f9e <GPIO_IntGroup_Set+0x16>
		else if((Selete_EXI_x==5)||(Selete_EXI_x==13))
    1ff0:	3b45      	cmpnei      	r3, 5
    1ff2:	0806      	bt      	0x1ffe	// 1ffe <GPIO_IntGroup_Set+0x76>
			R_data_temp=0xff0fffff;
    1ff4:	1166      	lrw      	r3, 0xff100000	// 208c <GPIO_IntGroup_Set+0x104>
    1ff6:	2b00      	subi      	r3, 1
    1ff8:	b861      	st.w      	r3, (r14, 0x4)
			R_GPIO_Pin=20;
    1ffa:	3314      	movi      	r3, 20
    1ffc:	07d1      	br      	0x1f9e	// 1f9e <GPIO_IntGroup_Set+0x16>
		else if((Selete_EXI_x==6)||(Selete_EXI_x==14))
    1ffe:	3b46      	cmpnei      	r3, 6
    2000:	0807      	bt      	0x200e	// 200e <GPIO_IntGroup_Set+0x86>
			R_data_temp=0xf0ffffff;
    2002:	33f1      	movi      	r3, 241
    2004:	4378      	lsli      	r3, r3, 24
    2006:	2b00      	subi      	r3, 1
    2008:	b861      	st.w      	r3, (r14, 0x4)
			R_GPIO_Pin=24;
    200a:	3318      	movi      	r3, 24
    200c:	07c9      	br      	0x1f9e	// 1f9e <GPIO_IntGroup_Set+0x16>
			R_data_temp=0x0fffffff;
    200e:	1161      	lrw      	r3, 0xfffffff	// 2090 <GPIO_IntGroup_Set+0x108>
    2010:	b861      	st.w      	r3, (r14, 0x4)
			R_GPIO_Pin=28;
    2012:	331c      	movi      	r3, 28
    2014:	07c5      	br      	0x1f9e	// 1f9e <GPIO_IntGroup_Set+0x16>
			GPIOGRP->IGRPL =(GPIOGRP->IGRPL & R_data_temp) | (IO_MODE<<R_GPIO_Pin);
    2016:	9340      	ld.w      	r2, (r3, 0x0)
    2018:	9260      	ld.w      	r3, (r2, 0x0)
    201a:	9881      	ld.w      	r4, (r14, 0x4)
    201c:	d82e0003 	ld.b      	r1, (r14, 0x3)
    2020:	68d0      	and      	r3, r4
    2022:	7004      	lsl      	r0, r1
    2024:	6c0c      	or      	r0, r3
    2026:	b200      	st.w      	r0, (r2, 0x0)
			{
				GPIOGRP->IGREX=(GPIOGRP->IGREX)|(PinNum<<12);
			}
		}
	}
}
    2028:	1402      	addi      	r14, r14, 8
    202a:	1481      	pop      	r4
	else if(Selete_EXI_x<20)
    202c:	3a13      	cmphsi      	r2, 20
    202e:	0bfd      	bt      	0x2028	// 2028 <GPIO_IntGroup_Set+0xa0>
		if((IO_MODE==0)&&((Selete_EXI_x==16)||((Selete_EXI_x==17))))						//PA0.0~PA0.7
    2030:	3840      	cmpnei      	r0, 0
    2032:	0814      	bt      	0x205a	// 205a <GPIO_IntGroup_Set+0xd2>
    2034:	3300      	movi      	r3, 0
    2036:	2b0f      	subi      	r3, 16
    2038:	60c8      	addu      	r3, r2
    203a:	3b01      	cmphsi      	r3, 2
    203c:	0bf6      	bt      	0x2028	// 2028 <GPIO_IntGroup_Set+0xa0>
			if(Selete_EXI_x==16)
    203e:	3a50      	cmpnei      	r2, 16
    2040:	106f      	lrw      	r3, 0x20000044	// 207c <GPIO_IntGroup_Set+0xf4>
    2042:	0806      	bt      	0x204e	// 204e <GPIO_IntGroup_Set+0xc6>
				GPIOGRP->IGREX =(GPIOGRP->IGREX)|PinNum;
    2044:	9340      	ld.w      	r2, (r3, 0x0)
    2046:	9262      	ld.w      	r3, (r2, 0x8)
    2048:	6c4c      	or      	r1, r3
    204a:	b222      	st.w      	r1, (r2, 0x8)
    204c:	07ee      	br      	0x2028	// 2028 <GPIO_IntGroup_Set+0xa0>
				GPIOGRP->IGREX=(GPIOGRP->IGREX)|(PinNum<<4);
    204e:	9360      	ld.w      	r3, (r3, 0x0)
    2050:	9342      	ld.w      	r2, (r3, 0x8)
    2052:	4124      	lsli      	r1, r1, 4
				GPIOGRP->IGREX=(GPIOGRP->IGREX)|(PinNum<<12);
    2054:	6c48      	or      	r1, r2
    2056:	b322      	st.w      	r1, (r3, 0x8)
}
    2058:	07e8      	br      	0x2028	// 2028 <GPIO_IntGroup_Set+0xa0>
		else if((IO_MODE==2)&&((Selete_EXI_x==18)||(Selete_EXI_x==19)))					//PB0.0~PB0.3
    205a:	3842      	cmpnei      	r0, 2
    205c:	0be6      	bt      	0x2028	// 2028 <GPIO_IntGroup_Set+0xa0>
    205e:	3300      	movi      	r3, 0
    2060:	2b11      	subi      	r3, 18
    2062:	60c8      	addu      	r3, r2
    2064:	3b01      	cmphsi      	r3, 2
    2066:	0be1      	bt      	0x2028	// 2028 <GPIO_IntGroup_Set+0xa0>
    2068:	1065      	lrw      	r3, 0x20000044	// 207c <GPIO_IntGroup_Set+0xf4>
			if(Selete_EXI_x==18)
    206a:	3a52      	cmpnei      	r2, 18
				GPIOGRP->IGREX=(GPIOGRP->IGREX)|(PinNum<<8);
    206c:	9360      	ld.w      	r3, (r3, 0x0)
    206e:	9342      	ld.w      	r2, (r3, 0x8)
			if(Selete_EXI_x==18)
    2070:	0803      	bt      	0x2076	// 2076 <GPIO_IntGroup_Set+0xee>
				GPIOGRP->IGREX=(GPIOGRP->IGREX)|(PinNum<<8);
    2072:	4128      	lsli      	r1, r1, 8
    2074:	07f0      	br      	0x2054	// 2054 <GPIO_IntGroup_Set+0xcc>
				GPIOGRP->IGREX=(GPIOGRP->IGREX)|(PinNum<<12);
    2076:	412c      	lsli      	r1, r1, 12
    2078:	07ee      	br      	0x2054	// 2054 <GPIO_IntGroup_Set+0xcc>
    207a:	0000      	bkpt
    207c:	20000044 	.long	0x20000044
    2080:	fffff0ff 	.long	0xfffff0ff
    2084:	ffff0fff 	.long	0xffff0fff
    2088:	fff10000 	.long	0xfff10000
    208c:	ff100000 	.long	0xff100000
    2090:	0fffffff 	.long	0x0fffffff

Disassembly of section .text.GPIOA0_EXI_Init:

00002094 <GPIOA0_EXI_Init>:
//IO EXI SET 
//EntryParameter:EXI_IO(EXI0~EXI13)
//ReturnValue:NONE
/*************************************************************/  
void GPIOA0_EXI_Init(GPIO_EXI_TypeDef EXI_IO)
{
    2094:	14d0      	push      	r15
    switch (EXI_IO)
    2096:	380f      	cmphsi      	r0, 16
    2098:	0812      	bt      	0x20bc	// 20bc <GPIOA0_EXI_Init+0x28>
    209a:	117d      	lrw      	r3, 0x2000004c	// 218c <GPIOA0_EXI_Init+0xf8>
    209c:	e3fff630 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    20a0:	1d150f08 	.long	0x1d150f08
    20a4:	39322b24 	.long	0x39322b24
    20a8:	544c463f 	.long	0x544c463f
    20ac:	7069625b 	.long	0x7069625b
    {
        case 0:GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFF0) | 0X00000001;break;
    20b0:	9340      	ld.w      	r2, (r3, 0x0)
    20b2:	9260      	ld.w      	r3, (r2, 0x0)
    20b4:	310f      	movi      	r1, 15
    20b6:	68c5      	andn      	r3, r1
    20b8:	3ba0      	bseti      	r3, 0
        case 1:GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFF0F) | 0X00000010;break;
    20ba:	b260      	st.w      	r3, (r2, 0x0)
        case 12:GPIOA0->CONHR = (GPIOA0->CONHR&0XFFF0FFFF) | 0X00010000;break;
        case 13:GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF) | 0X00100000;break;
		case 14:GPIOA0->CONHR = (GPIOA0->CONHR&0XF0FFFFFF) | 0X01000000;break;
		case 15:GPIOA0->CONHR = (GPIOA0->CONHR&0X0FFFFFFF) | 0X10000000;break;
    }
}
    20bc:	1490      	pop      	r15
        case 1:GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFF0F) | 0X00000010;break;
    20be:	9340      	ld.w      	r2, (r3, 0x0)
    20c0:	9260      	ld.w      	r3, (r2, 0x0)
    20c2:	31f0      	movi      	r1, 240
    20c4:	68c5      	andn      	r3, r1
    20c6:	3ba4      	bseti      	r3, 4
    20c8:	07f9      	br      	0x20ba	// 20ba <GPIOA0_EXI_Init+0x26>
        case 2:GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF) | 0X00000100;break;
    20ca:	9320      	ld.w      	r1, (r3, 0x0)
    20cc:	32f0      	movi      	r2, 240
    20ce:	9160      	ld.w      	r3, (r1, 0x0)
    20d0:	4244      	lsli      	r2, r2, 4
    20d2:	68c9      	andn      	r3, r2
    20d4:	3ba8      	bseti      	r3, 8
        case 6:GPIOA0->CONLR = (GPIOA0->CONLR&0XF0FFFFFF) | 0X01000000;break;
    20d6:	b160      	st.w      	r3, (r1, 0x0)
    20d8:	07f2      	br      	0x20bc	// 20bc <GPIOA0_EXI_Init+0x28>
        case 3:GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF) | 0X00001000;break;
    20da:	9320      	ld.w      	r1, (r3, 0x0)
    20dc:	32f0      	movi      	r2, 240
    20de:	9160      	ld.w      	r3, (r1, 0x0)
    20e0:	4248      	lsli      	r2, r2, 8
    20e2:	68c9      	andn      	r3, r2
    20e4:	3bac      	bseti      	r3, 12
    20e6:	07f8      	br      	0x20d6	// 20d6 <GPIOA0_EXI_Init+0x42>
        case 4:GPIOA0->CONLR = (GPIOA0->CONLR&0XFFF0FFFF) | 0X00010000;break;
    20e8:	9320      	ld.w      	r1, (r3, 0x0)
    20ea:	32f0      	movi      	r2, 240
    20ec:	9160      	ld.w      	r3, (r1, 0x0)
    20ee:	424c      	lsli      	r2, r2, 12
    20f0:	68c9      	andn      	r3, r2
    20f2:	3bb0      	bseti      	r3, 16
    20f4:	07f1      	br      	0x20d6	// 20d6 <GPIOA0_EXI_Init+0x42>
        case 5:GPIOA0->CONLR = (GPIOA0->CONLR&0XFF0FFFFF) | 0X00100000;break;
    20f6:	9320      	ld.w      	r1, (r3, 0x0)
    20f8:	32f0      	movi      	r2, 240
    20fa:	9160      	ld.w      	r3, (r1, 0x0)
    20fc:	4250      	lsli      	r2, r2, 16
    20fe:	68c9      	andn      	r3, r2
    2100:	3bb4      	bseti      	r3, 20
    2102:	07ea      	br      	0x20d6	// 20d6 <GPIOA0_EXI_Init+0x42>
        case 6:GPIOA0->CONLR = (GPIOA0->CONLR&0XF0FFFFFF) | 0X01000000;break;
    2104:	9320      	ld.w      	r1, (r3, 0x0)
    2106:	32f0      	movi      	r2, 240
    2108:	9160      	ld.w      	r3, (r1, 0x0)
    210a:	4254      	lsli      	r2, r2, 20
    210c:	68c9      	andn      	r3, r2
    210e:	3bb8      	bseti      	r3, 24
    2110:	07e3      	br      	0x20d6	// 20d6 <GPIOA0_EXI_Init+0x42>
        case 7:GPIOA0->CONLR = (GPIOA0->CONLR&0X0FFFFFFF) | 0X10000000;break;
    2112:	9340      	ld.w      	r2, (r3, 0x0)
    2114:	9260      	ld.w      	r3, (r2, 0x0)
    2116:	4364      	lsli      	r3, r3, 4
    2118:	4b64      	lsri      	r3, r3, 4
    211a:	3bbc      	bseti      	r3, 28
    211c:	07cf      	br      	0x20ba	// 20ba <GPIOA0_EXI_Init+0x26>
        case 8:GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFF0) | 0X00000001;break;
    211e:	9340      	ld.w      	r2, (r3, 0x0)
    2120:	9261      	ld.w      	r3, (r2, 0x4)
    2122:	310f      	movi      	r1, 15
    2124:	68c5      	andn      	r3, r1
    2126:	3ba0      	bseti      	r3, 0
		case 15:GPIOA0->CONHR = (GPIOA0->CONHR&0X0FFFFFFF) | 0X10000000;break;
    2128:	b261      	st.w      	r3, (r2, 0x4)
}
    212a:	07c9      	br      	0x20bc	// 20bc <GPIOA0_EXI_Init+0x28>
        case 9:GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFF0F) | 0X00000010;break;
    212c:	9340      	ld.w      	r2, (r3, 0x0)
    212e:	9261      	ld.w      	r3, (r2, 0x4)
    2130:	31f0      	movi      	r1, 240
    2132:	68c5      	andn      	r3, r1
    2134:	3ba4      	bseti      	r3, 4
    2136:	07f9      	br      	0x2128	// 2128 <GPIOA0_EXI_Init+0x94>
        case 10:GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFF0FF) | 0X00000100;break;
    2138:	9320      	ld.w      	r1, (r3, 0x0)
    213a:	32f0      	movi      	r2, 240
    213c:	9161      	ld.w      	r3, (r1, 0x4)
    213e:	4244      	lsli      	r2, r2, 4
    2140:	68c9      	andn      	r3, r2
    2142:	3ba8      	bseti      	r3, 8
		case 14:GPIOA0->CONHR = (GPIOA0->CONHR&0XF0FFFFFF) | 0X01000000;break;
    2144:	b161      	st.w      	r3, (r1, 0x4)
    2146:	07bb      	br      	0x20bc	// 20bc <GPIOA0_EXI_Init+0x28>
        case 11:GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFF0FFF) | 0X00001000;break;
    2148:	9320      	ld.w      	r1, (r3, 0x0)
    214a:	32f0      	movi      	r2, 240
    214c:	9161      	ld.w      	r3, (r1, 0x4)
    214e:	4248      	lsli      	r2, r2, 8
    2150:	68c9      	andn      	r3, r2
    2152:	3bac      	bseti      	r3, 12
    2154:	07f8      	br      	0x2144	// 2144 <GPIOA0_EXI_Init+0xb0>
        case 12:GPIOA0->CONHR = (GPIOA0->CONHR&0XFFF0FFFF) | 0X00010000;break;
    2156:	9320      	ld.w      	r1, (r3, 0x0)
    2158:	32f0      	movi      	r2, 240
    215a:	9161      	ld.w      	r3, (r1, 0x4)
    215c:	424c      	lsli      	r2, r2, 12
    215e:	68c9      	andn      	r3, r2
    2160:	3bb0      	bseti      	r3, 16
    2162:	07f1      	br      	0x2144	// 2144 <GPIOA0_EXI_Init+0xb0>
        case 13:GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF) | 0X00100000;break;
    2164:	9320      	ld.w      	r1, (r3, 0x0)
    2166:	32f0      	movi      	r2, 240
    2168:	9161      	ld.w      	r3, (r1, 0x4)
    216a:	4250      	lsli      	r2, r2, 16
    216c:	68c9      	andn      	r3, r2
    216e:	3bb4      	bseti      	r3, 20
    2170:	07ea      	br      	0x2144	// 2144 <GPIOA0_EXI_Init+0xb0>
		case 14:GPIOA0->CONHR = (GPIOA0->CONHR&0XF0FFFFFF) | 0X01000000;break;
    2172:	9320      	ld.w      	r1, (r3, 0x0)
    2174:	32f0      	movi      	r2, 240
    2176:	9161      	ld.w      	r3, (r1, 0x4)
    2178:	4254      	lsli      	r2, r2, 20
    217a:	68c9      	andn      	r3, r2
    217c:	3bb8      	bseti      	r3, 24
    217e:	07e3      	br      	0x2144	// 2144 <GPIOA0_EXI_Init+0xb0>
		case 15:GPIOA0->CONHR = (GPIOA0->CONHR&0X0FFFFFFF) | 0X10000000;break;
    2180:	9340      	ld.w      	r2, (r3, 0x0)
    2182:	9261      	ld.w      	r3, (r2, 0x4)
    2184:	4364      	lsli      	r3, r3, 4
    2186:	4b64      	lsri      	r3, r3, 4
    2188:	3bbc      	bseti      	r3, 28
    218a:	07cf      	br      	0x2128	// 2128 <GPIOA0_EXI_Init+0x94>
    218c:	2000004c 	.long	0x2000004c

Disassembly of section .text.GPIO_Write_High:

00002190 <GPIO_Write_High>:
//bit:0~15
//ReturnValue:VALUE
/*************************************************************/
void GPIO_Write_High(CSP_GPIO_T *GPIOx,uint8_t bit)
{
        (GPIOx)->SODR = (1ul<<bit);
    2190:	3301      	movi      	r3, 1
    2192:	70c4      	lsl      	r3, r1
    2194:	b063      	st.w      	r3, (r0, 0xc)
}
    2196:	783c      	jmp      	r15

Disassembly of section .text.GPIO_Write_Low:

00002198 <GPIO_Write_Low>:
void GPIO_Write_Low(CSP_GPIO_T *GPIOx,uint8_t bit)
{
        (GPIOx)->CODR = (1ul<<bit);
    2198:	3301      	movi      	r3, 1
    219a:	70c4      	lsl      	r3, r1
    219c:	b064      	st.w      	r3, (r0, 0x10)
}
    219e:	783c      	jmp      	r15

Disassembly of section .text.GPIO_Set_Value:

000021a0 <GPIO_Set_Value>:
//bitposi:0~15 bitval:0~1 0=low 1=high
//ReturnValue:VALUE
/*************************************************************/
void GPIO_Set_Value(CSP_GPIO_T *GPIOx,uint8_t bitposi,uint8_t bitval)
{
    if (bitval==1)
    21a0:	3a41      	cmpnei      	r2, 1
    21a2:	0804      	bt      	0x21aa	// 21aa <GPIO_Set_Value+0xa>
    {
        (GPIOx)->SODR = (1ul<<bitposi);
    21a4:	7084      	lsl      	r2, r1
    21a6:	b043      	st.w      	r2, (r0, 0xc)
    }
    else if ((bitval==0))
    {
        (GPIOx)->CODR = (1ul<<bitposi);
    }
}
    21a8:	783c      	jmp      	r15
    else if ((bitval==0))
    21aa:	3a40      	cmpnei      	r2, 0
    21ac:	0bfe      	bt      	0x21a8	// 21a8 <GPIO_Set_Value+0x8>
        (GPIOx)->CODR = (1ul<<bitposi);
    21ae:	3301      	movi      	r3, 1
    21b0:	70c4      	lsl      	r3, r1
    21b2:	b064      	st.w      	r3, (r0, 0x10)
}
    21b4:	07fa      	br      	0x21a8	// 21a8 <GPIO_Set_Value+0x8>

Disassembly of section .text.GPIO_Reverse:

000021b6 <GPIO_Reverse>:
//ReturnValue:VALUE
/*************************************************************/
void GPIO_Reverse(CSP_GPIO_T *GPIOx,uint8_t bit)
{
     uint32_t dat = 0;
     dat=((GPIOx)->ODSR>>bit)&1ul;
    21b6:	9045      	ld.w      	r2, (r0, 0x14)
    21b8:	3301      	movi      	r3, 1
    21ba:	7085      	lsr      	r2, r1
    21bc:	688c      	and      	r2, r3
     {
       if (dat==1)  
    21be:	3a40      	cmpnei      	r2, 0
    21c0:	70c4      	lsl      	r3, r1
    21c2:	0c03      	bf      	0x21c8	// 21c8 <GPIO_Reverse+0x12>
       {
           (GPIOx)->CODR = (1ul<<bit);
    21c4:	b064      	st.w      	r3, (r0, 0x10)
       {
           (GPIOx)->SODR = (1ul<<bit);
           return;
       }
     }
}
    21c6:	783c      	jmp      	r15
           (GPIOx)->SODR = (1ul<<bit);
    21c8:	b063      	st.w      	r3, (r0, 0xc)
           return;
    21ca:	07fe      	br      	0x21c6	// 21c6 <GPIO_Reverse+0x10>

Disassembly of section .text.GPIO_Read_Status:

000021cc <GPIO_Read_Status>:
/*************************************************************/
uint8_t GPIO_Read_Status(CSP_GPIO_T *GPIOx,uint8_t bit)
{
    uint8_t value = 0;
    uint32_t dat = 0;
    dat=((GPIOx)->PSDR)&(1<<bit);
    21cc:	3301      	movi      	r3, 1
    21ce:	9046      	ld.w      	r2, (r0, 0x18)
    21d0:	70c4      	lsl      	r3, r1
    21d2:	688c      	and      	r2, r3
    if (dat == (1<<bit))								
    21d4:	64ca      	cmpne      	r2, r3
    21d6:	6403      	mvcv      	r0
	{
	    value = 1;
	} 
    return value;
    21d8:	7400      	zextb      	r0, r0
}
    21da:	783c      	jmp      	r15

Disassembly of section .text.WWDT_CONFIG:

000021dc <WWDT_CONFIG>:
//WWDT CONFIG
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/ 
void WWDT_CONFIG(WWDT_PSCDIV_TypeDef PSCDIVX,U8_T WND_DATA,WWDT_DBGEN_TypeDef DBGENX)
{
    21dc:	14c1      	push      	r4
	WWDT->CFGR =WND_DATA;
    21de:	1065      	lrw      	r3, 0x20000010	// 21f0 <WWDT_CONFIG+0x14>
    21e0:	9380      	ld.w      	r4, (r3, 0x0)
    21e2:	b421      	st.w      	r1, (r4, 0x4)
	WWDT->CFGR |= PSCDIVX |DBGENX;
    21e4:	9461      	ld.w      	r3, (r4, 0x4)
    21e6:	6c8c      	or      	r2, r3
    21e8:	6c08      	or      	r0, r2
    21ea:	b401      	st.w      	r0, (r4, 0x4)
}
    21ec:	1481      	pop      	r4
    21ee:	0000      	bkpt
    21f0:	20000010 	.long	0x20000010

Disassembly of section .text.WWDT_CNT_Load:

000021f4 <WWDT_CNT_Load>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/ 
void WWDT_CNT_Load(U8_T cnt_data)
{
	WWDT->CR  |= cnt_data;						//SET
    21f4:	1063      	lrw      	r3, 0x20000010	// 2200 <WWDT_CNT_Load+0xc>
    21f6:	9360      	ld.w      	r3, (r3, 0x0)
    21f8:	9340      	ld.w      	r2, (r3, 0x0)
    21fa:	6c08      	or      	r0, r2
    21fc:	b300      	st.w      	r0, (r3, 0x0)
}
    21fe:	783c      	jmp      	r15
    2200:	20000010 	.long	0x20000010

Disassembly of section .text.WWDT_Int_Config:

00002204 <WWDT_Int_Config>:
//EntryParameter:NONE
//ReturnValue: NONE
/*************************************************************/
void WWDT_Int_Config(FunctionalStatus NewState)
{
	if (NewState != DISABLE)
    2204:	3840      	cmpnei      	r0, 0
    2206:	106a      	lrw      	r3, 0x20000010	// 222c <WWDT_Int_Config+0x28>
    2208:	0c0b      	bf      	0x221e	// 221e <WWDT_Int_Config+0x1a>
	{
		WWDT->ICR = WWDT_EVI;				
    220a:	9360      	ld.w      	r3, (r3, 0x0)
    220c:	3101      	movi      	r1, 1
    220e:	b325      	st.w      	r1, (r3, 0x14)
		WWDT->IMCR  |= WWDT_EVI;
    2210:	9344      	ld.w      	r2, (r3, 0x10)
    2212:	6c84      	or      	r2, r1
    2214:	b344      	st.w      	r2, (r3, 0x10)
		INTC_ISER_WRITE(WWDT_INT);  
    2216:	3240      	movi      	r2, 64
    2218:	1066      	lrw      	r3, 0xe000e100	// 2230 <WWDT_Int_Config+0x2c>
	}
	else
	{
		WWDT->IMCR  &= ~WWDT_EVI;					//CLR
		INTC_ICER_WRITE(WWDT_INT);  
    221a:	b340      	st.w      	r2, (r3, 0x0)
	}
    221c:	783c      	jmp      	r15
		WWDT->IMCR  &= ~WWDT_EVI;					//CLR
    221e:	9340      	ld.w      	r2, (r3, 0x0)
    2220:	9264      	ld.w      	r3, (r2, 0x10)
    2222:	3b80      	bclri      	r3, 0
    2224:	b264      	st.w      	r3, (r2, 0x10)
		INTC_ICER_WRITE(WWDT_INT);  
    2226:	3240      	movi      	r2, 64
    2228:	1063      	lrw      	r3, 0xe000e180	// 2234 <WWDT_Int_Config+0x30>
    222a:	07f8      	br      	0x221a	// 221a <WWDT_Int_Config+0x16>
    222c:	20000010 	.long	0x20000010
    2230:	e000e100 	.long	0xe000e100
    2234:	e000e180 	.long	0xe000e180

Disassembly of section .text.BT_ConfigInterrupt_CMD:

00002238 <BT_ConfigInterrupt_CMD>:
//NewState:ENABLE,DISABLE
//ReturnValue:NONE
/*************************************************************/ 
void BT_ConfigInterrupt_CMD(CSP_BT_T *BTx,FunctionalStatus NewState,BT_IMSCR_TypeDef BT_IMSCR_X)
{
	if (NewState != DISABLE)
    2238:	3940      	cmpnei      	r1, 0
	{
		BTx->IMCR  |= BT_IMSCR_X;						
    223a:	906b      	ld.w      	r3, (r0, 0x2c)
	if (NewState != DISABLE)
    223c:	0c04      	bf      	0x2244	// 2244 <BT_ConfigInterrupt_CMD+0xc>
		BTx->IMCR  |= BT_IMSCR_X;						
    223e:	6c8c      	or      	r2, r3
    2240:	b04b      	st.w      	r2, (r0, 0x2c)
	}
	else
	{
		BTx->IMCR  &= ~BT_IMSCR_X;					
	}
}
    2242:	783c      	jmp      	r15
		BTx->IMCR  &= ~BT_IMSCR_X;					
    2244:	68c9      	andn      	r3, r2
    2246:	b06b      	st.w      	r3, (r0, 0x2c)
}
    2248:	07fd      	br      	0x2242	// 2242 <BT_ConfigInterrupt_CMD+0xa>

Disassembly of section .text.delay_nms:

0000224a <delay_nms>:
//software delay
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/	
void delay_nms(unsigned int t)
{
    224a:	14d0      	push      	r15
    224c:	1423      	subi      	r14, r14, 12
    volatile unsigned int i,j ,k=0;
    j = 50* t;
    224e:	3232      	movi      	r2, 50
    volatile unsigned int i,j ,k=0;
    2250:	3300      	movi      	r3, 0
    j = 50* t;
    2252:	7c08      	mult      	r0, r2
    volatile unsigned int i,j ,k=0;
    2254:	b862      	st.w      	r3, (r14, 0x8)
    j = 50* t;
    2256:	b801      	st.w      	r0, (r14, 0x4)
    for ( i = 0; i < j; i++ )
    2258:	b860      	st.w      	r3, (r14, 0x0)
    225a:	9840      	ld.w      	r2, (r14, 0x0)
    225c:	9861      	ld.w      	r3, (r14, 0x4)
    225e:	64c8      	cmphs      	r2, r3
    2260:	0c03      	bf      	0x2266	// 2266 <delay_nms+0x1c>
    {
        k++;
		SYSCON_IWDCNT_Reload(); 
    }
}
    2262:	1403      	addi      	r14, r14, 12
    2264:	1490      	pop      	r15
        k++;
    2266:	9862      	ld.w      	r3, (r14, 0x8)
    2268:	2300      	addi      	r3, 1
    226a:	b862      	st.w      	r3, (r14, 0x8)
		SYSCON_IWDCNT_Reload(); 
    226c:	e3fffd02 	bsr      	0x1c70	// 1c70 <SYSCON_IWDCNT_Reload>
    for ( i = 0; i < j; i++ )
    2270:	9860      	ld.w      	r3, (r14, 0x0)
    2272:	2300      	addi      	r3, 1
    2274:	07f2      	br      	0x2258	// 2258 <delay_nms+0xe>

Disassembly of section .text.GPIO_CONFIG:

00002278 <GPIO_CONFIG>:
//GPIO Initial
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/	
void GPIO_CONFIG(void)
{
    2278:	14d2      	push      	r4-r5, r15
//	GPIO_Init(GPIOA0,10,0);
//	GPIO_Write_High(GPIOA0,10);				
//	GPIO_Write_Low(GPIOA0,10);				
//------------  EXI FUNTION  --------------------------------/
//EXI0_INT= EXI0/EXI16,EXI1_INT= EXI1/EXI17, EXI2_INT=EXI2~EXI3/EXI18/EXI19, EXI3_INT=EXI4~EXI9, EXI4_INT=EXI10~EXI15    
	GPIO_IntGroup_Set(PA0,0,Selete_EXI_PIN0);					//PA0.0 set as EXI0  
    227a:	3200      	movi      	r2, 0
    227c:	3100      	movi      	r1, 0
    227e:	3000      	movi      	r0, 0
    2280:	e3fffe84 	bsr      	0x1f88	// 1f88 <GPIO_IntGroup_Set>
	GPIOA0_EXI_Init(EXI0);                                   	//PA0.0 set as input
    2284:	3000      	movi      	r0, 0
    2286:	e3ffff07 	bsr      	0x2094	// 2094 <GPIOA0_EXI_Init>
	EXTI_trigger_CMD(ENABLE,EXI_PIN0,_EXIFT);                   //ENABLE falling edge
    228a:	3201      	movi      	r2, 1
    228c:	3101      	movi      	r1, 1
    228e:	3001      	movi      	r0, 1
    2290:	e3fffd32 	bsr      	0x1cf4	// 1cf4 <EXTI_trigger_CMD>
	EXTI_trigger_CMD(ENABLE,EXI_PIN0,_EXIRT);                 //ENABLE rising edge
    2294:	3200      	movi      	r2, 0
    2296:	3101      	movi      	r1, 1
    2298:	3001      	movi      	r0, 1
    229a:	e3fffd2d 	bsr      	0x1cf4	// 1cf4 <EXTI_trigger_CMD>
    EXTI_interrupt_CMD(ENABLE,EXI_PIN0);                	   	//enable EXI
    229e:	3101      	movi      	r1, 1
    22a0:	3001      	movi      	r0, 1
    22a2:	e3fffd49 	bsr      	0x1d34	// 1d34 <EXTI_interrupt_CMD>
    GPIO_EXTI_interrupt(GPIOA0,0b0000000000000001);				//enable GPIOA0.0 as EXI
    22a6:	1075      	lrw      	r3, 0x2000004c	// 22f8 <GPIO_CONFIG+0x80>
    22a8:	3101      	movi      	r1, 1
    22aa:	9300      	ld.w      	r0, (r3, 0x0)
    22ac:	e3fffd5e 	bsr      	0x1d68	// 1d68 <GPIO_EXTI_interrupt>
	
	GPIO_IntGroup_Set(PB0,0,Selete_EXI_PIN18);					//PB0.0 set as EXI18 
	GPIO_Init(GPIOB0,0,1);										//PB0.0 set as input                                	
    22b0:	10b3      	lrw      	r5, 0x20000048	// 22fc <GPIO_CONFIG+0x84>
	GPIO_IntGroup_Set(PB0,0,Selete_EXI_PIN18);					//PB0.0 set as EXI18 
    22b2:	3212      	movi      	r2, 18
    22b4:	3100      	movi      	r1, 0
    22b6:	3002      	movi      	r0, 2
	EXTI_trigger_CMD(ENABLE,EXI_PIN18,_EXIFT);                  //ENABLE falling edge
    22b8:	3480      	movi      	r4, 128
	GPIO_IntGroup_Set(PB0,0,Selete_EXI_PIN18);					//PB0.0 set as EXI18 
    22ba:	e3fffe67 	bsr      	0x1f88	// 1f88 <GPIO_IntGroup_Set>
	EXTI_trigger_CMD(ENABLE,EXI_PIN18,_EXIFT);                  //ENABLE falling edge
    22be:	448b      	lsli      	r4, r4, 11
	GPIO_Init(GPIOB0,0,1);										//PB0.0 set as input                                	
    22c0:	9500      	ld.w      	r0, (r5, 0x0)
    22c2:	3201      	movi      	r2, 1
    22c4:	3100      	movi      	r1, 0
    22c6:	e3fffd67 	bsr      	0x1d94	// 1d94 <GPIO_Init>
	EXTI_trigger_CMD(ENABLE,EXI_PIN18,_EXIFT);                  //ENABLE falling edge
    22ca:	6c53      	mov      	r1, r4
    22cc:	3201      	movi      	r2, 1
    22ce:	3001      	movi      	r0, 1
    22d0:	e3fffd12 	bsr      	0x1cf4	// 1cf4 <EXTI_trigger_CMD>
	EXTI_trigger_CMD(ENABLE,EXI_PIN18,_EXIRT);                 //ENABLE rising edge
    22d4:	3200      	movi      	r2, 0
    22d6:	6c53      	mov      	r1, r4
    22d8:	3001      	movi      	r0, 1
    22da:	e3fffd0d 	bsr      	0x1cf4	// 1cf4 <EXTI_trigger_CMD>
    EXTI_interrupt_CMD(ENABLE,EXI_PIN18);                	   	//enable EXI
    22de:	6c53      	mov      	r1, r4
    22e0:	3001      	movi      	r0, 1
    22e2:	e3fffd29 	bsr      	0x1d34	// 1d34 <EXTI_interrupt_CMD>
    GPIO_EXTI_interrupt(GPIOB0,0b0000000000000001);				//enable GPIOB0.0 as EXI
    22e6:	9500      	ld.w      	r0, (r5, 0x0)
    22e8:	3101      	movi      	r1, 1
    22ea:	e3fffd3f 	bsr      	0x1d68	// 1d68 <GPIO_EXTI_interrupt>
	
	
	EXI0_Int_Enable();                                         //EXI0 / EXI16 INT Vector
    22ee:	e3fffd3f 	bsr      	0x1d6c	// 1d6c <EXI0_Int_Enable>
    //EXI1_Int_Enable();                                       //EXI1 / EXI17 INT Vector
    EXI2_Int_Enable();                                         //EXI2~EXI3 / EXI18~19 INT Vector
    22f2:	e3fffd43 	bsr      	0x1d78	// 1d78 <EXI2_Int_Enable>
    //EXI0_WakeUp_Enable();										//EXI0 interrupt wake up enable
	//EXI1_WakeUp_Enable();										//EXI1 interrupt wake up enable
	//EXI2_WakeUp_Enable();										//EXI2~EXI3 interrupt wake up enable
	//EXI3_WakeUp_Enable();										//EXI4~EXI9 interrupt wake up enable
	//EXI4_WakeUp_Enable();										//EXI10~EXI15 interrupt wake up enable
}
    22f6:	1492      	pop      	r4-r5, r15
    22f8:	2000004c 	.long	0x2000004c
    22fc:	20000048 	.long	0x20000048

Disassembly of section .text.SYSCON_CONFIG:

00002300 <SYSCON_CONFIG>:
//syscon Functions
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SYSCON_CONFIG(void)
{
    2300:	14d0      	push      	r15
    2302:	1421      	subi      	r14, r14, 4
//------SYSTEM CLK AND PCLK FUNTION---------------------------/
	SYSCON_RST_VALUE();                                                         //SYSCON all register clr
    2304:	e3fffbfc 	bsr      	0x1afc	// 1afc <SYSCON_RST_VALUE>
	SYSCON_General_CMD(ENABLE,ENDIS_ISOSC);										//SYSCON enable/disable clock source
    2308:	3101      	movi      	r1, 1
    230a:	3001      	movi      	r0, 1
    230c:	e3fffc24 	bsr      	0x1b54	// 1b54 <SYSCON_General_CMD>
	//EMOSC_OSTR_Config(0XAD,0X1f,EM_LFSEL_EN,EM_FLEN_EN,EM_FLSEL_10ns);		//EM_CNT=0X3FF,0xAD(36K),EM_GM=0,Low F modedisable,EM filter disable,if enable,cont set 5ns
	//SYSCON_General_CMD(ENABLE,ENDIS_EMOSC);
	SYSCON_HFOSC_SELECTE(HFOSC_SELECTE_48M);									//HFOSC selected 48MHz
    2310:	3000      	movi      	r0, 0
    2312:	e3fffc7d 	bsr      	0x1c0c	// 1c0c <SYSCON_HFOSC_SELECTE>
	SystemCLK_HCLKDIV_PCLKDIV_Config(SYSCLK_HFOSC,HCLK_DIV_1,PCLK_DIV_1,HFOSC_48M);//system clock set, Hclk div ,Pclk div  set system clock=SystemCLK/Hclk div/Pclk div
    2316:	3180      	movi      	r1, 128
    2318:	3308      	movi      	r3, 8
    231a:	3200      	movi      	r2, 0
    231c:	4121      	lsli      	r1, r1, 1
    231e:	3002      	movi      	r0, 2
    2320:	e3fffc32 	bsr      	0x1b84	// 1b84 <SystemCLK_HCLKDIV_PCLKDIV_Config>
//------------  WDT FUNTION  --------------------------------/
    SYSCON_IWDCNT_Config(IWDT_TIME_4S,IWDT_INTW_DIV_7);      					//WDT TIME 1s,WDT alarm interrupt time=1s-1s*1/8=0.875S
    2324:	30c0      	movi      	r0, 192
    2326:	3118      	movi      	r1, 24
    2328:	4003      	lsli      	r0, r0, 3
    232a:	e3fffcad 	bsr      	0x1c84	// 1c84 <SYSCON_IWDCNT_Config>
    SYSCON_WDT_CMD(ENABLE);                                                  	//enable/disable WDT		
    232e:	3001      	movi      	r0, 1
    2330:	e3fffc82 	bsr      	0x1c34	// 1c34 <SYSCON_WDT_CMD>
    SYSCON_IWDCNT_Reload();                                                   	//reload WDT
    2334:	e3fffc9e 	bsr      	0x1c70	// 1c70 <SYSCON_IWDCNT_Reload>
	IWDT_Int_Enable();
    2338:	e3fffcd0 	bsr      	0x1cd8	// 1cd8 <IWDT_Int_Enable>
//------------  WWDT FUNTION  --------------------------------/
	WWDT_CNT_Load(0xFF);
    233c:	30ff      	movi      	r0, 255
    233e:	e3ffff5b 	bsr      	0x21f4	// 21f4 <WWDT_CNT_Load>
	WWDT_CONFIG(PCLK_4096_DIV0,0xFF,WWDT_DBGDIS);
    2342:	3200      	movi      	r2, 0
    2344:	31ff      	movi      	r1, 255
    2346:	3000      	movi      	r0, 0
    2348:	e3ffff4a 	bsr      	0x21dc	// 21dc <WWDT_CONFIG>
	WWDT_Int_Config(ENABLE);													
    234c:	3001      	movi      	r0, 1
    234e:	e3ffff5b 	bsr      	0x2204	// 2204 <WWDT_Int_Config>
	//WWDT_CMD(ENABLE);															//enable wwdt
//------------  CLO Output --------------------------------/	
	//SYSCON_CLO_CONFIG(CLO_PA08);												//CLO output setting
	//SYSCON_CLO_SRC_SET(CLO_HFCLK,CLO_DIV16);									//CLO output clock and div
//------------  LVD FUNTION  --------------------------------/ 
    SYSCON_LVD_Config(ENABLE_LVDEN,INTDET_LVL_3_9V,RSTDET_LVL_1_9V,ENABLE_LVD_INT,INTDET_POL_fall);   //LVD LVR Enable/Disable
    2352:	3340      	movi      	r3, 64
    2354:	b860      	st.w      	r3, (r14, 0x0)
    2356:	31c0      	movi      	r1, 192
    2358:	3380      	movi      	r3, 128
    235a:	4364      	lsli      	r3, r3, 4
    235c:	3200      	movi      	r2, 0
    235e:	4123      	lsli      	r1, r1, 3
    2360:	3000      	movi      	r0, 0
    2362:	e3fffc9d 	bsr      	0x1c9c	// 1c9c <SYSCON_LVD_Config>
    LVD_Int_Enable();	
    2366:	e3fffcab 	bsr      	0x1cbc	// 1cbc <LVD_Int_Enable>
//------------  SYSCON Vector  --------------------------------/ 	
	SYSCON_Int_Enable();    														//SYSCON VECTOR
    236a:	e3fffd0f 	bsr      	0x1d88	// 1d88 <SYSCON_Int_Enable>
	//SYSCON_WakeUp_Enable();    													//Enable WDT wakeup INT
//------------------------------------------------------------/
//OSC CLOCK Calibration
//------------------------------------------------------------/	
	std_clk_calib_source(CLK_ISOSC_27K);
    236e:	3000      	movi      	r0, 0
    2370:	e0000f2a 	bsr      	0x41c4	// 41c4 <std_clk_calib_source>
	std_clk_calib(CLK_HFOSC_48M);												//Select the same clock source as the system
    2374:	3000      	movi      	r0, 0
    2376:	e0000f3f 	bsr      	0x41f4	// 41f4 <std_clk_calib>
	
}
    237a:	1401      	addi      	r14, r14, 4
    237c:	1490      	pop      	r15

Disassembly of section .text.APT32F102_init:

00002380 <APT32F102_init>:
//ReturnValue:NONE                                                                /
/*********************************************************************************/
/*********************************************************************************/  
/*********************************************************************************/
void APT32F102_init(void) 
{
    2380:	14d0      	push      	r15
//------------------------------------------------------------/
//Peripheral clock enable and disable
//EntryParameter:NONE
//ReturnValue:NONE
//------------------------------------------------------------/
    SYSCON->PCER0=0xFFFFFFF;                                        //PCLK Enable
    2382:	1069      	lrw      	r3, 0x2000005c	// 23a4 <APT32F102_init+0x24>
    SYSCON->PCER1=0xFFFFFFF;                                        //PCLK Enable
    while(!(SYSCON->PCSR0&0x1));                                    //Wait PCLK enabled	
    2384:	3101      	movi      	r1, 1
    SYSCON->PCER0=0xFFFFFFF;                                        //PCLK Enable
    2386:	9340      	ld.w      	r2, (r3, 0x0)
    2388:	1068      	lrw      	r3, 0xfffffff	// 23a8 <APT32F102_init+0x28>
    238a:	b26a      	st.w      	r3, (r2, 0x28)
    SYSCON->PCER1=0xFFFFFFF;                                        //PCLK Enable
    238c:	b26d      	st.w      	r3, (r2, 0x34)
    while(!(SYSCON->PCSR0&0x1));                                    //Wait PCLK enabled	
    238e:	926c      	ld.w      	r3, (r2, 0x30)
    2390:	68c4      	and      	r3, r1
    2392:	3b40      	cmpnei      	r3, 0
    2394:	0ffd      	bf      	0x238e	// 238e <APT32F102_init+0xe>
//------------------------------------------------------------/
//ISOSC/IMOSC/EMOSC/SYSCLK/IWDT/LVD/EM_CMFAIL/EM_CMRCV/CMD_ERR OSC stable interrupt
//EntryParameter:NONE
//ReturnValue:NONE
//------------------------------------------------------------/
    SYSCON_CONFIG();                                                 //syscon  initial
    2396:	e3ffffb5 	bsr      	0x2300	// 2300 <SYSCON_CONFIG>
	CK_CPU_EnAllNormalIrq();                                         //enable all IRQ
    239a:	e000052f 	bsr      	0x2df8	// 2df8 <CK_CPU_EnAllNormalIrq>
	//SYSCON_INT_Priority();										 //initial all Priority=0xC0
	//Set_INT_Priority(BT0_IRQ,0);									 //0:set int priority 1st
//------------------------------------------------------------/
//Other IP config
//------------------------------------------------------------/
	GPIO_CONFIG();                                                //GPIO initial     
    239e:	e3ffff6d 	bsr      	0x2278	// 2278 <GPIO_CONFIG>
    //UART0_CONFIG();                                               //UART0 initial 
	//UART1_CONFIG();                                               //UART1 initial 
	//UART2_CONFIG();                                               //UART2 initial 
	//ADC12_CONFIG();                                               //ADC initial 
	//TK_CONFIG();													//Touch Key initial
}
    23a2:	1490      	pop      	r15
    23a4:	2000005c 	.long	0x2000005c
    23a8:	0fffffff 	.long	0x0fffffff

Disassembly of section .text.SYSCONIntHandler:

000023ac <SYSCONIntHandler>:
//SYSCON Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SYSCONIntHandler(void) 
{
    23ac:	1460      	nie
    23ae:	1462      	ipush
    // ISR content ...
	nop;
    23b0:	6c03      	mov      	r0, r0
	if((SYSCON->MISR&ISOSC_ST)==ISOSC_ST)				//ISOSC stable interrupt
    23b2:	117c      	lrw      	r3, 0x2000005c	// 24a0 <SYSCONIntHandler+0xf4>
    23b4:	3280      	movi      	r2, 128
    23b6:	9360      	ld.w      	r3, (r3, 0x0)
    23b8:	60c8      	addu      	r3, r2
    23ba:	9323      	ld.w      	r1, (r3, 0xc)
    23bc:	3001      	movi      	r0, 1
    23be:	6840      	and      	r1, r0
    23c0:	3940      	cmpnei      	r1, 0
    23c2:	0c04      	bf      	0x23ca	// 23ca <SYSCONIntHandler+0x1e>
	{
		SYSCON->ICR = EMOSC_ST;
	} 
	else if((SYSCON->MISR&HFOSC_ST)==HFOSC_ST)			//HFOSC stable interrupt
	{
		SYSCON->ICR = HFOSC_ST;
    23c4:	b301      	st.w      	r0, (r3, 0x4)
	}
	else if((SYSCON->MISR&CMD_ERR_ST)==CMD_ERR_ST)		//Command error interrupt
	{
		SYSCON->ICR = CMD_ERR_ST;
	}
}
    23c6:	1463      	ipop
    23c8:	1461      	nir
	else if((SYSCON->MISR&IMOSC_ST)==IMOSC_ST)			//IMOSC stable interrupt
    23ca:	9323      	ld.w      	r1, (r3, 0xc)
    23cc:	3002      	movi      	r0, 2
    23ce:	6840      	and      	r1, r0
    23d0:	3940      	cmpnei      	r1, 0
    23d2:	0bf9      	bt      	0x23c4	// 23c4 <SYSCONIntHandler+0x18>
	else if((SYSCON->MISR&EMOSC_ST)==EMOSC_ST)			//EMOSC stable interrupt
    23d4:	9323      	ld.w      	r1, (r3, 0xc)
    23d6:	3008      	movi      	r0, 8
    23d8:	6840      	and      	r1, r0
    23da:	3940      	cmpnei      	r1, 0
    23dc:	0bf4      	bt      	0x23c4	// 23c4 <SYSCONIntHandler+0x18>
	else if((SYSCON->MISR&HFOSC_ST)==HFOSC_ST)			//HFOSC stable interrupt
    23de:	9323      	ld.w      	r1, (r3, 0xc)
    23e0:	3010      	movi      	r0, 16
    23e2:	6840      	and      	r1, r0
    23e4:	3940      	cmpnei      	r1, 0
    23e6:	0bef      	bt      	0x23c4	// 23c4 <SYSCONIntHandler+0x18>
	else if((SYSCON->MISR&SYSCLK_ST)==SYSCLK_ST)		//SYSCLK change end & stable interrupt
    23e8:	9323      	ld.w      	r1, (r3, 0xc)
    23ea:	6848      	and      	r1, r2
    23ec:	3940      	cmpnei      	r1, 0
    23ee:	0c03      	bf      	0x23f4	// 23f4 <SYSCONIntHandler+0x48>
		SYSCON->ICR = CMD_ERR_ST;
    23f0:	b341      	st.w      	r2, (r3, 0x4)
}
    23f2:	07ea      	br      	0x23c6	// 23c6 <SYSCONIntHandler+0x1a>
	else if((SYSCON->MISR&IWDT_INT_ST)==IWDT_INT_ST)	//IWDT alarm window interrupt
    23f4:	3280      	movi      	r2, 128
    23f6:	9323      	ld.w      	r1, (r3, 0xc)
    23f8:	4241      	lsli      	r2, r2, 1
    23fa:	6848      	and      	r1, r2
    23fc:	3940      	cmpnei      	r1, 0
    23fe:	0c06      	bf      	0x240a	// 240a <SYSCONIntHandler+0x5e>
		SYSCON->ICR = IWDT_INT_ST;
    2400:	b341      	st.w      	r2, (r3, 0x4)
		SYSCON->IWDCNT=0x5aul<<24;
    2402:	32b4      	movi      	r2, 180
    2404:	4257      	lsli      	r2, r2, 23
    2406:	b34e      	st.w      	r2, (r3, 0x38)
    2408:	07df      	br      	0x23c6	// 23c6 <SYSCONIntHandler+0x1a>
	else if((SYSCON->MISR&WKI_INT_ST)==WKI_INT_ST)
    240a:	3280      	movi      	r2, 128
    240c:	9323      	ld.w      	r1, (r3, 0xc)
    240e:	4242      	lsli      	r2, r2, 2
    2410:	6848      	and      	r1, r2
    2412:	3940      	cmpnei      	r1, 0
    2414:	0bee      	bt      	0x23f0	// 23f0 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&RAMERRINT_ST)==RAMERRINT_ST)	//SRAM check fail interrupt
    2416:	3280      	movi      	r2, 128
    2418:	9323      	ld.w      	r1, (r3, 0xc)
    241a:	4243      	lsli      	r2, r2, 3
    241c:	6848      	and      	r1, r2
    241e:	3940      	cmpnei      	r1, 0
    2420:	0be8      	bt      	0x23f0	// 23f0 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&LVD_INT_ST)==LVD_INT_ST)		//LVD threshold interrupt
    2422:	3280      	movi      	r2, 128
    2424:	9323      	ld.w      	r1, (r3, 0xc)
    2426:	4244      	lsli      	r2, r2, 4
    2428:	6848      	and      	r1, r2
    242a:	3940      	cmpnei      	r1, 0
    242c:	0c03      	bf      	0x2432	// 2432 <SYSCONIntHandler+0x86>
		nop;
    242e:	6c03      	mov      	r0, r0
    2430:	07e0      	br      	0x23f0	// 23f0 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&HWD_ERR_ST)==HWD_ERR_ST)		//Hardware Divider divisor = 0 interrupt
    2432:	3280      	movi      	r2, 128
    2434:	9323      	ld.w      	r1, (r3, 0xc)
    2436:	4245      	lsli      	r2, r2, 5
    2438:	6848      	and      	r1, r2
    243a:	3940      	cmpnei      	r1, 0
    243c:	0bda      	bt      	0x23f0	// 23f0 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EFL_ERR_ST)==EFL_ERR_ST)		//Flash check fail interrupt
    243e:	3280      	movi      	r2, 128
    2440:	9323      	ld.w      	r1, (r3, 0xc)
    2442:	4246      	lsli      	r2, r2, 6
    2444:	6848      	and      	r1, r2
    2446:	3940      	cmpnei      	r1, 0
    2448:	0bd4      	bt      	0x23f0	// 23f0 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&OPTERR_INT)==OPTERR_INT)		//Option load fail interrupt
    244a:	3280      	movi      	r2, 128
    244c:	9323      	ld.w      	r1, (r3, 0xc)
    244e:	4247      	lsli      	r2, r2, 7
    2450:	6848      	and      	r1, r2
    2452:	3940      	cmpnei      	r1, 0
    2454:	0bce      	bt      	0x23f0	// 23f0 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_CMLST_ST)==EM_CMLST_ST)	//EMOSC clock monitor fail interrupt
    2456:	3280      	movi      	r2, 128
    2458:	9323      	ld.w      	r1, (r3, 0xc)
    245a:	424b      	lsli      	r2, r2, 11
    245c:	6848      	and      	r1, r2
    245e:	3940      	cmpnei      	r1, 0
    2460:	0bc8      	bt      	0x23f0	// 23f0 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG0_ST)==EM_EVTRG0_ST)	//Event Trigger Channel 0 Interrupt
    2462:	3280      	movi      	r2, 128
    2464:	9323      	ld.w      	r1, (r3, 0xc)
    2466:	424c      	lsli      	r2, r2, 12
    2468:	6848      	and      	r1, r2
    246a:	3940      	cmpnei      	r1, 0
    246c:	0bc2      	bt      	0x23f0	// 23f0 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG1_ST)==EM_EVTRG1_ST)	//Event Trigger Channel 1 Interrupt
    246e:	3280      	movi      	r2, 128
    2470:	9323      	ld.w      	r1, (r3, 0xc)
    2472:	424d      	lsli      	r2, r2, 13
    2474:	6848      	and      	r1, r2
    2476:	3940      	cmpnei      	r1, 0
    2478:	0bbc      	bt      	0x23f0	// 23f0 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG2_ST)==EM_EVTRG2_ST)	//Event Trigger Channel 2 Interrupt
    247a:	3280      	movi      	r2, 128
    247c:	9323      	ld.w      	r1, (r3, 0xc)
    247e:	424e      	lsli      	r2, r2, 14
    2480:	6848      	and      	r1, r2
    2482:	3940      	cmpnei      	r1, 0
    2484:	0bb6      	bt      	0x23f0	// 23f0 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG3_ST)==EM_EVTRG3_ST)	//Event Trigger Channel 3 Interrupt
    2486:	3280      	movi      	r2, 128
    2488:	9323      	ld.w      	r1, (r3, 0xc)
    248a:	424f      	lsli      	r2, r2, 15
    248c:	6848      	and      	r1, r2
    248e:	3940      	cmpnei      	r1, 0
    2490:	0bb0      	bt      	0x23f0	// 23f0 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&CMD_ERR_ST)==CMD_ERR_ST)		//Command error interrupt
    2492:	3280      	movi      	r2, 128
    2494:	9323      	ld.w      	r1, (r3, 0xc)
    2496:	4256      	lsli      	r2, r2, 22
    2498:	6848      	and      	r1, r2
    249a:	3940      	cmpnei      	r1, 0
    249c:	0baa      	bt      	0x23f0	// 23f0 <SYSCONIntHandler+0x44>
    249e:	0794      	br      	0x23c6	// 23c6 <SYSCONIntHandler+0x1a>
    24a0:	2000005c 	.long	0x2000005c

Disassembly of section .text.IFCIntHandler:

000024a4 <IFCIntHandler>:
//IFC Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void IFCIntHandler(void) 
{
    24a4:	1460      	nie
    24a6:	1462      	ipush
    // ISR content ...
	if(IFC->MISR&ERS_END_INT)			
    24a8:	1078      	lrw      	r3, 0x20000060	// 2508 <IFCIntHandler+0x64>
    24aa:	3101      	movi      	r1, 1
    24ac:	9360      	ld.w      	r3, (r3, 0x0)
    24ae:	934b      	ld.w      	r2, (r3, 0x2c)
    24b0:	6884      	and      	r2, r1
    24b2:	3a40      	cmpnei      	r2, 0
    24b4:	0c04      	bf      	0x24bc	// 24bc <IFCIntHandler+0x18>
	{
		IFC->ICR=RGM_END_INT;
	}
	else if(IFC->MISR&PEP_END_INT)		
	{
		IFC->ICR=PEP_END_INT;
    24b6:	b32c      	st.w      	r1, (r3, 0x30)
	}
	else if(IFC->MISR&OVW_ERR_INT)		
	{
		IFC->ICR=OVW_ERR_INT;
	}
}
    24b8:	1463      	ipop
    24ba:	1461      	nir
	else if(IFC->MISR&RGM_END_INT)		
    24bc:	934b      	ld.w      	r2, (r3, 0x2c)
    24be:	3102      	movi      	r1, 2
    24c0:	6884      	and      	r2, r1
    24c2:	3a40      	cmpnei      	r2, 0
    24c4:	0bf9      	bt      	0x24b6	// 24b6 <IFCIntHandler+0x12>
	else if(IFC->MISR&PEP_END_INT)		
    24c6:	934b      	ld.w      	r2, (r3, 0x2c)
    24c8:	3104      	movi      	r1, 4
    24ca:	6884      	and      	r2, r1
    24cc:	3a40      	cmpnei      	r2, 0
    24ce:	0bf4      	bt      	0x24b6	// 24b6 <IFCIntHandler+0x12>
	else if(IFC->MISR&PROT_ERR_INT)		
    24d0:	3280      	movi      	r2, 128
    24d2:	932b      	ld.w      	r1, (r3, 0x2c)
    24d4:	4245      	lsli      	r2, r2, 5
    24d6:	6848      	and      	r1, r2
    24d8:	3940      	cmpnei      	r1, 0
    24da:	0c03      	bf      	0x24e0	// 24e0 <IFCIntHandler+0x3c>
		IFC->ICR=OVW_ERR_INT;
    24dc:	b34c      	st.w      	r2, (r3, 0x30)
}
    24de:	07ed      	br      	0x24b8	// 24b8 <IFCIntHandler+0x14>
	else if(IFC->MISR&UDEF_ERR_INT)		
    24e0:	3280      	movi      	r2, 128
    24e2:	932b      	ld.w      	r1, (r3, 0x2c)
    24e4:	4246      	lsli      	r2, r2, 6
    24e6:	6848      	and      	r1, r2
    24e8:	3940      	cmpnei      	r1, 0
    24ea:	0bf9      	bt      	0x24dc	// 24dc <IFCIntHandler+0x38>
	else if(IFC->MISR&ADDR_ERR_INT)		
    24ec:	3280      	movi      	r2, 128
    24ee:	932b      	ld.w      	r1, (r3, 0x2c)
    24f0:	4247      	lsli      	r2, r2, 7
    24f2:	6848      	and      	r1, r2
    24f4:	3940      	cmpnei      	r1, 0
    24f6:	0bf3      	bt      	0x24dc	// 24dc <IFCIntHandler+0x38>
	else if(IFC->MISR&OVW_ERR_INT)		
    24f8:	3280      	movi      	r2, 128
    24fa:	932b      	ld.w      	r1, (r3, 0x2c)
    24fc:	4248      	lsli      	r2, r2, 8
    24fe:	6848      	and      	r1, r2
    2500:	3940      	cmpnei      	r1, 0
    2502:	0bed      	bt      	0x24dc	// 24dc <IFCIntHandler+0x38>
    2504:	07da      	br      	0x24b8	// 24b8 <IFCIntHandler+0x14>
    2506:	0000      	bkpt
    2508:	20000060 	.long	0x20000060

Disassembly of section .text.ADCIntHandler:

0000250c <ADCIntHandler>:
//ADC Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void ADCIntHandler(void) 
{
    250c:	1460      	nie
    250e:	1462      	ipush
    // ISR content ...
	if((ADC0->SR&ADC12_EOC)==ADC12_EOC)				//ADC EOC interrupt
    2510:	1078      	lrw      	r3, 0x20000050	// 2570 <ADCIntHandler+0x64>
    2512:	3101      	movi      	r1, 1
    2514:	9360      	ld.w      	r3, (r3, 0x0)
    2516:	9348      	ld.w      	r2, (r3, 0x20)
    2518:	6884      	and      	r2, r1
    251a:	3a40      	cmpnei      	r2, 0
    251c:	0c04      	bf      	0x2524	// 2524 <ADCIntHandler+0x18>
	{
		ADC0->CSR = ADC12_CMP1H;
	}
	else if((ADC0->SR&ADC12_CMP1L)==ADC12_CMP1L)	//ADC CMP1L interrupt.
	{
		ADC0->CSR = ADC12_CMP1L;
    251e:	b327      	st.w      	r1, (r3, 0x1c)
	}
	else if((ADC0->SR&ADC12_SEQ_END0)==ADC12_SEQ_END0) //ADC SEQ0 interrupt,SEQ1~SEQ15 replace the parameter with ADC12_SEQ_END1~ADC12_SEQ_END15
	{
		ADC0->CSR = ADC12_SEQ_END0;
	}
}
    2520:	1463      	ipop
    2522:	1461      	nir
	else if((ADC0->SR&ADC12_READY)==ADC12_READY)	//ADC READY interrupt
    2524:	9348      	ld.w      	r2, (r3, 0x20)
    2526:	3102      	movi      	r1, 2
    2528:	6884      	and      	r2, r1
    252a:	3a40      	cmpnei      	r2, 0
    252c:	0bf9      	bt      	0x251e	// 251e <ADCIntHandler+0x12>
	else if((ADC0->SR&ADC12_OVR)==ADC12_OVR)		//ADC OVR interrupt
    252e:	9348      	ld.w      	r2, (r3, 0x20)
    2530:	3104      	movi      	r1, 4
    2532:	6884      	and      	r2, r1
    2534:	3a40      	cmpnei      	r2, 0
    2536:	0bf4      	bt      	0x251e	// 251e <ADCIntHandler+0x12>
	else if((ADC0->SR&ADC12_CMP0H)==ADC12_CMP0H)	//ADC CMP0H interrupt
    2538:	9348      	ld.w      	r2, (r3, 0x20)
    253a:	3110      	movi      	r1, 16
    253c:	6884      	and      	r2, r1
    253e:	3a40      	cmpnei      	r2, 0
    2540:	0bef      	bt      	0x251e	// 251e <ADCIntHandler+0x12>
	else if((ADC0->SR&ADC12_CMP0L)==ADC12_CMP0L)	//ADC CMP0L interrupt.
    2542:	9348      	ld.w      	r2, (r3, 0x20)
    2544:	3120      	movi      	r1, 32
    2546:	6884      	and      	r2, r1
    2548:	3a40      	cmpnei      	r2, 0
    254a:	0bea      	bt      	0x251e	// 251e <ADCIntHandler+0x12>
	else if((ADC0->SR&ADC12_CMP1H)==ADC12_CMP1H)	//ADC CMP1H interrupt.
    254c:	9348      	ld.w      	r2, (r3, 0x20)
    254e:	3140      	movi      	r1, 64
    2550:	6884      	and      	r2, r1
    2552:	3a40      	cmpnei      	r2, 0
    2554:	0be5      	bt      	0x251e	// 251e <ADCIntHandler+0x12>
	else if((ADC0->SR&ADC12_CMP1L)==ADC12_CMP1L)	//ADC CMP1L interrupt.
    2556:	9348      	ld.w      	r2, (r3, 0x20)
    2558:	3180      	movi      	r1, 128
    255a:	6884      	and      	r2, r1
    255c:	3a40      	cmpnei      	r2, 0
    255e:	0be0      	bt      	0x251e	// 251e <ADCIntHandler+0x12>
	else if((ADC0->SR&ADC12_SEQ_END0)==ADC12_SEQ_END0) //ADC SEQ0 interrupt,SEQ1~SEQ15 replace the parameter with ADC12_SEQ_END1~ADC12_SEQ_END15
    2560:	3280      	movi      	r2, 128
    2562:	9328      	ld.w      	r1, (r3, 0x20)
    2564:	4249      	lsli      	r2, r2, 9
    2566:	6848      	and      	r1, r2
    2568:	3940      	cmpnei      	r1, 0
    256a:	0fdb      	bf      	0x2520	// 2520 <ADCIntHandler+0x14>
		ADC0->CSR = ADC12_SEQ_END0;
    256c:	b347      	st.w      	r2, (r3, 0x1c)
}
    256e:	07d9      	br      	0x2520	// 2520 <ADCIntHandler+0x14>
    2570:	20000050 	.long	0x20000050

Disassembly of section .text.EPT0IntHandler:

00002574 <EPT0IntHandler>:
//EPT0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EPT0IntHandler(void) 
{
    2574:	1460      	nie
    2576:	1462      	ipush
    2578:	14d1      	push      	r4, r15
    // ISR content ...
	if((EPT0->MISR&EPT_TRGEV0_INT)==EPT_TRGEV0_INT)			//TRGEV0 interrupt
    257a:	1386      	lrw      	r4, 0x20000020	// 2710 <EPT0IntHandler+0x19c>
    257c:	3280      	movi      	r2, 128
    257e:	9460      	ld.w      	r3, (r4, 0x0)
    2580:	60c8      	addu      	r3, r2
    2582:	9335      	ld.w      	r1, (r3, 0x54)
    2584:	3001      	movi      	r0, 1
    2586:	6840      	and      	r1, r0
    2588:	3940      	cmpnei      	r1, 0
    258a:	0c03      	bf      	0x2590	// 2590 <EPT0IntHandler+0x1c>
		EXTI_trigger_CMD(DISABLE,EXI_PIN0,_EXIFT);
		R_CMPB_BUF=EPT0->CMPB;			//Duty counter
	}
	else if((EPT0->MISR&EPT_CAP_LD2)==EPT_CAP_LD2)			//Capture Load to CMPC interrupt
	{
		EPT0->ICR=EPT_CAP_LD2;
    258c:	b317      	st.w      	r0, (r3, 0x5c)
    258e:	0424      	br      	0x25d6	// 25d6 <EPT0IntHandler+0x62>
	else if((EPT0->MISR&EPT_TRGEV1_INT)==EPT_TRGEV1_INT)	//TRGEV1 interrupt
    2590:	9335      	ld.w      	r1, (r3, 0x54)
    2592:	3002      	movi      	r0, 2
    2594:	6840      	and      	r1, r0
    2596:	3940      	cmpnei      	r1, 0
    2598:	0bfa      	bt      	0x258c	// 258c <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_TRGEV2_INT)==EPT_TRGEV2_INT)	//TRGEV2 interrupt
    259a:	9335      	ld.w      	r1, (r3, 0x54)
    259c:	3004      	movi      	r0, 4
    259e:	6840      	and      	r1, r0
    25a0:	3940      	cmpnei      	r1, 0
    25a2:	0bf5      	bt      	0x258c	// 258c <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_TRGEV3_INT)==EPT_TRGEV3_INT)	//TRGEV3 interrupt
    25a4:	9335      	ld.w      	r1, (r3, 0x54)
    25a6:	3008      	movi      	r0, 8
    25a8:	6840      	and      	r1, r0
    25aa:	3940      	cmpnei      	r1, 0
    25ac:	0bf0      	bt      	0x258c	// 258c <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_CAP_LD0)==EPT_CAP_LD0)			//Capture Load to CMPA interrupt
    25ae:	9335      	ld.w      	r1, (r3, 0x54)
    25b0:	3010      	movi      	r0, 16
    25b2:	6840      	and      	r1, r0
    25b4:	3940      	cmpnei      	r1, 0
    25b6:	0c1f      	bf      	0x25f4	// 25f4 <EPT0IntHandler+0x80>
		EPT0->ICR=EPT_CAP_LD0;
    25b8:	b317      	st.w      	r0, (r3, 0x5c)
		EXTI_trigger_CMD(DISABLE,EXI_PIN0,_EXIRT);
    25ba:	3200      	movi      	r2, 0
    25bc:	3101      	movi      	r1, 1
    25be:	3000      	movi      	r0, 0
    25c0:	e3fffb9a 	bsr      	0x1cf4	// 1cf4 <EXTI_trigger_CMD>
		EXTI_trigger_CMD(ENABLE,EXI_PIN0,_EXIFT);
    25c4:	3201      	movi      	r2, 1
    25c6:	3101      	movi      	r1, 1
    25c8:	3001      	movi      	r0, 1
    25ca:	e3fffb95 	bsr      	0x1cf4	// 1cf4 <EXTI_trigger_CMD>
		R_CMPA_BUF=EPT0->CMPA;			//Low voltage counter
    25ce:	9460      	ld.w      	r3, (r4, 0x0)
    25d0:	934b      	ld.w      	r2, (r3, 0x2c)
    25d2:	1271      	lrw      	r3, 0x20000150	// 2714 <EPT0IntHandler+0x1a0>
		R_CMPB_BUF=EPT0->CMPB;			//Duty counter
    25d4:	b340      	st.w      	r2, (r3, 0x0)
	else if((EPT0->MISR&EPT_PEND)==EPT_PEND)				//End of cycle interrupt
	{
		EPT0->ICR=EPT_PEND;
	}
	//Emergency interruption
	if((EPT0->EMMISR&EPT_EP0_EMINT)==EPT_EP0_EMINT)			//interrupt flag of EP0 event
    25d6:	9460      	ld.w      	r3, (r4, 0x0)
    25d8:	3280      	movi      	r2, 128
    25da:	60c8      	addu      	r3, r2
    25dc:	932b      	ld.w      	r1, (r3, 0x2c)
    25de:	3001      	movi      	r0, 1
    25e0:	6840      	and      	r1, r0
    25e2:	3940      	cmpnei      	r1, 0
    25e4:	0c5e      	bf      	0x26a0	// 26a0 <EPT0IntHandler+0x12c>
	{
		EPT0->EMICR=EPT_EP5_EMINT;
	}
	else if((EPT0->EMMISR&EPT_EP6_EMINT)==EPT_EP6_EMINT)	//interrupt flag of EP6 event
	{
		EPT0->EMICR=EPT_EP6_EMINT;
    25e6:	b30d      	st.w      	r0, (r3, 0x34)
	}
	else if((EPT0->EMMISR&EPT_EOM_FAULT_EMINT)==EPT_EOM_FAULT_EMINT)	//interrupt flag of EOM_FAULT event
	{
		EPT0->EMICR=EPT_EOM_FAULT_EMINT;
	}
}
    25e8:	d9ee2001 	ld.w      	r15, (r14, 0x4)
    25ec:	9880      	ld.w      	r4, (r14, 0x0)
    25ee:	1402      	addi      	r14, r14, 8
    25f0:	1463      	ipop
    25f2:	1461      	nir
	else if((EPT0->MISR&EPT_CAP_LD1)==EPT_CAP_LD1)			//Capture Load to CMPB interrupt
    25f4:	9335      	ld.w      	r1, (r3, 0x54)
    25f6:	3020      	movi      	r0, 32
    25f8:	6840      	and      	r1, r0
    25fa:	3940      	cmpnei      	r1, 0
    25fc:	0c10      	bf      	0x261c	// 261c <EPT0IntHandler+0xa8>
		EPT0->ICR=EPT_CAP_LD1;
    25fe:	b317      	st.w      	r0, (r3, 0x5c)
		EXTI_trigger_CMD(ENABLE,EXI_PIN0,_EXIRT);
    2600:	3200      	movi      	r2, 0
    2602:	3101      	movi      	r1, 1
    2604:	3001      	movi      	r0, 1
    2606:	e3fffb77 	bsr      	0x1cf4	// 1cf4 <EXTI_trigger_CMD>
		EXTI_trigger_CMD(DISABLE,EXI_PIN0,_EXIFT);
    260a:	3201      	movi      	r2, 1
    260c:	3101      	movi      	r1, 1
    260e:	3000      	movi      	r0, 0
    2610:	e3fffb72 	bsr      	0x1cf4	// 1cf4 <EXTI_trigger_CMD>
		R_CMPB_BUF=EPT0->CMPB;			//Duty counter
    2614:	9460      	ld.w      	r3, (r4, 0x0)
    2616:	934c      	ld.w      	r2, (r3, 0x30)
    2618:	1260      	lrw      	r3, 0x20000148	// 2718 <EPT0IntHandler+0x1a4>
    261a:	07dd      	br      	0x25d4	// 25d4 <EPT0IntHandler+0x60>
	else if((EPT0->MISR&EPT_CAP_LD2)==EPT_CAP_LD2)			//Capture Load to CMPC interrupt
    261c:	9335      	ld.w      	r1, (r3, 0x54)
    261e:	3040      	movi      	r0, 64
    2620:	6840      	and      	r1, r0
    2622:	3940      	cmpnei      	r1, 0
    2624:	0bb4      	bt      	0x258c	// 258c <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_CAP_LD3)==EPT_CAP_LD3)			//Capture Load to CMPD interrupt
    2626:	9335      	ld.w      	r1, (r3, 0x54)
    2628:	6848      	and      	r1, r2
    262a:	3940      	cmpnei      	r1, 0
    262c:	0c03      	bf      	0x2632	// 2632 <EPT0IntHandler+0xbe>
		EPT0->ICR=EPT_PEND;
    262e:	b357      	st.w      	r2, (r3, 0x5c)
    2630:	07d3      	br      	0x25d6	// 25d6 <EPT0IntHandler+0x62>
	else if((EPT0->MISR&EPT_CAU)==EPT_CAU)					//Up-Counting phase CNT = CMPA interrupt
    2632:	3280      	movi      	r2, 128
    2634:	9335      	ld.w      	r1, (r3, 0x54)
    2636:	4241      	lsli      	r2, r2, 1
    2638:	6848      	and      	r1, r2
    263a:	3940      	cmpnei      	r1, 0
    263c:	0bf9      	bt      	0x262e	// 262e <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CAD)==EPT_CAD)					//Down-Counting phase CNT = CMPA interrupt
    263e:	3280      	movi      	r2, 128
    2640:	9335      	ld.w      	r1, (r3, 0x54)
    2642:	4242      	lsli      	r2, r2, 2
    2644:	6848      	and      	r1, r2
    2646:	3940      	cmpnei      	r1, 0
    2648:	0bf3      	bt      	0x262e	// 262e <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CBU)==EPT_CBU)					//Up-Counting phase CNT = CMPB interrupt 
    264a:	3280      	movi      	r2, 128
    264c:	9335      	ld.w      	r1, (r3, 0x54)
    264e:	4243      	lsli      	r2, r2, 3
    2650:	6848      	and      	r1, r2
    2652:	3940      	cmpnei      	r1, 0
    2654:	0bed      	bt      	0x262e	// 262e <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CBD)==EPT_CBD)					//Down-Counting phase CNT = CMPB interrupt
    2656:	3280      	movi      	r2, 128
    2658:	9335      	ld.w      	r1, (r3, 0x54)
    265a:	4244      	lsli      	r2, r2, 4
    265c:	6848      	and      	r1, r2
    265e:	3940      	cmpnei      	r1, 0
    2660:	0be7      	bt      	0x262e	// 262e <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CCU)==EPT_CCU)					//Up-Counting phase CNT = CMPC interrupt 
    2662:	3280      	movi      	r2, 128
    2664:	9335      	ld.w      	r1, (r3, 0x54)
    2666:	4245      	lsli      	r2, r2, 5
    2668:	6848      	and      	r1, r2
    266a:	3940      	cmpnei      	r1, 0
    266c:	0be1      	bt      	0x262e	// 262e <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CCD)==EPT_CCD)					//Down-Counting phase CNT = CMPC interrupt
    266e:	3280      	movi      	r2, 128
    2670:	9335      	ld.w      	r1, (r3, 0x54)
    2672:	4246      	lsli      	r2, r2, 6
    2674:	6848      	and      	r1, r2
    2676:	3940      	cmpnei      	r1, 0
    2678:	0bdb      	bt      	0x262e	// 262e <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CDU)==EPT_CDU)					//Up-Counting phase CNT = CMPD interrupt
    267a:	3280      	movi      	r2, 128
    267c:	9335      	ld.w      	r1, (r3, 0x54)
    267e:	4247      	lsli      	r2, r2, 7
    2680:	6848      	and      	r1, r2
    2682:	3940      	cmpnei      	r1, 0
    2684:	0bd5      	bt      	0x262e	// 262e <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CDD)==EPT_CDD)					//Down-Counting phase CNT = CMPD interrupt
    2686:	3280      	movi      	r2, 128
    2688:	9335      	ld.w      	r1, (r3, 0x54)
    268a:	4248      	lsli      	r2, r2, 8
    268c:	6848      	and      	r1, r2
    268e:	3940      	cmpnei      	r1, 0
    2690:	0bcf      	bt      	0x262e	// 262e <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_PEND)==EPT_PEND)				//End of cycle interrupt
    2692:	3280      	movi      	r2, 128
    2694:	9335      	ld.w      	r1, (r3, 0x54)
    2696:	4249      	lsli      	r2, r2, 9
    2698:	6848      	and      	r1, r2
    269a:	3940      	cmpnei      	r1, 0
    269c:	0f9d      	bf      	0x25d6	// 25d6 <EPT0IntHandler+0x62>
    269e:	07c8      	br      	0x262e	// 262e <EPT0IntHandler+0xba>
	else if((EPT0->EMMISR&EPT_EP1_EMINT)==EPT_EP1_EMINT)	//interrupt flag of EP1 event
    26a0:	932b      	ld.w      	r1, (r3, 0x2c)
    26a2:	3002      	movi      	r0, 2
    26a4:	6840      	and      	r1, r0
    26a6:	3940      	cmpnei      	r1, 0
    26a8:	0b9f      	bt      	0x25e6	// 25e6 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP2_EMINT)==EPT_EP2_EMINT)	//interrupt flag of EP2 event
    26aa:	932b      	ld.w      	r1, (r3, 0x2c)
    26ac:	3004      	movi      	r0, 4
    26ae:	6840      	and      	r1, r0
    26b0:	3940      	cmpnei      	r1, 0
    26b2:	0b9a      	bt      	0x25e6	// 25e6 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP3_EMINT)==EPT_EP3_EMINT)	//interrupt flag of EP3 event
    26b4:	932b      	ld.w      	r1, (r3, 0x2c)
    26b6:	3008      	movi      	r0, 8
    26b8:	6840      	and      	r1, r0
    26ba:	3940      	cmpnei      	r1, 0
    26bc:	0b95      	bt      	0x25e6	// 25e6 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP4_EMINT)==EPT_EP4_EMINT)	//interrupt flag of EP4 event
    26be:	932b      	ld.w      	r1, (r3, 0x2c)
    26c0:	3010      	movi      	r0, 16
    26c2:	6840      	and      	r1, r0
    26c4:	3940      	cmpnei      	r1, 0
    26c6:	0b90      	bt      	0x25e6	// 25e6 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP5_EMINT)==EPT_EP5_EMINT)	//interrupt flag of EP5 event
    26c8:	932b      	ld.w      	r1, (r3, 0x2c)
    26ca:	3020      	movi      	r0, 32
    26cc:	6840      	and      	r1, r0
    26ce:	3940      	cmpnei      	r1, 0
    26d0:	0b8b      	bt      	0x25e6	// 25e6 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP6_EMINT)==EPT_EP6_EMINT)	//interrupt flag of EP6 event
    26d2:	932b      	ld.w      	r1, (r3, 0x2c)
    26d4:	3040      	movi      	r0, 64
    26d6:	6840      	and      	r1, r0
    26d8:	3940      	cmpnei      	r1, 0
    26da:	0b86      	bt      	0x25e6	// 25e6 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP7_EMINT)==EPT_EP7_EMINT)	//interrupt flag of EP7 event
    26dc:	932b      	ld.w      	r1, (r3, 0x2c)
    26de:	6848      	and      	r1, r2
    26e0:	3940      	cmpnei      	r1, 0
    26e2:	0c03      	bf      	0x26e8	// 26e8 <EPT0IntHandler+0x174>
		EPT0->EMICR=EPT_EOM_FAULT_EMINT;
    26e4:	b34d      	st.w      	r2, (r3, 0x34)
}
    26e6:	0781      	br      	0x25e8	// 25e8 <EPT0IntHandler+0x74>
	else if((EPT0->EMMISR&EPT_CPU_FAULT_EMINT)==EPT_CPU_FAULT_EMINT)	//interrupt flag of CPU_FAULT event
    26e8:	3280      	movi      	r2, 128
    26ea:	932b      	ld.w      	r1, (r3, 0x2c)
    26ec:	4241      	lsli      	r2, r2, 1
    26ee:	6848      	and      	r1, r2
    26f0:	3940      	cmpnei      	r1, 0
    26f2:	0bf9      	bt      	0x26e4	// 26e4 <EPT0IntHandler+0x170>
	else if((EPT0->EMMISR&EPT_MEM_FAULT_EMINT)==EPT_MEM_FAULT_EMINT)	//interrupt flag of MEM_FAULT event
    26f4:	3280      	movi      	r2, 128
    26f6:	932b      	ld.w      	r1, (r3, 0x2c)
    26f8:	4242      	lsli      	r2, r2, 2
    26fa:	6848      	and      	r1, r2
    26fc:	3940      	cmpnei      	r1, 0
    26fe:	0bf3      	bt      	0x26e4	// 26e4 <EPT0IntHandler+0x170>
	else if((EPT0->EMMISR&EPT_EOM_FAULT_EMINT)==EPT_EOM_FAULT_EMINT)	//interrupt flag of EOM_FAULT event
    2700:	3280      	movi      	r2, 128
    2702:	932b      	ld.w      	r1, (r3, 0x2c)
    2704:	4243      	lsli      	r2, r2, 3
    2706:	6848      	and      	r1, r2
    2708:	3940      	cmpnei      	r1, 0
    270a:	0bed      	bt      	0x26e4	// 26e4 <EPT0IntHandler+0x170>
    270c:	076e      	br      	0x25e8	// 25e8 <EPT0IntHandler+0x74>
    270e:	0000      	bkpt
    2710:	20000020 	.long	0x20000020
    2714:	20000150 	.long	0x20000150
    2718:	20000148 	.long	0x20000148

Disassembly of section .text.WWDTHandler:

0000271c <WWDTHandler>:
//WWDT Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void WWDTHandler(void)
{
    271c:	1460      	nie
    271e:	1462      	ipush
    2720:	14d2      	push      	r4-r5, r15
	WWDT->ICR=0X01;
    2722:	10ab      	lrw      	r5, 0x20000010	// 274c <WWDTHandler+0x30>
    2724:	3401      	movi      	r4, 1
    2726:	9560      	ld.w      	r3, (r5, 0x0)
    2728:	b385      	st.w      	r4, (r3, 0x14)
	WWDT_CNT_Load(0xFF);
    272a:	30ff      	movi      	r0, 255
    272c:	e3fffd64 	bsr      	0x21f4	// 21f4 <WWDT_CNT_Load>
	if((WWDT->MISR&WWDT_EVI)==WWDT_EVI)					//WWDT EVI interrupt
    2730:	9540      	ld.w      	r2, (r5, 0x0)
    2732:	9263      	ld.w      	r3, (r2, 0xc)
    2734:	68d0      	and      	r3, r4
    2736:	3b40      	cmpnei      	r3, 0
    2738:	0c02      	bf      	0x273c	// 273c <WWDTHandler+0x20>
	{
		WWDT->ICR = WWDT_EVI;
    273a:	b285      	st.w      	r4, (r2, 0x14)
	} 
}
    273c:	d9ee2002 	ld.w      	r15, (r14, 0x8)
    2740:	98a1      	ld.w      	r5, (r14, 0x4)
    2742:	9880      	ld.w      	r4, (r14, 0x0)
    2744:	1403      	addi      	r14, r14, 12
    2746:	1463      	ipop
    2748:	1461      	nir
    274a:	0000      	bkpt
    274c:	20000010 	.long	0x20000010

Disassembly of section .text.GPT0IntHandler:

00002750 <GPT0IntHandler>:
//GPT0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void GPT0IntHandler(void) 
{
    2750:	1460      	nie
    2752:	1462      	ipush
    // ISR content ...
	if((GPT0->MISR&GPT_INT_TRGEV0)==GPT_INT_TRGEV0)			//TRGEV0 interrupt
    2754:	107e      	lrw      	r3, 0x20000024	// 27cc <GPT0IntHandler+0x7c>
    2756:	3101      	movi      	r1, 1
    2758:	9360      	ld.w      	r3, (r3, 0x0)
    275a:	237f      	addi      	r3, 128
    275c:	9355      	ld.w      	r2, (r3, 0x54)
    275e:	6884      	and      	r2, r1
    2760:	3a40      	cmpnei      	r2, 0
    2762:	0c04      	bf      	0x276a	// 276a <GPT0IntHandler+0x1a>
	{
		GPT0->ICR = GPT_INT_CAPLD0;
	}
	else if((GPT0->MISR&GPT_INT_CAPLD1)==GPT_INT_CAPLD1)		//Capture Load to CMPB interrupt
	{
		GPT0->ICR = GPT_INT_CAPLD1;
    2764:	b337      	st.w      	r1, (r3, 0x5c)
	}
	else if((GPT0->MISR&GPT_INT_PEND)==GPT_INT_PEND)		//End of cycle interrupt 
	{
		GPT0->ICR = GPT_INT_PEND;
	}
}
    2766:	1463      	ipop
    2768:	1461      	nir
	else if((GPT0->MISR&GPT_INT_TRGEV1)==GPT_INT_TRGEV1)	//TRGEV1 interrupt
    276a:	9355      	ld.w      	r2, (r3, 0x54)
    276c:	3102      	movi      	r1, 2
    276e:	6884      	and      	r2, r1
    2770:	3a40      	cmpnei      	r2, 0
    2772:	0bf9      	bt      	0x2764	// 2764 <GPT0IntHandler+0x14>
	else if((GPT0->MISR&GPT_INT_CAPLD0)==GPT_INT_CAPLD0)		//Capture Load to CMPA interrupt
    2774:	9355      	ld.w      	r2, (r3, 0x54)
    2776:	3110      	movi      	r1, 16
    2778:	6884      	and      	r2, r1
    277a:	3a40      	cmpnei      	r2, 0
    277c:	0bf4      	bt      	0x2764	// 2764 <GPT0IntHandler+0x14>
	else if((GPT0->MISR&GPT_INT_CAPLD1)==GPT_INT_CAPLD1)		//Capture Load to CMPB interrupt
    277e:	9355      	ld.w      	r2, (r3, 0x54)
    2780:	3120      	movi      	r1, 32
    2782:	6884      	and      	r2, r1
    2784:	3a40      	cmpnei      	r2, 0
    2786:	0bef      	bt      	0x2764	// 2764 <GPT0IntHandler+0x14>
	else if((GPT0->MISR&GPT_INT_CAU)==GPT_INT_CAU)			//Up-Counting phase CNT = CMPA Interrupt
    2788:	3280      	movi      	r2, 128
    278a:	9335      	ld.w      	r1, (r3, 0x54)
    278c:	4241      	lsli      	r2, r2, 1
    278e:	6848      	and      	r1, r2
    2790:	3940      	cmpnei      	r1, 0
    2792:	0c03      	bf      	0x2798	// 2798 <GPT0IntHandler+0x48>
		GPT0->ICR = GPT_INT_PEND;
    2794:	b357      	st.w      	r2, (r3, 0x5c)
}
    2796:	07e8      	br      	0x2766	// 2766 <GPT0IntHandler+0x16>
	else if((GPT0->MISR&GPT_INT_CAD)==GPT_INT_CAD)			//Down-Counting phase CNT = CMPA Interrupt
    2798:	3280      	movi      	r2, 128
    279a:	9335      	ld.w      	r1, (r3, 0x54)
    279c:	4242      	lsli      	r2, r2, 2
    279e:	6848      	and      	r1, r2
    27a0:	3940      	cmpnei      	r1, 0
    27a2:	0bf9      	bt      	0x2794	// 2794 <GPT0IntHandler+0x44>
	else if((GPT0->MISR&GPT_INT_CBU)==GPT_INT_CBU)			//Up-Counting phase CNT = CMPB Interrupt
    27a4:	3280      	movi      	r2, 128
    27a6:	9335      	ld.w      	r1, (r3, 0x54)
    27a8:	4243      	lsli      	r2, r2, 3
    27aa:	6848      	and      	r1, r2
    27ac:	3940      	cmpnei      	r1, 0
    27ae:	0bf3      	bt      	0x2794	// 2794 <GPT0IntHandler+0x44>
	else if((GPT0->MISR&GPT_INT_CBD)==GPT_INT_CBD)			//Down-Counting phase CNT = CMPB Interrupt
    27b0:	3280      	movi      	r2, 128
    27b2:	9335      	ld.w      	r1, (r3, 0x54)
    27b4:	4244      	lsli      	r2, r2, 4
    27b6:	6848      	and      	r1, r2
    27b8:	3940      	cmpnei      	r1, 0
    27ba:	0bed      	bt      	0x2794	// 2794 <GPT0IntHandler+0x44>
	else if((GPT0->MISR&GPT_INT_PEND)==GPT_INT_PEND)		//End of cycle interrupt 
    27bc:	3280      	movi      	r2, 128
    27be:	9335      	ld.w      	r1, (r3, 0x54)
    27c0:	4249      	lsli      	r2, r2, 9
    27c2:	6848      	and      	r1, r2
    27c4:	3940      	cmpnei      	r1, 0
    27c6:	0be7      	bt      	0x2794	// 2794 <GPT0IntHandler+0x44>
    27c8:	07cf      	br      	0x2766	// 2766 <GPT0IntHandler+0x16>
    27ca:	0000      	bkpt
    27cc:	20000024 	.long	0x20000024

Disassembly of section .text.RTCIntHandler:

000027d0 <RTCIntHandler>:
//RTC Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void RTCIntHandler(void) 
{
    27d0:	1460      	nie
    27d2:	1462      	ipush
    // ISR content ...
	if((RTC->MISR&ALRA_INT)==ALRA_INT)			//Interrupt of alarm A
    27d4:	1079      	lrw      	r3, 0x20000018	// 2838 <RTCIntHandler+0x68>
    27d6:	3101      	movi      	r1, 1
    27d8:	9360      	ld.w      	r3, (r3, 0x0)
    27da:	934a      	ld.w      	r2, (r3, 0x28)
    27dc:	6884      	and      	r2, r1
    27de:	3a40      	cmpnei      	r2, 0
    27e0:	0c14      	bf      	0x2808	// 2808 <RTCIntHandler+0x38>
	{
		RTC->ICR=ALRA_INT;
		RTC->KEY=0XCA53;
    27e2:	1057      	lrw      	r2, 0xca53	// 283c <RTCIntHandler+0x6c>
		RTC->ICR=ALRA_INT;
    27e4:	b32b      	st.w      	r1, (r3, 0x2c)
		RTC->KEY=0XCA53;
    27e6:	b34c      	st.w      	r2, (r3, 0x30)
		RTC->CR=RTC->CR|0x01;
    27e8:	9342      	ld.w      	r2, (r3, 0x8)
    27ea:	6c84      	or      	r2, r1
    27ec:	b342      	st.w      	r2, (r3, 0x8)
		RTC->TIMR=(0x10<<16)|(0x00<<8)|(0x00);			//Hour bit6->0:am 1:pm	
    27ee:	3280      	movi      	r2, 128
    27f0:	424d      	lsli      	r2, r2, 13
    27f2:	b340      	st.w      	r2, (r3, 0x0)
		while(RTC->CR&0x02);							//busy TIMR DATR ALRAR ALRBR Update done
    27f4:	3102      	movi      	r1, 2
    27f6:	9342      	ld.w      	r2, (r3, 0x8)
    27f8:	6884      	and      	r2, r1
    27fa:	3a40      	cmpnei      	r2, 0
    27fc:	0bfd      	bt      	0x27f6	// 27f6 <RTCIntHandler+0x26>
		RTC->CR &= ~0x1;
    27fe:	9342      	ld.w      	r2, (r3, 0x8)
    2800:	3a80      	bclri      	r2, 0
    2802:	b342      	st.w      	r2, (r3, 0x8)
	}
	else if((RTC->MISR&RTC_TRGEV1_INT)==RTC_TRGEV1_INT)		//Interrupt of trigger event 1
	{
		RTC->ICR=RTC_TRGEV1_INT;
	}
}
    2804:	1463      	ipop
    2806:	1461      	nir
	else if((RTC->MISR&ALRB_INT)==ALRB_INT)			//Interrupt of alarm B				
    2808:	934a      	ld.w      	r2, (r3, 0x28)
    280a:	3102      	movi      	r1, 2
    280c:	6884      	and      	r2, r1
    280e:	3a40      	cmpnei      	r2, 0
    2810:	0c03      	bf      	0x2816	// 2816 <RTCIntHandler+0x46>
		RTC->ICR=RTC_TRGEV1_INT;
    2812:	b32b      	st.w      	r1, (r3, 0x2c)
}
    2814:	07f8      	br      	0x2804	// 2804 <RTCIntHandler+0x34>
	else if((RTC->MISR&CPRD_INT)==CPRD_INT)			//Interrupt of alarm CPRD
    2816:	934a      	ld.w      	r2, (r3, 0x28)
    2818:	3104      	movi      	r1, 4
    281a:	6884      	and      	r2, r1
    281c:	3a40      	cmpnei      	r2, 0
    281e:	0bfa      	bt      	0x2812	// 2812 <RTCIntHandler+0x42>
	else if((RTC->MISR&RTC_TRGEV0_INT)==RTC_TRGEV0_INT)		//Interrupt of trigger event 0
    2820:	934a      	ld.w      	r2, (r3, 0x28)
    2822:	3108      	movi      	r1, 8
    2824:	6884      	and      	r2, r1
    2826:	3a40      	cmpnei      	r2, 0
    2828:	0bf5      	bt      	0x2812	// 2812 <RTCIntHandler+0x42>
	else if((RTC->MISR&RTC_TRGEV1_INT)==RTC_TRGEV1_INT)		//Interrupt of trigger event 1
    282a:	934a      	ld.w      	r2, (r3, 0x28)
    282c:	3110      	movi      	r1, 16
    282e:	6884      	and      	r2, r1
    2830:	3a40      	cmpnei      	r2, 0
    2832:	0bf0      	bt      	0x2812	// 2812 <RTCIntHandler+0x42>
    2834:	07e8      	br      	0x2804	// 2804 <RTCIntHandler+0x34>
    2836:	0000      	bkpt
    2838:	20000018 	.long	0x20000018
    283c:	0000ca53 	.long	0x0000ca53

Disassembly of section .text.UART0IntHandler:

00002840 <UART0IntHandler>:
//UART0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART0IntHandler(void) 
{
    2840:	1460      	nie
    2842:	1462      	ipush
    // ISR content ...
	if ((UART0->ISR&UART_RX_INT_S)==UART_RX_INT_S)				//RX interrupt
    2844:	106d      	lrw      	r3, 0x20000040	// 2878 <UART0IntHandler+0x38>
    2846:	3102      	movi      	r1, 2
    2848:	9360      	ld.w      	r3, (r3, 0x0)
    284a:	9343      	ld.w      	r2, (r3, 0xc)
    284c:	6884      	and      	r2, r1
    284e:	3a40      	cmpnei      	r2, 0
    2850:	0c03      	bf      	0x2856	// 2856 <UART0IntHandler+0x16>
	{
		UART0->ISR=UART_RX_IOV_S;
	}
	else if ((UART0->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
	{
		UART0->ISR=UART_TX_IOV_S;
    2852:	b323      	st.w      	r1, (r3, 0xc)
	}
}
    2854:	0410      	br      	0x2874	// 2874 <UART0IntHandler+0x34>
	else if( (UART0->ISR&UART_TX_INT_S)==UART_TX_INT_S ) 		//TX interrupt
    2856:	9343      	ld.w      	r2, (r3, 0xc)
    2858:	3101      	movi      	r1, 1
    285a:	6884      	and      	r2, r1
    285c:	3a40      	cmpnei      	r2, 0
    285e:	0bfa      	bt      	0x2852	// 2852 <UART0IntHandler+0x12>
	else if ((UART0->ISR&UART_RX_IOV_S)==UART_RX_IOV_S)			//RX overrun interrupt
    2860:	9343      	ld.w      	r2, (r3, 0xc)
    2862:	3108      	movi      	r1, 8
    2864:	6884      	and      	r2, r1
    2866:	3a40      	cmpnei      	r2, 0
    2868:	0bf5      	bt      	0x2852	// 2852 <UART0IntHandler+0x12>
	else if ((UART0->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
    286a:	9343      	ld.w      	r2, (r3, 0xc)
    286c:	3104      	movi      	r1, 4
    286e:	6884      	and      	r2, r1
    2870:	3a40      	cmpnei      	r2, 0
    2872:	0bf0      	bt      	0x2852	// 2852 <UART0IntHandler+0x12>
}
    2874:	1463      	ipop
    2876:	1461      	nir
    2878:	20000040 	.long	0x20000040

Disassembly of section .text.UART1IntHandler:

0000287c <UART1IntHandler>:
//UART1 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART1IntHandler(void) 
{
    287c:	1460      	nie
    287e:	1462      	ipush
    // ISR content ...
	if ((UART1->ISR&UART_RX_INT_S)==UART_RX_INT_S)				//RX interrupt
    2880:	106d      	lrw      	r3, 0x2000003c	// 28b4 <UART1IntHandler+0x38>
    2882:	3102      	movi      	r1, 2
    2884:	9360      	ld.w      	r3, (r3, 0x0)
    2886:	9343      	ld.w      	r2, (r3, 0xc)
    2888:	6884      	and      	r2, r1
    288a:	3a40      	cmpnei      	r2, 0
    288c:	0c03      	bf      	0x2892	// 2892 <UART1IntHandler+0x16>
	{
		UART1->ISR=UART_RX_IOV_S;
	}
	else if ((UART1->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
	{
		UART1->ISR=UART_TX_IOV_S;
    288e:	b323      	st.w      	r1, (r3, 0xc)
	}
}
    2890:	0410      	br      	0x28b0	// 28b0 <UART1IntHandler+0x34>
	else if( (UART1->ISR&UART_TX_INT_S)==UART_TX_INT_S ) 		//TX interrupt
    2892:	9343      	ld.w      	r2, (r3, 0xc)
    2894:	3101      	movi      	r1, 1
    2896:	6884      	and      	r2, r1
    2898:	3a40      	cmpnei      	r2, 0
    289a:	0bfa      	bt      	0x288e	// 288e <UART1IntHandler+0x12>
	else if ((UART1->ISR&UART_RX_IOV_S)==UART_RX_IOV_S)			//RX overrun interrupt
    289c:	9343      	ld.w      	r2, (r3, 0xc)
    289e:	3108      	movi      	r1, 8
    28a0:	6884      	and      	r2, r1
    28a2:	3a40      	cmpnei      	r2, 0
    28a4:	0bf5      	bt      	0x288e	// 288e <UART1IntHandler+0x12>
	else if ((UART1->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
    28a6:	9343      	ld.w      	r2, (r3, 0xc)
    28a8:	3104      	movi      	r1, 4
    28aa:	6884      	and      	r2, r1
    28ac:	3a40      	cmpnei      	r2, 0
    28ae:	0bf0      	bt      	0x288e	// 288e <UART1IntHandler+0x12>
}
    28b0:	1463      	ipop
    28b2:	1461      	nir
    28b4:	2000003c 	.long	0x2000003c

Disassembly of section .text.UART2IntHandler:

000028b8 <UART2IntHandler>:
//UART2 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART2IntHandler(void) 
{
    28b8:	1460      	nie
    28ba:	1462      	ipush
    // ISR content ...
	if ((UART2->ISR&UART_RX_INT_S)==UART_RX_INT_S)				//RX interrupt
    28bc:	106d      	lrw      	r3, 0x20000038	// 28f0 <UART2IntHandler+0x38>
    28be:	3102      	movi      	r1, 2
    28c0:	9360      	ld.w      	r3, (r3, 0x0)
    28c2:	9343      	ld.w      	r2, (r3, 0xc)
    28c4:	6884      	and      	r2, r1
    28c6:	3a40      	cmpnei      	r2, 0
    28c8:	0c03      	bf      	0x28ce	// 28ce <UART2IntHandler+0x16>
	{
		UART2->ISR=UART_RX_IOV_S;
	}
	else if ((UART2->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
	{
		UART2->ISR=UART_TX_IOV_S;
    28ca:	b323      	st.w      	r1, (r3, 0xc)
	}
}
    28cc:	0410      	br      	0x28ec	// 28ec <UART2IntHandler+0x34>
	else if( (UART2->ISR&UART_TX_INT_S)==UART_TX_INT_S ) 		//TX interrupt
    28ce:	9343      	ld.w      	r2, (r3, 0xc)
    28d0:	3101      	movi      	r1, 1
    28d2:	6884      	and      	r2, r1
    28d4:	3a40      	cmpnei      	r2, 0
    28d6:	0bfa      	bt      	0x28ca	// 28ca <UART2IntHandler+0x12>
	else if ((UART2->ISR&UART_RX_IOV_S)==UART_RX_IOV_S)			//RX overrun interrupt
    28d8:	9343      	ld.w      	r2, (r3, 0xc)
    28da:	3108      	movi      	r1, 8
    28dc:	6884      	and      	r2, r1
    28de:	3a40      	cmpnei      	r2, 0
    28e0:	0bf5      	bt      	0x28ca	// 28ca <UART2IntHandler+0x12>
	else if ((UART2->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
    28e2:	9343      	ld.w      	r2, (r3, 0xc)
    28e4:	3104      	movi      	r1, 4
    28e6:	6884      	and      	r2, r1
    28e8:	3a40      	cmpnei      	r2, 0
    28ea:	0bf0      	bt      	0x28ca	// 28ca <UART2IntHandler+0x12>
}
    28ec:	1463      	ipop
    28ee:	1461      	nir
    28f0:	20000038 	.long	0x20000038

Disassembly of section .text.SPI0IntHandler:

000028f4 <SPI0IntHandler>:
//SPI Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SPI0IntHandler(void) 
{
    28f4:	1460      	nie
    28f6:	1462      	ipush
    // ISR content ...
	if((SPI0->MISR&SPI_PORIM)==SPI_PORIM)					//Receive Overrun Interrupt
    28f8:	1178      	lrw      	r3, 0x20000034	// 29d8 <SPI0IntHandler+0xe4>
    28fa:	3101      	movi      	r1, 1
    28fc:	9360      	ld.w      	r3, (r3, 0x0)
    28fe:	9347      	ld.w      	r2, (r3, 0x1c)
    2900:	6884      	and      	r2, r1
    2902:	3a40      	cmpnei      	r2, 0
    2904:	0c03      	bf      	0x290a	// 290a <SPI0IntHandler+0x16>
			}
		}
	}
	else if((SPI0->MISR&SPI_TXIM)==SPI_TXIM)				//Transmit FIFO Interrupt
	{
		SPI0->ICR = SPI_TXIM;
    2906:	b328      	st.w      	r1, (r3, 0x20)
	}

}
    2908:	0407      	br      	0x2916	// 2916 <SPI0IntHandler+0x22>
	else if((SPI0->MISR&SPI_RTIM)==SPI_RTIM)				//Receive Timeout Interrupt
    290a:	9347      	ld.w      	r2, (r3, 0x1c)
    290c:	3002      	movi      	r0, 2
    290e:	6880      	and      	r2, r0
    2910:	3a40      	cmpnei      	r2, 0
    2912:	0c04      	bf      	0x291a	// 291a <SPI0IntHandler+0x26>
		SPI0->ICR = SPI_RTIM;
    2914:	b308      	st.w      	r0, (r3, 0x20)
}
    2916:	1463      	ipop
    2918:	1461      	nir
	else if((SPI0->MISR&SPI_RXIM)==SPI_RXIM)				//Receive FIFO Interrupt,FIFO can be set 1/8,1/4,1/2 FIFO Interrupt
    291a:	9347      	ld.w      	r2, (r3, 0x1c)
    291c:	3004      	movi      	r0, 4
    291e:	6880      	and      	r2, r0
    2920:	3a40      	cmpnei      	r2, 0
    2922:	0c55      	bf      	0x29cc	// 29cc <SPI0IntHandler+0xd8>
		SPI0->ICR = SPI_RXIM;
    2924:	b308      	st.w      	r0, (r3, 0x20)
		if(SPI0->DR==0xaa)
    2926:	9302      	ld.w      	r0, (r3, 0x8)
    2928:	32aa      	movi      	r2, 170
    292a:	6482      	cmpne      	r0, r2
    292c:	083e      	bt      	0x29a8	// 29a8 <SPI0IntHandler+0xb4>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    292e:	3102      	movi      	r1, 2
    2930:	9343      	ld.w      	r2, (r3, 0xc)
    2932:	6884      	and      	r2, r1
    2934:	3a40      	cmpnei      	r2, 0
    2936:	0ffd      	bf      	0x2930	// 2930 <SPI0IntHandler+0x3c>
			SPI0->DR = 0x11;
    2938:	3211      	movi      	r2, 17
    293a:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    293c:	3110      	movi      	r1, 16
    293e:	9343      	ld.w      	r2, (r3, 0xc)
    2940:	6884      	and      	r2, r1
    2942:	3a40      	cmpnei      	r2, 0
    2944:	0bfd      	bt      	0x293e	// 293e <SPI0IntHandler+0x4a>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    2946:	3102      	movi      	r1, 2
    2948:	9343      	ld.w      	r2, (r3, 0xc)
    294a:	6884      	and      	r2, r1
    294c:	3a40      	cmpnei      	r2, 0
    294e:	0ffd      	bf      	0x2948	// 2948 <SPI0IntHandler+0x54>
			SPI0->DR = 0x12;
    2950:	3212      	movi      	r2, 18
    2952:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    2954:	3110      	movi      	r1, 16
    2956:	9343      	ld.w      	r2, (r3, 0xc)
    2958:	6884      	and      	r2, r1
    295a:	3a40      	cmpnei      	r2, 0
    295c:	0bfd      	bt      	0x2956	// 2956 <SPI0IntHandler+0x62>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    295e:	3102      	movi      	r1, 2
    2960:	9343      	ld.w      	r2, (r3, 0xc)
    2962:	6884      	and      	r2, r1
    2964:	3a40      	cmpnei      	r2, 0
    2966:	0ffd      	bf      	0x2960	// 2960 <SPI0IntHandler+0x6c>
			SPI0->DR = 0x13;
    2968:	3213      	movi      	r2, 19
    296a:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    296c:	3110      	movi      	r1, 16
    296e:	9343      	ld.w      	r2, (r3, 0xc)
    2970:	6884      	and      	r2, r1
    2972:	3a40      	cmpnei      	r2, 0
    2974:	0bfd      	bt      	0x296e	// 296e <SPI0IntHandler+0x7a>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    2976:	3102      	movi      	r1, 2
    2978:	9343      	ld.w      	r2, (r3, 0xc)
    297a:	6884      	and      	r2, r1
    297c:	3a40      	cmpnei      	r2, 0
    297e:	0ffd      	bf      	0x2978	// 2978 <SPI0IntHandler+0x84>
			SPI0->DR = 0x14;
    2980:	3214      	movi      	r2, 20
    2982:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    2984:	3110      	movi      	r1, 16
    2986:	9343      	ld.w      	r2, (r3, 0xc)
    2988:	6884      	and      	r2, r1
    298a:	3a40      	cmpnei      	r2, 0
    298c:	0bfd      	bt      	0x2986	// 2986 <SPI0IntHandler+0x92>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    298e:	3102      	movi      	r1, 2
    2990:	9343      	ld.w      	r2, (r3, 0xc)
    2992:	6884      	and      	r2, r1
    2994:	3a40      	cmpnei      	r2, 0
    2996:	0ffd      	bf      	0x2990	// 2990 <SPI0IntHandler+0x9c>
			SPI0->DR = 0x15;
    2998:	3215      	movi      	r2, 21
    299a:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    299c:	3110      	movi      	r1, 16
    299e:	9343      	ld.w      	r2, (r3, 0xc)
    29a0:	6884      	and      	r2, r1
    29a2:	3a40      	cmpnei      	r2, 0
    29a4:	0bfd      	bt      	0x299e	// 299e <SPI0IntHandler+0xaa>
    29a6:	07b8      	br      	0x2916	// 2916 <SPI0IntHandler+0x22>
			if(((SPI0->SR) & SSP_TFE)!=SSP_TFE)
    29a8:	9343      	ld.w      	r2, (r3, 0xc)
    29aa:	6884      	and      	r2, r1
    29ac:	3a40      	cmpnei      	r2, 0
    29ae:	0bb4      	bt      	0x2916	// 2916 <SPI0IntHandler+0x22>
				SPI0->DR=0x0;								//FIFO=0
    29b0:	b342      	st.w      	r2, (r3, 0x8)
				while(((SPI0->SR) & SSP_BSY) == SSP_BSY);		//Send or receive over？
    29b2:	3110      	movi      	r1, 16
				SPI0->DR=0x0;								//FIFO=0
    29b4:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    29b6:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    29b8:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    29ba:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    29bc:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    29be:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    29c0:	b342      	st.w      	r2, (r3, 0x8)
				while(((SPI0->SR) & SSP_BSY) == SSP_BSY);		//Send or receive over？
    29c2:	9343      	ld.w      	r2, (r3, 0xc)
    29c4:	6884      	and      	r2, r1
    29c6:	3a40      	cmpnei      	r2, 0
    29c8:	0bfd      	bt      	0x29c2	// 29c2 <SPI0IntHandler+0xce>
    29ca:	07a6      	br      	0x2916	// 2916 <SPI0IntHandler+0x22>
	else if((SPI0->MISR&SPI_TXIM)==SPI_TXIM)				//Transmit FIFO Interrupt
    29cc:	9347      	ld.w      	r2, (r3, 0x1c)
    29ce:	3108      	movi      	r1, 8
    29d0:	6884      	and      	r2, r1
    29d2:	3a40      	cmpnei      	r2, 0
    29d4:	0b99      	bt      	0x2906	// 2906 <SPI0IntHandler+0x12>
    29d6:	07a0      	br      	0x2916	// 2916 <SPI0IntHandler+0x22>
    29d8:	20000034 	.long	0x20000034

Disassembly of section .text.SIO0IntHandler:

000029dc <SIO0IntHandler>:
//SIO Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SIO0IntHandler(void) 
{
    29dc:	1460      	nie
    29de:	1462      	ipush
		delay_nms(10);
		SIO0->TXBUF=(0x03<<30)|(0x02<<28)|(0x03<<26)|(0x02<<24)|(0x03<<22)|(0x02<<20)|(0x03<<18)|(0x02<<16)|
				(0x01<<14)|(0x00<<12)|(0x01<<10)|(0x00<<8)|(0x01<<6)|(0x00<<4)|(0x01<<2)|(0x0<<0);		//0:D0,1:D1,2:DL,3:DH;	
	}*/
	
	if(SIO0->MISR&0X02)					//RXDNE
    29e0:	107d      	lrw      	r3, 0x2000002c	// 2a54 <SIO0IntHandler+0x78>
    29e2:	3102      	movi      	r1, 2
    29e4:	9360      	ld.w      	r3, (r3, 0x0)
    29e6:	9349      	ld.w      	r2, (r3, 0x24)
    29e8:	6884      	and      	r2, r1
    29ea:	3a40      	cmpnei      	r2, 0
    29ec:	0c13      	bf      	0x2a12	// 2a12 <SIO0IntHandler+0x36>
	{
		SIO0->ICR=0X02;
    29ee:	b32b      	st.w      	r1, (r3, 0x2c)
		if(R_SIORX_count>=1)
    29f0:	101a      	lrw      	r0, 0x20000154	// 2a58 <SIO0IntHandler+0x7c>
    29f2:	9040      	ld.w      	r2, (r0, 0x0)
    29f4:	3a20      	cmplti      	r2, 1
    29f6:	080c      	bt      	0x2a0e	// 2a0e <SIO0IntHandler+0x32>
		{
			R_SIORX_buf[R_SIORX_count]=SIO0->RXBUF&0xff000000;			//8bit
    29f8:	9040      	ld.w      	r2, (r0, 0x0)
    29fa:	9327      	ld.w      	r1, (r3, 0x1c)
    29fc:	4938      	lsri      	r1, r1, 24
    29fe:	4262      	lsli      	r3, r2, 2
    2a00:	1057      	lrw      	r2, 0x20000158	// 2a5c <SIO0IntHandler+0x80>
    2a02:	4138      	lsli      	r1, r1, 24
    2a04:	60c8      	addu      	r3, r2
    2a06:	b320      	st.w      	r1, (r3, 0x0)
			nop;
    2a08:	6c03      	mov      	r0, r0
			R_SIORX_count=0;
    2a0a:	3300      	movi      	r3, 0
    2a0c:	b060      	st.w      	r3, (r0, 0x0)
	}
	else if(SIO0->MISR&0X020)				//TIMEOUT
	{
		SIO0->ICR=0X20;
	}
}
    2a0e:	1463      	ipop
    2a10:	1461      	nir
	else if(SIO0->MISR&0X08)					//RXBUFFULL	
    2a12:	9349      	ld.w      	r2, (r3, 0x24)
    2a14:	3108      	movi      	r1, 8
    2a16:	6884      	and      	r2, r1
    2a18:	3a40      	cmpnei      	r2, 0
    2a1a:	0c10      	bf      	0x2a3a	// 2a3a <SIO0IntHandler+0x5e>
		SIO0->ICR=0X08;
    2a1c:	b32b      	st.w      	r1, (r3, 0x2c)
		if(R_SIORX_count<1)
    2a1e:	102f      	lrw      	r1, 0x20000154	// 2a58 <SIO0IntHandler+0x7c>
    2a20:	9140      	ld.w      	r2, (r1, 0x0)
    2a22:	3a20      	cmplti      	r2, 1
    2a24:	0ff5      	bf      	0x2a0e	// 2a0e <SIO0IntHandler+0x32>
			R_SIORX_buf[R_SIORX_count]=SIO0->RXBUF;				//32bit
    2a26:	9140      	ld.w      	r2, (r1, 0x0)
    2a28:	9307      	ld.w      	r0, (r3, 0x1c)
    2a2a:	4262      	lsli      	r3, r2, 2
    2a2c:	104c      	lrw      	r2, 0x20000158	// 2a5c <SIO0IntHandler+0x80>
    2a2e:	60c8      	addu      	r3, r2
    2a30:	b300      	st.w      	r0, (r3, 0x0)
			R_SIORX_count++;
    2a32:	9160      	ld.w      	r3, (r1, 0x0)
    2a34:	2300      	addi      	r3, 1
    2a36:	b160      	st.w      	r3, (r1, 0x0)
    2a38:	07eb      	br      	0x2a0e	// 2a0e <SIO0IntHandler+0x32>
	else if(SIO0->MISR&0X010)				//BREAK
    2a3a:	9349      	ld.w      	r2, (r3, 0x24)
    2a3c:	3110      	movi      	r1, 16
    2a3e:	6884      	and      	r2, r1
    2a40:	3a40      	cmpnei      	r2, 0
    2a42:	0c03      	bf      	0x2a48	// 2a48 <SIO0IntHandler+0x6c>
		SIO0->ICR=0X20;
    2a44:	b32b      	st.w      	r1, (r3, 0x2c)
}
    2a46:	07e4      	br      	0x2a0e	// 2a0e <SIO0IntHandler+0x32>
	else if(SIO0->MISR&0X020)				//TIMEOUT
    2a48:	9349      	ld.w      	r2, (r3, 0x24)
    2a4a:	3120      	movi      	r1, 32
    2a4c:	6884      	and      	r2, r1
    2a4e:	3a40      	cmpnei      	r2, 0
    2a50:	0bfa      	bt      	0x2a44	// 2a44 <SIO0IntHandler+0x68>
    2a52:	07de      	br      	0x2a0e	// 2a0e <SIO0IntHandler+0x32>
    2a54:	2000002c 	.long	0x2000002c
    2a58:	20000154 	.long	0x20000154
    2a5c:	20000158 	.long	0x20000158

Disassembly of section .text.EXI0IntHandler:

00002a60 <EXI0IntHandler>:
//EXT0/16 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI0IntHandler(void) 
{
    2a60:	1460      	nie
    2a62:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN0)==EXI_PIN0) 			//EXT0 Interrupt
    2a64:	106a      	lrw      	r3, 0x2000005c	// 2a8c <EXI0IntHandler+0x2c>
    2a66:	3101      	movi      	r1, 1
    2a68:	9360      	ld.w      	r3, (r3, 0x0)
    2a6a:	237f      	addi      	r3, 128
    2a6c:	934c      	ld.w      	r2, (r3, 0x30)
    2a6e:	6884      	and      	r2, r1
    2a70:	3a40      	cmpnei      	r2, 0
    2a72:	0c04      	bf      	0x2a7a	// 2a7a <EXI0IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN0;
    2a74:	b32b      	st.w      	r1, (r3, 0x2c)
	}
	else if ((SYSCON->EXIRS&EXI_PIN16)==EXI_PIN16) 		//EXT16 Interrupt
	{
		SYSCON->EXICR = EXI_PIN16;
	}
}
    2a76:	1463      	ipop
    2a78:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN16)==EXI_PIN16) 		//EXT16 Interrupt
    2a7a:	3280      	movi      	r2, 128
    2a7c:	932c      	ld.w      	r1, (r3, 0x30)
    2a7e:	4249      	lsli      	r2, r2, 9
    2a80:	6848      	and      	r1, r2
    2a82:	3940      	cmpnei      	r1, 0
    2a84:	0ff9      	bf      	0x2a76	// 2a76 <EXI0IntHandler+0x16>
		SYSCON->EXICR = EXI_PIN16;
    2a86:	b34b      	st.w      	r2, (r3, 0x2c)
}
    2a88:	07f7      	br      	0x2a76	// 2a76 <EXI0IntHandler+0x16>
    2a8a:	0000      	bkpt
    2a8c:	2000005c 	.long	0x2000005c

Disassembly of section .text.EXI1IntHandler:

00002a90 <EXI1IntHandler>:
//EXT1/17 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI1IntHandler(void) 
{
    2a90:	1460      	nie
    2a92:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN1)==EXI_PIN1) 			//EXT1 Interrupt
    2a94:	106a      	lrw      	r3, 0x2000005c	// 2abc <EXI1IntHandler+0x2c>
    2a96:	3102      	movi      	r1, 2
    2a98:	9360      	ld.w      	r3, (r3, 0x0)
    2a9a:	237f      	addi      	r3, 128
    2a9c:	934c      	ld.w      	r2, (r3, 0x30)
    2a9e:	6884      	and      	r2, r1
    2aa0:	3a40      	cmpnei      	r2, 0
    2aa2:	0c04      	bf      	0x2aaa	// 2aaa <EXI1IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN1;
    2aa4:	b32b      	st.w      	r1, (r3, 0x2c)
	}
	else if ((SYSCON->EXIRS&EXI_PIN17)==EXI_PIN17) 		//EXT17 Interrupt
	{
		SYSCON->EXICR = EXI_PIN17;
	}
}
    2aa6:	1463      	ipop
    2aa8:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN17)==EXI_PIN17) 		//EXT17 Interrupt
    2aaa:	3280      	movi      	r2, 128
    2aac:	932c      	ld.w      	r1, (r3, 0x30)
    2aae:	424a      	lsli      	r2, r2, 10
    2ab0:	6848      	and      	r1, r2
    2ab2:	3940      	cmpnei      	r1, 0
    2ab4:	0ff9      	bf      	0x2aa6	// 2aa6 <EXI1IntHandler+0x16>
		SYSCON->EXICR = EXI_PIN17;
    2ab6:	b34b      	st.w      	r2, (r3, 0x2c)
}
    2ab8:	07f7      	br      	0x2aa6	// 2aa6 <EXI1IntHandler+0x16>
    2aba:	0000      	bkpt
    2abc:	2000005c 	.long	0x2000005c

Disassembly of section .text.EXI2to3IntHandler:

00002ac0 <EXI2to3IntHandler>:
//EXI2~3 18~19Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI2to3IntHandler(void) 
{
    2ac0:	1460      	nie
    2ac2:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN2)==EXI_PIN2) 			//EXT2 Interrupt
    2ac4:	1070      	lrw      	r3, 0x2000005c	// 2b04 <EXI2to3IntHandler+0x44>
    2ac6:	3104      	movi      	r1, 4
    2ac8:	9360      	ld.w      	r3, (r3, 0x0)
    2aca:	237f      	addi      	r3, 128
    2acc:	934c      	ld.w      	r2, (r3, 0x30)
    2ace:	6884      	and      	r2, r1
    2ad0:	3a40      	cmpnei      	r2, 0
    2ad2:	0c04      	bf      	0x2ada	// 2ada <EXI2to3IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN2;
	} 
	else if ((SYSCON->EXIRS&EXI_PIN3)==EXI_PIN3) 		//EXT3 Interrupt
	{
		SYSCON->EXICR = EXI_PIN3;
    2ad4:	b32b      	st.w      	r1, (r3, 0x2c)
	}
	else if ((SYSCON->EXIRS&EXI_PIN19)==EXI_PIN19) 		//EXT19 Interrupt
	{
		SYSCON->EXICR = EXI_PIN19;
	}
}
    2ad6:	1463      	ipop
    2ad8:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN3)==EXI_PIN3) 		//EXT3 Interrupt
    2ada:	934c      	ld.w      	r2, (r3, 0x30)
    2adc:	3108      	movi      	r1, 8
    2ade:	6884      	and      	r2, r1
    2ae0:	3a40      	cmpnei      	r2, 0
    2ae2:	0bf9      	bt      	0x2ad4	// 2ad4 <EXI2to3IntHandler+0x14>
	else if ((SYSCON->EXIRS&EXI_PIN18)==EXI_PIN18) 		//EXT18 Interrupt
    2ae4:	3280      	movi      	r2, 128
    2ae6:	932c      	ld.w      	r1, (r3, 0x30)
    2ae8:	424b      	lsli      	r2, r2, 11
    2aea:	6848      	and      	r1, r2
    2aec:	3940      	cmpnei      	r1, 0
    2aee:	0c03      	bf      	0x2af4	// 2af4 <EXI2to3IntHandler+0x34>
		SYSCON->EXICR = EXI_PIN19;
    2af0:	b34b      	st.w      	r2, (r3, 0x2c)
}
    2af2:	07f2      	br      	0x2ad6	// 2ad6 <EXI2to3IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN19)==EXI_PIN19) 		//EXT19 Interrupt
    2af4:	3280      	movi      	r2, 128
    2af6:	932c      	ld.w      	r1, (r3, 0x30)
    2af8:	424c      	lsli      	r2, r2, 12
    2afa:	6848      	and      	r1, r2
    2afc:	3940      	cmpnei      	r1, 0
    2afe:	0bf9      	bt      	0x2af0	// 2af0 <EXI2to3IntHandler+0x30>
    2b00:	07eb      	br      	0x2ad6	// 2ad6 <EXI2to3IntHandler+0x16>
    2b02:	0000      	bkpt
    2b04:	2000005c 	.long	0x2000005c

Disassembly of section .text.EXI4to9IntHandler:

00002b08 <EXI4to9IntHandler>:
//EXI4~9 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI4to9IntHandler(void) 
{
    2b08:	1460      	nie
    2b0a:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN4)==EXI_PIN4) 			//EXT4 Interrupt
    2b0c:	1075      	lrw      	r3, 0x2000005c	// 2b60 <EXI4to9IntHandler+0x58>
    2b0e:	3280      	movi      	r2, 128
    2b10:	9360      	ld.w      	r3, (r3, 0x0)
    2b12:	60c8      	addu      	r3, r2
    2b14:	932c      	ld.w      	r1, (r3, 0x30)
    2b16:	3010      	movi      	r0, 16
    2b18:	6840      	and      	r1, r0
    2b1a:	3940      	cmpnei      	r1, 0
    2b1c:	0c04      	bf      	0x2b24	// 2b24 <EXI4to9IntHandler+0x1c>
	{
		SYSCON->EXICR = EXI_PIN5;
	} 
	else if ((SYSCON->EXIRS&EXI_PIN6)==EXI_PIN6) 		//EXT6 Interrupt
	{
		SYSCON->EXICR = EXI_PIN6;
    2b1e:	b30b      	st.w      	r0, (r3, 0x2c)
	else if ((SYSCON->EXIRS&EXI_PIN9)==EXI_PIN9) 		//EXT9 Interrupt
	{
		SYSCON->EXICR = EXI_PIN9;
	} 

}
    2b20:	1463      	ipop
    2b22:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN5)==EXI_PIN5) 		//EXT5 Interrupt
    2b24:	932c      	ld.w      	r1, (r3, 0x30)
    2b26:	3020      	movi      	r0, 32
    2b28:	6840      	and      	r1, r0
    2b2a:	3940      	cmpnei      	r1, 0
    2b2c:	0bf9      	bt      	0x2b1e	// 2b1e <EXI4to9IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN6)==EXI_PIN6) 		//EXT6 Interrupt
    2b2e:	932c      	ld.w      	r1, (r3, 0x30)
    2b30:	3040      	movi      	r0, 64
    2b32:	6840      	and      	r1, r0
    2b34:	3940      	cmpnei      	r1, 0
    2b36:	0bf4      	bt      	0x2b1e	// 2b1e <EXI4to9IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN7)==EXI_PIN7) 		//EXT7 Interrupt
    2b38:	932c      	ld.w      	r1, (r3, 0x30)
    2b3a:	6848      	and      	r1, r2
    2b3c:	3940      	cmpnei      	r1, 0
    2b3e:	0c03      	bf      	0x2b44	// 2b44 <EXI4to9IntHandler+0x3c>
		SYSCON->EXICR = EXI_PIN9;
    2b40:	b34b      	st.w      	r2, (r3, 0x2c)
}
    2b42:	07ef      	br      	0x2b20	// 2b20 <EXI4to9IntHandler+0x18>
	else if ((SYSCON->EXIRS&EXI_PIN8)==EXI_PIN8) 		//EXT8 Interrupt
    2b44:	3280      	movi      	r2, 128
    2b46:	932c      	ld.w      	r1, (r3, 0x30)
    2b48:	4241      	lsli      	r2, r2, 1
    2b4a:	6848      	and      	r1, r2
    2b4c:	3940      	cmpnei      	r1, 0
    2b4e:	0bf9      	bt      	0x2b40	// 2b40 <EXI4to9IntHandler+0x38>
	else if ((SYSCON->EXIRS&EXI_PIN9)==EXI_PIN9) 		//EXT9 Interrupt
    2b50:	3280      	movi      	r2, 128
    2b52:	932c      	ld.w      	r1, (r3, 0x30)
    2b54:	4242      	lsli      	r2, r2, 2
    2b56:	6848      	and      	r1, r2
    2b58:	3940      	cmpnei      	r1, 0
    2b5a:	0bf3      	bt      	0x2b40	// 2b40 <EXI4to9IntHandler+0x38>
    2b5c:	07e2      	br      	0x2b20	// 2b20 <EXI4to9IntHandler+0x18>
    2b5e:	0000      	bkpt
    2b60:	2000005c 	.long	0x2000005c

Disassembly of section .text.EXI10to15IntHandler:

00002b64 <EXI10to15IntHandler>:
//EXI4 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI10to15IntHandler(void) 
{
    2b64:	1460      	nie
    2b66:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN10)==EXI_PIN10) 			//EXT10 Interrupt
    2b68:	1076      	lrw      	r3, 0x2000005c	// 2bc0 <EXI10to15IntHandler+0x5c>
    2b6a:	3280      	movi      	r2, 128
    2b6c:	9360      	ld.w      	r3, (r3, 0x0)
    2b6e:	237f      	addi      	r3, 128
    2b70:	932c      	ld.w      	r1, (r3, 0x30)
    2b72:	4243      	lsli      	r2, r2, 3
    2b74:	6848      	and      	r1, r2
    2b76:	3940      	cmpnei      	r1, 0
    2b78:	0c03      	bf      	0x2b7e	// 2b7e <EXI10to15IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN14;
	}
	else if ((SYSCON->EXIRS&EXI_PIN15)==EXI_PIN15) 		//EXT15 Interrupt
	{
		SYSCON->EXICR = EXI_PIN15;
    2b7a:	b34b      	st.w      	r2, (r3, 0x2c)
	}
}
    2b7c:	041f      	br      	0x2bba	// 2bba <EXI10to15IntHandler+0x56>
	else if ((SYSCON->EXIRS&EXI_PIN11)==EXI_PIN11) 		//EXT11 Interrupt
    2b7e:	3280      	movi      	r2, 128
    2b80:	932c      	ld.w      	r1, (r3, 0x30)
    2b82:	4244      	lsli      	r2, r2, 4
    2b84:	6848      	and      	r1, r2
    2b86:	3940      	cmpnei      	r1, 0
    2b88:	0bf9      	bt      	0x2b7a	// 2b7a <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN12)==EXI_PIN12) 		//EXT12 Interrupt
    2b8a:	3280      	movi      	r2, 128
    2b8c:	932c      	ld.w      	r1, (r3, 0x30)
    2b8e:	4245      	lsli      	r2, r2, 5
    2b90:	6848      	and      	r1, r2
    2b92:	3940      	cmpnei      	r1, 0
    2b94:	0bf3      	bt      	0x2b7a	// 2b7a <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN13)==EXI_PIN13) 		//EXT13 Interrupt
    2b96:	3280      	movi      	r2, 128
    2b98:	932c      	ld.w      	r1, (r3, 0x30)
    2b9a:	4246      	lsli      	r2, r2, 6
    2b9c:	6848      	and      	r1, r2
    2b9e:	3940      	cmpnei      	r1, 0
    2ba0:	0bed      	bt      	0x2b7a	// 2b7a <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN14)==EXI_PIN14) 		//EXT14 Interrupt
    2ba2:	3280      	movi      	r2, 128
    2ba4:	932c      	ld.w      	r1, (r3, 0x30)
    2ba6:	4247      	lsli      	r2, r2, 7
    2ba8:	6848      	and      	r1, r2
    2baa:	3940      	cmpnei      	r1, 0
    2bac:	0be7      	bt      	0x2b7a	// 2b7a <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN15)==EXI_PIN15) 		//EXT15 Interrupt
    2bae:	3280      	movi      	r2, 128
    2bb0:	932c      	ld.w      	r1, (r3, 0x30)
    2bb2:	4248      	lsli      	r2, r2, 8
    2bb4:	6848      	and      	r1, r2
    2bb6:	3940      	cmpnei      	r1, 0
    2bb8:	0be1      	bt      	0x2b7a	// 2b7a <EXI10to15IntHandler+0x16>
}
    2bba:	1463      	ipop
    2bbc:	1461      	nir
    2bbe:	0000      	bkpt
    2bc0:	2000005c 	.long	0x2000005c

Disassembly of section .text.LPTIntHandler:

00002bc4 <LPTIntHandler>:
//LPT Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void LPTIntHandler(void) 
{
    2bc4:	1460      	nie
    2bc6:	1462      	ipush
    // ISR content ...
	if((LPT->MISR&LPT_TRGEV0)==LPT_TRGEV0)			//TRGEV0 interrupt
    2bc8:	106b      	lrw      	r3, 0x20000014	// 2bf4 <LPTIntHandler+0x30>
    2bca:	3101      	movi      	r1, 1
    2bcc:	9360      	ld.w      	r3, (r3, 0x0)
    2bce:	934e      	ld.w      	r2, (r3, 0x38)
    2bd0:	6884      	and      	r2, r1
    2bd2:	3a40      	cmpnei      	r2, 0
    2bd4:	0c03      	bf      	0x2bda	// 2bda <LPTIntHandler+0x16>
	{
		LPT->ICR = LPT_MATCH;
	}
	else if((LPT->MISR&LPT_PEND)==LPT_PEND)			//PEND interrupt
	{
		LPT->ICR = LPT_PEND;
    2bd6:	b330      	st.w      	r1, (r3, 0x40)
	}
}
    2bd8:	040b      	br      	0x2bee	// 2bee <LPTIntHandler+0x2a>
	else if((LPT->MISR&LPT_MATCH)==LPT_MATCH)		//MATCH interrupt
    2bda:	934e      	ld.w      	r2, (r3, 0x38)
    2bdc:	3102      	movi      	r1, 2
    2bde:	6884      	and      	r2, r1
    2be0:	3a40      	cmpnei      	r2, 0
    2be2:	0bfa      	bt      	0x2bd6	// 2bd6 <LPTIntHandler+0x12>
	else if((LPT->MISR&LPT_PEND)==LPT_PEND)			//PEND interrupt
    2be4:	934e      	ld.w      	r2, (r3, 0x38)
    2be6:	3104      	movi      	r1, 4
    2be8:	6884      	and      	r2, r1
    2bea:	3a40      	cmpnei      	r2, 0
    2bec:	0bf5      	bt      	0x2bd6	// 2bd6 <LPTIntHandler+0x12>
}
    2bee:	1463      	ipop
    2bf0:	1461      	nir
    2bf2:	0000      	bkpt
    2bf4:	20000014 	.long	0x20000014

Disassembly of section .text.BT0IntHandler:

00002bf8 <BT0IntHandler>:
//BT0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void BT0IntHandler(void) 
{
    2bf8:	1460      	nie
    2bfa:	1462      	ipush
    // ISR content ...
	if((BT0->MISR&BT_PEND)==BT_PEND)				//BT0 PEND interrupt
    2bfc:	106d      	lrw      	r3, 0x2000000c	// 2c30 <BT0IntHandler+0x38>
    2bfe:	3101      	movi      	r1, 1
    2c00:	9360      	ld.w      	r3, (r3, 0x0)
    2c02:	934c      	ld.w      	r2, (r3, 0x30)
    2c04:	6884      	and      	r2, r1
    2c06:	3a40      	cmpnei      	r2, 0
    2c08:	0c03      	bf      	0x2c0e	// 2c0e <BT0IntHandler+0x16>
	{
		BT0->ICR = BT_OVF;
	} 
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT0 Event trigger interrupt
	{
		BT0->ICR = BT_EVTRG;
    2c0a:	b32d      	st.w      	r1, (r3, 0x34)
	} 
}
    2c0c:	0410      	br      	0x2c2c	// 2c2c <BT0IntHandler+0x34>
	else if((BT0->MISR&BT_CMP)==BT_CMP)				//BT0 CMP Match interrupt 
    2c0e:	934c      	ld.w      	r2, (r3, 0x30)
    2c10:	3102      	movi      	r1, 2
    2c12:	6884      	and      	r2, r1
    2c14:	3a40      	cmpnei      	r2, 0
    2c16:	0bfa      	bt      	0x2c0a	// 2c0a <BT0IntHandler+0x12>
	else if((BT0->MISR&BT_OVF)==BT_OVF)				//BT0 OVF interrupt
    2c18:	934c      	ld.w      	r2, (r3, 0x30)
    2c1a:	3104      	movi      	r1, 4
    2c1c:	6884      	and      	r2, r1
    2c1e:	3a40      	cmpnei      	r2, 0
    2c20:	0bf5      	bt      	0x2c0a	// 2c0a <BT0IntHandler+0x12>
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT0 Event trigger interrupt
    2c22:	934c      	ld.w      	r2, (r3, 0x30)
    2c24:	3108      	movi      	r1, 8
    2c26:	6884      	and      	r2, r1
    2c28:	3a40      	cmpnei      	r2, 0
    2c2a:	0bf0      	bt      	0x2c0a	// 2c0a <BT0IntHandler+0x12>
}
    2c2c:	1463      	ipop
    2c2e:	1461      	nir
    2c30:	2000000c 	.long	0x2000000c

Disassembly of section .text.BT1IntHandler:

00002c34 <BT1IntHandler>:
//BT1 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void BT1IntHandler(void) 
{
    2c34:	1460      	nie
    2c36:	1462      	ipush
    // ISR content ...
	if((BT1->MISR&BT_PEND)==BT_PEND)				//BT1 PEND interrupt
    2c38:	106f      	lrw      	r3, 0x20000008	// 2c74 <BT1IntHandler+0x40>
    2c3a:	3101      	movi      	r1, 1
    2c3c:	9360      	ld.w      	r3, (r3, 0x0)
    2c3e:	934c      	ld.w      	r2, (r3, 0x30)
    2c40:	6884      	and      	r2, r1
    2c42:	3a40      	cmpnei      	r2, 0
    2c44:	0c03      	bf      	0x2c4a	// 2c4a <BT1IntHandler+0x16>
	{
		BT1->ICR = BT_OVF;
	} 
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT1 Event trigger interrupt
	{
		BT1->ICR = BT_EVTRG;
    2c46:	b32d      	st.w      	r1, (r3, 0x34)
	} 
}
    2c48:	0409      	br      	0x2c5a	// 2c5a <BT1IntHandler+0x26>
	else if((BT0->MISR&BT_CMP)==BT_CMP)				//BT1 CMP Match interrupt 
    2c4a:	104c      	lrw      	r2, 0x2000000c	// 2c78 <BT1IntHandler+0x44>
    2c4c:	3002      	movi      	r0, 2
    2c4e:	9240      	ld.w      	r2, (r2, 0x0)
    2c50:	922c      	ld.w      	r1, (r2, 0x30)
    2c52:	6840      	and      	r1, r0
    2c54:	3940      	cmpnei      	r1, 0
    2c56:	0c04      	bf      	0x2c5e	// 2c5e <BT1IntHandler+0x2a>
		BT1->ICR = BT_OVF;
    2c58:	b30d      	st.w      	r0, (r3, 0x34)
}
    2c5a:	1463      	ipop
    2c5c:	1461      	nir
	else if((BT0->MISR&BT_OVF)==BT_OVF)				//BT1 OVF interrupt
    2c5e:	922c      	ld.w      	r1, (r2, 0x30)
    2c60:	3004      	movi      	r0, 4
    2c62:	6840      	and      	r1, r0
    2c64:	3940      	cmpnei      	r1, 0
    2c66:	0bf9      	bt      	0x2c58	// 2c58 <BT1IntHandler+0x24>
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT1 Event trigger interrupt
    2c68:	924c      	ld.w      	r2, (r2, 0x30)
    2c6a:	3108      	movi      	r1, 8
    2c6c:	6884      	and      	r2, r1
    2c6e:	3a40      	cmpnei      	r2, 0
    2c70:	0beb      	bt      	0x2c46	// 2c46 <BT1IntHandler+0x12>
    2c72:	07f4      	br      	0x2c5a	// 2c5a <BT1IntHandler+0x26>
    2c74:	20000008 	.long	0x20000008
    2c78:	2000000c 	.long	0x2000000c

Disassembly of section .text.PriviledgeVioHandler:

00002c7c <PriviledgeVioHandler>:
    2c7c:	783c      	jmp      	r15

Disassembly of section .text.PendTrapHandler:

00002c7e <PendTrapHandler>:
    // ISR content ...

}

void PendTrapHandler(void) 
{
    2c7e:	1460      	nie
    2c80:	1462      	ipush
    // ISR content ...

}
    2c82:	1463      	ipop
    2c84:	1461      	nir

Disassembly of section .text.Trap3Handler:

00002c86 <Trap3Handler>:
    2c86:	1460      	nie
    2c88:	1462      	ipush
    2c8a:	1463      	ipop
    2c8c:	1461      	nir

Disassembly of section .text.Trap2Handler:

00002c8e <Trap2Handler>:
    2c8e:	1460      	nie
    2c90:	1462      	ipush
    2c92:	1463      	ipop
    2c94:	1461      	nir

Disassembly of section .text.Trap1Handler:

00002c96 <Trap1Handler>:
    2c96:	1460      	nie
    2c98:	1462      	ipush
    2c9a:	1463      	ipop
    2c9c:	1461      	nir

Disassembly of section .text.Trap0Handler:

00002c9e <Trap0Handler>:
    2c9e:	1460      	nie
    2ca0:	1462      	ipush
    2ca2:	1463      	ipop
    2ca4:	1461      	nir

Disassembly of section .text.UnrecExecpHandler:

00002ca6 <UnrecExecpHandler>:
    2ca6:	1460      	nie
    2ca8:	1462      	ipush
    2caa:	1463      	ipop
    2cac:	1461      	nir

Disassembly of section .text.BreakPointHandler:

00002cae <BreakPointHandler>:
    2cae:	1460      	nie
    2cb0:	1462      	ipush
    2cb2:	1463      	ipop
    2cb4:	1461      	nir

Disassembly of section .text.AccessErrHandler:

00002cb6 <AccessErrHandler>:
    2cb6:	1460      	nie
    2cb8:	1462      	ipush
    2cba:	1463      	ipop
    2cbc:	1461      	nir

Disassembly of section .text.IllegalInstrHandler:

00002cbe <IllegalInstrHandler>:
    2cbe:	1460      	nie
    2cc0:	1462      	ipush
    2cc2:	1463      	ipop
    2cc4:	1461      	nir

Disassembly of section .text.MisalignedHandler:

00002cc6 <MisalignedHandler>:
    2cc6:	1460      	nie
    2cc8:	1462      	ipush
    2cca:	1463      	ipop
    2ccc:	1461      	nir

Disassembly of section .text.CNTAIntHandler:

00002cce <CNTAIntHandler>:
    2cce:	1460      	nie
    2cd0:	1462      	ipush
    2cd2:	1463      	ipop
    2cd4:	1461      	nir

Disassembly of section .text.I2CIntHandler:

00002cd6 <I2CIntHandler>:
    2cd6:	1460      	nie
    2cd8:	1462      	ipush
    2cda:	1463      	ipop
    2cdc:	1461      	nir

Disassembly of section .text.gpio_initial:

00002ce0 <gpio_initial>:
*****************************************************/
extern void delay_nms(unsigned int t);
extern void APT32F102_init(void);

void gpio_initial(void)
{
    2ce0:	14d2      	push      	r4-r5, r15
	GPIO_Init(GPIOA0,1,0);         //GPIOA0.0 as output
    2ce2:	1182      	lrw      	r4, 0x2000004c	// 2d68 <gpio_initial+0x88>
    2ce4:	3200      	movi      	r2, 0
    2ce6:	9400      	ld.w      	r0, (r4, 0x0)
    2ce8:	3101      	movi      	r1, 1
    2cea:	e3fff855 	bsr      	0x1d94	// 1d94 <GPIO_Init>
	GPIO_Init(GPIOA0,2,1);         //GPIOA0.1 as input
    2cee:	3201      	movi      	r2, 1
    2cf0:	9400      	ld.w      	r0, (r4, 0x0)
    2cf2:	3102      	movi      	r1, 2
    2cf4:	e3fff850 	bsr      	0x1d94	// 1d94 <GPIO_Init>

	GPIO_InPutOutPut_Disable(GPIOA0,4);    //GPIOA0.4 input and output disabled
    2cf8:	9400      	ld.w      	r0, (r4, 0x0)
    2cfa:	3104      	movi      	r1, 4
    2cfc:	e3fff8bc 	bsr      	0x1e74	// 1e74 <GPIO_InPutOutPut_Disable>
	GPIO_InPutOutPut_Disable(GPIOA0,3);    //GPIOA0.3 input and output disabled
    2d00:	9400      	ld.w      	r0, (r4, 0x0)
    2d02:	3103      	movi      	r1, 3
    2d04:	e3fff8b8 	bsr      	0x1e74	// 1e74 <GPIO_InPutOutPut_Disable>
	
	GPIO_Set_Value(GPIOA0,1,1);				//GPIOA0.0 output high
    2d08:	9400      	ld.w      	r0, (r4, 0x0)
    2d0a:	3201      	movi      	r2, 1
    2d0c:	3101      	movi      	r1, 1
    2d0e:	e3fffa49 	bsr      	0x21a0	// 21a0 <GPIO_Set_Value>
	GPIO_Set_Value(GPIOA0,1,0);				//GPIOA0.0 output low
    2d12:	3200      	movi      	r2, 0
    2d14:	9400      	ld.w      	r0, (r4, 0x0)
    2d16:	3101      	movi      	r1, 1
    2d18:	e3fffa44 	bsr      	0x21a0	// 21a0 <GPIO_Set_Value>
	GPIO_Write_High(GPIOA0,1);	     		//GPIOA0.0 output high
    2d1c:	9400      	ld.w      	r0, (r4, 0x0)
    2d1e:	3101      	movi      	r1, 1
    2d20:	e3fffa38 	bsr      	0x2190	// 2190 <GPIO_Write_High>
	GPIO_Write_Low(GPIOA0,1);	     		//GPIOA0.0 output low
    2d24:	9400      	ld.w      	r0, (r4, 0x0)
    2d26:	3101      	movi      	r1, 1
    2d28:	e3fffa38 	bsr      	0x2198	// 2198 <GPIO_Write_Low>
	
	GPIO_PullHigh_Init(GPIOA0,4);	     	//PA0.4 pull high
    2d2c:	9400      	ld.w      	r0, (r4, 0x0)
    2d2e:	3104      	movi      	r1, 4
    2d30:	e3fff8f4 	bsr      	0x1f18	// 1f18 <GPIO_PullHigh_Init>
	GPIO_PullLow_Init (GPIOA0,5);	     	//PA0.5 pull low
    2d34:	9400      	ld.w      	r0, (r4, 0x0)
    2d36:	3105      	movi      	r1, 5
    2d38:	e3fff8fa 	bsr      	0x1f2c	// 1f2c <GPIO_PullLow_Init>
	GPIO_PullHighLow_DIS(GPIOA0,9);     	//PA0.9 pull high/low disable
	GPIO_OpenDrain_EN(GPIOB0,1);       		//PB0.1 open drain enable
    2d3c:	10ac      	lrw      	r5, 0x20000048	// 2d6c <gpio_initial+0x8c>
	GPIO_PullHighLow_DIS(GPIOA0,9);     	//PA0.9 pull high/low disable
    2d3e:	3109      	movi      	r1, 9
    2d40:	9400      	ld.w      	r0, (r4, 0x0)
    2d42:	e3fff8ff 	bsr      	0x1f40	// 1f40 <GPIO_PullHighLow_DIS>
	GPIO_OpenDrain_EN(GPIOB0,1);       		//PB0.1 open drain enable
    2d46:	9500      	ld.w      	r0, (r5, 0x0)
    2d48:	3101      	movi      	r1, 1
    2d4a:	e3fff902 	bsr      	0x1f4e	// 1f4e <GPIO_OpenDrain_EN>
	GPIO_OpenDrain_DIS(GPIOB0,2);      		//PB0.2 open drain disable
    2d4e:	9500      	ld.w      	r0, (r5, 0x0)
    2d50:	3102      	movi      	r1, 2
    2d52:	e3fff904 	bsr      	0x1f5a	// 1f5a <GPIO_OpenDrain_DIS>
	GPIO_DriveStrength_EN(GPIOA0,8);   		//PA0.8 high sink enable
    2d56:	9400      	ld.w      	r0, (r4, 0x0)
    2d58:	3108      	movi      	r1, 8
    2d5a:	e3fff907 	bsr      	0x1f68	// 1f68 <GPIO_DriveStrength_EN>
	GPIO_DriveStrength_DIS(GPIOA0,9);  		//PA0.8 high sink diable
    2d5e:	9400      	ld.w      	r0, (r4, 0x0)
    2d60:	3109      	movi      	r1, 9
    2d62:	e3fff90a 	bsr      	0x1f76	// 1f76 <GPIO_DriveStrength_DIS>
}
    2d66:	1492      	pop      	r4-r5, r15
    2d68:	2000004c 	.long	0x2000004c
    2d6c:	20000048 	.long	0x20000048

Disassembly of section .text.startup.main:

00002d70 <main>:
/***************************************************/
//main
/**************************************************/
int main(void) 
{
    2d70:	14d1      	push      	r4, r15
	delay_nms(1000);							//power on delay if needed
    2d72:	30fa      	movi      	r0, 250
    2d74:	4002      	lsli      	r0, r0, 2
    2d76:	e3fffa6a 	bsr      	0x224a	// 224a <delay_nms>
	APT32F102_init();							//102 initial
    2d7a:	e3fffb03 	bsr      	0x2380	// 2380 <APT32F102_init>

	gpio_initial();
    2d7e:	e3ffffb1 	bsr      	0x2ce0	// 2ce0 <gpio_initial>
    while(1)
	{
		if((GPIO_Read_Status (GPIOA0,2))==0)
    2d82:	108b      	lrw      	r4, 0x2000004c	// 2dac <main+0x3c>
    2d84:	3102      	movi      	r1, 2
    2d86:	9400      	ld.w      	r0, (r4, 0x0)
    2d88:	e3fffa22 	bsr      	0x21cc	// 21cc <GPIO_Read_Status>
    2d8c:	3840      	cmpnei      	r0, 0
		{
		GPIO_Reverse(GPIOA0,0); 				//gpio reverse
    2d8e:	3100      	movi      	r1, 0
    2d90:	9400      	ld.w      	r0, (r4, 0x0)
		if((GPIO_Read_Status (GPIOA0,2))==0)
    2d92:	0809      	bt      	0x2da4	// 2da4 <main+0x34>
		GPIO_Reverse(GPIOA0,0); 				//gpio reverse
    2d94:	e3fffa11 	bsr      	0x21b6	// 21b6 <GPIO_Reverse>
		nop;
    2d98:	6c03      	mov      	r0, r0
		}
		else {
			GPIO_Write_High(GPIOA0,0);	     	//GPIOA0.0 output high
		}
		delay_nms(1000);
    2d9a:	30fa      	movi      	r0, 250
    2d9c:	4002      	lsli      	r0, r0, 2
    2d9e:	e3fffa56 	bsr      	0x224a	// 224a <delay_nms>
		if((GPIO_Read_Status (GPIOA0,2))==0)
    2da2:	07f1      	br      	0x2d84	// 2d84 <main+0x14>
			GPIO_Write_High(GPIOA0,0);	     	//GPIOA0.0 output high
    2da4:	e3fff9f6 	bsr      	0x2190	// 2190 <GPIO_Write_High>
    2da8:	07f9      	br      	0x2d9a	// 2d9a <main+0x2a>
    2daa:	0000      	bkpt
    2dac:	2000004c 	.long	0x2000004c

Disassembly of section .text.__divsi3:

00002db0 <__divsi3>:
CSP_BT_T    	*BT1      = (CSP_BT_T   *)APB_BT1Base ;
CSP_CRC_T   	*CRC      = (CSP_CRC_T  *)AHB_CRCBase ;
CSP_HWD_T   	*HWD      = (CSP_HWD_T  *)APB_HWDBase ;

int __divsi3 (  int a,   int b)
{   
    2db0:	14c1      	push      	r4
	int PSR;
	__asm volatile(
    2db2:	c0006023 	mfcr      	r3, cr<0, 0>
    2db6:	c0807020 	psrclr      	ie
					"mfcr %0 , psr \n\r"
					"psrclr ie \n\r"
					: "=r"(PSR)
				   );

	HWD->CR = 0;
    2dba:	1046      	lrw      	r2, 0x20000000	// 2dd0 <__divsi3+0x20>
    2dbc:	3400      	movi      	r4, 0
    2dbe:	9240      	ld.w      	r2, (r2, 0x0)
    2dc0:	b284      	st.w      	r4, (r2, 0x10)
	HWD->DIVIDENT = a;
	HWD->DIVISOR = b;

	PSR |= 0x80000000;
    2dc2:	3bbf      	bseti      	r3, 31
	HWD->DIVIDENT = a;
    2dc4:	b200      	st.w      	r0, (r2, 0x0)
	HWD->DIVISOR = b;
    2dc6:	b221      	st.w      	r1, (r2, 0x4)
	__asm volatile(
    2dc8:	c0036420 	mtcr      	r3, cr<0, 0>
					 "mtcr %0 , psr \n\r"
					 : 
					 :"r"(PSR)
					);
					
	return HWD->QUOTIENT;
    2dcc:	9202      	ld.w      	r0, (r2, 0x8)
}
    2dce:	1481      	pop      	r4
    2dd0:	20000000 	.long	0x20000000

Disassembly of section .text.__udivsi3:

00002dd4 <__udivsi3>:
 unsigned int __udivsi3 ( unsigned int a,  unsigned int b)
{   
    2dd4:	14c1      	push      	r4
	int PSR;
	__asm volatile(
    2dd6:	c0006023 	mfcr      	r3, cr<0, 0>
    2dda:	c0807020 	psrclr      	ie
					"mfcr %0 , psr \n\r"
					"psrclr ie \n\r"
					: "=r"(PSR)
				   );
	
	HWD->CR = 1;
    2dde:	1046      	lrw      	r2, 0x20000000	// 2df4 <__udivsi3+0x20>
    2de0:	3401      	movi      	r4, 1
    2de2:	9240      	ld.w      	r2, (r2, 0x0)
    2de4:	b284      	st.w      	r4, (r2, 0x10)
	HWD->DIVIDENT = a;
	HWD->DIVISOR = b;

	PSR |= 0x80000000;
    2de6:	3bbf      	bseti      	r3, 31
	HWD->DIVIDENT = a;
    2de8:	b200      	st.w      	r0, (r2, 0x0)
	HWD->DIVISOR = b;
    2dea:	b221      	st.w      	r1, (r2, 0x4)
	__asm volatile(
    2dec:	c0036420 	mtcr      	r3, cr<0, 0>
					 "mtcr %0 , psr \n\r"
					 : 
					 :"r"(PSR)
					);

	return HWD->QUOTIENT;
    2df0:	9202      	ld.w      	r0, (r2, 0x8)
}
    2df2:	1481      	pop      	r4
    2df4:	20000000 	.long	0x20000000

Disassembly of section .text.CK_CPU_EnAllNormalIrq:

00002df8 <CK_CPU_EnAllNormalIrq>:
}


void CK_CPU_EnAllNormalIrq(void)
{
  asm  ("psrset ee,ie");
    2df8:	c1807420 	psrset      	ee, ie
}
    2dfc:	783c      	jmp      	r15

Disassembly of section .text.TK_Sampling_prog:

00002e00 <TK_Sampling_prog>:
}
/****************************************************
//TK IO ENABLE
*****************************************************/
void TK_Sampling_prog(void)
{
    2e00:	14c4      	push      	r4-r7
    2e02:	1423      	subi      	r14, r14, 12
		unsigned char i;
		for (i=0;i<17;i++)
		{
		if(scan_step==1)sampling_data0[i]=TKEYBUF->TCH_CHVAL[i];
    2e04:	1169      	lrw      	r3, 0x20000054	// 2ea8 <TK_Sampling_prog+0xa8>
    2e06:	114a      	lrw      	r2, 0x20000419	// 2eac <TK_Sampling_prog+0xac>
    2e08:	6d0b      	mov      	r4, r2
    2e0a:	9320      	ld.w      	r1, (r3, 0x0)
    2e0c:	b840      	st.w      	r2, (r14, 0x0)
		for (i=0;i<17;i++)
    2e0e:	3300      	movi      	r3, 0
		if(scan_step==1)sampling_data0[i]=TKEYBUF->TCH_CHVAL[i];
    2e10:	11a8      	lrw      	r5, 0x200004a6	// 2eb0 <TK_Sampling_prog+0xb0>
    2e12:	9840      	ld.w      	r2, (r14, 0x0)
    2e14:	8240      	ld.b      	r2, (r2, 0x0)
    2e16:	3a41      	cmpnei      	r2, 1
    2e18:	0808      	bt      	0x2e28	// 2e28 <TK_Sampling_prog+0x28>
    2e1a:	4342      	lsli      	r2, r3, 2
    2e1c:	6084      	addu      	r2, r1
    2e1e:	9200      	ld.w      	r0, (r2, 0x0)
    2e20:	4341      	lsli      	r2, r3, 1
    2e22:	7401      	zexth      	r0, r0
    2e24:	6094      	addu      	r2, r5
    2e26:	aa00      	st.h      	r0, (r2, 0x0)
		if(scan_step==2)sampling_data1[i]=TKEYBUF->TCH_CHVAL[i];
    2e28:	8440      	ld.b      	r2, (r4, 0x0)
    2e2a:	3a42      	cmpnei      	r2, 2
    2e2c:	0809      	bt      	0x2e3e	// 2e3e <TK_Sampling_prog+0x3e>
    2e2e:	4342      	lsli      	r2, r3, 2
    2e30:	6084      	addu      	r2, r1
    2e32:	9200      	ld.w      	r0, (r2, 0x0)
    2e34:	4341      	lsli      	r2, r3, 1
    2e36:	11c0      	lrw      	r6, 0x20000260	// 2eb4 <TK_Sampling_prog+0xb4>
    2e38:	7401      	zexth      	r0, r0
    2e3a:	6098      	addu      	r2, r6
    2e3c:	aa00      	st.h      	r0, (r2, 0x0)
		if(scan_step==0)sampling_data2[i]=TKEYBUF->TCH_CHVAL[i];
    2e3e:	8440      	ld.b      	r2, (r4, 0x0)
    2e40:	3a40      	cmpnei      	r2, 0
    2e42:	0809      	bt      	0x2e54	// 2e54 <TK_Sampling_prog+0x54>
    2e44:	4342      	lsli      	r2, r3, 2
    2e46:	6084      	addu      	r2, r1
    2e48:	9200      	ld.w      	r0, (r2, 0x0)
    2e4a:	4341      	lsli      	r2, r3, 1
    2e4c:	10db      	lrw      	r6, 0x2000034e	// 2eb8 <TK_Sampling_prog+0xb8>
    2e4e:	7401      	zexth      	r0, r0
    2e50:	6098      	addu      	r2, r6
    2e52:	aa00      	st.h      	r0, (r2, 0x0)
		if(base_update_f==1)
    2e54:	10da      	lrw      	r6, 0x200002b9	// 2ebc <TK_Sampling_prog+0xbc>
    2e56:	8640      	ld.b      	r2, (r6, 0x0)
    2e58:	3a41      	cmpnei      	r2, 1
    2e5a:	0821      	bt      	0x2e9c	// 2e9c <TK_Sampling_prog+0x9c>
		{
			for (i=0;i<17;i++)
			{
			baseline_data0[i]=sampling_data0[i];
    2e5c:	1079      	lrw      	r3, 0x20000184	// 2ec0 <TK_Sampling_prog+0xc0>
    2e5e:	3200      	movi      	r2, 0
    2e60:	b861      	st.w      	r3, (r14, 0x4)
			baseline_data1[i]=sampling_data1[i];
    2e62:	1075      	lrw      	r3, 0x20000260	// 2eb4 <TK_Sampling_prog+0xb4>
    2e64:	b862      	st.w      	r3, (r14, 0x8)
			baseline_data0[i]=sampling_data0[i];
    2e66:	4261      	lsli      	r3, r2, 1
    2e68:	5d0c      	addu      	r0, r5, r3
    2e6a:	8800      	ld.h      	r0, (r0, 0x0)
    2e6c:	98e1      	ld.w      	r7, (r14, 0x4)
    2e6e:	61cc      	addu      	r7, r3
    2e70:	7401      	zexth      	r0, r0
    2e72:	af00      	st.h      	r0, (r7, 0x0)
			baseline_data1[i]=sampling_data1[i];
    2e74:	9802      	ld.w      	r0, (r14, 0x8)
    2e76:	600c      	addu      	r0, r3
    2e78:	8800      	ld.h      	r0, (r0, 0x0)
    2e7a:	10f3      	lrw      	r7, 0x2000031a	// 2ec4 <TK_Sampling_prog+0xc4>
    2e7c:	61cc      	addu      	r7, r3
    2e7e:	7401      	zexth      	r0, r0
    2e80:	af00      	st.h      	r0, (r7, 0x0)
    2e82:	2200      	addi      	r2, 1
			baseline_data2[i]=sampling_data2[i];
    2e84:	100d      	lrw      	r0, 0x2000034e	// 2eb8 <TK_Sampling_prog+0xb8>
    2e86:	600c      	addu      	r0, r3
    2e88:	8800      	ld.h      	r0, (r0, 0x0)
    2e8a:	10f0      	lrw      	r7, 0x2000041a	// 2ec8 <TK_Sampling_prog+0xc8>
    2e8c:	7401      	zexth      	r0, r0
    2e8e:	60dc      	addu      	r3, r7
			for (i=0;i<17;i++)
    2e90:	3a51      	cmpnei      	r2, 17
			baseline_data2[i]=sampling_data2[i];
    2e92:	ab00      	st.h      	r0, (r3, 0x0)
			for (i=0;i<17;i++)
    2e94:	0be9      	bt      	0x2e66	// 2e66 <TK_Sampling_prog+0x66>
			}
			base_update_f=0;
    2e96:	3300      	movi      	r3, 0
    2e98:	a660      	st.b      	r3, (r6, 0x0)
    2e9a:	3311      	movi      	r3, 17
		for (i=0;i<17;i++)
    2e9c:	2300      	addi      	r3, 1
    2e9e:	74cc      	zextb      	r3, r3
    2ea0:	3b10      	cmphsi      	r3, 17
    2ea2:	0fb8      	bf      	0x2e12	// 2e12 <TK_Sampling_prog+0x12>
		 }
		}
}
    2ea4:	1403      	addi      	r14, r14, 12
    2ea6:	1484      	pop      	r4-r7
    2ea8:	20000054 	.long	0x20000054
    2eac:	20000419 	.long	0x20000419
    2eb0:	200004a6 	.long	0x200004a6
    2eb4:	20000260 	.long	0x20000260
    2eb8:	2000034e 	.long	0x2000034e
    2ebc:	200002b9 	.long	0x200002b9
    2ec0:	20000184 	.long	0x20000184
    2ec4:	2000031a 	.long	0x2000031a
    2ec8:	2000041a 	.long	0x2000041a

Disassembly of section .text.get_key_number:

00002ecc <get_key_number>:
}
/****************************************************
//TK get press number
*****************************************************/
unsigned char get_key_number(void)
{                  
    2ecc:	14c2      	push      	r4-r5
    int count = 0;
    int i = 0;
    2ece:	3200      	movi      	r2, 0
    int count = 0;
    2ed0:	3000      	movi      	r0, 0
    for (; i<32; i++)
    {
        if (((Key_Map >> i) & 1) == 1)
    2ed2:	1088      	lrw      	r4, 0x20000314	// 2ef0 <get_key_number+0x24>
    2ed4:	3501      	movi      	r5, 1
    for (; i<32; i++)
    2ed6:	3120      	movi      	r1, 32
        if (((Key_Map >> i) & 1) == 1)
    2ed8:	9460      	ld.w      	r3, (r4, 0x0)
    2eda:	70c9      	lsr      	r3, r2
    2edc:	68d4      	and      	r3, r5
    2ede:	3b40      	cmpnei      	r3, 0
    2ee0:	0c02      	bf      	0x2ee4	// 2ee4 <get_key_number+0x18>
            count++;
    2ee2:	2000      	addi      	r0, 1
    for (; i<32; i++)
    2ee4:	2200      	addi      	r2, 1
    2ee6:	644a      	cmpne      	r2, r1
    2ee8:	0bf8      	bt      	0x2ed8	// 2ed8 <get_key_number+0xc>
    }
    return count;
    2eea:	7400      	zextb      	r0, r0
}
    2eec:	1482      	pop      	r4-r5
    2eee:	0000      	bkpt
    2ef0:	20000314 	.long	0x20000314

Disassembly of section .text.TK_Scan_Start:

00002ef4 <TK_Scan_Start>:
/****************************************************
//TK Scan Start
*****************************************************/
void TK_Scan_Start(void)
{
	if(scan_step_temp==scan_step)return;
    2ef4:	1073      	lrw      	r3, 0x20000068	// 2f40 <TK_Scan_Start+0x4c>
    2ef6:	1054      	lrw      	r2, 0x20000419	// 2f44 <TK_Scan_Start+0x50>
    2ef8:	8302      	ld.b      	r0, (r3, 0x2)
    2efa:	8220      	ld.b      	r1, (r2, 0x0)
    2efc:	6442      	cmpne      	r0, r1
    2efe:	0c16      	bf      	0x2f2a	// 2f2a <TK_Scan_Start+0x36>
	switch(scan_step)
    2f00:	8220      	ld.b      	r1, (r2, 0x0)
    2f02:	7444      	zextb      	r1, r1
    2f04:	3941      	cmpnei      	r1, 1
    2f06:	0c18      	bf      	0x2f36	// 2f36 <TK_Scan_Start+0x42>
    2f08:	3940      	cmpnei      	r1, 0
    2f0a:	0c11      	bf      	0x2f2c	// 2f2c <TK_Scan_Start+0x38>
    2f0c:	3942      	cmpnei      	r1, 2
    2f0e:	0c16      	bf      	0x2f3a	// 2f3a <TK_Scan_Start+0x46>
	{
	case 0:*(uint32_t *)0x40011240 = TK_Scan_Freq0;break;//513
	case 1:*(uint32_t *)0x40011240 = TK_Scan_Freq1;break;//647
	case 2:*(uint32_t *)0x40011240 = TK_Scan_Freq2;break;//785
	}
	scan_step_temp=scan_step;
    2f10:	8240      	ld.b      	r2, (r2, 0x0)
    2f12:	7488      	zextb      	r2, r2
    2f14:	a342      	st.b      	r2, (r3, 0x2)
	if(samp_setover_f==1)
    2f16:	8343      	ld.b      	r2, (r3, 0x3)
    2f18:	7488      	zextb      	r2, r2
    2f1a:	3a41      	cmpnei      	r2, 1
    2f1c:	0807      	bt      	0x2f2a	// 2f2a <TK_Scan_Start+0x36>
	{
	TKEY->TCH_CON1  = 0X01;
    2f1e:	102b      	lrw      	r1, 0x20000058	// 2f48 <TK_Scan_Start+0x54>
    2f20:	9120      	ld.w      	r1, (r1, 0x0)
    2f22:	b142      	st.w      	r2, (r1, 0x8)
	s_tkey=0;
    2f24:	3200      	movi      	r2, 0
    2f26:	a340      	st.b      	r2, (r3, 0x0)
	samp_setover_f=0;
    2f28:	a343      	st.b      	r2, (r3, 0x3)
	}
}
    2f2a:	783c      	jmp      	r15
	case 0:*(uint32_t *)0x40011240 = TK_Scan_Freq0;break;//513
    2f2c:	1028      	lrw      	r1, 0x200004c8	// 2f4c <TK_Scan_Start+0x58>
	case 2:*(uint32_t *)0x40011240 = TK_Scan_Freq2;break;//785
    2f2e:	9100      	ld.w      	r0, (r1, 0x0)
    2f30:	1028      	lrw      	r1, 0x40011200	// 2f50 <TK_Scan_Start+0x5c>
    2f32:	b110      	st.w      	r0, (r1, 0x40)
    2f34:	07ee      	br      	0x2f10	// 2f10 <TK_Scan_Start+0x1c>
	case 1:*(uint32_t *)0x40011240 = TK_Scan_Freq1;break;//647
    2f36:	1028      	lrw      	r1, 0x2000025c	// 2f54 <TK_Scan_Start+0x60>
    2f38:	07fb      	br      	0x2f2e	// 2f2e <TK_Scan_Start+0x3a>
	case 2:*(uint32_t *)0x40011240 = TK_Scan_Freq2;break;//785
    2f3a:	1028      	lrw      	r1, 0x20000288	// 2f58 <TK_Scan_Start+0x64>
    2f3c:	07f9      	br      	0x2f2e	// 2f2e <TK_Scan_Start+0x3a>
    2f3e:	0000      	bkpt
    2f40:	20000068 	.long	0x20000068
    2f44:	20000419 	.long	0x20000419
    2f48:	20000058 	.long	0x20000058
    2f4c:	200004c8 	.long	0x200004c8
    2f50:	40011200 	.long	0x40011200
    2f54:	2000025c 	.long	0x2000025c
    2f58:	20000288 	.long	0x20000288

Disassembly of section .text.TK_Keymap_prog:

00002f5c <TK_Keymap_prog>:
/****************************************************
//TK get key map
*****************************************************/
void TK_Keymap_prog(void)
{
    2f5c:	14d4      	push      	r4-r7, r15
    2f5e:	142a      	subi      	r14, r14, 40
		else
		{
			offset_data2_abs[i]=offset_data2[i];
		}
//=================Key_Map0============================
		if(MultiTimes_Filter>=4)
    2f60:	0171      	lrw      	r3, 0x200000dc	// 3298 <TK_Keymap_prog+0x33c>
    2f62:	8360      	ld.b      	r3, (r3, 0x0)
    2f64:	b860      	st.w      	r3, (r14, 0x0)
		}
		if(offset_data0[i]<(TK_Triggerlevel[i]*4/5))
		{
			Release_debounce0[i]++;
			Press_debounce0[i]=0;
			if(Release_debounce0[i]>Release_debounce_data)
    2f66:	3400      	movi      	r4, 0
			if(Press_debounce0[i]>Press_debounce_data)
    2f68:	0172      	lrw      	r3, 0x200000a8	// 329c <TK_Keymap_prog+0x340>
    2f6a:	8360      	ld.b      	r3, (r3, 0x0)
    2f6c:	b863      	st.w      	r3, (r14, 0xc)
				if((Key_mode==0)&&(Key_Map0==0))
    2f6e:	0172      	lrw      	r3, 0x200000b9	// 32a0 <TK_Keymap_prog+0x344>
    2f70:	83a0      	ld.b      	r5, (r3, 0x0)
			if(Release_debounce0[i]>Release_debounce_data)
    2f72:	0172      	lrw      	r3, 0x200000b8	// 32a4 <TK_Keymap_prog+0x348>
    2f74:	8360      	ld.b      	r3, (r3, 0x0)
    2f76:	b866      	st.w      	r3, (r14, 0x18)
		offset_data0[i]=sampling_data0[i]-baseline_data0[i];
    2f78:	0173      	lrw      	r3, 0x200004a6	// 32a8 <TK_Keymap_prog+0x34c>
    2f7a:	b868      	st.w      	r3, (r14, 0x20)
    2f7c:	0173      	lrw      	r3, 0x20000238	// 32ac <TK_Keymap_prog+0x350>
    2f7e:	b864      	st.w      	r3, (r14, 0x10)
    2f80:	b869      	st.w      	r3, (r14, 0x24)
    2f82:	4461      	lsli      	r3, r4, 1
    2f84:	9848      	ld.w      	r2, (r14, 0x20)
    2f86:	608c      	addu      	r2, r3
    2f88:	0135      	lrw      	r1, 0x20000184	// 32b0 <TK_Keymap_prog+0x354>
    2f8a:	604c      	addu      	r1, r3
    2f8c:	8a40      	ld.h      	r2, (r2, 0x0)
    2f8e:	8920      	ld.h      	r1, (r1, 0x0)
    2f90:	6086      	subu      	r2, r1
    2f92:	9829      	ld.w      	r1, (r14, 0x24)
    2f94:	604c      	addu      	r1, r3
    2f96:	748b      	sexth      	r2, r2
    2f98:	a940      	st.h      	r2, (r1, 0x0)
		offset_data1[i]=sampling_data1[i]-baseline_data1[i];
    2f9a:	0118      	lrw      	r0, 0x2000031a	// 32b4 <TK_Keymap_prog+0x358>
    2f9c:	0158      	lrw      	r2, 0x20000260	// 32b8 <TK_Keymap_prog+0x35c>
    2f9e:	608c      	addu      	r2, r3
    2fa0:	600c      	addu      	r0, r3
    2fa2:	8a40      	ld.h      	r2, (r2, 0x0)
    2fa4:	8800      	ld.h      	r0, (r0, 0x0)
    2fa6:	6082      	subu      	r2, r0
    2fa8:	01da      	lrw      	r6, 0x20000370	// 32bc <TK_Keymap_prog+0x360>
    2faa:	5e0c      	addu      	r0, r6, r3
    2fac:	748b      	sexth      	r2, r2
    2fae:	a840      	st.h      	r2, (r0, 0x0)
    2fb0:	b8c1      	st.w      	r6, (r14, 0x4)
		offset_data2[i]=sampling_data2[i]-baseline_data2[i];
    2fb2:	015b      	lrw      	r2, 0x2000034e	// 32c0 <TK_Keymap_prog+0x364>
    2fb4:	011b      	lrw      	r0, 0x2000041a	// 32c4 <TK_Keymap_prog+0x368>
    2fb6:	608c      	addu      	r2, r3
    2fb8:	600c      	addu      	r0, r3
    2fba:	8a40      	ld.h      	r2, (r2, 0x0)
    2fbc:	8800      	ld.h      	r0, (r0, 0x0)
    2fbe:	6082      	subu      	r2, r0
    2fc0:	011d      	lrw      	r0, 0x20000482	// 32c8 <TK_Keymap_prog+0x36c>
    2fc2:	748b      	sexth      	r2, r2
    2fc4:	58ec      	addu      	r7, r0, r3
    2fc6:	af40      	st.h      	r2, (r7, 0x0)
		if(offset_data0[i]<0)
    2fc8:	8940      	ld.h      	r2, (r1, 0x0)
    2fca:	748b      	sexth      	r2, r2
    2fcc:	3adf      	btsti      	r2, 31
    2fce:	015f      	lrw      	r2, 0x20000460	// 32cc <TK_Keymap_prog+0x370>
    2fd0:	60c8      	addu      	r3, r2
    2fd2:	b802      	st.w      	r0, (r14, 0x8)
    2fd4:	0c49      	bf      	0x3066	// 3066 <TK_Keymap_prog+0x10a>
			offset_data0_abs[i]=0;
    2fd6:	3200      	movi      	r2, 0
			offset_data0_abs[i]=offset_data0[i];
    2fd8:	ab40      	st.h      	r2, (r3, 0x0)
		if(offset_data1[i]<0)
    2fda:	9821      	ld.w      	r1, (r14, 0x4)
    2fdc:	4461      	lsli      	r3, r4, 1
    2fde:	604c      	addu      	r1, r3
    2fe0:	8940      	ld.h      	r2, (r1, 0x0)
    2fe2:	748b      	sexth      	r2, r2
    2fe4:	3adf      	btsti      	r2, 31
    2fe6:	0244      	lrw      	r2, 0x200001e8	// 32d0 <TK_Keymap_prog+0x374>
    2fe8:	60c8      	addu      	r3, r2
    2fea:	0c41      	bf      	0x306c	// 306c <TK_Keymap_prog+0x110>
			offset_data1_abs[i]=0;
    2fec:	3200      	movi      	r2, 0
			offset_data1_abs[i]=offset_data1[i];
    2fee:	ab40      	st.h      	r2, (r3, 0x0)
		if(offset_data2[i]<0)
    2ff0:	9822      	ld.w      	r1, (r14, 0x8)
    2ff2:	4461      	lsli      	r3, r4, 1
    2ff4:	604c      	addu      	r1, r3
    2ff6:	8940      	ld.h      	r2, (r1, 0x0)
    2ff8:	748b      	sexth      	r2, r2
    2ffa:	3adf      	btsti      	r2, 31
    2ffc:	0249      	lrw      	r2, 0x200001bc	// 32d4 <TK_Keymap_prog+0x378>
    2ffe:	60c8      	addu      	r3, r2
    3000:	0c39      	bf      	0x3072	// 3072 <TK_Keymap_prog+0x116>
			offset_data2_abs[i]=0;
    3002:	3200      	movi      	r2, 0
			offset_data2_abs[i]=offset_data2[i];
    3004:	ab40      	st.h      	r2, (r3, 0x0)
		if(MultiTimes_Filter>=4)
    3006:	9860      	ld.w      	r3, (r14, 0x0)
    3008:	3b03      	cmphsi      	r3, 4
    300a:	4421      	lsli      	r1, r4, 1
    300c:	0cb5      	bf      	0x3176	// 3176 <TK_Keymap_prog+0x21a>
			if((offset_data0[i]>TK_Triggerlevel[i])&&(offset_data0[i]<(TK_Triggerlevel[i]*MultiTimes_Filter)))
    300e:	9864      	ld.w      	r3, (r14, 0x10)
    3010:	60c4      	addu      	r3, r1
    3012:	024d      	lrw      	r2, 0x20000112	// 32d8 <TK_Keymap_prog+0x37c>
    3014:	6048      	addu      	r1, r2
    3016:	8b00      	ld.h      	r0, (r3, 0x0)
    3018:	8940      	ld.h      	r2, (r1, 0x0)
    301a:	7403      	sexth      	r0, r0
    301c:	6409      	cmplt      	r2, r0
    301e:	9820      	ld.w      	r1, (r14, 0x0)
    3020:	7c84      	mult      	r2, r1
    3022:	0c9b      	bf      	0x3158	// 3158 <TK_Keymap_prog+0x1fc>
    3024:	8b20      	ld.h      	r1, (r3, 0x0)
    3026:	7447      	sexth      	r1, r1
    3028:	6485      	cmplt      	r1, r2
    302a:	0c97      	bf      	0x3158	// 3158 <TK_Keymap_prog+0x1fc>
			Press_debounce0[i]++;
    302c:	0233      	lrw      	r1, 0x20000225	// 32dc <TK_Keymap_prog+0x380>
    302e:	6050      	addu      	r1, r4
    3030:	8140      	ld.b      	r2, (r1, 0x0)
    3032:	2200      	addi      	r2, 1
    3034:	7488      	zextb      	r2, r2
    3036:	a140      	st.b      	r2, (r1, 0x0)
			Release_debounce0[i]=0;
    3038:	3000      	movi      	r0, 0
    303a:	0255      	lrw      	r2, 0x2000020a	// 32e0 <TK_Keymap_prog+0x384>
    303c:	6090      	addu      	r2, r4
    303e:	a200      	st.b      	r0, (r2, 0x0)
			TK_Postive_build0[i]=0;
    3040:	0256      	lrw      	r2, 0x2000033c	// 32e4 <TK_Keymap_prog+0x388>
    3042:	6090      	addu      	r2, r4
    3044:	a200      	st.b      	r0, (r2, 0x0)
			TK_Negtive_build0[i]=0;
    3046:	0256      	lrw      	r2, 0x200003c8	// 32e8 <TK_Keymap_prog+0x38c>
    3048:	6090      	addu      	r2, r4
    304a:	a200      	st.b      	r0, (r2, 0x0)
			if(Press_debounce0[i]>Press_debounce_data)
    304c:	8140      	ld.b      	r2, (r1, 0x0)
    304e:	9803      	ld.w      	r0, (r14, 0xc)
    3050:	6480      	cmphs      	r0, r2
    3052:	081d      	bt      	0x308c	// 308c <TK_Keymap_prog+0x130>
				if((Key_mode==0)&&(Key_Map0==0))
    3054:	3d40      	cmpnei      	r5, 0
    3056:	0811      	bt      	0x3078	// 3078 <TK_Keymap_prog+0x11c>
    3058:	025a      	lrw      	r2, 0x2000021c	// 32ec <TK_Keymap_prog+0x390>
    305a:	9260      	ld.w      	r3, (r2, 0x0)
    305c:	3b40      	cmpnei      	r3, 0
    305e:	0815      	bt      	0x3088	// 3088 <TK_Keymap_prog+0x12c>
				Key_Map0|=0x01<<i;
    3060:	9200      	ld.w      	r0, (r2, 0x0)
    3062:	3301      	movi      	r3, 1
    3064:	040f      	br      	0x3082	// 3082 <TK_Keymap_prog+0x126>
			offset_data0_abs[i]=offset_data0[i];
    3066:	8940      	ld.h      	r2, (r1, 0x0)
    3068:	7489      	zexth      	r2, r2
    306a:	07b7      	br      	0x2fd8	// 2fd8 <TK_Keymap_prog+0x7c>
			offset_data1_abs[i]=offset_data1[i];
    306c:	8940      	ld.h      	r2, (r1, 0x0)
    306e:	7489      	zexth      	r2, r2
    3070:	07bf      	br      	0x2fee	// 2fee <TK_Keymap_prog+0x92>
			offset_data2_abs[i]=offset_data2[i];
    3072:	8940      	ld.h      	r2, (r1, 0x0)
    3074:	7489      	zexth      	r2, r2
    3076:	07c7      	br      	0x3004	// 3004 <TK_Keymap_prog+0xa8>
				if(Key_mode==1)
    3078:	3d41      	cmpnei      	r5, 1
    307a:	085c      	bt      	0x3132	// 3132 <TK_Keymap_prog+0x1d6>
				Key_Map0|=0x01<<i;
    307c:	0343      	lrw      	r2, 0x2000021c	// 32ec <TK_Keymap_prog+0x390>
    307e:	6cd7      	mov      	r3, r5
    3080:	9200      	ld.w      	r0, (r2, 0x0)
				Key_Map0|=0x01<<i;
    3082:	70d0      	lsl      	r3, r4
    3084:	6cc0      	or      	r3, r0
    3086:	b260      	st.w      	r3, (r2, 0x0)
				Press_debounce0[i]=0;
    3088:	3300      	movi      	r3, 0
    308a:	a160      	st.b      	r3, (r1, 0x0)
		if(offset_data0[i]<(TK_Triggerlevel[i]*4/5))
    308c:	4461      	lsli      	r3, r4, 1
    308e:	9844      	ld.w      	r2, (r14, 0x10)
    3090:	608c      	addu      	r2, r3
    3092:	8ac0      	ld.h      	r6, (r2, 0x0)
    3094:	034e      	lrw      	r2, 0x20000112	// 32d8 <TK_Keymap_prog+0x37c>
    3096:	60c8      	addu      	r3, r2
    3098:	8be0      	ld.h      	r7, (r3, 0x0)
    309a:	4702      	lsli      	r0, r7, 2
    309c:	3105      	movi      	r1, 5
    309e:	e3fffe89 	bsr      	0x2db0	// 2db0 <__divsi3>
    30a2:	759b      	sexth      	r6, r6
    30a4:	6419      	cmplt      	r6, r0
    30a6:	b805      	st.w      	r0, (r14, 0x14)
    30a8:	0c18      	bf      	0x30d8	// 30d8 <TK_Keymap_prog+0x17c>
			Release_debounce0[i]++;
    30aa:	0351      	lrw      	r2, 0x2000020a	// 32e0 <TK_Keymap_prog+0x384>
    30ac:	6090      	addu      	r2, r4
    30ae:	8260      	ld.b      	r3, (r2, 0x0)
    30b0:	2300      	addi      	r3, 1
    30b2:	74cc      	zextb      	r3, r3
    30b4:	a260      	st.b      	r3, (r2, 0x0)
			Press_debounce0[i]=0;
    30b6:	3100      	movi      	r1, 0
    30b8:	0376      	lrw      	r3, 0x20000225	// 32dc <TK_Keymap_prog+0x380>
    30ba:	60d0      	addu      	r3, r4
    30bc:	a320      	st.b      	r1, (r3, 0x0)
			if(Release_debounce0[i]>Release_debounce_data)
    30be:	8260      	ld.b      	r3, (r2, 0x0)
    30c0:	9826      	ld.w      	r1, (r14, 0x18)
    30c2:	64c4      	cmphs      	r1, r3
    30c4:	080a      	bt      	0x30d8	// 30d8 <TK_Keymap_prog+0x17c>
			{
				Key_Map0&=~(0x01<<i);
    30c6:	3300      	movi      	r3, 0
    30c8:	0336      	lrw      	r1, 0x2000021c	// 32ec <TK_Keymap_prog+0x390>
    30ca:	2b01      	subi      	r3, 2
    30cc:	9100      	ld.w      	r0, (r1, 0x0)
    30ce:	70d3      	rotl      	r3, r4
    30d0:	68c0      	and      	r3, r0
    30d2:	b160      	st.w      	r3, (r1, 0x0)
				Release_debounce0[i]=0;
    30d4:	3300      	movi      	r3, 0
    30d6:	a260      	st.b      	r3, (r2, 0x0)
			}
		}
//=====================Key_Map1======================
		if(MultiTimes_Filter>=4)
    30d8:	9860      	ld.w      	r3, (r14, 0x0)
		{
			if((offset_data1[i]>TK_Triggerlevel[i])&&(offset_data1[i]<(TK_Triggerlevel[i]*MultiTimes_Filter)))
    30da:	9841      	ld.w      	r2, (r14, 0x4)
		if(MultiTimes_Filter>=4)
    30dc:	3b03      	cmphsi      	r3, 4
    30de:	4461      	lsli      	r3, r4, 1
			if((offset_data1[i]>TK_Triggerlevel[i])&&(offset_data1[i]<(TK_Triggerlevel[i]*MultiTimes_Filter)))
    30e0:	60c8      	addu      	r3, r2
    30e2:	8b40      	ld.h      	r2, (r3, 0x0)
    30e4:	748b      	sexth      	r2, r2
		if(MultiTimes_Filter>=4)
    30e6:	0d4d      	bf      	0x3380	// 3380 <TK_Keymap_prog+0x424>
			if((offset_data1[i]>TK_Triggerlevel[i])&&(offset_data1[i]<(TK_Triggerlevel[i]*MultiTimes_Filter)))
    30e8:	649d      	cmplt      	r7, r2
    30ea:	0d3a      	bf      	0x335e	// 335e <TK_Keymap_prog+0x402>
    30ec:	8b40      	ld.h      	r2, (r3, 0x0)
    30ee:	9820      	ld.w      	r1, (r14, 0x0)
    30f0:	748b      	sexth      	r2, r2
    30f2:	7c5c      	mult      	r1, r7
    30f4:	6449      	cmplt      	r2, r1
    30f6:	0d34      	bf      	0x335e	// 335e <TK_Keymap_prog+0x402>
		  {
			Press_debounce1[i]++;
    30f8:	133e      	lrw      	r1, 0x200003e0	// 32f0 <TK_Keymap_prog+0x394>
    30fa:	6050      	addu      	r1, r4
    30fc:	8140      	ld.b      	r2, (r1, 0x0)
    30fe:	2200      	addi      	r2, 1
    3100:	7488      	zextb      	r2, r2
    3102:	a140      	st.b      	r2, (r1, 0x0)
			Release_debounce1[i]=0;
    3104:	3000      	movi      	r0, 0
    3106:	135c      	lrw      	r2, 0x20000290	// 32f4 <TK_Keymap_prog+0x398>
    3108:	6090      	addu      	r2, r4
    310a:	a200      	st.b      	r0, (r2, 0x0)
			TK_Postive_build1[i]=0;
    310c:	135b      	lrw      	r2, 0x200002ba	// 32f8 <TK_Keymap_prog+0x39c>
    310e:	6090      	addu      	r2, r4
    3110:	a200      	st.b      	r0, (r2, 0x0)
			TK_Negtive_build1[i]=0;
    3112:	135b      	lrw      	r2, 0x200003b0	// 32fc <TK_Keymap_prog+0x3a0>
    3114:	6090      	addu      	r2, r4
    3116:	a200      	st.b      	r0, (r2, 0x0)
			if(Press_debounce1[i]>Press_debounce_data)
    3118:	8140      	ld.b      	r2, (r1, 0x0)
    311a:	9803      	ld.w      	r0, (r14, 0xc)
    311c:	6480      	cmphs      	r0, r2
    311e:	087d      	bt      	0x3218	// 3218 <TK_Keymap_prog+0x2bc>
			{
				if((Key_mode==0)&&(Key_Map1==0))
    3120:	3d40      	cmpnei      	r5, 0
    3122:	0871      	bt      	0x3204	// 3204 <TK_Keymap_prog+0x2a8>
    3124:	1357      	lrw      	r2, 0x200001b8	// 3300 <TK_Keymap_prog+0x3a4>
    3126:	9260      	ld.w      	r3, (r2, 0x0)
    3128:	3b40      	cmpnei      	r3, 0
    312a:	0875      	bt      	0x3214	// 3214 <TK_Keymap_prog+0x2b8>
				Key_Map1|=0x01<<i;
				}
				if((offset_data1[i]<(offset1_max_tempA-5))&&(offset_data1[i]>(offset1_max_tempB+5)))
				{
				offset1_max_tempB=offset_data1[i];
				Key_Map1|=0x01<<i;
    312c:	9200      	ld.w      	r0, (r2, 0x0)
    312e:	3301      	movi      	r3, 1
    3130:	046f      	br      	0x320e	// 320e <TK_Keymap_prog+0x2b2>
				if(Key_mode==2)
    3132:	3d42      	cmpnei      	r5, 2
    3134:	0c03      	bf      	0x313a	// 313a <TK_Keymap_prog+0x1de>
    3136:	e8000201 	br      	0x3538	// 3538 <TK_Keymap_prog+0x5dc>
				if(offset_data0[i]>(offset0_max_tempA+10))
    313a:	13d3      	lrw      	r6, 0x200003c2	// 3304 <TK_Keymap_prog+0x3a8>
    313c:	8b00      	ld.h      	r0, (r3, 0x0)
    313e:	8e40      	ld.h      	r2, (r6, 0x0)
    3140:	7489      	zexth      	r2, r2
    3142:	7403      	sexth      	r0, r0
    3144:	2209      	addi      	r2, 10
    3146:	6409      	cmplt      	r2, r0
    3148:	0fa0      	bf      	0x3088	// 3088 <TK_Keymap_prog+0x12c>
				offset0_max_tempA=offset_data0[i];
    314a:	8b60      	ld.h      	r3, (r3, 0x0)
    314c:	74cd      	zexth      	r3, r3
    314e:	ae60      	st.h      	r3, (r6, 0x0)
				Key_Map0=0;
    3150:	3300      	movi      	r3, 0
    3152:	1347      	lrw      	r2, 0x2000021c	// 32ec <TK_Keymap_prog+0x390>
    3154:	b260      	st.w      	r3, (r2, 0x0)
    3156:	0785      	br      	0x3060	// 3060 <TK_Keymap_prog+0x104>
		 else if((offset_data0[i])>(TK_Triggerlevel[i]*MultiTimes_Filter))
    3158:	4461      	lsli      	r3, r4, 1
    315a:	9824      	ld.w      	r1, (r14, 0x10)
    315c:	60c4      	addu      	r3, r1
    315e:	8b60      	ld.h      	r3, (r3, 0x0)
    3160:	74cf      	sexth      	r3, r3
    3162:	64c9      	cmplt      	r2, r3
    3164:	0f94      	bf      	0x308c	// 308c <TK_Keymap_prog+0x130>
				 Key_Map0&=~(0x01<<i);
    3166:	3300      	movi      	r3, 0
    3168:	1341      	lrw      	r2, 0x2000021c	// 32ec <TK_Keymap_prog+0x390>
    316a:	2b01      	subi      	r3, 2
    316c:	9220      	ld.w      	r1, (r2, 0x0)
    316e:	70d3      	rotl      	r3, r4
    3170:	68c4      	and      	r3, r1
    3172:	b260      	st.w      	r3, (r2, 0x0)
    3174:	078c      	br      	0x308c	// 308c <TK_Keymap_prog+0x130>
		if((offset_data0[i]>TK_Triggerlevel[i])&&(Valid_key_f==0))
    3176:	9844      	ld.w      	r2, (r14, 0x10)
    3178:	6084      	addu      	r2, r1
    317a:	1218      	lrw      	r0, 0x20000112	// 32d8 <TK_Keymap_prog+0x37c>
    317c:	8a60      	ld.h      	r3, (r2, 0x0)
    317e:	6040      	addu      	r1, r0
    3180:	74cf      	sexth      	r3, r3
    3182:	8920      	ld.h      	r1, (r1, 0x0)
    3184:	64c5      	cmplt      	r1, r3
    3186:	0f83      	bf      	0x308c	// 308c <TK_Keymap_prog+0x130>
    3188:	1360      	lrw      	r3, 0x20000236	// 3308 <TK_Keymap_prog+0x3ac>
    318a:	8360      	ld.b      	r3, (r3, 0x0)
    318c:	74cc      	zextb      	r3, r3
    318e:	3b40      	cmpnei      	r3, 0
    3190:	0b7e      	bt      	0x308c	// 308c <TK_Keymap_prog+0x130>
			Press_debounce0[i]++;
    3192:	1213      	lrw      	r0, 0x20000225	// 32dc <TK_Keymap_prog+0x380>
    3194:	6010      	addu      	r0, r4
    3196:	8020      	ld.b      	r1, (r0, 0x0)
    3198:	2100      	addi      	r1, 1
    319a:	7444      	zextb      	r1, r1
    319c:	a020      	st.b      	r1, (r0, 0x0)
			Release_debounce0[i]=0;
    319e:	3600      	movi      	r6, 0
    31a0:	1230      	lrw      	r1, 0x2000020a	// 32e0 <TK_Keymap_prog+0x384>
    31a2:	6050      	addu      	r1, r4
    31a4:	a1c0      	st.b      	r6, (r1, 0x0)
			TK_Postive_build0[i]=0;
    31a6:	1230      	lrw      	r1, 0x2000033c	// 32e4 <TK_Keymap_prog+0x388>
    31a8:	6050      	addu      	r1, r4
    31aa:	a1c0      	st.b      	r6, (r1, 0x0)
			TK_Negtive_build0[i]=0;
    31ac:	122f      	lrw      	r1, 0x200003c8	// 32e8 <TK_Keymap_prog+0x38c>
    31ae:	6050      	addu      	r1, r4
    31b0:	a1c0      	st.b      	r6, (r1, 0x0)
			if(Press_debounce0[i]>Press_debounce_data)
    31b2:	8020      	ld.b      	r1, (r0, 0x0)
    31b4:	98c3      	ld.w      	r6, (r14, 0xc)
    31b6:	6458      	cmphs      	r6, r1
    31b8:	0b6a      	bt      	0x308c	// 308c <TK_Keymap_prog+0x130>
				if((Key_mode==0)&&(Key_Map0==0))
    31ba:	3d40      	cmpnei      	r5, 0
    31bc:	0808      	bt      	0x31cc	// 31cc <TK_Keymap_prog+0x270>
    31be:	124c      	lrw      	r2, 0x2000021c	// 32ec <TK_Keymap_prog+0x390>
    31c0:	9260      	ld.w      	r3, (r2, 0x0)
    31c2:	3b40      	cmpnei      	r3, 0
    31c4:	080c      	bt      	0x31dc	// 31dc <TK_Keymap_prog+0x280>
				Key_Map0|=0x01<<i;
    31c6:	9220      	ld.w      	r1, (r2, 0x0)
    31c8:	3301      	movi      	r3, 1
    31ca:	0406      	br      	0x31d6	// 31d6 <TK_Keymap_prog+0x27a>
				if(Key_mode==1)
    31cc:	3d41      	cmpnei      	r5, 1
    31ce:	080a      	bt      	0x31e2	// 31e2 <TK_Keymap_prog+0x286>
				Key_Map0|=0x01<<i;
    31d0:	1247      	lrw      	r2, 0x2000021c	// 32ec <TK_Keymap_prog+0x390>
    31d2:	6cd7      	mov      	r3, r5
    31d4:	9220      	ld.w      	r1, (r2, 0x0)
				Key_Map0|=0x01<<i;
    31d6:	70d0      	lsl      	r3, r4
    31d8:	6cc4      	or      	r3, r1
    31da:	b260      	st.w      	r3, (r2, 0x0)
				Press_debounce0[i]=0;
    31dc:	3300      	movi      	r3, 0
    31de:	a060      	st.b      	r3, (r0, 0x0)
    31e0:	0756      	br      	0x308c	// 308c <TK_Keymap_prog+0x130>
				if(Key_mode==2)									//reserved mode,strongest single-key
    31e2:	3d42      	cmpnei      	r5, 2
    31e4:	0c02      	bf      	0x31e8	// 31e8 <TK_Keymap_prog+0x28c>
    31e6:	05dc      	br      	0x359e	// 359e <TK_Keymap_prog+0x642>
				if(offset_data0[i]>(offset0_max_tempA+10))
    31e8:	12e7      	lrw      	r7, 0x200003c2	// 3304 <TK_Keymap_prog+0x3a8>
    31ea:	8ac0      	ld.h      	r6, (r2, 0x0)
    31ec:	8f20      	ld.h      	r1, (r7, 0x0)
    31ee:	7445      	zexth      	r1, r1
    31f0:	759b      	sexth      	r6, r6
    31f2:	2109      	addi      	r1, 10
    31f4:	6585      	cmplt      	r1, r6
    31f6:	0ff3      	bf      	0x31dc	// 31dc <TK_Keymap_prog+0x280>
				offset0_max_tempA=offset_data0[i];
    31f8:	8a40      	ld.h      	r2, (r2, 0x0)
    31fa:	7489      	zexth      	r2, r2
    31fc:	af40      	st.h      	r2, (r7, 0x0)
				Key_Map0=0;
    31fe:	115c      	lrw      	r2, 0x2000021c	// 32ec <TK_Keymap_prog+0x390>
    3200:	b260      	st.w      	r3, (r2, 0x0)
    3202:	07e2      	br      	0x31c6	// 31c6 <TK_Keymap_prog+0x26a>
				if(Key_mode==1)
    3204:	3d41      	cmpnei      	r5, 1
    3206:	089b      	bt      	0x333c	// 333c <TK_Keymap_prog+0x3e0>
				Key_Map1|=0x01<<i;
    3208:	115e      	lrw      	r2, 0x200001b8	// 3300 <TK_Keymap_prog+0x3a4>
    320a:	6cd7      	mov      	r3, r5
    320c:	9200      	ld.w      	r0, (r2, 0x0)
				Key_Map1|=0x01<<i;
    320e:	70d0      	lsl      	r3, r4
    3210:	6cc0      	or      	r3, r0
    3212:	b260      	st.w      	r3, (r2, 0x0)
				}
				}
				Press_debounce1[i]=0;
    3214:	3300      	movi      	r3, 0
    3216:	a160      	st.b      	r3, (r1, 0x0)
				}
				Press_debounce1[i]=0;
			}
		}
		}
		if(offset_data1[i]<(TK_Triggerlevel[i]*4/5))
    3218:	4461      	lsli      	r3, r4, 1
    321a:	9841      	ld.w      	r2, (r14, 0x4)
    321c:	608c      	addu      	r2, r3
    321e:	8a60      	ld.h      	r3, (r2, 0x0)
    3220:	74cf      	sexth      	r3, r3
    3222:	9845      	ld.w      	r2, (r14, 0x14)
    3224:	648d      	cmplt      	r3, r2
    3226:	0c18      	bf      	0x3256	// 3256 <TK_Keymap_prog+0x2fa>
		{
			Release_debounce1[i]++;
    3228:	1153      	lrw      	r2, 0x20000290	// 32f4 <TK_Keymap_prog+0x398>
    322a:	6090      	addu      	r2, r4
    322c:	8260      	ld.b      	r3, (r2, 0x0)
    322e:	2300      	addi      	r3, 1
    3230:	74cc      	zextb      	r3, r3
    3232:	a260      	st.b      	r3, (r2, 0x0)
			Press_debounce1[i]=0;
    3234:	3100      	movi      	r1, 0
    3236:	116f      	lrw      	r3, 0x200003e0	// 32f0 <TK_Keymap_prog+0x394>
    3238:	60d0      	addu      	r3, r4
    323a:	a320      	st.b      	r1, (r3, 0x0)
			if(Release_debounce1[i]>Release_debounce_data)
    323c:	8260      	ld.b      	r3, (r2, 0x0)
    323e:	9826      	ld.w      	r1, (r14, 0x18)
    3240:	64c4      	cmphs      	r1, r3
    3242:	080a      	bt      	0x3256	// 3256 <TK_Keymap_prog+0x2fa>
			{
				Key_Map1&=~(0x01<<i);
    3244:	3300      	movi      	r3, 0
    3246:	112f      	lrw      	r1, 0x200001b8	// 3300 <TK_Keymap_prog+0x3a4>
    3248:	2b01      	subi      	r3, 2
    324a:	9100      	ld.w      	r0, (r1, 0x0)
    324c:	70d3      	rotl      	r3, r4
    324e:	68c0      	and      	r3, r0
    3250:	b160      	st.w      	r3, (r1, 0x0)
				Release_debounce1[i]=0;
    3252:	3300      	movi      	r3, 0
    3254:	a260      	st.b      	r3, (r2, 0x0)
			}
		}
//========================Key_Map2======================
		if(MultiTimes_Filter>=4)
    3256:	9860      	ld.w      	r3, (r14, 0x0)
		{
			if((offset_data2[i]>TK_Triggerlevel[i])&&(offset_data2[i]<(TK_Triggerlevel[i]*MultiTimes_Filter)))
    3258:	9842      	ld.w      	r2, (r14, 0x8)
		if(MultiTimes_Filter>=4)
    325a:	3b03      	cmphsi      	r3, 4
    325c:	4461      	lsli      	r3, r4, 1
			if((offset_data2[i]>TK_Triggerlevel[i])&&(offset_data2[i]<(TK_Triggerlevel[i]*MultiTimes_Filter)))
    325e:	60c8      	addu      	r3, r2
    3260:	8b40      	ld.h      	r2, (r3, 0x0)
    3262:	748b      	sexth      	r2, r2
		if(MultiTimes_Filter>=4)
    3264:	0d26      	bf      	0x34b0	// 34b0 <TK_Keymap_prog+0x554>
    3266:	9820      	ld.w      	r1, (r14, 0x0)
			if((offset_data2[i]>TK_Triggerlevel[i])&&(offset_data2[i]<(TK_Triggerlevel[i]*MultiTimes_Filter)))
    3268:	649d      	cmplt      	r7, r2
    326a:	7c5c      	mult      	r1, r7
    326c:	0d13      	bf      	0x3492	// 3492 <TK_Keymap_prog+0x536>
    326e:	8b40      	ld.h      	r2, (r3, 0x0)
    3270:	748b      	sexth      	r2, r2
    3272:	6449      	cmplt      	r2, r1
    3274:	0d0f      	bf      	0x3492	// 3492 <TK_Keymap_prog+0x536>
		  {
			Press_debounce2[i]++;
    3276:	1126      	lrw      	r1, 0x20000398	// 330c <TK_Keymap_prog+0x3b0>
    3278:	6050      	addu      	r1, r4
    327a:	8140      	ld.b      	r2, (r1, 0x0)
    327c:	2200      	addi      	r2, 1
    327e:	7488      	zextb      	r2, r2
    3280:	a140      	st.b      	r2, (r1, 0x0)
			Release_debounce2[i]=0;
    3282:	3000      	movi      	r0, 0
    3284:	1143      	lrw      	r2, 0x200003f1	// 3310 <TK_Keymap_prog+0x3b4>
    3286:	6090      	addu      	r2, r4
    3288:	a200      	st.b      	r0, (r2, 0x0)
			TK_Postive_build2[i]=0;
    328a:	1143      	lrw      	r2, 0x200001a6	// 3314 <TK_Keymap_prog+0x3b8>
    328c:	6090      	addu      	r2, r4
    328e:	a200      	st.b      	r0, (r2, 0x0)
			TK_Negtive_build2[i]=0;
    3290:	1142      	lrw      	r2, 0x200002a8	// 3318 <TK_Keymap_prog+0x3bc>
    3292:	6090      	addu      	r2, r4
    3294:	a200      	st.b      	r0, (r2, 0x0)
    3296:	0443      	br      	0x331c	// 331c <TK_Keymap_prog+0x3c0>
    3298:	200000dc 	.long	0x200000dc
    329c:	200000a8 	.long	0x200000a8
    32a0:	200000b9 	.long	0x200000b9
    32a4:	200000b8 	.long	0x200000b8
    32a8:	200004a6 	.long	0x200004a6
    32ac:	20000238 	.long	0x20000238
    32b0:	20000184 	.long	0x20000184
    32b4:	2000031a 	.long	0x2000031a
    32b8:	20000260 	.long	0x20000260
    32bc:	20000370 	.long	0x20000370
    32c0:	2000034e 	.long	0x2000034e
    32c4:	2000041a 	.long	0x2000041a
    32c8:	20000482 	.long	0x20000482
    32cc:	20000460 	.long	0x20000460
    32d0:	200001e8 	.long	0x200001e8
    32d4:	200001bc 	.long	0x200001bc
    32d8:	20000112 	.long	0x20000112
    32dc:	20000225 	.long	0x20000225
    32e0:	2000020a 	.long	0x2000020a
    32e4:	2000033c 	.long	0x2000033c
    32e8:	200003c8 	.long	0x200003c8
    32ec:	2000021c 	.long	0x2000021c
    32f0:	200003e0 	.long	0x200003e0
    32f4:	20000290 	.long	0x20000290
    32f8:	200002ba 	.long	0x200002ba
    32fc:	200003b0 	.long	0x200003b0
    3300:	200001b8 	.long	0x200001b8
    3304:	200003c2 	.long	0x200003c2
    3308:	20000236 	.long	0x20000236
    330c:	20000398 	.long	0x20000398
    3310:	200003f1 	.long	0x200003f1
    3314:	200001a6 	.long	0x200001a6
    3318:	200002a8 	.long	0x200002a8
			if(Press_debounce2[i]>Press_debounce_data)
    331c:	8140      	ld.b      	r2, (r1, 0x0)
    331e:	9803      	ld.w      	r0, (r14, 0xc)
    3320:	6480      	cmphs      	r0, r2
    3322:	0881      	bt      	0x3424	// 3424 <TK_Keymap_prog+0x4c8>
			{
				if((Key_mode==0)&&(Key_Map2==0))
    3324:	3d40      	cmpnei      	r5, 0
    3326:	0874      	bt      	0x340e	// 340e <TK_Keymap_prog+0x4b2>
    3328:	014b      	lrw      	r2, 0x2000028c	// 3678 <TK_Keymap_prog+0x71c>
    332a:	9260      	ld.w      	r3, (r2, 0x0)
    332c:	3b40      	cmpnei      	r3, 0
    332e:	0879      	bt      	0x3420	// 3420 <TK_Keymap_prog+0x4c4>
				Key_Map2|=0x01<<i;
				}
				if((offset_data2[i]<(offset2_max_tempA-5))&&(offset_data2[i]>(offset2_max_tempB+5)))
				{
				offset2_max_tempB=offset_data2[i];
				Key_Map2|=0x01<<i;
    3330:	3301      	movi      	r3, 1
    3332:	9200      	ld.w      	r0, (r2, 0x0)
    3334:	70d0      	lsl      	r3, r4
    3336:	6cc0      	or      	r3, r0
    3338:	b260      	st.w      	r3, (r2, 0x0)
    333a:	0473      	br      	0x3420	// 3420 <TK_Keymap_prog+0x4c4>
				if(Key_mode==2)
    333c:	3d42      	cmpnei      	r5, 2
    333e:	0960      	bt      	0x35fe	// 35fe <TK_Keymap_prog+0x6a2>
				if(offset_data1[i]>(offset1_max_tempA+10))
    3340:	01d0      	lrw      	r6, 0x200004a4	// 367c <TK_Keymap_prog+0x720>
    3342:	8b00      	ld.h      	r0, (r3, 0x0)
    3344:	8e40      	ld.h      	r2, (r6, 0x0)
    3346:	7489      	zexth      	r2, r2
    3348:	7403      	sexth      	r0, r0
    334a:	2209      	addi      	r2, 10
    334c:	6409      	cmplt      	r2, r0
    334e:	0f63      	bf      	0x3214	// 3214 <TK_Keymap_prog+0x2b8>
				offset1_max_tempA=offset_data1[i];
    3350:	8b60      	ld.h      	r3, (r3, 0x0)
    3352:	74cd      	zexth      	r3, r3
    3354:	ae60      	st.h      	r3, (r6, 0x0)
				Key_Map1=0;
    3356:	3300      	movi      	r3, 0
    3358:	0155      	lrw      	r2, 0x200001b8	// 3680 <TK_Keymap_prog+0x724>
    335a:	b260      	st.w      	r3, (r2, 0x0)
    335c:	06e8      	br      	0x312c	// 312c <TK_Keymap_prog+0x1d0>
		 else if((offset_data1[i])>(TK_Triggerlevel[i]*MultiTimes_Filter))
    335e:	9841      	ld.w      	r2, (r14, 0x4)
    3360:	4461      	lsli      	r3, r4, 1
    3362:	60c8      	addu      	r3, r2
    3364:	8b60      	ld.h      	r3, (r3, 0x0)
    3366:	9840      	ld.w      	r2, (r14, 0x0)
    3368:	74cf      	sexth      	r3, r3
    336a:	7c9c      	mult      	r2, r7
    336c:	64c9      	cmplt      	r2, r3
    336e:	0f55      	bf      	0x3218	// 3218 <TK_Keymap_prog+0x2bc>
				 Key_Map1&=~(0x01<<i);
    3370:	3300      	movi      	r3, 0
    3372:	015b      	lrw      	r2, 0x200001b8	// 3680 <TK_Keymap_prog+0x724>
    3374:	2b01      	subi      	r3, 2
    3376:	9220      	ld.w      	r1, (r2, 0x0)
    3378:	70d3      	rotl      	r3, r4
    337a:	68c4      	and      	r3, r1
    337c:	b260      	st.w      	r3, (r2, 0x0)
    337e:	074d      	br      	0x3218	// 3218 <TK_Keymap_prog+0x2bc>
		if((offset_data1[i]>TK_Triggerlevel[i])&&(Valid_key_f==0))
    3380:	649d      	cmplt      	r7, r2
    3382:	0f4b      	bf      	0x3218	// 3218 <TK_Keymap_prog+0x2bc>
    3384:	015f      	lrw      	r2, 0x20000236	// 3684 <TK_Keymap_prog+0x728>
    3386:	8240      	ld.b      	r2, (r2, 0x0)
    3388:	7488      	zextb      	r2, r2
    338a:	3a40      	cmpnei      	r2, 0
    338c:	b847      	st.w      	r2, (r14, 0x1c)
    338e:	0b45      	bt      	0x3218	// 3218 <TK_Keymap_prog+0x2bc>
			Press_debounce1[i]++;
    3390:	0201      	lrw      	r0, 0x200003e0	// 3688 <TK_Keymap_prog+0x72c>
    3392:	6010      	addu      	r0, r4
    3394:	8020      	ld.b      	r1, (r0, 0x0)
    3396:	2100      	addi      	r1, 1
    3398:	7444      	zextb      	r1, r1
    339a:	a020      	st.b      	r1, (r0, 0x0)
			Release_debounce1[i]=0;
    339c:	3600      	movi      	r6, 0
    339e:	0223      	lrw      	r1, 0x20000290	// 368c <TK_Keymap_prog+0x730>
    33a0:	6050      	addu      	r1, r4
    33a2:	a1c0      	st.b      	r6, (r1, 0x0)
			TK_Postive_build1[i]=0;
    33a4:	0224      	lrw      	r1, 0x200002ba	// 3690 <TK_Keymap_prog+0x734>
    33a6:	6050      	addu      	r1, r4
    33a8:	a1c0      	st.b      	r6, (r1, 0x0)
			TK_Negtive_build1[i]=0;
    33aa:	0224      	lrw      	r1, 0x200003b0	// 3694 <TK_Keymap_prog+0x738>
    33ac:	6050      	addu      	r1, r4
    33ae:	a1c0      	st.b      	r6, (r1, 0x0)
			if(Press_debounce1[i]>Press_debounce_data)
    33b0:	8020      	ld.b      	r1, (r0, 0x0)
    33b2:	98c3      	ld.w      	r6, (r14, 0xc)
    33b4:	6458      	cmphs      	r6, r1
    33b6:	0b31      	bt      	0x3218	// 3218 <TK_Keymap_prog+0x2bc>
				if((Key_mode==0)&&(Key_Map1==0))
    33b8:	3d40      	cmpnei      	r5, 0
    33ba:	0808      	bt      	0x33ca	// 33ca <TK_Keymap_prog+0x46e>
    33bc:	024e      	lrw      	r2, 0x200001b8	// 3680 <TK_Keymap_prog+0x724>
    33be:	9260      	ld.w      	r3, (r2, 0x0)
    33c0:	3b40      	cmpnei      	r3, 0
    33c2:	0823      	bt      	0x3408	// 3408 <TK_Keymap_prog+0x4ac>
				Key_Map1|=0x01<<i;
    33c4:	9220      	ld.w      	r1, (r2, 0x0)
    33c6:	3301      	movi      	r3, 1
    33c8:	0406      	br      	0x33d4	// 33d4 <TK_Keymap_prog+0x478>
				if(Key_mode==1)
    33ca:	3d41      	cmpnei      	r5, 1
    33cc:	0808      	bt      	0x33dc	// 33dc <TK_Keymap_prog+0x480>
				Key_Map1|=0x01<<i;
    33ce:	0252      	lrw      	r2, 0x200001b8	// 3680 <TK_Keymap_prog+0x724>
    33d0:	6cd7      	mov      	r3, r5
    33d2:	9220      	ld.w      	r1, (r2, 0x0)
				Key_Map1|=0x01<<i;
    33d4:	70d0      	lsl      	r3, r4
    33d6:	6cc4      	or      	r3, r1
    33d8:	b260      	st.w      	r3, (r2, 0x0)
    33da:	0417      	br      	0x3408	// 3408 <TK_Keymap_prog+0x4ac>
				if(Key_mode==2)
    33dc:	3d42      	cmpnei      	r5, 2
    33de:	0942      	bt      	0x3662	// 3662 <TK_Keymap_prog+0x706>
				if(offset_data1[i]>(offset1_max_tempA+10))
    33e0:	8bc0      	ld.h      	r6, (r3, 0x0)
    33e2:	745b      	sexth      	r1, r6
    33e4:	02d9      	lrw      	r6, 0x200004a4	// 367c <TK_Keymap_prog+0x720>
    33e6:	6c87      	mov      	r2, r1
    33e8:	8e20      	ld.h      	r1, (r6, 0x0)
    33ea:	7445      	zexth      	r1, r1
    33ec:	2109      	addi      	r1, 10
    33ee:	6485      	cmplt      	r1, r2
    33f0:	0c0c      	bf      	0x3408	// 3408 <TK_Keymap_prog+0x4ac>
				offset1_max_tempA=offset_data1[i];
    33f2:	8b60      	ld.h      	r3, (r3, 0x0)
    33f4:	74cd      	zexth      	r3, r3
    33f6:	ae60      	st.h      	r3, (r6, 0x0)
				Key_Map1=0;
    33f8:	9867      	ld.w      	r3, (r14, 0x1c)
    33fa:	023d      	lrw      	r1, 0x200001b8	// 3680 <TK_Keymap_prog+0x724>
    33fc:	b160      	st.w      	r3, (r1, 0x0)
				Key_Map1|=0x01<<i;
    33fe:	3301      	movi      	r3, 1
    3400:	9140      	ld.w      	r2, (r1, 0x0)
    3402:	70d0      	lsl      	r3, r4
    3404:	6cc8      	or      	r3, r2
    3406:	b160      	st.w      	r3, (r1, 0x0)
				Press_debounce1[i]=0;
    3408:	3300      	movi      	r3, 0
    340a:	a060      	st.b      	r3, (r0, 0x0)
    340c:	0706      	br      	0x3218	// 3218 <TK_Keymap_prog+0x2bc>
				if(Key_mode==1)
    340e:	3d41      	cmpnei      	r5, 1
    3410:	0830      	bt      	0x3470	// 3470 <TK_Keymap_prog+0x514>
				Key_Map2|=0x01<<i;
    3412:	0345      	lrw      	r2, 0x2000028c	// 3678 <TK_Keymap_prog+0x71c>
    3414:	6cd7      	mov      	r3, r5
    3416:	9200      	ld.w      	r0, (r2, 0x0)
    3418:	70d0      	lsl      	r3, r4
    341a:	6cc0      	or      	r3, r0
    341c:	b260      	st.w      	r3, (r2, 0x0)
				nop;
    341e:	6c03      	mov      	r0, r0
				}
				}
				Press_debounce2[i]=0;
    3420:	3300      	movi      	r3, 0
    3422:	a160      	st.b      	r3, (r1, 0x0)
				}
				Press_debounce2[i]=0;
			}
		}
		}
		if(offset_data2[i]<(TK_Triggerlevel[i]*4/5))
    3424:	4461      	lsli      	r3, r4, 1
    3426:	9842      	ld.w      	r2, (r14, 0x8)
    3428:	608c      	addu      	r2, r3
    342a:	8a60      	ld.h      	r3, (r2, 0x0)
    342c:	74cf      	sexth      	r3, r3
    342e:	9845      	ld.w      	r2, (r14, 0x14)
    3430:	648d      	cmplt      	r3, r2
    3432:	0c18      	bf      	0x3462	// 3462 <TK_Keymap_prog+0x506>
		{
			Release_debounce2[i]++;
    3434:	0346      	lrw      	r2, 0x200003f1	// 3698 <TK_Keymap_prog+0x73c>
    3436:	6090      	addu      	r2, r4
    3438:	8260      	ld.b      	r3, (r2, 0x0)
    343a:	2300      	addi      	r3, 1
    343c:	74cc      	zextb      	r3, r3
    343e:	a260      	st.b      	r3, (r2, 0x0)
			Press_debounce2[i]=0;
    3440:	3100      	movi      	r1, 0
    3442:	0368      	lrw      	r3, 0x20000398	// 369c <TK_Keymap_prog+0x740>
    3444:	60d0      	addu      	r3, r4
    3446:	a320      	st.b      	r1, (r3, 0x0)
			if(Release_debounce2[i]>Release_debounce_data)
    3448:	8260      	ld.b      	r3, (r2, 0x0)
    344a:	9826      	ld.w      	r1, (r14, 0x18)
    344c:	64c4      	cmphs      	r1, r3
    344e:	080a      	bt      	0x3462	// 3462 <TK_Keymap_prog+0x506>
			{
				Key_Map2&=~(0x01<<i);
    3450:	3300      	movi      	r3, 0
    3452:	0335      	lrw      	r1, 0x2000028c	// 3678 <TK_Keymap_prog+0x71c>
    3454:	2b01      	subi      	r3, 2
    3456:	9100      	ld.w      	r0, (r1, 0x0)
    3458:	70d3      	rotl      	r3, r4
    345a:	68c0      	and      	r3, r0
    345c:	b160      	st.w      	r3, (r1, 0x0)
				Release_debounce2[i]=0;
    345e:	3300      	movi      	r3, 0
    3460:	a260      	st.b      	r3, (r2, 0x0)
    3462:	2400      	addi      	r4, 1
	for(i=0;i<17;i++)
    3464:	3c51      	cmpnei      	r4, 17
    3466:	0c03      	bf      	0x346c	// 346c <TK_Keymap_prog+0x510>
    3468:	e800fd8d 	br      	0x2f82	// 2f82 <TK_Keymap_prog+0x26>
			}
		}
		
	}
}
    346c:	140a      	addi      	r14, r14, 40
    346e:	1494      	pop      	r4-r7, r15
				if(Key_mode==2)
    3470:	3d42      	cmpnei      	r5, 2
    3472:	0948      	bt      	0x3702	// 3702 <TK_Keymap_prog+0x7a6>
				if(offset_data2[i]>(offset2_max_tempA+10))
    3474:	03d4      	lrw      	r6, 0x2000025a	// 36a0 <TK_Keymap_prog+0x744>
    3476:	8b00      	ld.h      	r0, (r3, 0x0)
    3478:	8e40      	ld.h      	r2, (r6, 0x0)
    347a:	7489      	zexth      	r2, r2
    347c:	7403      	sexth      	r0, r0
    347e:	2209      	addi      	r2, 10
    3480:	6409      	cmplt      	r2, r0
    3482:	0fcf      	bf      	0x3420	// 3420 <TK_Keymap_prog+0x4c4>
				offset2_max_tempA=offset_data2[i];
    3484:	8b60      	ld.h      	r3, (r3, 0x0)
    3486:	74cd      	zexth      	r3, r3
    3488:	ae60      	st.h      	r3, (r6, 0x0)
				Key_Map2=0;
    348a:	3300      	movi      	r3, 0
    348c:	135b      	lrw      	r2, 0x2000028c	// 3678 <TK_Keymap_prog+0x71c>
    348e:	b260      	st.w      	r3, (r2, 0x0)
    3490:	0750      	br      	0x3330	// 3330 <TK_Keymap_prog+0x3d4>
		 else if((offset_data2[i])>(TK_Triggerlevel[i]*MultiTimes_Filter))
    3492:	4461      	lsli      	r3, r4, 1
    3494:	9842      	ld.w      	r2, (r14, 0x8)
    3496:	60c8      	addu      	r3, r2
    3498:	8b60      	ld.h      	r3, (r3, 0x0)
    349a:	74cf      	sexth      	r3, r3
    349c:	64c5      	cmplt      	r1, r3
    349e:	0fc3      	bf      	0x3424	// 3424 <TK_Keymap_prog+0x4c8>
				 Key_Map2&=~(0x01<<i);
    34a0:	3300      	movi      	r3, 0
    34a2:	1356      	lrw      	r2, 0x2000028c	// 3678 <TK_Keymap_prog+0x71c>
    34a4:	2b01      	subi      	r3, 2
    34a6:	9220      	ld.w      	r1, (r2, 0x0)
    34a8:	70d3      	rotl      	r3, r4
    34aa:	68c4      	and      	r3, r1
    34ac:	b260      	st.w      	r3, (r2, 0x0)
    34ae:	07bb      	br      	0x3424	// 3424 <TK_Keymap_prog+0x4c8>
		if((offset_data2[i]>TK_Triggerlevel[i])&&(Valid_key_f==0))
    34b0:	649d      	cmplt      	r7, r2
    34b2:	0fb9      	bf      	0x3424	// 3424 <TK_Keymap_prog+0x4c8>
    34b4:	1354      	lrw      	r2, 0x20000236	// 3684 <TK_Keymap_prog+0x728>
    34b6:	8240      	ld.b      	r2, (r2, 0x0)
    34b8:	7488      	zextb      	r2, r2
    34ba:	3a40      	cmpnei      	r2, 0
    34bc:	0bb4      	bt      	0x3424	// 3424 <TK_Keymap_prog+0x4c8>
			Press_debounce2[i]++;
    34be:	1318      	lrw      	r0, 0x20000398	// 369c <TK_Keymap_prog+0x740>
    34c0:	6010      	addu      	r0, r4
    34c2:	8020      	ld.b      	r1, (r0, 0x0)
    34c4:	2100      	addi      	r1, 1
    34c6:	7444      	zextb      	r1, r1
    34c8:	a020      	st.b      	r1, (r0, 0x0)
			Release_debounce2[i]=0;
    34ca:	3600      	movi      	r6, 0
    34cc:	1333      	lrw      	r1, 0x200003f1	// 3698 <TK_Keymap_prog+0x73c>
    34ce:	6050      	addu      	r1, r4
    34d0:	a1c0      	st.b      	r6, (r1, 0x0)
			TK_Postive_build2[i]=0;
    34d2:	1335      	lrw      	r1, 0x200001a6	// 36a4 <TK_Keymap_prog+0x748>
    34d4:	6050      	addu      	r1, r4
    34d6:	a1c0      	st.b      	r6, (r1, 0x0)
			TK_Negtive_build2[i]=0;
    34d8:	1334      	lrw      	r1, 0x200002a8	// 36a8 <TK_Keymap_prog+0x74c>
    34da:	6050      	addu      	r1, r4
    34dc:	a1c0      	st.b      	r6, (r1, 0x0)
			if(Press_debounce2[i]>Press_debounce_data)
    34de:	8020      	ld.b      	r1, (r0, 0x0)
    34e0:	98c3      	ld.w      	r6, (r14, 0xc)
    34e2:	6458      	cmphs      	r6, r1
    34e4:	0ba0      	bt      	0x3424	// 3424 <TK_Keymap_prog+0x4c8>
				if((Key_mode==0)&&(Key_Map2==0))
    34e6:	3d40      	cmpnei      	r5, 0
    34e8:	0808      	bt      	0x34f8	// 34f8 <TK_Keymap_prog+0x59c>
    34ea:	1344      	lrw      	r2, 0x2000028c	// 3678 <TK_Keymap_prog+0x71c>
    34ec:	9260      	ld.w      	r3, (r2, 0x0)
    34ee:	3b40      	cmpnei      	r3, 0
    34f0:	0821      	bt      	0x3532	// 3532 <TK_Keymap_prog+0x5d6>
				Key_Map2|=0x01<<i;
    34f2:	9220      	ld.w      	r1, (r2, 0x0)
    34f4:	3301      	movi      	r3, 1
    34f6:	0406      	br      	0x3502	// 3502 <TK_Keymap_prog+0x5a6>
				if(Key_mode==1)
    34f8:	3d41      	cmpnei      	r5, 1
    34fa:	0808      	bt      	0x350a	// 350a <TK_Keymap_prog+0x5ae>
				Key_Map2|=0x01<<i;
    34fc:	125f      	lrw      	r2, 0x2000028c	// 3678 <TK_Keymap_prog+0x71c>
    34fe:	6cd7      	mov      	r3, r5
    3500:	9220      	ld.w      	r1, (r2, 0x0)
				Key_Map2|=0x01<<i;
    3502:	70d0      	lsl      	r3, r4
    3504:	6cc4      	or      	r3, r1
    3506:	b260      	st.w      	r3, (r2, 0x0)
    3508:	0415      	br      	0x3532	// 3532 <TK_Keymap_prog+0x5d6>
				if(Key_mode==2)
    350a:	3d42      	cmpnei      	r5, 2
    350c:	092a      	bt      	0x3760	// 3760 <TK_Keymap_prog+0x804>
				if(offset_data2[i]>(offset2_max_tempA+10))
    350e:	13e5      	lrw      	r7, 0x2000025a	// 36a0 <TK_Keymap_prog+0x744>
    3510:	8bc0      	ld.h      	r6, (r3, 0x0)
    3512:	8f20      	ld.h      	r1, (r7, 0x0)
    3514:	7445      	zexth      	r1, r1
    3516:	759b      	sexth      	r6, r6
    3518:	2109      	addi      	r1, 10
    351a:	6585      	cmplt      	r1, r6
    351c:	0c0b      	bf      	0x3532	// 3532 <TK_Keymap_prog+0x5d6>
				offset2_max_tempA=offset_data2[i];
    351e:	8b60      	ld.h      	r3, (r3, 0x0)
				Key_Map2=0;
    3520:	1236      	lrw      	r1, 0x2000028c	// 3678 <TK_Keymap_prog+0x71c>
				offset2_max_tempA=offset_data2[i];
    3522:	74cd      	zexth      	r3, r3
    3524:	af60      	st.h      	r3, (r7, 0x0)
				Key_Map2=0;
    3526:	b140      	st.w      	r2, (r1, 0x0)
				Key_Map2|=0x01<<i;
    3528:	3301      	movi      	r3, 1
    352a:	9140      	ld.w      	r2, (r1, 0x0)
    352c:	70d0      	lsl      	r3, r4
    352e:	6cc8      	or      	r3, r2
    3530:	b160      	st.w      	r3, (r1, 0x0)
				Press_debounce2[i]=0;
    3532:	3300      	movi      	r3, 0
    3534:	a060      	st.b      	r3, (r0, 0x0)
    3536:	0777      	br      	0x3424	// 3424 <TK_Keymap_prog+0x4c8>
				if(Key_mode==3)								
    3538:	3d43      	cmpnei      	r5, 3
    353a:	0c03      	bf      	0x3540	// 3540 <TK_Keymap_prog+0x5e4>
    353c:	e800fda6 	br      	0x3088	// 3088 <TK_Keymap_prog+0x12c>
				if(offset_data0[i]>(offset0_max_tempA+10))
    3540:	125b      	lrw      	r2, 0x200003c2	// 36ac <TK_Keymap_prog+0x750>
    3542:	8bc0      	ld.h      	r6, (r3, 0x0)
    3544:	8a00      	ld.h      	r0, (r2, 0x0)
    3546:	7401      	zexth      	r0, r0
    3548:	759b      	sexth      	r6, r6
    354a:	2009      	addi      	r0, 10
    354c:	6581      	cmplt      	r0, r6
    354e:	0c0c      	bf      	0x3566	// 3566 <TK_Keymap_prog+0x60a>
				offset0_max_tempA=offset_data0[i];
    3550:	8b60      	ld.h      	r3, (r3, 0x0)
    3552:	74cd      	zexth      	r3, r3
    3554:	aa60      	st.h      	r3, (r2, 0x0)
				Key_Map0=0;
    3556:	3300      	movi      	r3, 0
    3558:	1216      	lrw      	r0, 0x2000021c	// 36b0 <TK_Keymap_prog+0x754>
    355a:	b060      	st.w      	r3, (r0, 0x0)
				Key_Map0|=0x01<<i;
    355c:	3301      	movi      	r3, 1
    355e:	90c0      	ld.w      	r6, (r0, 0x0)
    3560:	70d0      	lsl      	r3, r4
    3562:	6cd8      	or      	r3, r6
    3564:	b060      	st.w      	r3, (r0, 0x0)
				if((offset_data0[i]<(offset0_max_tempA-5))&&(offset_data0[i]>(offset0_max_tempB+5)))
    3566:	9804      	ld.w      	r0, (r14, 0x10)
    3568:	4461      	lsli      	r3, r4, 1
    356a:	60c0      	addu      	r3, r0
    356c:	8b00      	ld.h      	r0, (r3, 0x0)
    356e:	8a40      	ld.h      	r2, (r2, 0x0)
    3570:	7489      	zexth      	r2, r2
    3572:	7403      	sexth      	r0, r0
    3574:	2a04      	subi      	r2, 5
    3576:	6481      	cmplt      	r0, r2
    3578:	0803      	bt      	0x357e	// 357e <TK_Keymap_prog+0x622>
    357a:	e800fd87 	br      	0x3088	// 3088 <TK_Keymap_prog+0x12c>
    357e:	12ce      	lrw      	r6, 0x200001e4	// 36b4 <TK_Keymap_prog+0x758>
    3580:	8b00      	ld.h      	r0, (r3, 0x0)
    3582:	8e40      	ld.h      	r2, (r6, 0x0)
    3584:	7489      	zexth      	r2, r2
    3586:	7403      	sexth      	r0, r0
    3588:	2204      	addi      	r2, 5
    358a:	6409      	cmplt      	r2, r0
    358c:	0803      	bt      	0x3592	// 3592 <TK_Keymap_prog+0x636>
    358e:	e800fd7d 	br      	0x3088	// 3088 <TK_Keymap_prog+0x12c>
				offset0_max_tempB=offset_data0[i];
    3592:	8b60      	ld.h      	r3, (r3, 0x0)
    3594:	74cd      	zexth      	r3, r3
    3596:	ae60      	st.h      	r3, (r6, 0x0)
				Key_Map0|=0x01<<i;
    3598:	1246      	lrw      	r2, 0x2000021c	// 36b0 <TK_Keymap_prog+0x754>
    359a:	e800fd63 	br      	0x3060	// 3060 <TK_Keymap_prog+0x104>
				if(Key_mode==3)									//reserved mode,stronger multi-key
    359e:	3d43      	cmpnei      	r5, 3
    35a0:	0c02      	bf      	0x35a4	// 35a4 <TK_Keymap_prog+0x648>
    35a2:	061d      	br      	0x31dc	// 31dc <TK_Keymap_prog+0x280>
				if(offset_data0[i]>(offset0_max_tempA+10))
    35a4:	12c2      	lrw      	r6, 0x200003c2	// 36ac <TK_Keymap_prog+0x750>
    35a6:	8ae0      	ld.h      	r7, (r2, 0x0)
    35a8:	8e20      	ld.h      	r1, (r6, 0x0)
    35aa:	7445      	zexth      	r1, r1
    35ac:	75df      	sexth      	r7, r7
    35ae:	2109      	addi      	r1, 10
    35b0:	65c5      	cmplt      	r1, r7
    35b2:	0c0b      	bf      	0x35c8	// 35c8 <TK_Keymap_prog+0x66c>
				offset0_max_tempA=offset_data0[i];
    35b4:	8a40      	ld.h      	r2, (r2, 0x0)
    35b6:	7489      	zexth      	r2, r2
    35b8:	ae40      	st.h      	r2, (r6, 0x0)
				Key_Map0=0;
    35ba:	115e      	lrw      	r2, 0x2000021c	// 36b0 <TK_Keymap_prog+0x754>
    35bc:	b260      	st.w      	r3, (r2, 0x0)
				Key_Map0|=0x01<<i;
    35be:	3301      	movi      	r3, 1
    35c0:	9220      	ld.w      	r1, (r2, 0x0)
    35c2:	70d0      	lsl      	r3, r4
    35c4:	6cc4      	or      	r3, r1
    35c6:	b260      	st.w      	r3, (r2, 0x0)
				if((offset_data0[i]<(offset0_max_tempA-5))&&(offset_data0[i]>(offset0_max_tempB+5)))
    35c8:	9844      	ld.w      	r2, (r14, 0x10)
    35ca:	4461      	lsli      	r3, r4, 1
    35cc:	60c8      	addu      	r3, r2
    35ce:	8b40      	ld.h      	r2, (r3, 0x0)
    35d0:	8e20      	ld.h      	r1, (r6, 0x0)
    35d2:	7445      	zexth      	r1, r1
    35d4:	748b      	sexth      	r2, r2
    35d6:	2904      	subi      	r1, 5
    35d8:	6449      	cmplt      	r2, r1
    35da:	0802      	bt      	0x35de	// 35de <TK_Keymap_prog+0x682>
    35dc:	0600      	br      	0x31dc	// 31dc <TK_Keymap_prog+0x280>
    35de:	11d6      	lrw      	r6, 0x200001e4	// 36b4 <TK_Keymap_prog+0x758>
    35e0:	8b20      	ld.h      	r1, (r3, 0x0)
    35e2:	8e40      	ld.h      	r2, (r6, 0x0)
    35e4:	7489      	zexth      	r2, r2
    35e6:	7447      	sexth      	r1, r1
    35e8:	2204      	addi      	r2, 5
    35ea:	6449      	cmplt      	r2, r1
    35ec:	0803      	bt      	0x35f2	// 35f2 <TK_Keymap_prog+0x696>
    35ee:	e800fdf7 	br      	0x31dc	// 31dc <TK_Keymap_prog+0x280>
				offset0_max_tempB=offset_data0[i];
    35f2:	8b60      	ld.h      	r3, (r3, 0x0)
    35f4:	74cd      	zexth      	r3, r3
    35f6:	ae60      	st.h      	r3, (r6, 0x0)
				Key_Map0|=0x01<<i;
    35f8:	114e      	lrw      	r2, 0x2000021c	// 36b0 <TK_Keymap_prog+0x754>
    35fa:	e800fde6 	br      	0x31c6	// 31c6 <TK_Keymap_prog+0x26a>
				if(Key_mode==3)
    35fe:	3d43      	cmpnei      	r5, 3
    3600:	0c02      	bf      	0x3604	// 3604 <TK_Keymap_prog+0x6a8>
    3602:	0609      	br      	0x3214	// 3214 <TK_Keymap_prog+0x2b8>
				if(offset_data1[i]>(offset1_max_tempA+10))
    3604:	105e      	lrw      	r2, 0x200004a4	// 367c <TK_Keymap_prog+0x720>
    3606:	8bc0      	ld.h      	r6, (r3, 0x0)
    3608:	8a00      	ld.h      	r0, (r2, 0x0)
    360a:	7401      	zexth      	r0, r0
    360c:	759b      	sexth      	r6, r6
    360e:	2009      	addi      	r0, 10
    3610:	6581      	cmplt      	r0, r6
    3612:	0c0c      	bf      	0x362a	// 362a <TK_Keymap_prog+0x6ce>
				offset1_max_tempA=offset_data1[i];
    3614:	8b60      	ld.h      	r3, (r3, 0x0)
    3616:	74cd      	zexth      	r3, r3
    3618:	aa60      	st.h      	r3, (r2, 0x0)
				Key_Map1=0;
    361a:	3300      	movi      	r3, 0
    361c:	1019      	lrw      	r0, 0x200001b8	// 3680 <TK_Keymap_prog+0x724>
    361e:	b060      	st.w      	r3, (r0, 0x0)
				Key_Map1|=0x01<<i;
    3620:	3301      	movi      	r3, 1
    3622:	90c0      	ld.w      	r6, (r0, 0x0)
    3624:	70d0      	lsl      	r3, r4
    3626:	6cd8      	or      	r3, r6
    3628:	b060      	st.w      	r3, (r0, 0x0)
				if((offset_data1[i]<(offset1_max_tempA-5))&&(offset_data1[i]>(offset1_max_tempB+5)))
    362a:	9801      	ld.w      	r0, (r14, 0x4)
    362c:	4461      	lsli      	r3, r4, 1
    362e:	60c0      	addu      	r3, r0
    3630:	8b00      	ld.h      	r0, (r3, 0x0)
    3632:	8a40      	ld.h      	r2, (r2, 0x0)
    3634:	7489      	zexth      	r2, r2
    3636:	7403      	sexth      	r0, r0
    3638:	2a04      	subi      	r2, 5
    363a:	6481      	cmplt      	r0, r2
    363c:	0803      	bt      	0x3642	// 3642 <TK_Keymap_prog+0x6e6>
    363e:	e800fdeb 	br      	0x3214	// 3214 <TK_Keymap_prog+0x2b8>
    3642:	10de      	lrw      	r6, 0x200003c6	// 36b8 <TK_Keymap_prog+0x75c>
    3644:	8b00      	ld.h      	r0, (r3, 0x0)
    3646:	8e40      	ld.h      	r2, (r6, 0x0)
    3648:	7489      	zexth      	r2, r2
    364a:	7403      	sexth      	r0, r0
    364c:	2204      	addi      	r2, 5
    364e:	6409      	cmplt      	r2, r0
    3650:	0803      	bt      	0x3656	// 3656 <TK_Keymap_prog+0x6fa>
    3652:	e800fde1 	br      	0x3214	// 3214 <TK_Keymap_prog+0x2b8>
				offset1_max_tempB=offset_data1[i];
    3656:	8b60      	ld.h      	r3, (r3, 0x0)
    3658:	74cd      	zexth      	r3, r3
    365a:	ae60      	st.h      	r3, (r6, 0x0)
				Key_Map1|=0x01<<i;
    365c:	1049      	lrw      	r2, 0x200001b8	// 3680 <TK_Keymap_prog+0x724>
    365e:	e800fd67 	br      	0x312c	// 312c <TK_Keymap_prog+0x1d0>
				if(Key_mode==3)
    3662:	3d43      	cmpnei      	r5, 3
    3664:	0ad2      	bt      	0x3408	// 3408 <TK_Keymap_prog+0x4ac>
				if(offset_data1[i]>(offset1_max_tempA+10))
    3666:	8b20      	ld.h      	r1, (r3, 0x0)
    3668:	10c5      	lrw      	r6, 0x200004a4	// 367c <TK_Keymap_prog+0x720>
    366a:	7487      	sexth      	r2, r1
    366c:	8e20      	ld.h      	r1, (r6, 0x0)
    366e:	7445      	zexth      	r1, r1
    3670:	2109      	addi      	r1, 10
    3672:	6485      	cmplt      	r1, r2
    3674:	0c2f      	bf      	0x36d2	// 36d2 <TK_Keymap_prog+0x776>
    3676:	0423      	br      	0x36bc	// 36bc <TK_Keymap_prog+0x760>
    3678:	2000028c 	.long	0x2000028c
    367c:	200004a4 	.long	0x200004a4
    3680:	200001b8 	.long	0x200001b8
    3684:	20000236 	.long	0x20000236
    3688:	200003e0 	.long	0x200003e0
    368c:	20000290 	.long	0x20000290
    3690:	200002ba 	.long	0x200002ba
    3694:	200003b0 	.long	0x200003b0
    3698:	200003f1 	.long	0x200003f1
    369c:	20000398 	.long	0x20000398
    36a0:	2000025a 	.long	0x2000025a
    36a4:	200001a6 	.long	0x200001a6
    36a8:	200002a8 	.long	0x200002a8
    36ac:	200003c2 	.long	0x200003c2
    36b0:	2000021c 	.long	0x2000021c
    36b4:	200001e4 	.long	0x200001e4
    36b8:	200003c6 	.long	0x200003c6
				offset1_max_tempA=offset_data1[i];
    36bc:	8b60      	ld.h      	r3, (r3, 0x0)
    36be:	74cd      	zexth      	r3, r3
    36c0:	ae60      	st.h      	r3, (r6, 0x0)
				Key_Map1=0;
    36c2:	9867      	ld.w      	r3, (r14, 0x1c)
    36c4:	113d      	lrw      	r1, 0x200001b8	// 37b8 <TK_Keymap_prog+0x85c>
    36c6:	b160      	st.w      	r3, (r1, 0x0)
				Key_Map1|=0x01<<i;
    36c8:	3301      	movi      	r3, 1
    36ca:	9140      	ld.w      	r2, (r1, 0x0)
    36cc:	70d0      	lsl      	r3, r4
    36ce:	6cc8      	or      	r3, r2
    36d0:	b160      	st.w      	r3, (r1, 0x0)
				if((offset_data1[i]<(offset1_max_tempA-5))&&(offset_data1[i]>(offset1_max_tempB+5)))
    36d2:	9841      	ld.w      	r2, (r14, 0x4)
    36d4:	4461      	lsli      	r3, r4, 1
    36d6:	60c8      	addu      	r3, r2
    36d8:	8b40      	ld.h      	r2, (r3, 0x0)
    36da:	8e20      	ld.h      	r1, (r6, 0x0)
    36dc:	7445      	zexth      	r1, r1
    36de:	748b      	sexth      	r2, r2
    36e0:	2904      	subi      	r1, 5
    36e2:	6449      	cmplt      	r2, r1
    36e4:	0e92      	bf      	0x3408	// 3408 <TK_Keymap_prog+0x4ac>
    36e6:	11d6      	lrw      	r6, 0x200003c6	// 37bc <TK_Keymap_prog+0x860>
    36e8:	8b20      	ld.h      	r1, (r3, 0x0)
    36ea:	8e40      	ld.h      	r2, (r6, 0x0)
    36ec:	7489      	zexth      	r2, r2
    36ee:	7447      	sexth      	r1, r1
    36f0:	2204      	addi      	r2, 5
    36f2:	6449      	cmplt      	r2, r1
    36f4:	0802      	bt      	0x36f8	// 36f8 <TK_Keymap_prog+0x79c>
    36f6:	0689      	br      	0x3408	// 3408 <TK_Keymap_prog+0x4ac>
				offset1_max_tempB=offset_data1[i];
    36f8:	8b60      	ld.h      	r3, (r3, 0x0)
    36fa:	74cd      	zexth      	r3, r3
    36fc:	ae60      	st.h      	r3, (r6, 0x0)
				Key_Map1|=0x01<<i;
    36fe:	114f      	lrw      	r2, 0x200001b8	// 37b8 <TK_Keymap_prog+0x85c>
    3700:	0662      	br      	0x33c4	// 33c4 <TK_Keymap_prog+0x468>
				if(Key_mode==3)
    3702:	3d43      	cmpnei      	r5, 3
    3704:	0a8e      	bt      	0x3420	// 3420 <TK_Keymap_prog+0x4c4>
				if(offset_data2[i]>(offset2_max_tempA+10))
    3706:	114f      	lrw      	r2, 0x2000025a	// 37c0 <TK_Keymap_prog+0x864>
    3708:	8bc0      	ld.h      	r6, (r3, 0x0)
    370a:	8a00      	ld.h      	r0, (r2, 0x0)
    370c:	7401      	zexth      	r0, r0
    370e:	759b      	sexth      	r6, r6
    3710:	2009      	addi      	r0, 10
    3712:	6581      	cmplt      	r0, r6
    3714:	0c0c      	bf      	0x372c	// 372c <TK_Keymap_prog+0x7d0>
				offset2_max_tempA=offset_data2[i];
    3716:	8b60      	ld.h      	r3, (r3, 0x0)
    3718:	74cd      	zexth      	r3, r3
    371a:	aa60      	st.h      	r3, (r2, 0x0)
				Key_Map2=0;
    371c:	3300      	movi      	r3, 0
    371e:	110a      	lrw      	r0, 0x2000028c	// 37c4 <TK_Keymap_prog+0x868>
    3720:	b060      	st.w      	r3, (r0, 0x0)
				Key_Map2|=0x01<<i;
    3722:	3301      	movi      	r3, 1
    3724:	90c0      	ld.w      	r6, (r0, 0x0)
    3726:	70d0      	lsl      	r3, r4
    3728:	6cd8      	or      	r3, r6
    372a:	b060      	st.w      	r3, (r0, 0x0)
				if((offset_data2[i]<(offset2_max_tempA-5))&&(offset_data2[i]>(offset2_max_tempB+5)))
    372c:	9802      	ld.w      	r0, (r14, 0x8)
    372e:	4461      	lsli      	r3, r4, 1
    3730:	60c0      	addu      	r3, r0
    3732:	8b00      	ld.h      	r0, (r3, 0x0)
    3734:	8a40      	ld.h      	r2, (r2, 0x0)
    3736:	7489      	zexth      	r2, r2
    3738:	7403      	sexth      	r0, r0
    373a:	2a04      	subi      	r2, 5
    373c:	6481      	cmplt      	r0, r2
    373e:	0802      	bt      	0x3742	// 3742 <TK_Keymap_prog+0x7e6>
    3740:	0670      	br      	0x3420	// 3420 <TK_Keymap_prog+0x4c4>
    3742:	11c2      	lrw      	r6, 0x20000318	// 37c8 <TK_Keymap_prog+0x86c>
    3744:	8b00      	ld.h      	r0, (r3, 0x0)
    3746:	8e40      	ld.h      	r2, (r6, 0x0)
    3748:	7489      	zexth      	r2, r2
    374a:	7403      	sexth      	r0, r0
    374c:	2204      	addi      	r2, 5
    374e:	6409      	cmplt      	r2, r0
    3750:	0802      	bt      	0x3754	// 3754 <TK_Keymap_prog+0x7f8>
    3752:	0667      	br      	0x3420	// 3420 <TK_Keymap_prog+0x4c4>
				offset2_max_tempB=offset_data2[i];
    3754:	8b60      	ld.h      	r3, (r3, 0x0)
    3756:	74cd      	zexth      	r3, r3
    3758:	ae60      	st.h      	r3, (r6, 0x0)
				Key_Map2|=0x01<<i;
    375a:	105b      	lrw      	r2, 0x2000028c	// 37c4 <TK_Keymap_prog+0x868>
    375c:	e800fdea 	br      	0x3330	// 3330 <TK_Keymap_prog+0x3d4>
				if(Key_mode==3)
    3760:	3d43      	cmpnei      	r5, 3
    3762:	0ae8      	bt      	0x3532	// 3532 <TK_Keymap_prog+0x5d6>
				if(offset_data2[i]>(offset2_max_tempA+10))
    3764:	10d7      	lrw      	r6, 0x2000025a	// 37c0 <TK_Keymap_prog+0x864>
    3766:	8be0      	ld.h      	r7, (r3, 0x0)
    3768:	8e20      	ld.h      	r1, (r6, 0x0)
    376a:	7445      	zexth      	r1, r1
    376c:	75df      	sexth      	r7, r7
    376e:	2109      	addi      	r1, 10
    3770:	65c5      	cmplt      	r1, r7
    3772:	0c0b      	bf      	0x3788	// 3788 <TK_Keymap_prog+0x82c>
				offset2_max_tempA=offset_data2[i];
    3774:	8b60      	ld.h      	r3, (r3, 0x0)
				Key_Map2=0;
    3776:	1034      	lrw      	r1, 0x2000028c	// 37c4 <TK_Keymap_prog+0x868>
				offset2_max_tempA=offset_data2[i];
    3778:	74cd      	zexth      	r3, r3
    377a:	ae60      	st.h      	r3, (r6, 0x0)
				Key_Map2=0;
    377c:	b140      	st.w      	r2, (r1, 0x0)
				Key_Map2|=0x01<<i;
    377e:	3301      	movi      	r3, 1
    3780:	9140      	ld.w      	r2, (r1, 0x0)
    3782:	70d0      	lsl      	r3, r4
    3784:	6cc8      	or      	r3, r2
    3786:	b160      	st.w      	r3, (r1, 0x0)
				if((offset_data2[i]<(offset2_max_tempA-5))&&(offset_data2[i]>(offset2_max_tempB+5)))
    3788:	9842      	ld.w      	r2, (r14, 0x8)
    378a:	4461      	lsli      	r3, r4, 1
    378c:	60c8      	addu      	r3, r2
    378e:	8b40      	ld.h      	r2, (r3, 0x0)
    3790:	8e20      	ld.h      	r1, (r6, 0x0)
    3792:	7445      	zexth      	r1, r1
    3794:	748b      	sexth      	r2, r2
    3796:	2904      	subi      	r1, 5
    3798:	6449      	cmplt      	r2, r1
    379a:	0ecc      	bf      	0x3532	// 3532 <TK_Keymap_prog+0x5d6>
    379c:	10cb      	lrw      	r6, 0x20000318	// 37c8 <TK_Keymap_prog+0x86c>
    379e:	8b20      	ld.h      	r1, (r3, 0x0)
    37a0:	8e40      	ld.h      	r2, (r6, 0x0)
    37a2:	7489      	zexth      	r2, r2
    37a4:	7447      	sexth      	r1, r1
    37a6:	2204      	addi      	r2, 5
    37a8:	6449      	cmplt      	r2, r1
    37aa:	0ec4      	bf      	0x3532	// 3532 <TK_Keymap_prog+0x5d6>
				offset2_max_tempB=offset_data2[i];
    37ac:	8b60      	ld.h      	r3, (r3, 0x0)
    37ae:	74cd      	zexth      	r3, r3
    37b0:	ae60      	st.h      	r3, (r6, 0x0)
				Key_Map2|=0x01<<i;
    37b2:	1045      	lrw      	r2, 0x2000028c	// 37c4 <TK_Keymap_prog+0x868>
    37b4:	069f      	br      	0x34f2	// 34f2 <TK_Keymap_prog+0x596>
    37b6:	0000      	bkpt
    37b8:	200001b8 	.long	0x200001b8
    37bc:	200003c6 	.long	0x200003c6
    37c0:	2000025a 	.long	0x2000025a
    37c4:	2000028c 	.long	0x2000028c
    37c8:	20000318 	.long	0x20000318

Disassembly of section .text.TK_overflow_predict:

000037cc <TK_overflow_predict>:
/****************************************************
//TK overflow prediction
//
*****************************************************/
void TK_overflow_predict(void)
{
    37cc:	14d4      	push      	r4-r7, r15
    37ce:	1422      	subi      	r14, r14, 8
	unsigned char i;
	unsigned long tk_div_pow[17];
	if(tk_overflow_en==1)
    37d0:	113c      	lrw      	r1, 0x20000068	// 38c0 <TK_overflow_predict+0xf4>
    37d2:	8164      	ld.b      	r3, (r1, 0x4)
    37d4:	3b41      	cmpnei      	r3, 1
    37d6:	0823      	bt      	0x381c	// 381c <TK_overflow_predict+0x50>
	{
	TK_ovrdect_cnt++;
    37d8:	115b      	lrw      	r2, 0x20000392	// 38c4 <TK_overflow_predict+0xf8>
    37da:	8260      	ld.b      	r3, (r2, 0x0)
    37dc:	2300      	addi      	r3, 1
    37de:	74cc      	zextb      	r3, r3
    37e0:	a260      	st.b      	r3, (r2, 0x0)
	if(TK_ovrdect_cnt>Base_Speed)
    37e2:	8260      	ld.b      	r3, (r2, 0x0)
    37e4:	1119      	lrw      	r0, 0x200000e0	// 38c8 <TK_overflow_predict+0xfc>
    37e6:	8000      	ld.b      	r0, (r0, 0x0)
    37e8:	64c0      	cmphs      	r0, r3
    37ea:	0819      	bt      	0x381c	// 381c <TK_overflow_predict+0x50>
	{
		TK_ovrdect_cnt=0;
    37ec:	3300      	movi      	r3, 0
    37ee:	a260      	st.b      	r3, (r2, 0x0)
//-------------------Monitoring the maximum sampling------------------
	if(tk_overflow_f==0)
    37f0:	11b7      	lrw      	r5, 0x200002a1	// 38cc <TK_overflow_predict+0x100>
    37f2:	8560      	ld.b      	r3, (r5, 0x0)
    37f4:	3b40      	cmpnei      	r3, 0
    37f6:	0c15      	bf      	0x3820	// 3820 <TK_overflow_predict+0x54>
			}
		}
		}
	}
	}
	if(tk_overflow_f==1)
    37f8:	8560      	ld.b      	r3, (r5, 0x0)
    37fa:	3b41      	cmpnei      	r3, 1
    37fc:	0810      	bt      	0x381c	// 381c <TK_overflow_predict+0x50>
	{
		tk_overflow_f=0;
    37fe:	3300      	movi      	r3, 0
    3800:	a560      	st.b      	r3, (r5, 0x0)
		TKEY->TCH_CON1=0X00;
    3802:	3200      	movi      	r2, 0
    3804:	1173      	lrw      	r3, 0x20000058	// 38d0 <TK_overflow_predict+0x104>
		for(i=0;i<tk_num;i++)
    3806:	1114      	lrw      	r0, 0x200003c4	// 38d4 <TK_overflow_predict+0x108>
			{
			TKEYBUF->TCH_SEQCON[i]|=TK_icon[tk_seque[i]]<<20;
    3808:	11b4      	lrw      	r5, 0x20000408	// 38d8 <TK_overflow_predict+0x10c>
    380a:	11d5      	lrw      	r6, 0x200000ba	// 38dc <TK_overflow_predict+0x110>
		TKEY->TCH_CON1=0X00;
    380c:	9360      	ld.w      	r3, (r3, 0x0)
    380e:	b342      	st.w      	r2, (r3, 0x8)
			TKEYBUF->TCH_SEQCON[i]|=TK_icon[tk_seque[i]]<<20;
    3810:	1174      	lrw      	r3, 0x20000054	// 38e0 <TK_overflow_predict+0x114>
    3812:	9380      	ld.w      	r4, (r3, 0x0)
		for(i=0;i<tk_num;i++)
    3814:	3300      	movi      	r3, 0
    3816:	8040      	ld.b      	r2, (r0, 0x0)
    3818:	648c      	cmphs      	r3, r2
    381a:	0c44      	bf      	0x38a2	// 38a2 <TK_overflow_predict+0xd6>
			}
	}
	}
	}
}
    381c:	1402      	addi      	r14, r14, 8
    381e:	1494      	pop      	r4-r7, r15
		tk_div_pow[i]=pow(2, tk_div[i]);
    3820:	5976      	addi      	r3, r1, 6
	if(tk_overflow_f==0)
    3822:	3600      	movi      	r6, 0
		if(((TK_IO_ENABLE >> i) & 1) == 1)
    3824:	11f0      	lrw      	r7, 0x200000e4	// 38e4 <TK_overflow_predict+0x118>
		tk_div_pow[i]=pow(2, tk_div[i]);
    3826:	b860      	st.w      	r3, (r14, 0x0)
		if(((TK_IO_ENABLE >> i) & 1) == 1)
    3828:	9760      	ld.w      	r3, (r7, 0x0)
    382a:	70d9      	lsr      	r3, r6
    382c:	3201      	movi      	r2, 1
    382e:	68c8      	and      	r3, r2
    3830:	3b40      	cmpnei      	r3, 0
    3832:	0c34      	bf      	0x389a	// 389a <TK_overflow_predict+0xce>
    3834:	4681      	lsli      	r4, r6, 1
		tk_div_pow[i]=pow(2, tk_div[i]);
    3836:	9860      	ld.w      	r3, (r14, 0x0)
    3838:	60d0      	addu      	r3, r4
    383a:	8b00      	ld.h      	r0, (r3, 0x0)
    383c:	e3ffeeb2 	bsr      	0x15a0	// 15a0 <__floatunsidf>
    3840:	6cc7      	mov      	r3, r1
    3842:	3180      	movi      	r1, 128
    3844:	6c83      	mov      	r2, r0
    3846:	4137      	lsli      	r1, r1, 23
    3848:	3000      	movi      	r0, 0
    384a:	e3ffe4b5 	bsr      	0x1b4	// 1b4 <__GI_pow>
		tk_sampling_max[i]=(TK_senprd[i]*16+15)*tk_div_pow[i];
    384e:	1167      	lrw      	r3, 0x200000ea	// 38e8 <TK_overflow_predict+0x11c>
    3850:	60d0      	addu      	r3, r4
    3852:	8b60      	ld.h      	r3, (r3, 0x0)
    3854:	4364      	lsli      	r3, r3, 4
    3856:	230e      	addi      	r3, 15
    3858:	b861      	st.w      	r3, (r14, 0x4)
		tk_div_pow[i]=pow(2, tk_div[i]);
    385a:	e3ffea5b 	bsr      	0xd10	// d10 <__fixunsdfsi>
		tk_sampling_max[i]=(TK_senprd[i]*16+15)*tk_div_pow[i];
    385e:	9861      	ld.w      	r3, (r14, 0x4)
    3860:	7cc0      	mult      	r3, r0
    3862:	1143      	lrw      	r2, 0x2000043c	// 38ec <TK_overflow_predict+0x120>
    3864:	740d      	zexth      	r0, r3
    3866:	6090      	addu      	r2, r4
		if(sampling_data0[i]>(tk_sampling_max[i]*95/100))
    3868:	1162      	lrw      	r3, 0x200004a6	// 38f0 <TK_overflow_predict+0x124>
    386a:	60d0      	addu      	r3, r4
		tk_sampling_max[i]=(TK_senprd[i]*16+15)*tk_div_pow[i];
    386c:	aa00      	st.h      	r0, (r2, 0x0)
		if(sampling_data0[i]>(tk_sampling_max[i]*95/100))
    386e:	8b60      	ld.h      	r3, (r3, 0x0)
    3870:	8a00      	ld.h      	r0, (r2, 0x0)
    3872:	7401      	zexth      	r0, r0
    3874:	325f      	movi      	r2, 95
    3876:	74cd      	zexth      	r3, r3
    3878:	7c08      	mult      	r0, r2
    387a:	3164      	movi      	r1, 100
    387c:	b861      	st.w      	r3, (r14, 0x4)
    387e:	e3fffa99 	bsr      	0x2db0	// 2db0 <__divsi3>
    3882:	9861      	ld.w      	r3, (r14, 0x4)
    3884:	64c1      	cmplt      	r0, r3
    3886:	0c0a      	bf      	0x389a	// 389a <TK_overflow_predict+0xce>
    3888:	1075      	lrw      	r3, 0x200000ba	// 38dc <TK_overflow_predict+0x110>
    388a:	610c      	addu      	r4, r3
			if(TK_icon[i]<7)					
    388c:	8c60      	ld.h      	r3, (r4, 0x0)
    388e:	3b06      	cmphsi      	r3, 7
    3890:	0805      	bt      	0x389a	// 389a <TK_overflow_predict+0xce>
			TK_icon[i]++;
    3892:	2300      	addi      	r3, 1
    3894:	ac60      	st.h      	r3, (r4, 0x0)
			tk_overflow_f=1;					//Modify this parameter once it is detected
    3896:	3301      	movi      	r3, 1
    3898:	a560      	st.b      	r3, (r5, 0x0)
    389a:	2600      	addi      	r6, 1
	for(i=0;i<17;i++)
    389c:	3e51      	cmpnei      	r6, 17
    389e:	0bc5      	bt      	0x3828	// 3828 <TK_overflow_predict+0x5c>
    38a0:	07ac      	br      	0x37f8	// 37f8 <TK_overflow_predict+0x2c>
			TKEYBUF->TCH_SEQCON[i]|=TK_icon[tk_seque[i]]<<20;
    38a2:	5d4c      	addu      	r2, r5, r3
    38a4:	8240      	ld.b      	r2, (r2, 0x0)
    38a6:	4241      	lsli      	r2, r2, 1
    38a8:	4322      	lsli      	r1, r3, 2
    38aa:	6098      	addu      	r2, r6
    38ac:	6050      	addu      	r1, r4
    38ae:	8a40      	ld.h      	r2, (r2, 0x0)
    38b0:	91f2      	ld.w      	r7, (r1, 0x48)
    38b2:	4254      	lsli      	r2, r2, 20
    38b4:	6c9c      	or      	r2, r7
		for(i=0;i<tk_num;i++)
    38b6:	2300      	addi      	r3, 1
			TKEYBUF->TCH_SEQCON[i]|=TK_icon[tk_seque[i]]<<20;
    38b8:	b152      	st.w      	r2, (r1, 0x48)
		for(i=0;i<tk_num;i++)
    38ba:	74cc      	zextb      	r3, r3
    38bc:	07ad      	br      	0x3816	// 3816 <TK_overflow_predict+0x4a>
    38be:	0000      	bkpt
    38c0:	20000068 	.long	0x20000068
    38c4:	20000392 	.long	0x20000392
    38c8:	200000e0 	.long	0x200000e0
    38cc:	200002a1 	.long	0x200002a1
    38d0:	20000058 	.long	0x20000058
    38d4:	200003c4 	.long	0x200003c4
    38d8:	20000408 	.long	0x20000408
    38dc:	200000ba 	.long	0x200000ba
    38e0:	20000054 	.long	0x20000054
    38e4:	200000e4 	.long	0x200000e4
    38e8:	200000ea 	.long	0x200000ea
    38ec:	2000043c 	.long	0x2000043c
    38f0:	200004a6 	.long	0x200004a6

Disassembly of section .text.TK_Baseline_tracking:

000038f4 <TK_Baseline_tracking>:
/****************************************************
//TK baseline tracking
*****************************************************/
void TK_Baseline_tracking(void)
{
    38f4:	14c4      	push      	r4-r7
    38f6:	1422      	subi      	r14, r14, 8
	unsigned char i;
	TK_track_cnt++;
    38f8:	0149      	lrw      	r2, 0x20000312	// 3c50 <TK_Baseline_tracking+0x35c>
    38fa:	8260      	ld.b      	r3, (r2, 0x0)
    38fc:	2300      	addi      	r3, 1
    38fe:	74cc      	zextb      	r3, r3
    3900:	a260      	st.b      	r3, (r2, 0x0)
	if (TK_track_cnt>=Base_Speed)
    3902:	8260      	ld.b      	r3, (r2, 0x0)
    3904:	012b      	lrw      	r1, 0x200000e0	// 3c54 <TK_Baseline_tracking+0x360>
    3906:	8120      	ld.b      	r1, (r1, 0x0)
    3908:	644c      	cmphs      	r3, r1
    390a:	0c10      	bf      	0x392a	// 392a <TK_Baseline_tracking+0x36>
	{
		TK_track_cnt=0;
    390c:	3300      	movi      	r3, 0
    390e:	a260      	st.b      	r3, (r2, 0x0)
//==================Key_Map0====================
		if(Key_Map0==0)
    3910:	016d      	lrw      	r3, 0x2000021c	// 3c58 <TK_Baseline_tracking+0x364>
    3912:	9360      	ld.w      	r3, (r3, 0x0)
    3914:	3b40      	cmpnei      	r3, 0
    3916:	0c0c      	bf      	0x392e	// 392e <TK_Baseline_tracking+0x3a>
					baseline_data0[i]+=2;
				}
			}
		}
//==================Key_Map1====================
		if(Key_Map1==0)
    3918:	016e      	lrw      	r3, 0x200001b8	// 3c5c <TK_Baseline_tracking+0x368>
    391a:	9360      	ld.w      	r3, (r3, 0x0)
    391c:	3b40      	cmpnei      	r3, 0
    391e:	0cc6      	bf      	0x3aaa	// 3aaa <TK_Baseline_tracking+0x1b6>
					baseline_data1[i]+=2;
				}
			}
		}
//==================Key_Map2====================
			if(Key_Map2==0)
    3920:	016f      	lrw      	r3, 0x2000028c	// 3c60 <TK_Baseline_tracking+0x36c>
    3922:	9360      	ld.w      	r3, (r3, 0x0)
    3924:	3b40      	cmpnei      	r3, 0
    3926:	0802      	bt      	0x392a	// 392a <TK_Baseline_tracking+0x36>
    3928:	057f      	br      	0x3c26	// 3c26 <TK_Baseline_tracking+0x332>
				}
			}
		}

	}
}
    392a:	1402      	addi      	r14, r14, 8
    392c:	1484      	pop      	r4-r7
				if((offset_data0[i]<0)&&((baseline_data0[i]-sampling_data0[i])>=(TK_Triggerlevel[i]))&&((baseline_data0[i]-sampling_data0[i])<(TK_Triggerlevel[i]*3)))
    392e:	0131      	lrw      	r1, 0x20000238	// 3c64 <TK_Baseline_tracking+0x370>
    3930:	6dc7      	mov      	r7, r1
    3932:	b820      	st.w      	r1, (r14, 0x0)
		if(Key_Map0==0)
    3934:	3200      	movi      	r2, 0
    3936:	0172      	lrw      	r3, 0x20000112	// 3c68 <TK_Baseline_tracking+0x374>
				if((offset_data0[i]<0)&&((baseline_data0[i]-sampling_data0[i])>=(TK_Triggerlevel[i]))&&((baseline_data0[i]-sampling_data0[i])<(TK_Triggerlevel[i]*3)))
    3938:	0132      	lrw      	r1, 0x20000184	// 3c6c <TK_Baseline_tracking+0x378>
    393a:	4201      	lsli      	r0, r2, 1
    393c:	9880      	ld.w      	r4, (r14, 0x0)
    393e:	6100      	addu      	r4, r0
    3940:	8c80      	ld.h      	r4, (r4, 0x0)
    3942:	7513      	sexth      	r4, r4
    3944:	3cdf      	btsti      	r4, 31
    3946:	0c27      	bf      	0x3994	// 3994 <TK_Baseline_tracking+0xa0>
    3948:	01b5      	lrw      	r5, 0x200004a6	// 3c70 <TK_Baseline_tracking+0x37c>
    394a:	5980      	addu      	r4, r1, r0
    394c:	6014      	addu      	r0, r5
    394e:	b881      	st.w      	r4, (r14, 0x4)
    3950:	8c80      	ld.h      	r4, (r4, 0x0)
    3952:	88c0      	ld.h      	r6, (r0, 0x0)
    3954:	7511      	zexth      	r4, r4
    3956:	7599      	zexth      	r6, r6
    3958:	8ba0      	ld.h      	r5, (r3, 0x0)
    395a:	611a      	subu      	r4, r6
    395c:	6551      	cmplt      	r4, r5
    395e:	081b      	bt      	0x3994	// 3994 <TK_Baseline_tracking+0xa0>
    3960:	9881      	ld.w      	r4, (r14, 0x4)
    3962:	8c80      	ld.h      	r4, (r4, 0x0)
    3964:	8800      	ld.h      	r0, (r0, 0x0)
    3966:	7511      	zexth      	r4, r4
    3968:	7401      	zexth      	r0, r0
    396a:	5c01      	subu      	r0, r4, r0
    396c:	4581      	lsli      	r4, r5, 1
    396e:	6150      	addu      	r5, r4
    3970:	6541      	cmplt      	r0, r5
    3972:	0c11      	bf      	0x3994	// 3994 <TK_Baseline_tracking+0xa0>
					TK_Negtive_build0[i]++;
    3974:	019f      	lrw      	r4, 0x200003c8	// 3c74 <TK_Baseline_tracking+0x380>
    3976:	6108      	addu      	r4, r2
    3978:	8400      	ld.b      	r0, (r4, 0x0)
    397a:	2000      	addi      	r0, 1
    397c:	7400      	zextb      	r0, r0
    397e:	a400      	st.b      	r0, (r4, 0x0)
					if(TK_Negtive_build0[i]>neg_build_bounce)			//The default value is 10, which can be adjusted for special applications
    3980:	0201      	lrw      	r0, 0x20000088	// 3c78 <TK_Baseline_tracking+0x384>
    3982:	84a0      	ld.b      	r5, (r4, 0x0)
    3984:	8008      	ld.b      	r0, (r0, 0x8)
    3986:	6540      	cmphs      	r0, r5
    3988:	0806      	bt      	0x3994	// 3994 <TK_Baseline_tracking+0xa0>
					base_update_f=1;
    398a:	0202      	lrw      	r0, 0x200002b9	// 3c7c <TK_Baseline_tracking+0x388>
    398c:	3501      	movi      	r5, 1
    398e:	a0a0      	st.b      	r5, (r0, 0x0)
					TK_Negtive_build0[i]=0;
    3990:	3000      	movi      	r0, 0
    3992:	a400      	st.b      	r0, (r4, 0x0)
				if((offset_data0[i]>0)&&(sampling_data0[i]-baseline_data0[i])>=(TK_Triggerlevel[i]*4))  //force rebuid enable when MultiTimes_Filter>=4
    3994:	4201      	lsli      	r0, r2, 1
    3996:	5f80      	addu      	r4, r7, r0
    3998:	8c80      	ld.h      	r4, (r4, 0x0)
    399a:	7513      	sexth      	r4, r4
    399c:	3c20      	cmplti      	r4, 1
    399e:	086f      	bt      	0x3a7c	// 3a7c <TK_Baseline_tracking+0x188>
    39a0:	028b      	lrw      	r4, 0x200004a6	// 3c70 <TK_Baseline_tracking+0x37c>
    39a2:	6100      	addu      	r4, r0
    39a4:	59a0      	addu      	r5, r1, r0
    39a6:	8c80      	ld.h      	r4, (r4, 0x0)
    39a8:	8da0      	ld.h      	r5, (r5, 0x0)
    39aa:	7555      	zexth      	r5, r5
    39ac:	7511      	zexth      	r4, r4
    39ae:	6116      	subu      	r4, r5
    39b0:	8ba0      	ld.h      	r5, (r3, 0x0)
    39b2:	45a2      	lsli      	r5, r5, 2
    39b4:	6551      	cmplt      	r4, r5
    39b6:	0863      	bt      	0x3a7c	// 3a7c <TK_Baseline_tracking+0x188>
					TK_Postive_build0[i]++;
    39b8:	028d      	lrw      	r4, 0x2000033c	// 3c80 <TK_Baseline_tracking+0x38c>
    39ba:	6108      	addu      	r4, r2
    39bc:	84a0      	ld.b      	r5, (r4, 0x0)
    39be:	2500      	addi      	r5, 1
    39c0:	7554      	zextb      	r5, r5
    39c2:	a4a0      	st.b      	r5, (r4, 0x0)
					if(TK_Postive_build0[i]>pos_build_bounce)			//The default value is 10, which can be adjusted for special applications
    39c4:	02b2      	lrw      	r5, 0x20000088	// 3c78 <TK_Baseline_tracking+0x384>
    39c6:	84c0      	ld.b      	r6, (r4, 0x0)
    39c8:	85a9      	ld.b      	r5, (r5, 0x9)
    39ca:	6594      	cmphs      	r5, r6
    39cc:	0806      	bt      	0x39d8	// 39d8 <TK_Baseline_tracking+0xe4>
					base_update_f=1;
    39ce:	02b3      	lrw      	r5, 0x200002b9	// 3c7c <TK_Baseline_tracking+0x388>
    39d0:	3601      	movi      	r6, 1
    39d2:	a5c0      	st.b      	r6, (r5, 0x0)
					TK_Postive_build0[i]=0;
    39d4:	3500      	movi      	r5, 0
    39d6:	a4a0      	st.b      	r5, (r4, 0x0)
				if((offset_data0[i]<0)&&((baseline_data0[i]-sampling_data0[i])<TK_Triggerlevel[i]))
    39d8:	5f80      	addu      	r4, r7, r0
    39da:	8c80      	ld.h      	r4, (r4, 0x0)
    39dc:	7513      	sexth      	r4, r4
    39de:	3cdf      	btsti      	r4, 31
    39e0:	0c10      	bf      	0x3a00	// 3a00 <TK_Baseline_tracking+0x10c>
    39e2:	02db      	lrw      	r6, 0x200004a6	// 3c70 <TK_Baseline_tracking+0x37c>
    39e4:	59a0      	addu      	r5, r1, r0
    39e6:	6180      	addu      	r6, r0
    39e8:	8d80      	ld.h      	r4, (r5, 0x0)
    39ea:	8ec0      	ld.h      	r6, (r6, 0x0)
    39ec:	7599      	zexth      	r6, r6
    39ee:	7511      	zexth      	r4, r4
    39f0:	611a      	subu      	r4, r6
    39f2:	8bc0      	ld.h      	r6, (r3, 0x0)
    39f4:	6591      	cmplt      	r4, r6
    39f6:	0c05      	bf      	0x3a00	// 3a00 <TK_Baseline_tracking+0x10c>
					baseline_data0[i]-=1;
    39f8:	8d80      	ld.h      	r4, (r5, 0x0)
    39fa:	2c00      	subi      	r4, 1
    39fc:	7511      	zexth      	r4, r4
    39fe:	ad80      	st.h      	r4, (r5, 0x0)
				if((offset_data0[i]<0)&&((baseline_data0[i]-sampling_data0[i])>=(TK_Triggerlevel[i]/2)))
    3a00:	5f80      	addu      	r4, r7, r0
    3a02:	8c80      	ld.h      	r4, (r4, 0x0)
    3a04:	7513      	sexth      	r4, r4
    3a06:	3cdf      	btsti      	r4, 31
    3a08:	0c11      	bf      	0x3a2a	// 3a2a <TK_Baseline_tracking+0x136>
    3a0a:	03c5      	lrw      	r6, 0x200004a6	// 3c70 <TK_Baseline_tracking+0x37c>
    3a0c:	59a0      	addu      	r5, r1, r0
    3a0e:	6180      	addu      	r6, r0
    3a10:	8d80      	ld.h      	r4, (r5, 0x0)
    3a12:	8ec0      	ld.h      	r6, (r6, 0x0)
    3a14:	7599      	zexth      	r6, r6
    3a16:	7511      	zexth      	r4, r4
    3a18:	611a      	subu      	r4, r6
    3a1a:	8bc0      	ld.h      	r6, (r3, 0x0)
    3a1c:	4ec1      	lsri      	r6, r6, 1
    3a1e:	6591      	cmplt      	r4, r6
    3a20:	0805      	bt      	0x3a2a	// 3a2a <TK_Baseline_tracking+0x136>
					baseline_data0[i]-=2;
    3a22:	8d80      	ld.h      	r4, (r5, 0x0)
    3a24:	2c01      	subi      	r4, 2
    3a26:	7511      	zexth      	r4, r4
    3a28:	ad80      	st.h      	r4, (r5, 0x0)
				if ((offset_data0[i]>0)&&(offset_data0[i]<(TK_Triggerlevel[i]/2)))
    3a2a:	5fa0      	addu      	r5, r7, r0
    3a2c:	8d80      	ld.h      	r4, (r5, 0x0)
    3a2e:	7513      	sexth      	r4, r4
    3a30:	3c20      	cmplti      	r4, 1
    3a32:	080c      	bt      	0x3a4a	// 3a4a <TK_Baseline_tracking+0x156>
    3a34:	8da0      	ld.h      	r5, (r5, 0x0)
    3a36:	8b80      	ld.h      	r4, (r3, 0x0)
    3a38:	7557      	sexth      	r5, r5
    3a3a:	4c81      	lsri      	r4, r4, 1
    3a3c:	6515      	cmplt      	r5, r4
    3a3e:	0c06      	bf      	0x3a4a	// 3a4a <TK_Baseline_tracking+0x156>
					baseline_data0[i]+=1;
    3a40:	59a0      	addu      	r5, r1, r0
    3a42:	8d80      	ld.h      	r4, (r5, 0x0)
    3a44:	2400      	addi      	r4, 1
    3a46:	7511      	zexth      	r4, r4
    3a48:	ad80      	st.h      	r4, (r5, 0x0)
				if ((offset_data0[i]>0)&&(offset_data0[i]<TK_Triggerlevel[i])&&(offset_data0[i]>=(TK_Triggerlevel[i]/2)))
    3a4a:	5fa0      	addu      	r5, r7, r0
    3a4c:	8d80      	ld.h      	r4, (r5, 0x0)
    3a4e:	7513      	sexth      	r4, r4
    3a50:	3c20      	cmplti      	r4, 1
    3a52:	0810      	bt      	0x3a72	// 3a72 <TK_Baseline_tracking+0x17e>
    3a54:	8dc0      	ld.h      	r6, (r5, 0x0)
    3a56:	759b      	sexth      	r6, r6
    3a58:	8b80      	ld.h      	r4, (r3, 0x0)
    3a5a:	6519      	cmplt      	r6, r4
    3a5c:	0c0b      	bf      	0x3a72	// 3a72 <TK_Baseline_tracking+0x17e>
    3a5e:	8da0      	ld.h      	r5, (r5, 0x0)
    3a60:	7557      	sexth      	r5, r5
    3a62:	4c81      	lsri      	r4, r4, 1
    3a64:	6515      	cmplt      	r5, r4
    3a66:	0806      	bt      	0x3a72	// 3a72 <TK_Baseline_tracking+0x17e>
					baseline_data0[i]+=2;
    3a68:	6004      	addu      	r0, r1
    3a6a:	8880      	ld.h      	r4, (r0, 0x0)
    3a6c:	2401      	addi      	r4, 2
    3a6e:	7511      	zexth      	r4, r4
    3a70:	a880      	st.h      	r4, (r0, 0x0)
    3a72:	2200      	addi      	r2, 1
			for(i=0;i<17;i++)
    3a74:	3a51      	cmpnei      	r2, 17
    3a76:	2301      	addi      	r3, 2
    3a78:	0b61      	bt      	0x393a	// 393a <TK_Baseline_tracking+0x46>
    3a7a:	074f      	br      	0x3918	// 3918 <TK_Baseline_tracking+0x24>
				else if((offset_data0[i]<0)&&((baseline_data0[i]-sampling_data0[i])>=(TK_Triggerlevel[i]*3)))
    3a7c:	5f80      	addu      	r4, r7, r0
    3a7e:	8c80      	ld.h      	r4, (r4, 0x0)
    3a80:	7513      	sexth      	r4, r4
    3a82:	3cdf      	btsti      	r4, 31
    3a84:	0faa      	bf      	0x39d8	// 39d8 <TK_Baseline_tracking+0xe4>
    3a86:	13bb      	lrw      	r5, 0x200004a6	// 3c70 <TK_Baseline_tracking+0x37c>
    3a88:	5980      	addu      	r4, r1, r0
    3a8a:	6140      	addu      	r5, r0
    3a8c:	8c80      	ld.h      	r4, (r4, 0x0)
    3a8e:	8da0      	ld.h      	r5, (r5, 0x0)
    3a90:	7555      	zexth      	r5, r5
    3a92:	8bc0      	ld.h      	r6, (r3, 0x0)
    3a94:	7511      	zexth      	r4, r4
    3a96:	6116      	subu      	r4, r5
    3a98:	46a1      	lsli      	r5, r6, 1
    3a9a:	6158      	addu      	r5, r6
    3a9c:	6551      	cmplt      	r4, r5
    3a9e:	0b9d      	bt      	0x39d8	// 39d8 <TK_Baseline_tracking+0xe4>
					base_update_f=1;
    3aa0:	1397      	lrw      	r4, 0x200002b9	// 3c7c <TK_Baseline_tracking+0x388>
    3aa2:	3501      	movi      	r5, 1
    3aa4:	a4a0      	st.b      	r5, (r4, 0x0)
					nop;
    3aa6:	6c03      	mov      	r0, r0
    3aa8:	0798      	br      	0x39d8	// 39d8 <TK_Baseline_tracking+0xe4>
				if((offset_data1[i]<0)&&((baseline_data1[i]-sampling_data1[i])>=(TK_Triggerlevel[i]))&&((baseline_data1[i]-sampling_data1[i])<(TK_Triggerlevel[i]*3)))
    3aaa:	1337      	lrw      	r1, 0x20000370	// 3c84 <TK_Baseline_tracking+0x390>
    3aac:	6dc7      	mov      	r7, r1
    3aae:	b820      	st.w      	r1, (r14, 0x0)
		if(Key_Map1==0)
    3ab0:	3200      	movi      	r2, 0
    3ab2:	136e      	lrw      	r3, 0x20000112	// 3c68 <TK_Baseline_tracking+0x374>
				if((offset_data1[i]<0)&&((baseline_data1[i]-sampling_data1[i])>=(TK_Triggerlevel[i]))&&((baseline_data1[i]-sampling_data1[i])<(TK_Triggerlevel[i]*3)))
    3ab4:	1335      	lrw      	r1, 0x2000031a	// 3c88 <TK_Baseline_tracking+0x394>
    3ab6:	4201      	lsli      	r0, r2, 1
    3ab8:	9880      	ld.w      	r4, (r14, 0x0)
    3aba:	6100      	addu      	r4, r0
    3abc:	8c80      	ld.h      	r4, (r4, 0x0)
    3abe:	7513      	sexth      	r4, r4
    3ac0:	3cdf      	btsti      	r4, 31
    3ac2:	0c27      	bf      	0x3b10	// 3b10 <TK_Baseline_tracking+0x21c>
    3ac4:	13b2      	lrw      	r5, 0x20000260	// 3c8c <TK_Baseline_tracking+0x398>
    3ac6:	5980      	addu      	r4, r1, r0
    3ac8:	6014      	addu      	r0, r5
    3aca:	b881      	st.w      	r4, (r14, 0x4)
    3acc:	8c80      	ld.h      	r4, (r4, 0x0)
    3ace:	88c0      	ld.h      	r6, (r0, 0x0)
    3ad0:	7511      	zexth      	r4, r4
    3ad2:	7599      	zexth      	r6, r6
    3ad4:	8ba0      	ld.h      	r5, (r3, 0x0)
    3ad6:	611a      	subu      	r4, r6
    3ad8:	6551      	cmplt      	r4, r5
    3ada:	081b      	bt      	0x3b10	// 3b10 <TK_Baseline_tracking+0x21c>
    3adc:	9881      	ld.w      	r4, (r14, 0x4)
    3ade:	8c80      	ld.h      	r4, (r4, 0x0)
    3ae0:	8800      	ld.h      	r0, (r0, 0x0)
    3ae2:	7511      	zexth      	r4, r4
    3ae4:	7401      	zexth      	r0, r0
    3ae6:	5c01      	subu      	r0, r4, r0
    3ae8:	4581      	lsli      	r4, r5, 1
    3aea:	6150      	addu      	r5, r4
    3aec:	6541      	cmplt      	r0, r5
    3aee:	0c11      	bf      	0x3b10	// 3b10 <TK_Baseline_tracking+0x21c>
					TK_Negtive_build1[i]++;
    3af0:	1388      	lrw      	r4, 0x200003b0	// 3c90 <TK_Baseline_tracking+0x39c>
    3af2:	6108      	addu      	r4, r2
    3af4:	8400      	ld.b      	r0, (r4, 0x0)
    3af6:	2000      	addi      	r0, 1
    3af8:	7400      	zextb      	r0, r0
    3afa:	a400      	st.b      	r0, (r4, 0x0)
					if(TK_Negtive_build1[i]>neg_build_bounce)
    3afc:	121f      	lrw      	r0, 0x20000088	// 3c78 <TK_Baseline_tracking+0x384>
    3afe:	84a0      	ld.b      	r5, (r4, 0x0)
    3b00:	8008      	ld.b      	r0, (r0, 0x8)
    3b02:	6540      	cmphs      	r0, r5
    3b04:	0806      	bt      	0x3b10	// 3b10 <TK_Baseline_tracking+0x21c>
					base_update_f=1;
    3b06:	121e      	lrw      	r0, 0x200002b9	// 3c7c <TK_Baseline_tracking+0x388>
    3b08:	3501      	movi      	r5, 1
    3b0a:	a0a0      	st.b      	r5, (r0, 0x0)
					TK_Negtive_build1[i]=0;
    3b0c:	3000      	movi      	r0, 0
    3b0e:	a400      	st.b      	r0, (r4, 0x0)
				if((offset_data1[i]>0)&&(sampling_data1[i]-baseline_data1[i])>=(TK_Triggerlevel[i]*4))
    3b10:	4201      	lsli      	r0, r2, 1
    3b12:	5f80      	addu      	r4, r7, r0
    3b14:	8c80      	ld.h      	r4, (r4, 0x0)
    3b16:	7513      	sexth      	r4, r4
    3b18:	3c20      	cmplti      	r4, 1
    3b1a:	086f      	bt      	0x3bf8	// 3bf8 <TK_Baseline_tracking+0x304>
    3b1c:	129c      	lrw      	r4, 0x20000260	// 3c8c <TK_Baseline_tracking+0x398>
    3b1e:	6100      	addu      	r4, r0
    3b20:	59a0      	addu      	r5, r1, r0
    3b22:	8c80      	ld.h      	r4, (r4, 0x0)
    3b24:	8da0      	ld.h      	r5, (r5, 0x0)
    3b26:	7555      	zexth      	r5, r5
    3b28:	7511      	zexth      	r4, r4
    3b2a:	6116      	subu      	r4, r5
    3b2c:	8ba0      	ld.h      	r5, (r3, 0x0)
    3b2e:	45a2      	lsli      	r5, r5, 2
    3b30:	6551      	cmplt      	r4, r5
    3b32:	0863      	bt      	0x3bf8	// 3bf8 <TK_Baseline_tracking+0x304>
					TK_Postive_build1[i]++;
    3b34:	1298      	lrw      	r4, 0x200002ba	// 3c94 <TK_Baseline_tracking+0x3a0>
    3b36:	6108      	addu      	r4, r2
    3b38:	84a0      	ld.b      	r5, (r4, 0x0)
    3b3a:	2500      	addi      	r5, 1
    3b3c:	7554      	zextb      	r5, r5
    3b3e:	a4a0      	st.b      	r5, (r4, 0x0)
					if(TK_Postive_build1[i]>pos_build_bounce)
    3b40:	12ae      	lrw      	r5, 0x20000088	// 3c78 <TK_Baseline_tracking+0x384>
    3b42:	84c0      	ld.b      	r6, (r4, 0x0)
    3b44:	85a9      	ld.b      	r5, (r5, 0x9)
    3b46:	6594      	cmphs      	r5, r6
    3b48:	0806      	bt      	0x3b54	// 3b54 <TK_Baseline_tracking+0x260>
					base_update_f=1;
    3b4a:	12ad      	lrw      	r5, 0x200002b9	// 3c7c <TK_Baseline_tracking+0x388>
    3b4c:	3601      	movi      	r6, 1
    3b4e:	a5c0      	st.b      	r6, (r5, 0x0)
					TK_Postive_build1[i]=0;
    3b50:	3500      	movi      	r5, 0
    3b52:	a4a0      	st.b      	r5, (r4, 0x0)
				if((offset_data1[i]<0)&&((baseline_data1[i]-sampling_data1[i])<TK_Triggerlevel[i]))
    3b54:	5f80      	addu      	r4, r7, r0
    3b56:	8c80      	ld.h      	r4, (r4, 0x0)
    3b58:	7513      	sexth      	r4, r4
    3b5a:	3cdf      	btsti      	r4, 31
    3b5c:	0c10      	bf      	0x3b7c	// 3b7c <TK_Baseline_tracking+0x288>
    3b5e:	12cc      	lrw      	r6, 0x20000260	// 3c8c <TK_Baseline_tracking+0x398>
    3b60:	59a0      	addu      	r5, r1, r0
    3b62:	6180      	addu      	r6, r0
    3b64:	8d80      	ld.h      	r4, (r5, 0x0)
    3b66:	8ec0      	ld.h      	r6, (r6, 0x0)
    3b68:	7599      	zexth      	r6, r6
    3b6a:	7511      	zexth      	r4, r4
    3b6c:	611a      	subu      	r4, r6
    3b6e:	8bc0      	ld.h      	r6, (r3, 0x0)
    3b70:	6591      	cmplt      	r4, r6
    3b72:	0c05      	bf      	0x3b7c	// 3b7c <TK_Baseline_tracking+0x288>
					baseline_data1[i]--;
    3b74:	8d80      	ld.h      	r4, (r5, 0x0)
    3b76:	2c00      	subi      	r4, 1
    3b78:	7511      	zexth      	r4, r4
    3b7a:	ad80      	st.h      	r4, (r5, 0x0)
				if((offset_data1[i]<0)&&((baseline_data1[i]-sampling_data1[i])>=(TK_Triggerlevel[i]/2)))
    3b7c:	5f80      	addu      	r4, r7, r0
    3b7e:	8c80      	ld.h      	r4, (r4, 0x0)
    3b80:	7513      	sexth      	r4, r4
    3b82:	3cdf      	btsti      	r4, 31
    3b84:	0c11      	bf      	0x3ba6	// 3ba6 <TK_Baseline_tracking+0x2b2>
    3b86:	12c2      	lrw      	r6, 0x20000260	// 3c8c <TK_Baseline_tracking+0x398>
    3b88:	59a0      	addu      	r5, r1, r0
    3b8a:	6180      	addu      	r6, r0
    3b8c:	8d80      	ld.h      	r4, (r5, 0x0)
    3b8e:	8ec0      	ld.h      	r6, (r6, 0x0)
    3b90:	7599      	zexth      	r6, r6
    3b92:	7511      	zexth      	r4, r4
    3b94:	611a      	subu      	r4, r6
    3b96:	8bc0      	ld.h      	r6, (r3, 0x0)
    3b98:	4ec1      	lsri      	r6, r6, 1
    3b9a:	6591      	cmplt      	r4, r6
    3b9c:	0805      	bt      	0x3ba6	// 3ba6 <TK_Baseline_tracking+0x2b2>
					baseline_data1[i]-=2;
    3b9e:	8d80      	ld.h      	r4, (r5, 0x0)
    3ba0:	2c01      	subi      	r4, 2
    3ba2:	7511      	zexth      	r4, r4
    3ba4:	ad80      	st.h      	r4, (r5, 0x0)
				if ((offset_data1[i]>0)&&(offset_data1[i]<(TK_Triggerlevel[i]/2)))
    3ba6:	5fa0      	addu      	r5, r7, r0
    3ba8:	8d80      	ld.h      	r4, (r5, 0x0)
    3baa:	7513      	sexth      	r4, r4
    3bac:	3c20      	cmplti      	r4, 1
    3bae:	080c      	bt      	0x3bc6	// 3bc6 <TK_Baseline_tracking+0x2d2>
    3bb0:	8da0      	ld.h      	r5, (r5, 0x0)
    3bb2:	8b80      	ld.h      	r4, (r3, 0x0)
    3bb4:	7557      	sexth      	r5, r5
    3bb6:	4c81      	lsri      	r4, r4, 1
    3bb8:	6515      	cmplt      	r5, r4
    3bba:	0c06      	bf      	0x3bc6	// 3bc6 <TK_Baseline_tracking+0x2d2>
					baseline_data1[i]+=1;
    3bbc:	59a0      	addu      	r5, r1, r0
    3bbe:	8d80      	ld.h      	r4, (r5, 0x0)
    3bc0:	2400      	addi      	r4, 1
    3bc2:	7511      	zexth      	r4, r4
    3bc4:	ad80      	st.h      	r4, (r5, 0x0)
				if ((offset_data1[i]>0)&&(offset_data1[i]<TK_Triggerlevel[i])&&(offset_data1[i]>=(TK_Triggerlevel[i]/2)))
    3bc6:	5fa0      	addu      	r5, r7, r0
    3bc8:	8d80      	ld.h      	r4, (r5, 0x0)
    3bca:	7513      	sexth      	r4, r4
    3bcc:	3c20      	cmplti      	r4, 1
    3bce:	0810      	bt      	0x3bee	// 3bee <TK_Baseline_tracking+0x2fa>
    3bd0:	8dc0      	ld.h      	r6, (r5, 0x0)
    3bd2:	759b      	sexth      	r6, r6
    3bd4:	8b80      	ld.h      	r4, (r3, 0x0)
    3bd6:	6519      	cmplt      	r6, r4
    3bd8:	0c0b      	bf      	0x3bee	// 3bee <TK_Baseline_tracking+0x2fa>
    3bda:	8da0      	ld.h      	r5, (r5, 0x0)
    3bdc:	7557      	sexth      	r5, r5
    3bde:	4c81      	lsri      	r4, r4, 1
    3be0:	6515      	cmplt      	r5, r4
    3be2:	0806      	bt      	0x3bee	// 3bee <TK_Baseline_tracking+0x2fa>
					baseline_data1[i]+=2;
    3be4:	6004      	addu      	r0, r1
    3be6:	8880      	ld.h      	r4, (r0, 0x0)
    3be8:	2401      	addi      	r4, 2
    3bea:	7511      	zexth      	r4, r4
    3bec:	a880      	st.h      	r4, (r0, 0x0)
    3bee:	2200      	addi      	r2, 1
			for(i=0;i<17;i++)
    3bf0:	3a51      	cmpnei      	r2, 17
    3bf2:	2301      	addi      	r3, 2
    3bf4:	0b61      	bt      	0x3ab6	// 3ab6 <TK_Baseline_tracking+0x1c2>
    3bf6:	0695      	br      	0x3920	// 3920 <TK_Baseline_tracking+0x2c>
				else if((offset_data1[i]<0)&&((baseline_data1[i]-sampling_data1[i])>=(TK_Triggerlevel[i]*3)))
    3bf8:	5f80      	addu      	r4, r7, r0
    3bfa:	8c80      	ld.h      	r4, (r4, 0x0)
    3bfc:	7513      	sexth      	r4, r4
    3bfe:	3cdf      	btsti      	r4, 31
    3c00:	0faa      	bf      	0x3b54	// 3b54 <TK_Baseline_tracking+0x260>
    3c02:	11a3      	lrw      	r5, 0x20000260	// 3c8c <TK_Baseline_tracking+0x398>
    3c04:	5980      	addu      	r4, r1, r0
    3c06:	6140      	addu      	r5, r0
    3c08:	8c80      	ld.h      	r4, (r4, 0x0)
    3c0a:	8da0      	ld.h      	r5, (r5, 0x0)
    3c0c:	7555      	zexth      	r5, r5
    3c0e:	8bc0      	ld.h      	r6, (r3, 0x0)
    3c10:	7511      	zexth      	r4, r4
    3c12:	6116      	subu      	r4, r5
    3c14:	46a1      	lsli      	r5, r6, 1
    3c16:	6158      	addu      	r5, r6
    3c18:	6551      	cmplt      	r4, r5
    3c1a:	0b9d      	bt      	0x3b54	// 3b54 <TK_Baseline_tracking+0x260>
					base_update_f=1;
    3c1c:	1098      	lrw      	r4, 0x200002b9	// 3c7c <TK_Baseline_tracking+0x388>
    3c1e:	3501      	movi      	r5, 1
    3c20:	a4a0      	st.b      	r5, (r4, 0x0)
					nop;
    3c22:	6c03      	mov      	r0, r0
    3c24:	0798      	br      	0x3b54	// 3b54 <TK_Baseline_tracking+0x260>
				if((offset_data2[i]<0)&&((baseline_data2[i]-sampling_data2[i])>=(TK_Triggerlevel[i]))&&((baseline_data2[i]-sampling_data2[i])<(TK_Triggerlevel[i]*3)))
    3c26:	103d      	lrw      	r1, 0x20000482	// 3c98 <TK_Baseline_tracking+0x3a4>
    3c28:	6dc7      	mov      	r7, r1
    3c2a:	b820      	st.w      	r1, (r14, 0x0)
			if(Key_Map2==0)
    3c2c:	3200      	movi      	r2, 0
    3c2e:	106f      	lrw      	r3, 0x20000112	// 3c68 <TK_Baseline_tracking+0x374>
				if((offset_data2[i]<0)&&((baseline_data2[i]-sampling_data2[i])>=(TK_Triggerlevel[i]))&&((baseline_data2[i]-sampling_data2[i])<(TK_Triggerlevel[i]*3)))
    3c30:	103b      	lrw      	r1, 0x2000041a	// 3c9c <TK_Baseline_tracking+0x3a8>
    3c32:	4201      	lsli      	r0, r2, 1
    3c34:	9880      	ld.w      	r4, (r14, 0x0)
    3c36:	6100      	addu      	r4, r0
    3c38:	8c80      	ld.h      	r4, (r4, 0x0)
    3c3a:	7513      	sexth      	r4, r4
    3c3c:	3cdf      	btsti      	r4, 31
    3c3e:	0c53      	bf      	0x3ce4	// 3ce4 <TK_Baseline_tracking+0x3f0>
    3c40:	10b8      	lrw      	r5, 0x2000034e	// 3ca0 <TK_Baseline_tracking+0x3ac>
    3c42:	5980      	addu      	r4, r1, r0
    3c44:	6014      	addu      	r0, r5
    3c46:	b881      	st.w      	r4, (r14, 0x4)
    3c48:	8c80      	ld.h      	r4, (r4, 0x0)
    3c4a:	88c0      	ld.h      	r6, (r0, 0x0)
    3c4c:	042c      	br      	0x3ca4	// 3ca4 <TK_Baseline_tracking+0x3b0>
    3c4e:	0000      	bkpt
    3c50:	20000312 	.long	0x20000312
    3c54:	200000e0 	.long	0x200000e0
    3c58:	2000021c 	.long	0x2000021c
    3c5c:	200001b8 	.long	0x200001b8
    3c60:	2000028c 	.long	0x2000028c
    3c64:	20000238 	.long	0x20000238
    3c68:	20000112 	.long	0x20000112
    3c6c:	20000184 	.long	0x20000184
    3c70:	200004a6 	.long	0x200004a6
    3c74:	200003c8 	.long	0x200003c8
    3c78:	20000088 	.long	0x20000088
    3c7c:	200002b9 	.long	0x200002b9
    3c80:	2000033c 	.long	0x2000033c
    3c84:	20000370 	.long	0x20000370
    3c88:	2000031a 	.long	0x2000031a
    3c8c:	20000260 	.long	0x20000260
    3c90:	200003b0 	.long	0x200003b0
    3c94:	200002ba 	.long	0x200002ba
    3c98:	20000482 	.long	0x20000482
    3c9c:	2000041a 	.long	0x2000041a
    3ca0:	2000034e 	.long	0x2000034e
    3ca4:	7511      	zexth      	r4, r4
    3ca6:	7599      	zexth      	r6, r6
    3ca8:	8ba0      	ld.h      	r5, (r3, 0x0)
    3caa:	611a      	subu      	r4, r6
    3cac:	6551      	cmplt      	r4, r5
    3cae:	081b      	bt      	0x3ce4	// 3ce4 <TK_Baseline_tracking+0x3f0>
    3cb0:	9881      	ld.w      	r4, (r14, 0x4)
    3cb2:	8c80      	ld.h      	r4, (r4, 0x0)
    3cb4:	8800      	ld.h      	r0, (r0, 0x0)
    3cb6:	7511      	zexth      	r4, r4
    3cb8:	7401      	zexth      	r0, r0
    3cba:	5c01      	subu      	r0, r4, r0
    3cbc:	4581      	lsli      	r4, r5, 1
    3cbe:	6150      	addu      	r5, r4
    3cc0:	6541      	cmplt      	r0, r5
    3cc2:	0c11      	bf      	0x3ce4	// 3ce4 <TK_Baseline_tracking+0x3f0>
					TK_Negtive_build2[i]++;
    3cc4:	128d      	lrw      	r4, 0x200002a8	// 3df8 <TK_Baseline_tracking+0x504>
    3cc6:	6108      	addu      	r4, r2
    3cc8:	8400      	ld.b      	r0, (r4, 0x0)
    3cca:	2000      	addi      	r0, 1
    3ccc:	7400      	zextb      	r0, r0
    3cce:	a400      	st.b      	r0, (r4, 0x0)
					if(TK_Negtive_build2[i]>neg_build_bounce)
    3cd0:	120b      	lrw      	r0, 0x20000088	// 3dfc <TK_Baseline_tracking+0x508>
    3cd2:	84a0      	ld.b      	r5, (r4, 0x0)
    3cd4:	8008      	ld.b      	r0, (r0, 0x8)
    3cd6:	6540      	cmphs      	r0, r5
    3cd8:	0806      	bt      	0x3ce4	// 3ce4 <TK_Baseline_tracking+0x3f0>
					base_update_f=1;
    3cda:	120a      	lrw      	r0, 0x200002b9	// 3e00 <TK_Baseline_tracking+0x50c>
    3cdc:	3501      	movi      	r5, 1
    3cde:	a0a0      	st.b      	r5, (r0, 0x0)
					TK_Negtive_build2[i]=0;
    3ce0:	3000      	movi      	r0, 0
    3ce2:	a400      	st.b      	r0, (r4, 0x0)
				if((offset_data2[i]>0)&&(sampling_data2[i]-baseline_data2[i])>=(TK_Triggerlevel[i]*4))
    3ce4:	4201      	lsli      	r0, r2, 1
    3ce6:	5f80      	addu      	r4, r7, r0
    3ce8:	8c80      	ld.h      	r4, (r4, 0x0)
    3cea:	7513      	sexth      	r4, r4
    3cec:	3c20      	cmplti      	r4, 1
    3cee:	0870      	bt      	0x3dce	// 3dce <TK_Baseline_tracking+0x4da>
    3cf0:	1285      	lrw      	r4, 0x2000034e	// 3e04 <TK_Baseline_tracking+0x510>
    3cf2:	6100      	addu      	r4, r0
    3cf4:	59a0      	addu      	r5, r1, r0
    3cf6:	8c80      	ld.h      	r4, (r4, 0x0)
    3cf8:	8da0      	ld.h      	r5, (r5, 0x0)
    3cfa:	7555      	zexth      	r5, r5
    3cfc:	7511      	zexth      	r4, r4
    3cfe:	6116      	subu      	r4, r5
    3d00:	8ba0      	ld.h      	r5, (r3, 0x0)
    3d02:	45a2      	lsli      	r5, r5, 2
    3d04:	6551      	cmplt      	r4, r5
    3d06:	0864      	bt      	0x3dce	// 3dce <TK_Baseline_tracking+0x4da>
					TK_Postive_build2[i]++;
    3d08:	1280      	lrw      	r4, 0x200001a6	// 3e08 <TK_Baseline_tracking+0x514>
    3d0a:	6108      	addu      	r4, r2
    3d0c:	84a0      	ld.b      	r5, (r4, 0x0)
    3d0e:	2500      	addi      	r5, 1
    3d10:	7554      	zextb      	r5, r5
    3d12:	a4a0      	st.b      	r5, (r4, 0x0)
					if(TK_Postive_build2[i]>pos_build_bounce)
    3d14:	11ba      	lrw      	r5, 0x20000088	// 3dfc <TK_Baseline_tracking+0x508>
    3d16:	84c0      	ld.b      	r6, (r4, 0x0)
    3d18:	85a9      	ld.b      	r5, (r5, 0x9)
    3d1a:	6594      	cmphs      	r5, r6
    3d1c:	0806      	bt      	0x3d28	// 3d28 <TK_Baseline_tracking+0x434>
					base_update_f=1;
    3d1e:	11b9      	lrw      	r5, 0x200002b9	// 3e00 <TK_Baseline_tracking+0x50c>
    3d20:	3601      	movi      	r6, 1
    3d22:	a5c0      	st.b      	r6, (r5, 0x0)
					TK_Postive_build2[i]=0;
    3d24:	3500      	movi      	r5, 0
					base_update_f=1;
    3d26:	a4a0      	st.b      	r5, (r4, 0x0)
				if((offset_data2[i]<0)&&((baseline_data2[i]-sampling_data2[i])<TK_Triggerlevel[i]))
    3d28:	5f80      	addu      	r4, r7, r0
    3d2a:	8c80      	ld.h      	r4, (r4, 0x0)
    3d2c:	7513      	sexth      	r4, r4
    3d2e:	3cdf      	btsti      	r4, 31
    3d30:	0c10      	bf      	0x3d50	// 3d50 <TK_Baseline_tracking+0x45c>
    3d32:	11d5      	lrw      	r6, 0x2000034e	// 3e04 <TK_Baseline_tracking+0x510>
    3d34:	59a0      	addu      	r5, r1, r0
    3d36:	6180      	addu      	r6, r0
    3d38:	8d80      	ld.h      	r4, (r5, 0x0)
    3d3a:	8ec0      	ld.h      	r6, (r6, 0x0)
    3d3c:	7599      	zexth      	r6, r6
    3d3e:	7511      	zexth      	r4, r4
    3d40:	611a      	subu      	r4, r6
    3d42:	8bc0      	ld.h      	r6, (r3, 0x0)
    3d44:	6591      	cmplt      	r4, r6
    3d46:	0c05      	bf      	0x3d50	// 3d50 <TK_Baseline_tracking+0x45c>
					baseline_data2[i]-=1;
    3d48:	8d80      	ld.h      	r4, (r5, 0x0)
    3d4a:	2c00      	subi      	r4, 1
    3d4c:	7511      	zexth      	r4, r4
    3d4e:	ad80      	st.h      	r4, (r5, 0x0)
				if((offset_data2[i]<0)&&((baseline_data2[i]-sampling_data2[i])>=(TK_Triggerlevel[i]/2)))
    3d50:	5f80      	addu      	r4, r7, r0
    3d52:	8c80      	ld.h      	r4, (r4, 0x0)
    3d54:	7513      	sexth      	r4, r4
    3d56:	3cdf      	btsti      	r4, 31
    3d58:	0c11      	bf      	0x3d7a	// 3d7a <TK_Baseline_tracking+0x486>
    3d5a:	11cb      	lrw      	r6, 0x2000034e	// 3e04 <TK_Baseline_tracking+0x510>
    3d5c:	59a0      	addu      	r5, r1, r0
    3d5e:	6180      	addu      	r6, r0
    3d60:	8d80      	ld.h      	r4, (r5, 0x0)
    3d62:	8ec0      	ld.h      	r6, (r6, 0x0)
    3d64:	7599      	zexth      	r6, r6
    3d66:	7511      	zexth      	r4, r4
    3d68:	611a      	subu      	r4, r6
    3d6a:	8bc0      	ld.h      	r6, (r3, 0x0)
    3d6c:	4ec1      	lsri      	r6, r6, 1
    3d6e:	6591      	cmplt      	r4, r6
    3d70:	0805      	bt      	0x3d7a	// 3d7a <TK_Baseline_tracking+0x486>
					baseline_data2[i]-=2;
    3d72:	8d80      	ld.h      	r4, (r5, 0x0)
    3d74:	2c01      	subi      	r4, 2
    3d76:	7511      	zexth      	r4, r4
    3d78:	ad80      	st.h      	r4, (r5, 0x0)
				if ((offset_data2[i]>0)&&(offset_data2[i]<(TK_Triggerlevel[i]/2)))
    3d7a:	5fa0      	addu      	r5, r7, r0
    3d7c:	8d80      	ld.h      	r4, (r5, 0x0)
    3d7e:	7513      	sexth      	r4, r4
    3d80:	3c20      	cmplti      	r4, 1
    3d82:	080c      	bt      	0x3d9a	// 3d9a <TK_Baseline_tracking+0x4a6>
    3d84:	8da0      	ld.h      	r5, (r5, 0x0)
    3d86:	8b80      	ld.h      	r4, (r3, 0x0)
    3d88:	7557      	sexth      	r5, r5
    3d8a:	4c81      	lsri      	r4, r4, 1
    3d8c:	6515      	cmplt      	r5, r4
    3d8e:	0c06      	bf      	0x3d9a	// 3d9a <TK_Baseline_tracking+0x4a6>
					baseline_data2[i]+=1;
    3d90:	59a0      	addu      	r5, r1, r0
    3d92:	8d80      	ld.h      	r4, (r5, 0x0)
    3d94:	2400      	addi      	r4, 1
    3d96:	7511      	zexth      	r4, r4
    3d98:	ad80      	st.h      	r4, (r5, 0x0)
				if ((offset_data2[i]>0)&&(offset_data2[i]<TK_Triggerlevel[i])&&(offset_data2[i]>=(TK_Triggerlevel[i]/2)))
    3d9a:	5fa0      	addu      	r5, r7, r0
    3d9c:	8d80      	ld.h      	r4, (r5, 0x0)
    3d9e:	7513      	sexth      	r4, r4
    3da0:	3c20      	cmplti      	r4, 1
    3da2:	0810      	bt      	0x3dc2	// 3dc2 <TK_Baseline_tracking+0x4ce>
    3da4:	8dc0      	ld.h      	r6, (r5, 0x0)
    3da6:	759b      	sexth      	r6, r6
    3da8:	8b80      	ld.h      	r4, (r3, 0x0)
    3daa:	6519      	cmplt      	r6, r4
    3dac:	0c0b      	bf      	0x3dc2	// 3dc2 <TK_Baseline_tracking+0x4ce>
    3dae:	8da0      	ld.h      	r5, (r5, 0x0)
    3db0:	7557      	sexth      	r5, r5
    3db2:	4c81      	lsri      	r4, r4, 1
    3db4:	6515      	cmplt      	r5, r4
    3db6:	0806      	bt      	0x3dc2	// 3dc2 <TK_Baseline_tracking+0x4ce>
					baseline_data2[i]+=2;
    3db8:	6004      	addu      	r0, r1
    3dba:	8880      	ld.h      	r4, (r0, 0x0)
    3dbc:	2401      	addi      	r4, 2
    3dbe:	7511      	zexth      	r4, r4
    3dc0:	a880      	st.h      	r4, (r0, 0x0)
    3dc2:	2200      	addi      	r2, 1
			for(i=0;i<17;i++)
    3dc4:	3a51      	cmpnei      	r2, 17
    3dc6:	2301      	addi      	r3, 2
    3dc8:	0b35      	bt      	0x3c32	// 3c32 <TK_Baseline_tracking+0x33e>
    3dca:	e800fdb0 	br      	0x392a	// 392a <TK_Baseline_tracking+0x36>
				else if((offset_data2[i]<0)&&((baseline_data2[i]-sampling_data2[i])>=(TK_Triggerlevel[i]*3)))
    3dce:	5f80      	addu      	r4, r7, r0
    3dd0:	8c80      	ld.h      	r4, (r4, 0x0)
    3dd2:	7513      	sexth      	r4, r4
    3dd4:	3cdf      	btsti      	r4, 31
    3dd6:	0fa9      	bf      	0x3d28	// 3d28 <TK_Baseline_tracking+0x434>
    3dd8:	10ab      	lrw      	r5, 0x2000034e	// 3e04 <TK_Baseline_tracking+0x510>
    3dda:	5980      	addu      	r4, r1, r0
    3ddc:	6140      	addu      	r5, r0
    3dde:	8c80      	ld.h      	r4, (r4, 0x0)
    3de0:	8da0      	ld.h      	r5, (r5, 0x0)
    3de2:	7555      	zexth      	r5, r5
    3de4:	8bc0      	ld.h      	r6, (r3, 0x0)
    3de6:	7511      	zexth      	r4, r4
    3de8:	6116      	subu      	r4, r5
    3dea:	46a1      	lsli      	r5, r6, 1
    3dec:	6158      	addu      	r5, r6
    3dee:	6551      	cmplt      	r4, r5
    3df0:	0b9c      	bt      	0x3d28	// 3d28 <TK_Baseline_tracking+0x434>
					base_update_f=1;
    3df2:	1084      	lrw      	r4, 0x200002b9	// 3e00 <TK_Baseline_tracking+0x50c>
    3df4:	3501      	movi      	r5, 1
    3df6:	0798      	br      	0x3d26	// 3d26 <TK_Baseline_tracking+0x432>
    3df8:	200002a8 	.long	0x200002a8
    3dfc:	20000088 	.long	0x20000088
    3e00:	200002b9 	.long	0x200002b9
    3e04:	2000034e 	.long	0x2000034e
    3e08:	200001a6 	.long	0x200001a6

Disassembly of section .text.TK_result_prog:

00003e0c <TK_result_prog>:
/****************************************************
//TK result program
*****************************************************/
void TK_result_prog(void)
{
    3e0c:	14d4      	push      	r4-r7, r15
    3e0e:	1421      	subi      	r14, r14, 4
	unsigned long Key_Map_temp;
	Key_Map_temp=Key_Map0|Key_Map1|Key_Map2;
    3e10:	121a      	lrw      	r0, 0x2000021c	// 3f78 <TK_result_prog+0x16c>
    3e12:	12bb      	lrw      	r5, 0x200001b8	// 3f7c <TK_result_prog+0x170>
    3e14:	127b      	lrw      	r3, 0x2000028c	// 3f80 <TK_result_prog+0x174>
    3e16:	123b      	lrw      	r1, 0x2000028c	// 3f80 <TK_result_prog+0x174>
    3e18:	129b      	lrw      	r4, 0x20000314	// 3f84 <TK_result_prog+0x178>
    3e1a:	90c0      	ld.w      	r6, (r0, 0x0)
    3e1c:	9540      	ld.w      	r2, (r5, 0x0)
    3e1e:	6d88      	or      	r6, r2
    3e20:	b860      	st.w      	r3, (r14, 0x0)
    3e22:	9360      	ld.w      	r3, (r3, 0x0)
    3e24:	6d8c      	or      	r6, r3
	if(Key_Map_temp!=0)
    3e26:	3e40      	cmpnei      	r6, 0
    3e28:	6c83      	mov      	r2, r0
    3e2a:	6cd7      	mov      	r3, r5
    3e2c:	0c8f      	bf      	0x3f4a	// 3f4a <TK_result_prog+0x13e>
	{
		//The three frequency bands must have the same key results
		if(keymap_strict_mode==1)
    3e2e:	12d7      	lrw      	r6, 0x200000a4	// 3f88 <TK_result_prog+0x17c>
    3e30:	86e0      	ld.b      	r7, (r6, 0x0)
    3e32:	3f41      	cmpnei      	r7, 1
    3e34:	080e      	bt      	0x3e50	// 3e50 <TK_result_prog+0x44>
		{
			if((Key_Map0==Key_Map1)&&(Key_Map1==Key_Map2))	
    3e36:	9040      	ld.w      	r2, (r0, 0x0)
    3e38:	9560      	ld.w      	r3, (r5, 0x0)
    3e3a:	64ca      	cmpne      	r2, r3
    3e3c:	0807      	bt      	0x3e4a	// 3e4a <TK_result_prog+0x3e>
    3e3e:	9540      	ld.w      	r2, (r5, 0x0)
    3e40:	9160      	ld.w      	r3, (r1, 0x0)
    3e42:	64ca      	cmpne      	r2, r3
    3e44:	0803      	bt      	0x3e4a	// 3e4a <TK_result_prog+0x3e>
		//The key results of any two of the three frequency bands are consistent.
		else if(keymap_strict_mode==0)
		{
		if((Key_Map0==Key_Map1)&&(Key_Map1==Key_Map2))	
		{
			Key_Map=Key_Map0;							//0,1,2
    3e46:	9060      	ld.w      	r3, (r0, 0x0)
    3e48:	0402      	br      	0x3e4c	// 3e4c <TK_result_prog+0x40>
				Key_Map=0;
    3e4a:	3300      	movi      	r3, 0
		{
			Key_Map=0;
		}
		else if((Key_Map2!=0)&&(Key_Map0==0)&&(Key_Map1==0))
		{
			Key_Map=0;
    3e4c:	b460      	st.w      	r3, (r4, 0x0)
    3e4e:	0420      	br      	0x3e8e	// 3e8e <TK_result_prog+0x82>
		else if(keymap_strict_mode==0)
    3e50:	86c0      	ld.b      	r6, (r6, 0x0)
    3e52:	3e40      	cmpnei      	r6, 0
    3e54:	081d      	bt      	0x3e8e	// 3e8e <TK_result_prog+0x82>
		if((Key_Map0==Key_Map1)&&(Key_Map1==Key_Map2))	
    3e56:	90c0      	ld.w      	r6, (r0, 0x0)
    3e58:	6ddb      	mov      	r7, r6
    3e5a:	95c0      	ld.w      	r6, (r5, 0x0)
    3e5c:	659e      	cmpne      	r7, r6
    3e5e:	0806      	bt      	0x3e6a	// 3e6a <TK_result_prog+0x5e>
    3e60:	95c0      	ld.w      	r6, (r5, 0x0)
    3e62:	12a8      	lrw      	r5, 0x2000028c	// 3f80 <TK_result_prog+0x174>
    3e64:	95a0      	ld.w      	r5, (r5, 0x0)
    3e66:	655a      	cmpne      	r6, r5
    3e68:	0fef      	bf      	0x3e46	// 3e46 <TK_result_prog+0x3a>
		else if((Key_Map1!=0)&&(Key_Map2!=0)&&(Key_Map1==Key_Map2))
    3e6a:	9300      	ld.w      	r0, (r3, 0x0)
    3e6c:	3840      	cmpnei      	r0, 0
    3e6e:	0c2a      	bf      	0x3ec2	// 3ec2 <TK_result_prog+0xb6>
    3e70:	9100      	ld.w      	r0, (r1, 0x0)
    3e72:	3840      	cmpnei      	r0, 0
    3e74:	0c27      	bf      	0x3ec2	// 3ec2 <TK_result_prog+0xb6>
    3e76:	93a0      	ld.w      	r5, (r3, 0x0)
    3e78:	9100      	ld.w      	r0, (r1, 0x0)
    3e7a:	6416      	cmpne      	r5, r0
    3e7c:	0823      	bt      	0x3ec2	// 3ec2 <TK_result_prog+0xb6>
			Key_Map=Key_Map1;							//1,2
    3e7e:	9360      	ld.w      	r3, (r3, 0x0)
    3e80:	b460      	st.w      	r3, (r4, 0x0)
			if(Key_Map0!=Key_Map)Key_Map0=0;
    3e82:	9220      	ld.w      	r1, (r2, 0x0)
    3e84:	9460      	ld.w      	r3, (r4, 0x0)
    3e86:	64c6      	cmpne      	r1, r3
    3e88:	0c03      	bf      	0x3e8e	// 3e8e <TK_result_prog+0x82>
    3e8a:	3300      	movi      	r3, 0
    3e8c:	b260      	st.w      	r3, (r2, 0x0)
		offset1_max_tempA=0;
		offset1_max_tempB=0;
		offset2_max_tempA=0;
		offset2_max_tempB=0;
	}
	if(Key_Map!=0)
    3e8e:	9460      	ld.w      	r3, (r4, 0x0)
    3e90:	3b40      	cmpnei      	r3, 0
    3e92:	115f      	lrw      	r2, 0x20000404	// 3f8c <TK_result_prog+0x180>
    3e94:	0c6a      	bf      	0x3f68	// 3f68 <TK_result_prog+0x15c>
	{
		if(Key_Map!=r_Key_Map_Temp)
    3e96:	9420      	ld.w      	r1, (r4, 0x0)
    3e98:	9260      	ld.w      	r3, (r2, 0x0)
    3e9a:	64c6      	cmpne      	r1, r3
    3e9c:	0c06      	bf      	0x3ea8	// 3ea8 <TK_result_prog+0x9c>
		{
			r_Key_Map_Temp=Key_Map;
    3e9e:	9460      	ld.w      	r3, (r4, 0x0)
    3ea0:	b260      	st.w      	r3, (r2, 0x0)
			Valid_key_f=0;
    3ea2:	3200      	movi      	r2, 0
    3ea4:	117b      	lrw      	r3, 0x20000236	// 3f90 <TK_result_prog+0x184>
    3ea6:	a340      	st.b      	r2, (r3, 0x0)
		}
		if((get_key_number()>Valid_Key_Num))
    3ea8:	e3fff812 	bsr      	0x2ecc	// 2ecc <get_key_number>
    3eac:	117a      	lrw      	r3, 0x200000e8	// 3f94 <TK_result_prog+0x188>
    3eae:	8360      	ld.b      	r3, (r3, 0x0)
    3eb0:	640c      	cmphs      	r3, r0
    3eb2:	0806      	bt      	0x3ebe	// 3ebe <TK_result_prog+0xb2>
		{
			Key_Map=0;
    3eb4:	3300      	movi      	r3, 0
    3eb6:	b460      	st.w      	r3, (r4, 0x0)
			Valid_key_f=1;
    3eb8:	3201      	movi      	r2, 1
    3eba:	1176      	lrw      	r3, 0x20000236	// 3f90 <TK_result_prog+0x184>
    3ebc:	a340      	st.b      	r2, (r3, 0x0)
	{
		r_Key_Map_Temp=0;
		Valid_key_f=0;
		time_cnt=0;
	}
}
    3ebe:	1401      	addi      	r14, r14, 4
    3ec0:	1494      	pop      	r4-r7, r15
		else if((Key_Map0!=0)&&(Key_Map1!=0)&&(Key_Map0==Key_Map1))
    3ec2:	9200      	ld.w      	r0, (r2, 0x0)
    3ec4:	3840      	cmpnei      	r0, 0
    3ec6:	0c11      	bf      	0x3ee8	// 3ee8 <TK_result_prog+0xdc>
    3ec8:	9300      	ld.w      	r0, (r3, 0x0)
    3eca:	3840      	cmpnei      	r0, 0
    3ecc:	0c0e      	bf      	0x3ee8	// 3ee8 <TK_result_prog+0xdc>
    3ece:	92a0      	ld.w      	r5, (r2, 0x0)
    3ed0:	9300      	ld.w      	r0, (r3, 0x0)
    3ed2:	6416      	cmpne      	r5, r0
    3ed4:	080a      	bt      	0x3ee8	// 3ee8 <TK_result_prog+0xdc>
			Key_Map=Key_Map0;							//0,1
    3ed6:	9260      	ld.w      	r3, (r2, 0x0)
    3ed8:	b460      	st.w      	r3, (r4, 0x0)
			if(Key_Map2!=Key_Map)Key_Map2=0;
    3eda:	9140      	ld.w      	r2, (r1, 0x0)
    3edc:	9460      	ld.w      	r3, (r4, 0x0)
    3ede:	64ca      	cmpne      	r2, r3
    3ee0:	0fd7      	bf      	0x3e8e	// 3e8e <TK_result_prog+0x82>
    3ee2:	3300      	movi      	r3, 0
    3ee4:	b160      	st.w      	r3, (r1, 0x0)
    3ee6:	07d4      	br      	0x3e8e	// 3e8e <TK_result_prog+0x82>
		else if((Key_Map0!=0)&&(Key_Map2!=0)&&(Key_Map0==Key_Map2))
    3ee8:	9200      	ld.w      	r0, (r2, 0x0)
    3eea:	3840      	cmpnei      	r0, 0
    3eec:	0c11      	bf      	0x3f0e	// 3f0e <TK_result_prog+0x102>
    3eee:	9100      	ld.w      	r0, (r1, 0x0)
    3ef0:	3840      	cmpnei      	r0, 0
    3ef2:	0c0e      	bf      	0x3f0e	// 3f0e <TK_result_prog+0x102>
    3ef4:	92a0      	ld.w      	r5, (r2, 0x0)
    3ef6:	9100      	ld.w      	r0, (r1, 0x0)
    3ef8:	6416      	cmpne      	r5, r0
    3efa:	080a      	bt      	0x3f0e	// 3f0e <TK_result_prog+0x102>
			Key_Map=Key_Map2;							//0,2
    3efc:	9140      	ld.w      	r2, (r1, 0x0)
    3efe:	b440      	st.w      	r2, (r4, 0x0)
			if(Key_Map1!=Key_Map)Key_Map1=0;
    3f00:	9320      	ld.w      	r1, (r3, 0x0)
    3f02:	9440      	ld.w      	r2, (r4, 0x0)
    3f04:	6486      	cmpne      	r1, r2
    3f06:	0fc4      	bf      	0x3e8e	// 3e8e <TK_result_prog+0x82>
    3f08:	3200      	movi      	r2, 0
    3f0a:	b340      	st.w      	r2, (r3, 0x0)
    3f0c:	07c1      	br      	0x3e8e	// 3e8e <TK_result_prog+0x82>
		else if((Key_Map0!=0)&&(Key_Map1==0)&&(Key_Map2==0))
    3f0e:	9200      	ld.w      	r0, (r2, 0x0)
    3f10:	3840      	cmpnei      	r0, 0
    3f12:	0c09      	bf      	0x3f24	// 3f24 <TK_result_prog+0x118>
    3f14:	9300      	ld.w      	r0, (r3, 0x0)
    3f16:	3840      	cmpnei      	r0, 0
    3f18:	0806      	bt      	0x3f24	// 3f24 <TK_result_prog+0x118>
    3f1a:	9100      	ld.w      	r0, (r1, 0x0)
    3f1c:	3840      	cmpnei      	r0, 0
    3f1e:	0803      	bt      	0x3f24	// 3f24 <TK_result_prog+0x118>
			Key_Map=0;
    3f20:	b400      	st.w      	r0, (r4, 0x0)
    3f22:	07b6      	br      	0x3e8e	// 3e8e <TK_result_prog+0x82>
		else if((Key_Map1!=0)&&(Key_Map0==0)&&(Key_Map2==0))
    3f24:	9300      	ld.w      	r0, (r3, 0x0)
    3f26:	3840      	cmpnei      	r0, 0
    3f28:	0c07      	bf      	0x3f36	// 3f36 <TK_result_prog+0x12a>
    3f2a:	9200      	ld.w      	r0, (r2, 0x0)
    3f2c:	3840      	cmpnei      	r0, 0
    3f2e:	0804      	bt      	0x3f36	// 3f36 <TK_result_prog+0x12a>
    3f30:	9100      	ld.w      	r0, (r1, 0x0)
    3f32:	3840      	cmpnei      	r0, 0
    3f34:	0ff6      	bf      	0x3f20	// 3f20 <TK_result_prog+0x114>
		else if((Key_Map2!=0)&&(Key_Map0==0)&&(Key_Map1==0))
    3f36:	9120      	ld.w      	r1, (r1, 0x0)
    3f38:	3940      	cmpnei      	r1, 0
    3f3a:	0faa      	bf      	0x3e8e	// 3e8e <TK_result_prog+0x82>
    3f3c:	9240      	ld.w      	r2, (r2, 0x0)
    3f3e:	3a40      	cmpnei      	r2, 0
    3f40:	0ba7      	bt      	0x3e8e	// 3e8e <TK_result_prog+0x82>
    3f42:	9360      	ld.w      	r3, (r3, 0x0)
    3f44:	3b40      	cmpnei      	r3, 0
    3f46:	0ba4      	bt      	0x3e8e	// 3e8e <TK_result_prog+0x82>
    3f48:	0782      	br      	0x3e4c	// 3e4c <TK_result_prog+0x40>
		offset0_max_tempA=0;
    3f4a:	3200      	movi      	r2, 0
    3f4c:	1073      	lrw      	r3, 0x200003c2	// 3f98 <TK_result_prog+0x18c>
		Key_Map=0;
    3f4e:	b4c0      	st.w      	r6, (r4, 0x0)
		offset0_max_tempA=0;
    3f50:	ab40      	st.h      	r2, (r3, 0x0)
		offset0_max_tempB=0;
    3f52:	1073      	lrw      	r3, 0x200001e4	// 3f9c <TK_result_prog+0x190>
    3f54:	ab40      	st.h      	r2, (r3, 0x0)
		offset1_max_tempA=0;
    3f56:	1073      	lrw      	r3, 0x200004a4	// 3fa0 <TK_result_prog+0x194>
    3f58:	ab40      	st.h      	r2, (r3, 0x0)
		offset1_max_tempB=0;
    3f5a:	1073      	lrw      	r3, 0x200003c6	// 3fa4 <TK_result_prog+0x198>
    3f5c:	ab40      	st.h      	r2, (r3, 0x0)
		offset2_max_tempA=0;
    3f5e:	1073      	lrw      	r3, 0x2000025a	// 3fa8 <TK_result_prog+0x19c>
    3f60:	ab40      	st.h      	r2, (r3, 0x0)
		offset2_max_tempB=0;
    3f62:	1073      	lrw      	r3, 0x20000318	// 3fac <TK_result_prog+0x1a0>
    3f64:	ab40      	st.h      	r2, (r3, 0x0)
    3f66:	0794      	br      	0x3e8e	// 3e8e <TK_result_prog+0x82>
		r_Key_Map_Temp=0;
    3f68:	b260      	st.w      	r3, (r2, 0x0)
		Valid_key_f=0;
    3f6a:	3100      	movi      	r1, 0
    3f6c:	1049      	lrw      	r2, 0x20000236	// 3f90 <TK_result_prog+0x184>
    3f6e:	a220      	st.b      	r1, (r2, 0x0)
		time_cnt=0;
    3f70:	1050      	lrw      	r2, 0x2000030c	// 3fb0 <TK_result_prog+0x1a4>
    3f72:	b260      	st.w      	r3, (r2, 0x0)
}
    3f74:	07a5      	br      	0x3ebe	// 3ebe <TK_result_prog+0xb2>
    3f76:	0000      	bkpt
    3f78:	2000021c 	.long	0x2000021c
    3f7c:	200001b8 	.long	0x200001b8
    3f80:	2000028c 	.long	0x2000028c
    3f84:	20000314 	.long	0x20000314
    3f88:	200000a4 	.long	0x200000a4
    3f8c:	20000404 	.long	0x20000404
    3f90:	20000236 	.long	0x20000236
    3f94:	200000e8 	.long	0x200000e8
    3f98:	200003c2 	.long	0x200003c2
    3f9c:	200001e4 	.long	0x200001e4
    3fa0:	200004a4 	.long	0x200004a4
    3fa4:	200003c6 	.long	0x200003c6
    3fa8:	2000025a 	.long	0x2000025a
    3fac:	20000318 	.long	0x20000318
    3fb0:	2000030c 	.long	0x2000030c

Disassembly of section .text.TKEYIntHandler:

00003fb4 <TKEYIntHandler>:
//TKEY Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void TKEYIntHandler(void) 
{
    3fb4:	1460      	nie
    3fb6:	1462      	ipush
    3fb8:	14d1      	push      	r4, r15
    // ISR content ...
	if(s_tkey==0)
    3fba:	1183      	lrw      	r4, 0x20000068	// 4044 <TKEYIntHandler+0x90>
    3fbc:	8460      	ld.b      	r3, (r4, 0x0)
    3fbe:	3b40      	cmpnei      	r3, 0
    3fc0:	0815      	bt      	0x3fea	// 3fea <TKEYIntHandler+0x36>
	{
	s_tkey=1;
    3fc2:	3301      	movi      	r3, 1
    3fc4:	a460      	st.b      	r3, (r4, 0x0)
	if(bsae_over_f==1)
    3fc6:	1161      	lrw      	r3, 0x20000224	// 4048 <TKEYIntHandler+0x94>
    3fc8:	8360      	ld.b      	r3, (r3, 0x0)
    3fca:	3b41      	cmpnei      	r3, 1
    3fcc:	080f      	bt      	0x3fea	// 3fea <TKEYIntHandler+0x36>
	{
	scan_step++;
    3fce:	1140      	lrw      	r2, 0x20000419	// 404c <TKEYIntHandler+0x98>
    3fd0:	8260      	ld.b      	r3, (r2, 0x0)
    3fd2:	2300      	addi      	r3, 1
    3fd4:	74cc      	zextb      	r3, r3
    3fd6:	a260      	st.b      	r3, (r2, 0x0)
	if(scan_step==3)scan_step=0;
    3fd8:	8260      	ld.b      	r3, (r2, 0x0)
    3fda:	3b43      	cmpnei      	r3, 3
    3fdc:	0803      	bt      	0x3fe2	// 3fe2 <TKEYIntHandler+0x2e>
    3fde:	3300      	movi      	r3, 0
    3fe0:	a260      	st.b      	r3, (r2, 0x0)
	TK_Sampling_prog();
    3fe2:	e3fff70f 	bsr      	0x2e00	// 2e00 <TK_Sampling_prog>
	samp_setover_f=1;
    3fe6:	3301      	movi      	r3, 1
    3fe8:	a463      	st.b      	r3, (r4, 0x3)
	}
	}
	 if((TKEY->TCH_RISR&TKEY_SINDNE)==TKEY_SINDNE)
    3fea:	107a      	lrw      	r3, 0x20000058	// 4050 <TKEYIntHandler+0x9c>
    3fec:	3101      	movi      	r1, 1
    3fee:	9360      	ld.w      	r3, (r3, 0x0)
    3ff0:	934a      	ld.w      	r2, (r3, 0x28)
    3ff2:	6884      	and      	r2, r1
    3ff4:	3a40      	cmpnei      	r2, 0
    3ff6:	0c02      	bf      	0x3ffa	// 3ffa <TKEYIntHandler+0x46>
	{
		TKEY->TCH_ICR = TKEY_SINDNE;
    3ff8:	b32c      	st.w      	r1, (r3, 0x30)
	}
	if((TKEY->TCH_RISR&TKEY_DNE)==TKEY_DNE)
    3ffa:	934a      	ld.w      	r2, (r3, 0x28)
    3ffc:	3102      	movi      	r1, 2
    3ffe:	6884      	and      	r2, r1
    4000:	3a40      	cmpnei      	r2, 0
    4002:	0c02      	bf      	0x4006	// 4006 <TKEYIntHandler+0x52>
	{
		TKEY->TCH_ICR = TKEY_DNE;
    4004:	b32c      	st.w      	r1, (r3, 0x30)
	}
	if((TKEY->TCH_RISR&TKEY_THR)==TKEY_THR)
    4006:	934a      	ld.w      	r2, (r3, 0x28)
    4008:	3104      	movi      	r1, 4
    400a:	6884      	and      	r2, r1
    400c:	3a40      	cmpnei      	r2, 0
    400e:	0c02      	bf      	0x4012	// 4012 <TKEYIntHandler+0x5e>
	{
		TKEY->TCH_ICR = TKEY_THR;
    4010:	b32c      	st.w      	r1, (r3, 0x30)
	}
	if((TKEY->TCH_RISR&TKEY_FLW)==TKEY_FLW)
    4012:	934a      	ld.w      	r2, (r3, 0x28)
    4014:	3108      	movi      	r1, 8
    4016:	6884      	and      	r2, r1
    4018:	3a40      	cmpnei      	r2, 0
    401a:	0c02      	bf      	0x401e	// 401e <TKEYIntHandler+0x6a>
	{
		TKEY->TCH_ICR = TKEY_FLW;
    401c:	b32c      	st.w      	r1, (r3, 0x30)
	}
	if((TKEY->TCH_RISR&TKEY_OVW)==TKEY_OVW)
    401e:	934a      	ld.w      	r2, (r3, 0x28)
    4020:	3110      	movi      	r1, 16
    4022:	6884      	and      	r2, r1
    4024:	3a40      	cmpnei      	r2, 0
    4026:	0c02      	bf      	0x402a	// 402a <TKEYIntHandler+0x76>
	{
		TKEY->TCH_ICR = TKEY_OVW;
    4028:	b32c      	st.w      	r1, (r3, 0x30)
	}
	if((TKEY->TCH_RISR&TKEY_TIME)==TKEY_TIME)
    402a:	934a      	ld.w      	r2, (r3, 0x28)
    402c:	3120      	movi      	r1, 32
    402e:	6884      	and      	r2, r1
    4030:	3a40      	cmpnei      	r2, 0
    4032:	0c02      	bf      	0x4036	// 4036 <TKEYIntHandler+0x82>
	{
		TKEY->TCH_ICR = TKEY_TIME;
    4034:	b32c      	st.w      	r1, (r3, 0x30)
	}
}
    4036:	d9ee2001 	ld.w      	r15, (r14, 0x4)
    403a:	9880      	ld.w      	r4, (r14, 0x0)
    403c:	1402      	addi      	r14, r14, 8
    403e:	1463      	ipop
    4040:	1461      	nir
    4042:	0000      	bkpt
    4044:	20000068 	.long	0x20000068
    4048:	20000224 	.long	0x20000224
    404c:	20000419 	.long	0x20000419
    4050:	20000058 	.long	0x20000058

Disassembly of section .text.CORETHandler:

00004054 <CORETHandler>:
//CORET Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void CORETHandler(void) 
{
    4054:	1460      	nie
    4056:	1462      	ipush
    4058:	14d3      	push      	r4-r6, r15
	CK801->CORET_CVR = 0x0;							//Clear counter and flag
    405a:	126e      	lrw      	r3, 0x20000064	// 4190 <CORETHandler+0x13c>
    405c:	3400      	movi      	r4, 0
    405e:	9360      	ld.w      	r3, (r3, 0x0)
    4060:	b386      	st.w      	r4, (r3, 0x18)
	if(bsae_over_f==1)								//baseline scan success
    4062:	126d      	lrw      	r3, 0x20000224	// 4194 <CORETHandler+0x140>
    4064:	8360      	ld.b      	r3, (r3, 0x0)
    4066:	3b41      	cmpnei      	r3, 1
    4068:	0844      	bt      	0x40f0	// 40f0 <CORETHandler+0x9c>
	{
	TK_Scan_Start();
    406a:	e3fff745 	bsr      	0x2ef4	// 2ef4 <TK_Scan_Start>
	TK_Keymap_prog();
    406e:	e3fff777 	bsr      	0x2f5c	// 2f5c <TK_Keymap_prog>
	TK_overflow_predict();
    4072:	e3fffbad 	bsr      	0x37cc	// 37cc <TK_overflow_predict>
	TK_Baseline_tracking();
    4076:	e3fffc3f 	bsr      	0x38f4	// 38f4 <TK_Baseline_tracking>
	TK_result_prog();
    407a:	e3fffec9 	bsr      	0x3e0c	// 3e0c <TK_result_prog>
//----------------For long pressed force rebuild--------------------
	if((Key_Map!=0)&&(TK_longpress_time!=0))
    407e:	1267      	lrw      	r3, 0x20000314	// 4198 <CORETHandler+0x144>
    4080:	9360      	ld.w      	r3, (r3, 0x0)
    4082:	3b40      	cmpnei      	r3, 0
    4084:	0c12      	bf      	0x40a8	// 40a8 <CORETHandler+0x54>
    4086:	1266      	lrw      	r3, 0x200000b0	// 419c <CORETHandler+0x148>
    4088:	9340      	ld.w      	r2, (r3, 0x0)
    408a:	3a40      	cmpnei      	r2, 0
    408c:	0c0e      	bf      	0x40a8	// 40a8 <CORETHandler+0x54>
	{ 
		time_cnt++;
    408e:	1265      	lrw      	r3, 0x2000030c	// 41a0 <CORETHandler+0x14c>
		if(time_cnt>(TK_longpress_time*100))		//cnt base ≈10ms*100=1s
    4090:	3064      	movi      	r0, 100
		time_cnt++;
    4092:	9320      	ld.w      	r1, (r3, 0x0)
    4094:	2100      	addi      	r1, 1
    4096:	b320      	st.w      	r1, (r3, 0x0)
		if(time_cnt>(TK_longpress_time*100))		//cnt base ≈10ms*100=1s
    4098:	9320      	ld.w      	r1, (r3, 0x0)
    409a:	7c80      	mult      	r2, r0
    409c:	6448      	cmphs      	r2, r1
    409e:	0805      	bt      	0x40a8	// 40a8 <CORETHandler+0x54>
		{
			base_update_f=1;
    40a0:	1241      	lrw      	r2, 0x200002b9	// 41a4 <CORETHandler+0x150>
    40a2:	3101      	movi      	r1, 1
    40a4:	a220      	st.b      	r1, (r2, 0x0)
			time_cnt=0;
    40a6:	b380      	st.w      	r4, (r3, 0x0)
		}
	}
//----------------For strict mode force rebuild--------------------
	if(keymap_strict_mode==1)
    40a8:	1260      	lrw      	r3, 0x200000a4	// 41a8 <CORETHandler+0x154>
    40aa:	8340      	ld.b      	r2, (r3, 0x0)
    40ac:	3a41      	cmpnei      	r2, 1
    40ae:	0829      	bt      	0x4100	// 4100 <CORETHandler+0xac>
	{
		if((Key_Map0!=Key_Map1)||(Key_Map1!=Key_Map2)||(Key_Map0!=Key_Map2))
    40b0:	113f      	lrw      	r1, 0x2000021c	// 41ac <CORETHandler+0x158>
    40b2:	1240      	lrw      	r2, 0x200001b8	// 41b0 <CORETHandler+0x15c>
    40b4:	9100      	ld.w      	r0, (r1, 0x0)
    40b6:	9260      	ld.w      	r3, (r2, 0x0)
    40b8:	64c2      	cmpne      	r0, r3
    40ba:	117f      	lrw      	r3, 0x200003ac	// 41b4 <CORETHandler+0x160>
    40bc:	080a      	bt      	0x40d0	// 40d0 <CORETHandler+0x7c>
    40be:	9280      	ld.w      	r4, (r2, 0x0)
    40c0:	115e      	lrw      	r2, 0x2000028c	// 41b8 <CORETHandler+0x164>
    40c2:	9200      	ld.w      	r0, (r2, 0x0)
    40c4:	6412      	cmpne      	r4, r0
    40c6:	0805      	bt      	0x40d0	// 40d0 <CORETHandler+0x7c>
    40c8:	9120      	ld.w      	r1, (r1, 0x0)
    40ca:	9240      	ld.w      	r2, (r2, 0x0)
    40cc:	6486      	cmpne      	r1, r2
    40ce:	0c0f      	bf      	0x40ec	// 40ec <CORETHandler+0x98>
		{
			Tk_press_time_cnt0++;
    40d0:	9340      	ld.w      	r2, (r3, 0x0)
    40d2:	2200      	addi      	r2, 1
    40d4:	b340      	st.w      	r2, (r3, 0x0)
			if(Tk_press_time_cnt0>TkeyRebaseTime)		//cnt base byTkeyRebaseTime defult 10*10=100ms
    40d6:	115a      	lrw      	r2, 0x20000088	// 41bc <CORETHandler+0x168>
    40d8:	8238      	ld.b      	r1, (r2, 0x18)
    40da:	9340      	ld.w      	r2, (r3, 0x0)
    40dc:	6484      	cmphs      	r1, r2
    40de:	0809      	bt      	0x40f0	// 40f0 <CORETHandler+0x9c>
		{
			Tk_press_time_cnt0=0;
    40e0:	3200      	movi      	r2, 0
    40e2:	b340      	st.w      	r2, (r3, 0x0)
		{
			Tk_press_time_cnt1++;
			if(Tk_press_time_cnt1>TkeyRebaseTime)		//cnt base byTkeyRebaseTime defult 10*10=100ms
		{
			Tk_press_time_cnt1=0;
			base_update_f=1;
    40e4:	1170      	lrw      	r3, 0x200002b9	// 41a4 <CORETHandler+0x150>
    40e6:	3201      	movi      	r2, 1
    40e8:	a340      	st.b      	r2, (r3, 0x0)
    40ea:	0403      	br      	0x40f0	// 40f0 <CORETHandler+0x9c>
			Tk_press_time_cnt0=0;
    40ec:	3200      	movi      	r2, 0
    40ee:	b340      	st.w      	r2, (r3, 0x0)
		else {
			Tk_press_time_cnt1=0;
		}
	}
	}
}
    40f0:	d9ee2003 	ld.w      	r15, (r14, 0xc)
    40f4:	98c2      	ld.w      	r6, (r14, 0x8)
    40f6:	98a1      	ld.w      	r5, (r14, 0x4)
    40f8:	9880      	ld.w      	r4, (r14, 0x0)
    40fa:	1404      	addi      	r14, r14, 16
    40fc:	1463      	ipop
    40fe:	1461      	nir
	else if(keymap_strict_mode==0)
    4100:	83a0      	ld.b      	r5, (r3, 0x0)
    4102:	7554      	zextb      	r5, r5
    4104:	3d40      	cmpnei      	r5, 0
    4106:	0bf5      	bt      	0x40f0	// 40f0 <CORETHandler+0x9c>
		if((Key_Map0!=Key_Map1)&&(Key_Map1!=Key_Map2)&&(Key_Map0!=Key_Map2))
    4108:	1169      	lrw      	r3, 0x2000021c	// 41ac <CORETHandler+0x158>
    410a:	114a      	lrw      	r2, 0x200001b8	// 41b0 <CORETHandler+0x15c>
    410c:	9300      	ld.w      	r0, (r3, 0x0)
    410e:	9220      	ld.w      	r1, (r2, 0x0)
    4110:	6442      	cmpne      	r0, r1
    4112:	112a      	lrw      	r1, 0x2000028c	// 41b8 <CORETHandler+0x164>
    4114:	1108      	lrw      	r0, 0x200003ac	// 41b4 <CORETHandler+0x160>
    4116:	0c36      	bf      	0x4182	// 4182 <CORETHandler+0x12e>
    4118:	92c0      	ld.w      	r6, (r2, 0x0)
    411a:	9180      	ld.w      	r4, (r1, 0x0)
    411c:	651a      	cmpne      	r6, r4
    411e:	0c32      	bf      	0x4182	// 4182 <CORETHandler+0x12e>
    4120:	93c0      	ld.w      	r6, (r3, 0x0)
    4122:	9180      	ld.w      	r4, (r1, 0x0)
    4124:	651a      	cmpne      	r6, r4
    4126:	0c2e      	bf      	0x4182	// 4182 <CORETHandler+0x12e>
			Tk_press_time_cnt0++;
    4128:	9080      	ld.w      	r4, (r0, 0x0)
    412a:	2400      	addi      	r4, 1
    412c:	b080      	st.w      	r4, (r0, 0x0)
			if(Tk_press_time_cnt0>TkeyRebaseTime)		//cnt base byTkeyRebaseTime defult 10*10=100ms
    412e:	1184      	lrw      	r4, 0x20000088	// 41bc <CORETHandler+0x168>
    4130:	84d8      	ld.b      	r6, (r4, 0x18)
    4132:	9080      	ld.w      	r4, (r0, 0x0)
    4134:	6518      	cmphs      	r6, r4
    4136:	0805      	bt      	0x4140	// 4140 <CORETHandler+0xec>
			Tk_press_time_cnt0=0;
    4138:	b0a0      	st.w      	r5, (r0, 0x0)
			base_update_f=1;
    413a:	3401      	movi      	r4, 1
    413c:	101a      	lrw      	r0, 0x200002b9	// 41a4 <CORETHandler+0x150>
    413e:	a080      	st.b      	r4, (r0, 0x0)
		if(((Key_Map0!=Key_Map1)&&(Key_Map2==0))||((Key_Map0!=Key_Map2)&&(Key_Map1==0))||((Key_Map2!=Key_Map1)&&(Key_Map0==0)))
    4140:	9380      	ld.w      	r4, (r3, 0x0)
    4142:	9200      	ld.w      	r0, (r2, 0x0)
    4144:	6412      	cmpne      	r4, r0
    4146:	101f      	lrw      	r0, 0x200003dc	// 41c0 <CORETHandler+0x16c>
    4148:	0c04      	bf      	0x4150	// 4150 <CORETHandler+0xfc>
    414a:	9180      	ld.w      	r4, (r1, 0x0)
    414c:	3c40      	cmpnei      	r4, 0
    414e:	0c0f      	bf      	0x416c	// 416c <CORETHandler+0x118>
    4150:	93a0      	ld.w      	r5, (r3, 0x0)
    4152:	9180      	ld.w      	r4, (r1, 0x0)
    4154:	6516      	cmpne      	r5, r4
    4156:	0c04      	bf      	0x415e	// 415e <CORETHandler+0x10a>
    4158:	9280      	ld.w      	r4, (r2, 0x0)
    415a:	3c40      	cmpnei      	r4, 0
    415c:	0c08      	bf      	0x416c	// 416c <CORETHandler+0x118>
    415e:	9120      	ld.w      	r1, (r1, 0x0)
    4160:	9240      	ld.w      	r2, (r2, 0x0)
    4162:	6486      	cmpne      	r1, r2
    4164:	0c12      	bf      	0x4188	// 4188 <CORETHandler+0x134>
    4166:	9360      	ld.w      	r3, (r3, 0x0)
    4168:	3b40      	cmpnei      	r3, 0
    416a:	080f      	bt      	0x4188	// 4188 <CORETHandler+0x134>
			Tk_press_time_cnt1++;
    416c:	9060      	ld.w      	r3, (r0, 0x0)
    416e:	2300      	addi      	r3, 1
    4170:	b060      	st.w      	r3, (r0, 0x0)
			if(Tk_press_time_cnt1>TkeyRebaseTime)		//cnt base byTkeyRebaseTime defult 10*10=100ms
    4172:	1073      	lrw      	r3, 0x20000088	// 41bc <CORETHandler+0x168>
    4174:	8358      	ld.b      	r2, (r3, 0x18)
    4176:	9060      	ld.w      	r3, (r0, 0x0)
    4178:	64c8      	cmphs      	r2, r3
    417a:	0bbb      	bt      	0x40f0	// 40f0 <CORETHandler+0x9c>
			Tk_press_time_cnt1=0;
    417c:	3300      	movi      	r3, 0
    417e:	b060      	st.w      	r3, (r0, 0x0)
    4180:	07b2      	br      	0x40e4	// 40e4 <CORETHandler+0x90>
			Tk_press_time_cnt0=0;
    4182:	3400      	movi      	r4, 0
    4184:	b080      	st.w      	r4, (r0, 0x0)
    4186:	07dd      	br      	0x4140	// 4140 <CORETHandler+0xec>
			Tk_press_time_cnt1=0;
    4188:	3300      	movi      	r3, 0
    418a:	b060      	st.w      	r3, (r0, 0x0)
}
    418c:	07b2      	br      	0x40f0	// 40f0 <CORETHandler+0x9c>
    418e:	0000      	bkpt
    4190:	20000064 	.long	0x20000064
    4194:	20000224 	.long	0x20000224
    4198:	20000314 	.long	0x20000314
    419c:	200000b0 	.long	0x200000b0
    41a0:	2000030c 	.long	0x2000030c
    41a4:	200002b9 	.long	0x200002b9
    41a8:	200000a4 	.long	0x200000a4
    41ac:	2000021c 	.long	0x2000021c
    41b0:	200001b8 	.long	0x200001b8
    41b4:	200003ac 	.long	0x200003ac
    41b8:	2000028c 	.long	0x2000028c
    41bc:	20000088 	.long	0x20000088
    41c0:	200003dc 	.long	0x200003dc

Disassembly of section .text.std_clk_calib_source:

000041c4 <std_clk_calib_source>:



void std_clk_calib_source(CALIB_SRC_SELECTE_TypeDef SRC_CALIB_X)
{
	if(SRC_CALIB_X==CLK_ISOSC_27K)
    41c4:	3840      	cmpnei      	r0, 0
    41c6:	1069      	lrw      	r3, 0x20000014	// 41e8 <std_clk_calib_source+0x24>
    41c8:	0807      	bt      	0x41d6	// 41d6 <std_clk_calib_source+0x12>
		LPT->CEDR = 0xbe9c000d;
		LPT->PRDR =262;
	}
	else 
	{
		LPT->CEDR = 0xbe9c0005;
    41ca:	9360      	ld.w      	r3, (r3, 0x0)
    41cc:	1048      	lrw      	r2, 0xbe9c0005	// 41ec <std_clk_calib_source+0x28>
    41ce:	b340      	st.w      	r2, (r3, 0x0)
		LPT->PRDR =216;
    41d0:	32d8      	movi      	r2, 216
    41d2:	b345      	st.w      	r2, (r3, 0x14)
	}
}
    41d4:	0409      	br      	0x41e6	// 41e6 <std_clk_calib_source+0x22>
	else if(SRC_CALIB_X==CLK_EMOSC_32_768K)
    41d6:	3841      	cmpnei      	r0, 1
    41d8:	0bf9      	bt      	0x41ca	// 41ca <std_clk_calib_source+0x6>
		LPT->CEDR = 0xbe9c000d;
    41da:	9340      	ld.w      	r2, (r3, 0x0)
    41dc:	1065      	lrw      	r3, 0xbe9c000d	// 41f0 <std_clk_calib_source+0x2c>
    41de:	b260      	st.w      	r3, (r2, 0x0)
		LPT->PRDR =262;
    41e0:	3383      	movi      	r3, 131
    41e2:	4361      	lsli      	r3, r3, 1
    41e4:	b265      	st.w      	r3, (r2, 0x14)
}
    41e6:	783c      	jmp      	r15
    41e8:	20000014 	.long	0x20000014
    41ec:	be9c0005 	.long	0xbe9c0005
    41f0:	be9c000d 	.long	0xbe9c000d

Disassembly of section .text.std_clk_calib:

000041f4 <std_clk_calib>:

U8_T std_clk_calib(CALIB_OSC_SELECTE_TypeDef OSC_CALIB_X)
{
    41f4:	14d4      	push      	r4-r7, r15
    41f6:	142d      	subi      	r14, r14, 52
	volatile U8_T eClkSrc;
	volatile U32_T  wPclkValue,wCheckData,tClkCalibMin,tClkCalibMax;
	volatile U8_T byFlag = 1,byDiv; 
    41f8:	3201      	movi      	r2, 1
	volatile U32_T  wClkCalibStep,tClkClcrValue,tClkCalibBtSumValue;
	volatile U32_T tClkCalibBtCntValue[3];
	
	eClkSrc=SYSCON->SCLKCR&0xff;
    41fa:	03cd      	lrw      	r6, 0x2000005c	// 4440 <std_clk_calib+0x24c>
{
    41fc:	6cc3      	mov      	r3, r0
	volatile U8_T byFlag = 1,byDiv; 
    41fe:	dc4e000a 	st.b      	r2, (r14, 0xa)
	eClkSrc=SYSCON->SCLKCR&0xff;
    4202:	9640      	ld.w      	r2, (r6, 0x0)
    4204:	9247      	ld.w      	r2, (r2, 0x1c)
    4206:	7488      	zextb      	r2, r2
    4208:	dc4e0009 	st.b      	r2, (r14, 0x9)
	if((eClkSrc!=0x00)&&(eClkSrc!=0x02))
    420c:	d84e0009 	ld.b      	r2, (r14, 0x9)
    4210:	3a40      	cmpnei      	r2, 0
    4212:	0c08      	bf      	0x4222	// 4222 <std_clk_calib+0x2e>
    4214:	d84e0009 	ld.b      	r2, (r14, 0x9)
    4218:	3a42      	cmpnei      	r2, 2
    421a:	0c04      	bf      	0x4222	// 4222 <std_clk_calib+0x2e>
			{
				tClkClcrValue = tClkClcrValue + wClkCalibStep ;
				if((tClkClcrValue&0xff0000)==0xff0000)
				{
					byFlag =0;
					return ERROR;	
    421c:	3000      	movi      	r0, 0
	}
	LPT->RSSR |= (0X5<<12);
	BT0->RSSR |= (0X5<<12);
	asm  ("psrset ee,ie");  
	return SUCCESS;
}
    421e:	140d      	addi      	r14, r14, 52
    4220:	1494      	pop      	r4-r7, r15
	BT0->CR = 0x09;
    4222:	0396      	lrw      	r4, 0x2000000c	// 4444 <std_clk_calib+0x250>
    4224:	3209      	movi      	r2, 9
    4226:	9400      	ld.w      	r0, (r4, 0x0)
	if(OSC_CALIB_X==CLK_HFOSC_48M)
    4228:	3b40      	cmpnei      	r3, 0
	BT0->CR = 0x09;
    422a:	b041      	st.w      	r2, (r0, 0x4)
	if(OSC_CALIB_X==CLK_HFOSC_48M)
    422c:	0858      	bt      	0x42dc	// 42dc <std_clk_calib+0xe8>
		byDiv = 7;
    422e:	3307      	movi      	r3, 7
    4230:	dc6e000b 	st.b      	r3, (r14, 0xb)
		wPclkValue=48000000;
    4234:	037a      	lrw      	r3, 0x2dc6c00	// 4448 <std_clk_calib+0x254>
		wPclkValue=12000000;
    4236:	b863      	st.w      	r3, (r14, 0xc)
		wClkCalibStep=CLCE_STEP_HF;
    4238:	3380      	movi      	r3, 128
    423a:	4362      	lsli      	r3, r3, 2
		wClkCalibStep=CLCE_STEP_IM;
    423c:	b867      	st.w      	r3, (r14, 0x1c)
	BT0->PSCR = byDiv;
    423e:	d86e000b 	ld.b      	r3, (r14, 0xb)
    4242:	74cc      	zextb      	r3, r3
    4244:	b062      	st.w      	r3, (r0, 0x8)
	BT0->PRDR = 65535;
    4246:	037d      	lrw      	r3, 0xffff	// 444c <std_clk_calib+0x258>
    4248:	b063      	st.w      	r3, (r0, 0xc)
	BT_ConfigInterrupt_CMD(BT0,ENABLE,BT_PEND);
    424a:	3201      	movi      	r2, 1
    424c:	3101      	movi      	r1, 1
	LPT->PSCR = LPT_PSC_DIV0;
    424e:	03be      	lrw      	r5, 0x20000014	// 4450 <std_clk_calib+0x25c>
	BT_ConfigInterrupt_CMD(BT0,ENABLE,BT_PEND);
    4250:	e3ffeff4 	bsr      	0x2238	// 2238 <BT_ConfigInterrupt_CMD>
	LPT->PSCR = LPT_PSC_DIV0;
    4254:	95e0      	ld.w      	r7, (r5, 0x0)
    4256:	3300      	movi      	r3, 0
	LPT->CR = 0x30010;
    4258:	135f      	lrw      	r2, 0x30010	// 4454 <std_clk_calib+0x260>
	LPT->PSCR = LPT_PSC_DIV0;
    425a:	b762      	st.w      	r3, (r7, 0x8)
	LPT->CR = 0x30010;
    425c:	b743      	st.w      	r2, (r7, 0xc)
	LPT->IMCR  |=LPT_PEND;
    425e:	974f      	ld.w      	r2, (r7, 0x3c)
    4260:	3aa2      	bseti      	r2, 2
    4262:	b74f      	st.w      	r2, (r7, 0x3c)
	wCheckData = wPclkValue/(125*(byDiv + 1));                         //(wPclkValue*8)/(1000*(byDiv + 1))
    4264:	9803      	ld.w      	r0, (r14, 0xc)
    4266:	d82e000b 	ld.b      	r1, (r14, 0xb)
    426a:	327d      	movi      	r2, 125
    426c:	2100      	addi      	r1, 1
    426e:	7c48      	mult      	r1, r2
	LPT->PSCR = LPT_PSC_DIV0;
    4270:	b861      	st.w      	r3, (r14, 0x4)
	wCheckData = wPclkValue/(125*(byDiv + 1));                         //(wPclkValue*8)/(1000*(byDiv + 1))
    4272:	e3fff5b1 	bsr      	0x2dd4	// 2dd4 <__udivsi3>
    4276:	b804      	st.w      	r0, (r14, 0x10)
	if(wCheckData <= 1000)
    4278:	32fa      	movi      	r2, 250
    427a:	9824      	ld.w      	r1, (r14, 0x10)
    427c:	4242      	lsli      	r2, r2, 2
    427e:	6448      	cmphs      	r2, r1
    4280:	0bce      	bt      	0x421c	// 421c <std_clk_calib+0x28>
	tClkCalibMin=wCheckData - (wCheckData/120);
    4282:	9844      	ld.w      	r2, (r14, 0x10)
    4284:	3178      	movi      	r1, 120
    4286:	9804      	ld.w      	r0, (r14, 0x10)
    4288:	b840      	st.w      	r2, (r14, 0x0)
    428a:	e3fff5a5 	bsr      	0x2dd4	// 2dd4 <__udivsi3>
    428e:	9840      	ld.w      	r2, (r14, 0x0)
    4290:	6082      	subu      	r2, r0
    4292:	b845      	st.w      	r2, (r14, 0x14)
	tClkCalibMax=wCheckData + (wCheckData/120);	
    4294:	9804      	ld.w      	r0, (r14, 0x10)
    4296:	3178      	movi      	r1, 120
    4298:	9844      	ld.w      	r2, (r14, 0x10)
    429a:	b840      	st.w      	r2, (r14, 0x0)
    429c:	e3fff59c 	bsr      	0x2dd4	// 2dd4 <__udivsi3>
    42a0:	9840      	ld.w      	r2, (r14, 0x0)
    42a2:	6008      	addu      	r0, r2
    42a4:	b806      	st.w      	r0, (r14, 0x18)
	asm  ("psrclr ie");                                                 //disable interrupt
    42a6:	c0807020 	psrclr      	ie
	tClkClcrValue = SYSCON->CLCR;
    42aa:	9640      	ld.w      	r2, (r6, 0x0)
    42ac:	9254      	ld.w      	r2, (r2, 0x50)
    42ae:	b848      	st.w      	r2, (r14, 0x20)
	BT0->RSSR =0;  //stop;
    42b0:	9861      	ld.w      	r3, (r14, 0x4)
    42b2:	9440      	ld.w      	r2, (r4, 0x0)
    42b4:	b260      	st.w      	r3, (r2, 0x0)
	LPT->RSSR = 0; //stop
    42b6:	b761      	st.w      	r3, (r7, 0x4)
	while(byFlag)
    42b8:	d86e000a 	ld.b      	r3, (r14, 0xa)
    42bc:	3b40      	cmpnei      	r3, 0
    42be:	0843      	bt      	0x4344	// 4344 <std_clk_calib+0x150>
	LPT->RSSR |= (0X5<<12);
    42c0:	9540      	ld.w      	r2, (r5, 0x0)
    42c2:	9261      	ld.w      	r3, (r2, 0x4)
    42c4:	3bac      	bseti      	r3, 12
    42c6:	3bae      	bseti      	r3, 14
    42c8:	b261      	st.w      	r3, (r2, 0x4)
	BT0->RSSR |= (0X5<<12);
    42ca:	9440      	ld.w      	r2, (r4, 0x0)
    42cc:	9260      	ld.w      	r3, (r2, 0x0)
    42ce:	3bac      	bseti      	r3, 12
    42d0:	3bae      	bseti      	r3, 14
    42d2:	b260      	st.w      	r3, (r2, 0x0)
	asm  ("psrset ee,ie");  
    42d4:	c1807420 	psrset      	ee, ie
	return SUCCESS;
    42d8:	3001      	movi      	r0, 1
    42da:	07a2      	br      	0x421e	// 421e <std_clk_calib+0x2a>
	if(OSC_CALIB_X==CLK_HFOSC_24M) 
    42dc:	3b41      	cmpnei      	r3, 1
    42de:	0806      	bt      	0x42ea	// 42ea <std_clk_calib+0xf6>
		byDiv = 3;
    42e0:	3303      	movi      	r3, 3
    42e2:	dc6e000b 	st.b      	r3, (r14, 0xb)
		wPclkValue=24000000;
    42e6:	127d      	lrw      	r3, 0x16e3600	// 4458 <std_clk_calib+0x264>
    42e8:	07a7      	br      	0x4236	// 4236 <std_clk_calib+0x42>
	if(OSC_CALIB_X==CLK_HFOSC_12M)
    42ea:	3b42      	cmpnei      	r3, 2
    42ec:	0806      	bt      	0x42f8	// 42f8 <std_clk_calib+0x104>
		byDiv = 1;	
    42ee:	3301      	movi      	r3, 1
    42f0:	dc6e000b 	st.b      	r3, (r14, 0xb)
		wPclkValue=12000000;
    42f4:	127a      	lrw      	r3, 0xb71b00	// 445c <std_clk_calib+0x268>
    42f6:	07a0      	br      	0x4236	// 4236 <std_clk_calib+0x42>
	if(OSC_CALIB_X==CLK_HFOSC_6M)
    42f8:	3b43      	cmpnei      	r3, 3
    42fa:	0806      	bt      	0x4306	// 4306 <std_clk_calib+0x112>
		byDiv = 0;
    42fc:	3300      	movi      	r3, 0
    42fe:	dc6e000b 	st.b      	r3, (r14, 0xb)
		wPclkValue=6000000;
    4302:	1278      	lrw      	r3, 0x5b8d80	// 4460 <std_clk_calib+0x26c>
    4304:	0799      	br      	0x4236	// 4236 <std_clk_calib+0x42>
	if(OSC_CALIB_X==CLK_IMOSC_5556K)
    4306:	3b44      	cmpnei      	r3, 4
    4308:	0809      	bt      	0x431a	// 431a <std_clk_calib+0x126>
		byDiv = 0;
    430a:	3300      	movi      	r3, 0
    430c:	dc6e000b 	st.b      	r3, (r14, 0xb)
		wPclkValue=5556000;
    4310:	1275      	lrw      	r3, 0x54c720	// 4464 <std_clk_calib+0x270>
		wPclkValue=131000;
    4312:	b863      	st.w      	r3, (r14, 0xc)
		wClkCalibStep=CLCE_STEP_IM;
    4314:	3380      	movi      	r3, 128
    4316:	4369      	lsli      	r3, r3, 9
    4318:	0792      	br      	0x423c	// 423c <std_clk_calib+0x48>
	if(OSC_CALIB_X==CLK_IMOSC_4194K)
    431a:	3b45      	cmpnei      	r3, 5
    431c:	0806      	bt      	0x4328	// 4328 <std_clk_calib+0x134>
		byDiv = 0;
    431e:	3300      	movi      	r3, 0
    4320:	dc6e000b 	st.b      	r3, (r14, 0xb)
		wPclkValue=4194000;
    4324:	1271      	lrw      	r3, 0x3ffed0	// 4468 <std_clk_calib+0x274>
    4326:	07f6      	br      	0x4312	// 4312 <std_clk_calib+0x11e>
	if(OSC_CALIB_X==CLK_IMOSC_2097K)
    4328:	3b46      	cmpnei      	r3, 6
    432a:	0806      	bt      	0x4336	// 4336 <std_clk_calib+0x142>
		byDiv = 0;
    432c:	3300      	movi      	r3, 0
    432e:	dc6e000b 	st.b      	r3, (r14, 0xb)
		wPclkValue=2097000;
    4332:	126f      	lrw      	r3, 0x1fff68	// 446c <std_clk_calib+0x278>
    4334:	07ef      	br      	0x4312	// 4312 <std_clk_calib+0x11e>
	if(OSC_CALIB_X==CLK_IMOSC_131K)
    4336:	3b47      	cmpnei      	r3, 7
    4338:	0b83      	bt      	0x423e	// 423e <std_clk_calib+0x4a>
		byDiv = 0;
    433a:	3300      	movi      	r3, 0
    433c:	dc6e000b 	st.b      	r3, (r14, 0xb)
		wPclkValue=131000;
    4340:	126c      	lrw      	r3, 0x1ffb8	// 4470 <std_clk_calib+0x27c>
    4342:	07e8      	br      	0x4312	// 4312 <std_clk_calib+0x11e>
		LPT->RSSR = 1;
    4344:	9560      	ld.w      	r3, (r5, 0x0)
    4346:	3101      	movi      	r1, 1
	    BT0->RSSR =1;
    4348:	9440      	ld.w      	r2, (r4, 0x0)
		LPT->RSSR = 1;
    434a:	b321      	st.w      	r1, (r3, 0x4)
	    BT0->RSSR =1;
    434c:	b220      	st.w      	r1, (r2, 0x0)
		LPT->CNT = 0;
    434e:	3100      	movi      	r1, 0
    4350:	b327      	st.w      	r1, (r3, 0x1c)
		while(!(LPT->MISR&0x04));
    4352:	3004      	movi      	r0, 4
		BT0->CNT =0;
    4354:	b225      	st.w      	r1, (r2, 0x14)
		while(!(LPT->MISR&0x04));
    4356:	932e      	ld.w      	r1, (r3, 0x38)
    4358:	6840      	and      	r1, r0
    435a:	3940      	cmpnei      	r1, 0
    435c:	0ffd      	bf      	0x4356	// 4356 <std_clk_calib+0x162>
		tClkCalibBtCntValue[0] = BT0->CNT;
    435e:	9225      	ld.w      	r1, (r2, 0x14)
    4360:	b82a      	st.w      	r1, (r14, 0x28)
		LPT->CNT = 0;
    4362:	3100      	movi      	r1, 0
		LPT->ICR = LPT_PEND;
    4364:	b310      	st.w      	r0, (r3, 0x40)
		LPT->CNT = 0;
    4366:	b327      	st.w      	r1, (r3, 0x1c)
		while(!(LPT->MISR&0x04));
    4368:	3004      	movi      	r0, 4
		BT0->CNT =0;	
    436a:	b225      	st.w      	r1, (r2, 0x14)
		while(!(LPT->MISR&0x04));
    436c:	932e      	ld.w      	r1, (r3, 0x38)
    436e:	6840      	and      	r1, r0
    4370:	3940      	cmpnei      	r1, 0
    4372:	0ffd      	bf      	0x436c	// 436c <std_clk_calib+0x178>
		tClkCalibBtCntValue[1] = BT0->CNT;
    4374:	9225      	ld.w      	r1, (r2, 0x14)
    4376:	b82b      	st.w      	r1, (r14, 0x2c)
		LPT->CNT = 0;
    4378:	3100      	movi      	r1, 0
		LPT->ICR = LPT_PEND;
    437a:	b310      	st.w      	r0, (r3, 0x40)
		LPT->CNT = 0;
    437c:	b327      	st.w      	r1, (r3, 0x1c)
		while(!(LPT->MISR&0x04));
    437e:	3004      	movi      	r0, 4
		BT0->CNT =0;	
    4380:	b225      	st.w      	r1, (r2, 0x14)
		while(!(LPT->MISR&0x04));
    4382:	932e      	ld.w      	r1, (r3, 0x38)
    4384:	6840      	and      	r1, r0
    4386:	3940      	cmpnei      	r1, 0
    4388:	0ffd      	bf      	0x4382	// 4382 <std_clk_calib+0x18e>
		tClkCalibBtCntValue[2] = BT0->CNT;
    438a:	9225      	ld.w      	r1, (r2, 0x14)
    438c:	b82c      	st.w      	r1, (r14, 0x30)
		LPT->ICR = LPT_PEND;	
    438e:	b310      	st.w      	r0, (r3, 0x40)
		tClkCalibBtSumValue = tClkCalibBtCntValue[1]+tClkCalibBtCntValue[2];
    4390:	982b      	ld.w      	r1, (r14, 0x2c)
    4392:	980c      	ld.w      	r0, (r14, 0x30)
    4394:	6040      	addu      	r1, r0
    4396:	b829      	st.w      	r1, (r14, 0x24)
		tClkCalibBtSumValue = tClkCalibBtSumValue/2;
    4398:	9829      	ld.w      	r1, (r14, 0x24)
    439a:	4921      	lsri      	r1, r1, 1
    439c:	b829      	st.w      	r1, (r14, 0x24)
		LPT->RSSR = 0;
    439e:	3100      	movi      	r1, 0
    43a0:	b321      	st.w      	r1, (r3, 0x4)
	    BT0->RSSR =0;
    43a2:	b220      	st.w      	r1, (r2, 0x0)
		LPT->CNT = 0;
    43a4:	b327      	st.w      	r1, (r3, 0x1c)
		BT0->CNT =0;
    43a6:	b225      	st.w      	r1, (r2, 0x14)
		if(eClkSrc == 0x02)
    43a8:	d86e0009 	ld.b      	r3, (r14, 0x9)
    43ac:	3b42      	cmpnei      	r3, 2
			if(tClkCalibBtSumValue<0x800)
    43ae:	9849      	ld.w      	r2, (r14, 0x24)
		if(eClkSrc == 0x02)
    43b0:	082c      	bt      	0x4408	// 4408 <std_clk_calib+0x214>
			if(tClkCalibBtSumValue<0x800)
    43b2:	1171      	lrw      	r3, 0x7ff	// 4474 <std_clk_calib+0x280>
    43b4:	648c      	cmphs      	r3, r2
    43b6:	0c03      	bf      	0x43bc	// 43bc <std_clk_calib+0x1c8>
					byFlag =0;
    43b8:	3300      	movi      	r3, 0
    43ba:	040f      	br      	0x43d8	// 43d8 <std_clk_calib+0x1e4>
			else if(tClkCalibBtSumValue>tClkCalibMax)  
    43bc:	9849      	ld.w      	r2, (r14, 0x24)
    43be:	9866      	ld.w      	r3, (r14, 0x18)
    43c0:	648c      	cmphs      	r3, r2
    43c2:	080e      	bt      	0x43de	// 43de <std_clk_calib+0x1ea>
				tClkClcrValue = tClkClcrValue - wClkCalibStep ;
    43c4:	9868      	ld.w      	r3, (r14, 0x20)
    43c6:	9847      	ld.w      	r2, (r14, 0x1c)
    43c8:	60ca      	subu      	r3, r2
    43ca:	b868      	st.w      	r3, (r14, 0x20)
				if((tClkClcrValue&0xfe00)==0)
    43cc:	32fe      	movi      	r2, 254
    43ce:	9868      	ld.w      	r3, (r14, 0x20)
    43d0:	4248      	lsli      	r2, r2, 8
				if((tClkClcrValue&0xff0000)==0)
    43d2:	68c8      	and      	r3, r2
    43d4:	3b40      	cmpnei      	r3, 0
    43d6:	0812      	bt      	0x43fa	// 43fa <std_clk_calib+0x206>
					byFlag =0;
    43d8:	dc6e000a 	st.b      	r3, (r14, 0xa)
    43dc:	0720      	br      	0x421c	// 421c <std_clk_calib+0x28>
			else if(tClkCalibBtSumValue<tClkCalibMin)  
    43de:	9849      	ld.w      	r2, (r14, 0x24)
    43e0:	9865      	ld.w      	r3, (r14, 0x14)
    43e2:	64c8      	cmphs      	r2, r3
    43e4:	0829      	bt      	0x4436	// 4436 <std_clk_calib+0x242>
				tClkClcrValue = tClkClcrValue + wClkCalibStep ;
    43e6:	9868      	ld.w      	r3, (r14, 0x20)
    43e8:	9847      	ld.w      	r2, (r14, 0x1c)
    43ea:	60c8      	addu      	r3, r2
    43ec:	b868      	st.w      	r3, (r14, 0x20)
				if((tClkClcrValue&0xfe00)==0xfe00)
    43ee:	33fe      	movi      	r3, 254
    43f0:	9848      	ld.w      	r2, (r14, 0x20)
    43f2:	4368      	lsli      	r3, r3, 8
				if((tClkClcrValue&0xff0000)==0xff0000)
    43f4:	688c      	and      	r2, r3
    43f6:	64ca      	cmpne      	r2, r3
    43f8:	0fe0      	bf      	0x43b8	// 43b8 <std_clk_calib+0x1c4>
				SYSCON->CLCR = tClkClcrValue;
    43fa:	9660      	ld.w      	r3, (r6, 0x0)
    43fc:	9848      	ld.w      	r2, (r14, 0x20)
    43fe:	b354      	st.w      	r2, (r3, 0x50)
		delay_nms(1);
    4400:	3001      	movi      	r0, 1
    4402:	e3ffef24 	bsr      	0x224a	// 224a <delay_nms>
    4406:	0759      	br      	0x42b8	// 42b8 <std_clk_calib+0xc4>
			if(tClkCalibBtSumValue>tClkCalibMax)                    
    4408:	9866      	ld.w      	r3, (r14, 0x18)
    440a:	648c      	cmphs      	r3, r2
    440c:	0809      	bt      	0x441e	// 441e <std_clk_calib+0x22a>
				tClkClcrValue = tClkClcrValue - wClkCalibStep;
    440e:	9868      	ld.w      	r3, (r14, 0x20)
    4410:	9847      	ld.w      	r2, (r14, 0x1c)
    4412:	60ca      	subu      	r3, r2
    4414:	b868      	st.w      	r3, (r14, 0x20)
				if((tClkClcrValue&0xff0000)==0)
    4416:	32ff      	movi      	r2, 255
    4418:	9868      	ld.w      	r3, (r14, 0x20)
    441a:	4250      	lsli      	r2, r2, 16
    441c:	07db      	br      	0x43d2	// 43d2 <std_clk_calib+0x1de>
			else if(tClkCalibBtSumValue<tClkCalibMin)  
    441e:	9849      	ld.w      	r2, (r14, 0x24)
    4420:	9865      	ld.w      	r3, (r14, 0x14)
    4422:	64c8      	cmphs      	r2, r3
    4424:	0809      	bt      	0x4436	// 4436 <std_clk_calib+0x242>
				tClkClcrValue = tClkClcrValue + wClkCalibStep ;
    4426:	9868      	ld.w      	r3, (r14, 0x20)
    4428:	9847      	ld.w      	r2, (r14, 0x1c)
    442a:	60c8      	addu      	r3, r2
    442c:	b868      	st.w      	r3, (r14, 0x20)
				if((tClkClcrValue&0xff0000)==0xff0000)
    442e:	33ff      	movi      	r3, 255
    4430:	9848      	ld.w      	r2, (r14, 0x20)
    4432:	4370      	lsli      	r3, r3, 16
    4434:	07e0      	br      	0x43f4	// 43f4 <std_clk_calib+0x200>
				byFlag =0;
    4436:	3300      	movi      	r3, 0
    4438:	dc6e000a 	st.b      	r3, (r14, 0xa)
    443c:	07e2      	br      	0x4400	// 4400 <std_clk_calib+0x20c>
    443e:	0000      	bkpt
    4440:	2000005c 	.long	0x2000005c
    4444:	2000000c 	.long	0x2000000c
    4448:	02dc6c00 	.long	0x02dc6c00
    444c:	0000ffff 	.long	0x0000ffff
    4450:	20000014 	.long	0x20000014
    4454:	00030010 	.long	0x00030010
    4458:	016e3600 	.long	0x016e3600
    445c:	00b71b00 	.long	0x00b71b00
    4460:	005b8d80 	.long	0x005b8d80
    4464:	0054c720 	.long	0x0054c720
    4468:	003ffed0 	.long	0x003ffed0
    446c:	001fff68 	.long	0x001fff68
    4470:	0001ffb8 	.long	0x0001ffb8
    4474:	000007ff 	.long	0x000007ff

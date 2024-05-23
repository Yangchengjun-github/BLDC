
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
       4:	00003192 	.long	0x00003192
	TK_senprd[0]=50;								//TCH0 scan period = TCH0 sens
       8:	00003182 	.long	0x00003182
	TK_senprd[11]=50;								//TCH11 scan period = TCH11 sens
	TK_senprd[12]=50;								//TCH12 scan period = TCH12 sens
	TK_senprd[13]=50;								//TCH13 scan period = TCH13 sens
	TK_senprd[14]=50;								//TCH14 scan period = TCH14 sens
	TK_senprd[15]=50;								//TCH15 scan period = TCH15 sens
	TK_senprd[16]=50;								//TCH16 scan period = TCH16 sens
       c:	00000184 	.long	0x00000184
	TK_senprd[1]=50;								//TCH1 scan period = TCH1 sens
      10:	0000318a 	.long	0x0000318a
	TK_senprd[3]=50;								//TCH3 scan period = TCH3 sens
      14:	00003148 	.long	0x00003148
	TK_senprd[5]=50;								//TCH5 scan period = TCH5 sens
      18:	00000184 	.long	0x00000184
	TK_senprd[7]=50;								//TCH7 scan period = TCH7 sens
      1c:	0000317a 	.long	0x0000317a
	TK_senprd[9]=50;								//TCH9 scan period = TCH9 sens
      20:	00003172 	.long	0x00003172
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
      40:	0000316a 	.long	0x0000316a
	TK_Triggerlevel[7]=60;							//TCH7 TK_Trigger level
	TK_Triggerlevel[8]=60;							//TCH8 TK_Trigger level
      44:	00003162 	.long	0x00003162
	TK_Triggerlevel[9]=60;							//TCH9 TK_Trigger level
	TK_Triggerlevel[10]=60;							//TCH10 TK_Trigger level
      48:	0000315a 	.long	0x0000315a
	TK_Triggerlevel[11]=60;							//TCH11 TK_Trigger level
	TK_Triggerlevel[12]=60;							//TCH12 TK_Trigger level
      4c:	00003152 	.long	0x00003152
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
      7c:	0000314a 	.long	0x0000314a
/****************************************************
//TK function define
*****************************************************/
	TK_Lowpower_mode=DISABLE;						//touch key can goto sleep when TK lowpower mode enable
      80:	00004838 	.long	0x00004838
      84:	0000283c 	.long	0x0000283c
	TK_Lowpower_level=2;							//0=20ms 1=50ms 2=100ms 3=150ms 4=200ms,Scan interval when sleep
      88:	00002934 	.long	0x00002934
	TK_Wakeup_level=50;								//touch key Trigger level in sleep
      8c:	0000299c 	.long	0x0000299c
      90:	00002a24 	.long	0x00002a24
/****************************************************
//TK special parameter define
*****************************************************/
	TK_PSEL_MODE=TK_PSEL_AVDD;						//tk power sel:TK_PSEL_FVR/TK_PSEL_AVDD   when select TK_PSEL_FVR PA0.2(TCH3) need a 104 cap
      94:	00000184 	.long	0x00000184
	TK_FVR_LEVEL=TK_FVR_4096V;						//FVR level:TK_FVR_2048V/TK_FVR_4096V
      98:	00002bcc 	.long	0x00002bcc
	TK_EC_LEVEL=TK_EC_3V;							//C0 voltage sel:TK_EC_1V/TK_EC_2V/TK_EC_3V/TK_EC_3_6V
      9c:	00002f10 	.long	0x00002f10
      a0:	00002f40 	.long	0x00002f40
	TK_icon[0]=4;									//TCH0 TK Scan icon
      a4:	00002c00 	.long	0x00002c00
      a8:	00000184 	.long	0x00000184
	TK_icon[1]=4;									//TCH1 TK Scan icon
	TK_icon[2]=4;									//TCH2 TK Scan icon
      ac:	00000184 	.long	0x00000184
	TK_icon[3]=4;									//TCH3 TK Scan icon
	TK_icon[4]=4;									//TCH4 TK Scan icon
      b0:	00002c80 	.long	0x00002c80
	TK_icon[5]=4;									//TCH5 TK Scan icon
	TK_icon[6]=4;									//TCH6 TK Scan icon
      b4:	00002cf0 	.long	0x00002cf0
	TK_icon[7]=4;									//TCH7 TK Scan icon
	TK_icon[8]=4;									//TCH8 TK Scan icon
      b8:	00002d2c 	.long	0x00002d2c
	TK_icon[9]=4;									//TCH9 TK Scan icon
	TK_icon[10]=4;									//TCH10 TK Scan icon
      bc:	00002d68 	.long	0x00002d68
	TK_icon[11]=4;									//TCH11 TK Scan icon
	TK_icon[12]=4;									//TCH12 TK Scan icon
      c0:	00000184 	.long	0x00000184
	TK_icon[13]=4;									//TCH13 TK Scan icon
	TK_icon[14]=4;									//TCH14 TK Scan icon
      c4:	000031a2 	.long	0x000031a2
	TK_Wheel_Seq[0]=14;								
	TK_Wheel_Seq[1]=0;
	TK_Wheel_Seq[2]=15;
	TK_Wheel_Seq[3]=1;	
#endif
      c8:	00000184 	.long	0x00000184
      cc:	00002da4 	.long	0x00002da4
      d0:	00002e8c 	.long	0x00002e8c
      d4:	00002f70 	.long	0x00002f70
      d8:	00002fb8 	.long	0x00002fb8
      dc:	00003014 	.long	0x00003014
      e0:	0000319a 	.long	0x0000319a
      e4:	00004798 	.long	0x00004798
      e8:	00003074 	.long	0x00003074
      ec:	00000184 	.long	0x00000184
      f0:	000030a8 	.long	0x000030a8
      f4:	000030f4 	.long	0x000030f4
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
     152:	1013      	lrw      	r0, 0x31ac	// 19c <DummyHandler+0x18>
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
     19c:	000031ac 	.long	0x000031ac
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
     53c:	1168      	lrw      	r3, 0x4c5c	// 5dc <__GI_pow+0x428>
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
     5dc:	00004c5c 	.long	0x00004c5c
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
     7de:	01db      	lrw      	r6, 0x4c5c	// aec <__GI_pow+0x938>
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
     7f8:	0202      	lrw      	r0, 0x4c5c	// aec <__GI_pow+0x938>
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
     aec:	00004c5c 	.long	0x00004c5c
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
     f24:	111d      	lrw      	r0, 0x4c8c	// 1018 <_fpadd_parts+0x2d0>
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
    1018:	00004c8c 	.long	0x00004c8c

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
    1264:	1013      	lrw      	r0, 0x4c8c	// 12b0 <__muldf3+0x22c>
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
    12b0:	00004c8c 	.long	0x00004c8c
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
    13b2:	1016      	lrw      	r0, 0x4c8c	// 1408 <__divdf3+0x150>
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
    1408:	00004c8c 	.long	0x00004c8c

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
    1656:	1048      	lrw      	r2, 0x4ca0	// 1674 <__clzsi2+0x3c>
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
    1674:	00004ca0 	.long	0x00004ca0

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
    198a:	1085      	lrw      	r4, 0x200000c4	// 199c <__GI_puts+0x14>
    198c:	9420      	ld.w      	r1, (r4, 0x0)
    198e:	e0000033 	bsr      	0x19f4	// 19f4 <__GI_fputs>
    1992:	9420      	ld.w      	r1, (r4, 0x0)
    1994:	300a      	movi      	r0, 10
    1996:	e0000c35 	bsr      	0x3200	// 3200 <fputc>
    199a:	1491      	pop      	r4, r15
    199c:	200000c4 	.long	0x200000c4

000019a0 <__stdio_outs>:
    19a0:	14d3      	push      	r4-r6, r15
    19a2:	10ac      	lrw      	r5, 0x200000c4	// 19d0 <__stdio_outs+0x30>
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
    19c6:	e0000c1d 	bsr      	0x3200	// 3200 <fputc>
    19ca:	2400      	addi      	r4, 1
    19cc:	07f3      	br      	0x19b2	// 19b2 <__stdio_outs+0x12>
    19ce:	0000      	bkpt
    19d0:	200000c4 	.long	0x200000c4

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
    1a2e:	e0000be9 	bsr      	0x3200	// 3200 <fputc>
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
    1c46:	e0000cb9 	bsr      	0x35b8	// 35b8 <__umodsi3>
    1c4a:	6018      	addu      	r0, r6
    1c4c:	2c00      	subi      	r4, 1
    1c4e:	a400      	st.b      	r0, (r4, 0x0)
    1c50:	310a      	movi      	r1, 10
    1c52:	6c1f      	mov      	r0, r7
    1c54:	e0000ca0 	bsr      	0x3594	// 3594 <__udivsi3>
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
    1c6c:	1029      	lrw      	r1, 0x4db4	// 1c90 <__main+0x28>
    1c6e:	6442      	cmpne      	r0, r1
    1c70:	0c05      	bf      	0x1c7a	// 1c7a <__main+0x12>
//    __memcpy_fast( dst, src, (_end_data - _start_data));
    memcpy( dst, src, (_end_data - _start_data));
    1c72:	1049      	lrw      	r2, 0x20000104	// 1c94 <__main+0x2c>
    1c74:	6082      	subu      	r2, r0
    1c76:	e3ffff27 	bsr      	0x1ac4	// 1ac4 <__memcpy_fast>
  }

  /* zero the bss 
   */
  if( _ebss - _bss_start ) {
    1c7a:	1048      	lrw      	r2, 0x20000548	// 1c98 <__main+0x30>
    1c7c:	1008      	lrw      	r0, 0x20000104	// 1c9c <__main+0x34>
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
    1c90:	00004db4 	.long	0x00004db4
    1c94:	20000104 	.long	0x20000104
    1c98:	20000548 	.long	0x20000548
    1c9c:	20000104 	.long	0x20000104

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
    1ca4:	107a      	lrw      	r3, 0x2000004c	// 1d0c <SYSCON_General_CMD.part.0+0x6c>
    1ca6:	32ff      	movi      	r2, 255
    1ca8:	9320      	ld.w      	r1, (r3, 0x0)
    1caa:	9160      	ld.w      	r3, (r1, 0x0)
    1cac:	424c      	lsli      	r2, r2, 12
    1cae:	68c9      	andn      	r3, r2
    1cb0:	3bae      	bseti      	r3, 14
    1cb2:	3bb2      	bseti      	r3, 18
    1cb4:	b160      	st.w      	r3, (r1, 0x0)
		SYSCON->GCER|=ENDIS_X;													//enable SYSCON General Control
    1cb6:	1077      	lrw      	r3, 0x2000005c	// 1d10 <SYSCON_General_CMD.part.0+0x70>
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
    1d0c:	2000004c 	.long	0x2000004c
    1d10:	2000005c 	.long	0x2000005c

Disassembly of section .text.SYSCON_RST_VALUE:

00001d14 <SYSCON_RST_VALUE>:
	SYSCON->RAMCHK=SYSCON_RAMCHK_RST;
    1d14:	106f      	lrw      	r3, 0x2000005c	// 1d50 <SYSCON_RST_VALUE+0x3c>
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
    1d50:	2000005c 	.long	0x2000005c
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
    1d7a:	1068      	lrw      	r3, 0x2000005c	// 1d98 <SYSCON_General_CMD+0x2c>
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
    1d98:	2000005c 	.long	0x2000005c

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
    1da2:	109d      	lrw      	r4, 0x20000060	// 1e14 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x78>
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
    1dbe:	1076      	lrw      	r3, 0x20000060	// 1e14 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x78>
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
    1dce:	1074      	lrw      	r3, 0x2000005c	// 1e1c <SystemCLK_HCLKDIV_PCLKDIV_Config+0x80>
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
    1df8:	1087      	lrw      	r4, 0x20000060	// 1e14 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x78>
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
    1e08:	1083      	lrw      	r4, 0x20000060	// 1e14 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x78>
    1e0a:	3501      	movi      	r5, 1
    1e0c:	9480      	ld.w      	r4, (r4, 0x0)
    1e0e:	b4a1      	st.w      	r5, (r4, 0x4)
		IFC->MR=0X01|(0X00<<16);			//Low speed mode
    1e10:	b4a5      	st.w      	r5, (r4, 0x14)
    1e12:	07d1      	br      	0x1db4	// 1db4 <SystemCLK_HCLKDIV_PCLKDIV_Config+0x18>
    1e14:	20000060 	.long	0x20000060
    1e18:	d22d0000 	.long	0xd22d0000
    1e1c:	2000005c 	.long	0x2000005c
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
    1e30:	1066      	lrw      	r3, 0x2000005c	// 1e48 <SYSCON_HFOSC_SELECTE+0x24>
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
    1e48:	2000005c 	.long	0x2000005c

Disassembly of section .text.SYSCON_WDT_CMD:

00001e4c <SYSCON_WDT_CMD>:
//EntryParameter:,NewState
//NewState:ENABLE,DISABLE
//ReturnValue:NONE
/*************************************************************/
void SYSCON_WDT_CMD(FunctionalStatus NewState)
{
    1e4c:	106c      	lrw      	r3, 0x2000005c	// 1e7c <SYSCON_WDT_CMD+0x30>
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
    1e7c:	2000005c 	.long	0x2000005c
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
    1e88:	1064      	lrw      	r3, 0x2000005c	// 1e98 <SYSCON_IWDCNT_Reload+0x10>
    1e8a:	32b4      	movi      	r2, 180
    1e8c:	9360      	ld.w      	r3, (r3, 0x0)
    1e8e:	237f      	addi      	r3, 128
    1e90:	4257      	lsli      	r2, r2, 23
    1e92:	b34e      	st.w      	r2, (r3, 0x38)
}
    1e94:	783c      	jmp      	r15
    1e96:	0000      	bkpt
    1e98:	2000005c 	.long	0x2000005c

Disassembly of section .text.SYSCON_IWDCNT_Config:

00001e9c <SYSCON_IWDCNT_Config>:
//IWDT_INTW_DIV_X:IWDT_INTW_DIV_1/2/3/4/4/5/6
//ReturnValue: NONE
/*************************************************************/
void SYSCON_IWDCNT_Config(IWDT_TIME_TypeDef IWDT_TIME_X , IWDT_TIMEDIV_TypeDef IWDT_INTW_DIV_X )
{
	SYSCON->IWDCR=IWDT_KEY|IWDT_TIME_X|IWDT_INTW_DIV_X;
    1e9c:	1044      	lrw      	r2, 0x87780000	// 1eac <SYSCON_IWDCNT_Config+0x10>
    1e9e:	1065      	lrw      	r3, 0x2000005c	// 1eb0 <SYSCON_IWDCNT_Config+0x14>
    1ea0:	6c48      	or      	r1, r2
    1ea2:	9360      	ld.w      	r3, (r3, 0x0)
    1ea4:	6c04      	or      	r0, r1
    1ea6:	237f      	addi      	r3, 128
    1ea8:	b30d      	st.w      	r0, (r3, 0x34)
}
    1eaa:	783c      	jmp      	r15
    1eac:	87780000 	.long	0x87780000
    1eb0:	2000005c 	.long	0x2000005c

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
    1ec2:	10a4      	lrw      	r5, 0x2000005c	// 1ed0 <SYSCON_LVD_Config+0x1c>
    1ec4:	6c04      	or      	r0, r1
    1ec6:	95a0      	ld.w      	r5, (r5, 0x0)
    1ec8:	b513      	st.w      	r0, (r5, 0x4c)
}
    1eca:	1483      	pop      	r4-r6
    1ecc:	b44b0000 	.long	0xb44b0000
    1ed0:	2000005c 	.long	0x2000005c

Disassembly of section .text.LVD_Int_Enable:

00001ed4 <LVD_Int_Enable>:
//EntryParameter:NONE
//ReturnValue: NONE
/*************************************************************/
void LVD_Int_Enable(void)
{
	SYSCON->ICR = LVD_INT_ST;				//clear LVD INT status
    1ed4:	1066      	lrw      	r3, 0x2000005c	// 1eec <LVD_Int_Enable+0x18>
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
    1eec:	2000005c 	.long	0x2000005c

Disassembly of section .text.IWDT_Int_Enable:

00001ef0 <IWDT_Int_Enable>:
//EntryParameter:NONE
//ReturnValue: NONE
/*************************************************************/
void IWDT_Int_Enable(void)
{
	SYSCON->ICR = IWDT_INT_ST;				//clear LVD INT status
    1ef0:	1066      	lrw      	r3, 0x2000005c	// 1f08 <IWDT_Int_Enable+0x18>
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
    1f08:	2000005c 	.long	0x2000005c

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
    1f16:	106d      	lrw      	r3, 0x2000005c	// 1f48 <EXTI_trigger_CMD+0x3c>
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
    1f2e:	1067      	lrw      	r3, 0x2000005c	// 1f48 <EXTI_trigger_CMD+0x3c>
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
    1f48:	2000005c 	.long	0x2000005c

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
    2052:	1065      	lrw      	r3, 0x20000010	// 2064 <WWDT_CONFIG+0x14>
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
    2064:	20000010 	.long	0x20000010

Disassembly of section .text.WWDT_CNT_Load:

00002068 <WWDT_CNT_Load>:
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/ 
void WWDT_CNT_Load(U8_T cnt_data)
{
	WWDT->CR  |= cnt_data;						//SET
    2068:	1063      	lrw      	r3, 0x20000010	// 2074 <WWDT_CNT_Load+0xc>
    206a:	9360      	ld.w      	r3, (r3, 0x0)
    206c:	9340      	ld.w      	r2, (r3, 0x0)
    206e:	6c08      	or      	r0, r2
    2070:	b300      	st.w      	r0, (r3, 0x0)
}
    2072:	783c      	jmp      	r15
    2074:	20000010 	.long	0x20000010

Disassembly of section .text.WWDT_Int_Config:

00002078 <WWDT_Int_Config>:
//EntryParameter:NONE
//ReturnValue: NONE
/*************************************************************/
void WWDT_Int_Config(FunctionalStatus NewState)
{
	if (NewState != DISABLE)
    2078:	3840      	cmpnei      	r0, 0
    207a:	106a      	lrw      	r3, 0x20000010	// 20a0 <WWDT_Int_Config+0x28>
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
    20a0:	20000010 	.long	0x20000010
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
    214c:	1065      	lrw      	r3, 0x20000040	// 2160 <UART0_DeInit+0x14>
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
    2160:	20000040 	.long	0x20000040

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
    216c:	1172      	lrw      	r3, 0x2000004c	// 2234 <UART_IO_Init+0xd0>
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
    2182:	116d      	lrw      	r3, 0x2000004c	// 2234 <UART_IO_Init+0xd0>
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
    21a0:	1166      	lrw      	r3, 0x20000048	// 2238 <UART_IO_Init+0xd4>
    21a2:	310f      	movi      	r1, 15
    21a4:	9340      	ld.w      	r2, (r3, 0x0)
    21a6:	9260      	ld.w      	r3, (r2, 0x0)
    21a8:	68c5      	andn      	r3, r1
    21aa:	3107      	movi      	r1, 7
    21ac:	6cc4      	or      	r3, r1
    21ae:	b260      	st.w      	r3, (r2, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)  | 0x00700000;       
    21b0:	32f0      	movi      	r2, 240
    21b2:	1161      	lrw      	r3, 0x2000004c	// 2234 <UART_IO_Init+0xd0>
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
    21c6:	107c      	lrw      	r3, 0x2000004c	// 2234 <UART_IO_Init+0xd0>
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
    21e0:	1075      	lrw      	r3, 0x2000004c	// 2234 <UART_IO_Init+0xd0>
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
    21f8:	106f      	lrw      	r3, 0x2000004c	// 2234 <UART_IO_Init+0xd0>
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
    220c:	106a      	lrw      	r3, 0x2000004c	// 2234 <UART_IO_Init+0xd0>
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
    2220:	1066      	lrw      	r3, 0x20000048	// 2238 <UART_IO_Init+0xd4>
    2222:	32ff      	movi      	r2, 255
    2224:	9320      	ld.w      	r1, (r3, 0x0)
    2226:	4250      	lsli      	r2, r2, 16
    2228:	9160      	ld.w      	r3, (r1, 0x0)
    222a:	68c9      	andn      	r3, r2
    222c:	32cc      	movi      	r2, 204
    222e:	424f      	lsli      	r2, r2, 15
    2230:	07d3      	br      	0x21d6	// 21d6 <UART_IO_Init+0x72>
    2232:	0000      	bkpt
    2234:	2000004c 	.long	0x2000004c
    2238:	20000048 	.long	0x20000048

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

Disassembly of section .text.ADC12_Control:

00002254 <ADC12_Control>:
//ReturnValue:NONE
/*************************************************************/  
  //control:ADC enable/disable ,start/stop,swrst
void ADC12_Control(ADC12_Control_TypeDef ADC12_Control_x )
{
	ADC0->CR |= ADC12_Control_x;							// 
    2254:	1063      	lrw      	r3, 0x20000050	// 2260 <ADC12_Control+0xc>
    2256:	9340      	ld.w      	r2, (r3, 0x0)
    2258:	9264      	ld.w      	r3, (r2, 0x10)
    225a:	6c0c      	or      	r0, r3
    225c:	b204      	st.w      	r0, (r2, 0x10)
}
    225e:	783c      	jmp      	r15
    2260:	20000050 	.long	0x20000050

Disassembly of section .text.ADC12_CMD.part.0:

00002264 <ADC12_CMD.part.0>:
//ADC12 ENABLE
//EntryParameter:NewState
//NewState:ENABLE , DISABLE
//ReturnValue:NONE
/*************************************************************/ 
void ADC12_CMD(FunctionalStatus NewState)
    2264:	14d0      	push      	r15
{
	if (NewState != DISABLE)
	{
		ADC12_Control(ADC12_ADCEN);						//ADC12 ENABLE
    2266:	3002      	movi      	r0, 2
    2268:	e3fffff6 	bsr      	0x2254	// 2254 <ADC12_Control>
		while(!(ADC0->SR &ADC12_ADCENS));
    226c:	1065      	lrw      	r3, 0x20000050	// 2280 <ADC12_CMD.part.0+0x1c>
    226e:	3280      	movi      	r2, 128
    2270:	9320      	ld.w      	r1, (r3, 0x0)
    2272:	4241      	lsli      	r2, r2, 1
    2274:	9168      	ld.w      	r3, (r1, 0x20)
    2276:	68c8      	and      	r3, r2
    2278:	3b40      	cmpnei      	r3, 0
    227a:	0ffd      	bf      	0x2274	// 2274 <ADC12_CMD.part.0+0x10>
	else
	{
		ADC12_Control(ADC12_ADCDIS);					//ADC12 DISABLE
		while(ADC0->SR&ADC12_ADCENS);
	}
}
    227c:	1490      	pop      	r15
    227e:	0000      	bkpt
    2280:	20000050 	.long	0x20000050

Disassembly of section .text.ADC12_CLK_CMD:

00002284 <ADC12_CLK_CMD>:
	if (NewState != DISABLE)
    2284:	3940      	cmpnei      	r1, 0
    2286:	106a      	lrw      	r3, 0x20000050	// 22ac <ADC12_CLK_CMD+0x28>
		ADC0->ECR  |= ADC_CLK_CMD;						//ENABLE
    2288:	9340      	ld.w      	r2, (r3, 0x0)
	if (NewState != DISABLE)
    228a:	0c09      	bf      	0x229c	// 229c <ADC12_CLK_CMD+0x18>
		ADC0->ECR  |= ADC_CLK_CMD;						//ENABLE
    228c:	9260      	ld.w      	r3, (r2, 0x0)
    228e:	6cc0      	or      	r3, r0
    2290:	b260      	st.w      	r3, (r2, 0x0)
		while(!(ADC0->PMSR&ADC_CLK_CMD));
    2292:	9262      	ld.w      	r3, (r2, 0x8)
    2294:	68c0      	and      	r3, r0
    2296:	3b40      	cmpnei      	r3, 0
    2298:	0ffd      	bf      	0x2292	// 2292 <ADC12_CLK_CMD+0xe>
}
    229a:	783c      	jmp      	r15
		ADC0->DCR  |= ADC_CLK_CMD;						//DISABLE
    229c:	9261      	ld.w      	r3, (r2, 0x4)
    229e:	6cc0      	or      	r3, r0
    22a0:	b261      	st.w      	r3, (r2, 0x4)
		while(ADC0->PMSR&ADC_CLK_CMD);
    22a2:	9262      	ld.w      	r3, (r2, 0x8)
    22a4:	68c0      	and      	r3, r0
    22a6:	3b40      	cmpnei      	r3, 0
    22a8:	0bfd      	bt      	0x22a2	// 22a2 <ADC12_CLK_CMD+0x1e>
    22aa:	07f8      	br      	0x229a	// 229a <ADC12_CLK_CMD+0x16>
    22ac:	20000050 	.long	0x20000050

Disassembly of section .text.ADC12_Software_Reset:

000022b0 <ADC12_Software_Reset>:
{
    22b0:	14d0      	push      	r15
	ADC12_Control(ADC12_SWRST);
    22b2:	3001      	movi      	r0, 1
    22b4:	e3ffffd0 	bsr      	0x2254	// 2254 <ADC12_Control>
}
    22b8:	1490      	pop      	r15

Disassembly of section .text.ADC12_CMD:

000022bc <ADC12_CMD>:
{
    22bc:	14d0      	push      	r15
	if (NewState != DISABLE)
    22be:	3840      	cmpnei      	r0, 0
    22c0:	0c04      	bf      	0x22c8	// 22c8 <ADC12_CMD+0xc>
    22c2:	e3ffffd1 	bsr      	0x2264	// 2264 <ADC12_CMD.part.0>
}
    22c6:	1490      	pop      	r15
		ADC12_Control(ADC12_ADCDIS);					//ADC12 DISABLE
    22c8:	3004      	movi      	r0, 4
    22ca:	e3ffffc5 	bsr      	0x2254	// 2254 <ADC12_Control>
		while(ADC0->SR&ADC12_ADCENS);
    22ce:	1065      	lrw      	r3, 0x20000050	// 22e0 <ADC12_CMD+0x24>
    22d0:	3280      	movi      	r2, 128
    22d2:	9320      	ld.w      	r1, (r3, 0x0)
    22d4:	4241      	lsli      	r2, r2, 1
    22d6:	9168      	ld.w      	r3, (r1, 0x20)
    22d8:	68c8      	and      	r3, r2
    22da:	3b40      	cmpnei      	r3, 0
    22dc:	0bfd      	bt      	0x22d6	// 22d6 <ADC12_CMD+0x1a>
    22de:	07f4      	br      	0x22c6	// 22c6 <ADC12_CMD+0xa>
    22e0:	20000050 	.long	0x20000050

Disassembly of section .text.ADC12_ready_wait:

000022e4 <ADC12_ready_wait>:
//EntryParameter:NONE
//ReturnValue:ADC12 READ FLAG
/*************************************************************/ 
void ADC12_ready_wait(void)  
{
	while(!(ADC0->SR&ADC12_READY));   					// Waiting for ADC0 Ready
    22e4:	1064      	lrw      	r3, 0x20000050	// 22f4 <ADC12_ready_wait+0x10>
    22e6:	3202      	movi      	r2, 2
    22e8:	9320      	ld.w      	r1, (r3, 0x0)
    22ea:	9168      	ld.w      	r3, (r1, 0x20)
    22ec:	68c8      	and      	r3, r2
    22ee:	3b40      	cmpnei      	r3, 0
    22f0:	0ffd      	bf      	0x22ea	// 22ea <ADC12_ready_wait+0x6>
}
    22f2:	783c      	jmp      	r15
    22f4:	20000050 	.long	0x20000050

Disassembly of section .text.ADC12_SEQEND_wait:

000022f8 <ADC12_SEQEND_wait>:
//EntryParameter:NONE
//ReturnValue:ADC12 EOC
/*************************************************************/ 
void ADC12_SEQEND_wait(U8_T val)
{
	while(!(ADC0->SR & (0x01ul << (16+val))));			// EOC wait
    22f8:	200f      	addi      	r0, 16
    22fa:	1065      	lrw      	r3, 0x20000050	// 230c <ADC12_SEQEND_wait+0x14>
    22fc:	3201      	movi      	r2, 1
    22fe:	9320      	ld.w      	r1, (r3, 0x0)
    2300:	7080      	lsl      	r2, r0
    2302:	9168      	ld.w      	r3, (r1, 0x20)
    2304:	68c8      	and      	r3, r2
    2306:	3b40      	cmpnei      	r3, 0
    2308:	0ffd      	bf      	0x2302	// 2302 <ADC12_SEQEND_wait+0xa>
}  
    230a:	783c      	jmp      	r15
    230c:	20000050 	.long	0x20000050

Disassembly of section .text.ADC12_Configure_Mode:

00002310 <ADC12_Configure_Mode>:
  //10BIT or 12BIT adc ;
  //ADC12_BIT_SELECTED:ADC12_12BIT/ADC12_10BIT;
  //ADC12_ConverMode:One_shot_mode/Continuous_mode;
  //adc date output=last number of Conversions;
void  ADC12_Configure_Mode(ADC12_10bitor12bit_TypeDef ADC12_BIT_SELECTED  , ADC12_ConverMode_TypeDef  ADC12_ConverMode  , U8_T ADC12_PRI, U8_T adc12_SHR , U8_T ADC12_DIV , U8_T NumConver ) 
{
    2310:	14d4      	push      	r4-r7, r15
    2312:	1422      	subi      	r14, r14, 8
    2314:	1c08      	addi      	r4, r14, 32
    2316:	84a0      	ld.b      	r5, (r4, 0x0)
	ADC0->MR=ADC12_DIV|((NumConver-1)<<10);
    2318:	2d00      	subi      	r5, 1
{
    231a:	6dc3      	mov      	r7, r0
	ADC0->MR=ADC12_DIV|((NumConver-1)<<10);
    231c:	10db      	lrw      	r6, 0x20000050	// 2388 <ADC12_Configure_Mode+0x78>
{
    231e:	d80e001c 	ld.b      	r0, (r14, 0x1c)
	ADC0->MR=ADC12_DIV|((NumConver-1)<<10);
    2322:	45aa      	lsli      	r5, r5, 10
    2324:	9680      	ld.w      	r4, (r6, 0x0)
    2326:	6d40      	or      	r5, r0
	if(ADC12_ConverMode==One_shot_mode)
    2328:	3940      	cmpnei      	r1, 0
	ADC0->MR=ADC12_DIV|((NumConver-1)<<10);
    232a:	b4a5      	st.w      	r5, (r4, 0x14)
	if(ADC12_ConverMode==One_shot_mode)
    232c:	081c      	bt      	0x2364	// 2364 <ADC12_Configure_Mode+0x54>
	{
		ADC0->MR&=~CONTCV;								//one short mode
    232e:	9425      	ld.w      	r1, (r4, 0x14)
    2330:	4121      	lsli      	r1, r1, 1
    2332:	4921      	lsri      	r1, r1, 1
		while(ADC0->SR&ADC12_CTCVS);							
    2334:	3080      	movi      	r0, 128
		ADC0->MR&=~CONTCV;								//one short mode
    2336:	b425      	st.w      	r1, (r4, 0x14)
		while(ADC0->SR&ADC12_CTCVS);							
    2338:	4002      	lsli      	r0, r0, 2
    233a:	9428      	ld.w      	r1, (r4, 0x20)
    233c:	6840      	and      	r1, r0
    233e:	3940      	cmpnei      	r1, 0
    2340:	0bfd      	bt      	0x233a	// 233a <ADC12_Configure_Mode+0x2a>
    2342:	b861      	st.w      	r3, (r14, 0x4)
    2344:	b840      	st.w      	r2, (r14, 0x0)
    2346:	e3ffff8f 	bsr      	0x2264	// 2264 <ADC12_CMD.part.0>
	{
		ADC0->MR|=CONTCV;								//Continuous mode
		while(!(ADC0->SR&ADC12_CTCVS));							
	}
	ADC12_CMD(ENABLE);									//ADC0 enable
	if(ADC12_BIT_SELECTED)
    234a:	3f40      	cmpnei      	r7, 0
    234c:	9840      	ld.w      	r2, (r14, 0x0)
    234e:	9861      	ld.w      	r3, (r14, 0x4)
    2350:	0c16      	bf      	0x237c	// 237c <ADC12_Configure_Mode+0x6c>
	{
		ADC0->CR|=ADC12_10BITor12BIT;
    2352:	9600      	ld.w      	r0, (r6, 0x0)
    2354:	9024      	ld.w      	r1, (r0, 0x10)
    2356:	39bf      	bseti      	r1, 31
	}
	else
	{
		ADC0->CR&=~ADC12_10BITor12BIT;
    2358:	b024      	st.w      	r1, (r0, 0x10)
	}
	//ADC0->CR|=ADC12_VREF_VDD | ADC12_FVR_DIS;
	ADC0->PRI=ADC12_PRI;
    235a:	9620      	ld.w      	r1, (r6, 0x0)
    235c:	b15c      	st.w      	r2, (r1, 0x70)
	ADC0->SHR=adc12_SHR;								//adc Sampling & Holding cycles
    235e:	b166      	st.w      	r3, (r1, 0x18)
} 
    2360:	1402      	addi      	r14, r14, 8
    2362:	1494      	pop      	r4-r7, r15
	else if(ADC12_ConverMode==Continuous_mode)
    2364:	3941      	cmpnei      	r1, 1
    2366:	0bee      	bt      	0x2342	// 2342 <ADC12_Configure_Mode+0x32>
		ADC0->MR|=CONTCV;								//Continuous mode
    2368:	9425      	ld.w      	r1, (r4, 0x14)
    236a:	39bf      	bseti      	r1, 31
		while(!(ADC0->SR&ADC12_CTCVS));							
    236c:	3080      	movi      	r0, 128
		ADC0->MR|=CONTCV;								//Continuous mode
    236e:	b425      	st.w      	r1, (r4, 0x14)
		while(!(ADC0->SR&ADC12_CTCVS));							
    2370:	4002      	lsli      	r0, r0, 2
    2372:	9428      	ld.w      	r1, (r4, 0x20)
    2374:	6840      	and      	r1, r0
    2376:	3940      	cmpnei      	r1, 0
    2378:	0ffd      	bf      	0x2372	// 2372 <ADC12_Configure_Mode+0x62>
    237a:	07e4      	br      	0x2342	// 2342 <ADC12_Configure_Mode+0x32>
		ADC0->CR&=~ADC12_10BITor12BIT;
    237c:	9600      	ld.w      	r0, (r6, 0x0)
    237e:	9024      	ld.w      	r1, (r0, 0x10)
    2380:	4121      	lsli      	r1, r1, 1
    2382:	4921      	lsri      	r1, r1, 1
    2384:	07ea      	br      	0x2358	// 2358 <ADC12_Configure_Mode+0x48>
    2386:	0000      	bkpt
    2388:	20000050 	.long	0x20000050

Disassembly of section .text.ADC12_Configure_VREF_Selecte:

0000238c <ADC12_Configure_VREF_Selecte>:
//EntryParameter:NONE
//ReturnValue:None
/*************************************************************/ 
void ADC12_Configure_VREF_Selecte(ADC12_VREFP_VREFN_Selected_TypeDef ADC12_VREFP_X_VREFN_X )
{
	if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_VDD_VREFN_VSS)
    238c:	3840      	cmpnei      	r0, 0
    238e:	0808      	bt      	0x239e	// 239e <ADC12_Configure_VREF_Selecte+0x12>
	{
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x00<<6);
    2390:	127c      	lrw      	r3, 0x20000050	// 2500 <ADC12_Configure_VREF_Selecte+0x174>
    2392:	123d      	lrw      	r1, 0x103c0	// 2504 <ADC12_Configure_VREF_Selecte+0x178>
    2394:	9340      	ld.w      	r2, (r3, 0x0)
    2396:	9264      	ld.w      	r3, (r2, 0x10)
    2398:	68c5      	andn      	r3, r1
		ADC0->CR=(ADC0->CR&0xfcfefc3f)|(0x0B<<6)|(0X01<<24)|(0X01<<25);	
	}
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_INTVREF1000_VREFN_EXIT)
	{
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;					
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x0C<<6)|(0X00<<16)|(0X02<<17);	
    239a:	b264      	st.w      	r3, (r2, 0x10)
	}
}
    239c:	783c      	jmp      	r15
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_EXIT_VREFN_VSS)
    239e:	3841      	cmpnei      	r0, 1
    23a0:	0810      	bt      	0x23c0	// 23c0 <ADC12_Configure_VREF_Selecte+0x34>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;							
    23a2:	127a      	lrw      	r3, 0x2000004c	// 2508 <ADC12_Configure_VREF_Selecte+0x17c>
    23a4:	32f0      	movi      	r2, 240
    23a6:	9320      	ld.w      	r1, (r3, 0x0)
    23a8:	9160      	ld.w      	r3, (r1, 0x0)
    23aa:	4244      	lsli      	r2, r2, 4
    23ac:	68c9      	andn      	r3, r2
    23ae:	3bab      	bseti      	r3, 11
    23b0:	b160      	st.w      	r3, (r1, 0x0)
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x01<<6);
    23b2:	1235      	lrw      	r1, 0x103c0	// 2504 <ADC12_Configure_VREF_Selecte+0x178>
    23b4:	1273      	lrw      	r3, 0x20000050	// 2500 <ADC12_Configure_VREF_Selecte+0x174>
    23b6:	9340      	ld.w      	r2, (r3, 0x0)
    23b8:	9264      	ld.w      	r3, (r2, 0x10)
    23ba:	68c5      	andn      	r3, r1
    23bc:	3ba6      	bseti      	r3, 6
    23be:	07ee      	br      	0x239a	// 239a <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_FVR2048_VREFN_VSS)
    23c0:	3842      	cmpnei      	r0, 2
    23c2:	0811      	bt      	0x23e4	// 23e4 <ADC12_Configure_VREF_Selecte+0x58>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;							
    23c4:	1271      	lrw      	r3, 0x2000004c	// 2508 <ADC12_Configure_VREF_Selecte+0x17c>
    23c6:	32f0      	movi      	r2, 240
    23c8:	9320      	ld.w      	r1, (r3, 0x0)
    23ca:	9160      	ld.w      	r3, (r1, 0x0)
    23cc:	4244      	lsli      	r2, r2, 4
    23ce:	68c9      	andn      	r3, r2
    23d0:	3bab      	bseti      	r3, 11
    23d2:	b160      	st.w      	r3, (r1, 0x0)
		ADC0->CR=(ADC0->CR&0xfcfefc3f)|(0x02<<6)|(0X01<<24)|(0X00<<25);
    23d4:	122e      	lrw      	r1, 0x30103c0	// 250c <ADC12_Configure_VREF_Selecte+0x180>
    23d6:	126b      	lrw      	r3, 0x20000050	// 2500 <ADC12_Configure_VREF_Selecte+0x174>
    23d8:	9340      	ld.w      	r2, (r3, 0x0)
    23da:	9264      	ld.w      	r3, (r2, 0x10)
    23dc:	68c5      	andn      	r3, r1
    23de:	3ba7      	bseti      	r3, 7
    23e0:	3bb8      	bseti      	r3, 24
    23e2:	07dc      	br      	0x239a	// 239a <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_FVR4096_VREFN_VSS)
    23e4:	3843      	cmpnei      	r0, 3
    23e6:	0811      	bt      	0x2408	// 2408 <ADC12_Configure_VREF_Selecte+0x7c>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;							
    23e8:	1268      	lrw      	r3, 0x2000004c	// 2508 <ADC12_Configure_VREF_Selecte+0x17c>
    23ea:	32f0      	movi      	r2, 240
    23ec:	9320      	ld.w      	r1, (r3, 0x0)
    23ee:	9160      	ld.w      	r3, (r1, 0x0)
    23f0:	4244      	lsli      	r2, r2, 4
    23f2:	68c9      	andn      	r3, r2
    23f4:	3bab      	bseti      	r3, 11
    23f6:	b160      	st.w      	r3, (r1, 0x0)
		ADC0->CR=(ADC0->CR&0xfcfefc3f)|(0x03<<6)|(0X01<<24)|(0X01<<25);
    23f8:	1225      	lrw      	r1, 0x30103c0	// 250c <ADC12_Configure_VREF_Selecte+0x180>
    23fa:	1262      	lrw      	r3, 0x20000050	// 2500 <ADC12_Configure_VREF_Selecte+0x174>
    23fc:	9340      	ld.w      	r2, (r3, 0x0)
    23fe:	9264      	ld.w      	r3, (r2, 0x10)
    2400:	68c5      	andn      	r3, r1
    2402:	1224      	lrw      	r1, 0x30000c0	// 2510 <ADC12_Configure_VREF_Selecte+0x184>
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x0C<<6)|(0X00<<16)|(0X02<<17);	
    2404:	6cc4      	or      	r3, r1
    2406:	07ca      	br      	0x239a	// 239a <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_INTVREF1000_VREFN_VSS)
    2408:	3845      	cmpnei      	r0, 5
    240a:	0809      	bt      	0x241c	// 241c <ADC12_Configure_VREF_Selecte+0x90>
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x04<<6)|(0X00<<16)|(0X02<<17);
    240c:	117d      	lrw      	r3, 0x20000050	// 2500 <ADC12_Configure_VREF_Selecte+0x174>
    240e:	1222      	lrw      	r1, 0x503c0	// 2514 <ADC12_Configure_VREF_Selecte+0x188>
    2410:	9340      	ld.w      	r2, (r3, 0x0)
    2412:	9264      	ld.w      	r3, (r2, 0x10)
    2414:	68c5      	andn      	r3, r1
    2416:	3ba8      	bseti      	r3, 8
    2418:	3bb2      	bseti      	r3, 18
    241a:	07c0      	br      	0x239a	// 239a <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_VDD_VREFN_EXIT)
    241c:	3846      	cmpnei      	r0, 6
    241e:	0812      	bt      	0x2442	// 2442 <ADC12_Configure_VREF_Selecte+0xb6>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;	
    2420:	117a      	lrw      	r3, 0x2000004c	// 2508 <ADC12_Configure_VREF_Selecte+0x17c>
    2422:	32f0      	movi      	r2, 240
    2424:	9320      	ld.w      	r1, (r3, 0x0)
    2426:	9160      	ld.w      	r3, (r1, 0x0)
    2428:	4248      	lsli      	r2, r2, 8
    242a:	68c9      	andn      	r3, r2
    242c:	32b0      	movi      	r2, 176
    242e:	4248      	lsli      	r2, r2, 8
    2430:	6cc8      	or      	r3, r2
    2432:	b160      	st.w      	r3, (r1, 0x0)
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x08<<6);
    2434:	1134      	lrw      	r1, 0x103c0	// 2504 <ADC12_Configure_VREF_Selecte+0x178>
    2436:	1173      	lrw      	r3, 0x20000050	// 2500 <ADC12_Configure_VREF_Selecte+0x174>
    2438:	9340      	ld.w      	r2, (r3, 0x0)
    243a:	9264      	ld.w      	r3, (r2, 0x10)
    243c:	68c5      	andn      	r3, r1
    243e:	3ba9      	bseti      	r3, 9
    2440:	07ad      	br      	0x239a	// 239a <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_EXIT_VREFN_EXIT)
    2442:	3847      	cmpnei      	r0, 7
    2444:	0819      	bt      	0x2476	// 2476 <ADC12_Configure_VREF_Selecte+0xea>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;
    2446:	1171      	lrw      	r3, 0x2000004c	// 2508 <ADC12_Configure_VREF_Selecte+0x17c>
    2448:	31f0      	movi      	r1, 240
    244a:	9340      	ld.w      	r2, (r3, 0x0)
    244c:	9260      	ld.w      	r3, (r2, 0x0)
    244e:	4128      	lsli      	r1, r1, 8
    2450:	68c5      	andn      	r3, r1
    2452:	31b0      	movi      	r1, 176
    2454:	4128      	lsli      	r1, r1, 8
    2456:	6cc4      	or      	r3, r1
    2458:	b260      	st.w      	r3, (r2, 0x0)
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;			
    245a:	31f0      	movi      	r1, 240
    245c:	9260      	ld.w      	r3, (r2, 0x0)
    245e:	4124      	lsli      	r1, r1, 4
    2460:	68c5      	andn      	r3, r1
    2462:	3bab      	bseti      	r3, 11
    2464:	b260      	st.w      	r3, (r2, 0x0)
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x09<<6);
    2466:	1128      	lrw      	r1, 0x103c0	// 2504 <ADC12_Configure_VREF_Selecte+0x178>
    2468:	1166      	lrw      	r3, 0x20000050	// 2500 <ADC12_Configure_VREF_Selecte+0x174>
    246a:	9340      	ld.w      	r2, (r3, 0x0)
    246c:	9264      	ld.w      	r3, (r2, 0x10)
    246e:	68c5      	andn      	r3, r1
    2470:	3ba6      	bseti      	r3, 6
    2472:	3ba9      	bseti      	r3, 9
    2474:	0793      	br      	0x239a	// 239a <ADC12_Configure_VREF_Selecte+0xe>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_FVR2048_VREFN_EXIT)
    2476:	3848      	cmpnei      	r0, 8
    2478:	0818      	bt      	0x24a8	// 24a8 <ADC12_Configure_VREF_Selecte+0x11c>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;	
    247a:	1164      	lrw      	r3, 0x2000004c	// 2508 <ADC12_Configure_VREF_Selecte+0x17c>
    247c:	31f0      	movi      	r1, 240
    247e:	9340      	ld.w      	r2, (r3, 0x0)
    2480:	9260      	ld.w      	r3, (r2, 0x0)
    2482:	4128      	lsli      	r1, r1, 8
    2484:	68c5      	andn      	r3, r1
    2486:	31b0      	movi      	r1, 176
    2488:	4128      	lsli      	r1, r1, 8
    248a:	6cc4      	or      	r3, r1
    248c:	b260      	st.w      	r3, (r2, 0x0)
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;
    248e:	31f0      	movi      	r1, 240
    2490:	9260      	ld.w      	r3, (r2, 0x0)
    2492:	4124      	lsli      	r1, r1, 4
    2494:	68c5      	andn      	r3, r1
    2496:	3bab      	bseti      	r3, 11
    2498:	b260      	st.w      	r3, (r2, 0x0)
		ADC0->CR=(ADC0->CR&0xfcfefc3f)|(0x0A<<6)|(0X01<<24)|(0X00<<25);			
    249a:	103d      	lrw      	r1, 0x30103c0	// 250c <ADC12_Configure_VREF_Selecte+0x180>
    249c:	1079      	lrw      	r3, 0x20000050	// 2500 <ADC12_Configure_VREF_Selecte+0x174>
    249e:	9340      	ld.w      	r2, (r3, 0x0)
    24a0:	9264      	ld.w      	r3, (r2, 0x10)
    24a2:	68c5      	andn      	r3, r1
    24a4:	103d      	lrw      	r1, 0x1000280	// 2518 <ADC12_Configure_VREF_Selecte+0x18c>
    24a6:	07af      	br      	0x2404	// 2404 <ADC12_Configure_VREF_Selecte+0x78>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_FVR4096_VREFN_EXIT)
    24a8:	3849      	cmpnei      	r0, 9
    24aa:	0818      	bt      	0x24da	// 24da <ADC12_Configure_VREF_Selecte+0x14e>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;	
    24ac:	1077      	lrw      	r3, 0x2000004c	// 2508 <ADC12_Configure_VREF_Selecte+0x17c>
    24ae:	31f0      	movi      	r1, 240
    24b0:	9340      	ld.w      	r2, (r3, 0x0)
    24b2:	9260      	ld.w      	r3, (r2, 0x0)
    24b4:	4128      	lsli      	r1, r1, 8
    24b6:	68c5      	andn      	r3, r1
    24b8:	31b0      	movi      	r1, 176
    24ba:	4128      	lsli      	r1, r1, 8
    24bc:	6cc4      	or      	r3, r1
    24be:	b260      	st.w      	r3, (r2, 0x0)
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFF0FF)  | 0x00000800;
    24c0:	31f0      	movi      	r1, 240
    24c2:	9260      	ld.w      	r3, (r2, 0x0)
    24c4:	4124      	lsli      	r1, r1, 4
    24c6:	68c5      	andn      	r3, r1
    24c8:	3bab      	bseti      	r3, 11
    24ca:	b260      	st.w      	r3, (r2, 0x0)
		ADC0->CR=(ADC0->CR&0xfcfefc3f)|(0x0B<<6)|(0X01<<24)|(0X01<<25);	
    24cc:	1030      	lrw      	r1, 0x30103c0	// 250c <ADC12_Configure_VREF_Selecte+0x180>
    24ce:	106d      	lrw      	r3, 0x20000050	// 2500 <ADC12_Configure_VREF_Selecte+0x174>
    24d0:	9340      	ld.w      	r2, (r3, 0x0)
    24d2:	9264      	ld.w      	r3, (r2, 0x10)
    24d4:	68c5      	andn      	r3, r1
    24d6:	1032      	lrw      	r1, 0x30002c0	// 251c <ADC12_Configure_VREF_Selecte+0x190>
    24d8:	0796      	br      	0x2404	// 2404 <ADC12_Configure_VREF_Selecte+0x78>
	else if(ADC12_VREFP_X_VREFN_X==ADC12_VREFP_INTVREF1000_VREFN_EXIT)
    24da:	384b      	cmpnei      	r0, 11
    24dc:	0b60      	bt      	0x239c	// 239c <ADC12_Configure_VREF_Selecte+0x10>
		GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x0000B000;					
    24de:	106b      	lrw      	r3, 0x2000004c	// 2508 <ADC12_Configure_VREF_Selecte+0x17c>
    24e0:	32f0      	movi      	r2, 240
    24e2:	9320      	ld.w      	r1, (r3, 0x0)
    24e4:	9160      	ld.w      	r3, (r1, 0x0)
    24e6:	4248      	lsli      	r2, r2, 8
    24e8:	68c9      	andn      	r3, r2
    24ea:	32b0      	movi      	r2, 176
    24ec:	4248      	lsli      	r2, r2, 8
    24ee:	6cc8      	or      	r3, r2
    24f0:	b160      	st.w      	r3, (r1, 0x0)
		ADC0->CR=(ADC0->CR&0xfffefc3f)|(0x0C<<6)|(0X00<<16)|(0X02<<17);	
    24f2:	1029      	lrw      	r1, 0x503c0	// 2514 <ADC12_Configure_VREF_Selecte+0x188>
    24f4:	1063      	lrw      	r3, 0x20000050	// 2500 <ADC12_Configure_VREF_Selecte+0x174>
    24f6:	9340      	ld.w      	r2, (r3, 0x0)
    24f8:	9264      	ld.w      	r3, (r2, 0x10)
    24fa:	68c5      	andn      	r3, r1
    24fc:	1029      	lrw      	r1, 0x40300	// 2520 <ADC12_Configure_VREF_Selecte+0x194>
    24fe:	0783      	br      	0x2404	// 2404 <ADC12_Configure_VREF_Selecte+0x78>
    2500:	20000050 	.long	0x20000050
    2504:	000103c0 	.long	0x000103c0
    2508:	2000004c 	.long	0x2000004c
    250c:	030103c0 	.long	0x030103c0
    2510:	030000c0 	.long	0x030000c0
    2514:	000503c0 	.long	0x000503c0
    2518:	01000280 	.long	0x01000280
    251c:	030002c0 	.long	0x030002c0
    2520:	00040300 	.long	0x00040300

Disassembly of section .text.ADC12_ConversionChannel_Config:

00002524 <ADC12_ConversionChannel_Config>:
//ADC12_ADCINX:ADC12_ADCIN0~ADC12_ADCIN17,ADC12_INTVREF,ADC12_DIV4_VDD,ADC12_VSS
//ReturnValue:NONE
/*************************************************************/ 
void ADC12_ConversionChannel_Config(ADC12_InputSet_TypeDef ADC12_ADCINX ,
						ADC12_CV_RepeatNum_TypeDef CV_RepeatTime, ADC12_Control_TypeDef AVG_Set, U8_T SEQx)
{
    2524:	14d4      	push      	r4-r7, r15
    2526:	1421      	subi      	r14, r14, 4
    2528:	b840      	st.w      	r2, (r14, 0x0)
    252a:	6d43      	mov      	r5, r0
	U8_T i;
	for(i=0;i<15;i++)
	{
		ADC0->SEQ[i] &=~(0x01<<7);
    252c:	125b      	lrw      	r2, 0x20000050	// 2698 <ADC12_ConversionChannel_Config+0x174>
    252e:	92c0      	ld.w      	r6, (r2, 0x0)
    2530:	3200      	movi      	r2, 0
    2532:	4202      	lsli      	r0, r2, 2
    2534:	6018      	addu      	r0, r6
    2536:	908c      	ld.w      	r4, (r0, 0x30)
    2538:	2200      	addi      	r2, 1
    253a:	3c87      	bclri      	r4, 7
	for(i=0;i<15;i++)
    253c:	3a4f      	cmpnei      	r2, 15
		ADC0->SEQ[i] &=~(0x01<<7);
    253e:	b08c      	st.w      	r4, (r0, 0x30)
	for(i=0;i<15;i++)
    2540:	0bf9      	bt      	0x2532	// 2532 <ADC12_ConversionChannel_Config+0xe>
	}
	switch(ADC12_ADCINX)
    2542:	3d0f      	cmphsi      	r5, 16
    2544:	0825      	bt      	0x258e	// 258e <ADC12_ConversionChannel_Config+0x6a>
    2546:	6c17      	mov      	r0, r5
    2548:	1255      	lrw      	r2, 0x2000004c	// 269c <ADC12_ConversionChannel_Config+0x178>
    254a:	1296      	lrw      	r4, 0x20000048	// 26a0 <ADC12_ConversionChannel_Config+0x17c>
    254c:	e3fff3d8 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    2550:	322c1408 	.long	0x322c1408
    2554:	4d474039 	.long	0x4d474039
    2558:	756d6559 	.long	0x756d6559
    255c:	9990877e 	.long	0x9990877e
	{
		case 0:	
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC0 PB0.1
    2560:	9240      	ld.w      	r2, (r2, 0x0)
    2562:	9200      	ld.w      	r0, (r2, 0x0)
    2564:	b200      	st.w      	r0, (r2, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
    2566:	9201      	ld.w      	r0, (r2, 0x4)
    2568:	b201      	st.w      	r0, (r2, 0x4)
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFF0F)  | 0x00000010;			
    256a:	9400      	ld.w      	r0, (r4, 0x0)
    256c:	9040      	ld.w      	r2, (r0, 0x0)
    256e:	34f0      	movi      	r4, 240
    2570:	6891      	andn      	r2, r4
    2572:	3aa4      	bseti      	r2, 4
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFFF)  | 0x00000000;		
			break;
		case 15:
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC15 PB0.0
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFF0)  | 0x00000001;		
    2574:	b040      	st.w      	r2, (r0, 0x0)
			break;
    2576:	040c      	br      	0x258e	// 258e <ADC12_ConversionChannel_Config+0x6a>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFF0)  | 0x00000001;							//ADC1 PA0.0
    2578:	9200      	ld.w      	r0, (r2, 0x0)
    257a:	9040      	ld.w      	r2, (r0, 0x0)
    257c:	370f      	movi      	r7, 15
    257e:	689d      	andn      	r2, r7
    2580:	3aa0      	bseti      	r2, 0
			GPIOA0->CONLR = (GPIOA0->CONLR&0X0FFFFFFF)  | 0x10000000;							//ADC6 PA0.7
    2582:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
    2584:	9041      	ld.w      	r2, (r0, 0x4)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)  | 0x00100000;	
    2586:	b041      	st.w      	r2, (r0, 0x4)
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFFF)  | 0x00000000;		
    2588:	9440      	ld.w      	r2, (r4, 0x0)
    258a:	9200      	ld.w      	r0, (r2, 0x0)
    258c:	b200      	st.w      	r0, (r2, 0x0)
    258e:	4362      	lsli      	r3, r3, 2
    2590:	618c      	addu      	r6, r3
		//case 27: break;
		case 0x1Cul: break;
		case 0x1Dul: break;
		case 0x1Eul: break;
	}
	ADC0->SEQ[SEQx] = ADC0->SEQ[SEQx] & 0;
    2592:	966c      	ld.w      	r3, (r6, 0x30)
    2594:	3300      	movi      	r3, 0
    2596:	b66c      	st.w      	r3, (r6, 0x30)
	ADC0->SEQ[SEQx] = ADC0->SEQ[SEQx] | ADC12_ADCINX  | CV_RepeatTime | AVG_Set;
    2598:	9860      	ld.w      	r3, (r14, 0x0)
    259a:	6c4c      	or      	r1, r3
    259c:	964c      	ld.w      	r2, (r6, 0x30)
    259e:	6d44      	or      	r5, r1
    25a0:	6d48      	or      	r5, r2
    25a2:	b6ac      	st.w      	r5, (r6, 0x30)
}
    25a4:	1401      	addi      	r14, r14, 4
    25a6:	1494      	pop      	r4-r7, r15
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFF0F)  | 0x00000010;							//ADC2 PA0.1
    25a8:	9200      	ld.w      	r0, (r2, 0x0)
    25aa:	9040      	ld.w      	r2, (r0, 0x0)
    25ac:	37f0      	movi      	r7, 240
    25ae:	689d      	andn      	r2, r7
    25b0:	3aa4      	bseti      	r2, 4
    25b2:	07e8      	br      	0x2582	// 2582 <ADC12_ConversionChannel_Config+0x5e>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFF0FFF)  | 0x00001000;							//ADC3 PA0.3
    25b4:	9200      	ld.w      	r0, (r2, 0x0)
    25b6:	37f0      	movi      	r7, 240
    25b8:	9040      	ld.w      	r2, (r0, 0x0)
    25ba:	47e8      	lsli      	r7, r7, 8
    25bc:	689d      	andn      	r2, r7
    25be:	3aac      	bseti      	r2, 12
    25c0:	07e1      	br      	0x2582	// 2582 <ADC12_ConversionChannel_Config+0x5e>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFF0FFFFF)  | 0x00100000;							//ADC4 PA0.5
    25c2:	9200      	ld.w      	r0, (r2, 0x0)
    25c4:	37f0      	movi      	r7, 240
    25c6:	9040      	ld.w      	r2, (r0, 0x0)
    25c8:	47f0      	lsli      	r7, r7, 16
    25ca:	689d      	andn      	r2, r7
    25cc:	3ab4      	bseti      	r2, 20
    25ce:	07da      	br      	0x2582	// 2582 <ADC12_ConversionChannel_Config+0x5e>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XF0FFFFFF)  | 0x01000000;							//ADC5 PA0.6
    25d0:	9200      	ld.w      	r0, (r2, 0x0)
    25d2:	37f0      	movi      	r7, 240
    25d4:	9040      	ld.w      	r2, (r0, 0x0)
    25d6:	47f4      	lsli      	r7, r7, 20
    25d8:	689d      	andn      	r2, r7
    25da:	3ab8      	bseti      	r2, 24
    25dc:	07d3      	br      	0x2582	// 2582 <ADC12_ConversionChannel_Config+0x5e>
			GPIOA0->CONLR = (GPIOA0->CONLR&0X0FFFFFFF)  | 0x10000000;							//ADC6 PA0.7
    25de:	9200      	ld.w      	r0, (r2, 0x0)
    25e0:	9040      	ld.w      	r2, (r0, 0x0)
    25e2:	4244      	lsli      	r2, r2, 4
    25e4:	4a44      	lsri      	r2, r2, 4
    25e6:	3abc      	bseti      	r2, 28
    25e8:	07cd      	br      	0x2582	// 2582 <ADC12_ConversionChannel_Config+0x5e>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC7 PB0.2
    25ea:	9240      	ld.w      	r2, (r2, 0x0)
    25ec:	9200      	ld.w      	r0, (r2, 0x0)
    25ee:	b200      	st.w      	r0, (r2, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
    25f0:	9201      	ld.w      	r0, (r2, 0x4)
    25f2:	b201      	st.w      	r0, (r2, 0x4)
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFF0FF)  | 0x00000100;
    25f4:	9400      	ld.w      	r0, (r4, 0x0)
    25f6:	34f0      	movi      	r4, 240
    25f8:	9040      	ld.w      	r2, (r0, 0x0)
    25fa:	4484      	lsli      	r4, r4, 4
    25fc:	6891      	andn      	r2, r4
    25fe:	3aa8      	bseti      	r2, 8
    2600:	07ba      	br      	0x2574	// 2574 <ADC12_ConversionChannel_Config+0x50>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC8 PB0.3
    2602:	9240      	ld.w      	r2, (r2, 0x0)
    2604:	9200      	ld.w      	r0, (r2, 0x0)
    2606:	b200      	st.w      	r0, (r2, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
    2608:	9201      	ld.w      	r0, (r2, 0x4)
    260a:	b201      	st.w      	r0, (r2, 0x4)
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFF0FFF)  | 0x00001000;
    260c:	9400      	ld.w      	r0, (r4, 0x0)
    260e:	34f0      	movi      	r4, 240
    2610:	9040      	ld.w      	r2, (r0, 0x0)
    2612:	4488      	lsli      	r4, r4, 8
    2614:	6891      	andn      	r2, r4
    2616:	3aac      	bseti      	r2, 12
    2618:	07ae      	br      	0x2574	// 2574 <ADC12_ConversionChannel_Config+0x50>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC9 PA0.8
    261a:	9200      	ld.w      	r0, (r2, 0x0)
    261c:	9040      	ld.w      	r2, (r0, 0x0)
    261e:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFF0)  | 0x00000001;	
    2620:	9041      	ld.w      	r2, (r0, 0x4)
    2622:	370f      	movi      	r7, 15
    2624:	689d      	andn      	r2, r7
    2626:	3aa0      	bseti      	r2, 0
    2628:	07af      	br      	0x2586	// 2586 <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC10 PA0.9
    262a:	9200      	ld.w      	r0, (r2, 0x0)
    262c:	9040      	ld.w      	r2, (r0, 0x0)
    262e:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFF0F)  | 0x00000010;	
    2630:	9041      	ld.w      	r2, (r0, 0x4)
    2632:	37f0      	movi      	r7, 240
    2634:	689d      	andn      	r2, r7
    2636:	3aa4      	bseti      	r2, 4
    2638:	07a7      	br      	0x2586	// 2586 <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC11 PA0.10
    263a:	9200      	ld.w      	r0, (r2, 0x0)
    263c:	9040      	ld.w      	r2, (r0, 0x0)
    263e:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFF0FF)  | 0x00000100;	
    2640:	37f0      	movi      	r7, 240
    2642:	9041      	ld.w      	r2, (r0, 0x4)
    2644:	47e4      	lsli      	r7, r7, 4
    2646:	689d      	andn      	r2, r7
    2648:	3aa8      	bseti      	r2, 8
    264a:	079e      	br      	0x2586	// 2586 <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC12 PA0.11
    264c:	9200      	ld.w      	r0, (r2, 0x0)
    264e:	9040      	ld.w      	r2, (r0, 0x0)
    2650:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFF0FFF)  | 0x00001000;	
    2652:	37f0      	movi      	r7, 240
    2654:	9041      	ld.w      	r2, (r0, 0x4)
    2656:	47e8      	lsli      	r7, r7, 8
    2658:	689d      	andn      	r2, r7
    265a:	3aac      	bseti      	r2, 12
    265c:	0795      	br      	0x2586	// 2586 <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC13 PA0.12
    265e:	9200      	ld.w      	r0, (r2, 0x0)
    2660:	9040      	ld.w      	r2, (r0, 0x0)
    2662:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFF0FFFF)  | 0x00010000;	
    2664:	37f0      	movi      	r7, 240
    2666:	9041      	ld.w      	r2, (r0, 0x4)
    2668:	47ec      	lsli      	r7, r7, 12
    266a:	689d      	andn      	r2, r7
    266c:	3ab0      	bseti      	r2, 16
    266e:	078c      	br      	0x2586	// 2586 <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC14 PA0.13	
    2670:	9200      	ld.w      	r0, (r2, 0x0)
    2672:	9040      	ld.w      	r2, (r0, 0x0)
    2674:	b040      	st.w      	r2, (r0, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFF0FFFFF)  | 0x00100000;	
    2676:	37f0      	movi      	r7, 240
    2678:	9041      	ld.w      	r2, (r0, 0x4)
    267a:	47f0      	lsli      	r7, r7, 16
    267c:	689d      	andn      	r2, r7
    267e:	3ab4      	bseti      	r2, 20
    2680:	0783      	br      	0x2586	// 2586 <ADC12_ConversionChannel_Config+0x62>
			GPIOA0->CONLR = (GPIOA0->CONLR&0XFFFFFFFF)  | 0x00000000;							//ADC15 PB0.0
    2682:	9240      	ld.w      	r2, (r2, 0x0)
    2684:	9200      	ld.w      	r0, (r2, 0x0)
    2686:	b200      	st.w      	r0, (r2, 0x0)
			GPIOA0->CONHR = (GPIOA0->CONHR&0XFFFFFFFF)  | 0x00000000;	
    2688:	9201      	ld.w      	r0, (r2, 0x4)
    268a:	b201      	st.w      	r0, (r2, 0x4)
			GPIOB0->CONLR = (GPIOB0->CONLR&0XFFFFFFF0)  | 0x00000001;		
    268c:	9400      	ld.w      	r0, (r4, 0x0)
    268e:	9040      	ld.w      	r2, (r0, 0x0)
    2690:	340f      	movi      	r4, 15
    2692:	6891      	andn      	r2, r4
    2694:	3aa0      	bseti      	r2, 0
    2696:	076f      	br      	0x2574	// 2574 <ADC12_ConversionChannel_Config+0x50>
    2698:	20000050 	.long	0x20000050
    269c:	2000004c 	.long	0x2000004c
    26a0:	20000048 	.long	0x20000048

Disassembly of section .text.delay_nms:

000026a4 <delay_nms>:
//software delay
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/	
void delay_nms(unsigned int t)
{
    26a4:	14d0      	push      	r15
    26a6:	1423      	subi      	r14, r14, 12
    volatile unsigned int i,j ,k=0;
    j = 50* t;
    26a8:	3232      	movi      	r2, 50
    volatile unsigned int i,j ,k=0;
    26aa:	3300      	movi      	r3, 0
    j = 50* t;
    26ac:	7c08      	mult      	r0, r2
    volatile unsigned int i,j ,k=0;
    26ae:	b862      	st.w      	r3, (r14, 0x8)
    j = 50* t;
    26b0:	b801      	st.w      	r0, (r14, 0x4)
    for ( i = 0; i < j; i++ )
    26b2:	b860      	st.w      	r3, (r14, 0x0)
    26b4:	9840      	ld.w      	r2, (r14, 0x0)
    26b6:	9861      	ld.w      	r3, (r14, 0x4)
    26b8:	64c8      	cmphs      	r2, r3
    26ba:	0c03      	bf      	0x26c0	// 26c0 <delay_nms+0x1c>
    {
        k++;
		SYSCON_IWDCNT_Reload(); 
    }
}
    26bc:	1403      	addi      	r14, r14, 12
    26be:	1490      	pop      	r15
        k++;
    26c0:	9862      	ld.w      	r3, (r14, 0x8)
    26c2:	2300      	addi      	r3, 1
    26c4:	b862      	st.w      	r3, (r14, 0x8)
		SYSCON_IWDCNT_Reload(); 
    26c6:	e3fffbe1 	bsr      	0x1e88	// 1e88 <SYSCON_IWDCNT_Reload>
    for ( i = 0; i < j; i++ )
    26ca:	9860      	ld.w      	r3, (r14, 0x0)
    26cc:	2300      	addi      	r3, 1
    26ce:	07f2      	br      	0x26b2	// 26b2 <delay_nms+0xe>

Disassembly of section .text.BT_CONFIG:

000026d0 <BT_CONFIG>:
//BT Initial
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/	
void BT_CONFIG(void)
{
    26d0:	14d2      	push      	r4-r5, r15
    26d2:	1424      	subi      	r14, r14, 16
	BT_DeInit(BT0); //过零检测
    26d4:	11a4      	lrw      	r5, 0x2000000c	// 2764 <BT_CONFIG+0x94>
	// BT_IO_Init(BT0_PA15);
	BT_Configure(BT0,BTCLK_EN,47,BT_IMMEDIATE,BT_CONTINUOUS,BT_PCLKDIV);//TCLK=PCLK/(0+1)
    26d6:	3400      	movi      	r4, 0
	BT_DeInit(BT0); //过零检测
    26d8:	9500      	ld.w      	r0, (r5, 0x0)
    26da:	e3fffce9 	bsr      	0x20ac	// 20ac <BT_DeInit>
	BT_Configure(BT0,BTCLK_EN,47,BT_IMMEDIATE,BT_CONTINUOUS,BT_PCLKDIV);//TCLK=PCLK/(0+1)
    26de:	b881      	st.w      	r4, (r14, 0x4)
    26e0:	b880      	st.w      	r4, (r14, 0x0)
    26e2:	9500      	ld.w      	r0, (r5, 0x0)
    26e4:	3308      	movi      	r3, 8
    26e6:	322f      	movi      	r2, 47
    26e8:	3101      	movi      	r1, 1
    26ea:	e3fffcf3 	bsr      	0x20d0	// 20d0 <BT_Configure>
	BT_ControlSet_Configure(BT0,BT_START_HIGH,BT_IDLE_LOW,BT_SYNC_DIS,BT_SYNCMD_DIS,BT_OSTMDX_ONCE,BT_AREARM_DIS,BT_CNTRLD_EN);
    26ee:	3380      	movi      	r3, 128
    26f0:	4363      	lsli      	r3, r3, 3
    26f2:	b861      	st.w      	r3, (r14, 0x4)
    26f4:	b883      	st.w      	r4, (r14, 0xc)
    26f6:	b882      	st.w      	r4, (r14, 0x8)
    26f8:	b880      	st.w      	r4, (r14, 0x0)
    26fa:	3300      	movi      	r3, 0
    26fc:	9500      	ld.w      	r0, (r5, 0x0)
    26fe:	3200      	movi      	r2, 0
    2700:	3180      	movi      	r1, 128
    2702:	e3fffcf3 	bsr      	0x20e8	// 20e8 <BT_ControlSet_Configure>
	//BT_ControlSet_Configure(BT0,BT_START_HIGH,BT_IDLE_LOW,BT_SYNC_EN,BT_SYNCMD_DIS,BT_OSTMDX_ONCE,BT_AREARM_DIS,BT_CNTRLD_EN);
	//BT_Trigger_Configure(BT0,BT_TRGSRC_PEND,BT_TRGOE_EN);
	BT_Period_CMP_Write(BT0,500,500);
    2706:	32fa      	movi      	r2, 250
    2708:	4241      	lsli      	r2, r2, 1
    270a:	6c4b      	mov      	r1, r2
    270c:	9500      	ld.w      	r0, (r5, 0x0)
    270e:	e3fffd03 	bsr      	0x2114	// 2114 <BT_Period_CMP_Write>
	BT_Start(BT0);
    2712:	9500      	ld.w      	r0, (r5, 0x0)
    2714:	e3fffcda 	bsr      	0x20c8	// 20c8 <BT_Start>
	BT_ConfigInterrupt_CMD(BT0,ENABLE,BT_PEND);
    2718:	9500      	ld.w      	r0, (r5, 0x0)
    271a:	3201      	movi      	r2, 1
    271c:	3101      	movi      	r1, 1
    271e:	e3fffcfe 	bsr      	0x211a	// 211a <BT_ConfigInterrupt_CMD>
	BT0_INT_ENABLE();

	BT_DeInit(BT1); // 任务调用
    2722:	10b2      	lrw      	r5, 0x20000008	// 2768 <BT_CONFIG+0x98>
	BT0_INT_ENABLE();
    2724:	e3fffd04 	bsr      	0x212c	// 212c <BT0_INT_ENABLE>
	BT_DeInit(BT1); // 任务调用
    2728:	9500      	ld.w      	r0, (r5, 0x0)
    272a:	e3fffcc1 	bsr      	0x20ac	// 20ac <BT_DeInit>
	// BT_IO_Init(BT1_PA08);
	BT_Configure(BT1,BTCLK_EN,47,BT_IMMEDIATE,BT_CONTINUOUS,BT_PCLKDIV);
    272e:	b881      	st.w      	r4, (r14, 0x4)
    2730:	b880      	st.w      	r4, (r14, 0x0)
    2732:	3308      	movi      	r3, 8
    2734:	9500      	ld.w      	r0, (r5, 0x0)
    2736:	322f      	movi      	r2, 47
    2738:	3101      	movi      	r1, 1
    273a:	e3fffccb 	bsr      	0x20d0	// 20d0 <BT_Configure>
	// BT_ControlSet_Configure(BT1,BT_START_LOW,BT_IDLE_HIGH,BT_SYNC_DIS,BT_SYNCMD_DIS,BT_OSTMDX_ONCE,BT_AREARM_DIS,BT_CNTRLD_EN);
	// BT_Trigger_Configure(BT1,BT_TRGSRC_PEND,BT_TRGOE_EN);
	BT_Period_CMP_Write(BT1,1000,500);
    273e:	32fa      	movi      	r2, 250
    2740:	31fa      	movi      	r1, 250
    2742:	4241      	lsli      	r2, r2, 1
    2744:	4122      	lsli      	r1, r1, 2
    2746:	9500      	ld.w      	r0, (r5, 0x0)
    2748:	e3fffce6 	bsr      	0x2114	// 2114 <BT_Period_CMP_Write>
	BT_Start(BT1);
    274c:	9500      	ld.w      	r0, (r5, 0x0)
    274e:	e3fffcbd 	bsr      	0x20c8	// 20c8 <BT_Start>
	BT_ConfigInterrupt_CMD(BT1,ENABLE,BT_PEND);
    2752:	9500      	ld.w      	r0, (r5, 0x0)
    2754:	3201      	movi      	r2, 1
    2756:	3101      	movi      	r1, 1
    2758:	e3fffce1 	bsr      	0x211a	// 211a <BT_ConfigInterrupt_CMD>
	BT1_INT_ENABLE();
    275c:	e3fffcf0 	bsr      	0x213c	// 213c <BT1_INT_ENABLE>
}
    2760:	1404      	addi      	r14, r14, 16
    2762:	1492      	pop      	r4-r5, r15
    2764:	2000000c 	.long	0x2000000c
    2768:	20000008 	.long	0x20000008

Disassembly of section .text.UART0_CONFIG:

0000276c <UART0_CONFIG>:
//UART0  CONFIG
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/	
void UART0_CONFIG(void)
{
    276c:	14d0      	push      	r15
	UART0_DeInit();                                               //clear all UART Register
    276e:	e3fffcef 	bsr      	0x214c	// 214c <UART0_DeInit>
    UART_IO_Init(IO_UART0,1);                                     //use PA0.1->RXD0, PA0.0->TXD0
    2772:	3101      	movi      	r1, 1
    2774:	3000      	movi      	r0, 0
    2776:	e3fffcf7 	bsr      	0x2164	// 2164 <UART_IO_Init>
	UARTInit(UART0,48,UART_PAR_NONE);							  //baudrate=sysclock 48M/416=115200
    277a:	1064      	lrw      	r3, 0x20000040	// 2788 <UART0_CONFIG+0x1c>
    277c:	3200      	movi      	r2, 0
    277e:	9300      	ld.w      	r0, (r3, 0x0)
    2780:	3130      	movi      	r1, 48
    2782:	e3fffd5d 	bsr      	0x223c	// 223c <UARTInit>
    //UARTInitRxTxIntEn(UART0,416,UART_PAR_NONE);				  //baudrate=sysclock 48M/416=115200,tx rx int enabled 
	//UART0_Int_Enable();
}	
    2786:	1490      	pop      	r15
    2788:	20000040 	.long	0x20000040

Disassembly of section .text.SYSCON_CONFIG:

0000278c <SYSCON_CONFIG>:
//syscon Functions
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SYSCON_CONFIG(void)
{
    278c:	14d0      	push      	r15
    278e:	1421      	subi      	r14, r14, 4
//------SYSTEM CLK AND PCLK FUNTION---------------------------/
	SYSCON_RST_VALUE();                                                         //SYSCON all register clr
    2790:	e3fffac2 	bsr      	0x1d14	// 1d14 <SYSCON_RST_VALUE>
	SYSCON_General_CMD(ENABLE,ENDIS_ISOSC);										//SYSCON enable/disable clock source
    2794:	3101      	movi      	r1, 1
    2796:	3001      	movi      	r0, 1
    2798:	e3fffaea 	bsr      	0x1d6c	// 1d6c <SYSCON_General_CMD>
	//EMOSC_OSTR_Config(0XAD,0X1f,EM_LFSEL_EN,EM_FLEN_EN,EM_FLSEL_10ns);		//EM_CNT=0X3FF,0xAD(36K),EM_GM=0,Low F modedisable,EM filter disable,if enable,cont set 5ns
	//SYSCON_General_CMD(ENABLE,ENDIS_EMOSC);
	SYSCON_HFOSC_SELECTE(HFOSC_SELECTE_48M);									//HFOSC selected 48MHz
    279c:	3000      	movi      	r0, 0
    279e:	e3fffb43 	bsr      	0x1e24	// 1e24 <SYSCON_HFOSC_SELECTE>
	SystemCLK_HCLKDIV_PCLKDIV_Config(SYSCLK_HFOSC,HCLK_DIV_1,PCLK_DIV_1,HFOSC_48M);//system clock set, Hclk div ,Pclk div  set system clock=SystemCLK/Hclk div/Pclk div
    27a2:	3180      	movi      	r1, 128
    27a4:	3308      	movi      	r3, 8
    27a6:	3200      	movi      	r2, 0
    27a8:	4121      	lsli      	r1, r1, 1
    27aa:	3002      	movi      	r0, 2
    27ac:	e3fffaf8 	bsr      	0x1d9c	// 1d9c <SystemCLK_HCLKDIV_PCLKDIV_Config>
//------------  WDT FUNTION  --------------------------------/
    SYSCON_IWDCNT_Config(IWDT_TIME_4S,IWDT_INTW_DIV_7);      					//WDT TIME 1s,WDT alarm interrupt time=1s-1s*1/8=0.875S
    27b0:	30c0      	movi      	r0, 192
    27b2:	3118      	movi      	r1, 24
    27b4:	4003      	lsli      	r0, r0, 3
    27b6:	e3fffb73 	bsr      	0x1e9c	// 1e9c <SYSCON_IWDCNT_Config>
    SYSCON_WDT_CMD(ENABLE);                                                  	//enable/disable WDT		
    27ba:	3001      	movi      	r0, 1
    27bc:	e3fffb48 	bsr      	0x1e4c	// 1e4c <SYSCON_WDT_CMD>
    SYSCON_IWDCNT_Reload();                                                   	//reload WDT
    27c0:	e3fffb64 	bsr      	0x1e88	// 1e88 <SYSCON_IWDCNT_Reload>
	IWDT_Int_Enable();
    27c4:	e3fffb96 	bsr      	0x1ef0	// 1ef0 <IWDT_Int_Enable>
//------------  WWDT FUNTION  --------------------------------/
	WWDT_CNT_Load(0xFF);
    27c8:	30ff      	movi      	r0, 255
    27ca:	e3fffc4f 	bsr      	0x2068	// 2068 <WWDT_CNT_Load>
	WWDT_CONFIG(PCLK_4096_DIV0,0xFF,WWDT_DBGDIS);
    27ce:	3200      	movi      	r2, 0
    27d0:	31ff      	movi      	r1, 255
    27d2:	3000      	movi      	r0, 0
    27d4:	e3fffc3e 	bsr      	0x2050	// 2050 <WWDT_CONFIG>
	WWDT_Int_Config(ENABLE);													
    27d8:	3001      	movi      	r0, 1
    27da:	e3fffc4f 	bsr      	0x2078	// 2078 <WWDT_Int_Config>
	//WWDT_CMD(ENABLE);															//enable wwdt
//------------  CLO Output --------------------------------/	
	//SYSCON_CLO_CONFIG(CLO_PA08);												//CLO output setting
	//SYSCON_CLO_SRC_SET(CLO_HFCLK,CLO_DIV16);									//CLO output clock and div
//------------  LVD FUNTION  --------------------------------/ 
    SYSCON_LVD_Config(ENABLE_LVDEN,INTDET_LVL_3_9V,RSTDET_LVL_1_9V,ENABLE_LVD_INT,INTDET_POL_fall);   //LVD LVR Enable/Disable
    27de:	3340      	movi      	r3, 64
    27e0:	b860      	st.w      	r3, (r14, 0x0)
    27e2:	31c0      	movi      	r1, 192
    27e4:	3380      	movi      	r3, 128
    27e6:	4364      	lsli      	r3, r3, 4
    27e8:	3200      	movi      	r2, 0
    27ea:	4123      	lsli      	r1, r1, 3
    27ec:	3000      	movi      	r0, 0
    27ee:	e3fffb63 	bsr      	0x1eb4	// 1eb4 <SYSCON_LVD_Config>
    LVD_Int_Enable();	
    27f2:	e3fffb71 	bsr      	0x1ed4	// 1ed4 <LVD_Int_Enable>
//------------  SYSCON Vector  --------------------------------/ 	
	SYSCON_Int_Enable();    														//SYSCON VECTOR
    27f6:	e3fffbab 	bsr      	0x1f4c	// 1f4c <SYSCON_Int_Enable>
	//SYSCON_WakeUp_Enable();    													//Enable WDT wakeup INT
//------------------------------------------------------------/
//OSC CLOCK Calibration
//------------------------------------------------------------/	
	std_clk_calib_source(CLK_ISOSC_27K);
    27fa:	3000      	movi      	r0, 0
    27fc:	e00010d6 	bsr      	0x49a8	// 49a8 <std_clk_calib_source>
	std_clk_calib(CLK_HFOSC_48M);												//Select the same clock source as the system
    2800:	3000      	movi      	r0, 0
    2802:	e00010eb 	bsr      	0x49d8	// 49d8 <std_clk_calib>
	
}
    2806:	1401      	addi      	r14, r14, 4
    2808:	1490      	pop      	r15

Disassembly of section .text.APT32F102_init:

0000280c <APT32F102_init>:
//ReturnValue:NONE                                                                /
/*********************************************************************************/
/*********************************************************************************/  
/*********************************************************************************/
void APT32F102_init(void) 
{
    280c:	14d0      	push      	r15
//------------------------------------------------------------/
//Peripheral clock enable and disable
//EntryParameter:NONE
//ReturnValue:NONE
//------------------------------------------------------------/
    SYSCON->PCER0=0xFFFFFFF;                                        //PCLK Enable
    280e:	106a      	lrw      	r3, 0x2000005c	// 2834 <APT32F102_init+0x28>
    SYSCON->PCER1=0xFFFFFFF;                                        //PCLK Enable
    while(!(SYSCON->PCSR0&0x1));                                    //Wait PCLK enabled	
    2810:	3101      	movi      	r1, 1
    SYSCON->PCER0=0xFFFFFFF;                                        //PCLK Enable
    2812:	9340      	ld.w      	r2, (r3, 0x0)
    2814:	1069      	lrw      	r3, 0xfffffff	// 2838 <APT32F102_init+0x2c>
    2816:	b26a      	st.w      	r3, (r2, 0x28)
    SYSCON->PCER1=0xFFFFFFF;                                        //PCLK Enable
    2818:	b26d      	st.w      	r3, (r2, 0x34)
    while(!(SYSCON->PCSR0&0x1));                                    //Wait PCLK enabled	
    281a:	926c      	ld.w      	r3, (r2, 0x30)
    281c:	68c4      	and      	r3, r1
    281e:	3b40      	cmpnei      	r3, 0
    2820:	0ffd      	bf      	0x281a	// 281a <APT32F102_init+0xe>
//------------------------------------------------------------/
//ISOSC/IMOSC/EMOSC/SYSCLK/IWDT/LVD/EM_CMFAIL/EM_CMRCV/CMD_ERR OSC stable interrupt
//EntryParameter:NONE
//ReturnValue:NONE
//------------------------------------------------------------/
    SYSCON_CONFIG();                                                 //syscon  initial
    2822:	e3ffffb5 	bsr      	0x278c	// 278c <SYSCON_CONFIG>
	CK_CPU_EnAllNormalIrq();                                         //enable all IRQ
    2826:	e00006db 	bsr      	0x35dc	// 35dc <CK_CPU_EnAllNormalIrq>
//Other IP config
//------------------------------------------------------------/
	//GPIO_CONFIG();                                                //GPIO initial     
	//EPT0_CONFIG();                                                //EPT0 initial 
	//GPT0_CONFIG();												//GPT0 initial	
	BT_CONFIG();													//BT initial
    282a:	e3ffff53 	bsr      	0x26d0	// 26d0 <BT_CONFIG>
    //I2C_MASTER_CONFIG();                                          //I2C harware master initial 
	//I2C_SLAVE_CONFIG();                                           //I2C harware slave initial 
	//SPI_MASTER_CONFIG();											//SPI Master initial 	
	//SPI_SLAVE_CONFIG();											//SPI Slaver initial 
	//SIO_CONFIG();													//SIO initial
    UART0_CONFIG();                                               //UART0 initial 
    282e:	e3ffff9f 	bsr      	0x276c	// 276c <UART0_CONFIG>
	//UART1_CONFIG();                                               //UART1 initial 
	//UART2_CONFIG();                                               //UART2 initial 
	//ADC12_CONFIG();                                               //ADC initial 
	//TK_CONFIG();													//Touch Key initial
}
    2832:	1490      	pop      	r15
    2834:	2000005c 	.long	0x2000005c
    2838:	0fffffff 	.long	0x0fffffff

Disassembly of section .text.SYSCONIntHandler:

0000283c <SYSCONIntHandler>:
//SYSCON Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SYSCONIntHandler(void) 
{
    283c:	1460      	nie
    283e:	1462      	ipush
    // ISR content ...
	nop;
    2840:	6c03      	mov      	r0, r0
	if((SYSCON->MISR&ISOSC_ST)==ISOSC_ST)				//ISOSC stable interrupt
    2842:	117c      	lrw      	r3, 0x2000005c	// 2930 <SYSCONIntHandler+0xf4>
    2844:	3280      	movi      	r2, 128
    2846:	9360      	ld.w      	r3, (r3, 0x0)
    2848:	60c8      	addu      	r3, r2
    284a:	9323      	ld.w      	r1, (r3, 0xc)
    284c:	3001      	movi      	r0, 1
    284e:	6840      	and      	r1, r0
    2850:	3940      	cmpnei      	r1, 0
    2852:	0c04      	bf      	0x285a	// 285a <SYSCONIntHandler+0x1e>
	{
		SYSCON->ICR = EMOSC_ST;
	} 
	else if((SYSCON->MISR&HFOSC_ST)==HFOSC_ST)			//HFOSC stable interrupt
	{
		SYSCON->ICR = HFOSC_ST;
    2854:	b301      	st.w      	r0, (r3, 0x4)
	}
	else if((SYSCON->MISR&CMD_ERR_ST)==CMD_ERR_ST)		//Command error interrupt
	{
		SYSCON->ICR = CMD_ERR_ST;
	}
}
    2856:	1463      	ipop
    2858:	1461      	nir
	else if((SYSCON->MISR&IMOSC_ST)==IMOSC_ST)			//IMOSC stable interrupt
    285a:	9323      	ld.w      	r1, (r3, 0xc)
    285c:	3002      	movi      	r0, 2
    285e:	6840      	and      	r1, r0
    2860:	3940      	cmpnei      	r1, 0
    2862:	0bf9      	bt      	0x2854	// 2854 <SYSCONIntHandler+0x18>
	else if((SYSCON->MISR&EMOSC_ST)==EMOSC_ST)			//EMOSC stable interrupt
    2864:	9323      	ld.w      	r1, (r3, 0xc)
    2866:	3008      	movi      	r0, 8
    2868:	6840      	and      	r1, r0
    286a:	3940      	cmpnei      	r1, 0
    286c:	0bf4      	bt      	0x2854	// 2854 <SYSCONIntHandler+0x18>
	else if((SYSCON->MISR&HFOSC_ST)==HFOSC_ST)			//HFOSC stable interrupt
    286e:	9323      	ld.w      	r1, (r3, 0xc)
    2870:	3010      	movi      	r0, 16
    2872:	6840      	and      	r1, r0
    2874:	3940      	cmpnei      	r1, 0
    2876:	0bef      	bt      	0x2854	// 2854 <SYSCONIntHandler+0x18>
	else if((SYSCON->MISR&SYSCLK_ST)==SYSCLK_ST)		//SYSCLK change end & stable interrupt
    2878:	9323      	ld.w      	r1, (r3, 0xc)
    287a:	6848      	and      	r1, r2
    287c:	3940      	cmpnei      	r1, 0
    287e:	0c03      	bf      	0x2884	// 2884 <SYSCONIntHandler+0x48>
		SYSCON->ICR = CMD_ERR_ST;
    2880:	b341      	st.w      	r2, (r3, 0x4)
}
    2882:	07ea      	br      	0x2856	// 2856 <SYSCONIntHandler+0x1a>
	else if((SYSCON->MISR&IWDT_INT_ST)==IWDT_INT_ST)	//IWDT alarm window interrupt
    2884:	3280      	movi      	r2, 128
    2886:	9323      	ld.w      	r1, (r3, 0xc)
    2888:	4241      	lsli      	r2, r2, 1
    288a:	6848      	and      	r1, r2
    288c:	3940      	cmpnei      	r1, 0
    288e:	0c06      	bf      	0x289a	// 289a <SYSCONIntHandler+0x5e>
		SYSCON->ICR = IWDT_INT_ST;
    2890:	b341      	st.w      	r2, (r3, 0x4)
		SYSCON->IWDCNT=0x5aul<<24;
    2892:	32b4      	movi      	r2, 180
    2894:	4257      	lsli      	r2, r2, 23
    2896:	b34e      	st.w      	r2, (r3, 0x38)
    2898:	07df      	br      	0x2856	// 2856 <SYSCONIntHandler+0x1a>
	else if((SYSCON->MISR&WKI_INT_ST)==WKI_INT_ST)
    289a:	3280      	movi      	r2, 128
    289c:	9323      	ld.w      	r1, (r3, 0xc)
    289e:	4242      	lsli      	r2, r2, 2
    28a0:	6848      	and      	r1, r2
    28a2:	3940      	cmpnei      	r1, 0
    28a4:	0bee      	bt      	0x2880	// 2880 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&RAMERRINT_ST)==RAMERRINT_ST)	//SRAM check fail interrupt
    28a6:	3280      	movi      	r2, 128
    28a8:	9323      	ld.w      	r1, (r3, 0xc)
    28aa:	4243      	lsli      	r2, r2, 3
    28ac:	6848      	and      	r1, r2
    28ae:	3940      	cmpnei      	r1, 0
    28b0:	0be8      	bt      	0x2880	// 2880 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&LVD_INT_ST)==LVD_INT_ST)		//LVD threshold interrupt
    28b2:	3280      	movi      	r2, 128
    28b4:	9323      	ld.w      	r1, (r3, 0xc)
    28b6:	4244      	lsli      	r2, r2, 4
    28b8:	6848      	and      	r1, r2
    28ba:	3940      	cmpnei      	r1, 0
    28bc:	0c03      	bf      	0x28c2	// 28c2 <SYSCONIntHandler+0x86>
		nop;
    28be:	6c03      	mov      	r0, r0
    28c0:	07e0      	br      	0x2880	// 2880 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&HWD_ERR_ST)==HWD_ERR_ST)		//Hardware Divider divisor = 0 interrupt
    28c2:	3280      	movi      	r2, 128
    28c4:	9323      	ld.w      	r1, (r3, 0xc)
    28c6:	4245      	lsli      	r2, r2, 5
    28c8:	6848      	and      	r1, r2
    28ca:	3940      	cmpnei      	r1, 0
    28cc:	0bda      	bt      	0x2880	// 2880 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EFL_ERR_ST)==EFL_ERR_ST)		//Flash check fail interrupt
    28ce:	3280      	movi      	r2, 128
    28d0:	9323      	ld.w      	r1, (r3, 0xc)
    28d2:	4246      	lsli      	r2, r2, 6
    28d4:	6848      	and      	r1, r2
    28d6:	3940      	cmpnei      	r1, 0
    28d8:	0bd4      	bt      	0x2880	// 2880 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&OPTERR_INT)==OPTERR_INT)		//Option load fail interrupt
    28da:	3280      	movi      	r2, 128
    28dc:	9323      	ld.w      	r1, (r3, 0xc)
    28de:	4247      	lsli      	r2, r2, 7
    28e0:	6848      	and      	r1, r2
    28e2:	3940      	cmpnei      	r1, 0
    28e4:	0bce      	bt      	0x2880	// 2880 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_CMLST_ST)==EM_CMLST_ST)	//EMOSC clock monitor fail interrupt
    28e6:	3280      	movi      	r2, 128
    28e8:	9323      	ld.w      	r1, (r3, 0xc)
    28ea:	424b      	lsli      	r2, r2, 11
    28ec:	6848      	and      	r1, r2
    28ee:	3940      	cmpnei      	r1, 0
    28f0:	0bc8      	bt      	0x2880	// 2880 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG0_ST)==EM_EVTRG0_ST)	//Event Trigger Channel 0 Interrupt
    28f2:	3280      	movi      	r2, 128
    28f4:	9323      	ld.w      	r1, (r3, 0xc)
    28f6:	424c      	lsli      	r2, r2, 12
    28f8:	6848      	and      	r1, r2
    28fa:	3940      	cmpnei      	r1, 0
    28fc:	0bc2      	bt      	0x2880	// 2880 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG1_ST)==EM_EVTRG1_ST)	//Event Trigger Channel 1 Interrupt
    28fe:	3280      	movi      	r2, 128
    2900:	9323      	ld.w      	r1, (r3, 0xc)
    2902:	424d      	lsli      	r2, r2, 13
    2904:	6848      	and      	r1, r2
    2906:	3940      	cmpnei      	r1, 0
    2908:	0bbc      	bt      	0x2880	// 2880 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG2_ST)==EM_EVTRG2_ST)	//Event Trigger Channel 2 Interrupt
    290a:	3280      	movi      	r2, 128
    290c:	9323      	ld.w      	r1, (r3, 0xc)
    290e:	424e      	lsli      	r2, r2, 14
    2910:	6848      	and      	r1, r2
    2912:	3940      	cmpnei      	r1, 0
    2914:	0bb6      	bt      	0x2880	// 2880 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&EM_EVTRG3_ST)==EM_EVTRG3_ST)	//Event Trigger Channel 3 Interrupt
    2916:	3280      	movi      	r2, 128
    2918:	9323      	ld.w      	r1, (r3, 0xc)
    291a:	424f      	lsli      	r2, r2, 15
    291c:	6848      	and      	r1, r2
    291e:	3940      	cmpnei      	r1, 0
    2920:	0bb0      	bt      	0x2880	// 2880 <SYSCONIntHandler+0x44>
	else if((SYSCON->MISR&CMD_ERR_ST)==CMD_ERR_ST)		//Command error interrupt
    2922:	3280      	movi      	r2, 128
    2924:	9323      	ld.w      	r1, (r3, 0xc)
    2926:	4256      	lsli      	r2, r2, 22
    2928:	6848      	and      	r1, r2
    292a:	3940      	cmpnei      	r1, 0
    292c:	0baa      	bt      	0x2880	// 2880 <SYSCONIntHandler+0x44>
    292e:	0794      	br      	0x2856	// 2856 <SYSCONIntHandler+0x1a>
    2930:	2000005c 	.long	0x2000005c

Disassembly of section .text.IFCIntHandler:

00002934 <IFCIntHandler>:
//IFC Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void IFCIntHandler(void) 
{
    2934:	1460      	nie
    2936:	1462      	ipush
    // ISR content ...
	if(IFC->MISR&ERS_END_INT)			
    2938:	1078      	lrw      	r3, 0x20000060	// 2998 <IFCIntHandler+0x64>
    293a:	3101      	movi      	r1, 1
    293c:	9360      	ld.w      	r3, (r3, 0x0)
    293e:	934b      	ld.w      	r2, (r3, 0x2c)
    2940:	6884      	and      	r2, r1
    2942:	3a40      	cmpnei      	r2, 0
    2944:	0c04      	bf      	0x294c	// 294c <IFCIntHandler+0x18>
	{
		IFC->ICR=RGM_END_INT;
	}
	else if(IFC->MISR&PEP_END_INT)		
	{
		IFC->ICR=PEP_END_INT;
    2946:	b32c      	st.w      	r1, (r3, 0x30)
	}
	else if(IFC->MISR&OVW_ERR_INT)		
	{
		IFC->ICR=OVW_ERR_INT;
	}
}
    2948:	1463      	ipop
    294a:	1461      	nir
	else if(IFC->MISR&RGM_END_INT)		
    294c:	934b      	ld.w      	r2, (r3, 0x2c)
    294e:	3102      	movi      	r1, 2
    2950:	6884      	and      	r2, r1
    2952:	3a40      	cmpnei      	r2, 0
    2954:	0bf9      	bt      	0x2946	// 2946 <IFCIntHandler+0x12>
	else if(IFC->MISR&PEP_END_INT)		
    2956:	934b      	ld.w      	r2, (r3, 0x2c)
    2958:	3104      	movi      	r1, 4
    295a:	6884      	and      	r2, r1
    295c:	3a40      	cmpnei      	r2, 0
    295e:	0bf4      	bt      	0x2946	// 2946 <IFCIntHandler+0x12>
	else if(IFC->MISR&PROT_ERR_INT)		
    2960:	3280      	movi      	r2, 128
    2962:	932b      	ld.w      	r1, (r3, 0x2c)
    2964:	4245      	lsli      	r2, r2, 5
    2966:	6848      	and      	r1, r2
    2968:	3940      	cmpnei      	r1, 0
    296a:	0c03      	bf      	0x2970	// 2970 <IFCIntHandler+0x3c>
		IFC->ICR=OVW_ERR_INT;
    296c:	b34c      	st.w      	r2, (r3, 0x30)
}
    296e:	07ed      	br      	0x2948	// 2948 <IFCIntHandler+0x14>
	else if(IFC->MISR&UDEF_ERR_INT)		
    2970:	3280      	movi      	r2, 128
    2972:	932b      	ld.w      	r1, (r3, 0x2c)
    2974:	4246      	lsli      	r2, r2, 6
    2976:	6848      	and      	r1, r2
    2978:	3940      	cmpnei      	r1, 0
    297a:	0bf9      	bt      	0x296c	// 296c <IFCIntHandler+0x38>
	else if(IFC->MISR&ADDR_ERR_INT)		
    297c:	3280      	movi      	r2, 128
    297e:	932b      	ld.w      	r1, (r3, 0x2c)
    2980:	4247      	lsli      	r2, r2, 7
    2982:	6848      	and      	r1, r2
    2984:	3940      	cmpnei      	r1, 0
    2986:	0bf3      	bt      	0x296c	// 296c <IFCIntHandler+0x38>
	else if(IFC->MISR&OVW_ERR_INT)		
    2988:	3280      	movi      	r2, 128
    298a:	932b      	ld.w      	r1, (r3, 0x2c)
    298c:	4248      	lsli      	r2, r2, 8
    298e:	6848      	and      	r1, r2
    2990:	3940      	cmpnei      	r1, 0
    2992:	0bed      	bt      	0x296c	// 296c <IFCIntHandler+0x38>
    2994:	07da      	br      	0x2948	// 2948 <IFCIntHandler+0x14>
    2996:	0000      	bkpt
    2998:	20000060 	.long	0x20000060

Disassembly of section .text.ADCIntHandler:

0000299c <ADCIntHandler>:
//ADC Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void ADCIntHandler(void) 
{
    299c:	1460      	nie
    299e:	1462      	ipush
    29a0:	14d0      	push      	r15
    // ISR content ...
	if((ADC0->SR&ADC12_EOC)==ADC12_EOC)				//ADC EOC interrupt
    29a2:	107e      	lrw      	r3, 0x20000050	// 2a18 <ADCIntHandler+0x7c>
    29a4:	3101      	movi      	r1, 1
    29a6:	9360      	ld.w      	r3, (r3, 0x0)
    29a8:	9348      	ld.w      	r2, (r3, 0x20)
    29aa:	6884      	and      	r2, r1
    29ac:	3a40      	cmpnei      	r2, 0
    29ae:	0c07      	bf      	0x29bc	// 29bc <ADCIntHandler+0x20>
	{
		ADC0->CSR = ADC12_READY;
	}
	else if((ADC0->SR&ADC12_OVR)==ADC12_OVR)		//ADC OVR interrupt
	{
		ADC0->CSR = ADC12_OVR;
    29b0:	b327      	st.w      	r1, (r3, 0x1c)
	}
	else if((ADC0->SR&ADC12_SEQ_END0)==ADC12_SEQ_END0) //ADC SEQ0 interrupt,SEQ1~SEQ15 replace the parameter with ADC12_SEQ_END1~ADC12_SEQ_END15
	{
		ADC0->CSR = ADC12_SEQ_END0;
	}
}
    29b2:	d9ee2000 	ld.w      	r15, (r14, 0x0)
    29b6:	1401      	addi      	r14, r14, 4
    29b8:	1463      	ipop
    29ba:	1461      	nir
	else if((ADC0->SR&ADC12_READY)==ADC12_READY)	//ADC READY interrupt
    29bc:	9348      	ld.w      	r2, (r3, 0x20)
    29be:	3102      	movi      	r1, 2
    29c0:	6884      	and      	r2, r1
    29c2:	3a40      	cmpnei      	r2, 0
    29c4:	0bf6      	bt      	0x29b0	// 29b0 <ADCIntHandler+0x14>
	else if((ADC0->SR&ADC12_OVR)==ADC12_OVR)		//ADC OVR interrupt
    29c6:	9348      	ld.w      	r2, (r3, 0x20)
    29c8:	3104      	movi      	r1, 4
    29ca:	6884      	and      	r2, r1
    29cc:	3a40      	cmpnei      	r2, 0
    29ce:	0bf1      	bt      	0x29b0	// 29b0 <ADCIntHandler+0x14>
	else if((ADC0->SR&ADC12_CMP0H)==ADC12_CMP0H)	//ADC CMP0H interrupt
    29d0:	9348      	ld.w      	r2, (r3, 0x20)
    29d2:	3110      	movi      	r1, 16
    29d4:	6884      	and      	r2, r1
    29d6:	3a40      	cmpnei      	r2, 0
    29d8:	0c06      	bf      	0x29e4	// 29e4 <ADCIntHandler+0x48>
		ADC0->CSR = ADC12_CMP1H;
    29da:	b327      	st.w      	r1, (r3, 0x1c)
		printf("+\n");
    29dc:	1010      	lrw      	r0, 0x4da0	// 2a1c <ADCIntHandler+0x80>
		printf("-\n");
    29de:	e3fff7d5 	bsr      	0x1988	// 1988 <__GI_puts>
    29e2:	07e8      	br      	0x29b2	// 29b2 <ADCIntHandler+0x16>
	else if((ADC0->SR&ADC12_CMP0L)==ADC12_CMP0L)	//ADC CMP0L interrupt.
    29e4:	9348      	ld.w      	r2, (r3, 0x20)
    29e6:	3120      	movi      	r1, 32
    29e8:	6884      	and      	r2, r1
    29ea:	3a40      	cmpnei      	r2, 0
    29ec:	0c04      	bf      	0x29f4	// 29f4 <ADCIntHandler+0x58>
		ADC0->CSR = ADC12_CMP1L;
    29ee:	b327      	st.w      	r1, (r3, 0x1c)
		printf("-\n");
    29f0:	100c      	lrw      	r0, 0x4da2	// 2a20 <ADCIntHandler+0x84>
    29f2:	07f6      	br      	0x29de	// 29de <ADCIntHandler+0x42>
	else if((ADC0->SR&ADC12_CMP1H)==ADC12_CMP1H)	//ADC CMP1H interrupt.
    29f4:	9348      	ld.w      	r2, (r3, 0x20)
    29f6:	3140      	movi      	r1, 64
    29f8:	6884      	and      	r2, r1
    29fa:	3a40      	cmpnei      	r2, 0
    29fc:	0bef      	bt      	0x29da	// 29da <ADCIntHandler+0x3e>
	else if((ADC0->SR&ADC12_CMP1L)==ADC12_CMP1L)	//ADC CMP1L interrupt.
    29fe:	9348      	ld.w      	r2, (r3, 0x20)
    2a00:	3180      	movi      	r1, 128
    2a02:	6884      	and      	r2, r1
    2a04:	3a40      	cmpnei      	r2, 0
    2a06:	0bf4      	bt      	0x29ee	// 29ee <ADCIntHandler+0x52>
	else if((ADC0->SR&ADC12_SEQ_END0)==ADC12_SEQ_END0) //ADC SEQ0 interrupt,SEQ1~SEQ15 replace the parameter with ADC12_SEQ_END1~ADC12_SEQ_END15
    2a08:	3280      	movi      	r2, 128
    2a0a:	9328      	ld.w      	r1, (r3, 0x20)
    2a0c:	4249      	lsli      	r2, r2, 9
    2a0e:	6848      	and      	r1, r2
    2a10:	3940      	cmpnei      	r1, 0
    2a12:	0fd0      	bf      	0x29b2	// 29b2 <ADCIntHandler+0x16>
		ADC0->CSR = ADC12_SEQ_END0;
    2a14:	b347      	st.w      	r2, (r3, 0x1c)
}
    2a16:	07ce      	br      	0x29b2	// 29b2 <ADCIntHandler+0x16>
    2a18:	20000050 	.long	0x20000050
    2a1c:	00004da0 	.long	0x00004da0
    2a20:	00004da2 	.long	0x00004da2

Disassembly of section .text.EPT0IntHandler:

00002a24 <EPT0IntHandler>:
//EPT0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EPT0IntHandler(void) 
{
    2a24:	1460      	nie
    2a26:	1462      	ipush
    2a28:	14d1      	push      	r4, r15
    // ISR content ...
	if((EPT0->MISR&EPT_TRGEV0_INT)==EPT_TRGEV0_INT)			//TRGEV0 interrupt
    2a2a:	1386      	lrw      	r4, 0x20000020	// 2bc0 <EPT0IntHandler+0x19c>
    2a2c:	3280      	movi      	r2, 128
    2a2e:	9460      	ld.w      	r3, (r4, 0x0)
    2a30:	60c8      	addu      	r3, r2
    2a32:	9335      	ld.w      	r1, (r3, 0x54)
    2a34:	3001      	movi      	r0, 1
    2a36:	6840      	and      	r1, r0
    2a38:	3940      	cmpnei      	r1, 0
    2a3a:	0c03      	bf      	0x2a40	// 2a40 <EPT0IntHandler+0x1c>
		EXTI_trigger_CMD(DISABLE,EXI_PIN0,_EXIFT);
		R_CMPB_BUF=EPT0->CMPB;			//Duty counter
	}
	else if((EPT0->MISR&EPT_CAP_LD2)==EPT_CAP_LD2)			//Capture Load to CMPC interrupt
	{
		EPT0->ICR=EPT_CAP_LD2;
    2a3c:	b317      	st.w      	r0, (r3, 0x5c)
    2a3e:	0424      	br      	0x2a86	// 2a86 <EPT0IntHandler+0x62>
	else if((EPT0->MISR&EPT_TRGEV1_INT)==EPT_TRGEV1_INT)	//TRGEV1 interrupt
    2a40:	9335      	ld.w      	r1, (r3, 0x54)
    2a42:	3002      	movi      	r0, 2
    2a44:	6840      	and      	r1, r0
    2a46:	3940      	cmpnei      	r1, 0
    2a48:	0bfa      	bt      	0x2a3c	// 2a3c <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_TRGEV2_INT)==EPT_TRGEV2_INT)	//TRGEV2 interrupt
    2a4a:	9335      	ld.w      	r1, (r3, 0x54)
    2a4c:	3004      	movi      	r0, 4
    2a4e:	6840      	and      	r1, r0
    2a50:	3940      	cmpnei      	r1, 0
    2a52:	0bf5      	bt      	0x2a3c	// 2a3c <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_TRGEV3_INT)==EPT_TRGEV3_INT)	//TRGEV3 interrupt
    2a54:	9335      	ld.w      	r1, (r3, 0x54)
    2a56:	3008      	movi      	r0, 8
    2a58:	6840      	and      	r1, r0
    2a5a:	3940      	cmpnei      	r1, 0
    2a5c:	0bf0      	bt      	0x2a3c	// 2a3c <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_CAP_LD0)==EPT_CAP_LD0)			//Capture Load to CMPA interrupt
    2a5e:	9335      	ld.w      	r1, (r3, 0x54)
    2a60:	3010      	movi      	r0, 16
    2a62:	6840      	and      	r1, r0
    2a64:	3940      	cmpnei      	r1, 0
    2a66:	0c1f      	bf      	0x2aa4	// 2aa4 <EPT0IntHandler+0x80>
		EPT0->ICR=EPT_CAP_LD0;
    2a68:	b317      	st.w      	r0, (r3, 0x5c)
		EXTI_trigger_CMD(DISABLE,EXI_PIN0,_EXIRT);
    2a6a:	3200      	movi      	r2, 0
    2a6c:	3101      	movi      	r1, 1
    2a6e:	3000      	movi      	r0, 0
    2a70:	e3fffa4e 	bsr      	0x1f0c	// 1f0c <EXTI_trigger_CMD>
		EXTI_trigger_CMD(ENABLE,EXI_PIN0,_EXIFT);
    2a74:	3201      	movi      	r2, 1
    2a76:	3101      	movi      	r1, 1
    2a78:	3001      	movi      	r0, 1
    2a7a:	e3fffa49 	bsr      	0x1f0c	// 1f0c <EXTI_trigger_CMD>
		R_CMPA_BUF=EPT0->CMPA;			//Low voltage counter
    2a7e:	9460      	ld.w      	r3, (r4, 0x0)
    2a80:	934b      	ld.w      	r2, (r3, 0x2c)
    2a82:	1271      	lrw      	r3, 0x200001b4	// 2bc4 <EPT0IntHandler+0x1a0>
		R_CMPB_BUF=EPT0->CMPB;			//Duty counter
    2a84:	b340      	st.w      	r2, (r3, 0x0)
	else if((EPT0->MISR&EPT_PEND)==EPT_PEND)				//End of cycle interrupt
	{
		EPT0->ICR=EPT_PEND;
	}
	//Emergency interruption
	if((EPT0->EMMISR&EPT_EP0_EMINT)==EPT_EP0_EMINT)			//interrupt flag of EP0 event
    2a86:	9460      	ld.w      	r3, (r4, 0x0)
    2a88:	3280      	movi      	r2, 128
    2a8a:	60c8      	addu      	r3, r2
    2a8c:	932b      	ld.w      	r1, (r3, 0x2c)
    2a8e:	3001      	movi      	r0, 1
    2a90:	6840      	and      	r1, r0
    2a92:	3940      	cmpnei      	r1, 0
    2a94:	0c5e      	bf      	0x2b50	// 2b50 <EPT0IntHandler+0x12c>
	{
		EPT0->EMICR=EPT_EP5_EMINT;
	}
	else if((EPT0->EMMISR&EPT_EP6_EMINT)==EPT_EP6_EMINT)	//interrupt flag of EP6 event
	{
		EPT0->EMICR=EPT_EP6_EMINT;
    2a96:	b30d      	st.w      	r0, (r3, 0x34)
	}
	else if((EPT0->EMMISR&EPT_EOM_FAULT_EMINT)==EPT_EOM_FAULT_EMINT)	//interrupt flag of EOM_FAULT event
	{
		EPT0->EMICR=EPT_EOM_FAULT_EMINT;
	}
}
    2a98:	d9ee2001 	ld.w      	r15, (r14, 0x4)
    2a9c:	9880      	ld.w      	r4, (r14, 0x0)
    2a9e:	1402      	addi      	r14, r14, 8
    2aa0:	1463      	ipop
    2aa2:	1461      	nir
	else if((EPT0->MISR&EPT_CAP_LD1)==EPT_CAP_LD1)			//Capture Load to CMPB interrupt
    2aa4:	9335      	ld.w      	r1, (r3, 0x54)
    2aa6:	3020      	movi      	r0, 32
    2aa8:	6840      	and      	r1, r0
    2aaa:	3940      	cmpnei      	r1, 0
    2aac:	0c10      	bf      	0x2acc	// 2acc <EPT0IntHandler+0xa8>
		EPT0->ICR=EPT_CAP_LD1;
    2aae:	b317      	st.w      	r0, (r3, 0x5c)
		EXTI_trigger_CMD(ENABLE,EXI_PIN0,_EXIRT);
    2ab0:	3200      	movi      	r2, 0
    2ab2:	3101      	movi      	r1, 1
    2ab4:	3001      	movi      	r0, 1
    2ab6:	e3fffa2b 	bsr      	0x1f0c	// 1f0c <EXTI_trigger_CMD>
		EXTI_trigger_CMD(DISABLE,EXI_PIN0,_EXIFT);
    2aba:	3201      	movi      	r2, 1
    2abc:	3101      	movi      	r1, 1
    2abe:	3000      	movi      	r0, 0
    2ac0:	e3fffa26 	bsr      	0x1f0c	// 1f0c <EXTI_trigger_CMD>
		R_CMPB_BUF=EPT0->CMPB;			//Duty counter
    2ac4:	9460      	ld.w      	r3, (r4, 0x0)
    2ac6:	934c      	ld.w      	r2, (r3, 0x30)
    2ac8:	1260      	lrw      	r3, 0x200001ac	// 2bc8 <EPT0IntHandler+0x1a4>
    2aca:	07dd      	br      	0x2a84	// 2a84 <EPT0IntHandler+0x60>
	else if((EPT0->MISR&EPT_CAP_LD2)==EPT_CAP_LD2)			//Capture Load to CMPC interrupt
    2acc:	9335      	ld.w      	r1, (r3, 0x54)
    2ace:	3040      	movi      	r0, 64
    2ad0:	6840      	and      	r1, r0
    2ad2:	3940      	cmpnei      	r1, 0
    2ad4:	0bb4      	bt      	0x2a3c	// 2a3c <EPT0IntHandler+0x18>
	else if((EPT0->MISR&EPT_CAP_LD3)==EPT_CAP_LD3)			//Capture Load to CMPD interrupt
    2ad6:	9335      	ld.w      	r1, (r3, 0x54)
    2ad8:	6848      	and      	r1, r2
    2ada:	3940      	cmpnei      	r1, 0
    2adc:	0c03      	bf      	0x2ae2	// 2ae2 <EPT0IntHandler+0xbe>
		EPT0->ICR=EPT_PEND;
    2ade:	b357      	st.w      	r2, (r3, 0x5c)
    2ae0:	07d3      	br      	0x2a86	// 2a86 <EPT0IntHandler+0x62>
	else if((EPT0->MISR&EPT_CAU)==EPT_CAU)					//Up-Counting phase CNT = CMPA interrupt
    2ae2:	3280      	movi      	r2, 128
    2ae4:	9335      	ld.w      	r1, (r3, 0x54)
    2ae6:	4241      	lsli      	r2, r2, 1
    2ae8:	6848      	and      	r1, r2
    2aea:	3940      	cmpnei      	r1, 0
    2aec:	0bf9      	bt      	0x2ade	// 2ade <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CAD)==EPT_CAD)					//Down-Counting phase CNT = CMPA interrupt
    2aee:	3280      	movi      	r2, 128
    2af0:	9335      	ld.w      	r1, (r3, 0x54)
    2af2:	4242      	lsli      	r2, r2, 2
    2af4:	6848      	and      	r1, r2
    2af6:	3940      	cmpnei      	r1, 0
    2af8:	0bf3      	bt      	0x2ade	// 2ade <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CBU)==EPT_CBU)					//Up-Counting phase CNT = CMPB interrupt 
    2afa:	3280      	movi      	r2, 128
    2afc:	9335      	ld.w      	r1, (r3, 0x54)
    2afe:	4243      	lsli      	r2, r2, 3
    2b00:	6848      	and      	r1, r2
    2b02:	3940      	cmpnei      	r1, 0
    2b04:	0bed      	bt      	0x2ade	// 2ade <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CBD)==EPT_CBD)					//Down-Counting phase CNT = CMPB interrupt
    2b06:	3280      	movi      	r2, 128
    2b08:	9335      	ld.w      	r1, (r3, 0x54)
    2b0a:	4244      	lsli      	r2, r2, 4
    2b0c:	6848      	and      	r1, r2
    2b0e:	3940      	cmpnei      	r1, 0
    2b10:	0be7      	bt      	0x2ade	// 2ade <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CCU)==EPT_CCU)					//Up-Counting phase CNT = CMPC interrupt 
    2b12:	3280      	movi      	r2, 128
    2b14:	9335      	ld.w      	r1, (r3, 0x54)
    2b16:	4245      	lsli      	r2, r2, 5
    2b18:	6848      	and      	r1, r2
    2b1a:	3940      	cmpnei      	r1, 0
    2b1c:	0be1      	bt      	0x2ade	// 2ade <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CCD)==EPT_CCD)					//Down-Counting phase CNT = CMPC interrupt
    2b1e:	3280      	movi      	r2, 128
    2b20:	9335      	ld.w      	r1, (r3, 0x54)
    2b22:	4246      	lsli      	r2, r2, 6
    2b24:	6848      	and      	r1, r2
    2b26:	3940      	cmpnei      	r1, 0
    2b28:	0bdb      	bt      	0x2ade	// 2ade <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CDU)==EPT_CDU)					//Up-Counting phase CNT = CMPD interrupt
    2b2a:	3280      	movi      	r2, 128
    2b2c:	9335      	ld.w      	r1, (r3, 0x54)
    2b2e:	4247      	lsli      	r2, r2, 7
    2b30:	6848      	and      	r1, r2
    2b32:	3940      	cmpnei      	r1, 0
    2b34:	0bd5      	bt      	0x2ade	// 2ade <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_CDD)==EPT_CDD)					//Down-Counting phase CNT = CMPD interrupt
    2b36:	3280      	movi      	r2, 128
    2b38:	9335      	ld.w      	r1, (r3, 0x54)
    2b3a:	4248      	lsli      	r2, r2, 8
    2b3c:	6848      	and      	r1, r2
    2b3e:	3940      	cmpnei      	r1, 0
    2b40:	0bcf      	bt      	0x2ade	// 2ade <EPT0IntHandler+0xba>
	else if((EPT0->MISR&EPT_PEND)==EPT_PEND)				//End of cycle interrupt
    2b42:	3280      	movi      	r2, 128
    2b44:	9335      	ld.w      	r1, (r3, 0x54)
    2b46:	4249      	lsli      	r2, r2, 9
    2b48:	6848      	and      	r1, r2
    2b4a:	3940      	cmpnei      	r1, 0
    2b4c:	0f9d      	bf      	0x2a86	// 2a86 <EPT0IntHandler+0x62>
    2b4e:	07c8      	br      	0x2ade	// 2ade <EPT0IntHandler+0xba>
	else if((EPT0->EMMISR&EPT_EP1_EMINT)==EPT_EP1_EMINT)	//interrupt flag of EP1 event
    2b50:	932b      	ld.w      	r1, (r3, 0x2c)
    2b52:	3002      	movi      	r0, 2
    2b54:	6840      	and      	r1, r0
    2b56:	3940      	cmpnei      	r1, 0
    2b58:	0b9f      	bt      	0x2a96	// 2a96 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP2_EMINT)==EPT_EP2_EMINT)	//interrupt flag of EP2 event
    2b5a:	932b      	ld.w      	r1, (r3, 0x2c)
    2b5c:	3004      	movi      	r0, 4
    2b5e:	6840      	and      	r1, r0
    2b60:	3940      	cmpnei      	r1, 0
    2b62:	0b9a      	bt      	0x2a96	// 2a96 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP3_EMINT)==EPT_EP3_EMINT)	//interrupt flag of EP3 event
    2b64:	932b      	ld.w      	r1, (r3, 0x2c)
    2b66:	3008      	movi      	r0, 8
    2b68:	6840      	and      	r1, r0
    2b6a:	3940      	cmpnei      	r1, 0
    2b6c:	0b95      	bt      	0x2a96	// 2a96 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP4_EMINT)==EPT_EP4_EMINT)	//interrupt flag of EP4 event
    2b6e:	932b      	ld.w      	r1, (r3, 0x2c)
    2b70:	3010      	movi      	r0, 16
    2b72:	6840      	and      	r1, r0
    2b74:	3940      	cmpnei      	r1, 0
    2b76:	0b90      	bt      	0x2a96	// 2a96 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP5_EMINT)==EPT_EP5_EMINT)	//interrupt flag of EP5 event
    2b78:	932b      	ld.w      	r1, (r3, 0x2c)
    2b7a:	3020      	movi      	r0, 32
    2b7c:	6840      	and      	r1, r0
    2b7e:	3940      	cmpnei      	r1, 0
    2b80:	0b8b      	bt      	0x2a96	// 2a96 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP6_EMINT)==EPT_EP6_EMINT)	//interrupt flag of EP6 event
    2b82:	932b      	ld.w      	r1, (r3, 0x2c)
    2b84:	3040      	movi      	r0, 64
    2b86:	6840      	and      	r1, r0
    2b88:	3940      	cmpnei      	r1, 0
    2b8a:	0b86      	bt      	0x2a96	// 2a96 <EPT0IntHandler+0x72>
	else if((EPT0->EMMISR&EPT_EP7_EMINT)==EPT_EP7_EMINT)	//interrupt flag of EP7 event
    2b8c:	932b      	ld.w      	r1, (r3, 0x2c)
    2b8e:	6848      	and      	r1, r2
    2b90:	3940      	cmpnei      	r1, 0
    2b92:	0c03      	bf      	0x2b98	// 2b98 <EPT0IntHandler+0x174>
		EPT0->EMICR=EPT_EOM_FAULT_EMINT;
    2b94:	b34d      	st.w      	r2, (r3, 0x34)
}
    2b96:	0781      	br      	0x2a98	// 2a98 <EPT0IntHandler+0x74>
	else if((EPT0->EMMISR&EPT_CPU_FAULT_EMINT)==EPT_CPU_FAULT_EMINT)	//interrupt flag of CPU_FAULT event
    2b98:	3280      	movi      	r2, 128
    2b9a:	932b      	ld.w      	r1, (r3, 0x2c)
    2b9c:	4241      	lsli      	r2, r2, 1
    2b9e:	6848      	and      	r1, r2
    2ba0:	3940      	cmpnei      	r1, 0
    2ba2:	0bf9      	bt      	0x2b94	// 2b94 <EPT0IntHandler+0x170>
	else if((EPT0->EMMISR&EPT_MEM_FAULT_EMINT)==EPT_MEM_FAULT_EMINT)	//interrupt flag of MEM_FAULT event
    2ba4:	3280      	movi      	r2, 128
    2ba6:	932b      	ld.w      	r1, (r3, 0x2c)
    2ba8:	4242      	lsli      	r2, r2, 2
    2baa:	6848      	and      	r1, r2
    2bac:	3940      	cmpnei      	r1, 0
    2bae:	0bf3      	bt      	0x2b94	// 2b94 <EPT0IntHandler+0x170>
	else if((EPT0->EMMISR&EPT_EOM_FAULT_EMINT)==EPT_EOM_FAULT_EMINT)	//interrupt flag of EOM_FAULT event
    2bb0:	3280      	movi      	r2, 128
    2bb2:	932b      	ld.w      	r1, (r3, 0x2c)
    2bb4:	4243      	lsli      	r2, r2, 3
    2bb6:	6848      	and      	r1, r2
    2bb8:	3940      	cmpnei      	r1, 0
    2bba:	0bed      	bt      	0x2b94	// 2b94 <EPT0IntHandler+0x170>
    2bbc:	076e      	br      	0x2a98	// 2a98 <EPT0IntHandler+0x74>
    2bbe:	0000      	bkpt
    2bc0:	20000020 	.long	0x20000020
    2bc4:	200001b4 	.long	0x200001b4
    2bc8:	200001ac 	.long	0x200001ac

Disassembly of section .text.WWDTHandler:

00002bcc <WWDTHandler>:
//WWDT Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void WWDTHandler(void)
{
    2bcc:	1460      	nie
    2bce:	1462      	ipush
    2bd0:	14d2      	push      	r4-r5, r15
	WWDT->ICR=0X01;
    2bd2:	10ab      	lrw      	r5, 0x20000010	// 2bfc <WWDTHandler+0x30>
    2bd4:	3401      	movi      	r4, 1
    2bd6:	9560      	ld.w      	r3, (r5, 0x0)
    2bd8:	b385      	st.w      	r4, (r3, 0x14)
	WWDT_CNT_Load(0xFF);
    2bda:	30ff      	movi      	r0, 255
    2bdc:	e3fffa46 	bsr      	0x2068	// 2068 <WWDT_CNT_Load>
	if((WWDT->MISR&WWDT_EVI)==WWDT_EVI)					//WWDT EVI interrupt
    2be0:	9540      	ld.w      	r2, (r5, 0x0)
    2be2:	9263      	ld.w      	r3, (r2, 0xc)
    2be4:	68d0      	and      	r3, r4
    2be6:	3b40      	cmpnei      	r3, 0
    2be8:	0c02      	bf      	0x2bec	// 2bec <WWDTHandler+0x20>
	{
		WWDT->ICR = WWDT_EVI;
    2bea:	b285      	st.w      	r4, (r2, 0x14)
	} 
}
    2bec:	d9ee2002 	ld.w      	r15, (r14, 0x8)
    2bf0:	98a1      	ld.w      	r5, (r14, 0x4)
    2bf2:	9880      	ld.w      	r4, (r14, 0x0)
    2bf4:	1403      	addi      	r14, r14, 12
    2bf6:	1463      	ipop
    2bf8:	1461      	nir
    2bfa:	0000      	bkpt
    2bfc:	20000010 	.long	0x20000010

Disassembly of section .text.GPT0IntHandler:

00002c00 <GPT0IntHandler>:
//GPT0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void GPT0IntHandler(void) 
{
    2c00:	1460      	nie
    2c02:	1462      	ipush
    // ISR content ...
	if((GPT0->MISR&GPT_INT_TRGEV0)==GPT_INT_TRGEV0)			//TRGEV0 interrupt
    2c04:	107e      	lrw      	r3, 0x20000024	// 2c7c <GPT0IntHandler+0x7c>
    2c06:	3101      	movi      	r1, 1
    2c08:	9360      	ld.w      	r3, (r3, 0x0)
    2c0a:	237f      	addi      	r3, 128
    2c0c:	9355      	ld.w      	r2, (r3, 0x54)
    2c0e:	6884      	and      	r2, r1
    2c10:	3a40      	cmpnei      	r2, 0
    2c12:	0c04      	bf      	0x2c1a	// 2c1a <GPT0IntHandler+0x1a>
	{
		GPT0->ICR = GPT_INT_CAPLD0;
	}
	else if((GPT0->MISR&GPT_INT_CAPLD1)==GPT_INT_CAPLD1)		//Capture Load to CMPB interrupt
	{
		GPT0->ICR = GPT_INT_CAPLD1;
    2c14:	b337      	st.w      	r1, (r3, 0x5c)
	}
	else if((GPT0->MISR&GPT_INT_PEND)==GPT_INT_PEND)		//End of cycle interrupt 
	{
		GPT0->ICR = GPT_INT_PEND;
	}
}
    2c16:	1463      	ipop
    2c18:	1461      	nir
	else if((GPT0->MISR&GPT_INT_TRGEV1)==GPT_INT_TRGEV1)	//TRGEV1 interrupt
    2c1a:	9355      	ld.w      	r2, (r3, 0x54)
    2c1c:	3102      	movi      	r1, 2
    2c1e:	6884      	and      	r2, r1
    2c20:	3a40      	cmpnei      	r2, 0
    2c22:	0bf9      	bt      	0x2c14	// 2c14 <GPT0IntHandler+0x14>
	else if((GPT0->MISR&GPT_INT_CAPLD0)==GPT_INT_CAPLD0)		//Capture Load to CMPA interrupt
    2c24:	9355      	ld.w      	r2, (r3, 0x54)
    2c26:	3110      	movi      	r1, 16
    2c28:	6884      	and      	r2, r1
    2c2a:	3a40      	cmpnei      	r2, 0
    2c2c:	0bf4      	bt      	0x2c14	// 2c14 <GPT0IntHandler+0x14>
	else if((GPT0->MISR&GPT_INT_CAPLD1)==GPT_INT_CAPLD1)		//Capture Load to CMPB interrupt
    2c2e:	9355      	ld.w      	r2, (r3, 0x54)
    2c30:	3120      	movi      	r1, 32
    2c32:	6884      	and      	r2, r1
    2c34:	3a40      	cmpnei      	r2, 0
    2c36:	0bef      	bt      	0x2c14	// 2c14 <GPT0IntHandler+0x14>
	else if((GPT0->MISR&GPT_INT_CAU)==GPT_INT_CAU)			//Up-Counting phase CNT = CMPA Interrupt
    2c38:	3280      	movi      	r2, 128
    2c3a:	9335      	ld.w      	r1, (r3, 0x54)
    2c3c:	4241      	lsli      	r2, r2, 1
    2c3e:	6848      	and      	r1, r2
    2c40:	3940      	cmpnei      	r1, 0
    2c42:	0c03      	bf      	0x2c48	// 2c48 <GPT0IntHandler+0x48>
		GPT0->ICR = GPT_INT_PEND;
    2c44:	b357      	st.w      	r2, (r3, 0x5c)
}
    2c46:	07e8      	br      	0x2c16	// 2c16 <GPT0IntHandler+0x16>
	else if((GPT0->MISR&GPT_INT_CAD)==GPT_INT_CAD)			//Down-Counting phase CNT = CMPA Interrupt
    2c48:	3280      	movi      	r2, 128
    2c4a:	9335      	ld.w      	r1, (r3, 0x54)
    2c4c:	4242      	lsli      	r2, r2, 2
    2c4e:	6848      	and      	r1, r2
    2c50:	3940      	cmpnei      	r1, 0
    2c52:	0bf9      	bt      	0x2c44	// 2c44 <GPT0IntHandler+0x44>
	else if((GPT0->MISR&GPT_INT_CBU)==GPT_INT_CBU)			//Up-Counting phase CNT = CMPB Interrupt
    2c54:	3280      	movi      	r2, 128
    2c56:	9335      	ld.w      	r1, (r3, 0x54)
    2c58:	4243      	lsli      	r2, r2, 3
    2c5a:	6848      	and      	r1, r2
    2c5c:	3940      	cmpnei      	r1, 0
    2c5e:	0bf3      	bt      	0x2c44	// 2c44 <GPT0IntHandler+0x44>
	else if((GPT0->MISR&GPT_INT_CBD)==GPT_INT_CBD)			//Down-Counting phase CNT = CMPB Interrupt
    2c60:	3280      	movi      	r2, 128
    2c62:	9335      	ld.w      	r1, (r3, 0x54)
    2c64:	4244      	lsli      	r2, r2, 4
    2c66:	6848      	and      	r1, r2
    2c68:	3940      	cmpnei      	r1, 0
    2c6a:	0bed      	bt      	0x2c44	// 2c44 <GPT0IntHandler+0x44>
	else if((GPT0->MISR&GPT_INT_PEND)==GPT_INT_PEND)		//End of cycle interrupt 
    2c6c:	3280      	movi      	r2, 128
    2c6e:	9335      	ld.w      	r1, (r3, 0x54)
    2c70:	4249      	lsli      	r2, r2, 9
    2c72:	6848      	and      	r1, r2
    2c74:	3940      	cmpnei      	r1, 0
    2c76:	0be7      	bt      	0x2c44	// 2c44 <GPT0IntHandler+0x44>
    2c78:	07cf      	br      	0x2c16	// 2c16 <GPT0IntHandler+0x16>
    2c7a:	0000      	bkpt
    2c7c:	20000024 	.long	0x20000024

Disassembly of section .text.RTCIntHandler:

00002c80 <RTCIntHandler>:
//RTC Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void RTCIntHandler(void) 
{
    2c80:	1460      	nie
    2c82:	1462      	ipush
    // ISR content ...
	if((RTC->MISR&ALRA_INT)==ALRA_INT)			//Interrupt of alarm A
    2c84:	1079      	lrw      	r3, 0x20000018	// 2ce8 <RTCIntHandler+0x68>
    2c86:	3101      	movi      	r1, 1
    2c88:	9360      	ld.w      	r3, (r3, 0x0)
    2c8a:	934a      	ld.w      	r2, (r3, 0x28)
    2c8c:	6884      	and      	r2, r1
    2c8e:	3a40      	cmpnei      	r2, 0
    2c90:	0c14      	bf      	0x2cb8	// 2cb8 <RTCIntHandler+0x38>
	{
		RTC->ICR=ALRA_INT;
		RTC->KEY=0XCA53;
    2c92:	1057      	lrw      	r2, 0xca53	// 2cec <RTCIntHandler+0x6c>
		RTC->ICR=ALRA_INT;
    2c94:	b32b      	st.w      	r1, (r3, 0x2c)
		RTC->KEY=0XCA53;
    2c96:	b34c      	st.w      	r2, (r3, 0x30)
		RTC->CR=RTC->CR|0x01;
    2c98:	9342      	ld.w      	r2, (r3, 0x8)
    2c9a:	6c84      	or      	r2, r1
    2c9c:	b342      	st.w      	r2, (r3, 0x8)
		RTC->TIMR=(0x10<<16)|(0x00<<8)|(0x00);			//Hour bit6->0:am 1:pm	
    2c9e:	3280      	movi      	r2, 128
    2ca0:	424d      	lsli      	r2, r2, 13
    2ca2:	b340      	st.w      	r2, (r3, 0x0)
		while(RTC->CR&0x02);							//busy TIMR DATR ALRAR ALRBR Update done
    2ca4:	3102      	movi      	r1, 2
    2ca6:	9342      	ld.w      	r2, (r3, 0x8)
    2ca8:	6884      	and      	r2, r1
    2caa:	3a40      	cmpnei      	r2, 0
    2cac:	0bfd      	bt      	0x2ca6	// 2ca6 <RTCIntHandler+0x26>
		RTC->CR &= ~0x1;
    2cae:	9342      	ld.w      	r2, (r3, 0x8)
    2cb0:	3a80      	bclri      	r2, 0
    2cb2:	b342      	st.w      	r2, (r3, 0x8)
	}
	else if((RTC->MISR&RTC_TRGEV1_INT)==RTC_TRGEV1_INT)		//Interrupt of trigger event 1
	{
		RTC->ICR=RTC_TRGEV1_INT;
	}
}
    2cb4:	1463      	ipop
    2cb6:	1461      	nir
	else if((RTC->MISR&ALRB_INT)==ALRB_INT)			//Interrupt of alarm B				
    2cb8:	934a      	ld.w      	r2, (r3, 0x28)
    2cba:	3102      	movi      	r1, 2
    2cbc:	6884      	and      	r2, r1
    2cbe:	3a40      	cmpnei      	r2, 0
    2cc0:	0c03      	bf      	0x2cc6	// 2cc6 <RTCIntHandler+0x46>
		RTC->ICR=RTC_TRGEV1_INT;
    2cc2:	b32b      	st.w      	r1, (r3, 0x2c)
}
    2cc4:	07f8      	br      	0x2cb4	// 2cb4 <RTCIntHandler+0x34>
	else if((RTC->MISR&CPRD_INT)==CPRD_INT)			//Interrupt of alarm CPRD
    2cc6:	934a      	ld.w      	r2, (r3, 0x28)
    2cc8:	3104      	movi      	r1, 4
    2cca:	6884      	and      	r2, r1
    2ccc:	3a40      	cmpnei      	r2, 0
    2cce:	0bfa      	bt      	0x2cc2	// 2cc2 <RTCIntHandler+0x42>
	else if((RTC->MISR&RTC_TRGEV0_INT)==RTC_TRGEV0_INT)		//Interrupt of trigger event 0
    2cd0:	934a      	ld.w      	r2, (r3, 0x28)
    2cd2:	3108      	movi      	r1, 8
    2cd4:	6884      	and      	r2, r1
    2cd6:	3a40      	cmpnei      	r2, 0
    2cd8:	0bf5      	bt      	0x2cc2	// 2cc2 <RTCIntHandler+0x42>
	else if((RTC->MISR&RTC_TRGEV1_INT)==RTC_TRGEV1_INT)		//Interrupt of trigger event 1
    2cda:	934a      	ld.w      	r2, (r3, 0x28)
    2cdc:	3110      	movi      	r1, 16
    2cde:	6884      	and      	r2, r1
    2ce0:	3a40      	cmpnei      	r2, 0
    2ce2:	0bf0      	bt      	0x2cc2	// 2cc2 <RTCIntHandler+0x42>
    2ce4:	07e8      	br      	0x2cb4	// 2cb4 <RTCIntHandler+0x34>
    2ce6:	0000      	bkpt
    2ce8:	20000018 	.long	0x20000018
    2cec:	0000ca53 	.long	0x0000ca53

Disassembly of section .text.UART0IntHandler:

00002cf0 <UART0IntHandler>:
//UART0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART0IntHandler(void) 
{
    2cf0:	1460      	nie
    2cf2:	1462      	ipush
    // ISR content ...
	if ((UART0->ISR&UART_RX_INT_S)==UART_RX_INT_S)				//RX interrupt
    2cf4:	106d      	lrw      	r3, 0x20000040	// 2d28 <UART0IntHandler+0x38>
    2cf6:	3102      	movi      	r1, 2
    2cf8:	9360      	ld.w      	r3, (r3, 0x0)
    2cfa:	9343      	ld.w      	r2, (r3, 0xc)
    2cfc:	6884      	and      	r2, r1
    2cfe:	3a40      	cmpnei      	r2, 0
    2d00:	0c03      	bf      	0x2d06	// 2d06 <UART0IntHandler+0x16>
	{
		UART0->ISR=UART_RX_IOV_S;
	}
	else if ((UART0->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
	{
		UART0->ISR=UART_TX_IOV_S;
    2d02:	b323      	st.w      	r1, (r3, 0xc)
	}
}
    2d04:	0410      	br      	0x2d24	// 2d24 <UART0IntHandler+0x34>
	else if( (UART0->ISR&UART_TX_INT_S)==UART_TX_INT_S ) 		//TX interrupt
    2d06:	9343      	ld.w      	r2, (r3, 0xc)
    2d08:	3101      	movi      	r1, 1
    2d0a:	6884      	and      	r2, r1
    2d0c:	3a40      	cmpnei      	r2, 0
    2d0e:	0bfa      	bt      	0x2d02	// 2d02 <UART0IntHandler+0x12>
	else if ((UART0->ISR&UART_RX_IOV_S)==UART_RX_IOV_S)			//RX overrun interrupt
    2d10:	9343      	ld.w      	r2, (r3, 0xc)
    2d12:	3108      	movi      	r1, 8
    2d14:	6884      	and      	r2, r1
    2d16:	3a40      	cmpnei      	r2, 0
    2d18:	0bf5      	bt      	0x2d02	// 2d02 <UART0IntHandler+0x12>
	else if ((UART0->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
    2d1a:	9343      	ld.w      	r2, (r3, 0xc)
    2d1c:	3104      	movi      	r1, 4
    2d1e:	6884      	and      	r2, r1
    2d20:	3a40      	cmpnei      	r2, 0
    2d22:	0bf0      	bt      	0x2d02	// 2d02 <UART0IntHandler+0x12>
}
    2d24:	1463      	ipop
    2d26:	1461      	nir
    2d28:	20000040 	.long	0x20000040

Disassembly of section .text.UART1IntHandler:

00002d2c <UART1IntHandler>:
//UART1 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART1IntHandler(void) 
{
    2d2c:	1460      	nie
    2d2e:	1462      	ipush
    // ISR content ...
	if ((UART1->ISR&UART_RX_INT_S)==UART_RX_INT_S)				//RX interrupt
    2d30:	106d      	lrw      	r3, 0x2000003c	// 2d64 <UART1IntHandler+0x38>
    2d32:	3102      	movi      	r1, 2
    2d34:	9360      	ld.w      	r3, (r3, 0x0)
    2d36:	9343      	ld.w      	r2, (r3, 0xc)
    2d38:	6884      	and      	r2, r1
    2d3a:	3a40      	cmpnei      	r2, 0
    2d3c:	0c03      	bf      	0x2d42	// 2d42 <UART1IntHandler+0x16>
	{
		UART1->ISR=UART_RX_IOV_S;
	}
	else if ((UART1->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
	{
		UART1->ISR=UART_TX_IOV_S;
    2d3e:	b323      	st.w      	r1, (r3, 0xc)
	}
}
    2d40:	0410      	br      	0x2d60	// 2d60 <UART1IntHandler+0x34>
	else if( (UART1->ISR&UART_TX_INT_S)==UART_TX_INT_S ) 		//TX interrupt
    2d42:	9343      	ld.w      	r2, (r3, 0xc)
    2d44:	3101      	movi      	r1, 1
    2d46:	6884      	and      	r2, r1
    2d48:	3a40      	cmpnei      	r2, 0
    2d4a:	0bfa      	bt      	0x2d3e	// 2d3e <UART1IntHandler+0x12>
	else if ((UART1->ISR&UART_RX_IOV_S)==UART_RX_IOV_S)			//RX overrun interrupt
    2d4c:	9343      	ld.w      	r2, (r3, 0xc)
    2d4e:	3108      	movi      	r1, 8
    2d50:	6884      	and      	r2, r1
    2d52:	3a40      	cmpnei      	r2, 0
    2d54:	0bf5      	bt      	0x2d3e	// 2d3e <UART1IntHandler+0x12>
	else if ((UART1->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
    2d56:	9343      	ld.w      	r2, (r3, 0xc)
    2d58:	3104      	movi      	r1, 4
    2d5a:	6884      	and      	r2, r1
    2d5c:	3a40      	cmpnei      	r2, 0
    2d5e:	0bf0      	bt      	0x2d3e	// 2d3e <UART1IntHandler+0x12>
}
    2d60:	1463      	ipop
    2d62:	1461      	nir
    2d64:	2000003c 	.long	0x2000003c

Disassembly of section .text.UART2IntHandler:

00002d68 <UART2IntHandler>:
//UART2 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void UART2IntHandler(void) 
{
    2d68:	1460      	nie
    2d6a:	1462      	ipush
    // ISR content ...
	if ((UART2->ISR&UART_RX_INT_S)==UART_RX_INT_S)				//RX interrupt
    2d6c:	106d      	lrw      	r3, 0x20000038	// 2da0 <UART2IntHandler+0x38>
    2d6e:	3102      	movi      	r1, 2
    2d70:	9360      	ld.w      	r3, (r3, 0x0)
    2d72:	9343      	ld.w      	r2, (r3, 0xc)
    2d74:	6884      	and      	r2, r1
    2d76:	3a40      	cmpnei      	r2, 0
    2d78:	0c03      	bf      	0x2d7e	// 2d7e <UART2IntHandler+0x16>
	{
		UART2->ISR=UART_RX_IOV_S;
	}
	else if ((UART2->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
	{
		UART2->ISR=UART_TX_IOV_S;
    2d7a:	b323      	st.w      	r1, (r3, 0xc)
	}
}
    2d7c:	0410      	br      	0x2d9c	// 2d9c <UART2IntHandler+0x34>
	else if( (UART2->ISR&UART_TX_INT_S)==UART_TX_INT_S ) 		//TX interrupt
    2d7e:	9343      	ld.w      	r2, (r3, 0xc)
    2d80:	3101      	movi      	r1, 1
    2d82:	6884      	and      	r2, r1
    2d84:	3a40      	cmpnei      	r2, 0
    2d86:	0bfa      	bt      	0x2d7a	// 2d7a <UART2IntHandler+0x12>
	else if ((UART2->ISR&UART_RX_IOV_S)==UART_RX_IOV_S)			//RX overrun interrupt
    2d88:	9343      	ld.w      	r2, (r3, 0xc)
    2d8a:	3108      	movi      	r1, 8
    2d8c:	6884      	and      	r2, r1
    2d8e:	3a40      	cmpnei      	r2, 0
    2d90:	0bf5      	bt      	0x2d7a	// 2d7a <UART2IntHandler+0x12>
	else if ((UART2->ISR&UART_TX_IOV_S)==UART_TX_IOV_S)			//TX overrun interrupt
    2d92:	9343      	ld.w      	r2, (r3, 0xc)
    2d94:	3104      	movi      	r1, 4
    2d96:	6884      	and      	r2, r1
    2d98:	3a40      	cmpnei      	r2, 0
    2d9a:	0bf0      	bt      	0x2d7a	// 2d7a <UART2IntHandler+0x12>
}
    2d9c:	1463      	ipop
    2d9e:	1461      	nir
    2da0:	20000038 	.long	0x20000038

Disassembly of section .text.SPI0IntHandler:

00002da4 <SPI0IntHandler>:
//SPI Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SPI0IntHandler(void) 
{
    2da4:	1460      	nie
    2da6:	1462      	ipush
    // ISR content ...
	if((SPI0->MISR&SPI_PORIM)==SPI_PORIM)					//Receive Overrun Interrupt
    2da8:	1178      	lrw      	r3, 0x20000034	// 2e88 <SPI0IntHandler+0xe4>
    2daa:	3101      	movi      	r1, 1
    2dac:	9360      	ld.w      	r3, (r3, 0x0)
    2dae:	9347      	ld.w      	r2, (r3, 0x1c)
    2db0:	6884      	and      	r2, r1
    2db2:	3a40      	cmpnei      	r2, 0
    2db4:	0c03      	bf      	0x2dba	// 2dba <SPI0IntHandler+0x16>
			}
		}
	}
	else if((SPI0->MISR&SPI_TXIM)==SPI_TXIM)				//Transmit FIFO Interrupt
	{
		SPI0->ICR = SPI_TXIM;
    2db6:	b328      	st.w      	r1, (r3, 0x20)
	}

}
    2db8:	0407      	br      	0x2dc6	// 2dc6 <SPI0IntHandler+0x22>
	else if((SPI0->MISR&SPI_RTIM)==SPI_RTIM)				//Receive Timeout Interrupt
    2dba:	9347      	ld.w      	r2, (r3, 0x1c)
    2dbc:	3002      	movi      	r0, 2
    2dbe:	6880      	and      	r2, r0
    2dc0:	3a40      	cmpnei      	r2, 0
    2dc2:	0c04      	bf      	0x2dca	// 2dca <SPI0IntHandler+0x26>
		SPI0->ICR = SPI_RTIM;
    2dc4:	b308      	st.w      	r0, (r3, 0x20)
}
    2dc6:	1463      	ipop
    2dc8:	1461      	nir
	else if((SPI0->MISR&SPI_RXIM)==SPI_RXIM)				//Receive FIFO Interrupt,FIFO can be set 1/8,1/4,1/2 FIFO Interrupt
    2dca:	9347      	ld.w      	r2, (r3, 0x1c)
    2dcc:	3004      	movi      	r0, 4
    2dce:	6880      	and      	r2, r0
    2dd0:	3a40      	cmpnei      	r2, 0
    2dd2:	0c55      	bf      	0x2e7c	// 2e7c <SPI0IntHandler+0xd8>
		SPI0->ICR = SPI_RXIM;
    2dd4:	b308      	st.w      	r0, (r3, 0x20)
		if(SPI0->DR==0xaa)
    2dd6:	9302      	ld.w      	r0, (r3, 0x8)
    2dd8:	32aa      	movi      	r2, 170
    2dda:	6482      	cmpne      	r0, r2
    2ddc:	083e      	bt      	0x2e58	// 2e58 <SPI0IntHandler+0xb4>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    2dde:	3102      	movi      	r1, 2
    2de0:	9343      	ld.w      	r2, (r3, 0xc)
    2de2:	6884      	and      	r2, r1
    2de4:	3a40      	cmpnei      	r2, 0
    2de6:	0ffd      	bf      	0x2de0	// 2de0 <SPI0IntHandler+0x3c>
			SPI0->DR = 0x11;
    2de8:	3211      	movi      	r2, 17
    2dea:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    2dec:	3110      	movi      	r1, 16
    2dee:	9343      	ld.w      	r2, (r3, 0xc)
    2df0:	6884      	and      	r2, r1
    2df2:	3a40      	cmpnei      	r2, 0
    2df4:	0bfd      	bt      	0x2dee	// 2dee <SPI0IntHandler+0x4a>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    2df6:	3102      	movi      	r1, 2
    2df8:	9343      	ld.w      	r2, (r3, 0xc)
    2dfa:	6884      	and      	r2, r1
    2dfc:	3a40      	cmpnei      	r2, 0
    2dfe:	0ffd      	bf      	0x2df8	// 2df8 <SPI0IntHandler+0x54>
			SPI0->DR = 0x12;
    2e00:	3212      	movi      	r2, 18
    2e02:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    2e04:	3110      	movi      	r1, 16
    2e06:	9343      	ld.w      	r2, (r3, 0xc)
    2e08:	6884      	and      	r2, r1
    2e0a:	3a40      	cmpnei      	r2, 0
    2e0c:	0bfd      	bt      	0x2e06	// 2e06 <SPI0IntHandler+0x62>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    2e0e:	3102      	movi      	r1, 2
    2e10:	9343      	ld.w      	r2, (r3, 0xc)
    2e12:	6884      	and      	r2, r1
    2e14:	3a40      	cmpnei      	r2, 0
    2e16:	0ffd      	bf      	0x2e10	// 2e10 <SPI0IntHandler+0x6c>
			SPI0->DR = 0x13;
    2e18:	3213      	movi      	r2, 19
    2e1a:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    2e1c:	3110      	movi      	r1, 16
    2e1e:	9343      	ld.w      	r2, (r3, 0xc)
    2e20:	6884      	and      	r2, r1
    2e22:	3a40      	cmpnei      	r2, 0
    2e24:	0bfd      	bt      	0x2e1e	// 2e1e <SPI0IntHandler+0x7a>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    2e26:	3102      	movi      	r1, 2
    2e28:	9343      	ld.w      	r2, (r3, 0xc)
    2e2a:	6884      	and      	r2, r1
    2e2c:	3a40      	cmpnei      	r2, 0
    2e2e:	0ffd      	bf      	0x2e28	// 2e28 <SPI0IntHandler+0x84>
			SPI0->DR = 0x14;
    2e30:	3214      	movi      	r2, 20
    2e32:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    2e34:	3110      	movi      	r1, 16
    2e36:	9343      	ld.w      	r2, (r3, 0xc)
    2e38:	6884      	and      	r2, r1
    2e3a:	3a40      	cmpnei      	r2, 0
    2e3c:	0bfd      	bt      	0x2e36	// 2e36 <SPI0IntHandler+0x92>
			while(((SPI0->SR) & SSP_TNF) != SSP_TNF);	//Transmit FIFO is not full？
    2e3e:	3102      	movi      	r1, 2
    2e40:	9343      	ld.w      	r2, (r3, 0xc)
    2e42:	6884      	and      	r2, r1
    2e44:	3a40      	cmpnei      	r2, 0
    2e46:	0ffd      	bf      	0x2e40	// 2e40 <SPI0IntHandler+0x9c>
			SPI0->DR = 0x15;
    2e48:	3215      	movi      	r2, 21
    2e4a:	b342      	st.w      	r2, (r3, 0x8)
			while(((SPI0->SR) & SSP_BSY) == SSP_BSY);	//Send or receive over？
    2e4c:	3110      	movi      	r1, 16
    2e4e:	9343      	ld.w      	r2, (r3, 0xc)
    2e50:	6884      	and      	r2, r1
    2e52:	3a40      	cmpnei      	r2, 0
    2e54:	0bfd      	bt      	0x2e4e	// 2e4e <SPI0IntHandler+0xaa>
    2e56:	07b8      	br      	0x2dc6	// 2dc6 <SPI0IntHandler+0x22>
			if(((SPI0->SR) & SSP_TFE)!=SSP_TFE)
    2e58:	9343      	ld.w      	r2, (r3, 0xc)
    2e5a:	6884      	and      	r2, r1
    2e5c:	3a40      	cmpnei      	r2, 0
    2e5e:	0bb4      	bt      	0x2dc6	// 2dc6 <SPI0IntHandler+0x22>
				SPI0->DR=0x0;								//FIFO=0
    2e60:	b342      	st.w      	r2, (r3, 0x8)
				while(((SPI0->SR) & SSP_BSY) == SSP_BSY);		//Send or receive over？
    2e62:	3110      	movi      	r1, 16
				SPI0->DR=0x0;								//FIFO=0
    2e64:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    2e66:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    2e68:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    2e6a:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    2e6c:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    2e6e:	b342      	st.w      	r2, (r3, 0x8)
				SPI0->DR=0x0;								//FIFO=0
    2e70:	b342      	st.w      	r2, (r3, 0x8)
				while(((SPI0->SR) & SSP_BSY) == SSP_BSY);		//Send or receive over？
    2e72:	9343      	ld.w      	r2, (r3, 0xc)
    2e74:	6884      	and      	r2, r1
    2e76:	3a40      	cmpnei      	r2, 0
    2e78:	0bfd      	bt      	0x2e72	// 2e72 <SPI0IntHandler+0xce>
    2e7a:	07a6      	br      	0x2dc6	// 2dc6 <SPI0IntHandler+0x22>
	else if((SPI0->MISR&SPI_TXIM)==SPI_TXIM)				//Transmit FIFO Interrupt
    2e7c:	9347      	ld.w      	r2, (r3, 0x1c)
    2e7e:	3108      	movi      	r1, 8
    2e80:	6884      	and      	r2, r1
    2e82:	3a40      	cmpnei      	r2, 0
    2e84:	0b99      	bt      	0x2db6	// 2db6 <SPI0IntHandler+0x12>
    2e86:	07a0      	br      	0x2dc6	// 2dc6 <SPI0IntHandler+0x22>
    2e88:	20000034 	.long	0x20000034

Disassembly of section .text.SIO0IntHandler:

00002e8c <SIO0IntHandler>:
//SIO Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void SIO0IntHandler(void) 
{
    2e8c:	1460      	nie
    2e8e:	1462      	ipush
		delay_nms(10);
		SIO0->TXBUF=(0x03<<30)|(0x02<<28)|(0x03<<26)|(0x02<<24)|(0x03<<22)|(0x02<<20)|(0x03<<18)|(0x02<<16)|
				(0x01<<14)|(0x00<<12)|(0x01<<10)|(0x00<<8)|(0x01<<6)|(0x00<<4)|(0x01<<2)|(0x0<<0);		//0:D0,1:D1,2:DL,3:DH;	
	}*/
	
	if(SIO0->MISR&0X02)					//RXDNE
    2e90:	107d      	lrw      	r3, 0x2000002c	// 2f04 <SIO0IntHandler+0x78>
    2e92:	3102      	movi      	r1, 2
    2e94:	9360      	ld.w      	r3, (r3, 0x0)
    2e96:	9349      	ld.w      	r2, (r3, 0x24)
    2e98:	6884      	and      	r2, r1
    2e9a:	3a40      	cmpnei      	r2, 0
    2e9c:	0c13      	bf      	0x2ec2	// 2ec2 <SIO0IntHandler+0x36>
	{
		SIO0->ICR=0X02;
    2e9e:	b32b      	st.w      	r1, (r3, 0x2c)
		if(R_SIORX_count>=1)
    2ea0:	101a      	lrw      	r0, 0x200001b8	// 2f08 <SIO0IntHandler+0x7c>
    2ea2:	9040      	ld.w      	r2, (r0, 0x0)
    2ea4:	3a20      	cmplti      	r2, 1
    2ea6:	080c      	bt      	0x2ebe	// 2ebe <SIO0IntHandler+0x32>
		{
			R_SIORX_buf[R_SIORX_count]=SIO0->RXBUF&0xff000000;			//8bit
    2ea8:	9040      	ld.w      	r2, (r0, 0x0)
    2eaa:	9327      	ld.w      	r1, (r3, 0x1c)
    2eac:	4938      	lsri      	r1, r1, 24
    2eae:	4262      	lsli      	r3, r2, 2
    2eb0:	1057      	lrw      	r2, 0x200001bc	// 2f0c <SIO0IntHandler+0x80>
    2eb2:	4138      	lsli      	r1, r1, 24
    2eb4:	60c8      	addu      	r3, r2
    2eb6:	b320      	st.w      	r1, (r3, 0x0)
			nop;
    2eb8:	6c03      	mov      	r0, r0
			R_SIORX_count=0;
    2eba:	3300      	movi      	r3, 0
    2ebc:	b060      	st.w      	r3, (r0, 0x0)
	}
	else if(SIO0->MISR&0X020)				//TIMEOUT
	{
		SIO0->ICR=0X20;
	}
}
    2ebe:	1463      	ipop
    2ec0:	1461      	nir
	else if(SIO0->MISR&0X08)					//RXBUFFULL	
    2ec2:	9349      	ld.w      	r2, (r3, 0x24)
    2ec4:	3108      	movi      	r1, 8
    2ec6:	6884      	and      	r2, r1
    2ec8:	3a40      	cmpnei      	r2, 0
    2eca:	0c10      	bf      	0x2eea	// 2eea <SIO0IntHandler+0x5e>
		SIO0->ICR=0X08;
    2ecc:	b32b      	st.w      	r1, (r3, 0x2c)
		if(R_SIORX_count<1)
    2ece:	102f      	lrw      	r1, 0x200001b8	// 2f08 <SIO0IntHandler+0x7c>
    2ed0:	9140      	ld.w      	r2, (r1, 0x0)
    2ed2:	3a20      	cmplti      	r2, 1
    2ed4:	0ff5      	bf      	0x2ebe	// 2ebe <SIO0IntHandler+0x32>
			R_SIORX_buf[R_SIORX_count]=SIO0->RXBUF;				//32bit
    2ed6:	9140      	ld.w      	r2, (r1, 0x0)
    2ed8:	9307      	ld.w      	r0, (r3, 0x1c)
    2eda:	4262      	lsli      	r3, r2, 2
    2edc:	104c      	lrw      	r2, 0x200001bc	// 2f0c <SIO0IntHandler+0x80>
    2ede:	60c8      	addu      	r3, r2
    2ee0:	b300      	st.w      	r0, (r3, 0x0)
			R_SIORX_count++;
    2ee2:	9160      	ld.w      	r3, (r1, 0x0)
    2ee4:	2300      	addi      	r3, 1
    2ee6:	b160      	st.w      	r3, (r1, 0x0)
    2ee8:	07eb      	br      	0x2ebe	// 2ebe <SIO0IntHandler+0x32>
	else if(SIO0->MISR&0X010)				//BREAK
    2eea:	9349      	ld.w      	r2, (r3, 0x24)
    2eec:	3110      	movi      	r1, 16
    2eee:	6884      	and      	r2, r1
    2ef0:	3a40      	cmpnei      	r2, 0
    2ef2:	0c03      	bf      	0x2ef8	// 2ef8 <SIO0IntHandler+0x6c>
		SIO0->ICR=0X20;
    2ef4:	b32b      	st.w      	r1, (r3, 0x2c)
}
    2ef6:	07e4      	br      	0x2ebe	// 2ebe <SIO0IntHandler+0x32>
	else if(SIO0->MISR&0X020)				//TIMEOUT
    2ef8:	9349      	ld.w      	r2, (r3, 0x24)
    2efa:	3120      	movi      	r1, 32
    2efc:	6884      	and      	r2, r1
    2efe:	3a40      	cmpnei      	r2, 0
    2f00:	0bfa      	bt      	0x2ef4	// 2ef4 <SIO0IntHandler+0x68>
    2f02:	07de      	br      	0x2ebe	// 2ebe <SIO0IntHandler+0x32>
    2f04:	2000002c 	.long	0x2000002c
    2f08:	200001b8 	.long	0x200001b8
    2f0c:	200001bc 	.long	0x200001bc

Disassembly of section .text.EXI0IntHandler:

00002f10 <EXI0IntHandler>:
//EXT0/16 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI0IntHandler(void) 
{
    2f10:	1460      	nie
    2f12:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN0)==EXI_PIN0) 			//EXT0 Interrupt
    2f14:	106a      	lrw      	r3, 0x2000005c	// 2f3c <EXI0IntHandler+0x2c>
    2f16:	3101      	movi      	r1, 1
    2f18:	9360      	ld.w      	r3, (r3, 0x0)
    2f1a:	237f      	addi      	r3, 128
    2f1c:	934c      	ld.w      	r2, (r3, 0x30)
    2f1e:	6884      	and      	r2, r1
    2f20:	3a40      	cmpnei      	r2, 0
    2f22:	0c04      	bf      	0x2f2a	// 2f2a <EXI0IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN0;
    2f24:	b32b      	st.w      	r1, (r3, 0x2c)
	}
	else if ((SYSCON->EXIRS&EXI_PIN16)==EXI_PIN16) 		//EXT16 Interrupt
	{
		SYSCON->EXICR = EXI_PIN16;
	}
}
    2f26:	1463      	ipop
    2f28:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN16)==EXI_PIN16) 		//EXT16 Interrupt
    2f2a:	3280      	movi      	r2, 128
    2f2c:	932c      	ld.w      	r1, (r3, 0x30)
    2f2e:	4249      	lsli      	r2, r2, 9
    2f30:	6848      	and      	r1, r2
    2f32:	3940      	cmpnei      	r1, 0
    2f34:	0ff9      	bf      	0x2f26	// 2f26 <EXI0IntHandler+0x16>
		SYSCON->EXICR = EXI_PIN16;
    2f36:	b34b      	st.w      	r2, (r3, 0x2c)
}
    2f38:	07f7      	br      	0x2f26	// 2f26 <EXI0IntHandler+0x16>
    2f3a:	0000      	bkpt
    2f3c:	2000005c 	.long	0x2000005c

Disassembly of section .text.EXI1IntHandler:

00002f40 <EXI1IntHandler>:
//EXT1/17 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI1IntHandler(void) 
{
    2f40:	1460      	nie
    2f42:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN1)==EXI_PIN1) 			//EXT1 Interrupt
    2f44:	106a      	lrw      	r3, 0x2000005c	// 2f6c <EXI1IntHandler+0x2c>
    2f46:	3102      	movi      	r1, 2
    2f48:	9360      	ld.w      	r3, (r3, 0x0)
    2f4a:	237f      	addi      	r3, 128
    2f4c:	934c      	ld.w      	r2, (r3, 0x30)
    2f4e:	6884      	and      	r2, r1
    2f50:	3a40      	cmpnei      	r2, 0
    2f52:	0c04      	bf      	0x2f5a	// 2f5a <EXI1IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN1;
    2f54:	b32b      	st.w      	r1, (r3, 0x2c)
	}
	else if ((SYSCON->EXIRS&EXI_PIN17)==EXI_PIN17) 		//EXT17 Interrupt
	{
		SYSCON->EXICR = EXI_PIN17;
	}
}
    2f56:	1463      	ipop
    2f58:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN17)==EXI_PIN17) 		//EXT17 Interrupt
    2f5a:	3280      	movi      	r2, 128
    2f5c:	932c      	ld.w      	r1, (r3, 0x30)
    2f5e:	424a      	lsli      	r2, r2, 10
    2f60:	6848      	and      	r1, r2
    2f62:	3940      	cmpnei      	r1, 0
    2f64:	0ff9      	bf      	0x2f56	// 2f56 <EXI1IntHandler+0x16>
		SYSCON->EXICR = EXI_PIN17;
    2f66:	b34b      	st.w      	r2, (r3, 0x2c)
}
    2f68:	07f7      	br      	0x2f56	// 2f56 <EXI1IntHandler+0x16>
    2f6a:	0000      	bkpt
    2f6c:	2000005c 	.long	0x2000005c

Disassembly of section .text.EXI2to3IntHandler:

00002f70 <EXI2to3IntHandler>:
//EXI2~3 18~19Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI2to3IntHandler(void) 
{
    2f70:	1460      	nie
    2f72:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN2)==EXI_PIN2) 			//EXT2 Interrupt
    2f74:	1070      	lrw      	r3, 0x2000005c	// 2fb4 <EXI2to3IntHandler+0x44>
    2f76:	3104      	movi      	r1, 4
    2f78:	9360      	ld.w      	r3, (r3, 0x0)
    2f7a:	237f      	addi      	r3, 128
    2f7c:	934c      	ld.w      	r2, (r3, 0x30)
    2f7e:	6884      	and      	r2, r1
    2f80:	3a40      	cmpnei      	r2, 0
    2f82:	0c04      	bf      	0x2f8a	// 2f8a <EXI2to3IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN2;
	} 
	else if ((SYSCON->EXIRS&EXI_PIN3)==EXI_PIN3) 		//EXT3 Interrupt
	{
		SYSCON->EXICR = EXI_PIN3;
    2f84:	b32b      	st.w      	r1, (r3, 0x2c)
	}
	else if ((SYSCON->EXIRS&EXI_PIN19)==EXI_PIN19) 		//EXT19 Interrupt
	{
		SYSCON->EXICR = EXI_PIN19;
	}
}
    2f86:	1463      	ipop
    2f88:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN3)==EXI_PIN3) 		//EXT3 Interrupt
    2f8a:	934c      	ld.w      	r2, (r3, 0x30)
    2f8c:	3108      	movi      	r1, 8
    2f8e:	6884      	and      	r2, r1
    2f90:	3a40      	cmpnei      	r2, 0
    2f92:	0bf9      	bt      	0x2f84	// 2f84 <EXI2to3IntHandler+0x14>
	else if ((SYSCON->EXIRS&EXI_PIN18)==EXI_PIN18) 		//EXT18 Interrupt
    2f94:	3280      	movi      	r2, 128
    2f96:	932c      	ld.w      	r1, (r3, 0x30)
    2f98:	424b      	lsli      	r2, r2, 11
    2f9a:	6848      	and      	r1, r2
    2f9c:	3940      	cmpnei      	r1, 0
    2f9e:	0c03      	bf      	0x2fa4	// 2fa4 <EXI2to3IntHandler+0x34>
		SYSCON->EXICR = EXI_PIN19;
    2fa0:	b34b      	st.w      	r2, (r3, 0x2c)
}
    2fa2:	07f2      	br      	0x2f86	// 2f86 <EXI2to3IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN19)==EXI_PIN19) 		//EXT19 Interrupt
    2fa4:	3280      	movi      	r2, 128
    2fa6:	932c      	ld.w      	r1, (r3, 0x30)
    2fa8:	424c      	lsli      	r2, r2, 12
    2faa:	6848      	and      	r1, r2
    2fac:	3940      	cmpnei      	r1, 0
    2fae:	0bf9      	bt      	0x2fa0	// 2fa0 <EXI2to3IntHandler+0x30>
    2fb0:	07eb      	br      	0x2f86	// 2f86 <EXI2to3IntHandler+0x16>
    2fb2:	0000      	bkpt
    2fb4:	2000005c 	.long	0x2000005c

Disassembly of section .text.EXI4to9IntHandler:

00002fb8 <EXI4to9IntHandler>:
//EXI4~9 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI4to9IntHandler(void) 
{
    2fb8:	1460      	nie
    2fba:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN4)==EXI_PIN4) 			//EXT4 Interrupt
    2fbc:	1075      	lrw      	r3, 0x2000005c	// 3010 <EXI4to9IntHandler+0x58>
    2fbe:	3280      	movi      	r2, 128
    2fc0:	9360      	ld.w      	r3, (r3, 0x0)
    2fc2:	60c8      	addu      	r3, r2
    2fc4:	932c      	ld.w      	r1, (r3, 0x30)
    2fc6:	3010      	movi      	r0, 16
    2fc8:	6840      	and      	r1, r0
    2fca:	3940      	cmpnei      	r1, 0
    2fcc:	0c04      	bf      	0x2fd4	// 2fd4 <EXI4to9IntHandler+0x1c>
	{
		SYSCON->EXICR = EXI_PIN5;
	} 
	else if ((SYSCON->EXIRS&EXI_PIN6)==EXI_PIN6) 		//EXT6 Interrupt
	{
		SYSCON->EXICR = EXI_PIN6;
    2fce:	b30b      	st.w      	r0, (r3, 0x2c)
	else if ((SYSCON->EXIRS&EXI_PIN9)==EXI_PIN9) 		//EXT9 Interrupt
	{
		SYSCON->EXICR = EXI_PIN9;
	} 

}
    2fd0:	1463      	ipop
    2fd2:	1461      	nir
	else if ((SYSCON->EXIRS&EXI_PIN5)==EXI_PIN5) 		//EXT5 Interrupt
    2fd4:	932c      	ld.w      	r1, (r3, 0x30)
    2fd6:	3020      	movi      	r0, 32
    2fd8:	6840      	and      	r1, r0
    2fda:	3940      	cmpnei      	r1, 0
    2fdc:	0bf9      	bt      	0x2fce	// 2fce <EXI4to9IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN6)==EXI_PIN6) 		//EXT6 Interrupt
    2fde:	932c      	ld.w      	r1, (r3, 0x30)
    2fe0:	3040      	movi      	r0, 64
    2fe2:	6840      	and      	r1, r0
    2fe4:	3940      	cmpnei      	r1, 0
    2fe6:	0bf4      	bt      	0x2fce	// 2fce <EXI4to9IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN7)==EXI_PIN7) 		//EXT7 Interrupt
    2fe8:	932c      	ld.w      	r1, (r3, 0x30)
    2fea:	6848      	and      	r1, r2
    2fec:	3940      	cmpnei      	r1, 0
    2fee:	0c03      	bf      	0x2ff4	// 2ff4 <EXI4to9IntHandler+0x3c>
		SYSCON->EXICR = EXI_PIN9;
    2ff0:	b34b      	st.w      	r2, (r3, 0x2c)
}
    2ff2:	07ef      	br      	0x2fd0	// 2fd0 <EXI4to9IntHandler+0x18>
	else if ((SYSCON->EXIRS&EXI_PIN8)==EXI_PIN8) 		//EXT8 Interrupt
    2ff4:	3280      	movi      	r2, 128
    2ff6:	932c      	ld.w      	r1, (r3, 0x30)
    2ff8:	4241      	lsli      	r2, r2, 1
    2ffa:	6848      	and      	r1, r2
    2ffc:	3940      	cmpnei      	r1, 0
    2ffe:	0bf9      	bt      	0x2ff0	// 2ff0 <EXI4to9IntHandler+0x38>
	else if ((SYSCON->EXIRS&EXI_PIN9)==EXI_PIN9) 		//EXT9 Interrupt
    3000:	3280      	movi      	r2, 128
    3002:	932c      	ld.w      	r1, (r3, 0x30)
    3004:	4242      	lsli      	r2, r2, 2
    3006:	6848      	and      	r1, r2
    3008:	3940      	cmpnei      	r1, 0
    300a:	0bf3      	bt      	0x2ff0	// 2ff0 <EXI4to9IntHandler+0x38>
    300c:	07e2      	br      	0x2fd0	// 2fd0 <EXI4to9IntHandler+0x18>
    300e:	0000      	bkpt
    3010:	2000005c 	.long	0x2000005c

Disassembly of section .text.EXI10to15IntHandler:

00003014 <EXI10to15IntHandler>:
//EXI4 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void EXI10to15IntHandler(void) 
{
    3014:	1460      	nie
    3016:	1462      	ipush
    // ISR content ...
	if ((SYSCON->EXIRS&EXI_PIN10)==EXI_PIN10) 			//EXT10 Interrupt
    3018:	1076      	lrw      	r3, 0x2000005c	// 3070 <EXI10to15IntHandler+0x5c>
    301a:	3280      	movi      	r2, 128
    301c:	9360      	ld.w      	r3, (r3, 0x0)
    301e:	237f      	addi      	r3, 128
    3020:	932c      	ld.w      	r1, (r3, 0x30)
    3022:	4243      	lsli      	r2, r2, 3
    3024:	6848      	and      	r1, r2
    3026:	3940      	cmpnei      	r1, 0
    3028:	0c03      	bf      	0x302e	// 302e <EXI10to15IntHandler+0x1a>
	{
		SYSCON->EXICR = EXI_PIN14;
	}
	else if ((SYSCON->EXIRS&EXI_PIN15)==EXI_PIN15) 		//EXT15 Interrupt
	{
		SYSCON->EXICR = EXI_PIN15;
    302a:	b34b      	st.w      	r2, (r3, 0x2c)
	}
}
    302c:	041f      	br      	0x306a	// 306a <EXI10to15IntHandler+0x56>
	else if ((SYSCON->EXIRS&EXI_PIN11)==EXI_PIN11) 		//EXT11 Interrupt
    302e:	3280      	movi      	r2, 128
    3030:	932c      	ld.w      	r1, (r3, 0x30)
    3032:	4244      	lsli      	r2, r2, 4
    3034:	6848      	and      	r1, r2
    3036:	3940      	cmpnei      	r1, 0
    3038:	0bf9      	bt      	0x302a	// 302a <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN12)==EXI_PIN12) 		//EXT12 Interrupt
    303a:	3280      	movi      	r2, 128
    303c:	932c      	ld.w      	r1, (r3, 0x30)
    303e:	4245      	lsli      	r2, r2, 5
    3040:	6848      	and      	r1, r2
    3042:	3940      	cmpnei      	r1, 0
    3044:	0bf3      	bt      	0x302a	// 302a <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN13)==EXI_PIN13) 		//EXT13 Interrupt
    3046:	3280      	movi      	r2, 128
    3048:	932c      	ld.w      	r1, (r3, 0x30)
    304a:	4246      	lsli      	r2, r2, 6
    304c:	6848      	and      	r1, r2
    304e:	3940      	cmpnei      	r1, 0
    3050:	0bed      	bt      	0x302a	// 302a <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN14)==EXI_PIN14) 		//EXT14 Interrupt
    3052:	3280      	movi      	r2, 128
    3054:	932c      	ld.w      	r1, (r3, 0x30)
    3056:	4247      	lsli      	r2, r2, 7
    3058:	6848      	and      	r1, r2
    305a:	3940      	cmpnei      	r1, 0
    305c:	0be7      	bt      	0x302a	// 302a <EXI10to15IntHandler+0x16>
	else if ((SYSCON->EXIRS&EXI_PIN15)==EXI_PIN15) 		//EXT15 Interrupt
    305e:	3280      	movi      	r2, 128
    3060:	932c      	ld.w      	r1, (r3, 0x30)
    3062:	4248      	lsli      	r2, r2, 8
    3064:	6848      	and      	r1, r2
    3066:	3940      	cmpnei      	r1, 0
    3068:	0be1      	bt      	0x302a	// 302a <EXI10to15IntHandler+0x16>
}
    306a:	1463      	ipop
    306c:	1461      	nir
    306e:	0000      	bkpt
    3070:	2000005c 	.long	0x2000005c

Disassembly of section .text.LPTIntHandler:

00003074 <LPTIntHandler>:
//LPT Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void LPTIntHandler(void) 
{
    3074:	1460      	nie
    3076:	1462      	ipush
    // ISR content ...
	if((LPT->MISR&LPT_TRGEV0)==LPT_TRGEV0)			//TRGEV0 interrupt
    3078:	106b      	lrw      	r3, 0x20000014	// 30a4 <LPTIntHandler+0x30>
    307a:	3101      	movi      	r1, 1
    307c:	9360      	ld.w      	r3, (r3, 0x0)
    307e:	934e      	ld.w      	r2, (r3, 0x38)
    3080:	6884      	and      	r2, r1
    3082:	3a40      	cmpnei      	r2, 0
    3084:	0c03      	bf      	0x308a	// 308a <LPTIntHandler+0x16>
	{
		LPT->ICR = LPT_MATCH;
	}
	else if((LPT->MISR&LPT_PEND)==LPT_PEND)			//PEND interrupt
	{
		LPT->ICR = LPT_PEND;
    3086:	b330      	st.w      	r1, (r3, 0x40)
	}
}
    3088:	040b      	br      	0x309e	// 309e <LPTIntHandler+0x2a>
	else if((LPT->MISR&LPT_MATCH)==LPT_MATCH)		//MATCH interrupt
    308a:	934e      	ld.w      	r2, (r3, 0x38)
    308c:	3102      	movi      	r1, 2
    308e:	6884      	and      	r2, r1
    3090:	3a40      	cmpnei      	r2, 0
    3092:	0bfa      	bt      	0x3086	// 3086 <LPTIntHandler+0x12>
	else if((LPT->MISR&LPT_PEND)==LPT_PEND)			//PEND interrupt
    3094:	934e      	ld.w      	r2, (r3, 0x38)
    3096:	3104      	movi      	r1, 4
    3098:	6884      	and      	r2, r1
    309a:	3a40      	cmpnei      	r2, 0
    309c:	0bf5      	bt      	0x3086	// 3086 <LPTIntHandler+0x12>
}
    309e:	1463      	ipop
    30a0:	1461      	nir
    30a2:	0000      	bkpt
    30a4:	20000014 	.long	0x20000014

Disassembly of section .text.BT0IntHandler:

000030a8 <BT0IntHandler>:
//BT0 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void BT0IntHandler(void) 
{
    30a8:	1460      	nie
    30aa:	1462      	ipush
    30ac:	14d0      	push      	r15
    // ISR content ...
	if((BT0->MISR&BT_PEND)==BT_PEND)				//BT0 PEND interrupt
    30ae:	1071      	lrw      	r3, 0x2000000c	// 30f0 <BT0IntHandler+0x48>
    30b0:	3101      	movi      	r1, 1
    30b2:	9360      	ld.w      	r3, (r3, 0x0)
    30b4:	934c      	ld.w      	r2, (r3, 0x30)
    30b6:	6884      	and      	r2, r1
    30b8:	3a40      	cmpnei      	r2, 0
    30ba:	0c09      	bf      	0x30cc	// 30cc <BT0IntHandler+0x24>
	{
		BT0->ICR = BT_PEND;
    30bc:	b32d      	st.w      	r1, (r3, 0x34)
		
		adc_get();
    30be:	e00001ed 	bsr      	0x3498	// 3498 <adc_get>
	} 
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT0 Event trigger interrupt
	{
		BT0->ICR = BT_EVTRG;
	} 
}
    30c2:	d9ee2000 	ld.w      	r15, (r14, 0x0)
    30c6:	1401      	addi      	r14, r14, 4
    30c8:	1463      	ipop
    30ca:	1461      	nir
	else if((BT0->MISR&BT_CMP)==BT_CMP)				//BT0 CMP Match interrupt 
    30cc:	934c      	ld.w      	r2, (r3, 0x30)
    30ce:	3102      	movi      	r1, 2
    30d0:	6884      	and      	r2, r1
    30d2:	3a40      	cmpnei      	r2, 0
    30d4:	0c03      	bf      	0x30da	// 30da <BT0IntHandler+0x32>
		BT0->ICR = BT_EVTRG;
    30d6:	b32d      	st.w      	r1, (r3, 0x34)
}
    30d8:	07f5      	br      	0x30c2	// 30c2 <BT0IntHandler+0x1a>
	else if((BT0->MISR&BT_OVF)==BT_OVF)				//BT0 OVF interrupt
    30da:	934c      	ld.w      	r2, (r3, 0x30)
    30dc:	3104      	movi      	r1, 4
    30de:	6884      	and      	r2, r1
    30e0:	3a40      	cmpnei      	r2, 0
    30e2:	0bfa      	bt      	0x30d6	// 30d6 <BT0IntHandler+0x2e>
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT0 Event trigger interrupt
    30e4:	934c      	ld.w      	r2, (r3, 0x30)
    30e6:	3108      	movi      	r1, 8
    30e8:	6884      	and      	r2, r1
    30ea:	3a40      	cmpnei      	r2, 0
    30ec:	0bf5      	bt      	0x30d6	// 30d6 <BT0IntHandler+0x2e>
    30ee:	07ea      	br      	0x30c2	// 30c2 <BT0IntHandler+0x1a>
    30f0:	2000000c 	.long	0x2000000c

Disassembly of section .text.BT1IntHandler:

000030f4 <BT1IntHandler>:
//BT1 Interrupt
//EntryParameter:NONE
//ReturnValue:NONE
/*************************************************************/
void BT1IntHandler(void) 
{
    30f4:	1460      	nie
    30f6:	1462      	ipush
    // ISR content ...
	if((BT1->MISR&BT_PEND)==BT_PEND)				//BT1 PEND interrupt
    30f8:	1071      	lrw      	r3, 0x20000008	// 313c <BT1IntHandler+0x48>
    30fa:	3101      	movi      	r1, 1
    30fc:	9360      	ld.w      	r3, (r3, 0x0)
    30fe:	934c      	ld.w      	r2, (r3, 0x30)
    3100:	6884      	and      	r2, r1
    3102:	3a40      	cmpnei      	r2, 0
    3104:	0c07      	bf      	0x3112	// 3112 <BT1IntHandler+0x1e>
	{
		BT1->ICR = BT_PEND;
    3106:	b32d      	st.w      	r1, (r3, 0x34)
		bldc.task_run = 1;
    3108:	3201      	movi      	r2, 1
    310a:	106e      	lrw      	r3, 0x200001ec	// 3140 <BT1IntHandler+0x4c>
    310c:	a341      	st.b      	r2, (r3, 0x1)
	} 
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT1 Event trigger interrupt
	{
		BT1->ICR = BT_EVTRG;
	} 
}
    310e:	1463      	ipop
    3110:	1461      	nir
	else if((BT0->MISR&BT_CMP)==BT_CMP)				//BT1 CMP Match interrupt 
    3112:	104d      	lrw      	r2, 0x2000000c	// 3144 <BT1IntHandler+0x50>
    3114:	3002      	movi      	r0, 2
    3116:	9240      	ld.w      	r2, (r2, 0x0)
    3118:	922c      	ld.w      	r1, (r2, 0x30)
    311a:	6840      	and      	r1, r0
    311c:	3940      	cmpnei      	r1, 0
    311e:	0c03      	bf      	0x3124	// 3124 <BT1IntHandler+0x30>
		BT1->ICR = BT_OVF;
    3120:	b30d      	st.w      	r0, (r3, 0x34)
    3122:	07f6      	br      	0x310e	// 310e <BT1IntHandler+0x1a>
	else if((BT0->MISR&BT_OVF)==BT_OVF)				//BT1 OVF interrupt
    3124:	922c      	ld.w      	r1, (r2, 0x30)
    3126:	3004      	movi      	r0, 4
    3128:	6840      	and      	r1, r0
    312a:	3940      	cmpnei      	r1, 0
    312c:	0bfa      	bt      	0x3120	// 3120 <BT1IntHandler+0x2c>
	else if((BT0->MISR&BT_EVTRG)==BT_EVTRG)			//BT1 Event trigger interrupt
    312e:	924c      	ld.w      	r2, (r2, 0x30)
    3130:	3108      	movi      	r1, 8
    3132:	6884      	and      	r2, r1
    3134:	3a40      	cmpnei      	r2, 0
    3136:	0fec      	bf      	0x310e	// 310e <BT1IntHandler+0x1a>
		BT1->ICR = BT_EVTRG;
    3138:	b32d      	st.w      	r1, (r3, 0x34)
}
    313a:	07ea      	br      	0x310e	// 310e <BT1IntHandler+0x1a>
    313c:	20000008 	.long	0x20000008
    3140:	200001ec 	.long	0x200001ec
    3144:	2000000c 	.long	0x2000000c

Disassembly of section .text.PriviledgeVioHandler:

00003148 <PriviledgeVioHandler>:
    3148:	783c      	jmp      	r15

Disassembly of section .text.PendTrapHandler:

0000314a <PendTrapHandler>:
    // ISR content ...

}

void PendTrapHandler(void) 
{
    314a:	1460      	nie
    314c:	1462      	ipush
    // ISR content ...

}
    314e:	1463      	ipop
    3150:	1461      	nir

Disassembly of section .text.Trap3Handler:

00003152 <Trap3Handler>:
    3152:	1460      	nie
    3154:	1462      	ipush
    3156:	1463      	ipop
    3158:	1461      	nir

Disassembly of section .text.Trap2Handler:

0000315a <Trap2Handler>:
    315a:	1460      	nie
    315c:	1462      	ipush
    315e:	1463      	ipop
    3160:	1461      	nir

Disassembly of section .text.Trap1Handler:

00003162 <Trap1Handler>:
    3162:	1460      	nie
    3164:	1462      	ipush
    3166:	1463      	ipop
    3168:	1461      	nir

Disassembly of section .text.Trap0Handler:

0000316a <Trap0Handler>:
    316a:	1460      	nie
    316c:	1462      	ipush
    316e:	1463      	ipop
    3170:	1461      	nir

Disassembly of section .text.UnrecExecpHandler:

00003172 <UnrecExecpHandler>:
    3172:	1460      	nie
    3174:	1462      	ipush
    3176:	1463      	ipop
    3178:	1461      	nir

Disassembly of section .text.BreakPointHandler:

0000317a <BreakPointHandler>:
    317a:	1460      	nie
    317c:	1462      	ipush
    317e:	1463      	ipop
    3180:	1461      	nir

Disassembly of section .text.AccessErrHandler:

00003182 <AccessErrHandler>:
    3182:	1460      	nie
    3184:	1462      	ipush
    3186:	1463      	ipop
    3188:	1461      	nir

Disassembly of section .text.IllegalInstrHandler:

0000318a <IllegalInstrHandler>:
    318a:	1460      	nie
    318c:	1462      	ipush
    318e:	1463      	ipop
    3190:	1461      	nir

Disassembly of section .text.MisalignedHandler:

00003192 <MisalignedHandler>:
    3192:	1460      	nie
    3194:	1462      	ipush
    3196:	1463      	ipop
    3198:	1461      	nir

Disassembly of section .text.CNTAIntHandler:

0000319a <CNTAIntHandler>:
    319a:	1460      	nie
    319c:	1462      	ipush
    319e:	1463      	ipop
    31a0:	1461      	nir

Disassembly of section .text.I2CIntHandler:

000031a2 <I2CIntHandler>:
    31a2:	1460      	nie
    31a4:	1462      	ipush
    31a6:	1463      	ipop
    31a8:	1461      	nir

Disassembly of section .text.startup.main:

000031ac <main>:

/***************************************************/
//main
/**************************************************/
int main(void) 
{
    31ac:	14d2      	push      	r4-r5, r15
  static U16_T timer = 0 ;
	delay_nms(2000);							//power on delay if needed
    31ae:	30fa      	movi      	r0, 250
    31b0:	4003      	lsli      	r0, r0, 3
    31b2:	e3fffa79 	bsr      	0x26a4	// 26a4 <delay_nms>
	APT32F102_init();							//102 initial
    31b6:	e3fffb2b 	bsr      	0x280c	// 280c <APT32F102_init>

  
 
  
   
   ADC_CONFIG();
    31ba:	e000002f 	bsr      	0x3218	// 3218 <ADC_CONFIG>
   bldcInit();
    31be:	e000005f 	bsr      	0x327c	// 327c <bldcInit>
   while (1)
   {
     SYSCON_IWDCNT_Reload();
      if(bldc.task_run == 1)
    31c2:	108e      	lrw      	r4, 0x200001ec	// 31f8 <main+0x4c>
      {
        bldc.task_run = 0;
        if(bldc.status == open)
        {
          timer++;
    31c4:	10ae      	lrw      	r5, 0x20000104	// 31fc <main+0x50>
     SYSCON_IWDCNT_Reload();
    31c6:	e3fff661 	bsr      	0x1e88	// 1e88 <SYSCON_IWDCNT_Reload>
      if(bldc.task_run == 1)
    31ca:	8421      	ld.b      	r1, (r4, 0x1)
    31cc:	3941      	cmpnei      	r1, 1
    31ce:	0bfc      	bt      	0x31c6	// 31c6 <main+0x1a>
        bldc.task_run = 0;
    31d0:	3300      	movi      	r3, 0
    31d2:	a461      	st.b      	r3, (r4, 0x1)
        if(bldc.status == open)
    31d4:	9462      	ld.w      	r3, (r4, 0x8)
    31d6:	3b40      	cmpnei      	r3, 0
    31d8:	0bf7      	bt      	0x31c6	// 31c6 <main+0x1a>
          timer++;
    31da:	8d60      	ld.h      	r3, (r5, 0x0)
    31dc:	2300      	addi      	r3, 1
          if (timer >2000)
    31de:	32fa      	movi      	r2, 250
          timer++;
    31e0:	74cd      	zexth      	r3, r3
          if (timer >2000)
    31e2:	4243      	lsli      	r2, r2, 3
    31e4:	64c8      	cmphs      	r2, r3
    31e6:	0c05      	bf      	0x31f0	// 31f0 <main+0x44>
          timer++;
    31e8:	ad60      	st.h      	r3, (r5, 0x0)
          {
            timer = 0;

            bldc.status = close;
          }
          blcdStart();
    31ea:	e000013d 	bsr      	0x3464	// 3464 <blcdStart>
    31ee:	07ec      	br      	0x31c6	// 31c6 <main+0x1a>
            timer = 0;
    31f0:	3300      	movi      	r3, 0
    31f2:	ad60      	st.h      	r3, (r5, 0x0)
            bldc.status = close;
    31f4:	b422      	st.w      	r1, (r4, 0x8)
    31f6:	07fa      	br      	0x31ea	// 31ea <main+0x3e>
    31f8:	200001ec 	.long	0x200001ec
    31fc:	20000104 	.long	0x20000104

Disassembly of section .text.fputc:

00003200 <fputc>:
U16_T adc_value[3];
void blcdStart(void);
void stepMoter(void);
void __putchar__ (char ch) ;
int fputc(int ch, FILE *f)
{
    3200:	14d1      	push      	r4, r15
    UARTTxByte(UART0,ch);	
    3202:	1065      	lrw      	r3, 0x20000040	// 3214 <fputc+0x14>
{
    3204:	6d03      	mov      	r4, r0
    UARTTxByte(UART0,ch);	
    3206:	7440      	zextb      	r1, r0
    3208:	9300      	ld.w      	r0, (r3, 0x0)
    320a:	e3fff81e 	bsr      	0x2246	// 2246 <UARTTxByte>
    return (ch);
}
    320e:	6c13      	mov      	r0, r4
    3210:	1491      	pop      	r4, r15
    3212:	0000      	bkpt
    3214:	20000040 	.long	0x20000040

Disassembly of section .text.ADC_CONFIG:

00003218 <ADC_CONFIG>:
{

}

void ADC_CONFIG(void)
{
    3218:	14d0      	push      	r15
    321a:	1422      	subi      	r14, r14, 8
    ADC12_Software_Reset();
    321c:	e3fff84a 	bsr      	0x22b0	// 22b0 <ADC12_Software_Reset>
    ADC12_CLK_CMD(ADC_CLK_CR, ENABLE);                                                  // enable ADC CLK
    3220:	3101      	movi      	r1, 1
    3222:	3002      	movi      	r0, 2
    3224:	e3fff830 	bsr      	0x2284	// 2284 <ADC12_CLK_CMD>
    ADC12_Configure_Mode(ADC12_12BIT, Continuous_mode, 0, 6, 2, 3);                     // 12BIT ADC; Continuous mode; Conversion priority selection 0; Holding cycles=6 ;ADC_CLK=PCLK/2*2=0.2us; Number of Conversions=1
    3228:	3303      	movi      	r3, 3
    322a:	b861      	st.w      	r3, (r14, 0x4)
    322c:	3302      	movi      	r3, 2
    322e:	b860      	st.w      	r3, (r14, 0x0)
    3230:	3200      	movi      	r2, 0
    3232:	3306      	movi      	r3, 6
    3234:	3101      	movi      	r1, 1
    3236:	3001      	movi      	r0, 1
    3238:	e3fff86c 	bsr      	0x2310	// 2310 <ADC12_Configure_Mode>
    ADC12_Configure_VREF_Selecte(ADC12_VREFP_VDD_VREFN_VSS);                        // ADC VREF Positive FVR4.096V,negative VSS
    323c:	3000      	movi      	r0, 0
    323e:	e3fff8a7 	bsr      	0x238c	// 238c <ADC12_Configure_VREF_Selecte>
    ADC12_ConversionChannel_Config(CH_A, ADC12_CV_RepeatNum1, ADC12_AVGDIS, 0); // SEQ0 chose ADCIN0, 6 Holding cycles, Average 1 time
    3242:	3300      	movi      	r3, 0
    3244:	3200      	movi      	r2, 0
    3246:	3100      	movi      	r1, 0
    3248:	3001      	movi      	r0, 1
    324a:	e3fff96d 	bsr      	0x2524	// 2524 <ADC12_ConversionChannel_Config>
    ADC12_ConversionChannel_Config(CH_B, ADC12_CV_RepeatNum1, ADC12_AVGDIS, 1); // SEQ1 chose ADCIN1, 6 Holding cycles , Average 1 time
    324e:	3301      	movi      	r3, 1
    3250:	3200      	movi      	r2, 0
    3252:	3100      	movi      	r1, 0
    3254:	3002      	movi      	r0, 2
    3256:	e3fff967 	bsr      	0x2524	// 2524 <ADC12_ConversionChannel_Config>
    ADC12_ConversionChannel_Config(CH_C, ADC12_CV_RepeatNum1, ADC12_AVGDIS, 2); // SEQ1 chose ADCIN1, 6 Holding cycles , Average 1 time
    325a:	3302      	movi      	r3, 2
    325c:	3200      	movi      	r2, 0
    325e:	3100      	movi      	r1, 0
    3260:	3003      	movi      	r0, 3
    3262:	e3fff961 	bsr      	0x2524	// 2524 <ADC12_ConversionChannel_Config>
    ADC12_CMD(ENABLE);                                                                  // enable ADC
    3266:	3001      	movi      	r0, 1
    3268:	e3fff82a 	bsr      	0x22bc	// 22bc <ADC12_CMD>
    ADC12_ready_wait();                                                                 // wait ADC get ready
    326c:	e3fff83c 	bsr      	0x22e4	// 22e4 <ADC12_ready_wait>
    ADC12_Control(ADC12_START);                                                         // ADC convert start
    3270:	3008      	movi      	r0, 8
    3272:	e3fff7f1 	bsr      	0x2254	// 2254 <ADC12_Control>
    //    ADC12_ConfigInterrupt_CMD(ADC12_CMP0L, ENABLE);
    //    // ADC12_ConfigInterrupt_CMD(ADC12_CMP1H, ENABLE);
    //    // ADC12_ConfigInterrupt_CMD(ADC12_CMP1L, ENABLE);
    //    ADC0->MR |= (CSP_REGISTER_T)(1UL << 30);
    //    ADC_Int_Enable();
}
    3276:	1402      	addi      	r14, r14, 8
    3278:	1490      	pop      	r15

Disassembly of section .text.bldcInit:

0000327c <bldcInit>:
    }
    printf("%d,%d,%d,%d,%d\n", adc_value[0], adc_value[1], adc_value[2], bldc.wait, bldc.step);
}

void bldcInit(void)
{
    327c:	14d1      	push      	r4, r15
    bldc.status = open;
    327e:	1075      	lrw      	r3, 0x200001ec	// 32d0 <bldcInit+0x54>
    3280:	3200      	movi      	r2, 0
    3282:	b342      	st.w      	r2, (r3, 0x8)
    bldc.delay30 = _OK;
    3284:	3202      	movi      	r2, 2
    3286:	b343      	st.w      	r2, (r3, 0xc)
    bldc.zero_base = 1638;//1638 ;//12V
    3288:	1055      	lrw      	r2, 0x666	// 32dc <bldcInit+0x60>
    GPIO_Init(GAL_PORT, GAL_PIN, 0);
    328a:	1093      	lrw      	r4, 0x2000004c	// 32d4 <bldcInit+0x58>
    328c:	310f      	movi      	r1, 15
    bldc.zero_base = 1638;//1638 ;//12V
    328e:	ab41      	st.h      	r2, (r3, 0x2)
    GPIO_Init(GAL_PORT, GAL_PIN, 0);
    3290:	9400      	ld.w      	r0, (r4, 0x0)
    3292:	3200      	movi      	r2, 0
    3294:	e3fff662 	bsr      	0x1f58	// 1f58 <GPIO_Init>
    GPIO_Init(GBL_PORT, GBL_PIN, 0);
    3298:	9400      	ld.w      	r0, (r4, 0x0)
    329a:	3200      	movi      	r2, 0
    GPIO_Init(GCL_PORT, GCL_PIN, 0);
    329c:	108f      	lrw      	r4, 0x20000048	// 32d8 <bldcInit+0x5c>
    GPIO_Init(GBL_PORT, GBL_PIN, 0);
    329e:	310e      	movi      	r1, 14
    32a0:	e3fff65c 	bsr      	0x1f58	// 1f58 <GPIO_Init>
    GPIO_Init(GCL_PORT, GCL_PIN, 0);
    32a4:	9400      	ld.w      	r0, (r4, 0x0)
    32a6:	3200      	movi      	r2, 0
    32a8:	3105      	movi      	r1, 5
    32aa:	e3fff657 	bsr      	0x1f58	// 1f58 <GPIO_Init>
    GPIO_Init(GAB_PORT, GAB_PIN, 0);
    32ae:	9400      	ld.w      	r0, (r4, 0x0)
    32b0:	3200      	movi      	r2, 0
    32b2:	3104      	movi      	r1, 4
    32b4:	e3fff652 	bsr      	0x1f58	// 1f58 <GPIO_Init>
    GPIO_Init(GBB_PORT, GBB_PIN, 0);
    32b8:	9400      	ld.w      	r0, (r4, 0x0)
    32ba:	3200      	movi      	r2, 0
    32bc:	3101      	movi      	r1, 1
    32be:	e3fff64d 	bsr      	0x1f58	// 1f58 <GPIO_Init>
    GPIO_Init(GCB_PORT, GCB_PIN, 0);
    32c2:	9400      	ld.w      	r0, (r4, 0x0)
    32c4:	3200      	movi      	r2, 0
    32c6:	3100      	movi      	r1, 0
    32c8:	e3fff648 	bsr      	0x1f58	// 1f58 <GPIO_Init>
}
    32cc:	1491      	pop      	r4, r15
    32ce:	0000      	bkpt
    32d0:	200001ec 	.long	0x200001ec
    32d4:	2000004c 	.long	0x2000004c
    32d8:	20000048 	.long	0x20000048
    32dc:	00000666 	.long	0x00000666

Disassembly of section .text.stepMoter1:

000032e0 <stepMoter1>:
        break;
    }
}

void stepMoter1(void)
{
    32e0:	14d2      	push      	r4-r5, r15
    
    switch (bldc.step)
    32e2:	127e      	lrw      	r3, 0x200001ec	// 3458 <stepMoter1+0x178>
    32e4:	8300      	ld.b      	r0, (r3, 0x0)
    32e6:	3805      	cmphsi      	r0, 6
    32e8:	0848      	bt      	0x3378	// 3378 <stepMoter1+0x98>
    32ea:	12bd      	lrw      	r5, 0x2000004c	// 345c <stepMoter1+0x17c>
    32ec:	129d      	lrw      	r4, 0x20000048	// 3460 <stepMoter1+0x180>
    32ee:	e3ffed07 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    32f2:	2503      	.short	0x2503
    32f4:	9a7e6144 	.long	0x9a7e6144
    {
    case 0: // AB
        GAL_LOW;
    32f8:	3200      	movi      	r2, 0
    32fa:	310f      	movi      	r1, 15
    32fc:	9500      	ld.w      	r0, (r5, 0x0)
    32fe:	e3fff69d 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GBL_LOW;
    3302:	3200      	movi      	r2, 0
    3304:	310e      	movi      	r1, 14
    3306:	9500      	ld.w      	r0, (r5, 0x0)
    3308:	e3fff698 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GCL_LOW;
    330c:	3200      	movi      	r2, 0
    330e:	3105      	movi      	r1, 5
    3310:	9400      	ld.w      	r0, (r4, 0x0)
    3312:	e3fff693 	bsr      	0x2038	// 2038 <GPIO_Set_Value>

        GAB_LOW;
    3316:	3200      	movi      	r2, 0
    3318:	3104      	movi      	r1, 4
    331a:	9400      	ld.w      	r0, (r4, 0x0)
    331c:	e3fff68e 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GCB_LOW;
    3320:	3200      	movi      	r2, 0
    3322:	3100      	movi      	r1, 0
    3324:	9400      	ld.w      	r0, (r4, 0x0)
    3326:	e3fff689 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        bldc_delay();
        //        ADC12_Compare_statue(NBRCMP0_TypeDef, NBRCMPX_L_TypeDef);
        //        ADC12_CompareFunction_set(CH_A , CH_A , center , center ) ;

        GAL_HIGH;
    332a:	9500      	ld.w      	r0, (r5, 0x0)
    332c:	3201      	movi      	r2, 1
    332e:	310f      	movi      	r1, 15
    case 5: // CB
        GCL_HIGH;
        GAL_LOW;
        GBL_LOW;
        GAB_LOW;
        GCB_LOW;
    3330:	e3fff684 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        bldc_delay();

        GBB_HIGH;
    3334:	9400      	ld.w      	r0, (r4, 0x0)
    3336:	3201      	movi      	r2, 1
    3338:	3101      	movi      	r1, 1
    333a:	041d      	br      	0x3374	// 3374 <stepMoter1+0x94>
        GAL_HIGH;
    333c:	3201      	movi      	r2, 1
    333e:	310f      	movi      	r1, 15
    3340:	9500      	ld.w      	r0, (r5, 0x0)
    3342:	e3fff67b 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GBL_LOW;
    3346:	9500      	ld.w      	r0, (r5, 0x0)
    3348:	3200      	movi      	r2, 0
    334a:	310e      	movi      	r1, 14
    334c:	e3fff676 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GCL_LOW;
    3350:	3200      	movi      	r2, 0
    3352:	3105      	movi      	r1, 5
    3354:	9400      	ld.w      	r0, (r4, 0x0)
    3356:	e3fff671 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GAB_LOW;
    335a:	3200      	movi      	r2, 0
    335c:	3104      	movi      	r1, 4
    335e:	9400      	ld.w      	r0, (r4, 0x0)
    3360:	e3fff66c 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GBB_LOW;
    3364:	3200      	movi      	r2, 0
    3366:	3101      	movi      	r1, 1
    3368:	9400      	ld.w      	r0, (r4, 0x0)
        GBL_HIGH;
    336a:	e3fff667 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GCB_HIGH;
    336e:	9400      	ld.w      	r0, (r4, 0x0)
    3370:	3201      	movi      	r2, 1
    3372:	3100      	movi      	r1, 0
        GBB_HIGH;
    3374:	e3fff662 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        break;

    default:
        break;
    }
}
    3378:	1492      	pop      	r4-r5, r15
        GAL_LOW;
    337a:	3200      	movi      	r2, 0
    337c:	310f      	movi      	r1, 15
    337e:	9500      	ld.w      	r0, (r5, 0x0)
    3380:	e3fff65c 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GBL_LOW;
    3384:	3200      	movi      	r2, 0
    3386:	310e      	movi      	r1, 14
    3388:	9500      	ld.w      	r0, (r5, 0x0)
    338a:	e3fff657 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GCL_LOW;
    338e:	3200      	movi      	r2, 0
    3390:	3105      	movi      	r1, 5
    3392:	9400      	ld.w      	r0, (r4, 0x0)
    3394:	e3fff652 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GAB_LOW;
    3398:	3200      	movi      	r2, 0
    339a:	3104      	movi      	r1, 4
    339c:	9400      	ld.w      	r0, (r4, 0x0)
    339e:	e3fff64d 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GBB_LOW;
    33a2:	3200      	movi      	r2, 0
    33a4:	3101      	movi      	r1, 1
    33a6:	9400      	ld.w      	r0, (r4, 0x0)
    33a8:	e3fff648 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GBL_HIGH;
    33ac:	9500      	ld.w      	r0, (r5, 0x0)
    33ae:	3201      	movi      	r2, 1
    33b0:	310e      	movi      	r1, 14
    33b2:	07dc      	br      	0x336a	// 336a <stepMoter1+0x8a>
        GBL_HIGH;
    33b4:	3201      	movi      	r2, 1
    33b6:	310e      	movi      	r1, 14
    33b8:	9500      	ld.w      	r0, (r5, 0x0)
    33ba:	e3fff63f 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GAL_LOW;
    33be:	9500      	ld.w      	r0, (r5, 0x0)
    33c0:	3200      	movi      	r2, 0
    33c2:	310f      	movi      	r1, 15
    33c4:	e3fff63a 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GCL_LOW;
    33c8:	3200      	movi      	r2, 0
    33ca:	3105      	movi      	r1, 5
    33cc:	9400      	ld.w      	r0, (r4, 0x0)
    33ce:	e3fff635 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GBB_LOW;
    33d2:	3200      	movi      	r2, 0
    33d4:	3101      	movi      	r1, 1
    33d6:	9400      	ld.w      	r0, (r4, 0x0)
    33d8:	e3fff630 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GCB_LOW;
    33dc:	3200      	movi      	r2, 0
    33de:	3100      	movi      	r1, 0
        GCL_HIGH;
    33e0:	9400      	ld.w      	r0, (r4, 0x0)
    33e2:	e3fff62b 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GAB_HIGH;
    33e6:	9400      	ld.w      	r0, (r4, 0x0)
    33e8:	3201      	movi      	r2, 1
    33ea:	3104      	movi      	r1, 4
    33ec:	07c4      	br      	0x3374	// 3374 <stepMoter1+0x94>
        GAL_LOW;
    33ee:	3200      	movi      	r2, 0
    33f0:	310f      	movi      	r1, 15
    33f2:	9500      	ld.w      	r0, (r5, 0x0)
    33f4:	e3fff622 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GBL_LOW;
    33f8:	9500      	ld.w      	r0, (r5, 0x0)
    33fa:	3200      	movi      	r2, 0
    33fc:	310e      	movi      	r1, 14
    33fe:	e3fff61d 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GCL_LOW;
    3402:	3200      	movi      	r2, 0
    3404:	3105      	movi      	r1, 5
    3406:	9400      	ld.w      	r0, (r4, 0x0)
    3408:	e3fff618 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GBB_LOW;
    340c:	3200      	movi      	r2, 0
    340e:	3101      	movi      	r1, 1
    3410:	9400      	ld.w      	r0, (r4, 0x0)
    3412:	e3fff613 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GCB_LOW;
    3416:	3200      	movi      	r2, 0
    3418:	3100      	movi      	r1, 0
    341a:	9400      	ld.w      	r0, (r4, 0x0)
    341c:	e3fff60e 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GCL_HIGH;
    3420:	3201      	movi      	r2, 1
    3422:	3105      	movi      	r1, 5
    3424:	07de      	br      	0x33e0	// 33e0 <stepMoter1+0x100>
        GCL_HIGH;
    3426:	3201      	movi      	r2, 1
    3428:	3105      	movi      	r1, 5
    342a:	9400      	ld.w      	r0, (r4, 0x0)
    342c:	e3fff606 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GAL_LOW;
    3430:	3200      	movi      	r2, 0
    3432:	310f      	movi      	r1, 15
    3434:	9500      	ld.w      	r0, (r5, 0x0)
    3436:	e3fff601 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GBL_LOW;
    343a:	9500      	ld.w      	r0, (r5, 0x0)
    343c:	3200      	movi      	r2, 0
    343e:	310e      	movi      	r1, 14
    3440:	e3fff5fc 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GAB_LOW;
    3444:	3200      	movi      	r2, 0
    3446:	3104      	movi      	r1, 4
    3448:	9400      	ld.w      	r0, (r4, 0x0)
    344a:	e3fff5f7 	bsr      	0x2038	// 2038 <GPIO_Set_Value>
        GCB_LOW;
    344e:	3200      	movi      	r2, 0
    3450:	3100      	movi      	r1, 0
    3452:	9400      	ld.w      	r0, (r4, 0x0)
    3454:	076e      	br      	0x3330	// 3330 <stepMoter1+0x50>
    3456:	0000      	bkpt
    3458:	200001ec 	.long	0x200001ec
    345c:	2000004c 	.long	0x2000004c
    3460:	20000048 	.long	0x20000048

Disassembly of section .text.blcdStart:

00003464 <blcdStart>:
{
    3464:	14d0      	push      	r15
    if(timer++ > 1)
    3466:	104b      	lrw      	r2, 0x20000106	// 3490 <blcdStart+0x2c>
    3468:	8a60      	ld.h      	r3, (r2, 0x0)
    346a:	3b01      	cmphsi      	r3, 2
    346c:	0804      	bt      	0x3474	// 3474 <blcdStart+0x10>
    346e:	2300      	addi      	r3, 1
    3470:	aa60      	st.h      	r3, (r2, 0x0)
}
    3472:	1490      	pop      	r15
        timer = 0;
    3474:	3300      	movi      	r3, 0
    3476:	aa60      	st.h      	r3, (r2, 0x0)
        if (++bldc.step >= 6)
    3478:	1047      	lrw      	r2, 0x200001ec	// 3494 <blcdStart+0x30>
    347a:	8260      	ld.b      	r3, (r2, 0x0)
    347c:	2300      	addi      	r3, 1
    347e:	74cc      	zextb      	r3, r3
    3480:	3b05      	cmphsi      	r3, 6
    3482:	0805      	bt      	0x348c	// 348c <blcdStart+0x28>
            bldc.step = 0;
    3484:	a260      	st.b      	r3, (r2, 0x0)
        stepMoter();
    3486:	e3ffff2d 	bsr      	0x32e0	// 32e0 <stepMoter1>
}
    348a:	07f4      	br      	0x3472	// 3472 <blcdStart+0xe>
            bldc.step = 0;
    348c:	3300      	movi      	r3, 0
    348e:	07fb      	br      	0x3484	// 3484 <blcdStart+0x20>
    3490:	20000106 	.long	0x20000106
    3494:	200001ec 	.long	0x200001ec

Disassembly of section .text.adc_get:

00003498 <adc_get>:
{
    3498:	14d3      	push      	r4-r6, r15
    349a:	1422      	subi      	r14, r14, 8
    if(bldc.delay30 == _ING)
    349c:	1191      	lrw      	r4, 0x200001ec	// 3560 <adc_get+0xc8>
    349e:	9463      	ld.w      	r3, (r4, 0xc)
    34a0:	3b41      	cmpnei      	r3, 1
    34a2:	0808      	bt      	0x34b2	// 34b2 <adc_get+0x1a>
        if(bldc.wait++ > 1)
    34a4:	8c63      	ld.h      	r3, (r4, 0x6)
    34a6:	5b42      	addi      	r2, r3, 1
    34a8:	3b01      	cmphsi      	r3, 2
    34aa:	ac43      	st.h      	r2, (r4, 0x6)
    34ac:	0c03      	bf      	0x34b2	// 34b2 <adc_get+0x1a>
            bldc.delay30 = _OK;
    34ae:	3302      	movi      	r3, 2
    34b0:	b463      	st.w      	r3, (r4, 0xc)
    adc_value[0] = ADC0->DR[0];
    34b2:	11cd      	lrw      	r6, 0x20000050	// 3564 <adc_get+0xcc>
    ADC12_SEQEND_wait(0);
    34b4:	3000      	movi      	r0, 0
    34b6:	e3fff721 	bsr      	0x22f8	// 22f8 <ADC12_SEQEND_wait>
    adc_value[0] = ADC0->DR[0];
    34ba:	9660      	ld.w      	r3, (r6, 0x0)
    34bc:	23ff      	addi      	r3, 256
    34be:	9360      	ld.w      	r3, (r3, 0x0)
    ADC12_SEQEND_wait(1);
    34c0:	3001      	movi      	r0, 1
    adc_value[0] = ADC0->DR[0];
    34c2:	11aa      	lrw      	r5, 0x200001e4	// 3568 <adc_get+0xd0>
    34c4:	ad60      	st.h      	r3, (r5, 0x0)
    ADC12_SEQEND_wait(1);
    34c6:	e3fff719 	bsr      	0x22f8	// 22f8 <ADC12_SEQEND_wait>
    adc_value[1] = ADC0->DR[1];
    34ca:	9660      	ld.w      	r3, (r6, 0x0)
    34cc:	23ff      	addi      	r3, 256
    34ce:	9361      	ld.w      	r3, (r3, 0x4)
    ADC12_SEQEND_wait(2);
    34d0:	3002      	movi      	r0, 2
    adc_value[1] = ADC0->DR[1];
    34d2:	ad61      	st.h      	r3, (r5, 0x2)
    ADC12_SEQEND_wait(2);
    34d4:	e3fff712 	bsr      	0x22f8	// 22f8 <ADC12_SEQEND_wait>
    adc_value[2] = ADC0->DR[2];
    34d8:	9660      	ld.w      	r3, (r6, 0x0)
    34da:	23ff      	addi      	r3, 256
    34dc:	9342      	ld.w      	r2, (r3, 0x8)
    if(bldc.status == open)
    34de:	9462      	ld.w      	r3, (r4, 0x8)
    adc_value[2] = ADC0->DR[2];
    34e0:	7489      	zexth      	r2, r2
    if(bldc.status == open)
    34e2:	3b40      	cmpnei      	r3, 0
    adc_value[2] = ADC0->DR[2];
    34e4:	ad42      	st.h      	r2, (r5, 0x4)
    if(bldc.status == open)
    34e6:	0c2c      	bf      	0x353e	// 353e <adc_get+0xa6>
        switch (bldc.step)
    34e8:	8460      	ld.b      	r3, (r4, 0x0)
    34ea:	3b05      	cmphsi      	r3, 6
    34ec:	080c      	bt      	0x3504	// 3504 <adc_get+0x6c>
    34ee:	6c0f      	mov      	r0, r3
    34f0:	e3ffec06 	bsr      	0xcfc	// cfc <___gnu_csky_case_uqi>
    34f4:	2d2a2703 	.long	0x2d2a2703
    34f8:	3230      	.short	0x3230
            if (adc_value[2] < bldc.zero_base)
    34fa:	8c21      	ld.h      	r1, (r4, 0x2)
    34fc:	6448      	cmphs      	r2, r1
    34fe:	0803      	bt      	0x3504	// 3504 <adc_get+0x6c>
                bldc.zero = 1;
    3500:	3201      	movi      	r2, 1
    3502:	a444      	st.b      	r2, (r4, 0x4)
    if (bldc.zero == 1  && bldc.delay30 == _OK)
    3504:	8444      	ld.b      	r2, (r4, 0x4)
    3506:	3a41      	cmpnei      	r2, 1
    3508:	0811      	bt      	0x352a	// 352a <adc_get+0x92>
    350a:	9443      	ld.w      	r2, (r4, 0xc)
    350c:	3a42      	cmpnei      	r2, 2
    350e:	080e      	bt      	0x352a	// 352a <adc_get+0x92>
        if (++bldc.step >= 6 )
    3510:	2300      	addi      	r3, 1
    3512:	74cc      	zextb      	r3, r3
        bldc.zero = 0;
    3514:	3200      	movi      	r2, 0
        if (++bldc.step >= 6 )
    3516:	3b05      	cmphsi      	r3, 6
        bldc.zero = 0;
    3518:	a444      	st.b      	r2, (r4, 0x4)
        if (++bldc.step >= 6 )
    351a:	0821      	bt      	0x355c	// 355c <adc_get+0xc4>
            bldc.step = 0;
    351c:	a460      	st.b      	r3, (r4, 0x0)
        stepMoter();
    351e:	e3fffee1 	bsr      	0x32e0	// 32e0 <stepMoter1>
        bldc.wait = 0;
    3522:	3300      	movi      	r3, 0
    3524:	ac63      	st.h      	r3, (r4, 0x6)
        bldc.delay30 = _ING;
    3526:	3301      	movi      	r3, 1
    3528:	b463      	st.w      	r3, (r4, 0xc)
    printf("%d,%d,%d,%d,%d\n", adc_value[0], adc_value[1], adc_value[2], bldc.wait, bldc.step);
    352a:	8400      	ld.b      	r0, (r4, 0x0)
    352c:	b801      	st.w      	r0, (r14, 0x4)
    352e:	8c03      	ld.h      	r0, (r4, 0x6)
    3530:	b800      	st.w      	r0, (r14, 0x0)
    3532:	8d62      	ld.h      	r3, (r5, 0x4)
    3534:	8d41      	ld.h      	r2, (r5, 0x2)
    3536:	8d20      	ld.h      	r1, (r5, 0x0)
    3538:	100d      	lrw      	r0, 0x4da4	// 356c <adc_get+0xd4>
    353a:	e3fff215 	bsr      	0x1964	// 1964 <__cskyvprintfprintf>
}
    353e:	1402      	addi      	r14, r14, 8
    3540:	1493      	pop      	r4-r6, r15
            if (adc_value[1] > bldc.zero_base)
    3542:	8d21      	ld.h      	r1, (r5, 0x2)
            if (adc_value[0] > bldc.zero_base)
    3544:	8c41      	ld.h      	r2, (r4, 0x2)
    3546:	07db      	br      	0x34fc	// 34fc <adc_get+0x64>
            if (adc_value[0] < bldc.zero_base)
    3548:	8d20      	ld.h      	r1, (r5, 0x0)
            if (adc_value[1] < bldc.zero_base)
    354a:	8c41      	ld.h      	r2, (r4, 0x2)
    354c:	0402      	br      	0x3550	// 3550 <adc_get+0xb8>
            if (adc_value[2] > bldc.zero_base)
    354e:	8c21      	ld.h      	r1, (r4, 0x2)
            if (adc_value[1] < bldc.zero_base)
    3550:	6484      	cmphs      	r1, r2
    3552:	07d6      	br      	0x34fe	// 34fe <adc_get+0x66>
    3554:	8d21      	ld.h      	r1, (r5, 0x2)
    3556:	07fa      	br      	0x354a	// 354a <adc_get+0xb2>
            if (adc_value[0] > bldc.zero_base)
    3558:	8d20      	ld.h      	r1, (r5, 0x0)
    355a:	07f5      	br      	0x3544	// 3544 <adc_get+0xac>
            bldc.step = 0;
    355c:	3300      	movi      	r3, 0
    355e:	07df      	br      	0x351c	// 351c <adc_get+0x84>
    3560:	200001ec 	.long	0x200001ec
    3564:	20000050 	.long	0x20000050
    3568:	200001e4 	.long	0x200001e4
    356c:	00004da4 	.long	0x00004da4

Disassembly of section .text.__divsi3:

00003570 <__divsi3>:
CSP_BT_T    	*BT1      = (CSP_BT_T   *)APB_BT1Base ;
CSP_CRC_T   	*CRC      = (CSP_CRC_T  *)AHB_CRCBase ;
CSP_HWD_T   	*HWD      = (CSP_HWD_T  *)APB_HWDBase ;

int __divsi3 (  int a,   int b)
{   
    3570:	14c1      	push      	r4
	int PSR;
	__asm volatile(
    3572:	c0006023 	mfcr      	r3, cr<0, 0>
    3576:	c0807020 	psrclr      	ie
					"mfcr %0 , psr \n\r"
					"psrclr ie \n\r"
					: "=r"(PSR)
				   );

	HWD->CR = 0;
    357a:	1046      	lrw      	r2, 0x20000000	// 3590 <__divsi3+0x20>
    357c:	3400      	movi      	r4, 0
    357e:	9240      	ld.w      	r2, (r2, 0x0)
    3580:	b284      	st.w      	r4, (r2, 0x10)
	HWD->DIVIDENT = a;
	HWD->DIVISOR = b;

	PSR |= 0x80000000;
    3582:	3bbf      	bseti      	r3, 31
	HWD->DIVIDENT = a;
    3584:	b200      	st.w      	r0, (r2, 0x0)
	HWD->DIVISOR = b;
    3586:	b221      	st.w      	r1, (r2, 0x4)
	__asm volatile(
    3588:	c0036420 	mtcr      	r3, cr<0, 0>
					 "mtcr %0 , psr \n\r"
					 : 
					 :"r"(PSR)
					);
					
	return HWD->QUOTIENT;
    358c:	9202      	ld.w      	r0, (r2, 0x8)
}
    358e:	1481      	pop      	r4
    3590:	20000000 	.long	0x20000000

Disassembly of section .text.__udivsi3:

00003594 <__udivsi3>:
 unsigned int __udivsi3 ( unsigned int a,  unsigned int b)
{   
    3594:	14c1      	push      	r4
	int PSR;
	__asm volatile(
    3596:	c0006023 	mfcr      	r3, cr<0, 0>
    359a:	c0807020 	psrclr      	ie
					"mfcr %0 , psr \n\r"
					"psrclr ie \n\r"
					: "=r"(PSR)
				   );
	
	HWD->CR = 1;
    359e:	1046      	lrw      	r2, 0x20000000	// 35b4 <__udivsi3+0x20>
    35a0:	3401      	movi      	r4, 1
    35a2:	9240      	ld.w      	r2, (r2, 0x0)
    35a4:	b284      	st.w      	r4, (r2, 0x10)
	HWD->DIVIDENT = a;
	HWD->DIVISOR = b;

	PSR |= 0x80000000;
    35a6:	3bbf      	bseti      	r3, 31
	HWD->DIVIDENT = a;
    35a8:	b200      	st.w      	r0, (r2, 0x0)
	HWD->DIVISOR = b;
    35aa:	b221      	st.w      	r1, (r2, 0x4)
	__asm volatile(
    35ac:	c0036420 	mtcr      	r3, cr<0, 0>
					 "mtcr %0 , psr \n\r"
					 : 
					 :"r"(PSR)
					);

	return HWD->QUOTIENT;
    35b0:	9202      	ld.w      	r0, (r2, 0x8)
}
    35b2:	1481      	pop      	r4
    35b4:	20000000 	.long	0x20000000

Disassembly of section .text.__umodsi3:

000035b8 <__umodsi3>:
					);	
	return HWD->REMAIN;
}

unsigned int __umodsi3 ( unsigned int a,  unsigned int b)
{   
    35b8:	14c1      	push      	r4
	int PSR;
	__asm volatile(
    35ba:	c0006023 	mfcr      	r3, cr<0, 0>
    35be:	c0807020 	psrclr      	ie
					"mfcr %0 , psr \n\r"
					"psrclr ie \n\r"
					: "=r"(PSR)
				   );
	
	HWD->CR = 1;
    35c2:	1046      	lrw      	r2, 0x20000000	// 35d8 <__umodsi3+0x20>
    35c4:	3401      	movi      	r4, 1
    35c6:	9240      	ld.w      	r2, (r2, 0x0)
    35c8:	b284      	st.w      	r4, (r2, 0x10)
	HWD->DIVIDENT = a;
	HWD->DIVISOR = b;

	PSR |= 0x80000000;
    35ca:	3bbf      	bseti      	r3, 31
	HWD->DIVIDENT = a;
    35cc:	b200      	st.w      	r0, (r2, 0x0)
	HWD->DIVISOR = b;
    35ce:	b221      	st.w      	r1, (r2, 0x4)
	__asm volatile(
    35d0:	c0036420 	mtcr      	r3, cr<0, 0>
					 "mtcr %0 , psr \n\r"
					 : 
					 :"r"(PSR)
					);	
	return HWD->REMAIN;
    35d4:	9203      	ld.w      	r0, (r2, 0xc)
}
    35d6:	1481      	pop      	r4
    35d8:	20000000 	.long	0x20000000

Disassembly of section .text.CK_CPU_EnAllNormalIrq:

000035dc <CK_CPU_EnAllNormalIrq>:
}


void CK_CPU_EnAllNormalIrq(void)
{
  asm  ("psrset ee,ie");
    35dc:	c1807420 	psrset      	ee, ie
}
    35e0:	783c      	jmp      	r15

Disassembly of section .text.TK_Sampling_prog:

000035e4 <TK_Sampling_prog>:
    35e4:	14c4      	push      	r4-r7
    35e6:	1423      	subi      	r14, r14, 12
    35e8:	1169      	lrw      	r3, 0x20000054	// 368c <TK_Sampling_prog+0xa8>
    35ea:	114a      	lrw      	r2, 0x20000495	// 3690 <TK_Sampling_prog+0xac>
    35ec:	6d0b      	mov      	r4, r2
    35ee:	9320      	ld.w      	r1, (r3, 0x0)
    35f0:	b840      	st.w      	r2, (r14, 0x0)
    35f2:	3300      	movi      	r3, 0
    35f4:	11a8      	lrw      	r5, 0x20000522	// 3694 <TK_Sampling_prog+0xb0>
    35f6:	9840      	ld.w      	r2, (r14, 0x0)
    35f8:	8240      	ld.b      	r2, (r2, 0x0)
    35fa:	3a41      	cmpnei      	r2, 1
    35fc:	0808      	bt      	0x360c	// 360c <TK_Sampling_prog+0x28>
    35fe:	4342      	lsli      	r2, r3, 2
    3600:	6084      	addu      	r2, r1
    3602:	9200      	ld.w      	r0, (r2, 0x0)
    3604:	4341      	lsli      	r2, r3, 1
    3606:	7401      	zexth      	r0, r0
    3608:	6094      	addu      	r2, r5
    360a:	aa00      	st.h      	r0, (r2, 0x0)
    360c:	8440      	ld.b      	r2, (r4, 0x0)
    360e:	3a42      	cmpnei      	r2, 2
    3610:	0809      	bt      	0x3622	// 3622 <TK_Sampling_prog+0x3e>
    3612:	4342      	lsli      	r2, r3, 2
    3614:	6084      	addu      	r2, r1
    3616:	9200      	ld.w      	r0, (r2, 0x0)
    3618:	4341      	lsli      	r2, r3, 1
    361a:	11c0      	lrw      	r6, 0x200002dc	// 3698 <TK_Sampling_prog+0xb4>
    361c:	7401      	zexth      	r0, r0
    361e:	6098      	addu      	r2, r6
    3620:	aa00      	st.h      	r0, (r2, 0x0)
    3622:	8440      	ld.b      	r2, (r4, 0x0)
    3624:	3a40      	cmpnei      	r2, 0
    3626:	0809      	bt      	0x3638	// 3638 <TK_Sampling_prog+0x54>
    3628:	4342      	lsli      	r2, r3, 2
    362a:	6084      	addu      	r2, r1
    362c:	9200      	ld.w      	r0, (r2, 0x0)
    362e:	4341      	lsli      	r2, r3, 1
    3630:	10db      	lrw      	r6, 0x200003ca	// 369c <TK_Sampling_prog+0xb8>
    3632:	7401      	zexth      	r0, r0
    3634:	6098      	addu      	r2, r6
    3636:	aa00      	st.h      	r0, (r2, 0x0)
    3638:	10da      	lrw      	r6, 0x20000335	// 36a0 <TK_Sampling_prog+0xbc>
    363a:	8640      	ld.b      	r2, (r6, 0x0)
    363c:	3a41      	cmpnei      	r2, 1
    363e:	0821      	bt      	0x3680	// 3680 <TK_Sampling_prog+0x9c>
    3640:	1079      	lrw      	r3, 0x20000200	// 36a4 <TK_Sampling_prog+0xc0>
    3642:	3200      	movi      	r2, 0
    3644:	b861      	st.w      	r3, (r14, 0x4)
    3646:	1075      	lrw      	r3, 0x200002dc	// 3698 <TK_Sampling_prog+0xb4>
    3648:	b862      	st.w      	r3, (r14, 0x8)
    364a:	4261      	lsli      	r3, r2, 1
    364c:	5d0c      	addu      	r0, r5, r3
    364e:	8800      	ld.h      	r0, (r0, 0x0)
    3650:	98e1      	ld.w      	r7, (r14, 0x4)
    3652:	61cc      	addu      	r7, r3
    3654:	7401      	zexth      	r0, r0
    3656:	af00      	st.h      	r0, (r7, 0x0)
    3658:	9802      	ld.w      	r0, (r14, 0x8)
    365a:	600c      	addu      	r0, r3
    365c:	8800      	ld.h      	r0, (r0, 0x0)
    365e:	10f3      	lrw      	r7, 0x20000396	// 36a8 <TK_Sampling_prog+0xc4>
    3660:	61cc      	addu      	r7, r3
    3662:	7401      	zexth      	r0, r0
    3664:	af00      	st.h      	r0, (r7, 0x0)
    3666:	2200      	addi      	r2, 1
    3668:	100d      	lrw      	r0, 0x200003ca	// 369c <TK_Sampling_prog+0xb8>
    366a:	600c      	addu      	r0, r3
    366c:	8800      	ld.h      	r0, (r0, 0x0)
    366e:	10f0      	lrw      	r7, 0x20000496	// 36ac <TK_Sampling_prog+0xc8>
    3670:	7401      	zexth      	r0, r0
    3672:	60dc      	addu      	r3, r7
    3674:	3a51      	cmpnei      	r2, 17
    3676:	ab00      	st.h      	r0, (r3, 0x0)
    3678:	0be9      	bt      	0x364a	// 364a <TK_Sampling_prog+0x66>
    367a:	3300      	movi      	r3, 0
    367c:	a660      	st.b      	r3, (r6, 0x0)
    367e:	3311      	movi      	r3, 17
    3680:	2300      	addi      	r3, 1
    3682:	74cc      	zextb      	r3, r3
    3684:	3b10      	cmphsi      	r3, 17
    3686:	0fb8      	bf      	0x35f6	// 35f6 <TK_Sampling_prog+0x12>
    3688:	1403      	addi      	r14, r14, 12
    368a:	1484      	pop      	r4-r7
    368c:	20000054 	.long	0x20000054
    3690:	20000495 	.long	0x20000495
    3694:	20000522 	.long	0x20000522
    3698:	200002dc 	.long	0x200002dc
    369c:	200003ca 	.long	0x200003ca
    36a0:	20000335 	.long	0x20000335
    36a4:	20000200 	.long	0x20000200
    36a8:	20000396 	.long	0x20000396
    36ac:	20000496 	.long	0x20000496

Disassembly of section .text.get_key_number:

000036b0 <get_key_number>:
    36b0:	14c2      	push      	r4-r5
    36b2:	3200      	movi      	r2, 0
    36b4:	3000      	movi      	r0, 0
    36b6:	1088      	lrw      	r4, 0x20000390	// 36d4 <get_key_number+0x24>
    36b8:	3501      	movi      	r5, 1
    36ba:	3120      	movi      	r1, 32
    36bc:	9460      	ld.w      	r3, (r4, 0x0)
    36be:	70c9      	lsr      	r3, r2
    36c0:	68d4      	and      	r3, r5
    36c2:	3b40      	cmpnei      	r3, 0
    36c4:	0c02      	bf      	0x36c8	// 36c8 <get_key_number+0x18>
    36c6:	2000      	addi      	r0, 1
    36c8:	2200      	addi      	r2, 1
    36ca:	644a      	cmpne      	r2, r1
    36cc:	0bf8      	bt      	0x36bc	// 36bc <get_key_number+0xc>
    36ce:	7400      	zextb      	r0, r0
    36d0:	1482      	pop      	r4-r5
    36d2:	0000      	bkpt
    36d4:	20000390 	.long	0x20000390

Disassembly of section .text.TK_Scan_Start:

000036d8 <TK_Scan_Start>:
    36d8:	1073      	lrw      	r3, 0x20000068	// 3724 <TK_Scan_Start+0x4c>
    36da:	1054      	lrw      	r2, 0x20000495	// 3728 <TK_Scan_Start+0x50>
    36dc:	8302      	ld.b      	r0, (r3, 0x2)
    36de:	8220      	ld.b      	r1, (r2, 0x0)
    36e0:	6442      	cmpne      	r0, r1
    36e2:	0c16      	bf      	0x370e	// 370e <TK_Scan_Start+0x36>
    36e4:	8220      	ld.b      	r1, (r2, 0x0)
    36e6:	7444      	zextb      	r1, r1
    36e8:	3941      	cmpnei      	r1, 1
    36ea:	0c18      	bf      	0x371a	// 371a <TK_Scan_Start+0x42>
    36ec:	3940      	cmpnei      	r1, 0
    36ee:	0c11      	bf      	0x3710	// 3710 <TK_Scan_Start+0x38>
    36f0:	3942      	cmpnei      	r1, 2
    36f2:	0c16      	bf      	0x371e	// 371e <TK_Scan_Start+0x46>
    36f4:	8240      	ld.b      	r2, (r2, 0x0)
    36f6:	7488      	zextb      	r2, r2
    36f8:	a342      	st.b      	r2, (r3, 0x2)
    36fa:	8343      	ld.b      	r2, (r3, 0x3)
    36fc:	7488      	zextb      	r2, r2
    36fe:	3a41      	cmpnei      	r2, 1
    3700:	0807      	bt      	0x370e	// 370e <TK_Scan_Start+0x36>
    3702:	102b      	lrw      	r1, 0x20000058	// 372c <TK_Scan_Start+0x54>
    3704:	9120      	ld.w      	r1, (r1, 0x0)
    3706:	b142      	st.w      	r2, (r1, 0x8)
    3708:	3200      	movi      	r2, 0
    370a:	a340      	st.b      	r2, (r3, 0x0)
    370c:	a343      	st.b      	r2, (r3, 0x3)
    370e:	783c      	jmp      	r15
    3710:	1028      	lrw      	r1, 0x20000544	// 3730 <TK_Scan_Start+0x58>
    3712:	9100      	ld.w      	r0, (r1, 0x0)
    3714:	1028      	lrw      	r1, 0x40011200	// 3734 <TK_Scan_Start+0x5c>
    3716:	b110      	st.w      	r0, (r1, 0x40)
    3718:	07ee      	br      	0x36f4	// 36f4 <TK_Scan_Start+0x1c>
    371a:	1028      	lrw      	r1, 0x200002d8	// 3738 <TK_Scan_Start+0x60>
    371c:	07fb      	br      	0x3712	// 3712 <TK_Scan_Start+0x3a>
    371e:	1028      	lrw      	r1, 0x20000304	// 373c <TK_Scan_Start+0x64>
    3720:	07f9      	br      	0x3712	// 3712 <TK_Scan_Start+0x3a>
    3722:	0000      	bkpt
    3724:	20000068 	.long	0x20000068
    3728:	20000495 	.long	0x20000495
    372c:	20000058 	.long	0x20000058
    3730:	20000544 	.long	0x20000544
    3734:	40011200 	.long	0x40011200
    3738:	200002d8 	.long	0x200002d8
    373c:	20000304 	.long	0x20000304

Disassembly of section .text.TK_Keymap_prog:

00003740 <TK_Keymap_prog>:
    3740:	14d4      	push      	r4-r7, r15
    3742:	142a      	subi      	r14, r14, 40
    3744:	0171      	lrw      	r3, 0x20000140	// 3a7c <TK_Keymap_prog+0x33c>
    3746:	8360      	ld.b      	r3, (r3, 0x0)
    3748:	b860      	st.w      	r3, (r14, 0x0)
    374a:	3400      	movi      	r4, 0
    374c:	0172      	lrw      	r3, 0x2000010c	// 3a80 <TK_Keymap_prog+0x340>
    374e:	8360      	ld.b      	r3, (r3, 0x0)
    3750:	b863      	st.w      	r3, (r14, 0xc)
    3752:	0172      	lrw      	r3, 0x2000011d	// 3a84 <TK_Keymap_prog+0x344>
    3754:	83a0      	ld.b      	r5, (r3, 0x0)
    3756:	0172      	lrw      	r3, 0x2000011c	// 3a88 <TK_Keymap_prog+0x348>
    3758:	8360      	ld.b      	r3, (r3, 0x0)
    375a:	b866      	st.w      	r3, (r14, 0x18)
    375c:	0173      	lrw      	r3, 0x20000522	// 3a8c <TK_Keymap_prog+0x34c>
    375e:	b868      	st.w      	r3, (r14, 0x20)
    3760:	0173      	lrw      	r3, 0x200002b4	// 3a90 <TK_Keymap_prog+0x350>
    3762:	b864      	st.w      	r3, (r14, 0x10)
    3764:	b869      	st.w      	r3, (r14, 0x24)
    3766:	4461      	lsli      	r3, r4, 1
    3768:	9848      	ld.w      	r2, (r14, 0x20)
    376a:	608c      	addu      	r2, r3
    376c:	0135      	lrw      	r1, 0x20000200	// 3a94 <TK_Keymap_prog+0x354>
    376e:	604c      	addu      	r1, r3
    3770:	8a40      	ld.h      	r2, (r2, 0x0)
    3772:	8920      	ld.h      	r1, (r1, 0x0)
    3774:	6086      	subu      	r2, r1
    3776:	9829      	ld.w      	r1, (r14, 0x24)
    3778:	604c      	addu      	r1, r3
    377a:	748b      	sexth      	r2, r2
    377c:	a940      	st.h      	r2, (r1, 0x0)
    377e:	0118      	lrw      	r0, 0x20000396	// 3a98 <TK_Keymap_prog+0x358>
    3780:	0158      	lrw      	r2, 0x200002dc	// 3a9c <TK_Keymap_prog+0x35c>
    3782:	608c      	addu      	r2, r3
    3784:	600c      	addu      	r0, r3
    3786:	8a40      	ld.h      	r2, (r2, 0x0)
    3788:	8800      	ld.h      	r0, (r0, 0x0)
    378a:	6082      	subu      	r2, r0
    378c:	01da      	lrw      	r6, 0x200003ec	// 3aa0 <TK_Keymap_prog+0x360>
    378e:	5e0c      	addu      	r0, r6, r3
    3790:	748b      	sexth      	r2, r2
    3792:	a840      	st.h      	r2, (r0, 0x0)
    3794:	b8c1      	st.w      	r6, (r14, 0x4)
    3796:	015b      	lrw      	r2, 0x200003ca	// 3aa4 <TK_Keymap_prog+0x364>
    3798:	011b      	lrw      	r0, 0x20000496	// 3aa8 <TK_Keymap_prog+0x368>
    379a:	608c      	addu      	r2, r3
    379c:	600c      	addu      	r0, r3
    379e:	8a40      	ld.h      	r2, (r2, 0x0)
    37a0:	8800      	ld.h      	r0, (r0, 0x0)
    37a2:	6082      	subu      	r2, r0
    37a4:	011d      	lrw      	r0, 0x200004fe	// 3aac <TK_Keymap_prog+0x36c>
    37a6:	748b      	sexth      	r2, r2
    37a8:	58ec      	addu      	r7, r0, r3
    37aa:	af40      	st.h      	r2, (r7, 0x0)
    37ac:	8940      	ld.h      	r2, (r1, 0x0)
    37ae:	748b      	sexth      	r2, r2
    37b0:	3adf      	btsti      	r2, 31
    37b2:	015f      	lrw      	r2, 0x200004dc	// 3ab0 <TK_Keymap_prog+0x370>
    37b4:	60c8      	addu      	r3, r2
    37b6:	b802      	st.w      	r0, (r14, 0x8)
    37b8:	0c49      	bf      	0x384a	// 384a <TK_Keymap_prog+0x10a>
    37ba:	3200      	movi      	r2, 0
    37bc:	ab40      	st.h      	r2, (r3, 0x0)
    37be:	9821      	ld.w      	r1, (r14, 0x4)
    37c0:	4461      	lsli      	r3, r4, 1
    37c2:	604c      	addu      	r1, r3
    37c4:	8940      	ld.h      	r2, (r1, 0x0)
    37c6:	748b      	sexth      	r2, r2
    37c8:	3adf      	btsti      	r2, 31
    37ca:	0244      	lrw      	r2, 0x20000264	// 3ab4 <TK_Keymap_prog+0x374>
    37cc:	60c8      	addu      	r3, r2
    37ce:	0c41      	bf      	0x3850	// 3850 <TK_Keymap_prog+0x110>
    37d0:	3200      	movi      	r2, 0
    37d2:	ab40      	st.h      	r2, (r3, 0x0)
    37d4:	9822      	ld.w      	r1, (r14, 0x8)
    37d6:	4461      	lsli      	r3, r4, 1
    37d8:	604c      	addu      	r1, r3
    37da:	8940      	ld.h      	r2, (r1, 0x0)
    37dc:	748b      	sexth      	r2, r2
    37de:	3adf      	btsti      	r2, 31
    37e0:	0249      	lrw      	r2, 0x20000238	// 3ab8 <TK_Keymap_prog+0x378>
    37e2:	60c8      	addu      	r3, r2
    37e4:	0c39      	bf      	0x3856	// 3856 <TK_Keymap_prog+0x116>
    37e6:	3200      	movi      	r2, 0
    37e8:	ab40      	st.h      	r2, (r3, 0x0)
    37ea:	9860      	ld.w      	r3, (r14, 0x0)
    37ec:	3b03      	cmphsi      	r3, 4
    37ee:	4421      	lsli      	r1, r4, 1
    37f0:	0cb5      	bf      	0x395a	// 395a <TK_Keymap_prog+0x21a>
    37f2:	9864      	ld.w      	r3, (r14, 0x10)
    37f4:	60c4      	addu      	r3, r1
    37f6:	024d      	lrw      	r2, 0x20000176	// 3abc <TK_Keymap_prog+0x37c>
    37f8:	6048      	addu      	r1, r2
    37fa:	8b00      	ld.h      	r0, (r3, 0x0)
    37fc:	8940      	ld.h      	r2, (r1, 0x0)
    37fe:	7403      	sexth      	r0, r0
    3800:	6409      	cmplt      	r2, r0
    3802:	9820      	ld.w      	r1, (r14, 0x0)
    3804:	7c84      	mult      	r2, r1
    3806:	0c9b      	bf      	0x393c	// 393c <TK_Keymap_prog+0x1fc>
    3808:	8b20      	ld.h      	r1, (r3, 0x0)
    380a:	7447      	sexth      	r1, r1
    380c:	6485      	cmplt      	r1, r2
    380e:	0c97      	bf      	0x393c	// 393c <TK_Keymap_prog+0x1fc>
    3810:	0233      	lrw      	r1, 0x200002a1	// 3ac0 <TK_Keymap_prog+0x380>
    3812:	6050      	addu      	r1, r4
    3814:	8140      	ld.b      	r2, (r1, 0x0)
    3816:	2200      	addi      	r2, 1
    3818:	7488      	zextb      	r2, r2
    381a:	a140      	st.b      	r2, (r1, 0x0)
    381c:	3000      	movi      	r0, 0
    381e:	0255      	lrw      	r2, 0x20000286	// 3ac4 <TK_Keymap_prog+0x384>
    3820:	6090      	addu      	r2, r4
    3822:	a200      	st.b      	r0, (r2, 0x0)
    3824:	0256      	lrw      	r2, 0x200003b8	// 3ac8 <TK_Keymap_prog+0x388>
    3826:	6090      	addu      	r2, r4
    3828:	a200      	st.b      	r0, (r2, 0x0)
    382a:	0256      	lrw      	r2, 0x20000444	// 3acc <TK_Keymap_prog+0x38c>
    382c:	6090      	addu      	r2, r4
    382e:	a200      	st.b      	r0, (r2, 0x0)
    3830:	8140      	ld.b      	r2, (r1, 0x0)
    3832:	9803      	ld.w      	r0, (r14, 0xc)
    3834:	6480      	cmphs      	r0, r2
    3836:	081d      	bt      	0x3870	// 3870 <TK_Keymap_prog+0x130>
    3838:	3d40      	cmpnei      	r5, 0
    383a:	0811      	bt      	0x385c	// 385c <TK_Keymap_prog+0x11c>
    383c:	025a      	lrw      	r2, 0x20000298	// 3ad0 <TK_Keymap_prog+0x390>
    383e:	9260      	ld.w      	r3, (r2, 0x0)
    3840:	3b40      	cmpnei      	r3, 0
    3842:	0815      	bt      	0x386c	// 386c <TK_Keymap_prog+0x12c>
    3844:	9200      	ld.w      	r0, (r2, 0x0)
    3846:	3301      	movi      	r3, 1
    3848:	040f      	br      	0x3866	// 3866 <TK_Keymap_prog+0x126>
    384a:	8940      	ld.h      	r2, (r1, 0x0)
    384c:	7489      	zexth      	r2, r2
    384e:	07b7      	br      	0x37bc	// 37bc <TK_Keymap_prog+0x7c>
    3850:	8940      	ld.h      	r2, (r1, 0x0)
    3852:	7489      	zexth      	r2, r2
    3854:	07bf      	br      	0x37d2	// 37d2 <TK_Keymap_prog+0x92>
    3856:	8940      	ld.h      	r2, (r1, 0x0)
    3858:	7489      	zexth      	r2, r2
    385a:	07c7      	br      	0x37e8	// 37e8 <TK_Keymap_prog+0xa8>
    385c:	3d41      	cmpnei      	r5, 1
    385e:	085c      	bt      	0x3916	// 3916 <TK_Keymap_prog+0x1d6>
    3860:	0343      	lrw      	r2, 0x20000298	// 3ad0 <TK_Keymap_prog+0x390>
    3862:	6cd7      	mov      	r3, r5
    3864:	9200      	ld.w      	r0, (r2, 0x0)
    3866:	70d0      	lsl      	r3, r4
    3868:	6cc0      	or      	r3, r0
    386a:	b260      	st.w      	r3, (r2, 0x0)
    386c:	3300      	movi      	r3, 0
    386e:	a160      	st.b      	r3, (r1, 0x0)
    3870:	4461      	lsli      	r3, r4, 1
    3872:	9844      	ld.w      	r2, (r14, 0x10)
    3874:	608c      	addu      	r2, r3
    3876:	8ac0      	ld.h      	r6, (r2, 0x0)
    3878:	034e      	lrw      	r2, 0x20000176	// 3abc <TK_Keymap_prog+0x37c>
    387a:	60c8      	addu      	r3, r2
    387c:	8be0      	ld.h      	r7, (r3, 0x0)
    387e:	4702      	lsli      	r0, r7, 2
    3880:	3105      	movi      	r1, 5
    3882:	e3fffe77 	bsr      	0x3570	// 3570 <__divsi3>
    3886:	759b      	sexth      	r6, r6
    3888:	6419      	cmplt      	r6, r0
    388a:	b805      	st.w      	r0, (r14, 0x14)
    388c:	0c18      	bf      	0x38bc	// 38bc <TK_Keymap_prog+0x17c>
    388e:	0351      	lrw      	r2, 0x20000286	// 3ac4 <TK_Keymap_prog+0x384>
    3890:	6090      	addu      	r2, r4
    3892:	8260      	ld.b      	r3, (r2, 0x0)
    3894:	2300      	addi      	r3, 1
    3896:	74cc      	zextb      	r3, r3
    3898:	a260      	st.b      	r3, (r2, 0x0)
    389a:	3100      	movi      	r1, 0
    389c:	0376      	lrw      	r3, 0x200002a1	// 3ac0 <TK_Keymap_prog+0x380>
    389e:	60d0      	addu      	r3, r4
    38a0:	a320      	st.b      	r1, (r3, 0x0)
    38a2:	8260      	ld.b      	r3, (r2, 0x0)
    38a4:	9826      	ld.w      	r1, (r14, 0x18)
    38a6:	64c4      	cmphs      	r1, r3
    38a8:	080a      	bt      	0x38bc	// 38bc <TK_Keymap_prog+0x17c>
    38aa:	3300      	movi      	r3, 0
    38ac:	0336      	lrw      	r1, 0x20000298	// 3ad0 <TK_Keymap_prog+0x390>
    38ae:	2b01      	subi      	r3, 2
    38b0:	9100      	ld.w      	r0, (r1, 0x0)
    38b2:	70d3      	rotl      	r3, r4
    38b4:	68c0      	and      	r3, r0
    38b6:	b160      	st.w      	r3, (r1, 0x0)
    38b8:	3300      	movi      	r3, 0
    38ba:	a260      	st.b      	r3, (r2, 0x0)
    38bc:	9860      	ld.w      	r3, (r14, 0x0)
    38be:	9841      	ld.w      	r2, (r14, 0x4)
    38c0:	3b03      	cmphsi      	r3, 4
    38c2:	4461      	lsli      	r3, r4, 1
    38c4:	60c8      	addu      	r3, r2
    38c6:	8b40      	ld.h      	r2, (r3, 0x0)
    38c8:	748b      	sexth      	r2, r2
    38ca:	0d4d      	bf      	0x3b64	// 3b64 <TK_Keymap_prog+0x424>
    38cc:	649d      	cmplt      	r7, r2
    38ce:	0d3a      	bf      	0x3b42	// 3b42 <TK_Keymap_prog+0x402>
    38d0:	8b40      	ld.h      	r2, (r3, 0x0)
    38d2:	9820      	ld.w      	r1, (r14, 0x0)
    38d4:	748b      	sexth      	r2, r2
    38d6:	7c5c      	mult      	r1, r7
    38d8:	6449      	cmplt      	r2, r1
    38da:	0d34      	bf      	0x3b42	// 3b42 <TK_Keymap_prog+0x402>
    38dc:	133e      	lrw      	r1, 0x2000045c	// 3ad4 <TK_Keymap_prog+0x394>
    38de:	6050      	addu      	r1, r4
    38e0:	8140      	ld.b      	r2, (r1, 0x0)
    38e2:	2200      	addi      	r2, 1
    38e4:	7488      	zextb      	r2, r2
    38e6:	a140      	st.b      	r2, (r1, 0x0)
    38e8:	3000      	movi      	r0, 0
    38ea:	135c      	lrw      	r2, 0x2000030c	// 3ad8 <TK_Keymap_prog+0x398>
    38ec:	6090      	addu      	r2, r4
    38ee:	a200      	st.b      	r0, (r2, 0x0)
    38f0:	135b      	lrw      	r2, 0x20000336	// 3adc <TK_Keymap_prog+0x39c>
    38f2:	6090      	addu      	r2, r4
    38f4:	a200      	st.b      	r0, (r2, 0x0)
    38f6:	135b      	lrw      	r2, 0x2000042c	// 3ae0 <TK_Keymap_prog+0x3a0>
    38f8:	6090      	addu      	r2, r4
    38fa:	a200      	st.b      	r0, (r2, 0x0)
    38fc:	8140      	ld.b      	r2, (r1, 0x0)
    38fe:	9803      	ld.w      	r0, (r14, 0xc)
    3900:	6480      	cmphs      	r0, r2
    3902:	087d      	bt      	0x39fc	// 39fc <TK_Keymap_prog+0x2bc>
    3904:	3d40      	cmpnei      	r5, 0
    3906:	0871      	bt      	0x39e8	// 39e8 <TK_Keymap_prog+0x2a8>
    3908:	1357      	lrw      	r2, 0x20000234	// 3ae4 <TK_Keymap_prog+0x3a4>
    390a:	9260      	ld.w      	r3, (r2, 0x0)
    390c:	3b40      	cmpnei      	r3, 0
    390e:	0875      	bt      	0x39f8	// 39f8 <TK_Keymap_prog+0x2b8>
    3910:	9200      	ld.w      	r0, (r2, 0x0)
    3912:	3301      	movi      	r3, 1
    3914:	046f      	br      	0x39f2	// 39f2 <TK_Keymap_prog+0x2b2>
    3916:	3d42      	cmpnei      	r5, 2
    3918:	0c03      	bf      	0x391e	// 391e <TK_Keymap_prog+0x1de>
    391a:	e8000201 	br      	0x3d1c	// 3d1c <TK_Keymap_prog+0x5dc>
    391e:	13d3      	lrw      	r6, 0x2000043e	// 3ae8 <TK_Keymap_prog+0x3a8>
    3920:	8b00      	ld.h      	r0, (r3, 0x0)
    3922:	8e40      	ld.h      	r2, (r6, 0x0)
    3924:	7489      	zexth      	r2, r2
    3926:	7403      	sexth      	r0, r0
    3928:	2209      	addi      	r2, 10
    392a:	6409      	cmplt      	r2, r0
    392c:	0fa0      	bf      	0x386c	// 386c <TK_Keymap_prog+0x12c>
    392e:	8b60      	ld.h      	r3, (r3, 0x0)
    3930:	74cd      	zexth      	r3, r3
    3932:	ae60      	st.h      	r3, (r6, 0x0)
    3934:	3300      	movi      	r3, 0
    3936:	1347      	lrw      	r2, 0x20000298	// 3ad0 <TK_Keymap_prog+0x390>
    3938:	b260      	st.w      	r3, (r2, 0x0)
    393a:	0785      	br      	0x3844	// 3844 <TK_Keymap_prog+0x104>
    393c:	4461      	lsli      	r3, r4, 1
    393e:	9824      	ld.w      	r1, (r14, 0x10)
    3940:	60c4      	addu      	r3, r1
    3942:	8b60      	ld.h      	r3, (r3, 0x0)
    3944:	74cf      	sexth      	r3, r3
    3946:	64c9      	cmplt      	r2, r3
    3948:	0f94      	bf      	0x3870	// 3870 <TK_Keymap_prog+0x130>
    394a:	3300      	movi      	r3, 0
    394c:	1341      	lrw      	r2, 0x20000298	// 3ad0 <TK_Keymap_prog+0x390>
    394e:	2b01      	subi      	r3, 2
    3950:	9220      	ld.w      	r1, (r2, 0x0)
    3952:	70d3      	rotl      	r3, r4
    3954:	68c4      	and      	r3, r1
    3956:	b260      	st.w      	r3, (r2, 0x0)
    3958:	078c      	br      	0x3870	// 3870 <TK_Keymap_prog+0x130>
    395a:	9844      	ld.w      	r2, (r14, 0x10)
    395c:	6084      	addu      	r2, r1
    395e:	1218      	lrw      	r0, 0x20000176	// 3abc <TK_Keymap_prog+0x37c>
    3960:	8a60      	ld.h      	r3, (r2, 0x0)
    3962:	6040      	addu      	r1, r0
    3964:	74cf      	sexth      	r3, r3
    3966:	8920      	ld.h      	r1, (r1, 0x0)
    3968:	64c5      	cmplt      	r1, r3
    396a:	0f83      	bf      	0x3870	// 3870 <TK_Keymap_prog+0x130>
    396c:	1360      	lrw      	r3, 0x200002b2	// 3aec <TK_Keymap_prog+0x3ac>
    396e:	8360      	ld.b      	r3, (r3, 0x0)
    3970:	74cc      	zextb      	r3, r3
    3972:	3b40      	cmpnei      	r3, 0
    3974:	0b7e      	bt      	0x3870	// 3870 <TK_Keymap_prog+0x130>
    3976:	1213      	lrw      	r0, 0x200002a1	// 3ac0 <TK_Keymap_prog+0x380>
    3978:	6010      	addu      	r0, r4
    397a:	8020      	ld.b      	r1, (r0, 0x0)
    397c:	2100      	addi      	r1, 1
    397e:	7444      	zextb      	r1, r1
    3980:	a020      	st.b      	r1, (r0, 0x0)
    3982:	3600      	movi      	r6, 0
    3984:	1230      	lrw      	r1, 0x20000286	// 3ac4 <TK_Keymap_prog+0x384>
    3986:	6050      	addu      	r1, r4
    3988:	a1c0      	st.b      	r6, (r1, 0x0)
    398a:	1230      	lrw      	r1, 0x200003b8	// 3ac8 <TK_Keymap_prog+0x388>
    398c:	6050      	addu      	r1, r4
    398e:	a1c0      	st.b      	r6, (r1, 0x0)
    3990:	122f      	lrw      	r1, 0x20000444	// 3acc <TK_Keymap_prog+0x38c>
    3992:	6050      	addu      	r1, r4
    3994:	a1c0      	st.b      	r6, (r1, 0x0)
    3996:	8020      	ld.b      	r1, (r0, 0x0)
    3998:	98c3      	ld.w      	r6, (r14, 0xc)
    399a:	6458      	cmphs      	r6, r1
    399c:	0b6a      	bt      	0x3870	// 3870 <TK_Keymap_prog+0x130>
    399e:	3d40      	cmpnei      	r5, 0
    39a0:	0808      	bt      	0x39b0	// 39b0 <TK_Keymap_prog+0x270>
    39a2:	124c      	lrw      	r2, 0x20000298	// 3ad0 <TK_Keymap_prog+0x390>
    39a4:	9260      	ld.w      	r3, (r2, 0x0)
    39a6:	3b40      	cmpnei      	r3, 0
    39a8:	080c      	bt      	0x39c0	// 39c0 <TK_Keymap_prog+0x280>
    39aa:	9220      	ld.w      	r1, (r2, 0x0)
    39ac:	3301      	movi      	r3, 1
    39ae:	0406      	br      	0x39ba	// 39ba <TK_Keymap_prog+0x27a>
    39b0:	3d41      	cmpnei      	r5, 1
    39b2:	080a      	bt      	0x39c6	// 39c6 <TK_Keymap_prog+0x286>
    39b4:	1247      	lrw      	r2, 0x20000298	// 3ad0 <TK_Keymap_prog+0x390>
    39b6:	6cd7      	mov      	r3, r5
    39b8:	9220      	ld.w      	r1, (r2, 0x0)
    39ba:	70d0      	lsl      	r3, r4
    39bc:	6cc4      	or      	r3, r1
    39be:	b260      	st.w      	r3, (r2, 0x0)
    39c0:	3300      	movi      	r3, 0
    39c2:	a060      	st.b      	r3, (r0, 0x0)
    39c4:	0756      	br      	0x3870	// 3870 <TK_Keymap_prog+0x130>
    39c6:	3d42      	cmpnei      	r5, 2
    39c8:	0c02      	bf      	0x39cc	// 39cc <TK_Keymap_prog+0x28c>
    39ca:	05dc      	br      	0x3d82	// 3d82 <TK_Keymap_prog+0x642>
    39cc:	12e7      	lrw      	r7, 0x2000043e	// 3ae8 <TK_Keymap_prog+0x3a8>
    39ce:	8ac0      	ld.h      	r6, (r2, 0x0)
    39d0:	8f20      	ld.h      	r1, (r7, 0x0)
    39d2:	7445      	zexth      	r1, r1
    39d4:	759b      	sexth      	r6, r6
    39d6:	2109      	addi      	r1, 10
    39d8:	6585      	cmplt      	r1, r6
    39da:	0ff3      	bf      	0x39c0	// 39c0 <TK_Keymap_prog+0x280>
    39dc:	8a40      	ld.h      	r2, (r2, 0x0)
    39de:	7489      	zexth      	r2, r2
    39e0:	af40      	st.h      	r2, (r7, 0x0)
    39e2:	115c      	lrw      	r2, 0x20000298	// 3ad0 <TK_Keymap_prog+0x390>
    39e4:	b260      	st.w      	r3, (r2, 0x0)
    39e6:	07e2      	br      	0x39aa	// 39aa <TK_Keymap_prog+0x26a>
    39e8:	3d41      	cmpnei      	r5, 1
    39ea:	089b      	bt      	0x3b20	// 3b20 <TK_Keymap_prog+0x3e0>
    39ec:	115e      	lrw      	r2, 0x20000234	// 3ae4 <TK_Keymap_prog+0x3a4>
    39ee:	6cd7      	mov      	r3, r5
    39f0:	9200      	ld.w      	r0, (r2, 0x0)
    39f2:	70d0      	lsl      	r3, r4
    39f4:	6cc0      	or      	r3, r0
    39f6:	b260      	st.w      	r3, (r2, 0x0)
    39f8:	3300      	movi      	r3, 0
    39fa:	a160      	st.b      	r3, (r1, 0x0)
    39fc:	4461      	lsli      	r3, r4, 1
    39fe:	9841      	ld.w      	r2, (r14, 0x4)
    3a00:	608c      	addu      	r2, r3
    3a02:	8a60      	ld.h      	r3, (r2, 0x0)
    3a04:	74cf      	sexth      	r3, r3
    3a06:	9845      	ld.w      	r2, (r14, 0x14)
    3a08:	648d      	cmplt      	r3, r2
    3a0a:	0c18      	bf      	0x3a3a	// 3a3a <TK_Keymap_prog+0x2fa>
    3a0c:	1153      	lrw      	r2, 0x2000030c	// 3ad8 <TK_Keymap_prog+0x398>
    3a0e:	6090      	addu      	r2, r4
    3a10:	8260      	ld.b      	r3, (r2, 0x0)
    3a12:	2300      	addi      	r3, 1
    3a14:	74cc      	zextb      	r3, r3
    3a16:	a260      	st.b      	r3, (r2, 0x0)
    3a18:	3100      	movi      	r1, 0
    3a1a:	116f      	lrw      	r3, 0x2000045c	// 3ad4 <TK_Keymap_prog+0x394>
    3a1c:	60d0      	addu      	r3, r4
    3a1e:	a320      	st.b      	r1, (r3, 0x0)
    3a20:	8260      	ld.b      	r3, (r2, 0x0)
    3a22:	9826      	ld.w      	r1, (r14, 0x18)
    3a24:	64c4      	cmphs      	r1, r3
    3a26:	080a      	bt      	0x3a3a	// 3a3a <TK_Keymap_prog+0x2fa>
    3a28:	3300      	movi      	r3, 0
    3a2a:	112f      	lrw      	r1, 0x20000234	// 3ae4 <TK_Keymap_prog+0x3a4>
    3a2c:	2b01      	subi      	r3, 2
    3a2e:	9100      	ld.w      	r0, (r1, 0x0)
    3a30:	70d3      	rotl      	r3, r4
    3a32:	68c0      	and      	r3, r0
    3a34:	b160      	st.w      	r3, (r1, 0x0)
    3a36:	3300      	movi      	r3, 0
    3a38:	a260      	st.b      	r3, (r2, 0x0)
    3a3a:	9860      	ld.w      	r3, (r14, 0x0)
    3a3c:	9842      	ld.w      	r2, (r14, 0x8)
    3a3e:	3b03      	cmphsi      	r3, 4
    3a40:	4461      	lsli      	r3, r4, 1
    3a42:	60c8      	addu      	r3, r2
    3a44:	8b40      	ld.h      	r2, (r3, 0x0)
    3a46:	748b      	sexth      	r2, r2
    3a48:	0d26      	bf      	0x3c94	// 3c94 <TK_Keymap_prog+0x554>
    3a4a:	9820      	ld.w      	r1, (r14, 0x0)
    3a4c:	649d      	cmplt      	r7, r2
    3a4e:	7c5c      	mult      	r1, r7
    3a50:	0d13      	bf      	0x3c76	// 3c76 <TK_Keymap_prog+0x536>
    3a52:	8b40      	ld.h      	r2, (r3, 0x0)
    3a54:	748b      	sexth      	r2, r2
    3a56:	6449      	cmplt      	r2, r1
    3a58:	0d0f      	bf      	0x3c76	// 3c76 <TK_Keymap_prog+0x536>
    3a5a:	1126      	lrw      	r1, 0x20000414	// 3af0 <TK_Keymap_prog+0x3b0>
    3a5c:	6050      	addu      	r1, r4
    3a5e:	8140      	ld.b      	r2, (r1, 0x0)
    3a60:	2200      	addi      	r2, 1
    3a62:	7488      	zextb      	r2, r2
    3a64:	a140      	st.b      	r2, (r1, 0x0)
    3a66:	3000      	movi      	r0, 0
    3a68:	1143      	lrw      	r2, 0x2000046d	// 3af4 <TK_Keymap_prog+0x3b4>
    3a6a:	6090      	addu      	r2, r4
    3a6c:	a200      	st.b      	r0, (r2, 0x0)
    3a6e:	1143      	lrw      	r2, 0x20000222	// 3af8 <TK_Keymap_prog+0x3b8>
    3a70:	6090      	addu      	r2, r4
    3a72:	a200      	st.b      	r0, (r2, 0x0)
    3a74:	1142      	lrw      	r2, 0x20000324	// 3afc <TK_Keymap_prog+0x3bc>
    3a76:	6090      	addu      	r2, r4
    3a78:	a200      	st.b      	r0, (r2, 0x0)
    3a7a:	0443      	br      	0x3b00	// 3b00 <TK_Keymap_prog+0x3c0>
    3a7c:	20000140 	.long	0x20000140
    3a80:	2000010c 	.long	0x2000010c
    3a84:	2000011d 	.long	0x2000011d
    3a88:	2000011c 	.long	0x2000011c
    3a8c:	20000522 	.long	0x20000522
    3a90:	200002b4 	.long	0x200002b4
    3a94:	20000200 	.long	0x20000200
    3a98:	20000396 	.long	0x20000396
    3a9c:	200002dc 	.long	0x200002dc
    3aa0:	200003ec 	.long	0x200003ec
    3aa4:	200003ca 	.long	0x200003ca
    3aa8:	20000496 	.long	0x20000496
    3aac:	200004fe 	.long	0x200004fe
    3ab0:	200004dc 	.long	0x200004dc
    3ab4:	20000264 	.long	0x20000264
    3ab8:	20000238 	.long	0x20000238
    3abc:	20000176 	.long	0x20000176
    3ac0:	200002a1 	.long	0x200002a1
    3ac4:	20000286 	.long	0x20000286
    3ac8:	200003b8 	.long	0x200003b8
    3acc:	20000444 	.long	0x20000444
    3ad0:	20000298 	.long	0x20000298
    3ad4:	2000045c 	.long	0x2000045c
    3ad8:	2000030c 	.long	0x2000030c
    3adc:	20000336 	.long	0x20000336
    3ae0:	2000042c 	.long	0x2000042c
    3ae4:	20000234 	.long	0x20000234
    3ae8:	2000043e 	.long	0x2000043e
    3aec:	200002b2 	.long	0x200002b2
    3af0:	20000414 	.long	0x20000414
    3af4:	2000046d 	.long	0x2000046d
    3af8:	20000222 	.long	0x20000222
    3afc:	20000324 	.long	0x20000324
    3b00:	8140      	ld.b      	r2, (r1, 0x0)
    3b02:	9803      	ld.w      	r0, (r14, 0xc)
    3b04:	6480      	cmphs      	r0, r2
    3b06:	0881      	bt      	0x3c08	// 3c08 <TK_Keymap_prog+0x4c8>
    3b08:	3d40      	cmpnei      	r5, 0
    3b0a:	0874      	bt      	0x3bf2	// 3bf2 <TK_Keymap_prog+0x4b2>
    3b0c:	014b      	lrw      	r2, 0x20000308	// 3e5c <TK_Keymap_prog+0x71c>
    3b0e:	9260      	ld.w      	r3, (r2, 0x0)
    3b10:	3b40      	cmpnei      	r3, 0
    3b12:	0879      	bt      	0x3c04	// 3c04 <TK_Keymap_prog+0x4c4>
    3b14:	3301      	movi      	r3, 1
    3b16:	9200      	ld.w      	r0, (r2, 0x0)
    3b18:	70d0      	lsl      	r3, r4
    3b1a:	6cc0      	or      	r3, r0
    3b1c:	b260      	st.w      	r3, (r2, 0x0)
    3b1e:	0473      	br      	0x3c04	// 3c04 <TK_Keymap_prog+0x4c4>
    3b20:	3d42      	cmpnei      	r5, 2
    3b22:	0960      	bt      	0x3de2	// 3de2 <TK_Keymap_prog+0x6a2>
    3b24:	01d0      	lrw      	r6, 0x20000520	// 3e60 <TK_Keymap_prog+0x720>
    3b26:	8b00      	ld.h      	r0, (r3, 0x0)
    3b28:	8e40      	ld.h      	r2, (r6, 0x0)
    3b2a:	7489      	zexth      	r2, r2
    3b2c:	7403      	sexth      	r0, r0
    3b2e:	2209      	addi      	r2, 10
    3b30:	6409      	cmplt      	r2, r0
    3b32:	0f63      	bf      	0x39f8	// 39f8 <TK_Keymap_prog+0x2b8>
    3b34:	8b60      	ld.h      	r3, (r3, 0x0)
    3b36:	74cd      	zexth      	r3, r3
    3b38:	ae60      	st.h      	r3, (r6, 0x0)
    3b3a:	3300      	movi      	r3, 0
    3b3c:	0155      	lrw      	r2, 0x20000234	// 3e64 <TK_Keymap_prog+0x724>
    3b3e:	b260      	st.w      	r3, (r2, 0x0)
    3b40:	06e8      	br      	0x3910	// 3910 <TK_Keymap_prog+0x1d0>
    3b42:	9841      	ld.w      	r2, (r14, 0x4)
    3b44:	4461      	lsli      	r3, r4, 1
    3b46:	60c8      	addu      	r3, r2
    3b48:	8b60      	ld.h      	r3, (r3, 0x0)
    3b4a:	9840      	ld.w      	r2, (r14, 0x0)
    3b4c:	74cf      	sexth      	r3, r3
    3b4e:	7c9c      	mult      	r2, r7
    3b50:	64c9      	cmplt      	r2, r3
    3b52:	0f55      	bf      	0x39fc	// 39fc <TK_Keymap_prog+0x2bc>
    3b54:	3300      	movi      	r3, 0
    3b56:	015b      	lrw      	r2, 0x20000234	// 3e64 <TK_Keymap_prog+0x724>
    3b58:	2b01      	subi      	r3, 2
    3b5a:	9220      	ld.w      	r1, (r2, 0x0)
    3b5c:	70d3      	rotl      	r3, r4
    3b5e:	68c4      	and      	r3, r1
    3b60:	b260      	st.w      	r3, (r2, 0x0)
    3b62:	074d      	br      	0x39fc	// 39fc <TK_Keymap_prog+0x2bc>
    3b64:	649d      	cmplt      	r7, r2
    3b66:	0f4b      	bf      	0x39fc	// 39fc <TK_Keymap_prog+0x2bc>
    3b68:	015f      	lrw      	r2, 0x200002b2	// 3e68 <TK_Keymap_prog+0x728>
    3b6a:	8240      	ld.b      	r2, (r2, 0x0)
    3b6c:	7488      	zextb      	r2, r2
    3b6e:	3a40      	cmpnei      	r2, 0
    3b70:	b847      	st.w      	r2, (r14, 0x1c)
    3b72:	0b45      	bt      	0x39fc	// 39fc <TK_Keymap_prog+0x2bc>
    3b74:	0201      	lrw      	r0, 0x2000045c	// 3e6c <TK_Keymap_prog+0x72c>
    3b76:	6010      	addu      	r0, r4
    3b78:	8020      	ld.b      	r1, (r0, 0x0)
    3b7a:	2100      	addi      	r1, 1
    3b7c:	7444      	zextb      	r1, r1
    3b7e:	a020      	st.b      	r1, (r0, 0x0)
    3b80:	3600      	movi      	r6, 0
    3b82:	0223      	lrw      	r1, 0x2000030c	// 3e70 <TK_Keymap_prog+0x730>
    3b84:	6050      	addu      	r1, r4
    3b86:	a1c0      	st.b      	r6, (r1, 0x0)
    3b88:	0224      	lrw      	r1, 0x20000336	// 3e74 <TK_Keymap_prog+0x734>
    3b8a:	6050      	addu      	r1, r4
    3b8c:	a1c0      	st.b      	r6, (r1, 0x0)
    3b8e:	0224      	lrw      	r1, 0x2000042c	// 3e78 <TK_Keymap_prog+0x738>
    3b90:	6050      	addu      	r1, r4
    3b92:	a1c0      	st.b      	r6, (r1, 0x0)
    3b94:	8020      	ld.b      	r1, (r0, 0x0)
    3b96:	98c3      	ld.w      	r6, (r14, 0xc)
    3b98:	6458      	cmphs      	r6, r1
    3b9a:	0b31      	bt      	0x39fc	// 39fc <TK_Keymap_prog+0x2bc>
    3b9c:	3d40      	cmpnei      	r5, 0
    3b9e:	0808      	bt      	0x3bae	// 3bae <TK_Keymap_prog+0x46e>
    3ba0:	024e      	lrw      	r2, 0x20000234	// 3e64 <TK_Keymap_prog+0x724>
    3ba2:	9260      	ld.w      	r3, (r2, 0x0)
    3ba4:	3b40      	cmpnei      	r3, 0
    3ba6:	0823      	bt      	0x3bec	// 3bec <TK_Keymap_prog+0x4ac>
    3ba8:	9220      	ld.w      	r1, (r2, 0x0)
    3baa:	3301      	movi      	r3, 1
    3bac:	0406      	br      	0x3bb8	// 3bb8 <TK_Keymap_prog+0x478>
    3bae:	3d41      	cmpnei      	r5, 1
    3bb0:	0808      	bt      	0x3bc0	// 3bc0 <TK_Keymap_prog+0x480>
    3bb2:	0252      	lrw      	r2, 0x20000234	// 3e64 <TK_Keymap_prog+0x724>
    3bb4:	6cd7      	mov      	r3, r5
    3bb6:	9220      	ld.w      	r1, (r2, 0x0)
    3bb8:	70d0      	lsl      	r3, r4
    3bba:	6cc4      	or      	r3, r1
    3bbc:	b260      	st.w      	r3, (r2, 0x0)
    3bbe:	0417      	br      	0x3bec	// 3bec <TK_Keymap_prog+0x4ac>
    3bc0:	3d42      	cmpnei      	r5, 2
    3bc2:	0942      	bt      	0x3e46	// 3e46 <TK_Keymap_prog+0x706>
    3bc4:	8bc0      	ld.h      	r6, (r3, 0x0)
    3bc6:	745b      	sexth      	r1, r6
    3bc8:	02d9      	lrw      	r6, 0x20000520	// 3e60 <TK_Keymap_prog+0x720>
    3bca:	6c87      	mov      	r2, r1
    3bcc:	8e20      	ld.h      	r1, (r6, 0x0)
    3bce:	7445      	zexth      	r1, r1
    3bd0:	2109      	addi      	r1, 10
    3bd2:	6485      	cmplt      	r1, r2
    3bd4:	0c0c      	bf      	0x3bec	// 3bec <TK_Keymap_prog+0x4ac>
    3bd6:	8b60      	ld.h      	r3, (r3, 0x0)
    3bd8:	74cd      	zexth      	r3, r3
    3bda:	ae60      	st.h      	r3, (r6, 0x0)
    3bdc:	9867      	ld.w      	r3, (r14, 0x1c)
    3bde:	023d      	lrw      	r1, 0x20000234	// 3e64 <TK_Keymap_prog+0x724>
    3be0:	b160      	st.w      	r3, (r1, 0x0)
    3be2:	3301      	movi      	r3, 1
    3be4:	9140      	ld.w      	r2, (r1, 0x0)
    3be6:	70d0      	lsl      	r3, r4
    3be8:	6cc8      	or      	r3, r2
    3bea:	b160      	st.w      	r3, (r1, 0x0)
    3bec:	3300      	movi      	r3, 0
    3bee:	a060      	st.b      	r3, (r0, 0x0)
    3bf0:	0706      	br      	0x39fc	// 39fc <TK_Keymap_prog+0x2bc>
    3bf2:	3d41      	cmpnei      	r5, 1
    3bf4:	0830      	bt      	0x3c54	// 3c54 <TK_Keymap_prog+0x514>
    3bf6:	0345      	lrw      	r2, 0x20000308	// 3e5c <TK_Keymap_prog+0x71c>
    3bf8:	6cd7      	mov      	r3, r5
    3bfa:	9200      	ld.w      	r0, (r2, 0x0)
    3bfc:	70d0      	lsl      	r3, r4
    3bfe:	6cc0      	or      	r3, r0
    3c00:	b260      	st.w      	r3, (r2, 0x0)
    3c02:	6c03      	mov      	r0, r0
    3c04:	3300      	movi      	r3, 0
    3c06:	a160      	st.b      	r3, (r1, 0x0)
    3c08:	4461      	lsli      	r3, r4, 1
    3c0a:	9842      	ld.w      	r2, (r14, 0x8)
    3c0c:	608c      	addu      	r2, r3
    3c0e:	8a60      	ld.h      	r3, (r2, 0x0)
    3c10:	74cf      	sexth      	r3, r3
    3c12:	9845      	ld.w      	r2, (r14, 0x14)
    3c14:	648d      	cmplt      	r3, r2
    3c16:	0c18      	bf      	0x3c46	// 3c46 <TK_Keymap_prog+0x506>
    3c18:	0346      	lrw      	r2, 0x2000046d	// 3e7c <TK_Keymap_prog+0x73c>
    3c1a:	6090      	addu      	r2, r4
    3c1c:	8260      	ld.b      	r3, (r2, 0x0)
    3c1e:	2300      	addi      	r3, 1
    3c20:	74cc      	zextb      	r3, r3
    3c22:	a260      	st.b      	r3, (r2, 0x0)
    3c24:	3100      	movi      	r1, 0
    3c26:	0368      	lrw      	r3, 0x20000414	// 3e80 <TK_Keymap_prog+0x740>
    3c28:	60d0      	addu      	r3, r4
    3c2a:	a320      	st.b      	r1, (r3, 0x0)
    3c2c:	8260      	ld.b      	r3, (r2, 0x0)
    3c2e:	9826      	ld.w      	r1, (r14, 0x18)
    3c30:	64c4      	cmphs      	r1, r3
    3c32:	080a      	bt      	0x3c46	// 3c46 <TK_Keymap_prog+0x506>
    3c34:	3300      	movi      	r3, 0
    3c36:	0335      	lrw      	r1, 0x20000308	// 3e5c <TK_Keymap_prog+0x71c>
    3c38:	2b01      	subi      	r3, 2
    3c3a:	9100      	ld.w      	r0, (r1, 0x0)
    3c3c:	70d3      	rotl      	r3, r4
    3c3e:	68c0      	and      	r3, r0
    3c40:	b160      	st.w      	r3, (r1, 0x0)
    3c42:	3300      	movi      	r3, 0
    3c44:	a260      	st.b      	r3, (r2, 0x0)
    3c46:	2400      	addi      	r4, 1
    3c48:	3c51      	cmpnei      	r4, 17
    3c4a:	0c03      	bf      	0x3c50	// 3c50 <TK_Keymap_prog+0x510>
    3c4c:	e800fd8d 	br      	0x3766	// 3766 <TK_Keymap_prog+0x26>
    3c50:	140a      	addi      	r14, r14, 40
    3c52:	1494      	pop      	r4-r7, r15
    3c54:	3d42      	cmpnei      	r5, 2
    3c56:	0948      	bt      	0x3ee6	// 3ee6 <TK_Keymap_prog+0x7a6>
    3c58:	03d4      	lrw      	r6, 0x200002d6	// 3e84 <TK_Keymap_prog+0x744>
    3c5a:	8b00      	ld.h      	r0, (r3, 0x0)
    3c5c:	8e40      	ld.h      	r2, (r6, 0x0)
    3c5e:	7489      	zexth      	r2, r2
    3c60:	7403      	sexth      	r0, r0
    3c62:	2209      	addi      	r2, 10
    3c64:	6409      	cmplt      	r2, r0
    3c66:	0fcf      	bf      	0x3c04	// 3c04 <TK_Keymap_prog+0x4c4>
    3c68:	8b60      	ld.h      	r3, (r3, 0x0)
    3c6a:	74cd      	zexth      	r3, r3
    3c6c:	ae60      	st.h      	r3, (r6, 0x0)
    3c6e:	3300      	movi      	r3, 0
    3c70:	135b      	lrw      	r2, 0x20000308	// 3e5c <TK_Keymap_prog+0x71c>
    3c72:	b260      	st.w      	r3, (r2, 0x0)
    3c74:	0750      	br      	0x3b14	// 3b14 <TK_Keymap_prog+0x3d4>
    3c76:	4461      	lsli      	r3, r4, 1
    3c78:	9842      	ld.w      	r2, (r14, 0x8)
    3c7a:	60c8      	addu      	r3, r2
    3c7c:	8b60      	ld.h      	r3, (r3, 0x0)
    3c7e:	74cf      	sexth      	r3, r3
    3c80:	64c5      	cmplt      	r1, r3
    3c82:	0fc3      	bf      	0x3c08	// 3c08 <TK_Keymap_prog+0x4c8>
    3c84:	3300      	movi      	r3, 0
    3c86:	1356      	lrw      	r2, 0x20000308	// 3e5c <TK_Keymap_prog+0x71c>
    3c88:	2b01      	subi      	r3, 2
    3c8a:	9220      	ld.w      	r1, (r2, 0x0)
    3c8c:	70d3      	rotl      	r3, r4
    3c8e:	68c4      	and      	r3, r1
    3c90:	b260      	st.w      	r3, (r2, 0x0)
    3c92:	07bb      	br      	0x3c08	// 3c08 <TK_Keymap_prog+0x4c8>
    3c94:	649d      	cmplt      	r7, r2
    3c96:	0fb9      	bf      	0x3c08	// 3c08 <TK_Keymap_prog+0x4c8>
    3c98:	1354      	lrw      	r2, 0x200002b2	// 3e68 <TK_Keymap_prog+0x728>
    3c9a:	8240      	ld.b      	r2, (r2, 0x0)
    3c9c:	7488      	zextb      	r2, r2
    3c9e:	3a40      	cmpnei      	r2, 0
    3ca0:	0bb4      	bt      	0x3c08	// 3c08 <TK_Keymap_prog+0x4c8>
    3ca2:	1318      	lrw      	r0, 0x20000414	// 3e80 <TK_Keymap_prog+0x740>
    3ca4:	6010      	addu      	r0, r4
    3ca6:	8020      	ld.b      	r1, (r0, 0x0)
    3ca8:	2100      	addi      	r1, 1
    3caa:	7444      	zextb      	r1, r1
    3cac:	a020      	st.b      	r1, (r0, 0x0)
    3cae:	3600      	movi      	r6, 0
    3cb0:	1333      	lrw      	r1, 0x2000046d	// 3e7c <TK_Keymap_prog+0x73c>
    3cb2:	6050      	addu      	r1, r4
    3cb4:	a1c0      	st.b      	r6, (r1, 0x0)
    3cb6:	1335      	lrw      	r1, 0x20000222	// 3e88 <TK_Keymap_prog+0x748>
    3cb8:	6050      	addu      	r1, r4
    3cba:	a1c0      	st.b      	r6, (r1, 0x0)
    3cbc:	1334      	lrw      	r1, 0x20000324	// 3e8c <TK_Keymap_prog+0x74c>
    3cbe:	6050      	addu      	r1, r4
    3cc0:	a1c0      	st.b      	r6, (r1, 0x0)
    3cc2:	8020      	ld.b      	r1, (r0, 0x0)
    3cc4:	98c3      	ld.w      	r6, (r14, 0xc)
    3cc6:	6458      	cmphs      	r6, r1
    3cc8:	0ba0      	bt      	0x3c08	// 3c08 <TK_Keymap_prog+0x4c8>
    3cca:	3d40      	cmpnei      	r5, 0
    3ccc:	0808      	bt      	0x3cdc	// 3cdc <TK_Keymap_prog+0x59c>
    3cce:	1344      	lrw      	r2, 0x20000308	// 3e5c <TK_Keymap_prog+0x71c>
    3cd0:	9260      	ld.w      	r3, (r2, 0x0)
    3cd2:	3b40      	cmpnei      	r3, 0
    3cd4:	0821      	bt      	0x3d16	// 3d16 <TK_Keymap_prog+0x5d6>
    3cd6:	9220      	ld.w      	r1, (r2, 0x0)
    3cd8:	3301      	movi      	r3, 1
    3cda:	0406      	br      	0x3ce6	// 3ce6 <TK_Keymap_prog+0x5a6>
    3cdc:	3d41      	cmpnei      	r5, 1
    3cde:	0808      	bt      	0x3cee	// 3cee <TK_Keymap_prog+0x5ae>
    3ce0:	125f      	lrw      	r2, 0x20000308	// 3e5c <TK_Keymap_prog+0x71c>
    3ce2:	6cd7      	mov      	r3, r5
    3ce4:	9220      	ld.w      	r1, (r2, 0x0)
    3ce6:	70d0      	lsl      	r3, r4
    3ce8:	6cc4      	or      	r3, r1
    3cea:	b260      	st.w      	r3, (r2, 0x0)
    3cec:	0415      	br      	0x3d16	// 3d16 <TK_Keymap_prog+0x5d6>
    3cee:	3d42      	cmpnei      	r5, 2
    3cf0:	092a      	bt      	0x3f44	// 3f44 <TK_Keymap_prog+0x804>
    3cf2:	13e5      	lrw      	r7, 0x200002d6	// 3e84 <TK_Keymap_prog+0x744>
    3cf4:	8bc0      	ld.h      	r6, (r3, 0x0)
    3cf6:	8f20      	ld.h      	r1, (r7, 0x0)
    3cf8:	7445      	zexth      	r1, r1
    3cfa:	759b      	sexth      	r6, r6
    3cfc:	2109      	addi      	r1, 10
    3cfe:	6585      	cmplt      	r1, r6
    3d00:	0c0b      	bf      	0x3d16	// 3d16 <TK_Keymap_prog+0x5d6>
    3d02:	8b60      	ld.h      	r3, (r3, 0x0)
    3d04:	1236      	lrw      	r1, 0x20000308	// 3e5c <TK_Keymap_prog+0x71c>
    3d06:	74cd      	zexth      	r3, r3
    3d08:	af60      	st.h      	r3, (r7, 0x0)
    3d0a:	b140      	st.w      	r2, (r1, 0x0)
    3d0c:	3301      	movi      	r3, 1
    3d0e:	9140      	ld.w      	r2, (r1, 0x0)
    3d10:	70d0      	lsl      	r3, r4
    3d12:	6cc8      	or      	r3, r2
    3d14:	b160      	st.w      	r3, (r1, 0x0)
    3d16:	3300      	movi      	r3, 0
    3d18:	a060      	st.b      	r3, (r0, 0x0)
    3d1a:	0777      	br      	0x3c08	// 3c08 <TK_Keymap_prog+0x4c8>
    3d1c:	3d43      	cmpnei      	r5, 3
    3d1e:	0c03      	bf      	0x3d24	// 3d24 <TK_Keymap_prog+0x5e4>
    3d20:	e800fda6 	br      	0x386c	// 386c <TK_Keymap_prog+0x12c>
    3d24:	125b      	lrw      	r2, 0x2000043e	// 3e90 <TK_Keymap_prog+0x750>
    3d26:	8bc0      	ld.h      	r6, (r3, 0x0)
    3d28:	8a00      	ld.h      	r0, (r2, 0x0)
    3d2a:	7401      	zexth      	r0, r0
    3d2c:	759b      	sexth      	r6, r6
    3d2e:	2009      	addi      	r0, 10
    3d30:	6581      	cmplt      	r0, r6
    3d32:	0c0c      	bf      	0x3d4a	// 3d4a <TK_Keymap_prog+0x60a>
    3d34:	8b60      	ld.h      	r3, (r3, 0x0)
    3d36:	74cd      	zexth      	r3, r3
    3d38:	aa60      	st.h      	r3, (r2, 0x0)
    3d3a:	3300      	movi      	r3, 0
    3d3c:	1216      	lrw      	r0, 0x20000298	// 3e94 <TK_Keymap_prog+0x754>
    3d3e:	b060      	st.w      	r3, (r0, 0x0)
    3d40:	3301      	movi      	r3, 1
    3d42:	90c0      	ld.w      	r6, (r0, 0x0)
    3d44:	70d0      	lsl      	r3, r4
    3d46:	6cd8      	or      	r3, r6
    3d48:	b060      	st.w      	r3, (r0, 0x0)
    3d4a:	9804      	ld.w      	r0, (r14, 0x10)
    3d4c:	4461      	lsli      	r3, r4, 1
    3d4e:	60c0      	addu      	r3, r0
    3d50:	8b00      	ld.h      	r0, (r3, 0x0)
    3d52:	8a40      	ld.h      	r2, (r2, 0x0)
    3d54:	7489      	zexth      	r2, r2
    3d56:	7403      	sexth      	r0, r0
    3d58:	2a04      	subi      	r2, 5
    3d5a:	6481      	cmplt      	r0, r2
    3d5c:	0803      	bt      	0x3d62	// 3d62 <TK_Keymap_prog+0x622>
    3d5e:	e800fd87 	br      	0x386c	// 386c <TK_Keymap_prog+0x12c>
    3d62:	12ce      	lrw      	r6, 0x20000260	// 3e98 <TK_Keymap_prog+0x758>
    3d64:	8b00      	ld.h      	r0, (r3, 0x0)
    3d66:	8e40      	ld.h      	r2, (r6, 0x0)
    3d68:	7489      	zexth      	r2, r2
    3d6a:	7403      	sexth      	r0, r0
    3d6c:	2204      	addi      	r2, 5
    3d6e:	6409      	cmplt      	r2, r0
    3d70:	0803      	bt      	0x3d76	// 3d76 <TK_Keymap_prog+0x636>
    3d72:	e800fd7d 	br      	0x386c	// 386c <TK_Keymap_prog+0x12c>
    3d76:	8b60      	ld.h      	r3, (r3, 0x0)
    3d78:	74cd      	zexth      	r3, r3
    3d7a:	ae60      	st.h      	r3, (r6, 0x0)
    3d7c:	1246      	lrw      	r2, 0x20000298	// 3e94 <TK_Keymap_prog+0x754>
    3d7e:	e800fd63 	br      	0x3844	// 3844 <TK_Keymap_prog+0x104>
    3d82:	3d43      	cmpnei      	r5, 3
    3d84:	0c02      	bf      	0x3d88	// 3d88 <TK_Keymap_prog+0x648>
    3d86:	061d      	br      	0x39c0	// 39c0 <TK_Keymap_prog+0x280>
    3d88:	12c2      	lrw      	r6, 0x2000043e	// 3e90 <TK_Keymap_prog+0x750>
    3d8a:	8ae0      	ld.h      	r7, (r2, 0x0)
    3d8c:	8e20      	ld.h      	r1, (r6, 0x0)
    3d8e:	7445      	zexth      	r1, r1
    3d90:	75df      	sexth      	r7, r7
    3d92:	2109      	addi      	r1, 10
    3d94:	65c5      	cmplt      	r1, r7
    3d96:	0c0b      	bf      	0x3dac	// 3dac <TK_Keymap_prog+0x66c>
    3d98:	8a40      	ld.h      	r2, (r2, 0x0)
    3d9a:	7489      	zexth      	r2, r2
    3d9c:	ae40      	st.h      	r2, (r6, 0x0)
    3d9e:	115e      	lrw      	r2, 0x20000298	// 3e94 <TK_Keymap_prog+0x754>
    3da0:	b260      	st.w      	r3, (r2, 0x0)
    3da2:	3301      	movi      	r3, 1
    3da4:	9220      	ld.w      	r1, (r2, 0x0)
    3da6:	70d0      	lsl      	r3, r4
    3da8:	6cc4      	or      	r3, r1
    3daa:	b260      	st.w      	r3, (r2, 0x0)
    3dac:	9844      	ld.w      	r2, (r14, 0x10)
    3dae:	4461      	lsli      	r3, r4, 1
    3db0:	60c8      	addu      	r3, r2
    3db2:	8b40      	ld.h      	r2, (r3, 0x0)
    3db4:	8e20      	ld.h      	r1, (r6, 0x0)
    3db6:	7445      	zexth      	r1, r1
    3db8:	748b      	sexth      	r2, r2
    3dba:	2904      	subi      	r1, 5
    3dbc:	6449      	cmplt      	r2, r1
    3dbe:	0802      	bt      	0x3dc2	// 3dc2 <TK_Keymap_prog+0x682>
    3dc0:	0600      	br      	0x39c0	// 39c0 <TK_Keymap_prog+0x280>
    3dc2:	11d6      	lrw      	r6, 0x20000260	// 3e98 <TK_Keymap_prog+0x758>
    3dc4:	8b20      	ld.h      	r1, (r3, 0x0)
    3dc6:	8e40      	ld.h      	r2, (r6, 0x0)
    3dc8:	7489      	zexth      	r2, r2
    3dca:	7447      	sexth      	r1, r1
    3dcc:	2204      	addi      	r2, 5
    3dce:	6449      	cmplt      	r2, r1
    3dd0:	0803      	bt      	0x3dd6	// 3dd6 <TK_Keymap_prog+0x696>
    3dd2:	e800fdf7 	br      	0x39c0	// 39c0 <TK_Keymap_prog+0x280>
    3dd6:	8b60      	ld.h      	r3, (r3, 0x0)
    3dd8:	74cd      	zexth      	r3, r3
    3dda:	ae60      	st.h      	r3, (r6, 0x0)
    3ddc:	114e      	lrw      	r2, 0x20000298	// 3e94 <TK_Keymap_prog+0x754>
    3dde:	e800fde6 	br      	0x39aa	// 39aa <TK_Keymap_prog+0x26a>
    3de2:	3d43      	cmpnei      	r5, 3
    3de4:	0c02      	bf      	0x3de8	// 3de8 <TK_Keymap_prog+0x6a8>
    3de6:	0609      	br      	0x39f8	// 39f8 <TK_Keymap_prog+0x2b8>
    3de8:	105e      	lrw      	r2, 0x20000520	// 3e60 <TK_Keymap_prog+0x720>
    3dea:	8bc0      	ld.h      	r6, (r3, 0x0)
    3dec:	8a00      	ld.h      	r0, (r2, 0x0)
    3dee:	7401      	zexth      	r0, r0
    3df0:	759b      	sexth      	r6, r6
    3df2:	2009      	addi      	r0, 10
    3df4:	6581      	cmplt      	r0, r6
    3df6:	0c0c      	bf      	0x3e0e	// 3e0e <TK_Keymap_prog+0x6ce>
    3df8:	8b60      	ld.h      	r3, (r3, 0x0)
    3dfa:	74cd      	zexth      	r3, r3
    3dfc:	aa60      	st.h      	r3, (r2, 0x0)
    3dfe:	3300      	movi      	r3, 0
    3e00:	1019      	lrw      	r0, 0x20000234	// 3e64 <TK_Keymap_prog+0x724>
    3e02:	b060      	st.w      	r3, (r0, 0x0)
    3e04:	3301      	movi      	r3, 1
    3e06:	90c0      	ld.w      	r6, (r0, 0x0)
    3e08:	70d0      	lsl      	r3, r4
    3e0a:	6cd8      	or      	r3, r6
    3e0c:	b060      	st.w      	r3, (r0, 0x0)
    3e0e:	9801      	ld.w      	r0, (r14, 0x4)
    3e10:	4461      	lsli      	r3, r4, 1
    3e12:	60c0      	addu      	r3, r0
    3e14:	8b00      	ld.h      	r0, (r3, 0x0)
    3e16:	8a40      	ld.h      	r2, (r2, 0x0)
    3e18:	7489      	zexth      	r2, r2
    3e1a:	7403      	sexth      	r0, r0
    3e1c:	2a04      	subi      	r2, 5
    3e1e:	6481      	cmplt      	r0, r2
    3e20:	0803      	bt      	0x3e26	// 3e26 <TK_Keymap_prog+0x6e6>
    3e22:	e800fdeb 	br      	0x39f8	// 39f8 <TK_Keymap_prog+0x2b8>
    3e26:	10de      	lrw      	r6, 0x20000442	// 3e9c <TK_Keymap_prog+0x75c>
    3e28:	8b00      	ld.h      	r0, (r3, 0x0)
    3e2a:	8e40      	ld.h      	r2, (r6, 0x0)
    3e2c:	7489      	zexth      	r2, r2
    3e2e:	7403      	sexth      	r0, r0
    3e30:	2204      	addi      	r2, 5
    3e32:	6409      	cmplt      	r2, r0
    3e34:	0803      	bt      	0x3e3a	// 3e3a <TK_Keymap_prog+0x6fa>
    3e36:	e800fde1 	br      	0x39f8	// 39f8 <TK_Keymap_prog+0x2b8>
    3e3a:	8b60      	ld.h      	r3, (r3, 0x0)
    3e3c:	74cd      	zexth      	r3, r3
    3e3e:	ae60      	st.h      	r3, (r6, 0x0)
    3e40:	1049      	lrw      	r2, 0x20000234	// 3e64 <TK_Keymap_prog+0x724>
    3e42:	e800fd67 	br      	0x3910	// 3910 <TK_Keymap_prog+0x1d0>
    3e46:	3d43      	cmpnei      	r5, 3
    3e48:	0ad2      	bt      	0x3bec	// 3bec <TK_Keymap_prog+0x4ac>
    3e4a:	8b20      	ld.h      	r1, (r3, 0x0)
    3e4c:	10c5      	lrw      	r6, 0x20000520	// 3e60 <TK_Keymap_prog+0x720>
    3e4e:	7487      	sexth      	r2, r1
    3e50:	8e20      	ld.h      	r1, (r6, 0x0)
    3e52:	7445      	zexth      	r1, r1
    3e54:	2109      	addi      	r1, 10
    3e56:	6485      	cmplt      	r1, r2
    3e58:	0c2f      	bf      	0x3eb6	// 3eb6 <TK_Keymap_prog+0x776>
    3e5a:	0423      	br      	0x3ea0	// 3ea0 <TK_Keymap_prog+0x760>
    3e5c:	20000308 	.long	0x20000308
    3e60:	20000520 	.long	0x20000520
    3e64:	20000234 	.long	0x20000234
    3e68:	200002b2 	.long	0x200002b2
    3e6c:	2000045c 	.long	0x2000045c
    3e70:	2000030c 	.long	0x2000030c
    3e74:	20000336 	.long	0x20000336
    3e78:	2000042c 	.long	0x2000042c
    3e7c:	2000046d 	.long	0x2000046d
    3e80:	20000414 	.long	0x20000414
    3e84:	200002d6 	.long	0x200002d6
    3e88:	20000222 	.long	0x20000222
    3e8c:	20000324 	.long	0x20000324
    3e90:	2000043e 	.long	0x2000043e
    3e94:	20000298 	.long	0x20000298
    3e98:	20000260 	.long	0x20000260
    3e9c:	20000442 	.long	0x20000442
    3ea0:	8b60      	ld.h      	r3, (r3, 0x0)
    3ea2:	74cd      	zexth      	r3, r3
    3ea4:	ae60      	st.h      	r3, (r6, 0x0)
    3ea6:	9867      	ld.w      	r3, (r14, 0x1c)
    3ea8:	113d      	lrw      	r1, 0x20000234	// 3f9c <TK_Keymap_prog+0x85c>
    3eaa:	b160      	st.w      	r3, (r1, 0x0)
    3eac:	3301      	movi      	r3, 1
    3eae:	9140      	ld.w      	r2, (r1, 0x0)
    3eb0:	70d0      	lsl      	r3, r4
    3eb2:	6cc8      	or      	r3, r2
    3eb4:	b160      	st.w      	r3, (r1, 0x0)
    3eb6:	9841      	ld.w      	r2, (r14, 0x4)
    3eb8:	4461      	lsli      	r3, r4, 1
    3eba:	60c8      	addu      	r3, r2
    3ebc:	8b40      	ld.h      	r2, (r3, 0x0)
    3ebe:	8e20      	ld.h      	r1, (r6, 0x0)
    3ec0:	7445      	zexth      	r1, r1
    3ec2:	748b      	sexth      	r2, r2
    3ec4:	2904      	subi      	r1, 5
    3ec6:	6449      	cmplt      	r2, r1
    3ec8:	0e92      	bf      	0x3bec	// 3bec <TK_Keymap_prog+0x4ac>
    3eca:	11d6      	lrw      	r6, 0x20000442	// 3fa0 <TK_Keymap_prog+0x860>
    3ecc:	8b20      	ld.h      	r1, (r3, 0x0)
    3ece:	8e40      	ld.h      	r2, (r6, 0x0)
    3ed0:	7489      	zexth      	r2, r2
    3ed2:	7447      	sexth      	r1, r1
    3ed4:	2204      	addi      	r2, 5
    3ed6:	6449      	cmplt      	r2, r1
    3ed8:	0802      	bt      	0x3edc	// 3edc <TK_Keymap_prog+0x79c>
    3eda:	0689      	br      	0x3bec	// 3bec <TK_Keymap_prog+0x4ac>
    3edc:	8b60      	ld.h      	r3, (r3, 0x0)
    3ede:	74cd      	zexth      	r3, r3
    3ee0:	ae60      	st.h      	r3, (r6, 0x0)
    3ee2:	114f      	lrw      	r2, 0x20000234	// 3f9c <TK_Keymap_prog+0x85c>
    3ee4:	0662      	br      	0x3ba8	// 3ba8 <TK_Keymap_prog+0x468>
    3ee6:	3d43      	cmpnei      	r5, 3
    3ee8:	0a8e      	bt      	0x3c04	// 3c04 <TK_Keymap_prog+0x4c4>
    3eea:	114f      	lrw      	r2, 0x200002d6	// 3fa4 <TK_Keymap_prog+0x864>
    3eec:	8bc0      	ld.h      	r6, (r3, 0x0)
    3eee:	8a00      	ld.h      	r0, (r2, 0x0)
    3ef0:	7401      	zexth      	r0, r0
    3ef2:	759b      	sexth      	r6, r6
    3ef4:	2009      	addi      	r0, 10
    3ef6:	6581      	cmplt      	r0, r6
    3ef8:	0c0c      	bf      	0x3f10	// 3f10 <TK_Keymap_prog+0x7d0>
    3efa:	8b60      	ld.h      	r3, (r3, 0x0)
    3efc:	74cd      	zexth      	r3, r3
    3efe:	aa60      	st.h      	r3, (r2, 0x0)
    3f00:	3300      	movi      	r3, 0
    3f02:	110a      	lrw      	r0, 0x20000308	// 3fa8 <TK_Keymap_prog+0x868>
    3f04:	b060      	st.w      	r3, (r0, 0x0)
    3f06:	3301      	movi      	r3, 1
    3f08:	90c0      	ld.w      	r6, (r0, 0x0)
    3f0a:	70d0      	lsl      	r3, r4
    3f0c:	6cd8      	or      	r3, r6
    3f0e:	b060      	st.w      	r3, (r0, 0x0)
    3f10:	9802      	ld.w      	r0, (r14, 0x8)
    3f12:	4461      	lsli      	r3, r4, 1
    3f14:	60c0      	addu      	r3, r0
    3f16:	8b00      	ld.h      	r0, (r3, 0x0)
    3f18:	8a40      	ld.h      	r2, (r2, 0x0)
    3f1a:	7489      	zexth      	r2, r2
    3f1c:	7403      	sexth      	r0, r0
    3f1e:	2a04      	subi      	r2, 5
    3f20:	6481      	cmplt      	r0, r2
    3f22:	0802      	bt      	0x3f26	// 3f26 <TK_Keymap_prog+0x7e6>
    3f24:	0670      	br      	0x3c04	// 3c04 <TK_Keymap_prog+0x4c4>
    3f26:	11c2      	lrw      	r6, 0x20000394	// 3fac <TK_Keymap_prog+0x86c>
    3f28:	8b00      	ld.h      	r0, (r3, 0x0)
    3f2a:	8e40      	ld.h      	r2, (r6, 0x0)
    3f2c:	7489      	zexth      	r2, r2
    3f2e:	7403      	sexth      	r0, r0
    3f30:	2204      	addi      	r2, 5
    3f32:	6409      	cmplt      	r2, r0
    3f34:	0802      	bt      	0x3f38	// 3f38 <TK_Keymap_prog+0x7f8>
    3f36:	0667      	br      	0x3c04	// 3c04 <TK_Keymap_prog+0x4c4>
    3f38:	8b60      	ld.h      	r3, (r3, 0x0)
    3f3a:	74cd      	zexth      	r3, r3
    3f3c:	ae60      	st.h      	r3, (r6, 0x0)
    3f3e:	105b      	lrw      	r2, 0x20000308	// 3fa8 <TK_Keymap_prog+0x868>
    3f40:	e800fdea 	br      	0x3b14	// 3b14 <TK_Keymap_prog+0x3d4>
    3f44:	3d43      	cmpnei      	r5, 3
    3f46:	0ae8      	bt      	0x3d16	// 3d16 <TK_Keymap_prog+0x5d6>
    3f48:	10d7      	lrw      	r6, 0x200002d6	// 3fa4 <TK_Keymap_prog+0x864>
    3f4a:	8be0      	ld.h      	r7, (r3, 0x0)
    3f4c:	8e20      	ld.h      	r1, (r6, 0x0)
    3f4e:	7445      	zexth      	r1, r1
    3f50:	75df      	sexth      	r7, r7
    3f52:	2109      	addi      	r1, 10
    3f54:	65c5      	cmplt      	r1, r7
    3f56:	0c0b      	bf      	0x3f6c	// 3f6c <TK_Keymap_prog+0x82c>
    3f58:	8b60      	ld.h      	r3, (r3, 0x0)
    3f5a:	1034      	lrw      	r1, 0x20000308	// 3fa8 <TK_Keymap_prog+0x868>
    3f5c:	74cd      	zexth      	r3, r3
    3f5e:	ae60      	st.h      	r3, (r6, 0x0)
    3f60:	b140      	st.w      	r2, (r1, 0x0)
    3f62:	3301      	movi      	r3, 1
    3f64:	9140      	ld.w      	r2, (r1, 0x0)
    3f66:	70d0      	lsl      	r3, r4
    3f68:	6cc8      	or      	r3, r2
    3f6a:	b160      	st.w      	r3, (r1, 0x0)
    3f6c:	9842      	ld.w      	r2, (r14, 0x8)
    3f6e:	4461      	lsli      	r3, r4, 1
    3f70:	60c8      	addu      	r3, r2
    3f72:	8b40      	ld.h      	r2, (r3, 0x0)
    3f74:	8e20      	ld.h      	r1, (r6, 0x0)
    3f76:	7445      	zexth      	r1, r1
    3f78:	748b      	sexth      	r2, r2
    3f7a:	2904      	subi      	r1, 5
    3f7c:	6449      	cmplt      	r2, r1
    3f7e:	0ecc      	bf      	0x3d16	// 3d16 <TK_Keymap_prog+0x5d6>
    3f80:	10cb      	lrw      	r6, 0x20000394	// 3fac <TK_Keymap_prog+0x86c>
    3f82:	8b20      	ld.h      	r1, (r3, 0x0)
    3f84:	8e40      	ld.h      	r2, (r6, 0x0)
    3f86:	7489      	zexth      	r2, r2
    3f88:	7447      	sexth      	r1, r1
    3f8a:	2204      	addi      	r2, 5
    3f8c:	6449      	cmplt      	r2, r1
    3f8e:	0ec4      	bf      	0x3d16	// 3d16 <TK_Keymap_prog+0x5d6>
    3f90:	8b60      	ld.h      	r3, (r3, 0x0)
    3f92:	74cd      	zexth      	r3, r3
    3f94:	ae60      	st.h      	r3, (r6, 0x0)
    3f96:	1045      	lrw      	r2, 0x20000308	// 3fa8 <TK_Keymap_prog+0x868>
    3f98:	069f      	br      	0x3cd6	// 3cd6 <TK_Keymap_prog+0x596>
    3f9a:	0000      	bkpt
    3f9c:	20000234 	.long	0x20000234
    3fa0:	20000442 	.long	0x20000442
    3fa4:	200002d6 	.long	0x200002d6
    3fa8:	20000308 	.long	0x20000308
    3fac:	20000394 	.long	0x20000394

Disassembly of section .text.TK_overflow_predict:

00003fb0 <TK_overflow_predict>:
    3fb0:	14d4      	push      	r4-r7, r15
    3fb2:	1422      	subi      	r14, r14, 8
    3fb4:	113c      	lrw      	r1, 0x20000068	// 40a4 <TK_overflow_predict+0xf4>
    3fb6:	8164      	ld.b      	r3, (r1, 0x4)
    3fb8:	3b41      	cmpnei      	r3, 1
    3fba:	0823      	bt      	0x4000	// 4000 <TK_overflow_predict+0x50>
    3fbc:	115b      	lrw      	r2, 0x2000040e	// 40a8 <TK_overflow_predict+0xf8>
    3fbe:	8260      	ld.b      	r3, (r2, 0x0)
    3fc0:	2300      	addi      	r3, 1
    3fc2:	74cc      	zextb      	r3, r3
    3fc4:	a260      	st.b      	r3, (r2, 0x0)
    3fc6:	8260      	ld.b      	r3, (r2, 0x0)
    3fc8:	1119      	lrw      	r0, 0x20000144	// 40ac <TK_overflow_predict+0xfc>
    3fca:	8000      	ld.b      	r0, (r0, 0x0)
    3fcc:	64c0      	cmphs      	r0, r3
    3fce:	0819      	bt      	0x4000	// 4000 <TK_overflow_predict+0x50>
    3fd0:	3300      	movi      	r3, 0
    3fd2:	a260      	st.b      	r3, (r2, 0x0)
    3fd4:	11b7      	lrw      	r5, 0x2000031d	// 40b0 <TK_overflow_predict+0x100>
    3fd6:	8560      	ld.b      	r3, (r5, 0x0)
    3fd8:	3b40      	cmpnei      	r3, 0
    3fda:	0c15      	bf      	0x4004	// 4004 <TK_overflow_predict+0x54>
    3fdc:	8560      	ld.b      	r3, (r5, 0x0)
    3fde:	3b41      	cmpnei      	r3, 1
    3fe0:	0810      	bt      	0x4000	// 4000 <TK_overflow_predict+0x50>
    3fe2:	3300      	movi      	r3, 0
    3fe4:	a560      	st.b      	r3, (r5, 0x0)
    3fe6:	3200      	movi      	r2, 0
    3fe8:	1173      	lrw      	r3, 0x20000058	// 40b4 <TK_overflow_predict+0x104>
    3fea:	1114      	lrw      	r0, 0x20000440	// 40b8 <TK_overflow_predict+0x108>
    3fec:	11b4      	lrw      	r5, 0x20000484	// 40bc <TK_overflow_predict+0x10c>
    3fee:	11d5      	lrw      	r6, 0x2000011e	// 40c0 <TK_overflow_predict+0x110>
    3ff0:	9360      	ld.w      	r3, (r3, 0x0)
    3ff2:	b342      	st.w      	r2, (r3, 0x8)
    3ff4:	1174      	lrw      	r3, 0x20000054	// 40c4 <TK_overflow_predict+0x114>
    3ff6:	9380      	ld.w      	r4, (r3, 0x0)
    3ff8:	3300      	movi      	r3, 0
    3ffa:	8040      	ld.b      	r2, (r0, 0x0)
    3ffc:	648c      	cmphs      	r3, r2
    3ffe:	0c44      	bf      	0x4086	// 4086 <TK_overflow_predict+0xd6>
    4000:	1402      	addi      	r14, r14, 8
    4002:	1494      	pop      	r4-r7, r15
    4004:	5976      	addi      	r3, r1, 6
    4006:	3600      	movi      	r6, 0
    4008:	11f0      	lrw      	r7, 0x20000148	// 40c8 <TK_overflow_predict+0x118>
    400a:	b860      	st.w      	r3, (r14, 0x0)
    400c:	9760      	ld.w      	r3, (r7, 0x0)
    400e:	70d9      	lsr      	r3, r6
    4010:	3201      	movi      	r2, 1
    4012:	68c8      	and      	r3, r2
    4014:	3b40      	cmpnei      	r3, 0
    4016:	0c34      	bf      	0x407e	// 407e <TK_overflow_predict+0xce>
    4018:	4681      	lsli      	r4, r6, 1
    401a:	9860      	ld.w      	r3, (r14, 0x0)
    401c:	60d0      	addu      	r3, r4
    401e:	8b00      	ld.h      	r0, (r3, 0x0)
    4020:	e3ffeac0 	bsr      	0x15a0	// 15a0 <__floatunsidf>
    4024:	6cc7      	mov      	r3, r1
    4026:	3180      	movi      	r1, 128
    4028:	6c83      	mov      	r2, r0
    402a:	4137      	lsli      	r1, r1, 23
    402c:	3000      	movi      	r0, 0
    402e:	e3ffe0c3 	bsr      	0x1b4	// 1b4 <__GI_pow>
    4032:	1167      	lrw      	r3, 0x2000014e	// 40cc <TK_overflow_predict+0x11c>
    4034:	60d0      	addu      	r3, r4
    4036:	8b60      	ld.h      	r3, (r3, 0x0)
    4038:	4364      	lsli      	r3, r3, 4
    403a:	230e      	addi      	r3, 15
    403c:	b861      	st.w      	r3, (r14, 0x4)
    403e:	e3ffe669 	bsr      	0xd10	// d10 <__fixunsdfsi>
    4042:	9861      	ld.w      	r3, (r14, 0x4)
    4044:	7cc0      	mult      	r3, r0
    4046:	1143      	lrw      	r2, 0x200004b8	// 40d0 <TK_overflow_predict+0x120>
    4048:	740d      	zexth      	r0, r3
    404a:	6090      	addu      	r2, r4
    404c:	1162      	lrw      	r3, 0x20000522	// 40d4 <TK_overflow_predict+0x124>
    404e:	60d0      	addu      	r3, r4
    4050:	aa00      	st.h      	r0, (r2, 0x0)
    4052:	8b60      	ld.h      	r3, (r3, 0x0)
    4054:	8a00      	ld.h      	r0, (r2, 0x0)
    4056:	7401      	zexth      	r0, r0
    4058:	325f      	movi      	r2, 95
    405a:	74cd      	zexth      	r3, r3
    405c:	7c08      	mult      	r0, r2
    405e:	3164      	movi      	r1, 100
    4060:	b861      	st.w      	r3, (r14, 0x4)
    4062:	e3fffa87 	bsr      	0x3570	// 3570 <__divsi3>
    4066:	9861      	ld.w      	r3, (r14, 0x4)
    4068:	64c1      	cmplt      	r0, r3
    406a:	0c0a      	bf      	0x407e	// 407e <TK_overflow_predict+0xce>
    406c:	1075      	lrw      	r3, 0x2000011e	// 40c0 <TK_overflow_predict+0x110>
    406e:	610c      	addu      	r4, r3
    4070:	8c60      	ld.h      	r3, (r4, 0x0)
    4072:	3b06      	cmphsi      	r3, 7
    4074:	0805      	bt      	0x407e	// 407e <TK_overflow_predict+0xce>
    4076:	2300      	addi      	r3, 1
    4078:	ac60      	st.h      	r3, (r4, 0x0)
    407a:	3301      	movi      	r3, 1
    407c:	a560      	st.b      	r3, (r5, 0x0)
    407e:	2600      	addi      	r6, 1
    4080:	3e51      	cmpnei      	r6, 17
    4082:	0bc5      	bt      	0x400c	// 400c <TK_overflow_predict+0x5c>
    4084:	07ac      	br      	0x3fdc	// 3fdc <TK_overflow_predict+0x2c>
    4086:	5d4c      	addu      	r2, r5, r3
    4088:	8240      	ld.b      	r2, (r2, 0x0)
    408a:	4241      	lsli      	r2, r2, 1
    408c:	4322      	lsli      	r1, r3, 2
    408e:	6098      	addu      	r2, r6
    4090:	6050      	addu      	r1, r4
    4092:	8a40      	ld.h      	r2, (r2, 0x0)
    4094:	91f2      	ld.w      	r7, (r1, 0x48)
    4096:	4254      	lsli      	r2, r2, 20
    4098:	6c9c      	or      	r2, r7
    409a:	2300      	addi      	r3, 1
    409c:	b152      	st.w      	r2, (r1, 0x48)
    409e:	74cc      	zextb      	r3, r3
    40a0:	07ad      	br      	0x3ffa	// 3ffa <TK_overflow_predict+0x4a>
    40a2:	0000      	bkpt
    40a4:	20000068 	.long	0x20000068
    40a8:	2000040e 	.long	0x2000040e
    40ac:	20000144 	.long	0x20000144
    40b0:	2000031d 	.long	0x2000031d
    40b4:	20000058 	.long	0x20000058
    40b8:	20000440 	.long	0x20000440
    40bc:	20000484 	.long	0x20000484
    40c0:	2000011e 	.long	0x2000011e
    40c4:	20000054 	.long	0x20000054
    40c8:	20000148 	.long	0x20000148
    40cc:	2000014e 	.long	0x2000014e
    40d0:	200004b8 	.long	0x200004b8
    40d4:	20000522 	.long	0x20000522

Disassembly of section .text.TK_Baseline_tracking:

000040d8 <TK_Baseline_tracking>:
    40d8:	14c4      	push      	r4-r7
    40da:	1422      	subi      	r14, r14, 8
    40dc:	0149      	lrw      	r2, 0x2000038e	// 4434 <TK_Baseline_tracking+0x35c>
    40de:	8260      	ld.b      	r3, (r2, 0x0)
    40e0:	2300      	addi      	r3, 1
    40e2:	74cc      	zextb      	r3, r3
    40e4:	a260      	st.b      	r3, (r2, 0x0)
    40e6:	8260      	ld.b      	r3, (r2, 0x0)
    40e8:	012b      	lrw      	r1, 0x20000144	// 4438 <TK_Baseline_tracking+0x360>
    40ea:	8120      	ld.b      	r1, (r1, 0x0)
    40ec:	644c      	cmphs      	r3, r1
    40ee:	0c10      	bf      	0x410e	// 410e <TK_Baseline_tracking+0x36>
    40f0:	3300      	movi      	r3, 0
    40f2:	a260      	st.b      	r3, (r2, 0x0)
    40f4:	016d      	lrw      	r3, 0x20000298	// 443c <TK_Baseline_tracking+0x364>
    40f6:	9360      	ld.w      	r3, (r3, 0x0)
    40f8:	3b40      	cmpnei      	r3, 0
    40fa:	0c0c      	bf      	0x4112	// 4112 <TK_Baseline_tracking+0x3a>
    40fc:	016e      	lrw      	r3, 0x20000234	// 4440 <TK_Baseline_tracking+0x368>
    40fe:	9360      	ld.w      	r3, (r3, 0x0)
    4100:	3b40      	cmpnei      	r3, 0
    4102:	0cc6      	bf      	0x428e	// 428e <TK_Baseline_tracking+0x1b6>
    4104:	016f      	lrw      	r3, 0x20000308	// 4444 <TK_Baseline_tracking+0x36c>
    4106:	9360      	ld.w      	r3, (r3, 0x0)
    4108:	3b40      	cmpnei      	r3, 0
    410a:	0802      	bt      	0x410e	// 410e <TK_Baseline_tracking+0x36>
    410c:	057f      	br      	0x440a	// 440a <TK_Baseline_tracking+0x332>
    410e:	1402      	addi      	r14, r14, 8
    4110:	1484      	pop      	r4-r7
    4112:	0131      	lrw      	r1, 0x200002b4	// 4448 <TK_Baseline_tracking+0x370>
    4114:	6dc7      	mov      	r7, r1
    4116:	b820      	st.w      	r1, (r14, 0x0)
    4118:	3200      	movi      	r2, 0
    411a:	0172      	lrw      	r3, 0x20000176	// 444c <TK_Baseline_tracking+0x374>
    411c:	0132      	lrw      	r1, 0x20000200	// 4450 <TK_Baseline_tracking+0x378>
    411e:	4201      	lsli      	r0, r2, 1
    4120:	9880      	ld.w      	r4, (r14, 0x0)
    4122:	6100      	addu      	r4, r0
    4124:	8c80      	ld.h      	r4, (r4, 0x0)
    4126:	7513      	sexth      	r4, r4
    4128:	3cdf      	btsti      	r4, 31
    412a:	0c27      	bf      	0x4178	// 4178 <TK_Baseline_tracking+0xa0>
    412c:	01b5      	lrw      	r5, 0x20000522	// 4454 <TK_Baseline_tracking+0x37c>
    412e:	5980      	addu      	r4, r1, r0
    4130:	6014      	addu      	r0, r5
    4132:	b881      	st.w      	r4, (r14, 0x4)
    4134:	8c80      	ld.h      	r4, (r4, 0x0)
    4136:	88c0      	ld.h      	r6, (r0, 0x0)
    4138:	7511      	zexth      	r4, r4
    413a:	7599      	zexth      	r6, r6
    413c:	8ba0      	ld.h      	r5, (r3, 0x0)
    413e:	611a      	subu      	r4, r6
    4140:	6551      	cmplt      	r4, r5
    4142:	081b      	bt      	0x4178	// 4178 <TK_Baseline_tracking+0xa0>
    4144:	9881      	ld.w      	r4, (r14, 0x4)
    4146:	8c80      	ld.h      	r4, (r4, 0x0)
    4148:	8800      	ld.h      	r0, (r0, 0x0)
    414a:	7511      	zexth      	r4, r4
    414c:	7401      	zexth      	r0, r0
    414e:	5c01      	subu      	r0, r4, r0
    4150:	4581      	lsli      	r4, r5, 1
    4152:	6150      	addu      	r5, r4
    4154:	6541      	cmplt      	r0, r5
    4156:	0c11      	bf      	0x4178	// 4178 <TK_Baseline_tracking+0xa0>
    4158:	019f      	lrw      	r4, 0x20000444	// 4458 <TK_Baseline_tracking+0x380>
    415a:	6108      	addu      	r4, r2
    415c:	8400      	ld.b      	r0, (r4, 0x0)
    415e:	2000      	addi      	r0, 1
    4160:	7400      	zextb      	r0, r0
    4162:	a400      	st.b      	r0, (r4, 0x0)
    4164:	0201      	lrw      	r0, 0x20000088	// 445c <TK_Baseline_tracking+0x384>
    4166:	84a0      	ld.b      	r5, (r4, 0x0)
    4168:	8008      	ld.b      	r0, (r0, 0x8)
    416a:	6540      	cmphs      	r0, r5
    416c:	0806      	bt      	0x4178	// 4178 <TK_Baseline_tracking+0xa0>
    416e:	0202      	lrw      	r0, 0x20000335	// 4460 <TK_Baseline_tracking+0x388>
    4170:	3501      	movi      	r5, 1
    4172:	a0a0      	st.b      	r5, (r0, 0x0)
    4174:	3000      	movi      	r0, 0
    4176:	a400      	st.b      	r0, (r4, 0x0)
    4178:	4201      	lsli      	r0, r2, 1
    417a:	5f80      	addu      	r4, r7, r0
    417c:	8c80      	ld.h      	r4, (r4, 0x0)
    417e:	7513      	sexth      	r4, r4
    4180:	3c20      	cmplti      	r4, 1
    4182:	086f      	bt      	0x4260	// 4260 <TK_Baseline_tracking+0x188>
    4184:	028b      	lrw      	r4, 0x20000522	// 4454 <TK_Baseline_tracking+0x37c>
    4186:	6100      	addu      	r4, r0
    4188:	59a0      	addu      	r5, r1, r0
    418a:	8c80      	ld.h      	r4, (r4, 0x0)
    418c:	8da0      	ld.h      	r5, (r5, 0x0)
    418e:	7555      	zexth      	r5, r5
    4190:	7511      	zexth      	r4, r4
    4192:	6116      	subu      	r4, r5
    4194:	8ba0      	ld.h      	r5, (r3, 0x0)
    4196:	45a2      	lsli      	r5, r5, 2
    4198:	6551      	cmplt      	r4, r5
    419a:	0863      	bt      	0x4260	// 4260 <TK_Baseline_tracking+0x188>
    419c:	028d      	lrw      	r4, 0x200003b8	// 4464 <TK_Baseline_tracking+0x38c>
    419e:	6108      	addu      	r4, r2
    41a0:	84a0      	ld.b      	r5, (r4, 0x0)
    41a2:	2500      	addi      	r5, 1
    41a4:	7554      	zextb      	r5, r5
    41a6:	a4a0      	st.b      	r5, (r4, 0x0)
    41a8:	02b2      	lrw      	r5, 0x20000088	// 445c <TK_Baseline_tracking+0x384>
    41aa:	84c0      	ld.b      	r6, (r4, 0x0)
    41ac:	85a9      	ld.b      	r5, (r5, 0x9)
    41ae:	6594      	cmphs      	r5, r6
    41b0:	0806      	bt      	0x41bc	// 41bc <TK_Baseline_tracking+0xe4>
    41b2:	02b3      	lrw      	r5, 0x20000335	// 4460 <TK_Baseline_tracking+0x388>
    41b4:	3601      	movi      	r6, 1
    41b6:	a5c0      	st.b      	r6, (r5, 0x0)
    41b8:	3500      	movi      	r5, 0
    41ba:	a4a0      	st.b      	r5, (r4, 0x0)
    41bc:	5f80      	addu      	r4, r7, r0
    41be:	8c80      	ld.h      	r4, (r4, 0x0)
    41c0:	7513      	sexth      	r4, r4
    41c2:	3cdf      	btsti      	r4, 31
    41c4:	0c10      	bf      	0x41e4	// 41e4 <TK_Baseline_tracking+0x10c>
    41c6:	02db      	lrw      	r6, 0x20000522	// 4454 <TK_Baseline_tracking+0x37c>
    41c8:	59a0      	addu      	r5, r1, r0
    41ca:	6180      	addu      	r6, r0
    41cc:	8d80      	ld.h      	r4, (r5, 0x0)
    41ce:	8ec0      	ld.h      	r6, (r6, 0x0)
    41d0:	7599      	zexth      	r6, r6
    41d2:	7511      	zexth      	r4, r4
    41d4:	611a      	subu      	r4, r6
    41d6:	8bc0      	ld.h      	r6, (r3, 0x0)
    41d8:	6591      	cmplt      	r4, r6
    41da:	0c05      	bf      	0x41e4	// 41e4 <TK_Baseline_tracking+0x10c>
    41dc:	8d80      	ld.h      	r4, (r5, 0x0)
    41de:	2c00      	subi      	r4, 1
    41e0:	7511      	zexth      	r4, r4
    41e2:	ad80      	st.h      	r4, (r5, 0x0)
    41e4:	5f80      	addu      	r4, r7, r0
    41e6:	8c80      	ld.h      	r4, (r4, 0x0)
    41e8:	7513      	sexth      	r4, r4
    41ea:	3cdf      	btsti      	r4, 31
    41ec:	0c11      	bf      	0x420e	// 420e <TK_Baseline_tracking+0x136>
    41ee:	03c5      	lrw      	r6, 0x20000522	// 4454 <TK_Baseline_tracking+0x37c>
    41f0:	59a0      	addu      	r5, r1, r0
    41f2:	6180      	addu      	r6, r0
    41f4:	8d80      	ld.h      	r4, (r5, 0x0)
    41f6:	8ec0      	ld.h      	r6, (r6, 0x0)
    41f8:	7599      	zexth      	r6, r6
    41fa:	7511      	zexth      	r4, r4
    41fc:	611a      	subu      	r4, r6
    41fe:	8bc0      	ld.h      	r6, (r3, 0x0)
    4200:	4ec1      	lsri      	r6, r6, 1
    4202:	6591      	cmplt      	r4, r6
    4204:	0805      	bt      	0x420e	// 420e <TK_Baseline_tracking+0x136>
    4206:	8d80      	ld.h      	r4, (r5, 0x0)
    4208:	2c01      	subi      	r4, 2
    420a:	7511      	zexth      	r4, r4
    420c:	ad80      	st.h      	r4, (r5, 0x0)
    420e:	5fa0      	addu      	r5, r7, r0
    4210:	8d80      	ld.h      	r4, (r5, 0x0)
    4212:	7513      	sexth      	r4, r4
    4214:	3c20      	cmplti      	r4, 1
    4216:	080c      	bt      	0x422e	// 422e <TK_Baseline_tracking+0x156>
    4218:	8da0      	ld.h      	r5, (r5, 0x0)
    421a:	8b80      	ld.h      	r4, (r3, 0x0)
    421c:	7557      	sexth      	r5, r5
    421e:	4c81      	lsri      	r4, r4, 1
    4220:	6515      	cmplt      	r5, r4
    4222:	0c06      	bf      	0x422e	// 422e <TK_Baseline_tracking+0x156>
    4224:	59a0      	addu      	r5, r1, r0
    4226:	8d80      	ld.h      	r4, (r5, 0x0)
    4228:	2400      	addi      	r4, 1
    422a:	7511      	zexth      	r4, r4
    422c:	ad80      	st.h      	r4, (r5, 0x0)
    422e:	5fa0      	addu      	r5, r7, r0
    4230:	8d80      	ld.h      	r4, (r5, 0x0)
    4232:	7513      	sexth      	r4, r4
    4234:	3c20      	cmplti      	r4, 1
    4236:	0810      	bt      	0x4256	// 4256 <TK_Baseline_tracking+0x17e>
    4238:	8dc0      	ld.h      	r6, (r5, 0x0)
    423a:	759b      	sexth      	r6, r6
    423c:	8b80      	ld.h      	r4, (r3, 0x0)
    423e:	6519      	cmplt      	r6, r4
    4240:	0c0b      	bf      	0x4256	// 4256 <TK_Baseline_tracking+0x17e>
    4242:	8da0      	ld.h      	r5, (r5, 0x0)
    4244:	7557      	sexth      	r5, r5
    4246:	4c81      	lsri      	r4, r4, 1
    4248:	6515      	cmplt      	r5, r4
    424a:	0806      	bt      	0x4256	// 4256 <TK_Baseline_tracking+0x17e>
    424c:	6004      	addu      	r0, r1
    424e:	8880      	ld.h      	r4, (r0, 0x0)
    4250:	2401      	addi      	r4, 2
    4252:	7511      	zexth      	r4, r4
    4254:	a880      	st.h      	r4, (r0, 0x0)
    4256:	2200      	addi      	r2, 1
    4258:	3a51      	cmpnei      	r2, 17
    425a:	2301      	addi      	r3, 2
    425c:	0b61      	bt      	0x411e	// 411e <TK_Baseline_tracking+0x46>
    425e:	074f      	br      	0x40fc	// 40fc <TK_Baseline_tracking+0x24>
    4260:	5f80      	addu      	r4, r7, r0
    4262:	8c80      	ld.h      	r4, (r4, 0x0)
    4264:	7513      	sexth      	r4, r4
    4266:	3cdf      	btsti      	r4, 31
    4268:	0faa      	bf      	0x41bc	// 41bc <TK_Baseline_tracking+0xe4>
    426a:	13bb      	lrw      	r5, 0x20000522	// 4454 <TK_Baseline_tracking+0x37c>
    426c:	5980      	addu      	r4, r1, r0
    426e:	6140      	addu      	r5, r0
    4270:	8c80      	ld.h      	r4, (r4, 0x0)
    4272:	8da0      	ld.h      	r5, (r5, 0x0)
    4274:	7555      	zexth      	r5, r5
    4276:	8bc0      	ld.h      	r6, (r3, 0x0)
    4278:	7511      	zexth      	r4, r4
    427a:	6116      	subu      	r4, r5
    427c:	46a1      	lsli      	r5, r6, 1
    427e:	6158      	addu      	r5, r6
    4280:	6551      	cmplt      	r4, r5
    4282:	0b9d      	bt      	0x41bc	// 41bc <TK_Baseline_tracking+0xe4>
    4284:	1397      	lrw      	r4, 0x20000335	// 4460 <TK_Baseline_tracking+0x388>
    4286:	3501      	movi      	r5, 1
    4288:	a4a0      	st.b      	r5, (r4, 0x0)
    428a:	6c03      	mov      	r0, r0
    428c:	0798      	br      	0x41bc	// 41bc <TK_Baseline_tracking+0xe4>
    428e:	1337      	lrw      	r1, 0x200003ec	// 4468 <TK_Baseline_tracking+0x390>
    4290:	6dc7      	mov      	r7, r1
    4292:	b820      	st.w      	r1, (r14, 0x0)
    4294:	3200      	movi      	r2, 0
    4296:	136e      	lrw      	r3, 0x20000176	// 444c <TK_Baseline_tracking+0x374>
    4298:	1335      	lrw      	r1, 0x20000396	// 446c <TK_Baseline_tracking+0x394>
    429a:	4201      	lsli      	r0, r2, 1
    429c:	9880      	ld.w      	r4, (r14, 0x0)
    429e:	6100      	addu      	r4, r0
    42a0:	8c80      	ld.h      	r4, (r4, 0x0)
    42a2:	7513      	sexth      	r4, r4
    42a4:	3cdf      	btsti      	r4, 31
    42a6:	0c27      	bf      	0x42f4	// 42f4 <TK_Baseline_tracking+0x21c>
    42a8:	13b2      	lrw      	r5, 0x200002dc	// 4470 <TK_Baseline_tracking+0x398>
    42aa:	5980      	addu      	r4, r1, r0
    42ac:	6014      	addu      	r0, r5
    42ae:	b881      	st.w      	r4, (r14, 0x4)
    42b0:	8c80      	ld.h      	r4, (r4, 0x0)
    42b2:	88c0      	ld.h      	r6, (r0, 0x0)
    42b4:	7511      	zexth      	r4, r4
    42b6:	7599      	zexth      	r6, r6
    42b8:	8ba0      	ld.h      	r5, (r3, 0x0)
    42ba:	611a      	subu      	r4, r6
    42bc:	6551      	cmplt      	r4, r5
    42be:	081b      	bt      	0x42f4	// 42f4 <TK_Baseline_tracking+0x21c>
    42c0:	9881      	ld.w      	r4, (r14, 0x4)
    42c2:	8c80      	ld.h      	r4, (r4, 0x0)
    42c4:	8800      	ld.h      	r0, (r0, 0x0)
    42c6:	7511      	zexth      	r4, r4
    42c8:	7401      	zexth      	r0, r0
    42ca:	5c01      	subu      	r0, r4, r0
    42cc:	4581      	lsli      	r4, r5, 1
    42ce:	6150      	addu      	r5, r4
    42d0:	6541      	cmplt      	r0, r5
    42d2:	0c11      	bf      	0x42f4	// 42f4 <TK_Baseline_tracking+0x21c>
    42d4:	1388      	lrw      	r4, 0x2000042c	// 4474 <TK_Baseline_tracking+0x39c>
    42d6:	6108      	addu      	r4, r2
    42d8:	8400      	ld.b      	r0, (r4, 0x0)
    42da:	2000      	addi      	r0, 1
    42dc:	7400      	zextb      	r0, r0
    42de:	a400      	st.b      	r0, (r4, 0x0)
    42e0:	121f      	lrw      	r0, 0x20000088	// 445c <TK_Baseline_tracking+0x384>
    42e2:	84a0      	ld.b      	r5, (r4, 0x0)
    42e4:	8008      	ld.b      	r0, (r0, 0x8)
    42e6:	6540      	cmphs      	r0, r5
    42e8:	0806      	bt      	0x42f4	// 42f4 <TK_Baseline_tracking+0x21c>
    42ea:	121e      	lrw      	r0, 0x20000335	// 4460 <TK_Baseline_tracking+0x388>
    42ec:	3501      	movi      	r5, 1
    42ee:	a0a0      	st.b      	r5, (r0, 0x0)
    42f0:	3000      	movi      	r0, 0
    42f2:	a400      	st.b      	r0, (r4, 0x0)
    42f4:	4201      	lsli      	r0, r2, 1
    42f6:	5f80      	addu      	r4, r7, r0
    42f8:	8c80      	ld.h      	r4, (r4, 0x0)
    42fa:	7513      	sexth      	r4, r4
    42fc:	3c20      	cmplti      	r4, 1
    42fe:	086f      	bt      	0x43dc	// 43dc <TK_Baseline_tracking+0x304>
    4300:	129c      	lrw      	r4, 0x200002dc	// 4470 <TK_Baseline_tracking+0x398>
    4302:	6100      	addu      	r4, r0
    4304:	59a0      	addu      	r5, r1, r0
    4306:	8c80      	ld.h      	r4, (r4, 0x0)
    4308:	8da0      	ld.h      	r5, (r5, 0x0)
    430a:	7555      	zexth      	r5, r5
    430c:	7511      	zexth      	r4, r4
    430e:	6116      	subu      	r4, r5
    4310:	8ba0      	ld.h      	r5, (r3, 0x0)
    4312:	45a2      	lsli      	r5, r5, 2
    4314:	6551      	cmplt      	r4, r5
    4316:	0863      	bt      	0x43dc	// 43dc <TK_Baseline_tracking+0x304>
    4318:	1298      	lrw      	r4, 0x20000336	// 4478 <TK_Baseline_tracking+0x3a0>
    431a:	6108      	addu      	r4, r2
    431c:	84a0      	ld.b      	r5, (r4, 0x0)
    431e:	2500      	addi      	r5, 1
    4320:	7554      	zextb      	r5, r5
    4322:	a4a0      	st.b      	r5, (r4, 0x0)
    4324:	12ae      	lrw      	r5, 0x20000088	// 445c <TK_Baseline_tracking+0x384>
    4326:	84c0      	ld.b      	r6, (r4, 0x0)
    4328:	85a9      	ld.b      	r5, (r5, 0x9)
    432a:	6594      	cmphs      	r5, r6
    432c:	0806      	bt      	0x4338	// 4338 <TK_Baseline_tracking+0x260>
    432e:	12ad      	lrw      	r5, 0x20000335	// 4460 <TK_Baseline_tracking+0x388>
    4330:	3601      	movi      	r6, 1
    4332:	a5c0      	st.b      	r6, (r5, 0x0)
    4334:	3500      	movi      	r5, 0
    4336:	a4a0      	st.b      	r5, (r4, 0x0)
    4338:	5f80      	addu      	r4, r7, r0
    433a:	8c80      	ld.h      	r4, (r4, 0x0)
    433c:	7513      	sexth      	r4, r4
    433e:	3cdf      	btsti      	r4, 31
    4340:	0c10      	bf      	0x4360	// 4360 <TK_Baseline_tracking+0x288>
    4342:	12cc      	lrw      	r6, 0x200002dc	// 4470 <TK_Baseline_tracking+0x398>
    4344:	59a0      	addu      	r5, r1, r0
    4346:	6180      	addu      	r6, r0
    4348:	8d80      	ld.h      	r4, (r5, 0x0)
    434a:	8ec0      	ld.h      	r6, (r6, 0x0)
    434c:	7599      	zexth      	r6, r6
    434e:	7511      	zexth      	r4, r4
    4350:	611a      	subu      	r4, r6
    4352:	8bc0      	ld.h      	r6, (r3, 0x0)
    4354:	6591      	cmplt      	r4, r6
    4356:	0c05      	bf      	0x4360	// 4360 <TK_Baseline_tracking+0x288>
    4358:	8d80      	ld.h      	r4, (r5, 0x0)
    435a:	2c00      	subi      	r4, 1
    435c:	7511      	zexth      	r4, r4
    435e:	ad80      	st.h      	r4, (r5, 0x0)
    4360:	5f80      	addu      	r4, r7, r0
    4362:	8c80      	ld.h      	r4, (r4, 0x0)
    4364:	7513      	sexth      	r4, r4
    4366:	3cdf      	btsti      	r4, 31
    4368:	0c11      	bf      	0x438a	// 438a <TK_Baseline_tracking+0x2b2>
    436a:	12c2      	lrw      	r6, 0x200002dc	// 4470 <TK_Baseline_tracking+0x398>
    436c:	59a0      	addu      	r5, r1, r0
    436e:	6180      	addu      	r6, r0
    4370:	8d80      	ld.h      	r4, (r5, 0x0)
    4372:	8ec0      	ld.h      	r6, (r6, 0x0)
    4374:	7599      	zexth      	r6, r6
    4376:	7511      	zexth      	r4, r4
    4378:	611a      	subu      	r4, r6
    437a:	8bc0      	ld.h      	r6, (r3, 0x0)
    437c:	4ec1      	lsri      	r6, r6, 1
    437e:	6591      	cmplt      	r4, r6
    4380:	0805      	bt      	0x438a	// 438a <TK_Baseline_tracking+0x2b2>
    4382:	8d80      	ld.h      	r4, (r5, 0x0)
    4384:	2c01      	subi      	r4, 2
    4386:	7511      	zexth      	r4, r4
    4388:	ad80      	st.h      	r4, (r5, 0x0)
    438a:	5fa0      	addu      	r5, r7, r0
    438c:	8d80      	ld.h      	r4, (r5, 0x0)
    438e:	7513      	sexth      	r4, r4
    4390:	3c20      	cmplti      	r4, 1
    4392:	080c      	bt      	0x43aa	// 43aa <TK_Baseline_tracking+0x2d2>
    4394:	8da0      	ld.h      	r5, (r5, 0x0)
    4396:	8b80      	ld.h      	r4, (r3, 0x0)
    4398:	7557      	sexth      	r5, r5
    439a:	4c81      	lsri      	r4, r4, 1
    439c:	6515      	cmplt      	r5, r4
    439e:	0c06      	bf      	0x43aa	// 43aa <TK_Baseline_tracking+0x2d2>
    43a0:	59a0      	addu      	r5, r1, r0
    43a2:	8d80      	ld.h      	r4, (r5, 0x0)
    43a4:	2400      	addi      	r4, 1
    43a6:	7511      	zexth      	r4, r4
    43a8:	ad80      	st.h      	r4, (r5, 0x0)
    43aa:	5fa0      	addu      	r5, r7, r0
    43ac:	8d80      	ld.h      	r4, (r5, 0x0)
    43ae:	7513      	sexth      	r4, r4
    43b0:	3c20      	cmplti      	r4, 1
    43b2:	0810      	bt      	0x43d2	// 43d2 <TK_Baseline_tracking+0x2fa>
    43b4:	8dc0      	ld.h      	r6, (r5, 0x0)
    43b6:	759b      	sexth      	r6, r6
    43b8:	8b80      	ld.h      	r4, (r3, 0x0)
    43ba:	6519      	cmplt      	r6, r4
    43bc:	0c0b      	bf      	0x43d2	// 43d2 <TK_Baseline_tracking+0x2fa>
    43be:	8da0      	ld.h      	r5, (r5, 0x0)
    43c0:	7557      	sexth      	r5, r5
    43c2:	4c81      	lsri      	r4, r4, 1
    43c4:	6515      	cmplt      	r5, r4
    43c6:	0806      	bt      	0x43d2	// 43d2 <TK_Baseline_tracking+0x2fa>
    43c8:	6004      	addu      	r0, r1
    43ca:	8880      	ld.h      	r4, (r0, 0x0)
    43cc:	2401      	addi      	r4, 2
    43ce:	7511      	zexth      	r4, r4
    43d0:	a880      	st.h      	r4, (r0, 0x0)
    43d2:	2200      	addi      	r2, 1
    43d4:	3a51      	cmpnei      	r2, 17
    43d6:	2301      	addi      	r3, 2
    43d8:	0b61      	bt      	0x429a	// 429a <TK_Baseline_tracking+0x1c2>
    43da:	0695      	br      	0x4104	// 4104 <TK_Baseline_tracking+0x2c>
    43dc:	5f80      	addu      	r4, r7, r0
    43de:	8c80      	ld.h      	r4, (r4, 0x0)
    43e0:	7513      	sexth      	r4, r4
    43e2:	3cdf      	btsti      	r4, 31
    43e4:	0faa      	bf      	0x4338	// 4338 <TK_Baseline_tracking+0x260>
    43e6:	11a3      	lrw      	r5, 0x200002dc	// 4470 <TK_Baseline_tracking+0x398>
    43e8:	5980      	addu      	r4, r1, r0
    43ea:	6140      	addu      	r5, r0
    43ec:	8c80      	ld.h      	r4, (r4, 0x0)
    43ee:	8da0      	ld.h      	r5, (r5, 0x0)
    43f0:	7555      	zexth      	r5, r5
    43f2:	8bc0      	ld.h      	r6, (r3, 0x0)
    43f4:	7511      	zexth      	r4, r4
    43f6:	6116      	subu      	r4, r5
    43f8:	46a1      	lsli      	r5, r6, 1
    43fa:	6158      	addu      	r5, r6
    43fc:	6551      	cmplt      	r4, r5
    43fe:	0b9d      	bt      	0x4338	// 4338 <TK_Baseline_tracking+0x260>
    4400:	1098      	lrw      	r4, 0x20000335	// 4460 <TK_Baseline_tracking+0x388>
    4402:	3501      	movi      	r5, 1
    4404:	a4a0      	st.b      	r5, (r4, 0x0)
    4406:	6c03      	mov      	r0, r0
    4408:	0798      	br      	0x4338	// 4338 <TK_Baseline_tracking+0x260>
    440a:	103d      	lrw      	r1, 0x200004fe	// 447c <TK_Baseline_tracking+0x3a4>
    440c:	6dc7      	mov      	r7, r1
    440e:	b820      	st.w      	r1, (r14, 0x0)
    4410:	3200      	movi      	r2, 0
    4412:	106f      	lrw      	r3, 0x20000176	// 444c <TK_Baseline_tracking+0x374>
    4414:	103b      	lrw      	r1, 0x20000496	// 4480 <TK_Baseline_tracking+0x3a8>
    4416:	4201      	lsli      	r0, r2, 1
    4418:	9880      	ld.w      	r4, (r14, 0x0)
    441a:	6100      	addu      	r4, r0
    441c:	8c80      	ld.h      	r4, (r4, 0x0)
    441e:	7513      	sexth      	r4, r4
    4420:	3cdf      	btsti      	r4, 31
    4422:	0c53      	bf      	0x44c8	// 44c8 <TK_Baseline_tracking+0x3f0>
    4424:	10b8      	lrw      	r5, 0x200003ca	// 4484 <TK_Baseline_tracking+0x3ac>
    4426:	5980      	addu      	r4, r1, r0
    4428:	6014      	addu      	r0, r5
    442a:	b881      	st.w      	r4, (r14, 0x4)
    442c:	8c80      	ld.h      	r4, (r4, 0x0)
    442e:	88c0      	ld.h      	r6, (r0, 0x0)
    4430:	042c      	br      	0x4488	// 4488 <TK_Baseline_tracking+0x3b0>
    4432:	0000      	bkpt
    4434:	2000038e 	.long	0x2000038e
    4438:	20000144 	.long	0x20000144
    443c:	20000298 	.long	0x20000298
    4440:	20000234 	.long	0x20000234
    4444:	20000308 	.long	0x20000308
    4448:	200002b4 	.long	0x200002b4
    444c:	20000176 	.long	0x20000176
    4450:	20000200 	.long	0x20000200
    4454:	20000522 	.long	0x20000522
    4458:	20000444 	.long	0x20000444
    445c:	20000088 	.long	0x20000088
    4460:	20000335 	.long	0x20000335
    4464:	200003b8 	.long	0x200003b8
    4468:	200003ec 	.long	0x200003ec
    446c:	20000396 	.long	0x20000396
    4470:	200002dc 	.long	0x200002dc
    4474:	2000042c 	.long	0x2000042c
    4478:	20000336 	.long	0x20000336
    447c:	200004fe 	.long	0x200004fe
    4480:	20000496 	.long	0x20000496
    4484:	200003ca 	.long	0x200003ca
    4488:	7511      	zexth      	r4, r4
    448a:	7599      	zexth      	r6, r6
    448c:	8ba0      	ld.h      	r5, (r3, 0x0)
    448e:	611a      	subu      	r4, r6
    4490:	6551      	cmplt      	r4, r5
    4492:	081b      	bt      	0x44c8	// 44c8 <TK_Baseline_tracking+0x3f0>
    4494:	9881      	ld.w      	r4, (r14, 0x4)
    4496:	8c80      	ld.h      	r4, (r4, 0x0)
    4498:	8800      	ld.h      	r0, (r0, 0x0)
    449a:	7511      	zexth      	r4, r4
    449c:	7401      	zexth      	r0, r0
    449e:	5c01      	subu      	r0, r4, r0
    44a0:	4581      	lsli      	r4, r5, 1
    44a2:	6150      	addu      	r5, r4
    44a4:	6541      	cmplt      	r0, r5
    44a6:	0c11      	bf      	0x44c8	// 44c8 <TK_Baseline_tracking+0x3f0>
    44a8:	128d      	lrw      	r4, 0x20000324	// 45dc <TK_Baseline_tracking+0x504>
    44aa:	6108      	addu      	r4, r2
    44ac:	8400      	ld.b      	r0, (r4, 0x0)
    44ae:	2000      	addi      	r0, 1
    44b0:	7400      	zextb      	r0, r0
    44b2:	a400      	st.b      	r0, (r4, 0x0)
    44b4:	120b      	lrw      	r0, 0x20000088	// 45e0 <TK_Baseline_tracking+0x508>
    44b6:	84a0      	ld.b      	r5, (r4, 0x0)
    44b8:	8008      	ld.b      	r0, (r0, 0x8)
    44ba:	6540      	cmphs      	r0, r5
    44bc:	0806      	bt      	0x44c8	// 44c8 <TK_Baseline_tracking+0x3f0>
    44be:	120a      	lrw      	r0, 0x20000335	// 45e4 <TK_Baseline_tracking+0x50c>
    44c0:	3501      	movi      	r5, 1
    44c2:	a0a0      	st.b      	r5, (r0, 0x0)
    44c4:	3000      	movi      	r0, 0
    44c6:	a400      	st.b      	r0, (r4, 0x0)
    44c8:	4201      	lsli      	r0, r2, 1
    44ca:	5f80      	addu      	r4, r7, r0
    44cc:	8c80      	ld.h      	r4, (r4, 0x0)
    44ce:	7513      	sexth      	r4, r4
    44d0:	3c20      	cmplti      	r4, 1
    44d2:	0870      	bt      	0x45b2	// 45b2 <TK_Baseline_tracking+0x4da>
    44d4:	1285      	lrw      	r4, 0x200003ca	// 45e8 <TK_Baseline_tracking+0x510>
    44d6:	6100      	addu      	r4, r0
    44d8:	59a0      	addu      	r5, r1, r0
    44da:	8c80      	ld.h      	r4, (r4, 0x0)
    44dc:	8da0      	ld.h      	r5, (r5, 0x0)
    44de:	7555      	zexth      	r5, r5
    44e0:	7511      	zexth      	r4, r4
    44e2:	6116      	subu      	r4, r5
    44e4:	8ba0      	ld.h      	r5, (r3, 0x0)
    44e6:	45a2      	lsli      	r5, r5, 2
    44e8:	6551      	cmplt      	r4, r5
    44ea:	0864      	bt      	0x45b2	// 45b2 <TK_Baseline_tracking+0x4da>
    44ec:	1280      	lrw      	r4, 0x20000222	// 45ec <TK_Baseline_tracking+0x514>
    44ee:	6108      	addu      	r4, r2
    44f0:	84a0      	ld.b      	r5, (r4, 0x0)
    44f2:	2500      	addi      	r5, 1
    44f4:	7554      	zextb      	r5, r5
    44f6:	a4a0      	st.b      	r5, (r4, 0x0)
    44f8:	11ba      	lrw      	r5, 0x20000088	// 45e0 <TK_Baseline_tracking+0x508>
    44fa:	84c0      	ld.b      	r6, (r4, 0x0)
    44fc:	85a9      	ld.b      	r5, (r5, 0x9)
    44fe:	6594      	cmphs      	r5, r6
    4500:	0806      	bt      	0x450c	// 450c <TK_Baseline_tracking+0x434>
    4502:	11b9      	lrw      	r5, 0x20000335	// 45e4 <TK_Baseline_tracking+0x50c>
    4504:	3601      	movi      	r6, 1
    4506:	a5c0      	st.b      	r6, (r5, 0x0)
    4508:	3500      	movi      	r5, 0
    450a:	a4a0      	st.b      	r5, (r4, 0x0)
    450c:	5f80      	addu      	r4, r7, r0
    450e:	8c80      	ld.h      	r4, (r4, 0x0)
    4510:	7513      	sexth      	r4, r4
    4512:	3cdf      	btsti      	r4, 31
    4514:	0c10      	bf      	0x4534	// 4534 <TK_Baseline_tracking+0x45c>
    4516:	11d5      	lrw      	r6, 0x200003ca	// 45e8 <TK_Baseline_tracking+0x510>
    4518:	59a0      	addu      	r5, r1, r0
    451a:	6180      	addu      	r6, r0
    451c:	8d80      	ld.h      	r4, (r5, 0x0)
    451e:	8ec0      	ld.h      	r6, (r6, 0x0)
    4520:	7599      	zexth      	r6, r6
    4522:	7511      	zexth      	r4, r4
    4524:	611a      	subu      	r4, r6
    4526:	8bc0      	ld.h      	r6, (r3, 0x0)
    4528:	6591      	cmplt      	r4, r6
    452a:	0c05      	bf      	0x4534	// 4534 <TK_Baseline_tracking+0x45c>
    452c:	8d80      	ld.h      	r4, (r5, 0x0)
    452e:	2c00      	subi      	r4, 1
    4530:	7511      	zexth      	r4, r4
    4532:	ad80      	st.h      	r4, (r5, 0x0)
    4534:	5f80      	addu      	r4, r7, r0
    4536:	8c80      	ld.h      	r4, (r4, 0x0)
    4538:	7513      	sexth      	r4, r4
    453a:	3cdf      	btsti      	r4, 31
    453c:	0c11      	bf      	0x455e	// 455e <TK_Baseline_tracking+0x486>
    453e:	11cb      	lrw      	r6, 0x200003ca	// 45e8 <TK_Baseline_tracking+0x510>
    4540:	59a0      	addu      	r5, r1, r0
    4542:	6180      	addu      	r6, r0
    4544:	8d80      	ld.h      	r4, (r5, 0x0)
    4546:	8ec0      	ld.h      	r6, (r6, 0x0)
    4548:	7599      	zexth      	r6, r6
    454a:	7511      	zexth      	r4, r4
    454c:	611a      	subu      	r4, r6
    454e:	8bc0      	ld.h      	r6, (r3, 0x0)
    4550:	4ec1      	lsri      	r6, r6, 1
    4552:	6591      	cmplt      	r4, r6
    4554:	0805      	bt      	0x455e	// 455e <TK_Baseline_tracking+0x486>
    4556:	8d80      	ld.h      	r4, (r5, 0x0)
    4558:	2c01      	subi      	r4, 2
    455a:	7511      	zexth      	r4, r4
    455c:	ad80      	st.h      	r4, (r5, 0x0)
    455e:	5fa0      	addu      	r5, r7, r0
    4560:	8d80      	ld.h      	r4, (r5, 0x0)
    4562:	7513      	sexth      	r4, r4
    4564:	3c20      	cmplti      	r4, 1
    4566:	080c      	bt      	0x457e	// 457e <TK_Baseline_tracking+0x4a6>
    4568:	8da0      	ld.h      	r5, (r5, 0x0)
    456a:	8b80      	ld.h      	r4, (r3, 0x0)
    456c:	7557      	sexth      	r5, r5
    456e:	4c81      	lsri      	r4, r4, 1
    4570:	6515      	cmplt      	r5, r4
    4572:	0c06      	bf      	0x457e	// 457e <TK_Baseline_tracking+0x4a6>
    4574:	59a0      	addu      	r5, r1, r0
    4576:	8d80      	ld.h      	r4, (r5, 0x0)
    4578:	2400      	addi      	r4, 1
    457a:	7511      	zexth      	r4, r4
    457c:	ad80      	st.h      	r4, (r5, 0x0)
    457e:	5fa0      	addu      	r5, r7, r0
    4580:	8d80      	ld.h      	r4, (r5, 0x0)
    4582:	7513      	sexth      	r4, r4
    4584:	3c20      	cmplti      	r4, 1
    4586:	0810      	bt      	0x45a6	// 45a6 <TK_Baseline_tracking+0x4ce>
    4588:	8dc0      	ld.h      	r6, (r5, 0x0)
    458a:	759b      	sexth      	r6, r6
    458c:	8b80      	ld.h      	r4, (r3, 0x0)
    458e:	6519      	cmplt      	r6, r4
    4590:	0c0b      	bf      	0x45a6	// 45a6 <TK_Baseline_tracking+0x4ce>
    4592:	8da0      	ld.h      	r5, (r5, 0x0)
    4594:	7557      	sexth      	r5, r5
    4596:	4c81      	lsri      	r4, r4, 1
    4598:	6515      	cmplt      	r5, r4
    459a:	0806      	bt      	0x45a6	// 45a6 <TK_Baseline_tracking+0x4ce>
    459c:	6004      	addu      	r0, r1
    459e:	8880      	ld.h      	r4, (r0, 0x0)
    45a0:	2401      	addi      	r4, 2
    45a2:	7511      	zexth      	r4, r4
    45a4:	a880      	st.h      	r4, (r0, 0x0)
    45a6:	2200      	addi      	r2, 1
    45a8:	3a51      	cmpnei      	r2, 17
    45aa:	2301      	addi      	r3, 2
    45ac:	0b35      	bt      	0x4416	// 4416 <TK_Baseline_tracking+0x33e>
    45ae:	e800fdb0 	br      	0x410e	// 410e <TK_Baseline_tracking+0x36>
    45b2:	5f80      	addu      	r4, r7, r0
    45b4:	8c80      	ld.h      	r4, (r4, 0x0)
    45b6:	7513      	sexth      	r4, r4
    45b8:	3cdf      	btsti      	r4, 31
    45ba:	0fa9      	bf      	0x450c	// 450c <TK_Baseline_tracking+0x434>
    45bc:	10ab      	lrw      	r5, 0x200003ca	// 45e8 <TK_Baseline_tracking+0x510>
    45be:	5980      	addu      	r4, r1, r0
    45c0:	6140      	addu      	r5, r0
    45c2:	8c80      	ld.h      	r4, (r4, 0x0)
    45c4:	8da0      	ld.h      	r5, (r5, 0x0)
    45c6:	7555      	zexth      	r5, r5
    45c8:	8bc0      	ld.h      	r6, (r3, 0x0)
    45ca:	7511      	zexth      	r4, r4
    45cc:	6116      	subu      	r4, r5
    45ce:	46a1      	lsli      	r5, r6, 1
    45d0:	6158      	addu      	r5, r6
    45d2:	6551      	cmplt      	r4, r5
    45d4:	0b9c      	bt      	0x450c	// 450c <TK_Baseline_tracking+0x434>
    45d6:	1084      	lrw      	r4, 0x20000335	// 45e4 <TK_Baseline_tracking+0x50c>
    45d8:	3501      	movi      	r5, 1
    45da:	0798      	br      	0x450a	// 450a <TK_Baseline_tracking+0x432>
    45dc:	20000324 	.long	0x20000324
    45e0:	20000088 	.long	0x20000088
    45e4:	20000335 	.long	0x20000335
    45e8:	200003ca 	.long	0x200003ca
    45ec:	20000222 	.long	0x20000222

Disassembly of section .text.TK_result_prog:

000045f0 <TK_result_prog>:
    45f0:	14d4      	push      	r4-r7, r15
    45f2:	1421      	subi      	r14, r14, 4
    45f4:	121a      	lrw      	r0, 0x20000298	// 475c <TK_result_prog+0x16c>
    45f6:	12bb      	lrw      	r5, 0x20000234	// 4760 <TK_result_prog+0x170>
    45f8:	127b      	lrw      	r3, 0x20000308	// 4764 <TK_result_prog+0x174>
    45fa:	123b      	lrw      	r1, 0x20000308	// 4764 <TK_result_prog+0x174>
    45fc:	129b      	lrw      	r4, 0x20000390	// 4768 <TK_result_prog+0x178>
    45fe:	90c0      	ld.w      	r6, (r0, 0x0)
    4600:	9540      	ld.w      	r2, (r5, 0x0)
    4602:	6d88      	or      	r6, r2
    4604:	b860      	st.w      	r3, (r14, 0x0)
    4606:	9360      	ld.w      	r3, (r3, 0x0)
    4608:	6d8c      	or      	r6, r3
    460a:	3e40      	cmpnei      	r6, 0
    460c:	6c83      	mov      	r2, r0
    460e:	6cd7      	mov      	r3, r5
    4610:	0c8f      	bf      	0x472e	// 472e <TK_result_prog+0x13e>
    4612:	12d7      	lrw      	r6, 0x20000108	// 476c <TK_result_prog+0x17c>
    4614:	86e0      	ld.b      	r7, (r6, 0x0)
    4616:	3f41      	cmpnei      	r7, 1
    4618:	080e      	bt      	0x4634	// 4634 <TK_result_prog+0x44>
    461a:	9040      	ld.w      	r2, (r0, 0x0)
    461c:	9560      	ld.w      	r3, (r5, 0x0)
    461e:	64ca      	cmpne      	r2, r3
    4620:	0807      	bt      	0x462e	// 462e <TK_result_prog+0x3e>
    4622:	9540      	ld.w      	r2, (r5, 0x0)
    4624:	9160      	ld.w      	r3, (r1, 0x0)
    4626:	64ca      	cmpne      	r2, r3
    4628:	0803      	bt      	0x462e	// 462e <TK_result_prog+0x3e>
    462a:	9060      	ld.w      	r3, (r0, 0x0)
    462c:	0402      	br      	0x4630	// 4630 <TK_result_prog+0x40>
    462e:	3300      	movi      	r3, 0
    4630:	b460      	st.w      	r3, (r4, 0x0)
    4632:	0420      	br      	0x4672	// 4672 <TK_result_prog+0x82>
    4634:	86c0      	ld.b      	r6, (r6, 0x0)
    4636:	3e40      	cmpnei      	r6, 0
    4638:	081d      	bt      	0x4672	// 4672 <TK_result_prog+0x82>
    463a:	90c0      	ld.w      	r6, (r0, 0x0)
    463c:	6ddb      	mov      	r7, r6
    463e:	95c0      	ld.w      	r6, (r5, 0x0)
    4640:	659e      	cmpne      	r7, r6
    4642:	0806      	bt      	0x464e	// 464e <TK_result_prog+0x5e>
    4644:	95c0      	ld.w      	r6, (r5, 0x0)
    4646:	12a8      	lrw      	r5, 0x20000308	// 4764 <TK_result_prog+0x174>
    4648:	95a0      	ld.w      	r5, (r5, 0x0)
    464a:	655a      	cmpne      	r6, r5
    464c:	0fef      	bf      	0x462a	// 462a <TK_result_prog+0x3a>
    464e:	9300      	ld.w      	r0, (r3, 0x0)
    4650:	3840      	cmpnei      	r0, 0
    4652:	0c2a      	bf      	0x46a6	// 46a6 <TK_result_prog+0xb6>
    4654:	9100      	ld.w      	r0, (r1, 0x0)
    4656:	3840      	cmpnei      	r0, 0
    4658:	0c27      	bf      	0x46a6	// 46a6 <TK_result_prog+0xb6>
    465a:	93a0      	ld.w      	r5, (r3, 0x0)
    465c:	9100      	ld.w      	r0, (r1, 0x0)
    465e:	6416      	cmpne      	r5, r0
    4660:	0823      	bt      	0x46a6	// 46a6 <TK_result_prog+0xb6>
    4662:	9360      	ld.w      	r3, (r3, 0x0)
    4664:	b460      	st.w      	r3, (r4, 0x0)
    4666:	9220      	ld.w      	r1, (r2, 0x0)
    4668:	9460      	ld.w      	r3, (r4, 0x0)
    466a:	64c6      	cmpne      	r1, r3
    466c:	0c03      	bf      	0x4672	// 4672 <TK_result_prog+0x82>
    466e:	3300      	movi      	r3, 0
    4670:	b260      	st.w      	r3, (r2, 0x0)
    4672:	9460      	ld.w      	r3, (r4, 0x0)
    4674:	3b40      	cmpnei      	r3, 0
    4676:	115f      	lrw      	r2, 0x20000480	// 4770 <TK_result_prog+0x180>
    4678:	0c6a      	bf      	0x474c	// 474c <TK_result_prog+0x15c>
    467a:	9420      	ld.w      	r1, (r4, 0x0)
    467c:	9260      	ld.w      	r3, (r2, 0x0)
    467e:	64c6      	cmpne      	r1, r3
    4680:	0c06      	bf      	0x468c	// 468c <TK_result_prog+0x9c>
    4682:	9460      	ld.w      	r3, (r4, 0x0)
    4684:	b260      	st.w      	r3, (r2, 0x0)
    4686:	3200      	movi      	r2, 0
    4688:	117b      	lrw      	r3, 0x200002b2	// 4774 <TK_result_prog+0x184>
    468a:	a340      	st.b      	r2, (r3, 0x0)
    468c:	e3fff812 	bsr      	0x36b0	// 36b0 <get_key_number>
    4690:	117a      	lrw      	r3, 0x2000014c	// 4778 <TK_result_prog+0x188>
    4692:	8360      	ld.b      	r3, (r3, 0x0)
    4694:	640c      	cmphs      	r3, r0
    4696:	0806      	bt      	0x46a2	// 46a2 <TK_result_prog+0xb2>
    4698:	3300      	movi      	r3, 0
    469a:	b460      	st.w      	r3, (r4, 0x0)
    469c:	3201      	movi      	r2, 1
    469e:	1176      	lrw      	r3, 0x200002b2	// 4774 <TK_result_prog+0x184>
    46a0:	a340      	st.b      	r2, (r3, 0x0)
    46a2:	1401      	addi      	r14, r14, 4
    46a4:	1494      	pop      	r4-r7, r15
    46a6:	9200      	ld.w      	r0, (r2, 0x0)
    46a8:	3840      	cmpnei      	r0, 0
    46aa:	0c11      	bf      	0x46cc	// 46cc <TK_result_prog+0xdc>
    46ac:	9300      	ld.w      	r0, (r3, 0x0)
    46ae:	3840      	cmpnei      	r0, 0
    46b0:	0c0e      	bf      	0x46cc	// 46cc <TK_result_prog+0xdc>
    46b2:	92a0      	ld.w      	r5, (r2, 0x0)
    46b4:	9300      	ld.w      	r0, (r3, 0x0)
    46b6:	6416      	cmpne      	r5, r0
    46b8:	080a      	bt      	0x46cc	// 46cc <TK_result_prog+0xdc>
    46ba:	9260      	ld.w      	r3, (r2, 0x0)
    46bc:	b460      	st.w      	r3, (r4, 0x0)
    46be:	9140      	ld.w      	r2, (r1, 0x0)
    46c0:	9460      	ld.w      	r3, (r4, 0x0)
    46c2:	64ca      	cmpne      	r2, r3
    46c4:	0fd7      	bf      	0x4672	// 4672 <TK_result_prog+0x82>
    46c6:	3300      	movi      	r3, 0
    46c8:	b160      	st.w      	r3, (r1, 0x0)
    46ca:	07d4      	br      	0x4672	// 4672 <TK_result_prog+0x82>
    46cc:	9200      	ld.w      	r0, (r2, 0x0)
    46ce:	3840      	cmpnei      	r0, 0
    46d0:	0c11      	bf      	0x46f2	// 46f2 <TK_result_prog+0x102>
    46d2:	9100      	ld.w      	r0, (r1, 0x0)
    46d4:	3840      	cmpnei      	r0, 0
    46d6:	0c0e      	bf      	0x46f2	// 46f2 <TK_result_prog+0x102>
    46d8:	92a0      	ld.w      	r5, (r2, 0x0)
    46da:	9100      	ld.w      	r0, (r1, 0x0)
    46dc:	6416      	cmpne      	r5, r0
    46de:	080a      	bt      	0x46f2	// 46f2 <TK_result_prog+0x102>
    46e0:	9140      	ld.w      	r2, (r1, 0x0)
    46e2:	b440      	st.w      	r2, (r4, 0x0)
    46e4:	9320      	ld.w      	r1, (r3, 0x0)
    46e6:	9440      	ld.w      	r2, (r4, 0x0)
    46e8:	6486      	cmpne      	r1, r2
    46ea:	0fc4      	bf      	0x4672	// 4672 <TK_result_prog+0x82>
    46ec:	3200      	movi      	r2, 0
    46ee:	b340      	st.w      	r2, (r3, 0x0)
    46f0:	07c1      	br      	0x4672	// 4672 <TK_result_prog+0x82>
    46f2:	9200      	ld.w      	r0, (r2, 0x0)
    46f4:	3840      	cmpnei      	r0, 0
    46f6:	0c09      	bf      	0x4708	// 4708 <TK_result_prog+0x118>
    46f8:	9300      	ld.w      	r0, (r3, 0x0)
    46fa:	3840      	cmpnei      	r0, 0
    46fc:	0806      	bt      	0x4708	// 4708 <TK_result_prog+0x118>
    46fe:	9100      	ld.w      	r0, (r1, 0x0)
    4700:	3840      	cmpnei      	r0, 0
    4702:	0803      	bt      	0x4708	// 4708 <TK_result_prog+0x118>
    4704:	b400      	st.w      	r0, (r4, 0x0)
    4706:	07b6      	br      	0x4672	// 4672 <TK_result_prog+0x82>
    4708:	9300      	ld.w      	r0, (r3, 0x0)
    470a:	3840      	cmpnei      	r0, 0
    470c:	0c07      	bf      	0x471a	// 471a <TK_result_prog+0x12a>
    470e:	9200      	ld.w      	r0, (r2, 0x0)
    4710:	3840      	cmpnei      	r0, 0
    4712:	0804      	bt      	0x471a	// 471a <TK_result_prog+0x12a>
    4714:	9100      	ld.w      	r0, (r1, 0x0)
    4716:	3840      	cmpnei      	r0, 0
    4718:	0ff6      	bf      	0x4704	// 4704 <TK_result_prog+0x114>
    471a:	9120      	ld.w      	r1, (r1, 0x0)
    471c:	3940      	cmpnei      	r1, 0
    471e:	0faa      	bf      	0x4672	// 4672 <TK_result_prog+0x82>
    4720:	9240      	ld.w      	r2, (r2, 0x0)
    4722:	3a40      	cmpnei      	r2, 0
    4724:	0ba7      	bt      	0x4672	// 4672 <TK_result_prog+0x82>
    4726:	9360      	ld.w      	r3, (r3, 0x0)
    4728:	3b40      	cmpnei      	r3, 0
    472a:	0ba4      	bt      	0x4672	// 4672 <TK_result_prog+0x82>
    472c:	0782      	br      	0x4630	// 4630 <TK_result_prog+0x40>
    472e:	3200      	movi      	r2, 0
    4730:	1073      	lrw      	r3, 0x2000043e	// 477c <TK_result_prog+0x18c>
    4732:	b4c0      	st.w      	r6, (r4, 0x0)
    4734:	ab40      	st.h      	r2, (r3, 0x0)
    4736:	1073      	lrw      	r3, 0x20000260	// 4780 <TK_result_prog+0x190>
    4738:	ab40      	st.h      	r2, (r3, 0x0)
    473a:	1073      	lrw      	r3, 0x20000520	// 4784 <TK_result_prog+0x194>
    473c:	ab40      	st.h      	r2, (r3, 0x0)
    473e:	1073      	lrw      	r3, 0x20000442	// 4788 <TK_result_prog+0x198>
    4740:	ab40      	st.h      	r2, (r3, 0x0)
    4742:	1073      	lrw      	r3, 0x200002d6	// 478c <TK_result_prog+0x19c>
    4744:	ab40      	st.h      	r2, (r3, 0x0)
    4746:	1073      	lrw      	r3, 0x20000394	// 4790 <TK_result_prog+0x1a0>
    4748:	ab40      	st.h      	r2, (r3, 0x0)
    474a:	0794      	br      	0x4672	// 4672 <TK_result_prog+0x82>
    474c:	b260      	st.w      	r3, (r2, 0x0)
    474e:	3100      	movi      	r1, 0
    4750:	1049      	lrw      	r2, 0x200002b2	// 4774 <TK_result_prog+0x184>
    4752:	a220      	st.b      	r1, (r2, 0x0)
    4754:	1050      	lrw      	r2, 0x20000388	// 4794 <TK_result_prog+0x1a4>
    4756:	b260      	st.w      	r3, (r2, 0x0)
    4758:	07a5      	br      	0x46a2	// 46a2 <TK_result_prog+0xb2>
    475a:	0000      	bkpt
    475c:	20000298 	.long	0x20000298
    4760:	20000234 	.long	0x20000234
    4764:	20000308 	.long	0x20000308
    4768:	20000390 	.long	0x20000390
    476c:	20000108 	.long	0x20000108
    4770:	20000480 	.long	0x20000480
    4774:	200002b2 	.long	0x200002b2
    4778:	2000014c 	.long	0x2000014c
    477c:	2000043e 	.long	0x2000043e
    4780:	20000260 	.long	0x20000260
    4784:	20000520 	.long	0x20000520
    4788:	20000442 	.long	0x20000442
    478c:	200002d6 	.long	0x200002d6
    4790:	20000394 	.long	0x20000394
    4794:	20000388 	.long	0x20000388

Disassembly of section .text.TKEYIntHandler:

00004798 <TKEYIntHandler>:
    4798:	1460      	nie
    479a:	1462      	ipush
    479c:	14d1      	push      	r4, r15
    479e:	1183      	lrw      	r4, 0x20000068	// 4828 <TKEYIntHandler+0x90>
    47a0:	8460      	ld.b      	r3, (r4, 0x0)
    47a2:	3b40      	cmpnei      	r3, 0
    47a4:	0815      	bt      	0x47ce	// 47ce <TKEYIntHandler+0x36>
    47a6:	3301      	movi      	r3, 1
    47a8:	a460      	st.b      	r3, (r4, 0x0)
    47aa:	1161      	lrw      	r3, 0x200002a0	// 482c <TKEYIntHandler+0x94>
    47ac:	8360      	ld.b      	r3, (r3, 0x0)
    47ae:	3b41      	cmpnei      	r3, 1
    47b0:	080f      	bt      	0x47ce	// 47ce <TKEYIntHandler+0x36>
    47b2:	1140      	lrw      	r2, 0x20000495	// 4830 <TKEYIntHandler+0x98>
    47b4:	8260      	ld.b      	r3, (r2, 0x0)
    47b6:	2300      	addi      	r3, 1
    47b8:	74cc      	zextb      	r3, r3
    47ba:	a260      	st.b      	r3, (r2, 0x0)
    47bc:	8260      	ld.b      	r3, (r2, 0x0)
    47be:	3b43      	cmpnei      	r3, 3
    47c0:	0803      	bt      	0x47c6	// 47c6 <TKEYIntHandler+0x2e>
    47c2:	3300      	movi      	r3, 0
    47c4:	a260      	st.b      	r3, (r2, 0x0)
    47c6:	e3fff70f 	bsr      	0x35e4	// 35e4 <TK_Sampling_prog>
    47ca:	3301      	movi      	r3, 1
    47cc:	a463      	st.b      	r3, (r4, 0x3)
    47ce:	107a      	lrw      	r3, 0x20000058	// 4834 <TKEYIntHandler+0x9c>
    47d0:	3101      	movi      	r1, 1
    47d2:	9360      	ld.w      	r3, (r3, 0x0)
    47d4:	934a      	ld.w      	r2, (r3, 0x28)
    47d6:	6884      	and      	r2, r1
    47d8:	3a40      	cmpnei      	r2, 0
    47da:	0c02      	bf      	0x47de	// 47de <TKEYIntHandler+0x46>
    47dc:	b32c      	st.w      	r1, (r3, 0x30)
    47de:	934a      	ld.w      	r2, (r3, 0x28)
    47e0:	3102      	movi      	r1, 2
    47e2:	6884      	and      	r2, r1
    47e4:	3a40      	cmpnei      	r2, 0
    47e6:	0c02      	bf      	0x47ea	// 47ea <TKEYIntHandler+0x52>
    47e8:	b32c      	st.w      	r1, (r3, 0x30)
    47ea:	934a      	ld.w      	r2, (r3, 0x28)
    47ec:	3104      	movi      	r1, 4
    47ee:	6884      	and      	r2, r1
    47f0:	3a40      	cmpnei      	r2, 0
    47f2:	0c02      	bf      	0x47f6	// 47f6 <TKEYIntHandler+0x5e>
    47f4:	b32c      	st.w      	r1, (r3, 0x30)
    47f6:	934a      	ld.w      	r2, (r3, 0x28)
    47f8:	3108      	movi      	r1, 8
    47fa:	6884      	and      	r2, r1
    47fc:	3a40      	cmpnei      	r2, 0
    47fe:	0c02      	bf      	0x4802	// 4802 <TKEYIntHandler+0x6a>
    4800:	b32c      	st.w      	r1, (r3, 0x30)
    4802:	934a      	ld.w      	r2, (r3, 0x28)
    4804:	3110      	movi      	r1, 16
    4806:	6884      	and      	r2, r1
    4808:	3a40      	cmpnei      	r2, 0
    480a:	0c02      	bf      	0x480e	// 480e <TKEYIntHandler+0x76>
    480c:	b32c      	st.w      	r1, (r3, 0x30)
    480e:	934a      	ld.w      	r2, (r3, 0x28)
    4810:	3120      	movi      	r1, 32
    4812:	6884      	and      	r2, r1
    4814:	3a40      	cmpnei      	r2, 0
    4816:	0c02      	bf      	0x481a	// 481a <TKEYIntHandler+0x82>
    4818:	b32c      	st.w      	r1, (r3, 0x30)
    481a:	d9ee2001 	ld.w      	r15, (r14, 0x4)
    481e:	9880      	ld.w      	r4, (r14, 0x0)
    4820:	1402      	addi      	r14, r14, 8
    4822:	1463      	ipop
    4824:	1461      	nir
    4826:	0000      	bkpt
    4828:	20000068 	.long	0x20000068
    482c:	200002a0 	.long	0x200002a0
    4830:	20000495 	.long	0x20000495
    4834:	20000058 	.long	0x20000058

Disassembly of section .text.CORETHandler:

00004838 <CORETHandler>:
    4838:	1460      	nie
    483a:	1462      	ipush
    483c:	14d3      	push      	r4-r6, r15
    483e:	126e      	lrw      	r3, 0x20000064	// 4974 <CORETHandler+0x13c>
    4840:	3400      	movi      	r4, 0
    4842:	9360      	ld.w      	r3, (r3, 0x0)
    4844:	b386      	st.w      	r4, (r3, 0x18)
    4846:	126d      	lrw      	r3, 0x200002a0	// 4978 <CORETHandler+0x140>
    4848:	8360      	ld.b      	r3, (r3, 0x0)
    484a:	3b41      	cmpnei      	r3, 1
    484c:	0844      	bt      	0x48d4	// 48d4 <CORETHandler+0x9c>
    484e:	e3fff745 	bsr      	0x36d8	// 36d8 <TK_Scan_Start>
    4852:	e3fff777 	bsr      	0x3740	// 3740 <TK_Keymap_prog>
    4856:	e3fffbad 	bsr      	0x3fb0	// 3fb0 <TK_overflow_predict>
    485a:	e3fffc3f 	bsr      	0x40d8	// 40d8 <TK_Baseline_tracking>
    485e:	e3fffec9 	bsr      	0x45f0	// 45f0 <TK_result_prog>
    4862:	1267      	lrw      	r3, 0x20000390	// 497c <CORETHandler+0x144>
    4864:	9360      	ld.w      	r3, (r3, 0x0)
    4866:	3b40      	cmpnei      	r3, 0
    4868:	0c12      	bf      	0x488c	// 488c <CORETHandler+0x54>
    486a:	1266      	lrw      	r3, 0x20000114	// 4980 <CORETHandler+0x148>
    486c:	9340      	ld.w      	r2, (r3, 0x0)
    486e:	3a40      	cmpnei      	r2, 0
    4870:	0c0e      	bf      	0x488c	// 488c <CORETHandler+0x54>
    4872:	1265      	lrw      	r3, 0x20000388	// 4984 <CORETHandler+0x14c>
    4874:	3064      	movi      	r0, 100
    4876:	9320      	ld.w      	r1, (r3, 0x0)
    4878:	2100      	addi      	r1, 1
    487a:	b320      	st.w      	r1, (r3, 0x0)
    487c:	9320      	ld.w      	r1, (r3, 0x0)
    487e:	7c80      	mult      	r2, r0
    4880:	6448      	cmphs      	r2, r1
    4882:	0805      	bt      	0x488c	// 488c <CORETHandler+0x54>
    4884:	1241      	lrw      	r2, 0x20000335	// 4988 <CORETHandler+0x150>
    4886:	3101      	movi      	r1, 1
    4888:	a220      	st.b      	r1, (r2, 0x0)
    488a:	b380      	st.w      	r4, (r3, 0x0)
    488c:	1260      	lrw      	r3, 0x20000108	// 498c <CORETHandler+0x154>
    488e:	8340      	ld.b      	r2, (r3, 0x0)
    4890:	3a41      	cmpnei      	r2, 1
    4892:	0829      	bt      	0x48e4	// 48e4 <CORETHandler+0xac>
    4894:	113f      	lrw      	r1, 0x20000298	// 4990 <CORETHandler+0x158>
    4896:	1240      	lrw      	r2, 0x20000234	// 4994 <CORETHandler+0x15c>
    4898:	9100      	ld.w      	r0, (r1, 0x0)
    489a:	9260      	ld.w      	r3, (r2, 0x0)
    489c:	64c2      	cmpne      	r0, r3
    489e:	117f      	lrw      	r3, 0x20000428	// 4998 <CORETHandler+0x160>
    48a0:	080a      	bt      	0x48b4	// 48b4 <CORETHandler+0x7c>
    48a2:	9280      	ld.w      	r4, (r2, 0x0)
    48a4:	115e      	lrw      	r2, 0x20000308	// 499c <CORETHandler+0x164>
    48a6:	9200      	ld.w      	r0, (r2, 0x0)
    48a8:	6412      	cmpne      	r4, r0
    48aa:	0805      	bt      	0x48b4	// 48b4 <CORETHandler+0x7c>
    48ac:	9120      	ld.w      	r1, (r1, 0x0)
    48ae:	9240      	ld.w      	r2, (r2, 0x0)
    48b0:	6486      	cmpne      	r1, r2
    48b2:	0c0f      	bf      	0x48d0	// 48d0 <CORETHandler+0x98>
    48b4:	9340      	ld.w      	r2, (r3, 0x0)
    48b6:	2200      	addi      	r2, 1
    48b8:	b340      	st.w      	r2, (r3, 0x0)
    48ba:	115a      	lrw      	r2, 0x20000088	// 49a0 <CORETHandler+0x168>
    48bc:	8238      	ld.b      	r1, (r2, 0x18)
    48be:	9340      	ld.w      	r2, (r3, 0x0)
    48c0:	6484      	cmphs      	r1, r2
    48c2:	0809      	bt      	0x48d4	// 48d4 <CORETHandler+0x9c>
    48c4:	3200      	movi      	r2, 0
    48c6:	b340      	st.w      	r2, (r3, 0x0)
    48c8:	1170      	lrw      	r3, 0x20000335	// 4988 <CORETHandler+0x150>
    48ca:	3201      	movi      	r2, 1
    48cc:	a340      	st.b      	r2, (r3, 0x0)
    48ce:	0403      	br      	0x48d4	// 48d4 <CORETHandler+0x9c>
    48d0:	3200      	movi      	r2, 0
    48d2:	b340      	st.w      	r2, (r3, 0x0)
    48d4:	d9ee2003 	ld.w      	r15, (r14, 0xc)
    48d8:	98c2      	ld.w      	r6, (r14, 0x8)
    48da:	98a1      	ld.w      	r5, (r14, 0x4)
    48dc:	9880      	ld.w      	r4, (r14, 0x0)
    48de:	1404      	addi      	r14, r14, 16
    48e0:	1463      	ipop
    48e2:	1461      	nir
    48e4:	83a0      	ld.b      	r5, (r3, 0x0)
    48e6:	7554      	zextb      	r5, r5
    48e8:	3d40      	cmpnei      	r5, 0
    48ea:	0bf5      	bt      	0x48d4	// 48d4 <CORETHandler+0x9c>
    48ec:	1169      	lrw      	r3, 0x20000298	// 4990 <CORETHandler+0x158>
    48ee:	114a      	lrw      	r2, 0x20000234	// 4994 <CORETHandler+0x15c>
    48f0:	9300      	ld.w      	r0, (r3, 0x0)
    48f2:	9220      	ld.w      	r1, (r2, 0x0)
    48f4:	6442      	cmpne      	r0, r1
    48f6:	112a      	lrw      	r1, 0x20000308	// 499c <CORETHandler+0x164>
    48f8:	1108      	lrw      	r0, 0x20000428	// 4998 <CORETHandler+0x160>
    48fa:	0c36      	bf      	0x4966	// 4966 <CORETHandler+0x12e>
    48fc:	92c0      	ld.w      	r6, (r2, 0x0)
    48fe:	9180      	ld.w      	r4, (r1, 0x0)
    4900:	651a      	cmpne      	r6, r4
    4902:	0c32      	bf      	0x4966	// 4966 <CORETHandler+0x12e>
    4904:	93c0      	ld.w      	r6, (r3, 0x0)
    4906:	9180      	ld.w      	r4, (r1, 0x0)
    4908:	651a      	cmpne      	r6, r4
    490a:	0c2e      	bf      	0x4966	// 4966 <CORETHandler+0x12e>
    490c:	9080      	ld.w      	r4, (r0, 0x0)
    490e:	2400      	addi      	r4, 1
    4910:	b080      	st.w      	r4, (r0, 0x0)
    4912:	1184      	lrw      	r4, 0x20000088	// 49a0 <CORETHandler+0x168>
    4914:	84d8      	ld.b      	r6, (r4, 0x18)
    4916:	9080      	ld.w      	r4, (r0, 0x0)
    4918:	6518      	cmphs      	r6, r4
    491a:	0805      	bt      	0x4924	// 4924 <CORETHandler+0xec>
    491c:	b0a0      	st.w      	r5, (r0, 0x0)
    491e:	3401      	movi      	r4, 1
    4920:	101a      	lrw      	r0, 0x20000335	// 4988 <CORETHandler+0x150>
    4922:	a080      	st.b      	r4, (r0, 0x0)
    4924:	9380      	ld.w      	r4, (r3, 0x0)
    4926:	9200      	ld.w      	r0, (r2, 0x0)
    4928:	6412      	cmpne      	r4, r0
    492a:	101f      	lrw      	r0, 0x20000458	// 49a4 <CORETHandler+0x16c>
    492c:	0c04      	bf      	0x4934	// 4934 <CORETHandler+0xfc>
    492e:	9180      	ld.w      	r4, (r1, 0x0)
    4930:	3c40      	cmpnei      	r4, 0
    4932:	0c0f      	bf      	0x4950	// 4950 <CORETHandler+0x118>
    4934:	93a0      	ld.w      	r5, (r3, 0x0)
    4936:	9180      	ld.w      	r4, (r1, 0x0)
    4938:	6516      	cmpne      	r5, r4
    493a:	0c04      	bf      	0x4942	// 4942 <CORETHandler+0x10a>
    493c:	9280      	ld.w      	r4, (r2, 0x0)
    493e:	3c40      	cmpnei      	r4, 0
    4940:	0c08      	bf      	0x4950	// 4950 <CORETHandler+0x118>
    4942:	9120      	ld.w      	r1, (r1, 0x0)
    4944:	9240      	ld.w      	r2, (r2, 0x0)
    4946:	6486      	cmpne      	r1, r2
    4948:	0c12      	bf      	0x496c	// 496c <CORETHandler+0x134>
    494a:	9360      	ld.w      	r3, (r3, 0x0)
    494c:	3b40      	cmpnei      	r3, 0
    494e:	080f      	bt      	0x496c	// 496c <CORETHandler+0x134>
    4950:	9060      	ld.w      	r3, (r0, 0x0)
    4952:	2300      	addi      	r3, 1
    4954:	b060      	st.w      	r3, (r0, 0x0)
    4956:	1073      	lrw      	r3, 0x20000088	// 49a0 <CORETHandler+0x168>
    4958:	8358      	ld.b      	r2, (r3, 0x18)
    495a:	9060      	ld.w      	r3, (r0, 0x0)
    495c:	64c8      	cmphs      	r2, r3
    495e:	0bbb      	bt      	0x48d4	// 48d4 <CORETHandler+0x9c>
    4960:	3300      	movi      	r3, 0
    4962:	b060      	st.w      	r3, (r0, 0x0)
    4964:	07b2      	br      	0x48c8	// 48c8 <CORETHandler+0x90>
    4966:	3400      	movi      	r4, 0
    4968:	b080      	st.w      	r4, (r0, 0x0)
    496a:	07dd      	br      	0x4924	// 4924 <CORETHandler+0xec>
    496c:	3300      	movi      	r3, 0
    496e:	b060      	st.w      	r3, (r0, 0x0)
    4970:	07b2      	br      	0x48d4	// 48d4 <CORETHandler+0x9c>
    4972:	0000      	bkpt
    4974:	20000064 	.long	0x20000064
    4978:	200002a0 	.long	0x200002a0
    497c:	20000390 	.long	0x20000390
    4980:	20000114 	.long	0x20000114
    4984:	20000388 	.long	0x20000388
    4988:	20000335 	.long	0x20000335
    498c:	20000108 	.long	0x20000108
    4990:	20000298 	.long	0x20000298
    4994:	20000234 	.long	0x20000234
    4998:	20000428 	.long	0x20000428
    499c:	20000308 	.long	0x20000308
    49a0:	20000088 	.long	0x20000088
    49a4:	20000458 	.long	0x20000458

Disassembly of section .text.std_clk_calib_source:

000049a8 <std_clk_calib_source>:
    49a8:	3840      	cmpnei      	r0, 0
    49aa:	1069      	lrw      	r3, 0x20000014	// 49cc <std_clk_calib_source+0x24>
    49ac:	0807      	bt      	0x49ba	// 49ba <std_clk_calib_source+0x12>
    49ae:	9360      	ld.w      	r3, (r3, 0x0)
    49b0:	1048      	lrw      	r2, 0xbe9c0005	// 49d0 <std_clk_calib_source+0x28>
    49b2:	b340      	st.w      	r2, (r3, 0x0)
    49b4:	32d8      	movi      	r2, 216
    49b6:	b345      	st.w      	r2, (r3, 0x14)
    49b8:	0409      	br      	0x49ca	// 49ca <std_clk_calib_source+0x22>
    49ba:	3841      	cmpnei      	r0, 1
    49bc:	0bf9      	bt      	0x49ae	// 49ae <std_clk_calib_source+0x6>
    49be:	9340      	ld.w      	r2, (r3, 0x0)
    49c0:	1065      	lrw      	r3, 0xbe9c000d	// 49d4 <std_clk_calib_source+0x2c>
    49c2:	b260      	st.w      	r3, (r2, 0x0)
    49c4:	3383      	movi      	r3, 131
    49c6:	4361      	lsli      	r3, r3, 1
    49c8:	b265      	st.w      	r3, (r2, 0x14)
    49ca:	783c      	jmp      	r15
    49cc:	20000014 	.long	0x20000014
    49d0:	be9c0005 	.long	0xbe9c0005
    49d4:	be9c000d 	.long	0xbe9c000d

Disassembly of section .text.std_clk_calib:

000049d8 <std_clk_calib>:
    49d8:	14d4      	push      	r4-r7, r15
    49da:	142d      	subi      	r14, r14, 52
    49dc:	3201      	movi      	r2, 1
    49de:	03cd      	lrw      	r6, 0x2000005c	// 4c24 <std_clk_calib+0x24c>
    49e0:	6cc3      	mov      	r3, r0
    49e2:	dc4e000a 	st.b      	r2, (r14, 0xa)
    49e6:	9640      	ld.w      	r2, (r6, 0x0)
    49e8:	9247      	ld.w      	r2, (r2, 0x1c)
    49ea:	7488      	zextb      	r2, r2
    49ec:	dc4e0009 	st.b      	r2, (r14, 0x9)
    49f0:	d84e0009 	ld.b      	r2, (r14, 0x9)
    49f4:	3a40      	cmpnei      	r2, 0
    49f6:	0c08      	bf      	0x4a06	// 4a06 <std_clk_calib+0x2e>
    49f8:	d84e0009 	ld.b      	r2, (r14, 0x9)
    49fc:	3a42      	cmpnei      	r2, 2
    49fe:	0c04      	bf      	0x4a06	// 4a06 <std_clk_calib+0x2e>
    4a00:	3000      	movi      	r0, 0
    4a02:	140d      	addi      	r14, r14, 52
    4a04:	1494      	pop      	r4-r7, r15
    4a06:	0396      	lrw      	r4, 0x2000000c	// 4c28 <std_clk_calib+0x250>
    4a08:	3209      	movi      	r2, 9
    4a0a:	9400      	ld.w      	r0, (r4, 0x0)
    4a0c:	3b40      	cmpnei      	r3, 0
    4a0e:	b041      	st.w      	r2, (r0, 0x4)
    4a10:	0858      	bt      	0x4ac0	// 4ac0 <std_clk_calib+0xe8>
    4a12:	3307      	movi      	r3, 7
    4a14:	dc6e000b 	st.b      	r3, (r14, 0xb)
    4a18:	037a      	lrw      	r3, 0x2dc6c00	// 4c2c <std_clk_calib+0x254>
    4a1a:	b863      	st.w      	r3, (r14, 0xc)
    4a1c:	3380      	movi      	r3, 128
    4a1e:	4362      	lsli      	r3, r3, 2
    4a20:	b867      	st.w      	r3, (r14, 0x1c)
    4a22:	d86e000b 	ld.b      	r3, (r14, 0xb)
    4a26:	74cc      	zextb      	r3, r3
    4a28:	b062      	st.w      	r3, (r0, 0x8)
    4a2a:	037d      	lrw      	r3, 0xffff	// 4c30 <std_clk_calib+0x258>
    4a2c:	b063      	st.w      	r3, (r0, 0xc)
    4a2e:	3201      	movi      	r2, 1
    4a30:	3101      	movi      	r1, 1
    4a32:	03be      	lrw      	r5, 0x20000014	// 4c34 <std_clk_calib+0x25c>
    4a34:	e3ffeb73 	bsr      	0x211a	// 211a <BT_ConfigInterrupt_CMD>
    4a38:	95e0      	ld.w      	r7, (r5, 0x0)
    4a3a:	3300      	movi      	r3, 0
    4a3c:	135f      	lrw      	r2, 0x30010	// 4c38 <std_clk_calib+0x260>
    4a3e:	b762      	st.w      	r3, (r7, 0x8)
    4a40:	b743      	st.w      	r2, (r7, 0xc)
    4a42:	974f      	ld.w      	r2, (r7, 0x3c)
    4a44:	3aa2      	bseti      	r2, 2
    4a46:	b74f      	st.w      	r2, (r7, 0x3c)
    4a48:	9803      	ld.w      	r0, (r14, 0xc)
    4a4a:	d82e000b 	ld.b      	r1, (r14, 0xb)
    4a4e:	327d      	movi      	r2, 125
    4a50:	2100      	addi      	r1, 1
    4a52:	7c48      	mult      	r1, r2
    4a54:	b861      	st.w      	r3, (r14, 0x4)
    4a56:	e3fff59f 	bsr      	0x3594	// 3594 <__udivsi3>
    4a5a:	b804      	st.w      	r0, (r14, 0x10)
    4a5c:	32fa      	movi      	r2, 250
    4a5e:	9824      	ld.w      	r1, (r14, 0x10)
    4a60:	4242      	lsli      	r2, r2, 2
    4a62:	6448      	cmphs      	r2, r1
    4a64:	0bce      	bt      	0x4a00	// 4a00 <std_clk_calib+0x28>
    4a66:	9844      	ld.w      	r2, (r14, 0x10)
    4a68:	3178      	movi      	r1, 120
    4a6a:	9804      	ld.w      	r0, (r14, 0x10)
    4a6c:	b840      	st.w      	r2, (r14, 0x0)
    4a6e:	e3fff593 	bsr      	0x3594	// 3594 <__udivsi3>
    4a72:	9840      	ld.w      	r2, (r14, 0x0)
    4a74:	6082      	subu      	r2, r0
    4a76:	b845      	st.w      	r2, (r14, 0x14)
    4a78:	9804      	ld.w      	r0, (r14, 0x10)
    4a7a:	3178      	movi      	r1, 120
    4a7c:	9844      	ld.w      	r2, (r14, 0x10)
    4a7e:	b840      	st.w      	r2, (r14, 0x0)
    4a80:	e3fff58a 	bsr      	0x3594	// 3594 <__udivsi3>
    4a84:	9840      	ld.w      	r2, (r14, 0x0)
    4a86:	6008      	addu      	r0, r2
    4a88:	b806      	st.w      	r0, (r14, 0x18)
    4a8a:	c0807020 	psrclr      	ie
    4a8e:	9640      	ld.w      	r2, (r6, 0x0)
    4a90:	9254      	ld.w      	r2, (r2, 0x50)
    4a92:	b848      	st.w      	r2, (r14, 0x20)
    4a94:	9861      	ld.w      	r3, (r14, 0x4)
    4a96:	9440      	ld.w      	r2, (r4, 0x0)
    4a98:	b260      	st.w      	r3, (r2, 0x0)
    4a9a:	b761      	st.w      	r3, (r7, 0x4)
    4a9c:	d86e000a 	ld.b      	r3, (r14, 0xa)
    4aa0:	3b40      	cmpnei      	r3, 0
    4aa2:	0843      	bt      	0x4b28	// 4b28 <std_clk_calib+0x150>
    4aa4:	9540      	ld.w      	r2, (r5, 0x0)
    4aa6:	9261      	ld.w      	r3, (r2, 0x4)
    4aa8:	3bac      	bseti      	r3, 12
    4aaa:	3bae      	bseti      	r3, 14
    4aac:	b261      	st.w      	r3, (r2, 0x4)
    4aae:	9440      	ld.w      	r2, (r4, 0x0)
    4ab0:	9260      	ld.w      	r3, (r2, 0x0)
    4ab2:	3bac      	bseti      	r3, 12
    4ab4:	3bae      	bseti      	r3, 14
    4ab6:	b260      	st.w      	r3, (r2, 0x0)
    4ab8:	c1807420 	psrset      	ee, ie
    4abc:	3001      	movi      	r0, 1
    4abe:	07a2      	br      	0x4a02	// 4a02 <std_clk_calib+0x2a>
    4ac0:	3b41      	cmpnei      	r3, 1
    4ac2:	0806      	bt      	0x4ace	// 4ace <std_clk_calib+0xf6>
    4ac4:	3303      	movi      	r3, 3
    4ac6:	dc6e000b 	st.b      	r3, (r14, 0xb)
    4aca:	127d      	lrw      	r3, 0x16e3600	// 4c3c <std_clk_calib+0x264>
    4acc:	07a7      	br      	0x4a1a	// 4a1a <std_clk_calib+0x42>
    4ace:	3b42      	cmpnei      	r3, 2
    4ad0:	0806      	bt      	0x4adc	// 4adc <std_clk_calib+0x104>
    4ad2:	3301      	movi      	r3, 1
    4ad4:	dc6e000b 	st.b      	r3, (r14, 0xb)
    4ad8:	127a      	lrw      	r3, 0xb71b00	// 4c40 <std_clk_calib+0x268>
    4ada:	07a0      	br      	0x4a1a	// 4a1a <std_clk_calib+0x42>
    4adc:	3b43      	cmpnei      	r3, 3
    4ade:	0806      	bt      	0x4aea	// 4aea <std_clk_calib+0x112>
    4ae0:	3300      	movi      	r3, 0
    4ae2:	dc6e000b 	st.b      	r3, (r14, 0xb)
    4ae6:	1278      	lrw      	r3, 0x5b8d80	// 4c44 <std_clk_calib+0x26c>
    4ae8:	0799      	br      	0x4a1a	// 4a1a <std_clk_calib+0x42>
    4aea:	3b44      	cmpnei      	r3, 4
    4aec:	0809      	bt      	0x4afe	// 4afe <std_clk_calib+0x126>
    4aee:	3300      	movi      	r3, 0
    4af0:	dc6e000b 	st.b      	r3, (r14, 0xb)
    4af4:	1275      	lrw      	r3, 0x54c720	// 4c48 <std_clk_calib+0x270>
    4af6:	b863      	st.w      	r3, (r14, 0xc)
    4af8:	3380      	movi      	r3, 128
    4afa:	4369      	lsli      	r3, r3, 9
    4afc:	0792      	br      	0x4a20	// 4a20 <std_clk_calib+0x48>
    4afe:	3b45      	cmpnei      	r3, 5
    4b00:	0806      	bt      	0x4b0c	// 4b0c <std_clk_calib+0x134>
    4b02:	3300      	movi      	r3, 0
    4b04:	dc6e000b 	st.b      	r3, (r14, 0xb)
    4b08:	1271      	lrw      	r3, 0x3ffed0	// 4c4c <std_clk_calib+0x274>
    4b0a:	07f6      	br      	0x4af6	// 4af6 <std_clk_calib+0x11e>
    4b0c:	3b46      	cmpnei      	r3, 6
    4b0e:	0806      	bt      	0x4b1a	// 4b1a <std_clk_calib+0x142>
    4b10:	3300      	movi      	r3, 0
    4b12:	dc6e000b 	st.b      	r3, (r14, 0xb)
    4b16:	126f      	lrw      	r3, 0x1fff68	// 4c50 <std_clk_calib+0x278>
    4b18:	07ef      	br      	0x4af6	// 4af6 <std_clk_calib+0x11e>
    4b1a:	3b47      	cmpnei      	r3, 7
    4b1c:	0b83      	bt      	0x4a22	// 4a22 <std_clk_calib+0x4a>
    4b1e:	3300      	movi      	r3, 0
    4b20:	dc6e000b 	st.b      	r3, (r14, 0xb)
    4b24:	126c      	lrw      	r3, 0x1ffb8	// 4c54 <std_clk_calib+0x27c>
    4b26:	07e8      	br      	0x4af6	// 4af6 <std_clk_calib+0x11e>
    4b28:	9560      	ld.w      	r3, (r5, 0x0)
    4b2a:	3101      	movi      	r1, 1
    4b2c:	9440      	ld.w      	r2, (r4, 0x0)
    4b2e:	b321      	st.w      	r1, (r3, 0x4)
    4b30:	b220      	st.w      	r1, (r2, 0x0)
    4b32:	3100      	movi      	r1, 0
    4b34:	b327      	st.w      	r1, (r3, 0x1c)
    4b36:	3004      	movi      	r0, 4
    4b38:	b225      	st.w      	r1, (r2, 0x14)
    4b3a:	932e      	ld.w      	r1, (r3, 0x38)
    4b3c:	6840      	and      	r1, r0
    4b3e:	3940      	cmpnei      	r1, 0
    4b40:	0ffd      	bf      	0x4b3a	// 4b3a <std_clk_calib+0x162>
    4b42:	9225      	ld.w      	r1, (r2, 0x14)
    4b44:	b82a      	st.w      	r1, (r14, 0x28)
    4b46:	3100      	movi      	r1, 0
    4b48:	b310      	st.w      	r0, (r3, 0x40)
    4b4a:	b327      	st.w      	r1, (r3, 0x1c)
    4b4c:	3004      	movi      	r0, 4
    4b4e:	b225      	st.w      	r1, (r2, 0x14)
    4b50:	932e      	ld.w      	r1, (r3, 0x38)
    4b52:	6840      	and      	r1, r0
    4b54:	3940      	cmpnei      	r1, 0
    4b56:	0ffd      	bf      	0x4b50	// 4b50 <std_clk_calib+0x178>
    4b58:	9225      	ld.w      	r1, (r2, 0x14)
    4b5a:	b82b      	st.w      	r1, (r14, 0x2c)
    4b5c:	3100      	movi      	r1, 0
    4b5e:	b310      	st.w      	r0, (r3, 0x40)
    4b60:	b327      	st.w      	r1, (r3, 0x1c)
    4b62:	3004      	movi      	r0, 4
    4b64:	b225      	st.w      	r1, (r2, 0x14)
    4b66:	932e      	ld.w      	r1, (r3, 0x38)
    4b68:	6840      	and      	r1, r0
    4b6a:	3940      	cmpnei      	r1, 0
    4b6c:	0ffd      	bf      	0x4b66	// 4b66 <std_clk_calib+0x18e>
    4b6e:	9225      	ld.w      	r1, (r2, 0x14)
    4b70:	b82c      	st.w      	r1, (r14, 0x30)
    4b72:	b310      	st.w      	r0, (r3, 0x40)
    4b74:	982b      	ld.w      	r1, (r14, 0x2c)
    4b76:	980c      	ld.w      	r0, (r14, 0x30)
    4b78:	6040      	addu      	r1, r0
    4b7a:	b829      	st.w      	r1, (r14, 0x24)
    4b7c:	9829      	ld.w      	r1, (r14, 0x24)
    4b7e:	4921      	lsri      	r1, r1, 1
    4b80:	b829      	st.w      	r1, (r14, 0x24)
    4b82:	3100      	movi      	r1, 0
    4b84:	b321      	st.w      	r1, (r3, 0x4)
    4b86:	b220      	st.w      	r1, (r2, 0x0)
    4b88:	b327      	st.w      	r1, (r3, 0x1c)
    4b8a:	b225      	st.w      	r1, (r2, 0x14)
    4b8c:	d86e0009 	ld.b      	r3, (r14, 0x9)
    4b90:	3b42      	cmpnei      	r3, 2
    4b92:	9849      	ld.w      	r2, (r14, 0x24)
    4b94:	082c      	bt      	0x4bec	// 4bec <std_clk_calib+0x214>
    4b96:	1171      	lrw      	r3, 0x7ff	// 4c58 <std_clk_calib+0x280>
    4b98:	648c      	cmphs      	r3, r2
    4b9a:	0c03      	bf      	0x4ba0	// 4ba0 <std_clk_calib+0x1c8>
    4b9c:	3300      	movi      	r3, 0
    4b9e:	040f      	br      	0x4bbc	// 4bbc <std_clk_calib+0x1e4>
    4ba0:	9849      	ld.w      	r2, (r14, 0x24)
    4ba2:	9866      	ld.w      	r3, (r14, 0x18)
    4ba4:	648c      	cmphs      	r3, r2
    4ba6:	080e      	bt      	0x4bc2	// 4bc2 <std_clk_calib+0x1ea>
    4ba8:	9868      	ld.w      	r3, (r14, 0x20)
    4baa:	9847      	ld.w      	r2, (r14, 0x1c)
    4bac:	60ca      	subu      	r3, r2
    4bae:	b868      	st.w      	r3, (r14, 0x20)
    4bb0:	32fe      	movi      	r2, 254
    4bb2:	9868      	ld.w      	r3, (r14, 0x20)
    4bb4:	4248      	lsli      	r2, r2, 8
    4bb6:	68c8      	and      	r3, r2
    4bb8:	3b40      	cmpnei      	r3, 0
    4bba:	0812      	bt      	0x4bde	// 4bde <std_clk_calib+0x206>
    4bbc:	dc6e000a 	st.b      	r3, (r14, 0xa)
    4bc0:	0720      	br      	0x4a00	// 4a00 <std_clk_calib+0x28>
    4bc2:	9849      	ld.w      	r2, (r14, 0x24)
    4bc4:	9865      	ld.w      	r3, (r14, 0x14)
    4bc6:	64c8      	cmphs      	r2, r3
    4bc8:	0829      	bt      	0x4c1a	// 4c1a <std_clk_calib+0x242>
    4bca:	9868      	ld.w      	r3, (r14, 0x20)
    4bcc:	9847      	ld.w      	r2, (r14, 0x1c)
    4bce:	60c8      	addu      	r3, r2
    4bd0:	b868      	st.w      	r3, (r14, 0x20)
    4bd2:	33fe      	movi      	r3, 254
    4bd4:	9848      	ld.w      	r2, (r14, 0x20)
    4bd6:	4368      	lsli      	r3, r3, 8
    4bd8:	688c      	and      	r2, r3
    4bda:	64ca      	cmpne      	r2, r3
    4bdc:	0fe0      	bf      	0x4b9c	// 4b9c <std_clk_calib+0x1c4>
    4bde:	9660      	ld.w      	r3, (r6, 0x0)
    4be0:	9848      	ld.w      	r2, (r14, 0x20)
    4be2:	b354      	st.w      	r2, (r3, 0x50)
    4be4:	3001      	movi      	r0, 1
    4be6:	e3ffed5f 	bsr      	0x26a4	// 26a4 <delay_nms>
    4bea:	0759      	br      	0x4a9c	// 4a9c <std_clk_calib+0xc4>
    4bec:	9866      	ld.w      	r3, (r14, 0x18)
    4bee:	648c      	cmphs      	r3, r2
    4bf0:	0809      	bt      	0x4c02	// 4c02 <std_clk_calib+0x22a>
    4bf2:	9868      	ld.w      	r3, (r14, 0x20)
    4bf4:	9847      	ld.w      	r2, (r14, 0x1c)
    4bf6:	60ca      	subu      	r3, r2
    4bf8:	b868      	st.w      	r3, (r14, 0x20)
    4bfa:	32ff      	movi      	r2, 255
    4bfc:	9868      	ld.w      	r3, (r14, 0x20)
    4bfe:	4250      	lsli      	r2, r2, 16
    4c00:	07db      	br      	0x4bb6	// 4bb6 <std_clk_calib+0x1de>
    4c02:	9849      	ld.w      	r2, (r14, 0x24)
    4c04:	9865      	ld.w      	r3, (r14, 0x14)
    4c06:	64c8      	cmphs      	r2, r3
    4c08:	0809      	bt      	0x4c1a	// 4c1a <std_clk_calib+0x242>
    4c0a:	9868      	ld.w      	r3, (r14, 0x20)
    4c0c:	9847      	ld.w      	r2, (r14, 0x1c)
    4c0e:	60c8      	addu      	r3, r2
    4c10:	b868      	st.w      	r3, (r14, 0x20)
    4c12:	33ff      	movi      	r3, 255
    4c14:	9848      	ld.w      	r2, (r14, 0x20)
    4c16:	4370      	lsli      	r3, r3, 16
    4c18:	07e0      	br      	0x4bd8	// 4bd8 <std_clk_calib+0x200>
    4c1a:	3300      	movi      	r3, 0
    4c1c:	dc6e000a 	st.b      	r3, (r14, 0xa)
    4c20:	07e2      	br      	0x4be4	// 4be4 <std_clk_calib+0x20c>
    4c22:	0000      	bkpt
    4c24:	2000005c 	.long	0x2000005c
    4c28:	2000000c 	.long	0x2000000c
    4c2c:	02dc6c00 	.long	0x02dc6c00
    4c30:	0000ffff 	.long	0x0000ffff
    4c34:	20000014 	.long	0x20000014
    4c38:	00030010 	.long	0x00030010
    4c3c:	016e3600 	.long	0x016e3600
    4c40:	00b71b00 	.long	0x00b71b00
    4c44:	005b8d80 	.long	0x005b8d80
    4c48:	0054c720 	.long	0x0054c720
    4c4c:	003ffed0 	.long	0x003ffed0
    4c50:	001fff68 	.long	0x001fff68
    4c54:	0001ffb8 	.long	0x0001ffb8
    4c58:	000007ff 	.long	0x000007ff

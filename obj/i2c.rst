                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CY
                                     12 	.globl _AC
                                     13 	.globl _F0
                                     14 	.globl _RS1
                                     15 	.globl _RS0
                                     16 	.globl _OV
                                     17 	.globl _F1
                                     18 	.globl _P
                                     19 	.globl _PS
                                     20 	.globl _PT1
                                     21 	.globl _PX1
                                     22 	.globl _PT0
                                     23 	.globl _PX0
                                     24 	.globl _RD
                                     25 	.globl _WR
                                     26 	.globl _T1
                                     27 	.globl _T0
                                     28 	.globl _INT1
                                     29 	.globl _INT0
                                     30 	.globl _TXD
                                     31 	.globl _RXD
                                     32 	.globl _P3_7
                                     33 	.globl _P3_6
                                     34 	.globl _P3_5
                                     35 	.globl _P3_4
                                     36 	.globl _P3_3
                                     37 	.globl _P3_2
                                     38 	.globl _P3_1
                                     39 	.globl _P3_0
                                     40 	.globl _EA
                                     41 	.globl _ES
                                     42 	.globl _ET1
                                     43 	.globl _EX1
                                     44 	.globl _ET0
                                     45 	.globl _EX0
                                     46 	.globl _P2_7
                                     47 	.globl _P2_6
                                     48 	.globl _P2_5
                                     49 	.globl _P2_4
                                     50 	.globl _P2_3
                                     51 	.globl _P2_2
                                     52 	.globl _P2_1
                                     53 	.globl _P2_0
                                     54 	.globl _SM0
                                     55 	.globl _SM1
                                     56 	.globl _SM2
                                     57 	.globl _REN
                                     58 	.globl _TB8
                                     59 	.globl _RB8
                                     60 	.globl _TI
                                     61 	.globl _RI
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _TF1
                                     71 	.globl _TR1
                                     72 	.globl _TF0
                                     73 	.globl _TR0
                                     74 	.globl _IE1
                                     75 	.globl _IT1
                                     76 	.globl _IE0
                                     77 	.globl _IT0
                                     78 	.globl _P0_7
                                     79 	.globl _P0_6
                                     80 	.globl _P0_5
                                     81 	.globl _P0_4
                                     82 	.globl _P0_3
                                     83 	.globl _P0_2
                                     84 	.globl _P0_1
                                     85 	.globl _P0_0
                                     86 	.globl _B
                                     87 	.globl _ACC
                                     88 	.globl _PSW
                                     89 	.globl _IP
                                     90 	.globl _P3
                                     91 	.globl _IE
                                     92 	.globl _P2
                                     93 	.globl _SBUF
                                     94 	.globl _SCON
                                     95 	.globl _P1
                                     96 	.globl _TH1
                                     97 	.globl _TH0
                                     98 	.globl _TL1
                                     99 	.globl _TL0
                                    100 	.globl _TMOD
                                    101 	.globl _TCON
                                    102 	.globl _PCON
                                    103 	.globl _DPH
                                    104 	.globl _DPL
                                    105 	.globl _SP
                                    106 	.globl _P0
                                    107 	.globl _I2C_SendACK_PARM_1
                                    108 	.globl _Single_ReadI2C_PARM_2
                                    109 	.globl _Single_WriteI2C_PARM_3
                                    110 	.globl _Single_WriteI2C_PARM_2
                                    111 	.globl _I2C_Start
                                    112 	.globl _I2C_Stop
                                    113 	.globl _I2C_SendACK
                                    114 	.globl _I2C_RecvACK
                                    115 	.globl _I2C_SendByte
                                    116 	.globl _I2C_RecvByte
                                    117 	.globl _Single_WriteI2C
                                    118 	.globl _Single_ReadI2C
                                    119 	.globl _Delay
                                    120 ;--------------------------------------------------------
                                    121 ; special function registers
                                    122 ;--------------------------------------------------------
                                    123 	.area RSEG    (ABS,DATA)
      000000                        124 	.org 0x0000
                           000080   125 _P0	=	0x0080
                           000081   126 _SP	=	0x0081
                           000082   127 _DPL	=	0x0082
                           000083   128 _DPH	=	0x0083
                           000087   129 _PCON	=	0x0087
                           000088   130 _TCON	=	0x0088
                           000089   131 _TMOD	=	0x0089
                           00008A   132 _TL0	=	0x008a
                           00008B   133 _TL1	=	0x008b
                           00008C   134 _TH0	=	0x008c
                           00008D   135 _TH1	=	0x008d
                           000090   136 _P1	=	0x0090
                           000098   137 _SCON	=	0x0098
                           000099   138 _SBUF	=	0x0099
                           0000A0   139 _P2	=	0x00a0
                           0000A8   140 _IE	=	0x00a8
                           0000B0   141 _P3	=	0x00b0
                           0000B8   142 _IP	=	0x00b8
                           0000D0   143 _PSW	=	0x00d0
                           0000E0   144 _ACC	=	0x00e0
                           0000F0   145 _B	=	0x00f0
                                    146 ;--------------------------------------------------------
                                    147 ; special function bits
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0_0	=	0x0080
                           000081   152 _P0_1	=	0x0081
                           000082   153 _P0_2	=	0x0082
                           000083   154 _P0_3	=	0x0083
                           000084   155 _P0_4	=	0x0084
                           000085   156 _P0_5	=	0x0085
                           000086   157 _P0_6	=	0x0086
                           000087   158 _P0_7	=	0x0087
                           000088   159 _IT0	=	0x0088
                           000089   160 _IE0	=	0x0089
                           00008A   161 _IT1	=	0x008a
                           00008B   162 _IE1	=	0x008b
                           00008C   163 _TR0	=	0x008c
                           00008D   164 _TF0	=	0x008d
                           00008E   165 _TR1	=	0x008e
                           00008F   166 _TF1	=	0x008f
                           000090   167 _P1_0	=	0x0090
                           000091   168 _P1_1	=	0x0091
                           000092   169 _P1_2	=	0x0092
                           000093   170 _P1_3	=	0x0093
                           000094   171 _P1_4	=	0x0094
                           000095   172 _P1_5	=	0x0095
                           000096   173 _P1_6	=	0x0096
                           000097   174 _P1_7	=	0x0097
                           000098   175 _RI	=	0x0098
                           000099   176 _TI	=	0x0099
                           00009A   177 _RB8	=	0x009a
                           00009B   178 _TB8	=	0x009b
                           00009C   179 _REN	=	0x009c
                           00009D   180 _SM2	=	0x009d
                           00009E   181 _SM1	=	0x009e
                           00009F   182 _SM0	=	0x009f
                           0000A0   183 _P2_0	=	0x00a0
                           0000A1   184 _P2_1	=	0x00a1
                           0000A2   185 _P2_2	=	0x00a2
                           0000A3   186 _P2_3	=	0x00a3
                           0000A4   187 _P2_4	=	0x00a4
                           0000A5   188 _P2_5	=	0x00a5
                           0000A6   189 _P2_6	=	0x00a6
                           0000A7   190 _P2_7	=	0x00a7
                           0000A8   191 _EX0	=	0x00a8
                           0000A9   192 _ET0	=	0x00a9
                           0000AA   193 _EX1	=	0x00aa
                           0000AB   194 _ET1	=	0x00ab
                           0000AC   195 _ES	=	0x00ac
                           0000AF   196 _EA	=	0x00af
                           0000B0   197 _P3_0	=	0x00b0
                           0000B1   198 _P3_1	=	0x00b1
                           0000B2   199 _P3_2	=	0x00b2
                           0000B3   200 _P3_3	=	0x00b3
                           0000B4   201 _P3_4	=	0x00b4
                           0000B5   202 _P3_5	=	0x00b5
                           0000B6   203 _P3_6	=	0x00b6
                           0000B7   204 _P3_7	=	0x00b7
                           0000B0   205 _RXD	=	0x00b0
                           0000B1   206 _TXD	=	0x00b1
                           0000B2   207 _INT0	=	0x00b2
                           0000B3   208 _INT1	=	0x00b3
                           0000B4   209 _T0	=	0x00b4
                           0000B5   210 _T1	=	0x00b5
                           0000B6   211 _WR	=	0x00b6
                           0000B7   212 _RD	=	0x00b7
                           0000B8   213 _PX0	=	0x00b8
                           0000B9   214 _PT0	=	0x00b9
                           0000BA   215 _PX1	=	0x00ba
                           0000BB   216 _PT1	=	0x00bb
                           0000BC   217 _PS	=	0x00bc
                           0000D0   218 _P	=	0x00d0
                           0000D1   219 _F1	=	0x00d1
                           0000D2   220 _OV	=	0x00d2
                           0000D3   221 _RS0	=	0x00d3
                           0000D4   222 _RS1	=	0x00d4
                           0000D5   223 _F0	=	0x00d5
                           0000D6   224 _AC	=	0x00d6
                           0000D7   225 _CY	=	0x00d7
                                    226 ;--------------------------------------------------------
                                    227 ; overlayable register banks
                                    228 ;--------------------------------------------------------
                                    229 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        230 	.ds 8
                                    231 ;--------------------------------------------------------
                                    232 ; internal ram data
                                    233 ;--------------------------------------------------------
                                    234 	.area DSEG    (DATA)
      000008                        235 _Single_WriteI2C_PARM_2:
      000008                        236 	.ds 1
      000009                        237 _Single_WriteI2C_PARM_3:
      000009                        238 	.ds 1
      00000A                        239 _Single_ReadI2C_PARM_2:
      00000A                        240 	.ds 1
                                    241 ;--------------------------------------------------------
                                    242 ; overlayable items in internal ram 
                                    243 ;--------------------------------------------------------
                                    244 	.area	OSEG    (OVR,DATA)
                                    245 ;--------------------------------------------------------
                                    246 ; indirectly addressable internal ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area ISEG    (DATA)
                                    249 ;--------------------------------------------------------
                                    250 ; absolute internal ram data
                                    251 ;--------------------------------------------------------
                                    252 	.area IABS    (ABS,DATA)
                                    253 	.area IABS    (ABS,DATA)
                                    254 ;--------------------------------------------------------
                                    255 ; bit data
                                    256 ;--------------------------------------------------------
                                    257 	.area BSEG    (BIT)
      000004                        258 _I2C_SendACK_PARM_1:
      000004                        259 	.ds 1
                                    260 ;--------------------------------------------------------
                                    261 ; paged external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area PSEG    (PAG,XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XSEG    (XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; absolute external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XABS    (ABS,XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; external initialized ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XISEG   (XDATA)
                                    276 	.area HOME    (CODE)
                                    277 	.area GSINIT0 (CODE)
                                    278 	.area GSINIT1 (CODE)
                                    279 	.area GSINIT2 (CODE)
                                    280 	.area GSINIT3 (CODE)
                                    281 	.area GSINIT4 (CODE)
                                    282 	.area GSINIT5 (CODE)
                                    283 	.area GSINIT  (CODE)
                                    284 	.area GSFINAL (CODE)
                                    285 	.area CSEG    (CODE)
                                    286 ;--------------------------------------------------------
                                    287 ; global & static initialisations
                                    288 ;--------------------------------------------------------
                                    289 	.area HOME    (CODE)
                                    290 	.area GSINIT  (CODE)
                                    291 	.area GSFINAL (CODE)
                                    292 	.area GSINIT  (CODE)
                                    293 ;--------------------------------------------------------
                                    294 ; Home
                                    295 ;--------------------------------------------------------
                                    296 	.area HOME    (CODE)
                                    297 	.area HOME    (CODE)
                                    298 ;--------------------------------------------------------
                                    299 ; code
                                    300 ;--------------------------------------------------------
                                    301 	.area CSEG    (CODE)
                                    302 ;------------------------------------------------------------
                                    303 ;Allocation info for local variables in function 'I2C_Start'
                                    304 ;------------------------------------------------------------
                                    305 ;	./src/i2c.c:6: void I2C_Start(void)
                                    306 ;	-----------------------------------------
                                    307 ;	 function I2C_Start
                                    308 ;	-----------------------------------------
      001335                        309 _I2C_Start:
                           000007   310 	ar7 = 0x07
                           000006   311 	ar6 = 0x06
                           000005   312 	ar5 = 0x05
                           000004   313 	ar4 = 0x04
                           000003   314 	ar3 = 0x03
                           000002   315 	ar2 = 0x02
                           000001   316 	ar1 = 0x01
                           000000   317 	ar0 = 0x00
                                    318 ;	./src/i2c.c:8: SDA = 1;
                                    319 ;	assignBit
      001335 D2 81            [12]  320 	setb	_P0_1
                                    321 ;	./src/i2c.c:9: SCL = 1;
                                    322 ;	assignBit
      001337 D2 80            [12]  323 	setb	_P0_0
                                    324 ;	./src/i2c.c:10: Delay();
      001339 12 14 22         [24]  325 	lcall	_Delay
                                    326 ;	./src/i2c.c:11: SDA = 0;
                                    327 ;	assignBit
      00133C C2 81            [12]  328 	clr	_P0_1
                                    329 ;	./src/i2c.c:12: Delay();
      00133E 12 14 22         [24]  330 	lcall	_Delay
                                    331 ;	./src/i2c.c:13: SCL = 0;
                                    332 ;	assignBit
      001341 C2 80            [12]  333 	clr	_P0_0
                                    334 ;	./src/i2c.c:14: }
      001343 22               [24]  335 	ret
                                    336 ;------------------------------------------------------------
                                    337 ;Allocation info for local variables in function 'I2C_Stop'
                                    338 ;------------------------------------------------------------
                                    339 ;	./src/i2c.c:17: void I2C_Stop(void)
                                    340 ;	-----------------------------------------
                                    341 ;	 function I2C_Stop
                                    342 ;	-----------------------------------------
      001344                        343 _I2C_Stop:
                                    344 ;	./src/i2c.c:19: SDA = 0;
                                    345 ;	assignBit
      001344 C2 81            [12]  346 	clr	_P0_1
                                    347 ;	./src/i2c.c:20: SCL = 1;
                                    348 ;	assignBit
      001346 D2 80            [12]  349 	setb	_P0_0
                                    350 ;	./src/i2c.c:21: Delay();
      001348 12 14 22         [24]  351 	lcall	_Delay
                                    352 ;	./src/i2c.c:22: SDA = 1;
                                    353 ;	assignBit
      00134B D2 81            [12]  354 	setb	_P0_1
                                    355 ;	./src/i2c.c:23: Delay();
                                    356 ;	./src/i2c.c:24: }
      00134D 02 14 22         [24]  357 	ljmp	_Delay
                                    358 ;------------------------------------------------------------
                                    359 ;Allocation info for local variables in function 'I2C_SendACK'
                                    360 ;------------------------------------------------------------
                                    361 ;	./src/i2c.c:27: void I2C_SendACK(__bit ack)
                                    362 ;	-----------------------------------------
                                    363 ;	 function I2C_SendACK
                                    364 ;	-----------------------------------------
      001350                        365 _I2C_SendACK:
                                    366 ;	./src/i2c.c:29: SDA = ack;
                                    367 ;	assignBit
      001350 A2 04            [12]  368 	mov	c,_I2C_SendACK_PARM_1
      001352 92 81            [24]  369 	mov	_P0_1,c
                                    370 ;	./src/i2c.c:30: SCL = 1;
                                    371 ;	assignBit
      001354 D2 80            [12]  372 	setb	_P0_0
                                    373 ;	./src/i2c.c:31: Delay();
      001356 12 14 22         [24]  374 	lcall	_Delay
                                    375 ;	./src/i2c.c:32: SCL = 0;
                                    376 ;	assignBit
      001359 C2 80            [12]  377 	clr	_P0_0
                                    378 ;	./src/i2c.c:33: Delay();
                                    379 ;	./src/i2c.c:34: }
      00135B 02 14 22         [24]  380 	ljmp	_Delay
                                    381 ;------------------------------------------------------------
                                    382 ;Allocation info for local variables in function 'I2C_RecvACK'
                                    383 ;------------------------------------------------------------
                                    384 ;	./src/i2c.c:37: __bit I2C_RecvACK(void)
                                    385 ;	-----------------------------------------
                                    386 ;	 function I2C_RecvACK
                                    387 ;	-----------------------------------------
      00135E                        388 _I2C_RecvACK:
                                    389 ;	./src/i2c.c:39: SCL = 1;
                                    390 ;	assignBit
      00135E D2 80            [12]  391 	setb	_P0_0
                                    392 ;	./src/i2c.c:40: Delay();
      001360 12 14 22         [24]  393 	lcall	_Delay
                                    394 ;	./src/i2c.c:41: CY = SDA;
                                    395 ;	assignBit
      001363 A2 81            [12]  396 	mov	c,_P0_1
      001365 92 D7            [24]  397 	mov	_CY,c
                                    398 ;	./src/i2c.c:42: SCL = 0;
                                    399 ;	assignBit
      001367 C2 80            [12]  400 	clr	_P0_0
                                    401 ;	./src/i2c.c:43: Delay();
      001369 12 14 22         [24]  402 	lcall	_Delay
                                    403 ;	./src/i2c.c:44: return CY;
      00136C A2 D7            [12]  404 	mov	c,_CY
                                    405 ;	./src/i2c.c:45: }
      00136E 22               [24]  406 	ret
                                    407 ;------------------------------------------------------------
                                    408 ;Allocation info for local variables in function 'I2C_SendByte'
                                    409 ;------------------------------------------------------------
                                    410 ;dat                       Allocated to registers r7 
                                    411 ;i                         Allocated to registers r6 
                                    412 ;------------------------------------------------------------
                                    413 ;	./src/i2c.c:48: void I2C_SendByte(uint8_t dat)
                                    414 ;	-----------------------------------------
                                    415 ;	 function I2C_SendByte
                                    416 ;	-----------------------------------------
      00136F                        417 _I2C_SendByte:
      00136F AF 82            [24]  418 	mov	r7,dpl
                                    419 ;	./src/i2c.c:51: for (i=0; i<8; i++)
      001371 7E 00            [12]  420 	mov	r6,#0x00
      001373                        421 00102$:
                                    422 ;	./src/i2c.c:53: dat <<= 1;
      001373 8F 05            [24]  423 	mov	ar5,r7
      001375 ED               [12]  424 	mov	a,r5
      001376 2D               [12]  425 	add	a,r5
      001377 FF               [12]  426 	mov	r7,a
                                    427 ;	./src/i2c.c:54: SDA = CY;
                                    428 ;	assignBit
      001378 A2 D7            [12]  429 	mov	c,_CY
      00137A 92 81            [24]  430 	mov	_P0_1,c
                                    431 ;	./src/i2c.c:55: SCL = 1;
                                    432 ;	assignBit
      00137C D2 80            [12]  433 	setb	_P0_0
                                    434 ;	./src/i2c.c:56: Delay();
      00137E C0 07            [24]  435 	push	ar7
      001380 C0 06            [24]  436 	push	ar6
      001382 12 14 22         [24]  437 	lcall	_Delay
                                    438 ;	./src/i2c.c:57: SCL = 0;
                                    439 ;	assignBit
      001385 C2 80            [12]  440 	clr	_P0_0
                                    441 ;	./src/i2c.c:58: Delay();
      001387 12 14 22         [24]  442 	lcall	_Delay
      00138A D0 06            [24]  443 	pop	ar6
      00138C D0 07            [24]  444 	pop	ar7
                                    445 ;	./src/i2c.c:51: for (i=0; i<8; i++)
      00138E 0E               [12]  446 	inc	r6
      00138F BE 08 00         [24]  447 	cjne	r6,#0x08,00115$
      001392                        448 00115$:
      001392 40 DF            [24]  449 	jc	00102$
                                    450 ;	./src/i2c.c:60: I2C_RecvACK();
                                    451 ;	./src/i2c.c:61: }
      001394 02 13 5E         [24]  452 	ljmp	_I2C_RecvACK
                                    453 ;------------------------------------------------------------
                                    454 ;Allocation info for local variables in function 'I2C_RecvByte'
                                    455 ;------------------------------------------------------------
                                    456 ;i                         Allocated to registers r6 
                                    457 ;dat                       Allocated to registers r5 
                                    458 ;------------------------------------------------------------
                                    459 ;	./src/i2c.c:64: uint8_t I2C_RecvByte(void)
                                    460 ;	-----------------------------------------
                                    461 ;	 function I2C_RecvByte
                                    462 ;	-----------------------------------------
      001397                        463 _I2C_RecvByte:
                                    464 ;	./src/i2c.c:67: uint8_t dat = 0;
      001397 7F 00            [12]  465 	mov	r7,#0x00
                                    466 ;	./src/i2c.c:68: SDA = 1;
                                    467 ;	assignBit
      001399 D2 81            [12]  468 	setb	_P0_1
                                    469 ;	./src/i2c.c:69: for (i=0; i<8; i++)
      00139B 7E 00            [12]  470 	mov	r6,#0x00
      00139D                        471 00102$:
                                    472 ;	./src/i2c.c:71: dat <<= 1;
      00139D 8F 05            [24]  473 	mov	ar5,r7
      00139F ED               [12]  474 	mov	a,r5
      0013A0 2D               [12]  475 	add	a,r5
      0013A1 FD               [12]  476 	mov	r5,a
                                    477 ;	./src/i2c.c:72: SCL = 1;
                                    478 ;	assignBit
      0013A2 D2 80            [12]  479 	setb	_P0_0
                                    480 ;	./src/i2c.c:73: Delay();
      0013A4 C0 06            [24]  481 	push	ar6
      0013A6 C0 05            [24]  482 	push	ar5
      0013A8 12 14 22         [24]  483 	lcall	_Delay
      0013AB D0 05            [24]  484 	pop	ar5
      0013AD D0 06            [24]  485 	pop	ar6
                                    486 ;	./src/i2c.c:74: dat |= SDA;             
      0013AF A2 81            [12]  487 	mov	c,_P0_1
      0013B1 E4               [12]  488 	clr	a
      0013B2 33               [12]  489 	rlc	a
      0013B3 4D               [12]  490 	orl	a,r5
      0013B4 FF               [12]  491 	mov	r7,a
                                    492 ;	./src/i2c.c:75: SCL = 0;
                                    493 ;	assignBit
      0013B5 C2 80            [12]  494 	clr	_P0_0
                                    495 ;	./src/i2c.c:76: Delay();
      0013B7 C0 07            [24]  496 	push	ar7
      0013B9 C0 06            [24]  497 	push	ar6
      0013BB 12 14 22         [24]  498 	lcall	_Delay
      0013BE D0 06            [24]  499 	pop	ar6
      0013C0 D0 07            [24]  500 	pop	ar7
                                    501 ;	./src/i2c.c:69: for (i=0; i<8; i++)
      0013C2 0E               [12]  502 	inc	r6
      0013C3 BE 08 00         [24]  503 	cjne	r6,#0x08,00117$
      0013C6                        504 00117$:
      0013C6 40 D5            [24]  505 	jc	00102$
                                    506 ;	./src/i2c.c:78: return dat;
      0013C8 8F 82            [24]  507 	mov	dpl,r7
                                    508 ;	./src/i2c.c:79: }
      0013CA 22               [24]  509 	ret
                                    510 ;------------------------------------------------------------
                                    511 ;Allocation info for local variables in function 'Single_WriteI2C'
                                    512 ;------------------------------------------------------------
                                    513 ;REG_Address               Allocated with name '_Single_WriteI2C_PARM_2'
                                    514 ;REG_data                  Allocated with name '_Single_WriteI2C_PARM_3'
                                    515 ;SlaveAddress              Allocated to registers r7 
                                    516 ;------------------------------------------------------------
                                    517 ;	./src/i2c.c:82: void Single_WriteI2C(uint8_t SlaveAddress, uint8_t REG_Address,uint8_t REG_data)
                                    518 ;	-----------------------------------------
                                    519 ;	 function Single_WriteI2C
                                    520 ;	-----------------------------------------
      0013CB                        521 _Single_WriteI2C:
      0013CB AF 82            [24]  522 	mov	r7,dpl
                                    523 ;	./src/i2c.c:84: I2C_Start();
      0013CD C0 07            [24]  524 	push	ar7
      0013CF 12 13 35         [24]  525 	lcall	_I2C_Start
      0013D2 D0 07            [24]  526 	pop	ar7
                                    527 ;	./src/i2c.c:85: I2C_SendByte(SlaveAddress);
      0013D4 8F 82            [24]  528 	mov	dpl,r7
      0013D6 12 13 6F         [24]  529 	lcall	_I2C_SendByte
                                    530 ;	./src/i2c.c:86: I2C_SendByte(REG_Address);
      0013D9 85 08 82         [24]  531 	mov	dpl,_Single_WriteI2C_PARM_2
      0013DC 12 13 6F         [24]  532 	lcall	_I2C_SendByte
                                    533 ;	./src/i2c.c:87: I2C_SendByte(REG_data);
      0013DF 85 09 82         [24]  534 	mov	dpl,_Single_WriteI2C_PARM_3
      0013E2 12 13 6F         [24]  535 	lcall	_I2C_SendByte
                                    536 ;	./src/i2c.c:88: I2C_Stop();
                                    537 ;	./src/i2c.c:89: }
      0013E5 02 13 44         [24]  538 	ljmp	_I2C_Stop
                                    539 ;------------------------------------------------------------
                                    540 ;Allocation info for local variables in function 'Single_ReadI2C'
                                    541 ;------------------------------------------------------------
                                    542 ;REG_Address               Allocated with name '_Single_ReadI2C_PARM_2'
                                    543 ;SlaveAddress              Allocated to registers r7 
                                    544 ;REG_data                  Allocated to registers r7 
                                    545 ;------------------------------------------------------------
                                    546 ;	./src/i2c.c:92: uint8_t Single_ReadI2C(uint8_t SlaveAddress, uint8_t REG_Address)
                                    547 ;	-----------------------------------------
                                    548 ;	 function Single_ReadI2C
                                    549 ;	-----------------------------------------
      0013E8                        550 _Single_ReadI2C:
      0013E8 AF 82            [24]  551 	mov	r7,dpl
                                    552 ;	./src/i2c.c:95: I2C_Start();
      0013EA C0 07            [24]  553 	push	ar7
      0013EC 12 13 35         [24]  554 	lcall	_I2C_Start
      0013EF D0 07            [24]  555 	pop	ar7
                                    556 ;	./src/i2c.c:96: I2C_SendByte(SlaveAddress);
      0013F1 8F 82            [24]  557 	mov	dpl,r7
      0013F3 C0 07            [24]  558 	push	ar7
      0013F5 12 13 6F         [24]  559 	lcall	_I2C_SendByte
                                    560 ;	./src/i2c.c:97: I2C_SendByte(REG_Address);
      0013F8 85 0A 82         [24]  561 	mov	dpl,_Single_ReadI2C_PARM_2
      0013FB 12 13 6F         [24]  562 	lcall	_I2C_SendByte
                                    563 ;	./src/i2c.c:98: I2C_Stop();
      0013FE 12 13 44         [24]  564 	lcall	_I2C_Stop
                                    565 ;	./src/i2c.c:100: I2C_Start();
      001401 12 13 35         [24]  566 	lcall	_I2C_Start
      001404 D0 07            [24]  567 	pop	ar7
                                    568 ;	./src/i2c.c:101: I2C_SendByte(SlaveAddress|0x01);  // R/W#: 1 means read mode
      001406 74 01            [12]  569 	mov	a,#0x01
      001408 4F               [12]  570 	orl	a,r7
      001409 F5 82            [12]  571 	mov	dpl,a
      00140B 12 13 6F         [24]  572 	lcall	_I2C_SendByte
                                    573 ;	./src/i2c.c:102: REG_data=I2C_RecvByte();
      00140E 12 13 97         [24]  574 	lcall	_I2C_RecvByte
      001411 AF 82            [24]  575 	mov	r7,dpl
                                    576 ;	./src/i2c.c:103: I2C_SendACK(1);
                                    577 ;	assignBit
      001413 D2 04            [12]  578 	setb	_I2C_SendACK_PARM_1
      001415 C0 07            [24]  579 	push	ar7
      001417 12 13 50         [24]  580 	lcall	_I2C_SendACK
                                    581 ;	./src/i2c.c:104: I2C_Stop();
      00141A 12 13 44         [24]  582 	lcall	_I2C_Stop
      00141D D0 07            [24]  583 	pop	ar7
                                    584 ;	./src/i2c.c:105: return REG_data;
      00141F 8F 82            [24]  585 	mov	dpl,r7
                                    586 ;	./src/i2c.c:106: }
      001421 22               [24]  587 	ret
                                    588 ;------------------------------------------------------------
                                    589 ;Allocation info for local variables in function 'Delay'
                                    590 ;------------------------------------------------------------
                                    591 ;i                         Allocated to registers r7 
                                    592 ;------------------------------------------------------------
                                    593 ;	./src/i2c.c:108: void Delay(void)
                                    594 ;	-----------------------------------------
                                    595 ;	 function Delay
                                    596 ;	-----------------------------------------
      001422                        597 _Delay:
                                    598 ;	./src/i2c.c:111: for (i = 0; i < 5; i++);
      001422 7F 05            [12]  599 	mov	r7,#0x05
      001424                        600 00104$:
      001424 DF FE            [24]  601 	djnz	r7,00104$
                                    602 ;	./src/i2c.c:112: }
      001426 22               [24]  603 	ret
                                    604 	.area CSEG    (CODE)
                                    605 	.area CONST   (CODE)
                                    606 	.area XINIT   (CODE)
                                    607 	.area CABS    (ABS,CODE)

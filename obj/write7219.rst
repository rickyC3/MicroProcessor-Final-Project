                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module write7219
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _sendbyte_PARM_2
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _F1
                                     19 	.globl _P
                                     20 	.globl _PS
                                     21 	.globl _PT1
                                     22 	.globl _PX1
                                     23 	.globl _PT0
                                     24 	.globl _PX0
                                     25 	.globl _RD
                                     26 	.globl _WR
                                     27 	.globl _T1
                                     28 	.globl _T0
                                     29 	.globl _INT1
                                     30 	.globl _INT0
                                     31 	.globl _TXD
                                     32 	.globl _RXD
                                     33 	.globl _P3_7
                                     34 	.globl _P3_6
                                     35 	.globl _P3_5
                                     36 	.globl _P3_4
                                     37 	.globl _P3_3
                                     38 	.globl _P3_2
                                     39 	.globl _P3_1
                                     40 	.globl _P3_0
                                     41 	.globl _EA
                                     42 	.globl _ES
                                     43 	.globl _ET1
                                     44 	.globl _EX1
                                     45 	.globl _ET0
                                     46 	.globl _EX0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _SM0
                                     56 	.globl _SM1
                                     57 	.globl _SM2
                                     58 	.globl _REN
                                     59 	.globl _TB8
                                     60 	.globl _RB8
                                     61 	.globl _TI
                                     62 	.globl _RI
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _TF1
                                     72 	.globl _TR1
                                     73 	.globl _TF0
                                     74 	.globl _TR0
                                     75 	.globl _IE1
                                     76 	.globl _IT1
                                     77 	.globl _IE0
                                     78 	.globl _IT0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _B
                                     88 	.globl _ACC
                                     89 	.globl _PSW
                                     90 	.globl _IP
                                     91 	.globl _P3
                                     92 	.globl _IE
                                     93 	.globl _P2
                                     94 	.globl _SBUF
                                     95 	.globl _SCON
                                     96 	.globl _P1
                                     97 	.globl _TH1
                                     98 	.globl _TH0
                                     99 	.globl _TL1
                                    100 	.globl _TL0
                                    101 	.globl _TMOD
                                    102 	.globl _TCON
                                    103 	.globl _PCON
                                    104 	.globl _DPH
                                    105 	.globl _DPL
                                    106 	.globl _SP
                                    107 	.globl _P0
                                    108 	.globl _Writesingle7219_PARM_3
                                    109 	.globl _Writesingle7219_PARM_2
                                    110 	.globl _Write7219_PARM_2
                                    111 	.globl _sendbyte
                                    112 	.globl _Write7219
                                    113 	.globl _Writesingle7219
                                    114 	.globl _Initial7219
                                    115 ;--------------------------------------------------------
                                    116 ; special function registers
                                    117 ;--------------------------------------------------------
                                    118 	.area RSEG    (ABS,DATA)
      000000                        119 	.org 0x0000
                           000080   120 _P0	=	0x0080
                           000081   121 _SP	=	0x0081
                           000082   122 _DPL	=	0x0082
                           000083   123 _DPH	=	0x0083
                           000087   124 _PCON	=	0x0087
                           000088   125 _TCON	=	0x0088
                           000089   126 _TMOD	=	0x0089
                           00008A   127 _TL0	=	0x008a
                           00008B   128 _TL1	=	0x008b
                           00008C   129 _TH0	=	0x008c
                           00008D   130 _TH1	=	0x008d
                           000090   131 _P1	=	0x0090
                           000098   132 _SCON	=	0x0098
                           000099   133 _SBUF	=	0x0099
                           0000A0   134 _P2	=	0x00a0
                           0000A8   135 _IE	=	0x00a8
                           0000B0   136 _P3	=	0x00b0
                           0000B8   137 _IP	=	0x00b8
                           0000D0   138 _PSW	=	0x00d0
                           0000E0   139 _ACC	=	0x00e0
                           0000F0   140 _B	=	0x00f0
                                    141 ;--------------------------------------------------------
                                    142 ; special function bits
                                    143 ;--------------------------------------------------------
                                    144 	.area RSEG    (ABS,DATA)
      000000                        145 	.org 0x0000
                           000080   146 _P0_0	=	0x0080
                           000081   147 _P0_1	=	0x0081
                           000082   148 _P0_2	=	0x0082
                           000083   149 _P0_3	=	0x0083
                           000084   150 _P0_4	=	0x0084
                           000085   151 _P0_5	=	0x0085
                           000086   152 _P0_6	=	0x0086
                           000087   153 _P0_7	=	0x0087
                           000088   154 _IT0	=	0x0088
                           000089   155 _IE0	=	0x0089
                           00008A   156 _IT1	=	0x008a
                           00008B   157 _IE1	=	0x008b
                           00008C   158 _TR0	=	0x008c
                           00008D   159 _TF0	=	0x008d
                           00008E   160 _TR1	=	0x008e
                           00008F   161 _TF1	=	0x008f
                           000090   162 _P1_0	=	0x0090
                           000091   163 _P1_1	=	0x0091
                           000092   164 _P1_2	=	0x0092
                           000093   165 _P1_3	=	0x0093
                           000094   166 _P1_4	=	0x0094
                           000095   167 _P1_5	=	0x0095
                           000096   168 _P1_6	=	0x0096
                           000097   169 _P1_7	=	0x0097
                           000098   170 _RI	=	0x0098
                           000099   171 _TI	=	0x0099
                           00009A   172 _RB8	=	0x009a
                           00009B   173 _TB8	=	0x009b
                           00009C   174 _REN	=	0x009c
                           00009D   175 _SM2	=	0x009d
                           00009E   176 _SM1	=	0x009e
                           00009F   177 _SM0	=	0x009f
                           0000A0   178 _P2_0	=	0x00a0
                           0000A1   179 _P2_1	=	0x00a1
                           0000A2   180 _P2_2	=	0x00a2
                           0000A3   181 _P2_3	=	0x00a3
                           0000A4   182 _P2_4	=	0x00a4
                           0000A5   183 _P2_5	=	0x00a5
                           0000A6   184 _P2_6	=	0x00a6
                           0000A7   185 _P2_7	=	0x00a7
                           0000A8   186 _EX0	=	0x00a8
                           0000A9   187 _ET0	=	0x00a9
                           0000AA   188 _EX1	=	0x00aa
                           0000AB   189 _ET1	=	0x00ab
                           0000AC   190 _ES	=	0x00ac
                           0000AF   191 _EA	=	0x00af
                           0000B0   192 _P3_0	=	0x00b0
                           0000B1   193 _P3_1	=	0x00b1
                           0000B2   194 _P3_2	=	0x00b2
                           0000B3   195 _P3_3	=	0x00b3
                           0000B4   196 _P3_4	=	0x00b4
                           0000B5   197 _P3_5	=	0x00b5
                           0000B6   198 _P3_6	=	0x00b6
                           0000B7   199 _P3_7	=	0x00b7
                           0000B0   200 _RXD	=	0x00b0
                           0000B1   201 _TXD	=	0x00b1
                           0000B2   202 _INT0	=	0x00b2
                           0000B3   203 _INT1	=	0x00b3
                           0000B4   204 _T0	=	0x00b4
                           0000B5   205 _T1	=	0x00b5
                           0000B6   206 _WR	=	0x00b6
                           0000B7   207 _RD	=	0x00b7
                           0000B8   208 _PX0	=	0x00b8
                           0000B9   209 _PT0	=	0x00b9
                           0000BA   210 _PX1	=	0x00ba
                           0000BB   211 _PT1	=	0x00bb
                           0000BC   212 _PS	=	0x00bc
                           0000D0   213 _P	=	0x00d0
                           0000D1   214 _F1	=	0x00d1
                           0000D2   215 _OV	=	0x00d2
                           0000D3   216 _RS0	=	0x00d3
                           0000D4   217 _RS1	=	0x00d4
                           0000D5   218 _F0	=	0x00d5
                           0000D6   219 _AC	=	0x00d6
                           0000D7   220 _CY	=	0x00d7
                                    221 ;--------------------------------------------------------
                                    222 ; overlayable register banks
                                    223 ;--------------------------------------------------------
                                    224 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        225 	.ds 8
                                    226 ;--------------------------------------------------------
                                    227 ; internal ram data
                                    228 ;--------------------------------------------------------
                                    229 	.area DSEG    (DATA)
      00000C                        230 _Write7219_PARM_2:
      00000C                        231 	.ds 1
      00000D                        232 _Writesingle7219_PARM_2:
      00000D                        233 	.ds 1
      00000E                        234 _Writesingle7219_PARM_3:
      00000E                        235 	.ds 1
                                    236 ;--------------------------------------------------------
                                    237 ; overlayable items in internal ram 
                                    238 ;--------------------------------------------------------
                                    239 	.area	OSEG    (OVR,DATA)
      00000F                        240 _sendbyte_PARM_2:
      00000F                        241 	.ds 1
                                    242 ;--------------------------------------------------------
                                    243 ; indirectly addressable internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area ISEG    (DATA)
                                    246 ;--------------------------------------------------------
                                    247 ; absolute internal ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area IABS    (ABS,DATA)
                                    250 	.area IABS    (ABS,DATA)
                                    251 ;--------------------------------------------------------
                                    252 ; bit data
                                    253 ;--------------------------------------------------------
                                    254 	.area BSEG    (BIT)
                                    255 ;--------------------------------------------------------
                                    256 ; paged external ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area PSEG    (PAG,XDATA)
                                    259 ;--------------------------------------------------------
                                    260 ; external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area XSEG    (XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; absolute external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area XABS    (ABS,XDATA)
                                    267 ;--------------------------------------------------------
                                    268 ; external initialized ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area XISEG   (XDATA)
                                    271 	.area HOME    (CODE)
                                    272 	.area GSINIT0 (CODE)
                                    273 	.area GSINIT1 (CODE)
                                    274 	.area GSINIT2 (CODE)
                                    275 	.area GSINIT3 (CODE)
                                    276 	.area GSINIT4 (CODE)
                                    277 	.area GSINIT5 (CODE)
                                    278 	.area GSINIT  (CODE)
                                    279 	.area GSFINAL (CODE)
                                    280 	.area CSEG    (CODE)
                                    281 ;--------------------------------------------------------
                                    282 ; global & static initialisations
                                    283 ;--------------------------------------------------------
                                    284 	.area HOME    (CODE)
                                    285 	.area GSINIT  (CODE)
                                    286 	.area GSFINAL (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 ;--------------------------------------------------------
                                    289 ; Home
                                    290 ;--------------------------------------------------------
                                    291 	.area HOME    (CODE)
                                    292 	.area HOME    (CODE)
                                    293 ;--------------------------------------------------------
                                    294 ; code
                                    295 ;--------------------------------------------------------
                                    296 	.area CSEG    (CODE)
                                    297 ;------------------------------------------------------------
                                    298 ;Allocation info for local variables in function 'sendbyte'
                                    299 ;------------------------------------------------------------
                                    300 ;dat                       Allocated with name '_sendbyte_PARM_2'
                                    301 ;address                   Allocated to registers r7 
                                    302 ;i                         Allocated to registers r6 
                                    303 ;------------------------------------------------------------
                                    304 ;	./src/write7219.c:4: void sendbyte(unsigned char address, unsigned char dat) {
                                    305 ;	-----------------------------------------
                                    306 ;	 function sendbyte
                                    307 ;	-----------------------------------------
      001585                        308 _sendbyte:
                           000007   309 	ar7 = 0x07
                           000006   310 	ar6 = 0x06
                           000005   311 	ar5 = 0x05
                           000004   312 	ar4 = 0x04
                           000003   313 	ar3 = 0x03
                           000002   314 	ar2 = 0x02
                           000001   315 	ar1 = 0x01
                           000000   316 	ar0 = 0x00
      001585 AF 82            [24]  317 	mov	r7,dpl
                                    318 ;	./src/write7219.c:8: for (i = 0; i < 8; i++) {        // get last 8 bits(address)
      001587 7E 00            [12]  319 	mov	r6,#0x00
      001589                        320 00103$:
                                    321 ;	./src/write7219.c:9: CLK = 0;
                                    322 ;	assignBit
      001589 C2 84            [12]  323 	clr	_P0_4
                                    324 ;	./src/write7219.c:10: DOUT = (address & 0x80);      // get msb and shift left
      00158B EF               [12]  325 	mov	a,r7
      00158C 23               [12]  326 	rl	a
      00158D 54 01            [12]  327 	anl	a,#0x01
                                    328 ;	assignBit
      00158F 24 FF            [12]  329 	add	a,#0xff
      001591 92 82            [24]  330 	mov	_P0_2,c
                                    331 ;	./src/write7219.c:11: address <<= 1; 
      001593 8F 05            [24]  332 	mov	ar5,r7
      001595 ED               [12]  333 	mov	a,r5
      001596 2D               [12]  334 	add	a,r5
      001597 FF               [12]  335 	mov	r7,a
                                    336 ;	./src/write7219.c:12: CLK = 1;
                                    337 ;	assignBit
      001598 D2 84            [12]  338 	setb	_P0_4
                                    339 ;	./src/write7219.c:8: for (i = 0; i < 8; i++) {        // get last 8 bits(address)
      00159A 0E               [12]  340 	inc	r6
      00159B BE 08 00         [24]  341 	cjne	r6,#0x08,00123$
      00159E                        342 00123$:
      00159E 40 E9            [24]  343 	jc	00103$
                                    344 ;	./src/write7219.c:14: for (i = 0; i < 8; i++) {        // get first 8 bits(data)
      0015A0 7F 00            [12]  345 	mov	r7,#0x00
      0015A2                        346 00105$:
                                    347 ;	./src/write7219.c:15: CLK = 0;
                                    348 ;	assignBit
      0015A2 C2 84            [12]  349 	clr	_P0_4
                                    350 ;	./src/write7219.c:16: DOUT = (dat & 0x80);          // get msb and shit left
      0015A4 E5 0F            [12]  351 	mov	a,_sendbyte_PARM_2
      0015A6 23               [12]  352 	rl	a
      0015A7 54 01            [12]  353 	anl	a,#0x01
                                    354 ;	assignBit
      0015A9 24 FF            [12]  355 	add	a,#0xff
      0015AB 92 82            [24]  356 	mov	_P0_2,c
                                    357 ;	./src/write7219.c:17: dat <<= 1;
      0015AD E5 0F            [12]  358 	mov	a,_sendbyte_PARM_2
      0015AF 25 E0            [12]  359 	add	a,acc
      0015B1 F5 0F            [12]  360 	mov	_sendbyte_PARM_2,a
                                    361 ;	./src/write7219.c:18: CLK = 1;
                                    362 ;	assignBit
      0015B3 D2 84            [12]  363 	setb	_P0_4
                                    364 ;	./src/write7219.c:14: for (i = 0; i < 8; i++) {        // get first 8 bits(data)
      0015B5 0F               [12]  365 	inc	r7
      0015B6 BF 08 00         [24]  366 	cjne	r7,#0x08,00125$
      0015B9                        367 00125$:
      0015B9 40 E7            [24]  368 	jc	00105$
                                    369 ;	./src/write7219.c:20: }
      0015BB 22               [24]  370 	ret
                                    371 ;------------------------------------------------------------
                                    372 ;Allocation info for local variables in function 'Write7219'
                                    373 ;------------------------------------------------------------
                                    374 ;dat                       Allocated with name '_Write7219_PARM_2'
                                    375 ;address                   Allocated to registers r7 
                                    376 ;cnt                       Allocated to registers r6 
                                    377 ;------------------------------------------------------------
                                    378 ;	./src/write7219.c:23: void Write7219(unsigned char address, unsigned char dat) {
                                    379 ;	-----------------------------------------
                                    380 ;	 function Write7219
                                    381 ;	-----------------------------------------
      0015BC                        382 _Write7219:
      0015BC AF 82            [24]  383 	mov	r7,dpl
                                    384 ;	./src/write7219.c:27: LOAD = 0;
                                    385 ;	assignBit
      0015BE C2 83            [12]  386 	clr	_P0_3
                                    387 ;	./src/write7219.c:28: for (cnt = 1; cnt <= matrixnum; cnt++) {        // send address and data according to the nuber of your matrix
      0015C0 7E 01            [12]  388 	mov	r6,#0x01
      0015C2                        389 00102$:
                                    390 ;	./src/write7219.c:29: sendbyte(address, dat);
      0015C2 85 0C 0F         [24]  391 	mov	_sendbyte_PARM_2,_Write7219_PARM_2
      0015C5 8F 82            [24]  392 	mov	dpl,r7
      0015C7 C0 07            [24]  393 	push	ar7
      0015C9 C0 06            [24]  394 	push	ar6
      0015CB 12 15 85         [24]  395 	lcall	_sendbyte
      0015CE D0 06            [24]  396 	pop	ar6
      0015D0 D0 07            [24]  397 	pop	ar7
                                    398 ;	./src/write7219.c:28: for (cnt = 1; cnt <= matrixnum; cnt++) {        // send address and data according to the nuber of your matrix
      0015D2 0E               [12]  399 	inc	r6
      0015D3 EE               [12]  400 	mov	a,r6
      0015D4 24 FB            [12]  401 	add	a,#0xff - 0x04
      0015D6 50 EA            [24]  402 	jnc	00102$
                                    403 ;	./src/write7219.c:31: LOAD = 1;                                       // after the load becomes 1, will the 7-segment display display
                                    404 ;	assignBit
      0015D8 D2 83            [12]  405 	setb	_P0_3
                                    406 ;	./src/write7219.c:32: }
      0015DA 22               [24]  407 	ret
                                    408 ;------------------------------------------------------------
                                    409 ;Allocation info for local variables in function 'Writesingle7219'
                                    410 ;------------------------------------------------------------
                                    411 ;address                   Allocated with name '_Writesingle7219_PARM_2'
                                    412 ;dat                       Allocated with name '_Writesingle7219_PARM_3'
                                    413 ;chosen                    Allocated to registers r7 
                                    414 ;cnt                       Allocated to registers 
                                    415 ;------------------------------------------------------------
                                    416 ;	./src/write7219.c:35: void Writesingle7219(unsigned char chosen, unsigned char address, unsigned char dat) {
                                    417 ;	-----------------------------------------
                                    418 ;	 function Writesingle7219
                                    419 ;	-----------------------------------------
      0015DB                        420 _Writesingle7219:
      0015DB AF 82            [24]  421 	mov	r7,dpl
                                    422 ;	./src/write7219.c:39: LOAD = 0;
                                    423 ;	assignBit
      0015DD C2 83            [12]  424 	clr	_P0_3
                                    425 ;	./src/write7219.c:40: for (cnt = matrixnum; cnt > chosen; cnt--) {    // write data into the selected matrix
      0015DF 7E 04            [12]  426 	mov	r6,#0x04
      0015E1                        427 00104$:
      0015E1 C3               [12]  428 	clr	c
      0015E2 EF               [12]  429 	mov	a,r7
      0015E3 9E               [12]  430 	subb	a,r6
      0015E4 50 14            [24]  431 	jnc	00101$
                                    432 ;	./src/write7219.c:41: sendbyte(0x00, 0x00);                       // write 0 to no-op
      0015E6 75 0F 00         [24]  433 	mov	_sendbyte_PARM_2,#0x00
      0015E9 75 82 00         [24]  434 	mov	dpl,#0x00
      0015EC C0 07            [24]  435 	push	ar7
      0015EE C0 06            [24]  436 	push	ar6
      0015F0 12 15 85         [24]  437 	lcall	_sendbyte
      0015F3 D0 06            [24]  438 	pop	ar6
      0015F5 D0 07            [24]  439 	pop	ar7
                                    440 ;	./src/write7219.c:40: for (cnt = matrixnum; cnt > chosen; cnt--) {    // write data into the selected matrix
      0015F7 1E               [12]  441 	dec	r6
      0015F8 80 E7            [24]  442 	sjmp	00104$
      0015FA                        443 00101$:
                                    444 ;	./src/write7219.c:43: sendbyte(address, dat);                        // sent data to chosen led-matrix
      0015FA 85 0E 0F         [24]  445 	mov	_sendbyte_PARM_2,_Writesingle7219_PARM_3
      0015FD 85 0D 82         [24]  446 	mov	dpl,_Writesingle7219_PARM_2
      001600 C0 07            [24]  447 	push	ar7
      001602 12 15 85         [24]  448 	lcall	_sendbyte
      001605 D0 07            [24]  449 	pop	ar7
                                    450 ;	./src/write7219.c:44: for (cnt = chosen-1; cnt > 0; cnt--) { 
      001607 1F               [12]  451 	dec	r7
      001608                        452 00107$:
      001608 EF               [12]  453 	mov	a,r7
      001609 60 10            [24]  454 	jz	00102$
                                    455 ;	./src/write7219.c:45: sendbyte(0x00, 0x00);                       // write 0 to no-op
      00160B 75 0F 00         [24]  456 	mov	_sendbyte_PARM_2,#0x00
      00160E 75 82 00         [24]  457 	mov	dpl,#0x00
      001611 C0 07            [24]  458 	push	ar7
      001613 12 15 85         [24]  459 	lcall	_sendbyte
      001616 D0 07            [24]  460 	pop	ar7
                                    461 ;	./src/write7219.c:44: for (cnt = chosen-1; cnt > 0; cnt--) { 
      001618 1F               [12]  462 	dec	r7
      001619 80 ED            [24]  463 	sjmp	00107$
      00161B                        464 00102$:
                                    465 ;	./src/write7219.c:47: LOAD = 1;
                                    466 ;	assignBit
      00161B D2 83            [12]  467 	setb	_P0_3
                                    468 ;	./src/write7219.c:48: }
      00161D 22               [24]  469 	ret
                                    470 ;------------------------------------------------------------
                                    471 ;Allocation info for local variables in function 'Initial7219'
                                    472 ;------------------------------------------------------------
                                    473 ;i                         Allocated to registers r7 
                                    474 ;------------------------------------------------------------
                                    475 ;	./src/write7219.c:51: void Initial7219(void) {
                                    476 ;	-----------------------------------------
                                    477 ;	 function Initial7219
                                    478 ;	-----------------------------------------
      00161E                        479 _Initial7219:
                                    480 ;	./src/write7219.c:55: Write7219(SHUT_DOWN, 0x01);                     // normal mode(0xX1)
      00161E 75 0C 01         [24]  481 	mov	_Write7219_PARM_2,#0x01
      001621 75 82 0C         [24]  482 	mov	dpl,#0x0c
      001624 12 15 BC         [24]  483 	lcall	_Write7219
                                    484 ;	./src/write7219.c:56: Write7219(DISPLAY_TEST, 0x00); 
      001627 75 0C 00         [24]  485 	mov	_Write7219_PARM_2,#0x00
      00162A 75 82 0F         [24]  486 	mov	dpl,#0x0f
      00162D 12 15 BC         [24]  487 	lcall	_Write7219
                                    488 ;	./src/write7219.c:57: Write7219(DECODE_MODE, 0x00);                   // select non-decode mode
      001630 75 0C 00         [24]  489 	mov	_Write7219_PARM_2,#0x00
      001633 75 82 09         [24]  490 	mov	dpl,#0x09
      001636 12 15 BC         [24]  491 	lcall	_Write7219
                                    492 ;	./src/write7219.c:58: Write7219(SCAN_LIMIT, 0x07);                    // use all 8 LED
      001639 75 0C 07         [24]  493 	mov	_Write7219_PARM_2,#0x07
      00163C 75 82 0B         [24]  494 	mov	dpl,#0x0b
      00163F 12 15 BC         [24]  495 	lcall	_Write7219
                                    496 ;	./src/write7219.c:59: Write7219(INTENSITY, 0x00);                     // set up intensity
      001642 75 0C 00         [24]  497 	mov	_Write7219_PARM_2,#0x00
      001645 75 82 0A         [24]  498 	mov	dpl,#0x0a
      001648 12 15 BC         [24]  499 	lcall	_Write7219
                                    500 ;	./src/write7219.c:60: for (i = 1; i <= 8; i++) {
      00164B 7F 01            [12]  501 	mov	r7,#0x01
      00164D                        502 00102$:
                                    503 ;	./src/write7219.c:61: Write7219(i, 0x00);                         // turn off all LED
      00164D 75 0C 00         [24]  504 	mov	_Write7219_PARM_2,#0x00
      001650 8F 82            [24]  505 	mov	dpl,r7
      001652 C0 07            [24]  506 	push	ar7
      001654 12 15 BC         [24]  507 	lcall	_Write7219
      001657 D0 07            [24]  508 	pop	ar7
                                    509 ;	./src/write7219.c:60: for (i = 1; i <= 8; i++) {
      001659 0F               [12]  510 	inc	r7
      00165A EF               [12]  511 	mov	a,r7
      00165B 24 F7            [12]  512 	add	a,#0xff - 0x08
      00165D 50 EE            [24]  513 	jnc	00102$
                                    514 ;	./src/write7219.c:63: }
      00165F 22               [24]  515 	ret
                                    516 	.area CSEG    (CODE)
                                    517 	.area CONST   (CODE)
                                    518 	.area XINIT   (CODE)
                                    519 	.area CABS    (ABS,CODE)

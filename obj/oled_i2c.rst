                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module oled_i2c
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _OledFontTable
                                     12 	.globl _Single_WriteI2C
                                     13 	.globl _OLED_SetCursor_PARM_2
                                     14 	.globl _OLED_Init
                                     15 	.globl _OLED_DisplayChar
                                     16 	.globl _OLED_DisplayString
                                     17 	.globl _OLED_Clear
                                     18 	.globl _OLED_SetCursor
                                     19 	.globl _oledSendCommand
                                     20 	.globl _oledSendData
                                     21 ;--------------------------------------------------------
                                     22 ; special function registers
                                     23 ;--------------------------------------------------------
                                     24 	.area RSEG    (ABS,DATA)
      000000                         25 	.org 0x0000
                                     26 ;--------------------------------------------------------
                                     27 ; special function bits
                                     28 ;--------------------------------------------------------
                                     29 	.area RSEG    (ABS,DATA)
      000000                         30 	.org 0x0000
                                     31 ;--------------------------------------------------------
                                     32 ; overlayable register banks
                                     33 ;--------------------------------------------------------
                                     34 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         35 	.ds 8
                                     36 ;--------------------------------------------------------
                                     37 ; internal ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area DSEG    (DATA)
      00000B                         40 _OLED_SetCursor_PARM_2:
      00000B                         41 	.ds 1
                                     42 ;--------------------------------------------------------
                                     43 ; overlayable items in internal ram 
                                     44 ;--------------------------------------------------------
                                     45 ;--------------------------------------------------------
                                     46 ; indirectly addressable internal ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area ISEG    (DATA)
                                     49 ;--------------------------------------------------------
                                     50 ; absolute internal ram data
                                     51 ;--------------------------------------------------------
                                     52 	.area IABS    (ABS,DATA)
                                     53 	.area IABS    (ABS,DATA)
                                     54 ;--------------------------------------------------------
                                     55 ; bit data
                                     56 ;--------------------------------------------------------
                                     57 	.area BSEG    (BIT)
                                     58 ;--------------------------------------------------------
                                     59 ; paged external ram data
                                     60 ;--------------------------------------------------------
                                     61 	.area PSEG    (PAG,XDATA)
                                     62 ;--------------------------------------------------------
                                     63 ; external ram data
                                     64 ;--------------------------------------------------------
                                     65 	.area XSEG    (XDATA)
                                     66 ;--------------------------------------------------------
                                     67 ; absolute external ram data
                                     68 ;--------------------------------------------------------
                                     69 	.area XABS    (ABS,XDATA)
                                     70 ;--------------------------------------------------------
                                     71 ; external initialized ram data
                                     72 ;--------------------------------------------------------
                                     73 	.area XISEG   (XDATA)
                                     74 	.area HOME    (CODE)
                                     75 	.area GSINIT0 (CODE)
                                     76 	.area GSINIT1 (CODE)
                                     77 	.area GSINIT2 (CODE)
                                     78 	.area GSINIT3 (CODE)
                                     79 	.area GSINIT4 (CODE)
                                     80 	.area GSINIT5 (CODE)
                                     81 	.area GSINIT  (CODE)
                                     82 	.area GSFINAL (CODE)
                                     83 	.area CSEG    (CODE)
                                     84 ;--------------------------------------------------------
                                     85 ; global & static initialisations
                                     86 ;--------------------------------------------------------
                                     87 	.area HOME    (CODE)
                                     88 	.area GSINIT  (CODE)
                                     89 	.area GSFINAL (CODE)
                                     90 	.area GSINIT  (CODE)
                                     91 ;--------------------------------------------------------
                                     92 ; Home
                                     93 ;--------------------------------------------------------
                                     94 	.area HOME    (CODE)
                                     95 	.area HOME    (CODE)
                                     96 ;--------------------------------------------------------
                                     97 ; code
                                     98 ;--------------------------------------------------------
                                     99 	.area CSEG    (CODE)
                                    100 ;------------------------------------------------------------
                                    101 ;Allocation info for local variables in function 'OLED_Init'
                                    102 ;------------------------------------------------------------
                                    103 ;	./src/oled_i2c.c:17: void OLED_Init(void)
                                    104 ;	-----------------------------------------
                                    105 ;	 function OLED_Init
                                    106 ;	-----------------------------------------
      001427                        107 _OLED_Init:
                           000007   108 	ar7 = 0x07
                           000006   109 	ar6 = 0x06
                           000005   110 	ar5 = 0x05
                           000004   111 	ar4 = 0x04
                           000003   112 	ar3 = 0x03
                           000002   113 	ar2 = 0x02
                           000001   114 	ar1 = 0x01
                           000000   115 	ar0 = 0x00
                                    116 ;	./src/oled_i2c.c:19: oledSendCommand(0xa8);  //Set MUX Ratio
      001427 75 82 A8         [24]  117 	mov	dpl,#0xa8
      00142A 12 15 6D         [24]  118 	lcall	_oledSendCommand
                                    119 ;	./src/oled_i2c.c:20: oledSendCommand(0x3f);  
      00142D 75 82 3F         [24]  120 	mov	dpl,#0x3f
      001430 12 15 6D         [24]  121 	lcall	_oledSendCommand
                                    122 ;	./src/oled_i2c.c:21: oledSendCommand(0xd3);  //Set Display Offset
      001433 75 82 D3         [24]  123 	mov	dpl,#0xd3
      001436 12 15 6D         [24]  124 	lcall	_oledSendCommand
                                    125 ;	./src/oled_i2c.c:22: oledSendCommand(0x00);  
      001439 75 82 00         [24]  126 	mov	dpl,#0x00
      00143C 12 15 6D         [24]  127 	lcall	_oledSendCommand
                                    128 ;	./src/oled_i2c.c:23: oledSendCommand(0x40);  //Set Display Start Line
      00143F 75 82 40         [24]  129 	mov	dpl,#0x40
      001442 12 15 6D         [24]  130 	lcall	_oledSendCommand
                                    131 ;	./src/oled_i2c.c:24: oledSendCommand(0xa1);  //Set Segment re-map A0h/A1h
      001445 75 82 A1         [24]  132 	mov	dpl,#0xa1
      001448 12 15 6D         [24]  133 	lcall	_oledSendCommand
                                    134 ;	./src/oled_i2c.c:25: oledSendCommand(0xc8);  //Set COM OUTput
      00144B 75 82 C8         [24]  135 	mov	dpl,#0xc8
      00144E 12 15 6D         [24]  136 	lcall	_oledSendCommand
                                    137 ;	./src/oled_i2c.c:26: oledSendCommand(0xda); 
      001451 75 82 DA         [24]  138 	mov	dpl,#0xda
      001454 12 15 6D         [24]  139 	lcall	_oledSendCommand
                                    140 ;	./src/oled_i2c.c:27: oledSendCommand(0x12);
      001457 75 82 12         [24]  141 	mov	dpl,#0x12
      00145A 12 15 6D         [24]  142 	lcall	_oledSendCommand
                                    143 ;	./src/oled_i2c.c:28: oledSendCommand(0x81);
      00145D 75 82 81         [24]  144 	mov	dpl,#0x81
      001460 12 15 6D         [24]  145 	lcall	_oledSendCommand
                                    146 ;	./src/oled_i2c.c:29: oledSendCommand(0x7f);
      001463 75 82 7F         [24]  147 	mov	dpl,#0x7f
      001466 12 15 6D         [24]  148 	lcall	_oledSendCommand
                                    149 ;	./src/oled_i2c.c:30: oledSendCommand(0xa4);
      001469 75 82 A4         [24]  150 	mov	dpl,#0xa4
      00146C 12 15 6D         [24]  151 	lcall	_oledSendCommand
                                    152 ;	./src/oled_i2c.c:31: oledSendCommand(0xa6);
      00146F 75 82 A6         [24]  153 	mov	dpl,#0xa6
      001472 12 15 6D         [24]  154 	lcall	_oledSendCommand
                                    155 ;	./src/oled_i2c.c:32: oledSendCommand(0xd5);
      001475 75 82 D5         [24]  156 	mov	dpl,#0xd5
      001478 12 15 6D         [24]  157 	lcall	_oledSendCommand
                                    158 ;	./src/oled_i2c.c:33: oledSendCommand(0x80);
      00147B 75 82 80         [24]  159 	mov	dpl,#0x80
      00147E 12 15 6D         [24]  160 	lcall	_oledSendCommand
                                    161 ;	./src/oled_i2c.c:34: oledSendCommand(0x8d);
      001481 75 82 8D         [24]  162 	mov	dpl,#0x8d
      001484 12 15 6D         [24]  163 	lcall	_oledSendCommand
                                    164 ;	./src/oled_i2c.c:35: oledSendCommand(0x14);
      001487 75 82 14         [24]  165 	mov	dpl,#0x14
      00148A 12 15 6D         [24]  166 	lcall	_oledSendCommand
                                    167 ;	./src/oled_i2c.c:36: oledSendCommand(0xaf);
      00148D 75 82 AF         [24]  168 	mov	dpl,#0xaf
      001490 12 15 6D         [24]  169 	lcall	_oledSendCommand
                                    170 ;	./src/oled_i2c.c:38: OLED_Clear();  // Clear the complete LCD during init 
                                    171 ;	./src/oled_i2c.c:39: }
      001493 02 15 12         [24]  172 	ljmp	_OLED_Clear
                                    173 ;------------------------------------------------------------
                                    174 ;Allocation info for local variables in function 'OLED_DisplayChar'
                                    175 ;------------------------------------------------------------
                                    176 ;ch                        Allocated to registers r7 
                                    177 ;i                         Allocated to registers r5 
                                    178 ;index                     Allocated to registers r6 r7 
                                    179 ;------------------------------------------------------------
                                    180 ;	./src/oled_i2c.c:51: void OLED_DisplayChar(uint8_t ch)
                                    181 ;	-----------------------------------------
                                    182 ;	 function OLED_DisplayChar
                                    183 ;	-----------------------------------------
      001496                        184 _OLED_DisplayChar:
      001496 AF 82            [24]  185 	mov	r7,dpl
                                    186 ;	./src/oled_i2c.c:56: if(ch!='\n') {  /* TODO */ 
      001498 BF 0A 01         [24]  187 	cjne	r7,#0x0a,00124$
      00149B 22               [24]  188 	ret
      00149C                        189 00124$:
                                    190 ;	./src/oled_i2c.c:57: index = (ch - 0x20);
      00149C 7E 00            [12]  191 	mov	r6,#0x00
      00149E EF               [12]  192 	mov	a,r7
      00149F 24 E0            [12]  193 	add	a,#0xe0
      0014A1 F5 0F            [12]  194 	mov	__mulint_PARM_2,a
      0014A3 EE               [12]  195 	mov	a,r6
      0014A4 34 FF            [12]  196 	addc	a,#0xff
      0014A6 F5 10            [12]  197 	mov	(__mulint_PARM_2 + 1),a
                                    198 ;	./src/oled_i2c.c:58: index = index * 5; // As the lookup table starts from Space(0x20)
      0014A8 90 00 05         [24]  199 	mov	dptr,#0x0005
      0014AB 12 16 60         [24]  200 	lcall	__mulint
      0014AE AE 82            [24]  201 	mov	r6,dpl
      0014B0 AF 83            [24]  202 	mov	r7,dph
                                    203 ;	./src/oled_i2c.c:60: for(i = 0; i < 5; i ++)
      0014B2 7D 00            [12]  204 	mov	r5,#0x00
      0014B4                        205 00104$:
                                    206 ;	./src/oled_i2c.c:61: oledSendData(OledFontTable[index + i]); /* Get the data to be displayed for LookUptable*/
      0014B4 8D 03            [24]  207 	mov	ar3,r5
      0014B6 7C 00            [12]  208 	mov	r4,#0x00
      0014B8 EB               [12]  209 	mov	a,r3
      0014B9 2E               [12]  210 	add	a,r6
      0014BA FB               [12]  211 	mov	r3,a
      0014BB EC               [12]  212 	mov	a,r4
      0014BC 3F               [12]  213 	addc	a,r7
      0014BD FC               [12]  214 	mov	r4,a
      0014BE EB               [12]  215 	mov	a,r3
      0014BF 24 5D            [12]  216 	add	a,#_OledFontTable
      0014C1 F5 82            [12]  217 	mov	dpl,a
      0014C3 EC               [12]  218 	mov	a,r4
      0014C4 34 18            [12]  219 	addc	a,#(_OledFontTable >> 8)
      0014C6 F5 83            [12]  220 	mov	dph,a
      0014C8 E4               [12]  221 	clr	a
      0014C9 93               [24]  222 	movc	a,@a+dptr
      0014CA F5 82            [12]  223 	mov	dpl,a
      0014CC C0 07            [24]  224 	push	ar7
      0014CE C0 06            [24]  225 	push	ar6
      0014D0 C0 05            [24]  226 	push	ar5
      0014D2 12 15 79         [24]  227 	lcall	_oledSendData
      0014D5 D0 05            [24]  228 	pop	ar5
      0014D7 D0 06            [24]  229 	pop	ar6
      0014D9 D0 07            [24]  230 	pop	ar7
                                    231 ;	./src/oled_i2c.c:60: for(i = 0; i < 5; i ++)
      0014DB 0D               [12]  232 	inc	r5
      0014DC BD 05 00         [24]  233 	cjne	r5,#0x05,00125$
      0014DF                        234 00125$:
      0014DF 40 D3            [24]  235 	jc	00104$
                                    236 ;	./src/oled_i2c.c:63: oledSendData(0x00); /* Display the data and keep track of cursor */
      0014E1 75 82 00         [24]  237 	mov	dpl,#0x00
                                    238 ;	./src/oled_i2c.c:65: }
      0014E4 02 15 79         [24]  239 	ljmp	_oledSendData
                                    240 ;------------------------------------------------------------
                                    241 ;Allocation info for local variables in function 'OLED_DisplayString'
                                    242 ;------------------------------------------------------------
                                    243 ;ptr                       Allocated to registers 
                                    244 ;------------------------------------------------------------
                                    245 ;	./src/oled_i2c.c:81: void OLED_DisplayString(uint8_t *ptr)
                                    246 ;	-----------------------------------------
                                    247 ;	 function OLED_DisplayString
                                    248 ;	-----------------------------------------
      0014E7                        249 _OLED_DisplayString:
      0014E7 AD 82            [24]  250 	mov	r5,dpl
      0014E9 AE 83            [24]  251 	mov	r6,dph
      0014EB AF F0            [24]  252 	mov	r7,b
                                    253 ;	./src/oled_i2c.c:83: while(*ptr)
      0014ED                        254 00101$:
      0014ED 8D 82            [24]  255 	mov	dpl,r5
      0014EF 8E 83            [24]  256 	mov	dph,r6
      0014F1 8F F0            [24]  257 	mov	b,r7
      0014F3 12 16 F3         [24]  258 	lcall	__gptrget
      0014F6 FC               [12]  259 	mov	r4,a
      0014F7 60 18            [24]  260 	jz	00104$
                                    261 ;	./src/oled_i2c.c:84: OLED_DisplayChar(*ptr++);
      0014F9 8C 82            [24]  262 	mov	dpl,r4
      0014FB 0D               [12]  263 	inc	r5
      0014FC BD 00 01         [24]  264 	cjne	r5,#0x00,00116$
      0014FF 0E               [12]  265 	inc	r6
      001500                        266 00116$:
      001500 C0 07            [24]  267 	push	ar7
      001502 C0 06            [24]  268 	push	ar6
      001504 C0 05            [24]  269 	push	ar5
      001506 12 14 96         [24]  270 	lcall	_OLED_DisplayChar
      001509 D0 05            [24]  271 	pop	ar5
      00150B D0 06            [24]  272 	pop	ar6
      00150D D0 07            [24]  273 	pop	ar7
      00150F 80 DC            [24]  274 	sjmp	00101$
      001511                        275 00104$:
                                    276 ;	./src/oled_i2c.c:85: }
      001511 22               [24]  277 	ret
                                    278 ;------------------------------------------------------------
                                    279 ;Allocation info for local variables in function 'OLED_Clear'
                                    280 ;------------------------------------------------------------
                                    281 ;oled_clean_col            Allocated to registers r6 
                                    282 ;oled_clean_page           Allocated to registers r7 
                                    283 ;------------------------------------------------------------
                                    284 ;	./src/oled_i2c.c:96: void OLED_Clear(void)
                                    285 ;	-----------------------------------------
                                    286 ;	 function OLED_Clear
                                    287 ;	-----------------------------------------
      001512                        288 _OLED_Clear:
                                    289 ;	./src/oled_i2c.c:99: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      001512 7F 00            [12]  290 	mov	r7,#0x00
      001514                        291 00105$:
                                    292 ;	./src/oled_i2c.c:100: OLED_SetCursor(oled_clean_page,0);
      001514 75 0B 00         [24]  293 	mov	_OLED_SetCursor_PARM_2,#0x00
      001517 8F 82            [24]  294 	mov	dpl,r7
      001519 C0 07            [24]  295 	push	ar7
      00151B 12 15 3D         [24]  296 	lcall	_OLED_SetCursor
      00151E D0 07            [24]  297 	pop	ar7
                                    298 ;	./src/oled_i2c.c:101: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      001520 7E 00            [12]  299 	mov	r6,#0x00
      001522                        300 00103$:
                                    301 ;	./src/oled_i2c.c:102: oledSendData(0);
      001522 75 82 00         [24]  302 	mov	dpl,#0x00
      001525 C0 07            [24]  303 	push	ar7
      001527 C0 06            [24]  304 	push	ar6
      001529 12 15 79         [24]  305 	lcall	_oledSendData
      00152C D0 06            [24]  306 	pop	ar6
      00152E D0 07            [24]  307 	pop	ar7
                                    308 ;	./src/oled_i2c.c:101: for(oled_clean_col= 0 ; oled_clean_col < 128 ; oled_clean_col ++) {
      001530 0E               [12]  309 	inc	r6
      001531 BE 80 00         [24]  310 	cjne	r6,#0x80,00123$
      001534                        311 00123$:
      001534 40 EC            [24]  312 	jc	00103$
                                    313 ;	./src/oled_i2c.c:99: for(oled_clean_page = 0 ; oled_clean_page < 8 ; oled_clean_page ++) {
      001536 0F               [12]  314 	inc	r7
      001537 BF 08 00         [24]  315 	cjne	r7,#0x08,00125$
      00153A                        316 00125$:
      00153A 40 D8            [24]  317 	jc	00105$
                                    318 ;	./src/oled_i2c.c:105: }
      00153C 22               [24]  319 	ret
                                    320 ;------------------------------------------------------------
                                    321 ;Allocation info for local variables in function 'OLED_SetCursor'
                                    322 ;------------------------------------------------------------
                                    323 ;cursorPosition            Allocated with name '_OLED_SetCursor_PARM_2'
                                    324 ;lineNumber                Allocated to registers r7 
                                    325 ;------------------------------------------------------------
                                    326 ;	./src/oled_i2c.c:122: void OLED_SetCursor(uint8_t lineNumber,uint8_t cursorPosition)
                                    327 ;	-----------------------------------------
                                    328 ;	 function OLED_SetCursor
                                    329 ;	-----------------------------------------
      00153D                        330 _OLED_SetCursor:
      00153D AF 82            [24]  331 	mov	r7,dpl
                                    332 ;	./src/oled_i2c.c:124: cursorPosition = cursorPosition + 2;
      00153F AE 0B            [24]  333 	mov	r6,_OLED_SetCursor_PARM_2
      001541 74 02            [12]  334 	mov	a,#0x02
      001543 2E               [12]  335 	add	a,r6
      001544 F5 0B            [12]  336 	mov	_OLED_SetCursor_PARM_2,a
                                    337 ;	./src/oled_i2c.c:125: oledSendCommand(0x0f&cursorPosition); // Select SEG lower 4 bits
      001546 AE 0B            [24]  338 	mov	r6,_OLED_SetCursor_PARM_2
      001548 74 0F            [12]  339 	mov	a,#0x0f
      00154A 5E               [12]  340 	anl	a,r6
      00154B F5 82            [12]  341 	mov	dpl,a
      00154D C0 07            [24]  342 	push	ar7
      00154F C0 06            [24]  343 	push	ar6
      001551 12 15 6D         [24]  344 	lcall	_oledSendCommand
      001554 D0 06            [24]  345 	pop	ar6
                                    346 ;	./src/oled_i2c.c:126: oledSendCommand(0x10|(cursorPosition>>4)); // Select SEG higher 4 bits
      001556 EE               [12]  347 	mov	a,r6
      001557 C4               [12]  348 	swap	a
      001558 54 0F            [12]  349 	anl	a,#0x0f
      00155A FE               [12]  350 	mov	r6,a
      00155B 74 10            [12]  351 	mov	a,#0x10
      00155D 4E               [12]  352 	orl	a,r6
      00155E F5 82            [12]  353 	mov	dpl,a
      001560 12 15 6D         [24]  354 	lcall	_oledSendCommand
      001563 D0 07            [24]  355 	pop	ar7
                                    356 ;	./src/oled_i2c.c:127: oledSendCommand(0xb0|lineNumber); // Select PAGE
      001565 74 B0            [12]  357 	mov	a,#0xb0
      001567 4F               [12]  358 	orl	a,r7
      001568 F5 82            [12]  359 	mov	dpl,a
                                    360 ;	./src/oled_i2c.c:128: }
      00156A 02 15 6D         [24]  361 	ljmp	_oledSendCommand
                                    362 ;------------------------------------------------------------
                                    363 ;Allocation info for local variables in function 'oledSendCommand'
                                    364 ;------------------------------------------------------------
                                    365 ;cmd                       Allocated to registers 
                                    366 ;------------------------------------------------------------
                                    367 ;	./src/oled_i2c.c:133: void oledSendCommand(uint8_t cmd)
                                    368 ;	-----------------------------------------
                                    369 ;	 function oledSendCommand
                                    370 ;	-----------------------------------------
      00156D                        371 _oledSendCommand:
      00156D 85 82 09         [24]  372 	mov	_Single_WriteI2C_PARM_3,dpl
                                    373 ;	./src/oled_i2c.c:135: Single_WriteI2C(OLED_SlaveAddress, SSD1306_COMMAND, cmd);
      001570 75 08 00         [24]  374 	mov	_Single_WriteI2C_PARM_2,#0x00
      001573 75 82 78         [24]  375 	mov	dpl,#0x78
                                    376 ;	./src/oled_i2c.c:136: }
      001576 02 13 CB         [24]  377 	ljmp	_Single_WriteI2C
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'oledSendData'
                                    380 ;------------------------------------------------------------
                                    381 ;cmd                       Allocated to registers 
                                    382 ;------------------------------------------------------------
                                    383 ;	./src/oled_i2c.c:138: void oledSendData(uint8_t cmd)
                                    384 ;	-----------------------------------------
                                    385 ;	 function oledSendData
                                    386 ;	-----------------------------------------
      001579                        387 _oledSendData:
      001579 85 82 09         [24]  388 	mov	_Single_WriteI2C_PARM_3,dpl
                                    389 ;	./src/oled_i2c.c:140: Single_WriteI2C(OLED_SlaveAddress, SSD1306_DATA_CONTINUE, cmd);
      00157C 75 08 40         [24]  390 	mov	_Single_WriteI2C_PARM_2,#0x40
      00157F 75 82 78         [24]  391 	mov	dpl,#0x78
                                    392 ;	./src/oled_i2c.c:141: }
      001582 02 13 CB         [24]  393 	ljmp	_Single_WriteI2C
                                    394 	.area CSEG    (CODE)
                                    395 	.area CONST   (CODE)
      00185D                        396 _OledFontTable:
      00185D 00                     397 	.db #0x00	; 0
      00185E 00                     398 	.db #0x00	; 0
      00185F 00                     399 	.db #0x00	; 0
      001860 00                     400 	.db #0x00	; 0
      001861 00                     401 	.db #0x00	; 0
      001862 00                     402 	.db #0x00	; 0
      001863 00                     403 	.db #0x00	; 0
      001864 2F                     404 	.db #0x2f	; 47
      001865 00                     405 	.db #0x00	; 0
      001866 00                     406 	.db #0x00	; 0
      001867 00                     407 	.db #0x00	; 0
      001868 07                     408 	.db #0x07	; 7
      001869 00                     409 	.db #0x00	; 0
      00186A 07                     410 	.db #0x07	; 7
      00186B 00                     411 	.db #0x00	; 0
      00186C 14                     412 	.db #0x14	; 20
      00186D 7F                     413 	.db #0x7f	; 127
      00186E 14                     414 	.db #0x14	; 20
      00186F 7F                     415 	.db #0x7f	; 127
      001870 14                     416 	.db #0x14	; 20
      001871 24                     417 	.db #0x24	; 36
      001872 2A                     418 	.db #0x2a	; 42
      001873 7F                     419 	.db #0x7f	; 127
      001874 2A                     420 	.db #0x2a	; 42
      001875 12                     421 	.db #0x12	; 18
      001876 23                     422 	.db #0x23	; 35
      001877 13                     423 	.db #0x13	; 19
      001878 08                     424 	.db #0x08	; 8
      001879 64                     425 	.db #0x64	; 100	'd'
      00187A 62                     426 	.db #0x62	; 98	'b'
      00187B 36                     427 	.db #0x36	; 54	'6'
      00187C 49                     428 	.db #0x49	; 73	'I'
      00187D 55                     429 	.db #0x55	; 85	'U'
      00187E 22                     430 	.db #0x22	; 34
      00187F 50                     431 	.db #0x50	; 80	'P'
      001880 00                     432 	.db #0x00	; 0
      001881 05                     433 	.db #0x05	; 5
      001882 03                     434 	.db #0x03	; 3
      001883 00                     435 	.db #0x00	; 0
      001884 00                     436 	.db #0x00	; 0
      001885 00                     437 	.db #0x00	; 0
      001886 1C                     438 	.db #0x1c	; 28
      001887 22                     439 	.db #0x22	; 34
      001888 41                     440 	.db #0x41	; 65	'A'
      001889 00                     441 	.db #0x00	; 0
      00188A 00                     442 	.db #0x00	; 0
      00188B 41                     443 	.db #0x41	; 65	'A'
      00188C 22                     444 	.db #0x22	; 34
      00188D 1C                     445 	.db #0x1c	; 28
      00188E 00                     446 	.db #0x00	; 0
      00188F 14                     447 	.db #0x14	; 20
      001890 08                     448 	.db #0x08	; 8
      001891 3E                     449 	.db #0x3e	; 62
      001892 08                     450 	.db #0x08	; 8
      001893 14                     451 	.db #0x14	; 20
      001894 08                     452 	.db #0x08	; 8
      001895 08                     453 	.db #0x08	; 8
      001896 3E                     454 	.db #0x3e	; 62
      001897 08                     455 	.db #0x08	; 8
      001898 08                     456 	.db #0x08	; 8
      001899 00                     457 	.db #0x00	; 0
      00189A 00                     458 	.db #0x00	; 0
      00189B A0                     459 	.db #0xa0	; 160
      00189C 60                     460 	.db #0x60	; 96
      00189D 00                     461 	.db #0x00	; 0
      00189E 08                     462 	.db #0x08	; 8
      00189F 08                     463 	.db #0x08	; 8
      0018A0 08                     464 	.db #0x08	; 8
      0018A1 08                     465 	.db #0x08	; 8
      0018A2 08                     466 	.db #0x08	; 8
      0018A3 00                     467 	.db #0x00	; 0
      0018A4 60                     468 	.db #0x60	; 96
      0018A5 60                     469 	.db #0x60	; 96
      0018A6 00                     470 	.db #0x00	; 0
      0018A7 00                     471 	.db #0x00	; 0
      0018A8 20                     472 	.db #0x20	; 32
      0018A9 10                     473 	.db #0x10	; 16
      0018AA 08                     474 	.db #0x08	; 8
      0018AB 04                     475 	.db #0x04	; 4
      0018AC 02                     476 	.db #0x02	; 2
      0018AD 3E                     477 	.db #0x3e	; 62
      0018AE 51                     478 	.db #0x51	; 81	'Q'
      0018AF 49                     479 	.db #0x49	; 73	'I'
      0018B0 45                     480 	.db #0x45	; 69	'E'
      0018B1 3E                     481 	.db #0x3e	; 62
      0018B2 00                     482 	.db #0x00	; 0
      0018B3 42                     483 	.db #0x42	; 66	'B'
      0018B4 7F                     484 	.db #0x7f	; 127
      0018B5 40                     485 	.db #0x40	; 64
      0018B6 00                     486 	.db #0x00	; 0
      0018B7 42                     487 	.db #0x42	; 66	'B'
      0018B8 61                     488 	.db #0x61	; 97	'a'
      0018B9 51                     489 	.db #0x51	; 81	'Q'
      0018BA 49                     490 	.db #0x49	; 73	'I'
      0018BB 46                     491 	.db #0x46	; 70	'F'
      0018BC 21                     492 	.db #0x21	; 33
      0018BD 41                     493 	.db #0x41	; 65	'A'
      0018BE 45                     494 	.db #0x45	; 69	'E'
      0018BF 4B                     495 	.db #0x4b	; 75	'K'
      0018C0 31                     496 	.db #0x31	; 49	'1'
      0018C1 18                     497 	.db #0x18	; 24
      0018C2 14                     498 	.db #0x14	; 20
      0018C3 12                     499 	.db #0x12	; 18
      0018C4 7F                     500 	.db #0x7f	; 127
      0018C5 10                     501 	.db #0x10	; 16
      0018C6 27                     502 	.db #0x27	; 39
      0018C7 45                     503 	.db #0x45	; 69	'E'
      0018C8 45                     504 	.db #0x45	; 69	'E'
      0018C9 45                     505 	.db #0x45	; 69	'E'
      0018CA 39                     506 	.db #0x39	; 57	'9'
      0018CB 3C                     507 	.db #0x3c	; 60
      0018CC 4A                     508 	.db #0x4a	; 74	'J'
      0018CD 49                     509 	.db #0x49	; 73	'I'
      0018CE 49                     510 	.db #0x49	; 73	'I'
      0018CF 30                     511 	.db #0x30	; 48	'0'
      0018D0 01                     512 	.db #0x01	; 1
      0018D1 71                     513 	.db #0x71	; 113	'q'
      0018D2 09                     514 	.db #0x09	; 9
      0018D3 05                     515 	.db #0x05	; 5
      0018D4 03                     516 	.db #0x03	; 3
      0018D5 36                     517 	.db #0x36	; 54	'6'
      0018D6 49                     518 	.db #0x49	; 73	'I'
      0018D7 49                     519 	.db #0x49	; 73	'I'
      0018D8 49                     520 	.db #0x49	; 73	'I'
      0018D9 36                     521 	.db #0x36	; 54	'6'
      0018DA 06                     522 	.db #0x06	; 6
      0018DB 49                     523 	.db #0x49	; 73	'I'
      0018DC 49                     524 	.db #0x49	; 73	'I'
      0018DD 29                     525 	.db #0x29	; 41
      0018DE 1E                     526 	.db #0x1e	; 30
      0018DF 00                     527 	.db #0x00	; 0
      0018E0 36                     528 	.db #0x36	; 54	'6'
      0018E1 36                     529 	.db #0x36	; 54	'6'
      0018E2 00                     530 	.db #0x00	; 0
      0018E3 00                     531 	.db #0x00	; 0
      0018E4 00                     532 	.db #0x00	; 0
      0018E5 56                     533 	.db #0x56	; 86	'V'
      0018E6 36                     534 	.db #0x36	; 54	'6'
      0018E7 00                     535 	.db #0x00	; 0
      0018E8 00                     536 	.db #0x00	; 0
      0018E9 08                     537 	.db #0x08	; 8
      0018EA 14                     538 	.db #0x14	; 20
      0018EB 22                     539 	.db #0x22	; 34
      0018EC 41                     540 	.db #0x41	; 65	'A'
      0018ED 00                     541 	.db #0x00	; 0
      0018EE 14                     542 	.db #0x14	; 20
      0018EF 14                     543 	.db #0x14	; 20
      0018F0 14                     544 	.db #0x14	; 20
      0018F1 14                     545 	.db #0x14	; 20
      0018F2 14                     546 	.db #0x14	; 20
      0018F3 00                     547 	.db #0x00	; 0
      0018F4 41                     548 	.db #0x41	; 65	'A'
      0018F5 22                     549 	.db #0x22	; 34
      0018F6 14                     550 	.db #0x14	; 20
      0018F7 08                     551 	.db #0x08	; 8
      0018F8 02                     552 	.db #0x02	; 2
      0018F9 01                     553 	.db #0x01	; 1
      0018FA 51                     554 	.db #0x51	; 81	'Q'
      0018FB 09                     555 	.db #0x09	; 9
      0018FC 06                     556 	.db #0x06	; 6
      0018FD 32                     557 	.db #0x32	; 50	'2'
      0018FE 49                     558 	.db #0x49	; 73	'I'
      0018FF 59                     559 	.db #0x59	; 89	'Y'
      001900 51                     560 	.db #0x51	; 81	'Q'
      001901 3E                     561 	.db #0x3e	; 62
      001902 7C                     562 	.db #0x7c	; 124
      001903 12                     563 	.db #0x12	; 18
      001904 11                     564 	.db #0x11	; 17
      001905 12                     565 	.db #0x12	; 18
      001906 7C                     566 	.db #0x7c	; 124
      001907 7F                     567 	.db #0x7f	; 127
      001908 49                     568 	.db #0x49	; 73	'I'
      001909 49                     569 	.db #0x49	; 73	'I'
      00190A 49                     570 	.db #0x49	; 73	'I'
      00190B 36                     571 	.db #0x36	; 54	'6'
      00190C 3E                     572 	.db #0x3e	; 62
      00190D 41                     573 	.db #0x41	; 65	'A'
      00190E 41                     574 	.db #0x41	; 65	'A'
      00190F 41                     575 	.db #0x41	; 65	'A'
      001910 22                     576 	.db #0x22	; 34
      001911 7F                     577 	.db #0x7f	; 127
      001912 41                     578 	.db #0x41	; 65	'A'
      001913 41                     579 	.db #0x41	; 65	'A'
      001914 22                     580 	.db #0x22	; 34
      001915 1C                     581 	.db #0x1c	; 28
      001916 7F                     582 	.db #0x7f	; 127
      001917 49                     583 	.db #0x49	; 73	'I'
      001918 49                     584 	.db #0x49	; 73	'I'
      001919 49                     585 	.db #0x49	; 73	'I'
      00191A 41                     586 	.db #0x41	; 65	'A'
      00191B 7F                     587 	.db #0x7f	; 127
      00191C 09                     588 	.db #0x09	; 9
      00191D 09                     589 	.db #0x09	; 9
      00191E 09                     590 	.db #0x09	; 9
      00191F 01                     591 	.db #0x01	; 1
      001920 3E                     592 	.db #0x3e	; 62
      001921 41                     593 	.db #0x41	; 65	'A'
      001922 49                     594 	.db #0x49	; 73	'I'
      001923 49                     595 	.db #0x49	; 73	'I'
      001924 7A                     596 	.db #0x7a	; 122	'z'
      001925 7F                     597 	.db #0x7f	; 127
      001926 08                     598 	.db #0x08	; 8
      001927 08                     599 	.db #0x08	; 8
      001928 08                     600 	.db #0x08	; 8
      001929 7F                     601 	.db #0x7f	; 127
      00192A 00                     602 	.db #0x00	; 0
      00192B 41                     603 	.db #0x41	; 65	'A'
      00192C 7F                     604 	.db #0x7f	; 127
      00192D 41                     605 	.db #0x41	; 65	'A'
      00192E 00                     606 	.db #0x00	; 0
      00192F 20                     607 	.db #0x20	; 32
      001930 40                     608 	.db #0x40	; 64
      001931 41                     609 	.db #0x41	; 65	'A'
      001932 3F                     610 	.db #0x3f	; 63
      001933 01                     611 	.db #0x01	; 1
      001934 7F                     612 	.db #0x7f	; 127
      001935 08                     613 	.db #0x08	; 8
      001936 14                     614 	.db #0x14	; 20
      001937 22                     615 	.db #0x22	; 34
      001938 41                     616 	.db #0x41	; 65	'A'
      001939 7F                     617 	.db #0x7f	; 127
      00193A 40                     618 	.db #0x40	; 64
      00193B 40                     619 	.db #0x40	; 64
      00193C 40                     620 	.db #0x40	; 64
      00193D 40                     621 	.db #0x40	; 64
      00193E 7F                     622 	.db #0x7f	; 127
      00193F 02                     623 	.db #0x02	; 2
      001940 0C                     624 	.db #0x0c	; 12
      001941 02                     625 	.db #0x02	; 2
      001942 7F                     626 	.db #0x7f	; 127
      001943 7F                     627 	.db #0x7f	; 127
      001944 04                     628 	.db #0x04	; 4
      001945 08                     629 	.db #0x08	; 8
      001946 10                     630 	.db #0x10	; 16
      001947 7F                     631 	.db #0x7f	; 127
      001948 3E                     632 	.db #0x3e	; 62
      001949 41                     633 	.db #0x41	; 65	'A'
      00194A 41                     634 	.db #0x41	; 65	'A'
      00194B 41                     635 	.db #0x41	; 65	'A'
      00194C 3E                     636 	.db #0x3e	; 62
      00194D 7F                     637 	.db #0x7f	; 127
      00194E 09                     638 	.db #0x09	; 9
      00194F 09                     639 	.db #0x09	; 9
      001950 09                     640 	.db #0x09	; 9
      001951 06                     641 	.db #0x06	; 6
      001952 3E                     642 	.db #0x3e	; 62
      001953 41                     643 	.db #0x41	; 65	'A'
      001954 51                     644 	.db #0x51	; 81	'Q'
      001955 21                     645 	.db #0x21	; 33
      001956 5E                     646 	.db #0x5e	; 94
      001957 7F                     647 	.db #0x7f	; 127
      001958 09                     648 	.db #0x09	; 9
      001959 19                     649 	.db #0x19	; 25
      00195A 29                     650 	.db #0x29	; 41
      00195B 46                     651 	.db #0x46	; 70	'F'
      00195C 46                     652 	.db #0x46	; 70	'F'
      00195D 49                     653 	.db #0x49	; 73	'I'
      00195E 49                     654 	.db #0x49	; 73	'I'
      00195F 49                     655 	.db #0x49	; 73	'I'
      001960 31                     656 	.db #0x31	; 49	'1'
      001961 01                     657 	.db #0x01	; 1
      001962 01                     658 	.db #0x01	; 1
      001963 7F                     659 	.db #0x7f	; 127
      001964 01                     660 	.db #0x01	; 1
      001965 01                     661 	.db #0x01	; 1
      001966 3F                     662 	.db #0x3f	; 63
      001967 40                     663 	.db #0x40	; 64
      001968 40                     664 	.db #0x40	; 64
      001969 40                     665 	.db #0x40	; 64
      00196A 3F                     666 	.db #0x3f	; 63
      00196B 1F                     667 	.db #0x1f	; 31
      00196C 20                     668 	.db #0x20	; 32
      00196D 40                     669 	.db #0x40	; 64
      00196E 20                     670 	.db #0x20	; 32
      00196F 1F                     671 	.db #0x1f	; 31
      001970 3F                     672 	.db #0x3f	; 63
      001971 40                     673 	.db #0x40	; 64
      001972 38                     674 	.db #0x38	; 56	'8'
      001973 40                     675 	.db #0x40	; 64
      001974 3F                     676 	.db #0x3f	; 63
      001975 63                     677 	.db #0x63	; 99	'c'
      001976 14                     678 	.db #0x14	; 20
      001977 08                     679 	.db #0x08	; 8
      001978 14                     680 	.db #0x14	; 20
      001979 63                     681 	.db #0x63	; 99	'c'
      00197A 07                     682 	.db #0x07	; 7
      00197B 08                     683 	.db #0x08	; 8
      00197C 70                     684 	.db #0x70	; 112	'p'
      00197D 08                     685 	.db #0x08	; 8
      00197E 07                     686 	.db #0x07	; 7
      00197F 61                     687 	.db #0x61	; 97	'a'
      001980 51                     688 	.db #0x51	; 81	'Q'
      001981 49                     689 	.db #0x49	; 73	'I'
      001982 45                     690 	.db #0x45	; 69	'E'
      001983 43                     691 	.db #0x43	; 67	'C'
      001984 00                     692 	.db #0x00	; 0
      001985 7F                     693 	.db #0x7f	; 127
      001986 41                     694 	.db #0x41	; 65	'A'
      001987 41                     695 	.db #0x41	; 65	'A'
      001988 00                     696 	.db #0x00	; 0
      001989 55                     697 	.db #0x55	; 85	'U'
      00198A AA                     698 	.db #0xaa	; 170
      00198B 55                     699 	.db #0x55	; 85	'U'
      00198C AA                     700 	.db #0xaa	; 170
      00198D 55                     701 	.db #0x55	; 85	'U'
      00198E 00                     702 	.db #0x00	; 0
      00198F 41                     703 	.db #0x41	; 65	'A'
      001990 41                     704 	.db #0x41	; 65	'A'
      001991 7F                     705 	.db #0x7f	; 127
      001992 00                     706 	.db #0x00	; 0
      001993 04                     707 	.db #0x04	; 4
      001994 02                     708 	.db #0x02	; 2
      001995 01                     709 	.db #0x01	; 1
      001996 02                     710 	.db #0x02	; 2
      001997 04                     711 	.db #0x04	; 4
      001998 40                     712 	.db #0x40	; 64
      001999 40                     713 	.db #0x40	; 64
      00199A 40                     714 	.db #0x40	; 64
      00199B 40                     715 	.db #0x40	; 64
      00199C 40                     716 	.db #0x40	; 64
      00199D 00                     717 	.db #0x00	; 0
      00199E 03                     718 	.db #0x03	; 3
      00199F 05                     719 	.db #0x05	; 5
      0019A0 00                     720 	.db #0x00	; 0
      0019A1 00                     721 	.db #0x00	; 0
      0019A2 20                     722 	.db #0x20	; 32
      0019A3 54                     723 	.db #0x54	; 84	'T'
      0019A4 54                     724 	.db #0x54	; 84	'T'
      0019A5 54                     725 	.db #0x54	; 84	'T'
      0019A6 78                     726 	.db #0x78	; 120	'x'
      0019A7 7F                     727 	.db #0x7f	; 127
      0019A8 48                     728 	.db #0x48	; 72	'H'
      0019A9 44                     729 	.db #0x44	; 68	'D'
      0019AA 44                     730 	.db #0x44	; 68	'D'
      0019AB 38                     731 	.db #0x38	; 56	'8'
      0019AC 38                     732 	.db #0x38	; 56	'8'
      0019AD 44                     733 	.db #0x44	; 68	'D'
      0019AE 44                     734 	.db #0x44	; 68	'D'
      0019AF 44                     735 	.db #0x44	; 68	'D'
      0019B0 20                     736 	.db #0x20	; 32
      0019B1 38                     737 	.db #0x38	; 56	'8'
      0019B2 44                     738 	.db #0x44	; 68	'D'
      0019B3 44                     739 	.db #0x44	; 68	'D'
      0019B4 48                     740 	.db #0x48	; 72	'H'
      0019B5 7F                     741 	.db #0x7f	; 127
      0019B6 38                     742 	.db #0x38	; 56	'8'
      0019B7 54                     743 	.db #0x54	; 84	'T'
      0019B8 54                     744 	.db #0x54	; 84	'T'
      0019B9 54                     745 	.db #0x54	; 84	'T'
      0019BA 18                     746 	.db #0x18	; 24
      0019BB 08                     747 	.db #0x08	; 8
      0019BC 7E                     748 	.db #0x7e	; 126
      0019BD 09                     749 	.db #0x09	; 9
      0019BE 01                     750 	.db #0x01	; 1
      0019BF 02                     751 	.db #0x02	; 2
      0019C0 18                     752 	.db #0x18	; 24
      0019C1 A4                     753 	.db #0xa4	; 164
      0019C2 A4                     754 	.db #0xa4	; 164
      0019C3 A4                     755 	.db #0xa4	; 164
      0019C4 7C                     756 	.db #0x7c	; 124
      0019C5 7F                     757 	.db #0x7f	; 127
      0019C6 08                     758 	.db #0x08	; 8
      0019C7 04                     759 	.db #0x04	; 4
      0019C8 04                     760 	.db #0x04	; 4
      0019C9 78                     761 	.db #0x78	; 120	'x'
      0019CA 00                     762 	.db #0x00	; 0
      0019CB 44                     763 	.db #0x44	; 68	'D'
      0019CC 7D                     764 	.db #0x7d	; 125
      0019CD 40                     765 	.db #0x40	; 64
      0019CE 00                     766 	.db #0x00	; 0
      0019CF 40                     767 	.db #0x40	; 64
      0019D0 80                     768 	.db #0x80	; 128
      0019D1 84                     769 	.db #0x84	; 132
      0019D2 7D                     770 	.db #0x7d	; 125
      0019D3 00                     771 	.db #0x00	; 0
      0019D4 7F                     772 	.db #0x7f	; 127
      0019D5 10                     773 	.db #0x10	; 16
      0019D6 28                     774 	.db #0x28	; 40
      0019D7 44                     775 	.db #0x44	; 68	'D'
      0019D8 00                     776 	.db #0x00	; 0
      0019D9 00                     777 	.db #0x00	; 0
      0019DA 41                     778 	.db #0x41	; 65	'A'
      0019DB 7F                     779 	.db #0x7f	; 127
      0019DC 40                     780 	.db #0x40	; 64
      0019DD 00                     781 	.db #0x00	; 0
      0019DE 7C                     782 	.db #0x7c	; 124
      0019DF 04                     783 	.db #0x04	; 4
      0019E0 18                     784 	.db #0x18	; 24
      0019E1 04                     785 	.db #0x04	; 4
      0019E2 78                     786 	.db #0x78	; 120	'x'
      0019E3 7C                     787 	.db #0x7c	; 124
      0019E4 08                     788 	.db #0x08	; 8
      0019E5 04                     789 	.db #0x04	; 4
      0019E6 04                     790 	.db #0x04	; 4
      0019E7 78                     791 	.db #0x78	; 120	'x'
      0019E8 38                     792 	.db #0x38	; 56	'8'
      0019E9 44                     793 	.db #0x44	; 68	'D'
      0019EA 44                     794 	.db #0x44	; 68	'D'
      0019EB 44                     795 	.db #0x44	; 68	'D'
      0019EC 38                     796 	.db #0x38	; 56	'8'
      0019ED FC                     797 	.db #0xfc	; 252
      0019EE 24                     798 	.db #0x24	; 36
      0019EF 24                     799 	.db #0x24	; 36
      0019F0 24                     800 	.db #0x24	; 36
      0019F1 18                     801 	.db #0x18	; 24
      0019F2 18                     802 	.db #0x18	; 24
      0019F3 24                     803 	.db #0x24	; 36
      0019F4 24                     804 	.db #0x24	; 36
      0019F5 18                     805 	.db #0x18	; 24
      0019F6 FC                     806 	.db #0xfc	; 252
      0019F7 7C                     807 	.db #0x7c	; 124
      0019F8 08                     808 	.db #0x08	; 8
      0019F9 04                     809 	.db #0x04	; 4
      0019FA 04                     810 	.db #0x04	; 4
      0019FB 08                     811 	.db #0x08	; 8
      0019FC 48                     812 	.db #0x48	; 72	'H'
      0019FD 54                     813 	.db #0x54	; 84	'T'
      0019FE 54                     814 	.db #0x54	; 84	'T'
      0019FF 54                     815 	.db #0x54	; 84	'T'
      001A00 20                     816 	.db #0x20	; 32
      001A01 04                     817 	.db #0x04	; 4
      001A02 3F                     818 	.db #0x3f	; 63
      001A03 44                     819 	.db #0x44	; 68	'D'
      001A04 40                     820 	.db #0x40	; 64
      001A05 20                     821 	.db #0x20	; 32
      001A06 3C                     822 	.db #0x3c	; 60
      001A07 40                     823 	.db #0x40	; 64
      001A08 40                     824 	.db #0x40	; 64
      001A09 20                     825 	.db #0x20	; 32
      001A0A 7C                     826 	.db #0x7c	; 124
      001A0B 1C                     827 	.db #0x1c	; 28
      001A0C 20                     828 	.db #0x20	; 32
      001A0D 40                     829 	.db #0x40	; 64
      001A0E 20                     830 	.db #0x20	; 32
      001A0F 1C                     831 	.db #0x1c	; 28
      001A10 3C                     832 	.db #0x3c	; 60
      001A11 40                     833 	.db #0x40	; 64
      001A12 30                     834 	.db #0x30	; 48	'0'
      001A13 40                     835 	.db #0x40	; 64
      001A14 3C                     836 	.db #0x3c	; 60
      001A15 44                     837 	.db #0x44	; 68	'D'
      001A16 28                     838 	.db #0x28	; 40
      001A17 10                     839 	.db #0x10	; 16
      001A18 28                     840 	.db #0x28	; 40
      001A19 44                     841 	.db #0x44	; 68	'D'
      001A1A 1C                     842 	.db #0x1c	; 28
      001A1B A0                     843 	.db #0xa0	; 160
      001A1C A0                     844 	.db #0xa0	; 160
      001A1D A0                     845 	.db #0xa0	; 160
      001A1E 7C                     846 	.db #0x7c	; 124
      001A1F 44                     847 	.db #0x44	; 68	'D'
      001A20 64                     848 	.db #0x64	; 100	'd'
      001A21 54                     849 	.db #0x54	; 84	'T'
      001A22 4C                     850 	.db #0x4c	; 76	'L'
      001A23 44                     851 	.db #0x44	; 68	'D'
      001A24 00                     852 	.db #0x00	; 0
      001A25 10                     853 	.db #0x10	; 16
      001A26 7C                     854 	.db #0x7c	; 124
      001A27 82                     855 	.db #0x82	; 130
      001A28 00                     856 	.db #0x00	; 0
      001A29 00                     857 	.db #0x00	; 0
      001A2A 00                     858 	.db #0x00	; 0
      001A2B FF                     859 	.db #0xff	; 255
      001A2C 00                     860 	.db #0x00	; 0
      001A2D 00                     861 	.db #0x00	; 0
      001A2E 00                     862 	.db #0x00	; 0
      001A2F 82                     863 	.db #0x82	; 130
      001A30 7C                     864 	.db #0x7c	; 124
      001A31 10                     865 	.db #0x10	; 16
      001A32 00                     866 	.db #0x00	; 0
      001A33 00                     867 	.db #0x00	; 0
      001A34 06                     868 	.db #0x06	; 6
      001A35 09                     869 	.db #0x09	; 9
      001A36 09                     870 	.db #0x09	; 9
      001A37 06                     871 	.db #0x06	; 6
                                    872 	.area XINIT   (CODE)
                                    873 	.area CABS    (ABS,CODE)

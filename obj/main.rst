                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Get_Dot_PARM_3
                                     12 	.globl _Get_Dot_PARM_2
                                     13 	.globl _draw_PARM_5
                                     14 	.globl _draw_PARM_4
                                     15 	.globl _draw_PARM_3
                                     16 	.globl _draw_PARM_2
                                     17 	.globl _del_PARM_5
                                     18 	.globl _del_PARM_4
                                     19 	.globl _del_PARM_3
                                     20 	.globl _del_PARM_2
                                     21 	.globl _overlap_PARM_8
                                     22 	.globl _overlap_PARM_7
                                     23 	.globl _overlap_PARM_6
                                     24 	.globl _overlap_PARM_5
                                     25 	.globl _overlap_PARM_4
                                     26 	.globl _overlap_PARM_3
                                     27 	.globl _overlap_PARM_2
                                     28 	.globl _main
                                     29 	.globl _OLED_SetCursor
                                     30 	.globl _OLED_Clear
                                     31 	.globl _OLED_DisplayString
                                     32 	.globl _OLED_DisplayChar
                                     33 	.globl _OLED_Init
                                     34 	.globl _Initial7219
                                     35 	.globl _Writesingle7219
                                     36 	.globl _Delay_Re
                                     37 	.globl _Delay_Do
                                     38 	.globl _Get_Key
                                     39 	.globl _delay_ms
                                     40 	.globl _CY
                                     41 	.globl _AC
                                     42 	.globl _F0
                                     43 	.globl _RS1
                                     44 	.globl _RS0
                                     45 	.globl _OV
                                     46 	.globl _F1
                                     47 	.globl _P
                                     48 	.globl _PS
                                     49 	.globl _PT1
                                     50 	.globl _PX1
                                     51 	.globl _PT0
                                     52 	.globl _PX0
                                     53 	.globl _RD
                                     54 	.globl _WR
                                     55 	.globl _T1
                                     56 	.globl _T0
                                     57 	.globl _INT1
                                     58 	.globl _INT0
                                     59 	.globl _TXD
                                     60 	.globl _RXD
                                     61 	.globl _P3_7
                                     62 	.globl _P3_6
                                     63 	.globl _P3_5
                                     64 	.globl _P3_4
                                     65 	.globl _P3_3
                                     66 	.globl _P3_2
                                     67 	.globl _P3_1
                                     68 	.globl _P3_0
                                     69 	.globl _EA
                                     70 	.globl _ES
                                     71 	.globl _ET1
                                     72 	.globl _EX1
                                     73 	.globl _ET0
                                     74 	.globl _EX0
                                     75 	.globl _P2_7
                                     76 	.globl _P2_6
                                     77 	.globl _P2_5
                                     78 	.globl _P2_4
                                     79 	.globl _P2_3
                                     80 	.globl _P2_2
                                     81 	.globl _P2_1
                                     82 	.globl _P2_0
                                     83 	.globl _SM0
                                     84 	.globl _SM1
                                     85 	.globl _SM2
                                     86 	.globl _REN
                                     87 	.globl _TB8
                                     88 	.globl _RB8
                                     89 	.globl _TI
                                     90 	.globl _RI
                                     91 	.globl _P1_7
                                     92 	.globl _P1_6
                                     93 	.globl _P1_5
                                     94 	.globl _P1_4
                                     95 	.globl _P1_3
                                     96 	.globl _P1_2
                                     97 	.globl _P1_1
                                     98 	.globl _P1_0
                                     99 	.globl _TF1
                                    100 	.globl _TR1
                                    101 	.globl _TF0
                                    102 	.globl _TR0
                                    103 	.globl _IE1
                                    104 	.globl _IT1
                                    105 	.globl _IE0
                                    106 	.globl _IT0
                                    107 	.globl _P0_7
                                    108 	.globl _P0_6
                                    109 	.globl _P0_5
                                    110 	.globl _P0_4
                                    111 	.globl _P0_3
                                    112 	.globl _P0_2
                                    113 	.globl _P0_1
                                    114 	.globl _P0_0
                                    115 	.globl _B
                                    116 	.globl _ACC
                                    117 	.globl _PSW
                                    118 	.globl _IP
                                    119 	.globl _P3
                                    120 	.globl _IE
                                    121 	.globl _P2
                                    122 	.globl _SBUF
                                    123 	.globl _SCON
                                    124 	.globl _P1
                                    125 	.globl _TH1
                                    126 	.globl _TH0
                                    127 	.globl _TL1
                                    128 	.globl _TL0
                                    129 	.globl _TMOD
                                    130 	.globl _TCON
                                    131 	.globl _PCON
                                    132 	.globl _DPH
                                    133 	.globl _DPL
                                    134 	.globl _SP
                                    135 	.globl _P0
                                    136 	.globl _mat2_2
                                    137 	.globl _mat2_1
                                    138 	.globl _mat1_2
                                    139 	.globl _mat1_1
                                    140 	.globl _player_score
                                    141 	.globl _player
                                    142 	.globl _player2
                                    143 	.globl _player1
                                    144 	.globl _turn
                                    145 	.globl _get_bit
                                    146 	.globl _conti_flag
                                    147 	.globl _now_col
                                    148 	.globl _now_row
                                    149 	.globl _nxt_col
                                    150 	.globl _nxt_row
                                    151 	.globl _check_
                                    152 	.globl _idx
                                    153 	.globl _tmp_l
                                    154 	.globl _tmp_j
                                    155 	.globl _tmp_i
                                    156 	.globl _l
                                    157 	.globl _j
                                    158 	.globl _i
                                    159 	.globl _boat_type
                                    160 	.globl _now_key
                                    161 	.globl _mask
                                    162 	.globl _player_bool
                                    163 	.globl _winner
                                    164 	.globl _mode
                                    165 	.globl _in_i
                                    166 	.globl _mode0
                                    167 	.globl _mode1
                                    168 	.globl _mode2
                                    169 	.globl _mode3
                                    170 	.globl _overlap
                                    171 	.globl _del
                                    172 	.globl _draw
                                    173 	.globl _Get_Dot
                                    174 	.globl _mode4
                                    175 	.globl _mode5
                                    176 ;--------------------------------------------------------
                                    177 ; special function registers
                                    178 ;--------------------------------------------------------
                                    179 	.area RSEG    (ABS,DATA)
      000000                        180 	.org 0x0000
                           000080   181 _P0	=	0x0080
                           000081   182 _SP	=	0x0081
                           000082   183 _DPL	=	0x0082
                           000083   184 _DPH	=	0x0083
                           000087   185 _PCON	=	0x0087
                           000088   186 _TCON	=	0x0088
                           000089   187 _TMOD	=	0x0089
                           00008A   188 _TL0	=	0x008a
                           00008B   189 _TL1	=	0x008b
                           00008C   190 _TH0	=	0x008c
                           00008D   191 _TH1	=	0x008d
                           000090   192 _P1	=	0x0090
                           000098   193 _SCON	=	0x0098
                           000099   194 _SBUF	=	0x0099
                           0000A0   195 _P2	=	0x00a0
                           0000A8   196 _IE	=	0x00a8
                           0000B0   197 _P3	=	0x00b0
                           0000B8   198 _IP	=	0x00b8
                           0000D0   199 _PSW	=	0x00d0
                           0000E0   200 _ACC	=	0x00e0
                           0000F0   201 _B	=	0x00f0
                                    202 ;--------------------------------------------------------
                                    203 ; special function bits
                                    204 ;--------------------------------------------------------
                                    205 	.area RSEG    (ABS,DATA)
      000000                        206 	.org 0x0000
                           000080   207 _P0_0	=	0x0080
                           000081   208 _P0_1	=	0x0081
                           000082   209 _P0_2	=	0x0082
                           000083   210 _P0_3	=	0x0083
                           000084   211 _P0_4	=	0x0084
                           000085   212 _P0_5	=	0x0085
                           000086   213 _P0_6	=	0x0086
                           000087   214 _P0_7	=	0x0087
                           000088   215 _IT0	=	0x0088
                           000089   216 _IE0	=	0x0089
                           00008A   217 _IT1	=	0x008a
                           00008B   218 _IE1	=	0x008b
                           00008C   219 _TR0	=	0x008c
                           00008D   220 _TF0	=	0x008d
                           00008E   221 _TR1	=	0x008e
                           00008F   222 _TF1	=	0x008f
                           000090   223 _P1_0	=	0x0090
                           000091   224 _P1_1	=	0x0091
                           000092   225 _P1_2	=	0x0092
                           000093   226 _P1_3	=	0x0093
                           000094   227 _P1_4	=	0x0094
                           000095   228 _P1_5	=	0x0095
                           000096   229 _P1_6	=	0x0096
                           000097   230 _P1_7	=	0x0097
                           000098   231 _RI	=	0x0098
                           000099   232 _TI	=	0x0099
                           00009A   233 _RB8	=	0x009a
                           00009B   234 _TB8	=	0x009b
                           00009C   235 _REN	=	0x009c
                           00009D   236 _SM2	=	0x009d
                           00009E   237 _SM1	=	0x009e
                           00009F   238 _SM0	=	0x009f
                           0000A0   239 _P2_0	=	0x00a0
                           0000A1   240 _P2_1	=	0x00a1
                           0000A2   241 _P2_2	=	0x00a2
                           0000A3   242 _P2_3	=	0x00a3
                           0000A4   243 _P2_4	=	0x00a4
                           0000A5   244 _P2_5	=	0x00a5
                           0000A6   245 _P2_6	=	0x00a6
                           0000A7   246 _P2_7	=	0x00a7
                           0000A8   247 _EX0	=	0x00a8
                           0000A9   248 _ET0	=	0x00a9
                           0000AA   249 _EX1	=	0x00aa
                           0000AB   250 _ET1	=	0x00ab
                           0000AC   251 _ES	=	0x00ac
                           0000AF   252 _EA	=	0x00af
                           0000B0   253 _P3_0	=	0x00b0
                           0000B1   254 _P3_1	=	0x00b1
                           0000B2   255 _P3_2	=	0x00b2
                           0000B3   256 _P3_3	=	0x00b3
                           0000B4   257 _P3_4	=	0x00b4
                           0000B5   258 _P3_5	=	0x00b5
                           0000B6   259 _P3_6	=	0x00b6
                           0000B7   260 _P3_7	=	0x00b7
                           0000B0   261 _RXD	=	0x00b0
                           0000B1   262 _TXD	=	0x00b1
                           0000B2   263 _INT0	=	0x00b2
                           0000B3   264 _INT1	=	0x00b3
                           0000B4   265 _T0	=	0x00b4
                           0000B5   266 _T1	=	0x00b5
                           0000B6   267 _WR	=	0x00b6
                           0000B7   268 _RD	=	0x00b7
                           0000B8   269 _PX0	=	0x00b8
                           0000B9   270 _PT0	=	0x00b9
                           0000BA   271 _PX1	=	0x00ba
                           0000BB   272 _PT1	=	0x00bb
                           0000BC   273 _PS	=	0x00bc
                           0000D0   274 _P	=	0x00d0
                           0000D1   275 _F1	=	0x00d1
                           0000D2   276 _OV	=	0x00d2
                           0000D3   277 _RS0	=	0x00d3
                           0000D4   278 _RS1	=	0x00d4
                           0000D5   279 _F0	=	0x00d5
                           0000D6   280 _AC	=	0x00d6
                           0000D7   281 _CY	=	0x00d7
                                    282 ;--------------------------------------------------------
                                    283 ; overlayable register banks
                                    284 ;--------------------------------------------------------
                                    285 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        286 	.ds 8
                                    287 ;--------------------------------------------------------
                                    288 ; internal ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area DSEG    (DATA)
      000021                        291 _in_i::
      000021                        292 	.ds 2
      000023                        293 _mode::
      000023                        294 	.ds 1
      000024                        295 _winner::
      000024                        296 	.ds 1
      000025                        297 _player_bool::
      000025                        298 	.ds 3
      000028                        299 _mask::
      000028                        300 	.ds 1
      000029                        301 _now_key::
      000029                        302 	.ds 1
      00002A                        303 _boat_type::
      00002A                        304 	.ds 4
      00002E                        305 _i::
      00002E                        306 	.ds 1
      00002F                        307 _j::
      00002F                        308 	.ds 1
      000030                        309 _l::
      000030                        310 	.ds 1
      000031                        311 _tmp_i::
      000031                        312 	.ds 1
      000032                        313 _tmp_j::
      000032                        314 	.ds 1
      000033                        315 _tmp_l::
      000033                        316 	.ds 1
      000034                        317 _idx::
      000034                        318 	.ds 1
      000035                        319 _check_::
      000035                        320 	.ds 1
      000036                        321 _nxt_row::
      000036                        322 	.ds 1
      000037                        323 _nxt_col::
      000037                        324 	.ds 1
      000038                        325 _now_row::
      000038                        326 	.ds 1
      000039                        327 _now_col::
      000039                        328 	.ds 1
      00003A                        329 _conti_flag::
      00003A                        330 	.ds 1
      00003B                        331 _get_bit::
      00003B                        332 	.ds 1
      00003C                        333 _turn::
      00003C                        334 	.ds 1
      00003D                        335 _player1::
      00003D                        336 	.ds 4
      000041                        337 _player2::
      000041                        338 	.ds 4
      000045                        339 _player::
      000045                        340 	.ds 6
      00004B                        341 _player_score::
      00004B                        342 	.ds 3
      00004E                        343 _mat1_1::
      00004E                        344 	.ds 9
      000057                        345 _mat1_2::
      000057                        346 	.ds 9
      000060                        347 _mat2_1::
      000060                        348 	.ds 9
      000069                        349 _mat2_2::
      000069                        350 	.ds 9
                                    351 ;--------------------------------------------------------
                                    352 ; overlayable items in internal ram 
                                    353 ;--------------------------------------------------------
                                    354 	.area	OSEG    (OVR,DATA)
      00000F                        355 _overlap_PARM_2:
      00000F                        356 	.ds 1
      000010                        357 _overlap_PARM_3:
      000010                        358 	.ds 1
      000011                        359 _overlap_PARM_4:
      000011                        360 	.ds 1
      000012                        361 _overlap_PARM_5:
      000012                        362 	.ds 1
      000013                        363 _overlap_PARM_6:
      000013                        364 	.ds 1
      000014                        365 _overlap_PARM_7:
      000014                        366 	.ds 1
      000015                        367 _overlap_PARM_8:
      000015                        368 	.ds 1
                                    369 	.area	OSEG    (OVR,DATA)
      00000F                        370 _del_PARM_2:
      00000F                        371 	.ds 1
      000010                        372 _del_PARM_3:
      000010                        373 	.ds 1
      000011                        374 _del_PARM_4:
      000011                        375 	.ds 1
      000012                        376 _del_PARM_5:
      000012                        377 	.ds 1
                                    378 	.area	OSEG    (OVR,DATA)
      00000F                        379 _draw_PARM_2:
      00000F                        380 	.ds 1
      000010                        381 _draw_PARM_3:
      000010                        382 	.ds 1
      000011                        383 _draw_PARM_4:
      000011                        384 	.ds 1
      000012                        385 _draw_PARM_5:
      000012                        386 	.ds 1
                                    387 	.area	OSEG    (OVR,DATA)
      00000F                        388 _Get_Dot_PARM_2:
      00000F                        389 	.ds 1
      000010                        390 _Get_Dot_PARM_3:
      000010                        391 	.ds 1
                                    392 ;--------------------------------------------------------
                                    393 ; Stack segment in internal ram 
                                    394 ;--------------------------------------------------------
                                    395 	.area	SSEG
      000072                        396 __start__stack:
      000072                        397 	.ds	1
                                    398 
                                    399 ;--------------------------------------------------------
                                    400 ; indirectly addressable internal ram data
                                    401 ;--------------------------------------------------------
                                    402 	.area ISEG    (DATA)
                                    403 ;--------------------------------------------------------
                                    404 ; absolute internal ram data
                                    405 ;--------------------------------------------------------
                                    406 	.area IABS    (ABS,DATA)
                                    407 	.area IABS    (ABS,DATA)
                                    408 ;--------------------------------------------------------
                                    409 ; bit data
                                    410 ;--------------------------------------------------------
                                    411 	.area BSEG    (BIT)
      000000                        412 _mode1_sloc0_1_0:
      000000                        413 	.ds 1
      000001                        414 _mode2_sloc0_1_0:
      000001                        415 	.ds 1
      000002                        416 _mode3_sloc0_1_0:
      000002                        417 	.ds 1
      000003                        418 _mode4_sloc0_1_0:
      000003                        419 	.ds 1
                                    420 ;--------------------------------------------------------
                                    421 ; paged external ram data
                                    422 ;--------------------------------------------------------
                                    423 	.area PSEG    (PAG,XDATA)
                                    424 ;--------------------------------------------------------
                                    425 ; external ram data
                                    426 ;--------------------------------------------------------
                                    427 	.area XSEG    (XDATA)
                                    428 ;--------------------------------------------------------
                                    429 ; absolute external ram data
                                    430 ;--------------------------------------------------------
                                    431 	.area XABS    (ABS,XDATA)
                                    432 ;--------------------------------------------------------
                                    433 ; external initialized ram data
                                    434 ;--------------------------------------------------------
                                    435 	.area XISEG   (XDATA)
                                    436 	.area HOME    (CODE)
                                    437 	.area GSINIT0 (CODE)
                                    438 	.area GSINIT1 (CODE)
                                    439 	.area GSINIT2 (CODE)
                                    440 	.area GSINIT3 (CODE)
                                    441 	.area GSINIT4 (CODE)
                                    442 	.area GSINIT5 (CODE)
                                    443 	.area GSINIT  (CODE)
                                    444 	.area GSFINAL (CODE)
                                    445 	.area CSEG    (CODE)
                                    446 ;--------------------------------------------------------
                                    447 ; interrupt vector 
                                    448 ;--------------------------------------------------------
                                    449 	.area HOME    (CODE)
      000000                        450 __interrupt_vect:
      000000 02 00 06         [24]  451 	ljmp	__sdcc_gsinit_startup
                                    452 ;--------------------------------------------------------
                                    453 ; global & static initialisations
                                    454 ;--------------------------------------------------------
                                    455 	.area HOME    (CODE)
                                    456 	.area GSINIT  (CODE)
                                    457 	.area GSFINAL (CODE)
                                    458 	.area GSINIT  (CODE)
                                    459 	.globl __sdcc_gsinit_startup
                                    460 	.globl __sdcc_program_startup
                                    461 	.globl __start__stack
                                    462 	.globl __mcs51_genXINIT
                                    463 	.globl __mcs51_genXRAMCLEAR
                                    464 	.globl __mcs51_genRAMCLEAR
                                    465 ;	./src/main.c:15: unsigned char mode = 0; // 當前在哪個狀態
      00005F 75 23 00         [24]  466 	mov	_mode,#0x00
                                    467 ;	./src/main.c:16: char winner = 0;        // 紀錄最後的贏家
      000062 75 24 00         [24]  468 	mov	_winner,#0x00
                                    469 ;	./src/main.c:17: unsigned char player_bool[3] = {0 ,0, 0}; // 開局前的確認
      000065 75 25 00         [24]  470 	mov	_player_bool,#0x00
      000068 75 26 00         [24]  471 	mov	(_player_bool + 0x0001),#0x00
      00006B 75 27 00         [24]  472 	mov	(_player_bool + 0x0002),#0x00
                                    473 ;	./src/main.c:20: char boat_type[][2] = {{4, 2}, {3, 3}}; // 兩種軍艦 4*2, 3*3
      00006E 75 2A 04         [24]  474 	mov	_boat_type,#0x04
      000071 75 2B 02         [24]  475 	mov	(_boat_type + 0x0001),#0x02
      000074 75 2C 03         [24]  476 	mov	(_boat_type + 0x0002),#0x03
      000077 75 2D 03         [24]  477 	mov	(_boat_type + 0x0003),#0x03
                                    478 ;	./src/main.c:26: char conti_flag = 0;    // 雙層迴圈中的中斷flag
      00007A 75 3A 00         [24]  479 	mov	_conti_flag,#0x00
                                    480 ;	./src/main.c:29: char player1[][2] = {{1, 0}, {16, 16}};  // 玩家所放置的軍艦的位置 (col, row) // col 1~8, row 0~7 
      00007D 75 3D 01         [24]  481 	mov	_player1,#0x01
      000080 75 3E 00         [24]  482 	mov	(_player1 + 0x0001),#0x00
      000083 75 3F 10         [24]  483 	mov	(_player1 + 0x0002),#0x10
      000086 75 40 10         [24]  484 	mov	(_player1 + 0x0003),#0x10
                                    485 ;	./src/main.c:30: char player2[][2] = {{1, 0}, {16, 16}};
      000089 75 41 01         [24]  486 	mov	_player2,#0x01
      00008C 75 42 00         [24]  487 	mov	(_player2 + 0x0001),#0x00
      00008F 75 43 10         [24]  488 	mov	(_player2 + 0x0002),#0x10
      000092 75 44 10         [24]  489 	mov	(_player2 + 0x0003),#0x10
                                    490 ;	./src/main.c:31: char player[][2] = {{0, 0},{1, 0}, {1, 0}}; // 玩家鼠標所在的位置
      000095 75 45 00         [24]  491 	mov	_player,#0x00
      000098 75 46 00         [24]  492 	mov	(_player + 0x0001),#0x00
      00009B 75 47 01         [24]  493 	mov	(_player + 0x0002),#0x01
      00009E 75 48 00         [24]  494 	mov	(_player + 0x0003),#0x00
      0000A1 75 49 01         [24]  495 	mov	(_player + 0x0004),#0x01
      0000A4 75 4A 00         [24]  496 	mov	(_player + 0x0005),#0x00
                                    497 ;	./src/main.c:32: char player_score[] = {0, 0, 0};            // 各玩家的得分(win: 17分)
      0000A7 75 4B 00         [24]  498 	mov	_player_score,#0x00
      0000AA 75 4C 00         [24]  499 	mov	(_player_score + 0x0001),#0x00
      0000AD 75 4D 00         [24]  500 	mov	(_player_score + 0x0002),#0x00
                                    501 ;	./src/main.c:33: char mat1_1[] = {0xff, 0x00, 0x00, 0x00,0x00, 0x00, 0x00, 0x00, 0x00};
      0000B0 75 4E FF         [24]  502 	mov	_mat1_1,#0xff
      0000B3 75 4F 00         [24]  503 	mov	(_mat1_1 + 0x0001),#0x00
      0000B6 75 50 00         [24]  504 	mov	(_mat1_1 + 0x0002),#0x00
      0000B9 75 51 00         [24]  505 	mov	(_mat1_1 + 0x0003),#0x00
      0000BC 75 52 00         [24]  506 	mov	(_mat1_1 + 0x0004),#0x00
      0000BF 75 53 00         [24]  507 	mov	(_mat1_1 + 0x0005),#0x00
      0000C2 75 54 00         [24]  508 	mov	(_mat1_1 + 0x0006),#0x00
      0000C5 75 55 00         [24]  509 	mov	(_mat1_1 + 0x0007),#0x00
      0000C8 75 56 00         [24]  510 	mov	(_mat1_1 + 0x0008),#0x00
                                    511 ;	./src/main.c:34: char mat1_2[] = {0x00, 0x00, 0x00, 0x00,0x00, 0x00, 0x00, 0x00, 0x00};
      0000CB 75 57 00         [24]  512 	mov	_mat1_2,#0x00
      0000CE 75 58 00         [24]  513 	mov	(_mat1_2 + 0x0001),#0x00
      0000D1 75 59 00         [24]  514 	mov	(_mat1_2 + 0x0002),#0x00
      0000D4 75 5A 00         [24]  515 	mov	(_mat1_2 + 0x0003),#0x00
      0000D7 75 5B 00         [24]  516 	mov	(_mat1_2 + 0x0004),#0x00
      0000DA 75 5C 00         [24]  517 	mov	(_mat1_2 + 0x0005),#0x00
      0000DD 75 5D 00         [24]  518 	mov	(_mat1_2 + 0x0006),#0x00
      0000E0 75 5E 00         [24]  519 	mov	(_mat1_2 + 0x0007),#0x00
      0000E3 75 5F 00         [24]  520 	mov	(_mat1_2 + 0x0008),#0x00
                                    521 ;	./src/main.c:35: char mat2_1[] = {0xff, 0x00, 0x00, 0x00,0x00, 0x00, 0x00, 0x00, 0x00};
      0000E6 75 60 FF         [24]  522 	mov	_mat2_1,#0xff
      0000E9 75 61 00         [24]  523 	mov	(_mat2_1 + 0x0001),#0x00
      0000EC 75 62 00         [24]  524 	mov	(_mat2_1 + 0x0002),#0x00
      0000EF 75 63 00         [24]  525 	mov	(_mat2_1 + 0x0003),#0x00
      0000F2 75 64 00         [24]  526 	mov	(_mat2_1 + 0x0004),#0x00
      0000F5 75 65 00         [24]  527 	mov	(_mat2_1 + 0x0005),#0x00
      0000F8 75 66 00         [24]  528 	mov	(_mat2_1 + 0x0006),#0x00
      0000FB 75 67 00         [24]  529 	mov	(_mat2_1 + 0x0007),#0x00
      0000FE 75 68 00         [24]  530 	mov	(_mat2_1 + 0x0008),#0x00
                                    531 ;	./src/main.c:36: char mat2_2[] = {0x00, 0x00, 0x00, 0x00,0x00, 0x00, 0x00, 0x00, 0x00};
      000101 75 69 00         [24]  532 	mov	_mat2_2,#0x00
      000104 75 6A 00         [24]  533 	mov	(_mat2_2 + 0x0001),#0x00
      000107 75 6B 00         [24]  534 	mov	(_mat2_2 + 0x0002),#0x00
      00010A 75 6C 00         [24]  535 	mov	(_mat2_2 + 0x0003),#0x00
      00010D 75 6D 00         [24]  536 	mov	(_mat2_2 + 0x0004),#0x00
      000110 75 6E 00         [24]  537 	mov	(_mat2_2 + 0x0005),#0x00
      000113 75 6F 00         [24]  538 	mov	(_mat2_2 + 0x0006),#0x00
      000116 75 70 00         [24]  539 	mov	(_mat2_2 + 0x0007),#0x00
      000119 75 71 00         [24]  540 	mov	(_mat2_2 + 0x0008),#0x00
                                    541 	.area GSFINAL (CODE)
      00011C 02 00 03         [24]  542 	ljmp	__sdcc_program_startup
                                    543 ;--------------------------------------------------------
                                    544 ; Home
                                    545 ;--------------------------------------------------------
                                    546 	.area HOME    (CODE)
                                    547 	.area HOME    (CODE)
      000003                        548 __sdcc_program_startup:
      000003 02 01 1F         [24]  549 	ljmp	_main
                                    550 ;	return from main will return to caller
                                    551 ;--------------------------------------------------------
                                    552 ; code
                                    553 ;--------------------------------------------------------
                                    554 	.area CSEG    (CODE)
                                    555 ;------------------------------------------------------------
                                    556 ;Allocation info for local variables in function 'main'
                                    557 ;------------------------------------------------------------
                                    558 ;now_key                   Allocated to registers 
                                    559 ;now2_key                  Allocated to registers 
                                    560 ;------------------------------------------------------------
                                    561 ;	./src/main.c:49: void main(void)
                                    562 ;	-----------------------------------------
                                    563 ;	 function main
                                    564 ;	-----------------------------------------
      00011F                        565 _main:
                           000007   566 	ar7 = 0x07
                           000006   567 	ar6 = 0x06
                           000005   568 	ar5 = 0x05
                           000004   569 	ar4 = 0x04
                           000003   570 	ar3 = 0x03
                           000002   571 	ar2 = 0x02
                           000001   572 	ar1 = 0x01
                           000000   573 	ar0 = 0x00
                                    574 ;	./src/main.c:53: OLED_Init();
      00011F 12 14 27         [24]  575 	lcall	_OLED_Init
                                    576 ;	./src/main.c:54: Initial7219();
      000122 12 16 1E         [24]  577 	lcall	_Initial7219
                                    578 ;	./src/main.c:55: while (1){
      000125                        579 00119$:
                                    580 ;	./src/main.c:56: led = ~(1<<mode);
      000125 AF 23            [24]  581 	mov	r7,_mode
      000127 8F F0            [24]  582 	mov	b,r7
      000129 05 F0            [12]  583 	inc	b
      00012B 74 01            [12]  584 	mov	a,#0x01
      00012D 80 02            [24]  585 	sjmp	00153$
      00012F                        586 00151$:
      00012F 25 E0            [12]  587 	add	a,acc
      000131                        588 00153$:
      000131 D5 F0 FB         [24]  589 	djnz	b,00151$
      000134 FF               [12]  590 	mov	r7,a
      000135 F4               [12]  591 	cpl	a
      000136 F5 90            [12]  592 	mov	_P1,a
                                    593 ;	./src/main.c:57: if (mode == 0){
      000138 E5 23            [12]  594 	mov	a,_mode
      00013A 70 05            [24]  595 	jnz	00116$
                                    596 ;	./src/main.c:58: mode0();
      00013C 12 01 73         [24]  597 	lcall	_mode0
      00013F 80 E4            [24]  598 	sjmp	00119$
      000141                        599 00116$:
                                    600 ;	./src/main.c:59: }else if (mode == 1){
      000141 74 01            [12]  601 	mov	a,#0x01
      000143 B5 23 05         [24]  602 	cjne	a,_mode,00113$
                                    603 ;	./src/main.c:60: mode1();
      000146 12 02 09         [24]  604 	lcall	_mode1
      000149 80 DA            [24]  605 	sjmp	00119$
      00014B                        606 00113$:
                                    607 ;	./src/main.c:61: }else if (mode == 2){
      00014B 74 02            [12]  608 	mov	a,#0x02
      00014D B5 23 05         [24]  609 	cjne	a,_mode,00110$
                                    610 ;	./src/main.c:62: mode2();
      000150 12 05 AF         [24]  611 	lcall	_mode2
      000153 80 D0            [24]  612 	sjmp	00119$
      000155                        613 00110$:
                                    614 ;	./src/main.c:63: }else if (mode == 3){
      000155 74 03            [12]  615 	mov	a,#0x03
      000157 B5 23 05         [24]  616 	cjne	a,_mode,00107$
                                    617 ;	./src/main.c:64: mode3();
      00015A 12 09 55         [24]  618 	lcall	_mode3
      00015D 80 C6            [24]  619 	sjmp	00119$
      00015F                        620 00107$:
                                    621 ;	./src/main.c:65: }else if (mode == 4){
      00015F 74 04            [12]  622 	mov	a,#0x04
      000161 B5 23 05         [24]  623 	cjne	a,_mode,00104$
                                    624 ;	./src/main.c:66: mode4();
      000164 12 0F 43         [24]  625 	lcall	_mode4
      000167 80 BC            [24]  626 	sjmp	00119$
      000169                        627 00104$:
                                    628 ;	./src/main.c:67: }else if (mode == 5){
      000169 74 05            [12]  629 	mov	a,#0x05
      00016B B5 23 B7         [24]  630 	cjne	a,_mode,00119$
                                    631 ;	./src/main.c:68: mode5();
      00016E 12 12 85         [24]  632 	lcall	_mode5
                                    633 ;	./src/main.c:73: }
      000171 80 B2            [24]  634 	sjmp	00119$
                                    635 ;------------------------------------------------------------
                                    636 ;Allocation info for local variables in function 'mode0'
                                    637 ;------------------------------------------------------------
                                    638 ;	./src/main.c:75: void mode0(void){
                                    639 ;	-----------------------------------------
                                    640 ;	 function mode0
                                    641 ;	-----------------------------------------
      000173                        642 _mode0:
                                    643 ;	./src/main.c:76: if (but1 == 0){
      000173 20 B2 0C         [24]  644 	jb	_INT0,00104$
                                    645 ;	./src/main.c:77: delay_ms(10);
      000176 90 00 0A         [24]  646 	mov	dptr,#0x000a
      000179 12 12 F2         [24]  647 	lcall	_delay_ms
                                    648 ;	./src/main.c:78: if (but1 == 0){
      00017C 20 B2 03         [24]  649 	jb	_INT0,00104$
                                    650 ;	./src/main.c:79: player_bool[1] = 1;
      00017F 75 26 01         [24]  651 	mov	(_player_bool + 0x0001),#0x01
      000182                        652 00104$:
                                    653 ;	./src/main.c:82: if (but4 == 0){
      000182 20 A1 0C         [24]  654 	jb	_P2_1,00108$
                                    655 ;	./src/main.c:83: delay_ms(10);
      000185 90 00 0A         [24]  656 	mov	dptr,#0x000a
      000188 12 12 F2         [24]  657 	lcall	_delay_ms
                                    658 ;	./src/main.c:84: if (but4 == 0){
      00018B 20 A1 03         [24]  659 	jb	_P2_1,00108$
                                    660 ;	./src/main.c:85: player_bool[2] = 1;
      00018E 75 27 01         [24]  661 	mov	(_player_bool + 0x0002),#0x01
      000191                        662 00108$:
                                    663 ;	./src/main.c:88: OLED_SetCursor(2, 3);
      000191 75 0B 03         [24]  664 	mov	_OLED_SetCursor_PARM_2,#0x03
      000194 75 82 02         [24]  665 	mov	dpl,#0x02
      000197 12 15 3D         [24]  666 	lcall	_OLED_SetCursor
                                    667 ;	./src/main.c:89: OLED_DisplayString("Press but1");
      00019A 90 17 81         [24]  668 	mov	dptr,#___str_0
      00019D 75 F0 80         [24]  669 	mov	b,#0x80
      0001A0 12 14 E7         [24]  670 	lcall	_OLED_DisplayString
                                    671 ;	./src/main.c:90: OLED_SetCursor(3, 10);
      0001A3 75 0B 0A         [24]  672 	mov	_OLED_SetCursor_PARM_2,#0x0a
      0001A6 75 82 03         [24]  673 	mov	dpl,#0x03
      0001A9 12 15 3D         [24]  674 	lcall	_OLED_SetCursor
                                    675 ;	./src/main.c:91: OLED_DisplayString("but4 to start");
      0001AC 90 17 8C         [24]  676 	mov	dptr,#___str_1
      0001AF 75 F0 80         [24]  677 	mov	b,#0x80
      0001B2 12 14 E7         [24]  678 	lcall	_OLED_DisplayString
                                    679 ;	./src/main.c:92: OLED_SetCursor(4, 5);
      0001B5 75 0B 05         [24]  680 	mov	_OLED_SetCursor_PARM_2,#0x05
      0001B8 75 82 04         [24]  681 	mov	dpl,#0x04
      0001BB 12 15 3D         [24]  682 	lcall	_OLED_SetCursor
                                    683 ;	./src/main.c:93: if (player_bool[1] != 0){
      0001BE E5 26            [12]  684 	mov	a,(_player_bool + 0x0001)
      0001C0 60 0B            [24]  685 	jz	00110$
                                    686 ;	./src/main.c:94: OLED_DisplayString("Player1 is ready");
      0001C2 90 17 9A         [24]  687 	mov	dptr,#___str_2
      0001C5 75 F0 80         [24]  688 	mov	b,#0x80
      0001C8 12 14 E7         [24]  689 	lcall	_OLED_DisplayString
      0001CB 80 09            [24]  690 	sjmp	00111$
      0001CD                        691 00110$:
                                    692 ;	./src/main.c:96: OLED_DisplayString("Wait for player1");
      0001CD 90 17 AB         [24]  693 	mov	dptr,#___str_3
      0001D0 75 F0 80         [24]  694 	mov	b,#0x80
      0001D3 12 14 E7         [24]  695 	lcall	_OLED_DisplayString
      0001D6                        696 00111$:
                                    697 ;	./src/main.c:98: OLED_SetCursor(5, 5);
      0001D6 75 0B 05         [24]  698 	mov	_OLED_SetCursor_PARM_2,#0x05
      0001D9 75 82 05         [24]  699 	mov	dpl,#0x05
      0001DC 12 15 3D         [24]  700 	lcall	_OLED_SetCursor
                                    701 ;	./src/main.c:99: if (player_bool[2] != 0){
      0001DF E5 27            [12]  702 	mov	a,(_player_bool + 0x0002)
      0001E1 60 0B            [24]  703 	jz	00113$
                                    704 ;	./src/main.c:100: OLED_DisplayString("Player2 is ready");
      0001E3 90 17 BC         [24]  705 	mov	dptr,#___str_4
      0001E6 75 F0 80         [24]  706 	mov	b,#0x80
      0001E9 12 14 E7         [24]  707 	lcall	_OLED_DisplayString
      0001EC 80 09            [24]  708 	sjmp	00114$
      0001EE                        709 00113$:
                                    710 ;	./src/main.c:102: OLED_DisplayString("Wait for player2");
      0001EE 90 17 CD         [24]  711 	mov	dptr,#___str_5
      0001F1 75 F0 80         [24]  712 	mov	b,#0x80
      0001F4 12 14 E7         [24]  713 	lcall	_OLED_DisplayString
      0001F7                        714 00114$:
                                    715 ;	./src/main.c:105: if (player_bool[1] != 0 && player_bool[2] != 0){
      0001F7 E5 26            [12]  716 	mov	a,(_player_bool + 0x0001)
      0001F9 60 0D            [24]  717 	jz	00118$
      0001FB E5 27            [12]  718 	mov	a,(_player_bool + 0x0002)
      0001FD 60 09            [24]  719 	jz	00118$
                                    720 ;	./src/main.c:106: mode = 1;
      0001FF 75 23 01         [24]  721 	mov	_mode,#0x01
                                    722 ;	./src/main.c:107: player_bool[1] = 0;
      000202 75 26 00         [24]  723 	mov	(_player_bool + 0x0001),#0x00
                                    724 ;	./src/main.c:108: player_bool[2] = 0;
      000205 75 27 00         [24]  725 	mov	(_player_bool + 0x0002),#0x00
      000208                        726 00118$:
                                    727 ;	./src/main.c:110: }
      000208 22               [24]  728 	ret
                                    729 ;------------------------------------------------------------
                                    730 ;Allocation info for local variables in function 'mode1'
                                    731 ;------------------------------------------------------------
                                    732 ;	./src/main.c:111: void mode1(void){
                                    733 ;	-----------------------------------------
                                    734 ;	 function mode1
                                    735 ;	-----------------------------------------
      000209                        736 _mode1:
                                    737 ;	./src/main.c:112: OLED_Clear();
      000209 12 15 12         [24]  738 	lcall	_OLED_Clear
                                    739 ;	./src/main.c:113: OLED_SetCursor(2, 3);
      00020C 75 0B 03         [24]  740 	mov	_OLED_SetCursor_PARM_2,#0x03
      00020F 75 82 02         [24]  741 	mov	dpl,#0x02
      000212 12 15 3D         [24]  742 	lcall	_OLED_SetCursor
                                    743 ;	./src/main.c:114: OLED_DisplayString("Player1 setting ");
      000215 90 17 DE         [24]  744 	mov	dptr,#___str_6
      000218 75 F0 80         [24]  745 	mov	b,#0x80
      00021B 12 14 E7         [24]  746 	lcall	_OLED_DisplayString
                                    747 ;	./src/main.c:116: conti_flag = 0;
      00021E 75 3A 00         [24]  748 	mov	_conti_flag,#0x00
                                    749 ;	./src/main.c:117: nxt_row = 0; nxt_col = 0; 
      000221 75 36 00         [24]  750 	mov	_nxt_row,#0x00
      000224 75 37 00         [24]  751 	mov	_nxt_col,#0x00
                                    752 ;	./src/main.c:118: check_ = 0;
      000227 75 35 00         [24]  753 	mov	_check_,#0x00
                                    754 ;	./src/main.c:120: idx = 0; // 當前要處理的軍艦
      00022A 75 34 00         [24]  755 	mov	_idx,#0x00
                                    756 ;	./src/main.c:121: while (idx < 2){ // 有兩個軍艦要設置
      00022D                        757 00142$:
      00022D 74 FE            [12]  758 	mov	a,#0x100 - 0x02
      00022F 25 34            [12]  759 	add	a,_idx
      000231 50 03            [24]  760 	jnc	00304$
      000233 02 05 AB         [24]  761 	ljmp	00144$
      000236                        762 00304$:
                                    763 ;	./src/main.c:122: conti_flag = 0;
      000236 75 3A 00         [24]  764 	mov	_conti_flag,#0x00
                                    765 ;	./src/main.c:123: for (tmp_l=0;tmp_l<idx;tmp_l++){ // 先找到一個合法位置，將它設為預設位置
      000239 75 33 00         [24]  766 	mov	_tmp_l,#0x00
      00023C                        767 00149$:
      00023C C3               [12]  768 	clr	c
      00023D E5 33            [12]  769 	mov	a,_tmp_l
      00023F 95 34            [12]  770 	subb	a,_idx
      000241 40 03            [24]  771 	jc	00305$
      000243 02 03 05         [24]  772 	ljmp	00112$
      000246                        773 00305$:
                                    774 ;	./src/main.c:124: for (tmp_i=1;tmp_i<=8;tmp_i++){
      000246 75 31 01         [24]  775 	mov	_tmp_i,#0x01
      000249                        776 00146$:
                                    777 ;	./src/main.c:125: for (tmp_j=0;tmp_j<8;tmp_j++){
      000249 75 32 00         [24]  778 	mov	_tmp_j,#0x00
      00024C                        779 00145$:
                                    780 ;	./src/main.c:126: if (conti_flag != 0)break;;
      00024C E5 3A            [12]  781 	mov	a,_conti_flag
      00024E 60 03            [24]  782 	jz	00306$
      000250 02 02 F5         [24]  783 	ljmp	00147$
      000253                        784 00306$:
                                    785 ;	./src/main.c:127: if (tmp_j+boat_type[idx][1]-1 > 7 ){continue;} // 邊界檢查
      000253 AE 32            [24]  786 	mov	r6,_tmp_j
      000255 7F 00            [12]  787 	mov	r7,#0x00
      000257 E5 34            [12]  788 	mov	a,_idx
      000259 25 34            [12]  789 	add	a,_idx
      00025B FD               [12]  790 	mov	r5,a
      00025C 24 2A            [12]  791 	add	a,#_boat_type
      00025E 04               [12]  792 	inc	a
      00025F F9               [12]  793 	mov	r1,a
      000260 87 04            [24]  794 	mov	ar4,@r1
      000262 7B 00            [12]  795 	mov	r3,#0x00
      000264 EC               [12]  796 	mov	a,r4
      000265 2E               [12]  797 	add	a,r6
      000266 FE               [12]  798 	mov	r6,a
      000267 EB               [12]  799 	mov	a,r3
      000268 3F               [12]  800 	addc	a,r7
      000269 FF               [12]  801 	mov	r7,a
      00026A 1E               [12]  802 	dec	r6
      00026B BE FF 01         [24]  803 	cjne	r6,#0xff,00307$
      00026E 1F               [12]  804 	dec	r7
      00026F                        805 00307$:
      00026F C3               [12]  806 	clr	c
      000270 74 07            [12]  807 	mov	a,#0x07
      000272 9E               [12]  808 	subb	a,r6
      000273 74 80            [12]  809 	mov	a,#(0x00 ^ 0x80)
      000275 8F F0            [24]  810 	mov	b,r7
      000277 63 F0 80         [24]  811 	xrl	b,#0x80
      00027A 95 F0            [12]  812 	subb	a,b
      00027C 40 6C            [24]  813 	jc	00109$
                                    814 ;	./src/main.c:128: if (tmp_i+boat_type[idx][0]-1 > 8){continue;}
      00027E AE 31            [24]  815 	mov	r6,_tmp_i
      000280 7F 00            [12]  816 	mov	r7,#0x00
      000282 ED               [12]  817 	mov	a,r5
      000283 24 2A            [12]  818 	add	a,#_boat_type
      000285 F9               [12]  819 	mov	r1,a
      000286 87 05            [24]  820 	mov	ar5,@r1
      000288 8D 03            [24]  821 	mov	ar3,r5
      00028A 7C 00            [12]  822 	mov	r4,#0x00
      00028C EB               [12]  823 	mov	a,r3
      00028D 2E               [12]  824 	add	a,r6
      00028E FE               [12]  825 	mov	r6,a
      00028F EC               [12]  826 	mov	a,r4
      000290 3F               [12]  827 	addc	a,r7
      000291 FF               [12]  828 	mov	r7,a
      000292 1E               [12]  829 	dec	r6
      000293 BE FF 01         [24]  830 	cjne	r6,#0xff,00309$
      000296 1F               [12]  831 	dec	r7
      000297                        832 00309$:
      000297 C3               [12]  833 	clr	c
      000298 74 08            [12]  834 	mov	a,#0x08
      00029A 9E               [12]  835 	subb	a,r6
      00029B 74 80            [12]  836 	mov	a,#(0x00 ^ 0x80)
      00029D 8F F0            [24]  837 	mov	b,r7
      00029F 63 F0 80         [24]  838 	xrl	b,#0x80
      0002A2 95 F0            [12]  839 	subb	a,b
      0002A4 40 44            [24]  840 	jc	00109$
                                    841 ;	./src/main.c:129: if (overlap(tmp_i, tmp_j, boat_type[idx][0], boat_type[idx][1],
      0002A6 09               [12]  842 	inc	r1
      0002A7 87 11            [24]  843 	mov	_overlap_PARM_4,@r1
                                    844 ;	./src/main.c:130: player1[tmp_l][0], player1[tmp_l][1], boat_type[tmp_l][0], boat_type[tmp_l][1]) != 1){ 
      0002A9 E5 33            [12]  845 	mov	a,_tmp_l
      0002AB 25 33            [12]  846 	add	a,_tmp_l
      0002AD FF               [12]  847 	mov	r7,a
      0002AE 24 3D            [12]  848 	add	a,#_player1
      0002B0 F9               [12]  849 	mov	r1,a
      0002B1 87 12            [24]  850 	mov	_overlap_PARM_5,@r1
      0002B3 09               [12]  851 	inc	r1
      0002B4 87 13            [24]  852 	mov	_overlap_PARM_6,@r1
      0002B6 EF               [12]  853 	mov	a,r7
      0002B7 24 2A            [12]  854 	add	a,#_boat_type
      0002B9 F9               [12]  855 	mov	r1,a
      0002BA 87 14            [24]  856 	mov	_overlap_PARM_7,@r1
      0002BC 09               [12]  857 	inc	r1
      0002BD 87 15            [24]  858 	mov	_overlap_PARM_8,@r1
      0002BF 85 32 0F         [24]  859 	mov	_overlap_PARM_2,_tmp_j
      0002C2 8D 10            [24]  860 	mov	_overlap_PARM_3,r5
      0002C4 85 31 82         [24]  861 	mov	dpl,_tmp_i
      0002C7 12 0C 94         [24]  862 	lcall	_overlap
      0002CA AF 82            [24]  863 	mov	r7,dpl
      0002CC BF 01 02         [24]  864 	cjne	r7,#0x01,00311$
      0002CF 80 19            [24]  865 	sjmp	00109$
      0002D1                        866 00311$:
                                    867 ;	./src/main.c:132: player1[idx][0] = tmp_i;
      0002D1 E5 34            [12]  868 	mov	a,_idx
      0002D3 25 34            [12]  869 	add	a,_idx
      0002D5 24 3D            [12]  870 	add	a,#_player1
      0002D7 F8               [12]  871 	mov	r0,a
      0002D8 A6 31            [24]  872 	mov	@r0,_tmp_i
                                    873 ;	./src/main.c:133: player1[idx][1] = tmp_j; // 將他們儲存
      0002DA E5 34            [12]  874 	mov	a,_idx
      0002DC 25 34            [12]  875 	add	a,_idx
      0002DE 24 3D            [12]  876 	add	a,#_player1
      0002E0 FF               [12]  877 	mov	r7,a
      0002E1 04               [12]  878 	inc	a
      0002E2 F8               [12]  879 	mov	r0,a
      0002E3 A6 32            [24]  880 	mov	@r0,_tmp_j
                                    881 ;	./src/main.c:134: conti_flag = 1;
      0002E5 75 3A 01         [24]  882 	mov	_conti_flag,#0x01
                                    883 ;	./src/main.c:135: break;
      0002E8 80 0B            [24]  884 	sjmp	00147$
      0002EA                        885 00109$:
                                    886 ;	./src/main.c:125: for (tmp_j=0;tmp_j<8;tmp_j++){
      0002EA 05 32            [12]  887 	inc	_tmp_j
      0002EC 74 F8            [12]  888 	mov	a,#0x100 - 0x08
      0002EE 25 32            [12]  889 	add	a,_tmp_j
      0002F0 40 03            [24]  890 	jc	00312$
      0002F2 02 02 4C         [24]  891 	ljmp	00145$
      0002F5                        892 00312$:
      0002F5                        893 00147$:
                                    894 ;	./src/main.c:124: for (tmp_i=1;tmp_i<=8;tmp_i++){
      0002F5 05 31            [12]  895 	inc	_tmp_i
      0002F7 E5 31            [12]  896 	mov	a,_tmp_i
      0002F9 24 F7            [12]  897 	add	a,#0xff - 0x08
      0002FB 40 03            [24]  898 	jc	00313$
      0002FD 02 02 49         [24]  899 	ljmp	00146$
      000300                        900 00313$:
                                    901 ;	./src/main.c:123: for (tmp_l=0;tmp_l<idx;tmp_l++){ // 先找到一個合法位置，將它設為預設位置
      000300 05 33            [12]  902 	inc	_tmp_l
      000302 02 02 3C         [24]  903 	ljmp	00149$
      000305                        904 00112$:
                                    905 ;	./src/main.c:141: check_ = 1;
      000305 75 35 01         [24]  906 	mov	_check_,#0x01
                                    907 ;	./src/main.c:142: OLED_SetCursor(3, 3);
      000308 75 0B 03         [24]  908 	mov	_OLED_SetCursor_PARM_2,#0x03
      00030B 75 82 03         [24]  909 	mov	dpl,#0x03
      00030E 12 15 3D         [24]  910 	lcall	_OLED_SetCursor
                                    911 ;	./src/main.c:143: OLED_DisplayString("setting ");
      000311 90 17 EF         [24]  912 	mov	dptr,#___str_7
      000314 75 F0 80         [24]  913 	mov	b,#0x80
      000317 12 14 E7         [24]  914 	lcall	_OLED_DisplayString
                                    915 ;	./src/main.c:144: OLED_DisplayChar('0' + idx);
      00031A AF 34            [24]  916 	mov	r7,_idx
      00031C 74 30            [12]  917 	mov	a,#0x30
      00031E 2F               [12]  918 	add	a,r7
      00031F F5 82            [12]  919 	mov	dpl,a
      000321 12 14 96         [24]  920 	lcall	_OLED_DisplayChar
                                    921 ;	./src/main.c:146: draw(player1[idx][0], player1[idx][1], player1[idx][0]+boat_type[idx][0]-1, player1[idx][1]+boat_type[idx][1]-1, 0); 
      000324 E5 34            [12]  922 	mov	a,_idx
      000326 25 34            [12]  923 	add	a,_idx
      000328 FF               [12]  924 	mov	r7,a
      000329 24 3D            [12]  925 	add	a,#_player1
      00032B F9               [12]  926 	mov	r1,a
      00032C 87 06            [24]  927 	mov	ar6,@r1
      00032E 09               [12]  928 	inc	r1
      00032F 87 05            [24]  929 	mov	ar5,@r1
      000331 EF               [12]  930 	mov	a,r7
      000332 24 2A            [12]  931 	add	a,#_boat_type
      000334 F9               [12]  932 	mov	r1,a
      000335 E7               [12]  933 	mov	a,@r1
      000336 2E               [12]  934 	add	a,r6
      000337 14               [12]  935 	dec	a
      000338 F5 10            [12]  936 	mov	_draw_PARM_3,a
      00033A 09               [12]  937 	inc	r1
      00033B E7               [12]  938 	mov	a,@r1
      00033C 2D               [12]  939 	add	a,r5
      00033D 14               [12]  940 	dec	a
      00033E F5 11            [12]  941 	mov	_draw_PARM_4,a
      000340 8D 0F            [24]  942 	mov	_draw_PARM_2,r5
      000342 75 12 00         [24]  943 	mov	_draw_PARM_5,#0x00
      000345 8E 82            [24]  944 	mov	dpl,r6
      000347 12 0D BC         [24]  945 	lcall	_draw
                                    946 ;	./src/main.c:147: while (check_){
      00034A                        947 00139$:
      00034A E5 35            [12]  948 	mov	a,_check_
      00034C 70 03            [24]  949 	jnz	00314$
      00034E 02 02 2D         [24]  950 	ljmp	00142$
      000351                        951 00314$:
                                    952 ;	./src/main.c:148: OLED_SetCursor(4, 3);
      000351 75 0B 03         [24]  953 	mov	_OLED_SetCursor_PARM_2,#0x03
      000354 75 82 04         [24]  954 	mov	dpl,#0x04
      000357 12 15 3D         [24]  955 	lcall	_OLED_SetCursor
                                    956 ;	./src/main.c:149: OLED_DisplayString("set row: ");
      00035A 90 17 F8         [24]  957 	mov	dptr,#___str_8
      00035D 75 F0 80         [24]  958 	mov	b,#0x80
      000360 12 14 E7         [24]  959 	lcall	_OLED_DisplayString
                                    960 ;	./src/main.c:150: OLED_DisplayChar('0' + player1[idx][1]); // 當前軍艦左上角的座標
      000363 E5 34            [12]  961 	mov	a,_idx
      000365 25 34            [12]  962 	add	a,_idx
      000367 24 3D            [12]  963 	add	a,#_player1
      000369 04               [12]  964 	inc	a
      00036A F9               [12]  965 	mov	r1,a
      00036B 87 07            [24]  966 	mov	ar7,@r1
      00036D 74 30            [12]  967 	mov	a,#0x30
      00036F 2F               [12]  968 	add	a,r7
      000370 F5 82            [12]  969 	mov	dpl,a
      000372 12 14 96         [24]  970 	lcall	_OLED_DisplayChar
                                    971 ;	./src/main.c:151: OLED_SetCursor(5, 3);
      000375 75 0B 03         [24]  972 	mov	_OLED_SetCursor_PARM_2,#0x03
      000378 75 82 05         [24]  973 	mov	dpl,#0x05
      00037B 12 15 3D         [24]  974 	lcall	_OLED_SetCursor
                                    975 ;	./src/main.c:152: OLED_DisplayString("set col: ");
      00037E 90 18 02         [24]  976 	mov	dptr,#___str_9
      000381 75 F0 80         [24]  977 	mov	b,#0x80
      000384 12 14 E7         [24]  978 	lcall	_OLED_DisplayString
                                    979 ;	./src/main.c:153: OLED_DisplayChar('0' + player1[idx][0]);
      000387 E5 34            [12]  980 	mov	a,_idx
      000389 25 34            [12]  981 	add	a,_idx
      00038B 24 3D            [12]  982 	add	a,#_player1
      00038D F9               [12]  983 	mov	r1,a
      00038E 87 07            [24]  984 	mov	ar7,@r1
      000390 74 30            [12]  985 	mov	a,#0x30
      000392 2F               [12]  986 	add	a,r7
      000393 F5 82            [12]  987 	mov	dpl,a
      000395 12 14 96         [24]  988 	lcall	_OLED_DisplayChar
                                    989 ;	./src/main.c:156: now_key = Get_Key();
      000398 12 12 A6         [24]  990 	lcall	_Get_Key
      00039B AE 82            [24]  991 	mov	r6,dpl
      00039D AF 83            [24]  992 	mov	r7,dph
                                    993 ;	./src/main.c:157: if (now_key != 0){
      00039F EE               [12]  994 	mov	a,r6
      0003A0 F5 29            [12]  995 	mov	_now_key,a
      0003A2 70 03            [24]  996 	jnz	00315$
      0003A4 02 05 4C         [24]  997 	ljmp	00129$
      0003A7                        998 00315$:
                                    999 ;	./src/main.c:158: delay_ms(10);
      0003A7 90 00 0A         [24] 1000 	mov	dptr,#0x000a
      0003AA 12 12 F2         [24] 1001 	lcall	_delay_ms
                                   1002 ;	./src/main.c:159: if (Get_Key() == now_key){ // 按鍵控制+邊界處理
      0003AD 12 12 A6         [24] 1003 	lcall	_Get_Key
      0003B0 AE 82            [24] 1004 	mov	r6,dpl
      0003B2 AF 83            [24] 1005 	mov	r7,dph
      0003B4 AC 29            [24] 1006 	mov	r4,_now_key
      0003B6 7D 00            [12] 1007 	mov	r5,#0x00
      0003B8 EE               [12] 1008 	mov	a,r6
      0003B9 B5 04 06         [24] 1009 	cjne	a,ar4,00316$
      0003BC EF               [12] 1010 	mov	a,r7
      0003BD B5 05 02         [24] 1011 	cjne	a,ar5,00316$
      0003C0 80 03            [24] 1012 	sjmp	00317$
      0003C2                       1013 00316$:
      0003C2 02 05 4C         [24] 1014 	ljmp	00129$
      0003C5                       1015 00317$:
                                   1016 ;	./src/main.c:160: nxt_col = player1[idx][0];nxt_row = player1[idx][1];
      0003C5 E5 34            [12] 1017 	mov	a,_idx
      0003C7 25 34            [12] 1018 	add	a,_idx
      0003C9 FF               [12] 1019 	mov	r7,a
      0003CA 24 3D            [12] 1020 	add	a,#_player1
      0003CC F9               [12] 1021 	mov	r1,a
      0003CD 87 37            [24] 1022 	mov	_nxt_col,@r1
      0003CF 09               [12] 1023 	inc	r1
      0003D0 87 36            [24] 1024 	mov	_nxt_row,@r1
                                   1025 ;	./src/main.c:161: if (now_key == 1){// up r
      0003D2 74 01            [12] 1026 	mov	a,#0x01
      0003D4 B5 29 1C         [24] 1027 	cjne	a,_now_key,00114$
                                   1028 ;	./src/main.c:162: nxt_row = (player1[idx][1] <= 0)? player1[idx][1]:player1[idx][1]-1;
      0003D7 EF               [12] 1029 	mov	a,r7
      0003D8 24 3D            [12] 1030 	add	a,#_player1
      0003DA 04               [12] 1031 	inc	a
      0003DB F9               [12] 1032 	mov	r1,a
      0003DC E7               [12] 1033 	mov	a,@r1
      0003DD 70 09            [24] 1034 	jnz	00160$
      0003DF EF               [12] 1035 	mov	a,r7
      0003E0 24 3D            [12] 1036 	add	a,#_player1
      0003E2 04               [12] 1037 	inc	a
      0003E3 F9               [12] 1038 	mov	r1,a
      0003E4 87 06            [24] 1039 	mov	ar6,@r1
      0003E6 80 09            [24] 1040 	sjmp	00161$
      0003E8                       1041 00160$:
      0003E8 EF               [12] 1042 	mov	a,r7
      0003E9 24 3D            [12] 1043 	add	a,#_player1
      0003EB 04               [12] 1044 	inc	a
      0003EC F9               [12] 1045 	mov	r1,a
      0003ED E7               [12] 1046 	mov	a,@r1
      0003EE FF               [12] 1047 	mov	r7,a
      0003EF 14               [12] 1048 	dec	a
      0003F0 FE               [12] 1049 	mov	r6,a
      0003F1                       1050 00161$:
      0003F1 8E 36            [24] 1051 	mov	_nxt_row,r6
      0003F3                       1052 00114$:
                                   1053 ;	./src/main.c:163: }if (now_key == 2){ // down r
      0003F3 74 02            [12] 1054 	mov	a,#0x02
      0003F5 B5 29 42         [24] 1055 	cjne	a,_now_key,00116$
                                   1056 ;	./src/main.c:164: nxt_row = (player1[idx][1]+boat_type[idx][1]-1 >= 7)? player1[idx][1]:player1[idx][1]+1;
      0003F8 E5 34            [12] 1057 	mov	a,_idx
      0003FA 25 34            [12] 1058 	add	a,_idx
      0003FC FF               [12] 1059 	mov	r7,a
      0003FD 24 3D            [12] 1060 	add	a,#_player1
      0003FF 04               [12] 1061 	inc	a
      000400 F9               [12] 1062 	mov	r1,a
      000401 87 06            [24] 1063 	mov	ar6,@r1
      000403 7D 00            [12] 1064 	mov	r5,#0x00
      000405 EF               [12] 1065 	mov	a,r7
      000406 24 2A            [12] 1066 	add	a,#_boat_type
      000408 04               [12] 1067 	inc	a
      000409 F9               [12] 1068 	mov	r1,a
      00040A 87 04            [24] 1069 	mov	ar4,@r1
      00040C 7B 00            [12] 1070 	mov	r3,#0x00
      00040E EC               [12] 1071 	mov	a,r4
      00040F 2E               [12] 1072 	add	a,r6
      000410 FE               [12] 1073 	mov	r6,a
      000411 EB               [12] 1074 	mov	a,r3
      000412 3D               [12] 1075 	addc	a,r5
      000413 FD               [12] 1076 	mov	r5,a
      000414 1E               [12] 1077 	dec	r6
      000415 BE FF 01         [24] 1078 	cjne	r6,#0xff,00323$
      000418 1D               [12] 1079 	dec	r5
      000419                       1080 00323$:
      000419 C3               [12] 1081 	clr	c
      00041A EE               [12] 1082 	mov	a,r6
      00041B 94 07            [12] 1083 	subb	a,#0x07
      00041D ED               [12] 1084 	mov	a,r5
      00041E 64 80            [12] 1085 	xrl	a,#0x80
      000420 94 80            [12] 1086 	subb	a,#0x80
      000422 92 00            [24] 1087 	mov	_mode1_sloc0_1_0,c
      000424 40 09            [24] 1088 	jc	00162$
      000426 EF               [12] 1089 	mov	a,r7
      000427 24 3D            [12] 1090 	add	a,#_player1
      000429 04               [12] 1091 	inc	a
      00042A F9               [12] 1092 	mov	r1,a
      00042B 87 06            [24] 1093 	mov	ar6,@r1
      00042D 80 09            [24] 1094 	sjmp	00163$
      00042F                       1095 00162$:
      00042F EF               [12] 1096 	mov	a,r7
      000430 24 3D            [12] 1097 	add	a,#_player1
      000432 04               [12] 1098 	inc	a
      000433 F9               [12] 1099 	mov	r1,a
      000434 E7               [12] 1100 	mov	a,@r1
      000435 FF               [12] 1101 	mov	r7,a
      000436 04               [12] 1102 	inc	a
      000437 FE               [12] 1103 	mov	r6,a
      000438                       1104 00163$:
      000438 8E 36            [24] 1105 	mov	_nxt_row,r6
      00043A                       1106 00116$:
                                   1107 ;	./src/main.c:166: if (now_key == 5){// left r
      00043A 74 05            [12] 1108 	mov	a,#0x05
      00043C B5 29 18         [24] 1109 	cjne	a,_now_key,00118$
                                   1110 ;	./src/main.c:167: nxt_col = (player1[idx][0] <= 1)? player1[idx][0]:player1[idx][0]-1;
      00043F E5 34            [12] 1111 	mov	a,_idx
      000441 25 34            [12] 1112 	add	a,_idx
      000443 24 3D            [12] 1113 	add	a,#_player1
      000445 F9               [12] 1114 	mov	r1,a
      000446 E7               [12] 1115 	mov	a,@r1
      000447 FF               [12] 1116 	mov	r7,a
      000448 24 FE            [12] 1117 	add	a,#0xff - 0x01
      00044A 92 00            [24] 1118 	mov	_mode1_sloc0_1_0,c
      00044C 40 04            [24] 1119 	jc	00164$
      00044E 8F 06            [24] 1120 	mov	ar6,r7
      000450 80 03            [24] 1121 	sjmp	00165$
      000452                       1122 00164$:
      000452 EF               [12] 1123 	mov	a,r7
      000453 14               [12] 1124 	dec	a
      000454 FE               [12] 1125 	mov	r6,a
      000455                       1126 00165$:
      000455 8E 37            [24] 1127 	mov	_nxt_col,r6
      000457                       1128 00118$:
                                   1129 ;	./src/main.c:169: if (now_key == 6){// right r
      000457 74 06            [12] 1130 	mov	a,#0x06
      000459 B5 29 37         [24] 1131 	cjne	a,_now_key,00120$
                                   1132 ;	./src/main.c:170: nxt_col = (player1[idx][0]+boat_type[idx][0]-1 >= 8)? player1[idx][0]:player1[idx][0]+1;
      00045C E5 34            [12] 1133 	mov	a,_idx
      00045E 25 34            [12] 1134 	add	a,_idx
      000460 FF               [12] 1135 	mov	r7,a
      000461 24 3D            [12] 1136 	add	a,#_player1
      000463 F9               [12] 1137 	mov	r1,a
      000464 87 06            [24] 1138 	mov	ar6,@r1
      000466 8E 04            [24] 1139 	mov	ar4,r6
      000468 7D 00            [12] 1140 	mov	r5,#0x00
      00046A EF               [12] 1141 	mov	a,r7
      00046B 24 2A            [12] 1142 	add	a,#_boat_type
      00046D F9               [12] 1143 	mov	r1,a
      00046E 87 07            [24] 1144 	mov	ar7,@r1
      000470 7B 00            [12] 1145 	mov	r3,#0x00
      000472 EF               [12] 1146 	mov	a,r7
      000473 2C               [12] 1147 	add	a,r4
      000474 FC               [12] 1148 	mov	r4,a
      000475 EB               [12] 1149 	mov	a,r3
      000476 3D               [12] 1150 	addc	a,r5
      000477 FD               [12] 1151 	mov	r5,a
      000478 1C               [12] 1152 	dec	r4
      000479 BC FF 01         [24] 1153 	cjne	r4,#0xff,00330$
      00047C 1D               [12] 1154 	dec	r5
      00047D                       1155 00330$:
      00047D C3               [12] 1156 	clr	c
      00047E EC               [12] 1157 	mov	a,r4
      00047F 94 08            [12] 1158 	subb	a,#0x08
      000481 ED               [12] 1159 	mov	a,r5
      000482 64 80            [12] 1160 	xrl	a,#0x80
      000484 94 80            [12] 1161 	subb	a,#0x80
      000486 92 00            [24] 1162 	mov	_mode1_sloc0_1_0,c
      000488 40 04            [24] 1163 	jc	00166$
      00048A 8E 07            [24] 1164 	mov	ar7,r6
      00048C 80 03            [24] 1165 	sjmp	00167$
      00048E                       1166 00166$:
      00048E EE               [12] 1167 	mov	a,r6
      00048F 04               [12] 1168 	inc	a
      000490 FF               [12] 1169 	mov	r7,a
      000491                       1170 00167$:
      000491 8F 37            [24] 1171 	mov	_nxt_col,r7
      000493                       1172 00120$:
                                   1173 ;	./src/main.c:173: for (l=0;l<idx;l++){ // 檢查這個位置是否合法(有無重疊?)
      000493 75 30 00         [24] 1174 	mov	_l,#0x00
      000496                       1175 00152$:
      000496 C3               [12] 1176 	clr	c
      000497 E5 30            [12] 1177 	mov	a,_l
      000499 95 34            [12] 1178 	subb	a,_idx
      00049B 50 3C            [24] 1179 	jnc	00123$
                                   1180 ;	./src/main.c:174: conti_flag = 0;
      00049D 75 3A 00         [24] 1181 	mov	_conti_flag,#0x00
                                   1182 ;	./src/main.c:175: if (overlap(nxt_col, nxt_row, boat_type[idx][0], boat_type[idx][1],
      0004A0 E5 34            [12] 1183 	mov	a,_idx
      0004A2 25 34            [12] 1184 	add	a,_idx
      0004A4 24 2A            [12] 1185 	add	a,#_boat_type
      0004A6 F9               [12] 1186 	mov	r1,a
      0004A7 87 10            [24] 1187 	mov	_overlap_PARM_3,@r1
      0004A9 09               [12] 1188 	inc	r1
      0004AA 87 11            [24] 1189 	mov	_overlap_PARM_4,@r1
                                   1190 ;	./src/main.c:176: player1[l][0], player1[l][1], boat_type[l][0], boat_type[l][1]) == 1){
      0004AC E5 30            [12] 1191 	mov	a,_l
      0004AE 25 30            [12] 1192 	add	a,_l
      0004B0 FF               [12] 1193 	mov	r7,a
      0004B1 24 3D            [12] 1194 	add	a,#_player1
      0004B3 F9               [12] 1195 	mov	r1,a
      0004B4 87 12            [24] 1196 	mov	_overlap_PARM_5,@r1
      0004B6 09               [12] 1197 	inc	r1
      0004B7 87 13            [24] 1198 	mov	_overlap_PARM_6,@r1
      0004B9 EF               [12] 1199 	mov	a,r7
      0004BA 24 2A            [12] 1200 	add	a,#_boat_type
      0004BC F9               [12] 1201 	mov	r1,a
      0004BD 87 14            [24] 1202 	mov	_overlap_PARM_7,@r1
      0004BF 09               [12] 1203 	inc	r1
      0004C0 87 15            [24] 1204 	mov	_overlap_PARM_8,@r1
      0004C2 85 36 0F         [24] 1205 	mov	_overlap_PARM_2,_nxt_row
      0004C5 85 37 82         [24] 1206 	mov	dpl,_nxt_col
      0004C8 12 0C 94         [24] 1207 	lcall	_overlap
      0004CB AF 82            [24] 1208 	mov	r7,dpl
      0004CD BF 01 05         [24] 1209 	cjne	r7,#0x01,00153$
                                   1210 ;	./src/main.c:177: conti_flag = 1;
      0004D0 75 3A 01         [24] 1211 	mov	_conti_flag,#0x01
                                   1212 ;	./src/main.c:178: break;;
      0004D3 80 04            [24] 1213 	sjmp	00123$
      0004D5                       1214 00153$:
                                   1215 ;	./src/main.c:173: for (l=0;l<idx;l++){ // 檢查這個位置是否合法(有無重疊?)
      0004D5 05 30            [12] 1216 	inc	_l
      0004D7 80 BD            [24] 1217 	sjmp	00152$
      0004D9                       1218 00123$:
                                   1219 ;	./src/main.c:181: if (conti_flag == 1){ // 不合法，繼續執行
      0004D9 74 01            [12] 1220 	mov	a,#0x01
      0004DB B5 3A 06         [24] 1221 	cjne	a,_conti_flag,00125$
                                   1222 ;	./src/main.c:182: conti_flag = 0;
      0004DE 75 3A 00         [24] 1223 	mov	_conti_flag,#0x00
                                   1224 ;	./src/main.c:183: continue;
      0004E1 02 03 4A         [24] 1225 	ljmp	00139$
      0004E4                       1226 00125$:
                                   1227 ;	./src/main.c:191: del(player1[idx][0], player1[idx][1], player1[idx][0]+boat_type[idx][0]-1, player1[idx][1]+boat_type[idx][1]-1, 0); 
      0004E4 E5 34            [12] 1228 	mov	a,_idx
      0004E6 25 34            [12] 1229 	add	a,_idx
      0004E8 FF               [12] 1230 	mov	r7,a
      0004E9 24 3D            [12] 1231 	add	a,#_player1
      0004EB F9               [12] 1232 	mov	r1,a
      0004EC 87 06            [24] 1233 	mov	ar6,@r1
      0004EE 09               [12] 1234 	inc	r1
      0004EF 87 05            [24] 1235 	mov	ar5,@r1
      0004F1 EF               [12] 1236 	mov	a,r7
      0004F2 24 2A            [12] 1237 	add	a,#_boat_type
      0004F4 F9               [12] 1238 	mov	r1,a
      0004F5 E7               [12] 1239 	mov	a,@r1
      0004F6 2E               [12] 1240 	add	a,r6
      0004F7 14               [12] 1241 	dec	a
      0004F8 F5 10            [12] 1242 	mov	_del_PARM_3,a
      0004FA 09               [12] 1243 	inc	r1
      0004FB E7               [12] 1244 	mov	a,@r1
      0004FC 2D               [12] 1245 	add	a,r5
      0004FD 14               [12] 1246 	dec	a
      0004FE F5 11            [12] 1247 	mov	_del_PARM_4,a
      000500 8D 0F            [24] 1248 	mov	_del_PARM_2,r5
      000502 75 12 00         [24] 1249 	mov	_del_PARM_5,#0x00
      000505 8E 82            [24] 1250 	mov	dpl,r6
      000507 12 0D 3E         [24] 1251 	lcall	_del
                                   1252 ;	./src/main.c:192: player1[idx][1] = nxt_row;
      00050A E5 34            [12] 1253 	mov	a,_idx
      00050C 25 34            [12] 1254 	add	a,_idx
      00050E 24 3D            [12] 1255 	add	a,#_player1
      000510 04               [12] 1256 	inc	a
      000511 F8               [12] 1257 	mov	r0,a
      000512 A6 36            [24] 1258 	mov	@r0,_nxt_row
                                   1259 ;	./src/main.c:193: player1[idx][0] = nxt_col;
      000514 E5 34            [12] 1260 	mov	a,_idx
      000516 25 34            [12] 1261 	add	a,_idx
      000518 24 3D            [12] 1262 	add	a,#_player1
      00051A F8               [12] 1263 	mov	r0,a
      00051B A6 37            [24] 1264 	mov	@r0,_nxt_col
                                   1265 ;	./src/main.c:195: draw(player1[idx][0], player1[idx][1], player1[idx][0]+boat_type[idx][0]-1, player1[idx][1]+boat_type[idx][1]-1, 0);
      00051D E5 34            [12] 1266 	mov	a,_idx
      00051F 25 34            [12] 1267 	add	a,_idx
      000521 FF               [12] 1268 	mov	r7,a
      000522 24 3D            [12] 1269 	add	a,#_player1
      000524 F9               [12] 1270 	mov	r1,a
      000525 87 06            [24] 1271 	mov	ar6,@r1
      000527 09               [12] 1272 	inc	r1
      000528 87 05            [24] 1273 	mov	ar5,@r1
      00052A EF               [12] 1274 	mov	a,r7
      00052B 24 2A            [12] 1275 	add	a,#_boat_type
      00052D F9               [12] 1276 	mov	r1,a
      00052E E7               [12] 1277 	mov	a,@r1
      00052F 2E               [12] 1278 	add	a,r6
      000530 14               [12] 1279 	dec	a
      000531 F5 10            [12] 1280 	mov	_draw_PARM_3,a
      000533 09               [12] 1281 	inc	r1
      000534 E7               [12] 1282 	mov	a,@r1
      000535 2D               [12] 1283 	add	a,r5
      000536 14               [12] 1284 	dec	a
      000537 F5 11            [12] 1285 	mov	_draw_PARM_4,a
      000539 8D 0F            [24] 1286 	mov	_draw_PARM_2,r5
      00053B 75 12 00         [24] 1287 	mov	_draw_PARM_5,#0x00
      00053E 8E 82            [24] 1288 	mov	dpl,r6
      000540 12 0D BC         [24] 1289 	lcall	_draw
                                   1290 ;	./src/main.c:196: now_key = 0;
      000543 75 29 00         [24] 1291 	mov	_now_key,#0x00
                                   1292 ;	./src/main.c:197: delay_ms(100);
      000546 90 00 64         [24] 1293 	mov	dptr,#0x0064
      000549 12 12 F2         [24] 1294 	lcall	_delay_ms
      00054C                       1295 00129$:
                                   1296 ;	./src/main.c:201: for (i=1;i<=8;i++){
      00054C 75 2E 01         [24] 1297 	mov	_i,#0x01
      00054F                       1298 00154$:
                                   1299 ;	./src/main.c:202: Writesingle7219(2, i, mat1_1[i]);
      00054F E5 2E            [12] 1300 	mov	a,_i
      000551 24 4E            [12] 1301 	add	a,#_mat1_1
      000553 F9               [12] 1302 	mov	r1,a
      000554 87 0E            [24] 1303 	mov	_Writesingle7219_PARM_3,@r1
      000556 85 2E 0D         [24] 1304 	mov	_Writesingle7219_PARM_2,_i
      000559 75 82 02         [24] 1305 	mov	dpl,#0x02
      00055C 12 15 DB         [24] 1306 	lcall	_Writesingle7219
                                   1307 ;	./src/main.c:201: for (i=1;i<=8;i++){
      00055F 05 2E            [12] 1308 	inc	_i
      000561 E5 2E            [12] 1309 	mov	a,_i
      000563 24 F7            [12] 1310 	add	a,#0xff - 0x08
      000565 50 E8            [24] 1311 	jnc	00154$
                                   1312 ;	./src/main.c:204: if (but1 == 0){
      000567 30 B2 03         [24] 1313 	jnb	_INT0,00338$
      00056A 02 03 4A         [24] 1314 	ljmp	00139$
      00056D                       1315 00338$:
                                   1316 ;	./src/main.c:205: delay_ms(10);
      00056D 90 00 0A         [24] 1317 	mov	dptr,#0x000a
      000570 12 12 F2         [24] 1318 	lcall	_delay_ms
                                   1319 ;	./src/main.c:206: if (but1 == 0){
      000573 30 B2 03         [24] 1320 	jnb	_INT0,00339$
      000576 02 03 4A         [24] 1321 	ljmp	00139$
      000579                       1322 00339$:
                                   1323 ;	./src/main.c:207: idx+=1;
      000579 E5 34            [12] 1324 	mov	a,_idx
      00057B FF               [12] 1325 	mov	r7,a
      00057C 04               [12] 1326 	inc	a
      00057D F5 34            [12] 1327 	mov	_idx,a
                                   1328 ;	./src/main.c:208: check_ = 0;
                                   1329 ;	./src/main.c:209: for(in_i = 0;in_i < 588;in_i++){
      00057F E4               [12] 1330 	clr	a
      000580 F5 35            [12] 1331 	mov	_check_,a
      000582 F5 21            [12] 1332 	mov	_in_i,a
      000584 F5 22            [12] 1333 	mov	(_in_i + 1),a
      000586                       1334 00156$:
                                   1335 ;	./src/main.c:210: P3_7 = 1;
                                   1336 ;	assignBit
      000586 D2 B7            [12] 1337 	setb	_P3_7
                                   1338 ;	./src/main.c:211: Delay_Re(); // 發出Re的音
      000588 12 13 27         [24] 1339 	lcall	_Delay_Re
                                   1340 ;	./src/main.c:212: P3_7 = 0;
                                   1341 ;	assignBit
      00058B C2 B7            [12] 1342 	clr	_P3_7
                                   1343 ;	./src/main.c:213: Delay_Re();
      00058D 12 13 27         [24] 1344 	lcall	_Delay_Re
                                   1345 ;	./src/main.c:209: for(in_i = 0;in_i < 588;in_i++){
      000590 05 21            [12] 1346 	inc	_in_i
      000592 E4               [12] 1347 	clr	a
      000593 B5 21 02         [24] 1348 	cjne	a,_in_i,00340$
      000596 05 22            [12] 1349 	inc	(_in_i + 1)
      000598                       1350 00340$:
      000598 C3               [12] 1351 	clr	c
      000599 E5 21            [12] 1352 	mov	a,_in_i
      00059B 94 4C            [12] 1353 	subb	a,#0x4c
      00059D E5 22            [12] 1354 	mov	a,(_in_i + 1)
      00059F 64 80            [12] 1355 	xrl	a,#0x80
      0005A1 94 82            [12] 1356 	subb	a,#0x82
      0005A3 40 E1            [24] 1357 	jc	00156$
                                   1358 ;	./src/main.c:215: while (but1 == 0);
      0005A5                       1359 00132$:
      0005A5 30 B2 FD         [24] 1360 	jnb	_INT0,00132$
      0005A8 02 03 4A         [24] 1361 	ljmp	00139$
      0005AB                       1362 00144$:
                                   1363 ;	./src/main.c:220: mode = 2;
      0005AB 75 23 02         [24] 1364 	mov	_mode,#0x02
                                   1365 ;	./src/main.c:221: }
      0005AE 22               [24] 1366 	ret
                                   1367 ;------------------------------------------------------------
                                   1368 ;Allocation info for local variables in function 'mode2'
                                   1369 ;------------------------------------------------------------
                                   1370 ;	./src/main.c:222: void mode2(void){
                                   1371 ;	-----------------------------------------
                                   1372 ;	 function mode2
                                   1373 ;	-----------------------------------------
      0005AF                       1374 _mode2:
                                   1375 ;	./src/main.c:223: OLED_Clear();
      0005AF 12 15 12         [24] 1376 	lcall	_OLED_Clear
                                   1377 ;	./src/main.c:224: OLED_SetCursor(2, 3);
      0005B2 75 0B 03         [24] 1378 	mov	_OLED_SetCursor_PARM_2,#0x03
      0005B5 75 82 02         [24] 1379 	mov	dpl,#0x02
      0005B8 12 15 3D         [24] 1380 	lcall	_OLED_SetCursor
                                   1381 ;	./src/main.c:225: OLED_DisplayString("Player2 setting ");
      0005BB 90 18 0C         [24] 1382 	mov	dptr,#___str_10
      0005BE 75 F0 80         [24] 1383 	mov	b,#0x80
      0005C1 12 14 E7         [24] 1384 	lcall	_OLED_DisplayString
                                   1385 ;	./src/main.c:227: conti_flag = 0;
      0005C4 75 3A 00         [24] 1386 	mov	_conti_flag,#0x00
                                   1387 ;	./src/main.c:229: nxt_row = 0; nxt_col = 0;
      0005C7 75 36 00         [24] 1388 	mov	_nxt_row,#0x00
      0005CA 75 37 00         [24] 1389 	mov	_nxt_col,#0x00
                                   1390 ;	./src/main.c:230: check_ = 0;
      0005CD 75 35 00         [24] 1391 	mov	_check_,#0x00
                                   1392 ;	./src/main.c:231: idx = 0;
      0005D0 75 34 00         [24] 1393 	mov	_idx,#0x00
                                   1394 ;	./src/main.c:232: while (idx < 2){
      0005D3                       1395 00142$:
      0005D3 74 FE            [12] 1396 	mov	a,#0x100 - 0x02
      0005D5 25 34            [12] 1397 	add	a,_idx
      0005D7 50 03            [24] 1398 	jnc	00304$
      0005D9 02 09 51         [24] 1399 	ljmp	00144$
      0005DC                       1400 00304$:
                                   1401 ;	./src/main.c:233: conti_flag = 0;
      0005DC 75 3A 00         [24] 1402 	mov	_conti_flag,#0x00
                                   1403 ;	./src/main.c:234: for (tmp_l=0;tmp_l<idx;tmp_l++){ // default idx
      0005DF 75 33 00         [24] 1404 	mov	_tmp_l,#0x00
      0005E2                       1405 00149$:
      0005E2 C3               [12] 1406 	clr	c
      0005E3 E5 33            [12] 1407 	mov	a,_tmp_l
      0005E5 95 34            [12] 1408 	subb	a,_idx
      0005E7 40 03            [24] 1409 	jc	00305$
      0005E9 02 06 AB         [24] 1410 	ljmp	00112$
      0005EC                       1411 00305$:
                                   1412 ;	./src/main.c:235: for (tmp_i=1;tmp_i<=8;tmp_i++){
      0005EC 75 31 01         [24] 1413 	mov	_tmp_i,#0x01
      0005EF                       1414 00146$:
                                   1415 ;	./src/main.c:236: for (tmp_j=0;tmp_j<8;tmp_j++){
      0005EF 75 32 00         [24] 1416 	mov	_tmp_j,#0x00
      0005F2                       1417 00145$:
                                   1418 ;	./src/main.c:237: if (conti_flag != 0)break;;
      0005F2 E5 3A            [12] 1419 	mov	a,_conti_flag
      0005F4 60 03            [24] 1420 	jz	00306$
      0005F6 02 06 9B         [24] 1421 	ljmp	00147$
      0005F9                       1422 00306$:
                                   1423 ;	./src/main.c:238: if (tmp_j+boat_type[idx][1]-1 > 7 ){continue;}
      0005F9 AE 32            [24] 1424 	mov	r6,_tmp_j
      0005FB 7F 00            [12] 1425 	mov	r7,#0x00
      0005FD E5 34            [12] 1426 	mov	a,_idx
      0005FF 25 34            [12] 1427 	add	a,_idx
      000601 FD               [12] 1428 	mov	r5,a
      000602 24 2A            [12] 1429 	add	a,#_boat_type
      000604 04               [12] 1430 	inc	a
      000605 F9               [12] 1431 	mov	r1,a
      000606 87 04            [24] 1432 	mov	ar4,@r1
      000608 7B 00            [12] 1433 	mov	r3,#0x00
      00060A EC               [12] 1434 	mov	a,r4
      00060B 2E               [12] 1435 	add	a,r6
      00060C FE               [12] 1436 	mov	r6,a
      00060D EB               [12] 1437 	mov	a,r3
      00060E 3F               [12] 1438 	addc	a,r7
      00060F FF               [12] 1439 	mov	r7,a
      000610 1E               [12] 1440 	dec	r6
      000611 BE FF 01         [24] 1441 	cjne	r6,#0xff,00307$
      000614 1F               [12] 1442 	dec	r7
      000615                       1443 00307$:
      000615 C3               [12] 1444 	clr	c
      000616 74 07            [12] 1445 	mov	a,#0x07
      000618 9E               [12] 1446 	subb	a,r6
      000619 74 80            [12] 1447 	mov	a,#(0x00 ^ 0x80)
      00061B 8F F0            [24] 1448 	mov	b,r7
      00061D 63 F0 80         [24] 1449 	xrl	b,#0x80
      000620 95 F0            [12] 1450 	subb	a,b
      000622 40 6C            [24] 1451 	jc	00109$
                                   1452 ;	./src/main.c:239: if (tmp_i+boat_type[idx][0]-1 > 8){continue;}
      000624 AE 31            [24] 1453 	mov	r6,_tmp_i
      000626 7F 00            [12] 1454 	mov	r7,#0x00
      000628 ED               [12] 1455 	mov	a,r5
      000629 24 2A            [12] 1456 	add	a,#_boat_type
      00062B F9               [12] 1457 	mov	r1,a
      00062C 87 05            [24] 1458 	mov	ar5,@r1
      00062E 8D 03            [24] 1459 	mov	ar3,r5
      000630 7C 00            [12] 1460 	mov	r4,#0x00
      000632 EB               [12] 1461 	mov	a,r3
      000633 2E               [12] 1462 	add	a,r6
      000634 FE               [12] 1463 	mov	r6,a
      000635 EC               [12] 1464 	mov	a,r4
      000636 3F               [12] 1465 	addc	a,r7
      000637 FF               [12] 1466 	mov	r7,a
      000638 1E               [12] 1467 	dec	r6
      000639 BE FF 01         [24] 1468 	cjne	r6,#0xff,00309$
      00063C 1F               [12] 1469 	dec	r7
      00063D                       1470 00309$:
      00063D C3               [12] 1471 	clr	c
      00063E 74 08            [12] 1472 	mov	a,#0x08
      000640 9E               [12] 1473 	subb	a,r6
      000641 74 80            [12] 1474 	mov	a,#(0x00 ^ 0x80)
      000643 8F F0            [24] 1475 	mov	b,r7
      000645 63 F0 80         [24] 1476 	xrl	b,#0x80
      000648 95 F0            [12] 1477 	subb	a,b
      00064A 40 44            [24] 1478 	jc	00109$
                                   1479 ;	./src/main.c:241: if (overlap(tmp_i, tmp_j, boat_type[idx][0], boat_type[idx][1],
      00064C 09               [12] 1480 	inc	r1
      00064D 87 11            [24] 1481 	mov	_overlap_PARM_4,@r1
                                   1482 ;	./src/main.c:242: player2[tmp_l][0], player2[tmp_l][1], boat_type[tmp_l][0], boat_type[tmp_l][1]) != 1){
      00064F E5 33            [12] 1483 	mov	a,_tmp_l
      000651 25 33            [12] 1484 	add	a,_tmp_l
      000653 FF               [12] 1485 	mov	r7,a
      000654 24 41            [12] 1486 	add	a,#_player2
      000656 F9               [12] 1487 	mov	r1,a
      000657 87 12            [24] 1488 	mov	_overlap_PARM_5,@r1
      000659 09               [12] 1489 	inc	r1
      00065A 87 13            [24] 1490 	mov	_overlap_PARM_6,@r1
      00065C EF               [12] 1491 	mov	a,r7
      00065D 24 2A            [12] 1492 	add	a,#_boat_type
      00065F F9               [12] 1493 	mov	r1,a
      000660 87 14            [24] 1494 	mov	_overlap_PARM_7,@r1
      000662 09               [12] 1495 	inc	r1
      000663 87 15            [24] 1496 	mov	_overlap_PARM_8,@r1
      000665 85 32 0F         [24] 1497 	mov	_overlap_PARM_2,_tmp_j
      000668 8D 10            [24] 1498 	mov	_overlap_PARM_3,r5
      00066A 85 31 82         [24] 1499 	mov	dpl,_tmp_i
      00066D 12 0C 94         [24] 1500 	lcall	_overlap
      000670 AF 82            [24] 1501 	mov	r7,dpl
      000672 BF 01 02         [24] 1502 	cjne	r7,#0x01,00311$
      000675 80 19            [24] 1503 	sjmp	00109$
      000677                       1504 00311$:
                                   1505 ;	./src/main.c:243: player2[idx][0] = tmp_i;
      000677 E5 34            [12] 1506 	mov	a,_idx
      000679 25 34            [12] 1507 	add	a,_idx
      00067B 24 41            [12] 1508 	add	a,#_player2
      00067D F8               [12] 1509 	mov	r0,a
      00067E A6 31            [24] 1510 	mov	@r0,_tmp_i
                                   1511 ;	./src/main.c:244: player2[idx][1] = tmp_j;
      000680 E5 34            [12] 1512 	mov	a,_idx
      000682 25 34            [12] 1513 	add	a,_idx
      000684 24 41            [12] 1514 	add	a,#_player2
      000686 FF               [12] 1515 	mov	r7,a
      000687 04               [12] 1516 	inc	a
      000688 F8               [12] 1517 	mov	r0,a
      000689 A6 32            [24] 1518 	mov	@r0,_tmp_j
                                   1519 ;	./src/main.c:245: conti_flag = 1;
      00068B 75 3A 01         [24] 1520 	mov	_conti_flag,#0x01
                                   1521 ;	./src/main.c:246: break;
      00068E 80 0B            [24] 1522 	sjmp	00147$
      000690                       1523 00109$:
                                   1524 ;	./src/main.c:236: for (tmp_j=0;tmp_j<8;tmp_j++){
      000690 05 32            [12] 1525 	inc	_tmp_j
      000692 74 F8            [12] 1526 	mov	a,#0x100 - 0x08
      000694 25 32            [12] 1527 	add	a,_tmp_j
      000696 40 03            [24] 1528 	jc	00312$
      000698 02 05 F2         [24] 1529 	ljmp	00145$
      00069B                       1530 00312$:
      00069B                       1531 00147$:
                                   1532 ;	./src/main.c:235: for (tmp_i=1;tmp_i<=8;tmp_i++){
      00069B 05 31            [12] 1533 	inc	_tmp_i
      00069D E5 31            [12] 1534 	mov	a,_tmp_i
      00069F 24 F7            [12] 1535 	add	a,#0xff - 0x08
      0006A1 40 03            [24] 1536 	jc	00313$
      0006A3 02 05 EF         [24] 1537 	ljmp	00146$
      0006A6                       1538 00313$:
                                   1539 ;	./src/main.c:234: for (tmp_l=0;tmp_l<idx;tmp_l++){ // default idx
      0006A6 05 33            [12] 1540 	inc	_tmp_l
      0006A8 02 05 E2         [24] 1541 	ljmp	00149$
      0006AB                       1542 00112$:
                                   1543 ;	./src/main.c:252: check_ = 1;
      0006AB 75 35 01         [24] 1544 	mov	_check_,#0x01
                                   1545 ;	./src/main.c:253: OLED_SetCursor(3, 3);
      0006AE 75 0B 03         [24] 1546 	mov	_OLED_SetCursor_PARM_2,#0x03
      0006B1 75 82 03         [24] 1547 	mov	dpl,#0x03
      0006B4 12 15 3D         [24] 1548 	lcall	_OLED_SetCursor
                                   1549 ;	./src/main.c:254: OLED_DisplayString("setting ");
      0006B7 90 17 EF         [24] 1550 	mov	dptr,#___str_7
      0006BA 75 F0 80         [24] 1551 	mov	b,#0x80
      0006BD 12 14 E7         [24] 1552 	lcall	_OLED_DisplayString
                                   1553 ;	./src/main.c:255: OLED_DisplayChar('0' + idx);
      0006C0 AF 34            [24] 1554 	mov	r7,_idx
      0006C2 74 30            [12] 1555 	mov	a,#0x30
      0006C4 2F               [12] 1556 	add	a,r7
      0006C5 F5 82            [12] 1557 	mov	dpl,a
      0006C7 12 14 96         [24] 1558 	lcall	_OLED_DisplayChar
                                   1559 ;	./src/main.c:257: draw(player2[idx][0], player2[idx][1], player2[idx][0]+boat_type[idx][0]-1, player2[idx][1]+boat_type[idx][1]-1, 1);
      0006CA E5 34            [12] 1560 	mov	a,_idx
      0006CC 25 34            [12] 1561 	add	a,_idx
      0006CE FF               [12] 1562 	mov	r7,a
      0006CF 24 41            [12] 1563 	add	a,#_player2
      0006D1 F9               [12] 1564 	mov	r1,a
      0006D2 87 06            [24] 1565 	mov	ar6,@r1
      0006D4 09               [12] 1566 	inc	r1
      0006D5 87 05            [24] 1567 	mov	ar5,@r1
      0006D7 EF               [12] 1568 	mov	a,r7
      0006D8 24 2A            [12] 1569 	add	a,#_boat_type
      0006DA F9               [12] 1570 	mov	r1,a
      0006DB E7               [12] 1571 	mov	a,@r1
      0006DC 2E               [12] 1572 	add	a,r6
      0006DD 14               [12] 1573 	dec	a
      0006DE F5 10            [12] 1574 	mov	_draw_PARM_3,a
      0006E0 09               [12] 1575 	inc	r1
      0006E1 E7               [12] 1576 	mov	a,@r1
      0006E2 2D               [12] 1577 	add	a,r5
      0006E3 14               [12] 1578 	dec	a
      0006E4 F5 11            [12] 1579 	mov	_draw_PARM_4,a
      0006E6 8D 0F            [24] 1580 	mov	_draw_PARM_2,r5
      0006E8 75 12 01         [24] 1581 	mov	_draw_PARM_5,#0x01
      0006EB 8E 82            [24] 1582 	mov	dpl,r6
      0006ED 12 0D BC         [24] 1583 	lcall	_draw
                                   1584 ;	./src/main.c:258: while (check_){
      0006F0                       1585 00139$:
      0006F0 E5 35            [12] 1586 	mov	a,_check_
      0006F2 70 03            [24] 1587 	jnz	00314$
      0006F4 02 05 D3         [24] 1588 	ljmp	00142$
      0006F7                       1589 00314$:
                                   1590 ;	./src/main.c:259: OLED_SetCursor(4, 3);
      0006F7 75 0B 03         [24] 1591 	mov	_OLED_SetCursor_PARM_2,#0x03
      0006FA 75 82 04         [24] 1592 	mov	dpl,#0x04
      0006FD 12 15 3D         [24] 1593 	lcall	_OLED_SetCursor
                                   1594 ;	./src/main.c:260: OLED_DisplayString("set row: ");
      000700 90 17 F8         [24] 1595 	mov	dptr,#___str_8
      000703 75 F0 80         [24] 1596 	mov	b,#0x80
      000706 12 14 E7         [24] 1597 	lcall	_OLED_DisplayString
                                   1598 ;	./src/main.c:261: OLED_DisplayChar('0' + player2[idx][1]);
      000709 E5 34            [12] 1599 	mov	a,_idx
      00070B 25 34            [12] 1600 	add	a,_idx
      00070D 24 41            [12] 1601 	add	a,#_player2
      00070F 04               [12] 1602 	inc	a
      000710 F9               [12] 1603 	mov	r1,a
      000711 87 07            [24] 1604 	mov	ar7,@r1
      000713 74 30            [12] 1605 	mov	a,#0x30
      000715 2F               [12] 1606 	add	a,r7
      000716 F5 82            [12] 1607 	mov	dpl,a
      000718 12 14 96         [24] 1608 	lcall	_OLED_DisplayChar
                                   1609 ;	./src/main.c:262: OLED_SetCursor(5, 3);
      00071B 75 0B 03         [24] 1610 	mov	_OLED_SetCursor_PARM_2,#0x03
      00071E 75 82 05         [24] 1611 	mov	dpl,#0x05
      000721 12 15 3D         [24] 1612 	lcall	_OLED_SetCursor
                                   1613 ;	./src/main.c:263: OLED_DisplayString("set col: ");
      000724 90 18 02         [24] 1614 	mov	dptr,#___str_9
      000727 75 F0 80         [24] 1615 	mov	b,#0x80
      00072A 12 14 E7         [24] 1616 	lcall	_OLED_DisplayString
                                   1617 ;	./src/main.c:264: OLED_DisplayChar('0' + player2[idx][0]);
      00072D E5 34            [12] 1618 	mov	a,_idx
      00072F 25 34            [12] 1619 	add	a,_idx
      000731 24 41            [12] 1620 	add	a,#_player2
      000733 F9               [12] 1621 	mov	r1,a
      000734 87 07            [24] 1622 	mov	ar7,@r1
      000736 74 30            [12] 1623 	mov	a,#0x30
      000738 2F               [12] 1624 	add	a,r7
      000739 F5 82            [12] 1625 	mov	dpl,a
      00073B 12 14 96         [24] 1626 	lcall	_OLED_DisplayChar
                                   1627 ;	./src/main.c:267: now_key = Get_Key();
      00073E 12 12 A6         [24] 1628 	lcall	_Get_Key
      000741 AE 82            [24] 1629 	mov	r6,dpl
      000743 AF 83            [24] 1630 	mov	r7,dph
                                   1631 ;	./src/main.c:268: if (now_key != 0){
      000745 EE               [12] 1632 	mov	a,r6
      000746 F5 29            [12] 1633 	mov	_now_key,a
      000748 70 03            [24] 1634 	jnz	00315$
      00074A 02 08 F2         [24] 1635 	ljmp	00129$
      00074D                       1636 00315$:
                                   1637 ;	./src/main.c:269: delay_ms(10);
      00074D 90 00 0A         [24] 1638 	mov	dptr,#0x000a
      000750 12 12 F2         [24] 1639 	lcall	_delay_ms
                                   1640 ;	./src/main.c:270: if (Get_Key() == now_key){
      000753 12 12 A6         [24] 1641 	lcall	_Get_Key
      000756 AE 82            [24] 1642 	mov	r6,dpl
      000758 AF 83            [24] 1643 	mov	r7,dph
      00075A AC 29            [24] 1644 	mov	r4,_now_key
      00075C 7D 00            [12] 1645 	mov	r5,#0x00
      00075E EE               [12] 1646 	mov	a,r6
      00075F B5 04 06         [24] 1647 	cjne	a,ar4,00316$
      000762 EF               [12] 1648 	mov	a,r7
      000763 B5 05 02         [24] 1649 	cjne	a,ar5,00316$
      000766 80 03            [24] 1650 	sjmp	00317$
      000768                       1651 00316$:
      000768 02 08 F2         [24] 1652 	ljmp	00129$
      00076B                       1653 00317$:
                                   1654 ;	./src/main.c:271: nxt_col = player2[idx][0];nxt_row = player2[idx][1];
      00076B E5 34            [12] 1655 	mov	a,_idx
      00076D 25 34            [12] 1656 	add	a,_idx
      00076F FF               [12] 1657 	mov	r7,a
      000770 24 41            [12] 1658 	add	a,#_player2
      000772 F9               [12] 1659 	mov	r1,a
      000773 87 37            [24] 1660 	mov	_nxt_col,@r1
      000775 09               [12] 1661 	inc	r1
      000776 87 36            [24] 1662 	mov	_nxt_row,@r1
                                   1663 ;	./src/main.c:272: if (now_key == 3){// up r
      000778 74 03            [12] 1664 	mov	a,#0x03
      00077A B5 29 1C         [24] 1665 	cjne	a,_now_key,00114$
                                   1666 ;	./src/main.c:273: nxt_row = (player2[idx][1] <= 0)? player2[idx][1]:player2[idx][1]-1;
      00077D EF               [12] 1667 	mov	a,r7
      00077E 24 41            [12] 1668 	add	a,#_player2
      000780 04               [12] 1669 	inc	a
      000781 F9               [12] 1670 	mov	r1,a
      000782 E7               [12] 1671 	mov	a,@r1
      000783 70 09            [24] 1672 	jnz	00160$
      000785 EF               [12] 1673 	mov	a,r7
      000786 24 41            [12] 1674 	add	a,#_player2
      000788 04               [12] 1675 	inc	a
      000789 F9               [12] 1676 	mov	r1,a
      00078A 87 06            [24] 1677 	mov	ar6,@r1
      00078C 80 09            [24] 1678 	sjmp	00161$
      00078E                       1679 00160$:
      00078E EF               [12] 1680 	mov	a,r7
      00078F 24 41            [12] 1681 	add	a,#_player2
      000791 04               [12] 1682 	inc	a
      000792 F9               [12] 1683 	mov	r1,a
      000793 E7               [12] 1684 	mov	a,@r1
      000794 FF               [12] 1685 	mov	r7,a
      000795 14               [12] 1686 	dec	a
      000796 FE               [12] 1687 	mov	r6,a
      000797                       1688 00161$:
      000797 8E 36            [24] 1689 	mov	_nxt_row,r6
      000799                       1690 00114$:
                                   1691 ;	./src/main.c:274: }if (now_key == 4){ // down r
      000799 74 04            [12] 1692 	mov	a,#0x04
      00079B B5 29 42         [24] 1693 	cjne	a,_now_key,00116$
                                   1694 ;	./src/main.c:275: nxt_row = (player2[idx][1]+boat_type[idx][1]-1 >= 7)? player2[idx][1]:player2[idx][1]+1;
      00079E E5 34            [12] 1695 	mov	a,_idx
      0007A0 25 34            [12] 1696 	add	a,_idx
      0007A2 FF               [12] 1697 	mov	r7,a
      0007A3 24 41            [12] 1698 	add	a,#_player2
      0007A5 04               [12] 1699 	inc	a
      0007A6 F9               [12] 1700 	mov	r1,a
      0007A7 87 06            [24] 1701 	mov	ar6,@r1
      0007A9 7D 00            [12] 1702 	mov	r5,#0x00
      0007AB EF               [12] 1703 	mov	a,r7
      0007AC 24 2A            [12] 1704 	add	a,#_boat_type
      0007AE 04               [12] 1705 	inc	a
      0007AF F9               [12] 1706 	mov	r1,a
      0007B0 87 04            [24] 1707 	mov	ar4,@r1
      0007B2 7B 00            [12] 1708 	mov	r3,#0x00
      0007B4 EC               [12] 1709 	mov	a,r4
      0007B5 2E               [12] 1710 	add	a,r6
      0007B6 FE               [12] 1711 	mov	r6,a
      0007B7 EB               [12] 1712 	mov	a,r3
      0007B8 3D               [12] 1713 	addc	a,r5
      0007B9 FD               [12] 1714 	mov	r5,a
      0007BA 1E               [12] 1715 	dec	r6
      0007BB BE FF 01         [24] 1716 	cjne	r6,#0xff,00323$
      0007BE 1D               [12] 1717 	dec	r5
      0007BF                       1718 00323$:
      0007BF C3               [12] 1719 	clr	c
      0007C0 EE               [12] 1720 	mov	a,r6
      0007C1 94 07            [12] 1721 	subb	a,#0x07
      0007C3 ED               [12] 1722 	mov	a,r5
      0007C4 64 80            [12] 1723 	xrl	a,#0x80
      0007C6 94 80            [12] 1724 	subb	a,#0x80
      0007C8 92 01            [24] 1725 	mov	_mode2_sloc0_1_0,c
      0007CA 40 09            [24] 1726 	jc	00162$
      0007CC EF               [12] 1727 	mov	a,r7
      0007CD 24 41            [12] 1728 	add	a,#_player2
      0007CF 04               [12] 1729 	inc	a
      0007D0 F9               [12] 1730 	mov	r1,a
      0007D1 87 06            [24] 1731 	mov	ar6,@r1
      0007D3 80 09            [24] 1732 	sjmp	00163$
      0007D5                       1733 00162$:
      0007D5 EF               [12] 1734 	mov	a,r7
      0007D6 24 41            [12] 1735 	add	a,#_player2
      0007D8 04               [12] 1736 	inc	a
      0007D9 F9               [12] 1737 	mov	r1,a
      0007DA E7               [12] 1738 	mov	a,@r1
      0007DB FF               [12] 1739 	mov	r7,a
      0007DC 04               [12] 1740 	inc	a
      0007DD FE               [12] 1741 	mov	r6,a
      0007DE                       1742 00163$:
      0007DE 8E 36            [24] 1743 	mov	_nxt_row,r6
      0007E0                       1744 00116$:
                                   1745 ;	./src/main.c:277: if (now_key == 7){// left r
      0007E0 74 07            [12] 1746 	mov	a,#0x07
      0007E2 B5 29 18         [24] 1747 	cjne	a,_now_key,00118$
                                   1748 ;	./src/main.c:278: nxt_col = (player2[idx][0] <= 1)? player2[idx][0]:player2[idx][0]-1;
      0007E5 E5 34            [12] 1749 	mov	a,_idx
      0007E7 25 34            [12] 1750 	add	a,_idx
      0007E9 24 41            [12] 1751 	add	a,#_player2
      0007EB F9               [12] 1752 	mov	r1,a
      0007EC E7               [12] 1753 	mov	a,@r1
      0007ED FF               [12] 1754 	mov	r7,a
      0007EE 24 FE            [12] 1755 	add	a,#0xff - 0x01
      0007F0 92 01            [24] 1756 	mov	_mode2_sloc0_1_0,c
      0007F2 40 04            [24] 1757 	jc	00164$
      0007F4 8F 06            [24] 1758 	mov	ar6,r7
      0007F6 80 03            [24] 1759 	sjmp	00165$
      0007F8                       1760 00164$:
      0007F8 EF               [12] 1761 	mov	a,r7
      0007F9 14               [12] 1762 	dec	a
      0007FA FE               [12] 1763 	mov	r6,a
      0007FB                       1764 00165$:
      0007FB 8E 37            [24] 1765 	mov	_nxt_col,r6
      0007FD                       1766 00118$:
                                   1767 ;	./src/main.c:280: if (now_key == 8){// right r
      0007FD 74 08            [12] 1768 	mov	a,#0x08
      0007FF B5 29 37         [24] 1769 	cjne	a,_now_key,00120$
                                   1770 ;	./src/main.c:281: nxt_col = (player2[idx][0]+boat_type[idx][0]-1 >= 8)? player2[idx][0]:player2[idx][0]+1;
      000802 E5 34            [12] 1771 	mov	a,_idx
      000804 25 34            [12] 1772 	add	a,_idx
      000806 FF               [12] 1773 	mov	r7,a
      000807 24 41            [12] 1774 	add	a,#_player2
      000809 F9               [12] 1775 	mov	r1,a
      00080A 87 06            [24] 1776 	mov	ar6,@r1
      00080C 8E 04            [24] 1777 	mov	ar4,r6
      00080E 7D 00            [12] 1778 	mov	r5,#0x00
      000810 EF               [12] 1779 	mov	a,r7
      000811 24 2A            [12] 1780 	add	a,#_boat_type
      000813 F9               [12] 1781 	mov	r1,a
      000814 87 07            [24] 1782 	mov	ar7,@r1
      000816 7B 00            [12] 1783 	mov	r3,#0x00
      000818 EF               [12] 1784 	mov	a,r7
      000819 2C               [12] 1785 	add	a,r4
      00081A FC               [12] 1786 	mov	r4,a
      00081B EB               [12] 1787 	mov	a,r3
      00081C 3D               [12] 1788 	addc	a,r5
      00081D FD               [12] 1789 	mov	r5,a
      00081E 1C               [12] 1790 	dec	r4
      00081F BC FF 01         [24] 1791 	cjne	r4,#0xff,00330$
      000822 1D               [12] 1792 	dec	r5
      000823                       1793 00330$:
      000823 C3               [12] 1794 	clr	c
      000824 EC               [12] 1795 	mov	a,r4
      000825 94 08            [12] 1796 	subb	a,#0x08
      000827 ED               [12] 1797 	mov	a,r5
      000828 64 80            [12] 1798 	xrl	a,#0x80
      00082A 94 80            [12] 1799 	subb	a,#0x80
      00082C 92 01            [24] 1800 	mov	_mode2_sloc0_1_0,c
      00082E 40 04            [24] 1801 	jc	00166$
      000830 8E 07            [24] 1802 	mov	ar7,r6
      000832 80 03            [24] 1803 	sjmp	00167$
      000834                       1804 00166$:
      000834 EE               [12] 1805 	mov	a,r6
      000835 04               [12] 1806 	inc	a
      000836 FF               [12] 1807 	mov	r7,a
      000837                       1808 00167$:
      000837 8F 37            [24] 1809 	mov	_nxt_col,r7
      000839                       1810 00120$:
                                   1811 ;	./src/main.c:284: for (l=0;l<idx;l++){
      000839 75 30 00         [24] 1812 	mov	_l,#0x00
      00083C                       1813 00152$:
      00083C C3               [12] 1814 	clr	c
      00083D E5 30            [12] 1815 	mov	a,_l
      00083F 95 34            [12] 1816 	subb	a,_idx
      000841 50 3C            [24] 1817 	jnc	00123$
                                   1818 ;	./src/main.c:285: conti_flag = 0;
      000843 75 3A 00         [24] 1819 	mov	_conti_flag,#0x00
                                   1820 ;	./src/main.c:286: if (overlap(nxt_col, nxt_row, boat_type[idx][0], boat_type[idx][1],
      000846 E5 34            [12] 1821 	mov	a,_idx
      000848 25 34            [12] 1822 	add	a,_idx
      00084A 24 2A            [12] 1823 	add	a,#_boat_type
      00084C F9               [12] 1824 	mov	r1,a
      00084D 87 10            [24] 1825 	mov	_overlap_PARM_3,@r1
      00084F 09               [12] 1826 	inc	r1
      000850 87 11            [24] 1827 	mov	_overlap_PARM_4,@r1
                                   1828 ;	./src/main.c:287: player2[l][0], player2[l][1], boat_type[l][0], boat_type[l][1]) == 1){
      000852 E5 30            [12] 1829 	mov	a,_l
      000854 25 30            [12] 1830 	add	a,_l
      000856 FF               [12] 1831 	mov	r7,a
      000857 24 41            [12] 1832 	add	a,#_player2
      000859 F9               [12] 1833 	mov	r1,a
      00085A 87 12            [24] 1834 	mov	_overlap_PARM_5,@r1
      00085C 09               [12] 1835 	inc	r1
      00085D 87 13            [24] 1836 	mov	_overlap_PARM_6,@r1
      00085F EF               [12] 1837 	mov	a,r7
      000860 24 2A            [12] 1838 	add	a,#_boat_type
      000862 F9               [12] 1839 	mov	r1,a
      000863 87 14            [24] 1840 	mov	_overlap_PARM_7,@r1
      000865 09               [12] 1841 	inc	r1
      000866 87 15            [24] 1842 	mov	_overlap_PARM_8,@r1
      000868 85 36 0F         [24] 1843 	mov	_overlap_PARM_2,_nxt_row
      00086B 85 37 82         [24] 1844 	mov	dpl,_nxt_col
      00086E 12 0C 94         [24] 1845 	lcall	_overlap
      000871 AF 82            [24] 1846 	mov	r7,dpl
      000873 BF 01 05         [24] 1847 	cjne	r7,#0x01,00153$
                                   1848 ;	./src/main.c:288: conti_flag = 1;
      000876 75 3A 01         [24] 1849 	mov	_conti_flag,#0x01
                                   1850 ;	./src/main.c:289: break;;
      000879 80 04            [24] 1851 	sjmp	00123$
      00087B                       1852 00153$:
                                   1853 ;	./src/main.c:284: for (l=0;l<idx;l++){
      00087B 05 30            [12] 1854 	inc	_l
      00087D 80 BD            [24] 1855 	sjmp	00152$
      00087F                       1856 00123$:
                                   1857 ;	./src/main.c:292: if (conti_flag == 1){
      00087F 74 01            [12] 1858 	mov	a,#0x01
      000881 B5 3A 06         [24] 1859 	cjne	a,_conti_flag,00125$
                                   1860 ;	./src/main.c:293: conti_flag = 0;
      000884 75 3A 00         [24] 1861 	mov	_conti_flag,#0x00
                                   1862 ;	./src/main.c:294: continue;
      000887 02 06 F0         [24] 1863 	ljmp	00139$
      00088A                       1864 00125$:
                                   1865 ;	./src/main.c:301: del(player2[idx][0], player2[idx][1], player2[idx][0]+boat_type[idx][0]-1, player2[idx][1]+boat_type[idx][1]-1, 1);
      00088A E5 34            [12] 1866 	mov	a,_idx
      00088C 25 34            [12] 1867 	add	a,_idx
      00088E FF               [12] 1868 	mov	r7,a
      00088F 24 41            [12] 1869 	add	a,#_player2
      000891 F9               [12] 1870 	mov	r1,a
      000892 87 06            [24] 1871 	mov	ar6,@r1
      000894 09               [12] 1872 	inc	r1
      000895 87 05            [24] 1873 	mov	ar5,@r1
      000897 EF               [12] 1874 	mov	a,r7
      000898 24 2A            [12] 1875 	add	a,#_boat_type
      00089A F9               [12] 1876 	mov	r1,a
      00089B E7               [12] 1877 	mov	a,@r1
      00089C 2E               [12] 1878 	add	a,r6
      00089D 14               [12] 1879 	dec	a
      00089E F5 10            [12] 1880 	mov	_del_PARM_3,a
      0008A0 09               [12] 1881 	inc	r1
      0008A1 E7               [12] 1882 	mov	a,@r1
      0008A2 2D               [12] 1883 	add	a,r5
      0008A3 14               [12] 1884 	dec	a
      0008A4 F5 11            [12] 1885 	mov	_del_PARM_4,a
      0008A6 8D 0F            [24] 1886 	mov	_del_PARM_2,r5
      0008A8 75 12 01         [24] 1887 	mov	_del_PARM_5,#0x01
      0008AB 8E 82            [24] 1888 	mov	dpl,r6
      0008AD 12 0D 3E         [24] 1889 	lcall	_del
                                   1890 ;	./src/main.c:302: player2[idx][1] = nxt_row;
      0008B0 E5 34            [12] 1891 	mov	a,_idx
      0008B2 25 34            [12] 1892 	add	a,_idx
      0008B4 24 41            [12] 1893 	add	a,#_player2
      0008B6 04               [12] 1894 	inc	a
      0008B7 F8               [12] 1895 	mov	r0,a
      0008B8 A6 36            [24] 1896 	mov	@r0,_nxt_row
                                   1897 ;	./src/main.c:303: player2[idx][0] = nxt_col;
      0008BA E5 34            [12] 1898 	mov	a,_idx
      0008BC 25 34            [12] 1899 	add	a,_idx
      0008BE 24 41            [12] 1900 	add	a,#_player2
      0008C0 F8               [12] 1901 	mov	r0,a
      0008C1 A6 37            [24] 1902 	mov	@r0,_nxt_col
                                   1903 ;	./src/main.c:304: draw(player2[idx][0], player2[idx][1], player2[idx][0]+boat_type[idx][0]-1, player2[idx][1]+boat_type[idx][1]-1, 1);
      0008C3 E5 34            [12] 1904 	mov	a,_idx
      0008C5 25 34            [12] 1905 	add	a,_idx
      0008C7 FF               [12] 1906 	mov	r7,a
      0008C8 24 41            [12] 1907 	add	a,#_player2
      0008CA F9               [12] 1908 	mov	r1,a
      0008CB 87 06            [24] 1909 	mov	ar6,@r1
      0008CD 09               [12] 1910 	inc	r1
      0008CE 87 05            [24] 1911 	mov	ar5,@r1
      0008D0 EF               [12] 1912 	mov	a,r7
      0008D1 24 2A            [12] 1913 	add	a,#_boat_type
      0008D3 F9               [12] 1914 	mov	r1,a
      0008D4 E7               [12] 1915 	mov	a,@r1
      0008D5 2E               [12] 1916 	add	a,r6
      0008D6 14               [12] 1917 	dec	a
      0008D7 F5 10            [12] 1918 	mov	_draw_PARM_3,a
      0008D9 09               [12] 1919 	inc	r1
      0008DA E7               [12] 1920 	mov	a,@r1
      0008DB 2D               [12] 1921 	add	a,r5
      0008DC 14               [12] 1922 	dec	a
      0008DD F5 11            [12] 1923 	mov	_draw_PARM_4,a
      0008DF 8D 0F            [24] 1924 	mov	_draw_PARM_2,r5
      0008E1 75 12 01         [24] 1925 	mov	_draw_PARM_5,#0x01
      0008E4 8E 82            [24] 1926 	mov	dpl,r6
      0008E6 12 0D BC         [24] 1927 	lcall	_draw
                                   1928 ;	./src/main.c:305: now_key = 0;
      0008E9 75 29 00         [24] 1929 	mov	_now_key,#0x00
                                   1930 ;	./src/main.c:306: delay_ms(100);
      0008EC 90 00 64         [24] 1931 	mov	dptr,#0x0064
      0008EF 12 12 F2         [24] 1932 	lcall	_delay_ms
      0008F2                       1933 00129$:
                                   1934 ;	./src/main.c:310: for (i=1;i<=8;i++){
      0008F2 75 2E 01         [24] 1935 	mov	_i,#0x01
      0008F5                       1936 00154$:
                                   1937 ;	./src/main.c:311: Writesingle7219(4, i, mat2_2[i]);
      0008F5 E5 2E            [12] 1938 	mov	a,_i
      0008F7 24 69            [12] 1939 	add	a,#_mat2_2
      0008F9 F9               [12] 1940 	mov	r1,a
      0008FA 87 0E            [24] 1941 	mov	_Writesingle7219_PARM_3,@r1
      0008FC 85 2E 0D         [24] 1942 	mov	_Writesingle7219_PARM_2,_i
      0008FF 75 82 04         [24] 1943 	mov	dpl,#0x04
      000902 12 15 DB         [24] 1944 	lcall	_Writesingle7219
                                   1945 ;	./src/main.c:310: for (i=1;i<=8;i++){
      000905 05 2E            [12] 1946 	inc	_i
      000907 E5 2E            [12] 1947 	mov	a,_i
      000909 24 F7            [12] 1948 	add	a,#0xff - 0x08
      00090B 50 E8            [24] 1949 	jnc	00154$
                                   1950 ;	./src/main.c:313: if (but4 == 0){
      00090D 30 A1 03         [24] 1951 	jnb	_P2_1,00338$
      000910 02 06 F0         [24] 1952 	ljmp	00139$
      000913                       1953 00338$:
                                   1954 ;	./src/main.c:314: delay_ms(10);
      000913 90 00 0A         [24] 1955 	mov	dptr,#0x000a
      000916 12 12 F2         [24] 1956 	lcall	_delay_ms
                                   1957 ;	./src/main.c:315: if (but4 == 0){
      000919 30 A1 03         [24] 1958 	jnb	_P2_1,00339$
      00091C 02 06 F0         [24] 1959 	ljmp	00139$
      00091F                       1960 00339$:
                                   1961 ;	./src/main.c:316: idx+=1;
      00091F E5 34            [12] 1962 	mov	a,_idx
      000921 FF               [12] 1963 	mov	r7,a
      000922 04               [12] 1964 	inc	a
      000923 F5 34            [12] 1965 	mov	_idx,a
                                   1966 ;	./src/main.c:317: check_ = 0;
                                   1967 ;	./src/main.c:318: for(in_i = 0;in_i < 588;in_i++){
      000925 E4               [12] 1968 	clr	a
      000926 F5 35            [12] 1969 	mov	_check_,a
      000928 F5 21            [12] 1970 	mov	_in_i,a
      00092A F5 22            [12] 1971 	mov	(_in_i + 1),a
      00092C                       1972 00156$:
                                   1973 ;	./src/main.c:319: P3_7 = 1;
                                   1974 ;	assignBit
      00092C D2 B7            [12] 1975 	setb	_P3_7
                                   1976 ;	./src/main.c:320: Delay_Re();
      00092E 12 13 27         [24] 1977 	lcall	_Delay_Re
                                   1978 ;	./src/main.c:321: P3_7 = 0;
                                   1979 ;	assignBit
      000931 C2 B7            [12] 1980 	clr	_P3_7
                                   1981 ;	./src/main.c:322: Delay_Re();
      000933 12 13 27         [24] 1982 	lcall	_Delay_Re
                                   1983 ;	./src/main.c:318: for(in_i = 0;in_i < 588;in_i++){
      000936 05 21            [12] 1984 	inc	_in_i
      000938 E4               [12] 1985 	clr	a
      000939 B5 21 02         [24] 1986 	cjne	a,_in_i,00340$
      00093C 05 22            [12] 1987 	inc	(_in_i + 1)
      00093E                       1988 00340$:
      00093E C3               [12] 1989 	clr	c
      00093F E5 21            [12] 1990 	mov	a,_in_i
      000941 94 4C            [12] 1991 	subb	a,#0x4c
      000943 E5 22            [12] 1992 	mov	a,(_in_i + 1)
      000945 64 80            [12] 1993 	xrl	a,#0x80
      000947 94 82            [12] 1994 	subb	a,#0x82
      000949 40 E1            [24] 1995 	jc	00156$
                                   1996 ;	./src/main.c:324: while (but4 == 0);
      00094B                       1997 00132$:
      00094B 30 A1 FD         [24] 1998 	jnb	_P2_1,00132$
      00094E 02 06 F0         [24] 1999 	ljmp	00139$
      000951                       2000 00144$:
                                   2001 ;	./src/main.c:330: mode = 3;
      000951 75 23 03         [24] 2002 	mov	_mode,#0x03
                                   2003 ;	./src/main.c:331: }
      000954 22               [24] 2004 	ret
                                   2005 ;------------------------------------------------------------
                                   2006 ;Allocation info for local variables in function 'mode3'
                                   2007 ;------------------------------------------------------------
                                   2008 ;	./src/main.c:333: void mode3(void){
                                   2009 ;	-----------------------------------------
                                   2010 ;	 function mode3
                                   2011 ;	-----------------------------------------
      000955                       2012 _mode3:
                                   2013 ;	./src/main.c:334: turn = 1;
      000955 75 3C 01         [24] 2014 	mov	_turn,#0x01
                                   2015 ;	./src/main.c:335: OLED_Clear();
      000958 12 15 12         [24] 2016 	lcall	_OLED_Clear
                                   2017 ;	./src/main.c:336: OLED_SetCursor(2, 3);
      00095B 75 0B 03         [24] 2018 	mov	_OLED_SetCursor_PARM_2,#0x03
      00095E 75 82 02         [24] 2019 	mov	dpl,#0x02
      000961 12 15 3D         [24] 2020 	lcall	_OLED_SetCursor
                                   2021 ;	./src/main.c:337: OLED_DisplayString("Player ");
      000964 90 18 1D         [24] 2022 	mov	dptr,#___str_11
      000967 75 F0 80         [24] 2023 	mov	b,#0x80
      00096A 12 14 E7         [24] 2024 	lcall	_OLED_DisplayString
                                   2025 ;	./src/main.c:338: OLED_DisplayChar('0'+turn);
      00096D AF 3C            [24] 2026 	mov	r7,_turn
      00096F 74 30            [12] 2027 	mov	a,#0x30
      000971 2F               [12] 2028 	add	a,r7
      000972 F5 82            [12] 2029 	mov	dpl,a
      000974 12 14 96         [24] 2030 	lcall	_OLED_DisplayChar
                                   2031 ;	./src/main.c:339: OLED_DisplayString(" turn ");
      000977 90 18 25         [24] 2032 	mov	dptr,#___str_12
      00097A 75 F0 80         [24] 2033 	mov	b,#0x80
      00097D 12 14 E7         [24] 2034 	lcall	_OLED_DisplayString
                                   2035 ;	./src/main.c:340: OLED_SetCursor(3, 4);
      000980 75 0B 04         [24] 2036 	mov	_OLED_SetCursor_PARM_2,#0x04
      000983 75 82 03         [24] 2037 	mov	dpl,#0x03
      000986 12 15 3D         [24] 2038 	lcall	_OLED_SetCursor
                                   2039 ;	./src/main.c:341: OLED_DisplayString("now row: ");
      000989 90 18 2C         [24] 2040 	mov	dptr,#___str_13
      00098C 75 F0 80         [24] 2041 	mov	b,#0x80
      00098F 12 14 E7         [24] 2042 	lcall	_OLED_DisplayString
                                   2043 ;	./src/main.c:342: OLED_SetCursor(4, 4);
      000992 75 0B 04         [24] 2044 	mov	_OLED_SetCursor_PARM_2,#0x04
      000995 75 82 04         [24] 2045 	mov	dpl,#0x04
      000998 12 15 3D         [24] 2046 	lcall	_OLED_SetCursor
                                   2047 ;	./src/main.c:343: OLED_DisplayString("now col: ");
      00099B 90 18 36         [24] 2048 	mov	dptr,#___str_14
      00099E 75 F0 80         [24] 2049 	mov	b,#0x80
      0009A1 12 14 E7         [24] 2050 	lcall	_OLED_DisplayString
                                   2051 ;	./src/main.c:344: OLED_SetCursor(5, 4);
      0009A4 75 0B 04         [24] 2052 	mov	_OLED_SetCursor_PARM_2,#0x04
      0009A7 75 82 05         [24] 2053 	mov	dpl,#0x05
      0009AA 12 15 3D         [24] 2054 	lcall	_OLED_SetCursor
                                   2055 ;	./src/main.c:345: OLED_DisplayString("now score: "); // OLED要顯示的資訊
      0009AD 90 18 40         [24] 2056 	mov	dptr,#___str_15
      0009B0 75 F0 80         [24] 2057 	mov	b,#0x80
      0009B3 12 14 E7         [24] 2058 	lcall	_OLED_DisplayString
                                   2059 ;	./src/main.c:348: while (winner == 0){ // 若還沒產生贏家
      0009B6                       2060 00142$:
      0009B6 E5 24            [12] 2061 	mov	a,_winner
      0009B8 60 03            [24] 2062 	jz	00295$
      0009BA 02 0C 8C         [24] 2063 	ljmp	00144$
      0009BD                       2064 00295$:
                                   2065 ;	./src/main.c:351: now_col = player[turn][0];
      0009BD E5 3C            [12] 2066 	mov	a,_turn
      0009BF 25 3C            [12] 2067 	add	a,_turn
      0009C1 24 45            [12] 2068 	add	a,#_player
      0009C3 F9               [12] 2069 	mov	r1,a
      0009C4 87 39            [24] 2070 	mov	_now_col,@r1
                                   2071 ;	./src/main.c:352: now_row = player[turn][1];
      0009C6 09               [12] 2072 	inc	r1
      0009C7 87 38            [24] 2073 	mov	_now_row,@r1
                                   2074 ;	./src/main.c:353: OLED_SetCursor(3, 55);
      0009C9 75 0B 37         [24] 2075 	mov	_OLED_SetCursor_PARM_2,#0x37
      0009CC 75 82 03         [24] 2076 	mov	dpl,#0x03
      0009CF 12 15 3D         [24] 2077 	lcall	_OLED_SetCursor
                                   2078 ;	./src/main.c:354: OLED_DisplayChar('0'+now_row);
      0009D2 AF 38            [24] 2079 	mov	r7,_now_row
      0009D4 74 30            [12] 2080 	mov	a,#0x30
      0009D6 2F               [12] 2081 	add	a,r7
      0009D7 F5 82            [12] 2082 	mov	dpl,a
      0009D9 12 14 96         [24] 2083 	lcall	_OLED_DisplayChar
                                   2084 ;	./src/main.c:355: OLED_SetCursor(4, 55);
      0009DC 75 0B 37         [24] 2085 	mov	_OLED_SetCursor_PARM_2,#0x37
      0009DF 75 82 04         [24] 2086 	mov	dpl,#0x04
      0009E2 12 15 3D         [24] 2087 	lcall	_OLED_SetCursor
                                   2088 ;	./src/main.c:356: OLED_DisplayChar('0'+now_col);
      0009E5 AF 39            [24] 2089 	mov	r7,_now_col
      0009E7 74 30            [12] 2090 	mov	a,#0x30
      0009E9 2F               [12] 2091 	add	a,r7
      0009EA F5 82            [12] 2092 	mov	dpl,a
      0009EC 12 14 96         [24] 2093 	lcall	_OLED_DisplayChar
                                   2094 ;	./src/main.c:357: OLED_SetCursor(5, 70);
      0009EF 75 0B 46         [24] 2095 	mov	_OLED_SetCursor_PARM_2,#0x46
      0009F2 75 82 05         [24] 2096 	mov	dpl,#0x05
      0009F5 12 15 3D         [24] 2097 	lcall	_OLED_SetCursor
                                   2098 ;	./src/main.c:358: OLED_DisplayChar(player_score[turn]/10+'0');
      0009F8 E5 3C            [12] 2099 	mov	a,_turn
      0009FA 24 4B            [12] 2100 	add	a,#_player_score
      0009FC F9               [12] 2101 	mov	r1,a
      0009FD 87 07            [24] 2102 	mov	ar7,@r1
      0009FF 7E 00            [12] 2103 	mov	r6,#0x00
      000A01 75 0F 0A         [24] 2104 	mov	__divsint_PARM_2,#0x0a
                                   2105 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000A04 8E 10            [24] 2106 	mov	(__divsint_PARM_2 + 1),r6
      000A06 8F 82            [24] 2107 	mov	dpl,r7
      000A08 8E 83            [24] 2108 	mov	dph,r6
      000A0A 12 17 45         [24] 2109 	lcall	__divsint
      000A0D AE 82            [24] 2110 	mov	r6,dpl
      000A0F 74 30            [12] 2111 	mov	a,#0x30
      000A11 2E               [12] 2112 	add	a,r6
      000A12 F5 82            [12] 2113 	mov	dpl,a
      000A14 12 14 96         [24] 2114 	lcall	_OLED_DisplayChar
                                   2115 ;	./src/main.c:359: OLED_DisplayChar(player_score[turn]%10 + '0'); // 顯示當前資訊
      000A17 E5 3C            [12] 2116 	mov	a,_turn
      000A19 24 4B            [12] 2117 	add	a,#_player_score
      000A1B F9               [12] 2118 	mov	r1,a
      000A1C 87 07            [24] 2119 	mov	ar7,@r1
      000A1E 7E 00            [12] 2120 	mov	r6,#0x00
      000A20 75 0F 0A         [24] 2121 	mov	__modsint_PARM_2,#0x0a
                                   2122 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000A23 8E 10            [24] 2123 	mov	(__modsint_PARM_2 + 1),r6
      000A25 8F 82            [24] 2124 	mov	dpl,r7
      000A27 8E 83            [24] 2125 	mov	dph,r6
      000A29 12 17 0F         [24] 2126 	lcall	__modsint
      000A2C AE 82            [24] 2127 	mov	r6,dpl
      000A2E 74 30            [12] 2128 	mov	a,#0x30
      000A30 2E               [12] 2129 	add	a,r6
      000A31 F5 82            [12] 2130 	mov	dpl,a
      000A33 12 14 96         [24] 2131 	lcall	_OLED_DisplayChar
                                   2132 ;	./src/main.c:360: now_key = Get_Key();
      000A36 12 12 A6         [24] 2133 	lcall	_Get_Key
      000A39 AE 82            [24] 2134 	mov	r6,dpl
      000A3B AF 83            [24] 2135 	mov	r7,dph
                                   2136 ;	./src/main.c:361: if (now_key != 0){
      000A3D EE               [12] 2137 	mov	a,r6
      000A3E F5 29            [12] 2138 	mov	_now_key,a
      000A40 70 03            [24] 2139 	jnz	00296$
      000A42 02 0A F1         [24] 2140 	ljmp	00115$
      000A45                       2141 00296$:
                                   2142 ;	./src/main.c:362: delay_ms(10);
      000A45 90 00 0A         [24] 2143 	mov	dptr,#0x000a
      000A48 12 12 F2         [24] 2144 	lcall	_delay_ms
                                   2145 ;	./src/main.c:363: if (now_key == Get_Key()){ //  移動鼠標
      000A4B 12 12 A6         [24] 2146 	lcall	_Get_Key
      000A4E AE 82            [24] 2147 	mov	r6,dpl
      000A50 AF 83            [24] 2148 	mov	r7,dph
      000A52 AC 29            [24] 2149 	mov	r4,_now_key
      000A54 7D 00            [12] 2150 	mov	r5,#0x00
      000A56 EC               [12] 2151 	mov	a,r4
      000A57 B5 06 06         [24] 2152 	cjne	a,ar6,00297$
      000A5A ED               [12] 2153 	mov	a,r5
      000A5B B5 07 02         [24] 2154 	cjne	a,ar7,00297$
      000A5E 80 03            [24] 2155 	sjmp	00298$
      000A60                       2156 00297$:
      000A60 02 0A F1         [24] 2157 	ljmp	00115$
      000A63                       2158 00298$:
                                   2159 ;	./src/main.c:364: nxt_col = now_col;nxt_row = now_row;
      000A63 85 39 37         [24] 2160 	mov	_nxt_col,_now_col
      000A66 85 38 36         [24] 2161 	mov	_nxt_row,_now_row
                                   2162 ;	./src/main.c:365: if (now_key == 1){
      000A69 74 01            [12] 2163 	mov	a,#0x01
      000A6B B5 29 15         [24] 2164 	cjne	a,_now_key,00110$
                                   2165 ;	./src/main.c:366: nxt_row = (now_row <= 0)? 0:now_row-1;
      000A6E E5 38            [12] 2166 	mov	a,_now_row
      000A70 70 04            [24] 2167 	jnz	00159$
      000A72 FE               [12] 2168 	mov	r6,a
      000A73 FF               [12] 2169 	mov	r7,a
      000A74 80 09            [24] 2170 	sjmp	00160$
      000A76                       2171 00159$:
      000A76 AD 38            [24] 2172 	mov	r5,_now_row
      000A78 1D               [12] 2173 	dec	r5
      000A79 ED               [12] 2174 	mov	a,r5
      000A7A FE               [12] 2175 	mov	r6,a
      000A7B 33               [12] 2176 	rlc	a
      000A7C 95 E0            [12] 2177 	subb	a,acc
      000A7E FF               [12] 2178 	mov	r7,a
      000A7F                       2179 00160$:
      000A7F 8E 36            [24] 2180 	mov	_nxt_row,r6
      000A81 80 54            [24] 2181 	sjmp	00111$
      000A83                       2182 00110$:
                                   2183 ;	./src/main.c:367: }else if (now_key == 2){
      000A83 74 02            [12] 2184 	mov	a,#0x02
      000A85 B5 29 16         [24] 2185 	cjne	a,_now_key,00107$
                                   2186 ;	./src/main.c:368: nxt_row = (now_row >= 7)? now_row:now_row+1;
      000A88 C3               [12] 2187 	clr	c
      000A89 E5 38            [12] 2188 	mov	a,_now_row
      000A8B 94 07            [12] 2189 	subb	a,#0x07
      000A8D 92 02            [24] 2190 	mov	_mode3_sloc0_1_0,c
      000A8F 40 04            [24] 2191 	jc	00161$
      000A91 AF 38            [24] 2192 	mov	r7,_now_row
      000A93 80 05            [24] 2193 	sjmp	00162$
      000A95                       2194 00161$:
      000A95 E5 38            [12] 2195 	mov	a,_now_row
      000A97 FE               [12] 2196 	mov	r6,a
      000A98 04               [12] 2197 	inc	a
      000A99 FF               [12] 2198 	mov	r7,a
      000A9A                       2199 00162$:
      000A9A 8F 36            [24] 2200 	mov	_nxt_row,r7
      000A9C 80 39            [24] 2201 	sjmp	00111$
      000A9E                       2202 00107$:
                                   2203 ;	./src/main.c:369: }else if (now_key == 5){
      000A9E 74 05            [12] 2204 	mov	a,#0x05
      000AA0 B5 29 1B         [24] 2205 	cjne	a,_now_key,00104$
                                   2206 ;	./src/main.c:370: nxt_col = (now_col <= 1)? 1:now_col-1;
      000AA3 E5 39            [12] 2207 	mov	a,_now_col
      000AA5 24 FE            [12] 2208 	add	a,#0xff - 0x01
      000AA7 92 02            [24] 2209 	mov	_mode3_sloc0_1_0,c
      000AA9 40 06            [24] 2210 	jc	00163$
      000AAB 7E 01            [12] 2211 	mov	r6,#0x01
      000AAD 7F 00            [12] 2212 	mov	r7,#0x00
      000AAF 80 09            [24] 2213 	sjmp	00164$
      000AB1                       2214 00163$:
      000AB1 AD 39            [24] 2215 	mov	r5,_now_col
      000AB3 1D               [12] 2216 	dec	r5
      000AB4 ED               [12] 2217 	mov	a,r5
      000AB5 FE               [12] 2218 	mov	r6,a
      000AB6 33               [12] 2219 	rlc	a
      000AB7 95 E0            [12] 2220 	subb	a,acc
      000AB9 FF               [12] 2221 	mov	r7,a
      000ABA                       2222 00164$:
      000ABA 8E 37            [24] 2223 	mov	_nxt_col,r6
      000ABC 80 19            [24] 2224 	sjmp	00111$
      000ABE                       2225 00104$:
                                   2226 ;	./src/main.c:371: }else if (now_key == 6){
      000ABE 74 06            [12] 2227 	mov	a,#0x06
      000AC0 B5 29 14         [24] 2228 	cjne	a,_now_key,00111$
                                   2229 ;	./src/main.c:372: nxt_col = (now_col >= 8)? now_col:now_col+1;
      000AC3 C3               [12] 2230 	clr	c
      000AC4 E5 39            [12] 2231 	mov	a,_now_col
      000AC6 94 08            [12] 2232 	subb	a,#0x08
      000AC8 92 02            [24] 2233 	mov	_mode3_sloc0_1_0,c
      000ACA 40 04            [24] 2234 	jc	00165$
      000ACC AF 39            [24] 2235 	mov	r7,_now_col
      000ACE 80 05            [24] 2236 	sjmp	00166$
      000AD0                       2237 00165$:
      000AD0 E5 39            [12] 2238 	mov	a,_now_col
      000AD2 FE               [12] 2239 	mov	r6,a
      000AD3 04               [12] 2240 	inc	a
      000AD4 FF               [12] 2241 	mov	r7,a
      000AD5                       2242 00166$:
      000AD5 8F 37            [24] 2243 	mov	_nxt_col,r7
      000AD7                       2244 00111$:
                                   2245 ;	./src/main.c:374: now_col = nxt_col;
      000AD7 85 37 39         [24] 2246 	mov	_now_col,_nxt_col
                                   2247 ;	./src/main.c:375: now_row = nxt_row;
      000ADA 85 36 38         [24] 2248 	mov	_now_row,_nxt_row
                                   2249 ;	./src/main.c:376: player[turn][0] = now_col;
      000ADD E5 3C            [12] 2250 	mov	a,_turn
      000ADF 25 3C            [12] 2251 	add	a,_turn
      000AE1 24 45            [12] 2252 	add	a,#_player
      000AE3 F8               [12] 2253 	mov	r0,a
      000AE4 A6 39            [24] 2254 	mov	@r0,_now_col
                                   2255 ;	./src/main.c:377: player[turn][1] = now_row;
      000AE6 E5 3C            [12] 2256 	mov	a,_turn
      000AE8 25 3C            [12] 2257 	add	a,_turn
      000AEA 24 45            [12] 2258 	add	a,#_player
      000AEC FF               [12] 2259 	mov	r7,a
      000AED 04               [12] 2260 	inc	a
      000AEE F8               [12] 2261 	mov	r0,a
      000AEF A6 38            [24] 2262 	mov	@r0,_now_row
      000AF1                       2263 00115$:
                                   2264 ;	./src/main.c:381: if (but1 == 0){ // 按下but1，跳過自己回合
      000AF1 20 B2 23         [24] 2265 	jb	_INT0,00119$
                                   2266 ;	./src/main.c:382: delay_ms(10);
      000AF4 90 00 0A         [24] 2267 	mov	dptr,#0x000a
      000AF7 12 12 F2         [24] 2268 	lcall	_delay_ms
                                   2269 ;	./src/main.c:383: if (but1 == 0){
      000AFA 20 B2 1A         [24] 2270 	jb	_INT0,00119$
                                   2271 ;	./src/main.c:384: player[turn][0] = now_col;
      000AFD E5 3C            [12] 2272 	mov	a,_turn
      000AFF 25 3C            [12] 2273 	add	a,_turn
      000B01 24 45            [12] 2274 	add	a,#_player
      000B03 F8               [12] 2275 	mov	r0,a
      000B04 A6 39            [24] 2276 	mov	@r0,_now_col
                                   2277 ;	./src/main.c:385: player[turn][1] = now_row;
      000B06 E5 3C            [12] 2278 	mov	a,_turn
      000B08 25 3C            [12] 2279 	add	a,_turn
      000B0A 24 45            [12] 2280 	add	a,#_player
      000B0C FF               [12] 2281 	mov	r7,a
      000B0D 04               [12] 2282 	inc	a
      000B0E F8               [12] 2283 	mov	r0,a
      000B0F A6 38            [24] 2284 	mov	@r0,_now_row
                                   2285 ;	./src/main.c:386: mode = 4;
      000B11 75 23 04         [24] 2286 	mov	_mode,#0x04
                                   2287 ;	./src/main.c:387: break;
      000B14 02 0C 8C         [24] 2288 	ljmp	00144$
      000B17                       2289 00119$:
                                   2290 ;	./src/main.c:390: if (but2 == 0){ // 按but2，猜格子
      000B17 30 B3 03         [24] 2291 	jnb	_INT1,00313$
      000B1A 02 0B FC         [24] 2292 	ljmp	00133$
      000B1D                       2293 00313$:
                                   2294 ;	./src/main.c:391: delay_ms(10);
      000B1D 90 00 0A         [24] 2295 	mov	dptr,#0x000a
      000B20 12 12 F2         [24] 2296 	lcall	_delay_ms
                                   2297 ;	./src/main.c:392: if (but2 == 0){
      000B23 30 B3 03         [24] 2298 	jnb	_INT1,00314$
      000B26 02 0B FC         [24] 2299 	ljmp	00133$
      000B29                       2300 00314$:
                                   2301 ;	./src/main.c:393: if (Get_Dot(now_col, now_row, 2) != 0){ // 猜重複格子
      000B29 85 38 0F         [24] 2302 	mov	_Get_Dot_PARM_2,_now_row
      000B2C 75 10 02         [24] 2303 	mov	_Get_Dot_PARM_3,#0x02
      000B2F 85 39 82         [24] 2304 	mov	dpl,_now_col
      000B32 12 0E B2         [24] 2305 	lcall	_Get_Dot
      000B35 E5 82            [12] 2306 	mov	a,dpl
      000B37 60 27            [24] 2307 	jz	00122$
                                   2308 ;	./src/main.c:394: for(in_i = 0;in_i < 523;in_i++){
      000B39 E4               [12] 2309 	clr	a
      000B3A F5 21            [12] 2310 	mov	_in_i,a
      000B3C F5 22            [12] 2311 	mov	(_in_i + 1),a
      000B3E                       2312 00147$:
                                   2313 ;	./src/main.c:395: P3_7 = 1;
                                   2314 ;	assignBit
      000B3E D2 B7            [12] 2315 	setb	_P3_7
                                   2316 ;	./src/main.c:396: Delay_Do();
      000B40 12 13 19         [24] 2317 	lcall	_Delay_Do
                                   2318 ;	./src/main.c:397: P3_7 = 0;
                                   2319 ;	assignBit
      000B43 C2 B7            [12] 2320 	clr	_P3_7
                                   2321 ;	./src/main.c:398: Delay_Do();
      000B45 12 13 19         [24] 2322 	lcall	_Delay_Do
                                   2323 ;	./src/main.c:394: for(in_i = 0;in_i < 523;in_i++){
      000B48 05 21            [12] 2324 	inc	_in_i
      000B4A E4               [12] 2325 	clr	a
      000B4B B5 21 02         [24] 2326 	cjne	a,_in_i,00316$
      000B4E 05 22            [12] 2327 	inc	(_in_i + 1)
      000B50                       2328 00316$:
      000B50 C3               [12] 2329 	clr	c
      000B51 E5 21            [12] 2330 	mov	a,_in_i
      000B53 94 0B            [12] 2331 	subb	a,#0x0b
      000B55 E5 22            [12] 2332 	mov	a,(_in_i + 1)
      000B57 64 80            [12] 2333 	xrl	a,#0x80
      000B59 94 82            [12] 2334 	subb	a,#0x82
      000B5B 40 E1            [24] 2335 	jc	00147$
                                   2336 ;	./src/main.c:400: continue;
      000B5D 02 09 B6         [24] 2337 	ljmp	00142$
      000B60                       2338 00122$:
                                   2339 ;	./src/main.c:402: draw(now_col, now_row, now_col, now_row, 2); // 記錄這一點有猜過
      000B60 85 38 0F         [24] 2340 	mov	_draw_PARM_2,_now_row
      000B63 85 39 10         [24] 2341 	mov	_draw_PARM_3,_now_col
      000B66 85 38 11         [24] 2342 	mov	_draw_PARM_4,_now_row
      000B69 75 12 02         [24] 2343 	mov	_draw_PARM_5,#0x02
      000B6C 85 39 82         [24] 2344 	mov	dpl,_now_col
      000B6F 12 0D BC         [24] 2345 	lcall	_draw
                                   2346 ;	./src/main.c:403: if ((Get_Dot(now_col, now_row, 1) == 0)){    // 猜錯
      000B72 85 38 0F         [24] 2347 	mov	_Get_Dot_PARM_2,_now_row
      000B75 75 10 01         [24] 2348 	mov	_Get_Dot_PARM_3,#0x01
      000B78 85 39 82         [24] 2349 	mov	dpl,_now_col
      000B7B 12 0E B2         [24] 2350 	lcall	_Get_Dot
      000B7E E5 82            [12] 2351 	mov	a,dpl
                                   2352 ;	./src/main.c:404: for(in_i = 0;in_i < 523;in_i++){
      000B80 70 3D            [24] 2353 	jnz	00128$
      000B82 F5 21            [12] 2354 	mov	_in_i,a
      000B84 F5 22            [12] 2355 	mov	(_in_i + 1),a
      000B86                       2356 00149$:
                                   2357 ;	./src/main.c:405: P3_7 = 1;
                                   2358 ;	assignBit
      000B86 D2 B7            [12] 2359 	setb	_P3_7
                                   2360 ;	./src/main.c:406: Delay_Do();
      000B88 12 13 19         [24] 2361 	lcall	_Delay_Do
                                   2362 ;	./src/main.c:407: P3_7 = 0;
                                   2363 ;	assignBit
      000B8B C2 B7            [12] 2364 	clr	_P3_7
                                   2365 ;	./src/main.c:408: Delay_Do();
      000B8D 12 13 19         [24] 2366 	lcall	_Delay_Do
                                   2367 ;	./src/main.c:404: for(in_i = 0;in_i < 523;in_i++){
      000B90 05 21            [12] 2368 	inc	_in_i
      000B92 E4               [12] 2369 	clr	a
      000B93 B5 21 02         [24] 2370 	cjne	a,_in_i,00319$
      000B96 05 22            [12] 2371 	inc	(_in_i + 1)
      000B98                       2372 00319$:
      000B98 C3               [12] 2373 	clr	c
      000B99 E5 21            [12] 2374 	mov	a,_in_i
      000B9B 94 0B            [12] 2375 	subb	a,#0x0b
      000B9D E5 22            [12] 2376 	mov	a,(_in_i + 1)
      000B9F 64 80            [12] 2377 	xrl	a,#0x80
      000BA1 94 82            [12] 2378 	subb	a,#0x82
      000BA3 40 E1            [24] 2379 	jc	00149$
                                   2380 ;	./src/main.c:410: player[turn][0] = now_col;
      000BA5 E5 3C            [12] 2381 	mov	a,_turn
      000BA7 25 3C            [12] 2382 	add	a,_turn
      000BA9 24 45            [12] 2383 	add	a,#_player
      000BAB F8               [12] 2384 	mov	r0,a
      000BAC A6 39            [24] 2385 	mov	@r0,_now_col
                                   2386 ;	./src/main.c:411: player[turn][1] = now_row;
      000BAE E5 3C            [12] 2387 	mov	a,_turn
      000BB0 25 3C            [12] 2388 	add	a,_turn
      000BB2 24 45            [12] 2389 	add	a,#_player
      000BB4 FF               [12] 2390 	mov	r7,a
      000BB5 04               [12] 2391 	inc	a
      000BB6 F8               [12] 2392 	mov	r0,a
      000BB7 A6 38            [24] 2393 	mov	@r0,_now_row
                                   2394 ;	./src/main.c:412: mode = 4; // 跳出mode3 迴圈，換mode4 player2 猜
      000BB9 75 23 04         [24] 2395 	mov	_mode,#0x04
                                   2396 ;	./src/main.c:413: break;
      000BBC 02 0C 8C         [24] 2397 	ljmp	00144$
      000BBF                       2398 00128$:
                                   2399 ;	./src/main.c:415: for(in_i = 0;in_i < 588;in_i++){// 猜對
      000BBF E4               [12] 2400 	clr	a
      000BC0 F5 21            [12] 2401 	mov	_in_i,a
      000BC2 F5 22            [12] 2402 	mov	(_in_i + 1),a
      000BC4                       2403 00151$:
                                   2404 ;	./src/main.c:416: P3_7 = 1;
                                   2405 ;	assignBit
      000BC4 D2 B7            [12] 2406 	setb	_P3_7
                                   2407 ;	./src/main.c:417: Delay_Re();
      000BC6 12 13 27         [24] 2408 	lcall	_Delay_Re
                                   2409 ;	./src/main.c:418: P3_7 = 0;
                                   2410 ;	assignBit
      000BC9 C2 B7            [12] 2411 	clr	_P3_7
                                   2412 ;	./src/main.c:419: Delay_Re();
      000BCB 12 13 27         [24] 2413 	lcall	_Delay_Re
                                   2414 ;	./src/main.c:415: for(in_i = 0;in_i < 588;in_i++){// 猜對
      000BCE 05 21            [12] 2415 	inc	_in_i
      000BD0 E4               [12] 2416 	clr	a
      000BD1 B5 21 02         [24] 2417 	cjne	a,_in_i,00321$
      000BD4 05 22            [12] 2418 	inc	(_in_i + 1)
      000BD6                       2419 00321$:
      000BD6 C3               [12] 2420 	clr	c
      000BD7 E5 21            [12] 2421 	mov	a,_in_i
      000BD9 94 4C            [12] 2422 	subb	a,#0x4c
      000BDB E5 22            [12] 2423 	mov	a,(_in_i + 1)
      000BDD 64 80            [12] 2424 	xrl	a,#0x80
      000BDF 94 82            [12] 2425 	subb	a,#0x82
      000BE1 40 E1            [24] 2426 	jc	00151$
                                   2427 ;	./src/main.c:421: player_score[turn]+=1;
      000BE3 E5 3C            [12] 2428 	mov	a,_turn
      000BE5 24 4B            [12] 2429 	add	a,#_player_score
      000BE7 F9               [12] 2430 	mov	r1,a
      000BE8 07               [12] 2431 	inc	@r1
      000BE9 E7               [12] 2432 	mov	a,@r1
                                   2433 ;	./src/main.c:422: if (player_score[turn] >= 17){ // 判斷自己有沒有贏
      000BEA E5 3C            [12] 2434 	mov	a,_turn
      000BEC 24 4B            [12] 2435 	add	a,#_player_score
      000BEE F9               [12] 2436 	mov	r1,a
      000BEF 87 07            [24] 2437 	mov	ar7,@r1
      000BF1 BF 11 00         [24] 2438 	cjne	r7,#0x11,00323$
      000BF4                       2439 00323$:
      000BF4 40 06            [24] 2440 	jc	00133$
                                   2441 ;	./src/main.c:423: winner = turn;
      000BF6 85 3C 24         [24] 2442 	mov	_winner,_turn
                                   2443 ;	./src/main.c:424: break;
      000BF9 02 0C 8C         [24] 2444 	ljmp	00144$
      000BFC                       2445 00133$:
                                   2446 ;	./src/main.c:430: for (i=1;i<=8;i++){
      000BFC 75 2E 01         [24] 2447 	mov	_i,#0x01
      000BFF                       2448 00153$:
                                   2449 ;	./src/main.c:431: if (i == now_col)mask = 1 << now_row; // 記得顯示當前鼠標的位置
      000BFF E5 39            [12] 2450 	mov	a,_now_col
      000C01 B5 2E 13         [24] 2451 	cjne	a,_i,00135$
      000C04 AF 38            [24] 2452 	mov	r7,_now_row
      000C06 8F F0            [24] 2453 	mov	b,r7
      000C08 05 F0            [12] 2454 	inc	b
      000C0A 74 01            [12] 2455 	mov	a,#0x01
      000C0C 80 02            [24] 2456 	sjmp	00329$
      000C0E                       2457 00327$:
      000C0E 25 E0            [12] 2458 	add	a,acc
      000C10                       2459 00329$:
      000C10 D5 F0 FB         [24] 2460 	djnz	b,00327$
      000C13 F5 28            [12] 2461 	mov	_mask,a
      000C15 80 03            [24] 2462 	sjmp	00136$
      000C17                       2463 00135$:
                                   2464 ;	./src/main.c:432: else mask = 0;
      000C17 75 28 00         [24] 2465 	mov	_mask,#0x00
      000C1A                       2466 00136$:
                                   2467 ;	./src/main.c:433: Writesingle7219(1, i, (mat1_2[i] | mask));
      000C1A E5 2E            [12] 2468 	mov	a,_i
      000C1C 24 57            [12] 2469 	add	a,#_mat1_2
      000C1E F9               [12] 2470 	mov	r1,a
      000C1F 87 07            [24] 2471 	mov	ar7,@r1
      000C21 E5 28            [12] 2472 	mov	a,_mask
      000C23 4F               [12] 2473 	orl	a,r7
      000C24 F5 0E            [12] 2474 	mov	_Writesingle7219_PARM_3,a
      000C26 85 2E 0D         [24] 2475 	mov	_Writesingle7219_PARM_2,_i
      000C29 75 82 01         [24] 2476 	mov	dpl,#0x01
      000C2C 12 15 DB         [24] 2477 	lcall	_Writesingle7219
                                   2478 ;	./src/main.c:430: for (i=1;i<=8;i++){
      000C2F 05 2E            [12] 2479 	inc	_i
      000C31 E5 2E            [12] 2480 	mov	a,_i
      000C33 24 F7            [12] 2481 	add	a,#0xff - 0x08
      000C35 50 C8            [24] 2482 	jnc	00153$
                                   2483 ;	./src/main.c:434: }delay_ms(100);
      000C37 90 00 64         [24] 2484 	mov	dptr,#0x0064
      000C3A 12 12 F2         [24] 2485 	lcall	_delay_ms
                                   2486 ;	./src/main.c:435: for (i=1;i<=8;i++){
      000C3D 75 2E 01         [24] 2487 	mov	_i,#0x01
      000C40                       2488 00155$:
                                   2489 ;	./src/main.c:436: mask = 0;
      000C40 75 28 00         [24] 2490 	mov	_mask,#0x00
                                   2491 ;	./src/main.c:437: if (now_col == i)mask |= 1<<now_row; // 鼠標的位置
      000C43 E5 2E            [12] 2492 	mov	a,_i
      000C45 B5 39 13         [24] 2493 	cjne	a,_now_col,00139$
      000C48 AF 38            [24] 2494 	mov	r7,_now_row
      000C4A 8F F0            [24] 2495 	mov	b,r7
      000C4C 05 F0            [12] 2496 	inc	b
      000C4E 74 01            [12] 2497 	mov	a,#0x01
      000C50 80 02            [24] 2498 	sjmp	00335$
      000C52                       2499 00333$:
      000C52 25 E0            [12] 2500 	add	a,acc
      000C54                       2501 00335$:
      000C54 D5 F0 FB         [24] 2502 	djnz	b,00333$
      000C57 F5 28            [12] 2503 	mov	_mask,a
      000C59 80 03            [24] 2504 	sjmp	00140$
      000C5B                       2505 00139$:
                                   2506 ;	./src/main.c:438: else mask = 0;
      000C5B 75 28 00         [24] 2507 	mov	_mask,#0x00
      000C5E                       2508 00140$:
                                   2509 ;	./src/main.c:439: mask |= (mat2_2[i] & mat1_2[i]);     // 實際猜對的位置
      000C5E E5 2E            [12] 2510 	mov	a,_i
      000C60 24 69            [12] 2511 	add	a,#_mat2_2
      000C62 F9               [12] 2512 	mov	r1,a
      000C63 87 07            [24] 2513 	mov	ar7,@r1
      000C65 E5 2E            [12] 2514 	mov	a,_i
      000C67 24 57            [12] 2515 	add	a,#_mat1_2
      000C69 F9               [12] 2516 	mov	r1,a
      000C6A E7               [12] 2517 	mov	a,@r1
      000C6B 5F               [12] 2518 	anl	a,r7
      000C6C 42 28            [12] 2519 	orl	_mask,a
                                   2520 ;	./src/main.c:440: mask = ~mask;
      000C6E E5 28            [12] 2521 	mov	a,_mask
      000C70 F4               [12] 2522 	cpl	a
                                   2523 ;	./src/main.c:441: Writesingle7219(1, i, mat1_2[i]&mask); // 將上述的位置的燈熄滅，以達到閃爍的效果
      000C71 F5 28            [12] 2524 	mov	_mask,a
      000C73 87 07            [24] 2525 	mov	ar7,@r1
      000C75 5F               [12] 2526 	anl	a,r7
      000C76 F5 0E            [12] 2527 	mov	_Writesingle7219_PARM_3,a
      000C78 85 2E 0D         [24] 2528 	mov	_Writesingle7219_PARM_2,_i
      000C7B 75 82 01         [24] 2529 	mov	dpl,#0x01
      000C7E 12 15 DB         [24] 2530 	lcall	_Writesingle7219
                                   2531 ;	./src/main.c:435: for (i=1;i<=8;i++){
      000C81 05 2E            [12] 2532 	inc	_i
      000C83 E5 2E            [12] 2533 	mov	a,_i
      000C85 24 F7            [12] 2534 	add	a,#0xff - 0x08
      000C87 50 B7            [24] 2535 	jnc	00155$
      000C89 02 09 B6         [24] 2536 	ljmp	00142$
      000C8C                       2537 00144$:
                                   2538 ;	./src/main.c:444: if (winner != 0){
      000C8C E5 24            [12] 2539 	mov	a,_winner
      000C8E 60 03            [24] 2540 	jz	00157$
                                   2541 ;	./src/main.c:445: mode = 5;
      000C90 75 23 05         [24] 2542 	mov	_mode,#0x05
      000C93                       2543 00157$:
                                   2544 ;	./src/main.c:450: }
      000C93 22               [24] 2545 	ret
                                   2546 ;------------------------------------------------------------
                                   2547 ;Allocation info for local variables in function 'overlap'
                                   2548 ;------------------------------------------------------------
                                   2549 ;y1                        Allocated with name '_overlap_PARM_2'
                                   2550 ;h1                        Allocated with name '_overlap_PARM_3'
                                   2551 ;w1                        Allocated with name '_overlap_PARM_4'
                                   2552 ;x2                        Allocated with name '_overlap_PARM_5'
                                   2553 ;y2                        Allocated with name '_overlap_PARM_6'
                                   2554 ;h2                        Allocated with name '_overlap_PARM_7'
                                   2555 ;w2                        Allocated with name '_overlap_PARM_8'
                                   2556 ;x1                        Allocated to registers r7 
                                   2557 ;------------------------------------------------------------
                                   2558 ;	./src/main.c:451: char overlap(char x1, char y1, char h1, char w1,
                                   2559 ;	-----------------------------------------
                                   2560 ;	 function overlap
                                   2561 ;	-----------------------------------------
      000C94                       2562 _overlap:
      000C94 AF 82            [24] 2563 	mov	r7,dpl
                                   2564 ;	./src/main.c:453: for (i=x1;i<x1+h1;i++){
      000C96 8F 2E            [24] 2565 	mov	_i,r7
      000C98                       2566 00113$:
      000C98 8F 05            [24] 2567 	mov	ar5,r7
      000C9A 7E 00            [12] 2568 	mov	r6,#0x00
      000C9C AB 10            [24] 2569 	mov	r3,_overlap_PARM_3
      000C9E 7C 00            [12] 2570 	mov	r4,#0x00
      000CA0 EB               [12] 2571 	mov	a,r3
      000CA1 2D               [12] 2572 	add	a,r5
      000CA2 FD               [12] 2573 	mov	r5,a
      000CA3 EC               [12] 2574 	mov	a,r4
      000CA4 3E               [12] 2575 	addc	a,r6
      000CA5 FE               [12] 2576 	mov	r6,a
      000CA6 AB 2E            [24] 2577 	mov	r3,_i
      000CA8 7C 00            [12] 2578 	mov	r4,#0x00
      000CAA C3               [12] 2579 	clr	c
      000CAB EB               [12] 2580 	mov	a,r3
      000CAC 9D               [12] 2581 	subb	a,r5
      000CAD EC               [12] 2582 	mov	a,r4
      000CAE 64 80            [12] 2583 	xrl	a,#0x80
      000CB0 8E F0            [24] 2584 	mov	b,r6
      000CB2 63 F0 80         [24] 2585 	xrl	b,#0x80
      000CB5 95 F0            [12] 2586 	subb	a,b
      000CB7 40 03            [24] 2587 	jc	00149$
      000CB9 02 0D 3A         [24] 2588 	ljmp	00108$
      000CBC                       2589 00149$:
                                   2590 ;	./src/main.c:454: for (j=y1;j<y1+w1;j++){
      000CBC AE 0F            [24] 2591 	mov	r6,_overlap_PARM_2
      000CBE 8E 2F            [24] 2592 	mov	_j,r6
      000CC0                       2593 00110$:
      000CC0 8E 04            [24] 2594 	mov	ar4,r6
      000CC2 7D 00            [12] 2595 	mov	r5,#0x00
      000CC4 AA 11            [24] 2596 	mov	r2,_overlap_PARM_4
      000CC6 7B 00            [12] 2597 	mov	r3,#0x00
      000CC8 EA               [12] 2598 	mov	a,r2
      000CC9 2C               [12] 2599 	add	a,r4
      000CCA FC               [12] 2600 	mov	r4,a
      000CCB EB               [12] 2601 	mov	a,r3
      000CCC 3D               [12] 2602 	addc	a,r5
      000CCD FD               [12] 2603 	mov	r5,a
      000CCE AA 2F            [24] 2604 	mov	r2,_j
      000CD0 7B 00            [12] 2605 	mov	r3,#0x00
      000CD2 C3               [12] 2606 	clr	c
      000CD3 EA               [12] 2607 	mov	a,r2
      000CD4 9C               [12] 2608 	subb	a,r4
      000CD5 EB               [12] 2609 	mov	a,r3
      000CD6 64 80            [12] 2610 	xrl	a,#0x80
      000CD8 8D F0            [24] 2611 	mov	b,r5
      000CDA 63 F0 80         [24] 2612 	xrl	b,#0x80
      000CDD 95 F0            [12] 2613 	subb	a,b
      000CDF 50 54            [24] 2614 	jnc	00114$
                                   2615 ;	./src/main.c:456: if ((i >= x2) && (i < x2 + h2)){
      000CE1 C3               [12] 2616 	clr	c
      000CE2 E5 2E            [12] 2617 	mov	a,_i
      000CE4 95 12            [12] 2618 	subb	a,_overlap_PARM_5
      000CE6 40 49            [24] 2619 	jc	00111$
      000CE8 AC 12            [24] 2620 	mov	r4,_overlap_PARM_5
      000CEA 7D 00            [12] 2621 	mov	r5,#0x00
      000CEC A8 14            [24] 2622 	mov	r0,_overlap_PARM_7
      000CEE 79 00            [12] 2623 	mov	r1,#0x00
      000CF0 E8               [12] 2624 	mov	a,r0
      000CF1 2C               [12] 2625 	add	a,r4
      000CF2 FC               [12] 2626 	mov	r4,a
      000CF3 E9               [12] 2627 	mov	a,r1
      000CF4 3D               [12] 2628 	addc	a,r5
      000CF5 FD               [12] 2629 	mov	r5,a
      000CF6 A8 2E            [24] 2630 	mov	r0,_i
      000CF8 79 00            [12] 2631 	mov	r1,#0x00
      000CFA C3               [12] 2632 	clr	c
      000CFB E8               [12] 2633 	mov	a,r0
      000CFC 9C               [12] 2634 	subb	a,r4
      000CFD E9               [12] 2635 	mov	a,r1
      000CFE 64 80            [12] 2636 	xrl	a,#0x80
      000D00 8D F0            [24] 2637 	mov	b,r5
      000D02 63 F0 80         [24] 2638 	xrl	b,#0x80
      000D05 95 F0            [12] 2639 	subb	a,b
      000D07 50 28            [24] 2640 	jnc	00111$
                                   2641 ;	./src/main.c:457: if ((j >= y2) && (j < y2+w2)){
      000D09 C3               [12] 2642 	clr	c
      000D0A E5 2F            [12] 2643 	mov	a,_j
      000D0C 95 13            [12] 2644 	subb	a,_overlap_PARM_6
      000D0E 40 21            [24] 2645 	jc	00111$
      000D10 AC 13            [24] 2646 	mov	r4,_overlap_PARM_6
      000D12 7D 00            [12] 2647 	mov	r5,#0x00
      000D14 A8 15            [24] 2648 	mov	r0,_overlap_PARM_8
      000D16 79 00            [12] 2649 	mov	r1,#0x00
      000D18 E8               [12] 2650 	mov	a,r0
      000D19 2C               [12] 2651 	add	a,r4
      000D1A FC               [12] 2652 	mov	r4,a
      000D1B E9               [12] 2653 	mov	a,r1
      000D1C 3D               [12] 2654 	addc	a,r5
      000D1D FD               [12] 2655 	mov	r5,a
      000D1E C3               [12] 2656 	clr	c
      000D1F EA               [12] 2657 	mov	a,r2
      000D20 9C               [12] 2658 	subb	a,r4
      000D21 EB               [12] 2659 	mov	a,r3
      000D22 64 80            [12] 2660 	xrl	a,#0x80
      000D24 8D F0            [24] 2661 	mov	b,r5
      000D26 63 F0 80         [24] 2662 	xrl	b,#0x80
      000D29 95 F0            [12] 2663 	subb	a,b
      000D2B 50 04            [24] 2664 	jnc	00111$
                                   2665 ;	./src/main.c:458: return 1;
      000D2D 75 82 01         [24] 2666 	mov	dpl,#0x01
      000D30 22               [24] 2667 	ret
      000D31                       2668 00111$:
                                   2669 ;	./src/main.c:454: for (j=y1;j<y1+w1;j++){
      000D31 05 2F            [12] 2670 	inc	_j
      000D33 80 8B            [24] 2671 	sjmp	00110$
      000D35                       2672 00114$:
                                   2673 ;	./src/main.c:453: for (i=x1;i<x1+h1;i++){
      000D35 05 2E            [12] 2674 	inc	_i
      000D37 02 0C 98         [24] 2675 	ljmp	00113$
      000D3A                       2676 00108$:
                                   2677 ;	./src/main.c:462: }return 0;
      000D3A 75 82 00         [24] 2678 	mov	dpl,#0x00
                                   2679 ;	./src/main.c:463: }
      000D3D 22               [24] 2680 	ret
                                   2681 ;------------------------------------------------------------
                                   2682 ;Allocation info for local variables in function 'del'
                                   2683 ;------------------------------------------------------------
                                   2684 ;y1                        Allocated with name '_del_PARM_2'
                                   2685 ;x2                        Allocated with name '_del_PARM_3'
                                   2686 ;y2                        Allocated with name '_del_PARM_4'
                                   2687 ;type                      Allocated with name '_del_PARM_5'
                                   2688 ;x1                        Allocated to registers r7 
                                   2689 ;------------------------------------------------------------
                                   2690 ;	./src/main.c:465: void del(char x1, char y1, char x2, char y2, char type){
                                   2691 ;	-----------------------------------------
                                   2692 ;	 function del
                                   2693 ;	-----------------------------------------
      000D3E                       2694 _del:
      000D3E AF 82            [24] 2695 	mov	r7,dpl
                                   2696 ;	./src/main.c:466: if (type == 0){// mat1_1
      000D40 E5 12            [12] 2697 	mov	a,_del_PARM_5
      000D42 70 39            [24] 2698 	jnz	00104$
                                   2699 ;	./src/main.c:467: for (i=x1;i<=x2;i++){
      000D44 8F 2E            [24] 2700 	mov	_i,r7
      000D46 AE 0F            [24] 2701 	mov	r6,_del_PARM_2
      000D48                       2702 00113$:
      000D48 C3               [12] 2703 	clr	c
      000D49 E5 10            [12] 2704 	mov	a,_del_PARM_3
      000D4B 95 2E            [12] 2705 	subb	a,_i
      000D4D 40 2E            [24] 2706 	jc	00104$
                                   2707 ;	./src/main.c:468: for (j=y1;j<=y2;j++){
      000D4F 8E 2F            [24] 2708 	mov	_j,r6
      000D51                       2709 00110$:
      000D51 C3               [12] 2710 	clr	c
      000D52 E5 11            [12] 2711 	mov	a,_del_PARM_4
      000D54 95 2F            [12] 2712 	subb	a,_j
      000D56 40 21            [24] 2713 	jc	00114$
                                   2714 ;	./src/main.c:469: mask = 1<<j;
      000D58 AD 2F            [24] 2715 	mov	r5,_j
      000D5A 8D F0            [24] 2716 	mov	b,r5
      000D5C 05 F0            [12] 2717 	inc	b
      000D5E 74 01            [12] 2718 	mov	a,#0x01
      000D60 80 02            [24] 2719 	sjmp	00168$
      000D62                       2720 00166$:
      000D62 25 E0            [12] 2721 	add	a,acc
      000D64                       2722 00168$:
      000D64 D5 F0 FB         [24] 2723 	djnz	b,00166$
                                   2724 ;	./src/main.c:470: mask = ~mask;
      000D67 F4               [12] 2725 	cpl	a
      000D68 F5 28            [12] 2726 	mov	_mask,a
                                   2727 ;	./src/main.c:471: mat1_1[i] &= mask;
      000D6A E5 2E            [12] 2728 	mov	a,_i
      000D6C 24 4E            [12] 2729 	add	a,#_mat1_1
      000D6E F9               [12] 2730 	mov	r1,a
      000D6F 87 05            [24] 2731 	mov	ar5,@r1
      000D71 E5 28            [12] 2732 	mov	a,_mask
      000D73 5D               [12] 2733 	anl	a,r5
      000D74 F7               [12] 2734 	mov	@r1,a
                                   2735 ;	./src/main.c:468: for (j=y1;j<=y2;j++){
      000D75 05 2F            [12] 2736 	inc	_j
      000D77 80 D8            [24] 2737 	sjmp	00110$
      000D79                       2738 00114$:
                                   2739 ;	./src/main.c:467: for (i=x1;i<=x2;i++){
      000D79 05 2E            [12] 2740 	inc	_i
      000D7B 80 CB            [24] 2741 	sjmp	00113$
      000D7D                       2742 00104$:
                                   2743 ;	./src/main.c:475: if (type == 1){// mat2_2
      000D7D 74 01            [12] 2744 	mov	a,#0x01
      000D7F B5 12 39         [24] 2745 	cjne	a,_del_PARM_5,00121$
                                   2746 ;	./src/main.c:476: for (i=x1;i<=x2;i++){
      000D82 8F 2E            [24] 2747 	mov	_i,r7
      000D84 AF 0F            [24] 2748 	mov	r7,_del_PARM_2
      000D86                       2749 00119$:
      000D86 C3               [12] 2750 	clr	c
      000D87 E5 10            [12] 2751 	mov	a,_del_PARM_3
      000D89 95 2E            [12] 2752 	subb	a,_i
      000D8B 40 2E            [24] 2753 	jc	00121$
                                   2754 ;	./src/main.c:477: for (j=y1;j<=y2;j++){
      000D8D 8F 2F            [24] 2755 	mov	_j,r7
      000D8F                       2756 00116$:
      000D8F C3               [12] 2757 	clr	c
      000D90 E5 11            [12] 2758 	mov	a,_del_PARM_4
      000D92 95 2F            [12] 2759 	subb	a,_j
      000D94 40 21            [24] 2760 	jc	00120$
                                   2761 ;	./src/main.c:478: mask = 1<<j;
      000D96 AE 2F            [24] 2762 	mov	r6,_j
      000D98 8E F0            [24] 2763 	mov	b,r6
      000D9A 05 F0            [12] 2764 	inc	b
      000D9C 74 01            [12] 2765 	mov	a,#0x01
      000D9E 80 02            [24] 2766 	sjmp	00175$
      000DA0                       2767 00173$:
      000DA0 25 E0            [12] 2768 	add	a,acc
      000DA2                       2769 00175$:
      000DA2 D5 F0 FB         [24] 2770 	djnz	b,00173$
                                   2771 ;	./src/main.c:479: mask = ~mask;
      000DA5 F4               [12] 2772 	cpl	a
      000DA6 F5 28            [12] 2773 	mov	_mask,a
                                   2774 ;	./src/main.c:480: mat2_2[i] &= mask;
      000DA8 E5 2E            [12] 2775 	mov	a,_i
      000DAA 24 69            [12] 2776 	add	a,#_mat2_2
      000DAC F9               [12] 2777 	mov	r1,a
      000DAD 87 06            [24] 2778 	mov	ar6,@r1
      000DAF E5 28            [12] 2779 	mov	a,_mask
      000DB1 5E               [12] 2780 	anl	a,r6
      000DB2 F7               [12] 2781 	mov	@r1,a
                                   2782 ;	./src/main.c:477: for (j=y1;j<=y2;j++){
      000DB3 05 2F            [12] 2783 	inc	_j
      000DB5 80 D8            [24] 2784 	sjmp	00116$
      000DB7                       2785 00120$:
                                   2786 ;	./src/main.c:476: for (i=x1;i<=x2;i++){
      000DB7 05 2E            [12] 2787 	inc	_i
      000DB9 80 CB            [24] 2788 	sjmp	00119$
      000DBB                       2789 00121$:
                                   2790 ;	./src/main.c:484: }
      000DBB 22               [24] 2791 	ret
                                   2792 ;------------------------------------------------------------
                                   2793 ;Allocation info for local variables in function 'draw'
                                   2794 ;------------------------------------------------------------
                                   2795 ;y1                        Allocated with name '_draw_PARM_2'
                                   2796 ;x2                        Allocated with name '_draw_PARM_3'
                                   2797 ;y2                        Allocated with name '_draw_PARM_4'
                                   2798 ;type                      Allocated with name '_draw_PARM_5'
                                   2799 ;x1                        Allocated to registers r7 
                                   2800 ;------------------------------------------------------------
                                   2801 ;	./src/main.c:485: void draw(char x1, char y1, char x2, char y2, char type){
                                   2802 ;	-----------------------------------------
                                   2803 ;	 function draw
                                   2804 ;	-----------------------------------------
      000DBC                       2805 _draw:
      000DBC AF 82            [24] 2806 	mov	r7,dpl
                                   2807 ;	./src/main.c:486: if (type == 0){// mat1_1
      000DBE E5 12            [12] 2808 	mov	a,_draw_PARM_5
      000DC0 70 38            [24] 2809 	jnz	00104$
                                   2810 ;	./src/main.c:487: for (i=x1;i<=x2;i++){
      000DC2 8F 2E            [24] 2811 	mov	_i,r7
      000DC4 AE 0F            [24] 2812 	mov	r6,_draw_PARM_2
      000DC6                       2813 00121$:
      000DC6 C3               [12] 2814 	clr	c
      000DC7 E5 10            [12] 2815 	mov	a,_draw_PARM_3
      000DC9 95 2E            [12] 2816 	subb	a,_i
      000DCB 40 2D            [24] 2817 	jc	00104$
                                   2818 ;	./src/main.c:488: for (j=y1;j<=y2;j++){
      000DCD 8E 2F            [24] 2819 	mov	_j,r6
      000DCF                       2820 00118$:
      000DCF C3               [12] 2821 	clr	c
      000DD0 E5 11            [12] 2822 	mov	a,_draw_PARM_4
      000DD2 95 2F            [12] 2823 	subb	a,_j
      000DD4 40 20            [24] 2824 	jc	00122$
                                   2825 ;	./src/main.c:489: mask = 1<<j;
      000DD6 AD 2F            [24] 2826 	mov	r5,_j
      000DD8 8D F0            [24] 2827 	mov	b,r5
      000DDA 05 F0            [12] 2828 	inc	b
      000DDC 74 01            [12] 2829 	mov	a,#0x01
      000DDE 80 02            [24] 2830 	sjmp	00228$
      000DE0                       2831 00226$:
      000DE0 25 E0            [12] 2832 	add	a,acc
      000DE2                       2833 00228$:
      000DE2 D5 F0 FB         [24] 2834 	djnz	b,00226$
      000DE5 F5 28            [12] 2835 	mov	_mask,a
                                   2836 ;	./src/main.c:490: mat1_1[i] |= mask;
      000DE7 E5 2E            [12] 2837 	mov	a,_i
      000DE9 24 4E            [12] 2838 	add	a,#_mat1_1
      000DEB F9               [12] 2839 	mov	r1,a
      000DEC 87 05            [24] 2840 	mov	ar5,@r1
      000DEE E5 28            [12] 2841 	mov	a,_mask
      000DF0 4D               [12] 2842 	orl	a,r5
      000DF1 F7               [12] 2843 	mov	@r1,a
                                   2844 ;	./src/main.c:488: for (j=y1;j<=y2;j++){
      000DF2 05 2F            [12] 2845 	inc	_j
      000DF4 80 D9            [24] 2846 	sjmp	00118$
      000DF6                       2847 00122$:
                                   2848 ;	./src/main.c:487: for (i=x1;i<=x2;i++){
      000DF6 05 2E            [12] 2849 	inc	_i
      000DF8 80 CC            [24] 2850 	sjmp	00121$
      000DFA                       2851 00104$:
                                   2852 ;	./src/main.c:494: if (type == 1){// mat1_1
      000DFA 74 01            [12] 2853 	mov	a,#0x01
      000DFC B5 12 38         [24] 2854 	cjne	a,_draw_PARM_5,00108$
                                   2855 ;	./src/main.c:495: for (i=x1;i<=x2;i++){
      000DFF 8F 2E            [24] 2856 	mov	_i,r7
      000E01 AE 0F            [24] 2857 	mov	r6,_draw_PARM_2
      000E03                       2858 00127$:
      000E03 C3               [12] 2859 	clr	c
      000E04 E5 10            [12] 2860 	mov	a,_draw_PARM_3
      000E06 95 2E            [12] 2861 	subb	a,_i
      000E08 40 2D            [24] 2862 	jc	00108$
                                   2863 ;	./src/main.c:496: for (j=y1;j<=y2;j++){
      000E0A 8E 2F            [24] 2864 	mov	_j,r6
      000E0C                       2865 00124$:
      000E0C C3               [12] 2866 	clr	c
      000E0D E5 11            [12] 2867 	mov	a,_draw_PARM_4
      000E0F 95 2F            [12] 2868 	subb	a,_j
      000E11 40 20            [24] 2869 	jc	00128$
                                   2870 ;	./src/main.c:497: mask = 1<<j;
      000E13 AD 2F            [24] 2871 	mov	r5,_j
      000E15 8D F0            [24] 2872 	mov	b,r5
      000E17 05 F0            [12] 2873 	inc	b
      000E19 74 01            [12] 2874 	mov	a,#0x01
      000E1B 80 02            [24] 2875 	sjmp	00235$
      000E1D                       2876 00233$:
      000E1D 25 E0            [12] 2877 	add	a,acc
      000E1F                       2878 00235$:
      000E1F D5 F0 FB         [24] 2879 	djnz	b,00233$
      000E22 F5 28            [12] 2880 	mov	_mask,a
                                   2881 ;	./src/main.c:498: mat2_2[i] |= mask;
      000E24 E5 2E            [12] 2882 	mov	a,_i
      000E26 24 69            [12] 2883 	add	a,#_mat2_2
      000E28 F9               [12] 2884 	mov	r1,a
      000E29 87 05            [24] 2885 	mov	ar5,@r1
      000E2B E5 28            [12] 2886 	mov	a,_mask
      000E2D 4D               [12] 2887 	orl	a,r5
      000E2E F7               [12] 2888 	mov	@r1,a
                                   2889 ;	./src/main.c:496: for (j=y1;j<=y2;j++){
      000E2F 05 2F            [12] 2890 	inc	_j
      000E31 80 D9            [24] 2891 	sjmp	00124$
      000E33                       2892 00128$:
                                   2893 ;	./src/main.c:495: for (i=x1;i<=x2;i++){
      000E33 05 2E            [12] 2894 	inc	_i
      000E35 80 CC            [24] 2895 	sjmp	00127$
      000E37                       2896 00108$:
                                   2897 ;	./src/main.c:502: if (type == 2){// mat1_2
      000E37 74 02            [12] 2898 	mov	a,#0x02
      000E39 B5 12 38         [24] 2899 	cjne	a,_draw_PARM_5,00112$
                                   2900 ;	./src/main.c:503: for (i=x1;i<=x2;i++){
      000E3C 8F 2E            [24] 2901 	mov	_i,r7
      000E3E AE 0F            [24] 2902 	mov	r6,_draw_PARM_2
      000E40                       2903 00133$:
      000E40 C3               [12] 2904 	clr	c
      000E41 E5 10            [12] 2905 	mov	a,_draw_PARM_3
      000E43 95 2E            [12] 2906 	subb	a,_i
      000E45 40 2D            [24] 2907 	jc	00112$
                                   2908 ;	./src/main.c:504: for (j=y1;j<=y2;j++){
      000E47 8E 2F            [24] 2909 	mov	_j,r6
      000E49                       2910 00130$:
      000E49 C3               [12] 2911 	clr	c
      000E4A E5 11            [12] 2912 	mov	a,_draw_PARM_4
      000E4C 95 2F            [12] 2913 	subb	a,_j
      000E4E 40 20            [24] 2914 	jc	00134$
                                   2915 ;	./src/main.c:505: mask = 1<<j;
      000E50 AD 2F            [24] 2916 	mov	r5,_j
      000E52 8D F0            [24] 2917 	mov	b,r5
      000E54 05 F0            [12] 2918 	inc	b
      000E56 74 01            [12] 2919 	mov	a,#0x01
      000E58 80 02            [24] 2920 	sjmp	00242$
      000E5A                       2921 00240$:
      000E5A 25 E0            [12] 2922 	add	a,acc
      000E5C                       2923 00242$:
      000E5C D5 F0 FB         [24] 2924 	djnz	b,00240$
      000E5F F5 28            [12] 2925 	mov	_mask,a
                                   2926 ;	./src/main.c:506: mat1_2[i] |= mask;
      000E61 E5 2E            [12] 2927 	mov	a,_i
      000E63 24 57            [12] 2928 	add	a,#_mat1_2
      000E65 F9               [12] 2929 	mov	r1,a
      000E66 87 05            [24] 2930 	mov	ar5,@r1
      000E68 E5 28            [12] 2931 	mov	a,_mask
      000E6A 4D               [12] 2932 	orl	a,r5
      000E6B F7               [12] 2933 	mov	@r1,a
                                   2934 ;	./src/main.c:504: for (j=y1;j<=y2;j++){
      000E6C 05 2F            [12] 2935 	inc	_j
      000E6E 80 D9            [24] 2936 	sjmp	00130$
      000E70                       2937 00134$:
                                   2938 ;	./src/main.c:503: for (i=x1;i<=x2;i++){
      000E70 05 2E            [12] 2939 	inc	_i
      000E72 80 CC            [24] 2940 	sjmp	00133$
      000E74                       2941 00112$:
                                   2942 ;	./src/main.c:510: if (type == 3){// mat2_1
      000E74 74 03            [12] 2943 	mov	a,#0x03
      000E76 B5 12 38         [24] 2944 	cjne	a,_draw_PARM_5,00141$
                                   2945 ;	./src/main.c:511: for (i=x1;i<=x2;i++){
      000E79 8F 2E            [24] 2946 	mov	_i,r7
      000E7B AF 0F            [24] 2947 	mov	r7,_draw_PARM_2
      000E7D                       2948 00139$:
      000E7D C3               [12] 2949 	clr	c
      000E7E E5 10            [12] 2950 	mov	a,_draw_PARM_3
      000E80 95 2E            [12] 2951 	subb	a,_i
      000E82 40 2D            [24] 2952 	jc	00141$
                                   2953 ;	./src/main.c:512: for (j=y1;j<=y2;j++){
      000E84 8F 2F            [24] 2954 	mov	_j,r7
      000E86                       2955 00136$:
      000E86 C3               [12] 2956 	clr	c
      000E87 E5 11            [12] 2957 	mov	a,_draw_PARM_4
      000E89 95 2F            [12] 2958 	subb	a,_j
      000E8B 40 20            [24] 2959 	jc	00140$
                                   2960 ;	./src/main.c:513: mask = 1<<j;
      000E8D AE 2F            [24] 2961 	mov	r6,_j
      000E8F 8E F0            [24] 2962 	mov	b,r6
      000E91 05 F0            [12] 2963 	inc	b
      000E93 74 01            [12] 2964 	mov	a,#0x01
      000E95 80 02            [24] 2965 	sjmp	00249$
      000E97                       2966 00247$:
      000E97 25 E0            [12] 2967 	add	a,acc
      000E99                       2968 00249$:
      000E99 D5 F0 FB         [24] 2969 	djnz	b,00247$
      000E9C F5 28            [12] 2970 	mov	_mask,a
                                   2971 ;	./src/main.c:514: mat2_1[i] |= mask;
      000E9E E5 2E            [12] 2972 	mov	a,_i
      000EA0 24 60            [12] 2973 	add	a,#_mat2_1
      000EA2 F9               [12] 2974 	mov	r1,a
      000EA3 87 06            [24] 2975 	mov	ar6,@r1
      000EA5 E5 28            [12] 2976 	mov	a,_mask
      000EA7 4E               [12] 2977 	orl	a,r6
      000EA8 F7               [12] 2978 	mov	@r1,a
                                   2979 ;	./src/main.c:512: for (j=y1;j<=y2;j++){
      000EA9 05 2F            [12] 2980 	inc	_j
      000EAB 80 D9            [24] 2981 	sjmp	00136$
      000EAD                       2982 00140$:
                                   2983 ;	./src/main.c:511: for (i=x1;i<=x2;i++){
      000EAD 05 2E            [12] 2984 	inc	_i
      000EAF 80 CC            [24] 2985 	sjmp	00139$
      000EB1                       2986 00141$:
                                   2987 ;	./src/main.c:518: }
      000EB1 22               [24] 2988 	ret
                                   2989 ;------------------------------------------------------------
                                   2990 ;Allocation info for local variables in function 'Get_Dot'
                                   2991 ;------------------------------------------------------------
                                   2992 ;row                       Allocated with name '_Get_Dot_PARM_2'
                                   2993 ;type                      Allocated with name '_Get_Dot_PARM_3'
                                   2994 ;col                       Allocated to registers r7 
                                   2995 ;------------------------------------------------------------
                                   2996 ;	./src/main.c:519: char Get_Dot(char col, char row,char type){
                                   2997 ;	-----------------------------------------
                                   2998 ;	 function Get_Dot
                                   2999 ;	-----------------------------------------
      000EB2                       3000 _Get_Dot:
      000EB2 AF 82            [24] 3001 	mov	r7,dpl
                                   3002 ;	./src/main.c:521: if (type == 0){// mat1_1
      000EB4 E5 10            [12] 3003 	mov	a,_Get_Dot_PARM_3
      000EB6 70 1E            [24] 3004 	jnz	00110$
                                   3005 ;	./src/main.c:522: mask = 1<<row;
      000EB8 AE 0F            [24] 3006 	mov	r6,_Get_Dot_PARM_2
      000EBA 8E F0            [24] 3007 	mov	b,r6
      000EBC 05 F0            [12] 3008 	inc	b
      000EBE 74 01            [12] 3009 	mov	a,#0x01
      000EC0 80 02            [24] 3010 	sjmp	00133$
      000EC2                       3011 00131$:
      000EC2 25 E0            [12] 3012 	add	a,acc
      000EC4                       3013 00133$:
      000EC4 D5 F0 FB         [24] 3014 	djnz	b,00131$
      000EC7 F5 28            [12] 3015 	mov	_mask,a
                                   3016 ;	./src/main.c:523: get_bit = mask & mat1_1[col];
      000EC9 EF               [12] 3017 	mov	a,r7
      000ECA 24 4E            [12] 3018 	add	a,#_mat1_1
      000ECC F9               [12] 3019 	mov	r1,a
      000ECD E7               [12] 3020 	mov	a,@r1
      000ECE 55 28            [12] 3021 	anl	a,_mask
      000ED0 F5 3B            [12] 3022 	mov	_get_bit,a
                                   3023 ;	./src/main.c:524: return get_bit;
      000ED2 85 3B 82         [24] 3024 	mov	dpl,_get_bit
      000ED5 22               [24] 3025 	ret
      000ED6                       3026 00110$:
                                   3027 ;	./src/main.c:526: else if (type == 1){// mat2_2
      000ED6 74 01            [12] 3028 	mov	a,#0x01
      000ED8 B5 10 1E         [24] 3029 	cjne	a,_Get_Dot_PARM_3,00107$
                                   3030 ;	./src/main.c:527: mask = 1<<row;
      000EDB AE 0F            [24] 3031 	mov	r6,_Get_Dot_PARM_2
      000EDD 8E F0            [24] 3032 	mov	b,r6
      000EDF 05 F0            [12] 3033 	inc	b
      000EE1 74 01            [12] 3034 	mov	a,#0x01
      000EE3 80 02            [24] 3035 	sjmp	00138$
      000EE5                       3036 00136$:
      000EE5 25 E0            [12] 3037 	add	a,acc
      000EE7                       3038 00138$:
      000EE7 D5 F0 FB         [24] 3039 	djnz	b,00136$
      000EEA F5 28            [12] 3040 	mov	_mask,a
                                   3041 ;	./src/main.c:528: get_bit = mask & mat2_2[col];
      000EEC EF               [12] 3042 	mov	a,r7
      000EED 24 69            [12] 3043 	add	a,#_mat2_2
      000EEF F9               [12] 3044 	mov	r1,a
      000EF0 E7               [12] 3045 	mov	a,@r1
      000EF1 55 28            [12] 3046 	anl	a,_mask
      000EF3 F5 3B            [12] 3047 	mov	_get_bit,a
                                   3048 ;	./src/main.c:529: return get_bit;
      000EF5 85 3B 82         [24] 3049 	mov	dpl,_get_bit
      000EF8 22               [24] 3050 	ret
      000EF9                       3051 00107$:
                                   3052 ;	./src/main.c:531: else if (type == 2){// mat1_2
      000EF9 74 02            [12] 3053 	mov	a,#0x02
      000EFB B5 10 1E         [24] 3054 	cjne	a,_Get_Dot_PARM_3,00104$
                                   3055 ;	./src/main.c:532: mask = 1<<row;
      000EFE AE 0F            [24] 3056 	mov	r6,_Get_Dot_PARM_2
      000F00 8E F0            [24] 3057 	mov	b,r6
      000F02 05 F0            [12] 3058 	inc	b
      000F04 74 01            [12] 3059 	mov	a,#0x01
      000F06 80 02            [24] 3060 	sjmp	00143$
      000F08                       3061 00141$:
      000F08 25 E0            [12] 3062 	add	a,acc
      000F0A                       3063 00143$:
      000F0A D5 F0 FB         [24] 3064 	djnz	b,00141$
      000F0D F5 28            [12] 3065 	mov	_mask,a
                                   3066 ;	./src/main.c:533: get_bit = mask & mat1_2[col];
      000F0F EF               [12] 3067 	mov	a,r7
      000F10 24 57            [12] 3068 	add	a,#_mat1_2
      000F12 F9               [12] 3069 	mov	r1,a
      000F13 E7               [12] 3070 	mov	a,@r1
      000F14 55 28            [12] 3071 	anl	a,_mask
      000F16 F5 3B            [12] 3072 	mov	_get_bit,a
                                   3073 ;	./src/main.c:534: return get_bit;
      000F18 85 3B 82         [24] 3074 	mov	dpl,_get_bit
      000F1B 22               [24] 3075 	ret
      000F1C                       3076 00104$:
                                   3077 ;	./src/main.c:536: else if (type == 3){// mat2_1
      000F1C 74 03            [12] 3078 	mov	a,#0x03
      000F1E B5 10 1E         [24] 3079 	cjne	a,_Get_Dot_PARM_3,00108$
                                   3080 ;	./src/main.c:537: mask = 1<<row;
      000F21 AE 0F            [24] 3081 	mov	r6,_Get_Dot_PARM_2
      000F23 8E F0            [24] 3082 	mov	b,r6
      000F25 05 F0            [12] 3083 	inc	b
      000F27 74 01            [12] 3084 	mov	a,#0x01
      000F29 80 02            [24] 3085 	sjmp	00148$
      000F2B                       3086 00146$:
      000F2B 25 E0            [12] 3087 	add	a,acc
      000F2D                       3088 00148$:
      000F2D D5 F0 FB         [24] 3089 	djnz	b,00146$
      000F30 F5 28            [12] 3090 	mov	_mask,a
                                   3091 ;	./src/main.c:538: get_bit = mask & mat2_1[col];
      000F32 EF               [12] 3092 	mov	a,r7
      000F33 24 60            [12] 3093 	add	a,#_mat2_1
      000F35 F9               [12] 3094 	mov	r1,a
      000F36 E7               [12] 3095 	mov	a,@r1
      000F37 55 28            [12] 3096 	anl	a,_mask
      000F39 F5 3B            [12] 3097 	mov	_get_bit,a
                                   3098 ;	./src/main.c:539: return get_bit;
      000F3B 85 3B 82         [24] 3099 	mov	dpl,_get_bit
      000F3E 22               [24] 3100 	ret
      000F3F                       3101 00108$:
                                   3102 ;	./src/main.c:541: return 0;
      000F3F 75 82 00         [24] 3103 	mov	dpl,#0x00
                                   3104 ;	./src/main.c:542: }
      000F42 22               [24] 3105 	ret
                                   3106 ;------------------------------------------------------------
                                   3107 ;Allocation info for local variables in function 'mode4'
                                   3108 ;------------------------------------------------------------
                                   3109 ;	./src/main.c:544: void mode4(void){
                                   3110 ;	-----------------------------------------
                                   3111 ;	 function mode4
                                   3112 ;	-----------------------------------------
      000F43                       3113 _mode4:
                                   3114 ;	./src/main.c:545: turn = 2;
      000F43 75 3C 02         [24] 3115 	mov	_turn,#0x02
                                   3116 ;	./src/main.c:546: OLED_Clear();
      000F46 12 15 12         [24] 3117 	lcall	_OLED_Clear
                                   3118 ;	./src/main.c:547: OLED_SetCursor(2, 3);
      000F49 75 0B 03         [24] 3119 	mov	_OLED_SetCursor_PARM_2,#0x03
      000F4C 75 82 02         [24] 3120 	mov	dpl,#0x02
      000F4F 12 15 3D         [24] 3121 	lcall	_OLED_SetCursor
                                   3122 ;	./src/main.c:548: OLED_DisplayString("Player ");
      000F52 90 18 1D         [24] 3123 	mov	dptr,#___str_11
      000F55 75 F0 80         [24] 3124 	mov	b,#0x80
      000F58 12 14 E7         [24] 3125 	lcall	_OLED_DisplayString
                                   3126 ;	./src/main.c:549: OLED_DisplayChar('0'+turn);
      000F5B AF 3C            [24] 3127 	mov	r7,_turn
      000F5D 74 30            [12] 3128 	mov	a,#0x30
      000F5F 2F               [12] 3129 	add	a,r7
      000F60 F5 82            [12] 3130 	mov	dpl,a
      000F62 12 14 96         [24] 3131 	lcall	_OLED_DisplayChar
                                   3132 ;	./src/main.c:550: OLED_DisplayString(" turn ");
      000F65 90 18 25         [24] 3133 	mov	dptr,#___str_12
      000F68 75 F0 80         [24] 3134 	mov	b,#0x80
      000F6B 12 14 E7         [24] 3135 	lcall	_OLED_DisplayString
                                   3136 ;	./src/main.c:551: OLED_SetCursor(3, 4);
      000F6E 75 0B 04         [24] 3137 	mov	_OLED_SetCursor_PARM_2,#0x04
      000F71 75 82 03         [24] 3138 	mov	dpl,#0x03
      000F74 12 15 3D         [24] 3139 	lcall	_OLED_SetCursor
                                   3140 ;	./src/main.c:552: OLED_DisplayString("now row: ");
      000F77 90 18 2C         [24] 3141 	mov	dptr,#___str_13
      000F7A 75 F0 80         [24] 3142 	mov	b,#0x80
      000F7D 12 14 E7         [24] 3143 	lcall	_OLED_DisplayString
                                   3144 ;	./src/main.c:553: OLED_SetCursor(4, 4);
      000F80 75 0B 04         [24] 3145 	mov	_OLED_SetCursor_PARM_2,#0x04
      000F83 75 82 04         [24] 3146 	mov	dpl,#0x04
      000F86 12 15 3D         [24] 3147 	lcall	_OLED_SetCursor
                                   3148 ;	./src/main.c:554: OLED_DisplayString("now col: ");
      000F89 90 18 36         [24] 3149 	mov	dptr,#___str_14
      000F8C 75 F0 80         [24] 3150 	mov	b,#0x80
      000F8F 12 14 E7         [24] 3151 	lcall	_OLED_DisplayString
                                   3152 ;	./src/main.c:555: OLED_SetCursor(5, 4);
      000F92 75 0B 04         [24] 3153 	mov	_OLED_SetCursor_PARM_2,#0x04
      000F95 75 82 05         [24] 3154 	mov	dpl,#0x05
      000F98 12 15 3D         [24] 3155 	lcall	_OLED_SetCursor
                                   3156 ;	./src/main.c:556: OLED_DisplayString("now score: ");
      000F9B 90 18 40         [24] 3157 	mov	dptr,#___str_15
      000F9E 75 F0 80         [24] 3158 	mov	b,#0x80
      000FA1 12 14 E7         [24] 3159 	lcall	_OLED_DisplayString
                                   3160 ;	./src/main.c:557: while (winner == 0){
      000FA4                       3161 00142$:
      000FA4 E5 24            [12] 3162 	mov	a,_winner
      000FA6 60 03            [24] 3163 	jz	00295$
      000FA8 02 12 7D         [24] 3164 	ljmp	00144$
      000FAB                       3165 00295$:
                                   3166 ;	./src/main.c:559: now_col = player[turn][0];
      000FAB E5 3C            [12] 3167 	mov	a,_turn
      000FAD 25 3C            [12] 3168 	add	a,_turn
      000FAF 24 45            [12] 3169 	add	a,#_player
      000FB1 F9               [12] 3170 	mov	r1,a
      000FB2 87 39            [24] 3171 	mov	_now_col,@r1
                                   3172 ;	./src/main.c:560: now_row = player[turn][1];
      000FB4 09               [12] 3173 	inc	r1
      000FB5 87 38            [24] 3174 	mov	_now_row,@r1
                                   3175 ;	./src/main.c:561: OLED_SetCursor(3, 55);
      000FB7 75 0B 37         [24] 3176 	mov	_OLED_SetCursor_PARM_2,#0x37
      000FBA 75 82 03         [24] 3177 	mov	dpl,#0x03
      000FBD 12 15 3D         [24] 3178 	lcall	_OLED_SetCursor
                                   3179 ;	./src/main.c:562: OLED_DisplayChar('0'+now_row);
      000FC0 AF 38            [24] 3180 	mov	r7,_now_row
      000FC2 74 30            [12] 3181 	mov	a,#0x30
      000FC4 2F               [12] 3182 	add	a,r7
      000FC5 F5 82            [12] 3183 	mov	dpl,a
      000FC7 12 14 96         [24] 3184 	lcall	_OLED_DisplayChar
                                   3185 ;	./src/main.c:563: OLED_SetCursor(4, 55);
      000FCA 75 0B 37         [24] 3186 	mov	_OLED_SetCursor_PARM_2,#0x37
      000FCD 75 82 04         [24] 3187 	mov	dpl,#0x04
      000FD0 12 15 3D         [24] 3188 	lcall	_OLED_SetCursor
                                   3189 ;	./src/main.c:564: OLED_DisplayChar('0'+now_col);
      000FD3 AF 39            [24] 3190 	mov	r7,_now_col
      000FD5 74 30            [12] 3191 	mov	a,#0x30
      000FD7 2F               [12] 3192 	add	a,r7
      000FD8 F5 82            [12] 3193 	mov	dpl,a
      000FDA 12 14 96         [24] 3194 	lcall	_OLED_DisplayChar
                                   3195 ;	./src/main.c:565: OLED_SetCursor(5, 70);
      000FDD 75 0B 46         [24] 3196 	mov	_OLED_SetCursor_PARM_2,#0x46
      000FE0 75 82 05         [24] 3197 	mov	dpl,#0x05
      000FE3 12 15 3D         [24] 3198 	lcall	_OLED_SetCursor
                                   3199 ;	./src/main.c:566: OLED_DisplayChar(player_score[turn]/10+'0');
      000FE6 E5 3C            [12] 3200 	mov	a,_turn
      000FE8 24 4B            [12] 3201 	add	a,#_player_score
      000FEA F9               [12] 3202 	mov	r1,a
      000FEB 87 07            [24] 3203 	mov	ar7,@r1
      000FED 7E 00            [12] 3204 	mov	r6,#0x00
      000FEF 75 0F 0A         [24] 3205 	mov	__divsint_PARM_2,#0x0a
                                   3206 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000FF2 8E 10            [24] 3207 	mov	(__divsint_PARM_2 + 1),r6
      000FF4 8F 82            [24] 3208 	mov	dpl,r7
      000FF6 8E 83            [24] 3209 	mov	dph,r6
      000FF8 12 17 45         [24] 3210 	lcall	__divsint
      000FFB AE 82            [24] 3211 	mov	r6,dpl
      000FFD 74 30            [12] 3212 	mov	a,#0x30
      000FFF 2E               [12] 3213 	add	a,r6
      001000 F5 82            [12] 3214 	mov	dpl,a
      001002 12 14 96         [24] 3215 	lcall	_OLED_DisplayChar
                                   3216 ;	./src/main.c:567: OLED_DisplayChar(player_score[turn]%10 + '0');
      001005 E5 3C            [12] 3217 	mov	a,_turn
      001007 24 4B            [12] 3218 	add	a,#_player_score
      001009 F9               [12] 3219 	mov	r1,a
      00100A 87 07            [24] 3220 	mov	ar7,@r1
      00100C 7E 00            [12] 3221 	mov	r6,#0x00
      00100E 75 0F 0A         [24] 3222 	mov	__modsint_PARM_2,#0x0a
                                   3223 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      001011 8E 10            [24] 3224 	mov	(__modsint_PARM_2 + 1),r6
      001013 8F 82            [24] 3225 	mov	dpl,r7
      001015 8E 83            [24] 3226 	mov	dph,r6
      001017 12 17 0F         [24] 3227 	lcall	__modsint
      00101A AE 82            [24] 3228 	mov	r6,dpl
      00101C 74 30            [12] 3229 	mov	a,#0x30
      00101E 2E               [12] 3230 	add	a,r6
      00101F F5 82            [12] 3231 	mov	dpl,a
      001021 12 14 96         [24] 3232 	lcall	_OLED_DisplayChar
                                   3233 ;	./src/main.c:568: now_key = Get_Key();
      001024 12 12 A6         [24] 3234 	lcall	_Get_Key
      001027 AE 82            [24] 3235 	mov	r6,dpl
      001029 AF 83            [24] 3236 	mov	r7,dph
                                   3237 ;	./src/main.c:569: if (now_key != 0){
      00102B EE               [12] 3238 	mov	a,r6
      00102C F5 29            [12] 3239 	mov	_now_key,a
      00102E 70 03            [24] 3240 	jnz	00296$
      001030 02 10 DF         [24] 3241 	ljmp	00115$
      001033                       3242 00296$:
                                   3243 ;	./src/main.c:570: delay_ms(10);
      001033 90 00 0A         [24] 3244 	mov	dptr,#0x000a
      001036 12 12 F2         [24] 3245 	lcall	_delay_ms
                                   3246 ;	./src/main.c:571: if (now_key == Get_Key()){
      001039 12 12 A6         [24] 3247 	lcall	_Get_Key
      00103C AE 82            [24] 3248 	mov	r6,dpl
      00103E AF 83            [24] 3249 	mov	r7,dph
      001040 AC 29            [24] 3250 	mov	r4,_now_key
      001042 7D 00            [12] 3251 	mov	r5,#0x00
      001044 EC               [12] 3252 	mov	a,r4
      001045 B5 06 06         [24] 3253 	cjne	a,ar6,00297$
      001048 ED               [12] 3254 	mov	a,r5
      001049 B5 07 02         [24] 3255 	cjne	a,ar7,00297$
      00104C 80 03            [24] 3256 	sjmp	00298$
      00104E                       3257 00297$:
      00104E 02 10 DF         [24] 3258 	ljmp	00115$
      001051                       3259 00298$:
                                   3260 ;	./src/main.c:572: nxt_col = now_col;nxt_row = now_row;
      001051 85 39 37         [24] 3261 	mov	_nxt_col,_now_col
      001054 85 38 36         [24] 3262 	mov	_nxt_row,_now_row
                                   3263 ;	./src/main.c:573: if (now_key == 3){
      001057 74 03            [12] 3264 	mov	a,#0x03
      001059 B5 29 15         [24] 3265 	cjne	a,_now_key,00110$
                                   3266 ;	./src/main.c:574: nxt_row = (now_row <= 0)? 0:now_row-1;
      00105C E5 38            [12] 3267 	mov	a,_now_row
      00105E 70 04            [24] 3268 	jnz	00159$
      001060 FE               [12] 3269 	mov	r6,a
      001061 FF               [12] 3270 	mov	r7,a
      001062 80 09            [24] 3271 	sjmp	00160$
      001064                       3272 00159$:
      001064 AD 38            [24] 3273 	mov	r5,_now_row
      001066 1D               [12] 3274 	dec	r5
      001067 ED               [12] 3275 	mov	a,r5
      001068 FE               [12] 3276 	mov	r6,a
      001069 33               [12] 3277 	rlc	a
      00106A 95 E0            [12] 3278 	subb	a,acc
      00106C FF               [12] 3279 	mov	r7,a
      00106D                       3280 00160$:
      00106D 8E 36            [24] 3281 	mov	_nxt_row,r6
      00106F 80 54            [24] 3282 	sjmp	00111$
      001071                       3283 00110$:
                                   3284 ;	./src/main.c:575: }else if (now_key == 4){
      001071 74 04            [12] 3285 	mov	a,#0x04
      001073 B5 29 16         [24] 3286 	cjne	a,_now_key,00107$
                                   3287 ;	./src/main.c:576: nxt_row = (now_row >= 7)? now_row:now_row+1;
      001076 C3               [12] 3288 	clr	c
      001077 E5 38            [12] 3289 	mov	a,_now_row
      001079 94 07            [12] 3290 	subb	a,#0x07
      00107B 92 03            [24] 3291 	mov	_mode4_sloc0_1_0,c
      00107D 40 04            [24] 3292 	jc	00161$
      00107F AF 38            [24] 3293 	mov	r7,_now_row
      001081 80 05            [24] 3294 	sjmp	00162$
      001083                       3295 00161$:
      001083 E5 38            [12] 3296 	mov	a,_now_row
      001085 FE               [12] 3297 	mov	r6,a
      001086 04               [12] 3298 	inc	a
      001087 FF               [12] 3299 	mov	r7,a
      001088                       3300 00162$:
      001088 8F 36            [24] 3301 	mov	_nxt_row,r7
      00108A 80 39            [24] 3302 	sjmp	00111$
      00108C                       3303 00107$:
                                   3304 ;	./src/main.c:577: }else if (now_key == 7){
      00108C 74 07            [12] 3305 	mov	a,#0x07
      00108E B5 29 1B         [24] 3306 	cjne	a,_now_key,00104$
                                   3307 ;	./src/main.c:578: nxt_col = (now_col <= 1)? 1:now_col-1;
      001091 E5 39            [12] 3308 	mov	a,_now_col
      001093 24 FE            [12] 3309 	add	a,#0xff - 0x01
      001095 92 03            [24] 3310 	mov	_mode4_sloc0_1_0,c
      001097 40 06            [24] 3311 	jc	00163$
      001099 7E 01            [12] 3312 	mov	r6,#0x01
      00109B 7F 00            [12] 3313 	mov	r7,#0x00
      00109D 80 09            [24] 3314 	sjmp	00164$
      00109F                       3315 00163$:
      00109F AD 39            [24] 3316 	mov	r5,_now_col
      0010A1 1D               [12] 3317 	dec	r5
      0010A2 ED               [12] 3318 	mov	a,r5
      0010A3 FE               [12] 3319 	mov	r6,a
      0010A4 33               [12] 3320 	rlc	a
      0010A5 95 E0            [12] 3321 	subb	a,acc
      0010A7 FF               [12] 3322 	mov	r7,a
      0010A8                       3323 00164$:
      0010A8 8E 37            [24] 3324 	mov	_nxt_col,r6
      0010AA 80 19            [24] 3325 	sjmp	00111$
      0010AC                       3326 00104$:
                                   3327 ;	./src/main.c:579: }else if (now_key == 8){
      0010AC 74 08            [12] 3328 	mov	a,#0x08
      0010AE B5 29 14         [24] 3329 	cjne	a,_now_key,00111$
                                   3330 ;	./src/main.c:580: nxt_col = (now_col >= 8)? now_col:now_col+1;
      0010B1 C3               [12] 3331 	clr	c
      0010B2 E5 39            [12] 3332 	mov	a,_now_col
      0010B4 94 08            [12] 3333 	subb	a,#0x08
      0010B6 92 03            [24] 3334 	mov	_mode4_sloc0_1_0,c
      0010B8 40 04            [24] 3335 	jc	00165$
      0010BA AF 39            [24] 3336 	mov	r7,_now_col
      0010BC 80 05            [24] 3337 	sjmp	00166$
      0010BE                       3338 00165$:
      0010BE E5 39            [12] 3339 	mov	a,_now_col
      0010C0 FE               [12] 3340 	mov	r6,a
      0010C1 04               [12] 3341 	inc	a
      0010C2 FF               [12] 3342 	mov	r7,a
      0010C3                       3343 00166$:
      0010C3 8F 37            [24] 3344 	mov	_nxt_col,r7
      0010C5                       3345 00111$:
                                   3346 ;	./src/main.c:582: now_col = nxt_col;
      0010C5 85 37 39         [24] 3347 	mov	_now_col,_nxt_col
                                   3348 ;	./src/main.c:583: now_row = nxt_row;
      0010C8 85 36 38         [24] 3349 	mov	_now_row,_nxt_row
                                   3350 ;	./src/main.c:584: player[turn][0] = now_col;
      0010CB E5 3C            [12] 3351 	mov	a,_turn
      0010CD 25 3C            [12] 3352 	add	a,_turn
      0010CF 24 45            [12] 3353 	add	a,#_player
      0010D1 F8               [12] 3354 	mov	r0,a
      0010D2 A6 39            [24] 3355 	mov	@r0,_now_col
                                   3356 ;	./src/main.c:585: player[turn][1] = now_row;
      0010D4 E5 3C            [12] 3357 	mov	a,_turn
      0010D6 25 3C            [12] 3358 	add	a,_turn
      0010D8 24 45            [12] 3359 	add	a,#_player
      0010DA FF               [12] 3360 	mov	r7,a
      0010DB 04               [12] 3361 	inc	a
      0010DC F8               [12] 3362 	mov	r0,a
      0010DD A6 38            [24] 3363 	mov	@r0,_now_row
      0010DF                       3364 00115$:
                                   3365 ;	./src/main.c:589: if (but4 == 0){
      0010DF 20 A1 23         [24] 3366 	jb	_P2_1,00119$
                                   3367 ;	./src/main.c:590: delay_ms(10);
      0010E2 90 00 0A         [24] 3368 	mov	dptr,#0x000a
      0010E5 12 12 F2         [24] 3369 	lcall	_delay_ms
                                   3370 ;	./src/main.c:591: if (but4 == 0){
      0010E8 20 A1 1A         [24] 3371 	jb	_P2_1,00119$
                                   3372 ;	./src/main.c:592: player[turn][0] = now_col;
      0010EB E5 3C            [12] 3373 	mov	a,_turn
      0010ED 25 3C            [12] 3374 	add	a,_turn
      0010EF 24 45            [12] 3375 	add	a,#_player
      0010F1 F8               [12] 3376 	mov	r0,a
      0010F2 A6 39            [24] 3377 	mov	@r0,_now_col
                                   3378 ;	./src/main.c:593: player[turn][1] = now_row;
      0010F4 E5 3C            [12] 3379 	mov	a,_turn
      0010F6 25 3C            [12] 3380 	add	a,_turn
      0010F8 24 45            [12] 3381 	add	a,#_player
      0010FA FF               [12] 3382 	mov	r7,a
      0010FB 04               [12] 3383 	inc	a
      0010FC F8               [12] 3384 	mov	r0,a
      0010FD A6 38            [24] 3385 	mov	@r0,_now_row
                                   3386 ;	./src/main.c:594: mode = 3;
      0010FF 75 23 03         [24] 3387 	mov	_mode,#0x03
                                   3388 ;	./src/main.c:595: break;
      001102 02 12 7D         [24] 3389 	ljmp	00144$
      001105                       3390 00119$:
                                   3391 ;	./src/main.c:598: if (but3 == 0){
      001105 30 A0 03         [24] 3392 	jnb	_P2_0,00313$
      001108 02 11 EA         [24] 3393 	ljmp	00133$
      00110B                       3394 00313$:
                                   3395 ;	./src/main.c:599: delay_ms(10);
      00110B 90 00 0A         [24] 3396 	mov	dptr,#0x000a
      00110E 12 12 F2         [24] 3397 	lcall	_delay_ms
                                   3398 ;	./src/main.c:600: if (but3 == 0){
      001111 30 A0 03         [24] 3399 	jnb	_P2_0,00314$
      001114 02 11 EA         [24] 3400 	ljmp	00133$
      001117                       3401 00314$:
                                   3402 ;	./src/main.c:601: if (Get_Dot(now_col, now_row, 3) != 0){ // 猜到重覆
      001117 85 38 0F         [24] 3403 	mov	_Get_Dot_PARM_2,_now_row
      00111A 75 10 03         [24] 3404 	mov	_Get_Dot_PARM_3,#0x03
      00111D 85 39 82         [24] 3405 	mov	dpl,_now_col
      001120 12 0E B2         [24] 3406 	lcall	_Get_Dot
      001123 E5 82            [12] 3407 	mov	a,dpl
      001125 60 27            [24] 3408 	jz	00122$
                                   3409 ;	./src/main.c:602: for(in_i = 0;in_i < 523;in_i++){
      001127 E4               [12] 3410 	clr	a
      001128 F5 21            [12] 3411 	mov	_in_i,a
      00112A F5 22            [12] 3412 	mov	(_in_i + 1),a
      00112C                       3413 00147$:
                                   3414 ;	./src/main.c:603: P3_7 = 1;
                                   3415 ;	assignBit
      00112C D2 B7            [12] 3416 	setb	_P3_7
                                   3417 ;	./src/main.c:604: Delay_Do();
      00112E 12 13 19         [24] 3418 	lcall	_Delay_Do
                                   3419 ;	./src/main.c:605: P3_7 = 0;
                                   3420 ;	assignBit
      001131 C2 B7            [12] 3421 	clr	_P3_7
                                   3422 ;	./src/main.c:606: Delay_Do();
      001133 12 13 19         [24] 3423 	lcall	_Delay_Do
                                   3424 ;	./src/main.c:602: for(in_i = 0;in_i < 523;in_i++){
      001136 05 21            [12] 3425 	inc	_in_i
      001138 E4               [12] 3426 	clr	a
      001139 B5 21 02         [24] 3427 	cjne	a,_in_i,00316$
      00113C 05 22            [12] 3428 	inc	(_in_i + 1)
      00113E                       3429 00316$:
      00113E C3               [12] 3430 	clr	c
      00113F E5 21            [12] 3431 	mov	a,_in_i
      001141 94 0B            [12] 3432 	subb	a,#0x0b
      001143 E5 22            [12] 3433 	mov	a,(_in_i + 1)
      001145 64 80            [12] 3434 	xrl	a,#0x80
      001147 94 82            [12] 3435 	subb	a,#0x82
      001149 40 E1            [24] 3436 	jc	00147$
                                   3437 ;	./src/main.c:608: continue;
      00114B 02 0F A4         [24] 3438 	ljmp	00142$
      00114E                       3439 00122$:
                                   3440 ;	./src/main.c:610: draw(now_col, now_row, now_col, now_row, 3);
      00114E 85 38 0F         [24] 3441 	mov	_draw_PARM_2,_now_row
      001151 85 39 10         [24] 3442 	mov	_draw_PARM_3,_now_col
      001154 85 38 11         [24] 3443 	mov	_draw_PARM_4,_now_row
      001157 75 12 03         [24] 3444 	mov	_draw_PARM_5,#0x03
      00115A 85 39 82         [24] 3445 	mov	dpl,_now_col
      00115D 12 0D BC         [24] 3446 	lcall	_draw
                                   3447 ;	./src/main.c:611: if ((Get_Dot(now_col, now_row, 0) == 0)){ // 猜錯
      001160 85 38 0F         [24] 3448 	mov	_Get_Dot_PARM_2,_now_row
      001163 75 10 00         [24] 3449 	mov	_Get_Dot_PARM_3,#0x00
      001166 85 39 82         [24] 3450 	mov	dpl,_now_col
      001169 12 0E B2         [24] 3451 	lcall	_Get_Dot
      00116C E5 82            [12] 3452 	mov	a,dpl
                                   3453 ;	./src/main.c:612: for(in_i = 0;in_i < 523;in_i++){
      00116E 70 3D            [24] 3454 	jnz	00128$
      001170 F5 21            [12] 3455 	mov	_in_i,a
      001172 F5 22            [12] 3456 	mov	(_in_i + 1),a
      001174                       3457 00149$:
                                   3458 ;	./src/main.c:613: P3_7 = 1;
                                   3459 ;	assignBit
      001174 D2 B7            [12] 3460 	setb	_P3_7
                                   3461 ;	./src/main.c:614: Delay_Do();
      001176 12 13 19         [24] 3462 	lcall	_Delay_Do
                                   3463 ;	./src/main.c:615: P3_7 = 0;
                                   3464 ;	assignBit
      001179 C2 B7            [12] 3465 	clr	_P3_7
                                   3466 ;	./src/main.c:616: Delay_Do();
      00117B 12 13 19         [24] 3467 	lcall	_Delay_Do
                                   3468 ;	./src/main.c:612: for(in_i = 0;in_i < 523;in_i++){
      00117E 05 21            [12] 3469 	inc	_in_i
      001180 E4               [12] 3470 	clr	a
      001181 B5 21 02         [24] 3471 	cjne	a,_in_i,00319$
      001184 05 22            [12] 3472 	inc	(_in_i + 1)
      001186                       3473 00319$:
      001186 C3               [12] 3474 	clr	c
      001187 E5 21            [12] 3475 	mov	a,_in_i
      001189 94 0B            [12] 3476 	subb	a,#0x0b
      00118B E5 22            [12] 3477 	mov	a,(_in_i + 1)
      00118D 64 80            [12] 3478 	xrl	a,#0x80
      00118F 94 82            [12] 3479 	subb	a,#0x82
      001191 40 E1            [24] 3480 	jc	00149$
                                   3481 ;	./src/main.c:618: player[turn][0] = now_col;
      001193 E5 3C            [12] 3482 	mov	a,_turn
      001195 25 3C            [12] 3483 	add	a,_turn
      001197 24 45            [12] 3484 	add	a,#_player
      001199 F8               [12] 3485 	mov	r0,a
      00119A A6 39            [24] 3486 	mov	@r0,_now_col
                                   3487 ;	./src/main.c:619: player[turn][1] = now_row;
      00119C E5 3C            [12] 3488 	mov	a,_turn
      00119E 25 3C            [12] 3489 	add	a,_turn
      0011A0 24 45            [12] 3490 	add	a,#_player
      0011A2 FF               [12] 3491 	mov	r7,a
      0011A3 04               [12] 3492 	inc	a
      0011A4 F8               [12] 3493 	mov	r0,a
      0011A5 A6 38            [24] 3494 	mov	@r0,_now_row
                                   3495 ;	./src/main.c:620: mode = 3;
      0011A7 75 23 03         [24] 3496 	mov	_mode,#0x03
                                   3497 ;	./src/main.c:621: break;
      0011AA 02 12 7D         [24] 3498 	ljmp	00144$
      0011AD                       3499 00128$:
                                   3500 ;	./src/main.c:623: for(in_i = 0;in_i < 588;in_i++){// 猜對
      0011AD E4               [12] 3501 	clr	a
      0011AE F5 21            [12] 3502 	mov	_in_i,a
      0011B0 F5 22            [12] 3503 	mov	(_in_i + 1),a
      0011B2                       3504 00151$:
                                   3505 ;	./src/main.c:624: P3_7 = 1;
                                   3506 ;	assignBit
      0011B2 D2 B7            [12] 3507 	setb	_P3_7
                                   3508 ;	./src/main.c:625: Delay_Re();
      0011B4 12 13 27         [24] 3509 	lcall	_Delay_Re
                                   3510 ;	./src/main.c:626: P3_7 = 0;
                                   3511 ;	assignBit
      0011B7 C2 B7            [12] 3512 	clr	_P3_7
                                   3513 ;	./src/main.c:627: Delay_Re();
      0011B9 12 13 27         [24] 3514 	lcall	_Delay_Re
                                   3515 ;	./src/main.c:623: for(in_i = 0;in_i < 588;in_i++){// 猜對
      0011BC 05 21            [12] 3516 	inc	_in_i
      0011BE E4               [12] 3517 	clr	a
      0011BF B5 21 02         [24] 3518 	cjne	a,_in_i,00321$
      0011C2 05 22            [12] 3519 	inc	(_in_i + 1)
      0011C4                       3520 00321$:
      0011C4 C3               [12] 3521 	clr	c
      0011C5 E5 21            [12] 3522 	mov	a,_in_i
      0011C7 94 4C            [12] 3523 	subb	a,#0x4c
      0011C9 E5 22            [12] 3524 	mov	a,(_in_i + 1)
      0011CB 64 80            [12] 3525 	xrl	a,#0x80
      0011CD 94 82            [12] 3526 	subb	a,#0x82
      0011CF 40 E1            [24] 3527 	jc	00151$
                                   3528 ;	./src/main.c:629: player_score[turn]+=1;
      0011D1 E5 3C            [12] 3529 	mov	a,_turn
      0011D3 24 4B            [12] 3530 	add	a,#_player_score
      0011D5 F9               [12] 3531 	mov	r1,a
      0011D6 07               [12] 3532 	inc	@r1
      0011D7 E7               [12] 3533 	mov	a,@r1
                                   3534 ;	./src/main.c:630: if (player_score[turn] >= 17){
      0011D8 E5 3C            [12] 3535 	mov	a,_turn
      0011DA 24 4B            [12] 3536 	add	a,#_player_score
      0011DC F9               [12] 3537 	mov	r1,a
      0011DD 87 07            [24] 3538 	mov	ar7,@r1
      0011DF BF 11 00         [24] 3539 	cjne	r7,#0x11,00323$
      0011E2                       3540 00323$:
      0011E2 40 06            [24] 3541 	jc	00133$
                                   3542 ;	./src/main.c:631: winner = turn;
      0011E4 85 3C 24         [24] 3543 	mov	_winner,_turn
                                   3544 ;	./src/main.c:632: break;
      0011E7 02 12 7D         [24] 3545 	ljmp	00144$
      0011EA                       3546 00133$:
                                   3547 ;	./src/main.c:637: for (i=1;i<=8;i++){
      0011EA 75 2E 01         [24] 3548 	mov	_i,#0x01
      0011ED                       3549 00153$:
                                   3550 ;	./src/main.c:638: mask = 0;
      0011ED 75 28 00         [24] 3551 	mov	_mask,#0x00
                                   3552 ;	./src/main.c:639: if (i == now_col)mask = 1 << now_row;
      0011F0 E5 39            [12] 3553 	mov	a,_now_col
      0011F2 B5 2E 13         [24] 3554 	cjne	a,_i,00135$
      0011F5 AF 38            [24] 3555 	mov	r7,_now_row
      0011F7 8F F0            [24] 3556 	mov	b,r7
      0011F9 05 F0            [12] 3557 	inc	b
      0011FB 74 01            [12] 3558 	mov	a,#0x01
      0011FD 80 02            [24] 3559 	sjmp	00329$
      0011FF                       3560 00327$:
      0011FF 25 E0            [12] 3561 	add	a,acc
      001201                       3562 00329$:
      001201 D5 F0 FB         [24] 3563 	djnz	b,00327$
      001204 F5 28            [12] 3564 	mov	_mask,a
      001206 80 03            [24] 3565 	sjmp	00136$
      001208                       3566 00135$:
                                   3567 ;	./src/main.c:640: else mask = 0;
      001208 75 28 00         [24] 3568 	mov	_mask,#0x00
      00120B                       3569 00136$:
                                   3570 ;	./src/main.c:641: Writesingle7219(3, i, (mat2_1[i] | mask));
      00120B E5 2E            [12] 3571 	mov	a,_i
      00120D 24 60            [12] 3572 	add	a,#_mat2_1
      00120F F9               [12] 3573 	mov	r1,a
      001210 87 07            [24] 3574 	mov	ar7,@r1
      001212 E5 28            [12] 3575 	mov	a,_mask
      001214 4F               [12] 3576 	orl	a,r7
      001215 F5 0E            [12] 3577 	mov	_Writesingle7219_PARM_3,a
      001217 85 2E 0D         [24] 3578 	mov	_Writesingle7219_PARM_2,_i
      00121A 75 82 03         [24] 3579 	mov	dpl,#0x03
      00121D 12 15 DB         [24] 3580 	lcall	_Writesingle7219
                                   3581 ;	./src/main.c:637: for (i=1;i<=8;i++){
      001220 05 2E            [12] 3582 	inc	_i
      001222 E5 2E            [12] 3583 	mov	a,_i
      001224 24 F7            [12] 3584 	add	a,#0xff - 0x08
      001226 50 C5            [24] 3585 	jnc	00153$
                                   3586 ;	./src/main.c:642: }delay_ms(100);
      001228 90 00 64         [24] 3587 	mov	dptr,#0x0064
      00122B 12 12 F2         [24] 3588 	lcall	_delay_ms
                                   3589 ;	./src/main.c:643: for (i=1;i<=8;i++){
      00122E 75 2E 01         [24] 3590 	mov	_i,#0x01
      001231                       3591 00155$:
                                   3592 ;	./src/main.c:644: mask = 0;
      001231 75 28 00         [24] 3593 	mov	_mask,#0x00
                                   3594 ;	./src/main.c:645: if (now_col == i)mask |= 1<<now_row;
      001234 E5 2E            [12] 3595 	mov	a,_i
      001236 B5 39 13         [24] 3596 	cjne	a,_now_col,00139$
      001239 AF 38            [24] 3597 	mov	r7,_now_row
      00123B 8F F0            [24] 3598 	mov	b,r7
      00123D 05 F0            [12] 3599 	inc	b
      00123F 74 01            [12] 3600 	mov	a,#0x01
      001241 80 02            [24] 3601 	sjmp	00335$
      001243                       3602 00333$:
      001243 25 E0            [12] 3603 	add	a,acc
      001245                       3604 00335$:
      001245 D5 F0 FB         [24] 3605 	djnz	b,00333$
      001248 F5 28            [12] 3606 	mov	_mask,a
      00124A 80 03            [24] 3607 	sjmp	00140$
      00124C                       3608 00139$:
                                   3609 ;	./src/main.c:646: else mask = 0;
      00124C 75 28 00         [24] 3610 	mov	_mask,#0x00
      00124F                       3611 00140$:
                                   3612 ;	./src/main.c:647: mask |= (mat1_1[i] & mat2_1[i]);
      00124F E5 2E            [12] 3613 	mov	a,_i
      001251 24 4E            [12] 3614 	add	a,#_mat1_1
      001253 F9               [12] 3615 	mov	r1,a
      001254 87 07            [24] 3616 	mov	ar7,@r1
      001256 E5 2E            [12] 3617 	mov	a,_i
      001258 24 60            [12] 3618 	add	a,#_mat2_1
      00125A F9               [12] 3619 	mov	r1,a
      00125B E7               [12] 3620 	mov	a,@r1
      00125C 5F               [12] 3621 	anl	a,r7
      00125D 42 28            [12] 3622 	orl	_mask,a
                                   3623 ;	./src/main.c:648: mask = ~mask;
      00125F E5 28            [12] 3624 	mov	a,_mask
      001261 F4               [12] 3625 	cpl	a
                                   3626 ;	./src/main.c:649: Writesingle7219(3, i, mat2_1[i]&mask);
      001262 F5 28            [12] 3627 	mov	_mask,a
      001264 87 07            [24] 3628 	mov	ar7,@r1
      001266 5F               [12] 3629 	anl	a,r7
      001267 F5 0E            [12] 3630 	mov	_Writesingle7219_PARM_3,a
      001269 85 2E 0D         [24] 3631 	mov	_Writesingle7219_PARM_2,_i
      00126C 75 82 03         [24] 3632 	mov	dpl,#0x03
      00126F 12 15 DB         [24] 3633 	lcall	_Writesingle7219
                                   3634 ;	./src/main.c:643: for (i=1;i<=8;i++){
      001272 05 2E            [12] 3635 	inc	_i
      001274 E5 2E            [12] 3636 	mov	a,_i
      001276 24 F7            [12] 3637 	add	a,#0xff - 0x08
      001278 50 B7            [24] 3638 	jnc	00155$
      00127A 02 0F A4         [24] 3639 	ljmp	00142$
      00127D                       3640 00144$:
                                   3641 ;	./src/main.c:652: if (winner != 0){
      00127D E5 24            [12] 3642 	mov	a,_winner
      00127F 60 03            [24] 3643 	jz	00157$
                                   3644 ;	./src/main.c:653: mode = 5;
      001281 75 23 05         [24] 3645 	mov	_mode,#0x05
      001284                       3646 00157$:
                                   3647 ;	./src/main.c:658: }
      001284 22               [24] 3648 	ret
                                   3649 ;------------------------------------------------------------
                                   3650 ;Allocation info for local variables in function 'mode5'
                                   3651 ;------------------------------------------------------------
                                   3652 ;	./src/main.c:659: void mode5(void){
                                   3653 ;	-----------------------------------------
                                   3654 ;	 function mode5
                                   3655 ;	-----------------------------------------
      001285                       3656 _mode5:
                                   3657 ;	./src/main.c:660: OLED_Clear();
      001285 12 15 12         [24] 3658 	lcall	_OLED_Clear
                                   3659 ;	./src/main.c:661: OLED_SetCursor(3, 13);
      001288 75 0B 0D         [24] 3660 	mov	_OLED_SetCursor_PARM_2,#0x0d
      00128B 75 82 03         [24] 3661 	mov	dpl,#0x03
      00128E 12 15 3D         [24] 3662 	lcall	_OLED_SetCursor
                                   3663 ;	./src/main.c:662: OLED_DisplayString("Winner is player");
      001291 90 18 4C         [24] 3664 	mov	dptr,#___str_16
      001294 75 F0 80         [24] 3665 	mov	b,#0x80
      001297 12 14 E7         [24] 3666 	lcall	_OLED_DisplayString
                                   3667 ;	./src/main.c:663: OLED_DisplayChar('0'+winner);
      00129A AF 24            [24] 3668 	mov	r7,_winner
      00129C 74 30            [12] 3669 	mov	a,#0x30
      00129E 2F               [12] 3670 	add	a,r7
      00129F F5 82            [12] 3671 	mov	dpl,a
      0012A1 12 14 96         [24] 3672 	lcall	_OLED_DisplayChar
                                   3673 ;	./src/main.c:664: while (1);
      0012A4                       3674 00102$:
                                   3675 ;	./src/main.c:665: }
      0012A4 80 FE            [24] 3676 	sjmp	00102$
                                   3677 	.area CSEG    (CODE)
                                   3678 	.area CONST   (CODE)
                                   3679 	.area CONST   (CODE)
      001781                       3680 ___str_0:
      001781 50 72 65 73 73 20 62  3681 	.ascii "Press but1"
             75 74 31
      00178B 00                    3682 	.db 0x00
                                   3683 	.area CSEG    (CODE)
                                   3684 	.area CONST   (CODE)
      00178C                       3685 ___str_1:
      00178C 62 75 74 34 20 74 6F  3686 	.ascii "but4 to start"
             20 73 74 61 72 74
      001799 00                    3687 	.db 0x00
                                   3688 	.area CSEG    (CODE)
                                   3689 	.area CONST   (CODE)
      00179A                       3690 ___str_2:
      00179A 50 6C 61 79 65 72 31  3691 	.ascii "Player1 is ready"
             20 69 73 20 72 65 61
             64 79
      0017AA 00                    3692 	.db 0x00
                                   3693 	.area CSEG    (CODE)
                                   3694 	.area CONST   (CODE)
      0017AB                       3695 ___str_3:
      0017AB 57 61 69 74 20 66 6F  3696 	.ascii "Wait for player1"
             72 20 70 6C 61 79 65
             72 31
      0017BB 00                    3697 	.db 0x00
                                   3698 	.area CSEG    (CODE)
                                   3699 	.area CONST   (CODE)
      0017BC                       3700 ___str_4:
      0017BC 50 6C 61 79 65 72 32  3701 	.ascii "Player2 is ready"
             20 69 73 20 72 65 61
             64 79
      0017CC 00                    3702 	.db 0x00
                                   3703 	.area CSEG    (CODE)
                                   3704 	.area CONST   (CODE)
      0017CD                       3705 ___str_5:
      0017CD 57 61 69 74 20 66 6F  3706 	.ascii "Wait for player2"
             72 20 70 6C 61 79 65
             72 32
      0017DD 00                    3707 	.db 0x00
                                   3708 	.area CSEG    (CODE)
                                   3709 	.area CONST   (CODE)
      0017DE                       3710 ___str_6:
      0017DE 50 6C 61 79 65 72 31  3711 	.ascii "Player1 setting "
             20 73 65 74 74 69 6E
             67 20
      0017EE 00                    3712 	.db 0x00
                                   3713 	.area CSEG    (CODE)
                                   3714 	.area CONST   (CODE)
      0017EF                       3715 ___str_7:
      0017EF 73 65 74 74 69 6E 67  3716 	.ascii "setting "
             20
      0017F7 00                    3717 	.db 0x00
                                   3718 	.area CSEG    (CODE)
                                   3719 	.area CONST   (CODE)
      0017F8                       3720 ___str_8:
      0017F8 73 65 74 20 72 6F 77  3721 	.ascii "set row: "
             3A 20
      001801 00                    3722 	.db 0x00
                                   3723 	.area CSEG    (CODE)
                                   3724 	.area CONST   (CODE)
      001802                       3725 ___str_9:
      001802 73 65 74 20 63 6F 6C  3726 	.ascii "set col: "
             3A 20
      00180B 00                    3727 	.db 0x00
                                   3728 	.area CSEG    (CODE)
                                   3729 	.area CONST   (CODE)
      00180C                       3730 ___str_10:
      00180C 50 6C 61 79 65 72 32  3731 	.ascii "Player2 setting "
             20 73 65 74 74 69 6E
             67 20
      00181C 00                    3732 	.db 0x00
                                   3733 	.area CSEG    (CODE)
                                   3734 	.area CONST   (CODE)
      00181D                       3735 ___str_11:
      00181D 50 6C 61 79 65 72 20  3736 	.ascii "Player "
      001824 00                    3737 	.db 0x00
                                   3738 	.area CSEG    (CODE)
                                   3739 	.area CONST   (CODE)
      001825                       3740 ___str_12:
      001825 20 74 75 72 6E 20     3741 	.ascii " turn "
      00182B 00                    3742 	.db 0x00
                                   3743 	.area CSEG    (CODE)
                                   3744 	.area CONST   (CODE)
      00182C                       3745 ___str_13:
      00182C 6E 6F 77 20 72 6F 77  3746 	.ascii "now row: "
             3A 20
      001835 00                    3747 	.db 0x00
                                   3748 	.area CSEG    (CODE)
                                   3749 	.area CONST   (CODE)
      001836                       3750 ___str_14:
      001836 6E 6F 77 20 63 6F 6C  3751 	.ascii "now col: "
             3A 20
      00183F 00                    3752 	.db 0x00
                                   3753 	.area CSEG    (CODE)
                                   3754 	.area CONST   (CODE)
      001840                       3755 ___str_15:
      001840 6E 6F 77 20 73 63 6F  3756 	.ascii "now score: "
             72 65 3A 20
      00184B 00                    3757 	.db 0x00
                                   3758 	.area CSEG    (CODE)
                                   3759 	.area CONST   (CODE)
      00184C                       3760 ___str_16:
      00184C 57 69 6E 6E 65 72 20  3761 	.ascii "Winner is player"
             69 73 20 70 6C 61 79
             65 72
      00185C 00                    3762 	.db 0x00
                                   3763 	.area CSEG    (CODE)
                                   3764 	.area XINIT   (CODE)
                                   3765 	.area CABS    (ABS,CODE)

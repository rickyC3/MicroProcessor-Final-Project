                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module delay
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delay_ms
                                     12 	.globl _Delay_Do
                                     13 	.globl _Delay_Re
                                     14 ;--------------------------------------------------------
                                     15 ; special function registers
                                     16 ;--------------------------------------------------------
                                     17 	.area RSEG    (ABS,DATA)
      000000                         18 	.org 0x0000
                                     19 ;--------------------------------------------------------
                                     20 ; special function bits
                                     21 ;--------------------------------------------------------
                                     22 	.area RSEG    (ABS,DATA)
      000000                         23 	.org 0x0000
                                     24 ;--------------------------------------------------------
                                     25 ; overlayable register banks
                                     26 ;--------------------------------------------------------
                                     27 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         28 	.ds 8
                                     29 ;--------------------------------------------------------
                                     30 ; internal ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DSEG    (DATA)
                                     33 ;--------------------------------------------------------
                                     34 ; overlayable items in internal ram 
                                     35 ;--------------------------------------------------------
                                     36 	.area	OSEG    (OVR,DATA)
                                     37 ;--------------------------------------------------------
                                     38 ; indirectly addressable internal ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area ISEG    (DATA)
                                     41 ;--------------------------------------------------------
                                     42 ; absolute internal ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area IABS    (ABS,DATA)
                                     45 	.area IABS    (ABS,DATA)
                                     46 ;--------------------------------------------------------
                                     47 ; bit data
                                     48 ;--------------------------------------------------------
                                     49 	.area BSEG    (BIT)
                                     50 ;--------------------------------------------------------
                                     51 ; paged external ram data
                                     52 ;--------------------------------------------------------
                                     53 	.area PSEG    (PAG,XDATA)
                                     54 ;--------------------------------------------------------
                                     55 ; external ram data
                                     56 ;--------------------------------------------------------
                                     57 	.area XSEG    (XDATA)
                                     58 ;--------------------------------------------------------
                                     59 ; absolute external ram data
                                     60 ;--------------------------------------------------------
                                     61 	.area XABS    (ABS,XDATA)
                                     62 ;--------------------------------------------------------
                                     63 ; external initialized ram data
                                     64 ;--------------------------------------------------------
                                     65 	.area XISEG   (XDATA)
                                     66 	.area HOME    (CODE)
                                     67 	.area GSINIT0 (CODE)
                                     68 	.area GSINIT1 (CODE)
                                     69 	.area GSINIT2 (CODE)
                                     70 	.area GSINIT3 (CODE)
                                     71 	.area GSINIT4 (CODE)
                                     72 	.area GSINIT5 (CODE)
                                     73 	.area GSINIT  (CODE)
                                     74 	.area GSFINAL (CODE)
                                     75 	.area CSEG    (CODE)
                                     76 ;--------------------------------------------------------
                                     77 ; global & static initialisations
                                     78 ;--------------------------------------------------------
                                     79 	.area HOME    (CODE)
                                     80 	.area GSINIT  (CODE)
                                     81 	.area GSFINAL (CODE)
                                     82 	.area GSINIT  (CODE)
                                     83 ;--------------------------------------------------------
                                     84 ; Home
                                     85 ;--------------------------------------------------------
                                     86 	.area HOME    (CODE)
                                     87 	.area HOME    (CODE)
                                     88 ;--------------------------------------------------------
                                     89 ; code
                                     90 ;--------------------------------------------------------
                                     91 	.area CSEG    (CODE)
                                     92 ;------------------------------------------------------------
                                     93 ;Allocation info for local variables in function 'delay_ms'
                                     94 ;------------------------------------------------------------
                                     95 ;input_ms                  Allocated to registers 
                                     96 ;------------------------------------------------------------
                                     97 ;	./src/delay.c:3: void delay_ms(unsigned int input_ms) // ms will save in *dph and *dpl
                                     98 ;	-----------------------------------------
                                     99 ;	 function delay_ms
                                    100 ;	-----------------------------------------
      0012F2                        101 _delay_ms:
                           000007   102 	ar7 = 0x07
                           000006   103 	ar6 = 0x06
                           000005   104 	ar5 = 0x05
                           000004   105 	ar4 = 0x04
                           000003   106 	ar3 = 0x03
                           000002   107 	ar2 = 0x02
                           000001   108 	ar1 = 0x01
                           000000   109 	ar0 = 0x00
                                    110 ;	./src/delay.c:30: __endasm;			// end of assembly code, don't forget to add ";"
      0012F2                        111 	 DELAY1:
      0012F2 AD 82            [24]  112 	MOV R5,dpl
      0012F4 BD 00 03         [24]  113 	CJNE	R5,#0,DL1
      0012F7 BD FF 0A         [24]  114 	CJNE	R5,#255,DELAY3
      0012FA                        115 	 DL1:
      0012FA 7E 03            [12]  116 	MOV R6,#3
      0012FC                        117 	 DL2:
      0012FC 7F AA            [12]  118 	MOV R7,#170
      0012FE                        119 	 DL3:
      0012FE DF FE            [24]  120 	DJNZ R7,DL3
      001300 DE FA            [24]  121 	DJNZ	R6,DL2
      001302 DD F6            [24]  122 	DJNZ	R5,DL1
      001304                        123 	 DELAY3:
      001304 AC 83            [24]  124 	MOV R4,dph
      001306 BC 00 01         [24]  125 	CJNE	R4,#0,DL4
      001309 22               [24]  126 	RET
      00130A                        127 	 DL4:
      00130A 7D 00            [12]  128 	MOV R5,#0
      00130C                        129 	 DL5:
      00130C 7E 03            [12]  130 	MOV R6,#3
      00130E                        131 	 DL6:
      00130E 7F AA            [12]  132 	MOV R7,#170
      001310                        133 	 DL7:
      001310 DF FE            [24]  134 	DJNZ R7,DL7
      001312 DE FA            [24]  135 	DJNZ	R6,DL6
      001314 DD F6            [24]  136 	DJNZ	R5,DL5
      001316 DC F2            [24]  137 	DJNZ	R4,DL4
                                    138 ;	./src/delay.c:31: }
      001318 22               [24]  139 	ret
                                    140 ;------------------------------------------------------------
                                    141 ;Allocation info for local variables in function 'Delay_Do'
                                    142 ;------------------------------------------------------------
                                    143 ;	./src/delay.c:33: void Delay_Do(void) {
                                    144 ;	-----------------------------------------
                                    145 ;	 function Delay_Do
                                    146 ;	-----------------------------------------
      001319                        147 _Delay_Do:
                                    148 ;	./src/delay.c:58: __endasm;
      001319                        149 	 DELAY_Do:
      001319 7E 0A            [12]  150 	MOV	R6,#10
      00131B                        151 	 DELAY_Do_DL1:
      00131B 7F 13            [12]  152 	MOV	R7,#19
      00131D                        153 	 STEP1:
      00131D DF FE            [24]  154 	DJNZ	R7,STEP1
      00131F DE FA            [24]  155 	DJNZ	R6,DELAY_Do_DL1
      001321 7F 0D            [12]  156 	MOV	R7,#13
      001323                        157 	 STEP2:
      001323 DF FE            [24]  158 	DJNZ	R7,STEP2
      001325 22               [24]  159 	RET
                                    160 ;	./src/delay.c:60: }
      001326 22               [24]  161 	ret
                                    162 ;------------------------------------------------------------
                                    163 ;Allocation info for local variables in function 'Delay_Re'
                                    164 ;------------------------------------------------------------
                                    165 ;	./src/delay.c:62: void Delay_Re(void) {
                                    166 ;	-----------------------------------------
                                    167 ;	 function Delay_Re
                                    168 ;	-----------------------------------------
      001327                        169 _Delay_Re:
                                    170 ;	./src/delay.c:87: __endasm;
      001327                        171 	 DELAY_RE:
      001327 7E 0A            [12]  172 	MOV	R6,#10
      001329                        173 	 DELAY_RE_DL1:
      001329 7F 11            [12]  174 	MOV	R7,#17
      00132B                        175 	 STEP3:
      00132B DF FE            [24]  176 	DJNZ	R7,STEP3
      00132D DE FA            [24]  177 	DJNZ	R6,DELAY_RE_DL1
      00132F 7F 09            [12]  178 	MOV	R7,#9
      001331                        179 	 STEP4:
      001331 DF FE            [24]  180 	DJNZ	R7,STEP4
      001333 22               [24]  181 	RET
                                    182 ;	./src/delay.c:88: }
      001334 22               [24]  183 	ret
                                    184 	.area CSEG    (CODE)
                                    185 	.area CONST   (CODE)
                                    186 	.area XINIT   (CODE)
                                    187 	.area CABS    (ABS,CODE)

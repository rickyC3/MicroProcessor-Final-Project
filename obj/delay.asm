;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module delay
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay_ms
	.globl _Delay_Do
	.globl _Delay_Re
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;input_ms                  Allocated to registers 
;------------------------------------------------------------
;	./src/delay.c:3: void delay_ms(unsigned int input_ms) // ms will save in *dph and *dpl
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/delay.c:30: __endasm;			// end of assembly code, don't forget to add ";"
	 DELAY1:
	MOV R5,dpl
	CJNE	R5,#0,DL1
	CJNE	R5,#255,DELAY3
	 DL1:
	MOV R6,#3
	 DL2:
	MOV R7,#170
	 DL3:
	DJNZ R7,DL3
	DJNZ	R6,DL2
	DJNZ	R5,DL1
	 DELAY3:
	MOV R4,dph
	CJNE	R4,#0,DL4
	RET
	 DL4:
	MOV R5,#0
	 DL5:
	MOV R6,#3
	 DL6:
	MOV R7,#170
	 DL7:
	DJNZ R7,DL7
	DJNZ	R6,DL6
	DJNZ	R5,DL5
	DJNZ	R4,DL4
;	./src/delay.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_Do'
;------------------------------------------------------------
;	./src/delay.c:33: void Delay_Do(void) {
;	-----------------------------------------
;	 function Delay_Do
;	-----------------------------------------
_Delay_Do:
;	./src/delay.c:58: __endasm;
	 DELAY_Do:
	MOV	R6,#10
	 DELAY_Do_DL1:
	MOV	R7,#19
	 STEP1:
	DJNZ	R7,STEP1
	DJNZ	R6,DELAY_Do_DL1
	MOV	R7,#13
	 STEP2:
	DJNZ	R7,STEP2
	RET
;	./src/delay.c:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_Re'
;------------------------------------------------------------
;	./src/delay.c:62: void Delay_Re(void) {
;	-----------------------------------------
;	 function Delay_Re
;	-----------------------------------------
_Delay_Re:
;	./src/delay.c:87: __endasm;
	 DELAY_RE:
	MOV	R6,#10
	 DELAY_RE_DL1:
	MOV	R7,#17
	 STEP3:
	DJNZ	R7,STEP3
	DJNZ	R6,DELAY_RE_DL1
	MOV	R7,#9
	 STEP4:
	DJNZ	R7,STEP4
	RET
;	./src/delay.c:88: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module write7219
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sendbyte_PARM_2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _Writesingle7219_PARM_3
	.globl _Writesingle7219_PARM_2
	.globl _Write7219_PARM_2
	.globl _sendbyte
	.globl _Write7219
	.globl _Writesingle7219
	.globl _Initial7219
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_Write7219_PARM_2:
	.ds 1
_Writesingle7219_PARM_2:
	.ds 1
_Writesingle7219_PARM_3:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_sendbyte_PARM_2:
	.ds 1
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
;Allocation info for local variables in function 'sendbyte'
;------------------------------------------------------------
;dat                       Allocated with name '_sendbyte_PARM_2'
;address                   Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	./src/write7219.c:4: void sendbyte(unsigned char address, unsigned char dat) {
;	-----------------------------------------
;	 function sendbyte
;	-----------------------------------------
_sendbyte:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	./src/write7219.c:8: for (i = 0; i < 8; i++) {        // get last 8 bits(address)
	mov	r6,#0x00
00103$:
;	./src/write7219.c:9: CLK = 0;
;	assignBit
	clr	_P0_4
;	./src/write7219.c:10: DOUT = (address & 0x80);      // get msb and shift left
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P0_2,c
;	./src/write7219.c:11: address <<= 1; 
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	./src/write7219.c:12: CLK = 1;
;	assignBit
	setb	_P0_4
;	./src/write7219.c:8: for (i = 0; i < 8; i++) {        // get last 8 bits(address)
	inc	r6
	cjne	r6,#0x08,00123$
00123$:
	jc	00103$
;	./src/write7219.c:14: for (i = 0; i < 8; i++) {        // get first 8 bits(data)
	mov	r7,#0x00
00105$:
;	./src/write7219.c:15: CLK = 0;
;	assignBit
	clr	_P0_4
;	./src/write7219.c:16: DOUT = (dat & 0x80);          // get msb and shit left
	mov	a,_sendbyte_PARM_2
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P0_2,c
;	./src/write7219.c:17: dat <<= 1;
	mov	a,_sendbyte_PARM_2
	add	a,acc
	mov	_sendbyte_PARM_2,a
;	./src/write7219.c:18: CLK = 1;
;	assignBit
	setb	_P0_4
;	./src/write7219.c:14: for (i = 0; i < 8; i++) {        // get first 8 bits(data)
	inc	r7
	cjne	r7,#0x08,00125$
00125$:
	jc	00105$
;	./src/write7219.c:20: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Write7219'
;------------------------------------------------------------
;dat                       Allocated with name '_Write7219_PARM_2'
;address                   Allocated to registers r7 
;cnt                       Allocated to registers r6 
;------------------------------------------------------------
;	./src/write7219.c:23: void Write7219(unsigned char address, unsigned char dat) {
;	-----------------------------------------
;	 function Write7219
;	-----------------------------------------
_Write7219:
	mov	r7,dpl
;	./src/write7219.c:27: LOAD = 0;
;	assignBit
	clr	_P0_3
;	./src/write7219.c:28: for (cnt = 1; cnt <= matrixnum; cnt++) {        // send address and data according to the nuber of your matrix
	mov	r6,#0x01
00102$:
;	./src/write7219.c:29: sendbyte(address, dat);
	mov	_sendbyte_PARM_2,_Write7219_PARM_2
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_sendbyte
	pop	ar6
	pop	ar7
;	./src/write7219.c:28: for (cnt = 1; cnt <= matrixnum; cnt++) {        // send address and data according to the nuber of your matrix
	inc	r6
	mov	a,r6
	add	a,#0xff - 0x04
	jnc	00102$
;	./src/write7219.c:31: LOAD = 1;                                       // after the load becomes 1, will the 7-segment display display
;	assignBit
	setb	_P0_3
;	./src/write7219.c:32: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Writesingle7219'
;------------------------------------------------------------
;address                   Allocated with name '_Writesingle7219_PARM_2'
;dat                       Allocated with name '_Writesingle7219_PARM_3'
;chosen                    Allocated to registers r7 
;cnt                       Allocated to registers 
;------------------------------------------------------------
;	./src/write7219.c:35: void Writesingle7219(unsigned char chosen, unsigned char address, unsigned char dat) {
;	-----------------------------------------
;	 function Writesingle7219
;	-----------------------------------------
_Writesingle7219:
	mov	r7,dpl
;	./src/write7219.c:39: LOAD = 0;
;	assignBit
	clr	_P0_3
;	./src/write7219.c:40: for (cnt = matrixnum; cnt > chosen; cnt--) {    // write data into the selected matrix
	mov	r6,#0x04
00104$:
	clr	c
	mov	a,r7
	subb	a,r6
	jnc	00101$
;	./src/write7219.c:41: sendbyte(0x00, 0x00);                       // write 0 to no-op
	mov	_sendbyte_PARM_2,#0x00
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_sendbyte
	pop	ar6
	pop	ar7
;	./src/write7219.c:40: for (cnt = matrixnum; cnt > chosen; cnt--) {    // write data into the selected matrix
	dec	r6
	sjmp	00104$
00101$:
;	./src/write7219.c:43: sendbyte(address, dat);                        // sent data to chosen led-matrix
	mov	_sendbyte_PARM_2,_Writesingle7219_PARM_3
	mov	dpl,_Writesingle7219_PARM_2
	push	ar7
	lcall	_sendbyte
	pop	ar7
;	./src/write7219.c:44: for (cnt = chosen-1; cnt > 0; cnt--) { 
	dec	r7
00107$:
	mov	a,r7
	jz	00102$
;	./src/write7219.c:45: sendbyte(0x00, 0x00);                       // write 0 to no-op
	mov	_sendbyte_PARM_2,#0x00
	mov	dpl,#0x00
	push	ar7
	lcall	_sendbyte
	pop	ar7
;	./src/write7219.c:44: for (cnt = chosen-1; cnt > 0; cnt--) { 
	dec	r7
	sjmp	00107$
00102$:
;	./src/write7219.c:47: LOAD = 1;
;	assignBit
	setb	_P0_3
;	./src/write7219.c:48: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Initial7219'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	./src/write7219.c:51: void Initial7219(void) {
;	-----------------------------------------
;	 function Initial7219
;	-----------------------------------------
_Initial7219:
;	./src/write7219.c:55: Write7219(SHUT_DOWN, 0x01);                     // normal mode(0xX1)
	mov	_Write7219_PARM_2,#0x01
	mov	dpl,#0x0c
	lcall	_Write7219
;	./src/write7219.c:56: Write7219(DISPLAY_TEST, 0x00); 
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0f
	lcall	_Write7219
;	./src/write7219.c:57: Write7219(DECODE_MODE, 0x00);                   // select non-decode mode
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x09
	lcall	_Write7219
;	./src/write7219.c:58: Write7219(SCAN_LIMIT, 0x07);                    // use all 8 LED
	mov	_Write7219_PARM_2,#0x07
	mov	dpl,#0x0b
	lcall	_Write7219
;	./src/write7219.c:59: Write7219(INTENSITY, 0x00);                     // set up intensity
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,#0x0a
	lcall	_Write7219
;	./src/write7219.c:60: for (i = 1; i <= 8; i++) {
	mov	r7,#0x01
00102$:
;	./src/write7219.c:61: Write7219(i, 0x00);                         // turn off all LED
	mov	_Write7219_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_Write7219
	pop	ar7
;	./src/write7219.c:60: for (i = 1; i <= 8; i++) {
	inc	r7
	mov	a,r7
	add	a,#0xff - 0x08
	jnc	00102$
;	./src/write7219.c:63: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

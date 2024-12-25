;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Get_Dot_PARM_3
	.globl _Get_Dot_PARM_2
	.globl _draw_PARM_5
	.globl _draw_PARM_4
	.globl _draw_PARM_3
	.globl _draw_PARM_2
	.globl _del_PARM_5
	.globl _del_PARM_4
	.globl _del_PARM_3
	.globl _del_PARM_2
	.globl _overlap_PARM_8
	.globl _overlap_PARM_7
	.globl _overlap_PARM_6
	.globl _overlap_PARM_5
	.globl _overlap_PARM_4
	.globl _overlap_PARM_3
	.globl _overlap_PARM_2
	.globl _main
	.globl _OLED_SetCursor
	.globl _OLED_Clear
	.globl _OLED_DisplayString
	.globl _OLED_DisplayChar
	.globl _OLED_Init
	.globl _Initial7219
	.globl _Writesingle7219
	.globl _Delay_Re
	.globl _Delay_Do
	.globl _Get_Key
	.globl _delay_ms
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
	.globl _mat2_2
	.globl _mat2_1
	.globl _mat1_2
	.globl _mat1_1
	.globl _player_score
	.globl _player
	.globl _player2
	.globl _player1
	.globl _turn
	.globl _get_bit
	.globl _conti_flag
	.globl _now_col
	.globl _now_row
	.globl _nxt_col
	.globl _nxt_row
	.globl _check_
	.globl _idx
	.globl _tmp_l
	.globl _tmp_j
	.globl _tmp_i
	.globl _l
	.globl _j
	.globl _i
	.globl _boat_type
	.globl _now_key
	.globl _mask
	.globl _player_bool
	.globl _winner
	.globl _mode
	.globl _in_i
	.globl _mode0
	.globl _mode1
	.globl _mode2
	.globl _mode3
	.globl _overlap
	.globl _del
	.globl _draw
	.globl _Get_Dot
	.globl _mode4
	.globl _mode5
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
_in_i::
	.ds 2
_mode::
	.ds 1
_winner::
	.ds 1
_player_bool::
	.ds 3
_mask::
	.ds 1
_now_key::
	.ds 1
_boat_type::
	.ds 4
_i::
	.ds 1
_j::
	.ds 1
_l::
	.ds 1
_tmp_i::
	.ds 1
_tmp_j::
	.ds 1
_tmp_l::
	.ds 1
_idx::
	.ds 1
_check_::
	.ds 1
_nxt_row::
	.ds 1
_nxt_col::
	.ds 1
_now_row::
	.ds 1
_now_col::
	.ds 1
_conti_flag::
	.ds 1
_get_bit::
	.ds 1
_turn::
	.ds 1
_player1::
	.ds 4
_player2::
	.ds 4
_player::
	.ds 6
_player_score::
	.ds 3
_mat1_1::
	.ds 9
_mat1_2::
	.ds 9
_mat2_1::
	.ds 9
_mat2_2::
	.ds 9
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_overlap_PARM_2:
	.ds 1
_overlap_PARM_3:
	.ds 1
_overlap_PARM_4:
	.ds 1
_overlap_PARM_5:
	.ds 1
_overlap_PARM_6:
	.ds 1
_overlap_PARM_7:
	.ds 1
_overlap_PARM_8:
	.ds 1
	.area	OSEG    (OVR,DATA)
_del_PARM_2:
	.ds 1
_del_PARM_3:
	.ds 1
_del_PARM_4:
	.ds 1
_del_PARM_5:
	.ds 1
	.area	OSEG    (OVR,DATA)
_draw_PARM_2:
	.ds 1
_draw_PARM_3:
	.ds 1
_draw_PARM_4:
	.ds 1
_draw_PARM_5:
	.ds 1
	.area	OSEG    (OVR,DATA)
_Get_Dot_PARM_2:
	.ds 1
_Get_Dot_PARM_3:
	.ds 1
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
_mode1_sloc0_1_0:
	.ds 1
_mode2_sloc0_1_0:
	.ds 1
_mode3_sloc0_1_0:
	.ds 1
_mode4_sloc0_1_0:
	.ds 1
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	./src/main.c:15: unsigned char mode = 0; // 當前在哪個狀態
	mov	_mode,#0x00
;	./src/main.c:16: char winner = 0;        // 紀錄最後的贏家
	mov	_winner,#0x00
;	./src/main.c:17: unsigned char player_bool[3] = {0 ,0, 0}; // 開局前的確認
	mov	_player_bool,#0x00
	mov	(_player_bool + 0x0001),#0x00
	mov	(_player_bool + 0x0002),#0x00
;	./src/main.c:20: char boat_type[][2] = {{4, 2}, {3, 3}}; // 兩種軍艦 4*2, 3*3
	mov	_boat_type,#0x04
	mov	(_boat_type + 0x0001),#0x02
	mov	(_boat_type + 0x0002),#0x03
	mov	(_boat_type + 0x0003),#0x03
;	./src/main.c:26: char conti_flag = 0;    // 雙層迴圈中的中斷flag
	mov	_conti_flag,#0x00
;	./src/main.c:29: char player1[][2] = {{1, 0}, {16, 16}};  // 玩家所放置的軍艦的位置 (col, row) // col 1~8, row 0~7 
	mov	_player1,#0x01
	mov	(_player1 + 0x0001),#0x00
	mov	(_player1 + 0x0002),#0x10
	mov	(_player1 + 0x0003),#0x10
;	./src/main.c:30: char player2[][2] = {{1, 0}, {16, 16}};
	mov	_player2,#0x01
	mov	(_player2 + 0x0001),#0x00
	mov	(_player2 + 0x0002),#0x10
	mov	(_player2 + 0x0003),#0x10
;	./src/main.c:31: char player[][2] = {{0, 0},{1, 0}, {1, 0}}; // 玩家鼠標所在的位置
	mov	_player,#0x00
	mov	(_player + 0x0001),#0x00
	mov	(_player + 0x0002),#0x01
	mov	(_player + 0x0003),#0x00
	mov	(_player + 0x0004),#0x01
	mov	(_player + 0x0005),#0x00
;	./src/main.c:32: char player_score[] = {0, 0, 0};            // 各玩家的得分(win: 17分)
	mov	_player_score,#0x00
	mov	(_player_score + 0x0001),#0x00
	mov	(_player_score + 0x0002),#0x00
;	./src/main.c:33: char mat1_1[] = {0xff, 0x00, 0x00, 0x00,0x00, 0x00, 0x00, 0x00, 0x00};
	mov	_mat1_1,#0xff
	mov	(_mat1_1 + 0x0001),#0x00
	mov	(_mat1_1 + 0x0002),#0x00
	mov	(_mat1_1 + 0x0003),#0x00
	mov	(_mat1_1 + 0x0004),#0x00
	mov	(_mat1_1 + 0x0005),#0x00
	mov	(_mat1_1 + 0x0006),#0x00
	mov	(_mat1_1 + 0x0007),#0x00
	mov	(_mat1_1 + 0x0008),#0x00
;	./src/main.c:34: char mat1_2[] = {0x00, 0x00, 0x00, 0x00,0x00, 0x00, 0x00, 0x00, 0x00};
	mov	_mat1_2,#0x00
	mov	(_mat1_2 + 0x0001),#0x00
	mov	(_mat1_2 + 0x0002),#0x00
	mov	(_mat1_2 + 0x0003),#0x00
	mov	(_mat1_2 + 0x0004),#0x00
	mov	(_mat1_2 + 0x0005),#0x00
	mov	(_mat1_2 + 0x0006),#0x00
	mov	(_mat1_2 + 0x0007),#0x00
	mov	(_mat1_2 + 0x0008),#0x00
;	./src/main.c:35: char mat2_1[] = {0xff, 0x00, 0x00, 0x00,0x00, 0x00, 0x00, 0x00, 0x00};
	mov	_mat2_1,#0xff
	mov	(_mat2_1 + 0x0001),#0x00
	mov	(_mat2_1 + 0x0002),#0x00
	mov	(_mat2_1 + 0x0003),#0x00
	mov	(_mat2_1 + 0x0004),#0x00
	mov	(_mat2_1 + 0x0005),#0x00
	mov	(_mat2_1 + 0x0006),#0x00
	mov	(_mat2_1 + 0x0007),#0x00
	mov	(_mat2_1 + 0x0008),#0x00
;	./src/main.c:36: char mat2_2[] = {0x00, 0x00, 0x00, 0x00,0x00, 0x00, 0x00, 0x00, 0x00};
	mov	_mat2_2,#0x00
	mov	(_mat2_2 + 0x0001),#0x00
	mov	(_mat2_2 + 0x0002),#0x00
	mov	(_mat2_2 + 0x0003),#0x00
	mov	(_mat2_2 + 0x0004),#0x00
	mov	(_mat2_2 + 0x0005),#0x00
	mov	(_mat2_2 + 0x0006),#0x00
	mov	(_mat2_2 + 0x0007),#0x00
	mov	(_mat2_2 + 0x0008),#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;now_key                   Allocated to registers 
;now2_key                  Allocated to registers 
;------------------------------------------------------------
;	./src/main.c:49: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/main.c:53: OLED_Init();
	lcall	_OLED_Init
;	./src/main.c:54: Initial7219();
	lcall	_Initial7219
;	./src/main.c:55: while (1){
00119$:
;	./src/main.c:56: led = ~(1<<mode);
	mov	r7,_mode
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00153$
00151$:
	add	a,acc
00153$:
	djnz	b,00151$
	mov	r7,a
	cpl	a
	mov	_P1,a
;	./src/main.c:57: if (mode == 0){
	mov	a,_mode
	jnz	00116$
;	./src/main.c:58: mode0();
	lcall	_mode0
	sjmp	00119$
00116$:
;	./src/main.c:59: }else if (mode == 1){
	mov	a,#0x01
	cjne	a,_mode,00113$
;	./src/main.c:60: mode1();
	lcall	_mode1
	sjmp	00119$
00113$:
;	./src/main.c:61: }else if (mode == 2){
	mov	a,#0x02
	cjne	a,_mode,00110$
;	./src/main.c:62: mode2();
	lcall	_mode2
	sjmp	00119$
00110$:
;	./src/main.c:63: }else if (mode == 3){
	mov	a,#0x03
	cjne	a,_mode,00107$
;	./src/main.c:64: mode3();
	lcall	_mode3
	sjmp	00119$
00107$:
;	./src/main.c:65: }else if (mode == 4){
	mov	a,#0x04
	cjne	a,_mode,00104$
;	./src/main.c:66: mode4();
	lcall	_mode4
	sjmp	00119$
00104$:
;	./src/main.c:67: }else if (mode == 5){
	mov	a,#0x05
	cjne	a,_mode,00119$
;	./src/main.c:68: mode5();
	lcall	_mode5
;	./src/main.c:73: }
	sjmp	00119$
;------------------------------------------------------------
;Allocation info for local variables in function 'mode0'
;------------------------------------------------------------
;	./src/main.c:75: void mode0(void){
;	-----------------------------------------
;	 function mode0
;	-----------------------------------------
_mode0:
;	./src/main.c:76: if (but1 == 0){
	jb	_INT0,00104$
;	./src/main.c:77: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/main.c:78: if (but1 == 0){
	jb	_INT0,00104$
;	./src/main.c:79: player_bool[1] = 1;
	mov	(_player_bool + 0x0001),#0x01
00104$:
;	./src/main.c:82: if (but4 == 0){
	jb	_P2_1,00108$
;	./src/main.c:83: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/main.c:84: if (but4 == 0){
	jb	_P2_1,00108$
;	./src/main.c:85: player_bool[2] = 1;
	mov	(_player_bool + 0x0002),#0x01
00108$:
;	./src/main.c:88: OLED_SetCursor(2, 3);
	mov	_OLED_SetCursor_PARM_2,#0x03
	mov	dpl,#0x02
	lcall	_OLED_SetCursor
;	./src/main.c:89: OLED_DisplayString("Press but1");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:90: OLED_SetCursor(3, 10);
	mov	_OLED_SetCursor_PARM_2,#0x0a
	mov	dpl,#0x03
	lcall	_OLED_SetCursor
;	./src/main.c:91: OLED_DisplayString("but4 to start");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:92: OLED_SetCursor(4, 5);
	mov	_OLED_SetCursor_PARM_2,#0x05
	mov	dpl,#0x04
	lcall	_OLED_SetCursor
;	./src/main.c:93: if (player_bool[1] != 0){
	mov	a,(_player_bool + 0x0001)
	jz	00110$
;	./src/main.c:94: OLED_DisplayString("Player1 is ready");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_OLED_DisplayString
	sjmp	00111$
00110$:
;	./src/main.c:96: OLED_DisplayString("Wait for player1");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_OLED_DisplayString
00111$:
;	./src/main.c:98: OLED_SetCursor(5, 5);
	mov	_OLED_SetCursor_PARM_2,#0x05
	mov	dpl,#0x05
	lcall	_OLED_SetCursor
;	./src/main.c:99: if (player_bool[2] != 0){
	mov	a,(_player_bool + 0x0002)
	jz	00113$
;	./src/main.c:100: OLED_DisplayString("Player2 is ready");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_OLED_DisplayString
	sjmp	00114$
00113$:
;	./src/main.c:102: OLED_DisplayString("Wait for player2");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_OLED_DisplayString
00114$:
;	./src/main.c:105: if (player_bool[1] != 0 && player_bool[2] != 0){
	mov	a,(_player_bool + 0x0001)
	jz	00118$
	mov	a,(_player_bool + 0x0002)
	jz	00118$
;	./src/main.c:106: mode = 1;
	mov	_mode,#0x01
;	./src/main.c:107: player_bool[1] = 0;
	mov	(_player_bool + 0x0001),#0x00
;	./src/main.c:108: player_bool[2] = 0;
	mov	(_player_bool + 0x0002),#0x00
00118$:
;	./src/main.c:110: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mode1'
;------------------------------------------------------------
;	./src/main.c:111: void mode1(void){
;	-----------------------------------------
;	 function mode1
;	-----------------------------------------
_mode1:
;	./src/main.c:112: OLED_Clear();
	lcall	_OLED_Clear
;	./src/main.c:113: OLED_SetCursor(2, 3);
	mov	_OLED_SetCursor_PARM_2,#0x03
	mov	dpl,#0x02
	lcall	_OLED_SetCursor
;	./src/main.c:114: OLED_DisplayString("Player1 setting ");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:116: conti_flag = 0;
	mov	_conti_flag,#0x00
;	./src/main.c:117: nxt_row = 0; nxt_col = 0; 
	mov	_nxt_row,#0x00
	mov	_nxt_col,#0x00
;	./src/main.c:118: check_ = 0;
	mov	_check_,#0x00
;	./src/main.c:120: idx = 0; // 當前要處理的軍艦
	mov	_idx,#0x00
;	./src/main.c:121: while (idx < 2){ // 有兩個軍艦要設置
00142$:
	mov	a,#0x100 - 0x02
	add	a,_idx
	jnc	00304$
	ljmp	00144$
00304$:
;	./src/main.c:122: conti_flag = 0;
	mov	_conti_flag,#0x00
;	./src/main.c:123: for (tmp_l=0;tmp_l<idx;tmp_l++){ // 先找到一個合法位置，將它設為預設位置
	mov	_tmp_l,#0x00
00149$:
	clr	c
	mov	a,_tmp_l
	subb	a,_idx
	jc	00305$
	ljmp	00112$
00305$:
;	./src/main.c:124: for (tmp_i=1;tmp_i<=8;tmp_i++){
	mov	_tmp_i,#0x01
00146$:
;	./src/main.c:125: for (tmp_j=0;tmp_j<8;tmp_j++){
	mov	_tmp_j,#0x00
00145$:
;	./src/main.c:126: if (conti_flag != 0)break;;
	mov	a,_conti_flag
	jz	00306$
	ljmp	00147$
00306$:
;	./src/main.c:127: if (tmp_j+boat_type[idx][1]-1 > 7 ){continue;} // 邊界檢查
	mov	r6,_tmp_j
	mov	r7,#0x00
	mov	a,_idx
	add	a,_idx
	mov	r5,a
	add	a,#_boat_type
	inc	a
	mov	r1,a
	mov	ar4,@r1
	mov	r3,#0x00
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	dec	r6
	cjne	r6,#0xff,00307$
	dec	r7
00307$:
	clr	c
	mov	a,#0x07
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00109$
;	./src/main.c:128: if (tmp_i+boat_type[idx][0]-1 > 8){continue;}
	mov	r6,_tmp_i
	mov	r7,#0x00
	mov	a,r5
	add	a,#_boat_type
	mov	r1,a
	mov	ar5,@r1
	mov	ar3,r5
	mov	r4,#0x00
	mov	a,r3
	add	a,r6
	mov	r6,a
	mov	a,r4
	addc	a,r7
	mov	r7,a
	dec	r6
	cjne	r6,#0xff,00309$
	dec	r7
00309$:
	clr	c
	mov	a,#0x08
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00109$
;	./src/main.c:129: if (overlap(tmp_i, tmp_j, boat_type[idx][0], boat_type[idx][1],
	inc	r1
	mov	_overlap_PARM_4,@r1
;	./src/main.c:130: player1[tmp_l][0], player1[tmp_l][1], boat_type[tmp_l][0], boat_type[tmp_l][1]) != 1){ 
	mov	a,_tmp_l
	add	a,_tmp_l
	mov	r7,a
	add	a,#_player1
	mov	r1,a
	mov	_overlap_PARM_5,@r1
	inc	r1
	mov	_overlap_PARM_6,@r1
	mov	a,r7
	add	a,#_boat_type
	mov	r1,a
	mov	_overlap_PARM_7,@r1
	inc	r1
	mov	_overlap_PARM_8,@r1
	mov	_overlap_PARM_2,_tmp_j
	mov	_overlap_PARM_3,r5
	mov	dpl,_tmp_i
	lcall	_overlap
	mov	r7,dpl
	cjne	r7,#0x01,00311$
	sjmp	00109$
00311$:
;	./src/main.c:132: player1[idx][0] = tmp_i;
	mov	a,_idx
	add	a,_idx
	add	a,#_player1
	mov	r0,a
	mov	@r0,_tmp_i
;	./src/main.c:133: player1[idx][1] = tmp_j; // 將他們儲存
	mov	a,_idx
	add	a,_idx
	add	a,#_player1
	mov	r7,a
	inc	a
	mov	r0,a
	mov	@r0,_tmp_j
;	./src/main.c:134: conti_flag = 1;
	mov	_conti_flag,#0x01
;	./src/main.c:135: break;
	sjmp	00147$
00109$:
;	./src/main.c:125: for (tmp_j=0;tmp_j<8;tmp_j++){
	inc	_tmp_j
	mov	a,#0x100 - 0x08
	add	a,_tmp_j
	jc	00312$
	ljmp	00145$
00312$:
00147$:
;	./src/main.c:124: for (tmp_i=1;tmp_i<=8;tmp_i++){
	inc	_tmp_i
	mov	a,_tmp_i
	add	a,#0xff - 0x08
	jc	00313$
	ljmp	00146$
00313$:
;	./src/main.c:123: for (tmp_l=0;tmp_l<idx;tmp_l++){ // 先找到一個合法位置，將它設為預設位置
	inc	_tmp_l
	ljmp	00149$
00112$:
;	./src/main.c:141: check_ = 1;
	mov	_check_,#0x01
;	./src/main.c:142: OLED_SetCursor(3, 3);
	mov	_OLED_SetCursor_PARM_2,#0x03
	mov	dpl,#0x03
	lcall	_OLED_SetCursor
;	./src/main.c:143: OLED_DisplayString("setting ");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:144: OLED_DisplayChar('0' + idx);
	mov	r7,_idx
	mov	a,#0x30
	add	a,r7
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:146: draw(player1[idx][0], player1[idx][1], player1[idx][0]+boat_type[idx][0]-1, player1[idx][1]+boat_type[idx][1]-1, 0); 
	mov	a,_idx
	add	a,_idx
	mov	r7,a
	add	a,#_player1
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar5,@r1
	mov	a,r7
	add	a,#_boat_type
	mov	r1,a
	mov	a,@r1
	add	a,r6
	dec	a
	mov	_draw_PARM_3,a
	inc	r1
	mov	a,@r1
	add	a,r5
	dec	a
	mov	_draw_PARM_4,a
	mov	_draw_PARM_2,r5
	mov	_draw_PARM_5,#0x00
	mov	dpl,r6
	lcall	_draw
;	./src/main.c:147: while (check_){
00139$:
	mov	a,_check_
	jnz	00314$
	ljmp	00142$
00314$:
;	./src/main.c:148: OLED_SetCursor(4, 3);
	mov	_OLED_SetCursor_PARM_2,#0x03
	mov	dpl,#0x04
	lcall	_OLED_SetCursor
;	./src/main.c:149: OLED_DisplayString("set row: ");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:150: OLED_DisplayChar('0' + player1[idx][1]); // 當前軍艦左上角的座標
	mov	a,_idx
	add	a,_idx
	add	a,#_player1
	inc	a
	mov	r1,a
	mov	ar7,@r1
	mov	a,#0x30
	add	a,r7
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:151: OLED_SetCursor(5, 3);
	mov	_OLED_SetCursor_PARM_2,#0x03
	mov	dpl,#0x05
	lcall	_OLED_SetCursor
;	./src/main.c:152: OLED_DisplayString("set col: ");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:153: OLED_DisplayChar('0' + player1[idx][0]);
	mov	a,_idx
	add	a,_idx
	add	a,#_player1
	mov	r1,a
	mov	ar7,@r1
	mov	a,#0x30
	add	a,r7
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:156: now_key = Get_Key();
	lcall	_Get_Key
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:157: if (now_key != 0){
	mov	a,r6
	mov	_now_key,a
	jnz	00315$
	ljmp	00129$
00315$:
;	./src/main.c:158: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/main.c:159: if (Get_Key() == now_key){ // 按鍵控制+邊界處理
	lcall	_Get_Key
	mov	r6,dpl
	mov	r7,dph
	mov	r4,_now_key
	mov	r5,#0x00
	mov	a,r6
	cjne	a,ar4,00316$
	mov	a,r7
	cjne	a,ar5,00316$
	sjmp	00317$
00316$:
	ljmp	00129$
00317$:
;	./src/main.c:160: nxt_col = player1[idx][0];nxt_row = player1[idx][1];
	mov	a,_idx
	add	a,_idx
	mov	r7,a
	add	a,#_player1
	mov	r1,a
	mov	_nxt_col,@r1
	inc	r1
	mov	_nxt_row,@r1
;	./src/main.c:161: if (now_key == 1){// up r
	mov	a,#0x01
	cjne	a,_now_key,00114$
;	./src/main.c:162: nxt_row = (player1[idx][1] <= 0)? player1[idx][1]:player1[idx][1]-1;
	mov	a,r7
	add	a,#_player1
	inc	a
	mov	r1,a
	mov	a,@r1
	jnz	00160$
	mov	a,r7
	add	a,#_player1
	inc	a
	mov	r1,a
	mov	ar6,@r1
	sjmp	00161$
00160$:
	mov	a,r7
	add	a,#_player1
	inc	a
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	dec	a
	mov	r6,a
00161$:
	mov	_nxt_row,r6
00114$:
;	./src/main.c:163: }if (now_key == 2){ // down r
	mov	a,#0x02
	cjne	a,_now_key,00116$
;	./src/main.c:164: nxt_row = (player1[idx][1]+boat_type[idx][1]-1 >= 7)? player1[idx][1]:player1[idx][1]+1;
	mov	a,_idx
	add	a,_idx
	mov	r7,a
	add	a,#_player1
	inc	a
	mov	r1,a
	mov	ar6,@r1
	mov	r5,#0x00
	mov	a,r7
	add	a,#_boat_type
	inc	a
	mov	r1,a
	mov	ar4,@r1
	mov	r3,#0x00
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	dec	r6
	cjne	r6,#0xff,00323$
	dec	r5
00323$:
	clr	c
	mov	a,r6
	subb	a,#0x07
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	mov	_mode1_sloc0_1_0,c
	jc	00162$
	mov	a,r7
	add	a,#_player1
	inc	a
	mov	r1,a
	mov	ar6,@r1
	sjmp	00163$
00162$:
	mov	a,r7
	add	a,#_player1
	inc	a
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	inc	a
	mov	r6,a
00163$:
	mov	_nxt_row,r6
00116$:
;	./src/main.c:166: if (now_key == 5){// left r
	mov	a,#0x05
	cjne	a,_now_key,00118$
;	./src/main.c:167: nxt_col = (player1[idx][0] <= 1)? player1[idx][0]:player1[idx][0]-1;
	mov	a,_idx
	add	a,_idx
	add	a,#_player1
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	add	a,#0xff - 0x01
	mov	_mode1_sloc0_1_0,c
	jc	00164$
	mov	ar6,r7
	sjmp	00165$
00164$:
	mov	a,r7
	dec	a
	mov	r6,a
00165$:
	mov	_nxt_col,r6
00118$:
;	./src/main.c:169: if (now_key == 6){// right r
	mov	a,#0x06
	cjne	a,_now_key,00120$
;	./src/main.c:170: nxt_col = (player1[idx][0]+boat_type[idx][0]-1 >= 8)? player1[idx][0]:player1[idx][0]+1;
	mov	a,_idx
	add	a,_idx
	mov	r7,a
	add	a,#_player1
	mov	r1,a
	mov	ar6,@r1
	mov	ar4,r6
	mov	r5,#0x00
	mov	a,r7
	add	a,#_boat_type
	mov	r1,a
	mov	ar7,@r1
	mov	r3,#0x00
	mov	a,r7
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	dec	r4
	cjne	r4,#0xff,00330$
	dec	r5
00330$:
	clr	c
	mov	a,r4
	subb	a,#0x08
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	mov	_mode1_sloc0_1_0,c
	jc	00166$
	mov	ar7,r6
	sjmp	00167$
00166$:
	mov	a,r6
	inc	a
	mov	r7,a
00167$:
	mov	_nxt_col,r7
00120$:
;	./src/main.c:173: for (l=0;l<idx;l++){ // 檢查這個位置是否合法(有無重疊?)
	mov	_l,#0x00
00152$:
	clr	c
	mov	a,_l
	subb	a,_idx
	jnc	00123$
;	./src/main.c:174: conti_flag = 0;
	mov	_conti_flag,#0x00
;	./src/main.c:175: if (overlap(nxt_col, nxt_row, boat_type[idx][0], boat_type[idx][1],
	mov	a,_idx
	add	a,_idx
	add	a,#_boat_type
	mov	r1,a
	mov	_overlap_PARM_3,@r1
	inc	r1
	mov	_overlap_PARM_4,@r1
;	./src/main.c:176: player1[l][0], player1[l][1], boat_type[l][0], boat_type[l][1]) == 1){
	mov	a,_l
	add	a,_l
	mov	r7,a
	add	a,#_player1
	mov	r1,a
	mov	_overlap_PARM_5,@r1
	inc	r1
	mov	_overlap_PARM_6,@r1
	mov	a,r7
	add	a,#_boat_type
	mov	r1,a
	mov	_overlap_PARM_7,@r1
	inc	r1
	mov	_overlap_PARM_8,@r1
	mov	_overlap_PARM_2,_nxt_row
	mov	dpl,_nxt_col
	lcall	_overlap
	mov	r7,dpl
	cjne	r7,#0x01,00153$
;	./src/main.c:177: conti_flag = 1;
	mov	_conti_flag,#0x01
;	./src/main.c:178: break;;
	sjmp	00123$
00153$:
;	./src/main.c:173: for (l=0;l<idx;l++){ // 檢查這個位置是否合法(有無重疊?)
	inc	_l
	sjmp	00152$
00123$:
;	./src/main.c:181: if (conti_flag == 1){ // 不合法，繼續執行
	mov	a,#0x01
	cjne	a,_conti_flag,00125$
;	./src/main.c:182: conti_flag = 0;
	mov	_conti_flag,#0x00
;	./src/main.c:183: continue;
	ljmp	00139$
00125$:
;	./src/main.c:191: del(player1[idx][0], player1[idx][1], player1[idx][0]+boat_type[idx][0]-1, player1[idx][1]+boat_type[idx][1]-1, 0); 
	mov	a,_idx
	add	a,_idx
	mov	r7,a
	add	a,#_player1
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar5,@r1
	mov	a,r7
	add	a,#_boat_type
	mov	r1,a
	mov	a,@r1
	add	a,r6
	dec	a
	mov	_del_PARM_3,a
	inc	r1
	mov	a,@r1
	add	a,r5
	dec	a
	mov	_del_PARM_4,a
	mov	_del_PARM_2,r5
	mov	_del_PARM_5,#0x00
	mov	dpl,r6
	lcall	_del
;	./src/main.c:192: player1[idx][1] = nxt_row;
	mov	a,_idx
	add	a,_idx
	add	a,#_player1
	inc	a
	mov	r0,a
	mov	@r0,_nxt_row
;	./src/main.c:193: player1[idx][0] = nxt_col;
	mov	a,_idx
	add	a,_idx
	add	a,#_player1
	mov	r0,a
	mov	@r0,_nxt_col
;	./src/main.c:195: draw(player1[idx][0], player1[idx][1], player1[idx][0]+boat_type[idx][0]-1, player1[idx][1]+boat_type[idx][1]-1, 0);
	mov	a,_idx
	add	a,_idx
	mov	r7,a
	add	a,#_player1
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar5,@r1
	mov	a,r7
	add	a,#_boat_type
	mov	r1,a
	mov	a,@r1
	add	a,r6
	dec	a
	mov	_draw_PARM_3,a
	inc	r1
	mov	a,@r1
	add	a,r5
	dec	a
	mov	_draw_PARM_4,a
	mov	_draw_PARM_2,r5
	mov	_draw_PARM_5,#0x00
	mov	dpl,r6
	lcall	_draw
;	./src/main.c:196: now_key = 0;
	mov	_now_key,#0x00
;	./src/main.c:197: delay_ms(100);
	mov	dptr,#0x0064
	lcall	_delay_ms
00129$:
;	./src/main.c:201: for (i=1;i<=8;i++){
	mov	_i,#0x01
00154$:
;	./src/main.c:202: Writesingle7219(2, i, mat1_1[i]);
	mov	a,_i
	add	a,#_mat1_1
	mov	r1,a
	mov	_Writesingle7219_PARM_3,@r1
	mov	_Writesingle7219_PARM_2,_i
	mov	dpl,#0x02
	lcall	_Writesingle7219
;	./src/main.c:201: for (i=1;i<=8;i++){
	inc	_i
	mov	a,_i
	add	a,#0xff - 0x08
	jnc	00154$
;	./src/main.c:204: if (but1 == 0){
	jnb	_INT0,00338$
	ljmp	00139$
00338$:
;	./src/main.c:205: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/main.c:206: if (but1 == 0){
	jnb	_INT0,00339$
	ljmp	00139$
00339$:
;	./src/main.c:207: idx+=1;
	mov	a,_idx
	mov	r7,a
	inc	a
	mov	_idx,a
;	./src/main.c:208: check_ = 0;
;	./src/main.c:209: for(in_i = 0;in_i < 588;in_i++){
	clr	a
	mov	_check_,a
	mov	_in_i,a
	mov	(_in_i + 1),a
00156$:
;	./src/main.c:210: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:211: Delay_Re(); // 發出Re的音
	lcall	_Delay_Re
;	./src/main.c:212: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:213: Delay_Re();
	lcall	_Delay_Re
;	./src/main.c:209: for(in_i = 0;in_i < 588;in_i++){
	inc	_in_i
	clr	a
	cjne	a,_in_i,00340$
	inc	(_in_i + 1)
00340$:
	clr	c
	mov	a,_in_i
	subb	a,#0x4c
	mov	a,(_in_i + 1)
	xrl	a,#0x80
	subb	a,#0x82
	jc	00156$
;	./src/main.c:215: while (but1 == 0);
00132$:
	jnb	_INT0,00132$
	ljmp	00139$
00144$:
;	./src/main.c:220: mode = 2;
	mov	_mode,#0x02
;	./src/main.c:221: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mode2'
;------------------------------------------------------------
;	./src/main.c:222: void mode2(void){
;	-----------------------------------------
;	 function mode2
;	-----------------------------------------
_mode2:
;	./src/main.c:223: OLED_Clear();
	lcall	_OLED_Clear
;	./src/main.c:224: OLED_SetCursor(2, 3);
	mov	_OLED_SetCursor_PARM_2,#0x03
	mov	dpl,#0x02
	lcall	_OLED_SetCursor
;	./src/main.c:225: OLED_DisplayString("Player2 setting ");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:227: conti_flag = 0;
	mov	_conti_flag,#0x00
;	./src/main.c:229: nxt_row = 0; nxt_col = 0;
	mov	_nxt_row,#0x00
	mov	_nxt_col,#0x00
;	./src/main.c:230: check_ = 0;
	mov	_check_,#0x00
;	./src/main.c:231: idx = 0;
	mov	_idx,#0x00
;	./src/main.c:232: while (idx < 2){
00142$:
	mov	a,#0x100 - 0x02
	add	a,_idx
	jnc	00304$
	ljmp	00144$
00304$:
;	./src/main.c:233: conti_flag = 0;
	mov	_conti_flag,#0x00
;	./src/main.c:234: for (tmp_l=0;tmp_l<idx;tmp_l++){ // default idx
	mov	_tmp_l,#0x00
00149$:
	clr	c
	mov	a,_tmp_l
	subb	a,_idx
	jc	00305$
	ljmp	00112$
00305$:
;	./src/main.c:235: for (tmp_i=1;tmp_i<=8;tmp_i++){
	mov	_tmp_i,#0x01
00146$:
;	./src/main.c:236: for (tmp_j=0;tmp_j<8;tmp_j++){
	mov	_tmp_j,#0x00
00145$:
;	./src/main.c:237: if (conti_flag != 0)break;;
	mov	a,_conti_flag
	jz	00306$
	ljmp	00147$
00306$:
;	./src/main.c:238: if (tmp_j+boat_type[idx][1]-1 > 7 ){continue;}
	mov	r6,_tmp_j
	mov	r7,#0x00
	mov	a,_idx
	add	a,_idx
	mov	r5,a
	add	a,#_boat_type
	inc	a
	mov	r1,a
	mov	ar4,@r1
	mov	r3,#0x00
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	dec	r6
	cjne	r6,#0xff,00307$
	dec	r7
00307$:
	clr	c
	mov	a,#0x07
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00109$
;	./src/main.c:239: if (tmp_i+boat_type[idx][0]-1 > 8){continue;}
	mov	r6,_tmp_i
	mov	r7,#0x00
	mov	a,r5
	add	a,#_boat_type
	mov	r1,a
	mov	ar5,@r1
	mov	ar3,r5
	mov	r4,#0x00
	mov	a,r3
	add	a,r6
	mov	r6,a
	mov	a,r4
	addc	a,r7
	mov	r7,a
	dec	r6
	cjne	r6,#0xff,00309$
	dec	r7
00309$:
	clr	c
	mov	a,#0x08
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00109$
;	./src/main.c:241: if (overlap(tmp_i, tmp_j, boat_type[idx][0], boat_type[idx][1],
	inc	r1
	mov	_overlap_PARM_4,@r1
;	./src/main.c:242: player2[tmp_l][0], player2[tmp_l][1], boat_type[tmp_l][0], boat_type[tmp_l][1]) != 1){
	mov	a,_tmp_l
	add	a,_tmp_l
	mov	r7,a
	add	a,#_player2
	mov	r1,a
	mov	_overlap_PARM_5,@r1
	inc	r1
	mov	_overlap_PARM_6,@r1
	mov	a,r7
	add	a,#_boat_type
	mov	r1,a
	mov	_overlap_PARM_7,@r1
	inc	r1
	mov	_overlap_PARM_8,@r1
	mov	_overlap_PARM_2,_tmp_j
	mov	_overlap_PARM_3,r5
	mov	dpl,_tmp_i
	lcall	_overlap
	mov	r7,dpl
	cjne	r7,#0x01,00311$
	sjmp	00109$
00311$:
;	./src/main.c:243: player2[idx][0] = tmp_i;
	mov	a,_idx
	add	a,_idx
	add	a,#_player2
	mov	r0,a
	mov	@r0,_tmp_i
;	./src/main.c:244: player2[idx][1] = tmp_j;
	mov	a,_idx
	add	a,_idx
	add	a,#_player2
	mov	r7,a
	inc	a
	mov	r0,a
	mov	@r0,_tmp_j
;	./src/main.c:245: conti_flag = 1;
	mov	_conti_flag,#0x01
;	./src/main.c:246: break;
	sjmp	00147$
00109$:
;	./src/main.c:236: for (tmp_j=0;tmp_j<8;tmp_j++){
	inc	_tmp_j
	mov	a,#0x100 - 0x08
	add	a,_tmp_j
	jc	00312$
	ljmp	00145$
00312$:
00147$:
;	./src/main.c:235: for (tmp_i=1;tmp_i<=8;tmp_i++){
	inc	_tmp_i
	mov	a,_tmp_i
	add	a,#0xff - 0x08
	jc	00313$
	ljmp	00146$
00313$:
;	./src/main.c:234: for (tmp_l=0;tmp_l<idx;tmp_l++){ // default idx
	inc	_tmp_l
	ljmp	00149$
00112$:
;	./src/main.c:252: check_ = 1;
	mov	_check_,#0x01
;	./src/main.c:253: OLED_SetCursor(3, 3);
	mov	_OLED_SetCursor_PARM_2,#0x03
	mov	dpl,#0x03
	lcall	_OLED_SetCursor
;	./src/main.c:254: OLED_DisplayString("setting ");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:255: OLED_DisplayChar('0' + idx);
	mov	r7,_idx
	mov	a,#0x30
	add	a,r7
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:257: draw(player2[idx][0], player2[idx][1], player2[idx][0]+boat_type[idx][0]-1, player2[idx][1]+boat_type[idx][1]-1, 1);
	mov	a,_idx
	add	a,_idx
	mov	r7,a
	add	a,#_player2
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar5,@r1
	mov	a,r7
	add	a,#_boat_type
	mov	r1,a
	mov	a,@r1
	add	a,r6
	dec	a
	mov	_draw_PARM_3,a
	inc	r1
	mov	a,@r1
	add	a,r5
	dec	a
	mov	_draw_PARM_4,a
	mov	_draw_PARM_2,r5
	mov	_draw_PARM_5,#0x01
	mov	dpl,r6
	lcall	_draw
;	./src/main.c:258: while (check_){
00139$:
	mov	a,_check_
	jnz	00314$
	ljmp	00142$
00314$:
;	./src/main.c:259: OLED_SetCursor(4, 3);
	mov	_OLED_SetCursor_PARM_2,#0x03
	mov	dpl,#0x04
	lcall	_OLED_SetCursor
;	./src/main.c:260: OLED_DisplayString("set row: ");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:261: OLED_DisplayChar('0' + player2[idx][1]);
	mov	a,_idx
	add	a,_idx
	add	a,#_player2
	inc	a
	mov	r1,a
	mov	ar7,@r1
	mov	a,#0x30
	add	a,r7
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:262: OLED_SetCursor(5, 3);
	mov	_OLED_SetCursor_PARM_2,#0x03
	mov	dpl,#0x05
	lcall	_OLED_SetCursor
;	./src/main.c:263: OLED_DisplayString("set col: ");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:264: OLED_DisplayChar('0' + player2[idx][0]);
	mov	a,_idx
	add	a,_idx
	add	a,#_player2
	mov	r1,a
	mov	ar7,@r1
	mov	a,#0x30
	add	a,r7
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:267: now_key = Get_Key();
	lcall	_Get_Key
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:268: if (now_key != 0){
	mov	a,r6
	mov	_now_key,a
	jnz	00315$
	ljmp	00129$
00315$:
;	./src/main.c:269: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/main.c:270: if (Get_Key() == now_key){
	lcall	_Get_Key
	mov	r6,dpl
	mov	r7,dph
	mov	r4,_now_key
	mov	r5,#0x00
	mov	a,r6
	cjne	a,ar4,00316$
	mov	a,r7
	cjne	a,ar5,00316$
	sjmp	00317$
00316$:
	ljmp	00129$
00317$:
;	./src/main.c:271: nxt_col = player2[idx][0];nxt_row = player2[idx][1];
	mov	a,_idx
	add	a,_idx
	mov	r7,a
	add	a,#_player2
	mov	r1,a
	mov	_nxt_col,@r1
	inc	r1
	mov	_nxt_row,@r1
;	./src/main.c:272: if (now_key == 3){// up r
	mov	a,#0x03
	cjne	a,_now_key,00114$
;	./src/main.c:273: nxt_row = (player2[idx][1] <= 0)? player2[idx][1]:player2[idx][1]-1;
	mov	a,r7
	add	a,#_player2
	inc	a
	mov	r1,a
	mov	a,@r1
	jnz	00160$
	mov	a,r7
	add	a,#_player2
	inc	a
	mov	r1,a
	mov	ar6,@r1
	sjmp	00161$
00160$:
	mov	a,r7
	add	a,#_player2
	inc	a
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	dec	a
	mov	r6,a
00161$:
	mov	_nxt_row,r6
00114$:
;	./src/main.c:274: }if (now_key == 4){ // down r
	mov	a,#0x04
	cjne	a,_now_key,00116$
;	./src/main.c:275: nxt_row = (player2[idx][1]+boat_type[idx][1]-1 >= 7)? player2[idx][1]:player2[idx][1]+1;
	mov	a,_idx
	add	a,_idx
	mov	r7,a
	add	a,#_player2
	inc	a
	mov	r1,a
	mov	ar6,@r1
	mov	r5,#0x00
	mov	a,r7
	add	a,#_boat_type
	inc	a
	mov	r1,a
	mov	ar4,@r1
	mov	r3,#0x00
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	dec	r6
	cjne	r6,#0xff,00323$
	dec	r5
00323$:
	clr	c
	mov	a,r6
	subb	a,#0x07
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	mov	_mode2_sloc0_1_0,c
	jc	00162$
	mov	a,r7
	add	a,#_player2
	inc	a
	mov	r1,a
	mov	ar6,@r1
	sjmp	00163$
00162$:
	mov	a,r7
	add	a,#_player2
	inc	a
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	inc	a
	mov	r6,a
00163$:
	mov	_nxt_row,r6
00116$:
;	./src/main.c:277: if (now_key == 7){// left r
	mov	a,#0x07
	cjne	a,_now_key,00118$
;	./src/main.c:278: nxt_col = (player2[idx][0] <= 1)? player2[idx][0]:player2[idx][0]-1;
	mov	a,_idx
	add	a,_idx
	add	a,#_player2
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	add	a,#0xff - 0x01
	mov	_mode2_sloc0_1_0,c
	jc	00164$
	mov	ar6,r7
	sjmp	00165$
00164$:
	mov	a,r7
	dec	a
	mov	r6,a
00165$:
	mov	_nxt_col,r6
00118$:
;	./src/main.c:280: if (now_key == 8){// right r
	mov	a,#0x08
	cjne	a,_now_key,00120$
;	./src/main.c:281: nxt_col = (player2[idx][0]+boat_type[idx][0]-1 >= 8)? player2[idx][0]:player2[idx][0]+1;
	mov	a,_idx
	add	a,_idx
	mov	r7,a
	add	a,#_player2
	mov	r1,a
	mov	ar6,@r1
	mov	ar4,r6
	mov	r5,#0x00
	mov	a,r7
	add	a,#_boat_type
	mov	r1,a
	mov	ar7,@r1
	mov	r3,#0x00
	mov	a,r7
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	dec	r4
	cjne	r4,#0xff,00330$
	dec	r5
00330$:
	clr	c
	mov	a,r4
	subb	a,#0x08
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	mov	_mode2_sloc0_1_0,c
	jc	00166$
	mov	ar7,r6
	sjmp	00167$
00166$:
	mov	a,r6
	inc	a
	mov	r7,a
00167$:
	mov	_nxt_col,r7
00120$:
;	./src/main.c:284: for (l=0;l<idx;l++){
	mov	_l,#0x00
00152$:
	clr	c
	mov	a,_l
	subb	a,_idx
	jnc	00123$
;	./src/main.c:285: conti_flag = 0;
	mov	_conti_flag,#0x00
;	./src/main.c:286: if (overlap(nxt_col, nxt_row, boat_type[idx][0], boat_type[idx][1],
	mov	a,_idx
	add	a,_idx
	add	a,#_boat_type
	mov	r1,a
	mov	_overlap_PARM_3,@r1
	inc	r1
	mov	_overlap_PARM_4,@r1
;	./src/main.c:287: player2[l][0], player2[l][1], boat_type[l][0], boat_type[l][1]) == 1){
	mov	a,_l
	add	a,_l
	mov	r7,a
	add	a,#_player2
	mov	r1,a
	mov	_overlap_PARM_5,@r1
	inc	r1
	mov	_overlap_PARM_6,@r1
	mov	a,r7
	add	a,#_boat_type
	mov	r1,a
	mov	_overlap_PARM_7,@r1
	inc	r1
	mov	_overlap_PARM_8,@r1
	mov	_overlap_PARM_2,_nxt_row
	mov	dpl,_nxt_col
	lcall	_overlap
	mov	r7,dpl
	cjne	r7,#0x01,00153$
;	./src/main.c:288: conti_flag = 1;
	mov	_conti_flag,#0x01
;	./src/main.c:289: break;;
	sjmp	00123$
00153$:
;	./src/main.c:284: for (l=0;l<idx;l++){
	inc	_l
	sjmp	00152$
00123$:
;	./src/main.c:292: if (conti_flag == 1){
	mov	a,#0x01
	cjne	a,_conti_flag,00125$
;	./src/main.c:293: conti_flag = 0;
	mov	_conti_flag,#0x00
;	./src/main.c:294: continue;
	ljmp	00139$
00125$:
;	./src/main.c:301: del(player2[idx][0], player2[idx][1], player2[idx][0]+boat_type[idx][0]-1, player2[idx][1]+boat_type[idx][1]-1, 1);
	mov	a,_idx
	add	a,_idx
	mov	r7,a
	add	a,#_player2
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar5,@r1
	mov	a,r7
	add	a,#_boat_type
	mov	r1,a
	mov	a,@r1
	add	a,r6
	dec	a
	mov	_del_PARM_3,a
	inc	r1
	mov	a,@r1
	add	a,r5
	dec	a
	mov	_del_PARM_4,a
	mov	_del_PARM_2,r5
	mov	_del_PARM_5,#0x01
	mov	dpl,r6
	lcall	_del
;	./src/main.c:302: player2[idx][1] = nxt_row;
	mov	a,_idx
	add	a,_idx
	add	a,#_player2
	inc	a
	mov	r0,a
	mov	@r0,_nxt_row
;	./src/main.c:303: player2[idx][0] = nxt_col;
	mov	a,_idx
	add	a,_idx
	add	a,#_player2
	mov	r0,a
	mov	@r0,_nxt_col
;	./src/main.c:304: draw(player2[idx][0], player2[idx][1], player2[idx][0]+boat_type[idx][0]-1, player2[idx][1]+boat_type[idx][1]-1, 1);
	mov	a,_idx
	add	a,_idx
	mov	r7,a
	add	a,#_player2
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar5,@r1
	mov	a,r7
	add	a,#_boat_type
	mov	r1,a
	mov	a,@r1
	add	a,r6
	dec	a
	mov	_draw_PARM_3,a
	inc	r1
	mov	a,@r1
	add	a,r5
	dec	a
	mov	_draw_PARM_4,a
	mov	_draw_PARM_2,r5
	mov	_draw_PARM_5,#0x01
	mov	dpl,r6
	lcall	_draw
;	./src/main.c:305: now_key = 0;
	mov	_now_key,#0x00
;	./src/main.c:306: delay_ms(100);
	mov	dptr,#0x0064
	lcall	_delay_ms
00129$:
;	./src/main.c:310: for (i=1;i<=8;i++){
	mov	_i,#0x01
00154$:
;	./src/main.c:311: Writesingle7219(4, i, mat2_2[i]);
	mov	a,_i
	add	a,#_mat2_2
	mov	r1,a
	mov	_Writesingle7219_PARM_3,@r1
	mov	_Writesingle7219_PARM_2,_i
	mov	dpl,#0x04
	lcall	_Writesingle7219
;	./src/main.c:310: for (i=1;i<=8;i++){
	inc	_i
	mov	a,_i
	add	a,#0xff - 0x08
	jnc	00154$
;	./src/main.c:313: if (but4 == 0){
	jnb	_P2_1,00338$
	ljmp	00139$
00338$:
;	./src/main.c:314: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/main.c:315: if (but4 == 0){
	jnb	_P2_1,00339$
	ljmp	00139$
00339$:
;	./src/main.c:316: idx+=1;
	mov	a,_idx
	mov	r7,a
	inc	a
	mov	_idx,a
;	./src/main.c:317: check_ = 0;
;	./src/main.c:318: for(in_i = 0;in_i < 588;in_i++){
	clr	a
	mov	_check_,a
	mov	_in_i,a
	mov	(_in_i + 1),a
00156$:
;	./src/main.c:319: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:320: Delay_Re();
	lcall	_Delay_Re
;	./src/main.c:321: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:322: Delay_Re();
	lcall	_Delay_Re
;	./src/main.c:318: for(in_i = 0;in_i < 588;in_i++){
	inc	_in_i
	clr	a
	cjne	a,_in_i,00340$
	inc	(_in_i + 1)
00340$:
	clr	c
	mov	a,_in_i
	subb	a,#0x4c
	mov	a,(_in_i + 1)
	xrl	a,#0x80
	subb	a,#0x82
	jc	00156$
;	./src/main.c:324: while (but4 == 0);
00132$:
	jnb	_P2_1,00132$
	ljmp	00139$
00144$:
;	./src/main.c:330: mode = 3;
	mov	_mode,#0x03
;	./src/main.c:331: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mode3'
;------------------------------------------------------------
;	./src/main.c:333: void mode3(void){
;	-----------------------------------------
;	 function mode3
;	-----------------------------------------
_mode3:
;	./src/main.c:334: turn = 1;
	mov	_turn,#0x01
;	./src/main.c:335: OLED_Clear();
	lcall	_OLED_Clear
;	./src/main.c:336: OLED_SetCursor(2, 3);
	mov	_OLED_SetCursor_PARM_2,#0x03
	mov	dpl,#0x02
	lcall	_OLED_SetCursor
;	./src/main.c:337: OLED_DisplayString("Player ");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:338: OLED_DisplayChar('0'+turn);
	mov	r7,_turn
	mov	a,#0x30
	add	a,r7
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:339: OLED_DisplayString(" turn ");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:340: OLED_SetCursor(3, 4);
	mov	_OLED_SetCursor_PARM_2,#0x04
	mov	dpl,#0x03
	lcall	_OLED_SetCursor
;	./src/main.c:341: OLED_DisplayString("now row: ");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:342: OLED_SetCursor(4, 4);
	mov	_OLED_SetCursor_PARM_2,#0x04
	mov	dpl,#0x04
	lcall	_OLED_SetCursor
;	./src/main.c:343: OLED_DisplayString("now col: ");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:344: OLED_SetCursor(5, 4);
	mov	_OLED_SetCursor_PARM_2,#0x04
	mov	dpl,#0x05
	lcall	_OLED_SetCursor
;	./src/main.c:345: OLED_DisplayString("now score: "); // OLED要顯示的資訊
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:348: while (winner == 0){ // 若還沒產生贏家
00142$:
	mov	a,_winner
	jz	00295$
	ljmp	00144$
00295$:
;	./src/main.c:351: now_col = player[turn][0];
	mov	a,_turn
	add	a,_turn
	add	a,#_player
	mov	r1,a
	mov	_now_col,@r1
;	./src/main.c:352: now_row = player[turn][1];
	inc	r1
	mov	_now_row,@r1
;	./src/main.c:353: OLED_SetCursor(3, 55);
	mov	_OLED_SetCursor_PARM_2,#0x37
	mov	dpl,#0x03
	lcall	_OLED_SetCursor
;	./src/main.c:354: OLED_DisplayChar('0'+now_row);
	mov	r7,_now_row
	mov	a,#0x30
	add	a,r7
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:355: OLED_SetCursor(4, 55);
	mov	_OLED_SetCursor_PARM_2,#0x37
	mov	dpl,#0x04
	lcall	_OLED_SetCursor
;	./src/main.c:356: OLED_DisplayChar('0'+now_col);
	mov	r7,_now_col
	mov	a,#0x30
	add	a,r7
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:357: OLED_SetCursor(5, 70);
	mov	_OLED_SetCursor_PARM_2,#0x46
	mov	dpl,#0x05
	lcall	_OLED_SetCursor
;	./src/main.c:358: OLED_DisplayChar(player_score[turn]/10+'0');
	mov	a,_turn
	add	a,#_player_score
	mov	r1,a
	mov	ar7,@r1
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:359: OLED_DisplayChar(player_score[turn]%10 + '0'); // 顯示當前資訊
	mov	a,_turn
	add	a,#_player_score
	mov	r1,a
	mov	ar7,@r1
	mov	r6,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:360: now_key = Get_Key();
	lcall	_Get_Key
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:361: if (now_key != 0){
	mov	a,r6
	mov	_now_key,a
	jnz	00296$
	ljmp	00115$
00296$:
;	./src/main.c:362: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/main.c:363: if (now_key == Get_Key()){ //  移動鼠標
	lcall	_Get_Key
	mov	r6,dpl
	mov	r7,dph
	mov	r4,_now_key
	mov	r5,#0x00
	mov	a,r4
	cjne	a,ar6,00297$
	mov	a,r5
	cjne	a,ar7,00297$
	sjmp	00298$
00297$:
	ljmp	00115$
00298$:
;	./src/main.c:364: nxt_col = now_col;nxt_row = now_row;
	mov	_nxt_col,_now_col
	mov	_nxt_row,_now_row
;	./src/main.c:365: if (now_key == 1){
	mov	a,#0x01
	cjne	a,_now_key,00110$
;	./src/main.c:366: nxt_row = (now_row <= 0)? 0:now_row-1;
	mov	a,_now_row
	jnz	00159$
	mov	r6,a
	mov	r7,a
	sjmp	00160$
00159$:
	mov	r5,_now_row
	dec	r5
	mov	a,r5
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
00160$:
	mov	_nxt_row,r6
	sjmp	00111$
00110$:
;	./src/main.c:367: }else if (now_key == 2){
	mov	a,#0x02
	cjne	a,_now_key,00107$
;	./src/main.c:368: nxt_row = (now_row >= 7)? now_row:now_row+1;
	clr	c
	mov	a,_now_row
	subb	a,#0x07
	mov	_mode3_sloc0_1_0,c
	jc	00161$
	mov	r7,_now_row
	sjmp	00162$
00161$:
	mov	a,_now_row
	mov	r6,a
	inc	a
	mov	r7,a
00162$:
	mov	_nxt_row,r7
	sjmp	00111$
00107$:
;	./src/main.c:369: }else if (now_key == 5){
	mov	a,#0x05
	cjne	a,_now_key,00104$
;	./src/main.c:370: nxt_col = (now_col <= 1)? 1:now_col-1;
	mov	a,_now_col
	add	a,#0xff - 0x01
	mov	_mode3_sloc0_1_0,c
	jc	00163$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00164$
00163$:
	mov	r5,_now_col
	dec	r5
	mov	a,r5
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
00164$:
	mov	_nxt_col,r6
	sjmp	00111$
00104$:
;	./src/main.c:371: }else if (now_key == 6){
	mov	a,#0x06
	cjne	a,_now_key,00111$
;	./src/main.c:372: nxt_col = (now_col >= 8)? now_col:now_col+1;
	clr	c
	mov	a,_now_col
	subb	a,#0x08
	mov	_mode3_sloc0_1_0,c
	jc	00165$
	mov	r7,_now_col
	sjmp	00166$
00165$:
	mov	a,_now_col
	mov	r6,a
	inc	a
	mov	r7,a
00166$:
	mov	_nxt_col,r7
00111$:
;	./src/main.c:374: now_col = nxt_col;
	mov	_now_col,_nxt_col
;	./src/main.c:375: now_row = nxt_row;
	mov	_now_row,_nxt_row
;	./src/main.c:376: player[turn][0] = now_col;
	mov	a,_turn
	add	a,_turn
	add	a,#_player
	mov	r0,a
	mov	@r0,_now_col
;	./src/main.c:377: player[turn][1] = now_row;
	mov	a,_turn
	add	a,_turn
	add	a,#_player
	mov	r7,a
	inc	a
	mov	r0,a
	mov	@r0,_now_row
00115$:
;	./src/main.c:381: if (but1 == 0){ // 按下but1，跳過自己回合
	jb	_INT0,00119$
;	./src/main.c:382: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/main.c:383: if (but1 == 0){
	jb	_INT0,00119$
;	./src/main.c:384: player[turn][0] = now_col;
	mov	a,_turn
	add	a,_turn
	add	a,#_player
	mov	r0,a
	mov	@r0,_now_col
;	./src/main.c:385: player[turn][1] = now_row;
	mov	a,_turn
	add	a,_turn
	add	a,#_player
	mov	r7,a
	inc	a
	mov	r0,a
	mov	@r0,_now_row
;	./src/main.c:386: mode = 4;
	mov	_mode,#0x04
;	./src/main.c:387: break;
	ljmp	00144$
00119$:
;	./src/main.c:390: if (but2 == 0){ // 按but2，猜格子
	jnb	_INT1,00313$
	ljmp	00133$
00313$:
;	./src/main.c:391: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/main.c:392: if (but2 == 0){
	jnb	_INT1,00314$
	ljmp	00133$
00314$:
;	./src/main.c:393: if (Get_Dot(now_col, now_row, 2) != 0){ // 猜重複格子
	mov	_Get_Dot_PARM_2,_now_row
	mov	_Get_Dot_PARM_3,#0x02
	mov	dpl,_now_col
	lcall	_Get_Dot
	mov	a,dpl
	jz	00122$
;	./src/main.c:394: for(in_i = 0;in_i < 523;in_i++){
	clr	a
	mov	_in_i,a
	mov	(_in_i + 1),a
00147$:
;	./src/main.c:395: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:396: Delay_Do();
	lcall	_Delay_Do
;	./src/main.c:397: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:398: Delay_Do();
	lcall	_Delay_Do
;	./src/main.c:394: for(in_i = 0;in_i < 523;in_i++){
	inc	_in_i
	clr	a
	cjne	a,_in_i,00316$
	inc	(_in_i + 1)
00316$:
	clr	c
	mov	a,_in_i
	subb	a,#0x0b
	mov	a,(_in_i + 1)
	xrl	a,#0x80
	subb	a,#0x82
	jc	00147$
;	./src/main.c:400: continue;
	ljmp	00142$
00122$:
;	./src/main.c:402: draw(now_col, now_row, now_col, now_row, 2); // 記錄這一點有猜過
	mov	_draw_PARM_2,_now_row
	mov	_draw_PARM_3,_now_col
	mov	_draw_PARM_4,_now_row
	mov	_draw_PARM_5,#0x02
	mov	dpl,_now_col
	lcall	_draw
;	./src/main.c:403: if ((Get_Dot(now_col, now_row, 1) == 0)){    // 猜錯
	mov	_Get_Dot_PARM_2,_now_row
	mov	_Get_Dot_PARM_3,#0x01
	mov	dpl,_now_col
	lcall	_Get_Dot
	mov	a,dpl
;	./src/main.c:404: for(in_i = 0;in_i < 523;in_i++){
	jnz	00128$
	mov	_in_i,a
	mov	(_in_i + 1),a
00149$:
;	./src/main.c:405: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:406: Delay_Do();
	lcall	_Delay_Do
;	./src/main.c:407: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:408: Delay_Do();
	lcall	_Delay_Do
;	./src/main.c:404: for(in_i = 0;in_i < 523;in_i++){
	inc	_in_i
	clr	a
	cjne	a,_in_i,00319$
	inc	(_in_i + 1)
00319$:
	clr	c
	mov	a,_in_i
	subb	a,#0x0b
	mov	a,(_in_i + 1)
	xrl	a,#0x80
	subb	a,#0x82
	jc	00149$
;	./src/main.c:410: player[turn][0] = now_col;
	mov	a,_turn
	add	a,_turn
	add	a,#_player
	mov	r0,a
	mov	@r0,_now_col
;	./src/main.c:411: player[turn][1] = now_row;
	mov	a,_turn
	add	a,_turn
	add	a,#_player
	mov	r7,a
	inc	a
	mov	r0,a
	mov	@r0,_now_row
;	./src/main.c:412: mode = 4; // 跳出mode3 迴圈，換mode4 player2 猜
	mov	_mode,#0x04
;	./src/main.c:413: break;
	ljmp	00144$
00128$:
;	./src/main.c:415: for(in_i = 0;in_i < 588;in_i++){// 猜對
	clr	a
	mov	_in_i,a
	mov	(_in_i + 1),a
00151$:
;	./src/main.c:416: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:417: Delay_Re();
	lcall	_Delay_Re
;	./src/main.c:418: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:419: Delay_Re();
	lcall	_Delay_Re
;	./src/main.c:415: for(in_i = 0;in_i < 588;in_i++){// 猜對
	inc	_in_i
	clr	a
	cjne	a,_in_i,00321$
	inc	(_in_i + 1)
00321$:
	clr	c
	mov	a,_in_i
	subb	a,#0x4c
	mov	a,(_in_i + 1)
	xrl	a,#0x80
	subb	a,#0x82
	jc	00151$
;	./src/main.c:421: player_score[turn]+=1;
	mov	a,_turn
	add	a,#_player_score
	mov	r1,a
	inc	@r1
	mov	a,@r1
;	./src/main.c:422: if (player_score[turn] >= 17){ // 判斷自己有沒有贏
	mov	a,_turn
	add	a,#_player_score
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x11,00323$
00323$:
	jc	00133$
;	./src/main.c:423: winner = turn;
	mov	_winner,_turn
;	./src/main.c:424: break;
	ljmp	00144$
00133$:
;	./src/main.c:430: for (i=1;i<=8;i++){
	mov	_i,#0x01
00153$:
;	./src/main.c:431: if (i == now_col)mask = 1 << now_row; // 記得顯示當前鼠標的位置
	mov	a,_now_col
	cjne	a,_i,00135$
	mov	r7,_now_row
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00329$
00327$:
	add	a,acc
00329$:
	djnz	b,00327$
	mov	_mask,a
	sjmp	00136$
00135$:
;	./src/main.c:432: else mask = 0;
	mov	_mask,#0x00
00136$:
;	./src/main.c:433: Writesingle7219(1, i, (mat1_2[i] | mask));
	mov	a,_i
	add	a,#_mat1_2
	mov	r1,a
	mov	ar7,@r1
	mov	a,_mask
	orl	a,r7
	mov	_Writesingle7219_PARM_3,a
	mov	_Writesingle7219_PARM_2,_i
	mov	dpl,#0x01
	lcall	_Writesingle7219
;	./src/main.c:430: for (i=1;i<=8;i++){
	inc	_i
	mov	a,_i
	add	a,#0xff - 0x08
	jnc	00153$
;	./src/main.c:434: }delay_ms(100);
	mov	dptr,#0x0064
	lcall	_delay_ms
;	./src/main.c:435: for (i=1;i<=8;i++){
	mov	_i,#0x01
00155$:
;	./src/main.c:436: mask = 0;
	mov	_mask,#0x00
;	./src/main.c:437: if (now_col == i)mask |= 1<<now_row; // 鼠標的位置
	mov	a,_i
	cjne	a,_now_col,00139$
	mov	r7,_now_row
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00335$
00333$:
	add	a,acc
00335$:
	djnz	b,00333$
	mov	_mask,a
	sjmp	00140$
00139$:
;	./src/main.c:438: else mask = 0;
	mov	_mask,#0x00
00140$:
;	./src/main.c:439: mask |= (mat2_2[i] & mat1_2[i]);     // 實際猜對的位置
	mov	a,_i
	add	a,#_mat2_2
	mov	r1,a
	mov	ar7,@r1
	mov	a,_i
	add	a,#_mat1_2
	mov	r1,a
	mov	a,@r1
	anl	a,r7
	orl	_mask,a
;	./src/main.c:440: mask = ~mask;
	mov	a,_mask
	cpl	a
;	./src/main.c:441: Writesingle7219(1, i, mat1_2[i]&mask); // 將上述的位置的燈熄滅，以達到閃爍的效果
	mov	_mask,a
	mov	ar7,@r1
	anl	a,r7
	mov	_Writesingle7219_PARM_3,a
	mov	_Writesingle7219_PARM_2,_i
	mov	dpl,#0x01
	lcall	_Writesingle7219
;	./src/main.c:435: for (i=1;i<=8;i++){
	inc	_i
	mov	a,_i
	add	a,#0xff - 0x08
	jnc	00155$
	ljmp	00142$
00144$:
;	./src/main.c:444: if (winner != 0){
	mov	a,_winner
	jz	00157$
;	./src/main.c:445: mode = 5;
	mov	_mode,#0x05
00157$:
;	./src/main.c:450: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'overlap'
;------------------------------------------------------------
;y1                        Allocated with name '_overlap_PARM_2'
;h1                        Allocated with name '_overlap_PARM_3'
;w1                        Allocated with name '_overlap_PARM_4'
;x2                        Allocated with name '_overlap_PARM_5'
;y2                        Allocated with name '_overlap_PARM_6'
;h2                        Allocated with name '_overlap_PARM_7'
;w2                        Allocated with name '_overlap_PARM_8'
;x1                        Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:451: char overlap(char x1, char y1, char h1, char w1,
;	-----------------------------------------
;	 function overlap
;	-----------------------------------------
_overlap:
	mov	r7,dpl
;	./src/main.c:453: for (i=x1;i<x1+h1;i++){
	mov	_i,r7
00113$:
	mov	ar5,r7
	mov	r6,#0x00
	mov	r3,_overlap_PARM_3
	mov	r4,#0x00
	mov	a,r3
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	r3,_i
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jc	00149$
	ljmp	00108$
00149$:
;	./src/main.c:454: for (j=y1;j<y1+w1;j++){
	mov	r6,_overlap_PARM_2
	mov	_j,r6
00110$:
	mov	ar4,r6
	mov	r5,#0x00
	mov	r2,_overlap_PARM_4
	mov	r3,#0x00
	mov	a,r2
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	r2,_j
	mov	r3,#0x00
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00114$
;	./src/main.c:456: if ((i >= x2) && (i < x2 + h2)){
	clr	c
	mov	a,_i
	subb	a,_overlap_PARM_5
	jc	00111$
	mov	r4,_overlap_PARM_5
	mov	r5,#0x00
	mov	r0,_overlap_PARM_7
	mov	r1,#0x00
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	r0,_i
	mov	r1,#0x00
	clr	c
	mov	a,r0
	subb	a,r4
	mov	a,r1
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00111$
;	./src/main.c:457: if ((j >= y2) && (j < y2+w2)){
	clr	c
	mov	a,_j
	subb	a,_overlap_PARM_6
	jc	00111$
	mov	r4,_overlap_PARM_6
	mov	r5,#0x00
	mov	r0,_overlap_PARM_8
	mov	r1,#0x00
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00111$
;	./src/main.c:458: return 1;
	mov	dpl,#0x01
	ret
00111$:
;	./src/main.c:454: for (j=y1;j<y1+w1;j++){
	inc	_j
	sjmp	00110$
00114$:
;	./src/main.c:453: for (i=x1;i<x1+h1;i++){
	inc	_i
	ljmp	00113$
00108$:
;	./src/main.c:462: }return 0;
	mov	dpl,#0x00
;	./src/main.c:463: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'del'
;------------------------------------------------------------
;y1                        Allocated with name '_del_PARM_2'
;x2                        Allocated with name '_del_PARM_3'
;y2                        Allocated with name '_del_PARM_4'
;type                      Allocated with name '_del_PARM_5'
;x1                        Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:465: void del(char x1, char y1, char x2, char y2, char type){
;	-----------------------------------------
;	 function del
;	-----------------------------------------
_del:
	mov	r7,dpl
;	./src/main.c:466: if (type == 0){// mat1_1
	mov	a,_del_PARM_5
	jnz	00104$
;	./src/main.c:467: for (i=x1;i<=x2;i++){
	mov	_i,r7
	mov	r6,_del_PARM_2
00113$:
	clr	c
	mov	a,_del_PARM_3
	subb	a,_i
	jc	00104$
;	./src/main.c:468: for (j=y1;j<=y2;j++){
	mov	_j,r6
00110$:
	clr	c
	mov	a,_del_PARM_4
	subb	a,_j
	jc	00114$
;	./src/main.c:469: mask = 1<<j;
	mov	r5,_j
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00168$
00166$:
	add	a,acc
00168$:
	djnz	b,00166$
;	./src/main.c:470: mask = ~mask;
	cpl	a
	mov	_mask,a
;	./src/main.c:471: mat1_1[i] &= mask;
	mov	a,_i
	add	a,#_mat1_1
	mov	r1,a
	mov	ar5,@r1
	mov	a,_mask
	anl	a,r5
	mov	@r1,a
;	./src/main.c:468: for (j=y1;j<=y2;j++){
	inc	_j
	sjmp	00110$
00114$:
;	./src/main.c:467: for (i=x1;i<=x2;i++){
	inc	_i
	sjmp	00113$
00104$:
;	./src/main.c:475: if (type == 1){// mat2_2
	mov	a,#0x01
	cjne	a,_del_PARM_5,00121$
;	./src/main.c:476: for (i=x1;i<=x2;i++){
	mov	_i,r7
	mov	r7,_del_PARM_2
00119$:
	clr	c
	mov	a,_del_PARM_3
	subb	a,_i
	jc	00121$
;	./src/main.c:477: for (j=y1;j<=y2;j++){
	mov	_j,r7
00116$:
	clr	c
	mov	a,_del_PARM_4
	subb	a,_j
	jc	00120$
;	./src/main.c:478: mask = 1<<j;
	mov	r6,_j
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00175$
00173$:
	add	a,acc
00175$:
	djnz	b,00173$
;	./src/main.c:479: mask = ~mask;
	cpl	a
	mov	_mask,a
;	./src/main.c:480: mat2_2[i] &= mask;
	mov	a,_i
	add	a,#_mat2_2
	mov	r1,a
	mov	ar6,@r1
	mov	a,_mask
	anl	a,r6
	mov	@r1,a
;	./src/main.c:477: for (j=y1;j<=y2;j++){
	inc	_j
	sjmp	00116$
00120$:
;	./src/main.c:476: for (i=x1;i<=x2;i++){
	inc	_i
	sjmp	00119$
00121$:
;	./src/main.c:484: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'draw'
;------------------------------------------------------------
;y1                        Allocated with name '_draw_PARM_2'
;x2                        Allocated with name '_draw_PARM_3'
;y2                        Allocated with name '_draw_PARM_4'
;type                      Allocated with name '_draw_PARM_5'
;x1                        Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:485: void draw(char x1, char y1, char x2, char y2, char type){
;	-----------------------------------------
;	 function draw
;	-----------------------------------------
_draw:
	mov	r7,dpl
;	./src/main.c:486: if (type == 0){// mat1_1
	mov	a,_draw_PARM_5
	jnz	00104$
;	./src/main.c:487: for (i=x1;i<=x2;i++){
	mov	_i,r7
	mov	r6,_draw_PARM_2
00121$:
	clr	c
	mov	a,_draw_PARM_3
	subb	a,_i
	jc	00104$
;	./src/main.c:488: for (j=y1;j<=y2;j++){
	mov	_j,r6
00118$:
	clr	c
	mov	a,_draw_PARM_4
	subb	a,_j
	jc	00122$
;	./src/main.c:489: mask = 1<<j;
	mov	r5,_j
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00228$
00226$:
	add	a,acc
00228$:
	djnz	b,00226$
	mov	_mask,a
;	./src/main.c:490: mat1_1[i] |= mask;
	mov	a,_i
	add	a,#_mat1_1
	mov	r1,a
	mov	ar5,@r1
	mov	a,_mask
	orl	a,r5
	mov	@r1,a
;	./src/main.c:488: for (j=y1;j<=y2;j++){
	inc	_j
	sjmp	00118$
00122$:
;	./src/main.c:487: for (i=x1;i<=x2;i++){
	inc	_i
	sjmp	00121$
00104$:
;	./src/main.c:494: if (type == 1){// mat1_1
	mov	a,#0x01
	cjne	a,_draw_PARM_5,00108$
;	./src/main.c:495: for (i=x1;i<=x2;i++){
	mov	_i,r7
	mov	r6,_draw_PARM_2
00127$:
	clr	c
	mov	a,_draw_PARM_3
	subb	a,_i
	jc	00108$
;	./src/main.c:496: for (j=y1;j<=y2;j++){
	mov	_j,r6
00124$:
	clr	c
	mov	a,_draw_PARM_4
	subb	a,_j
	jc	00128$
;	./src/main.c:497: mask = 1<<j;
	mov	r5,_j
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00235$
00233$:
	add	a,acc
00235$:
	djnz	b,00233$
	mov	_mask,a
;	./src/main.c:498: mat2_2[i] |= mask;
	mov	a,_i
	add	a,#_mat2_2
	mov	r1,a
	mov	ar5,@r1
	mov	a,_mask
	orl	a,r5
	mov	@r1,a
;	./src/main.c:496: for (j=y1;j<=y2;j++){
	inc	_j
	sjmp	00124$
00128$:
;	./src/main.c:495: for (i=x1;i<=x2;i++){
	inc	_i
	sjmp	00127$
00108$:
;	./src/main.c:502: if (type == 2){// mat1_2
	mov	a,#0x02
	cjne	a,_draw_PARM_5,00112$
;	./src/main.c:503: for (i=x1;i<=x2;i++){
	mov	_i,r7
	mov	r6,_draw_PARM_2
00133$:
	clr	c
	mov	a,_draw_PARM_3
	subb	a,_i
	jc	00112$
;	./src/main.c:504: for (j=y1;j<=y2;j++){
	mov	_j,r6
00130$:
	clr	c
	mov	a,_draw_PARM_4
	subb	a,_j
	jc	00134$
;	./src/main.c:505: mask = 1<<j;
	mov	r5,_j
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00242$
00240$:
	add	a,acc
00242$:
	djnz	b,00240$
	mov	_mask,a
;	./src/main.c:506: mat1_2[i] |= mask;
	mov	a,_i
	add	a,#_mat1_2
	mov	r1,a
	mov	ar5,@r1
	mov	a,_mask
	orl	a,r5
	mov	@r1,a
;	./src/main.c:504: for (j=y1;j<=y2;j++){
	inc	_j
	sjmp	00130$
00134$:
;	./src/main.c:503: for (i=x1;i<=x2;i++){
	inc	_i
	sjmp	00133$
00112$:
;	./src/main.c:510: if (type == 3){// mat2_1
	mov	a,#0x03
	cjne	a,_draw_PARM_5,00141$
;	./src/main.c:511: for (i=x1;i<=x2;i++){
	mov	_i,r7
	mov	r7,_draw_PARM_2
00139$:
	clr	c
	mov	a,_draw_PARM_3
	subb	a,_i
	jc	00141$
;	./src/main.c:512: for (j=y1;j<=y2;j++){
	mov	_j,r7
00136$:
	clr	c
	mov	a,_draw_PARM_4
	subb	a,_j
	jc	00140$
;	./src/main.c:513: mask = 1<<j;
	mov	r6,_j
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00249$
00247$:
	add	a,acc
00249$:
	djnz	b,00247$
	mov	_mask,a
;	./src/main.c:514: mat2_1[i] |= mask;
	mov	a,_i
	add	a,#_mat2_1
	mov	r1,a
	mov	ar6,@r1
	mov	a,_mask
	orl	a,r6
	mov	@r1,a
;	./src/main.c:512: for (j=y1;j<=y2;j++){
	inc	_j
	sjmp	00136$
00140$:
;	./src/main.c:511: for (i=x1;i<=x2;i++){
	inc	_i
	sjmp	00139$
00141$:
;	./src/main.c:518: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Get_Dot'
;------------------------------------------------------------
;row                       Allocated with name '_Get_Dot_PARM_2'
;type                      Allocated with name '_Get_Dot_PARM_3'
;col                       Allocated to registers r7 
;------------------------------------------------------------
;	./src/main.c:519: char Get_Dot(char col, char row,char type){
;	-----------------------------------------
;	 function Get_Dot
;	-----------------------------------------
_Get_Dot:
	mov	r7,dpl
;	./src/main.c:521: if (type == 0){// mat1_1
	mov	a,_Get_Dot_PARM_3
	jnz	00110$
;	./src/main.c:522: mask = 1<<row;
	mov	r6,_Get_Dot_PARM_2
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00133$
00131$:
	add	a,acc
00133$:
	djnz	b,00131$
	mov	_mask,a
;	./src/main.c:523: get_bit = mask & mat1_1[col];
	mov	a,r7
	add	a,#_mat1_1
	mov	r1,a
	mov	a,@r1
	anl	a,_mask
	mov	_get_bit,a
;	./src/main.c:524: return get_bit;
	mov	dpl,_get_bit
	ret
00110$:
;	./src/main.c:526: else if (type == 1){// mat2_2
	mov	a,#0x01
	cjne	a,_Get_Dot_PARM_3,00107$
;	./src/main.c:527: mask = 1<<row;
	mov	r6,_Get_Dot_PARM_2
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00138$
00136$:
	add	a,acc
00138$:
	djnz	b,00136$
	mov	_mask,a
;	./src/main.c:528: get_bit = mask & mat2_2[col];
	mov	a,r7
	add	a,#_mat2_2
	mov	r1,a
	mov	a,@r1
	anl	a,_mask
	mov	_get_bit,a
;	./src/main.c:529: return get_bit;
	mov	dpl,_get_bit
	ret
00107$:
;	./src/main.c:531: else if (type == 2){// mat1_2
	mov	a,#0x02
	cjne	a,_Get_Dot_PARM_3,00104$
;	./src/main.c:532: mask = 1<<row;
	mov	r6,_Get_Dot_PARM_2
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00143$
00141$:
	add	a,acc
00143$:
	djnz	b,00141$
	mov	_mask,a
;	./src/main.c:533: get_bit = mask & mat1_2[col];
	mov	a,r7
	add	a,#_mat1_2
	mov	r1,a
	mov	a,@r1
	anl	a,_mask
	mov	_get_bit,a
;	./src/main.c:534: return get_bit;
	mov	dpl,_get_bit
	ret
00104$:
;	./src/main.c:536: else if (type == 3){// mat2_1
	mov	a,#0x03
	cjne	a,_Get_Dot_PARM_3,00108$
;	./src/main.c:537: mask = 1<<row;
	mov	r6,_Get_Dot_PARM_2
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00148$
00146$:
	add	a,acc
00148$:
	djnz	b,00146$
	mov	_mask,a
;	./src/main.c:538: get_bit = mask & mat2_1[col];
	mov	a,r7
	add	a,#_mat2_1
	mov	r1,a
	mov	a,@r1
	anl	a,_mask
	mov	_get_bit,a
;	./src/main.c:539: return get_bit;
	mov	dpl,_get_bit
	ret
00108$:
;	./src/main.c:541: return 0;
	mov	dpl,#0x00
;	./src/main.c:542: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mode4'
;------------------------------------------------------------
;	./src/main.c:544: void mode4(void){
;	-----------------------------------------
;	 function mode4
;	-----------------------------------------
_mode4:
;	./src/main.c:545: turn = 2;
	mov	_turn,#0x02
;	./src/main.c:546: OLED_Clear();
	lcall	_OLED_Clear
;	./src/main.c:547: OLED_SetCursor(2, 3);
	mov	_OLED_SetCursor_PARM_2,#0x03
	mov	dpl,#0x02
	lcall	_OLED_SetCursor
;	./src/main.c:548: OLED_DisplayString("Player ");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:549: OLED_DisplayChar('0'+turn);
	mov	r7,_turn
	mov	a,#0x30
	add	a,r7
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:550: OLED_DisplayString(" turn ");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:551: OLED_SetCursor(3, 4);
	mov	_OLED_SetCursor_PARM_2,#0x04
	mov	dpl,#0x03
	lcall	_OLED_SetCursor
;	./src/main.c:552: OLED_DisplayString("now row: ");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:553: OLED_SetCursor(4, 4);
	mov	_OLED_SetCursor_PARM_2,#0x04
	mov	dpl,#0x04
	lcall	_OLED_SetCursor
;	./src/main.c:554: OLED_DisplayString("now col: ");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:555: OLED_SetCursor(5, 4);
	mov	_OLED_SetCursor_PARM_2,#0x04
	mov	dpl,#0x05
	lcall	_OLED_SetCursor
;	./src/main.c:556: OLED_DisplayString("now score: ");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:557: while (winner == 0){
00142$:
	mov	a,_winner
	jz	00295$
	ljmp	00144$
00295$:
;	./src/main.c:559: now_col = player[turn][0];
	mov	a,_turn
	add	a,_turn
	add	a,#_player
	mov	r1,a
	mov	_now_col,@r1
;	./src/main.c:560: now_row = player[turn][1];
	inc	r1
	mov	_now_row,@r1
;	./src/main.c:561: OLED_SetCursor(3, 55);
	mov	_OLED_SetCursor_PARM_2,#0x37
	mov	dpl,#0x03
	lcall	_OLED_SetCursor
;	./src/main.c:562: OLED_DisplayChar('0'+now_row);
	mov	r7,_now_row
	mov	a,#0x30
	add	a,r7
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:563: OLED_SetCursor(4, 55);
	mov	_OLED_SetCursor_PARM_2,#0x37
	mov	dpl,#0x04
	lcall	_OLED_SetCursor
;	./src/main.c:564: OLED_DisplayChar('0'+now_col);
	mov	r7,_now_col
	mov	a,#0x30
	add	a,r7
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:565: OLED_SetCursor(5, 70);
	mov	_OLED_SetCursor_PARM_2,#0x46
	mov	dpl,#0x05
	lcall	_OLED_SetCursor
;	./src/main.c:566: OLED_DisplayChar(player_score[turn]/10+'0');
	mov	a,_turn
	add	a,#_player_score
	mov	r1,a
	mov	ar7,@r1
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:567: OLED_DisplayChar(player_score[turn]%10 + '0');
	mov	a,_turn
	add	a,#_player_score
	mov	r1,a
	mov	ar7,@r1
	mov	r6,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:568: now_key = Get_Key();
	lcall	_Get_Key
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:569: if (now_key != 0){
	mov	a,r6
	mov	_now_key,a
	jnz	00296$
	ljmp	00115$
00296$:
;	./src/main.c:570: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/main.c:571: if (now_key == Get_Key()){
	lcall	_Get_Key
	mov	r6,dpl
	mov	r7,dph
	mov	r4,_now_key
	mov	r5,#0x00
	mov	a,r4
	cjne	a,ar6,00297$
	mov	a,r5
	cjne	a,ar7,00297$
	sjmp	00298$
00297$:
	ljmp	00115$
00298$:
;	./src/main.c:572: nxt_col = now_col;nxt_row = now_row;
	mov	_nxt_col,_now_col
	mov	_nxt_row,_now_row
;	./src/main.c:573: if (now_key == 3){
	mov	a,#0x03
	cjne	a,_now_key,00110$
;	./src/main.c:574: nxt_row = (now_row <= 0)? 0:now_row-1;
	mov	a,_now_row
	jnz	00159$
	mov	r6,a
	mov	r7,a
	sjmp	00160$
00159$:
	mov	r5,_now_row
	dec	r5
	mov	a,r5
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
00160$:
	mov	_nxt_row,r6
	sjmp	00111$
00110$:
;	./src/main.c:575: }else if (now_key == 4){
	mov	a,#0x04
	cjne	a,_now_key,00107$
;	./src/main.c:576: nxt_row = (now_row >= 7)? now_row:now_row+1;
	clr	c
	mov	a,_now_row
	subb	a,#0x07
	mov	_mode4_sloc0_1_0,c
	jc	00161$
	mov	r7,_now_row
	sjmp	00162$
00161$:
	mov	a,_now_row
	mov	r6,a
	inc	a
	mov	r7,a
00162$:
	mov	_nxt_row,r7
	sjmp	00111$
00107$:
;	./src/main.c:577: }else if (now_key == 7){
	mov	a,#0x07
	cjne	a,_now_key,00104$
;	./src/main.c:578: nxt_col = (now_col <= 1)? 1:now_col-1;
	mov	a,_now_col
	add	a,#0xff - 0x01
	mov	_mode4_sloc0_1_0,c
	jc	00163$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00164$
00163$:
	mov	r5,_now_col
	dec	r5
	mov	a,r5
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
00164$:
	mov	_nxt_col,r6
	sjmp	00111$
00104$:
;	./src/main.c:579: }else if (now_key == 8){
	mov	a,#0x08
	cjne	a,_now_key,00111$
;	./src/main.c:580: nxt_col = (now_col >= 8)? now_col:now_col+1;
	clr	c
	mov	a,_now_col
	subb	a,#0x08
	mov	_mode4_sloc0_1_0,c
	jc	00165$
	mov	r7,_now_col
	sjmp	00166$
00165$:
	mov	a,_now_col
	mov	r6,a
	inc	a
	mov	r7,a
00166$:
	mov	_nxt_col,r7
00111$:
;	./src/main.c:582: now_col = nxt_col;
	mov	_now_col,_nxt_col
;	./src/main.c:583: now_row = nxt_row;
	mov	_now_row,_nxt_row
;	./src/main.c:584: player[turn][0] = now_col;
	mov	a,_turn
	add	a,_turn
	add	a,#_player
	mov	r0,a
	mov	@r0,_now_col
;	./src/main.c:585: player[turn][1] = now_row;
	mov	a,_turn
	add	a,_turn
	add	a,#_player
	mov	r7,a
	inc	a
	mov	r0,a
	mov	@r0,_now_row
00115$:
;	./src/main.c:589: if (but4 == 0){
	jb	_P2_1,00119$
;	./src/main.c:590: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/main.c:591: if (but4 == 0){
	jb	_P2_1,00119$
;	./src/main.c:592: player[turn][0] = now_col;
	mov	a,_turn
	add	a,_turn
	add	a,#_player
	mov	r0,a
	mov	@r0,_now_col
;	./src/main.c:593: player[turn][1] = now_row;
	mov	a,_turn
	add	a,_turn
	add	a,#_player
	mov	r7,a
	inc	a
	mov	r0,a
	mov	@r0,_now_row
;	./src/main.c:594: mode = 3;
	mov	_mode,#0x03
;	./src/main.c:595: break;
	ljmp	00144$
00119$:
;	./src/main.c:598: if (but3 == 0){
	jnb	_P2_0,00313$
	ljmp	00133$
00313$:
;	./src/main.c:599: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/main.c:600: if (but3 == 0){
	jnb	_P2_0,00314$
	ljmp	00133$
00314$:
;	./src/main.c:601: if (Get_Dot(now_col, now_row, 3) != 0){ // 猜到重覆
	mov	_Get_Dot_PARM_2,_now_row
	mov	_Get_Dot_PARM_3,#0x03
	mov	dpl,_now_col
	lcall	_Get_Dot
	mov	a,dpl
	jz	00122$
;	./src/main.c:602: for(in_i = 0;in_i < 523;in_i++){
	clr	a
	mov	_in_i,a
	mov	(_in_i + 1),a
00147$:
;	./src/main.c:603: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:604: Delay_Do();
	lcall	_Delay_Do
;	./src/main.c:605: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:606: Delay_Do();
	lcall	_Delay_Do
;	./src/main.c:602: for(in_i = 0;in_i < 523;in_i++){
	inc	_in_i
	clr	a
	cjne	a,_in_i,00316$
	inc	(_in_i + 1)
00316$:
	clr	c
	mov	a,_in_i
	subb	a,#0x0b
	mov	a,(_in_i + 1)
	xrl	a,#0x80
	subb	a,#0x82
	jc	00147$
;	./src/main.c:608: continue;
	ljmp	00142$
00122$:
;	./src/main.c:610: draw(now_col, now_row, now_col, now_row, 3);
	mov	_draw_PARM_2,_now_row
	mov	_draw_PARM_3,_now_col
	mov	_draw_PARM_4,_now_row
	mov	_draw_PARM_5,#0x03
	mov	dpl,_now_col
	lcall	_draw
;	./src/main.c:611: if ((Get_Dot(now_col, now_row, 0) == 0)){ // 猜錯
	mov	_Get_Dot_PARM_2,_now_row
	mov	_Get_Dot_PARM_3,#0x00
	mov	dpl,_now_col
	lcall	_Get_Dot
	mov	a,dpl
;	./src/main.c:612: for(in_i = 0;in_i < 523;in_i++){
	jnz	00128$
	mov	_in_i,a
	mov	(_in_i + 1),a
00149$:
;	./src/main.c:613: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:614: Delay_Do();
	lcall	_Delay_Do
;	./src/main.c:615: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:616: Delay_Do();
	lcall	_Delay_Do
;	./src/main.c:612: for(in_i = 0;in_i < 523;in_i++){
	inc	_in_i
	clr	a
	cjne	a,_in_i,00319$
	inc	(_in_i + 1)
00319$:
	clr	c
	mov	a,_in_i
	subb	a,#0x0b
	mov	a,(_in_i + 1)
	xrl	a,#0x80
	subb	a,#0x82
	jc	00149$
;	./src/main.c:618: player[turn][0] = now_col;
	mov	a,_turn
	add	a,_turn
	add	a,#_player
	mov	r0,a
	mov	@r0,_now_col
;	./src/main.c:619: player[turn][1] = now_row;
	mov	a,_turn
	add	a,_turn
	add	a,#_player
	mov	r7,a
	inc	a
	mov	r0,a
	mov	@r0,_now_row
;	./src/main.c:620: mode = 3;
	mov	_mode,#0x03
;	./src/main.c:621: break;
	ljmp	00144$
00128$:
;	./src/main.c:623: for(in_i = 0;in_i < 588;in_i++){// 猜對
	clr	a
	mov	_in_i,a
	mov	(_in_i + 1),a
00151$:
;	./src/main.c:624: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:625: Delay_Re();
	lcall	_Delay_Re
;	./src/main.c:626: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:627: Delay_Re();
	lcall	_Delay_Re
;	./src/main.c:623: for(in_i = 0;in_i < 588;in_i++){// 猜對
	inc	_in_i
	clr	a
	cjne	a,_in_i,00321$
	inc	(_in_i + 1)
00321$:
	clr	c
	mov	a,_in_i
	subb	a,#0x4c
	mov	a,(_in_i + 1)
	xrl	a,#0x80
	subb	a,#0x82
	jc	00151$
;	./src/main.c:629: player_score[turn]+=1;
	mov	a,_turn
	add	a,#_player_score
	mov	r1,a
	inc	@r1
	mov	a,@r1
;	./src/main.c:630: if (player_score[turn] >= 17){
	mov	a,_turn
	add	a,#_player_score
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x11,00323$
00323$:
	jc	00133$
;	./src/main.c:631: winner = turn;
	mov	_winner,_turn
;	./src/main.c:632: break;
	ljmp	00144$
00133$:
;	./src/main.c:637: for (i=1;i<=8;i++){
	mov	_i,#0x01
00153$:
;	./src/main.c:638: mask = 0;
	mov	_mask,#0x00
;	./src/main.c:639: if (i == now_col)mask = 1 << now_row;
	mov	a,_now_col
	cjne	a,_i,00135$
	mov	r7,_now_row
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00329$
00327$:
	add	a,acc
00329$:
	djnz	b,00327$
	mov	_mask,a
	sjmp	00136$
00135$:
;	./src/main.c:640: else mask = 0;
	mov	_mask,#0x00
00136$:
;	./src/main.c:641: Writesingle7219(3, i, (mat2_1[i] | mask));
	mov	a,_i
	add	a,#_mat2_1
	mov	r1,a
	mov	ar7,@r1
	mov	a,_mask
	orl	a,r7
	mov	_Writesingle7219_PARM_3,a
	mov	_Writesingle7219_PARM_2,_i
	mov	dpl,#0x03
	lcall	_Writesingle7219
;	./src/main.c:637: for (i=1;i<=8;i++){
	inc	_i
	mov	a,_i
	add	a,#0xff - 0x08
	jnc	00153$
;	./src/main.c:642: }delay_ms(100);
	mov	dptr,#0x0064
	lcall	_delay_ms
;	./src/main.c:643: for (i=1;i<=8;i++){
	mov	_i,#0x01
00155$:
;	./src/main.c:644: mask = 0;
	mov	_mask,#0x00
;	./src/main.c:645: if (now_col == i)mask |= 1<<now_row;
	mov	a,_i
	cjne	a,_now_col,00139$
	mov	r7,_now_row
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00335$
00333$:
	add	a,acc
00335$:
	djnz	b,00333$
	mov	_mask,a
	sjmp	00140$
00139$:
;	./src/main.c:646: else mask = 0;
	mov	_mask,#0x00
00140$:
;	./src/main.c:647: mask |= (mat1_1[i] & mat2_1[i]);
	mov	a,_i
	add	a,#_mat1_1
	mov	r1,a
	mov	ar7,@r1
	mov	a,_i
	add	a,#_mat2_1
	mov	r1,a
	mov	a,@r1
	anl	a,r7
	orl	_mask,a
;	./src/main.c:648: mask = ~mask;
	mov	a,_mask
	cpl	a
;	./src/main.c:649: Writesingle7219(3, i, mat2_1[i]&mask);
	mov	_mask,a
	mov	ar7,@r1
	anl	a,r7
	mov	_Writesingle7219_PARM_3,a
	mov	_Writesingle7219_PARM_2,_i
	mov	dpl,#0x03
	lcall	_Writesingle7219
;	./src/main.c:643: for (i=1;i<=8;i++){
	inc	_i
	mov	a,_i
	add	a,#0xff - 0x08
	jnc	00155$
	ljmp	00142$
00144$:
;	./src/main.c:652: if (winner != 0){
	mov	a,_winner
	jz	00157$
;	./src/main.c:653: mode = 5;
	mov	_mode,#0x05
00157$:
;	./src/main.c:658: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mode5'
;------------------------------------------------------------
;	./src/main.c:659: void mode5(void){
;	-----------------------------------------
;	 function mode5
;	-----------------------------------------
_mode5:
;	./src/main.c:660: OLED_Clear();
	lcall	_OLED_Clear
;	./src/main.c:661: OLED_SetCursor(3, 13);
	mov	_OLED_SetCursor_PARM_2,#0x0d
	mov	dpl,#0x03
	lcall	_OLED_SetCursor
;	./src/main.c:662: OLED_DisplayString("Winner is player");
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:663: OLED_DisplayChar('0'+winner);
	mov	r7,_winner
	mov	a,#0x30
	add	a,r7
	mov	dpl,a
	lcall	_OLED_DisplayChar
;	./src/main.c:664: while (1);
00102$:
;	./src/main.c:665: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Press but1"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "but4 to start"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "Player1 is ready"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "Wait for player1"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "Player2 is ready"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "Wait for player2"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Player1 setting "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "setting "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "set row: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "set col: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "Player2 setting "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "Player "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii " turn "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "now row: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "now col: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "now score: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "Winner is player"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

#include "delay.h"

void delay_ms(unsigned int input_ms) // ms will save in *dph and *dpl
{
	input_ms;			// to avoid unrefferenced warning
	__asm				// start of assembly code
	DELAY1: MOV R5,dpl	// R5 = input_ms[7:0]
			CJNE R5,#0,DL1
			CJNE R5,#255,DELAY3

	DL1:    MOV R6,#3
	DL2:    MOV R7,#170
	DL3:    DJNZ R7,DL3
			DJNZ R6,DL2
			DJNZ R5,DL1


	DELAY3: MOV R4,dph	// R4 = input_ms[15:8]
		    CJNE R4,#0,DL4
			RET

	DL4:	MOV R5,#0	// 256
	DL5:    MOV R6,#3
	DL6:    MOV R7,#170
	DL7:    DJNZ R7,DL7
			DJNZ R6,DL6
			DJNZ R5,DL5
			DJNZ R4,DL4

	__endasm;			// end of assembly code, don't forget to add ";"
}

void Delay_Do(void) {
	__asm
	// DO = 1047Hz
	// we require a delay of 0.4776ms for each half period
	// 440 cycles @Fosc = 11.0592MHz
	DELAY_Do:
		MOV R6,#10				// 1 cycle
	
	DELAY_Do_DL1:
		MOV R7,#19				// 1 cycle
	
	STEP1:
		DJNZ R7,STEP1			// 2 cycles
		DJNZ R6,DELAY_Do_DL1	// 2 cycles
		// 410 cycle = R6 * (1 + (R7 * 2) + 2) = 10 * (1 + (19 * 2) + 2)
		
		MOV R7,#13				// 1 cycle
	
	STEP2:
		DJNZ R7,STEP2			// 2 cycles
		// 27 cycle = 1 + (R7 * 2) = 1 + (13 * 2)

		RET						// 2 cycles
		// Total = 440 cycles, meeting the required cycle count for generating DO
	
	__endasm;
						
}

void Delay_Re(void) {
	__asm
	// RE = 1175Hz
	// we require a delay of 0.4255ms for each half period
	// 392 cycles @Fosc = 11.0592MHz
	DELAY_RE:
		MOV R6,#10				// 1 cycle
	
	DELAY_RE_DL1:
		MOV R7,#17				// 1 cycle
	
	STEP3:
		DJNZ R7,STEP3			// 2 cycles
		DJNZ R6,DELAY_RE_DL1	// 2 cycles
		// 370 cycles = R6 * (1 + (R7 * 2) + 2) = 10 * (1 + (17 * 2) + 2)
		
		MOV R7,#9				// 1 cycle
	
	STEP4:
		DJNZ R7,STEP4			// 2 cycles
		// 19 cycles = 1 + (R7 * 2) = 1 + (9 * 2)

		RET						// 2 cycles
		// Total = 392 cycles, meeting the required cycle count for generating RE				

	__endasm;
}
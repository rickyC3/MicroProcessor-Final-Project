#ifndef HEADER7219
#define HEADER7219

// pin for MAX7219
#define DOUT P0_2
#define LOAD P0_3
#define CLK  P0_4

// number of 7-segment display/dot matrix
#define matrixnum 	 4

// register address map
#define DECODE_MODE  0x09
#define INTENSITY    0x0A
#define SCAN_LIMIT   0x0B
#define SHUT_DOWN    0x0C
#define DISPLAY_TEST 0x0F

// function declaration
void sendbyte(unsigned char address, unsigned char dat);
void Write7219(unsigned char address, unsigned char dat);
void Writesingle7219(unsigned char chosen, unsigned char address, unsigned char dat);
void Initial7219(void);

#endif
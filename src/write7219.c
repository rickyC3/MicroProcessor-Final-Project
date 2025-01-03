#include "8051.h"
#include "header7219.h"

void sendbyte(unsigned char address, unsigned char dat) {

   unsigned char i;
   
   for (i = 0; i < 8; i++) {        // get last 8 bits(address)
      CLK = 0;
      DOUT = (address & 0x80);      // get msb and shift left
      address <<= 1; 
      CLK = 1;
   }
   for (i = 0; i < 8; i++) {        // get first 8 bits(data)
      CLK = 0;
      DOUT = (dat & 0x80);          // get msb and shit left
      dat <<= 1;
      CLK = 1;
   }
}

// write a single digit/a single line in 7-segment display/dot matrix.
void Write7219(unsigned char address, unsigned char dat) {

    unsigned char cnt;

    LOAD = 0;
  	for (cnt = 1; cnt <= matrixnum; cnt++) {        // send address and data according to the nuber of your matrix
        sendbyte(address, dat);
    }
    LOAD = 1;                                       // after the load becomes 1, will the 7-segment display display
}

// when there are multiple 7-segment displays/dot matrices connected in series, we need to specify which 7-segment display/dot matrix to write.
void Writesingle7219(unsigned char chosen, unsigned char address, unsigned char dat) {

    unsigned char cnt;

    LOAD = 0;
    for (cnt = matrixnum; cnt > chosen; cnt--) {    // write data into the selected matrix
        sendbyte(0x00, 0x00);                       // write 0 to no-op
    } 
   	sendbyte(address, dat);                        // sent data to chosen led-matrix
   	for (cnt = chosen-1; cnt > 0; cnt--) { 
   		sendbyte(0x00, 0x00);                       // write 0 to no-op
    }
   LOAD = 1;
}

// MAX7219inintialize and setup inside register
void Initial7219(void) {

    unsigned char i;

    Write7219(SHUT_DOWN, 0x01);                     // normal mode(0xX1)
    Write7219(DISPLAY_TEST, 0x00); 
    Write7219(DECODE_MODE, 0x00);                   // select non-decode mode
    Write7219(SCAN_LIMIT, 0x07);                    // use all 8 LED
    Write7219(INTENSITY, 0x00);                     // set up intensity
    for (i = 1; i <= 8; i++) {
    	Write7219(i, 0x00);                         // turn off all LED
    }
}
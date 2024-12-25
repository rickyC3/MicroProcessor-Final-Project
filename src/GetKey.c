#include "8051.h"
#include "delay.h"


#define o1 P2_7
#define o2 P2_6
#define butl1 P2_5
#define butl2 P2_4
#define butr1 P2_3
#define butr2 P2_2

int Get_Key(void){
    butr1 = 1;
    butr2 = 1;
    butl1 = 1;
    butl2 = 1;

    o1 = 0;
    o2 = 1;

    if (butl1 == 0){
        return 1;
    }
    if (butl2 == 0){
        return 2;
    }

    if (butr1 == 0){
        return 3;
    }// up r
    if (butr2 == 0){
        return 4;
    }// down r

    o1 = 1;
    o2 = 0;
    if (butl1 == 0){
        return 5;
    }
    if (butl2 == 0){
        return 6;
    }
    if (butr1 == 0){
        return 7;
    }// left r
    if (butr2 == 0){
        return 8;
    }// right r
    return 0;
}


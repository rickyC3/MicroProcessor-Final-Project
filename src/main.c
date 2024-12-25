#include "8051.h"
#include "delay.h"
#include "i2c.h"
#include "header7219.h"
#include "oled_i2c.h"


#define led P1
#define but1 INT0
#define but2 INT1
#define but3 P2_0
#define but4 P2_1

int in_i;               // 用於蜂鳴器 持續秒數
unsigned char mode = 0; // 當前在哪個狀態
char winner = 0;        // 紀錄最後的贏家
unsigned char player_bool[3] = {0 ,0, 0}; // 開局前的確認
char mask;              // 用於位元操控的罩
char now_key;           // 存取當前按下的按鍵
char boat_type[][2] = {{4, 2}, {3, 3}}; // 兩種軍艦 4*2, 3*3
char i, j, l;           // use for loop
char tmp_i, tmp_j, tmp_l; // use for loop
char idx, check_;       // 玩家設定軍艦時用到的參數
char nxt_row, nxt_col;  // 下個位置
char now_row, now_col;  // 存取當前設定的位置  // col 1~8, row 0~7 
char conti_flag = 0;    // 雙層迴圈中的中斷flag
char get_bit;           // 存取8*8矩陣顯示器的其中一個bit
char turn;              // 記錄哪個玩家的回合 1, 2
char player1[][2] = {{1, 0}, {16, 16}};  // 玩家所放置的軍艦的位置 (col, row) // col 1~8, row 0~7 
char player2[][2] = {{1, 0}, {16, 16}};
char player[][2] = {{0, 0},{1, 0}, {1, 0}}; // 玩家鼠標所在的位置
char player_score[] = {0, 0, 0};            // 各玩家的得分(win: 17分)
char mat1_1[] = {0xff, 0x00, 0x00, 0x00,0x00, 0x00, 0x00, 0x00, 0x00};
char mat1_2[] = {0x00, 0x00, 0x00, 0x00,0x00, 0x00, 0x00, 0x00, 0x00};
char mat2_1[] = {0xff, 0x00, 0x00, 0x00,0x00, 0x00, 0x00, 0x00, 0x00};
char mat2_2[] = {0x00, 0x00, 0x00, 0x00,0x00, 0x00, 0x00, 0x00, 0x00};
// 四個矩陣顯示器所要顯示的東西
void mode0(void);
void mode1(void); // set player1's boat
void mode2(void);
void mode3(void);
void mode4(void);
void mode5(void);
char Get_Dot(char col, char row, char type); // 獲取某個矩陣的某一行某一列的bit
void draw(char x1, char y1, char x2, char y2, char type); //  修改某個矩陣的某一行某一列的bit
void del(char x1, char y1, char x2, char y2, char type); //  刪除某個矩陣的某一行某一列的bit
char overlap(char x1, char y1, char h1, char w1,
                      char x2, char y2, char h2, char w2);//給兩座標和各自的長寬，判斷是否重疊
void main(void)
{

    int now_key = 0;int now2_key = 0;
    OLED_Init();
    Initial7219();
    while (1){
        led = ~(1<<mode);
        if (mode == 0){
            mode0();
        }else if (mode == 1){
            mode1();
        }else if (mode == 2){
            mode2();
        }else if (mode == 3){
            mode3();
        }else if (mode == 4){
            mode4();
        }else if (mode == 5){
            mode5();
        }
        
    }

}

void mode0(void){
    if (but1 == 0){
        delay_ms(10);
        if (but1 == 0){
            player_bool[1] = 1;
        }
    }
    if (but4 == 0){
        delay_ms(10);
        if (but4 == 0){
            player_bool[2] = 1;
        }
    }
    OLED_SetCursor(2, 3);
    OLED_DisplayString("Press but1");
    OLED_SetCursor(3, 10);
    OLED_DisplayString("but4 to start");
    OLED_SetCursor(4, 5);
    if (player_bool[1] != 0){
        OLED_DisplayString("Player1 is ready");
    }else{
        OLED_DisplayString("Wait for player1");
    }
    OLED_SetCursor(5, 5);
    if (player_bool[2] != 0){
        OLED_DisplayString("Player2 is ready");
    }else{
        OLED_DisplayString("Wait for player2");
    }

    if (player_bool[1] != 0 && player_bool[2] != 0){
        mode = 1;
        player_bool[1] = 0;
        player_bool[2] = 0;
    }
}
void mode1(void){
    OLED_Clear();
    OLED_SetCursor(2, 3);
    OLED_DisplayString("Player1 setting ");
    
    conti_flag = 0;
    nxt_row = 0; nxt_col = 0; 
    check_ = 0;
    now_key;
    idx = 0; // 當前要處理的軍艦
    while (idx < 2){ // 有兩個軍艦要設置
        conti_flag = 0;
        for (tmp_l=0;tmp_l<idx;tmp_l++){ // 先找到一個合法位置，將它設為預設位置
            for (tmp_i=1;tmp_i<=8;tmp_i++){
                for (tmp_j=0;tmp_j<8;tmp_j++){
                    if (conti_flag != 0)break;;
                    if (tmp_j+boat_type[idx][1]-1 > 7 ){continue;} // 邊界檢查
                    if (tmp_i+boat_type[idx][0]-1 > 8){continue;}
                    if (overlap(tmp_i, tmp_j, boat_type[idx][0], boat_type[idx][1],
                              player1[tmp_l][0], player1[tmp_l][1], boat_type[tmp_l][0], boat_type[tmp_l][1]) != 1){ 
                                // overlap 檢查和先前的軍艦是否有重疊
                        player1[idx][0] = tmp_i;
                        player1[idx][1] = tmp_j; // 將他們儲存
                        conti_flag = 1;
                        break;
                    }
                }
            }
        }
    
    check_ = 1;
    OLED_SetCursor(3, 3);
    OLED_DisplayString("setting ");
    OLED_DisplayChar('0' + idx);
    // 標記這個區域在點矩陣並儲存在陣列裡
    draw(player1[idx][0], player1[idx][1], player1[idx][0]+boat_type[idx][0]-1, player1[idx][1]+boat_type[idx][1]-1, 0); 
    while (check_){
        OLED_SetCursor(4, 3);
        OLED_DisplayString("set row: ");
        OLED_DisplayChar('0' + player1[idx][1]); // 當前軍艦左上角的座標
        OLED_SetCursor(5, 3);
        OLED_DisplayString("set col: ");
        OLED_DisplayChar('0' + player1[idx][0]);
        

        now_key = Get_Key();
        if (now_key != 0){
            delay_ms(10);
            if (Get_Key() == now_key){ // 按鍵控制+邊界處理
                nxt_col = player1[idx][0];nxt_row = player1[idx][1];
                if (now_key == 1){// up r
                    nxt_row = (player1[idx][1] <= 0)? player1[idx][1]:player1[idx][1]-1;
                }if (now_key == 2){ // down r
                    nxt_row = (player1[idx][1]+boat_type[idx][1]-1 >= 7)? player1[idx][1]:player1[idx][1]+1;
                }
                if (now_key == 5){// left r
                    nxt_col = (player1[idx][0] <= 1)? player1[idx][0]:player1[idx][0]-1;
                }
                if (now_key == 6){// right r
                    nxt_col = (player1[idx][0]+boat_type[idx][0]-1 >= 8)? player1[idx][0]:player1[idx][0]+1;
                }// checking
                
                for (l=0;l<idx;l++){ // 檢查這個位置是否合法(有無重疊?)
                    conti_flag = 0;
                    if (overlap(nxt_col, nxt_row, boat_type[idx][0], boat_type[idx][1],
                              player1[l][0], player1[l][1], boat_type[l][0], boat_type[l][1]) == 1){
                        conti_flag = 1;
                        break;;
                    }
                }
                if (conti_flag == 1){ // 不合法，繼續執行
                    conti_flag = 0;
                    continue;
                }
                /* for debug
                if (overlap(nxt_col, nxt_row, boat_type[idx][0], boat_type[idx][1],
                              3, 6, 1, 1) == 1){
                    continue;
                }*/
                // 刪除原本軍艦在點矩陣上的位置
                del(player1[idx][0], player1[idx][1], player1[idx][0]+boat_type[idx][0]-1, player1[idx][1]+boat_type[idx][1]-1, 0); 
                player1[idx][1] = nxt_row;
                player1[idx][0] = nxt_col;
                 // 標記新的區域
                draw(player1[idx][0], player1[idx][1], player1[idx][0]+boat_type[idx][0]-1, player1[idx][1]+boat_type[idx][1]-1, 0);
                now_key = 0;
                delay_ms(100);
            }
            
        } // 顯示
        for (i=1;i<=8;i++){
            Writesingle7219(2, i, mat1_1[i]);
        } // 確定軍艦的位置
        if (but1 == 0){
            delay_ms(10);
            if (but1 == 0){
                idx+=1;
                check_ = 0;
                for(in_i = 0;in_i < 588;in_i++){
                    P3_7 = 1;
                    Delay_Re(); // 發出Re的音
                    P3_7 = 0;
                    Delay_Re();
                }
                while (but1 == 0);
            }
        }
    }}
    // 都設定完成-> mode2
    mode = 2;
}
void mode2(void){
    OLED_Clear();
    OLED_SetCursor(2, 3);
    OLED_DisplayString("Player2 setting ");
    
    conti_flag = 0;
    // col (1 ~ 8 (left to right)), row(0 ~ 7(up to down))
    nxt_row = 0; nxt_col = 0;
    check_ = 0;
    idx = 0;
    while (idx < 2){
        conti_flag = 0;
        for (tmp_l=0;tmp_l<idx;tmp_l++){ // default idx
            for (tmp_i=1;tmp_i<=8;tmp_i++){
                for (tmp_j=0;tmp_j<8;tmp_j++){
                    if (conti_flag != 0)break;;
                    if (tmp_j+boat_type[idx][1]-1 > 7 ){continue;}
                    if (tmp_i+boat_type[idx][0]-1 > 8){continue;}
                    // 這裡改成player2的陣列
                    if (overlap(tmp_i, tmp_j, boat_type[idx][0], boat_type[idx][1],
                              player2[tmp_l][0], player2[tmp_l][1], boat_type[tmp_l][0], boat_type[tmp_l][1]) != 1){
                        player2[idx][0] = tmp_i;
                        player2[idx][1] = tmp_j;
                        conti_flag = 1;
                        break;
                    }
                }
            }
        }
    
    check_ = 1;
    OLED_SetCursor(3, 3);
    OLED_DisplayString("setting ");
    OLED_DisplayChar('0' + idx);
    // 這裡改成player2的陣列
    draw(player2[idx][0], player2[idx][1], player2[idx][0]+boat_type[idx][0]-1, player2[idx][1]+boat_type[idx][1]-1, 1);
    while (check_){
        OLED_SetCursor(4, 3);
        OLED_DisplayString("set row: ");
        OLED_DisplayChar('0' + player2[idx][1]);
        OLED_SetCursor(5, 3);
        OLED_DisplayString("set col: ");
        OLED_DisplayChar('0' + player2[idx][0]);
        

        now_key = Get_Key();
        if (now_key != 0){
            delay_ms(10);
            if (Get_Key() == now_key){
                nxt_col = player2[idx][0];nxt_row = player2[idx][1];
                if (now_key == 3){// up r
                    nxt_row = (player2[idx][1] <= 0)? player2[idx][1]:player2[idx][1]-1;
                }if (now_key == 4){ // down r
                    nxt_row = (player2[idx][1]+boat_type[idx][1]-1 >= 7)? player2[idx][1]:player2[idx][1]+1;
                }
                if (now_key == 7){// left r
                    nxt_col = (player2[idx][0] <= 1)? player2[idx][0]:player2[idx][0]-1;
                }
                if (now_key == 8){// right r
                    nxt_col = (player2[idx][0]+boat_type[idx][0]-1 >= 8)? player2[idx][0]:player2[idx][0]+1;
                }// checking
                
                for (l=0;l<idx;l++){
                    conti_flag = 0;
                    if (overlap(nxt_col, nxt_row, boat_type[idx][0], boat_type[idx][1],
                              player2[l][0], player2[l][1], boat_type[l][0], boat_type[l][1]) == 1){
                        conti_flag = 1;
                        break;;
                    }
                }
                if (conti_flag == 1){
                    conti_flag = 0;
                    continue;
                }
                /*
                if (overlap(nxt_col, nxt_row, boat_type[idx][0], boat_type[idx][1],
                              3, 6, 1, 1) == 1){
                    continue;
                }*/
                del(player2[idx][0], player2[idx][1], player2[idx][0]+boat_type[idx][0]-1, player2[idx][1]+boat_type[idx][1]-1, 1);
                player2[idx][1] = nxt_row;
                player2[idx][0] = nxt_col;
                draw(player2[idx][0], player2[idx][1], player2[idx][0]+boat_type[idx][0]-1, player2[idx][1]+boat_type[idx][1]-1, 1);
                now_key = 0;
                delay_ms(100);
            }
            
        }
        for (i=1;i<=8;i++){
            Writesingle7219(4, i, mat2_2[i]);
        }
        if (but4 == 0){
            delay_ms(10);
            if (but4 == 0){
                idx+=1;
                check_ = 0;
                for(in_i = 0;in_i < 588;in_i++){
                    P3_7 = 1;
                    Delay_Re();
                    P3_7 = 0;
                    Delay_Re();
                }
                while (but4 == 0);
            }
        }
        
    }
    }
    mode = 3;
}

void mode3(void){
    turn = 1;
    OLED_Clear();
    OLED_SetCursor(2, 3);
    OLED_DisplayString("Player ");
    OLED_DisplayChar('0'+turn);
    OLED_DisplayString(" turn ");
    OLED_SetCursor(3, 4);
    OLED_DisplayString("now row: ");
    OLED_SetCursor(4, 4);
    OLED_DisplayString("now col: ");
    OLED_SetCursor(5, 4);
    OLED_DisplayString("now score: "); // OLED要顯示的資訊
    
    
    while (winner == 0){ // 若還沒產生贏家
        
        
        now_col = player[turn][0];
        now_row = player[turn][1];
        OLED_SetCursor(3, 55);
        OLED_DisplayChar('0'+now_row);
        OLED_SetCursor(4, 55);
        OLED_DisplayChar('0'+now_col);
        OLED_SetCursor(5, 70);
        OLED_DisplayChar(player_score[turn]/10+'0');
        OLED_DisplayChar(player_score[turn]%10 + '0'); // 顯示當前資訊
        now_key = Get_Key();
        if (now_key != 0){
            delay_ms(10);
            if (now_key == Get_Key()){ //  移動鼠標
                nxt_col = now_col;nxt_row = now_row;
                if (now_key == 1){
                    nxt_row = (now_row <= 0)? 0:now_row-1;
                }else if (now_key == 2){
                    nxt_row = (now_row >= 7)? now_row:now_row+1;
                }else if (now_key == 5){
                    nxt_col = (now_col <= 1)? 1:now_col-1;
                }else if (now_key == 6){
                    nxt_col = (now_col >= 8)? now_col:now_col+1;
                }
                now_col = nxt_col;
                now_row = nxt_row;
                player[turn][0] = now_col;
                player[turn][1] = now_row;
            }
        }

        if (but1 == 0){ // 按下but1，跳過自己回合
            delay_ms(10);
            if (but1 == 0){
                player[turn][0] = now_col;
                player[turn][1] = now_row;
                mode = 4;
                break;
            }
        }
        if (but2 == 0){ // 按but2，猜格子
            delay_ms(10);
            if (but2 == 0){
                if (Get_Dot(now_col, now_row, 2) != 0){ // 猜重複格子
                    for(in_i = 0;in_i < 523;in_i++){
                        P3_7 = 1;
                        Delay_Do();
                        P3_7 = 0;
                        Delay_Do();
                    }
                    continue;
                }
                draw(now_col, now_row, now_col, now_row, 2); // 記錄這一點有猜過
                if ((Get_Dot(now_col, now_row, 1) == 0)){    // 猜錯
                    for(in_i = 0;in_i < 523;in_i++){
                        P3_7 = 1;
                        Delay_Do();
                        P3_7 = 0;
                        Delay_Do();
                    }
                    player[turn][0] = now_col;
                    player[turn][1] = now_row;
                    mode = 4; // 跳出mode3 迴圈，換mode4 player2 猜
                    break;
                }else{
                    for(in_i = 0;in_i < 588;in_i++){// 猜對
                        P3_7 = 1;
                        Delay_Re();
                        P3_7 = 0;
                        Delay_Re();
                    }
                    player_score[turn]+=1;
                    if (player_score[turn] >= 17){ // 判斷自己有沒有贏
                        winner = turn;
                        break;
                    }
                }
            }
        }
        // 顯示 點矩陣畫面
        for (i=1;i<=8;i++){
            if (i == now_col)mask = 1 << now_row; // 記得顯示當前鼠標的位置
            else mask = 0;
            Writesingle7219(1, i, (mat1_2[i] | mask));
        }delay_ms(100);
        for (i=1;i<=8;i++){
            mask = 0;
            if (now_col == i)mask |= 1<<now_row; // 鼠標的位置
            else mask = 0;
            mask |= (mat2_2[i] & mat1_2[i]);     // 實際猜對的位置
            mask = ~mask;
            Writesingle7219(1, i, mat1_2[i]&mask); // 將上述的位置的燈熄滅，以達到閃爍的效果
        }
    }
    if (winner != 0){
        mode = 5;
    }
    


}
char overlap(char x1, char y1, char h1, char w1,
                      char x2, char y2, char h2, char w2){
    for (i=x1;i<x1+h1;i++){
        for (j=y1;j<y1+w1;j++){
            
            if ((i >= x2) && (i < x2 + h2)){
                if ((j >= y2) && (j < y2+w2)){
                    return 1;
                }
            }
        }
    }return 0;
}

void del(char x1, char y1, char x2, char y2, char type){
    if (type == 0){// mat1_1
        for (i=x1;i<=x2;i++){
            for (j=y1;j<=y2;j++){
                mask = 1<<j;
                mask = ~mask;
                mat1_1[i] &= mask;
            }
        }
    }
    if (type == 1){// mat2_2
        for (i=x1;i<=x2;i++){
            for (j=y1;j<=y2;j++){
                mask = 1<<j;
                mask = ~mask;
                mat2_2[i] &= mask;
            }
        }
    }
}
void draw(char x1, char y1, char x2, char y2, char type){
    if (type == 0){// mat1_1
        for (i=x1;i<=x2;i++){
            for (j=y1;j<=y2;j++){
                mask = 1<<j;
                mat1_1[i] |= mask;
            }
        }
    }
    if (type == 1){// mat1_1
        for (i=x1;i<=x2;i++){
            for (j=y1;j<=y2;j++){
                mask = 1<<j;
                mat2_2[i] |= mask;
            }
        }
    }
    if (type == 2){// mat1_2
        for (i=x1;i<=x2;i++){
            for (j=y1;j<=y2;j++){
                mask = 1<<j;
                mat1_2[i] |= mask;
            }
        }
    }
    if (type == 3){// mat2_1
        for (i=x1;i<=x2;i++){
            for (j=y1;j<=y2;j++){
                mask = 1<<j;
                mat2_1[i] |= mask;
            }
        }
    }
}
char Get_Dot(char col, char row,char type){
    
    if (type == 0){// mat1_1
        mask = 1<<row;
        get_bit = mask & mat1_1[col];
        return get_bit;
    }
    else if (type == 1){// mat2_2
        mask = 1<<row;
        get_bit = mask & mat2_2[col];
        return get_bit;
    }
    else if (type == 2){// mat1_2
        mask = 1<<row;
        get_bit = mask & mat1_2[col];
        return get_bit;
    }
    else if (type == 3){// mat2_1
        mask = 1<<row;
        get_bit = mask & mat2_1[col];
        return get_bit;
    }
    return 0;
}

void mode4(void){
    turn = 2;
    OLED_Clear();
    OLED_SetCursor(2, 3);
    OLED_DisplayString("Player ");
    OLED_DisplayChar('0'+turn);
    OLED_DisplayString(" turn ");
    OLED_SetCursor(3, 4);
    OLED_DisplayString("now row: ");
    OLED_SetCursor(4, 4);
    OLED_DisplayString("now col: ");
    OLED_SetCursor(5, 4);
    OLED_DisplayString("now score: ");
    while (winner == 0){
        
        now_col = player[turn][0];
        now_row = player[turn][1];
        OLED_SetCursor(3, 55);
        OLED_DisplayChar('0'+now_row);
        OLED_SetCursor(4, 55);
        OLED_DisplayChar('0'+now_col);
        OLED_SetCursor(5, 70);
        OLED_DisplayChar(player_score[turn]/10+'0');
        OLED_DisplayChar(player_score[turn]%10 + '0');
        now_key = Get_Key();
        if (now_key != 0){
            delay_ms(10);
            if (now_key == Get_Key()){
                nxt_col = now_col;nxt_row = now_row;
                if (now_key == 3){
                    nxt_row = (now_row <= 0)? 0:now_row-1;
                }else if (now_key == 4){
                    nxt_row = (now_row >= 7)? now_row:now_row+1;
                }else if (now_key == 7){
                    nxt_col = (now_col <= 1)? 1:now_col-1;
                }else if (now_key == 8){
                    nxt_col = (now_col >= 8)? now_col:now_col+1;
                }
                now_col = nxt_col;
                now_row = nxt_row;
                player[turn][0] = now_col;
                player[turn][1] = now_row;
            }
        }

        if (but4 == 0){
            delay_ms(10);
            if (but4 == 0){
                player[turn][0] = now_col;
                player[turn][1] = now_row;
                mode = 3;
                break;
            }
        }
        if (but3 == 0){
            delay_ms(10);
            if (but3 == 0){
                if (Get_Dot(now_col, now_row, 3) != 0){ // 猜到重覆
                    for(in_i = 0;in_i < 523;in_i++){
                        P3_7 = 1;
                        Delay_Do();
                        P3_7 = 0;
                        Delay_Do();
                    }
                    continue;
                }
                draw(now_col, now_row, now_col, now_row, 3);
                if ((Get_Dot(now_col, now_row, 0) == 0)){ // 猜錯
                    for(in_i = 0;in_i < 523;in_i++){
                        P3_7 = 1;
                        Delay_Do();
                        P3_7 = 0;
                        Delay_Do();
                    }
                    player[turn][0] = now_col;
                    player[turn][1] = now_row;
                    mode = 3;
                    break;
                }else{
                    for(in_i = 0;in_i < 588;in_i++){// 猜對
                        P3_7 = 1;
                        Delay_Re();
                        P3_7 = 0;
                        Delay_Re();
                    }
                    player_score[turn]+=1;
                    if (player_score[turn] >= 17){
                        winner = turn;
                        break;
                    }
                }
            }
        }
        for (i=1;i<=8;i++){
            mask = 0;
            if (i == now_col)mask = 1 << now_row;
            else mask = 0;
            Writesingle7219(3, i, (mat2_1[i] | mask));
        }delay_ms(100);
        for (i=1;i<=8;i++){
            mask = 0;
            if (now_col == i)mask |= 1<<now_row;
            else mask = 0;
            mask |= (mat1_1[i] & mat2_1[i]);
            mask = ~mask;
            Writesingle7219(3, i, mat2_1[i]&mask);
        }
    }
    if (winner != 0){
        mode = 5;
    }
    


}
void mode5(void){
    OLED_Clear();
    OLED_SetCursor(3, 13);
    OLED_DisplayString("Winner is player");
    OLED_DisplayChar('0'+winner);
    while (1);
}


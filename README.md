# Battleship Game on 8051

### NTHU Microprocessor Laboratory — Final Project

A two-player **Battleship game** implemented on an **8051-compatible microcontroller** as the final project for the **Microprocessor Laboratory** course at National Tsing Hua University (NTHU).

The project combines **embedded C programming, 8051 peripherals, GPIO control, matrix LED display, OLED display, keyboard input, I²C communication, timing control, and game-state management** into a complete interactive embedded system.

Players first place their battleships on an 8 × 8 grid and then take turns selecting coordinates to attack the opponent's ships. The game tracks previously selected positions, updates the player's score, provides audio feedback, and determines the winner once all required points are obtained.

demo video: https://drive.google.com/file/d/1zmNALnUtqhiJQWjD7kk94YrMHacoNfCG/view?usp=sharing

---

## Features

* ⚓ **Two-player Battleship game**

  * Player 1 and Player 2
  * Alternating turns
  * 8 × 8 game board

---

## System Overview

The project is implemented as an embedded system running on an **8051/MCS-51 microcontroller**.

```text
                         +----------------------+
                         |    User Input        |
                         |  Buttons / Keyboard  |
                         +----------+-----------+
                                    |
                                    v
                         +----------------------+
                         |    8051 MCU          |
                         |                      |
                         |  Game State Machine  |
                         |  Input Processing    |
                         |  Collision / Hit     |
                         |  Score Management    |
                         +----+-----------+-----+
                              |           |
                 +------------+           +-------------+
                 |                                        |
                 v                                        v
        +----------------+                       +----------------+
        | MAX7219        |                       | SSD1306 OLED   |
        | 8 × 8 Matrix   |                       | I²C Display    |
        +----------------+                       +----------------+
                 |                                        |
                 v                                        v
        Game Board / Cursor                    Status / Information

                              +
                              |
                              v
                     +----------------+
                     | Buzzer / Audio |
                     +----------------+
```

The firmware manages the complete game loop, while external peripherals provide visual, input, and audio interfaces.

---

## Game Flow

The game is divided into several software states.

```text
              +------------------+
              |      START       |
              +--------+---------+
                       |
                 Both players
                    ready
                       |
                       v
              +------------------+
              | Player 1 Setting |
              +--------+---------+
                       |
                 Ship placement
                       |
                       v
              +------------------+
              | Player 2 Setting |
              +--------+---------+
                       |
                 Ship placement
                       |
                       v
              +------------------+
              |   Player 1 Turn  |
              +--------+---------+
                       |
                  Guess cell
                       |
             +---------+---------+
             |                   |
           Hit                  Miss
             |                   |
             v                   v
        Score + 1          Change player
             |
             v
        Score >= 17 ?
          /       \
        Yes        No
        |           |
        v           |
      Winner <------+
```

The main firmware uses a `mode` variable to implement six major states:

| Mode | State            | Description                                |
| ---- | ---------------- | ------------------------------------------ |
| `0`  | Start            | Wait for both players to confirm readiness |
| `1`  | Player 1 Setting | Configure Player 1's ships                 |
| `2`  | Player 2 Setting | Configure Player 2's ships                 |
| `3`  | Player 1 Turn    | Player 1 moves the cursor and attacks      |
| `4`  | Player 2 Turn    | Player 2 moves the cursor and attacks      |
| `5`  | Winner           | Display the winning player                 |

This state-based structure allows the embedded firmware to separate initialization, ship placement, gameplay, and result display.

---

## Game Board

The game uses an **8 × 8 logical grid**.

Coordinates are represented using:

```text
        Column
        1 2 3 4 5 6 7 8
      +-----------------+
 Row 0| . . . . . . . . |
 Row 1| . . . . . . . . |
 Row 2| . . . . . . . . |
 Row 3| . . . . . . . . |
 Row 4| . . . . . . . . |
 Row 5| . . . . . . . . |
 Row 6| . . . . . . . . |
 Row 7| . . . . . . . . |
      +-----------------+
```

The game internally stores the board using arrays of 8-bit values:

```text
mat1_1
mat1_2
mat2_1
mat2_2
```

Each byte represents one column of the 8 × 8 matrix, allowing individual grid cells to be accessed through bit operations.

---

## Battleship Placement

Each player places two ships before the game starts.

The current implementation defines:

| Ship   | Size  |
| ------ | ----- |
| Ship 1 | 4 × 2 |
| Ship 2 | 3 × 3 |

The placement system performs several checks:

### 1. Boundary Checking

The firmware ensures that a ship remains inside the 8 × 8 board.

```text
+----------------+
|                |
|    Ship        |
|    ████        |
|    ████        |
|                |
+----------------+
```

### 2. Overlap Checking

A new ship cannot overlap with an existing ship.

The `overlap()` function checks whether the rectangular area of two ships intersects.

```text
Ship A          Ship B

████             ████
████      ✗      ████
```

If an invalid position is detected, the firmware searches for another legal position during initialization and rejects invalid player movements during manual placement.

---

## Player Controls

During ship placement and gameplay, the player moves a cursor over the 8 × 8 board.

The firmware translates keyboard input into movement commands.

### Player 1

| Key Code | Action     |
| -------- | ---------- |
| `1`      | Move Up    |
| `2`      | Move Down  |
| `5`      | Move Left  |
| `6`      | Move Right |

### Player 2

| Key Code | Action     |
| -------- | ---------- |
| `3`      | Move Up    |
| `4`      | Move Down  |
| `7`      | Move Left  |
| `8`      | Move Right |

The firmware also performs boundary checks so that the cursor cannot move outside the valid game area.

---

## Attack Mechanism

During a player's turn, the cursor indicates the current attack coordinate.

The player confirms the attack using the corresponding button.

The firmware then performs:

```text
              Current Coordinate
                      |
                      v
              Already selected?
                 /        \
               Yes         No
               |            |
               v            v
          Reject attack   Record attack
                            |
                            v
                      Ship present?
                       /        \
                     Yes         No
                      |           |
                      v           v
                   Hit          Miss
                      |
                      v
                  Score + 1
```

The `Get_Dot()` function reads the corresponding board bit and determines whether a selected coordinate contains a ship or has already been targeted.

---

## Score and Win Condition

Each successful hit increases the current player's score:

```text
player_score[player] += 1
```

The current implementation uses:

```text
Winning Score = 17
```

Once a player's score reaches 17, the game records the winner and enters the final state.

The OLED then displays:

```text
Winner is playerX
```

where `X` is the winning player.

---

## Display System

### MAX7219 8 × 8 LED Matrix

The project uses MAX7219-controlled LED matrices as the main visual representation of the game board.

The firmware communicates with the MAX7219 using the `Writesingle7219()` interface.

Multiple matrices are used to represent different pieces of game information, including:

```text
+-------------+    +-------------+
| Player 1    |    | Player 2    |
| Ship Board  |    | Ship Board  |
+-------------+    +-------------+

+-------------+    +-------------+
| Player 1    |    | Player 2    |
| Attack View |    | Attack View |
+-------------+    +-------------+
```

Bitwise operations are used to turn individual LEDs on or off.

---

### SSD1306 OLED

The project also includes an **SSD1306 OLED display** connected through I²C.

The OLED is used for textual information such as:

```text
Player 1 setting

set row: X
set col: Y
```

During gameplay:

```text
Player 1 turn

now row: X
now col: Y
now score: XX
```

At the end of the game:

```text
Winner is playerX
```

The OLED interface provides a convenient way to display information that cannot be represented directly by the LED matrices.

---

## Audio Feedback

The project generates audio feedback through the 8051 GPIO.

Two sound-generation routines are used by the game:

```text
Delay_Re()
Delay_Do()
```

These routines generate different tones for different game events, such as:

* Successful hit
* Incorrect guess
* Repeated guess
* Ship placement confirmation

The sound signal is generated by repeatedly toggling the buzzer output with controlled delays.

---

## Embedded Software Architecture

The firmware is structured around a main state variable:

```c
unsigned char mode;
```

The main loop dispatches execution according to the current game mode:

```text
main()
  |
  +-- mode0()  -> Start / Ready
  |
  +-- mode1()  -> Player 1 ship setting
  |
  +-- mode2()  -> Player 2 ship setting
  |
  +-- mode3()  -> Player 1 gameplay
  |
  +-- mode4()  -> Player 2 gameplay
  |
  +-- mode5()  -> Winner display
```

This provides a simple finite-state-machine-like software architecture.

---
<!--
## Core Algorithms

### Overlap Detection

The `overlap()` function checks two rectangular regions using nested loops.

Conceptually:

```text
for every cell in Ship A:
    for every cell in Ship B:
        if both coordinates overlap:
            return true

return false
```

This prevents invalid ship configurations.

---

### Board Manipulation

The game board is represented using bitmaps.

For a given column:

```text
bit 7
bit 6
bit 5
bit 4
bit 3
bit 2
bit 1
bit 0
```

A coordinate can therefore be accessed using:

```text
mask = 1 << row
```

The firmware uses bitwise operations such as:

```c
AND
OR
NOT
```

to efficiently manipulate the LED matrix state.

---

### Cursor Display

The current cursor position is converted into a bit mask:

```c
mask = 1 << now_row;
```

The corresponding column is then updated on the MAX7219 matrix.

This allows the cursor to be displayed without modifying the rest of the board state.


---

## Build System

The project uses **SDCC (Small Device C Compiler)** for the 8051/MCS-51 target.

The repository includes a `makefile` that automates:

1. C source compilation
2. Object generation
3. Linking
4. Intel HEX generation
5. Cleaning generated files

The build process is based on:

```text
             C Source
                |
                v
              SDCC
                |
                v
             *.rel
                |
                v
             Linking
                |
                v
             *.ihx
                |
                v
             packihx
                |
                v
             main.hex
```

The Makefile invokes:

```text
sdcc
packihx
```

and stores intermediate compilation results under `obj/`.

---
-->
## Build

### Requirements

* SDCC
* `packihx`
* GNU Make
* 8051-compatible development environment / programmer

### Build

```bash
make
```

The resulting firmware image is:

```text
main.hex
```

### Clean

```bash
make clean
```

This removes the generated `obj/` directory and `main.hex`.

---

## Repository Structure

```text
.
├── README.md
│
├── Final Project PPT 112061105.pdf
├── Final Project PPT 112061105.pptx
│
├── main.hex
├── makefile
│
├── inc/
│   ├── delay.h
│   ├── header7219.h
│   ├── i2c.h
│   ├── oled_i2c.h
│   ├── stdutils.h
│   └── table.h
│
└── obj/
    ├── main.asm
    ├── main.hex
    ├── main.ihx
    ├── main.lst
    ├── main.map
    ├── main.mem
    ├── main.rel
    ├── main.rst
    ├── main.sym
    └── ...
```

The repository contains both the compiled firmware and the intermediate SDCC compilation outputs. The header files under `inc/` provide interfaces for timing, MAX7219, I²C, OLED, and common utility functions.

---
<!--

## Main Components

| Component      | Purpose                                  |
| -------------- | ---------------------------------------- |
| `main`         | Main game logic and state management     |
| `mode0()`      | Game initialization and player readiness |
| `mode1()`      | Player 1 ship placement                  |
| `mode2()`      | Player 2 ship placement                  |
| `mode3()`      | Player 1 gameplay                        |
| `mode4()`      | Player 2 gameplay                        |
| `mode5()`      | Winner display                           |
| `overlap()`    | Ship collision / overlap detection       |
| `draw()`       | Add objects to a board bitmap            |
| `del()`        | Remove objects from a board bitmap       |
| `Get_Dot()`    | Read a specific board cell               |
| `oled_i2c.h`   | SSD1306 OLED interface                   |
| `header7219.h` | MAX7219 interface                        |
| `i2c.h`        | I²C communication                        |
| `delay.h`      | Timing / delay routines                  |
| `stdutils.h`   | Utility definitions                      |
| `table.h`      | Lookup-table / constant data             |

The generated assembly listing confirms that the firmware contains dedicated routines for game modes, overlap detection, drawing, deletion, board-cell access, OLED output, MAX7219 control, and keyboard input.

---
-->

## Hardware / Software Stack

```text
+------------------------------------------------+
|                 Application                    |
|                                                |
|              Battleship Game                   |
+------------------------------------------------+
|             Game State Management              |
|     Placement / Turns / Hit / Score / Win      |
+------------------------------------------------+
|              Embedded C Firmware               |
|                    SDCC                        |
+------------------------------------------------+
|                 8051 / MCS-51                 |
+------------------------------------------------+
| GPIO | Timer | I²C | External Peripherals      |
+------------------------------------------------+
       |              |              |
       v              v              v
   MAX7219         SSD1306         Buzzer
   LED Matrix       OLED           Audio
```
<!--
---

## Technologies

* **8051 / MCS-51**
* **Embedded C**
* **SDCC**
* **GNU Make**
* **MAX7219**
* **8 × 8 LED Matrix**
* **SSD1306 OLED**
* **I²C**
* **GPIO**
* **Buzzer / Audio**
* **Bitwise Operations**
* **Finite-State-Machine-based Game Control**
* **Embedded System Design**
--->

---

<!--

## Project Highlights

This project demonstrates several important concepts in microprocessor and embedded-system design:

### Software-Hardware Integration

The game logic is implemented entirely as embedded firmware while directly controlling external peripherals.

### Resource-Efficient Board Representation

The 8 × 8 game boards are represented using bitmaps, allowing individual cells to be manipulated using bitwise operations.

### State-Based Program Architecture

The game is divided into independent states for initialization, ship placement, gameplay, and winner display.

### Peripheral Communication

The project integrates multiple peripheral interfaces:

```text
8051
 |
 +-- GPIO  ------ Buttons / Buzzer
 |
 +-- I²C  ------- SSD1306 OLED
 |
 +-- Serial / GPIO interface
                  |
                  +-- MAX7219
```

### Interactive Embedded Application

Instead of implementing an isolated peripheral experiment, this project combines multiple hardware interfaces into a complete interactive game.



---

## Learning Outcomes

Through this project, the following concepts were practiced:

* 8051 microcontroller programming
* Embedded C development
* SDCC toolchain
* Makefile-based firmware build
* GPIO programming
* I²C communication
* OLED driver development
* MAX7219 LED matrix control
* Bit-level board representation
* Keyboard / button input handling
* Timer and delay generation
* Finite-state-machine design
* Collision / overlap detection
* Game state management
* Embedded software debugging

---
--->

## Course

**NTHU Microprocessor Laboratory**

**Final Project — Battleship Game**

The project focuses on integrating microprocessor programming with external hardware peripherals to build a complete interactive embedded application.

---

## Author

**NTHU EE 112061105 陳睿倬**

**NTHU Microprocessor Laboratory Final Project**

Repository:
`rickyC3/MicroProcessor-Final-Project`

> README.md generated and organized with the assistance of GPT.

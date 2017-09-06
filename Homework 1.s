    .equ SWI_Exit,  0x11   ; Set the value of SWI_Exit to 0x11
start:
    LDR R1, =a

    LDR R2, =b

    LDR R3, =value1

    LDR R4, =value2

    LDR R5, =value3

    LDR R6, =value4

    ADD R3, R1, R2 ; add values in r1 and r2, put in r3

    SUB R4, R1, R2 ; subtract values in r1 and r2, put in r4

    MUL R5, R1, R2 ; multiply values in r1 and r2, put in r5

    ADD R6, R3, R4 ; add r3 and r4, store in r6

    ADD R6, R5, R6 ; add r5 and r6, store in r6 (value1 + value2) + value 3

stop:

    SWI   SWI_Exit         ; Stop program execution

    .data
a: .word 0x1, 0x45, 0x1111, 0x2222, 0x2, 0xFFFF, 0x0, 0x1234, 0x4321, 0xABCD, 0xFFFF
b: .word 0x1, 0x2, 0x2222, 0x1111,0x45, 0x25, 0x65, 0x4321, 0x1234, 0xFF, 0xFFFF

.align

value1: .word 0x0
value2: .word 0x0
value3: .word 0x0
value4:  .word 0x0
.align

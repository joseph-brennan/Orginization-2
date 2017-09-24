  .equ SWI_Exit,  0x11   ; Set the value of SWI_Exit to 0x11

start:
    LDR R1, =string
    MOV R0, #0

loop:
  LDRB R2, [R1], #1
  CMP R2, #0
  BEQ stop
  ADD R0, R0, #1
  B loop






stop:

    SWI   SWI_Exit         ; Stop program execution

    .data

.align
string:  .asciz  "This is my string"
.end

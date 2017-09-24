.equ SWI_Exit,  0x11   ; Set the value of SWI_Exit to 0x11

start:
  ldr r3, =char
  ldr r0, =string
  ldrb r3, [r3]
  mov r1, #0

loop:
  ldrb r2, [r0],#1
  cmp r2, #0
  beq done
  cmp r2, r3
  addeq r1,r1,#1
  b loop

done:

    SWI   SWI_Exit         ; Stop program execution

  .data
string:  .asciz  "This is my string"
char:    .asciz  "T"
.end

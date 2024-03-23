;Display message on new line
.MODEL SMALL
.STACK 100H
.DATA
  CR EQU 0DH
  LF EQU 0AH
  MSG1 DB 'FIRST $',
  MSG2 DB  CR,LF,'SECOND $'
  MSG3 DB  CR,LF,'THIRD $'
  MSG4 DB  0DH,0AH,'FOURTH $'
.CODE
  MAIN PROC
    MOV AX, @DATA   ; Segment address of data segment
    MOV DS, AX      ; Set DS to data segment
    LEA DX, MSG1
    MOV AH, 9
    INT 21H
    LEA DX, MSG2
    MOV AH, 9
    INT 21H
    LEA DX, MSG3
    MOV AH, 9
    INT 21H
    LEA DX, MSG4
    MOV AH, 9
    INT 21H
    ; Terminate
    MOV AH, 4CH     ; Interrupt 21h function 4ch for program termination
        INT 21H     ; Call interrupt 21h
  MAIN ENDP
      END MAIN

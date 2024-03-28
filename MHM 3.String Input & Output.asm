; MHM 4. User Friendly Input & Output
.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB 'Enter a number: $'
    MSG2 DB 0DH,0AH,'Number = '
    T1   DB ?,'$'
.CODE
    MAIN PROC
        MOV AX, @DATA    ; INITIATE
        MOV DS, AX
        
        MOV AH, 9        ; DISPLAY 1
        LEA DX, MSG1
        INT 21H
        
        MOV AH, 1        ; INPUT
        INT 21H
        MOV T1, AL
        
        MOV AH, 9        ; DISPLAY OUTPUT
        LEA DX, MSG2
        INT 21H
        
        MOV AH, 4CH      ; TERMINATE
        INT 21H
        MAIN ENDP
    END MAIN

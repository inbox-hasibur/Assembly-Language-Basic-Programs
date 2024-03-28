; MHM 2.Single Char Input & Output
.MODEL SMALL
.STACK 256
.DATA
    A DB 26
    B DB ?
.CODE
    MAIN PROC
        MOV AX, @DATA    ; INITIATE
        MOV DS, AX
        
        MOV AH, 1        ; INPUT
        INT 21H
        MOV B, AL
        
        MOV AH, 2        ; DISPLAY
        MOV DL, A
        INT 21H
        MOV DL, B
        INT 21H
        
        MOV AH, 4CH      ; TERMINATE
        INT 21H
        MAIN ENDP
    END MAIN

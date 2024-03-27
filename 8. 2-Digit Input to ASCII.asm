;2-DIGIT INPUT TO ASCII
.MODEL SMALL
.STACK 256
.DATA
    MSG1 DB 'Enter 2 digits: $'
    MSG2 DB 13,10,'ASCII = '
    X    DB ?,'$'
.CODE
    MAIN PROC
        MOV AX, @DATA   ;INITIALIZATION
        MOV DS, AX
        
        MOV AH, 9       ;DISPLAY 1
        LEA DX, MSG1
        INT 21H
        
        MOV AH, 1       
        INT 21H         ;INPUT1
        MOV BL, AL
        SUB BL, 48
        INT 21H         ;INPUT2
        MOV BH, AL
        SUB BH, 48
        
        MOV AL, 10
        MUL BL          ;CONVERT
        ;MOV CX, AX
        ADD AL, BH
        MOV X, AL
        
        MOV AH, 9       ;DISPLAY OUTPUT
        LEA DX, MSG2
        INT 21H
        
        MOV AH, 4CH     ;TERMINATE
        INT 21H
    MAIN ENDP
    END MAIN

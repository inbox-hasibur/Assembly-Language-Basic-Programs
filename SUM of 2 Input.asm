;SUM of 2 Input
.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB 'Enter 2 input: $'
    MSG2 DB 13,10,'SUM = '
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
        SUB BL, 30H
        INT 21H         ;INPUT2
        SUB AL, 30H
        MOV X, AL
        
        ADD X, BL       ;SUM
        ADD X, 30H
        
        MOV AH, 9       ;DISPLAY OUTPUT
        LEA DX, MSG2
        INT 21H
        
        MOV AH, 4CH     ;TERMINATE
        INT 21H
    MAIN ENDP
    END MAIN

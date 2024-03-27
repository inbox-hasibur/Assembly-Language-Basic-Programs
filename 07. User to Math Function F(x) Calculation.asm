;High lvl to Assembly  X=20-2*A+B
.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB 'X = 20-2*A+B | ENTER A & B : $'
    MSG2 DB 13,10,'X = '
    A DB ?
    B DB ?,'$'
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX        
        MOV AH, 9       ; DISPLAY-1
        LEA DX, MSG1    
        INT 21H        
        MOV AH, 1       ; INPUT A
        INT 21H
        MOV A, AL
        SUB A, 48        
        MOV AH, 1       ; INPUT B
        INT 21H
        MOV B, AL
        SUB B, 48        
        MOV BL, 20      ; CALCULATION
        SUB BL, A
        SUB BL, A
        ADD BL, B        
        MOV AL, 1       ;JUST FOR
        MUL BL          ;THE 2 DIGITS
        AAM             ;DISPLAY :)
        MOV BX, AX
        ADD BH, 48
        MOV A, BH
        ADD BL, 48
        MOV B, BL                                
        MOV AH, 9       ; DISPLAY 2
        LEA DX, MSG2
        INT 21H        
        MOV AH, 4CH     ; TERMINATE
        INT 21H
    MAIN ENDP
    END MAIN

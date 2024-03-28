;MHM 10.Multiply two number with Dynamic initialization
.MODEL SMALL
.STACK 100H
.DATA
    MSG1    DB  'Enter 2 value: $'
    MSG2    DB  13,10,'Product = '  
    A   DB  ?
    B   DB  ?,'$'
.CODE
    MAIN PROC        
        MOV AX, @DATA   ;INITIALIZATION
        MOV DS,AX        
        MOV AH, 9       ;DISPLAY 1
        LEA DX, MSG1
        INT 21H        
        MOV AH, 1       ;INPUT 1
        INT 21H
        SUB AL, 48
        MOV A, AL        
        INT 21H         ;INPUT 2
        SUB AL, 48        
        MUL A           ;MULTIPLICATION
        AAM 
        MOV BX, AX        
        ADD BH, 48
        MOV A, BH
        ADD BL, 48
        MOV B, BL        
        MOV AH, 9       ;DISPLAY OUTPUT
        LEA DX, MSG2
        INT 21H          
        MOV AH, 4CH     ;TERMINATE
        INT 21H
        MAIN ENDP
    END MAIN

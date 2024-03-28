;MHM 8.HEX(A-F) to DEC
.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB 'Enter HEX value: $'
    MSG2 DB  13,10,'DECIMAL = '
    D1  DB  ?   
    D2  DB  ?,'$'
.CODE
    MAIN PROC        
        MOV AX, @DATA
        MOV DS, AX
        
        MOV AH, 9
        LEA DX, MSG1
        INT 21H
        
        MOV AH, 1
        INT 21H
        MOV BL, AL
        
        SUB BL, 17
        MOV D1, 49
        MOV D2, BL
        
        MOV AH, 9
        LEA DX, MSG2
        INT 21H           
        
        MOV AH, 4CH  
        INT 21H
        MAIN ENDP
    END MAIN

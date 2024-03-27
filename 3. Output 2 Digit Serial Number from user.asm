; Output 2 Digit Serial Number from user
.MODEL SMALL
.STACK 100H
.DATA
    S1 DB 'ENTER THE SERIAL: $'
    S2 DB 0DH,0AH,'SERIAL: '
    T1 DB ?
    T2 DB ?,'$'    
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        MOV AH, 9
        LEA DX, S1
        INT 21H
        
        MOV AH, 1
        INT 21H
        MOV T1, AL
        
        MOV AH, 1
        INT 21H
        MOV T2, AL
        
        MOV AH, 9
        LEA DX, S2
        INT 21H
        
        MOV AH, 4CH
        INT 21H
        MAIN ENDP
    END MAIN

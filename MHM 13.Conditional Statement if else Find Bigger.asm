;MHM 13.Conditional Statement if else Find Bigger
.MODEL SMALL
.STACK 100H
.DATA
    MSG1    DB  'Enter 2 Number: $'
    MSG2    DB  13,10,'Bigger Number = '
    X   DB  ?,'$'
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        MOV AH, 9
        LEA DX, MSG1
        INT 21H      
        MOV AH, 1     ;INPUT1
        INT 21H
        MOV BL, AL
        INT 21H       ;INPUT2
        MOV BH, AL
        
        CMP BL, BH    ;IF BL>BH
        JG  L1        ;GOTO L1
        JMP L2        ;ELSE L2        
        L1:
        MOV AH, 9
        LEA DX, MSG2
        MOV X, BL
        INT 21H
        JMP EXIT:        
        L2:        
        MOV AH, 9
        LEA DX, MSG2
        MOV X, BH
        INT 21H        
        EXIT:
        MOV AH, 4CH    ;TERMINATE
        INT 21H
        MAIN ENDP
    END MAIN

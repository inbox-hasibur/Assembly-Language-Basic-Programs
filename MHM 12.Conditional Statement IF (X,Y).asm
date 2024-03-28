;MHM 12.Conditional Statement (IF X>Y Print X) 
.MODEL SMALL
.STACK 100H
.CODE
    MAIN PROC        
        MOV AH, 1     ;INPUT1
        INT 21H
        MOV BL, AL
        INT 21H       ;INPUT2
        MOV BH, AL
        
        CMP BL, BH    ;IF BL>BH
        JG  L1        ;GOTO L1
        JMP L2        ;ELSE L2
        
        L1:
        MOV AH, 2
        MOV DL, BL
        INT 21H
        L2:        
  
        MOV AH, 4CH    ;TERMINATE
        INT 21H
        MAIN ENDP
    END MAIN

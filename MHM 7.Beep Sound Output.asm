; MHM 7.Beep Sound Output
.MODEL SMALL
.STACK 100H
.CODE
    MAIN PROC        
        MOV AH, 2        ;BEEP OUTPUT
        MOV DL, 7
        INT 21H   
        MOV DL, 7
        INT 21H
        MOV DL, 7
        INT 21H   
        MOV DL, 7
        INT 21H              
        
        MOV AH, 4CH      ;TERMINATE
        INT 21H
        MAIN ENDP
    END MAIN

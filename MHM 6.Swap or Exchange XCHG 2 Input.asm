; MHM 6.Swap/Exchange XCHG 2 Input
.MODEL SMALL
.STACK 100H
.CODE
    MAIN PROC        
        MOV AH, 1        ;INPUT
        INT 21H
        MOV BL, AL
        INT 21H
        MOV BH, AL
                             
        XCHG BH, BL      ;EXCHANGE/SWAP

        MOV AH, 2        ;DISPLAY OUTPUT
        MOV DL, 13
        INT 21H
        MOV DL, 10
        INT 21H
        MOV DL, BL
        INT 21H   
        MOV DL, BH
        INT 21H              
        
        MOV AH, 4CH      ;TERMINATE
        INT 21H
        MAIN ENDP
    END MAIN

;MHM 9.Multiply 2 Number (2-Digit) with Static initialization
.MODEL SMALL
.STACK 100H
.CODE
    MAIN PROC        
        MOV AL, 4
        MOV BL, 2        
        MUL BL         ;AL=AL*BL 
        
        MOV CL, AL     ;AX|AL=RESULT
        
        MOV AH, 2      ;DISPLAY 
        MOV DL, AL
        ADD DL, 48
        INT 21H
          
        MOV AH, 4CH    ;TERMINATE
        INT 21H
        MAIN ENDP
    END MAIN

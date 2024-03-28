;MHM 11.Division of two number with Static initialization
.MODEL SMALL
.STACK 100H
.CODE
    MAIN PROC        
        MOV AL, 11
        MOV BL, 3      ;AL=AL/BL
        DIV BL         ;AH=REMINDER & AL=RESULT  
        
        MOV CL, AL
        MOV CH, AH
        
        MOV AH, 2      ;DISPLAY CHAR1
        MOV DL, CL
        ADD DL, 48
        INT 21H
        
        MOV AH, 2      ;DISPLAY CHAR1
        MOV DL, CH
        ADD DL, 48
        INT 21H
  
        MOV AH, 4CH    ;TERMINATE
        INT 21H
        MAIN ENDP
    END MAIN

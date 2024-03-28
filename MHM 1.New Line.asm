; MHM 1.NEW LINE 2-CHAR
.MODEL SMALL
.STACK 256
.DATA
.CODE
    MAIN PROC        
        MOV AH, 1        ;INPUT1
        INT 21H
        MOV BL, AL
        INT 21H          ;INPUT2
        MOV CL, AL
        
        MOV AH, 2        ;OUTPUT
        MOV DL, 13       ;CR
        INT 21H          
        MOV DL, 10       ;LF
        INT 21H          
        MOV DL, BL
        INT 21H
        MOV DL, 10       ;CR
        INT 21H
        MOV DL, 13       ;LF
        INT 21H
        MOV DL, CL
        INT 21H        
        
        MOV AH, 4CH
        INT 21H
        MAIN ENDP
    END MAIN

;Uppercase to Lowercase  A-65, a-(65+32)=97
.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB 'Enter the Letter in Lowercase: $'
    MSG2 DB 0DH,0AH,'Uppercase: $'
    TEMP DB ?
.CODE
    MAIN PROC
        ;INITIALIZE
        MOV DX, @DATA
        MOV DS, DX        
        ;DISPLAY1
        MOV AH, 9H
        LEA DX, MSG1
        INT 21H
        ;INPUT
        MOV AH, 1H
        INT 21H        
        MOV TEMP, AL
        ;DISPLAY2
        MOV AH, 9H
        LEA DX, MSG2
        INT 21H
        ADD TEMP,32
        ;DISPLAY3
        MOV AH, 2H
        MOV DL, TEMP
        INT 21H        
        ;TERMINATE
        MOV AH, 4CH
        INT 21H
    MAIN ENDP
    END MAIN

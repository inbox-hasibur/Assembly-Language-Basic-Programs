; MHM 5.Output the Input in New Line
.MODEL SMALL
.STACK 100H
.DATA
    CR EQU 0DH   ; USELESS
    LF EQU 0AH
    MSG1 DB 'Enter 3 character: $'
    MSG2 DB CR,LF,'TEXT: '
    T1   DB CR,LF,?
    T2   DB CR,LF,?
    T3   DB CR,LF,?,'$'
.CODE
    MAIN PROC
        MOV AX, @DATA    ;INITIATE
        MOV DS, AX
        
        MOV AH, 9        ;DISPLAY
        LEA DX, MSG1
        INT 21H
        
        MOV AH, 1        ;INPUT1
        INT 21H
        MOV T1, AL
        INT 21H          ;INPUT2
        MOV T2, AL
        INT 21H          ;INPUT3
        MOV T3, AL
        
        MOV AH, 2        
        MOV DL, 13       ;CR
        INT 21H          
        MOV DL, 10       ;LF
        INT 21H
        MOV DL, T1       ;DISPLAY1
        INT 21H
        MOV DL, 13
        INT 21H
        MOV DL, 10
        INT 21H
        MOV DL, T2       ;DISPLAY2
        INT 21H
        MOV DL, 13
        INT 21H
        MOV DL, 10
        INT 21H
        MOV DL, T3       ;DISPLAY3
        INT 21H
        MOV DL, 13
        INT 21H
        MOV DL, 10
        INT 21H
        
        MOV AH, 4CH      ; TERMINATE
        INT 21H
        MAIN ENDP
    END MAIN

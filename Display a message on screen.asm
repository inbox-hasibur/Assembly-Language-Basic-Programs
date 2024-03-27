;Display a message on screen
.MODEL SMALL
.STACK 100H
.DATA
    CR EQU 0DH
    LF EQU 0AH
    DP EQU 09H
    XX EQU 21H
    EX EQU 4CH
    MSG1 DB 'PRICE '
    MSG2 DB CR,LF,'DOLLAR '
    MSG3 DB 0DH,0AH,'5000$'
.CODE
    MAIN PROC
        ;INITIALIZE
        MOV DX, @DATA
        MOV DS, DX        
        ;DISPLAY
        MOV AH, DP
        MOV DX, OFFSET MSG1
        INT XX        
        ;DISPLAY$
        MOV AH, 2
        MOV DL, 36
        INT 21H        
        ;TERMINATE
        MOV AH, EX
        INT XX
    MAIN ENDP
    END MAIN

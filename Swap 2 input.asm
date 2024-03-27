;SWAP 2 INPUT
.MODEL SMALL
.STACK 256
.DATA
    MSG1 DB 'Enter 2 input: $'
    MSG2 DB 13,10,'SWAP = '
    X    DB ?
    Y    DB ?,'$'
.CODE
    MAIN PROC
        MOV AX, @DATA   ;INITIALIZATION
        MOV DS, AX
        
        MOV AH, 9       ;DISPLAY 1
        LEA DX, MSG1
        INT 21H
        
        MOV AH, 1       
        INT 21H         ;INPUT1
        MOV BL, AL
        INT 21H         ;INPUT2
        MOV BH, AL
        
        XCHG BL, BH       ;SUM
        MOV X, BL
        MOV Y, BH
        
        MOV AH, 9       ;DISPLAY OUTPUT
        LEA DX, MSG2
        INT 21H
        
        MOV AH, 4CH     ;TERMINATE
        INT 21H
    MAIN ENDP
    END MAIN

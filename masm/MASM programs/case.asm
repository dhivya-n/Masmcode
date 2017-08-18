ASSUME CS:CODE,DS:data
data SEGMENT
COUNT equ 10h
data ends 
CODE SEGMENT
START:MOV AX,data
	MOV DS,AX
	MOV CX,COUNT ; LOOP COUNTER
L1:MOV AH,1 ; INPUT CHARACTER, 
	INT 21H ; AL = CHARACTER
	CMP AL,60H
	JNC UPPER
	ADD AL,20H
	JMP SKIP
UPPER:SUB AL,20H ; CONVERT TO UPPER CASE
SKIP:MOV AH,2 ; CHARACTER OUTPUT FUNCTION
	MOV DL,AL ; CHARACTER MUST BE IN DL
	INT 21H ; DISPLAY THE CHARACTER
	LOOP L1 ; REPEAT LOOP
	MOV Ah,4CH
	INT 21H
CODE ENDS
end start

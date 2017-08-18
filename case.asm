<<<<<<< HEAD
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
=======
assume cs:code,ds:data
data segment 
  count equ 10h
data ends
code segment
  start: mov ax,data
  mov ds,ax
mov cx,count
L1: mov ah,1
       int 21h

cmp al,60h
      jnc upper
      add al,20h
      jmp display
upper:sub al,20h
      display:  mov ah,2
               mov dl,al
            int 21h
loop L1
    mov ah,4ch
int 21h
code ends 
end start
>>>>>>> 67b8e5d50333f8a96af4ce6cb6951d951721701d

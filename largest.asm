assume cs:code,ds:data
<<<<<<< HEAD
data segment 
	count db 00h
	numbers db 10 dup(0)
	result db 00h
data ends
code segment
        org 1000h
start:  mov ax,data
        mov ds,ax
	
	mov si,offset numbers
	mov cl,count
	
carry: mov al,[si]
other: inc si
	dec cl
	jz finish
nonzero:cmp al,[si]
	jc carry
	jmp other
finish: mov si,offset result
	mov [si],al
        
       	mov ah,4ch
        int 21h
	code ends
end start
=======
data segment
    count db ?
    numbers db 10 dup(0)
    result db ?
data ends
code segment
start: mov ax,data
   mov ds,ax
mov si,offset numbers
mov cl,count
carry:mov al,[si]
nonzero:inc si
       dec cl
       jz store
     cmp al,[si]
    jc carry
   jmp nonzero
store:  mov si,offset result
       mov [si],al
mov ah,4ch
int 21h
code ends 
end start
       
>>>>>>> 67b8e5d50333f8a96af4ce6cb6951d951721701d

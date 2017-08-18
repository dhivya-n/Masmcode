assume cs:code,ds:data
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
       
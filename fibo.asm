assume cs:code,ds:data
data segment
  count db 09h
  result db 10 dup(?)
data ends

code segment
  org 0100h

start:mov ax,data
  mov ds,ax

mov cl,count
mov al,00h
mov bl,01h
mov si,offset result
mov [si],al
inc si
mov [si],bl
inc si

l1:add al,bl
daa
mov [si],al
inc si
mov bh,al
mov al,bl
mov bl,bh
dec cl
jnz l1

mov ah,4ch
int 21h
code ends 
end start

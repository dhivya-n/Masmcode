assume cs:code,ds:data
data segment 
    num dw 0083h
    z dw 00h
    o dw 00h
data ends
code segment
  start: mov ax,data
  mov ds,ax

mov cx,10h
mov bx,00h
mov dx,00h
mov ax,num
l1:rol ax,1
  jc one
inc bx
jmp next


one: inc dx

next: dec cx
jnz l1

mov z,bx
mov o,dx

    mov ah,4ch
int 21h
code ends 
end start
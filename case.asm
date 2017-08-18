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
assume cs:code,ds:data
data segment
  opr1 dw ?
  opr2 dw ?
  res dw ?
data ends
code segment
  org 100h
start: mov ax,data
    mov ds,ax

mov ax,opr1
mov bx,opr2
add ax,bx
mov res,ax

mov ah,4ch
int 21h

code ends
end start
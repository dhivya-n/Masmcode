assume cs:code,ds:data
<<<<<<< HEAD
data segment 
	opr1 dw ?
        opr2  dw ?
result dw ?
  
       
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax

        mov ax,opr1
        mov bx,opr2
        add ax,bx
        mov result,ax

       
       	mov ah,4ch
        int 21h
	code ends
end start
=======
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
>>>>>>> 67b8e5d50333f8a96af4ce6cb6951d951721701d

assume cs:code,ds:data
data segment 
	opr1 dw ?
        opr2 dw ?
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

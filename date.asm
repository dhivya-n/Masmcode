assume cs:code,ds:data
data segment
day db 01 dup(?) 
month db 01 dup(?)
year db 02 dup(?)
data ends
code segment
 start: mov ax,data
   mov ds,ax
 
mov ah,2ah
    int 21h

mov si,offset day
  mov [si],dl

mov si,offset month
  mov [si],dh

mov si,offset year
   mov [si],cx

mov ah,4ch
int 21h
code ends
end start

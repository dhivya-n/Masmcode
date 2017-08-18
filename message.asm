assume cs:code,ds:data
data segment
message db "Hi iam dhivya$"

data ends
code segment
start:mov ax,datau
mov ds,ax

mov ah,9
mov dx,offset message
int 21h

mov ah,4ch
int 21h
code ends 
end start 
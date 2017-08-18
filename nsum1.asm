assume cs:code,ds:data
data segment
count db ?
numbers db 10 dup(?)
carry db 00h
result db 00h
data ends
code segment
org 1000h
start: mov ax,data
  mov ds,ax

mov si,offset numbers
mov cl,00h
mov dl,count
mov ax,0000h

nonzero:add al,[si]
           jnc nocarry
   inc cl
nocarry: inc si
dec dl ;dec dl
jnz nonzero

mov si,offset result
mov [si],al

mov si,offset carry
mov [si],cl

mov ah,4ch
int 21h
code ends
end start
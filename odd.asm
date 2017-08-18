assume cs:code,ds:data
data segment
count db 00h
numbers db 10 dup(0)
odd db 00h
evenc db 00h
data ends
code segment
start:mov ax,data
mov ds,ax

mov si,offset numbers
mov cl,count
mov ax,0000h
mov dl,00h
mov bl,00h
mov bh,02h
inc cl
scanlist: mov al,[si]
inc si
dec cl
jz store

     div bh
     or ah,00h
     jnz odd1
    inc bl  
    jmp scanlist

odd1: inc dl
     jmp scanlist

store:  mov si,offset evenc
mov [si],bl

 mov si,offset odd
     mov [si],dl

mov ah,4ch
int 21h
code ends
end start



    
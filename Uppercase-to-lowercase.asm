.model small
.stack 100h
.code
.data

    msg1 db 'Enter a Uppercase letter: $'

    msg2 db 0DH, 0AH, 'Lowercase letter is :'

    char db ?, '$'

main proc

    mov ax,@data
    mov ds,ax

    lea dx, msg1
    mov ah,9
    int 21h

    mov cx,26

    mov ah,1
    int 21h

    add al,20h
    mov char,al

    lea dx, msg2
    mov ah,9
    int 21h


MOV AH,4CH
int 21h

main endp

end main
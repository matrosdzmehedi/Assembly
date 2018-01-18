.MODEL SMALL
.STACK 100H
.DATA
message db " Hello World!$"
.CODE
MAIN PROC

    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,message
    int 21h 
    
    mov ax,4Ch
    int 21h 

MAIN ENDP
END MAIN
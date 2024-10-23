
org 100h

jmp start
input1 db 'Enter the first Digit: $'
input2 db 0Dh,0Ah,'Enter the second Digit: $'
output db 0Dh,0Ah,'The two digits are equal.$'
error db 0Dh,0Ah,'The two digits are not equal.$'
start:

mov dx, offset input1
mov ah, 09h
int 21h

mov ah, 01h
int 21h  
sub al, 30h
mov bl, al
    

mov dx, offset input2
mov ah, 09h
int 21h

mov ah, 01h
int 21h  
sub al, 30h
mov bh, al 

cmp bl, al
je equal

mov dx, offset error
mov ah, 09h
int 21h 
call endprogram

equal: 
mov dx, offset output
mov ah, 09h
int 21h 
call endprogram

endprogram:
mov ah, 4Ch
int 21h


ret





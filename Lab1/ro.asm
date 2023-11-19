org 7c00h
go:
mov BH, 0 
mov AX, 0h 
mov ES, AX 
mov BP,message

mov CX, 6

mov AX, 1302h 
int 10h
message db 'R', 09H, 'O', 0aH, 'D', 0bH, 'I', 0cH, 'C', 0dH
jmp $
;  Display character + attribute & update cursor:

org 7c00H           ; origin in the program of the memory
go:
mov BH, 0           ; page number
mov AX, 0h
mov ES, AX
mov BP, message
mov AL, 1
mov CX, 7           ;  number characters
mov DH, 10          ; row
mov DL, 40          ; col
mov AX, 1303h       ; Set AX register to 1303h (BIOS function for printing string with attribute & updating cursor)
int 10h
message db 'F', 0bH, 'E', 0eH, 'L', 0cH, 'I', 09H, 'C', 0aH, 'I', 09H, 'A', 0aH
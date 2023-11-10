; M5: Display character + attribute & update cursor:

org 7c00H
go:
mov BH, 0
mov AX, 0h
mov ES, AX
mov BP, message
mov AL, 1
mov CX, 5
mov DH, 5
mov DL, 5
mov AX, 1303h       ; Set AX register to 1303h (BIOS function for printing string with attribute & updating cursor)
int 10h
message db 'H', 0bH, 'E', 0eH, 'L', 0cH, 'L', 09H, 'O', 0aH
; M5: Display character + attribute & update cursor:

org 7c00H           ; origin in the program of the memory
go:
mov BH, 0           ; page number
mov AX, 0h
mov ES, AX
mov BP, message     ; base pointer
mov AL, 1
mov CX, 5           ; number characters
mov DH, 5           ; row
mov DL, 5           ; col
mov AX, 1303h       ; Set AX register to 1303h (BIOS function for printing string with attribute & updating cursor)
int 10h
message db 'H', 0bH, 'E', 0eH, 'L', 0cH, 'L', 09H, 'O', 0aH
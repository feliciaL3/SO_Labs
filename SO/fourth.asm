org 7c00h
go:
mov BH, 0
mov AX, 0h
mov ES, AX
mov BP, message
mov AL, 1
mov CX, 5           ; Set CX register to 5, indicating the number of characters in the message.
mov DH, 5           ; Set DH register to 5, indicating the row position on the screen.
mov DL, 8           ; Set DL register to 8, indicating the column position on the screen.
mov BL, 8           ; Set BL register to 8, specifying the attribute for displaying the string (in this case, color).
mov AX, 1302h       ; the BIOS function for printing a string with formatting.
int 10h
message db 'H', 09H, 'E', 0aH, 'L', 0bH, 'L', 0cH, 'O', 09H
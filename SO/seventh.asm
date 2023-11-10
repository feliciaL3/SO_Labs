; M7: Display string & update cursor
org 7c00h
go:
mov BH, 0           ; Set BH register to 0, indicating the default video page.
mov AX, 0h
mov ES, AX
mov BP, message     ; Set BP register to the offset address of the message string.
mov BL, 09h         ; Set BL register to 09h, representing the display attribute. In this case, 09h typically corresponds to blue text on a black background.
mov AL, 1           ; Set AL register to 1, indicating that we want to display the string.
mov CX, 5           ' Set CX register to 5, indicating the number of characters in the message.
mov DH, 5           ; Set DH register to 5, indicating the row position on the screen.
mov DL, DH          ; Set DL register to DH, indicating the column position on the screen.
mov AX, 1301h       ; Set AX register to 1301h, which is the BIOS function for printing a string with attribute.
int 10h
message dd "Hello"
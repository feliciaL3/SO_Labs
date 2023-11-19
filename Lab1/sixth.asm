; M6: Display String
org 7c00h
go:
mov BH, 0
mov AX, 0h
mov ES, AX
mov BP, message     ; Set BP register to the offset address of the message string
mov BL, 0fh         ; Set BL register to 0fh, which represents the display attribute (text color)
mov AL, 1           ; Set AL register to 1 (display the string)
mov CX, 5           ; Set CX register to 5 (number of characters in the message)
mov DH, 5           ; Set DH register to 5 (row position on the screen)
mov DL, DH          ; Set DL register to DH (column position on the screen)
mov AX, 1300h
int 10h
message dd "Hello"
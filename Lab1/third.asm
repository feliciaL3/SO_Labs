; M3: Write character/attribute
go:
mov AH, 09h         ; AH = 09h (BIOS function for Display String)
mov AL, "9"         ; AL = ASCII code for the character '9'
mov BH, 0           ; BH = 0 (display on the default page)
mov BL, 7cH         ; (binary representation of display attribute) in this case is red color for background, cifra e responsabila pu background,  iar a doua litera pu culoarea text
mov CX, 3           ; CX = 3 (display the character '9' three times)
int 10h

; 0eH another colors 
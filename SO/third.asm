go:
mov AH, 09h         ; AH = 09h (BIOS function for Display String)
mov AL, "9"         ; AL = ASCII code for the character '9'
mov BH, 0           ; BH = 0 (display on the default page)
mov BL, 0cH         ; BL = 0011_1011b (binary representation of display attribute) in this case is red color for background
mov CX, 3           ; CX = 3 (display the character '9' three times)
int 10h

; 0eH another colors
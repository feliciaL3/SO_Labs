go:
mov AH, 0Ah    ; AH = 0Ah (BIOS function for Read String)
; Set up AL register with the default character to be displayed
mov AL, "A"
mov BH, 0
; Set up CX register with the maximum number of characters to read (including the initial character) in this case letter A 2 times
mov CX, 2
; Trigger BIOS interrupt 10h to perform Read String operation
int 10h
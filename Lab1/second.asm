; M2: Write character
go:
mov AH, 0Ah    ; AH = 0Ah (BIOS function for Read String) used for keyboard input.
; Set up AL register with the default character to be displayed
mov AL, "A"
mov BH, 0      ; video page number (0 default)
; Set up CX register with the maximum number of characters to read (including the initial character) in this case letter A 2 times
mov CX, 2
; Trigger BIOS interrupt 10h to perform Read String operation
int 10h
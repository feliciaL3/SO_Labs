go:
mov AH, 0Eh  ; AH = 0Eh (BIOS function for Teletype Output)
; Set up AL register with the ASCII code of the character to be printed
mov AL, "E"
int 10h


; nasm -f bin -o first.bin first.asm
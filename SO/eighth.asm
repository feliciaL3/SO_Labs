; M8(optional): Print directly to video memory:
org 7c00h           ; Set the origin to 7c00h, indicating that this code is intended to be a bootloader
go:
mov AX, 0xB800      ; Set AX register to 0xB800, the starting address of video memory
mov DS, AX
mov BX, 0

; Print 'H'
mov AL, 'H'
mov AH, 0ah         ; Set AH register to 0ah, representing the display attribute (high intensity white text on black background)
mov [BX], AX        ; Store the character and attribute pair at the current offset in video memory
add BX, 2           ; Move to the next character position in video memory

; Print 'E'
mov AL, 'E'
mov AH, 0ch         ; Set AH register to 09h, representing the display attribute (blue text on black background)
mov [BX], AX        ; Store the character and attribute pair
add BX, 2           ; Move to the next character position

; Print 'L'
mov AL, 'L'
mov AH, 09h
mov [BX], AX
add BX, 2

; Print 'L'
mov AL, 'L'
mov AH, 01h
mov [BX], AX
add BX, 2

; Print 'O'
mov AL, 'O'
mov AH, 0bh
mov [BX], AX

jmp $               ; Jump to the current location (infinite loop)
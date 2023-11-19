;M4: Display character + attribute
org 7c00h           ; origin in the program of the memory
go:
mov BH, 0           ; default page
mov AX, 0h          
mov ES, AX
mov BP, message
mov AL, 1           
mov CX, 5           ; Set CX register to 5, indicating the number of characters in the message.
mov DH, 5           ; Set DH register to 5, indicating the row position on the screen.
mov DL, 8           ; Set DL register to 8, indicating the column position on the screen.
; mov BL, 8         ; Set BL register to 8, specifying the attribute for displaying the string (in this case, color).
mov AX, 1302h       ; the BIOS function for printing a string / character with formatting.
int 10h
message db 'H', 0xe0, 'E', 0aH, 'L', 0bH, 'L', 0cH, 'O', 09H







;The bootloader is typically loaded into memory by the system firmware (BIOS) at the address 0x7C00. 
;By using org 7c00h, you're informing the assembler that the code should be assembled as if it will be loaded into memory starting at the address 0x7C00.
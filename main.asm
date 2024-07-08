[org 0x7c00]
jmp _start

section .text
    global _start

_start:
    mov bx, 1

print_no:
    cmp bx, 4
    je stop

    mov ah, 0x0e
    mov al, 'X'
    int 0x10

    inc bx
    jmp print_no

stop:
    jmp stop

times 510-($-$$) db 0
db 0x55, 0xaa









 
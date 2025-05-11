section .data
    msg db "Hello, World!", 0xA  ; message with newline
    len equ $ - msg             ; length of the message

section .text
    global _start

_start:
    ; write(stdout, msg, len)
    mov rax, 1          ; syscall number for write
    mov rdi, 1          ; file descriptor 1 = stdout
    mov rsi, msg        ; pointer to message
    mov rdx, len        ; message length
    syscall             ; invoke system call

    ; exit(0)
    mov rax, 60         ; syscall number for exit
    xor rdi, rdi        ; status = 0
    syscall             ; invoke system call

section .data
    msg db "Hello, World!", 0xA  ; The message with a newline (0xA)

section .text
    global _start

_start:
    ; syscall: write (stdout = 1, msg, len)
    mov eax, 4          ; syscall number for sys_write
    mov ebx, 1          ; file descriptor 1 = stdout
    mov ecx, msg        ; pointer to message
    mov edx, 13         ; message length
    int 0x80            ; call kernel

    ; syscall: exit (code = 0)
    mov eax, 1          ; syscall number for sys_exit
    xor ebx, ebx        ; exit code 0
    int 0x80            ; call kernel

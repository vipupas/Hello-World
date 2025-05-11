.386
.model flat, stdcall
option casemap:none

include windows.inc
include kernel32.inc
include user32.inc
includelib kernel32.lib
includelib user32.lib

.data
    msg     db "Hello, World!", 0
    caption db "Message", 0

.code
start:
    invoke MessageBoxA, NULL, addr msg, addr caption, MB_OK
    invoke ExitProcess, 0
end start

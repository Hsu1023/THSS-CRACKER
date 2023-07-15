.386
.model flat, stdcall
option casemap:none

includelib      msvcrt.lib
printf          PROTO C :ptr sbyte, :VARARG

.data
vala dword 0h
valb sword 0h
valc byte 0h
Msg byte "%d %d %d", 0ah, 0dh, 0

.code
start:
	mov eax, sizeof vala
	mov ebx, sizeof valb
	mov ecx, sizeof valc

	invoke printf, offset Msg, eax, ebx, ecx
	ret
end  start
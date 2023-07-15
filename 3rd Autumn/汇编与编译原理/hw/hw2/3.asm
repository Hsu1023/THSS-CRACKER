.386
.model flat, stdcall
option casemap:none

includelib      msvcrt.lib
printf          PROTO C :ptr sbyte, :VARARG

.data
myArray WORD 20 DUP(?)
Msg byte "%d", 0ah, 0dh, 0

.code
start:
	mov eax, sizeof myArray

	invoke printf, offset Msg, eax
	ret
end  start
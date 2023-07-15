.386
.model flat, stdcall
option casemap:none

includelib      msvcrt.lib
printf          PROTO C :ptr sbyte, :VARARG

.data
;myArray WORD 20 DUP(?)

intArray WORD 500h, 400h, 300h, 200h, 100h
Msg byte "%d", 0ah, 0dh, 0

.code
start:
	mov eax, 0
	add ax, [intArray]
	add ax, [intArray + 2]
	add ax, [intArray + 4]
	add ax, [intArray + 6]
	add ax, [intArray + 8]
	invoke printf, offset Msg, eax

	mov eax, 0
	mov ecx, 5
	mov esi, OFFSET intArray
L1:
	add ax, WORD PTR [esi]
	add esi, TYPE intArray
	loop L1
	invoke printf, offset Msg, eax

	ret
end  start
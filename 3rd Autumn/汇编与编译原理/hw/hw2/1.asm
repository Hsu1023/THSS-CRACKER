.386
.model flat, stdcall
option casemap:none

includelib      msvcrt.lib
printf          PROTO C :ptr sbyte, :VARARG

.data
	varA dword 5
	varB dword 6
	sum DWORD 0
	product DWORD 0
	Msg byte "%d %d", 0ah, 0dh, 0

.code
start:
	mov eax, varA
	add eax, varB
	mov sum, eax

	mov ebx, varA
	imul ebx, varB
	mov product, ebx

	invoke printf, offset Msg, sum, product
	ret
end  start
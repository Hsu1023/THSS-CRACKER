.386
.model flat, stdcall
option casemap:none

includelib      msvcrt.lib
printf PROTO C :ptr sbyte, :VARARG
scanf PROTO C :ptr sbyte, :VARARG

.data

Inmsg byte "%d%d", 0
Outmsg byte "%d", 0ah, 0dh, 0
varx sdword 0
vary sdword 0


.code
start:
	invoke scanf, offset Inmsg, offset varx, offset vary

	mov ebx, varx
	mov ecx, vary

	cmp ebx, 0
	jge L1
	neg ebx
L1:
	cmp ecx, 0
	jge L2
	neg ecx
L2:
	mov edx, 0
	mov eax, ebx
	mov ebx, ecx
	div ebx
	mov eax, ecx
	mov ebx, eax
	mov ecx, edx
	cmp edx, 0
	jle quit
	jmp L2

quit:
	mov eax, 0
	mov eax, ebx

	invoke printf, offset Outmsg, eax

	ret
end  start
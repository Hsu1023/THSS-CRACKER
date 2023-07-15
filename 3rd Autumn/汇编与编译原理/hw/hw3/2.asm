.386
.model flat, stdcall
option casemap:none

includelib      msvcrt.lib
printf          PROTO C :ptr sbyte, :VARARG

.data

source BYTE 'This is the source string',0
target BYTE SIZEOF source DUP('#')


.code
start:
	mov ecx, LENGTHOF source
	dec ecx
	mov eax, 0
	mov ebx, ecx
	dec ebx
L1:
	mov dl, [source + eax]
	mov [target + ebx], dl
	inc eax
	dec ebx
	loop L1

	mov [target + eax], 0
	invoke printf, offset target

	ret
end  start
.386
.model flat, stdcall
option casemap:none

includelib      msvcrt.lib
printf PROTO C :ptr sbyte, :VARARG
scanf PROTO C :ptr sbyte, :VARARG

.data
targetStr BYTE "ABCDE", 10 DUP(0)
sourceStr BYTE "FGH", 0
outmsg BYTE "%s", 0ah, 0dh, 0


.code

Str_concat PROC addr1:DWORD, addr2:DWORD
	INVOKE printf, offset outmsg, addr2
	INVOKE printf, offset outmsg, addr1


	mov eax, 0
	mov edi, addr2
	repne scasb
	sub edi, addr2
	mov ebx, edi
	dec ebx

	
	mov eax, 0
	mov edi, addr1
	repne scasb
	dec edi

	mov ecx, ebx

	CLD
	mov esi, addr2
	
	rep movsb

	
	INVOKE printf, offset outmsg, addr1

	RET
Str_concat ENDP


start:
	INVOKE Str_concat, ADDR targetStr, ADDR sourceStr
	RET
end  start
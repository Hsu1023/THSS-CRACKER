.386
.model flat, stdcall
option casemap:none

includelib      msvcrt.lib
printf PROTO C :ptr sbyte, :VARARG
scanf PROTO C :ptr sbyte, :VARARG

.data
Outmsg1 byte "Stack parameters:", 0ah, 0dh, "---------------------------", 0ah, 0dh, 0

Outmsg2 byte "Address %08x = %08x", 0ah, 0dh, 0


.code

ShowParams PROC num:DWORD
	INVOKE printf, OFFSET Outmsg1
	
	mov eax, esp
	add eax, 20
	mov ebx, [eax]
	INVOKE printf, OFFSET Outmsg2, eax, ebx

	mov eax, esp
	add eax, 24
	mov ebx, [eax]
	INVOKE printf, OFFSET Outmsg2, eax, ebx

	mov eax, esp
	add eax, 28
	mov ebx, [eax]
	INVOKE printf, OFFSET Outmsg2, eax, ebx
	RET
ShowParams ENDP

MySample PROC first:DWORD, second:DWORD, third:DWORD
	paramCount = 3
	INVOKE ShowParams, paramCount
	RET
MySample ENDP

start:
	INVOKE MySample, 1234h, 5000h, 6543h



	ret
end  start
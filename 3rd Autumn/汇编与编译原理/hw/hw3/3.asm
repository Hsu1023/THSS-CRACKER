.386
.model flat, stdcall
option casemap:none

includelib      msvcrt.lib
printf          PROTO C :ptr sbyte, :VARARG

.data

msg byte "%d ", 0
fib dword 10 dup(?)


.code
start:
	mov [fib], 1
	mov [fib + 4], 1

	mov esi, 2
	mov eax, 0

L1:
	mov ebx, [fib + eax]
	add eax, TYPE fib
	mov edx, [fib + eax]
	add ebx, edx
	add eax, TYPE fib
	mov [fib + eax], ebx
	sub eax, TYPE fib
	inc esi
	cmp esi, 10
	jne L1

	mov esi, 0
	mov eax, offset fib
L2:
	pushad
	invoke printf, offset msg, dword ptr [eax]
	popad
	add eax, TYPE fib
	inc esi
	cmp esi, 10
	jne L2

	ret
end  start
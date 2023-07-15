.386
.model flat, stdcall
option casemap:none

includelib      msvcrt.lib
printf PROTO C :ptr sbyte, :VARARG
scanf PROTO C :ptr sbyte, :VARARG

.data
myArray WORD 3, 1, 7, 5, 2, 9, 4, 3
myArray2 WORD 256, 3, 280, 620, 4984, 0, 12, 156, 165, 256, 13, 12

outmsg BYTE "%d ", 0
endl BYTE 0ah, 0dh, 0



.code

sort_array PROC array:DWORD, len:DWORD
	LOCAL xchg_or_not:DWORD
	mov ecx, len
	dec ecx
LOOP1:
	mov edx, ecx
	mov esi, array
	mov edi, 0
	mov xchg_or_not, edi
LOOP2:
	mov ax, [esi]
	mov bx, [esi + 2]
	.IF al > bl
		xchg eax, ebx
		mov edi, 1
		mov xchg_or_not, edi
	.ENDIF
	mov [esi], ax
	mov [esi + 2], bx
	add esi, 2
	loop LOOP2

	mov edi, xchg_or_not
	cmp edi, 0
	jz EXIT_FUNC

	mov ecx, edx
	loop LOOP1

EXIT_FUNC:
	RET

sort_array ENDP

print_array PROC array:DWORD, len:DWORD
	mov ecx, len
	mov esi, array
LOOP_PRINT:
	pushad
	mov eax, 0
	mov ax, [esi]
	INVOKE printf, offset outmsg, eax
	popad

	add esi, 2
	loop LOOP_PRINT
	RET
print_array ENDP

start:
	mov eax, LENGTHOF myArray
	invoke print_array, ADDR myArray, eax
	invoke printf, OFFSET endl
	mov eax, LENGTHOF myArray
	invoke sort_array, ADDR myArray, eax
	mov eax, LENGTHOF myArray
	invoke print_array, ADDR myArray, eax

	
	invoke printf, OFFSET endl

	mov eax, LENGTHOF myArray2
	invoke print_array, ADDR myArray2, eax
	invoke printf, OFFSET endl
	mov eax, LENGTHOF myArray2
	invoke sort_array, ADDR myArray2, eax
	mov eax, LENGTHOF myArray2
	invoke print_array, ADDR myArray2, eax


	RET
end  start
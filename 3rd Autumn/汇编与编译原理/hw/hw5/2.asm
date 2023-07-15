TITLE It is a template

include Irvine32.inc
 

mWriteInt MACRO num
	push eax

	xor eax, eax
	IF SIZEOF num EQ 4
		mov eax, num
	ELSEIF SIZEOF num LT 4
		movsx eax, num
	ELSE
		pop eax
		EXITM
	ENDIF
	call WriteInt
	pop eax
ENDM

.data

sdword_test SDWORD -127
sword_test SWORD -127
sbyte_test SBYTE -127
 
.code
main PROC
	mWriteInt sdword_test
	mWriteInt sword_test
	mWriteInt sbyte_test
    INVOKE ExitProcess,0

main ENDP
END main
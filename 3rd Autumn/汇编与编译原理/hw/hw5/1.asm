TITLE It is a template

include Irvine32.inc
 
.data
filename BYTE "student.txt",0
input BYTE 512 DUP(?)
maxBytes DWORD 512
bytesRead DWORD ?
out_handle DWORD ?
in_handle DWORD ?
file_handle DWORD ?
actualWrite DWORD ?
stringPoint DWORD ?

id_string BYTE "学号：",0
id_len DWORD $-id_string-1

name_string BYTE "；姓名：",0
name_len DWORD $-name_string-1

birth_string BYTE "；生日：",0
birth_len DWORD $-birth_string-1

hint_string BYTE "请分别输入学号、姓名、生日，退出请输入q：",0ah,0dh,0
hint_len DWORD $-hint_string-1

 
.code
main PROC
    INVOKE GetStdHandle,STD_OUTPUT_HANDLE
    mov out_handle, eax

	INVOKE GetStdHandle,STD_INPUT_HANDLE
    mov in_handle, eax

	INVOKE CreateFile,ADDR filename,GENERIC_WRITE,DO_NOT_SHARE,NULL,CREATE_ALWAYS,FILE_ATTRIBUTE_NORMAL,0
	mov file_handle, eax

READLOOP:
	INVOKE WriteConsole, out_handle, OFFSET hint_string, hint_len, OFFSET actualWrite, 0
	INVOKE ReadConsole, in_handle, OFFSET input, maxBytes, OFFSET bytesRead, 0
	
	
	mov eax, bytesRead
	mov bl, input
	.IF eax == 3 && bl == 'q'
		jmp EXITLOOP
	.ENDIF
	
	INVOKE WriteFile,file_handle, OFFSET id_string, id_len ,OFFSET actualWrite,0  

	mov edi, offset input
	mov al, ' '
	repne scasb
	dec edi
	mov eax, edi
	sub eax, offset input
	INVOKE WriteFile,file_handle, OFFSET input, eax ,OFFSET actualWrite,0  	
	
	INVOKE WriteFile,file_handle, OFFSET name_string, name_len ,OFFSET actualWrite,0  
	
	inc edi
	mov stringPoint, edi
	mov al, ' '
	repne scasb
	mov eax, edi
	sub eax, stringPoint
	dec eax
	INVOKE WriteFile,file_handle, stringPoint, eax ,OFFSET actualWrite,0  	
	
	INVOKE WriteFile,file_handle, OFFSET birth_string, birth_len ,OFFSET actualWrite,0  
	
	mov eax, bytesRead
	add eax, offset input
	sub eax, edi
	INVOKE WriteFile,file_handle, edi, eax ,OFFSET actualWrite,0  	

	jmp READLOOP
EXITLOOP:
    INVOKE ExitProcess,0

main ENDP
END main
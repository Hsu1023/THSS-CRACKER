.386
.model flat, stdcall
option casemap:none

includelib      msvcrt.lib
printf          PROTO C :ptr sbyte, :VARARG

.data
nameMsg			byte    "��������Ʋ�", 0ah, 0dh, 0
idMsg			byte    "ѧ�ţ�2020010108", 0ah, 0dh, 0
classMsg		byte    "�༶�����02", 0ah, 0dh, 0

.code
start:
                invoke  printf, offset nameMsg
                invoke  printf, offset idMsg
                invoke  printf, offset classMsg
                ret
end				start
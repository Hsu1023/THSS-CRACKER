.386
.model flat, stdcall
option casemap:none

includelib      msvcrt.lib
printf          PROTO C :ptr sbyte, :VARARG

.data
nameMsg			byte    "姓名：徐浩博", 0ah, 0dh, 0
idMsg			byte    "学号：2020010108", 0ah, 0dh, 0
classMsg		byte    "班级：软件02", 0ah, 0dh, 0

.code
start:
                invoke  printf, offset nameMsg
                invoke  printf, offset idMsg
                invoke  printf, offset classMsg
                ret
end				start
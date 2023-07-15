
bufbomb:     file format elf32-i386


Disassembly of section .init:

080487c4 <_init>:
 80487c4:	53                   	push   %ebx
 80487c5:	83 ec 08             	sub    $0x8,%esp
 80487c8:	e8 00 00 00 00       	call   80487cd <_init+0x9>
 80487cd:	5b                   	pop    %ebx
 80487ce:	81 c3 27 48 00 00    	add    $0x4827,%ebx
 80487d4:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80487da:	85 c0                	test   %eax,%eax
 80487dc:	74 05                	je     80487e3 <_init+0x1f>
 80487de:	e8 2d 01 00 00       	call   8048910 <__gmon_start__@plt>
 80487e3:	e8 f8 02 00 00       	call   8048ae0 <frame_dummy>
 80487e8:	e8 73 1d 00 00       	call   804a560 <__do_global_ctors_aux>
 80487ed:	83 c4 08             	add    $0x8,%esp
 80487f0:	5b                   	pop    %ebx
 80487f1:	c3                   	ret    

Disassembly of section .plt:

08048800 <.plt>:
 8048800:	ff 35 f8 cf 04 08    	pushl  0x804cff8
 8048806:	ff 25 fc cf 04 08    	jmp    *0x804cffc
 804880c:	00 00                	add    %al,(%eax)
	...

08048810 <read@plt>:
 8048810:	ff 25 00 d0 04 08    	jmp    *0x804d000
 8048816:	68 00 00 00 00       	push   $0x0
 804881b:	e9 e0 ff ff ff       	jmp    8048800 <.plt>

08048820 <srandom@plt>:
 8048820:	ff 25 04 d0 04 08    	jmp    *0x804d004
 8048826:	68 08 00 00 00       	push   $0x8
 804882b:	e9 d0 ff ff ff       	jmp    8048800 <.plt>

08048830 <printf@plt>:
 8048830:	ff 25 08 d0 04 08    	jmp    *0x804d008
 8048836:	68 10 00 00 00       	push   $0x10
 804883b:	e9 c0 ff ff ff       	jmp    8048800 <.plt>

08048840 <strdup@plt>:
 8048840:	ff 25 0c d0 04 08    	jmp    *0x804d00c
 8048846:	68 18 00 00 00       	push   $0x18
 804884b:	e9 b0 ff ff ff       	jmp    8048800 <.plt>

08048850 <memcpy@plt>:
 8048850:	ff 25 10 d0 04 08    	jmp    *0x804d010
 8048856:	68 20 00 00 00       	push   $0x20
 804885b:	e9 a0 ff ff ff       	jmp    8048800 <.plt>

08048860 <signal@plt>:
 8048860:	ff 25 14 d0 04 08    	jmp    *0x804d014
 8048866:	68 28 00 00 00       	push   $0x28
 804886b:	e9 90 ff ff ff       	jmp    8048800 <.plt>

08048870 <alarm@plt>:
 8048870:	ff 25 18 d0 04 08    	jmp    *0x804d018
 8048876:	68 30 00 00 00       	push   $0x30
 804887b:	e9 80 ff ff ff       	jmp    8048800 <.plt>

08048880 <__stack_chk_fail@plt>:
 8048880:	ff 25 1c d0 04 08    	jmp    *0x804d01c
 8048886:	68 38 00 00 00       	push   $0x38
 804888b:	e9 70 ff ff ff       	jmp    8048800 <.plt>

08048890 <_IO_getc@plt>:
 8048890:	ff 25 20 d0 04 08    	jmp    *0x804d020
 8048896:	68 40 00 00 00       	push   $0x40
 804889b:	e9 60 ff ff ff       	jmp    8048800 <.plt>

080488a0 <htons@plt>:
 80488a0:	ff 25 24 d0 04 08    	jmp    *0x804d024
 80488a6:	68 48 00 00 00       	push   $0x48
 80488ab:	e9 50 ff ff ff       	jmp    8048800 <.plt>

080488b0 <fwrite@plt>:
 80488b0:	ff 25 28 d0 04 08    	jmp    *0x804d028
 80488b6:	68 50 00 00 00       	push   $0x50
 80488bb:	e9 40 ff ff ff       	jmp    8048800 <.plt>

080488c0 <bcopy@plt>:
 80488c0:	ff 25 2c d0 04 08    	jmp    *0x804d02c
 80488c6:	68 58 00 00 00       	push   $0x58
 80488cb:	e9 30 ff ff ff       	jmp    8048800 <.plt>

080488d0 <strcpy@plt>:
 80488d0:	ff 25 30 d0 04 08    	jmp    *0x804d030
 80488d6:	68 60 00 00 00       	push   $0x60
 80488db:	e9 20 ff ff ff       	jmp    8048800 <.plt>

080488e0 <getpid@plt>:
 80488e0:	ff 25 34 d0 04 08    	jmp    *0x804d034
 80488e6:	68 68 00 00 00       	push   $0x68
 80488eb:	e9 10 ff ff ff       	jmp    8048800 <.plt>

080488f0 <gethostname@plt>:
 80488f0:	ff 25 38 d0 04 08    	jmp    *0x804d038
 80488f6:	68 70 00 00 00       	push   $0x70
 80488fb:	e9 00 ff ff ff       	jmp    8048800 <.plt>

08048900 <puts@plt>:
 8048900:	ff 25 3c d0 04 08    	jmp    *0x804d03c
 8048906:	68 78 00 00 00       	push   $0x78
 804890b:	e9 f0 fe ff ff       	jmp    8048800 <.plt>

08048910 <__gmon_start__@plt>:
 8048910:	ff 25 40 d0 04 08    	jmp    *0x804d040
 8048916:	68 80 00 00 00       	push   $0x80
 804891b:	e9 e0 fe ff ff       	jmp    8048800 <.plt>

08048920 <exit@plt>:
 8048920:	ff 25 44 d0 04 08    	jmp    *0x804d044
 8048926:	68 88 00 00 00       	push   $0x88
 804892b:	e9 d0 fe ff ff       	jmp    8048800 <.plt>

08048930 <srand@plt>:
 8048930:	ff 25 48 d0 04 08    	jmp    *0x804d048
 8048936:	68 90 00 00 00       	push   $0x90
 804893b:	e9 c0 fe ff ff       	jmp    8048800 <.plt>

08048940 <mmap@plt>:
 8048940:	ff 25 4c d0 04 08    	jmp    *0x804d04c
 8048946:	68 98 00 00 00       	push   $0x98
 804894b:	e9 b0 fe ff ff       	jmp    8048800 <.plt>

08048950 <__libc_start_main@plt>:
 8048950:	ff 25 50 d0 04 08    	jmp    *0x804d050
 8048956:	68 a0 00 00 00       	push   $0xa0
 804895b:	e9 a0 fe ff ff       	jmp    8048800 <.plt>

08048960 <write@plt>:
 8048960:	ff 25 54 d0 04 08    	jmp    *0x804d054
 8048966:	68 a8 00 00 00       	push   $0xa8
 804896b:	e9 90 fe ff ff       	jmp    8048800 <.plt>

08048970 <getopt@plt>:
 8048970:	ff 25 58 d0 04 08    	jmp    *0x804d058
 8048976:	68 b0 00 00 00       	push   $0xb0
 804897b:	e9 80 fe ff ff       	jmp    8048800 <.plt>

08048980 <strcasecmp@plt>:
 8048980:	ff 25 5c d0 04 08    	jmp    *0x804d05c
 8048986:	68 b8 00 00 00       	push   $0xb8
 804898b:	e9 70 fe ff ff       	jmp    8048800 <.plt>

08048990 <__isoc99_sscanf@plt>:
 8048990:	ff 25 60 d0 04 08    	jmp    *0x804d060
 8048996:	68 c0 00 00 00       	push   $0xc0
 804899b:	e9 60 fe ff ff       	jmp    8048800 <.plt>

080489a0 <memset@plt>:
 80489a0:	ff 25 64 d0 04 08    	jmp    *0x804d064
 80489a6:	68 c8 00 00 00       	push   $0xc8
 80489ab:	e9 50 fe ff ff       	jmp    8048800 <.plt>

080489b0 <__errno_location@plt>:
 80489b0:	ff 25 68 d0 04 08    	jmp    *0x804d068
 80489b6:	68 d0 00 00 00       	push   $0xd0
 80489bb:	e9 40 fe ff ff       	jmp    8048800 <.plt>

080489c0 <rand@plt>:
 80489c0:	ff 25 6c d0 04 08    	jmp    *0x804d06c
 80489c6:	68 d8 00 00 00       	push   $0xd8
 80489cb:	e9 30 fe ff ff       	jmp    8048800 <.plt>

080489d0 <munmap@plt>:
 80489d0:	ff 25 70 d0 04 08    	jmp    *0x804d070
 80489d6:	68 e0 00 00 00       	push   $0xe0
 80489db:	e9 20 fe ff ff       	jmp    8048800 <.plt>

080489e0 <sprintf@plt>:
 80489e0:	ff 25 74 d0 04 08    	jmp    *0x804d074
 80489e6:	68 e8 00 00 00       	push   $0xe8
 80489eb:	e9 10 fe ff ff       	jmp    8048800 <.plt>

080489f0 <socket@plt>:
 80489f0:	ff 25 78 d0 04 08    	jmp    *0x804d078
 80489f6:	68 f0 00 00 00       	push   $0xf0
 80489fb:	e9 00 fe ff ff       	jmp    8048800 <.plt>

08048a00 <random@plt>:
 8048a00:	ff 25 7c d0 04 08    	jmp    *0x804d07c
 8048a06:	68 f8 00 00 00       	push   $0xf8
 8048a0b:	e9 f0 fd ff ff       	jmp    8048800 <.plt>

08048a10 <gethostbyname@plt>:
 8048a10:	ff 25 80 d0 04 08    	jmp    *0x804d080
 8048a16:	68 00 01 00 00       	push   $0x100
 8048a1b:	e9 e0 fd ff ff       	jmp    8048800 <.plt>

08048a20 <connect@plt>:
 8048a20:	ff 25 84 d0 04 08    	jmp    *0x804d084
 8048a26:	68 08 01 00 00       	push   $0x108
 8048a2b:	e9 d0 fd ff ff       	jmp    8048800 <.plt>

08048a30 <close@plt>:
 8048a30:	ff 25 88 d0 04 08    	jmp    *0x804d088
 8048a36:	68 10 01 00 00       	push   $0x110
 8048a3b:	e9 c0 fd ff ff       	jmp    8048800 <.plt>

08048a40 <calloc@plt>:
 8048a40:	ff 25 8c d0 04 08    	jmp    *0x804d08c
 8048a46:	68 18 01 00 00       	push   $0x118
 8048a4b:	e9 b0 fd ff ff       	jmp    8048800 <.plt>

Disassembly of section .text:

08048a50 <_start>:
 8048a50:	31 ed                	xor    %ebp,%ebp
 8048a52:	5e                   	pop    %esi
 8048a53:	89 e1                	mov    %esp,%ecx
 8048a55:	83 e4 f0             	and    $0xfffffff0,%esp
 8048a58:	50                   	push   %eax
 8048a59:	54                   	push   %esp
 8048a5a:	52                   	push   %edx
 8048a5b:	68 50 a5 04 08       	push   $0x804a550
 8048a60:	68 e0 a4 04 08       	push   $0x804a4e0
 8048a65:	51                   	push   %ecx
 8048a66:	56                   	push   %esi
 8048a67:	68 3d 90 04 08       	push   $0x804903d
 8048a6c:	e8 df fe ff ff       	call   8048950 <__libc_start_main@plt>
 8048a71:	f4                   	hlt    
 8048a72:	90                   	nop
 8048a73:	90                   	nop
 8048a74:	90                   	nop
 8048a75:	90                   	nop
 8048a76:	90                   	nop
 8048a77:	90                   	nop
 8048a78:	90                   	nop
 8048a79:	90                   	nop
 8048a7a:	90                   	nop
 8048a7b:	90                   	nop
 8048a7c:	90                   	nop
 8048a7d:	90                   	nop
 8048a7e:	90                   	nop
 8048a7f:	90                   	nop

08048a80 <__do_global_dtors_aux>:
 8048a80:	55                   	push   %ebp
 8048a81:	89 e5                	mov    %esp,%ebp
 8048a83:	53                   	push   %ebx
 8048a84:	83 ec 04             	sub    $0x4,%esp
 8048a87:	80 3d ec e0 04 08 00 	cmpb   $0x0,0x804e0ec
 8048a8e:	75 3f                	jne    8048acf <__do_global_dtors_aux+0x4f>
 8048a90:	a1 f0 e0 04 08       	mov    0x804e0f0,%eax
 8048a95:	bb 20 cf 04 08       	mov    $0x804cf20,%ebx
 8048a9a:	81 eb 1c cf 04 08    	sub    $0x804cf1c,%ebx
 8048aa0:	c1 fb 02             	sar    $0x2,%ebx
 8048aa3:	83 eb 01             	sub    $0x1,%ebx
 8048aa6:	39 d8                	cmp    %ebx,%eax
 8048aa8:	73 1e                	jae    8048ac8 <__do_global_dtors_aux+0x48>
 8048aaa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048ab0:	83 c0 01             	add    $0x1,%eax
 8048ab3:	a3 f0 e0 04 08       	mov    %eax,0x804e0f0
 8048ab8:	ff 14 85 1c cf 04 08 	call   *0x804cf1c(,%eax,4)
 8048abf:	a1 f0 e0 04 08       	mov    0x804e0f0,%eax
 8048ac4:	39 d8                	cmp    %ebx,%eax
 8048ac6:	72 e8                	jb     8048ab0 <__do_global_dtors_aux+0x30>
 8048ac8:	c6 05 ec e0 04 08 01 	movb   $0x1,0x804e0ec
 8048acf:	83 c4 04             	add    $0x4,%esp
 8048ad2:	5b                   	pop    %ebx
 8048ad3:	5d                   	pop    %ebp
 8048ad4:	c3                   	ret    
 8048ad5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048ad9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048ae0 <frame_dummy>:
 8048ae0:	55                   	push   %ebp
 8048ae1:	89 e5                	mov    %esp,%ebp
 8048ae3:	83 ec 18             	sub    $0x18,%esp
 8048ae6:	a1 24 cf 04 08       	mov    0x804cf24,%eax
 8048aeb:	85 c0                	test   %eax,%eax
 8048aed:	74 12                	je     8048b01 <frame_dummy+0x21>
 8048aef:	b8 00 00 00 00       	mov    $0x0,%eax
 8048af4:	85 c0                	test   %eax,%eax
 8048af6:	74 09                	je     8048b01 <frame_dummy+0x21>
 8048af8:	c7 04 24 24 cf 04 08 	movl   $0x804cf24,(%esp)
 8048aff:	ff d0                	call   *%eax
 8048b01:	c9                   	leave  
 8048b02:	c3                   	ret    
 8048b03:	90                   	nop

08048b04 <smoke>:
 8048b04:	55                   	push   %ebp
 8048b05:	89 e5                	mov    %esp,%ebp
 8048b07:	83 ec 18             	sub    $0x18,%esp
 8048b0a:	c7 04 24 b0 a5 04 08 	movl   $0x804a5b0,(%esp)
 8048b11:	e8 ea fd ff ff       	call   8048900 <puts@plt>
 8048b16:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048b1d:	e8 0c 09 00 00       	call   804942e <validate>
 8048b22:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048b29:	e8 f2 fd ff ff       	call   8048920 <exit@plt>

08048b2e <fizz>:
 8048b2e:	55                   	push   %ebp
 8048b2f:	89 e5                	mov    %esp,%ebp
 8048b31:	83 ec 18             	sub    $0x18,%esp
 8048b34:	8b 55 08             	mov    0x8(%ebp),%edx
 8048b37:	a1 04 e1 04 08       	mov    0x804e104,%eax
 8048b3c:	39 c2                	cmp    %eax,%edx
 8048b3e:	75 22                	jne    8048b62 <fizz+0x34>
 8048b40:	b8 cb a5 04 08       	mov    $0x804a5cb,%eax
 8048b45:	8b 55 08             	mov    0x8(%ebp),%edx
 8048b48:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048b4c:	89 04 24             	mov    %eax,(%esp)
 8048b4f:	e8 dc fc ff ff       	call   8048830 <printf@plt>
 8048b54:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048b5b:	e8 ce 08 00 00       	call   804942e <validate>
 8048b60:	eb 14                	jmp    8048b76 <fizz+0x48>
 8048b62:	b8 ec a5 04 08       	mov    $0x804a5ec,%eax
 8048b67:	8b 55 08             	mov    0x8(%ebp),%edx
 8048b6a:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048b6e:	89 04 24             	mov    %eax,(%esp)
 8048b71:	e8 ba fc ff ff       	call   8048830 <printf@plt>
 8048b76:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048b7d:	e8 9e fd ff ff       	call   8048920 <exit@plt>

08048b82 <bang>:
 8048b82:	55                   	push   %ebp
 8048b83:	89 e5                	mov    %esp,%ebp
 8048b85:	83 ec 18             	sub    $0x18,%esp
 8048b88:	a1 0c e1 04 08       	mov    0x804e10c,%eax
 8048b8d:	89 c2                	mov    %eax,%edx
 8048b8f:	a1 04 e1 04 08       	mov    0x804e104,%eax
 8048b94:	39 c2                	cmp    %eax,%edx
 8048b96:	75 25                	jne    8048bbd <bang+0x3b>
 8048b98:	8b 15 0c e1 04 08    	mov    0x804e10c,%edx
 8048b9e:	b8 0c a6 04 08       	mov    $0x804a60c,%eax
 8048ba3:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048ba7:	89 04 24             	mov    %eax,(%esp)
 8048baa:	e8 81 fc ff ff       	call   8048830 <printf@plt>
 8048baf:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8048bb6:	e8 73 08 00 00       	call   804942e <validate>
 8048bbb:	eb 17                	jmp    8048bd4 <bang+0x52>
 8048bbd:	8b 15 0c e1 04 08    	mov    0x804e10c,%edx
 8048bc3:	b8 31 a6 04 08       	mov    $0x804a631,%eax
 8048bc8:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048bcc:	89 04 24             	mov    %eax,(%esp)
 8048bcf:	e8 5c fc ff ff       	call   8048830 <printf@plt>
 8048bd4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048bdb:	e8 40 fd ff ff       	call   8048920 <exit@plt>

08048be0 <test>:
 8048be0:	55                   	push   %ebp
 8048be1:	89 e5                	mov    %esp,%ebp
 8048be3:	83 ec 28             	sub    $0x28,%esp
 8048be6:	e8 38 04 00 00       	call   8049023 <uniqueval>
 8048beb:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048bee:	e8 91 06 00 00       	call   8049284 <getbuf>
 8048bf3:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048bf6:	e8 28 04 00 00       	call   8049023 <uniqueval>
 8048bfb:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048bfe:	39 d0                	cmp    %edx,%eax
 8048c00:	74 0e                	je     8048c10 <test+0x30>
 8048c02:	c7 04 24 50 a6 04 08 	movl   $0x804a650,(%esp)
 8048c09:	e8 f2 fc ff ff       	call   8048900 <puts@plt>
 8048c0e:	eb 42                	jmp    8048c52 <test+0x72>
 8048c10:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048c13:	a1 04 e1 04 08       	mov    0x804e104,%eax
 8048c18:	39 c2                	cmp    %eax,%edx
 8048c1a:	75 22                	jne    8048c3e <test+0x5e>
 8048c1c:	b8 79 a6 04 08       	mov    $0x804a679,%eax
 8048c21:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048c24:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048c28:	89 04 24             	mov    %eax,(%esp)
 8048c2b:	e8 00 fc ff ff       	call   8048830 <printf@plt>
 8048c30:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8048c37:	e8 f2 07 00 00       	call   804942e <validate>
 8048c3c:	eb 14                	jmp    8048c52 <test+0x72>
 8048c3e:	b8 96 a6 04 08       	mov    $0x804a696,%eax
 8048c43:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048c46:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048c4a:	89 04 24             	mov    %eax,(%esp)
 8048c4d:	e8 de fb ff ff       	call   8048830 <printf@plt>
 8048c52:	c9                   	leave  
 8048c53:	c3                   	ret    

08048c54 <testn>:
 8048c54:	55                   	push   %ebp
 8048c55:	89 e5                	mov    %esp,%ebp
 8048c57:	83 ec 28             	sub    $0x28,%esp
 8048c5a:	e8 c4 03 00 00       	call   8049023 <uniqueval>
 8048c5f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048c62:	e8 35 06 00 00       	call   804929c <getbufn>
 8048c67:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048c6a:	e8 b4 03 00 00       	call   8049023 <uniqueval>
 8048c6f:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048c72:	39 d0                	cmp    %edx,%eax
 8048c74:	74 0e                	je     8048c84 <testn+0x30>
 8048c76:	c7 04 24 50 a6 04 08 	movl   $0x804a650,(%esp)
 8048c7d:	e8 7e fc ff ff       	call   8048900 <puts@plt>
 8048c82:	eb 42                	jmp    8048cc6 <testn+0x72>
 8048c84:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048c87:	a1 04 e1 04 08       	mov    0x804e104,%eax
 8048c8c:	39 c2                	cmp    %eax,%edx
 8048c8e:	75 22                	jne    8048cb2 <testn+0x5e>
 8048c90:	b8 b4 a6 04 08       	mov    $0x804a6b4,%eax
 8048c95:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048c98:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048c9c:	89 04 24             	mov    %eax,(%esp)
 8048c9f:	e8 8c fb ff ff       	call   8048830 <printf@plt>
 8048ca4:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 8048cab:	e8 7e 07 00 00       	call   804942e <validate>
 8048cb0:	eb 14                	jmp    8048cc6 <testn+0x72>
 8048cb2:	b8 d4 a6 04 08       	mov    $0x804a6d4,%eax
 8048cb7:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048cba:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048cbe:	89 04 24             	mov    %eax,(%esp)
 8048cc1:	e8 6a fb ff ff       	call   8048830 <printf@plt>
 8048cc6:	c9                   	leave  
 8048cc7:	c3                   	ret    

08048cc8 <save_char>:
 8048cc8:	55                   	push   %ebp
 8048cc9:	89 e5                	mov    %esp,%ebp
 8048ccb:	83 ec 04             	sub    $0x4,%esp
 8048cce:	8b 45 08             	mov    0x8(%ebp),%eax
 8048cd1:	88 45 fc             	mov    %al,-0x4(%ebp)
 8048cd4:	a1 10 e1 04 08       	mov    0x804e110,%eax
 8048cd9:	3d ff 03 00 00       	cmp    $0x3ff,%eax
 8048cde:	7f 6c                	jg     8048d4c <save_char+0x84>
 8048ce0:	8b 15 10 e1 04 08    	mov    0x804e110,%edx
 8048ce6:	89 d0                	mov    %edx,%eax
 8048ce8:	01 c0                	add    %eax,%eax
 8048cea:	01 c2                	add    %eax,%edx
 8048cec:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
 8048cf0:	c0 f8 04             	sar    $0x4,%al
 8048cf3:	0f be c0             	movsbl %al,%eax
 8048cf6:	83 e0 0f             	and    $0xf,%eax
 8048cf9:	0f b6 80 a8 d0 04 08 	movzbl 0x804d0a8(%eax),%eax
 8048d00:	88 82 40 e1 04 08    	mov    %al,0x804e140(%edx)
 8048d06:	8b 15 10 e1 04 08    	mov    0x804e110,%edx
 8048d0c:	89 d0                	mov    %edx,%eax
 8048d0e:	01 c0                	add    %eax,%eax
 8048d10:	01 d0                	add    %edx,%eax
 8048d12:	8d 50 01             	lea    0x1(%eax),%edx
 8048d15:	0f be 45 fc          	movsbl -0x4(%ebp),%eax
 8048d19:	83 e0 0f             	and    $0xf,%eax
 8048d1c:	0f b6 80 a8 d0 04 08 	movzbl 0x804d0a8(%eax),%eax
 8048d23:	88 82 40 e1 04 08    	mov    %al,0x804e140(%edx)
 8048d29:	8b 15 10 e1 04 08    	mov    0x804e110,%edx
 8048d2f:	89 d0                	mov    %edx,%eax
 8048d31:	01 c0                	add    %eax,%eax
 8048d33:	01 d0                	add    %edx,%eax
 8048d35:	83 c0 02             	add    $0x2,%eax
 8048d38:	c6 80 40 e1 04 08 20 	movb   $0x20,0x804e140(%eax)
 8048d3f:	a1 10 e1 04 08       	mov    0x804e110,%eax
 8048d44:	83 c0 01             	add    $0x1,%eax
 8048d47:	a3 10 e1 04 08       	mov    %eax,0x804e110
 8048d4c:	c9                   	leave  
 8048d4d:	c3                   	ret    

08048d4e <save_term>:
 8048d4e:	55                   	push   %ebp
 8048d4f:	89 e5                	mov    %esp,%ebp
 8048d51:	8b 15 10 e1 04 08    	mov    0x804e110,%edx
 8048d57:	89 d0                	mov    %edx,%eax
 8048d59:	01 c0                	add    %eax,%eax
 8048d5b:	01 d0                	add    %edx,%eax
 8048d5d:	c6 80 40 e1 04 08 00 	movb   $0x0,0x804e140(%eax)
 8048d64:	5d                   	pop    %ebp
 8048d65:	c3                   	ret    

08048d66 <Gets>:
 8048d66:	55                   	push   %ebp
 8048d67:	89 e5                	mov    %esp,%ebp
 8048d69:	83 ec 28             	sub    $0x28,%esp
 8048d6c:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d6f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048d72:	c7 05 10 e1 04 08 00 	movl   $0x0,0x804e110
 8048d79:	00 00 00 
 8048d7c:	eb 1c                	jmp    8048d9a <Gets+0x34>
 8048d7e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048d81:	89 c2                	mov    %eax,%edx
 8048d83:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048d86:	88 10                	mov    %dl,(%eax)
 8048d88:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048d8c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048d8f:	0f be c0             	movsbl %al,%eax
 8048d92:	89 04 24             	mov    %eax,(%esp)
 8048d95:	e8 2e ff ff ff       	call   8048cc8 <save_char>
 8048d9a:	a1 00 e1 04 08       	mov    0x804e100,%eax
 8048d9f:	89 04 24             	mov    %eax,(%esp)
 8048da2:	e8 e9 fa ff ff       	call   8048890 <_IO_getc@plt>
 8048da7:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048daa:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
 8048dae:	74 06                	je     8048db6 <Gets+0x50>
 8048db0:	83 7d f4 0a          	cmpl   $0xa,-0xc(%ebp)
 8048db4:	75 c8                	jne    8048d7e <Gets+0x18>
 8048db6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048db9:	c6 00 00             	movb   $0x0,(%eax)
 8048dbc:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048dc0:	e8 89 ff ff ff       	call   8048d4e <save_term>
 8048dc5:	8b 45 08             	mov    0x8(%ebp),%eax
 8048dc8:	c9                   	leave  
 8048dc9:	c3                   	ret    

08048dca <usage>:
 8048dca:	55                   	push   %ebp
 8048dcb:	89 e5                	mov    %esp,%ebp
 8048dcd:	83 ec 18             	sub    $0x18,%esp
 8048dd0:	b8 f0 a6 04 08       	mov    $0x804a6f0,%eax
 8048dd5:	8b 55 08             	mov    0x8(%ebp),%edx
 8048dd8:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048ddc:	89 04 24             	mov    %eax,(%esp)
 8048ddf:	e8 4c fa ff ff       	call   8048830 <printf@plt>
 8048de4:	c7 04 24 0e a7 04 08 	movl   $0x804a70e,(%esp)
 8048deb:	e8 10 fb ff ff       	call   8048900 <puts@plt>
 8048df0:	c7 04 24 24 a7 04 08 	movl   $0x804a724,(%esp)
 8048df7:	e8 04 fb ff ff       	call   8048900 <puts@plt>
 8048dfc:	c7 04 24 40 a7 04 08 	movl   $0x804a740,(%esp)
 8048e03:	e8 f8 fa ff ff       	call   8048900 <puts@plt>
 8048e08:	c7 04 24 7c a7 04 08 	movl   $0x804a77c,(%esp)
 8048e0f:	e8 ec fa ff ff       	call   8048900 <puts@plt>
 8048e14:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048e1b:	e8 00 fb ff ff       	call   8048920 <exit@plt>

08048e20 <bushandler>:
 8048e20:	55                   	push   %ebp
 8048e21:	89 e5                	mov    %esp,%ebp
 8048e23:	83 ec 18             	sub    $0x18,%esp
 8048e26:	c7 04 24 a4 a7 04 08 	movl   $0x804a7a4,(%esp)
 8048e2d:	e8 ce fa ff ff       	call   8048900 <puts@plt>
 8048e32:	c7 04 24 c4 a7 04 08 	movl   $0x804a7c4,(%esp)
 8048e39:	e8 c2 fa ff ff       	call   8048900 <puts@plt>
 8048e3e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048e45:	e8 d6 fa ff ff       	call   8048920 <exit@plt>

08048e4a <seghandler>:
 8048e4a:	55                   	push   %ebp
 8048e4b:	89 e5                	mov    %esp,%ebp
 8048e4d:	83 ec 18             	sub    $0x18,%esp
 8048e50:	c7 04 24 dc a7 04 08 	movl   $0x804a7dc,(%esp)
 8048e57:	e8 a4 fa ff ff       	call   8048900 <puts@plt>
 8048e5c:	c7 04 24 c4 a7 04 08 	movl   $0x804a7c4,(%esp)
 8048e63:	e8 98 fa ff ff       	call   8048900 <puts@plt>
 8048e68:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048e6f:	e8 ac fa ff ff       	call   8048920 <exit@plt>

08048e74 <illegalhandler>:
 8048e74:	55                   	push   %ebp
 8048e75:	89 e5                	mov    %esp,%ebp
 8048e77:	83 ec 18             	sub    $0x18,%esp
 8048e7a:	c7 04 24 04 a8 04 08 	movl   $0x804a804,(%esp)
 8048e81:	e8 7a fa ff ff       	call   8048900 <puts@plt>
 8048e86:	c7 04 24 c4 a7 04 08 	movl   $0x804a7c4,(%esp)
 8048e8d:	e8 6e fa ff ff       	call   8048900 <puts@plt>
 8048e92:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048e99:	e8 82 fa ff ff       	call   8048920 <exit@plt>

08048e9e <launch>:
 8048e9e:	55                   	push   %ebp
 8048e9f:	89 e5                	mov    %esp,%ebp
 8048ea1:	83 ec 78             	sub    $0x78,%esp
 8048ea4:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8048eab:	8d 45 b0             	lea    -0x50(%ebp),%eax
 8048eae:	25 f0 3f 00 00       	and    $0x3ff0,%eax
 8048eb3:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048eb6:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048eb9:	03 45 f0             	add    -0x10(%ebp),%eax
 8048ebc:	8d 50 0f             	lea    0xf(%eax),%edx
 8048ebf:	b8 10 00 00 00       	mov    $0x10,%eax
 8048ec4:	83 e8 01             	sub    $0x1,%eax
 8048ec7:	01 d0                	add    %edx,%eax
 8048ec9:	c7 45 a4 10 00 00 00 	movl   $0x10,-0x5c(%ebp)
 8048ed0:	ba 00 00 00 00       	mov    $0x0,%edx
 8048ed5:	f7 75 a4             	divl   -0x5c(%ebp)
 8048ed8:	6b c0 10             	imul   $0x10,%eax,%eax
 8048edb:	29 c4                	sub    %eax,%esp
 8048edd:	8d 44 24 0c          	lea    0xc(%esp),%eax
 8048ee1:	83 c0 0f             	add    $0xf,%eax
 8048ee4:	c1 e8 04             	shr    $0x4,%eax
 8048ee7:	c1 e0 04             	shl    $0x4,%eax
 8048eea:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048eed:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048ef0:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048ef4:	c7 44 24 04 f4 00 00 	movl   $0xf4,0x4(%esp)
 8048efb:	00 
 8048efc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048eff:	89 04 24             	mov    %eax,(%esp)
 8048f02:	e8 99 fa ff ff       	call   80489a0 <memset@plt>
 8048f07:	b8 2f a8 04 08       	mov    $0x804a82f,%eax
 8048f0c:	89 04 24             	mov    %eax,(%esp)
 8048f0f:	e8 1c f9 ff ff       	call   8048830 <printf@plt>
 8048f14:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8048f18:	74 07                	je     8048f21 <launch+0x83>
 8048f1a:	e8 35 fd ff ff       	call   8048c54 <testn>
 8048f1f:	eb 05                	jmp    8048f26 <launch+0x88>
 8048f21:	e8 ba fc ff ff       	call   8048be0 <test>
 8048f26:	a1 08 e1 04 08       	mov    0x804e108,%eax
 8048f2b:	85 c0                	test   %eax,%eax
 8048f2d:	75 16                	jne    8048f45 <launch+0xa7>
 8048f2f:	c7 04 24 c4 a7 04 08 	movl   $0x804a7c4,(%esp)
 8048f36:	e8 c5 f9 ff ff       	call   8048900 <puts@plt>
 8048f3b:	c7 05 08 e1 04 08 00 	movl   $0x0,0x804e108
 8048f42:	00 00 00 
 8048f45:	c9                   	leave  
 8048f46:	c3                   	ret    

08048f47 <launcher>:
 8048f47:	55                   	push   %ebp
 8048f48:	89 e5                	mov    %esp,%ebp
 8048f4a:	83 ec 38             	sub    $0x38,%esp
 8048f4d:	8b 45 08             	mov    0x8(%ebp),%eax
 8048f50:	a3 14 e1 04 08       	mov    %eax,0x804e114
 8048f55:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048f58:	a3 18 e1 04 08       	mov    %eax,0x804e118
 8048f5d:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 8048f64:	00 
 8048f65:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 8048f6c:	00 
 8048f6d:	c7 44 24 0c 32 01 00 	movl   $0x132,0xc(%esp)
 8048f74:	00 
 8048f75:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
 8048f7c:	00 
 8048f7d:	c7 44 24 04 00 00 10 	movl   $0x100000,0x4(%esp)
 8048f84:	00 
 8048f85:	c7 04 24 00 60 58 55 	movl   $0x55586000,(%esp)
 8048f8c:	e8 af f9 ff ff       	call   8048940 <mmap@plt>
 8048f91:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048f94:	81 7d f4 00 60 58 55 	cmpl   $0x55586000,-0xc(%ebp)
 8048f9b:	74 34                	je     8048fd1 <launcher+0x8a>
 8048f9d:	a1 e0 e0 04 08       	mov    0x804e0e0,%eax
 8048fa2:	89 c2                	mov    %eax,%edx
 8048fa4:	b8 3c a8 04 08       	mov    $0x804a83c,%eax
 8048fa9:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8048fad:	c7 44 24 08 47 00 00 	movl   $0x47,0x8(%esp)
 8048fb4:	00 
 8048fb5:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8048fbc:	00 
 8048fbd:	89 04 24             	mov    %eax,(%esp)
 8048fc0:	e8 eb f8 ff ff       	call   80488b0 <fwrite@plt>
 8048fc5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048fcc:	e8 4f f9 ff ff       	call   8048920 <exit@plt>
 8048fd1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048fd4:	05 f8 ff 0f 00       	add    $0xffff8,%eax
 8048fd9:	a3 20 e1 04 08       	mov    %eax,0x804e120
 8048fde:	8b 15 20 e1 04 08    	mov    0x804e120,%edx
 8048fe4:	89 e0                	mov    %esp,%eax
 8048fe6:	89 d4                	mov    %edx,%esp
 8048fe8:	89 c2                	mov    %eax,%edx
 8048fea:	89 15 1c e1 04 08    	mov    %edx,0x804e11c
 8048ff0:	8b 15 18 e1 04 08    	mov    0x804e118,%edx
 8048ff6:	a1 14 e1 04 08       	mov    0x804e114,%eax
 8048ffb:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048fff:	89 04 24             	mov    %eax,(%esp)
 8049002:	e8 97 fe ff ff       	call   8048e9e <launch>
 8049007:	a1 1c e1 04 08       	mov    0x804e11c,%eax
 804900c:	89 c4                	mov    %eax,%esp
 804900e:	c7 44 24 04 00 00 10 	movl   $0x100000,0x4(%esp)
 8049015:	00 
 8049016:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049019:	89 04 24             	mov    %eax,(%esp)
 804901c:	e8 af f9 ff ff       	call   80489d0 <munmap@plt>
 8049021:	c9                   	leave  
 8049022:	c3                   	ret    

08049023 <uniqueval>:
 8049023:	55                   	push   %ebp
 8049024:	89 e5                	mov    %esp,%ebp
 8049026:	83 ec 18             	sub    $0x18,%esp
 8049029:	e8 b2 f8 ff ff       	call   80488e0 <getpid@plt>
 804902e:	89 04 24             	mov    %eax,(%esp)
 8049031:	e8 ea f7 ff ff       	call   8048820 <srandom@plt>
 8049036:	e8 c5 f9 ff ff       	call   8048a00 <random@plt>
 804903b:	c9                   	leave  
 804903c:	c3                   	ret    

0804903d <main>:
 804903d:	55                   	push   %ebp
 804903e:	89 e5                	mov    %esp,%ebp
 8049040:	53                   	push   %ebx
 8049041:	83 e4 f0             	and    $0xfffffff0,%esp
 8049044:	83 ec 30             	sub    $0x30,%esp
 8049047:	c7 44 24 24 00 00 00 	movl   $0x0,0x24(%esp)
 804904e:	00 
 804904f:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
 8049056:	00 
 8049057:	c7 44 24 20 01 00 00 	movl   $0x1,0x20(%esp)
 804905e:	00 
 804905f:	c7 44 24 04 4a 8e 04 	movl   $0x8048e4a,0x4(%esp)
 8049066:	08 
 8049067:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
 804906e:	e8 ed f7 ff ff       	call   8048860 <signal@plt>
 8049073:	c7 44 24 04 20 8e 04 	movl   $0x8048e20,0x4(%esp)
 804907a:	08 
 804907b:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
 8049082:	e8 d9 f7 ff ff       	call   8048860 <signal@plt>
 8049087:	c7 44 24 04 74 8e 04 	movl   $0x8048e74,0x4(%esp)
 804908e:	08 
 804908f:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 8049096:	e8 c5 f7 ff ff       	call   8048860 <signal@plt>
 804909b:	a1 e4 e0 04 08       	mov    0x804e0e4,%eax
 80490a0:	a3 00 e1 04 08       	mov    %eax,0x804e100
 80490a5:	e9 8e 00 00 00       	jmp    8049138 <main+0xfb>
 80490aa:	0f be 44 24 2f       	movsbl 0x2f(%esp),%eax
 80490af:	83 e8 67             	sub    $0x67,%eax
 80490b2:	83 f8 0e             	cmp    $0xe,%eax
 80490b5:	77 74                	ja     804912b <main+0xee>
 80490b7:	8b 04 85 fc a8 04 08 	mov    0x804a8fc(,%eax,4),%eax
 80490be:	ff e0                	jmp    *%eax
 80490c0:	8b 45 0c             	mov    0xc(%ebp),%eax
 80490c3:	8b 00                	mov    (%eax),%eax
 80490c5:	89 04 24             	mov    %eax,(%esp)
 80490c8:	e8 fd fc ff ff       	call   8048dca <usage>
 80490cd:	eb 69                	jmp    8049138 <main+0xfb>
 80490cf:	c7 44 24 18 01 00 00 	movl   $0x1,0x18(%esp)
 80490d6:	00 
 80490d7:	c7 44 24 20 05 00 00 	movl   $0x5,0x20(%esp)
 80490de:	00 
 80490df:	eb 57                	jmp    8049138 <main+0xfb>
 80490e1:	a1 e8 e0 04 08       	mov    0x804e0e8,%eax
 80490e6:	89 04 24             	mov    %eax,(%esp)
 80490e9:	e8 52 f7 ff ff       	call   8048840 <strdup@plt>
 80490ee:	a3 f4 e0 04 08       	mov    %eax,0x804e0f4
 80490f3:	a1 f4 e0 04 08       	mov    0x804e0f4,%eax
 80490f8:	89 04 24             	mov    %eax,(%esp)
 80490fb:	e8 a3 13 00 00       	call   804a4a3 <gencookie>
 8049100:	a3 04 e1 04 08       	mov    %eax,0x804e104
 8049105:	eb 31                	jmp    8049138 <main+0xfb>
 8049107:	c7 04 24 84 a8 04 08 	movl   $0x804a884,(%esp)
 804910e:	e8 ed f7 ff ff       	call   8048900 <puts@plt>
 8049113:	c7 05 f8 e0 04 08 00 	movl   $0x0,0x804e0f8
 804911a:	00 00 00 
 804911d:	eb 19                	jmp    8049138 <main+0xfb>
 804911f:	c7 05 fc e0 04 08 01 	movl   $0x1,0x804e0fc
 8049126:	00 00 00 
 8049129:	eb 0d                	jmp    8049138 <main+0xfb>
 804912b:	8b 45 0c             	mov    0xc(%ebp),%eax
 804912e:	8b 00                	mov    (%eax),%eax
 8049130:	89 04 24             	mov    %eax,(%esp)
 8049133:	e8 92 fc ff ff       	call   8048dca <usage>
 8049138:	c7 44 24 08 ac a8 04 	movl   $0x804a8ac,0x8(%esp)
 804913f:	08 
 8049140:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049143:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049147:	8b 45 08             	mov    0x8(%ebp),%eax
 804914a:	89 04 24             	mov    %eax,(%esp)
 804914d:	e8 1e f8 ff ff       	call   8048970 <getopt@plt>
 8049152:	88 44 24 2f          	mov    %al,0x2f(%esp)
 8049156:	80 7c 24 2f ff       	cmpb   $0xff,0x2f(%esp)
 804915b:	0f 85 49 ff ff ff    	jne    80490aa <main+0x6d>
 8049161:	a1 f4 e0 04 08       	mov    0x804e0f4,%eax
 8049166:	85 c0                	test   %eax,%eax
 8049168:	75 23                	jne    804918d <main+0x150>
 804916a:	8b 45 0c             	mov    0xc(%ebp),%eax
 804916d:	8b 10                	mov    (%eax),%edx
 804916f:	b8 b4 a8 04 08       	mov    $0x804a8b4,%eax
 8049174:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049178:	89 04 24             	mov    %eax,(%esp)
 804917b:	e8 b0 f6 ff ff       	call   8048830 <printf@plt>
 8049180:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049183:	8b 00                	mov    (%eax),%eax
 8049185:	89 04 24             	mov    %eax,(%esp)
 8049188:	e8 3d fc ff ff       	call   8048dca <usage>
 804918d:	e8 2a 01 00 00       	call   80492bc <initialize_bomb>
 8049192:	8b 15 f4 e0 04 08    	mov    0x804e0f4,%edx
 8049198:	b8 e0 a8 04 08       	mov    $0x804a8e0,%eax
 804919d:	89 54 24 04          	mov    %edx,0x4(%esp)
 80491a1:	89 04 24             	mov    %eax,(%esp)
 80491a4:	e8 87 f6 ff ff       	call   8048830 <printf@plt>
 80491a9:	8b 15 04 e1 04 08    	mov    0x804e104,%edx
 80491af:	b8 ec a8 04 08       	mov    $0x804a8ec,%eax
 80491b4:	89 54 24 04          	mov    %edx,0x4(%esp)
 80491b8:	89 04 24             	mov    %eax,(%esp)
 80491bb:	e8 70 f6 ff ff       	call   8048830 <printf@plt>
 80491c0:	a1 04 e1 04 08       	mov    0x804e104,%eax
 80491c5:	89 04 24             	mov    %eax,(%esp)
 80491c8:	e8 53 f6 ff ff       	call   8048820 <srandom@plt>
 80491cd:	e8 2e f8 ff ff       	call   8048a00 <random@plt>
 80491d2:	25 f0 0f 00 00       	and    $0xff0,%eax
 80491d7:	05 00 01 00 00       	add    $0x100,%eax
 80491dc:	89 44 24 24          	mov    %eax,0x24(%esp)
 80491e0:	8b 44 24 20          	mov    0x20(%esp),%eax
 80491e4:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
 80491eb:	00 
 80491ec:	89 04 24             	mov    %eax,(%esp)
 80491ef:	e8 4c f8 ff ff       	call   8048a40 <calloc@plt>
 80491f4:	89 44 24 28          	mov    %eax,0x28(%esp)
 80491f8:	8b 44 24 28          	mov    0x28(%esp),%eax
 80491fc:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8049202:	c7 44 24 1c 01 00 00 	movl   $0x1,0x1c(%esp)
 8049209:	00 
 804920a:	eb 28                	jmp    8049234 <main+0x1f7>
 804920c:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 8049210:	c1 e0 02             	shl    $0x2,%eax
 8049213:	89 c3                	mov    %eax,%ebx
 8049215:	03 5c 24 28          	add    0x28(%esp),%ebx
 8049219:	e8 e2 f7 ff ff       	call   8048a00 <random@plt>
 804921e:	89 c2                	mov    %eax,%edx
 8049220:	81 e2 f0 00 00 00    	and    $0xf0,%edx
 8049226:	b8 80 00 00 00       	mov    $0x80,%eax
 804922b:	29 d0                	sub    %edx,%eax
 804922d:	89 03                	mov    %eax,(%ebx)
 804922f:	83 44 24 1c 01       	addl   $0x1,0x1c(%esp)
 8049234:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 8049238:	3b 44 24 20          	cmp    0x20(%esp),%eax
 804923c:	7c ce                	jl     804920c <main+0x1cf>
 804923e:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
 8049245:	00 
 8049246:	eb 26                	jmp    804926e <main+0x231>
 8049248:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 804924c:	c1 e0 02             	shl    $0x2,%eax
 804924f:	03 44 24 28          	add    0x28(%esp),%eax
 8049253:	8b 00                	mov    (%eax),%eax
 8049255:	03 44 24 24          	add    0x24(%esp),%eax
 8049259:	89 44 24 04          	mov    %eax,0x4(%esp)
 804925d:	8b 44 24 18          	mov    0x18(%esp),%eax
 8049261:	89 04 24             	mov    %eax,(%esp)
 8049264:	e8 de fc ff ff       	call   8048f47 <launcher>
 8049269:	83 44 24 1c 01       	addl   $0x1,0x1c(%esp)
 804926e:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 8049272:	3b 44 24 20          	cmp    0x20(%esp),%eax
 8049276:	7c d0                	jl     8049248 <main+0x20b>
 8049278:	b8 00 00 00 00       	mov    $0x0,%eax
 804927d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8049280:	c9                   	leave  
 8049281:	c3                   	ret    
 8049282:	90                   	nop
 8049283:	90                   	nop

08049284 <getbuf>:
 8049284:	55                   	push   %ebp
 8049285:	89 e5                	mov    %esp,%ebp
 8049287:	83 ec 38             	sub    $0x38,%esp
 804928a:	8d 45 d8             	lea    -0x28(%ebp),%eax
 804928d:	89 04 24             	mov    %eax,(%esp)
 8049290:	e8 d1 fa ff ff       	call   8048d66 <Gets>
 8049295:	b8 01 00 00 00       	mov    $0x1,%eax
 804929a:	c9                   	leave  
 804929b:	c3                   	ret    

0804929c <getbufn>:
 804929c:	55                   	push   %ebp
 804929d:	89 e5                	mov    %esp,%ebp
 804929f:	81 ec 18 02 00 00    	sub    $0x218,%esp
 80492a5:	8d 85 f8 fd ff ff    	lea    -0x208(%ebp),%eax
 80492ab:	89 04 24             	mov    %eax,(%esp)
 80492ae:	e8 b3 fa ff ff       	call   8048d66 <Gets>
 80492b3:	b8 01 00 00 00       	mov    $0x1,%eax
 80492b8:	c9                   	leave  
 80492b9:	c3                   	ret    
 80492ba:	90                   	nop
 80492bb:	90                   	nop

080492bc <initialize_bomb>:
 80492bc:	55                   	push   %ebp
 80492bd:	89 e5                	mov    %esp,%ebp
 80492bf:	81 ec 28 24 00 00    	sub    $0x2428,%esp
 80492c5:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80492cb:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80492ce:	31 c0                	xor    %eax,%eax
 80492d0:	c7 85 f0 db ff ff 00 	movl   $0x0,-0x2410(%ebp)
 80492d7:	00 00 00 
 80492da:	a1 fc e0 04 08       	mov    0x804e0fc,%eax
 80492df:	85 c0                	test   %eax,%eax
 80492e1:	74 0c                	je     80492ef <initialize_bomb+0x33>
 80492e3:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 80492ea:	e8 43 0e 00 00       	call   804a132 <init_timeout>
 80492ef:	a1 f8 e0 04 08       	mov    0x804e0f8,%eax
 80492f4:	85 c0                	test   %eax,%eax
 80492f6:	0f 84 1f 01 00 00    	je     804941b <initialize_bomb+0x15f>
 80492fc:	c7 44 24 04 00 04 00 	movl   $0x400,0x4(%esp)
 8049303:	00 
 8049304:	8d 85 f4 fb ff ff    	lea    -0x40c(%ebp),%eax
 804930a:	89 04 24             	mov    %eax,(%esp)
 804930d:	e8 de f5 ff ff       	call   80488f0 <gethostname@plt>
 8049312:	85 c0                	test   %eax,%eax
 8049314:	74 18                	je     804932e <initialize_bomb+0x72>
 8049316:	c7 04 24 a0 a9 04 08 	movl   $0x804a9a0,(%esp)
 804931d:	e8 de f5 ff ff       	call   8048900 <puts@plt>
 8049322:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049329:	e8 f2 f5 ff ff       	call   8048920 <exit@plt>
 804932e:	c7 85 ec db ff ff 00 	movl   $0x0,-0x2414(%ebp)
 8049335:	00 00 00 
 8049338:	eb 36                	jmp    8049370 <initialize_bomb+0xb4>
 804933a:	8b 85 ec db ff ff    	mov    -0x2414(%ebp),%eax
 8049340:	8b 04 85 c0 d0 04 08 	mov    0x804d0c0(,%eax,4),%eax
 8049347:	8d 95 f4 fb ff ff    	lea    -0x40c(%ebp),%edx
 804934d:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049351:	89 04 24             	mov    %eax,(%esp)
 8049354:	e8 27 f6 ff ff       	call   8048980 <strcasecmp@plt>
 8049359:	85 c0                	test   %eax,%eax
 804935b:	75 0c                	jne    8049369 <initialize_bomb+0xad>
 804935d:	c7 85 f0 db ff ff 01 	movl   $0x1,-0x2410(%ebp)
 8049364:	00 00 00 
 8049367:	eb 18                	jmp    8049381 <initialize_bomb+0xc5>
 8049369:	83 85 ec db ff ff 01 	addl   $0x1,-0x2414(%ebp)
 8049370:	8b 85 ec db ff ff    	mov    -0x2414(%ebp),%eax
 8049376:	8b 04 85 c0 d0 04 08 	mov    0x804d0c0(,%eax,4),%eax
 804937d:	85 c0                	test   %eax,%eax
 804937f:	75 b9                	jne    804933a <initialize_bomb+0x7e>
 8049381:	83 bd f0 db ff ff 00 	cmpl   $0x0,-0x2410(%ebp)
 8049388:	75 5c                	jne    80493e6 <initialize_bomb+0x12a>
 804938a:	b8 d8 a9 04 08       	mov    $0x804a9d8,%eax
 804938f:	8d 95 f4 fb ff ff    	lea    -0x40c(%ebp),%edx
 8049395:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049399:	89 04 24             	mov    %eax,(%esp)
 804939c:	e8 8f f4 ff ff       	call   8048830 <printf@plt>
 80493a1:	c7 85 ec db ff ff 00 	movl   $0x0,-0x2414(%ebp)
 80493a8:	00 00 00 
 80493ab:	eb 1c                	jmp    80493c9 <initialize_bomb+0x10d>
 80493ad:	8b 85 ec db ff ff    	mov    -0x2414(%ebp),%eax
 80493b3:	8b 04 85 c0 d0 04 08 	mov    0x804d0c0(,%eax,4),%eax
 80493ba:	89 04 24             	mov    %eax,(%esp)
 80493bd:	e8 3e f5 ff ff       	call   8048900 <puts@plt>
 80493c2:	83 85 ec db ff ff 01 	addl   $0x1,-0x2414(%ebp)
 80493c9:	8b 85 ec db ff ff    	mov    -0x2414(%ebp),%eax
 80493cf:	8b 04 85 c0 d0 04 08 	mov    0x804d0c0(,%eax,4),%eax
 80493d6:	85 c0                	test   %eax,%eax
 80493d8:	75 d3                	jne    80493ad <initialize_bomb+0xf1>
 80493da:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80493e1:	e8 3a f5 ff ff       	call   8048920 <exit@plt>
 80493e6:	8d 85 f4 db ff ff    	lea    -0x240c(%ebp),%eax
 80493ec:	89 04 24             	mov    %eax,(%esp)
 80493ef:	e8 7b 0d 00 00       	call   804a16f <init_driver>
 80493f4:	85 c0                	test   %eax,%eax
 80493f6:	79 23                	jns    804941b <initialize_bomb+0x15f>
 80493f8:	b8 13 aa 04 08       	mov    $0x804aa13,%eax
 80493fd:	8d 95 f4 db ff ff    	lea    -0x240c(%ebp),%edx
 8049403:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049407:	89 04 24             	mov    %eax,(%esp)
 804940a:	e8 21 f4 ff ff       	call   8048830 <printf@plt>
 804940f:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049416:	e8 05 f5 ff ff       	call   8048920 <exit@plt>
 804941b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804941e:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8049425:	74 05                	je     804942c <initialize_bomb+0x170>
 8049427:	e8 54 f4 ff ff       	call   8048880 <__stack_chk_fail@plt>
 804942c:	c9                   	leave  
 804942d:	c3                   	ret    

0804942e <validate>:
 804942e:	55                   	push   %ebp
 804942f:	89 e5                	mov    %esp,%ebp
 8049431:	57                   	push   %edi
 8049432:	81 ec 44 40 00 00    	sub    $0x4044,%esp
 8049438:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804943e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049441:	31 c0                	xor    %eax,%eax
 8049443:	a1 f4 e0 04 08       	mov    0x804e0f4,%eax
 8049448:	85 c0                	test   %eax,%eax
 804944a:	75 11                	jne    804945d <validate+0x2f>
 804944c:	c7 04 24 28 aa 04 08 	movl   $0x804aa28,(%esp)
 8049453:	e8 a8 f4 ff ff       	call   8048900 <puts@plt>
 8049458:	e9 51 01 00 00       	jmp    80495ae <validate+0x180>
 804945d:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8049461:	78 06                	js     8049469 <validate+0x3b>
 8049463:	83 7d 08 04          	cmpl   $0x4,0x8(%ebp)
 8049467:	7e 11                	jle    804947a <validate+0x4c>
 8049469:	c7 04 24 54 aa 04 08 	movl   $0x804aa54,(%esp)
 8049470:	e8 8b f4 ff ff       	call   8048900 <puts@plt>
 8049475:	e9 34 01 00 00       	jmp    80495ae <validate+0x180>
 804947a:	c7 05 08 e1 04 08 01 	movl   $0x1,0x804e108
 8049481:	00 00 00 
 8049484:	8b 45 08             	mov    0x8(%ebp),%eax
 8049487:	8b 04 85 c0 e0 04 08 	mov    0x804e0c0(,%eax,4),%eax
 804948e:	8d 50 ff             	lea    -0x1(%eax),%edx
 8049491:	8b 45 08             	mov    0x8(%ebp),%eax
 8049494:	89 14 85 c0 e0 04 08 	mov    %edx,0x804e0c0(,%eax,4)
 804949b:	8b 45 08             	mov    0x8(%ebp),%eax
 804949e:	8b 04 85 c0 e0 04 08 	mov    0x804e0c0(,%eax,4),%eax
 80494a5:	85 c0                	test   %eax,%eax
 80494a7:	7e 11                	jle    80494ba <validate+0x8c>
 80494a9:	c7 04 24 7a aa 04 08 	movl   $0x804aa7a,(%esp)
 80494b0:	e8 4b f4 ff ff       	call   8048900 <puts@plt>
 80494b5:	e9 f4 00 00 00       	jmp    80495ae <validate+0x180>
 80494ba:	c7 04 24 85 aa 04 08 	movl   $0x804aa85,(%esp)
 80494c1:	e8 3a f4 ff ff       	call   8048900 <puts@plt>
 80494c6:	a1 f8 e0 04 08       	mov    0x804e0f8,%eax
 80494cb:	85 c0                	test   %eax,%eax
 80494cd:	0f 84 cf 00 00 00    	je     80495a2 <validate+0x174>
 80494d3:	b8 40 e1 04 08       	mov    $0x804e140,%eax
 80494d8:	c7 85 e4 bf ff ff ff 	movl   $0xffffffff,-0x401c(%ebp)
 80494df:	ff ff ff 
 80494e2:	89 c2                	mov    %eax,%edx
 80494e4:	b8 00 00 00 00       	mov    $0x0,%eax
 80494e9:	8b 8d e4 bf ff ff    	mov    -0x401c(%ebp),%ecx
 80494ef:	89 d7                	mov    %edx,%edi
 80494f1:	f2 ae                	repnz scas %es:(%edi),%al
 80494f3:	89 c8                	mov    %ecx,%eax
 80494f5:	f7 d0                	not    %eax
 80494f7:	83 e8 01             	sub    $0x1,%eax
 80494fa:	83 c0 20             	add    $0x20,%eax
 80494fd:	3d 00 20 00 00       	cmp    $0x2000,%eax
 8049502:	76 11                	jbe    8049515 <validate+0xe7>
 8049504:	c7 04 24 8c aa 04 08 	movl   $0x804aa8c,(%esp)
 804950b:	e8 f0 f3 ff ff       	call   8048900 <puts@plt>
 8049510:	e9 99 00 00 00       	jmp    80495ae <validate+0x180>
 8049515:	8b 15 04 e1 04 08    	mov    0x804e104,%edx
 804951b:	b8 c3 aa 04 08       	mov    $0x804aac3,%eax
 8049520:	c7 44 24 10 40 e1 04 	movl   $0x804e140,0x10(%esp)
 8049527:	08 
 8049528:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804952c:	8b 55 08             	mov    0x8(%ebp),%edx
 804952f:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049533:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049537:	8d 85 f4 bf ff ff    	lea    -0x400c(%ebp),%eax
 804953d:	89 04 24             	mov    %eax,(%esp)
 8049540:	e8 9b f4 ff ff       	call   80489e0 <sprintf@plt>
 8049545:	a1 f4 e0 04 08       	mov    0x804e0f4,%eax
 804954a:	8d 95 f4 df ff ff    	lea    -0x200c(%ebp),%edx
 8049550:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049554:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804955b:	00 
 804955c:	8d 95 f4 bf ff ff    	lea    -0x400c(%ebp),%edx
 8049562:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049566:	89 04 24             	mov    %eax,(%esp)
 8049569:	e8 ff 0d 00 00       	call   804a36d <driver_post>
 804956e:	89 85 f0 bf ff ff    	mov    %eax,-0x4010(%ebp)
 8049574:	83 bd f0 bf ff ff 00 	cmpl   $0x0,-0x4010(%ebp)
 804957b:	75 0e                	jne    804958b <validate+0x15d>
 804957d:	c7 04 24 cc aa 04 08 	movl   $0x804aacc,(%esp)
 8049584:	e8 77 f3 ff ff       	call   8048900 <puts@plt>
 8049589:	eb 17                	jmp    80495a2 <validate+0x174>
 804958b:	b8 fc aa 04 08       	mov    $0x804aafc,%eax
 8049590:	8d 95 f4 df ff ff    	lea    -0x200c(%ebp),%edx
 8049596:	89 54 24 04          	mov    %edx,0x4(%esp)
 804959a:	89 04 24             	mov    %eax,(%esp)
 804959d:	e8 8e f2 ff ff       	call   8048830 <printf@plt>
 80495a2:	c7 04 24 3a ab 04 08 	movl   $0x804ab3a,(%esp)
 80495a9:	e8 52 f3 ff ff       	call   8048900 <puts@plt>
 80495ae:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80495b1:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 80495b8:	74 05                	je     80495bf <validate+0x191>
 80495ba:	e8 c1 f2 ff ff       	call   8048880 <__stack_chk_fail@plt>
 80495bf:	81 c4 44 40 00 00    	add    $0x4044,%esp
 80495c5:	5f                   	pop    %edi
 80495c6:	5d                   	pop    %ebp
 80495c7:	c3                   	ret    

080495c8 <sigalrm_handler>:
 80495c8:	55                   	push   %ebp
 80495c9:	89 e5                	mov    %esp,%ebp
 80495cb:	83 ec 18             	sub    $0x18,%esp
 80495ce:	b8 44 ab 04 08       	mov    $0x804ab44,%eax
 80495d3:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
 80495da:	00 
 80495db:	89 04 24             	mov    %eax,(%esp)
 80495de:	e8 4d f2 ff ff       	call   8048830 <printf@plt>
 80495e3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80495ea:	e8 31 f3 ff ff       	call   8048920 <exit@plt>

080495ef <rio_readinitb>:
 80495ef:	55                   	push   %ebp
 80495f0:	89 e5                	mov    %esp,%ebp
 80495f2:	8b 45 08             	mov    0x8(%ebp),%eax
 80495f5:	8b 55 0c             	mov    0xc(%ebp),%edx
 80495f8:	89 10                	mov    %edx,(%eax)
 80495fa:	8b 45 08             	mov    0x8(%ebp),%eax
 80495fd:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8049604:	8b 45 08             	mov    0x8(%ebp),%eax
 8049607:	8d 50 0c             	lea    0xc(%eax),%edx
 804960a:	8b 45 08             	mov    0x8(%ebp),%eax
 804960d:	89 50 08             	mov    %edx,0x8(%eax)
 8049610:	5d                   	pop    %ebp
 8049611:	c3                   	ret    

08049612 <rio_read>:
 8049612:	55                   	push   %ebp
 8049613:	89 e5                	mov    %esp,%ebp
 8049615:	83 ec 28             	sub    $0x28,%esp
 8049618:	eb 62                	jmp    804967c <rio_read+0x6a>
 804961a:	8b 45 08             	mov    0x8(%ebp),%eax
 804961d:	8d 50 0c             	lea    0xc(%eax),%edx
 8049620:	8b 45 08             	mov    0x8(%ebp),%eax
 8049623:	8b 00                	mov    (%eax),%eax
 8049625:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 804962c:	00 
 804962d:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049631:	89 04 24             	mov    %eax,(%esp)
 8049634:	e8 d7 f1 ff ff       	call   8048810 <read@plt>
 8049639:	8b 55 08             	mov    0x8(%ebp),%edx
 804963c:	89 42 04             	mov    %eax,0x4(%edx)
 804963f:	8b 45 08             	mov    0x8(%ebp),%eax
 8049642:	8b 40 04             	mov    0x4(%eax),%eax
 8049645:	85 c0                	test   %eax,%eax
 8049647:	79 16                	jns    804965f <rio_read+0x4d>
 8049649:	e8 62 f3 ff ff       	call   80489b0 <__errno_location@plt>
 804964e:	8b 00                	mov    (%eax),%eax
 8049650:	83 f8 04             	cmp    $0x4,%eax
 8049653:	74 27                	je     804967c <rio_read+0x6a>
 8049655:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804965a:	e9 84 00 00 00       	jmp    80496e3 <rio_read+0xd1>
 804965f:	8b 45 08             	mov    0x8(%ebp),%eax
 8049662:	8b 40 04             	mov    0x4(%eax),%eax
 8049665:	85 c0                	test   %eax,%eax
 8049667:	75 07                	jne    8049670 <rio_read+0x5e>
 8049669:	b8 00 00 00 00       	mov    $0x0,%eax
 804966e:	eb 73                	jmp    80496e3 <rio_read+0xd1>
 8049670:	8b 45 08             	mov    0x8(%ebp),%eax
 8049673:	8d 50 0c             	lea    0xc(%eax),%edx
 8049676:	8b 45 08             	mov    0x8(%ebp),%eax
 8049679:	89 50 08             	mov    %edx,0x8(%eax)
 804967c:	8b 45 08             	mov    0x8(%ebp),%eax
 804967f:	8b 40 04             	mov    0x4(%eax),%eax
 8049682:	85 c0                	test   %eax,%eax
 8049684:	7e 94                	jle    804961a <rio_read+0x8>
 8049686:	8b 45 10             	mov    0x10(%ebp),%eax
 8049689:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804968c:	8b 45 08             	mov    0x8(%ebp),%eax
 804968f:	8b 40 04             	mov    0x4(%eax),%eax
 8049692:	3b 45 10             	cmp    0x10(%ebp),%eax
 8049695:	73 09                	jae    80496a0 <rio_read+0x8e>
 8049697:	8b 45 08             	mov    0x8(%ebp),%eax
 804969a:	8b 40 04             	mov    0x4(%eax),%eax
 804969d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80496a0:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 80496a3:	8b 45 08             	mov    0x8(%ebp),%eax
 80496a6:	8b 40 08             	mov    0x8(%eax),%eax
 80496a9:	89 c2                	mov    %eax,%edx
 80496ab:	8b 45 0c             	mov    0xc(%ebp),%eax
 80496ae:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 80496b2:	89 54 24 04          	mov    %edx,0x4(%esp)
 80496b6:	89 04 24             	mov    %eax,(%esp)
 80496b9:	e8 92 f1 ff ff       	call   8048850 <memcpy@plt>
 80496be:	8b 45 08             	mov    0x8(%ebp),%eax
 80496c1:	8b 50 08             	mov    0x8(%eax),%edx
 80496c4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80496c7:	01 c2                	add    %eax,%edx
 80496c9:	8b 45 08             	mov    0x8(%ebp),%eax
 80496cc:	89 50 08             	mov    %edx,0x8(%eax)
 80496cf:	8b 45 08             	mov    0x8(%ebp),%eax
 80496d2:	8b 40 04             	mov    0x4(%eax),%eax
 80496d5:	89 c2                	mov    %eax,%edx
 80496d7:	2b 55 f4             	sub    -0xc(%ebp),%edx
 80496da:	8b 45 08             	mov    0x8(%ebp),%eax
 80496dd:	89 50 04             	mov    %edx,0x4(%eax)
 80496e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80496e3:	c9                   	leave  
 80496e4:	c3                   	ret    

080496e5 <rio_readlineb>:
 80496e5:	55                   	push   %ebp
 80496e6:	89 e5                	mov    %esp,%ebp
 80496e8:	83 ec 28             	sub    $0x28,%esp
 80496eb:	8b 45 0c             	mov    0xc(%ebp),%eax
 80496ee:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80496f1:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
 80496f8:	eb 58                	jmp    8049752 <rio_readlineb+0x6d>
 80496fa:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 8049701:	00 
 8049702:	8d 45 f7             	lea    -0x9(%ebp),%eax
 8049705:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049709:	8b 45 08             	mov    0x8(%ebp),%eax
 804970c:	89 04 24             	mov    %eax,(%esp)
 804970f:	e8 fe fe ff ff       	call   8049612 <rio_read>
 8049714:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049717:	83 7d f0 01          	cmpl   $0x1,-0x10(%ebp)
 804971b:	75 17                	jne    8049734 <rio_readlineb+0x4f>
 804971d:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
 8049721:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049724:	88 10                	mov    %dl,(%eax)
 8049726:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 804972a:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 804972e:	3c 0a                	cmp    $0xa,%al
 8049730:	75 1c                	jne    804974e <rio_readlineb+0x69>
 8049732:	eb 29                	jmp    804975d <rio_readlineb+0x78>
 8049734:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8049738:	75 0d                	jne    8049747 <rio_readlineb+0x62>
 804973a:	83 7d e8 01          	cmpl   $0x1,-0x18(%ebp)
 804973e:	75 1c                	jne    804975c <rio_readlineb+0x77>
 8049740:	b8 00 00 00 00       	mov    $0x0,%eax
 8049745:	eb 1f                	jmp    8049766 <rio_readlineb+0x81>
 8049747:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804974c:	eb 18                	jmp    8049766 <rio_readlineb+0x81>
 804974e:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
 8049752:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049755:	3b 45 10             	cmp    0x10(%ebp),%eax
 8049758:	72 a0                	jb     80496fa <rio_readlineb+0x15>
 804975a:	eb 01                	jmp    804975d <rio_readlineb+0x78>
 804975c:	90                   	nop
 804975d:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049760:	c6 00 00             	movb   $0x0,(%eax)
 8049763:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049766:	c9                   	leave  
 8049767:	c3                   	ret    

08049768 <rio_writen>:
 8049768:	55                   	push   %ebp
 8049769:	89 e5                	mov    %esp,%ebp
 804976b:	83 ec 28             	sub    $0x28,%esp
 804976e:	8b 45 10             	mov    0x10(%ebp),%eax
 8049771:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8049774:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049777:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804977a:	eb 4a                	jmp    80497c6 <rio_writen+0x5e>
 804977c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804977f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049783:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049786:	89 44 24 04          	mov    %eax,0x4(%esp)
 804978a:	8b 45 08             	mov    0x8(%ebp),%eax
 804978d:	89 04 24             	mov    %eax,(%esp)
 8049790:	e8 cb f1 ff ff       	call   8048960 <write@plt>
 8049795:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049798:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804979c:	7f 1c                	jg     80497ba <rio_writen+0x52>
 804979e:	e8 0d f2 ff ff       	call   80489b0 <__errno_location@plt>
 80497a3:	8b 00                	mov    (%eax),%eax
 80497a5:	83 f8 04             	cmp    $0x4,%eax
 80497a8:	75 09                	jne    80497b3 <rio_writen+0x4b>
 80497aa:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80497b1:	eb 07                	jmp    80497ba <rio_writen+0x52>
 80497b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80497b8:	eb 15                	jmp    80497cf <rio_writen+0x67>
 80497ba:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80497bd:	29 45 ec             	sub    %eax,-0x14(%ebp)
 80497c0:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80497c3:	01 45 f4             	add    %eax,-0xc(%ebp)
 80497c6:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 80497ca:	75 b0                	jne    804977c <rio_writen+0x14>
 80497cc:	8b 45 10             	mov    0x10(%ebp),%eax
 80497cf:	c9                   	leave  
 80497d0:	c3                   	ret    

080497d1 <urlencode>:
 80497d1:	55                   	push   %ebp
 80497d2:	89 e5                	mov    %esp,%ebp
 80497d4:	57                   	push   %edi
 80497d5:	83 ec 34             	sub    $0x34,%esp
 80497d8:	8b 45 08             	mov    0x8(%ebp),%eax
 80497db:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 80497de:	8b 45 0c             	mov    0xc(%ebp),%eax
 80497e1:	89 45 e0             	mov    %eax,-0x20(%ebp)
 80497e4:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80497ea:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80497ed:	31 c0                	xor    %eax,%eax
 80497ef:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80497f2:	c7 45 dc ff ff ff ff 	movl   $0xffffffff,-0x24(%ebp)
 80497f9:	89 c2                	mov    %eax,%edx
 80497fb:	b8 00 00 00 00       	mov    $0x0,%eax
 8049800:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 8049803:	89 d7                	mov    %edx,%edi
 8049805:	f2 ae                	repnz scas %es:(%edi),%al
 8049807:	89 c8                	mov    %ecx,%eax
 8049809:	f7 d0                	not    %eax
 804980b:	83 e8 01             	sub    $0x1,%eax
 804980e:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049811:	e9 07 01 00 00       	jmp    804991d <urlencode+0x14c>
 8049816:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049819:	0f b6 00             	movzbl (%eax),%eax
 804981c:	3c 2a                	cmp    $0x2a,%al
 804981e:	74 5a                	je     804987a <urlencode+0xa9>
 8049820:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049823:	0f b6 00             	movzbl (%eax),%eax
 8049826:	3c 2d                	cmp    $0x2d,%al
 8049828:	74 50                	je     804987a <urlencode+0xa9>
 804982a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804982d:	0f b6 00             	movzbl (%eax),%eax
 8049830:	3c 2e                	cmp    $0x2e,%al
 8049832:	74 46                	je     804987a <urlencode+0xa9>
 8049834:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049837:	0f b6 00             	movzbl (%eax),%eax
 804983a:	3c 5f                	cmp    $0x5f,%al
 804983c:	74 3c                	je     804987a <urlencode+0xa9>
 804983e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049841:	0f b6 00             	movzbl (%eax),%eax
 8049844:	3c 2f                	cmp    $0x2f,%al
 8049846:	76 0a                	jbe    8049852 <urlencode+0x81>
 8049848:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804984b:	0f b6 00             	movzbl (%eax),%eax
 804984e:	3c 39                	cmp    $0x39,%al
 8049850:	76 28                	jbe    804987a <urlencode+0xa9>
 8049852:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049855:	0f b6 00             	movzbl (%eax),%eax
 8049858:	3c 40                	cmp    $0x40,%al
 804985a:	76 0a                	jbe    8049866 <urlencode+0x95>
 804985c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804985f:	0f b6 00             	movzbl (%eax),%eax
 8049862:	3c 5a                	cmp    $0x5a,%al
 8049864:	76 14                	jbe    804987a <urlencode+0xa9>
 8049866:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049869:	0f b6 00             	movzbl (%eax),%eax
 804986c:	3c 60                	cmp    $0x60,%al
 804986e:	76 1e                	jbe    804988e <urlencode+0xbd>
 8049870:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049873:	0f b6 00             	movzbl (%eax),%eax
 8049876:	3c 7a                	cmp    $0x7a,%al
 8049878:	77 14                	ja     804988e <urlencode+0xbd>
 804987a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804987d:	0f b6 10             	movzbl (%eax),%edx
 8049880:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049883:	88 10                	mov    %dl,(%eax)
 8049885:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
 8049889:	e9 8b 00 00 00       	jmp    8049919 <urlencode+0x148>
 804988e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049891:	0f b6 00             	movzbl (%eax),%eax
 8049894:	3c 20                	cmp    $0x20,%al
 8049896:	75 0c                	jne    80498a4 <urlencode+0xd3>
 8049898:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804989b:	c6 00 2b             	movb   $0x2b,(%eax)
 804989e:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
 80498a2:	eb 75                	jmp    8049919 <urlencode+0x148>
 80498a4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80498a7:	0f b6 00             	movzbl (%eax),%eax
 80498aa:	3c 1f                	cmp    $0x1f,%al
 80498ac:	76 0a                	jbe    80498b8 <urlencode+0xe7>
 80498ae:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80498b1:	0f b6 00             	movzbl (%eax),%eax
 80498b4:	84 c0                	test   %al,%al
 80498b6:	79 0a                	jns    80498c2 <urlencode+0xf1>
 80498b8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80498bb:	0f b6 00             	movzbl (%eax),%eax
 80498be:	3c 09                	cmp    $0x9,%al
 80498c0:	75 50                	jne    8049912 <urlencode+0x141>
 80498c2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80498c5:	0f b6 00             	movzbl (%eax),%eax
 80498c8:	0f b6 d0             	movzbl %al,%edx
 80498cb:	b8 68 ab 04 08       	mov    $0x804ab68,%eax
 80498d0:	89 54 24 08          	mov    %edx,0x8(%esp)
 80498d4:	89 44 24 04          	mov    %eax,0x4(%esp)
 80498d8:	8d 45 ec             	lea    -0x14(%ebp),%eax
 80498db:	89 04 24             	mov    %eax,(%esp)
 80498de:	e8 fd f0 ff ff       	call   80489e0 <sprintf@plt>
 80498e3:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
 80498e7:	89 c2                	mov    %eax,%edx
 80498e9:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80498ec:	88 10                	mov    %dl,(%eax)
 80498ee:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
 80498f2:	0f b6 45 ed          	movzbl -0x13(%ebp),%eax
 80498f6:	89 c2                	mov    %eax,%edx
 80498f8:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80498fb:	88 10                	mov    %dl,(%eax)
 80498fd:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
 8049901:	0f b6 45 ee          	movzbl -0x12(%ebp),%eax
 8049905:	89 c2                	mov    %eax,%edx
 8049907:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804990a:	88 10                	mov    %dl,(%eax)
 804990c:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
 8049910:	eb 07                	jmp    8049919 <urlencode+0x148>
 8049912:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049917:	eb 1c                	jmp    8049935 <urlencode+0x164>
 8049919:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
 804991d:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 8049921:	0f 95 c0             	setne  %al
 8049924:	83 6d e8 01          	subl   $0x1,-0x18(%ebp)
 8049928:	84 c0                	test   %al,%al
 804992a:	0f 85 e6 fe ff ff    	jne    8049816 <urlencode+0x45>
 8049930:	b8 00 00 00 00       	mov    $0x0,%eax
 8049935:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049938:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 804993f:	74 05                	je     8049946 <urlencode+0x175>
 8049941:	e8 3a ef ff ff       	call   8048880 <__stack_chk_fail@plt>
 8049946:	83 c4 34             	add    $0x34,%esp
 8049949:	5f                   	pop    %edi
 804994a:	5d                   	pop    %ebp
 804994b:	c3                   	ret    

0804994c <submitr>:
 804994c:	55                   	push   %ebp
 804994d:	89 e5                	mov    %esp,%ebp
 804994f:	57                   	push   %edi
 8049950:	56                   	push   %esi
 8049951:	53                   	push   %ebx
 8049952:	81 ec 8c a0 00 00    	sub    $0xa08c,%esp
 8049958:	8b 45 08             	mov    0x8(%ebp),%eax
 804995b:	89 85 a4 5f ff ff    	mov    %eax,-0xa05c(%ebp)
 8049961:	8b 45 10             	mov    0x10(%ebp),%eax
 8049964:	89 85 a0 5f ff ff    	mov    %eax,-0xa060(%ebp)
 804996a:	8b 45 14             	mov    0x14(%ebp),%eax
 804996d:	89 85 9c 5f ff ff    	mov    %eax,-0xa064(%ebp)
 8049973:	8b 45 18             	mov    0x18(%ebp),%eax
 8049976:	89 85 98 5f ff ff    	mov    %eax,-0xa068(%ebp)
 804997c:	8b 45 1c             	mov    0x1c(%ebp),%eax
 804997f:	89 85 94 5f ff ff    	mov    %eax,-0xa06c(%ebp)
 8049985:	8b 45 20             	mov    0x20(%ebp),%eax
 8049988:	89 85 90 5f ff ff    	mov    %eax,-0xa070(%ebp)
 804998e:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049994:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049997:	31 c0                	xor    %eax,%eax
 8049999:	c7 85 b4 5f ff ff 00 	movl   $0x0,-0xa04c(%ebp)
 80499a0:	00 00 00 
 80499a3:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80499aa:	00 
 80499ab:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80499b2:	00 
 80499b3:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 80499ba:	e8 31 f0 ff ff       	call   80489f0 <socket@plt>
 80499bf:	89 85 b8 5f ff ff    	mov    %eax,-0xa048(%ebp)
 80499c5:	83 bd b8 5f ff ff 00 	cmpl   $0x0,-0xa048(%ebp)
 80499cc:	79 51                	jns    8049a1f <submitr+0xd3>
 80499ce:	ba 70 ab 04 08       	mov    $0x804ab70,%edx
 80499d3:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 80499d9:	8b 0a                	mov    (%edx),%ecx
 80499db:	89 08                	mov    %ecx,(%eax)
 80499dd:	8b 4a 04             	mov    0x4(%edx),%ecx
 80499e0:	89 48 04             	mov    %ecx,0x4(%eax)
 80499e3:	8b 4a 08             	mov    0x8(%edx),%ecx
 80499e6:	89 48 08             	mov    %ecx,0x8(%eax)
 80499e9:	8b 4a 0c             	mov    0xc(%edx),%ecx
 80499ec:	89 48 0c             	mov    %ecx,0xc(%eax)
 80499ef:	8b 4a 10             	mov    0x10(%edx),%ecx
 80499f2:	89 48 10             	mov    %ecx,0x10(%eax)
 80499f5:	8b 4a 14             	mov    0x14(%edx),%ecx
 80499f8:	89 48 14             	mov    %ecx,0x14(%eax)
 80499fb:	8b 4a 18             	mov    0x18(%edx),%ecx
 80499fe:	89 48 18             	mov    %ecx,0x18(%eax)
 8049a01:	8b 4a 1c             	mov    0x1c(%edx),%ecx
 8049a04:	89 48 1c             	mov    %ecx,0x1c(%eax)
 8049a07:	8b 4a 20             	mov    0x20(%edx),%ecx
 8049a0a:	89 48 20             	mov    %ecx,0x20(%eax)
 8049a0d:	0f b7 52 24          	movzwl 0x24(%edx),%edx
 8049a11:	66 89 50 24          	mov    %dx,0x24(%eax)
 8049a15:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049a1a:	e9 f7 06 00 00       	jmp    804a116 <submitr+0x7ca>
 8049a1f:	8b 85 a4 5f ff ff    	mov    -0xa05c(%ebp),%eax
 8049a25:	89 04 24             	mov    %eax,(%esp)
 8049a28:	e8 e3 ef ff ff       	call   8048a10 <gethostbyname@plt>
 8049a2d:	89 85 bc 5f ff ff    	mov    %eax,-0xa044(%ebp)
 8049a33:	83 bd bc 5f ff ff 00 	cmpl   $0x0,-0xa044(%ebp)
 8049a3a:	75 39                	jne    8049a75 <submitr+0x129>
 8049a3c:	b8 98 ab 04 08       	mov    $0x804ab98,%eax
 8049a41:	8b 95 a4 5f ff ff    	mov    -0xa05c(%ebp),%edx
 8049a47:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049a4b:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049a4f:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 8049a55:	89 04 24             	mov    %eax,(%esp)
 8049a58:	e8 83 ef ff ff       	call   80489e0 <sprintf@plt>
 8049a5d:	8b 85 b8 5f ff ff    	mov    -0xa048(%ebp),%eax
 8049a63:	89 04 24             	mov    %eax,(%esp)
 8049a66:	e8 c5 ef ff ff       	call   8048a30 <close@plt>
 8049a6b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049a70:	e9 a1 06 00 00       	jmp    804a116 <submitr+0x7ca>
 8049a75:	8d 45 d4             	lea    -0x2c(%ebp),%eax
 8049a78:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8049a7e:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8049a85:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8049a8c:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
 8049a93:	66 c7 45 d4 02 00    	movw   $0x2,-0x2c(%ebp)
 8049a99:	8b 85 bc 5f ff ff    	mov    -0xa044(%ebp),%eax
 8049a9f:	8b 40 0c             	mov    0xc(%eax),%eax
 8049aa2:	89 c2                	mov    %eax,%edx
 8049aa4:	8b 85 bc 5f ff ff    	mov    -0xa044(%ebp),%eax
 8049aaa:	8b 40 10             	mov    0x10(%eax),%eax
 8049aad:	8b 00                	mov    (%eax),%eax
 8049aaf:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049ab3:	8d 55 d4             	lea    -0x2c(%ebp),%edx
 8049ab6:	83 c2 04             	add    $0x4,%edx
 8049ab9:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049abd:	89 04 24             	mov    %eax,(%esp)
 8049ac0:	e8 fb ed ff ff       	call   80488c0 <bcopy@plt>
 8049ac5:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049ac8:	0f b7 c0             	movzwl %ax,%eax
 8049acb:	89 04 24             	mov    %eax,(%esp)
 8049ace:	e8 cd ed ff ff       	call   80488a0 <htons@plt>
 8049ad3:	66 89 45 d6          	mov    %ax,-0x2a(%ebp)
 8049ad7:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 8049ade:	00 
 8049adf:	8d 45 d4             	lea    -0x2c(%ebp),%eax
 8049ae2:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049ae6:	8b 85 b8 5f ff ff    	mov    -0xa048(%ebp),%eax
 8049aec:	89 04 24             	mov    %eax,(%esp)
 8049aef:	e8 2c ef ff ff       	call   8048a20 <connect@plt>
 8049af4:	85 c0                	test   %eax,%eax
 8049af6:	79 39                	jns    8049b31 <submitr+0x1e5>
 8049af8:	b8 c4 ab 04 08       	mov    $0x804abc4,%eax
 8049afd:	8b 95 a4 5f ff ff    	mov    -0xa05c(%ebp),%edx
 8049b03:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049b07:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049b0b:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 8049b11:	89 04 24             	mov    %eax,(%esp)
 8049b14:	e8 c7 ee ff ff       	call   80489e0 <sprintf@plt>
 8049b19:	8b 85 b8 5f ff ff    	mov    -0xa048(%ebp),%eax
 8049b1f:	89 04 24             	mov    %eax,(%esp)
 8049b22:	e8 09 ef ff ff       	call   8048a30 <close@plt>
 8049b27:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049b2c:	e9 e5 05 00 00       	jmp    804a116 <submitr+0x7ca>
 8049b31:	8b 85 94 5f ff ff    	mov    -0xa06c(%ebp),%eax
 8049b37:	c7 85 8c 5f ff ff ff 	movl   $0xffffffff,-0xa074(%ebp)
 8049b3e:	ff ff ff 
 8049b41:	89 c2                	mov    %eax,%edx
 8049b43:	b8 00 00 00 00       	mov    $0x0,%eax
 8049b48:	8b 8d 8c 5f ff ff    	mov    -0xa074(%ebp),%ecx
 8049b4e:	89 d7                	mov    %edx,%edi
 8049b50:	f2 ae                	repnz scas %es:(%edi),%al
 8049b52:	89 c8                	mov    %ecx,%eax
 8049b54:	f7 d0                	not    %eax
 8049b56:	83 e8 01             	sub    $0x1,%eax
 8049b59:	89 85 c0 5f ff ff    	mov    %eax,-0xa040(%ebp)
 8049b5f:	8b 85 a0 5f ff ff    	mov    -0xa060(%ebp),%eax
 8049b65:	c7 85 8c 5f ff ff ff 	movl   $0xffffffff,-0xa074(%ebp)
 8049b6c:	ff ff ff 
 8049b6f:	89 c2                	mov    %eax,%edx
 8049b71:	b8 00 00 00 00       	mov    $0x0,%eax
 8049b76:	8b 8d 8c 5f ff ff    	mov    -0xa074(%ebp),%ecx
 8049b7c:	89 d7                	mov    %edx,%edi
 8049b7e:	f2 ae                	repnz scas %es:(%edi),%al
 8049b80:	89 c8                	mov    %ecx,%eax
 8049b82:	f7 d0                	not    %eax
 8049b84:	8d 58 ff             	lea    -0x1(%eax),%ebx
 8049b87:	8b 85 9c 5f ff ff    	mov    -0xa064(%ebp),%eax
 8049b8d:	c7 85 8c 5f ff ff ff 	movl   $0xffffffff,-0xa074(%ebp)
 8049b94:	ff ff ff 
 8049b97:	89 c2                	mov    %eax,%edx
 8049b99:	b8 00 00 00 00       	mov    $0x0,%eax
 8049b9e:	8b 8d 8c 5f ff ff    	mov    -0xa074(%ebp),%ecx
 8049ba4:	89 d7                	mov    %edx,%edi
 8049ba6:	f2 ae                	repnz scas %es:(%edi),%al
 8049ba8:	89 c8                	mov    %ecx,%eax
 8049baa:	f7 d0                	not    %eax
 8049bac:	83 e8 01             	sub    $0x1,%eax
 8049baf:	01 c3                	add    %eax,%ebx
 8049bb1:	8b 85 98 5f ff ff    	mov    -0xa068(%ebp),%eax
 8049bb7:	c7 85 8c 5f ff ff ff 	movl   $0xffffffff,-0xa074(%ebp)
 8049bbe:	ff ff ff 
 8049bc1:	89 c2                	mov    %eax,%edx
 8049bc3:	b8 00 00 00 00       	mov    $0x0,%eax
 8049bc8:	8b 8d 8c 5f ff ff    	mov    -0xa074(%ebp),%ecx
 8049bce:	89 d7                	mov    %edx,%edi
 8049bd0:	f2 ae                	repnz scas %es:(%edi),%al
 8049bd2:	89 c8                	mov    %ecx,%eax
 8049bd4:	f7 d0                	not    %eax
 8049bd6:	83 e8 01             	sub    $0x1,%eax
 8049bd9:	8d 0c 03             	lea    (%ebx,%eax,1),%ecx
 8049bdc:	8b 95 c0 5f ff ff    	mov    -0xa040(%ebp),%edx
 8049be2:	89 d0                	mov    %edx,%eax
 8049be4:	01 c0                	add    %eax,%eax
 8049be6:	01 d0                	add    %edx,%eax
 8049be8:	01 c8                	add    %ecx,%eax
 8049bea:	83 e8 80             	sub    $0xffffff80,%eax
 8049bed:	89 85 c4 5f ff ff    	mov    %eax,-0xa03c(%ebp)
 8049bf3:	81 bd c4 5f ff ff 00 	cmpl   $0x2000,-0xa03c(%ebp)
 8049bfa:	20 00 00 
 8049bfd:	76 75                	jbe    8049c74 <submitr+0x328>
 8049bff:	ba ec ab 04 08       	mov    $0x804abec,%edx
 8049c04:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 8049c0a:	8b 0a                	mov    (%edx),%ecx
 8049c0c:	89 08                	mov    %ecx,(%eax)
 8049c0e:	8b 4a 04             	mov    0x4(%edx),%ecx
 8049c11:	89 48 04             	mov    %ecx,0x4(%eax)
 8049c14:	8b 4a 08             	mov    0x8(%edx),%ecx
 8049c17:	89 48 08             	mov    %ecx,0x8(%eax)
 8049c1a:	8b 4a 0c             	mov    0xc(%edx),%ecx
 8049c1d:	89 48 0c             	mov    %ecx,0xc(%eax)
 8049c20:	8b 4a 10             	mov    0x10(%edx),%ecx
 8049c23:	89 48 10             	mov    %ecx,0x10(%eax)
 8049c26:	8b 4a 14             	mov    0x14(%edx),%ecx
 8049c29:	89 48 14             	mov    %ecx,0x14(%eax)
 8049c2c:	8b 4a 18             	mov    0x18(%edx),%ecx
 8049c2f:	89 48 18             	mov    %ecx,0x18(%eax)
 8049c32:	8b 4a 1c             	mov    0x1c(%edx),%ecx
 8049c35:	89 48 1c             	mov    %ecx,0x1c(%eax)
 8049c38:	8b 4a 20             	mov    0x20(%edx),%ecx
 8049c3b:	89 48 20             	mov    %ecx,0x20(%eax)
 8049c3e:	8b 4a 24             	mov    0x24(%edx),%ecx
 8049c41:	89 48 24             	mov    %ecx,0x24(%eax)
 8049c44:	8b 4a 28             	mov    0x28(%edx),%ecx
 8049c47:	89 48 28             	mov    %ecx,0x28(%eax)
 8049c4a:	8b 4a 2c             	mov    0x2c(%edx),%ecx
 8049c4d:	89 48 2c             	mov    %ecx,0x2c(%eax)
 8049c50:	8b 4a 30             	mov    0x30(%edx),%ecx
 8049c53:	89 48 30             	mov    %ecx,0x30(%eax)
 8049c56:	8b 52 34             	mov    0x34(%edx),%edx
 8049c59:	89 50 34             	mov    %edx,0x34(%eax)
 8049c5c:	8b 85 b8 5f ff ff    	mov    -0xa048(%ebp),%eax
 8049c62:	89 04 24             	mov    %eax,(%esp)
 8049c65:	e8 c6 ed ff ff       	call   8048a30 <close@plt>
 8049c6a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049c6f:	e9 a2 04 00 00       	jmp    804a116 <submitr+0x7ca>
 8049c74:	8d 85 d4 9f ff ff    	lea    -0x602c(%ebp),%eax
 8049c7a:	89 c3                	mov    %eax,%ebx
 8049c7c:	b8 00 00 00 00       	mov    $0x0,%eax
 8049c81:	ba 00 08 00 00       	mov    $0x800,%edx
 8049c86:	89 df                	mov    %ebx,%edi
 8049c88:	89 d1                	mov    %edx,%ecx
 8049c8a:	f3 ab                	rep stos %eax,%es:(%edi)
 8049c8c:	8d 85 d4 9f ff ff    	lea    -0x602c(%ebp),%eax
 8049c92:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049c96:	8b 85 94 5f ff ff    	mov    -0xa06c(%ebp),%eax
 8049c9c:	89 04 24             	mov    %eax,(%esp)
 8049c9f:	e8 2d fb ff ff       	call   80497d1 <urlencode>
 8049ca4:	85 c0                	test   %eax,%eax
 8049ca6:	0f 89 8d 00 00 00    	jns    8049d39 <submitr+0x3ed>
 8049cac:	ba 24 ac 04 08       	mov    $0x804ac24,%edx
 8049cb1:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 8049cb7:	bb 43 00 00 00       	mov    $0x43,%ebx
 8049cbc:	89 c1                	mov    %eax,%ecx
 8049cbe:	83 e1 01             	and    $0x1,%ecx
 8049cc1:	85 c9                	test   %ecx,%ecx
 8049cc3:	74 0e                	je     8049cd3 <submitr+0x387>
 8049cc5:	0f b6 0a             	movzbl (%edx),%ecx
 8049cc8:	88 08                	mov    %cl,(%eax)
 8049cca:	83 c0 01             	add    $0x1,%eax
 8049ccd:	83 c2 01             	add    $0x1,%edx
 8049cd0:	83 eb 01             	sub    $0x1,%ebx
 8049cd3:	89 c1                	mov    %eax,%ecx
 8049cd5:	83 e1 02             	and    $0x2,%ecx
 8049cd8:	85 c9                	test   %ecx,%ecx
 8049cda:	74 0f                	je     8049ceb <submitr+0x39f>
 8049cdc:	0f b7 0a             	movzwl (%edx),%ecx
 8049cdf:	66 89 08             	mov    %cx,(%eax)
 8049ce2:	83 c0 02             	add    $0x2,%eax
 8049ce5:	83 c2 02             	add    $0x2,%edx
 8049ce8:	83 eb 02             	sub    $0x2,%ebx
 8049ceb:	89 d9                	mov    %ebx,%ecx
 8049ced:	c1 e9 02             	shr    $0x2,%ecx
 8049cf0:	89 c7                	mov    %eax,%edi
 8049cf2:	89 d6                	mov    %edx,%esi
 8049cf4:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8049cf6:	89 f2                	mov    %esi,%edx
 8049cf8:	89 f8                	mov    %edi,%eax
 8049cfa:	b9 00 00 00 00       	mov    $0x0,%ecx
 8049cff:	89 de                	mov    %ebx,%esi
 8049d01:	83 e6 02             	and    $0x2,%esi
 8049d04:	85 f6                	test   %esi,%esi
 8049d06:	74 0b                	je     8049d13 <submitr+0x3c7>
 8049d08:	0f b7 34 0a          	movzwl (%edx,%ecx,1),%esi
 8049d0c:	66 89 34 08          	mov    %si,(%eax,%ecx,1)
 8049d10:	83 c1 02             	add    $0x2,%ecx
 8049d13:	83 e3 01             	and    $0x1,%ebx
 8049d16:	85 db                	test   %ebx,%ebx
 8049d18:	74 07                	je     8049d21 <submitr+0x3d5>
 8049d1a:	0f b6 14 0a          	movzbl (%edx,%ecx,1),%edx
 8049d1e:	88 14 08             	mov    %dl,(%eax,%ecx,1)
 8049d21:	8b 85 b8 5f ff ff    	mov    -0xa048(%ebp),%eax
 8049d27:	89 04 24             	mov    %eax,(%esp)
 8049d2a:	e8 01 ed ff ff       	call   8048a30 <close@plt>
 8049d2f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049d34:	e9 dd 03 00 00       	jmp    804a116 <submitr+0x7ca>
 8049d39:	b8 68 ac 04 08       	mov    $0x804ac68,%eax
 8049d3e:	8d 95 d4 9f ff ff    	lea    -0x602c(%ebp),%edx
 8049d44:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049d48:	8b 95 98 5f ff ff    	mov    -0xa068(%ebp),%edx
 8049d4e:	89 54 24 10          	mov    %edx,0x10(%esp)
 8049d52:	8b 95 9c 5f ff ff    	mov    -0xa064(%ebp),%edx
 8049d58:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049d5c:	8b 95 a0 5f ff ff    	mov    -0xa060(%ebp),%edx
 8049d62:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049d66:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049d6a:	8d 85 d4 7f ff ff    	lea    -0x802c(%ebp),%eax
 8049d70:	89 04 24             	mov    %eax,(%esp)
 8049d73:	e8 68 ec ff ff       	call   80489e0 <sprintf@plt>
 8049d78:	8d 85 d4 7f ff ff    	lea    -0x802c(%ebp),%eax
 8049d7e:	c7 85 8c 5f ff ff ff 	movl   $0xffffffff,-0xa074(%ebp)
 8049d85:	ff ff ff 
 8049d88:	89 c2                	mov    %eax,%edx
 8049d8a:	b8 00 00 00 00       	mov    $0x0,%eax
 8049d8f:	8b 8d 8c 5f ff ff    	mov    -0xa074(%ebp),%ecx
 8049d95:	89 d7                	mov    %edx,%edi
 8049d97:	f2 ae                	repnz scas %es:(%edi),%al
 8049d99:	89 c8                	mov    %ecx,%eax
 8049d9b:	f7 d0                	not    %eax
 8049d9d:	83 e8 01             	sub    $0x1,%eax
 8049da0:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049da4:	8d 85 d4 7f ff ff    	lea    -0x802c(%ebp),%eax
 8049daa:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049dae:	8b 85 b8 5f ff ff    	mov    -0xa048(%ebp),%eax
 8049db4:	89 04 24             	mov    %eax,(%esp)
 8049db7:	e8 ac f9 ff ff       	call   8049768 <rio_writen>
 8049dbc:	85 c0                	test   %eax,%eax
 8049dbe:	79 63                	jns    8049e23 <submitr+0x4d7>
 8049dc0:	ba b4 ac 04 08       	mov    $0x804acb4,%edx
 8049dc5:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 8049dcb:	8b 0a                	mov    (%edx),%ecx
 8049dcd:	89 08                	mov    %ecx,(%eax)
 8049dcf:	8b 4a 04             	mov    0x4(%edx),%ecx
 8049dd2:	89 48 04             	mov    %ecx,0x4(%eax)
 8049dd5:	8b 4a 08             	mov    0x8(%edx),%ecx
 8049dd8:	89 48 08             	mov    %ecx,0x8(%eax)
 8049ddb:	8b 4a 0c             	mov    0xc(%edx),%ecx
 8049dde:	89 48 0c             	mov    %ecx,0xc(%eax)
 8049de1:	8b 4a 10             	mov    0x10(%edx),%ecx
 8049de4:	89 48 10             	mov    %ecx,0x10(%eax)
 8049de7:	8b 4a 14             	mov    0x14(%edx),%ecx
 8049dea:	89 48 14             	mov    %ecx,0x14(%eax)
 8049ded:	8b 4a 18             	mov    0x18(%edx),%ecx
 8049df0:	89 48 18             	mov    %ecx,0x18(%eax)
 8049df3:	8b 4a 1c             	mov    0x1c(%edx),%ecx
 8049df6:	89 48 1c             	mov    %ecx,0x1c(%eax)
 8049df9:	8b 4a 20             	mov    0x20(%edx),%ecx
 8049dfc:	89 48 20             	mov    %ecx,0x20(%eax)
 8049dff:	8b 4a 24             	mov    0x24(%edx),%ecx
 8049e02:	89 48 24             	mov    %ecx,0x24(%eax)
 8049e05:	8b 52 28             	mov    0x28(%edx),%edx
 8049e08:	89 50 28             	mov    %edx,0x28(%eax)
 8049e0b:	8b 85 b8 5f ff ff    	mov    -0xa048(%ebp),%eax
 8049e11:	89 04 24             	mov    %eax,(%esp)
 8049e14:	e8 17 ec ff ff       	call   8048a30 <close@plt>
 8049e19:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049e1e:	e9 f3 02 00 00       	jmp    804a116 <submitr+0x7ca>
 8049e23:	8b 85 b8 5f ff ff    	mov    -0xa048(%ebp),%eax
 8049e29:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049e2d:	8d 85 c8 5f ff ff    	lea    -0xa038(%ebp),%eax
 8049e33:	89 04 24             	mov    %eax,(%esp)
 8049e36:	e8 b4 f7 ff ff       	call   80495ef <rio_readinitb>
 8049e3b:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 8049e42:	00 
 8049e43:	8d 85 d4 7f ff ff    	lea    -0x802c(%ebp),%eax
 8049e49:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049e4d:	8d 85 c8 5f ff ff    	lea    -0xa038(%ebp),%eax
 8049e53:	89 04 24             	mov    %eax,(%esp)
 8049e56:	e8 8a f8 ff ff       	call   80496e5 <rio_readlineb>
 8049e5b:	85 c0                	test   %eax,%eax
 8049e5d:	7f 77                	jg     8049ed6 <submitr+0x58a>
 8049e5f:	ba e0 ac 04 08       	mov    $0x804ace0,%edx
 8049e64:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 8049e6a:	8b 0a                	mov    (%edx),%ecx
 8049e6c:	89 08                	mov    %ecx,(%eax)
 8049e6e:	8b 4a 04             	mov    0x4(%edx),%ecx
 8049e71:	89 48 04             	mov    %ecx,0x4(%eax)
 8049e74:	8b 4a 08             	mov    0x8(%edx),%ecx
 8049e77:	89 48 08             	mov    %ecx,0x8(%eax)
 8049e7a:	8b 4a 0c             	mov    0xc(%edx),%ecx
 8049e7d:	89 48 0c             	mov    %ecx,0xc(%eax)
 8049e80:	8b 4a 10             	mov    0x10(%edx),%ecx
 8049e83:	89 48 10             	mov    %ecx,0x10(%eax)
 8049e86:	8b 4a 14             	mov    0x14(%edx),%ecx
 8049e89:	89 48 14             	mov    %ecx,0x14(%eax)
 8049e8c:	8b 4a 18             	mov    0x18(%edx),%ecx
 8049e8f:	89 48 18             	mov    %ecx,0x18(%eax)
 8049e92:	8b 4a 1c             	mov    0x1c(%edx),%ecx
 8049e95:	89 48 1c             	mov    %ecx,0x1c(%eax)
 8049e98:	8b 4a 20             	mov    0x20(%edx),%ecx
 8049e9b:	89 48 20             	mov    %ecx,0x20(%eax)
 8049e9e:	8b 4a 24             	mov    0x24(%edx),%ecx
 8049ea1:	89 48 24             	mov    %ecx,0x24(%eax)
 8049ea4:	8b 4a 28             	mov    0x28(%edx),%ecx
 8049ea7:	89 48 28             	mov    %ecx,0x28(%eax)
 8049eaa:	8b 4a 2c             	mov    0x2c(%edx),%ecx
 8049ead:	89 48 2c             	mov    %ecx,0x2c(%eax)
 8049eb0:	8b 4a 30             	mov    0x30(%edx),%ecx
 8049eb3:	89 48 30             	mov    %ecx,0x30(%eax)
 8049eb6:	0f b7 52 34          	movzwl 0x34(%edx),%edx
 8049eba:	66 89 50 34          	mov    %dx,0x34(%eax)
 8049ebe:	8b 85 b8 5f ff ff    	mov    -0xa048(%ebp),%eax
 8049ec4:	89 04 24             	mov    %eax,(%esp)
 8049ec7:	e8 64 eb ff ff       	call   8048a30 <close@plt>
 8049ecc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049ed1:	e9 40 02 00 00       	jmp    804a116 <submitr+0x7ca>
 8049ed6:	ba 16 ad 04 08       	mov    $0x804ad16,%edx
 8049edb:	8d 85 d4 7f ff ff    	lea    -0x802c(%ebp),%eax
 8049ee1:	8d 8d d4 df ff ff    	lea    -0x202c(%ebp),%ecx
 8049ee7:	89 4c 24 10          	mov    %ecx,0x10(%esp)
 8049eeb:	8d 8d b4 5f ff ff    	lea    -0xa04c(%ebp),%ecx
 8049ef1:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 8049ef5:	8d 8d d4 bf ff ff    	lea    -0x402c(%ebp),%ecx
 8049efb:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 8049eff:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049f03:	89 04 24             	mov    %eax,(%esp)
 8049f06:	e8 85 ea ff ff       	call   8048990 <__isoc99_sscanf@plt>
 8049f0b:	8b 85 b4 5f ff ff    	mov    -0xa04c(%ebp),%eax
 8049f11:	3d c8 00 00 00       	cmp    $0xc8,%eax
 8049f16:	0f 84 d7 00 00 00    	je     8049ff3 <submitr+0x6a7>
 8049f1c:	8b 95 b4 5f ff ff    	mov    -0xa04c(%ebp),%edx
 8049f22:	b8 28 ad 04 08       	mov    $0x804ad28,%eax
 8049f27:	8d 8d d4 df ff ff    	lea    -0x202c(%ebp),%ecx
 8049f2d:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 8049f31:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049f35:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049f39:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 8049f3f:	89 04 24             	mov    %eax,(%esp)
 8049f42:	e8 99 ea ff ff       	call   80489e0 <sprintf@plt>
 8049f47:	8b 85 b8 5f ff ff    	mov    -0xa048(%ebp),%eax
 8049f4d:	89 04 24             	mov    %eax,(%esp)
 8049f50:	e8 db ea ff ff       	call   8048a30 <close@plt>
 8049f55:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049f5a:	e9 b7 01 00 00       	jmp    804a116 <submitr+0x7ca>
 8049f5f:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 8049f66:	00 
 8049f67:	8d 85 d4 7f ff ff    	lea    -0x802c(%ebp),%eax
 8049f6d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049f71:	8d 85 c8 5f ff ff    	lea    -0xa038(%ebp),%eax
 8049f77:	89 04 24             	mov    %eax,(%esp)
 8049f7a:	e8 66 f7 ff ff       	call   80496e5 <rio_readlineb>
 8049f7f:	85 c0                	test   %eax,%eax
 8049f81:	7f 71                	jg     8049ff4 <submitr+0x6a8>
 8049f83:	ba 58 ad 04 08       	mov    $0x804ad58,%edx
 8049f88:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 8049f8e:	8b 0a                	mov    (%edx),%ecx
 8049f90:	89 08                	mov    %ecx,(%eax)
 8049f92:	8b 4a 04             	mov    0x4(%edx),%ecx
 8049f95:	89 48 04             	mov    %ecx,0x4(%eax)
 8049f98:	8b 4a 08             	mov    0x8(%edx),%ecx
 8049f9b:	89 48 08             	mov    %ecx,0x8(%eax)
 8049f9e:	8b 4a 0c             	mov    0xc(%edx),%ecx
 8049fa1:	89 48 0c             	mov    %ecx,0xc(%eax)
 8049fa4:	8b 4a 10             	mov    0x10(%edx),%ecx
 8049fa7:	89 48 10             	mov    %ecx,0x10(%eax)
 8049faa:	8b 4a 14             	mov    0x14(%edx),%ecx
 8049fad:	89 48 14             	mov    %ecx,0x14(%eax)
 8049fb0:	8b 4a 18             	mov    0x18(%edx),%ecx
 8049fb3:	89 48 18             	mov    %ecx,0x18(%eax)
 8049fb6:	8b 4a 1c             	mov    0x1c(%edx),%ecx
 8049fb9:	89 48 1c             	mov    %ecx,0x1c(%eax)
 8049fbc:	8b 4a 20             	mov    0x20(%edx),%ecx
 8049fbf:	89 48 20             	mov    %ecx,0x20(%eax)
 8049fc2:	8b 4a 24             	mov    0x24(%edx),%ecx
 8049fc5:	89 48 24             	mov    %ecx,0x24(%eax)
 8049fc8:	8b 4a 28             	mov    0x28(%edx),%ecx
 8049fcb:	89 48 28             	mov    %ecx,0x28(%eax)
 8049fce:	8b 4a 2c             	mov    0x2c(%edx),%ecx
 8049fd1:	89 48 2c             	mov    %ecx,0x2c(%eax)
 8049fd4:	0f b6 52 30          	movzbl 0x30(%edx),%edx
 8049fd8:	88 50 30             	mov    %dl,0x30(%eax)
 8049fdb:	8b 85 b8 5f ff ff    	mov    -0xa048(%ebp),%eax
 8049fe1:	89 04 24             	mov    %eax,(%esp)
 8049fe4:	e8 47 ea ff ff       	call   8048a30 <close@plt>
 8049fe9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049fee:	e9 23 01 00 00       	jmp    804a116 <submitr+0x7ca>
 8049ff3:	90                   	nop
 8049ff4:	8d 85 d4 7f ff ff    	lea    -0x802c(%ebp),%eax
 8049ffa:	89 c2                	mov    %eax,%edx
 8049ffc:	b8 89 ad 04 08       	mov    $0x804ad89,%eax
 804a001:	b9 03 00 00 00       	mov    $0x3,%ecx
 804a006:	89 d6                	mov    %edx,%esi
 804a008:	89 c7                	mov    %eax,%edi
 804a00a:	f3 a6                	repz cmpsb %es:(%edi),%ds:(%esi)
 804a00c:	0f 97 c2             	seta   %dl
 804a00f:	0f 92 c0             	setb   %al
 804a012:	89 d1                	mov    %edx,%ecx
 804a014:	28 c1                	sub    %al,%cl
 804a016:	89 c8                	mov    %ecx,%eax
 804a018:	0f be c0             	movsbl %al,%eax
 804a01b:	85 c0                	test   %eax,%eax
 804a01d:	0f 85 3c ff ff ff    	jne    8049f5f <submitr+0x613>
 804a023:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 804a02a:	00 
 804a02b:	8d 85 d4 7f ff ff    	lea    -0x802c(%ebp),%eax
 804a031:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a035:	8d 85 c8 5f ff ff    	lea    -0xa038(%ebp),%eax
 804a03b:	89 04 24             	mov    %eax,(%esp)
 804a03e:	e8 a2 f6 ff ff       	call   80496e5 <rio_readlineb>
 804a043:	85 c0                	test   %eax,%eax
 804a045:	7f 72                	jg     804a0b9 <submitr+0x76d>
 804a047:	ba 8c ad 04 08       	mov    $0x804ad8c,%edx
 804a04c:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 804a052:	8b 0a                	mov    (%edx),%ecx
 804a054:	89 08                	mov    %ecx,(%eax)
 804a056:	8b 4a 04             	mov    0x4(%edx),%ecx
 804a059:	89 48 04             	mov    %ecx,0x4(%eax)
 804a05c:	8b 4a 08             	mov    0x8(%edx),%ecx
 804a05f:	89 48 08             	mov    %ecx,0x8(%eax)
 804a062:	8b 4a 0c             	mov    0xc(%edx),%ecx
 804a065:	89 48 0c             	mov    %ecx,0xc(%eax)
 804a068:	8b 4a 10             	mov    0x10(%edx),%ecx
 804a06b:	89 48 10             	mov    %ecx,0x10(%eax)
 804a06e:	8b 4a 14             	mov    0x14(%edx),%ecx
 804a071:	89 48 14             	mov    %ecx,0x14(%eax)
 804a074:	8b 4a 18             	mov    0x18(%edx),%ecx
 804a077:	89 48 18             	mov    %ecx,0x18(%eax)
 804a07a:	8b 4a 1c             	mov    0x1c(%edx),%ecx
 804a07d:	89 48 1c             	mov    %ecx,0x1c(%eax)
 804a080:	8b 4a 20             	mov    0x20(%edx),%ecx
 804a083:	89 48 20             	mov    %ecx,0x20(%eax)
 804a086:	8b 4a 24             	mov    0x24(%edx),%ecx
 804a089:	89 48 24             	mov    %ecx,0x24(%eax)
 804a08c:	8b 4a 28             	mov    0x28(%edx),%ecx
 804a08f:	89 48 28             	mov    %ecx,0x28(%eax)
 804a092:	8b 4a 2c             	mov    0x2c(%edx),%ecx
 804a095:	89 48 2c             	mov    %ecx,0x2c(%eax)
 804a098:	8b 4a 30             	mov    0x30(%edx),%ecx
 804a09b:	89 48 30             	mov    %ecx,0x30(%eax)
 804a09e:	8b 52 34             	mov    0x34(%edx),%edx
 804a0a1:	89 50 34             	mov    %edx,0x34(%eax)
 804a0a4:	8b 85 b8 5f ff ff    	mov    -0xa048(%ebp),%eax
 804a0aa:	89 04 24             	mov    %eax,(%esp)
 804a0ad:	e8 7e e9 ff ff       	call   8048a30 <close@plt>
 804a0b2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a0b7:	eb 5d                	jmp    804a116 <submitr+0x7ca>
 804a0b9:	8d 85 d4 7f ff ff    	lea    -0x802c(%ebp),%eax
 804a0bf:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a0c3:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 804a0c9:	89 04 24             	mov    %eax,(%esp)
 804a0cc:	e8 ff e7 ff ff       	call   80488d0 <strcpy@plt>
 804a0d1:	8b 85 b8 5f ff ff    	mov    -0xa048(%ebp),%eax
 804a0d7:	89 04 24             	mov    %eax,(%esp)
 804a0da:	e8 51 e9 ff ff       	call   8048a30 <close@plt>
 804a0df:	8b 85 90 5f ff ff    	mov    -0xa070(%ebp),%eax
 804a0e5:	89 c2                	mov    %eax,%edx
 804a0e7:	b8 c4 ad 04 08       	mov    $0x804adc4,%eax
 804a0ec:	b9 03 00 00 00       	mov    $0x3,%ecx
 804a0f1:	89 d6                	mov    %edx,%esi
 804a0f3:	89 c7                	mov    %eax,%edi
 804a0f5:	f3 a6                	repz cmpsb %es:(%edi),%ds:(%esi)
 804a0f7:	0f 97 c2             	seta   %dl
 804a0fa:	0f 92 c0             	setb   %al
 804a0fd:	89 d1                	mov    %edx,%ecx
 804a0ff:	28 c1                	sub    %al,%cl
 804a101:	89 c8                	mov    %ecx,%eax
 804a103:	0f be c0             	movsbl %al,%eax
 804a106:	85 c0                	test   %eax,%eax
 804a108:	75 07                	jne    804a111 <submitr+0x7c5>
 804a10a:	b8 00 00 00 00       	mov    $0x0,%eax
 804a10f:	eb 05                	jmp    804a116 <submitr+0x7ca>
 804a111:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a116:	8b 75 e4             	mov    -0x1c(%ebp),%esi
 804a119:	65 33 35 14 00 00 00 	xor    %gs:0x14,%esi
 804a120:	74 05                	je     804a127 <submitr+0x7db>
 804a122:	e8 59 e7 ff ff       	call   8048880 <__stack_chk_fail@plt>
 804a127:	81 c4 8c a0 00 00    	add    $0xa08c,%esp
 804a12d:	5b                   	pop    %ebx
 804a12e:	5e                   	pop    %esi
 804a12f:	5f                   	pop    %edi
 804a130:	5d                   	pop    %ebp
 804a131:	c3                   	ret    

0804a132 <init_timeout>:
 804a132:	55                   	push   %ebp
 804a133:	89 e5                	mov    %esp,%ebp
 804a135:	83 ec 18             	sub    $0x18,%esp
 804a138:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804a13c:	74 2e                	je     804a16c <init_timeout+0x3a>
 804a13e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804a142:	79 07                	jns    804a14b <init_timeout+0x19>
 804a144:	c7 45 08 02 00 00 00 	movl   $0x2,0x8(%ebp)
 804a14b:	c7 44 24 04 c8 95 04 	movl   $0x80495c8,0x4(%esp)
 804a152:	08 
 804a153:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
 804a15a:	e8 01 e7 ff ff       	call   8048860 <signal@plt>
 804a15f:	8b 45 08             	mov    0x8(%ebp),%eax
 804a162:	89 04 24             	mov    %eax,(%esp)
 804a165:	e8 06 e7 ff ff       	call   8048870 <alarm@plt>
 804a16a:	eb 01                	jmp    804a16d <init_timeout+0x3b>
 804a16c:	90                   	nop
 804a16d:	c9                   	leave  
 804a16e:	c3                   	ret    

0804a16f <init_driver>:
 804a16f:	55                   	push   %ebp
 804a170:	89 e5                	mov    %esp,%ebp
 804a172:	83 ec 58             	sub    $0x58,%esp
 804a175:	8b 45 08             	mov    0x8(%ebp),%eax
 804a178:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804a17b:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804a181:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a184:	31 c0                	xor    %eax,%eax
 804a186:	c7 45 d4 c7 ad 04 08 	movl   $0x804adc7,-0x2c(%ebp)
 804a18d:	c7 45 d8 26 47 00 00 	movl   $0x4726,-0x28(%ebp)
 804a194:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804a19b:	00 
 804a19c:	c7 04 24 0d 00 00 00 	movl   $0xd,(%esp)
 804a1a3:	e8 b8 e6 ff ff       	call   8048860 <signal@plt>
 804a1a8:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804a1af:	00 
 804a1b0:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 804a1b7:	e8 a4 e6 ff ff       	call   8048860 <signal@plt>
 804a1bc:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804a1c3:	00 
 804a1c4:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 804a1cb:	e8 90 e6 ff ff       	call   8048860 <signal@plt>
 804a1d0:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804a1d7:	00 
 804a1d8:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804a1df:	00 
 804a1e0:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 804a1e7:	e8 04 e8 ff ff       	call   80489f0 <socket@plt>
 804a1ec:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804a1ef:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
 804a1f3:	79 4e                	jns    804a243 <init_driver+0xd4>
 804a1f5:	ba 70 ab 04 08       	mov    $0x804ab70,%edx
 804a1fa:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804a1fd:	8b 0a                	mov    (%edx),%ecx
 804a1ff:	89 08                	mov    %ecx,(%eax)
 804a201:	8b 4a 04             	mov    0x4(%edx),%ecx
 804a204:	89 48 04             	mov    %ecx,0x4(%eax)
 804a207:	8b 4a 08             	mov    0x8(%edx),%ecx
 804a20a:	89 48 08             	mov    %ecx,0x8(%eax)
 804a20d:	8b 4a 0c             	mov    0xc(%edx),%ecx
 804a210:	89 48 0c             	mov    %ecx,0xc(%eax)
 804a213:	8b 4a 10             	mov    0x10(%edx),%ecx
 804a216:	89 48 10             	mov    %ecx,0x10(%eax)
 804a219:	8b 4a 14             	mov    0x14(%edx),%ecx
 804a21c:	89 48 14             	mov    %ecx,0x14(%eax)
 804a21f:	8b 4a 18             	mov    0x18(%edx),%ecx
 804a222:	89 48 18             	mov    %ecx,0x18(%eax)
 804a225:	8b 4a 1c             	mov    0x1c(%edx),%ecx
 804a228:	89 48 1c             	mov    %ecx,0x1c(%eax)
 804a22b:	8b 4a 20             	mov    0x20(%edx),%ecx
 804a22e:	89 48 20             	mov    %ecx,0x20(%eax)
 804a231:	0f b7 52 24          	movzwl 0x24(%edx),%edx
 804a235:	66 89 50 24          	mov    %dx,0x24(%eax)
 804a239:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a23e:	e9 17 01 00 00       	jmp    804a35a <init_driver+0x1eb>
 804a243:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804a246:	89 04 24             	mov    %eax,(%esp)
 804a249:	e8 c2 e7 ff ff       	call   8048a10 <gethostbyname@plt>
 804a24e:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804a251:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 804a255:	75 30                	jne    804a287 <init_driver+0x118>
 804a257:	b8 98 ab 04 08       	mov    $0x804ab98,%eax
 804a25c:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 804a25f:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a263:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a267:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804a26a:	89 04 24             	mov    %eax,(%esp)
 804a26d:	e8 6e e7 ff ff       	call   80489e0 <sprintf@plt>
 804a272:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804a275:	89 04 24             	mov    %eax,(%esp)
 804a278:	e8 b3 e7 ff ff       	call   8048a30 <close@plt>
 804a27d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a282:	e9 d3 00 00 00       	jmp    804a35a <init_driver+0x1eb>
 804a287:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804a28a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804a290:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804a297:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 804a29e:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
 804a2a5:	66 c7 45 e4 02 00    	movw   $0x2,-0x1c(%ebp)
 804a2ab:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a2ae:	8b 40 0c             	mov    0xc(%eax),%eax
 804a2b1:	89 c2                	mov    %eax,%edx
 804a2b3:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a2b6:	8b 40 10             	mov    0x10(%eax),%eax
 804a2b9:	8b 00                	mov    (%eax),%eax
 804a2bb:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a2bf:	8d 55 e4             	lea    -0x1c(%ebp),%edx
 804a2c2:	83 c2 04             	add    $0x4,%edx
 804a2c5:	89 54 24 04          	mov    %edx,0x4(%esp)
 804a2c9:	89 04 24             	mov    %eax,(%esp)
 804a2cc:	e8 ef e5 ff ff       	call   80488c0 <bcopy@plt>
 804a2d1:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804a2d4:	0f b7 c0             	movzwl %ax,%eax
 804a2d7:	89 04 24             	mov    %eax,(%esp)
 804a2da:	e8 c1 e5 ff ff       	call   80488a0 <htons@plt>
 804a2df:	66 89 45 e6          	mov    %ax,-0x1a(%ebp)
 804a2e3:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 804a2ea:	00 
 804a2eb:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804a2ee:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a2f2:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804a2f5:	89 04 24             	mov    %eax,(%esp)
 804a2f8:	e8 23 e7 ff ff       	call   8048a20 <connect@plt>
 804a2fd:	85 c0                	test   %eax,%eax
 804a2ff:	79 34                	jns    804a335 <init_driver+0x1c6>
 804a301:	b8 e0 ad 04 08       	mov    $0x804ade0,%eax
 804a306:	8b 55 d8             	mov    -0x28(%ebp),%edx
 804a309:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804a30d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 804a310:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a314:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a318:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804a31b:	89 04 24             	mov    %eax,(%esp)
 804a31e:	e8 bd e6 ff ff       	call   80489e0 <sprintf@plt>
 804a323:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804a326:	89 04 24             	mov    %eax,(%esp)
 804a329:	e8 02 e7 ff ff       	call   8048a30 <close@plt>
 804a32e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a333:	eb 25                	jmp    804a35a <init_driver+0x1eb>
 804a335:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804a338:	89 04 24             	mov    %eax,(%esp)
 804a33b:	e8 f0 e6 ff ff       	call   8048a30 <close@plt>
 804a340:	ba c4 ad 04 08       	mov    $0x804adc4,%edx
 804a345:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804a348:	0f b7 0a             	movzwl (%edx),%ecx
 804a34b:	66 89 08             	mov    %cx,(%eax)
 804a34e:	0f b6 52 02          	movzbl 0x2(%edx),%edx
 804a352:	88 50 02             	mov    %dl,0x2(%eax)
 804a355:	b8 00 00 00 00       	mov    $0x0,%eax
 804a35a:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804a35d:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 804a364:	74 05                	je     804a36b <init_driver+0x1fc>
 804a366:	e8 15 e5 ff ff       	call   8048880 <__stack_chk_fail@plt>
 804a36b:	c9                   	leave  
 804a36c:	c3                   	ret    

0804a36d <driver_post>:
 804a36d:	55                   	push   %ebp
 804a36e:	89 e5                	mov    %esp,%ebp
 804a370:	83 ec 38             	sub    $0x38,%esp
 804a373:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 804a377:	74 30                	je     804a3a9 <driver_post+0x3c>
 804a379:	b8 09 ae 04 08       	mov    $0x804ae09,%eax
 804a37e:	8b 55 0c             	mov    0xc(%ebp),%edx
 804a381:	89 54 24 04          	mov    %edx,0x4(%esp)
 804a385:	89 04 24             	mov    %eax,(%esp)
 804a388:	e8 a3 e4 ff ff       	call   8048830 <printf@plt>
 804a38d:	ba c4 ad 04 08       	mov    $0x804adc4,%edx
 804a392:	8b 45 14             	mov    0x14(%ebp),%eax
 804a395:	0f b7 0a             	movzwl (%edx),%ecx
 804a398:	66 89 08             	mov    %cx,(%eax)
 804a39b:	0f b6 52 02          	movzbl 0x2(%edx),%edx
 804a39f:	88 50 02             	mov    %dl,0x2(%eax)
 804a3a2:	b8 00 00 00 00       	mov    $0x0,%eax
 804a3a7:	eb 6b                	jmp    804a414 <driver_post+0xa7>
 804a3a9:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804a3ad:	74 4b                	je     804a3fa <driver_post+0x8d>
 804a3af:	8b 45 08             	mov    0x8(%ebp),%eax
 804a3b2:	0f b6 00             	movzbl (%eax),%eax
 804a3b5:	84 c0                	test   %al,%al
 804a3b7:	74 41                	je     804a3fa <driver_post+0x8d>
 804a3b9:	8b 45 14             	mov    0x14(%ebp),%eax
 804a3bc:	89 44 24 18          	mov    %eax,0x18(%esp)
 804a3c0:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a3c3:	89 44 24 14          	mov    %eax,0x14(%esp)
 804a3c7:	c7 44 24 10 20 ae 04 	movl   $0x804ae20,0x10(%esp)
 804a3ce:	08 
 804a3cf:	8b 45 08             	mov    0x8(%ebp),%eax
 804a3d2:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804a3d6:	c7 44 24 08 27 ae 04 	movl   $0x804ae27,0x8(%esp)
 804a3dd:	08 
 804a3de:	c7 44 24 04 26 47 00 	movl   $0x4726,0x4(%esp)
 804a3e5:	00 
 804a3e6:	c7 04 24 c7 ad 04 08 	movl   $0x804adc7,(%esp)
 804a3ed:	e8 5a f5 ff ff       	call   804994c <submitr>
 804a3f2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a3f5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a3f8:	eb 1a                	jmp    804a414 <driver_post+0xa7>
 804a3fa:	ba c4 ad 04 08       	mov    $0x804adc4,%edx
 804a3ff:	8b 45 14             	mov    0x14(%ebp),%eax
 804a402:	0f b7 0a             	movzwl (%edx),%ecx
 804a405:	66 89 08             	mov    %cx,(%eax)
 804a408:	0f b6 52 02          	movzbl 0x2(%edx),%edx
 804a40c:	88 50 02             	mov    %dl,0x2(%eax)
 804a40f:	b8 00 00 00 00       	mov    $0x0,%eax
 804a414:	c9                   	leave  
 804a415:	c3                   	ret    
 804a416:	90                   	nop
 804a417:	90                   	nop

0804a418 <hash>:
 804a418:	55                   	push   %ebp
 804a419:	89 e5                	mov    %esp,%ebp
 804a41b:	83 ec 10             	sub    $0x10,%esp
 804a41e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804a425:	eb 18                	jmp    804a43f <hash+0x27>
 804a427:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804a42a:	6b d0 67             	imul   $0x67,%eax,%edx
 804a42d:	8b 45 08             	mov    0x8(%ebp),%eax
 804a430:	0f b6 00             	movzbl (%eax),%eax
 804a433:	0f be c0             	movsbl %al,%eax
 804a436:	01 d0                	add    %edx,%eax
 804a438:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804a43b:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 804a43f:	8b 45 08             	mov    0x8(%ebp),%eax
 804a442:	0f b6 00             	movzbl (%eax),%eax
 804a445:	84 c0                	test   %al,%al
 804a447:	75 de                	jne    804a427 <hash+0xf>
 804a449:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804a44c:	c9                   	leave  
 804a44d:	c3                   	ret    

0804a44e <check>:
 804a44e:	55                   	push   %ebp
 804a44f:	89 e5                	mov    %esp,%ebp
 804a451:	53                   	push   %ebx
 804a452:	83 ec 10             	sub    $0x10,%esp
 804a455:	8b 45 08             	mov    0x8(%ebp),%eax
 804a458:	c1 e8 1c             	shr    $0x1c,%eax
 804a45b:	85 c0                	test   %eax,%eax
 804a45d:	75 07                	jne    804a466 <check+0x18>
 804a45f:	b8 00 00 00 00       	mov    $0x0,%eax
 804a464:	eb 37                	jmp    804a49d <check+0x4f>
 804a466:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 804a46d:	eb 23                	jmp    804a492 <check+0x44>
 804a46f:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804a472:	8b 55 08             	mov    0x8(%ebp),%edx
 804a475:	89 d3                	mov    %edx,%ebx
 804a477:	89 c1                	mov    %eax,%ecx
 804a479:	d3 eb                	shr    %cl,%ebx
 804a47b:	89 d8                	mov    %ebx,%eax
 804a47d:	25 ff 00 00 00       	and    $0xff,%eax
 804a482:	83 f8 0a             	cmp    $0xa,%eax
 804a485:	75 07                	jne    804a48e <check+0x40>
 804a487:	b8 00 00 00 00       	mov    $0x0,%eax
 804a48c:	eb 0f                	jmp    804a49d <check+0x4f>
 804a48e:	83 45 f8 08          	addl   $0x8,-0x8(%ebp)
 804a492:	83 7d f8 1f          	cmpl   $0x1f,-0x8(%ebp)
 804a496:	7e d7                	jle    804a46f <check+0x21>
 804a498:	b8 01 00 00 00       	mov    $0x1,%eax
 804a49d:	83 c4 10             	add    $0x10,%esp
 804a4a0:	5b                   	pop    %ebx
 804a4a1:	5d                   	pop    %ebp
 804a4a2:	c3                   	ret    

0804a4a3 <gencookie>:
 804a4a3:	55                   	push   %ebp
 804a4a4:	89 e5                	mov    %esp,%ebp
 804a4a6:	83 ec 28             	sub    $0x28,%esp
 804a4a9:	8b 45 08             	mov    0x8(%ebp),%eax
 804a4ac:	89 04 24             	mov    %eax,(%esp)
 804a4af:	e8 64 ff ff ff       	call   804a418 <hash>
 804a4b4:	89 04 24             	mov    %eax,(%esp)
 804a4b7:	e8 74 e4 ff ff       	call   8048930 <srand@plt>
 804a4bc:	e8 ff e4 ff ff       	call   80489c0 <rand@plt>
 804a4c1:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a4c4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a4c7:	89 04 24             	mov    %eax,(%esp)
 804a4ca:	e8 7f ff ff ff       	call   804a44e <check>
 804a4cf:	85 c0                	test   %eax,%eax
 804a4d1:	74 e9                	je     804a4bc <gencookie+0x19>
 804a4d3:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a4d6:	c9                   	leave  
 804a4d7:	c3                   	ret    
 804a4d8:	90                   	nop
 804a4d9:	90                   	nop
 804a4da:	90                   	nop
 804a4db:	90                   	nop
 804a4dc:	90                   	nop
 804a4dd:	90                   	nop
 804a4de:	90                   	nop
 804a4df:	90                   	nop

0804a4e0 <__libc_csu_init>:
 804a4e0:	55                   	push   %ebp
 804a4e1:	57                   	push   %edi
 804a4e2:	56                   	push   %esi
 804a4e3:	53                   	push   %ebx
 804a4e4:	e8 69 00 00 00       	call   804a552 <__i686.get_pc_thunk.bx>
 804a4e9:	81 c3 0b 2b 00 00    	add    $0x2b0b,%ebx
 804a4ef:	83 ec 1c             	sub    $0x1c,%esp
 804a4f2:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 804a4f6:	8d bb 20 ff ff ff    	lea    -0xe0(%ebx),%edi
 804a4fc:	e8 c3 e2 ff ff       	call   80487c4 <_init>
 804a501:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 804a507:	29 c7                	sub    %eax,%edi
 804a509:	c1 ff 02             	sar    $0x2,%edi
 804a50c:	85 ff                	test   %edi,%edi
 804a50e:	74 29                	je     804a539 <__libc_csu_init+0x59>
 804a510:	31 f6                	xor    %esi,%esi
 804a512:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a518:	8b 44 24 38          	mov    0x38(%esp),%eax
 804a51c:	89 2c 24             	mov    %ebp,(%esp)
 804a51f:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a523:	8b 44 24 34          	mov    0x34(%esp),%eax
 804a527:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a52b:	ff 94 b3 20 ff ff ff 	call   *-0xe0(%ebx,%esi,4)
 804a532:	83 c6 01             	add    $0x1,%esi
 804a535:	39 fe                	cmp    %edi,%esi
 804a537:	75 df                	jne    804a518 <__libc_csu_init+0x38>
 804a539:	83 c4 1c             	add    $0x1c,%esp
 804a53c:	5b                   	pop    %ebx
 804a53d:	5e                   	pop    %esi
 804a53e:	5f                   	pop    %edi
 804a53f:	5d                   	pop    %ebp
 804a540:	c3                   	ret    
 804a541:	eb 0d                	jmp    804a550 <__libc_csu_fini>
 804a543:	90                   	nop
 804a544:	90                   	nop
 804a545:	90                   	nop
 804a546:	90                   	nop
 804a547:	90                   	nop
 804a548:	90                   	nop
 804a549:	90                   	nop
 804a54a:	90                   	nop
 804a54b:	90                   	nop
 804a54c:	90                   	nop
 804a54d:	90                   	nop
 804a54e:	90                   	nop
 804a54f:	90                   	nop

0804a550 <__libc_csu_fini>:
 804a550:	f3 c3                	repz ret 

0804a552 <__i686.get_pc_thunk.bx>:
 804a552:	8b 1c 24             	mov    (%esp),%ebx
 804a555:	c3                   	ret    
 804a556:	90                   	nop
 804a557:	90                   	nop
 804a558:	90                   	nop
 804a559:	90                   	nop
 804a55a:	90                   	nop
 804a55b:	90                   	nop
 804a55c:	90                   	nop
 804a55d:	90                   	nop
 804a55e:	90                   	nop
 804a55f:	90                   	nop

0804a560 <__do_global_ctors_aux>:
 804a560:	55                   	push   %ebp
 804a561:	89 e5                	mov    %esp,%ebp
 804a563:	53                   	push   %ebx
 804a564:	83 ec 04             	sub    $0x4,%esp
 804a567:	a1 14 cf 04 08       	mov    0x804cf14,%eax
 804a56c:	83 f8 ff             	cmp    $0xffffffff,%eax
 804a56f:	74 13                	je     804a584 <__do_global_ctors_aux+0x24>
 804a571:	bb 14 cf 04 08       	mov    $0x804cf14,%ebx
 804a576:	66 90                	xchg   %ax,%ax
 804a578:	83 eb 04             	sub    $0x4,%ebx
 804a57b:	ff d0                	call   *%eax
 804a57d:	8b 03                	mov    (%ebx),%eax
 804a57f:	83 f8 ff             	cmp    $0xffffffff,%eax
 804a582:	75 f4                	jne    804a578 <__do_global_ctors_aux+0x18>
 804a584:	83 c4 04             	add    $0x4,%esp
 804a587:	5b                   	pop    %ebx
 804a588:	5d                   	pop    %ebp
 804a589:	c3                   	ret    
 804a58a:	90                   	nop
 804a58b:	90                   	nop

Disassembly of section .fini:

0804a58c <_fini>:
 804a58c:	53                   	push   %ebx
 804a58d:	83 ec 08             	sub    $0x8,%esp
 804a590:	e8 00 00 00 00       	call   804a595 <_fini+0x9>
 804a595:	5b                   	pop    %ebx
 804a596:	81 c3 5f 2a 00 00    	add    $0x2a5f,%ebx
 804a59c:	e8 df e4 ff ff       	call   8048a80 <__do_global_dtors_aux>
 804a5a1:	83 c4 08             	add    $0x8,%esp
 804a5a4:	5b                   	pop    %ebx
 804a5a5:	c3                   	ret    

; hello world
section .data
	msg db "Hello, World!",0
section .bss
section .text
	global main
main:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 13 ; length of the string in ""
	syscall
	mov rax, 60 ; exit
	mov rdi, 0 ; 0 = code success
	syscall

; print text
extern printf
section .data
    text1 db "This is first text!",10,0
    text2 db "This is second text!",10,0
section .bss
section .text
    global main

main:
    push rbp,
    mov rbp, rsp

    mov rdi, text1
    mov rax, 0
    call printf

    mov rdi, text2
    mov rax, 0
    call printf
    pop rbp
    ret
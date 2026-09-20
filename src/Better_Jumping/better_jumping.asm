; betterloop
extern printf
section .data
    number dq 5
    fmt db "The sum from 0 to %ld is %ld",10,0 ; Long Decimal a nie decimal poniewaz chcemy miec szerokosc 64 bitow\ a nie samo Decimal ktory ma 32 biity szerokosci
section .bss
section .text
    global main
main:
    push rbp
    mov rbp, rsp
    mov rcx, [number] ; Przypisujemy rejestrowi rcx wartość 5
    mov rax, 0
    bloop:
        add rax, rcx
        loop bloop ; Pętla ktora z obiegiem zmienjsza wartosc rcx
    mov rdi, fmt
    mov rsi, [number]
    mov rdx, rax
    mov rax, 0
    call printf
    mov rsp, rbp
    pop rbp
    ret
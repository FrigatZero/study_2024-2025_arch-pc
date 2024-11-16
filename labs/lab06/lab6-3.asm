%include 'in_out.asm'

SECTION .data

div: DB 'Результат: ', 0
rem: DB 'Остаток от деления: ', 0

SECTION .text
    GLOBAL _start
    _start:
    
    mov eax, 4   ; eax = 4
    mov ebx, 6   ; ebx = 6
    mul ebx      ; eax = eax * ebx
    
    add eax, 2   ; eax += 2
    
    xor edx, edx
    mov ebx, 5   ; ebx = 5
    div ebx      ; eax = eax / ebx, edx = ost
    
    mov edi, eax ; edi = eax
    
    mov eax, div
    call sprint
    
    mov eax, edi
    call iprintLF
    
    mov eax, rem
    call sprint
    
    mov eax, edx
    call iprintLF
    
    call quit

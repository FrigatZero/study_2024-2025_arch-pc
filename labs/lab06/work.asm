%include 'in_out.asm'

SECTION .data
exp: DB 'Программа выводит значение выражения №18 f(x) = 3(x+10)-20. ',0
inp: DB 'Введите x: ',0
ans: DB 'Результат вычислений: ',0

SECTION .bss
x: RESB 80

SECTION .text
    GLOBAL _start
    _start:
    
    mov eax, exp  ;
    call sprintLF ;
    
    mov eax, inp  ;
    call sprint   ;
    
    mov ecx, x    ;
    mov edx, 80   ;
    call sread    ;
    
    mov eax, x    ;
    call atoi     ;
    
    add eax, 10   ;
    
    mov ebx, 3    ;
    mul ebx       ;
    
    sub eax, 20
    
    mov edi, eax  ;
    
    mov eax, ans  ;
    call sprint   ;
    
    mov eax, edi  ;
    call iprintLF ;
    
    call quit

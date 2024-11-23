%include 'in_out.asm'

SECTION .data
fnum db 'Первое число (a): ',0
snum db 'Второе число (b): ',0
tnum db 'Третье число (c): ',0
minn db 'Наименьшее число: ',0

a dd 83
b dd 73
c dd 30

SECTION .bss

min resb 10

SECTION .text
GLOBAL _start
    _start:
	; Выводим значение a
	mov eax, fnum
	call sprint
	mov eax, [a]
	call iprintLF
	; Выводим значение b
	mov eax, snum
	call sprint
	mov eax, [b]
	call iprintLF
	; Выводим значение c
	mov eax, tnum
	call sprint
	mov eax, [c]
	call iprintLF
	; ----------------
	; Сравниваем a и b
	; ----------------
	mov ecx, [a]   ; ecx = a
	mov [min], ecx ; min = ecx(a)
	cmp ecx, [b]   ; a < b
	jl check
	mov ecx, [b]   ; ecx = b
	mov [min], ecx ; min = ecx(b)
    check:
	; ------------------
	; Сравниваем ecx и c
	; ------------------
	cmp ecx, [c]   ; ecx < c
	jl fin
	mov ecx, [c]   ; ecx = c
	mov [min], ecx ; min = ecx(c)
    fin:
	mov eax, minn
	call sprint
	mov eax, [min]
	call iprintLF
	call quit
	
	
	
	
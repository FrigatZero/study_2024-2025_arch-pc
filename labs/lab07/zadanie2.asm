%include 'in_out.asm'

SECTION .data

func db 'Задана функция №18',0
fu_1 db 'f(x) = a^2,     a != 1',0
fu_2 db 'f(x) = 10 + x,  a == 1',0
inp_x db 'Введите значение x: ',0
inp_a db 'Введите значение a: ',0
result db 'Результат: ',0

SECTION .bss

x resb 4
a resb 4
f resb 4

SECTION .text
GLOBAL _start
    _start:
	;-[Вывод сообщений func, fu_1, fu_2]
	mov eax, func 
	call sprintLF
	mov eax, fu_1
	call sprintLF
	mov eax, fu_2
	call sprintLF
	;-[Ввод значения x]
	mov eax, inp_x
	call sprint  
	
	mov ecx, x
	mov edx, 10
	call sread
	;-[Преобразование символа x в число]
	mov eax, x
	call atoi
	mov [x], eax
	;-[Ввод значения a]
	mov eax, inp_a
	call sprint
	
	mov ecx, a
	mov edx, 10
	call sread
	;-[Преобразование символа a в число]
	mov eax, a
	call atoi
	mov [a], eax
	; ==============
	; Вычисление f(x)
	; =============
	mov ecx, [a]    ; ecx = a
	cmp ecx, 1      ; Сравниваем ecx и 1
	je if_equal     ; если ecx = 1, то переходим к if_equal
	mov eax, [a]    ; иначе записываем f = a^2
	mov ebx, [a]
	mul ebx         ; eax = a^2
	
	mov [f], eax    ; f = eax
	jmp fin         ; переходим к fin
    if_equal:
	mov ecx, [x]    ; ecx = x
	add ecx, 10     ; ecx = x + 10
	mov [f], ecx    ; f = ecx
	;-[Вывод результата]
    fin:
	mov eax, result
	call sprint
	mov eax, [f]
	call iprintLF
	call quit
	
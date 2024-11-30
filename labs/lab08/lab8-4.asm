%include 'in_out.asm'

SECTION .data
fun db 'Функция: f(x) = 17 + 5x',0
res db 'Результат: ',0

SECTION .bss
x resb 10

SECTION .text
    GLOBAL _start
    _start:
	;=[Выводим сообщение с функцией]
	mov eax, fun
	call sprintLF
	;
	
	;=[Извлекаем количество аргументов и имя программы с стека]
	pop ecx     ; Количество аргументов в <ecx>
	pop edx     ; Имя программы в <edx>
	sub ecx, 1  ; <ecx - 1> => кол-во аргументов без названия программы
	;
    main:
	;=[Сравниваем ecx с нулем]
	cmp ecx, 0 ; Если <ecx = 0>
	je _exit   ; Завершаем программу
	;
	
	;=[Забираем n-ый аргумент с стека]
	pop eax
	call atoi    ; конвертируем из кода символа в число
	;
	
	;=[Находим значение функции]
	mov edi, 5   ; <edi = 5>
	mul edi      ; <eax = 5x>
	add eax, 17  ; <eax = 17+5x>
	mov edi, eax ; <edi = eax>
	add [x], edi ; <x = x + edi>
	;
	
	loop main ; <ecx - 1>
    _exit:
	;=[Выводим сообщение 'Результат: <x>']
	mov eax, res
	call sprint
	mov eax, [x]
	call iprintLF
	;
	call quit
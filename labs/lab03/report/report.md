---
## Front matter

title: "**Отчет по лабораторной работе №3**"
subtitle: "_дисциплина: Архитектура компьютера_"
author: "Сергеев Даниил Олегович"


## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: false # List of tables
fontsize: 13pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель лабораторной работы

Целью работы является освоение процедуры оформления отчетов с помощью легковесного языка разметки Markdown.

# Задание

Необходимо скомпилировать шаблон отчёта по лабораторной работе с помощью команды ``` make ```, проверить целостность полученных файлов и удалить их, внимательно изучить шаблон отчёта ``` report.md ```, заполнить отчёт по лабораторной работе с помощью ``` Markdown ```, скомпилировать и загрузить на github.

# Ход выполнения лабораторной работы

1. Открываем терминал, переходим в каталог локального репозитория и обновляем его с помощью команды ``` git pull ```. Переходим в каталог с отчетом и компилируем файл.

![Компиляция файлов report.pdf и report.docx](image/1.PNG){#fig:001 width=85%}

2. Открываем полученные файлы и проверяем.

![Файлы отчета успешно скомпилированы](image/2.PNG){#fig:002 width=85%}

3. Удаляем файлы с помощью команды ``` make clean ``` и проверяем.

![Файлы успешно удалены](image/3.PNG){#fig:003 width=85%}

4. Открываем ``` report.md ``` с помощью gedit

![Открываем report.md через консоль](image/4.PNG){#fig:004 width=85%}

![Вид отчета в программе gedit](image/5.PNG){#fig:005 width=85%}

5. Заполненный отчет по лабораторной работе компилируем с использованием ``` Makefile ```.

![Процесс компиляции отчета](image/6.PNG){#fig:006 width=85%}

6. Проверяем корректность созданных отчетов

![Файлы отчета по лабораторной работе №3 успешно скомпилированы](image/7.PNG){#fig:007 width=85%}

7. Загружаем созданные файлы на github

![Процесс отправки файлов на github](image/8.PNG){#fig:008 width=85%}

# Ход выполнения заданий для самостоятельной работы

1. Создаём отчет по лабораторной работе №2 в формате Markdown.

![Вид отчета лабораторной работы №2 в редакторе gedit](image/9.PNG){#fig:009 width=85%}

2. Компилируем файлы отчета в формате .pdf и .docx

![Создание report.pdf и report.docx](image/10.PNG){#fig:010 width=85%}

3. Отправляем файлы на github

![Отправляем файлы на github (1)](image/11.PNG){#fig:011 width=85%}

![Отправляем файлы на github (2)](image/12.PNG){#fig:012 width=85%}

# Вывод

После выполнения заданий лабораторной работы и заданий для самостоятельной работы я научился оформлять отчеты с помощью легковесного языка разметки Markdown и компилировать их с помощью ``` Makefile ``` в форматы ``` .pdf и .docx ```.




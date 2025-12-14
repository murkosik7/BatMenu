@echo off
chcp 65001
cls

:menu_1
cls
set "menu=null"
echo Добро пожаловать в курс по bat!
echo v0.0.1
echo 1. Коды для переменных
echo 2. Комментарии
echo 3. Кодировка
echo 4. Команды goto {} и :{}
echo 5. Отчистка всей страницы консоли
echo 6. Настройки
echo 7. Выход
echo 8. Вторая страница
set /p menu=Ваш выбор: 

if "%menu%"=="1" goto Code_for_Variables
if "%menu%"=="2" goto Comments
if "%menu%"=="3" goto Encoding
if "%menu%"=="4" goto goto
if "%menu%"=="5" goto clear_console
if "%menu%"=="6" goto settings
if "%menu%"=="7" goto exit
if "%menu%"=="8" goto menu_2
goto menu_1

:menu_2
echo Menu No. 2 will be available in version 0.0.2.
echo To continue, press the "W" key...

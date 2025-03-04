@echo off
title fonksiyonler
color 0a

:: /a , /A using with numerical values

set message=Hello World 
echo %message%

set /a num=1
echo %num%

echo.
echo.

set /a result=0
set /a num1=0
set /a num2=0

:calc
echo Enter first value: 
set /p num1=

echo Enter second value: 
set /p num2=

echo.
echo Choose operation '[add - sub - mul - div]: '
set /p operation=

if "%operation%"=="add" (
    set /a result=%num1%+%num2%
) else if "%operation%"=="sub" (
    set /a result=%num1%-%num2%
) else if "%operation%"=="mul" (
    set /a result=%num1%*%num2%
) else if "%operation%"=="div" (
    if %num2% NEQ 0 (
        set /a result=%num1%/%num2%
    ) else (
        echo Error: Cannot divide by zero!
        pause > nul
		cls
        goto calc
    )
) else (
    echo Invalid choice!
    pause > nul
	cls
    goto calc
)

echo.
echo Operation result: %result%
pause > nul
cls
goto calc
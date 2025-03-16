@echo off
color 0a

:: If Statement

:: Checking Integer Variables
SET /A a = 5 
SET /A b = 10 
SET /A c = %a% + %b% 
if %c%==15 echo "The value of variable c is 15" 
if %c%==10 echo "The value of variable c is 10"

:: Checking String Variables
SET str1=String1 
SET str2=String2 
if %str1%==String1 echo "The value of variable String1" 
if %str2%==String3 echo "The value of variable c is String3"

:: EQU		Sayı karşılaştırmaları için		Sayıları karşılaştırırken kullanılır. (IF %num% EQU 10)
:: ==		Metin karşılaştırmaları için	Metin (string) karşılaştırırken kullanılır. (IF "%var%"=="merhaba")

:: EQU		Eşittir (==)		 IF 	%x% EQU 10
:: NEQ		Eşit değil (!=)		 IF 	%x% NEQ 10
:: GTR		Büyüktür (>)		 IF 	%x% GTR 10
:: GEQ		Büyük eşittir (>=)	 IF 	%x% GEQ 10
:: LSS		Küçüktür (<)		 IF 	%x% LSS 10
:: LEQ		Küçük eşittir (<=)	 IF 	%x% LEQ 10

set password=0000
if %password%==0000 (
	echo valid
) else (
	echo invalid
)
pause > nul
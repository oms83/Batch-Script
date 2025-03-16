@echo off
color 0a

:: If/else Statement


::Checking Variables
SET /A a = 5 
SET /A b = 10
SET /A c = %a% + %b% 
if %c% EQU 15 (echo "The value of variable c is 15") else (echo "Unknown value") 
if %c% EQU 10 (echo "The value of variable c is 10") else (echo "Unknown value")


:: Checking String Variables
SET str1 = String1 
SET str2 = String2 
if %str1%==String1 (echo "The value of variable String1") else (echo "Unknown value") 
if %str2%==String3 (echo "The value of variable c is String3") else (echo "Unknown value")

:: if defined
@echo off 
SET str1 = String1 
SET str2 = String2 
if defined str1 echo "Variable str1 is defined"
if defined str3 (echo "Variable str3 is defined") else (echo "Variable str3 is not defined")
pause > nul
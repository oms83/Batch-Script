@echo off
color 0a

goto :StringConcatenation
::String Concatenation
SET a=Hello 
SET b=World 
SET c=%a% %b% 
echo %c%
:StringConcatenation


::String length
goto:Stringlength

echo Enter any string: 
set /p input=
set /a len=0

:loop
set char=!input:~%len%,1!
if not "!char!"=="" goto done
set /a len+=1
goto loop

:done
echo Length of string "%input%" is: %len%
:Stringlength

set /p metin=Bir kelime girin: 
for /f %%A in ('powershell -command "$s='%metin%'; $s.Length"') do set uzunluk=%%A
echo Girilen kelimenin uzunluğu: %uzunluk%

pause > nul
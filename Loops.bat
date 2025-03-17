@echo off	
set _PASSWORD=0000
set counter=0

:login
echo Enter your password: 
set /p password=

set /a counter=%counter% + 1

if %password% EQU %_PASSWORD% (
    echo Password is correct.
    pause > nul
    exit /b
) else (
    echo Invalid password.
    pause > nul
)

if %counter% LSS 3 (
    goto :login
) else (
    goto :loop_out
)

:loop_out
echo Your account is blocked, contact your admin.
pause > nul
exit /b

REM goto :comment1
REM :: EQU		Eşittir (==)			IF %x% EQU 10 echo x = 10
REM :: NEQ		Eşit değildir (!=)		IF %x% NEQ 10 echo x, 10’a eşit değil
REM :: GTR		Büyüktür (>)			IF %x% GTR 10 echo x, 10’dan büyük
REM :: GEQ		Büyük eşittir (>=)		IF %x% GEQ 10 echo x, 10 veya daha büyük
REM :: LSS		Küçüktür (<)			IF %x% LSS 10 echo x, 10’dan küçük
REM :: LEQ		Küçük eşittir (<=)		IF %x% LEQ 10 echo x, 10 veya daha küçük
REM :comment


REM @echo off	

REM set PASSWORD=0000
REM set counter=0

REM :login
	REM echo enter your password: 
	REM set /p password=
	REM set /a counter=%counter% + 1
	
	REM if %password% == %PASSWORD% (
		REM echo password is correct.
		REM pause > nul
	REM ) else (
		REM echo invalid password.
		REM pause > nul
	REM )
	
	REM if %counter% LSS 3 (
		
	REM ) else (
		REM goto :loop_out
	REM )
REM goto :login

REM :loop_out
REM echo your account is blocked, contact your admin.
REM pause > nul
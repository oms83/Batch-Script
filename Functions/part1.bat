@echo off
color 0a

:: Calling a Function
goto:CallingFunction
	:display_func
		echo hello world
		pause>nul
		exit /b 0 :: return code 0

	setlocal
		call:display_func
		call:sum_func
	endlocal
:CallingFunction

:: Functions with Parameters
goto:FunctionsWithParameters

	:: funcation1
	setlocal enabledelayedexpansion
	call :function 10 5
	pause
	exit /b

	:function 
		echo 1. parameter: %1
		echo 2. parameter: %2
		exit /b
	endlocal


	:: funcation2
	set param1=10
	set param2=5
	call :function !param1! !param2!
	pause
	exit /b

	:function 
		echo 1. parameter: %1
		echo 2. parameter: %2
		exit /b
	
:FunctionsWithParameters


:: Functions with Return Values
goto:FunctionsWithReturnValues
	setlocal enabledelayedexpansion
		call :func name age

		echo Name: %name%
		echo Age : %age%
		pause
		exit /b

		:func
		set name=omer
		set /a age=25
		exit /b
	endlocal
:FunctionsWithReturnValues



:: Local Variables in Functions
goto:LocalVariablesInFunctions
	set str=Outer
	echo %str%
	call:function_loc str
	echo %str%
	pause
	exit /b

	:function_loc
		set str=Inner
		exit /b
:LocalVariablesInFunctions


:: Recursive Functions
goto:ex1
set /a x=10
call :rec_func %x%
pause > nul
exit /b

:rec_func
	if %1 leq 0 exit /b
	echo %1
	set /a new_value=%1-1
	call :rec_func %new_value%
	exit /b
:ex1



REM goto:ex2
	setlocal enabledelayedexpansion
	set /a input=100
	call :print_even %input%
	pause
	exit /b

	:print_even
		if %1 leq 0 exit /b

		set /a result=%1 %% 2
		if %result% equ 0 echo %1

		set /a new_value=%1-1
		call :print_even %new_value%
		exit /b
		
REM :ex2
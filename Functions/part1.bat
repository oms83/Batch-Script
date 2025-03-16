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

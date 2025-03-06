@echo off
title fonksiyonler
color 0a

:function1 
	echo hello world
	pause > nul	
	exit \b
	
:function2 
	echo merhaba dunya
	pause > nul	
	exit \b

:main
	call :function1
	call :function2
pause > nul	

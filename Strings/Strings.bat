@echo off
color 0a

goto:CreateString
	:: 	Create String
	set fullName=omer memes
	echo message
:CreateString

goto:EmptyString
:: Empty String
	set empty=
	echo empty
	echo.
	
	:loop
	echo enter your name: 
	set /p name=
	if [%name%] == [] (
		goto:loop
	)
	echo your name is: %name%
	
	SET a= 
	SET b=Hello 
	if [%a%]==[] echo "String A is empty" 
	if [%b%]==[] echo "String B is empty 
:EmptyString


goto:StringInterpolation
:: String Interpolation
set /a age=25
set name=omer
set surname=MEMES
set info=full name: %name% %surname% and the age is: %age%
echo %info%
:StringInterpolation

pause > nul
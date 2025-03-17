@echo off	
title second project

color 0a

goto :comment1
rem atama yaparken degisken ismi ile degisken ve atama isareti bosluk olmamasi gerekiyor
set isim=Omer MEMES 
echo senin yasi: %isim%
:comment1

goto :comment2
pause > nul

echo.
echo.
echo.

echo enter yor age: 
set /p age=

echo enter yor full name:
set /p fullName=

echo enter yor faculty name:
set /p facultyName=

echo.
echo.
echo.

echo your full name: %fullName% 
echo your age : %age% 
echo your faculty name: %facultyName% 
:comment2


goto :comment3
echo enter your age: 
set /p age=

if %age% GEQ 18 (
	echo available to take driving license.
	
) else ( :: bosluk biraklimasi gerekiyor. 
	echo your age mus be equel or great than 18 to can take driving license
)
pause > nul
:comment3


goto :comment4
:loop 
	echo omer
goto :loop
:comment4

echo enter your age: 
set /p age=

if %age% GEQ 18 goto APoint
if %age% LSS 18 goto BPoint

:APoint
echo this is a_point
pause>nul

:BPoint
echo this is b_point
pause>nul



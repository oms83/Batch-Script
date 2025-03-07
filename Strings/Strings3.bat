@echo off
color 0a

:: toInt
goto toInt
set strNum=194
set /a num = 6 + %strNum%
echo %num%
:toInt

::Substring 
goto :Substring 
	:: %variable:~start,length%
	set str=omermemes
	
	:: -> o
	set sub1=%str:~0, 1%
	echo %sub1%
	
	:: -> omer
	set sub2=%str:~0, 4% 
	echo %sub2% 
	
	:: -> memes
	set sub2=%str:~-5% 
	echo %sub2%

	:: -> omermemes
	set sub2=%str:~0% 
	echo %sub2%	
	
:Substring 

pause > nul

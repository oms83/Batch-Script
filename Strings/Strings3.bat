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


:: Remove
goto :Remove

set str=Batch scripts is easy. It is really easy. 
echo %str% 

:: set str=%str:real=%
echo %str%

:: Batch scripts  easy. It  ly easy.
set str=%str:is=%
echo %str%
:Remove



::Remove Both Ends
goto:RemoveBothEnds
set str=Batch scripts is easy. It is really easy 
echo %str% 
set str=%str:~1,-2% 
echo %str%
:RemoveBothEnds



::Remove All Spaces
goto:RemoveAllSpaces
set str=Batch scripts is easy. It is really easy
set str=%str: =%
echo %str%
:RemoveAllSpaces



::Replace a String
goto:ReplaceString
set str=This message needs changed. 
echo %str% 
set str=%str:needs=has%
echo %str% 
:ReplaceString



goto:RemoveAllSpacesUsingReplaceString
set str=This message needs changed. 
echo %str% 
set str=%str: =%
echo %str% 
:RemoveAllSpacesUsingReplaceString



::Right String
goto:RightString
set str=This message needs changed.
echo %str% 

:: -> changed.
echo %str:~-8% 

:: -> This message needs
echo %str:~0,-8% 

:: -> needs
echo %str:~13,-8% 

:RightString


pause > nul

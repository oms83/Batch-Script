@echo off
color 0a

:: Creating Structures in Arrays
goto:ex1
	set obj[0].FirstName=Omer
	set obj[0].LastName=MEMES
	set obj[0].Age=25
	set obj[0].Country=Turkiye
	
	echo  %obj[0].FirstName%
	echo  %obj[0].LastName%
	echo  %obj[0].Age%
	echo  %obj[0].Country%
:ex1

goto:ex2
	setlocal enabledelayedexpansion
	set people[0].FirstName=Omer
	set people[0].LastName=MEMES
	set people[0].Age=25
	set people[0].Country=Turkiye

	set people[1].FirstName=Ali
	set people[1].LastName=MEMES
	set people[1].Age=20
	set people[1].Country=Syria

	for /l %%p in (0, 1, 1) do (
		echo  FirstName: !people[%%p].FirstName!
		echo  LastName: !people[%%p].LastName!
		echo  Age: !people[%%p].Age!
		echo  Country: !people[%%p].Country!
		echo.
	)
:ex2

pause > nul

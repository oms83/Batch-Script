@echo off
color 0a

:: if defined 


:: ✅ 1. Örnek: Değişken Tanımlı mı Kontrol Etme
goto:ex1
	set name1=Omer
	if defined name1 (
		echo name is defined
	) else (
		echo name is not defined
	)
	:: -> name is defined

	set name2=
	if defined name2 (
		echo name is defined
	) else (
		echo name is not defined
	)
	:: -> name is not defined
:ex1



:: ✅ 2. Örnek: Tanımlı Olmayan Değişken Kontrolü
goto:ex2
	if defined surname (
		echo surname is defined
	) else (
		echo surname is not defined
	)
	:: -> surname is not defined
:ex2



:: ✅ 3. Örnek: Değişken Sonradan Silinirse
goto:ex3
	set yas=25
	echo Age is defined: %yas%

	::set yas= |
	set yas= 
	if defined yas (
		echo Age variable is still defined!
	) else (
		echo Age variable is not still defined!
	)
:ex3


:: ✅ 4. Örnek: Kullanıcı Girişi Yapmış mı?
goto:ex4
	set /p ad=Enter your name: 
	if defined ad (
		echo name is defined
	) else (
		echo name is not defined
	)
:ex4


:: ✅ 5. Örnek: Dosyanın Var mı Yok mu?
goto:ex5
	set filePath=C:\BatchProgrammin\IfDefined.bat

	if defined filePath (
		echo file path is '%filePath%' 
		if exist filePath (
			echo '%filePath%' exist
		) else (
			echo '%filePath%' is not exist
		)
	) else (
		echo file path is not defined
	)
:ex5


:: ✅ 6. Örnek: Dizi Elemanı Tanımlı mı?
goto:ex6
	setlocal enabledelayedexpansion

	set name01[0]=Omer
	set name01[1]=Ali
	set name01[2]=Musa

	set /p index=select your name using index: 

	if defined name01[%index%] (
		echo !name01[%index%]!
	) else (
		echo name is not defined
	)
:ex6	

pause > nul
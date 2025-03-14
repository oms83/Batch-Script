@echo off
color 0a


:: Creating an Array
goto:CreatingArray
	:: -> 2
	set arr[0]=1
	set /a result = %arr[0]% * 2
	echo %result%


	:: -> 4 * 2
	set /a arr[1]=4
	set result2=%arr[1]% * 2
	echo %result2%
:CreatingArray



goto:Note1
	:: valid for numeric
	set /a num1 = 5
	echo %num1%
	:: valid for numeric
	set /a num2=5
	echo %num2%

	:: invalid for strings
	set num3 = 5
	echo %num3%
	:: invalid for strings
	set num4=5
	echo %num4%
:Note1



goto:for_loop
	set arr=1 2 3 4 5
	(for %%a in (%arr%) do (
		echo %%a
	))

	:: 📌 CMD içinde doğrudan for döngüsü çalıştırırken tek % kullanılır:
	:: 	for %a in (Apple Banana Orange) do echo %a

	:: 📌 Batch dosyasında çalıştırırken çift %% kullanılır:
	:: for %%a in (Apple Banana Orange) do echo %%a
:for_loop



::Accessing Arrays
goto:AccessingArrays
	set arr[0]=1 
	echo %arr[0]%
	set arr[0]=1 
	set arr[1]=2 
	set arr[2]=3 
	echo The first element of the array is %arr[0]% 
	echo The second element of the array is %arr[1]% 
	echo The third element of the array is %arr[2]%
:AccessingArrays



:: ERROR
	goto:ERROR
		set arry=10 20 30 40
		echo The first element of the array is %arry[0]%
		echo The second element of the array is %arry[1]% 
		echo The third element of the array is %arry[2]%
:ERROR



:: Modifying an Array
	goto:ModifyingArray
		set a[0]=1  
		set a[1]=2  
		set a[2]=3 
		Rem Adding an element at the end of an array 
		Set a[3]=4 
		echo The last element of the array is %a[3]%
:ModifyingArray


:: Iterating Over an Array
goto:IteratingOverArray
	setlocal enabledelayedexpansion 
	set arr[0]=Batch 
	set arr[1]=scripts 
	set arr[2]=is 
	set arr[3]=easy

	for /l %%n in (0, 1, 3) do ( 
	   echo !arr[%%n]! 
	)

	:: 📌 setlocal enabledelayedexpansion, Batch scriptlerinde gecikmeli değişken 
	:: 	  genişletmesini (Delayed Expansion) aktif hale getirir.

:IteratingOverArray


:: Array Length 1
	goto:ArrayLength1
	set array=1 2 3 4 5
	set /a counter=0
	for %%n in (%array%) do (
		echo %%n
		set /a counter+=1
	)
	echo array length is : %counter%
:ArrayLength1


goto:ArrayLength2
	setlocal enabledelayedexpansion
	set array2[0]=1
	set array2[1]=2
	set array2[2]=3
	set array2[3]=4
	set array2[4]=5

	for /l %%i in (0, 1, 4) do (
		echo !array2[%%i]!
	)
:ArrayLength2


goto:ArrayLength3
	setlocal enabledelayedexpansion
	set Arr[0]=1
	set Arr[1]=2
	set Arr[2]=3
	set Arr[3]=4
	set x=0

	:SymLoop
	if defined Arr[%x%] (
	   echo !Arr[%x%]!
	   set /a x+=1
	   GOTO :SymLoop
	)
	echo The length of the array is !x!
:ArrayLength3


goto:ArrayLength3
	setlocal enabledelayedexpansion
	set Arr1[0]=1
	set Arr1[1]=2
	set Arr1[2]=3
	set Arr1[3]=4
	set x1=0

	:loop
	if defined Arr1[%x1%] (
		echo !Arr1[%x1%]!
		set /a x1+=1
		goto:loop
	)
	echo lengh: %x1%
:ArrayLength3


pause > nul
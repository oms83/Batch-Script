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




pause > nul
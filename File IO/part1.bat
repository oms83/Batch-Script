@echo off
color 0a

:: Writing to Files
REM echo content_will_write_in_the_file > C:\MyCommands\my_text.txt


:: Appending to Files
echo "This is the directory listing of C:\ Drive">C:\MyCommands\my_text.txt
dir C:\>>C:\MyCommands\my_text.txt


:: Reading from Files
for /f "tokens=* delims=" %%x in (C:\MyCommands\my_text.txt) do echo %%x
:: 📌 Çalışma Mantığı: 1️⃣ for /f → .txt dosyasını satır satır okur.
:: 		2 tokens=* → Satırın tamamını alır.
:: 		3 delims= → Hiçbir ayrıştırma yapmaz, yani satır olduğu gibi gelir.
:: 		4 %%x → Her satırı bu değişkende saklar.
:: 		5 do echo %%x → Satırı ekrana yazdırır.


:: Deleting Files
del test.bat       :: test.bat dosyasını siler.
del c:\test.bat    :: C sürücüsündeki test.bat dosyasını siler.
del c:\*.bat       :: C sürücüsündeki tüm `.bat` uzantılı dosyaları siler.
del c:\?est.tmp    :: C sürücüsündeki ismi "?est.tmp" şeklindeki dosyaları siler.

del test.bat				:: Bulunduğun dizindeki test.bat dosyasını siler.
del C:\test.bat				:: C sürücüsündeki test.bat dosyasını siler.
del /P C:\test.txt			:: Silmeden önce onay ister.
del /F C:\test.txt			:: Salt okunur dosyayı zorla siler.
del /S C:\Logs\*.log		:: Alt klasörlerdeki .log dosyalarını siler.
del /Q C:\Temp\*.tmp		:: Sessiz modda .tmp dosyalarını siler.
del /A:R C:\Temp\*.txt		:: Salt okunur .txt dosyalarını siler.


:: Renaming Files
:: RENAME [drive:][path][directoryname1 | filename1] [directoryname2 | filename2]
rename *.txt *.bak
move test.txt D:\Backup\						Dosyayı D:\Backup\ klasörüne taşır.
move C:\test.txt D:\Backup\yeni_ad.txt			Dosyayı taşırken adını değiştirir.
move C:\Projects\OldName C:\Projects\NewName	Bir klasörün adını değiştirir.
move /Y C:\work\important.doc D:\Backup\		Dosya varsa üzerine yazıp taşır.
move /-Y C:\work\important.doc D:\Backup\		Dosya varsa kullanıcıdan onay ister.


pause > nul
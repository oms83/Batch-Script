@echo off
color 0a

✅ 1. Process Listeleme
Komut			Açıklama
tasklist		Çalışan tüm süreçleri (process) listeler.
tasklist 		/fi "imagename eq notepad.exe"	Sadece notepad.exe çalışan mı kontrol eder.
tasklist 		/fi "memusage gt 10000"	10 MB'tan fazla RAM kullanan süreçleri gösterir.


✅ 2. Process Sonlandırma
Komut				Açıklama
taskkill 			/IM notepad.exe	Notepad uygulamasını kapatır.
taskkill 			/IM notepad.exe /F	Notepad’i zorla kapatır.
taskkill 			/PID 1234	PID'si 1234 olan süreci sonlandırır.
taskkill 			/IM chrome.exe /T /F	Chrome ve bağlı tüm işlemleri zorla kapatır.

✅ 3. Process Başlatma
Komut			Açıklama
start 			notepad.exe	Notepad uygulamasını açar.
start 			/max notepad.exe	Notepad'i tam ekran açar.
start 			/min cmd.exe	Komut istemini küçük pencerede açar.
start 			"" "C:\Program Files\Google\Chrome\Application\chrome.exe"	Chrome'u başlatır.

pause > nul
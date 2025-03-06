
:: burada yazilan tum kodlari cmd de gostermesini engelilliyor
@echo off 

:: konsole yazi rengi
color 0a

:: kosolun basligi
title first project 

:: ekrana yazdirma fonksiyornu
echo hello word.

:: 📌 timeout /t 3 → 3 saniye bekler.
:: 📌 > nul → Ekrana "Waiting for X seconds..." mesajını yazdırmaz.
timeout /t 3 > nul

:: ping localhost -n 3 > nul :: 3 saniye sonra alttaki kisma gec
:: ping 127.0.0.1 -n 3 > nul
:: 📌 Anlamı:
	:: 127.0.0.1 → Lokal bilgisayarı hedef alır.
	:: -n 3 → 3 paket göndererek yaklaşık 3 saniyelik bir bekleme süresi sağlar.
	:: > nul → Ekrana hiçbir şey yazdırmaz.

echo omer memes

pause > nul


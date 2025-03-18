İşlem										Komut	Açıklama
Klasör Oluşturma							mkdir C:\MyFolder veya md C:\MyFolder		C:\MyFolder isimli klasörü oluşturur.
Klasörleri Listeleme						dir /b /ad C:\MyFolder						C:\MyFolder içindeki tüm klasörleri listeler.
Dosyaları ve Alt Klasörleri Listeleme		dir /s C:\MyFolder							C:\MyFolder içindeki tüm dosya ve alt klasörleri listeler.
Klasör İçindeki Dosyaları Tek Tek Gezinme	for /r C:\MyFolder %%f in (*) do echo %%f	C:\MyFolder içindeki her dosyanın yolunu ekrana yazdırır.
Klasör Silme (Boşsa)						rmdir C:\MyFolder							C:\MyFolder klasörünü siler (eğer boşsa).
Klasör Silme (Alt klasörleriyle beraber)	rmdir /s /q C:\MyFolder						C:\MyFolder klasörünü ve içeriğini sorgusuz siler.
Klasör Adını Değiştirme						rename C:\MyFolder NewFolder				C:\MyFolder adını NewFolder olarak değiştirir.
Tüm Klasörleri ve Dosyaları Sırayla Gezme	for /d %%d in (C:\MyFolder\*) do echo %%d	C:\MyFolder içindeki tüm klasörlerin adlarını listeler.
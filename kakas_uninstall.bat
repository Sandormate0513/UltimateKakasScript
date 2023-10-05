echo kakas fajlok torlese
@echo off
rmdir /s /q %appdata%\kakas
cd %appdata%\Microsoft\Windows\Start Menu\Programs\Startup
del kakasextension.bat
cls
echo kakas fajlok sikeresen torolve... szanalmas
timeout /t 5
exit

echo kakas program futás alatt ...
@echo off
C:
mkdir %appdata%\kakas
cd %appdata%\kakas
curl https://lh3.googleusercontent.com/drive-viewer/AK7aPaD6suUtk6xSPorgaoaApazp__-X-7DCA78yyBifvJkE-b0iQcDaupxpQSwKPvwREyODF4wtDDQRWHkx7aGt4fcDcHMltA=s1600 -o BlackCock.png
reg add "HKCU\control panel\desktop" /v wallpaper /t REG_SZ /d %appdata%\kakas\BlackCock.png /f 
reg add "HKCU\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 2 /f 
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters 1, True
cd %appdata%\Microsoft\Windows\Start Menu\Programs\Startup
echo @echo off > kakasextension.bat
echo reg add "HKCU\control panel\desktop" /v wallpaper /t REG_SZ /d %appdata%\kakas\BlackCock.png /f >> kakasextension.bat
echo reg add "HKCU\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 2 /f >> kakasextension.bat
echo RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters 1, True >> kakasextension.bat
cls
echo Kakas sikeresen települt!
exit

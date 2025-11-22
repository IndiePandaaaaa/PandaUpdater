@echo off
rem encoding: utf-8
rem created by IndiePandaaaaa

rem exclude packages which do not work
winget pin add Apple.AppleMobileDeviceSupport >nul 2>&1
winget pin add Apple.iTunes >nul 2>&1
winget pin add Discord.Discord >nul 2>&1
winget pin add EpicGames.EpicGamesLauncher >nul 2>&1
winget pin add Microsoft.VisualStudio.2022.Community >nul 2>&1
winget pin add Ubisoft.Connect >nul 2>&1
winget pin add Waterfox.Waterfox >nul 2>&1

rem TODO: check if ferdium is running and close it, because it blocks updates for OBS, Ferdium, Python
rem taskkill /im "test.exe" /f >nul 2>&1

echo "--- starting update ---"
winget upgrade --all --include-unknown --accept-source-agreements --accept-package-agreements --silent

echo "--- update finished ---"
pause

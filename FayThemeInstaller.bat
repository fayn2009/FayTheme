@echo off

echo.
echo "   ______                    "
echo "  | _____|                   "
echo "  | |__     ___      __  _   "
echo "  | ___|   /   \     \ \| |  "
echo "  | |      | O  \     \__ |  "
echo "  |_|      \__/\_\    __/ |  "
echo "                      \__/   "

echo.

echo Download Theme...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/fayn2009/FayTheme/main/FayTheme.theme.css', 'FayTheme.theme.css')"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/fayn2009/FayTheme/main/FayTheme.theme.css -OutFile FayTheme.theme.css"

echo Copy theme to themes folder (Write "F" or "y")...
xcopy /f FayTheme.theme.css %AppData%\BetterDiscord\themes\FayTheme.theme.css

echo Remove tempfile...
del FayTheme.theme.css

echo DONE!

pause

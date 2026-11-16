@echo off
rem DaySpindle 2.1.0 for Windows. Double-click this file to start DaySpindle.
rem It also puts a "DaySpindle" shortcut with the app's icon next to this file:
rem double-click that from then on.
setlocal
cd /d "%~dp0"
set "APPDIR=DaySpindle for Windows"
if not exist "%APPDIR%\DaySpindle.exe" goto missing

:open
rem A "DaySpindle" shortcut with the app's icon next to this file, to double-click from now on.
rem A shortcut holds the app's full path, so it is made again whenever this folder has moved.
set "LNK=%~dp0DaySpindle.lnk"
set "LNKMARK=%~dp0%APPDIR%\shortcut-for.txt"
set "LNKFOR="
if exist "%LNKMARK%" set /p LNKFOR=<"%LNKMARK%"
if exist "%LNK%" if /i "%LNKFOR%"=="%~dp0" goto launch
set "EXE=%~dp0%APPDIR%\DaySpindle.exe"
set "HERE=%~dp0"
powershell -NoProfile -ExecutionPolicy Bypass -Command "$s = (New-Object -ComObject WScript.Shell).CreateShortcut($env:LNK); $s.TargetPath = $env:EXE; $s.WorkingDirectory = Split-Path $env:EXE; $s.IconLocation = $env:EXE + ',0'; $s.Description = 'DaySpindle, a Gantt chart task manager'; $s.Save(); $e = [Text.Encoding]::GetEncoding([Globalization.CultureInfo]::CurrentCulture.TextInfo.OEMCodePage); if ($e.CodePage -eq 65001) { $e = New-Object Text.UTF8Encoding $false }; [IO.File]::WriteAllText($env:LNKMARK, $env:HERE, $e)" >nul 2>&1

:launch
start "" "%APPDIR%\DaySpindle.exe"
exit /b 0

:missing
echo.
echo "DaySpindle for Windows\DaySpindle.exe" is missing from this folder.
echo Copy the whole DaySpindle folder again, then run this file again.
echo.
pause
exit /b 1

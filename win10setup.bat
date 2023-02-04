@ECHO OFF

REM The %~dp0 is used so that I don't have to type out the full path to the Powershell script.
REM https://stackoverflow.com/a/60728491
REM https://stackoverflow.com/a/2730717
cd "%~dp0"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "%~dp0win10setup.ps1"

REM Call uninstall apps Powershell script
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "%~dp0uninstall-apps.ps1"

REM Call winget install Powershell script
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "%~dp0winget-installs.ps1"

REM Potential alternate ways that open their own Powershell console windows
REM https://blog.danskingdom.com/allow-others-to-run-your-powershell-scripts-from-a-batch-file-they-will-love-you-for-it/
REM PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%~dp0ReclaimWindows10.ps1""' -Verb RunAs}";
REM PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%~dp0Windows-10-Finish-Up-Script.ps1""' -Verb RunAs}";

REM Install Chocolatey using their official command
REM https://chocolatey.org/install
REM ECHO:
ECHO Installing Chocolatey
ECHO ----------------------------------------
PowerShell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

REM Call chocolatey package install Powershell script
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "%~dp0choco-installs.ps1"

ECHO:
ECHO Importing ShutUp10 Config
ECHO ----------------------------------------
%~dp0OOSU10.exe ooshutup10.cfg /quiet

ECHO:
ECHO Please Reboot Your System Now
ECHO:

PAUSE
@echo off
title Switch DevOverrideEnable - Sony Vegas / Valorant
color 0A

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Ce script doit etre execute en tant qu'administrateur.
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

for /f "tokens=3" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options" /v DevOverrideEnable 2^>nul') do set current=%%a
if not defined current set current=0

echo ===============================================
echo      Basculateur DevOverrideEnable
echo ===============================================
echo.
echo Etat actuel : %current%
echo.
echo 1 - Mode Sony Vegas (DevOverrideEnable = 1)
echo 2 - Mode Valorant (DevOverrideEnable = 0 + restart Vanguard)
echo.
set /p choice="Votre choix: "

if "%choice%"=="1" (
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options" /v DevOverrideEnable /t REG_DWORD /d 1 /f
    echo DevOverrideEnable = 1
    echo Sony Vegas peut maintenant etre lance.
    goto end
)

if "%choice%"=="2" (
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options" /v DevOverrideEnable /t REG_DWORD /d 0 /f
    echo DevOverrideEnable = 0
    echo Attente 6s avant restart Vanguard...
    timeout /t 6 /nobreak >nul
    powershell -NoProfile -ExecutionPolicy Bypass -Command Restart-Service -Name vgc -Force
    echo Service Vanguard redemarre.
    goto end
)

echo Choix invalide.

:end
pause

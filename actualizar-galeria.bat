@echo off
setlocal enabledelayedexpansion
set "FOLDER=%~dp0assets\fotos"
set "OUTPUT=%FOLDER%\fotos.json"
(
  echo [
  set "first=1"
  for %%F in ("%FOLDER%\*.jpg" "%FOLDER%\*.jpeg" "%FOLDER%\*.png" "%FOLDER%\*.gif" "%FOLDER%\*.webp" "%FOLDER%\*.avif" "%FOLDER%\*.svg") do (
    if exist "%%~fF" (
      if !first! == 1 (
        set "first=0"
        echo   "%%~nxF"
      ) else (
        echo  ,"%%~nxF"
      )
    )
  )
  echo ]
) > "%OUTPUT%"
echo Archivo fotos.json actualizado.
pause

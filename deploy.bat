@ECHO OFF
::SET CurDir=%~dp0
SET CurDir=
ECHO 00%%

:: Get Far Manager install dir
FOR /F "tokens=2*" %%i IN ('REG QUERY "HKLM\SOFTWARE\Far Manager" /v "InstallDir" 2^>NUL ^| FIND /I "InstallDir"') DO SET InstallDir=%%j>NUL
IF "%InstallDir%" == "" FOR /F "tokens=2*" %%i IN ('REG QUERY "HKLM\SOFTWARE\Far Manager" /v "InstallDir_x64" ^| FIND /I "InstallDir_x64"') DO SET InstallDir=%%j
IF "%InstallDir%" == "" GOTO ERROR
IF NOT EXIST "%InstallDir%" GOTO ERROR
ECHO 10%%

SET FARPROFILE=%APPDATA%\Far Manager\Profile
IF NOT EXIST "%FARPROFILE%\Macros\scripts" MD "%FARPROFILE%\Macros\scripts"
ECHO 20%%

"%InstallDir%Far.exe" /import "%CurDir%config.farconfig" || GOTO ERROR
ECHO 30%%
"%InstallDir%Far.exe" /import "%CurDir%config-colors.farconfig" || GOTO ERROR
ECHO 40%%
COPY /B "%CurDir%date.lua" "%FARPROFILE%\Macros\scripts" >NUL || GOTO ERROR
ECHO 50%%
"%InstallDir%Far.exe" /clearcache || GOTO ERROR
ECHO 60%%
"%InstallDir%Far.exe" /import "%InstallDir%Addons\XLat\Russian\Qwerty.farconfig" || GOTO ERROR
ECHO 70%%
COPY /B "%InstallDir%Addons\XLat\Russian\CtrlShiftX.lua" "%FARPROFILE%\Macros\scripts" >NUL || GOTO ERROR
ECHO 80%%
COPY /B "%InstallDir%Plugins\FarColorer\bin\Plugin.Colorer.lua" "%FARPROFILE%\Macros\scripts" >NUL || GOTO ERROR
ECHO 90%%
"%InstallDir%Far.exe" /import "%CurDir%config-plugins.farconfig" || GOTO ERROR
ECHO 100%%

:DONE
ECHO DONE
PAUSE
EXIT /B 0

:ERROR
ECHO ERROR
PAUSE
EXIT /B 1

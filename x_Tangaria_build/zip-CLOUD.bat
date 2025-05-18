@ECHO OFF
SET source=C:\Github\Tangaria_release
SET dest=C:\Users\n\_google_drive\Tangaria.zip
SET SZipPath=C:\Program Files\7-Zip\7z.exe

:: Check if 7-Zip is at the specified path
IF NOT EXIST "%SZipPath%" (
    ECHO 7-Zip not found at %SZipPath%... Not installed?
    EXIT /B 1
)

:: Change to source directory
PUSHD %source%

:: Create ZIP excluding .git folder
"%SZipPath%" a -mx1 -xr!*.git* "%dest%" *

:: Ensure Google Drive for Desktop is running
TASKLIST | FIND /I "GoogleDriveFS.exe" >nul 2>&1
IF ERRORLEVEL 1 (
    ECHO Starting Google Drive for Desktop...
    start "" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Google Drive.lnk"
    TIMEOUT /T 3
)

:: Wait for a while to ensure file syncs
::ECHO Waiting for file to sync...
::TIMEOUT /T 180

:: Close Google Drive
::TASKKILL /IM "GoogleDriveFS.exe" /F

ECHO =-=-=-=-=-=-=-= Done! =-=-=-=-=-=-=-=

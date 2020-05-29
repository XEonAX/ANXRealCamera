for /f "delims== tokens=1,2" %%G in (VERSION) do set anx%%G=%%H
echo %anxversion%


xcopy /s /y .\out\ANXCamera.apk .\src\ANXRealLibs\system\app\ANXRealCamera
del .\out\ANXRealLibs.zip
del .\out\ANXRealLibs_*.zip
"C:\Program Files\7-Zip\7z.exe" a -tzip .\out\ANXRealLibs.zip .\src\ANXRealLibs\*
copy .\out\ANXRealLibs.zip /B .\out\ANXRealLibs_%anxversion%.zip
adb push .\out\ANXRealLibs.zip  /sdcard/zips

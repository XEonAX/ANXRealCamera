for /f "delims== tokens=1,2" %%G in (VERSION) do set anx%%G=%%H
echo %anxversion%
git tag %anxversioncode%.singularity
git push origin %anxversioncode%.singularity
..\ANXRealPortTools\hub.exe release create -d -a .\out\ANXCameraUnity_%anxversion%.zip -m singularity.%anxversion% %anxversioncode%.singularity
REM ..\ANXRealPortTools\hub.exe release edit -a .\out\ANXCameraUnity_%anxversion%.zip -m singularity.%anxversion% %anxversioncode%.singularity
REM ..\ANXRealPortTools\hub.exe release edit -a .\out\KubilWhyredyFix_%anxversion%.zip -m singularity.%anxversion% %anxversioncode%.singularity
REM ..\ANXRealPortTools\hub.exe release edit -a .\out\Dyneteve48MPFix_%anxversion%.zip -m singularity.%anxversion% %anxversioncode%.singularity
REM ..\ANXRealPortTools\hub.exe release edit -a .\out\ANXCustLibs_%anxversion%.zip -m singularity.%anxversion% %anxversioncode%.singularity
REM ..\ANXRealPortTools\hub.exe release edit -a .\out\ANXMimoji_%anxversion%.zip -m singularity.%anxversion% %anxversioncode%.singularity

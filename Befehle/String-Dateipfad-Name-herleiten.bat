@Echo off

@mode con cols=150 lines=100
REM Pfad und Dateiname der Aktuellen .bat Datei auslesen
echo 0: %0

REM Pfad/datei nochmal in "" damit auch Leerzeichen verarbeitet werden können!
set file=%0
echo File: %file%


FOR %%i IN ("%file%") DO (
REM Filedrive
	ECHO fileDrive=%%~di
	set D=%%~di
	echo.
REM Filepath
	ECHO filePath=%%~pi
	set P=%%~pi
	echo.
REM filename
	ECHO fileName=%%~ni
	set N=%%~ni
	echo.
REM fileeextension
	ECHO fileExtension=%%~xi
	set E=%%~xi
	echo.
)


echo.
Echo.
	ECHO fileDrive:     %D%
	ECHO filePath:      %P%
	ECHO fileName:      %N%
	ECHO fileExtension: %E%


echo.
echo Pfad komplett: %D%%P%%N%%E%
pause

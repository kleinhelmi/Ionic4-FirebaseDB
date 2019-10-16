@Echo off
@mode con cols=150 lines=100

REM Info: https://ss64.com/nt/syntax-args.html

REM 	When an argument is used to supply a filename then the following extended syntax can be applied: 
REM 	we are using the variable %1 (but this works for any parameter)
REM 
REM 	%~f1 Expand %1 to a Fully qualified path name - C:\utils\MyFile.txt
REM 	%~d1 Expand %1 to a Drive letter only - C:
REM 	%~p1 Expand %1 to a Path only e.g. \utils\ this includes a trailing \ which will be interpreted as an escape character by some commands.
REM 	%~n1 Expand %1 to a file Name without file extension C:\utils\MyFile or if only a path is present (with no trailing backslash\) - the last folder in that path.
REM 	%~x1 Expand %1 to a file eXtension only - .txt
REM 	%~s1 Change the meaning of f, n, s and x to reference the Short 8.3 name (if it exists.) 
REM 	%~1   Expand %1 removing any surrounding quotes (")
REM 	%~a1 Display the file attributes of %1
REM 	%~t1 Display the date/time of %1
REM 	%~z1 Display the file size of %1
REM 	%~$PATH:1 Search the PATH environment variable and expand %1 to the fully qualified name of the first match found. 
REM 
REM 	The modifiers above can be combined: 
REM 	%~dp1 Expand %1 to a drive letter and path only
REM 	%~sp1 Expand %1 to a path shortened to 8.3 characters
REM 	%~nx2 Expand %2 to a file name and extension only


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

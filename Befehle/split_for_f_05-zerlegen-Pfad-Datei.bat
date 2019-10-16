@echo off
setlocal EnableDelayedExpansion
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


set "pfad_datei=U:\helmlinger\ORDNER-1\ORDNER-2\ORDNER-3\datei#INFO.txt"
	echo pfad_datei::!pfad_datei!::

REM Pfad/datei nochmal in "" damit auch Leerzeichen verarbeitet werden können!
	set this_File=%0
	echo this_File::%this_File%::


FOR %%i IN (%this_File%) DO (
	REM Filedrive
		ECHO this_File fileDrive:    :%%~di::
		set D=%%~di
		echo.
	REM Filepath
		ECHO this_File filePath:     :%%~pi::
		set P=%%~pi
		echo.
	REM filename
		ECHO this_File fileName:     :%%~ni::
		set N=%%~ni
		echo.
	REM fileeextension
		ECHO this_File fileExtension::%%~xi::
		set E=%%~xi
		echo.
)



	echo.
	echo ------------------------------------------------------
	echo pfad_datei::!pfad_datei!::


FOR %%i IN (%pfad_datei%) DO (
	REM Filedrive
		ECHO pfad_datei fileDrive:    :%%~di::
		echo.
	REM Filepath
		ECHO pfad_datei filePath:     :%%~pi::
		set filePath=%%~pi
		echo.
	REM filename
		ECHO pfad_datei fileName:     :%%~ni::
		set fileName=%%~ni
		echo.
	REM fileeextension
		ECHO pfad_datei fileExtension::%%~xi::
		echo.
)
echo.


ECHO  Pfad in einzelne Ebenen aufteilen.
	set KETTE="!FilePath!"
	REM INdexcounter x setzen
	set x=0
	echo KETTE::%KETTE%::
	pause
:FORLOOP
	For /F "tokens=1* delims=\" %%A IN (%KETTE%) DO (
		echo %%A
		echo INDEX: :!x!:
		
		REM Array ähnliches Objet bauen
		set Ebene_!x!=%%A
		call	echo Ebene_ Index no !x! ist %Ebene_!x!%
		
		REM den Index für das ARRAY hochzählen
		set /a "x+=1"
		
		REM Die Variable ZEICHENKETTE wird auf den 2ten Eintrag abgefragt
		REM Die Variable Verkürzt sich immer um den gefundene a Eintrag
		set KETTE="%%B"
		echo Zeichenkette nach durchlauf: !KETTE!
		if NOT "%KETTE%"=="" goto FORLOOP
	)
	
	pause 
	echo.
	echo Ausgabe des Arrays
	REM Ausgabe des Arrays
	(for /L %%i in (0,1,!x!) do (
	   echo Ebene_%%i :: !Ebene_%%i!
	))



:endofprogram
pause





pause

@echo off
setlocal EnableDelayedExpansion

REM Find String in Datei
REM INFO: https://ss64.com/nt/findstr.html
REM Syntax
REM       FINDSTR string(s) [pathname(s)]
REM          [/R] [/C:"string"] [/G:StringsFile] [/F:file] [/D:DirList]
REM             [/A:color] [/OFF[LINE]] [options]
REM 
REM Key
REM    string      Text to search for.
REM    pathname(s) The file(s) to search. 
REM    /C:string   Use string as a literal search string (may include spaces).
REM    /R          Use string as a regular expression.
REM    /G:StringsFile  Get search string from a file (/ stands for console).
REM    /F:file     Get a list of pathname(s) from a file (/ stands for console).
REM    /d:dirlist  Search a comma-delimited list of directories.
REM    /A:color    Display filenames in colour (2 hex digits)
REM 
REM options can be any combination of the following switches:
REM 
REM    /I   Case-insensitive search.
REM    /S   Search subfolders.
REM    /P   Skip any file that contains non-printable characters
REM    /OFF[LINE] Do not skip files with the OffLine attribute set.
REM    /L   Use search string(s) literally.
REM    /B   Match pattern if at the Beginning of a line.
REM    /E   Match pattern if at the END of a line.
REM    /X   Print lines that match exactly.
REM    /V   Print only lines that do NOT contain a match.
REM    /N   Print the line number before each line that matches.
REM    /M   Print only the filename if a file contains a match.
REM    /O   Print character offset before each matching line.
	
	
REM ausgew�hlte Zeilen mit Prefix einlesen und ausf�hren, bzw. Variable setzten	
REM 	findstr /N /I CrEo_ADMIN_Dir "E:\_DOKUMENTE\BAT oder CMD-Beispiele\Beispiele\textfile_zeilenweise_auslesen_variablen.bat"
REM
	set "filter=CrEo_Ad"
	set file="E:\_DOKUMENTE\BAT oder CMD-Beispiele\Beispiele\textfile_zeilenweise_auslesen_variablen.bat"

	
	
	findstr /N /I !filter! !file!
echo ======================================
	findstr /I !filter! !file!
echo ======================================
	findstr !filter! !file!
echo ======================================

REM jetzt gleich die Variable setzten
REM liest alle passenden Zeilen von oben nach unten ein und setzt die Variable
for /f %%i in ('findstr /I "CReo_AdMin" !file!') do set %%i

for /f %%i in ('findstr /I "CrEo_" !file!') do set %%i

		echo ###############################################
		echo Ausgabe aller parameter
		echo ###############################################
			set cReo_
REM Prefix schlie�t ZeILEN aus, welche matchen: /V 
REm ERgebniss, also alle Zeilen ausser die mit Filter
set "filter=creo_app"
echo.
echo ======================================================
echo Ausgabe aller Werte ausser mit Prefix::!filter!::

for /f %%i in ('findstr /I /V !filter! !file!') do echo %%i


pause
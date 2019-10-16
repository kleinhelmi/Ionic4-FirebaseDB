@echo off
REM Zeichenkette in Zeichenkette entfernen
REM  Infos: https://stackoverflow.com/questions/23600775/windows-batch-file-split-string-with-string-as-delimiter
REM INFOS: https://ss64.com/nt/syntax-replace.html

SETLOCAL enabledelayedexpansion

set raus=zwei
SET "string=eins#zwei#drei#vier#eins#zwei#drei#vier.txt" 
	echo String: %string%
rem vor # abschneiden
SET "s1=%string:zwei=%"
	echo s1:%s1%:
set "s2=!string:%raus%=!"
	echo s2:%s2%:
set "s3=%string:.txt=%"
	ECHO s3:%s3%:

pause
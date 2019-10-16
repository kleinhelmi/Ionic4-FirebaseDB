@echo off
REM = Konfigurationsdateien kopieren =================================================================================================
REM zum xcopy-Befehl: 
REM /D bedeutet nur neuere Dateien 
REM /E Unterverzeichnisse mitnehmen 
REM /Y Dateien ohne Nachfragen überschreiben 
REM /I neuen Ordner anlegen, falls nicht vorhanden 


	xcopy "c:\temp_creo\sicherung" "c:\temp_creo\test2" /D /I /Y
	
	
	echo verzeichniss kopiert
pause

REM Achtung, könnte evtl. sein dass dieser Befehl bald deprecated wird!
REm Infos: http://ss64.com/nt/xcopy.html

REM daher Besser Robocopy benutzen
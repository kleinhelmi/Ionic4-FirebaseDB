@echo off
REM = Konfigurationsdateien kopieren =================================================================================================
REM 	INFO: https://support.microsoft.com/de-de/kb/240268
REM 	INFO: https://www.microsoft.com/resources/documentation/windows/xp/all/proddocs/en-us/copy.mspx?mfr=true
REM 	Syntax
REM 		copy [/d] [/v] [/n] [{/y|/-y}] [/z] [{/a|/b}] Source [{/a|/b}] [+ Source [{/a|/b}] [+ ...]] [Destination [{/a|/b}]]
REM 		
REM 		Parameters
REM 		/d : Allows the encrypted files being copied to be saved as decrypted files at the destination.
REM 		/v : Verifies that new files are written correctly.
REM 		/n : Uses a short file name, if available, when copying a file with a name longer than eight characters, or with a file extension longer than three characters.
REM 		/y : Suppresses prompting to confirm that you want to overwrite an existing destination file.
REM 		/-y : Prompts you to confirm that you want to overwrite an existing destination file.
REM 		/z : Copies networked files in restartable mode.
REM 		/a : Indicates an ASCII text file.
REM 		/b : Indicates a binary file.
REM 		Source : Required. Specifies the location from which you want to copy a file or set of files. Source can consist of a drive letter and colon, a folder name, a file name, or a combination of these.
REM 		Destination : Required. Specifies the location to which you want to copy a file or set of files. Destination can consist of a drive letter and colon, a folder name, a file name, or a combination of these.
REM 		/? : Displays help at the command prompt.
	copy c:\temp_creo\config1.pro "c:\temp_creo\config_admin.pro"
	copy c:\temp_creo\config2.pro "c:\temp_creo\config_user.pro"
	echo Datei kopiert

REM einen Zeilenumbruch und eine Info ans Ende der Dateiinhalt dazufügen mit "echo>>"
REM einen Zeilenumbruch
REM Achtung, falls keine Datei vorhanden ist, wird eine neue leere Datei erstellt
	echo. >> c:\temp_creo\config_admin.pro
REM Kommentar schreiben
	echo ! ################################################### >> c:\temp_creo\config_admin.pro
	echo ! HIER SOLLTE JETZT DER INHALT DER USERCONFIG kommen! >> c:\temp_creo\config_admin.pro
	echo ! ################################################### >> c:\temp_creo\config_admin.pro

REM Die Config Dateien zusammenkopieren
copy c:\temp_creo\config_*.pro "c:\temp_creo\config.pro"
echo Datei zusammengebaut


REM Dateiinhalt überschreiben mit "echo>"
REM echo der neue Inhalt 1 > "c:\temp_creo\config.pro"
REM echo Dateiinhalt überschrieben
REM pause


REM Dateiinhalt dazufügen mit "echo>>"
echo. >> c:\temp_creo\config.pro
echo. >> c:\temp_creo\config.pro
echo ! zusaetzliche config.pro Einstellungen aus der bat Datei >> c:\temp_creo\config.pro
echo. >> c:\temp_creo\config.pro
echo. >> c:\temp_creo\config.pro
echo der neue Inhalt 2 >> c:\temp_creo\config.pro
echo der neue Inhalt 3 >> c:\temp_creo\config.pro
echo der neue Inhalt 4 >> c:\temp_creo\config.pro
echo Dateiinhalt angehängt
pause


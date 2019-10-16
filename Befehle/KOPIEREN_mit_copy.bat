@echo off
REM = Konfigurationsdateien kopieren =================================================================================================
REM Copy from -> to
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


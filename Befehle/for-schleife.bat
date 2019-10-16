@echo off


REM es werden bei jedem durchlauf alle Option abgefragt, damit ein CODE generiert werden kann
REM check alle Optionen
REM for schleife
REM Infos: https://de.wikibooks.org/wiki/Batch-Programmierung:_Batch-Befehle#FOR
REM Achtung: Die Variable darf nur aus einem Buchstaben bestehen! "%t" ist erlaubt, "%test" nicht! Bei der Verwendung mehrerer Befehle muss zwischen "DO" und der Klammer "(" ein Leerzeichen sein.

REM Zählschleifen
REM Mit solchen Schleifen kann man Aktionen eine bestimmte Anzahl oft ausführen. Dazu muss man den Parameter /L angeben.
REM Syntax: for /L {Variable} IN (Startzahl, Schrittweite, Endzahl) DO (Aktion)
REM REM Schreibe Text 5 Mal
REM for /L %%N IN (1, 1, 5) DO echo Nummer %%N

REM Anzahl der Optionen
set o=5


for /L %%N IN (1, 1, %o%) DO (
	echo Nummer %%N
	pause
	cls
)
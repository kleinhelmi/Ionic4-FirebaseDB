@echo
REM mit OneDrive Verbinden
REM INFOS: https://www.pcwelt.de/tipps/So-richten-Sie-Onedrive-als-Netzwerklaufwerk-ein-Windows-8.1-9624519.html
REM
REM INFOS: https://ss64.com/nt/net-use.html
REM		Make all future connections persistent (auto-reconnect at login)
REM		NET USE /Persistent:Yes or NET USE /P:Yes for autoconnect

REM link von OneDrive Konto michael_helmlinger@gmx.de
net use B: https://d.docs.live.net/FD8ED6AA3EF1F2EF /persistent:no

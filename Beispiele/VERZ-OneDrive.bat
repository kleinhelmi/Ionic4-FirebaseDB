@echo
REM mit OneDrive Verbinden
REM https://d.docs.live.net/FD8ED6AA3EF1F2EF
REM
REM INFOS: https://ss64.com/nt/net-use.html
REM 	Make all future connections persistent (auto-reconnect at login)
REM 	 NET USE /Persistent:Yes or NET USE /P:Yes



REM net use R: /delete
REM net use R: \\SBOEFIL01\users /persistent:no


net use B: https://d.docs.live.net/FD8ED6AA3EF1F2EF /persistent:no

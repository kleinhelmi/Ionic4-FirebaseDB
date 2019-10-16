@echo

net use R: /delete
net use U: /delete
net use I: /delete
net use J: /delete
net use L: /delete
net use M: /delete
net use N: /delete
net use P: /delete
net use Q: /delete
net use Z: /delete

net use R: \\SBOEFIL01\users /persistent:no
net use U: \\SBOEFIL01\daten /persistent:no
net use I: \\SBOEFIL01\pdmlink /persistent:no
net use J: \\SBOEFIL01\MQMD16 /persistent:no
net use L: \\SBOEFIL01\marketing$ /persistent:no
net use M: \\SBOEFIL01\moldflow$ /persistent:no
net use N: \\SBOEFIL01\labor$ /persistent:no
net use P: \\SBOEFIL01\users_rdl$\%username% /persistent:no
net use Q: \\SBOEFIL01\procal /persistent:no
net use Z: \\SBOEFIL01\hermle530 /persistent:no

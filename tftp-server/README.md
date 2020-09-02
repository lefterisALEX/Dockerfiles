## Startup script 

```
[Unit]
Description=Monitor and rename backup files from core router

[Service]
# see man systemd.service 
Type=oneshot
ExecStart=/usr/bin/inoticoming  /backup/CR01/ sudo sh /backup/scripts/rename-new-backups.sh \;
RemainAfterExit=true
StandardOutput=journal

[Install]
WantedBy=multi-user.target 

```

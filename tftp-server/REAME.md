## Add the following cronjobs
```
@reboot /bnr-volume/scripts/notify-new-backups.sh
* * * * * sudo sh /bnr-volume/scripts/phpipam-backup.sh
```
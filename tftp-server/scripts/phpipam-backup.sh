date="$(date +'%F'-'%T')"
docker exec -t phpipam-mysql mysqldump --all-databases -uroot -p<password> > /bnr-volume/phpipam/mysql_dump-$date.sql

#!/bin/bash
chown www-data:www-data /var/www/html -R
source /etc/apache2/envvars
tail -F /var/log/apache2/* &
exec apache2 -D FOREGROUND
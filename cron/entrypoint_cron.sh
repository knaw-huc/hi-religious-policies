#!/bin/sh

touch /usr/bin/envsubst
chmod 777 /usr/bin/envsubst

/usr/bin/envsubst < /app/crontab > /etc/cron.d/crontab

chmod 777 /app/crontab
/app/crontab /etc/cron.d/crontab
touch /var/log/cron.log

cron && tail -f /var/log/cron.log

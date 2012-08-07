#!/usr/bin/env sh

cd /var/log
mv cron.log cron.log.last
touch cron.log
uniq cron.log.last cron.log.`date +%a`
rm cron.log.last
chmod o-r cron.log cron.log.???

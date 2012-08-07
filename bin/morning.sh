#!/usr/bin/env sh 

# (who ; df -t ; tail -24 /var/log/cron.log) | ${PAGER:-more}
(who ; df -h ; tail -24 /var/log/cron.log ) | ${PAGER:-more}

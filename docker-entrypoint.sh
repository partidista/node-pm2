#!/bin/bash

touch /var/log/cron.log
crontab /etc/cron.d/planarsys.cron
cron

pm2-runtime process.yml --env prod

exec "$@"

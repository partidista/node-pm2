FROM node:8.12

RUN apt-get update && apt-get install -y \
    cron

RUN npm install pm2 -g
RUN pm2 install pm2-intercom

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

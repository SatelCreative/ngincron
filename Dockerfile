FROM nginx:1.15

RUN apt-get update -q -q && \
 apt-get install cron --yes && service cron start

COPY reloadconf.sh /etc/cron.daily

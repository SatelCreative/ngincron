FROM nginx:1.15

RUN apt-get update -q -q && apt-get install cron --yes && mkdir /scripts

COPY cron.tab /scripts

RUN crontab /scripts/cron.tab

COPY reloadconf.sh /scripts
COPY start.sh /scripts

CMD ["/scripts/start.sh"]

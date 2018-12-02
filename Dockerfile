FROM nginx:1.15

RUN apt-get update -q -q && apt-get install cron --yes

COPY reloadconf.sh /etc/cron.daily
COPY start.sh ./

CMD ["./start.sh"]

#!/bin/bash

# Pass on HUP signal to nginx
trap 'kill -s HUP `pgrep -u root nginx`' HUP

service cron start
nginx -g 'daemon off;' &

while (true)
do
  wait
done 

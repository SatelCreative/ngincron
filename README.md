# ngincron
nginx docker image with cron added to reload conf once a day

The purpose of this image is to be used with letsencrypt.
In the *nginxcron*, nginx reloads automatically once a day the confs and therefore the certificates
provided and renewed by letsencrypt.
This image can be used in particular with [letscron](https://github.com/SatelCreative/letsencron) which
will renew the certificates once a month.

#!/bin/ash
if [ ! -d /home/container/tmp ]; then
	mkdir /home/container/tmp
else
  rm -rf /home/container/tmp/*
fi

if [ ! -d /home/container/logs ]; then
  mkdir /home/container/logs;
fi

envsubst < nginx.conf.template > nginx.conf
/usr/sbin/nginx -c /home/container/nginx.conf -p /home/container
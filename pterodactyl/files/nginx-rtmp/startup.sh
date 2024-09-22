#!/bin/ash
if [ ! -d /home/container/tmp ]; then
	mkdir /home/container/tmp
else
  rm -rf /home/container/tmp/*
fi

if [ ! -d /home/container/logs ]; then
  mkdir /home/container/logs;
fi

/usr/sbin/nginx -c /home/container/nginx.conf;

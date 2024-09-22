#!/bin/ash
if [ -f /home/container/tmp ]; then
	mkdir /home/container/tmp
else
  rm -rf /home/container/tmp/*
fi

if [ -f /home/container/tmp ]; then
  mkdir /home/container/logs;
fi

/usr/sbin/nginx -c /home/container/nginx.conf;
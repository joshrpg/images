#!/bin/ash
mkdir /home/container/tmp
mkdir /home/container/logs

echo "⟳ Starting Nginx..."
echo "✓ Successfully started"
/usr/sbin/nginx -c /home/container/nginx.conf
rm -rf /home/container/tmp

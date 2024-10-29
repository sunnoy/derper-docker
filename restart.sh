❯ cat /root/derper/restart.sh
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
. /etc/profile

docker pull ghcr.io/sunnoy/derper:latest

docker-compose -f /root/derper/docker-compose.yaml down

docker-compose -f /root/derper/docker-compose.yaml up -d

# 8 3 * * * bash -x /root/derper/restart.sh
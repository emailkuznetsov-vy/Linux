#!/bin/sh
# скрипт начальной настройки ВМ
host_ip='192.168.1.151'
echo $host_ip
sleep 1
ssh root@$host_ip 'yum -y install nginx'
ssh root@$host_ip 'yum -y install wget'
ssh root@$host_ip 'yum -y install yum-utils'
ssh root@$host_ip 'yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm; yum-config-manager --enable remi-php73; yum -y install php php-common php-opcache php-mcrypt php-cli php-gd php-curl php-mysqlnd; php -v'
scp /home/vladimir/education/git/nginx.conf root@$host_ip:/etc/nginx/
scp /home/vladimir/education/git/nginx-server-apache.conf root@$host_ip:/etc/nginx/conf.d/
ssh root@$host_ip 'systemctl start nginx; systemctl enable nginx; systemctl status nginx'


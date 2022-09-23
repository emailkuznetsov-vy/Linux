#!/bin/sh
# скрипт начальной настройки ВМ apache
host_ip='192.168.1.152'
echo $host_ip
sleep 1
ssh root@$host_ip 'yum -y install httpd'
scp /home/vladimir/education/git/wp.conf root@$host_ip:/etc/httpd/conf.d/ 
ssh root@$host_ip 'systemctl start httpd; systemctl enable httpd; systemctl status httpd'


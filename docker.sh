#!/bin/sh
# скрипт начальной настройки ВМ
host_ip='192.168.1.150'
echo $host_ip
sleep 1
ssh root@$host_ip 'yum -y install yum-utils; yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo; yum -y install docker-ce; systemctl start docker; systemctl enable docker'
ssh root@$host_ip 'mkdir /etc/prometheus'
scp /home/vladimir/education/git/prometheus.yml root@$host_ip:/etc/prometheus/
ssh root@$host_ip 'docker run -d --restart always --name prometheus -p 9090:9090 -v /etc/prometheus:/etc/prometheus prom/prometheus'
ssh root@$host_ip 'docker run -d --restart always --name grafana -p 3000:3000 grafana/grafana-oss'
## идентификатор панели - 1860 для импорта в графану

 


 



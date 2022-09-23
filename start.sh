#!/bin/sh
# скрипт начальной настройки ВМ
host_ip='192.168.1.156'
echo $host_ip
sleep 1
ssh-copy-id root@$host_ip 
sleep 1
scp /home/vladimir/education/git/chrony.conf root@$host_ip:/etc/ 
sleep 1
ssh root@$host_ip 'timedatectl set-timezone Europe/Moscow; timedatectl set-ntp true; systemctl stop chronyd; systemctl start chronyd; timedatectl status'
echo "остановка firewall и selinux"
ssh root@$host_ip 'systemctl stop firewalld; systemctl disable firewalld; setenforce 0; sed -i s/SELINUX=enforcing/SELINUX=disabled/g /etc/selinux/config'
ssh root@$host_ip 'yum -y install epel-release'
ssh root@$host_ip 'mkdir nodeexp; cd ./nodeexp; curl -LO https://github.com/prometheus/node_exporter/releases/download/v1.4.0-rc.0/node_exporter-1.4.0-rc.0.linux-amd64.tar.gz'
ssh root@$host_ip 'cd ./nodeexp; tar zxvf node_exporter-1.4.0-rc.0.linux-amd64.tar.gz; pwd; ls -la'
echo "архив распакован"
ssh root@$host_ip 'cd ./nodeexp/node_exporter-1.4.0-rc.0.linux-amd64/; cp node_exporter /usr/local/bin/; useradd --no-create-home --shell /bin/false nodeusr; chown -R nodeusr:nodeusr /usr/local/bin/node_exporter'
scp /home/vladimir/education/git/node_exporter.service root@$host_ip:/etc/systemd/system/
echo "файл перенесен"
ssh root@$host_ip 'systemctl daemon-reload; systemctl enable node_exporter; systemctl start node_exporter; systemctl status node_exporter'
 


 



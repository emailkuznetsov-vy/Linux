#!/bin/sh
# скрипт начальной настройки ВМ
host_ip='192.168.1.152'
echo $host_ip
sleep 1
ssh-copy-id root@$host_ip 
sleep 1
ssh root@$host_ip 'yum -y install wget'
ssh root@$host_ip 'yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm; yum-config-manager --enable remi-php73; yum -y install php php-common php-opcache php-mcrypt php-cli php-gd php-curl php-mysqlnd; php -v'
ssh root@$host_ip 'wget -P /var/www/html/ https://wordpress.org/latest.tar.gz; cd /var/www/html/; tar -xzvf latest.tar.gz; chown -R apache:apache /var/www/html/*'
scp /home/vladimir/education/git/wp-config.php root@$host_ip:/var/www/html/wordpress/
#пароли для wordpress
#Z!xf8TnXbE0pEUbphX
#Vova/Bq!a6BL1mxcb0GmxbnhNaKQP




 



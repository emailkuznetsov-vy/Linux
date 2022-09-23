#!/bin/sh
# скрипт начальной настройки ВМ
host_ip='192.168.1.156'
echo $host_ip
sleep 1
scp /home/vladimir/education/distr/mysql80-community-release-el7-7.noarch.rpm root@$host_ip:/root/ 
ssh root@$host_ip 'rpm -Uvh mysql80-community-release-el7-7.noarch.rpm; yum -y install mysql-community-server; systemctl start mysqld; systemctl enable mysqld; systemctl status mysqld'
# подключаемся к ВМ на которой установлен MYSQL
# ищем первоначальный пдля root@localhost c помощью команды
#grep 'temporary password' /var/log/mysqld.log
#заходим в mysql c первоначальным паролем
#mysql -uroot -p
#меняем пароль на 'Testpass1$'
#ALTER USER 'root'@'localhost' IDENTIFIED WITH 'caching_sha2_password' BY 'Testpass1$';

#Для установки wordpress
#$ mysql -u adminusername -p
#create database wordpress;
#create user wordpressuser@'%' identified with 'mysql_native_password' by 'Testpass1$';
#grant all privileges on wordpress.* TO wordpressuser@'%';
#flush privileges;

#create user wordpressuser1@'%' identified with 'caching_sha2_password' by 'Testpass1$';
#grant all privileges on wordpress.* TO wordpressuser1@'%';
#flush privileges;

 


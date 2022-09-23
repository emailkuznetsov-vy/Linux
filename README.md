Схема проекта в файле project.pdf

Внести изменения в файл сетевых настроек задать статический адрес
#/etc/sysconfig/network-screpts/ifcfg-enp0s3
# The hostonly network
#  BOOTPROTO=static     - меняем с dhcp на static
# ONBOOT=yes
  IPADDR=192.168.1.152
  NETMASK=255.255.255.0
  GATEWAY=192.168.1.1
  DNS1=192.168.1.1

Описание файлов
1. start.sh - файл устанавливает первоначальные настройки ВМ:
  - устанавливае и запускает chronyd сервис синхронизации времени.
  - устанавливает node_exporter
  - останавливает firewalld и selinux
2. nginx.sh - устанавливает сервис nginx с нужной конфигурацией
3. apache.sh - устанавливает сервис httpd c нужной конфигурацией сервера wordpress
4. cmdwordpress.sh -устанавливает ПО WordPress
5. mysql.sh - устанавливает сервис myslqd
6. docker.sh - устанавливает docker и сервисы работающие под его управлением
  -grafana - prometheus

Wordpress устанавливаем на сервер с Apache1, там же ставим mysql (source). 
WORDPRESS
http://192.168.1.152:8080/wp-admin/


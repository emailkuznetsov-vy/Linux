#Внести изменения в файл сетевых настроек задать статический адрес
#/etc/sysconfig/network-screpts/ifcfg-enp0s3
# The hostonly network
#  BOOTPROTO=static     - меняем с dhcp на static
# ONBOOT=yes
  IPADDR=192.168.1.152
  NETMASK=255.255.255.0
  GATEWAY=192.168.1.1
  DNS1=192.168.1.1

#Проверка времени 

# Linux-Adm
# Два файла для начальной загрузки ВМ
#chrony.conf и ntp.sh
запускам из консоли файл start.sh, указать адрес настраиваемой машины.
- запуск сервиса chronyd для актуализации времени ВМ (для этого есть файл chrony.conf), на ВМ устанавливается node_exporter
запускаем docker.sh для настройки ВМ мониторинг - графана - prometheus (для этого есть файл prometheus.yml)
запускаем nginx.sh для настройки ВМ nginx

Wordpress устанавливаем на сервер с Apache1, там же ставим mysql (source). 
WORDPRESS
http://192.168.1.152:8080/wp-admin/


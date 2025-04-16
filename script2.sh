
#!/bin/bash

echo "Atualizando o servidor..."
apt-get update -y
apt-get upgrade -y

apt-get install apache2 -y

apt-get install unzip -y

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -O /tmp/linux-site-dio.zip

unzip /tmp/linux-site-dio.zip -d /tmp/

cp -r /tmp/linux-site-dio-main/* /var/www/html/

chown -R www-data:www-data /var/www/html/

systemctl restart apache2

echo "Script concluído com sucesso!"

#!/bin/bash

echo 'Autor Geraldo Alves'

# Instalação das dependências do Nextcloud (Apache, PHP, etc)
sudo apt install -y apache2 mariadb-server libapache2-mod-php php-mysql php-xml php-gd php-mbstring

# Download e instalação do Nextcloud
wget https://download.nextcloud.com/server/releases/latest.tar.bz2
tar -xjf latest.tar.bz2
sudo mv nextcloud /var/www/
sudo chown -R www-data:www-data /var/www/nextcloud

# Configuração do banco de dados para o Nextcloud
sudo mysql -e "CREATE DATABASE nextcloud;"
sudo mysql -e "GRANT ALL PRIVILEGES ON nextcloud.* TO 'nextcloud'@'localhost' IDENTIFIED BY '1234';"
sudo mysql -e "FLUSH PRIVILEGES"

# Configuração do Apache para o Nextcloud
sudo a2enmod rewrite
sudo a2enmod headers
sudo a2enmod env
sudo a2enmod dir
sudo a2enmod mime
sudo systemctl restart apache2

echo "Nextcloud instalado e configurado com sucesso!"

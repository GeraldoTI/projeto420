#!/bin/bash

echo 'Autor Geraldo Alves'

# Instalação do banco de dados (utilizando o MySQL como exemplo)
sudo apt install -y mysql-server

# Configuração do banco de dados (senha 1234 e usuário admin)
sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234';"
sudo mysql -e "CREATE USER 'admin'@'localhost' IDENTIFIED BY '1234';"
sudo mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;"
sudo mysql -e "FLUSH PRIVILEGES"

echo "Banco de dados instalado e configurado com sucesso!"

#!/bin/bash

# Instalação do PHP e dependências
sudo apt-get update
sudo apt-get install -y php php-cli php-fpm php-mysql php-curl php-gd php-intl php-mbstring php-soap php-xml php-zip

# Instalação do Java SDK
sudo apt-get install -y default-jdk

echo "PHP completo e Java SDK instalados com sucesso!"

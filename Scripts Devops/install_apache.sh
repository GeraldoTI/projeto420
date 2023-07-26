#!/bin/bash

# Instalação do Apache
sudo apt-get update
sudo apt-get install -y apache2

# Inicia o Apache e habilita para iniciar na inicialização do sistema
sudo systemctl start apache2
sudo systemctl enable apache2

echo "Apache instalado com sucesso!"

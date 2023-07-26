#!/bin/bash

echo 'Autor Geraldo Alves'

# Instalação do Cockpit
sudo apt install -y cockpit

# Habilita o serviço e a porta no firewall
sudo systemctl enable --now cockpit.socket
sudo ufw allow 9090

echo "Cockpit instalado e configurado com sucesso!"

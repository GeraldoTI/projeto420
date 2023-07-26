#!/bin/bash

echo 'Autor Geraldo Alves'

# Instalação do Netdata
bash <(curl -Ss https://my-netdata.io/kickstart.sh) --dont-wait --auto-update

# Configuração para a porta 19999
sudo ufw allow 19999

# Habilita o reinício do Netdata
sudo systemctl enable netdata

echo "Netdata instalado e configurado com sucesso!"

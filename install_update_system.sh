#!/bin/bash

echo 'Autor Geraldo Alves'

# Atualiza o sistema
sudo apt update
sudo apt upgrade -y

# Instala ferramentas básicas de rede
sudo apt install -y net-tools iputils-ping

echo "Etapa de atualização e instalação de ferramentas concluída!"

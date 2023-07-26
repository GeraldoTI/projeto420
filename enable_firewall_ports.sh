#!/bin/bash

# Atualiza a lista de pacotes
sudo apt-get update

# Instala o ufw (caso ainda não esteja instalado)
sudo apt-get install -y ufw

# Habilita o firewall
sudo ufw enable

# Habilita as portas desejadas (substitua as portas pelos valores corretos)
sudo ufw allow 22/tcp  # Exemplo: habilita a porta SSH (22/tcp)
sudo ufw allow 80/tcp  # Exemplo: habilita a porta HTTP (80/tcp)
sudo ufw allow 443/tcp # Exemplo: habilita a porta HTTPS (443/tcp)
sudo ufw allow 9090/tcp  # Exemplo: habilita a porta do Prometheus (9090/tcp)
sudo ufw allow 9091/tcp  # Exemplo: habilita a porta do Prometheus (9091/tcp)

# Exibe o status do firewall
sudo ufw status verbose

echo "Portas do firewall habilitadas com sucesso!"

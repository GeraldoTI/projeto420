#!/bin/bash

# Limpa as regras existentes
sudo iptables -F

# Define a política padrão para DROP (bloquear tráfego não especificado)
sudo iptables -P INPUT DROP
sudo iptables -P FORWARD DROP
sudo iptables -P OUTPUT ACCEPT

# Permite tráfego loopback
sudo iptables -A INPUT -i lo -j ACCEPT
sudo iptables -A OUTPUT -o lo -j ACCEPT

# Permite o tráfego nas portas SSH, HTTP, HTTPS, Prometheus e Grafana
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 443 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 9090 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 9091 -j ACCEPT

# Salva as regras
sudo iptables-save > /etc/iptables/rules.v4

echo "Configuração do iptables concluída. Lembre-se de reiniciar o serviço para aplicar as alterações."

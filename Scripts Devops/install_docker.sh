#!/bin/bash

echo 'Geraldo DevOps'

# Instalação do Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
sudo systemctl enable docker

# Instalação do Docker Compose
sudo apt install -y docker-compose

# Instalação do Docker Machine
base=https://github.com/docker/machine/releases/download/v0.16.0 &&
curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&
sudo mv /tmp/docker-machine /usr/local/bin/docker-machine &&
chmod +x /usr/local/bin/docker-machine

echo "Docker, Docker Compose e Docker Machine instalados com sucesso!"

#!/bin/bash

echo 'Geraldo Alves Analista DevOps'

# Instalação de dependências do MicroK8s
sudo apt-get update
sudo apt-get install -y snapd

# Instalação do MicroK8s
sudo snap install microk8s --classic

# Aguarda até que o MicroK8s esteja pronto
sudo microk8s status --wait-ready

# Habilita os recursos desejados do MicroK8s (por exemplo, DNS e storage)
sudo microk8s enable dns storage

# Configuração do acesso do usuário ao MicroK8s
sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube

# Cria um alias para o kubectl
echo "alias kubectl='microk8s kubectl'" >> ~/.bashrc

echo "MicroK8s instalado e configurado com sucesso!"

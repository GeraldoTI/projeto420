#!/bin/bash

# Instalação do OpenSSH Server
sudo apt-get update
sudo apt-get install -y openssh-server

# Verifica se o diretório .ssh existe no diretório home do usuário
if [ ! -d ~/.ssh ]; then
  mkdir ~/.ssh
fi

# Gera um par de chaves (chave pública e chave privada)
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -q -N ""

# Exibe a chave pública para que você possa copiá-la e adicioná-la ao servidor remoto
echo "Chave pública (copie essa chave e adicione ao servidor remoto):"
cat ~/.ssh/id_rsa.pub

# Define as permissões corretas nos arquivos e diretórios .ssh
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub

echo "Chaves SSH configuradas e OpenSSH Server instalado com sucesso!"

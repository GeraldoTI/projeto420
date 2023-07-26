#!/bin/bash

# Atualiza a lista de pacotes
sudo apt-get update

# Instala as dependências necessárias para compilar o Python
sudo apt-get install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev

# Baixa a versão desejada do Python (3.9.7 neste caso, mas você pode alterar a versão)
wget https://www.python.org/ftp/python/3.9.7/Python-3.9.7.tgz
tar -xf Python-3.9.7.tgz
cd Python-3.9.7

# Configuração, compilação e instalação do Python
./configure --enable-optimizations
make -j $(nproc)
sudo make altinstall

# Limpa os arquivos temporários
cd ..
rm -rf Python-3.9.7 Python-3.9.7.tgz

echo "Python 3.9 instalado com sucesso!"

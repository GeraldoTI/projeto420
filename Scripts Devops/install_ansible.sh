#!/bin/bash

# Adiciona o repositório do Ansible e atualiza a lista de pacotes
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible

# Instalação do Ansible
sudo apt-get install -y ansible

echo "Ansible completo instalado com sucesso!"

#########################################################################################
#Lembre-se de tornar o script executável usando o comando 
#chmod +x install_ansible.sh antes de executá-lo. 
#Você pode executar este script com permissões de 
#administrador (root) ou utilizando o comando sudo.
#O script adiciona o repositório oficial do Ansible e, em s
#eguida, instala o Ansible completo a partir dos repositórios do sistema.
#O Ansible é uma ferramenta poderosa para automação de configurações e 
#gerenciamento de infraestrutura. Verifique a documentação 
#oficial do Ansible para aprender como usá-lo e 
#tirar o máximo proveito dessa ferramenta: https://docs.ansible.com/.
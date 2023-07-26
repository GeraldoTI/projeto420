#!/bin/bash

# Verifica se o Prometheus já está instalado
if command -v prometheus &>/dev/null; then
  echo "O Prometheus já está instalado no sistema."
  exit 0
fi

# Baixa a versão desejada do Prometheus (por exemplo, a versão 2.33.1)
PROMETHEUS_VERSION=2.33.1
wget https://github.com/prometheus/prometheus/releases/download/v${PROMETHEUS_VERSION}/prometheus-${PROMETHEUS_VERSION}.linux-amd64.tar.gz

# Extrai o arquivo
tar xzf prometheus-${PROMETHEUS_VERSION}.linux-amd64.tar.gz
cd prometheus-${PROMETHEUS_VERSION}.linux-amd64

# Move os arquivos para o diretório desejado (por exemplo, /usr/local/bin)
sudo mv prometheus promtool /usr/local/bin/

# Cria um usuário para o Prometheus
sudo useradd -M -r -s /bin/false prometheus

# Cria um diretório para armazenar os dados do Prometheus
sudo mkdir /var/lib/prometheus
sudo chown prometheus:prometheus /var/lib/prometheus

# Cria um diretório para armazenar as configurações do Prometheus
sudo mkdir /etc/prometheus

# Move os arquivos de configuração para o diretório adequado
sudo mv prometheus.yml /etc/prometheus/

# Define as permissões corretas nos arquivos e diretórios
sudo chown prometheus:prometheus /etc/prometheus/prometheus.yml
sudo chown -R prometheus:prometheus /usr/local/bin/prometheus-${PROMETHEUS_VERSION}.linux-amd64

# Atualiza a porta para 9091 no arquivo de configuração
sudo sed -i 's/:9090/:9091/g' /etc/prometheus/prometheus.yml

# Cria um arquivo de serviço do Prometheus
cat << EOF | sudo tee /etc/systemd/system/prometheus.service
[Unit]
Description=Prometheus
Wants=network-online.target
After=network-online.target

[Service]
User=prometheus
Group=prometheus
Type=simple
ExecStart=/usr/local/bin/prometheus \
  --config.file /etc/prometheus/prometheus.yml \
  --storage.tsdb.path /var/lib/prometheus \
  --web.listen-address 0.0.0.0:9091

[Install]
WantedBy=multi-user.target
EOF

# Recarrega o daemon do systemd para reconhecer o novo serviço
sudo systemctl daemon-reload

# Inicia o serviço do Prometheus e o habilita para ser iniciado na inicialização do sistema
sudo systemctl start prometheus
sudo systemctl enable prometheus

# Limpa os arquivos temporários
cd ..
rm -rf prometheus-${PROMETHEUS_VERSION}.linux-amd64*

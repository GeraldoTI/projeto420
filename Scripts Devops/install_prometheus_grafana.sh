#!/bin/bash

# Criação dos arquivos de configuração
cat << EOF > prometheus.yml
global:
  scrape_interval: 15s

scrape_configs:
  - job_name: "prometheus"
    static_configs:
      - targets: ["localhost:9090"]
EOF

cat << EOF > docker-compose.yml
version: "3.8"
services:
  prometheus:
    image: prom/prometheus
    container_name: prometheus
    volumes:
      - ./prometheus.yml:/etc/prometheus/prometheus.yml
    command:
      - "--config.file=/etc/prometheus/prometheus.yml"
    ports:
      - "9090:9090"
    restart: always

  grafana:
    image: grafana/grafana
    container_name: grafana
    ports:
      - "9091:3000"  # Alterado a porta para 9091
    restart: always
EOF

# Instalação do Docker e Docker Compose (caso não estejam instalados)
# Coloque aqui os comandos para instalar o Docker e Docker Compose no seu sistema, caso ainda não estejam instalados.
# Por exemplo, no Ubuntu: 
# sudo apt-get update
# sudo apt-get install -y docker.io
# sudo systemctl enable --now docker
# sudo apt-get install -y docker-compose

# Execução do Docker Compose
sudo docker-compose up -d

echo "Prometheus e Grafana foram instalados e estão rodando em segundo plano!"

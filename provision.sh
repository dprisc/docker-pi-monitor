#!/bin/bash
#Install docker
sudo apt-get install -y docker

#navigate to dirs and deploy containers
cd ~/monitoring/node-exporter

sudo docker run -d \
--name="node-exporter" \
--net="host" \
--pid="host" \
-v "/:/host:ro,rslave" \
--restart=always \
quay.io/prometheus/node-exporter:latest --path.rootfs=/host

cd ~/monitoring/prometheus
sudo docker run -d \
--name prometheus \
-p 9080:9090 \
-v /home/$install_user/monitoring/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml \
--restart always \
prom/prometheus \
--config.file=/etc/prometheus/prometheus.yml

cd ~/monitoring/grafana
sudo docker run -d \
--name=grafana \
-p 9003:3000 \
--restart=always \
grafana/grafana

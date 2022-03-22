# Docker Pi Monitoring stack
Node-exporter, Prometheus & Grafana docker monitoring stack for Raspberry Pi

This is a very simple monitoring stack you can deploy to check on your pi stats & health.
This setup utilizes Node-exporter on port 9100, Prometheus on port 9080 and Grafana on port 9003, you're welcome to set it up however you see fit.

Install it with:

git clone https://github.com/dprisc/docker-pi-monitor.git

Added a forked grafana dashboard made to work with Raspberry Pi boards from https://grafana.com/grafana/dashboards/1860

Currently, you'll need to update the IPs and ports manually in the prometheus.yml and provision.sh script, this is only temporary and will be updated in the future.

If you have any suggestions feel free to reach out!

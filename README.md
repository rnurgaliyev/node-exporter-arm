# Prometheus Node Exporter for ARM hosts

Containerized prometheus exporter for hardware and OS metrics on ARM hosts.

```
docker run -dt -p 9100:9100/tcp --name node-exporter-arm --restart unless-stopped imple/node-exporter-arm:latest
```

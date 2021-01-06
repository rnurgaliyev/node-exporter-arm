# Prometheus Node Exporter for ARM hosts

Containerized prometheus exporter for hardware and OS metrics on ARM hosts.

```
docker run -dt -v /:/hostfs --net=host --name node-exporter-arm --restart unless-stopped imple/node-exporter-arm:latest --path.rootfs=/hostfs
```

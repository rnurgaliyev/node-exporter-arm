FROM arm32v7/alpine:latest

ARG VERSION=1.7.0

RUN apk --no-cache add --virtual deps wget ca-certificates && \
    wget -O /tmp/node_exporter.tar.gz https://github.com/prometheus/node_exporter/releases/download/v$VERSION/node_exporter-$VERSION.linux-armv7.tar.gz && \
    apk del deps && \
    cd /bin && \
    tar --strip-components=1 -xzf /tmp/node_exporter.tar.gz node_exporter-$VERSION.linux-armv7/node_exporter && \
    rm /tmp/node_exporter.tar.gz

EXPOSE 9100
ENTRYPOINT [ "/bin/node_exporter" ]

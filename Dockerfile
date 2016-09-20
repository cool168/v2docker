FROM ubuntu:16.04

RUN apt-get update &&DEBIAN_FRONTEND=noninteractive apt-get install -y \
        curl \
        supervisor \
    && curl -L -s https://raw.githubusercontent.com/v2ray/v2ray-core/master/release/install-release.sh | bash \
    && mv /etc/v2ray/config.json /etc/v2ray/config.json.bak \
    && rm -rf /var/lib/apt/lists/*

COPY init.sh /init.sh
COPY client-config.json /etc/v2ray/client-config.json
COPY supervisord.conf /etc/supervisor/
COPY services.conf /etc/supervisor/conf.d/
RUN chmod +x /init.sh
#EXPOSE 1080

ENTRYPOINT ["/init.sh"]

FROM jeedom/jeedom:latest
RUN apt-get update -y && \
    apt-get install -y \
    net-tools tcpdump certbot python-certbot-apache && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
CMD ["sh", "/root/init.sh"]

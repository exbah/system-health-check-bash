FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    bash \
    procps \
    iproute2 \
    iputils-ping \
    curl \
    && rm -rf /var/lib/apt/lists/*

COPY systemcheck.sh /usr/local/bin/systemcheck.sh

RUN chmod +x /usr/local/bin/systemcheck.sh

CMD ["/usr/local/bin/systemcheck.sh"]

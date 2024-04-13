FROM debian:12.5

LABEL maintainer="AllThingsNix Docker Maintainers <allthingsnix.org@gmail.com>" \
      vendor="AllThingsNix" \
      org.opencontainers.image.authors="AllThingsNix Docker Maintainers <allthingsnix.org@gmail.com>" \
      org.opencontainers.image.description="Base Docker image used by AllThingsNix to build other Docker Images from" \
      org.opencontainers.image.vendor="AllThingsNix" \
      org.opencontainers.image.title="allthingsnix/docker-base-image" \
      org.opencontainers.image.license="GPL-3.0"

ENV TERM="xterm" \
    LANG="C.UTF-8" \
    LC_ALL="C.UTF-8"

COPY entrypoint.sh /usr/bin/

RUN apt update && \
    apt dist-upgrade -y && \
    apt install -y git vim net-tools && \
    mkdir /config && \
    chmod 774 /config && \
    chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["/bin/bash", "-c",  "/usr/bin/entrypoint.sh"]


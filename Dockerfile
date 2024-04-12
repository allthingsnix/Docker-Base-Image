FROM debian:12.5

LABEL maintainer="AllThingsNix Docker Maintainers <allthingsnix.org@gmail.com>"

RUN apt update && \
    apt dist-upgrade -y && \
    apt install -y git vim net-tools



FROM debian:12.5

RUN apt update && \
    apt dist-upgrade -y && \
    apt install -y git vim net-tools



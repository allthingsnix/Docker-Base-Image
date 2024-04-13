FROM debian:12.5

LABEL maintainer="AllThingsNix Docker Maintainers <allthingsnix.org@gmail.com>" \
      vendor="AllThingsNix"

ENV TERM="xterm" \
    LANG="C.UTF-8" \
    LC_ALL="C.UTF-8"

RUN apt update && \
    apt dist-upgrade -y && \
    apt install -y git vim net-tools && \
    mkdir /config && \
    chmod 774 /config

ENTRYPOINT ["/entrypoint"]
CMD ["supervisord"]


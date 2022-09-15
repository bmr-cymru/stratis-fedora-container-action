FROM fedora:36

RUN dnf -y install bash

COPY entrypoint.sh /entrypoint.sh

VOLUME /github/workspace
VOLUME /github/workflow

ENTRYPOINT ["/entrypoint.sh"]

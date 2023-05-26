FROM ghcr.io/rollkit/gm:v0.1.0

USER root

# hadolint ignore=DL3018
RUN apk --no-cache add \
        curl \
        jq

COPY split.setup.sh /home/setup.sh
COPY split.entrypoint.sh /home/entrypoint.sh

USER rollkit

VOLUME [ "/home/rollkit/.gm" ]

RUN /bin/sh /home/setup.sh

ENTRYPOINT [ "/bin/sh", "/home/entrypoint.sh" ]

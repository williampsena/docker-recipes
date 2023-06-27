FROM bitnami/rabbitmq:latest as base

USER root

RUN apt update && apt install -y netcat

RUN apt-get clean autoclean && \
    apt-get autoremove --yes && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

FROM base as run

USER 1001

ENV RABBITMQ_NODE_PORT_NUMBER=5672
ENV RABBITMQ_MANAGEMENT_PORT_NUMBER=8080

HEALTHCHECK --interval=3s --timeout=3s --start-period=10s --retries=10 \
  CMD curl --fail http://localhost:$RABBITMQ_MANAGEMENT_PORT_NUMBER && \
      nc -z -v localhost $RABBITMQ_NODE_PORT_NUMBER
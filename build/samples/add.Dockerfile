FROM alpine:3.17

WORKDIR /app

ADD ./assets/tools.tar.gz /app

RUN chmod +x /app/assets.sh

ENTRYPOINT ["/app/assets.sh"]
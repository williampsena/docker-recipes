FROM alpine:3.17

WORKDIR /app

ADD https://github.com/williampsena/docker-recipes/raw/main/build/samples/assets/tools.tar.gz /app

RUN tar -xf tools.tar.gz

RUN chmod +x /app/assets.sh

ENTRYPOINT ["/app/assets.sh"]
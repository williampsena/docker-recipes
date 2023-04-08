FROM alpine:3.17

LABEL author="willsena.dev"
LABEL version="3.17-custom"
LABEL description="This image contains alpine 3.17 \
with some extra packages."

RUN apk add curl wget

ENTRYPOINT ["/bin/sh"]
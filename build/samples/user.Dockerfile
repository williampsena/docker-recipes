FROM alpine:3.17

WORKDIR /app

USER root

RUN apk add curl

RUN adduser -D foo

USER foo

ENTRYPOINT ["whoami"]
FROM alpine:3.17 as base

WORKDIR /app

FROM alpine:3.17 as super_secret

RUN echo "you_should_not_use_secrets_here" > /secret.txt

FROM base as app

COPY --from=super_secret /secret.txt /app/secret.txt

COPY ./assets/hello.txt /app/hello.txt

COPY ./tools /app

RUN chmod +x /app/info.sh

ENTRYPOINT ["/app/info.sh"]
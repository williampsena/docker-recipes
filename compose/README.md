# Compose commands and scenarios

> You must execute commands in the root repository directory.

## Build instructions

```shell
docker compose --verbose -f compose/00-build-docker-compose.yml up
docker images test-build-label
docker images test-build-busybox
docker images test-build-args
docker image inspect --format '{{ index .Config.Labels }}' test-build-label
```

## Set environment variables

```shell
docker compose --verbose -f compose/01-env-docker-compose up | grep SOME_ENV
```

## Replaces the entrypoint

```shell
docker compose --verbose -f compose/02-entrypoint-docker-compose.yml up
```

## Root and non-root container

```shell
docker compose --verbose -f compose/03-user-docker-compose.yml up
```

## Port binding

```shell
docker compose --verbose -f compose/04-expose-docker-compose.yml up -d
curl http://localhost:8080
curl http://localhost:8081
```

## Configure health check

```shell
docker compose --verbose -f compose/05-healthcheck-docker-compose.yml up -d
docker compose --verbose -f compose/05-healthcheck-docker-compose.yml ps
```
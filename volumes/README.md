# Building

> Always build the docker compose file from the root directory.

```shell
UID=${UID} GID=${GID}  docker-compose -f volumes/docker-compose.shared-with-host-non-root.yml up --build
```

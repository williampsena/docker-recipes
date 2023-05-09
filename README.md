# About

This repository contains Docker examples such as network, volumes, environment variables, swarm, and other features.

# How to build the docker compose file?

Always build the docker compose file from the root directory, for example:

```shell
docker-compose -f volumes/docker.compose.shared-with-host-non-root.yml up -d --build
```

# Shared directory

This directory is used to transfer files between docker containers and hosts; your current user should be the directory owner.

# Sections

- [Docker build samples](build/README.md)

# Related articles

 - [Handling Docker Volumes Permissions without root privilege](https://willsena.dev/handling-docker-volumes-permissions-without-root-privilege/)
 - [Understanding load balancers through practical examples](https://willsena.dev/understanding-load-balancers-through-practical-examples/)
 - [Building a Squid Proxy Container to test NPM with HTTP Proxy](https://willsena.dev/building-a-squid-proxy-container-to-test-npm-with-http-proxy/)

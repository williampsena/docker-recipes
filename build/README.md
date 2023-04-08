# How can I build and run Docker samples?

> You must execute commands in the root repository directory.

- LABEL

```shell
docker build -t alpine-test -f build/samples/label.Dockerfile . 
docker inspect alpine-test | grep -A 10 Labels 
```

- RUN 

```shell
docker build -t ubuntu-test -f build/samples/run.Dockerfile . 
docker run -it --rm ubuntu-test
```

- CMD 

```shell
docker build -t ubuntu-test -f build/samples/cmd.Dockerfile . 
docker run -it --rm ubuntu-test
```

- ENTRYPOINT

```shell
docker build -t busybox-test -f build/samples/entrypoint.Dockerfile .
docker run --rm busybox-test
```

- ARGS

```shell
docker build  --build-arg VERSION=edge -t alpine-test -f build/samples/args.Dockerfile . 
docker run -it --rm alpine-test
```

- ENV

```shell
docker build -t alpine-test -f build/samples/env.Dockerfile .
docker run --env HTTP_AGENT="Custom Http Agent" -it --rm alpine-test
```

- WOKRDIR

```shell
docker build -t alpine-test -f build/samples/workdir.Dockerfile . 
docker run -it --rm alpine-test cat /app/foo.txt
```

- COPY

```shell
docker build -t alpine-test -f build/samples/copy.Dockerfile build/samples 
docker run -it --rm alpine-test
```

- ADD

```shell
docker build -t alpine-test -f build/samples/add.Dockerfile build/samples
docker run -it --rm alpine-test

docker build -t alpine-test -f build/samples/add.remote.Dockerfile build/samples
docker run -it --rm alpine-test
```

- USER

```shell
docker build -t alpine-test -f build/samples/user.Dockerfile .
docker run -it --rm alpine-test
```

- EXPOSE

```shell
docker build -t whoami -f build/samples/expose.Dockerfile . 
docker run --rm -p 8081:8081 whoami
```

- VOLUME

```shell
docker build -t busybox-test -f build/samples/volume.Dockerfile .
docker run --rm -v /tmp/shared:/shared busybox-test
```

- HEALTHCHECK

```shell
docker build -t redis-test -f build/samples/healthcheck.Dockerfile .
docker run --rm -d --name redis-test redis-test
docker ps --filter name=redis-test
```
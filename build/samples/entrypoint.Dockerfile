FROM busybox as base

ENTRYPOINT ["bin/sh"]

FROM base as final

CMD ["-c", "echo hello_entrypoint"]
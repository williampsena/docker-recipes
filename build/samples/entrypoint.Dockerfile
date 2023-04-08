FROM busybox

ENTRYPOINT ["bin/sh"]

FROM base as final

CMD ["-c", "echo hello_entrypoint"]
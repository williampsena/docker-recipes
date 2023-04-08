FROM busybox

RUN mkdir -p /shared

VOLUME /shared

CMD ls -ltr /shared
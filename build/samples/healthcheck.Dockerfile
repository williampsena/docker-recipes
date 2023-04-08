FROM redis:latest

RUN printf "sleep 10\n" > /usr/local/bin/redis-server-delayed
RUN printf "redis-server" >> /usr/local/bin/redis-server-delayed

RUN chmod +x /usr/local/bin/redis-server-delayed

HEALTHCHECK --interval=10s --timeout=3s \
  CMD redis-cli ping | grep PONG

CMD ["redis-server-delayed"]
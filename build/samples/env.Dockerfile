FROM alpine:3.17

ENV HTTP_AGENT="Foo Alpine"

ENTRYPOINT ["env"]
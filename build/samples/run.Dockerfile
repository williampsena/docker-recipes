FROM ubuntu:22.10

RUN mkdir /tmp/files

RUN touch /tmp/files/foo.txt

RUN echo $HOME

ENTRYPOINT ["/bin/sh"]
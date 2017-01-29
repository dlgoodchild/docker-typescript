FROM alpine:latest

MAINTAINER dlgoodchild <me@davegoodchild.co.uk>

RUN apk --update add nodejs curl tar \
  && npm install typescript -g \
  && npm install tsd -g \
  && npm install http-server -g \
  && mkdir -p /home/dev/workspace

WORKDIR /home/dev/workspace

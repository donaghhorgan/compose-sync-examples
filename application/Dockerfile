FROM alpine:3.3
MAINTAINER Donagh Horgan <donagh.horgan@gmail.com>

RUN apk --no-cache add postgresql-client

WORKDIR /usr/local/bin
COPY wrapper.sh ./
RUN chmod +x wrapper.sh
ENTRYPOINT ["/usr/local/bin/wrapper.sh"]

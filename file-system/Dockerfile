FROM nginx:1.10.0-alpine
MAINTAINER Donagh Horgan <donagh.horgan@gmail.com>

RUN apk --no-cache add inotify-tools

WORKDIR /usr/local/bin
COPY wrapper.sh ./
RUN chmod +x wrapper.sh
ENTRYPOINT ["/usr/local/bin/wrapper.sh"]

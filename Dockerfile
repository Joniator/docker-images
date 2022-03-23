FROM alpine:edge

LABEL maintainer="Jonatha Boeckel <jonnyb@jonnyb.name>"

WORKDIR /mount

RUN apk add --no-cache --upgrade \
    vim
     
ENTRYPOINT [ "/usr/bin/vim", "/mount" ] 
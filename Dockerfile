FROM alpine:edge

LABEL maintainer="jonnyb@jonnyb.name"

RUN apk add --no-cache --upgrade ansible openssh openssl curl

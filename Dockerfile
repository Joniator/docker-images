FROM python:alpine

LABEL maintainer="jonnyb@jonnyb.name"

RUN apk add --no-cache --upgrade ansible openssl
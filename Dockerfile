FROM python:alpine

LABEL maintainer="jonnyb@jonnyb.name"

RUN apk add --no-cache --upgrade gcc openssl musl-dev libffi-dev && \
    pip install ansible
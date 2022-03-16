FROM python:alpine

LABEL maintainer="jonnyb@jonnyb.name"

RUN apk --no-cache --upgrade \
    gcc openssl musl-dev libffi-dev && \
    pip install ansible
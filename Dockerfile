FROM alpine:edge as BUILD

WORKDIR /go/src

RUN apk add --no-cache --upgrade \
    git \
    go
RUN git clone https://github.com/leonwind/cli2cloud.git .
WORKDIR /go/src/service

RUN git fetch --tags && \
    latestTag=$(git describe --tags `git rev-list --tags --max-count=1`) && \
    git checkout $latestTag && \
    echo "::set-output name=version::$latestTag"

RUN go mod download 
RUN go build -o /go/bin/cli2cloud

FROM alpine:edge

LABEL maintainer="Jonatha Boeckel <jonnyb@jonnyb.name>"

COPY --from=BUILD /go/bin/cli2cloud /usr/bin/cli2cloud
COPY --from=BUILD /go/src/service/config.yaml /config/config.yaml

WORKDIR /config
EXPOSE 50051

ENTRYPOINT [ "/usr/bin/cli2cloud" ]

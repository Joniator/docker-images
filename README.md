# joniator/cli2cloud

[![Build status](https://img.shields.io/github/workflow/status/Joniator/docker-images/Docker/cli2cloud)](https://github.com/Joniator/docker-images/actions/workflows/docker-publish.yml) 
[![DockerHub Pulls](https://img.shields.io/docker/pulls/joniator/cli2cloud)](https://hub.docker.com/r/joniator/cli2cloud)
![Docker Image Version](https://img.shields.io/docker/v/joniator/cli2cloud)

[Docker-Hub](https://hub.docker.com/r/joniator/cli2cloud)

## Usage
Builds https://github.com/leonwind/cli2cloud from source and packages it into a slim alpine image.
Config can be mounted to /config/config.yaml, see [here](https://github.com/leonwind/cli2cloud/blob/master/service/config.yaml).

Latest: 
* GHCR: `ghcr.io/joniator/cli2cloud:latest` 
* Docker-Hub: `joniator/cli2cloud:latest`

For cli2cloud version ([list of tags here](https://github.com/Joniator/docker-images/pkgs/container/cli2cloud))
* GHCR: `ghcr.io/joniator/cli2cloud:vx.x.x` 
* Docker-Hub: `joniator/cli2cloud:vx.x.x`

## Included:

### Base Image
* alpine:edge

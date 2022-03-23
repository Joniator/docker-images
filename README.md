# joniator/vim

[![Build status](https://img.shields.io/github/workflow/status/Joniator/docker-images/Docker/vim)](https://github.com/Joniator/docker-images/actions/workflows/docker-publish.yml) 
[![DockerHub Pulls](https://img.shields.io/docker/pulls/joniator/vim)](https://hub.docker.com/r/joniator/vim)
![Docker Image Version](https://img.shields.io/docker/v/joniator/vim)

[Docker-Hub](https://hub.docker.com/r/joniator/vim)

## Usage
This image is meant to easily edit files in docker volumes. It provides a current version of vim, based on alpine:edge.

I recommend to wrap in in a function in your .bashrc (or similiar)-File:

``` sh
#######################################
# Open a docker volume or path in a containerized vim.
# Globals:
#   DVIM_IMAGE: Name of the image/repo, Default ghcr
#   DVIM_VERSION: Version/tag of the docker image, Default latest
# Arguments:
#   The docker volume name, file system path. Defaults to current directory.
# Example usage:
#   Open folder browser for docker volume "http_data":
#     dvim http_data
#   Open current directory:
#     dvim
#   Open /var/log from the host:
#     dvim /var/log
#######################################
function dvim { 
    IMAGE=${DVIM_IMAGE:-ghcr.io/joniator/vim}
    VERSION=${DVIM_VERSION:-latest}
    WORKDIR=${1:-"$PWD"}
    docker run -it --rm -v "$WORKDIR:/mount" $IMAGE:$VERSION
}
```

Latest: 
* GHCR: `ghcr.io/joniator/vim:latest` 
* Docker-Hub: `joniator/vim:latest`

For vim version ([list of tags here](https://github.com/Joniator/docker-images/pkgs/container/vim))
* GHCR: `ghcr.io/joniator/vim:vx.x.x` 
* Docker-Hub: `joniator/vim:vx.x.x`

## Included:

### Base Image
* alpine:edge

### Packages
* vim

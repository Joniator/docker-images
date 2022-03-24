# joniator/vim

[![Build status](https://img.shields.io/github/workflow/status/Joniator/docker-images/Docker/vim)](https://github.com/Joniator/docker-images/actions/workflows/docker-publish.yml) 
[![DockerHub Pulls](https://img.shields.io/docker/pulls/joniator/vim)](https://hub.docker.com/r/joniator/vim)
![Docker Image Version](https://img.shields.io/docker/v/joniator/vim)

[Docker-Hub](https://hub.docker.com/r/joniator/vim)

## Usage
This image is meant to easily edit files in docker volumes. It provides a current version of vim, based on alpine:edge.

You can add the script to your path for easy access:

`curl https://raw.githubusercontent.com/Joniator/docker-images/vim/dvim.sh > /usr/local/bin/dvim`

Latest: 
* GHCR: `ghcr.io/joniator/vim:latest` 
* Docker-Hub: `joniator/vim:latest`

For vim version ([list of tags here](https://github.com/Joniator/docker-images/pkgs/container/vim))
* GHCR: `ghcr.io/joniator/vim:vx.x`, `ghcr.io/joniator/vim:vx.x`
* Docker-Hub: `joniator/vim:vx`, `joniator/vim:vx`

## Included:

### Base Image
* alpine:edge

### Packages
* vim

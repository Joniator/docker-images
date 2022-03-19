# joniator/code-server

[![Build status](https://img.shields.io/github/workflow/status/Joniator/docker-images/Docker/code-server)](https://github.com/Joniator/docker-images/actions/workflows/docker-publish.yml) 
[![DockerHub Pulls](https://img.shields.io/docker/pulls/joniator/code-server)](https://hub.docker.com/r/joniator/code-server)
![Docker Image Version](https://img.shields.io/docker/v/joniator/code-server)

[Docker-Hub](https://hub.docker.com/r/joniator/code-server)

## Usage
Code-Server image based on latest [linuxserver/code-server](https://github.com/linuxserver/docker-code-server) with some custom packages. This could be solved with mods, but they significantly increase the startup time.

Latest: 
* GHCR: `ghcr.io/joniator/code-server:latest` 
* Docker-Hub: `joniator/code-server:latest`

For code-server version ([list of tags here](https://github.com/Joniator/docker-images/pkgs/container/code-server))
* GHCR: `ghcr.io/joniator/code-server:vx.x.x` 
* Docker-Hub: `joniator/code-server:vx.x.x`

## Included:

### Base Image
* [linuxserver/code-server](https://github.com/linuxserver/docker-code-server)

### Packages
* ansible
* java-17-amazon-corretto-jdk
* shellcheck 
* software-properties-common 
* yadm 
* zsh

### Fonts
* [PowerlineSymbols 2.8.2](https://github.com/powerline/powerline)
* [Ubuntu Mono](https://fonts.google.com/specimen/Ubuntu+Mono)

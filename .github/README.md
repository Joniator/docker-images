# {{ title }}

[![Build status](https://img.shields.io/github/workflow/status/Joniator/docker-images/Docker/{{ name }})](https://github.com/Joniator/docker-ansible/actions/workflows/docker-publish.yml) 
[![DockerHub Pulls](https://img.shields.io/docker/pulls/{{ image_name }})](https://hub.docker.com/r/{{ image_name }})
![Docker Image Version](https://img.shields.io/docker/v/{{ image_name }})

[Docker-Hub](https://hub.docker.com/r/joniator/ansible)

## Usage
{{ description }}

Latest: 
* GHCR: `ghcr.io/{{ image_name }}:latest` 
* Docker-Hub: `{{ image_name }}:latest`

For ansible version ([list of tags here](https://github.com/Joniator/docker-images/pkgs/container/{{ name }}))
* GHCR: `ghcr.io/{{ image_name }}:vx.x.x` 
* Docker-Hub: `{{ image_name }}:vx.x.x`

# Included:

* alpine:edge
* ansible
* openssh
* openssl
* curl
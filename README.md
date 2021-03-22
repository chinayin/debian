# Debian Base Image

![GitHub Workflow Status](https://img.shields.io/github/workflow/status/chinayin-docker/debian/Docker%20Image%20CI)
![Docker Image Version (latest semver)](https://img.shields.io/docker/v/chinayin/debian?sort=semver)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/chinayin/debian?sort=semver)
![Docker Pulls](https://img.shields.io/docker/pulls/chinayin/debian)

A minimalist Debian-based image built specifically to be used as a base image for containers.

Debian is a Linux distribution that's composed entirely of free and open-source software.

# Use Debian

You can use the image directly, e.g.

```
docker run --rm -it chinayin/debian:buster-slim
```

The images are built daily and have the security release enabled, so will contain any security updates released more
than 24 hours ago.

You can also use the images as a base for your own Dockerfile:

```
FROM chinayin/debian:buster-slim
```

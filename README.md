[![Build Status](https://travis-ci.org/mmonnier/docker-alpine-phpstorm.svg?branch=master)](https://travis-ci.org/mmonnier/docker-alpine-phpstorm)
[![Docker Repository on Quay](https://quay.io/repository/mmonnier/docker-alpine-phpstorm/status "Docker Repository on Quay")](https://quay.io/repository/mmonnier/docker-alpine-phpstorm)
[![Docker Pulls](https://img.shields.io/docker/pulls/mmonnier/alpine-phpstorm.svg?maxAge=604800)](https://hub.docker.com/r/mmonnier/docker-alpine-phpstorm)

docker-alpine-phpstorm
=======================


Running your container
----------------------

```
# docker run
    -d
    -e DISPLAY=$DISPLAY \
    --name=alpine-phpstorm
    -v ${HOME}:/home/${USER} \
    -v /tmp/.X11-unix:/tmp/.X11-unix
    mmonnier/docker-alpine-phpstorm
```

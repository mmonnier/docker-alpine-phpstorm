FROM frolvlad/alpine-oraclejdk8:slim

MAINTAINER Matthieu Monnier <matthieu.monnier@enalean.com>

ENV GROUP=wheel
ENV UID=1000

RUN apk add --no-cache \
    libxext \
    libxrender \
    libxtst \
    libxi \
    freetype \
    git \
    curl

RUN cd /tmp \
    && curl -LO https://download.jetbrains.com/webide/PhpStorm-2017.1.4.tar.gz \
    && tar -xf PhpStorm-2017.1.4.tar.gz -C /usr/local/ \
    && ln -s /usr/local/PhpStorm* /usr/local/phpstorm

RUN apk del --no-cache curl

RUN adduser -u ${UID} -G ${GROUP} -D tty

WORKDIR /usr/local/phpstorm/bin

USER tty

ENTRYPOINT [ "./phpstorm.sh" ]

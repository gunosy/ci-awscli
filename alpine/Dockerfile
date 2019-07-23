FROM python:3-alpine3.8
RUN apk --update --no-cache add \
    openssh \
    git \
    zip \
    make \
    docker \
    jq \
    gettext \
    && pip install --upgrade --no-cache-dir \
    pip \
    setuptools \
    awscli \
    && rm -rf /root/.cache

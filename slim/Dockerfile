FROM python:3-slim
RUN apt-get update \
    && apt-get install -y \
    openssh-client \
    git \
    zip \
    make \
    docker \
    jq \
    gettext \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir --upgrade \
    pip \
    setuptools \
    awscli

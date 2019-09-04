FROM python:3-slim
RUN apt-get update \
    && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common \
    && curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - \
    && apt-key fingerprint 0EBFCD88 \
    && add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/debian \
    $(lsb_release -cs) \
    stable" \
    && apt-get update \
    && apt-get install -y \
    docker-ce-cli \
    openssh-client \
    git \
    zip \
    make \
    jq \
    gettext \
    && pip install --no-cache-dir --upgrade \
    pip \
    setuptools \
    awscli \
    && apt-get remove -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
COPY entrypoint.sh .
ENTRYPOINT ["./entrypoint.sh"]

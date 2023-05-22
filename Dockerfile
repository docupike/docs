FROM ubuntu:23.10

LABEL org.opencontainers.image.vendor="synetics GmbH"
LABEL org.opencontainers.image.title="docs/environment"
LABEL org.opencontainers.image.description="Docs environment"
LABEL org.opencontainers.image.documentation="https://docs.docupike.com/"

ARG DEBIAN_FRONTEND=noninteractive

SHELL ["/bin/bash", "-euxo", "pipefail", "-c"]

RUN apt-get update; \
    apt-get full-upgrade -y; \
    apt-get install -y --no-install-recommends \
        apt-transport-https \
        ca-certificates \
        curl \
        git \
        gnupg \
        locales \
        lsb-release \
        openssl \
        python3 \
        python3-apt \
        python3-dev \
        python3-pip \
        python3-setuptools \
        python3-venv \
        tar \
    ;\
    apt-get clean; \
    rm -rf /var/lib/apt/lists/*

RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Run this container as current host user:
ARG USER_ID
ARG GROUP_ID
RUN touch /var/mail/ubuntu; \
    chown ubuntu /var/mail/ubuntu; \
    userdel -r ubuntu; \
    groupadd -g "${GROUP_ID}" runner; \
    useradd -l -u "${USER_ID}" -g runner runner; \
    install -d -m 0750 -o runner -g runner /home/runner; \
    chown "${USER_ID}":"${GROUP_ID}" -R /home/runner

WORKDIR /tmp/

# Node.js and NPM:
RUN curl -OfsSL \
        https://raw.githubusercontent.com/tj/n/master/bin/n; \
    install -m 0755 -o root -g root n /usr/local/bin/; \
    rm n; \
    n lts; \
    npm install -g npm@latest

# hadolint:
ARG HADOLINT_VERSION=2.12.0
RUN curl -OfsSL \
        "https://github.com/hadolint/hadolint/releases/download/v${HADOLINT_VERSION}/hadolint-Linux-x86_64"; \
    install -m 0755 -o root -g root hadolint-Linux-x86_64 /usr/local/bin/hadolint; \
    rm hadolint-Linux-x86_64

# Docker:
ARG DOCKER_VERSION_BRANCH=23
RUN curl -fsSL \
        https://download.docker.com/linux/ubuntu/gpg | \
        gpg --dearmor > /etc/apt/keyrings/docker.gpg; \
    { \
        echo "Enabled: yes"; \
        echo "Types: deb"; \
        echo "Architectures: amd64"; \
        echo "URIs: https://download.docker.com/linux/ubuntu"; \
        echo "Suites: $(lsb_release -cs)"; \
        echo "Components: stable"; \
        echo "Signed-By: /etc/apt/keyrings/docker.gpg"; \
    } >> /etc/apt/sources.list.d/docker.sources; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        docker-ce \
        docker-ce-cli \
        containerd.io \
    ;\
    { \
        echo "Package: docker-ce*"; \
        echo "Pin: version ${DOCKER_VERSION_BRANCH}.*"; \
        echo "Pin-Priority: 999"; \
    } >> /etc/apt/preferences.d/docker; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/*; \
    usermod -a -G docker runner

# Docker Compose:
ARG DOCKER_COMPOSE_VERSION=2.17.3
RUN curl -OfsSL \
        "https://github.com/docker/compose/releases/download/v${DOCKER_COMPOSE_VERSION}/docker-compose-linux-x86_64"; \
    curl -OfsSL \
        "https://github.com/docker/compose/releases/download/v${DOCKER_COMPOSE_VERSION}/checksums.txt"; \
    sha256sum --check --strict --ignore-missing \
        checksums.txt; \
    mkdir -p /usr/libexec/docker/cli-plugins/; \
    chmod 0755 /usr/libexec/docker/cli-plugins/; \
    install -m 0755 -o root -g root docker-compose-linux-x86_64 /usr/libexec/docker/cli-plugins/docker-compose; \
    rm \
        docker-compose-linux-x86_64 \
        checksums.txt

# editorconfig-checker (ec):
ARG EC_VERSION=2.7.0
RUN curl -OfsSL \
        "https://github.com/editorconfig-checker/editorconfig-checker/releases/download/${EC_VERSION}/ec-linux-amd64.tar.gz"; \
    tar -xzf ec-linux-amd64.tar.gz; \
    install -m 755 -o root -g root bin/ec-linux-amd64 /usr/local/bin/ec; \
    rm -r \
        ec-linux-amd64.tar.gz \
        bin/

# Upgrade pip:
RUN pip3 install --upgrade --no-cache-dir --break-system-packages \
        pip \
        setuptools \
        wheel \
    ; \
    apt-get remove -y \
        python3-pip \
        python3-setuptools \
        python3-wheel \
    ; \
    apt-get autoremove -y

# pip:
COPY requirements.txt /tmp/
RUN pip3 install \
        --upgrade --no-cache-dir --break-system-packages \
        --requirement requirements.txt \
    ; \
    rm requirements.txt

USER runner

ENV PATH="/home/runner/.local/bin:${PATH}"

WORKDIR /runner

CMD ["bash"]

FROM ubuntu:questing-20251029

ARG DEBIAN_FRONTEND=noninteractive
ARG HTTP_PROXY
ARG HTTPS_PROXY
ARG NO_PROXY
ARG http_proxy
ARG https_proxy
ARG no_proxy

LABEL org.opencontainers.image.vendor="i-doit GmbH"
LABEL org.opencontainers.image.title="docs/environment"
LABEL org.opencontainers.image.description="Docs environment"
LABEL org.opencontainers.image.documentation="https://docs.docupike.com/"

SHELL ["/bin/bash", "-euxo", "pipefail", "-c"]

RUN apt-get update; \
    apt-get full-upgrade -y; \
    apt-get install -y --no-install-recommends \
        apt-transport-https \
        bash-completion \
        ca-certificates \
        curl \
        git \
        gnupg \
        locales \
        lsb-release \
        # Required by npm-groovy-lint:
        openjdk-17-jre \
        openssh-client \
        openssl \
        python3 \
        python3-apt \
        python3-argcomplete \
        python3-dev \
        python3-pip \
        python3-setuptools \
        python3-venv \
        rsync \
        tar \
        xz-utils \
    ;\
    apt-get clean; \
    rm -rf /var/lib/apt/lists/*

RUN touch /usr/share/locale/locale.alias; \
    localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Run this container as current host user:
ARG USER_ID=1000
ARG GROUP_ID=1000
RUN touch /var/mail/ubuntu; \
    chown ubuntu /var/mail/ubuntu; \
    userdel -r ubuntu; \
    groupadd -g "${GROUP_ID}" runner; \
    useradd -l -u "${USER_ID}" -g "${GROUP_ID}" runner; \
    install -d -m 0750 -o runner -g runner /home/runner; \
    chown "${USER_ID}":"${GROUP_ID}" -R /home/runner

WORKDIR /tmp/

# shellcheck:
# renovate: datasource=github-releases depName=koalaman/shellcheck
ARG SHELLCHECK_VERSION=0.10.0
RUN curl -OfsSL \
        "https://github.com/koalaman/shellcheck/releases/download/v${SHELLCHECK_VERSION}/shellcheck-v${SHELLCHECK_VERSION}.linux.x86_64.tar.xz"; \
    tar -xf "shellcheck-v${SHELLCHECK_VERSION}.linux.x86_64.tar.xz"; \
    install -m 755 -o root -g root "shellcheck-v${SHELLCHECK_VERSION}/shellcheck" /usr/local/bin/; \
    rm -r \
        "shellcheck-v${SHELLCHECK_VERSION}/" \
        "shellcheck-v${SHELLCHECK_VERSION}.linux.x86_64.tar.xz"

# hadolint:
# renovate: datasource=github-releases depName=hadolint/hadolint
ARG HADOLINT_VERSION=2.12.0
RUN curl -OfsSL \
        "https://github.com/hadolint/hadolint/releases/download/v${HADOLINT_VERSION}/hadolint-Linux-x86_64"; \
    install -m 755 -o root -g root hadolint-Linux-x86_64 /usr/local/bin/hadolint; \
    rm hadolint-Linux-x86_64

# Docker:
# renovate: datasource=github-releases depName=moby/moby
ARG DOCKER_VERSION=28.5.2
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
        docker-ce="5:${DOCKER_VERSION}-1~ubuntu.$(lsb_release -rs)~$(lsb_release -cs)" \
        docker-ce-cli="5:${DOCKER_VERSION}-1~ubuntu.$(lsb_release -rs)~$(lsb_release -cs)" \
        containerd.io \
        docker-buildx-plugin \
    ;\
    apt-get clean; \
    rm -rf /var/lib/apt/lists/*; \
    usermod -a -G docker runner

# Docker Compose:
# renovate: datasource=github-releases depName=docker/compose
ARG DOCKER_COMPOSE_VERSION=2.35.1
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
# renovate: datasource=github-releases depName=editorconfig-checker/editorconfig-checker
ARG EC_VERSION=3.2.1
RUN curl -OfsSL \
        "https://github.com/editorconfig-checker/editorconfig-checker/releases/download/v${EC_VERSION}/ec-linux-amd64.tar.gz"; \
    tar -xzf ec-linux-amd64.tar.gz; \
    install -m 755 -o root -g root bin/ec-linux-amd64 /usr/local/bin/ec; \
    rm -r \
        ec-linux-amd64.tar.gz \
        bin/

# Node.js and NPM:
# renovate: datasource=github-releases depName=nodejs/node
ARG NODE_VERSION=24.11.1
# renovate: datasource=github-releases depName=npm/cli
ARG NPM_VERSION=11.6.2
RUN curl -fsSL https://raw.githubusercontent.com/tj/n/master/bin/n \
    -o /usr/local/bin/n; \
    chmod 0755 /usr/local/bin/n; \
    n "$NODE_VERSION"; \
    npm install -g "npm@$NPM_VERSION"; \
    npm completion > /etc/bash_completion.d/npm

# pip:
COPY requirements.txt /tmp/
RUN pip install \
        --upgrade \
        --no-cache-dir \
        --break-system-packages \
        --ignore-installed \
        --requirement requirements.txt \
    ; \
    rm -rf \
        requirements.txt \
        /usr/local/bin/__pycache__ \
    ; \
    ln -s /usr/bin/python3 /usr/bin/python; \
    activate-global-python-argcomplete

# OpenSSH client:
COPY data/ssh/config /etc/ssh/ssh_config.d/env.conf
COPY data/ssh/known_hosts /etc/ssh/ssh_known_hosts
RUN chmod 0644 /etc/ssh/ssh_config.d/env.conf; \
    chmod 0644 /etc/ssh/ssh_known_hosts

RUN echo "source /usr/share/bash-completion/bash_completion" >> /etc/bash.bashrc

ENV PATH="/home/runner/.local/bin:${PATH}"

WORKDIR /runner

USER runner

EXPOSE 8000

CMD ["bash"]

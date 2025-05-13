FROM nginx:stable-alpine
LABEL org.opencontainers.image.vendor="synetics GmbH"
LABEL org.opencontainers.image.version="0.0.0-dev"
LABEL org.opencontainers.image.title="docs web"
LABEL org.opencontainers.image.description="Web server for pre-generated static site"
LABEL org.opencontainers.image.documentation="https://docs.docupike.com/"
COPY default.conf /etc/nginx/conf.d/
COPY nginx.conf /etc/nginx/
RUN nginx -t && \
    # Security-related files:
    mkdir -m 0555 /usr/local/share/security/ && \
    curl -fsSL \
        https://docupike.cloud/security.txt \
        --output /usr/local/share/security/security.txt && \
    curl -fsSL \
        https://docupike.cloud/security_key.asc \
        --output /usr/local/share/security/security_key.asc
WORKDIR /usr/local/share/site/

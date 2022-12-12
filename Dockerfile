FROM python:3-bullseye AS i-doit-docs-build

RUN apt-get update && \
    apt-get full-upgrade -y && \
    apt-get install -y --no-install-recommends \
        gcc \
        git \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY . .

RUN pip install -U --no-cache-dir -r requirements.txt && \
    mkdocs build

FROM nginx:alpine AS i-doit-docs-web

COPY --from=i-doit-docs-build /usr/src/app/site /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /usr/share/nginx/html

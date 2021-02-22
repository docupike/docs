FROM python:3-alpine AS i-doit-docs-build

WORKDIR /usr/src/app

COPY . .

RUN apk add --no-cache \
        gcc \
        git \
        musl-dev; \
    pip install -U -r requirements.txt

RUN mkdocs build

FROM nginx:alpine AS i-doit-docs-web

COPY --from=i-doit-docs-build /usr/src/app/site /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

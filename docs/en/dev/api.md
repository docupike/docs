---
title: API
description: Access the i-doit up REST API
lang: en
---

# API

Access the i-doit up REST API

## Format

i-doit up has a RESTful API following the [OpenAPI `v3` standard](https://www.openapis.org/). HTTP requests must include the HTTP header `Content-Type: application/json`.

## Versioning and support

The API has its own versioning, starting with version `2`. On major releases with breaking changes we are going to bump the version number. The previous version will be deprecated in favor of the new one and be removed in a later major release.

## Authentication

Most API requests require an authenticated user account. The preferred authentication method is to use an API token. Each API token is related to a user account. Therefore, it has the same [rights and permissions](../admin/rights-and-permissions.md) as the user account.

Each user account can have multiple API tokens at once. You can manage API tokens in the Web UI at `Settings > Users > <User> > Apps`.

## Auto-generated reference

Each i-doit up instance is shipped with a built-in reference. Because of security reasons you must be authenticated to access it. The reference comes in two formats:

=== "HTML"

    `https://<your_subdomain>.docupike.cloud/api/v2/docs.html`


=== "JSON"

    `https://<your_subdomain>.docupike.cloud/api/v2/docs.json`


=== "YAML"

    `https://<your_subdomain>.docupike.cloud/api/v2/docs.yaml`

The reference is auto-generated and always up-to-date.

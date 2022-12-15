---
title: API
description: Access the docupike REST API
lang: en
---

# API

Access the docupike REST API

## Format

docupike has a RESTful API following the [OpenAPI `v3` standard](https://www.openapis.org/). HTTP requests must include the HTTP header `Content-Type: application/json`.

## Versioning and support

The API has its own versioning, starting with version `2`. On major releases with breaking changes we are going to bump the version number. The previous version will be deprecated in favor of the new one and be removed in a later major release.

## Authentication

Most API requests require an authenticated user account. The preferred authentication method is to use an API token. Each API token is related to a user account. Therefore, it has the same [rights and permissions](../admin/rights-and-permissions.md) as the user account.

Each user account can have multiple API tokens at once. You can manage API tokens in the Web UI at `Settings > Users > <User> > Apps`.

## Auto-generated reference

Each docupike instance is shipped with a built-in reference. Because of security reasons you must be authenticated to access it. The reference comes in two formats:

=== "HTML"

    `https://<your_subdomain>.docupike.cloud/api/v2/docs.html`


=== "JSON"

    `https://<your_subdomain>.docupike.cloud/api/v2/docs.json`

The reference is auto-generated and always up-to-date.

## Public API reference

This Website provides a public API reference for the [latest stable version of docupike](../ref/version-history.md) with no customization. Authentication to access it is not required.

=== "HTML"

    [Link to HTML reference](api/v2/docs.html)

=== "JSON"

    [Link to JSON reference](api/v2/docs.json)

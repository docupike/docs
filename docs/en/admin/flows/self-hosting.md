---
render_macros: false
---

# Run Flows yourself

This page describes how to run the Flows add-on as a Docker container stack and register it with i-doit up.
It also lists the settings of the add-on service.

!!! info
    Available as of i-doit up 3.3.0.

!!! warning "Open: delivery and registration"
    This page is based on the deployment files and the documentation of the add-on.
    It is not yet confirmed how Flows is delivered for self-hosted i-doit up and whether customers register it themselves.
    This page may change or be removed before the release.

## Requirements

- A running i-doit up instance and access to its app container.
- Docker with Docker Compose on the host for the add-on.
- An address of the add-on (`PUBLIC_URL`) that i-doit up can reach.
- Optionally, an SMTP server for the action **Send e-mail**.

## Configure and start the add-on

The add-on ships a container stack in the directory `docker/`, with its own PostgreSQL database.

1. Create the configuration file:

    ```sh
    cp docker/.env.dist docker/.env
    ```

2. Set at least these values in `docker/.env`:

    | Variable | Meaning |
    | --- | --- |
    | `PUBLIC_URL` | Public base URL of the add-on. i-doit up must reach it, because the add-on registers its webhooks at `<PUBLIC_URL>/api/webhook/<instance>`. |
    | `POSTGRES_PASSWORD` | Password of the included PostgreSQL database. |
    | `FLOWS_DATABASE_URL` | Optional: connection to an existing PostgreSQL database instead of the included one. |
    | `FLOWS_TOKEN_SECRET` | Secret that encrypts stored API keys and tokens, for example from `openssl rand -base64 32`. Keep it stable: after a change, stored secrets can no longer be read until they are saved again. |

3. Build and start the stack:

    ```sh
    cd docker && ./cli.sh build && ./cli.sh start
    ```

The add-on listens on the port in `WEB_PORT` (default `3000`) and answers health checks at `/health`.
It creates its database schema on the first start.

## Register the add-on

Run this command once in the app container of i-doit up:

```sh
bin/console docu:addons:register "<PUBLIC_URL>"
```

After that, Flows appears in i-doit up, see [Flows add-on](../flows.md#where-flows-appears-in-i-doit-up).

## Update and re-register

After an upgrade of i-doit up or of the add-on, register the add-on again so that i-doit up picks up new menu entries, rights, and the **Flows** widget:

```sh
bin/console docu:addons:register "<PUBLIC_URL>" --force
```

!!! danger "Unregistering deletes all Flows data"
    When the add-on is unregistered with `bin/console docu:addons:unregister`, it deletes everything it stored for this i-doit up instance: flows, flow groups, logs, history, the `{{counter}}` value, and the connection to i-doit up.
    It revokes the API tokens it created for flow users and removes its webhooks.
    The i-doit up user accounts stay.
    This cannot be undone.
    [Export](../../user/flows/export-import.md) the flows you want to keep first.

## Optional settings

All settings are environment variables in `docker/.env`.

**E-mail**

The action **Send e-mail** uses `SMTP_URL` and `MAIL_FROM`.
There are no mail settings per i-doit up instance.

**Proxy**

If the add-on can only reach the network through an HTTP proxy, set `HTTPS_PROXY`, for example `http://proxy.example.com:8080`.
The add-on then sends its requests to the i-doit up API and of the action **Call API** through the proxy.
`NO_PROXY` lists hosts the add-on reaches directly, for example `idoit.internal,10.0.0.0/8`.
E-mails are not sent through the proxy.

**Sessions**

The add-on checks the credentials of a user against i-doit up and then keeps a short session.
`FLOWS_SESSION_TTL_MS` sets its lifetime (default 2 minutes, `0` turns sessions off).
Changes to the rights of a user take effect within this time.

**Server logs**

The add-on writes diagnostic logs to standard output, for example `docker compose logs` for the backend container.
They contain no API keys, tokens, or secrets.
`FLOWS_LOG_LEVEL` sets the level: `verbose`, `debug`, `log`, `warn`, `error`, or `fatal` (default `log` in production).

## Troubleshooting

**"Could not validate the i-doit up token."**

The add-on does not call addresses in loopback, link-local, or cloud metadata ranges.
If the server log shows `Rejected unsafe i-doit callback URL`, the address of i-doit up resolves to such a range.
This happens in local Docker Desktop setups.
For local development only, `FLOWS_IDOIT_CALLBACK_URL_CHECK=false` turns this check off.
Keep it on in production.

## Further readings

-   [Flows add-on](../flows.md)
-   [Rights and flow users](rights.md)
-   [Add-ons](../addons.md)

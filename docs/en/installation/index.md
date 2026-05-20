---
title: Installation guide
description: Install and configure i-doit up self-hosted with Docker Compose.
lang: en
---

# Installation guide

This guide describes the self-hosted installation of i-doit up on a server with Docker and Docker Compose.
It covers the path from download through configuration to the first start and also includes integrity verification, update, and uninstall.

Tested with version 3.1.0 on Debian 13 (amd64).

## Prerequisites

| Requirement | Note |
|---|---|
| Linux, macOS, or Windows (WSL) | 64-bit, `amd64` or `arm64` |
| [Docker Engine](https://docs.docker.com/engine/install/) or Docker Desktop | Version 20 or newer recommended |
| [Docker Compose](https://docs.docker.com/compose/) | Bundled with Docker Desktop |
| `curl` | For the download |
| `tar` | For extracting the archive |
| `gnupg` *(optional)* | For GPG signature verification |
| `sha256sum` *(optional)* | For checksum verification |

A comfortable setup needs at least **4 CPU cores** and **6 GB RAM**.

## Step 1: Find the current version

Fetch the current release identifier:

```bash
curl -fsSL https://releases.docupike.com/i-doit-up/compose/latest.txt
```

All available releases in JSON format:

```bash
curl -fsSL https://releases.docupike.com/i-doit-up/compose/releases.json
```

## Step 2: Download

Always use the latest version:

```bash
curl -fsSLO https://releases.docupike.com/i-doit-up/compose/latest/i-doit-up-latest.tar.gz
tar xzvf i-doit-up-latest.tar.gz
cd i-doit-up-latest
```

To pin a specific version, replace `<version>` with the desired release number, for example `3.1.0`:

```bash
curl -fsSLO https://releases.docupike.com/i-doit-up/compose/latest/i-doit-up-v<version>.tar.gz
tar xzvf i-doit-up-v<version>.tar.gz
cd i-doit-up-v<version>
```

## Step 3: Verify integrity (recommended)

We strongly recommend verifying the downloaded archive before installation.

```bash
# Download the verification files
curl -fsSLO https://releases.docupike.com/i-doit-up/compose/latest/i-doit-up-latest.sha256
curl -fsSLO https://releases.docupike.com/i-doit-up/compose/latest/i-doit-up-latest.sha256.asc

# Import the release team's GPG key
curl -fsSL "https://docupike.com/gpg/releases/$(date +%Y).asc" | gpg --import

# Verify the GPG signature
gpg --verify i-doit-up-latest.sha256.asc

# Verify the SHA-256 checksum
sha256sum --check --strict i-doit-up-latest.sha256
```

On success you will see:

```
gpg: Good signature from "synetics release team <releases@i-doit.com>"
i-doit-up-latest.tar.gz: OK
```

## Step 4: Configuration

The archive contains two files.
`compose.yaml` is the Docker Compose definition and must not be modified.
`.env.dist` is the template for all settings.

Create the configuration file:

```bash
cp .env.dist .env
```

Then open `.env` in a text editor and set at least the following values.

### Required fields

| Variable | Description | Example |
|---|---|---|
| `DOCU_APP_URL` | Full URL including protocol and port | `http://my-server.local:8080/` |
| `DOCU_ADMIN_USERNAME` | Username of the first admin | `admin` |
| `DOCU_ADMIN_EMAIL` | Email of the first admin | `admin@example.com` |
| `DOCU_ADMIN_PASSWORD` | Password of the first admin | strong password |
| `DOCU_APP_SECRET` | 32 random hex characters | `openssl rand -hex 16` |
| `DOCU_APP_IDENTIFIER` | 8 random hex characters | `openssl rand -hex 4` |
| `MYSQL_ROOT_PASSWORD` | Database root password | strong password |
| `DOCU_DB_PASSWORD` | App database password | strong password |
| `REDIS_PASSWORD` | Redis password | strong password |
| `MONGO_INITDB_ROOT_PASSWORD` | MongoDB password | strong password |
| `DOCU_EVENTS_PASSWORD` | Must match `MONGO_INITDB_ROOT_PASSWORD` | |

Generate random values for `DOCU_APP_SECRET` and `DOCU_APP_IDENTIFIER`:

```bash
echo "DOCU_APP_SECRET=$(openssl rand -hex 16)"
echo "DOCU_APP_IDENTIFIER=$(openssl rand -hex 4)"
```

### HTTPS note

When running i-doit up over **HTTP** (no TLS), the following must be set additionally:

```
DOCU_SESSION_COOKIE_SECURE=Off
```

When running over HTTPS (recommended for production), the default value `On` stays in place.

### License

If a license token is available, set it in `.env`:

```
DOCU_LICENSE_TOKEN=<token>
```

## Step 5: Start

```bash
docker compose up -d
```

Docker pulls every required image and starts the containers.
The process takes 1 to 5 minutes depending on bandwidth.

Check the container status:

```bash
docker compose ps
```

Once every container shows `(healthy)`, i-doit up is ready:

```
NAME                  STATUS
i-doit-up-app-1       Up 2 minutes (healthy)
i-doit-up-messenger-1 Up 2 minutes (healthy)
i-doit-up-events-1    Up 2 minutes (healthy)
i-doit-up-db-1        Up 2 minutes (healthy)
i-doit-up-cache-1     Up 2 minutes (healthy)
```

The UI is then reachable at the address configured in `DOCU_APP_URL`.

## Update

1. Download and extract a new archive (repeat Step 2 and optionally Step 3).
2. Change into the directory of the new `compose.yaml`.
3. Copy the existing `.env` into the new directory.
4. Update the containers:

```bash
docker compose pull
docker compose restart
```

## Uninstall

```bash
docker compose down --rmi all --volumes
```

!!! warning
    `--volumes` deletes all data irreversibly.

## Quick-start checklist

- [ ] Docker and Docker Compose installed
- [ ] Tarball downloaded and extracted
- [ ] Optional: integrity verified (sha256 and GPG)
- [ ] `.env.dist` copied to `.env`
- [ ] `DOCU_APP_URL` set
- [ ] Admin credentials set
- [ ] All `changeme` passwords replaced
- [ ] `DOCU_APP_SECRET` (32 hex) and `DOCU_APP_IDENTIFIER` (8 hex) set
- [ ] If on HTTP: `DOCU_SESSION_COOKIE_SECURE=Off` set
- [ ] `docker compose up -d` executed
- [ ] All containers `(healthy)`, open the browser

## Further readings

- [Subscription, billing, and upgrade](../admin/subscription.md)
- [User management](../admin/user-management.md)
- [Rights and permissions](../admin/rights-and-permissions.md)

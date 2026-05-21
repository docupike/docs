---
title: Installationsanleitung
description: i-doit up Self-Hosted mit Docker Compose installieren und konfigurieren.
lang: de
---

# Installationsanleitung

Diese Anleitung beschreibt die Self-Hosted-Installation von i-doit up auf einem Server mit Docker und Docker Compose.
Sie deckt den Weg vom Download über die Konfiguration bis zum ersten Start ab und enthält ebenfalls Hinweise zu Integritätsprüfung, Update und Deinstallation.

Getestet mit Version 3.1.0 auf Debian 13 (amd64).

!!! info
    Diese Seite beschreibt die **Self-Hosted-Installation** per Docker Compose.
    Wenn Sie das **Suite+ Bundle** (Suite+ inklusive i-doit up) einrichten, folgen Sie stattdessen der [Suite+-Anleitung zur i-doit-up-Einrichtung](https://suiteplus-wikijs.i-doit.com/de/integration/i-doit-up-einrichtung).

## Voraussetzungen

| Anforderung | Hinweis |
|---|---|
| Linux, macOS oder Windows (WSL) | 64-Bit, `amd64` oder `arm64` |
| [Docker Engine](https://docs.docker.com/engine/install/) oder Docker Desktop | Version 20 oder neuer empfohlen |
| [Docker Compose](https://docs.docker.com/compose/) | Im Lieferumfang von Docker Desktop enthalten |
| `curl` | Für den Download |
| `tar` | Zum Entpacken |
| `gnupg` *(optional)* | Für die GPG-Signaturprüfung |
| `sha256sum` *(optional)* | Für die Prüfsummenverifikation |

Mindestens **4 CPU-Kerne** und **6 GB RAM** werden für einen komfortablen Betrieb empfohlen.

## Schritt 1: Aktuelle Version ermitteln

Den aktuellen Release-Bezeichner abrufen:

```bash
curl -fsSL https://releases.docupike.com/i-doit-up/compose/latest.txt
```

Alle verfügbaren Releases im JSON-Format:

```bash
curl -fsSL https://releases.docupike.com/i-doit-up/compose/releases.json
```

## Schritt 2: Download

Immer die neueste Version verwenden:

```bash
curl -fsSLO https://releases.docupike.com/i-doit-up/compose/latest/i-doit-up-latest.tar.gz
tar xzvf i-doit-up-latest.tar.gz
cd i-doit-up-latest
```

Für eine bestimmte Version den Platzhalter `<version>` durch die gewünschte Versionsnummer ersetzen, zum Beispiel `3.1.0`:

```bash
curl -fsSLO https://releases.docupike.com/i-doit-up/compose/latest/i-doit-up-v<version>.tar.gz
tar xzvf i-doit-up-v<version>.tar.gz
cd i-doit-up-v<version>
```

## Schritt 3: Integrität prüfen (empfohlen)

Wir empfehlen dringend, das heruntergeladene Archiv vor der Installation zu prüfen.

```bash
# Prüfdateien herunterladen
curl -fsSLO https://releases.docupike.com/i-doit-up/compose/latest/i-doit-up-latest.sha256
curl -fsSLO https://releases.docupike.com/i-doit-up/compose/latest/i-doit-up-latest.sha256.asc

# GPG-Schlüssel des Release-Teams importieren
curl -fsSL "https://docupike.com/gpg/releases/$(date +%Y).asc" | gpg --import

# GPG-Signatur prüfen
gpg --verify i-doit-up-latest.sha256.asc

# SHA-256-Prüfsumme prüfen
sha256sum --check --strict i-doit-up-latest.sha256
```

Bei erfolgreicher Prüfung erscheint:

```
gpg: Good signature from "synetics release team <releases@i-doit.com>"
i-doit-up-latest.tar.gz: OK
```

## Schritt 4: Konfiguration

Das Archiv enthält zwei Dateien.
`compose.yaml` ist die Docker-Compose-Definition und darf nicht verändert werden.
`.env.dist` ist die Vorlage für alle Einstellungen.

Konfigurationsdatei anlegen:

```bash
cp .env.dist .env
```

Anschließend `.env` in einem Texteditor öffnen und mindestens die folgenden Werte anpassen.

### Pflichtfelder

| Variable | Beschreibung | Beispiel |
|---|---|---|
| `DOCU_APP_URL` | Vollständige URL inklusive Protokoll und Port | `http://mein-server.intern:8080/` |
| `DOCU_ADMIN_USERNAME` | Benutzername des ersten Admins | `admin` |
| `DOCU_ADMIN_EMAIL` | E-Mail-Adresse des ersten Admins | `admin@meinefirma.de` |
| `DOCU_ADMIN_PASSWORD` | Passwort des ersten Admins | sicheres Passwort |
| `DOCU_APP_SECRET` | 32 zufällige Hex-Zeichen | `openssl rand -hex 16` |
| `DOCU_APP_IDENTIFIER` | 8 zufällige Hex-Zeichen | `openssl rand -hex 4` |
| `MYSQL_ROOT_PASSWORD` | Root-Passwort der Datenbank | sicheres Passwort |
| `DOCU_DB_PASSWORD` | App-Datenbankpasswort | sicheres Passwort |
| `REDIS_PASSWORD` | Redis-Passwort | sicheres Passwort |
| `MONGO_INITDB_ROOT_PASSWORD` | MongoDB-Passwort | sicheres Passwort |
| `DOCU_EVENTS_PASSWORD` | Muss identisch mit `MONGO_INITDB_ROOT_PASSWORD` sein | |

Zufällige Werte für `DOCU_APP_SECRET` und `DOCU_APP_IDENTIFIER` generieren:

```bash
echo "DOCU_APP_SECRET=$(openssl rand -hex 16)"
echo "DOCU_APP_IDENTIFIER=$(openssl rand -hex 4)"
```

### Hinweis zu HTTPS

Wird i-doit up über **HTTP** (kein TLS) betrieben, muss zusätzlich gesetzt werden:

```
DOCU_SESSION_COOKIE_SECURE=Off
```

Bei HTTPS-Betrieb (empfohlen für Produktion) bleibt der Standardwert `On` bestehen.

### Lizenz

Wenn ein Lizenz-Token vorliegt, ist dieses in der `.env` zu hinterlegen:

```
DOCU_LICENSE_TOKEN=<token>
```

## Schritt 5: Starten

```bash
docker compose up -d
```

Docker lädt automatisch alle benötigten Images herunter und startet die Container.
Der Vorgang dauert je nach Verbindungsgeschwindigkeit 1 bis 5 Minuten.

Den Status der Container prüfen:

```bash
docker compose ps
```

Sobald alle Container den Status `(healthy)` zeigen, ist i-doit up bereit:

```
NAME                  STATUS
i-doit-up-app-1       Up 2 minutes (healthy)
i-doit-up-messenger-1 Up 2 minutes (healthy)
i-doit-up-events-1    Up 2 minutes (healthy)
i-doit-up-db-1        Up 2 minutes (healthy)
i-doit-up-cache-1     Up 2 minutes (healthy)
```

Die Oberfläche ist anschließend unter der in `DOCU_APP_URL` konfigurierten Adresse erreichbar.

## Update

1. Neues Archiv herunterladen und entpacken (Schritt 2 und optional Schritt 3 wiederholen).
2. In das Verzeichnis mit der neuen `compose.yaml` wechseln.
3. Die bisherige `.env` in das neue Verzeichnis kopieren.
4. Container aktualisieren:

```bash
docker compose pull
docker compose restart
```

## Deinstallation

```bash
docker compose down --rmi all --volumes
```

!!! warning
    `--volumes` löscht alle Daten unwiderruflich.

## Schnellstart-Checkliste

- [ ] Docker und Docker Compose installiert
- [ ] Tarball heruntergeladen und entpackt
- [ ] Optional: Integrität geprüft (sha256 und GPG)
- [ ] `.env.dist` nach `.env` kopiert
- [ ] `DOCU_APP_URL` gesetzt
- [ ] Admin-Zugangsdaten gesetzt
- [ ] Alle `changeme`-Passwörter ersetzt
- [ ] `DOCU_APP_SECRET` (32 Hex) und `DOCU_APP_IDENTIFIER` (8 Hex) gesetzt
- [ ] Bei HTTP: `DOCU_SESSION_COOKIE_SECURE=Off` gesetzt
- [ ] `docker compose up -d` ausgeführt
- [ ] Alle Container `(healthy)`, Browser öffnen

## Siehe auch

- [Abonnement, Abrechnung und Upgrade](../admin/subscription.md)
- [Benutzerverwaltung](../admin/user-management.md)
- [Rechte und Berechtigungen](../admin/rights-and-permissions.md)
- [Suite+-Anleitung zur i-doit-up-Einrichtung](https://suiteplus-wikijs.i-doit.com/de/integration/i-doit-up-einrichtung): Installation als Teil des Suite+ Bundles

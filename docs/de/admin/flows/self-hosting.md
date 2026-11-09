---
render_macros: false
---

# Flows selbst betreiben

Diese Seite beschreibt, wie Sie das Add-on Flows als Docker-Container-Stack betreiben und bei i-doit up registrieren.
Sie listet außerdem die Einstellungen des Add-on-Dienstes.

!!! info
    Verfügbar ab i-doit up 3.3.0.

!!! warning "Offen: Auslieferung und Registrierung"
    Diese Seite beruht auf den Deployment-Dateien und der Dokumentation des Add-ons.
    Noch nicht bestätigt ist, wie Flows für selbst betriebenes i-doit up ausgeliefert wird und ob Kunden es selbst registrieren.
    Diese Seite kann sich bis zum Release ändern oder entfallen.

## Voraussetzungen

- Eine laufende i-doit-up-Instanz und Zugriff auf ihren App-Container.
- Docker mit Docker Compose auf dem Host für das Add-on.
- Eine Adresse des Add-ons (`PUBLIC_URL`), die i-doit up erreichen kann.
- Optional ein SMTP-Server für die Aktion **E-Mail senden**.

## Add-on einrichten und starten

Das Add-on bringt im Verzeichnis `docker/` einen Container-Stack mit eigener PostgreSQL-Datenbank mit.

1. Legen Sie die Konfigurationsdatei an:

    ```sh
    cp docker/.env.dist docker/.env
    ```

2. Setzen Sie in `docker/.env` mindestens diese Werte:

    | Variable | Bedeutung |
    | --- | --- |
    | `PUBLIC_URL` | Öffentliche Basis-URL des Add-ons. i-doit up muss sie erreichen, weil das Add-on seine Webhooks unter `<PUBLIC_URL>/api/webhook/<instance>` registriert. |
    | `POSTGRES_PASSWORD` | Passwort der mitgelieferten PostgreSQL-Datenbank. |
    | `FLOWS_DATABASE_URL` | Optional: Verbindung zu einer vorhandenen PostgreSQL-Datenbank statt der mitgelieferten. |
    | `FLOWS_TOKEN_SECRET` | Geheimnis, mit dem gespeicherte API-Schlüssel und Tokens verschlüsselt werden, zum Beispiel aus `openssl rand -base64 32`. Ändern Sie es nicht: Nach einer Änderung lassen sich gespeicherte Geheimnisse erst wieder lesen, wenn sie neu gespeichert werden. |

3. Bauen und starten Sie den Stack:

    ```sh
    cd docker && ./cli.sh build && ./cli.sh start
    ```

Das Add-on lauscht auf dem Port in `WEB_PORT` (Standard `3000`) und beantwortet Health-Checks unter `/health`.
Beim ersten Start legt es sein Datenbankschema an.

## Add-on registrieren

Führen Sie diesen Befehl einmal im App-Container von i-doit up aus:

```sh
bin/console docu:addons:register "<PUBLIC_URL>"
```

Danach erscheint Flows in i-doit up, siehe [Flows-Add-on](../flows.md#wo-flows-in-i-doit-up-erscheint).

## Aktualisieren und neu registrieren

Registrieren Sie das Add-on nach einem Upgrade von i-doit up oder des Add-ons erneut, damit i-doit up neue Menüeinträge, Rechte und das Widget **Flows** übernimmt:

```sh
bin/console docu:addons:register "<PUBLIC_URL>" --force
```

!!! danger "Abmelden löscht alle Daten von Flows"
    Wenn das Add-on mit `bin/console docu:addons:unregister` abgemeldet wird, löscht es alles, was es für diese i-doit-up-Instanz gespeichert hat: Flows, Flow-Gruppen, Logs, Verlauf, den Wert von `{{counter}}` und die Verbindung zu i-doit up.
    Es widerruft die API-Tokens, die es für Flow-Benutzer erstellt hat, und entfernt seine Webhooks.
    Die Benutzerkonten in i-doit up bleiben erhalten.
    Das lässt sich nicht rückgängig machen.
    [Exportieren](../../user/flows/export-import.md) Sie vorher die Flows, die Sie behalten möchten.

## Optionale Einstellungen

Alle Einstellungen sind Umgebungsvariablen in `docker/.env`.

**E-Mail**

Die Aktion **E-Mail senden** nutzt `SMTP_URL` und `MAIL_FROM`.
Mail-Einstellungen pro i-doit-up-Instanz gibt es nicht.

**Proxy**

Erreicht das Add-on das Netz nur über einen HTTP-Proxy, setzen Sie `HTTPS_PROXY`, zum Beispiel `http://proxy.example.com:8080`.
Das Add-on schickt dann seine Anfragen an die API von i-doit up und die der Aktion **API aufrufen** über den Proxy.
`NO_PROXY` listet Hosts, die das Add-on direkt erreicht, zum Beispiel `idoit.internal,10.0.0.0/8`.
E-Mails werden nicht über den Proxy gesendet.

**Sitzungen**

Das Add-on prüft die Anmeldedaten eines Benutzers gegen i-doit up und hält dann eine kurze Sitzung.
`FLOWS_SESSION_TTL_MS` legt ihre Dauer fest (Standard 2 Minuten, `0` schaltet Sitzungen ab).
Änderungen an den Rechten eines Benutzers wirken innerhalb dieser Zeit.

**Server-Logs**

Das Add-on schreibt Diagnose-Logs auf die Standardausgabe, zum Beispiel sichtbar mit `docker compose logs` für den Backend-Container.
Sie enthalten keine API-Schlüssel, Tokens oder Geheimnisse.
`FLOWS_LOG_LEVEL` legt die Stufe fest: `verbose`, `debug`, `log`, `warn`, `error` oder `fatal` (Standard in Produktion: `log`).

## Fehlerbehebung

**"Could not validate the i-doit up token."**

Das Add-on ruft keine Adressen in Loopback-, Link-Local- oder Cloud-Metadaten-Bereichen auf.
Zeigt das Server-Log `Rejected unsafe i-doit callback URL`, löst die Adresse von i-doit up in einen solchen Bereich auf.
Das passiert bei lokalen Docker-Desktop-Setups.
Nur für die lokale Entwicklung schaltet `FLOWS_IDOIT_CALLBACK_URL_CHECK=false` diese Prüfung ab.
Lassen Sie sie in Produktion eingeschaltet.

## Weiterführende Informationen

-   [Flows-Add-on](../flows.md)
-   [Rechte und Flow-Benutzer](rights.md)
-   [Add-ons](../addons.md)

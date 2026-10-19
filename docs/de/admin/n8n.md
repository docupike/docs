---
title: n8n-Integration
description: i-doit up mit n8n-Workflows automatisieren, ausgelöst durch Webhooks und ausgeführt über den i-doit-up-Node
lang: de
render_macros: false
---

# n8n-Integration

[n8n](https://n8n.io) ist ein Werkzeug zur Workflow-Automatisierung, das Anwendungen miteinander verbindet.
Die Integration von i-doit up besteht aus zwei Teilen:

- **Webhooks in i-doit up** rufen eine URL Ihrer Wahl auf, sobald in Ihrer CMDB etwas passiert, zum Beispiel wenn ein Objekt angelegt wird.
    Sie starten einen Workflow in n8n.
- **Der i-doit-up-Node für n8n** liest und schreibt CMDB-Daten aus einem Workflow heraus, zum Beispiel um Objekte zu suchen, ein Objekt anzulegen oder zu aktualisieren oder einen Benutzer anzulegen.

Zusammen füllen Sie i-doit up aus anderen Quellen und lassen i-doit up Prozesse anderswo anstoßen, ohne eine eigene Integration zu schreiben.

Diese Seite beschreibt, wie Sie den Node installieren, wie Sie ihn mit Ihrer Instanz verbinden, welche Aktionen er bietet und wie Sie einen Workflow aus einem i-doit-up-Webhook starten.

## Voraussetzungen

- Eine laufende n8n-Instanz, die die URL Ihrer i-doit-up-Instanz erreicht.
    Die Integration wurde mit n8n 2.41 getestet.
- Für Webhooks muss i-doit up die Webhook-URL Ihrer n8n-Instanz erreichen.
- Ein [App-Token](user-management.md) des i-doit-up-Benutzers, als der die Workflows handeln sollen.
    Der Node erbt die [Rechte und Berechtigungen](rights-and-permissions.md) dieses Benutzers.

## i-doit-up-Node installieren

Der Node wird als Paket `i-n8n-nodes` ausgeliefert.
n8n lädt ihn als Custom Extension:

1. Legen Sie das Paketverzeichnis mit `package.json` und dem Ordner `dist` dort ab, wo Ihre n8n-Instanz es lesen kann, zum Beispiel im Datenverzeichnis von n8n.
2. Zeigen Sie mit der Umgebungsvariable `N8N_CUSTOM_EXTENSIONS` von n8n auf dieses Verzeichnis.
3. Starten Sie n8n neu.

Beispiel für eine n8n-Instanz in Docker Compose:

```yaml
services:
    n8n:
        image: docker.n8n.io/n8nio/n8n:2.41.4
        environment:
            - N8N_CUSTOM_EXTENSIONS=/home/node/.n8n/i-n8n-nodes
        volumes:
            - n8n_data:/home/node/.n8n
```

Nach dem Neustart erscheint der Node **i-doit up Action Selector** im Node-Panel, wenn Sie nach _i-doit_ suchen.

![Das Node-Panel von n8n mit „i-doit“ im Suchfeld. Die Ergebnisliste zeigt den Node „i-doit up Action Selector“.](../img/admin/n8n-node-panel.png)

## Node mit i-doit up verbinden

Der Node authentifiziert sich mit der Credential **i-doit up API**.
Legen Sie sie einmal an und verwenden Sie sie in allen Workflows:

1. Öffnen Sie in n8n **Credentials** und klicken Sie auf **Create credential**, oder wählen Sie im Credential-Feld des Nodes **Create new credential**.
2. Wählen Sie **i-doit up API**.
3. Tragen Sie unter **URL** die Adresse Ihrer i-doit-up-Instanz ohne Schrägstrich am Ende ein, zum Beispiel `https://cmdb.example.com`.
4. Fügen Sie das [App-Token](user-management.md) unter **API Token** ein.
5. Klicken Sie auf **Save**.
    n8n prüft die Verbindung gegen die Instanz und meldet _Connection tested successfully_.

![Der Credential-Dialog „i-doit up API“ in n8n mit den Feldern „URL“ und „API Token“, das Token maskiert. Über den Feldern steht der grüne Hinweis „Connection tested successfully“.](../img/admin/n8n-credential.png)

Das Token wird mit jeder Anfrage als HTTP-Header `X-API-TOKEN` gesendet, siehe [API](../dev/api.md).
Um den Zugriff zu entziehen, löschen Sie die App unter **Einstellungen > Benutzer > Apps** in i-doit up.

## Aktionen des Nodes

Fügen Sie den Node **i-doit up Action Selector** einem Workflow hinzu und wählen Sie eine **Action**.
Die Felder unter der Aktion ändern sich mit der Auswahl.

![Die Parameter des Nodes „i-doit up Actions“ in n8n. Die Credential „i-doit up“ ist ausgewählt, die Aktion ist „Find objects“, die Kategorie „cmdb.general“ ist eingetragen, das Feld „Criteria“ enthält einen Ausdruck, und „Offset“, „Per Page“ und „Sort“ stehen auf 0, 50 und „title:asc“.](../img/admin/n8n-node-parameters.png)

### Find objects

Sucht Objekte des aktiven Mandanten über die Objekt-API.

| Feld | Bedeutung |
|---|---|
| **Categories** | Eine oder mehrere Kategorie-Kennungen, deren Daten mit jedem Objekt zurückgegeben werden, zum Beispiel `cmdb.general`. Eine unbekannte Kennung stoppt den Node mit _Unknown category_. |
| **Criteria** | Filter als JSON, zum Beispiel `{"type":"eq","field":"id","value":"d3830ec9RZPXwu6o"}`. Lassen Sie `{}` stehen, um alle Objekte zu erhalten. |
| **Offset** | Anzahl der zu überspringenden Objekte. |
| **Per Page** | Anzahl der zurückgegebenen Objekte, 1 bis 1.000. |
| **Sort** | Sortierfeld und Richtung, zum Beispiel `title:asc`. |

Der Node gibt je Objekt ein Item zurück.
Jedes Item trägt das Objekt mit seinen Kategoriedaten und ein Feld `_paging` mit `offset`, `perPage` und `total`, sodass eine Schleife die nächste Seite holen kann.

### Get tenants

Gibt die Mandanten zurück, auf die der Benutzer des Tokens zugreifen darf.

| Feld | Bedeutung |
|---|---|
| **Limit** | Anzahl der zurückgegebenen Mandanten. |
| **Offset** | Anzahl der zu überspringenden Mandanten. |
| **ID** | Nur den Mandanten mit dieser ID zurückgeben. |
| **Sort By** | Sortierfeld und Richtung, zum Beispiel `title:asc`. |
| **Filter** | Filter als JSON. |

### Push Object

Legt ein Objekt an oder aktualisiert es, wenn ein Objekt mit derselben Referenz bereits existiert.
Die Referenz besteht aus einer **Reference ID** und einem **Reference Type** Ihrer Wahl, zum Beispiel der ID eines Datensatzes im Quellsystem und dem Namen dieses Systems.
Läuft der Workflow zweimal mit derselben Referenz, wird das Objekt also aktualisiert statt doppelt angelegt.

| Feld | Bedeutung |
|---|---|
| **Title** | Titel des Objekts. |
| **Class** | Kennung der [Klasse](../user/basics/classes.md), zum Beispiel `server`. |
| **Reference ID** | Externe ID, die das Objekt im Quellsystem identifiziert. |
| **Reference Type** | Name des Quellsystems oder ein anderer Qualifizierer der Reference ID. |
| **Data** | Kategoriedaten als JSON, nach Kategorie-Kennung gegliedert. |

Das Feld **Data** enthält je Kategorie einen Eintrag.
Jeder Eintrag nennt eine Strategie und die zu schreibenden Einträge, gegliedert nach einer Referenz-ID des Eintrags:

```json
{
    "cmdb.general": {
        "strategy": "overwrite",
        "data": {
            "main": {
                "title": "web-01",
                "description": "Importiert aus dem Inventarisierungswerkzeug"
            }
        }
    }
}
```

### Create user

Legt ein Benutzerkonto in i-doit up an.

| Feld | Bedeutung |
|---|---|
| **Username** | Anmeldename. |
| **Name** | Anzeigename. |
| **Email** | E-Mail-Adresse. |
| **Password**, **Password Confirmation** | 8 bis 64 Zeichen mit mindestens einem Kleinbuchstaben, einem Großbuchstaben und einer Ziffer. |
| **User Status** | _Enabled_ oder _Disabled_. |
| **Role** | _User_ oder _Admin_. |

Siehe [Benutzerverwaltung](user-management.md).

## Workflow aus i-doit up starten

i-doit up hat keinen eigenen Node, der auf Ereignisse wartet.
Stattdessen ruft i-doit up eine **Webhook**-URL auf, und der **Webhook**-Node von n8n nimmt den Aufruf entgegen.

### Webhook in i-doit up registrieren

Webhooks werden über die [API](../dev/api.md) verwaltet.
Senden Sie die Anfrage als der Benutzer, dessen App-Token der Workflow verwendet, und mit dem Header `x-tenant` des zu überwachenden Mandanten:

```bash
curl --request POST https://cmdb.example.com/api/v2/webhook \
    --header "X-API-TOKEN: YOUR_APP_TOKEN" \
    --header "x-tenant: YOUR_TENANT_ID" \
    --header "Content-Type: application/json" \
    --data '{
        "title": "n8n: object created",
        "webhookUrl": "https://n8n.example.com/webhook/idoit-up-object-created",
        "enabled": true,
        "triggerInfo": { "type": "cmdb.object.created", "class": null, "tenant": null }
    }'
```

Die Antwort enthält die ID des Webhooks und ein **Secret**.
Bewahren Sie das Secret auf, es wird nur einmal angezeigt und erlaubt Ihrem Workflow zu prüfen, dass ein Aufruf wirklich von i-doit up kam.

`triggerInfo` wählt das Ereignis.
Die Objekt- und Eintragsereignisse nehmen unter `class` optional eine Liste von Klassen-Kennungen an, um nur auf Objekte dieser Klassen zu reagieren.
Die Eintragsereignisse nehmen zusätzlich die zu überwachende `category` an.

| `type` | Löst aus, wenn |
|---|---|
| `cmdb.object.created` | ein Objekt angelegt wurde |
| `cmdb.object.deleted` | ein Objekt gelöscht wurde |
| `cmdb.entry.created` | ein Kategorieeintrag angelegt wurde, `category` nennt die Kategorie |
| `cmdb.entry.updated` | ein Kategorieeintrag geändert wurde, `category` nennt die Kategorie |
| `system.user.created`, `system.user.updated`, `system.user.deleted` | ein Benutzerkonto angelegt, geändert oder gelöscht wurde |
| `system.tenant.created`, `system.tenant.updated`, `system.tenant.deleted` | ein Mandant angelegt, geändert oder gelöscht wurde |

`GET /api/v2/webhook` listet die Webhooks des Mandanten, `PUT /api/v2/webhook/{id}` ändert einen, und `DELETE /api/v2/webhook/{id}` entfernt ihn.
Jeder Aufruf wird mit seinem Ergebnis protokolliert, `GET /api/v2/webhook-log` liefert diese Einträge.

### Was i-doit up sendet

i-doit up sendet eine `POST`-Anfrage mit einem JSON-Body an die Webhook-URL.
Der Body nennt das Ereignis in `type` und trägt die Daten des Ereignisses, bei einem Objekt zum Beispiel `id`, `title`, `class`, `tenantId` und `time`.

Der Header `X-Signature` enthält eine HMAC-SHA256-Signatur über den gesendeten JSON-Inhalt, berechnet mit dem Secret des Webhooks.
Prüfen Sie sie im Workflow, zum Beispiel in einem Code-Node, bevor Sie mit den Daten arbeiten.

### Beispiel-Workflow

1. Fügen Sie einen **Webhook**-Node hinzu, setzen Sie **HTTP Method** auf _POST_ und vergeben Sie einen **Path**, zum Beispiel `idoit-up-object-created`.
    Der Node zeigt die Produktions-URL, die Sie in i-doit up registrieren.
2. Fügen Sie den Node **i-doit up Action Selector** hinzu, wählen Sie die Credential und die Aktion **Find objects**.
3. Tragen Sie unter **Categories** `cmdb.general` und unter **Criteria** den folgenden Ausdruck ein, damit der Node das Objekt lädt, das den Aufruf ausgelöst hat:

    ```text
    {{ JSON.stringify({ type: "eq", field: "id", value: $json.body.id }) }}
    ```

4. Fügen Sie die Nodes hinzu, die das Objekt weiterverarbeiten, zum Beispiel einen Mail- oder Ticket-Node.
5. Veröffentlichen Sie den Workflow.

![Ein Workflow im n8n-Editor mit zwei Nodes. Der Node „i-doit up webhook“ links ist mit „POST“ markiert und mit dem Node „i-doit up Actions“ rechts verbunden, dessen Untertitel „findObjects“ lautet.](../img/admin/n8n-workflow.png)

Sobald im überwachten Mandanten ein Objekt angelegt wird, ruft i-doit up den Webhook auf, n8n führt den Workflow aus, und der i-doit-up-Node liefert das vollständige Objekt mit seinen Kategoriedaten.

## Weiterführende Themen

- [Benutzerverwaltung](user-management.md), wo das App-Token, mit dem sich der Node authentifiziert, auf dem Reiter **Apps** eines Benutzers angelegt wird.
- [API](../dev/api.md), die REST-API, die der Node und die Webhooks verwenden.
- [Rechte und Berechtigungen](rights-and-permissions.md), was der Benutzer hinter dem Token lesen und ändern darf.
- [Mandanten](tenants.md), Webhooks und der Node arbeiten innerhalb eines Mandanten.
- [n8n-Dokumentation](https://docs.n8n.io), Workflows, der Webhook-Node und Ausdrücke.

# Model Context Protocol (MCP)

Das **MCP-Add-on** ermöglicht einem KI-Client wie Claude, Ihre i-doit-up-CMDB über das [Model Context Protocol](https://modelcontextprotocol.io) zu lesen und zu bearbeiten, den offenen Standard für die Anbindung von KI-Clients an externe Daten.
Sobald die Verbindung besteht, kann der Client Objekte suchen, Kategorien und Klassen einsehen und, sofern der Schreibzugriff aktiviert ist, CMDB-Inhalte in Ihrem Namen anlegen und aktualisieren.
Das Add-on läuft als eigener Dienst neben i-doit up und wird über Ihre i-doit-up-URL und ein App-Token angesprochen, sodass jeder Aufruf als echter i-doit-up-Benutzer authentifiziert ist.

Diese Seite beschreibt die In-Produkt-Seite des Add-ons: wo Sie es finden, wie Sie das App-Token erstellen, wie Sie einen KI-Client verbinden, was der Client darf und wie Sie das Zugriffsprotokoll lesen.

## Was das MCP-Add-on leistet

MCP ist ein offener Standard, über den KI-Clients einheitlich mit externen Werkzeugen und Datenquellen sprechen.
Das i-doit-up-MCP-Add-on implementiert die Serverseite dieses Standards für Ihre CMDB, sodass ein MCP-fähiger Client folgendes kann:

- **Suchen und Lesen** von Objekten, Objektkategorien, Klassen, Dialog-Werten und Berichten.
- **Anlegen und Aktualisieren** von Objekten, Kategorieeinträgen, Klassen und Dialog-Werten, sofern der Schreibzugriff für den Mandanten aktiviert ist.

Der Client hält nie eine Datenbankverbindung.
Jede Anfrage läuft über die i-doit-up-API mit dem App-Token, das Sie hinterlegen, sodass der Client genau die Daten sieht und genau die Rechte des Benutzers beachtet, dem das Token gehört.

## Wo Sie die Seite finden

Öffnen Sie das [Benutzermenü](../user/basics/user-menu.md) (Avatar oben rechts) und wählen Sie **Einstellungen**.
Am unteren Ende der linken Seitenleiste, unterhalb von *Administration*, finden Sie die Gruppe **MCP** mit zwei Einträgen:

- **How to connect**, der Einrichtungsassistent.
- **Logs**, das Zugriffsprotokoll.

Die Gruppe **MCP** wird vom Add-on beigesteuert und erscheint erst, wenn das Add-on für Ihre Instanz installiert ist.
Der Eintrag **Logs** wird nur Benutzern angezeigt, die das Recht *MCP Logs access* besitzen, siehe [das Zugriffsprotokoll](#das-zugriffsprotokoll) weiter unten.

## App-Token erstellen

Der Client authentifiziert sich mit einem i-doit-up-**App-Token**.
Ein Token gehört zu einem Benutzer und trägt dessen Rechte, legen Sie es also auf dem Konto an, als das der KI-Client handeln soll.

1. Gehen Sie zu **Einstellungen → Benutzer** und öffnen Sie den Benutzer, als der der Client handeln soll.
2. Wechseln Sie auf den Reiter **Apps** und klicken Sie auf **Add app**.
3. Vergeben Sie einen Namen (zum Beispiel *Claude MCP*) und speichern Sie.
4. Kopieren Sie das Token aus dem Dialog.

Das Token wird **nur einmal** angezeigt.
Wenn Sie es verlieren, löschen Sie die App und legen Sie eine neue an, um ein frisches Token zu erhalten.

Das Token läuft nicht von selbst ab.
Um einen verbundenen Client später zu widerrufen, löschen Sie seine App im Reiter **Apps** und bestätigen Sie *Delete Application*, das Token wird dann innerhalb weniger Minuten ungültig.
Da das Token die Rechte des Benutzers trägt, verwenden Sie besser einen dedizierten Benutzer mit nur den nötigen Rechten statt eines Administratorkontos.

## KI-Client verbinden

Der Reiter **How to connect** baut Ihnen ein fertiges Verbindungssetup zum Einfügen.
Sie müssen URL und Header nicht von Hand zusammensetzen.

![Der Reiter How to connect in i-doit up. Schritt 1 wählt die Verbindungsmethode "Authorization header, Streamable HTTP (recommended)", Schritt 2 enthält ein Feld für das App-Token, und Schritt 3 zeigt den generierten Terminal-Befehl "claude mcp add" sowie einen gleichwertigen .mcp.json-Konfigurationsblock, beide bereits mit der MCP-Server-URL und der i-doit-up-Mandanten-URL vorausgefüllt.](../img/admin/mcp-how-to-connect.png)

1. Belassen Sie in **Schritt 1** die Verbindungsmethode auf *Authorization header, Streamable HTTP (recommended)*.
    Streamable HTTP ist der aktuelle Transport.
    Das Dropdown bietet außerdem eine ältere SSE-Methode, siehe [Verbindungsmethoden](#verbindungsmethoden) weiter unten.
2. Fügen Sie in **Schritt 2** das [App-Token](#app-token-erstellen) ein, das Sie erstellt haben.
    Das Token wird nur zum Bauen des Befehls verwendet und von der Seite nicht gespeichert.
3. Kopieren Sie in **Schritt 3** entweder den einzeiligen Terminal-Befehl für Claude Code oder den gleichwertigen Konfigurationsblock für eine `.mcp.json`-Datei oder Claude Desktop.

Der generierte Befehl enthält bereits Ihre MCP-Server-URL und Ihre i-doit-up-URL.
Die i-doit-up-URL wird im Header `X-Idoit-Url` gesendet und identifiziert Ihren Mandanten, das App-Token wird als `Bearer`-Token gesendet:

```bash
claude mcp add --transport http idoit https://mcp.example.com/mcp \
    --header "Authorization: Bearer YOUR_APP_TOKEN" \
    --header "X-Idoit-Url: https://your-instance.example.com"
```

```json
{
    "mcpServers": {
        "idoit": {
            "type": "http",
            "url": "https://mcp.example.com/mcp",
            "headers": {
                "Authorization": "Bearer YOUR_APP_TOKEN",
                "X-Idoit-Url": "https://your-instance.example.com"
            }
        }
    }
}
```

### Verbindungsmethoden

Schritt 1 bietet zwei Methoden.
Welche Sie auch wählen, **Schritt 3** passt Befehl und Konfiguration entsprechend an, der kopierte Block ist also immer korrekt.

| Methode | Transport | Endpunkt | Zugangsdaten |
|---|---|---|---|
| **Authorization header, Streamable HTTP** (empfohlen) | Streamable HTTP | `/mcp` | Header `Authorization: Bearer <Token>` und `X-Idoit-Url` |
| **Authorization header, SSE** | SSE (Legacy) | `/mcp/sse` | dieselben beiden Header |

Die beiden Methoden unterscheiden sich nur im Transport.
Streamable HTTP ist der aktuelle MCP-Transport.
SSE ist der ältere Transport, beibehalten für Clients, die Streamable HTTP noch nicht beherrschen.
Beide erreichen dieselben Tools und senden das App-Token sowie die Mandanten-URL als Request-Header, nie in der URL.

Fügen Sie den Block in Ihren Client ein, starten Sie ihn neu und bitten Sie den Client um eine Leseaktion, etwa das Auflisten der Klassen.
Der Aufruf erscheint dann innerhalb weniger Sekunden im [Zugriffsprotokoll](#das-zugriffsprotokoll).

## Was der KI-Client darf

Standardmäßig kann der Client Ihre CMDB lesen und, sofern der Schreibzugriff aktiviert ist, verändern.

- **Lese**-Aktionen suchen und sichten Objekte, Objektkategorien, Klassen, Dialog-Werte und Berichte.
- **Schreib**-Aktionen legen CMDB-Inhalte wie Objekte, Kategorieeinträge, Klassen und Dialog-Werte an, aktualisieren, duplizieren und löschen sie.

Der Schreibzugriff ist eine Einstellung pro Mandant und in der aktuellen Version standardmäßig aktiviert.
Diese Einstellung ist in der aktuellen Version noch nicht in der Oberfläche verfügbar; damit ein Client nur liest, geben Sie seinem Token einen Benutzer, dessen Rechte keine Änderungen erlauben.
Jeder Schreibvorgang wird vor der Ausführung im Zugriffsprotokoll festgehalten, sodass Sie stets nachvollziehen können, was der Client geändert hat.
Da der Client als der Benutzer des Tokens handelt, erreicht er nur Daten, die dieser Benutzer sehen darf, und ändert nur, was dieser Benutzer ändern darf, siehe [Rechte und Berechtigungen](rights-and-permissions.md).

## Das Zugriffsprotokoll

Der Reiter **Logs** zeichnet jeden Tool-Aufruf auf, den die verbundenen Clients gegen Ihren Mandanten machen.

![Das MCP-Zugriffsprotokoll in i-doit up. Eine Überschrift "Access Log" mit der Zeile "4 total events recorded" und den Buttons Refresh und Clear Log, darüber eine Tabelle mit den Spalten Timestamp, Type, Name, User, Parameters und Summary. Vier Zeilen zeigen Tool-Aufrufe: list_reports, search_objects, list_categories und list_classes, jeweils mit dem aufrufenden Benutzer und einer kurzen Ergebniszusammenfassung wie "Returned 89 classes".](../img/admin/mcp-access-log.png)

Jede Zeile zeigt:

| Spalte | Anmerkungen |
|---|---|
| **Timestamp** | Wann der Aufruf erfolgte. |
| **Type** | Die Art des Aufrufs, zum Beispiel *tool* für einen Tool-Aufruf. |
| **Name** | Das ausgeführte Tool, zum Beispiel `list_classes` oder `search_objects`. |
| **User** | Der i-doit-up-Benutzer, dessen App-Token verwendet wurde. Das Token selbst wird nie angezeigt. |
| **Parameters** | Die Argumente, die der Client übergeben hat, zum Beispiel `{"query":"server"}`. |
| **Summary** | Ein kurzes Ergebnis, zum Beispiel *Returned 89 classes*. |

Die Liste aktualisiert sich nicht von selbst, klicken Sie auf **Refresh**, um sie neu zu laden.
Das Protokoll bezieht sich auf den aktiven Mandanten, jede i-doit-up-URL hat also ihr eigenes Protokoll, siehe [Mandanten](tenants.md).

**Clear Log** entfernt alle Einträge des Mandanten.

Der Reiter **Logs** ist durch ein Add-on-Recht geschützt, das nicht automatisch vergeben wird, auch nicht an Administratoren, der Eintrag bleibt also verborgen, bis Sie das Recht vergeben.
Öffnen Sie dazu **Einstellungen → Rechte**, wählen Sie *Add-on rights → MCP* und klicken Sie auf **Neues Recht**.
Wählen Sie den Benutzer, die Rolle oder die Gruppe, aktivieren Sie **MCP Logs access** (ergänzen Sie **Clear MCP Logs**, um auch das Leeren zu erlauben) und speichern Sie.
Siehe [Rechte und Berechtigungen](rights-and-permissions.md).

## Siehe auch

- [Add-ons](addons.md): Der MCP-Server wird als Add-on ausgeliefert und mit Ihrer i-doit-up-Instanz registriert.
- [Rechte und Berechtigungen](rights-and-permissions.md): regeln, wer das Zugriffsprotokoll öffnen und leeren darf.
- [Mandanten](tenants.md): jede i-doit-up-URL ist ein eigener MCP-Mandant mit eigenem Zugriffsprotokoll.
- [Benutzerverwaltung](user-management.md): hier wird das App-Token auf einem Benutzerkonto erstellt.
- [Model Context Protocol](https://modelcontextprotocol.io): der offene Standard, den das Add-on implementiert.

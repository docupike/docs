# App-Tokens

Mit einem App-Token meldet sich ein Programm ohne Benutzername und Passwort an i-doit up an.
Clients wie Skripte für die [API](../dev/api.md), UPSCAN und das [MCP-Add-on](mcp.md) verwenden ein App-Token.
Diese Seite beschreibt, wie Sie App-Tokens erstellen, kopieren, umbenennen und löschen.

## So funktionieren App-Tokens

Ein App-Token gehört immer zu genau einem Benutzerkonto.
Eine Anfrage mit dem Token läuft als dieser Benutzer und hat daher genau dessen [Rechte und Berechtigungen](rights-and-permissions.md).
Erstellen Sie das Token auf dem Konto, als das der Client handeln soll.
Verwenden Sie dafür besser einen eigenen Benutzer mit nur den Rechten, die der Client braucht, als ein Administratorkonto.

In der Benutzeroberfläche erscheint jedes Token als App im Reiter **Apps** seines Benutzers.
In der Dokumentation der [API](../dev/api.md) heißen App-Tokens auch API-Tokens.

- Ein Benutzerkonto kann mehrere Apps haben, jede mit einem eigenen Token.
- Ein App-Token ist eine Zeichenkette aus 32 Zeichen.
- Ein App-Token hat kein Ablaufdatum.
    Es bleibt gültig, bis Sie seine App löschen.

## Benötigte Rechte

App-Tokens verwalten Sie unter **Einstellungen > Benutzerverwaltung > Benutzer**.
Um diese Seite zu öffnen, benötigen Sie mindestens eines der Rechte **Benutzer hinzufügen**, **Benutzer bearbeiten** oder **Benutzer entfernen**.
Um eine App umzubenennen oder zu löschen, benötigen Sie **Benutzer hinzufügen** oder **Benutzer bearbeiten**.
Siehe [Rechte und Berechtigungen](rights-and-permissions.md).

Im Freemium-Tarif von i-doit up ist die Anzahl der App-Tokens begrenzt.
Für weitere App-Tokens führen Sie ein Upgrade Ihres Tarifs durch, siehe [Abonnement, Abrechnung und Upgrade](subscription.md).

## App-Token erstellen

1. Öffnen Sie das Benutzermenü (Avatar oben rechts) und wählen Sie **Einstellungen**.
2. Gehen Sie zu **Benutzerverwaltung > Benutzer** und öffnen Sie den Benutzer, als der der Client handeln soll.
3. Wechseln Sie in den Reiter **Apps** und klicken Sie auf **App hinzufügen**.
4. Geben Sie einen **Name** für die App ein, zum Beispiel den Namen des Clients, und klicken Sie auf **Speichern**.

Der Dialog **Token kopieren** öffnet sich und zeigt das neue Token.

## Token kopieren

Klicken Sie auf **Token kopieren**, um das Token in die Zwischenablage zu kopieren, und dann auf **Schließen**.

Das Token wird nur einmal angezeigt.
i-doit up speichert nur einen Hash des Tokens und kann das Token deshalb später nicht noch einmal anzeigen.
Wenn Sie das Token verlieren, löschen Sie die App und legen Sie eine neue an, um ein neues Token zu erhalten.

## App umbenennen

1. Öffnen Sie den Reiter **Apps** des Benutzers.
2. Klicken Sie in der Zeile der App auf das Bearbeiten-Symbol.
3. Ändern Sie im Dialog **App bearbeiten** den **Name** und klicken Sie auf **Speichern**.

Das Umbenennen einer App ändert ihr Token nicht.

## App löschen und Token widerrufen

Löschen Sie eine App, um ihr Token zu widerrufen, zum Beispiel wenn ein Client nicht mehr verwendet wird oder ein Token in falsche Hände geraten sein könnte.

1. Öffnen Sie den Reiter **Apps** des Benutzers.
2. Fahren Sie mit der Maus über die Zeile der App und klicken Sie auf das Löschen-Symbol.
3. Bestätigen Sie den Dialog **Anwendung löschen** mit **Ja, löschen**.

Danach kann sich niemand mehr mit dem Token anmelden.
Clients, die das Token noch verwenden, benötigen ein neues.

## Wofür Sie App-Tokens brauchen

| Client | So verwendet er das App-Token |
|---|---|
| [API](../dev/api.md) | Senden Sie das Token bei jeder Anfrage im HTTP-Header `X-API-TOKEN`. |
| UPSCAN | Tragen Sie das Token in der UPSCAN-Konfiguration für den Export nach i-doit up ein. |
| [Model Context Protocol (MCP)](mcp.md) | Fügen Sie das Token im Reiter **How to connect** ein, der daraus das Verbindungssetup für Ihren KI-Client baut. |

## Siehe auch

- [Benutzerverwaltung](user-management.md): hier verwalten Sie die Benutzerkonten, zu denen die App-Tokens gehören.
- [Rechte und Berechtigungen](rights-and-permissions.md): steuern, was ein Client mit seinem App-Token tun darf.
- [API](../dev/api.md): die REST-API von i-doit up.
- [Model Context Protocol (MCP)](mcp.md): einen KI-Client mit einem App-Token verbinden.

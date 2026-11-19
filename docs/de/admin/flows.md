# Flows-Add-on

Das Add-on Flows automatisiert wiederkehrende Aufgaben in i-doit up mit Auslösern, Bedingungen und Aktionen.
Diese Seite beschreibt, wie das Add-on arbeitet, wo es in i-doit up erscheint und was Sie prüfen, wenn etwas nicht funktioniert.
Die Sicht der Benutzer beschreibt [Flows](../user/flows.md).

!!! info
    Verfügbar ab i-doit up 3.3.0.

## So arbeitet das Add-on

Flows ist ein externes Add-on für i-doit up mit dem Vendor `i-doit` und der ID `flows`.
Es läuft als eigener Dienst mit einer eigenen PostgreSQL-Datenbank.
Die Datenbank enthält die Flows, Flow-Gruppen, Logs, den Verlauf und die verschlüsselte Verbindung zu i-doit up.

- i-doit up lädt die Oberfläche des Add-ons unter `/a/i-doit/flows/`.
- Für Ereignis-Auslöser registriert das Add-on Webhooks in i-doit up.
    i-doit up signiert jede Benachrichtigung, und das Add-on weist Benachrichtigungen mit falscher Signatur ab.
    Einzurichten ist dabei nichts.
- Die Aktionen eines Flows rufen die API von i-doit up als [Flow Operator](flows/rights.md#flow-benutzer) des Flows auf.
- Das Add-on sendet E-Mails über einen Mailserver, der am Dienst des Add-ons eingerichtet ist, nicht in i-doit up.

Wie Sie das Add-on selbst betreiben und registrieren, beschreibt [Flows selbst betreiben](flows/self-hosting.md).

## Wo Flows in i-doit up erscheint

Nachdem das Add-on registriert ist:

- erscheint **Flows** in der Navigation unter **Add-ons**,
- erscheint **Flow users** in den Einstellungen in der Gruppe **Flows**,
- erscheinen die Rechte **Manage Flows** und **Select Flow Operator** in den Add-on-Rechten,
- erscheint das Widget **Flows** an Objekten für Flows mit Button-Auslöser.

Die Namen der Menüeinträge und Rechte sind englisch, auch in der deutschen Oberfläche.
Das Add-on selbst folgt der Sprache von i-doit up.

## Bevor Benutzer loslegen

1. Vergeben Sie das Recht **Manage Flows** an die Benutzer, die Flows erstellen.
    Die Admin-Rolle erhält **Manage Flows** und **Select Flow Operator** bei der Installation von Flows automatisch.
    Anderen Rollen vergeben Sie die Rechte unter **Einstellungen → Benutzerverwaltung → Rechte**, *Add-on rights → Flows*.
2. Geben Sie dem Standard-Flow-Benutzer den Zugriff, den er braucht.
    Wenn ein Administrator mit dem Recht **Select Flow Operator** Flows zum ersten Mal öffnet, bietet ein Dialog das an.
3. Fügen Sie optional weitere Flow-Benutzer hinzu und vergeben Sie **Select Flow Operator**.

Alle drei Schritte beschreibt [Rechte und Flow-Benutzer](flows/rights.md).

## Fehlerbehebung

**Das Widget Flows erscheint nicht an Objekten**

Prüfen Sie, ob der Flow aktiv oder im Testmodus ist und einen Button-Auslöser hat, der für das Objekt gilt.
Prüfen Sie, ob der Widget-Bereich der Objektansicht eingeblendet ist.
Fehlt das Widget weiterhin, registrieren Sie das Add-on erneut mit `--force`, siehe [Flows selbst betreiben](flows/self-hosting.md#aktualisieren-und-neu-registrieren).
Das ist nach einem Upgrade von i-doit up nötig.

**Flows mit Aktionen an Objekten tun nichts oder schlagen fehl**

Der Flow Operator braucht Zugriff auf die Objekte, Objekttypen und Kategorien, mit denen der Flow arbeitet.
Prüfen Sie die Rechte des Standard-Flow-Benutzers, siehe [Rechte und Flow-Benutzer](flows/rights.md#standard-flow-benutzer).

**Flows mit der Bedingung Benutzer / Benutzergruppe werden immer übersprungen**

Nur Button-Auslöser haben einen auslösenden Benutzer.
Bei zeitbasierten Auslösern und Ereignis-Auslösern überspringt diese Bedingung die Ausführung.

## Weiterführende Informationen

-   [Rechte und Flow-Benutzer](flows/rights.md)
-   [Flows selbst betreiben](flows/self-hosting.md)
-   [Flows](../user/flows.md)
-   [Add-ons](addons.md)

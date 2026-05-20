# Mandanten

i-doit up unterstützt **Multi-Tenancy**: Eine einzelne Instanz kann in isolierte Mandanten unterteilt werden.
Jeder Mandant verfügt über eine eigene Dokumentation, eigene Objekte und Kategorien; die Berechtigungen gelten mandantenintern und sind über Mandantengrenzen hinweg nicht sichtbar.

Die Mandantenfähigkeit ist eine optionale Funktion.
Wenn nur ein Mandant vorhanden ist, wird der Mandantenumschalter für normale Benutzer nicht angezeigt.

## Rechte

Um Mandant zu verwalten, benötigen Sie die Berechtigung **Rechte > Verwaltung > Mandant verwalten**.

Öffnen Sie im Benutzermenü (oben rechts) die **Einstellungen** und navigieren Sie zu **Benutzerverwaltung > Rechte**, um die Rechte zu konfigurieren.
Siehe [Rechte und Berechtigungen](rights-and-permissions.md).

## Mandant verwalten

Öffnen Sie im Benutzermenü die **Einstellungen** und navigieren Sie zu **Verwaltung > Mandanten**, um eine Liste aller Mandanten im System anzuzeigen.
Die Tabelle enthält die Spalten **Bezeichnung**, **Anzahl der Objekte** und **Anzahl der Benutzer**.

### Einen Mandanten anlegen

1. Öffnen Sie im Benutzermenü die **Einstellungen** und navigieren Sie zu **Verwaltung > Mandanten**.
2. Klicken Sie auf **Neuer Mandant**.
3. Geben Sie einen Namen ein und bestätigen Sie.

### Einen Mandanten umbenennen

Öffnen Sie die Seite mit den Mandantendaten und klicken Sie direkt in der Tabelle auf den Mandantennamen, um ihn zu bearbeiten.

### Einen Mandanten löschen

1. Öffnen Sie die Seite mit den Mandantendaten.
2. Klicken Sie auf **Mandanten löschen**.
3. Bestätigen Sie die Dialogmeldung.

!!! Warnung
    Durch das Löschen eines Mandanten werden alle Objekte und Dokumentationen innerhalb dieses Mandanten endgültig entfernt.
    Dieser Vorgang kann nicht rückgängig gemacht werden.

## Benutzer einem Mandanten zuweisen

Benutzer müssen einem Mandanten ausdrücklich zugewiesen werden, bevor sie darauf zugreifen können.

### Auf der Mandanten-Detailseite

1. Öffnen Sie im Benutzermenü die **Einstellungen**, gehen Sie zu **Verwaltung > Mandanten** und öffnen Sie einen Mandanten.
2. Klicken Sie auf **Benutzer zuweisen**.
3. Wählen Sie einen oder mehrere Benutzer aus und bestätigen Sie.

Um einen Benutzer aus einem Mandanten zu entfernen, wählen Sie den Benutzer in der Tabelle „Zugewiesene Benutzer“ aus und klicken Sie auf **Zuordnung aufheben**.

### Auf der Seite mit den Benutzerdaten

1. Gehen Sie zu **Einstellungen > Benutzerverwaltung > Benutzer** und öffnen Sie einen Benutzer.
2. Fügen Sie im Abschnitt **Mandanten** Mandantenzuordnungen hinzu oder entfernen Sie diese.

!!! Info
    Wenn einem Benutzer kein Mandant zugewiesen ist, wird ihm eine Meldung angezeigt, dass er keinen Zugriff auf einen Mandanten hat.
    Weisen Sie dem Benutzer mindestens einen Mandanten zu, bevor er mit dem System arbeiten kann.

## Standardmandant

Jeder Benutzer hat einen **Standard-Mandanten**: den Mandanten, der bei der Anmeldung automatisch ausgewählt wird.

Um den Standard-Mandanten eines Benutzers zu ändern, öffnen Sie die Seite mit den Benutzerdetails und legen Sie das Feld **Standard-Mandant** fest.

Wenn der Standardmandant gelöscht wird, muss dem Benutzer ein neuer Standardmandant zugewiesen werden, bevor er sich anmelden kann.

## Zwischen Mandanten wechseln

Wenn ein Benutzer Zugriff auf mehrere Mandanten hat, erscheint in der oberen Navigationsleiste ein **Mandanten-Umschalter**.
Klicken Sie darauf, um alle verfügbaren Mandanten anzuzeigen und einen auszuwählen.
Die Anwendung wird neu geladen und zeigt nur noch die Daten des ausgewählten Mandanten an.

Die Anzahl der Objekte in jedem Mandanten wird im Umschalter neben dem Mandantennamen angezeigt.

## Berechtigungen und Geltungsbereich

Alle Berechtigungen, einschließlich Kategorieberechtigungen, Attributberechtigungen und Berechtigungen für den Objektlebenszyklus, werden im Rahmen des aktuell aktiven Mandanten ausgewertet.
Ein Benutzer, der den Mandanten wechselt, übernimmt die für diesen Mandanten definierten Berechtigungen.

Netzwerkdaten (Prüfungen auf IP-Adresskonflikte, DHCP-Konfigurationen) und Abschnitte werden ebenfalls mandantenbezogen bereitgestellt.

## Siehe auch

- [Rechte und Berechtigungen](rights-and-permissions.md)
- [Benutzerverwaltung](user-management.md)
- [Mandanten-Umschalter](../user/basics/tenant-switcher.md)

# Berechtigungen

Die Seite **Berechtigungen** enthält die regelbasierte Tabelle für jeden Bereich, die festlegt, welche Aktionen ein Benutzer, eine Gruppe oder eine Rolle auf der Datenebene ausführen darf.
Rechte legen fest, auf welche *Benutzeroberflächen* ein Benutzer zugreifen kann; Berechtigungen legen fest, welche *Aktionen* ein Benutzer an Objekten, Klassen oder allen Objekten des aktiven Mandanten ausführen darf.
Einen Überblick finden Sie unter [Rechte und Berechtigungen](rights-and-permissions.md).

Öffnen Sie die Seite über das Benutzermenü (Avatar) ▸ **Einstellungen** ▸ **Benutzerverwaltung** ▸ **Berechtigungen**.

## Layout

Die Seite besteht aus einer einzigen Tabelle innerhalb einer Karte mit dem Titel **Berechtigungen**, über der sich eine Filterleiste und eine Schaltfläche **Neue Berechtigung +** befinden.

### Filterleiste

Drei Kombinationsfelder sowie ein **Mehr ⌄**-Erweiterungsfeld dienen zur Filterung der Tabelle:

| Filter | Was wird eingegrenzt |
|---|---|
| **Benutzer / Rolle / Gruppe** | Zeigt nur Regeln an, die dem ausgewählten Subjekt gewährt wurden. |
| **Gültigkeitsbereich** | *Alle Objekte*, eine bestimmte Klasse (z. B. *Server*) oder ein bestimmter Objektlebenszyklus. |
| **Berechtigung** | Die Aktionskategorie (*Lesen*, *Bearbeiten*, *Archivieren*, *Löschen*, *Objektlebenszyklus*, *Konfigurierte Berechtigungen*, …). |
| **Mehr** | Zeigt zusätzliche Filter an, wie z. B. Details zum Geltungsbereich oder die gewährende Rolle. |

### Tabellenspalten

| Spalte | Anmerkungen |
|---|---|
| **Aktionen** | Papierkorb-Symbol zum Löschen der Regel. |
| **Benutzer / Rolle / Gruppe** | Das Subjekt, für das die Regel gilt (Avatar + Name). |
| **Geltungsbereich** | Welche Objekte die Regel abdeckt, zum Beispiel *Objektlebenszyklus*, *Alle Objekte* oder eine bestimmte Klasse. |
| **Gültigkeitsbereich, Details** | Klassenspezifische oder objektspezifische Qualifizierer (`n / a`falls zutreffend). |
| **Berechtigung** | Eine oder mehrere Aktionen: *Lesen*, *Bearbeiten*, *Archivieren*, *Löschen*, *Erstellen* oder zusammengesetzte Bezeichnungen wie *Alle Berechtigungen*. |

## Berechtigung hinzufügen

1. Klicken Sie auf **Neue Berechtigung +**.
2. Wählen Sie den **Betreff** aus: einen Benutzer, eine Rolle oder eine Gruppe.
3. Wählen Sie den **Gültigkeitsbereich** aus: *Alle Objekte*, eine Klasse oder *Objektlebenszyklus*.
4. Wählen Sie einen oder mehrere **Berechtigungswerte** aus der Liste aus.
5. Speichern.

Die neue Regel wird bei der nächsten Anfrage der betroffenen Person angewendet; ein Abmelden ist nicht erforderlich.

## Eine Berechtigung löschen

Klicken Sie auf das Papierkorb-Symbol in der Zelle „Aktionen“ der Zeile.
Ein Bestätigungsdialogfeld sichert die Aktion ab.

## Kombinationsregeln

Berechtigungen sind **additiv**: Jede Regel, die eine Berechtigung gewährt, trägt zum tatsächlichen Zugriffsrecht des Benutzers bei.
Es gibt keine Übersteuerung durch Verweigerungen.
Ein Benutzer kann auf ein Objekt zugreifen, wenn eine der für ihn geltenden Regeln die angeforderte Berechtigung in einem Geltungsbereich gewährt, der das Objekt umfasst.

## Geltungsbereich für Mandant

Wie bei jeder anderen Konfiguration gelten die Berechtigungen für den aktiven Mandanten.
Die Erteilung einer Berechtigung in Mandant A gewährt nicht denselben Zugriff in Mandant B.

## Siehe auch

- [Rechte und Berechtigungen](rights-and-permissions.md)
- [Benutzerverwaltung](user-management.md)
- [Objekt-Tools, Registerkarte „Berechtigungen“](../user/basics/object-tools.md)

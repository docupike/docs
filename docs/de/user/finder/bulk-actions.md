# Massenaktionen

Das Dropdown-Menü **Bearbeiten ⌄** oberhalb der Finder-Tabelle ist der Einstiegspunkt für Aktionen, die auf mehrere Objekte gleichzeitig angewendet werden können.
Das Dropdown-Menü ist deaktiviert, bis mindestens eine Zeile ausgewählt ist.
Wählen Sie Zeilen über das Kontrollkästchen in der Spaltenüberschrift aus oder markieren Sie einzelne Zeilen.

## Menü öffnen

1. Suchen oder filtern Sie, damit nur die für Sie relevanten Zeilen angezeigt werden (optional).
2. Aktivieren Sie das Kontrollkästchen in der Tabellenkopfzeile, um alle sichtbaren Zeilen auszuwählen, oder aktivieren Sie die Kontrollkästchen einzelner Zeilen.
3. Klicken Sie auf das kleine **⌄**-Caret-Symbol neben der Schaltfläche **Bearbeiten**.

## Menüstruktur

Das Menü ist in zwei Gruppen unterteilt.

### Bearbeiten

| Aktion | Anmerkungen |
|---|---|
| **Bearbeiten (n)** | Öffnet das Formular zur Mehrfachbearbeitung der ausgewählten Objekte. |
| **Duplizieren** | Erstellt eine Kopie jedes ausgewählten Objekts. Die Kopie erhält den ursprünglichen Namen mit einem numerischen Suffix. |
| **Klasse ändern (n)** | Weist jedem ausgewählten Objekt eine andere Klasse zu. Ein Bestätigungsdialog warnt vor möglichem Attributverlust. |

### Status ändern

| Aktion | Anmerkungen |
|---|---|
| **Wiederherstellen (n)** | Versetzt archivierte Objekte wieder in den *aktiven* Zustand. Deaktiviert, wenn Ihre Auswahl keine archivierten Objekte enthält. |
| **Archivieren (n)** | Markiert die ausgewählten Objekte als *archiviert*: Sie bleiben durchsuchbar, sind jedoch optisch hervorgehoben. |
| **Löschen (n)** | Markiert die ausgewählten Objekte dauerhaft zum Löschen. Öffnet das unten beschriebene Bestätigungsfenster. |

Die Zahl in Klammern gibt immer an, auf wie viele der ausgewählten Objekte sich die Aktion auswirkt.

## Löschbestätigung

Wenn Sie **Löschen (n)** auswählen, wird ein Modalfenster geöffnet:

> **Objekt löschen?
> ***Sie sind dabei, den Status auf „Löschen“ zu ändern.
> **Möchten Sie wirklich {n} Objekte löschen?*

Das Modalfenster enthält:

- Ein Kontrollkästchen „**Nicht mehr anzeigen**“ (benutzerspezifische Einstellung).
- Eine Schaltfläche „**Abbrechen**“ (schließt das Modalfenster).
- Eine Hauptschaltfläche „**Ja, löschen**“.

Nach der Bestätigung erscheint in der unteren linken Ecke die Meldung *N Objekte wurden gelöscht*: und die Tabelle wird ohne die gelöschten Zeilen neu geladen.

## Tipps

- Eine Zeile bleibt auch dann ausgewählt, wenn Sie die Paginierung ändern; der Auswahlzähler unten (*N von M Objekten sind ausgewählt*) zeigt die laufende Gesamtzahl an.
- Klicken Sie auf **Auswahl aufheben** (neben dem Auswahlzähler), um alle Auswahlen auf einmal zu löschen.
- Die gleichen Aktionen stehen auch auf den Detailseiten der einzelnen Objekte zur Verfügung, indem Sie auf das Caret-Symbol neben der Schaltfläche **Bearbeiten** in der Kopfzeile klicken.

## Siehe auch

- [Objektdetailseite](../basics/object-details.md)
- [Finder filtern](set-filter.md)

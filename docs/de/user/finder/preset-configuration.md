# Voreinstellungen konfigurieren

Eine **Voreinstellung** legt fest, welche Attribute im Finder als Tabellenspalten angezeigt werden, in welcher Reihenfolge und für welche Klassen die Voreinstellung gilt.
Die aktive Voreinstellung wird in der Dropdown-Liste über der Finder-Tabelle angezeigt, die mit ihrem Namen (z. B. **Standardklasse**) beschriftet ist.
## Rechte

Zum Wechseln zwischen Voreinstellungen oder zum Bearbeiten der Spaltenauswahl Ihrer persönlichen Voreinstellung sind keine Administratorrechte erforderlich.
Das Speichern einer Spaltenauswahl zusammen mit einem Suchbegriff und Filtern unter einem Namen erfolgt über den Dialog [Suche speichern](saved-views.md) und steht ebenfalls allen Benutzern zur Verfügung.

## Aktives Preset wechseln

Öffnen Sie das Dropdown-Menü mit dem Namen der aktuellen Voreinstellung (z. B. **Standard für Klasse**).
Wählen Sie die gewünschte Voreinstellung aus.
Die Tabelle wird sofort mit den neuen Spalten neu geladen.

## Eine Voreinstellung konfigurieren

1. Klicken Sie auf die Schaltfläche **Bearbeiten** (Symbol mit einem Bleistift auf einer Liste) rechts neben dem Dropdown-Menü für die Voreinstellungen.
2. Der Bereich **Voreinstellung konfigurieren** wird auf der rechten Seite der Seite angezeigt.

In der Schublade sind zwei nebeneinander angeordnete Listen zu sehen.

### Überschrift der Schublade

- Der Titel der Schublade lautet **Voreinstellung konfigurieren**, ganz rechts befindet sich eine Schaltfläche **Schließen** (×).
- Unterhalb des Titels wird der Name der aktiven Voreinstellung angezeigt (zum Beispiel **Standard der Klasse**), gefolgt von:
  - **Voreinstellung umbenennen**: Bleistift-Symbol.
  - **Löschen**: Papierkorb-Symbol (nur für benutzerdefinierte Voreinstellungen aktiviert, nicht für integrierte).
- Ein Kombinationsfeld für den Klassenkontext (z. B. **Alle Attribute ⌄**) und ein Eingabefeld **Nach Attributen suchen** filtern die in den Listen angezeigten Elemente.

### Linke Liste, verfügbare Attribute (n)

Ein nach Kategorien geordneter Baum aller Attribute, die der Voreinstellung hinzugefügt werden *könnten*.

- In jeder Kategoriezeile befindet sich am rechten Rand die Schaltfläche **+ 1 Kategorie hinzufügen**, mit der alle Attribute dieser Kategorie zur Voreinstellung hinzugefügt werden.
- In jeder Attributzeile befindet sich die Schaltfläche **+ 1 Attribut hinzufügen**, mit der nur dieses Attribut hinzugefügt wird.
- Zwei Symbolschaltflächen oberhalb der Liste, **Alle erweitern** und **Alle reduzieren**: Zum Ein- und Ausblenden der Kategoriebaumstruktur.

### Rechte Liste, Spalten in der Tabelle (n)

Die derzeit in der Voreinstellung enthaltenen Attribute, in der Reihenfolge ihrer Anzeige.

- In jeder Zeile befindet sich eine kleine **× (Schließen)**-Schaltfläche, mit der das Attribut aus der Voreinstellung entfernt wird.
- Oben rechts in der Liste befinden sich drei Schaltflächen zum Anordnen:
  - **↕**: Die ausgewählte Zeile nach oben oder unten verschieben.
  - **↑-Leiste**: Die ausgewählte Zeile an den Anfang verschieben.
  - **↓-Leiste**: Die ausgewählte Zeile an das Ende verschieben.
- Die Reihen können auch per **Drag & Drop** neu angeordnet werden: Jede Reihe ist`draggable`  und kann direkt angefasst werden.

### Ganz unten in der Schublade

- **+ Speichern unter**: Speichert die aktuelle Konfiguration als neue persönliche Voreinstellung.
- **Aktualisieren**: Übernimmt die Änderungen in die aktive Voreinstellung.
- **Schließen**: Schließt die Schublade, ohne zu speichern.

## Die Spaltenauswahl als wiederverwendbare Suche speichern

Im Bereich **Voreinstellung konfigurieren** wird die Spaltenauswahl der aktiven Voreinstellung gespeichert.
Um die Spaltenauswahl zusammen mit dem aktuellen Suchbegriff und den Filtern unter einem Namen zu speichern, den Sie später wieder anwenden können, verwenden Sie stattdessen den Dialog [Suche speichern](saved-views.md).

## Gemeinsame Voreinstellungen verwalten (Admin)

Administratoren verwalten Voreinstellungen, die allen Benutzern auf einer separaten Seite zur Verfügung stehen.

1. Öffnen Sie **Einstellungen** im Benutzermenü (oben rechts).
2. Gehen Sie zu **Ansichten und Design > Ansichtsvoreinstellungen**.
3. Klicken Sie auf **Neue Voreinstellung +**, um eine neue freigegebene Voreinstellung zu erstellen, oder klicken Sie in der Liste auf eine vorhandene Voreinstellung, um diese zu bearbeiten.

### Neue Voreinstellung erstellen

Wenn Sie auf **Neue Voreinstellung +** klicken, öffnet sich ein Modalfenster mit dem Titel **Neue Voreinstellung erstellen**, das drei Felder enthält:

- **Name** (erforderlich), Freitextfeld, Platzhalter `Type a name`.
- **Voreinstellung für**: Kombinationsfeld mit Klassen; unterstützt Mehrfachauswahl, Platzhalter `Select values…`.
- **Als Standard festlegen** (erforderlich),`Yes`  oder `No`.

Die Schaltfläche **Speichern** ist deaktiviert, bis die Pflichtfelder ausgefüllt sind.
Die Spaltenauswahl wird **nachdem** die Voreinstellung gespeichert wurde konfiguriert, indem man sie aus der Liste öffnet (wobei derselbe oben beschriebene Bereich **Voreinstellung konfigurieren** verwendet wird).

### Listenansicht

Die Liste gruppiert Voreinstellungen nach Klassenbereich, wobei **Alle Klassen** als Standardgruppe festgelegt ist.
Jeder Eintrag zeigt den Namen der Voreinstellung und die Anzahl der ausgewählten Attribute an.
Über das Symbol zum Kopieren/Duplizieren neben jedem Eintrag lässt sich eine eigenständige Kopie erstellen.

## Siehe auch

- [Suche speichern](saved-views.md), Speichern Sie einen Suchbegriff sowie Filter und eine Voreinstellung unter einem Namen.
- [Suche, Filter und Berichte](search-filters-and-reports.md)

# Finder filtern

Über die Schaltfläche **Filter** oberhalb der Finder-Tabelle wird das Dialogfeld *Filter festlegen* geöffnet, in dem Sie die Ergebnisse nach beliebigen Attributen in beliebigen Kategorien eingrenzen können.
Filter können zusammen mit der Spaltenvoreinstellung und dem Suchbegriff über [Suche speichern](saved-views.md) gespeichert werden.

## Öffnen Sie das Dialogfeld

Klicken Sie oben rechts im Finder über der Tabelle auf **Filter**.
Das Dialogfeld **Filter festlegen** wird in der Mitte der Seite geöffnet.

## Layout

Das Dialogfeld besteht aus drei nebeneinander angeordneten Spalten.

### Spalte 1, Kategorien

Eine scrollbare Liste aller Attributkategorien in der Instanz (Zugriff, Buchhaltung, Adresse und Kontakt, Datenkategorie, Kontakte, Verträge, Controller, CPU, …).
Die Auswahl einer Kategorie bestimmt den Inhalt von Spalte 2.

### Spalte 2, Attribute

Die Attribute der aktuell ausgewählten Kategorie (zum Beispiel *Zugriff* listet *Titel*, *URL*, *Benutzername*, *Passwort* usw. auf).
Die Auswahl eines Attributs bestimmt den Inhalt von Spalte 3.

### Spalte 3, Filterwert

Eine Beschriftung der Form **{Attribut} ist wie**, unter der sich ein einzelnes Textfeld befindet (Platzhalter *Wert eingeben*).
Geben Sie den Wert ein, nach dem Sie filtern möchten.
Bei Attributen mit begrenzten Auswahlmöglichkeiten wird das Eingabefeld zu einer Dropdown-Liste mit gültigen Werten.

## Suche

Über das **Suchfeld** oben rechts im Dialogfeld können Sie die Spalten 1 und 2 nach Namen filtern, sodass Sie direkt zu einem Attribut springen können, ohne scrollen zu müssen.

## Schaltflächen

- **Ergebnisse anzeigen**: Wendet alle von Ihnen festgelegten Filter an und schließt das Dialogfeld.
  Die Schaltfläche ist deaktiviert, bis mindestens ein Filter einen Wert enthält.
- **Abbrechen**: Schließt das Dialogfeld, ohne die Tabelle zu ändern.

## Filter kombinieren

Mit jeder Zeile, die Sie ausfüllen, wird ein Filter hinzugefügt; die Tabelle zeigt Objekte an, die **allen** Filtern entsprechen (logisches UND).
Um einen Filter zu entfernen, öffnen Sie den Dialog erneut, löschen Sie den Wert und klicken Sie dann auf *Ergebnisse anzeigen*.

## Filter zusammen mit der Suche speichern

Sobald ein Filter aktiv ist, erscheint neben dem Suchfeld des Finders die Schaltfläche **Speichern**.
Verwenden Sie diese, um die Filterkombination zusammen mit der aktiven Spaltenvoreinstellung und etwaigen Suchbegriffen als [gespeicherte Suche](saved-views.md) zu speichern.

## Siehe auch

- [Suche speichern](saved-views.md)
- [Voreinstellung speichern](preset-configuration.md)

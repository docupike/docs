# Massenaktion-Dialoge

Wenn Sie über das Dropdown-Menü **Bearbeiten ⌄** oberhalb der Finder-Tabelle eine Massenaktion auslösen (siehe [Massenaktionen](bulk-actions.md)), öffnen sich bei den Menüpunkten, die Daten ändern, ein Folge-Modalfenster, in dem Sie die Änderung bestätigen oder anpassen können.
Auf dieser Seite werden die einzelnen Modalfenster beschrieben.

## Modales Fenster für die Bearbeitung mehrerer Elemente, *Bearbeiten (n)*

Ausgelöst durch **Bearbeiten (n)** im Dropdown-Menü.

Das Modalfenster listet die Attribute auf, die bei **jedem** ausgewählten Objekt vorhanden sind; klassenspezifische Attribute werden automatisch herausgefiltert.
Für jedes Attribut wählen Sie eine von drei Aktionen aus:

- **Unverändert lassen**: Standard; das Attribut behält seinen aktuellen Wert pro Objekt bei.
- **Wert festlegen**: Geben Sie einmalig einen neuen Wert ein; dieser wird auf alle ausgewählten Objekte angewendet.
- **Wert löschen**: Löscht das Attribut bei allen ausgewählten Objekten.

Ein Übersichtsbanner oben zeigt die Anzahl der betroffenen Objekte an.
Klicken Sie auf **Speichern**, um die Änderungen zu übernehmen; klicken Sie auf **Abbrechen**, um den Vorgang ohne Änderungen zu beenden.

## Duplikat

Ausgelöst durch **Duplikat** im Dropdown-Menü.

Das Dialogfeld fragt nach einem **Namenszusatz**, der an jede Kopie angehängt wird.
Der Standardzusatz lautet *(Kopie)*; bei mehreren Kopien wird automatisch ein numerischer Zähler (`(copy 1)`, `(copy 2)`, …) angehängt.

Jedes Exemplar enthält:

- alle Attributwerte aus dem Original;
- eine neue **Objekt-ID**;
- den Lebenszyklusstatus *Aktiv* (die Kopie wird bei der Erstellung niemals archiviert oder gelöscht).

Verweise von anderen Objekten werden nicht kopiert; das Duplikat ist ein eigenständiges Objekt.

## Klasse wechseln, *Klasse wechseln (n)*

Ausgelöst durch **Klasse ändern (n)** im Dropdown-Menü.

Das Modalfenster fragt in einem einzigen Kombinationsfeld nach der **Zielklasse**.
Eine Warnung weist darauf hin, dass:

- Kategorien, die in der Quellklasse, aber nicht in der Zielklasse vorhanden sind, verlieren ihre Daten.
- Kategorien, die in der Zielklasse, aber nicht in der Quellklasse vorhanden sind, sind zunächst leer.
- Objekt-IDs und der Verlauf bleiben erhalten.

Klicken Sie auf **Ja, Klasse ändern**, um die Änderung zu übernehmen.

## Löschbestätigung, *Löschen (n)*

Ausgelöst durch **Löschen (n)** im Dropdown-Menü.
Eine vollständige Beschreibung finden Sie unter [Massenaktionen](bulk-actions.md).
Im Dialogfeld steht *Sie sind dabei, den Status in löschen zu ändern. Möchten Sie N Objekte wirklich löschen?* und die Bestätigung erfolgt mit **Ja, löschen**.

## Feedback zu Toast

Bei jeder erfolgreichen Massenaktion erscheint unten links eine Meldung:

- *N Objekte wurden bearbeitet.*
- *N Objekte wurden dupliziert.*
- *N Objekte wurden in die Klasse X verschoben.*
- *N Objekte wurden gelöscht.*

Den Toast-Katalog finden Sie unter [Benachrichtigungen](../basics/notifications.md).

## Siehe auch

- [Massenaktionen](bulk-actions.md)
- [Benachrichtigungen](../basics/notifications.md)
- [Objektdetailseite](../basics/object-details.md)

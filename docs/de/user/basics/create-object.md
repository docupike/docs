# Objekt erstellen

Verwenden Sie **Neues Objekt +** in der Finder-Kopfzeile, um Objekte zu Ihrer CMDB hinzuzufügen.
Über einen einzigen Dialog können Sie ein einzelnes Objekt oder mehrere Objekte derselben Klasse auf einmal erstellen.

## Rechte

Um ein Objekt zu erstellen, benötigen Sie Schreibzugriff auf die Klasse des Objekts.
Siehe [Rechte und Berechtigungen](../../admin/rights-and-permissions.md).

## Öffnen Sie das Dialogfeld

Klicken Sie im Finder oben in der Objekttabelle auf **Neues Objekt +**.
Das Dialogfeld **Neues Objekt erstellen** wird geöffnet.

## Felder

| Feld | Erforderlich | Anmerkungen |
|---|---|---|
| **Name** | ja | Freitext. Der Platzhalter im Dialog lautet `Type an object name`. Wenn Sie mehrere Objekte gleichzeitig erstellen, erhält jedes neue Objekt denselben Namen und wird automatisch mit einem Suffix versehen. |
| **Klasse** | ja | Kombinationsfeld mit verfügbaren Klassen. Wenn Sie **Neues Objekt +** geöffnet haben, während im Finder ein Klassenfilter aktiv war, ist die passende Klasse bereits vorausgewählt; andernfalls wählen Sie eine aus der Dropdown-Liste aus. |
| **Anzahl der Objekte** | ja | Standardwert `1`. Der Dialog erzwingt eine Obergrenze, die als Hinweis unter dem Feld eingeblendet wird. |

Die Schaltfläche **Speichern** bleibt deaktiviert, bis alle Pflichtfelder ausgefüllt sind.

## Speichern

Klicken Sie auf **Speichern**, um das Objekt bzw. die Objekte zu erstellen.
In der unteren linken Ecke erscheint eine Erfolgsmeldung:

> *Ein neues Objekt wurde erstellt., Ein neues Objekt wurde erfolgreich erstellt.*

Die Benachrichtigung verfügt über zwei Aktionsschaltflächen:

- **Filter**: Wendet einen temporären Filter an, sodass nur die soeben erstellten Objekte in der Finder-Liste verbleiben.
- **Öffnen**: Öffnet direkt die [Detailseite](object-details.md) des Objekts.
  Wenn Sie mehrere Objekte gleichzeitig erstellen, wird **Öffnen** ausgeblendet, da es kein einzelnes Objekt gibt, zu dem Sie navigieren könnten.

Das neue Objekt wird in der Finder-Liste unter seiner Klasse hinzugefügt.

## Abbrechen

Klicken Sie auf **Abbrechen** oder auf das `×`**** in der oberen rechten Ecke des Dialogfelds, um das Dialogfeld ohne Speichern zu schließen.

## Siehe auch

- [Objekt-Detailseite](object-details.md)
- [Klassen](classes.md)
- [Kategorien und Attribute](categories-and-attributes.md)

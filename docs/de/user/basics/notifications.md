# Benachrichtigungen

i-doit up zeigt zwei Arten von Benachrichtigungen: kurze **Toast**-Meldungen, die nach einer Aktion unten links erscheinen, und den **History**-Feed, der Änderungen pro Objekt und pro Mandant protokolliert.

Diese Seite beschäftigt sich mit den Toasts.
Den History-Feed dokumentieren der Abschnitt *History* unter [Obere Leiste](top-bar.md) und [Object Tools](object-tools.md).

## Aufbau eines Toasts

Jeder Toast erscheint **unten links** auf der Seite.
Ein Toast enthält:

- ein farbiges Icon, üblicherweise ein grünes Häkchen für Erfolg und ein rotes Dreieck für Fehler,
- eine **Überschrift** in Fett,
- einen optionalen **Textblock** mit Details,
- optionale **Aktions-Buttons**, die eine Folgeaktion auslösen,
- einen **×**-Button zum Schließen.

Toasts schließen sich nach wenigen Sekunden automatisch; mit Klick auf **×** schließen Sie sie früher.

## Katalog

Die häufigsten Toasts und wodurch sie ausgelöst werden.

### Objekt erstellt

| Auslöser | Überschrift | Text |
|---|---|---|
| **New object +** in einer Finder-artigen Tabelle | *New object was created.* | *A new object was successfully created.* |

Der Toast bietet zwei Folge-Buttons:

- **Filter**: setzt einen temporären Filter, der nur die gerade erstellten Objekte zeigt.
- **Open**: springt direkt auf die Objektdetailseite. (Nur, wenn genau ein Objekt entstanden ist.)

### Objekte gelöscht

| Auslöser | Überschrift |
|---|---|
| **Edit ▸ Delete (n)** im Finder | *N objects were deleted.* |

Body ist leer; der Toast verschwindet von selbst.

### Eintrag erstellt

| Auslöser | Überschrift |
|---|---|
| Speichern eines neuen Eintrags in einer Mehrwert-Kategorie, zum Beispiel *Network definition* auf einem Netzwerk-Objekt oder einer IP-Adresse im Tab *IP addresses* | *Entry created* |

### IP-Adresse zugewiesen

| Auslöser | Überschrift | Text |
|---|---|---|
| Speichern des Dialogs *Edit IP address* mit gesetztem Objekt und Configuration | *IP address {address} successfully assigned* | *IP address {address} was successfully assigned to object {object name}* |

### Validierungsfehler in einem Modal

| Auslöser | Banner |
|---|---|
| Speichern eines Modals mit leeren Pflichtfeldern | *An error occurred. Please check the highlighted fields.* |

Diese Meldung erscheint als roter Banner innerhalb des Modals, nicht als Toast unten links.

## Verhalten

- Mehrere Toasts stapeln sich vertikal; ältere blenden zuerst aus.
- Aktions-Buttons in einem Toast bleiben klickbar, bis der Toast geschlossen oder automatisch ausgeblendet wird.
- Fehler- und Warn-Toasts bleiben stehen, bis Sie sie mit dem **×** schließen.

## Siehe auch

- [Obere Leiste](top-bar.md): globaler History-Feed.
- [Object Tools](object-tools.md): objektbezogener History-Feed.
- [Massenaktionen](../finder/bulk-actions.md)
- [Objekt erstellen](create-object.md)

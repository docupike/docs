# Objektdetailseite

Die **Objektdetailseite** ist die zentrale Ansicht zum Lesen und Bearbeiten eines einzelnen Objekts.
Die URL hat die Form `/object/{object-id}/{category-id}`, wobei sich der `category-id`-Teil ändert, wenn Sie in der Kategorien-Sidebar navigieren.

## Ein Objekt öffnen

Klicken Sie im [Finder](../finder/finder.md) auf das Rechtspfeil-Symbol am Anfang einer Objektzeile.
Die Seite lädt unter `/object/{id}`.

Über den **`←`** Zurück-Pfeil oben links kommen Sie zurück zum Finder.

Wenn Sie ein Objekt zum ersten Mal öffnen, führt Sie ein **Quick Tour**-Dialog durch drei Folien: *Details zu Ihren Assets*, der Unterschied zwischen Einzelwert- und Mehrwert-Kategorien, plus ein Hinweis, dass Kategorien in den Einstellungen anpassbar sind.
**Weiter** schaltet weiter, **Tour überspringen** auf der letzten Folie schließt den Dialog.
Die Tour wird pro Benutzerkonto einmal angezeigt.

## Layout

![Objektdetailseite einer 7-Zip-Application: Header (Zurück-Pfeil, Klassen-Icon, Name, Edit-Button, "Active"-Status-Pill, "Search in 7-Zip"-Feld, Widgets-Toggle), Sidebar "Overview" mit den Gruppen "Favorites" und "All categories" links, Felder der Kategorie "General" in der Mitte und der rechte Widgets-Bereich mit dem suite-plus-Widget, dem Information-Widget und dem History-Widget.](../../img/user/basics/object-details.png)

Die Seite besteht aus drei vertikalen Bereichen.

### Header

Der Header enthält:

- den **`←`** Zurück-Pfeil,
- das Klassen-Icon und den Objektnamen, darunter das Klassen-Label,
- einen **Edit**-Button mit Dropdown-Pfeil (Aktionen auf Objektebene),
- den aktuellen Lifecycle-Status als Pill (zum Beispiel ein grüner Punkt gefolgt von **Active**),
- ein Suchfeld mit der Beschriftung **`Search in {object name}`**,
- einen **Widgets**-Button, der den rechten Bereich verwaltet.

### Linke Sidebar, *Overview*

Ein Kategorien-Baum.

- Der erste Eintrag **★ Favorites** zeigt die Attribute, die Sie auf diesem Objekt als Favoriten markiert haben.
- Darunter listet **All categories** jede dem Objekt zugeordnete Kategorie mit der Eintragszahl auf (zum Beispiel `General 1`, `IP networking 0`).
- Darunter erscheinen Kategorie-Gruppen wie zum Beispiel **Storage** mit ihren eigenen Kategorien.

Der Sidebar-Header bietet ein **Zahnrad**-Icon zur Verwaltung der Kategorie-Sichtbarkeit und ein **Lupen**-Icon zur Suche innerhalb der Sidebar.

### Hauptbereich

Der Inhalt der aktuell gewählten Kategorie.
Siehe *Einzelwert-Kategorien* und *Mehrwert-Kategorien* weiter unten.

### Rechter Bereich, Widgets

Standardmäßig sind zwei Widgets eingeblendet:

- **History**: Liste der letzten Änderungen mit Zeitstempel und Autor.
- **Information**: Kerndaten zum Objekt, etwa Name, Klasse und Kontakt.

Der **Widgets**-Button im Header öffnet ein Panel, in dem Sie Widgets hinzufügen oder entfernen.

Auf Mandanten mit verbundener [Suite+ Bridge](../../admin/suite-plus.md) erscheint zusätzlich ein **suite-plus**-Widget im rechten Bereich.
Es zeigt den Button **In Suite+ öffnen**, wenn das i-doit-up-Objekt ein zugeordnetes Suite+-Asset hat, oder den Platzhalter *Object is not available in Suite+*, solange keine Zuordnung existiert.

## Einzelwert-Kategorien

Wenn Sie eine Einzelwert-Kategorie wählen (zum Beispiel **General**), zeigt der Hauptbereich Attribut-Felder als Formular untereinander.
Jedes Attribut bringt:

- das Label über dem Feld, mit dem Tag **REQUIRED**, falls es ein Pflichtfeld ist,
- ein Wertfeld,
- rechts daneben einen **Edit**-Stift,
- direkt daneben ein **★ Add to favorites**-Stern.

Hat eine Kategorie mehr Attribute, als auf den ersten Blick passen, erscheint am Ende ein Eintrag **`{n} more attributes`** mit einem **Show ⌄**-Toggle, der den Rest aufklappt.

## Mehrwert-Kategorien

Wenn Sie eine Mehrwert-Kategorie wählen (zum Beispiel **IP networking**), zeigt der Hauptbereich eine Tabelle mit folgenden Steuerungen darüber:

- einen oder mehrere rote **+**-Buttons zum Anlegen eines neuen Eintrags; die Labels hängen von der Kategorie ab, etwa **Add IPv4 +** und **Add IPv6 +** für IP networking,
- eine **Delete**-Aktion, die deaktiviert bleibt, bis mindestens eine Zeile angehakt ist,
- **Columns**: öffnet den [Edit columns](../finder/preset-configuration.md)-Dialog, denselben Dialog wie im Finder,
- **Filters**: öffnet den Filter-Dialog.

Ist die Tabelle leer, hilft ein Inline-Hinweis wie *"There are no IP networking for this object defined yet. Let's create one."* beim Anlegen des ersten Eintrags.

Die Paginierung (`{n} entries`, `1 / 1`, Seitengrößen-Auswahl) sitzt am Tabellenende.

## Favoriten

Markieren Sie Attribute als Favoriten, indem Sie den **★ Add to favorites**-Stern neben dem Attribut klicken.
Der Eintrag **★ Favorites** oben in der Sidebar zeigt anschließend nur Ihre bevorzugten Attribute dieses Objekts.

Für ganze Klassen und für die Sammlung **Favorites** in der Finder-Sidebar siehe [Favoriten](favorites.md).

## Lifecycle

Jedes Objekt hat eine **Lifecycle stage** (Pflichtfeld in der Kategorie **General**), zum Beispiel *In operation*.
Der Status erscheint zusätzlich als farbige Pill (etwa grün **Active**) im Seiten-Header.
Den Lifecycle ändern Sie in der Kategorie **General**, Feld **Lifecycle stage**.

## Im Objekt suchen

Das Suchfeld **`Search in {object name}`** im Header liefert Treffer aus allen Kategorien und Attributen des Objekts.

## Siehe auch

- [Objekte](objects.md)
- [Favoriten](favorites.md)
- [IP-Netzwerke](ip-networking.md)
- [Kategorien und Attribute](categories-and-attributes.md)

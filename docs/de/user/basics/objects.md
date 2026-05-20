# Objekte

Ein **Objekt** ist die grundlegende Einheit der Dokumentation in i-doit up.
Jeder Server, jede Person, jeder Standort, jedes Netzwerk, jede Lizenz, jeder Vertrag, jede Organisation usw. wird als Objekt gespeichert, das zu einer [Klasse](classes.md) gehört und in einer oder mehreren [Sammlungen](collections.md) zusammengefasst ist.

## Aufbau eines Objekts

Ein Objekt hat:

- eine **Klasse**, die festlegt, über welche Kategorien sie verfügt und welche Attribute sie speichern kann;
- einen eindeutigen **Namen** (überall sichtbar) und eine stabile **Objekt-ID**;
- eine **Lebenszyklusphase**: in der Regel entweder *In Betrieb*, *Aktiv*, *Archiviert* oder *Gelöscht*;
- eine Reihe von **Kategorien**, die mit Attributwerten gefüllt sind; Kategorien werden klassenübergreifend wiederverwendet, zum Beispiel *Allgemein*, *Standort*, *IP-Netzwerk*.

## Tägliche Arbeitsabläufe

- **Objekte durchsuchen und finden** im [Finder](../finder/class-list.md).
  Filtern Sie die Liste mit [Filter festlegen](../finder/set-filter.md) oder speichern Sie eine Suche über [Suche speichern](../finder/saved-views.md).
- **Ein Objekt hinzufügen** mit [Objekt erstellen](create-object.md).
- **Ein einzelnes Objekt anzeigen und bearbeiten** auf dessen [Detailseite](object-details.md).
- **Änderungen auf mehrere Objekte gleichzeitig anwenden** mit [Massenaktionen](../finder/bulk-actions.md).
- **Objekte gruppieren** nach Standort mit [Standorte](locations.md) oder nach Netzwerk mit [IP-Adressverwaltung](ipam.md).

## Lebenszyklusstadien

Jedes Objekt hat einen Dokumentationsstatus.
*Aktive* Objekte werden regelmäßig genutzt; *Archivierte* Objekte verbleiben zu historischen Zwecken in der CMDB; *Gelöschte* Objekte sind zur Entfernung vorgemerkt, können aber noch wiederhergestellt werden, bis sie endgültig gelöscht werden.
Sie können den Status über das [Dropdown-Menü „Bearbeiten“](../finder/bulk-actions.md) in großen Mengen oder auf der Detailseite für jedes einzelne Objekt ändern.

## Siehe auch

- [Klassen](classes.md)
- [Sammlungen](collections.md)
- [Kategorien und Attribute](categories-and-attributes.md)
- [Objektdetailseite](object-details.md)

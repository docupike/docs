# Kategorien und Attribute

Eine **Kategorie** ist eine Gruppe verwandter Felder zu einem Objekt, z. B. *Allgemein*, *Standort*, *IP-Netzwerk*, *Verträge*, *DHCP-Bereiche* usw.
Die Felder innerhalb einer Kategorie werden als **Attribute** bezeichnet.

Jede [Klasse](classes.md) legt fest, welche Kategorien ein Objekt bereitstellt.
Ein *Server* verfügt über *Formfaktor*, *CPU*, *Arbeitsspeicher*, *IP-Netzwerk*, *Netzwerkgerät*; eine *Person* verfügt über *Adresse und Kontaktdaten*, *Mitarbeiter*; ein *Netzwerk* verfügt über *Netzwerkdefinition*, *IP-Adressen*, *DHCP-Bereiche*, *Subnetze*.

## Einwertige vs. mehrwertige Kategorien

Eine **Einzelwert**-Kategorie enthält genau einen Satz von Attributwerten pro Objekt, zum Beispiel *Allgemein*.
Eine **Mehrwert**-Kategorie enthält mehrere Einträge pro Objekt; zum Beispiel listet *IP-Netzwerk* alle einem Server zugewiesenen IP-Adressen auf.

Auf der [Objektdetailseite](object-details.md) werden die beiden unterschiedlich dargestellt: Kategorien mit einem einzigen Wert werden als Stapel dargestellt; Kategorien mit mehreren Werten werden als Tabelle angezeigt, die Sie sortieren, filtern und um Zeilen erweitern können.

## Benutzerdefinierte Kategorien

Administratoren können eigene Kategorien erstellen, um Daten zu erfassen, die das Standardmodell nicht abdeckt; siehe [Category Builder](../../admin/category-builder.md) und [Erstellen benutzerdefinierter Kategorien](../../admin/custom-categories.md).
Benutzerdefinierte Kategorien unterliegen denselben Regeln wie die vorinstallierten; mit dem *Category Builder* können Sie Attributtypen aus einer Liste auswählen (Text, Zahl, Datum, Boolescher Wert, Einfachauswahl, Objektreferenz, …).

## Auswahl der angezeigten Attribute

Im Finder bestimmt die aktive [Spaltenvorlage](../finder/preset-configuration.md), welche Attribute als Spalten angezeigt werden.
Auf der Detailseite eines Objekts können Sie über das Zahnrad-Symbol neben *Übersicht* in der Seitenleiste ganze Kategorien für jeden Benutzer ein- oder ausblenden.

## Siehe auch

- [Objektdetailseite](object-details.md)
- [Voreingestellte Konfiguration](../finder/preset-configuration.md)
- [Kategorien-Generator](../../admin/category-builder.md)
- [Benutzerdefinierte Kategorien erstellen](../../admin/custom-categories.md)

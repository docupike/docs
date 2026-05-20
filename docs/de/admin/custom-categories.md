# Benutzerdefinierte Kategorien erstellen

Mit benutzerdefinierten Kategorien können Sie Objekten Daten hinzufügen, die vom integrierten Modell nicht abgedeckt werden, zum Beispiel *Details zu Wartungsverträgen* oder *Konformitätsbescheinigungen*.

Auf dieser Seite wird der allgemeine Arbeitsablauf beschrieben.
Die eigentliche Benutzeroberfläche des Generators finden Sie unter [Kategorien-Generator](category-builder.md).

## Rechte

Zum Erstellen oder Bearbeiten einer Kategorie ist die Berechtigung *Kategorien verwalten* unter *CMDB* erforderlich.
Zum Zuweisen einer Kategorie zu einer Klasse ist die Berechtigung *Klassen verwalten* erforderlich.
Siehe [Rechte und Berechtigungen](rights-and-permissions.md).

## Arbeitsablauf

1. Öffnen Sie **Einstellungen ▸ CMDB-Konfiguration ▸ Kategorien**.
2. Klicken Sie auf **Neue Kategorie +**, um den [Kategorien-Generator](category-builder.md) zu öffnen.
3. Wählen Sie einen **Namen** und einen **Kategorietyp**: *Einzelwert* (ein Wertesatz pro Objekt) oder *Mehrfachwert* (eine Tabelle mit Einträgen).
4. Fügen Sie Attribute hinzu.
    Jedes Attribut hat einen **Namen** und einen **Typ** (Text, Zahl, Datum, Boolescher Wert, Einfachauswahl, Objektreferenz, …).
5. Speichern Sie die Kategorie.
6. Weisen Sie sie einer oder mehreren [Klassen](../user/basics/classes.md) zu.
    Die Kategorie wird nur bei Objekten dieser Klassen angezeigt.

## Eine benutzerdefinierte Kategorie bearbeiten

Klicken Sie in der Liste auf den Namen der Kategorie, um den Kategoriedesigner dafür erneut zu öffnen.
Die meisten Felder können jederzeit geändert werden; der Kategorietyp ist jedoch fest vorgegeben, sobald Daten für die Kategorie gespeichert wurden.

## Eine benutzerdefinierte Kategorie löschen

Benutzerdefinierte Kategorien können gelöscht werden, wenn keine Werte darin gespeichert sind.
Informationen zum Verhalten beim Massenlöschen und zu den Warnmeldungen finden Sie unter [Klassen und Sammlungen verwalten](class-collection-management.md).

## Siehe auch

- [Kategorien-Generator](category-builder.md)
- [Kategorien und Attribute](../user/basics/categories-and-attributes.md)
- [Klassen und Sammlungen verwalten](class-collection-management.md)

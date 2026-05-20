# Standorte

Die Ansicht **„Standorte“** ist ein Browser im Finder-Stil, der sich auf die *physische* Anordnung von Objekten konzentriert.
Sie verwendet dieselben Tabellen-, Filter- und Spaltensteuerelemente wie der Finder, doch in der linken Seitenleiste wird anstelle einer flachen Klassenliste ein hierarchischer **Standortbaum** angezeigt.

Öffnen Sie es über **Bestand > Standorte** in der oberen Navigationsleiste.

## Rechte

Sie können Standorte mit Lesezugriff auf Objekte durchsuchen.
Um Standorte an Objekten zu bearbeiten, benötigen Sie Schreibzugriff auf das Objekt.
Siehe [Rechte und Berechtigungen](../../admin/rights-and-permissions.md).

## Layout

Die Seite besteht aus zwei nebeneinander angeordneten Bereichen.

### Seitenleiste, Verzeichnisbaum

Eine hierarchische Baumstruktur, die zeigt, wo sich jedes Objekt befindet.
Eine typische Kette lautet *Land → Gebäude → Raum → einzelne Objekte*.

- Der oberste Eintrag **Alle Objekte** listet alle Objekte unabhängig von ihrem Speicherort auf.
- Durch Klicken auf einen beliebigen Knoten in der Baumstruktur werden im rechten Fensterbereich nur die Objekte angezeigt, die unterhalb dieses Knotens angeordnet sind.
- Durch Klicken auf einen Knoten wird die Baumstruktur ein- bzw. ausgeklappt.

In der unteren Hälfte der Seitenleiste wird die Liste *Alle Klassen* aus dem Finder übernommen, sodass Sie einen Standortfilter mit einem Klassenfilter kombinieren können.

### Hauptfenster

Der Hauptbereich verhält sich wie die Finder-Tabelle:

- **Neues Objekt +** erstellt ein Objekt und ordnet dessen Position automatisch dem aktuell ausgewählten Knoten zu, siehe [Objekt erstellen](create-object.md).
- **Bearbeiten ⌄** führt Sammelaktionen für ausgewählte Zeilen aus.
- **Verschieben ⌘** ist die ortsspezifische Aktion, siehe *Objekte zwischen Orten verschieben* weiter unten.
- **Klassenstandard ⌄**, das Symbol **Bearbeiten** (Bleistift auf Liste) und **Widgets** funktionieren genau wie im Finder; siehe [Voreingestellte Konfiguration](../finder/preset-configuration.md).

## Objekte zwischen Standorten verschieben

Die Schaltfläche **Move ⌘** ersetzt die Upload-Schaltfläche *Aus CSV-Datei importieren*, die Sie im normalen Finder sehen.

1. Markieren Sie die Zeilen der Objekte, die Sie verschieben möchten.
2. Klicken Sie oben in der Tabelle auf **Verschieben ⌘**.
3. Wählen Sie im Dialogfeld den neuen übergeordneten Speicherort aus.
4. Bestätigen Sie.

Die Kategorie *Standort* jedes verschobenen Objekts wird auf das neue übergeordnete Objekt aktualisiert.

## Siehe auch

- [Klassenliste](../finder/class-list.md)
- [Objektdetailseite](object-details.md)
- [Kategorien und Attribute](categories-and-attributes.md)

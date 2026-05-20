# Finder

Der **Finder** ist der zentrale Objektbrowser von i-doit up und lebt unter `/finder`.
Öffnen Sie ihn über **Inventar ▸ Finder** in der oberen Leiste oder rufen Sie die URL direkt auf.

## Layout

Der Finder besteht aus vier Bereichen:

1. **Obere Leiste**: Suchfeld (*What are you looking for?*), Button **Filter**, Dropdown **All classes (n)**.
2. **Linke Sidebar**: die [Klassenliste](class-list.md) mit Klassen-Icons, Namen und Anzahl.
3. **Toolbar oberhalb der Tabelle**: *New object +*, *Edit ⌄* (Massenaktionen), *Aus CSV-Datei importieren*, die Preset-Auswahl **Class default ⌄**, das *Edit*-Icon (Stift auf Liste) für die Spaltenkonfiguration und der Button **Widgets**.
4. **Hauptbereich**: die Objekttabelle mit den Spalten aus dem aktiven Preset.

## Was Sie tun können

- **Suchen**: Suchbegriff im oberen Suchfeld eingeben, **Enter** drücken.
  Das Ergebnis lässt sich unter [Suche speichern](saved-views.md) als Ansicht ablegen.
- **Filtern**: Klick auf **Filter** legt Attributfilter an; siehe [Finder filtern](set-filter.md).
- **Klasse wählen**: in der Sidebar eine Klasse anklicken oder das Dropdown *All classes* nutzen. Die URL wechselt nach `/finder?class=<id>`, und neben dem Klassennamen erscheint ein **★**-Stern, um die Klasse als [Favorit](../basics/favorites.md) zu markieren.
- **Objekt öffnen**: Rechtspfeil in einer Zeile klicken.
  Die Detailseite lädt unter `/object/<id>/<category-id>`; siehe [Objektdetailseite](../basics/object-details.md).
- **Attribute inline bearbeiten**: in eine beliebige Zelle klicken, um den Inline-Editor (Stift) und das *Meatballs*-Menü (drei Punkte) einzublenden.
- **Massenaktionen**: Zeilen anhaken und das [Edit-Dropdown](bulk-actions.md) verwenden.
- **Spalten anpassen**: auf das *Edit*-Icon klicken, das öffnet [Voreinstellungen konfigurieren](preset-configuration.md).
- **Objekt anlegen**: **New object +** verwenden; siehe [Objekt erstellen](../basics/create-object.md).

## Verwandte Listen

- [Standorte](../basics/locations.md): derselbe Finder, aber auf einen Standort-Baum eingeschränkt.
- [Netzwerke](../basics/ipam.md): derselbe Finder, aber auf Netzwerk-Objekte eingeschränkt, plus IP-Nutzungsstatistiken pro Netzwerk.
- [Berichtsmanager](../reporting/report-manager.md): gespeicherte Objektreports.

## Siehe auch

- [Klassenliste](class-list.md)
- [Voreinstellungen konfigurieren](preset-configuration.md)
- [Suche speichern](saved-views.md)
- [Finder filtern](set-filter.md)
- [Massenaktionen](bulk-actions.md)

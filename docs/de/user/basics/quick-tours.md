# Schnelltouren

i-doit up startet **Quick Tours** automatisch, sobald ein Benutzer zum ersten Mal eine Hauptseite öffnet.
Jede Tour ist eine kurze Folge von Pop-overs, die auf die wichtigsten Controls zeigen.
Diese Seite listet alle Touren und beschreibt, wie Sie eine Tour nach dem Schließen erneut öffnen.

## Wie eine Tour abläuft

Beim ersten Aufruf einer Seite mit Tour öffnet sich ein zentriertes Modal mit:

- einer Überschrift,
- einem kurzen Absatz,
- einem Link *Skip tour* und
- einem Button **Next**.

**Next** schaltet weiter; im letzten Schritt steht **Done** statt **Next**.
*Skip tour* schließt die gesamte Tour, ohne die restlichen Schritte zu zeigen.

Ist eine Tour einmal beendet oder übersprungen, öffnet sie sich auf demselben Konto nicht erneut automatisch.
Sie können jede Tour über das Popover **Help (?)** in der oberen Leiste neu starten; siehe [Obere Leiste](top-bar.md).

## Die drei Touren

i-doit up bringt aktuell drei Touren mit.

### Finder-Tour, 4 Schritte

Wird beim ersten Öffnen von `/finder` ausgelöst.
Sie zeigt:

1. das **All classes**-Dropdown und die Klassen-Sidebar,
2. die Finder-Tabelle und wie eine Objektzeile zu lesen ist,
3. den **Add +**-Button zum Anlegen eines neuen Objekts,
4. das **Edit ⌄**-Dropdown für Massenaktionen und gespeicherte Suchen.

### Object-Detail-Tour, 3 Schritte

Wird beim ersten Aufrufen einer [Objektdetailseite](object-details.md) ausgelöst.
Sie zeigt:

1. den Header (Zurück-Pfeil, Klassen-Icon, **Edit**, Status, "Search in object", Widgets-Toggle),
2. die Kategorien-Sidebar mit **All categories** als Standardgruppe,
3. den rechten **Widgets**-Bereich mit dem History-Widget oben.

### Report-Manager-Tour, 2 Schritte

Wird beim ersten Öffnen von `/report` ausgelöst (siehe [Berichtsmanager](../reporting/report-manager.md)).
Sie zeigt:

1. was ein Report ist und wie gespeicherte Reports gelistet werden,
2. den **Add +**-Button zum Anlegen eines neuen Reports.

## Eine Tour erneut starten

1. Klicken Sie in der oberen Leiste auf **?**.
2. Wählen Sie im Popover unter *Quick Tours* den Tournamen.
3. Die Tour öffnet sich bei Schritt 1 der zugehörigen Oberfläche.

Sind Sie beim Neustart nicht auf der passenden Oberfläche, navigiert i-doit up vorher dorthin.

## Touren global deaktivieren

Einen tenant-weiten Kill-Switch gibt es nicht.
Ein einzelner Benutzer kann:

- beim allerersten Aufruf einer Oberfläche im ersten Schritt *Skip tour* klicken, oder
- eine Tour einmal komplett abspielen, sodass das Auto-Open-Flag auf *gesehen* kippt.

## Siehe auch

- [Obere Leiste](top-bar.md): das **?**-Menü, über das sich Touren neu starten lassen.
- [Objektdetailseite](object-details.md)
- [Finder](../finder/finder.md)
- [Berichtsmanager](../reporting/report-manager.md)

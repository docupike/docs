---
title: Wie importiere ich vorhandene Daten?
description: Um vorhandene Daten in docupike zu importieren, verwenden Sie den CSV-Import. Bevor Sie beginnen, sollten Sie wissen, welche Informationen Sie importieren möchten und ob das Attribut in einer Kategorie dokumentiert werden kann.
lang: de
---

# Wie importiere ich vorhandene Daten?

Um vorhandene Daten in docupike zu importieren, verwenden Sie den CSV-Import. Bevor Sie beginnen, sollten Sie wissen, welche Informationen Sie importieren möchten und ob das Attribut in einer Kategorie dokumentiert werden kann.

## Anforderungen

- Eine CSV-Datei darf nicht größer als 128 MB sein.
- Eine CSV-Datei sollte weniger als 250 Zeilen enthalten.
- Eine Objektklasse pro CSV-Datei.
- Das Recht zum Importieren.

## CSV-Datei hochladen

In der Objektansicht sehen Sie im Kopfmenü das Symbol "Aus CSV-Datei importieren".

<!--TODO[Schaltfläche "Aus CSV-Datei importieren"](../../img/screenshots/user/import-data-via-csv/button-import-csv.png){:target="_blank"}-->

Hier können Sie eine gültige CSV-Datei auswählen und hochladen. Nach erfolgreichem Upload können Sie fortfahren.

## CSV-Format

Im zweiten Schritt können Sie festlegen, ob Ihre CSV-Datei Spaltenüberschriften enthält. Außerdem können Sie angeben, ob in Ihrer CSV-Datei ein Semikolon [;] oder ein Komma [,] als Trennzeichen verwendet wird.

Eine kleine Vorschau ermöglicht Ihnen die Überprüfung Ihrer Einstellungen.

<!--TODO[![CSV-Format](../../img/screenshots/user/import-data-via-csv/csv-format.png)](../../img/screenshots/user/import-data-via-csv/csv-format.png){:target="_blank"}-->

## Klassenauswahl

Im dritten Schritt deklarieren wir die "Objektklasse". Für jeden Import kann nur eine Klasse ausgewählt werden.

<!--TODO[![Klassenauswahl](../../img/screenshots/user/import-data-via-csv/class-selection.png)](../../img/screenshots/user/import-data-via-csv/class-selection.png){:target="_blank"}-->

## Zuordnung der Attribute

In diesem Schritt erhält jede Spalte eine eigene Zeile in der Zuordnung. So kann jede Zeile der CSV-Datei mit einem Attribut verknüpft werden.

<!--TODO[![Attribute-zuordnung](../../img/screenshots/user/import-data-via-csv/attribute-mapping.png)](../../img/screenshots/user/import-data-via-csv/attribute-mapping.png){:target="_blank"}-->

Nach Klicken auf die Schaltfläche "Hinzufügen" kann das entsprechende Attribut aus dem erweiterten Dialogmenü ausgewählt oder sein Name direkt in die Suchleiste eingegeben werden, um passende Attribute vorschlagen zu lassen.

<!--TODO[![Attribut auswählen](../../img/screenshots/user/import-data-via-csv/attribute-mapping-title.png)](../../img/screenshots/user/import-data-via-csv/attribute-mapping-title.png){:target="_blank"}-->

Wählen Sie nun über das Optionsfeld das entsprechende Attribut aus und klicken Sie auf "Speichern", um die Auswahl zu bestätigen. Auf diese Weise werden alle Spalten zugeordnet, bis alle Zuordnungen abgeschlossen sind. Zuordnungen können später gelöst werden. Spalten ohne Zuordnung werden beim Import ignoriert.

<!--TODO[![Zuordnung abgeschlossen](../../img/screenshots/user/import-data-via-csv/attribute-mapping-done.png)](../../img/screenshots/user/import-data-via-csv/attribute-mapping-done.png){:target="_blank"}-->

## Vorhandene Daten aktualisieren

Hier können Sie optional auswählen, ob Sie vorhandene Objekte "aktualisieren" oder nur "neue Objekte erstellen" möchten.

Wir wählen "Nein".

<!--TODO[![Daten aktualisieren](../../img/screenshots/user/import-data-via-csv/update-data.png)](../../img/screenshots/user/import-data-via-csv/update-data.png){:target="_blank"}-->

## Vorschau

Im letzten Schritt wird eine Vorschau der Importzuordnung angezeigt. Wenn alles in Ordnung ist, können Sie den Import starten. Andernfalls können Sie zurückgehen und die erforderlichen Einstellungen ändern.

<!--TODO[![TEXT](../../img/screenshots/user/import-data-via-csv/preview.png)](../../img/screenshots/user/import-data-via-csv/preview.png){:target="_blank"}-->

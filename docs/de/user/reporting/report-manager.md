# Berichtsmanager

Der **Berichtsmanager** ist die zentrale Anlaufstelle zum Speichern, Durchsuchen und Ausführen von Objektberichten.
Ein Bericht ist eine gespeicherte Kombination aus einem Filter (welche Objekte sollen einbezogen werden) und einem Spaltensatz (welche Informationen sollen angezeigt werden), sodass dieselbe Abfrage jederzeit erneut gestellt werden kann, ohne den Filter neu erstellen zu müssen.

Öffnen Sie ihn über **Berichte > Berichtsmanager** in der oberen Navigationsleiste.

## Was Sie beantworten können

Ein Bericht beantwortet in der Regel Fragen wie *Welche IT-Ressourcen wurden im letzten Quartal angeschafft?* oder *Wie viele Laptops befinden sich derzeit in Reparatur?*
Wenn Sie die Seite zum ersten Mal öffnen, führt Sie eine Kurzanleitung in zwei Schritten durch das Konzept.

## Layout

Die Seite besteht aus einer einzigen Tabelle innerhalb einer Karte mit dem Titel **Berichte** und folgenden Spalten:

| Spalte | Anmerkungen |
|---|---|
| (Kontrollkästchen) | Wählt Zeilen für die Massenaktion **Löschen** aus. |
| **Aktionen** | Zeilenbezogene Aktionen, einschließlich des Öffnens des Berichts. |
| **Titel** | Name des Berichts. Zum Sortieren auf die Spaltenüberschrift klicken. |
| **Zuletzt geändert von** | Benutzer, der den Bericht zuletzt geändert hat. |
| **Datum der letzten Änderung** | Zeitstempel der letzten Änderung. |

Über dem Tisch:

- **Hinzufügen +** öffnet den Berichtsgenerator.
- **Löschen** entfernt die über die Kontrollkästchen ausgewählten Zeilen.

## Bericht erstellen

1. Klicken Sie auf **Hinzufügen +**.
2. Wählen Sie die Attribute aus, nach denen Sie **filtern** möchten.
    Sie können jedes Attribut aus jeder Kategorie als Filter verwenden; ein Objekt wird für den Bericht berücksichtigt, wenn es allen von Ihnen festgelegten Filtern entspricht.
3. Wählen Sie die Attribute aus, die Sie **als Spalten anzeigen** möchten.
    Dies funktioniert genauso wie bei [Voreingestellte Konfiguration](../finder/preset-configuration.md).
4. Geben Sie dem Bericht einen Namen und speichern Sie ihn.

Der neue Bericht wird in der Liste angezeigt und kann geöffnet, bearbeitet oder dupliziert werden.

## Einen Bericht erstellen

Klicken Sie auf den Titel des Berichts (oder auf die Schaltfläche „Öffnen“ in der Zeile), um ihn auszuführen.
Der Bericht zeigt die entsprechenden Objekte in einer Tabelle an, die Sie filtern, sortieren, exportieren und als Grundlage für weitere Suchvorgänge verwenden können.

## Einen Bericht löschen

Markieren Sie die Zeilen, die Sie entfernen möchten, und klicken Sie oberhalb der Tabelle auf **Löschen**.
Bestätigen Sie die Abfrage, um den gespeicherten Bericht zu löschen.
Durch das Löschen eines Berichts werden die darin enthaltenen Objekte nicht gelöscht.

## Siehe auch

- [Voreinstellung](../finder/preset-configuration.md)
- [Suche speichern](../finder/saved-views.md)

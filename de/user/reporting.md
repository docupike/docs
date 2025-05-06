---
title: Berichterstattung
description: Berichte über Objekte
lang: de
---

# Berichterstellung

Mit einem Bericht können Sie Dokumentationsdaten gezielt filtern und zusammenfassen. Er ähnelt in vielerlei Hinsicht der [Such- und Filterfunktion des Finders](finder/search-filters-and-reports.md), bietet jedoch mehr Möglichkeiten, Bedingungen mit der formatierten Ausgabe zu kombinieren.

Berichte sind in der Hauptnavigationsleiste verfügbar.

## Spalten

Im ersten Abschnitt definieren Sie das Ausgabeformat des Berichts, in dem Sie die Attribute auswählen, die später als Spalten im Bericht angezeigt werden sollen. Bei Attributen, die mit anderen Objekten verknüpft sind, finden Sie am Ende der Zeile eine Schaltfläche "+". Damit können Sie eine Kette von verknüpften Attributinformationen erstellen.

!!! info "Beispiel"
    Angenommen, Sie möchten alle Firmenwagen und die Adressen ihrer Besitzer in einem Bericht auflisten. Sie wählen die Attribute "Hersteller" und "Modell" aus der Kategorie "Modell" aus. Um die Kontaktadressen der Besitzer zu erhalten, wählen Sie zunächst das Attribut "Name" aus der Kategorie "Kontakt" aus. Anschließend klicken Sie auf die Schaltfläche "+", um die Attribute "Straße", "Ort" und "Postleitzahl" aus der Kategorie "Adresse und Kontakt" auszuwählen.

## Bedingungen

Um die Ergebnismenge einzugrenzen, können Sie im zweiten Abschnitt Bedingungen definieren. Eine Bedingung besteht immer aus einem Attribut, einem Operator und einem Wert. Mehrere Bedingungen können mit den logischen Operatoren `AND` oder `OR` kombiniert werden.

Sie wählen ein Attribut aus, das mit einem bestimmten Wert übereinstimmen soll. Der Operator gibt Ihnen eine gewisse Flexibilität hinsichtlich der genauen Übereinstimmung der Bedingung.

| Operator              | Beschreibung                                                               |
| --------------------- | ------------------------------------------------------------------------- |
| `ist`                  | Entspricht genau dem angegebenen Wert; Groß-/Kleinschreibung wird nicht berücksichtigt                 |
| `ist nicht`              | Entspricht, wenn der Wert genau nicht gefunden wird; Groß-/Kleinschreibung wird nicht berücksichtigt               |
| `in Liste`             | Entspricht einer Liste von Werten                                          |
| `nicht in Liste`         | Entspricht, wenn der Wert nicht in der Liste der angegebenen Werte enthalten ist                   |
| `like`                | Entspricht dem Text im Wert, jedoch mit Platzhaltern, z. B. entspricht `cd` dem Wert `abcdefg`    |
| `not like`            | Entspricht, wenn der Wert nicht gefunden wird, jedoch mit Platzhaltern                     |
| `earlier than`        | Entspricht, wenn der Zeitpunkt vor dem angegebenen Wert liegt             |
| `nicht früher als`    | Trifft zu, wenn der Zeitpunkt nicht früher als der angegebene Wert war         |
| `später als`          | Trifft zu, wenn der Zeitpunkt später als der angegebene Wert war               |
| `nicht später als`      | Trifft zu, wenn der Zeitpunkt nicht später als der angegebene Wert war           |
| `im Bereich`            | Trifft zu, wenn der Zeitpunkt innerhalb eines Bereichs lag                           |

## Ergebnis

Wenn Sie einen Bericht ausführen, wird eine Tabelle mit den von Ihnen ausgewählten Attributen als Tabellenspalten angezeigt. Die Liste der Objekte wird nach den von Ihnen ausgewählten Bedingungen gefiltert. Jede Zeile in der Tabelle steht für ein Objekt.

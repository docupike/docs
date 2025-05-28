---
title: Attributvalidierung
description: Validierungen sind additiv. Logische Konflikte in Validierungen können verhindern, dass Benutzer Werte zu diesem Attribut hinzufügen.
lang: de
---

# Attributvalidierung

Eine Konfigurationsmanagementdatenbank (CMDB) sollte Informationen verknüpfen und zentral für Abteilungen und Mitarbeiterinnen und Mitarbeiter verfügbar machen. Bei der Erfassung von Assets sollte ein vordefiniertes Qualitätsniveau erreicht und aufrechterhalten werden. Idealerweise wird dies in einem Konfigurationsmanagementplan (CMP) dokumentiert. Dies kann ein spezifisches Namensschema sein, nach dem Assets (Objekte) in der CMDB benannt werden sollen. Aber auch bestimmte Pflichtfelder, die bei der Anlage eines neuen Assets ausgefüllt werden müssen.

## Allgemeine Validierungen

### Bitte entsprechend markieren. Das Eingabefeld darf nicht leer bleiben.

Markieren Sie das Feld als erforderlich, damit es nicht leer bleiben kann.

### Markieren Sie das Datenfeld als Pflichtfeld, damit es nicht leer bleiben kann.

Markieren Sie das Feld als eindeutig. Jeder angegebene Wert muss für dieses Attribut eindeutig sein.

## Validierung mit Operatoren

Nicht alle Operatoren sind für alle Attributtypen verfügbar. Hier können Sie **Mindestlänge** und  **Höchstlänge**, **Später als** und  **Früher als**, **Von** und  **Bis**, **Größer als** und   **Kleiner als**, **Gleich** und  **Ungleich**, **Von** und **Bis** für eine Reihe von Attributen festlegen.

## Andere Validierungen

### Regulärer Ausdruck

Reguläre Ausdrücke bieten viele Möglichkeiten, Kategorieeinträge anzupassen. Um reguläre Ausdrücke im Voraus zu überprüfen, verwenden Sie bitte Ihr bevorzugtes Testtool. Wir verwenden insbesondere [PCRE](https://en.wikipedia.org/wiki/Perl_Compatible_Regular_Expressions) für PHP. Weitere Informationen zur Mustersyntax finden Sie in der Handbuchseite [hier](https://www.php.net/manual/en/reference.pcre.pattern.syntax.php). Um beispielsweise die Syntax zu testen, verwenden Sie regex101 [hier](https://regex101.com/).

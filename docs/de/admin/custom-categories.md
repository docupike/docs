---
title: Benutzerdefinierte Kategorien und Attribute
description: Grundlagen der Dokumentation zu benutzerdefinierten Kategorien und Attributen
lang: de
---

# Benutzerdefinierte Kategorien

Neben den Standardkategorien bietet docupike die Möglichkeit, benutzerdefinierte Kategorien zu erstellen, um zusätzliche Attribute zu dokumentieren, die nicht in den Standardkategorien enthalten sind.

## Rechte

Um neue benutzerdefinierte Kategorien zu erstellen, benötigen Sie die Berechtigung "Rechte > CMDB > Kategorien verwalten".
Um benutzerdefinierte Kategorien Klassen zuzuweisen, benötigen Sie die Berechtigung "Rechte > CMDB > Klassen verwalten".

## So erstellen Sie eine benutzerdefinierte Kategorie

Benutzerdefinierte Kategorien werden unter "Einstellungen > Kategorien" erstellt. Klicken Sie dort auf die Schaltfläche "Neue Kategorie". Geben Sie einen Namen für die Kategorie ein und wählen Sie einen "Kategorietyp" aus: "Einzelwert" oder "Mehrfachwert". Jede benutzerdefinierte Kategorie erhält eine eindeutige "Konstante" zur Identifizierung der Kategorie. Benutzerdefinierte Kategorien müssen einer Klasse zugewiesen werden, damit sie dort angezeigt werden.

## Kategorien mit einem oder mehreren Werten

Wenn Sie Attribute verwenden möchten, die in ihrer Kombination eindeutig sind, reicht die Konfiguration als Kategorie "Einzelwert" aus.

Wenn Sie die Werte mehrfach verwenden möchten, benötigen Sie eine Kategorie "Mehrfachwert". Auf diese Weise können mehrere Einträge in einer Kategorie gespeichert werden.

## Benutzerdefinierte Attribute

Um Ihre Kategorie anzupassen, können Sie mit der Schaltfläche "Neues Attribut" beliebig viele Attribute hinzufügen. Sie müssen den Typ in ein "Name"-Feld für das Attribut eingeben und einen "Typ" für das Feld auswählen.

Verfügbare Feldtypen sind:

| Feldtyp  | Beschreibung |
| --- | --- |
| Text | Das Feld "Text" dient zur Eingabe von reinem Text. |
| Zahl | Im Feld "Zahl" können Sie Dezimalzahlen eingeben. |
| Boolesche Werte | Das Feld "Boolean" dient zur Auswahl von Ja oder Nein. |
| Password | Im Feld "Password" befindet sich ein maskiertes Feld. |
| Farbe | Im Feld "Farbe" können Sie einen Hex-Farbcode eingeben oder über die Farbauswahl eine Farbe auswählen, indem Sie im Bearbeitungsmodus auf die Palette klicken.. |

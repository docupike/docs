---
title: Auslöser, Bedingungen und Aktionen
description: Referenz aller Flows-Bausteine mit einer Kurzbeschreibung
lang: de
render_macros: false
---

# Auslöser, Bedingungen und Aktionen

Die folgenden Tabellen listen alle verfügbaren Auslöser, Bedingungen und Aktionen mit einer Kurzbeschreibung.
Ausführliche Anwendungsfälle mit Screenshots folgen unter [Auslöser – Anwendungsfälle](triggers.md),
[Bedingungen – Anwendungsfälle](conditions.md) und [Aktionen – Anwendungsfälle](actions.md).

## Auslöser

Ein Flow hat genau einen Auslöser; er bestimmt, _wann_ der Flow startet.

| Auslöser | Beschreibung |
| --- | --- |
| **Button** | Fügt Objekt-Detailansichten eine Schaltfläche hinzu; der Flow startet per Klick. Die Sichtbarkeit lässt sich auf alle Objekte, ausgewählte Objektklassen oder ausgewählte Objekte (und Kategorie-Ansichten) begrenzen. |
| **Zeitbasiert** | Startet zu einem festgelegten Datum und Uhrzeit — einmalig oder wiederkehrend (alle N Tage, Wochen, Monate oder Jahre; bei Wochen erscheint eine Wochentagsauswahl). |
| **Objekt-Ereignis** | Startet bei Objekt-Ereignissen: angelegt, geändert, gelöscht, archiviert oder wiederhergestellt. Begrenzbar auf Objektklassen oder ausgewählte Objekte. |
| **Kategorie-Ereignis** | Startet, wenn ein Kategorie-Eintrag angelegt, geändert oder gelöscht wird. Begrenzbar auf ausgewählte Kategorien und Attribute. |

## Bedingungen

Bedingungen sind optional. Mehrere lassen sich kombinieren und müssen _alle_ erfüllt sein, sonst wird der Lauf
übersprungen.

| Bedingung | Beschreibung |
| --- | --- |
| **Objektbasiert** | Läuft nur, wenn das Auslöser-Objekt dem visuellen Filter entspricht (mehrere Filter mit _Und_ verknüpft). |
| **Zeitbasiert** | Läuft nur innerhalb der definierten Zeitfenster (Wochentage plus Von/Bis-Bereich; mehrere Fenster möglich). |
| **Benutzer / Benutzergruppe** | Läuft nur, wenn durch ausgewählte Benutzer oder Mitglieder ausgewählter Benutzergruppen ausgelöst. |

## Aktionen

Ein Flow hat mindestens eine Aktion; mehrere laufen der Reihe nach von oben nach unten.

| Aktion | Beschreibung |
| --- | --- |
| **Objekt anlegen** | Legt ein neues Objekt der gewählten Klasse an; der Titel kann Platzhalter enthalten, Attribute werden über den Attribut-Picker gesetzt. |
| **Objekt aktualisieren** | Setzt Attribute am Auslöser-Objekt oder an ausgewählten Objekten. Eine Mehrwert-Kategorie erhält pro Lauf einen neuen Eintrag. |
| **Objekt einstufen** | Ändert den Lifecycle-Zustand eines Objekts (normal, archiviert, gelöscht). |
| **E-Mail senden** | Sendet eine E-Mail (Markdown-Text mit Vorschau) an einen oder mehrere Empfänger. SMTP wird serverseitig konfiguriert. |
| **API aufrufen** | Sendet eine HTTP-Anfrage (GET, POST, PUT, PATCH, DELETE) an eine externe API; der Body kann Platzhalter enthalten, optional über einen Proxy. |

## Platzhalter

Mehrere Aktionsfelder akzeptieren `{{ … }}`-Platzhalter, die zur Laufzeit durch echte Werte ersetzt werden.
Das Menü **Variable einfügen** unter dem jeweiligen Feld fügt sie an der Cursorposition ein.

| Platzhalter | Bedeutung |
| --- | --- |
| `{{object-name}}` | Name des auslösenden Objekts |
| `{{object-id}}` | ID dieses Objekts |
| `{{object-link}}` | Direktlink zur Objekt-Übersicht |
| `{{users-name}}` | Vor- und Nachname des auslösenden Benutzers |
| `{{users-e-mail}}` | E-Mail-Adresse dieses Benutzers |
| `{{counter}}` | Eine automatisch hochzählende, bei jeder Verwendung eindeutige Nummer |
| `{{date}}` | Das Datum der Ausführung |
| `{{time}}` | Die Uhrzeit der Ausführung |
| `{{date-time}}` | Datum und Uhrzeit der Ausführung |

Platzhalter stehen im Objekttitel einer Aktion **Objekt anlegen**, in Textwerten einer Aktion
**Objekt aktualisieren**, im Betreff und Text einer Aktion **E-Mail senden** sowie im Body einer Aktion
**API aufrufen** zur Verfügung.

## Weiterführende Themen

- [Flows-Überblick](index.md)
- [Auslöser – Anwendungsfälle](triggers.md)
- [Aktionen – Anwendungsfälle](actions.md)

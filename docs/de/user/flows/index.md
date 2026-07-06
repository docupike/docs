---
title: Flows
description: Wiederkehrende Aufgaben in i-doit up mit Auslösern, Bedingungen und Aktionen automatisieren
lang: de
---

# Flows

Flows ist ein Add-on, das wiederkehrende Aufgaben in i-doit up automatisiert. Jeder Flow ist eine streng
lineare Kette:

**Auslöser → Bedingungen (optional) → Aktion(en)**

- **Auslöser** — was den Flow startet (genau einer, Pflicht).
- **Bedingungen** — zusätzliche Voraussetzungen, die _alle_ erfüllt sein müssen, sonst wird der Lauf
  übersprungen (optional).
- **Aktionen** — was der Flow tut (mindestens eine; mehrere Aktionen laufen von oben nach unten).

Die Oberfläche folgt der Sprache von i-doit up (Deutsch oder Englisch) und erscheint unter **Add-ons** in der
oberen Navigation.

## Überblick und Oberfläche

Öffnen Sie das Add-on über **Add-ons > Flows**. Die Startseite ist die Übersicht mit einer Such- und
Filterleiste (Status, Auslösertyp, Ersteller), Aktionen je Zeile (Öffnen, Test, Menü) sowie den Schaltflächen
**Flow hinzufügen**, **Export** und **Import**. Links wechseln Sie zwischen **Alle Flows**, **Logs** und
**Verlauf**.

[![Die Flows-Übersicht listet jeden Flow mit Status und Auslösertyp](../../img/screenshots/flows/overview.png)](../../img/screenshots/flows/overview.png)
**Flows-Übersicht:** jeder Flow mit Status, Auslösertyp und Aktionen je Zeile.

## Einen Flow anlegen

Mit **Flow hinzufügen** öffnen Sie den Editor. Ein **Name** ist Pflicht; **Beschreibung** und **Flow-Gruppen**
sind optional. Den Körper bauen Sie über **Auslöser hinzufügen**, **Bedingung hinzufügen** und
**Aktion hinzufügen** — jeder öffnet einen Dialog mit einer Typ-Liste links und dem Formular rechts.

Einen unfertigen Flow können Sie als Entwurf speichern (Status _Inaktiv_); Pflichtfelder werden beim Speichern
geprüft. Mit dem Recht **Flow-Operator wählen** legen Sie zusätzlich fest, als welcher Flow-User der Flow
läuft.

## Zugriff und Rechte

Der Zugriff wird über das Rechtesystem von i-doit up gesteuert, unter **Benutzerverwaltung > Rechte >
Add-on-Rechte > Flows**. Das Add-on bringt zwei Rechte mit:

- **Flows verwalten** — Vollzugriff auf das Add-on. Ohne dieses Recht ist der Eintrag **Flows** ausgeblendet
  und die Add-on-API antwortet mit einem Rechtefehler. Die Admin-Rolle erhält das Recht bei der Installation
  automatisch.
- **Flow-Operator wählen** — erlaubt die Wahl des Flow-Users, als der ein Flow läuft, und öffnet die Seite
  **Flow-Users**.

Das Recht **Flows verwalten** steuert nur den Zugang zur Oberfläche. Ob ein aktiver Flow läuft, hängt allein
von seinem Auslöser ab, unabhängig davon, wer ihn auslöst.

## Weiterführende Themen

- [Auslöser, Bedingungen und Aktionen](reference.md)
- [Auslöser – Anwendungsfälle](triggers.md)
- [Bedingungen – Anwendungsfälle](conditions.md)
- [Aktionen – Anwendungsfälle](actions.md)
- [Durchgängiges Beispiel](end-to-end.md)
- [Add-ons](../../admin/addons.md)

# Obere Leiste

Die feste Leiste am oberen Rand jeder Seite enthält Navigation, Statusanzeigen und Aktionen für das Benutzerkonto.
Diese Seite listet jedes Element von links nach rechts auf.

![Die obere Leiste von i-doit up, von links nach rechts: i-doit-up-Logo, Mandantenwechsler, Inventar- und Berichte-Tab, Uhren-Symbol für History, Fragezeichen für Hilfe, Sprachauswahl EN, Hamburger-Menü "View Mode Menu" und Benutzer-Avatar.](../../img/user/basics/top-bar.png)

## Logo

Das **i-doit up**-Logo ganz links bringt Sie immer zurück zum Finder.

## Mandantenwechsler

Rechts neben dem Logo sitzt der [Mandantenwechsler](tenant-switcher.md).
Er zeigt den Namen des aktiven Mandanten (zum Beispiel **CareBears Inc.**) mit dem Label *Tenant*.
Klicken Sie darauf, um den Mandanten zu wechseln, falls Sie Zugriff auf mehrere haben.

## Inventar

Top-Level-Dropdown mit vier Einträgen:

| Eintrag | Beschreibung |
|---|---|
| **Finder** | Der Standard-Browser für Objekte und Klassen; siehe [Finder](../finder/finder.md). |
| **Standorte** | Derselbe Finder, jedoch auf einen Standort-Baum begrenzt; siehe [Standorte](locations.md). |
| **Netzwerke** | Die IPAM-Übersicht; siehe [IP-Adressverwaltung](ipam.md). |
| **Datenschutz** | Add-on zur DSGVO-Dokumentation. Sichtbar bei aktivem Add-on *Datenschutz*. |

## Berichte

Top-Level-Dropdown mit zwei Einträgen:

| Eintrag | Beschreibung |
|---|---|
| **Berichtsmanager** | Gespeicherte Berichte; siehe [Berichtsmanager](../reporting/report-manager.md). |
| **Documents Creator** | Add-on, das PDF- und Word-Dokumente aus CMDB-Daten erzeugt. Sichtbar bei aktivem Add-on *Documents Creator*. |

## Upgrade

Der violette Button **Upgrade** führt zu **Einstellungen ▸ Abonnement**, wo Sie Ihr Abonnement einsehen oder ändern können; siehe [Abonnement](../../admin/subscription.md).
Der Button ist für alle Benutzer sichtbar; was Sie auf der Seite ändern dürfen, hängt von Ihren Rechten ab.

## History

Das Uhren-Symbol **History** öffnet ein Popup mit den letzten Änderungen, die Sie oder andere Mitglieder des Mandanten gemacht haben.

Jeder Eintrag zeigt die Aktion (*Daten gesetzt*, *Angelegt*, *Gelöscht*), den Namen des betroffenen Objekts, den Benutzer und den Zeitstempel.
Der Link **Vollständigen Verlauf anzeigen** am Ende des Popups führt zur tenantweiten Verlaufsansicht.

Dasselbe Widget gibt es auch pro Objekt auf der [Objektdetailseite](object-details.md); siehe [Object Tools](object-tools.md).

## Hilfe

Das **?**-Symbol öffnet ein Popup mit zwei Einträgen:

- **Discover Guide**: startet die zur aktuellen Seite passende Quick Tour erneut (Finder-Tour, Object-Detail-Tour, Report-Manager-Tour).
- **Documentation**: öffnet das öffentliche Doku-Portal in einem neuen Tab.

## Sprache

Das Dropdown **EN** wechselt die UI-Sprache.
Die aktuelle Version bietet:

- **English, EN**
- **Deutsch, DE**

Die Auswahl gilt für die aktuelle Sitzung; der dauerhafte Default wird in Ihrem [Profil](profile.md) festgelegt.

## View Mode Menu

Das Hamburger-Symbol (≡) heißt **View Mode Menu**.
Es schaltet die Zeilendichte aller Objekttabellen für die gesamte Anwendung um:

- **Compact**: dichtere Darstellung, mehr Zeilen pro Bildschirm.
- ✓ **Comfortable**: Default, mehr Platz pro Zeile.

Ein Häkchen (✓) markiert den aktiven Modus.

## Benutzermenü (Avatar)

Der Avatar-Kreis (Ihr Initial auf farbigem Hintergrund) öffnet das **Benutzermenü**; siehe [Benutzermenü](user-menu.md).

## Siehe auch

- [Mandant wechseln](tenant-switcher.md)
- [Benutzermenü](user-menu.md)
- [Benachrichtigungen](notifications.md)
- [Abonnement](../../admin/subscription.md)

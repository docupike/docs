---
title: servereye Integration
description: Grundlagen der Verwaltung für die Verwendung des Servereye-Add-ons in docupike
lang: de
---

# servereye Integration

Das Servereye-Add-on dient zur Synchronisierung aller Daten aus Servereye mit docupike. Die Konfiguration des Add-ons erfolgt automatisch während des Registrierungsvorgangs.

## Übersicht

-   Automatische Konfiguration während der Add-on-Registrierung
-   Die Synchronisierung erfolgt mehrmals täglich
-   Manuelles Auslösen der Synchronisierung ist möglich
-   Kundenunternehmen werden als Mandanten synchronisiert
-   Benutzer werden als Einzelpersonen synchronisiert
-   Benutzer werden Mandanten zugewiesen
-   Jeder Benutzer wird der Gruppe "servereye reader" zugewiesen
-   Die Gruppe "servereye reader" hat nur Lesezugriff auf Daten
-   Objekte werden für jeden Mandanten synchronisiert
-   Kategorien werden für jedes Objekt synchronisiert

## Anmeldung

Hier finden Sie eine Übersicht über die erste Anmeldung. Greifen Sie über das folgende URL-Schema auf Ihre docupike.cloud-Instanz zu:

~~~
https://<Ihre_Subdomain>.docupike.cloud/
~~~

Navigieren Sie zur Weboberfläche von docupike, um den Anmeldebildschirm anzuzeigen:

Sie können sich entweder über servereye oder mit Ihrem Benutzernamen und Passwort anmelden. Damit erhalten Sie Zugriff auf den Standard-Mandanten, der keinem bestimmten Kunden zugeordnet ist.

<!--TODO[![Anmeldebildschirm](../img/screenshots/admin/servereye/login.png)](../img/screenshots/admin/servereye/login.png){:target="_blank"}-->

[helpdesk]: mailto:help@docupike.com

!!! info "Keine Standardanmeldung"
    docupike hat keine Standardanmeldung. Stattdessen wird während der Installation automatisch der erste einzelne Benutzer:in erstellt. Dieser Benutzer:in hat die Administratorrolle mit allen Rechten und Berechtigungen.

!!! info "Passwort zurücksetzen"
    Wenn Sie Ihr Passwort vergessen haben oder es ändern möchten, verwenden Sie die Schaltfläche "Passwort zurücksetzen" auf dem Anmeldebildschirm.

Nach der Anmeldung ist das servereye-Add-on bereits konfiguriert und muss nicht weiter eingerichtet werden. Es führt auch automatisch die Synchronisierung der servereye-Daten durch.

## Rechte in docupike

Als Administrator können Sie alle Mandanten anzeigen und docupike konfigurieren. Synchronisierte Benutzer haben jedoch nur das Recht, den ihnen zugewiesenen Mandanten anzuzeigen, **wobei die Berechtigungen auf das Lesen aller Objekte und Kategorien beschränkt sind**. Sie haben die Möglichkeit, nach Bedarf Berechtigungen zum Erstellen, Bearbeiten und zusätzliche [Berechtigungen](rights-and-permissions.md) zuzuweisen.

!!! Hinweis ""
    Ändern Sie nicht direkt die Berechtigungen der "servereye reader group", da es sonst zu Problemen bei der Synchronisierung kommen kann.

## Mandanten

Für jeden Kunden wird ein separater Mandant angelegt. Sie können über das Dropdown-Menü oben links neben dem Docupike-Logo auf diese Mandanten zugreifen.

## Benutzer

Jeder Benutzer, der mindestens Zugriff auf einen Mandanten hat, wird von Servereye synchronisiert. Die [Benutzer](users-groups-roles.md) finden Sie unter "Einstellungen > Benutzerverwaltung > Benutzer". Benutzer werden anhand ihrer E-Mail-Adresse zugeordnet.

## Objekte und Kategorien

Objekte sind zunächst nicht klassifiziert und werden in die Klasse **servereye import** importiert. Die Klassifizierung muss vom Benutzer vorgenommen werden. Synchronisierte Kategorien sind **CPU**, **IP-Netzwerk**, **Modell**, **Speicher**, **Speicher - Geräte** und **Speicher - Volumes**. Einträge in den aufgeführten Kategorien werden durch die servereye-Synchronisierung aktualisiert. **Manuelle Änderungen an synchronisierten Einträgen werden** bei jedem Synchronisierungsvorgang überschrieben.

## servereye Synchronisierung

Sie können die Synchronisierung von Servereye über "Add-ons > Servereye-Einstellungen" überprüfen. Hier sehen Sie die Synchronisierungsprotokolle und deren Status.

## Widget

docupike verfügt über eine [Widget](../user/finder/widgets.md)-Ansicht. Dieses Widget ermöglicht es, das Datum der letzten Synchronisierung anzuzeigen und zum entsprechenden Servereye-Asset zu springen.

---
title: servereye Add-on
description: Basics for using the servereye Add-on
lang: en
---

## servereye Add-on configuration

A configuration is not needed, because each instance requested via servereye is passed ready configured.

## First login

This gives you an oversight how-to login for the first time.<br>
You can access your docupike.cloud instance with the following URL schema:

~~~
https://<your_subdomain>.docupike.cloud/
~~~

Point your Web browser to the Web UI of docupike to see the login screen:

[![Login screen](../img/screenshots/admin/servereye/login.png)](../img/screenshots/admin/servereye/login.png)

[helpdesk]: mailto:help@docupike.com

!!! info "No default login"
    docupike has no default login like an admin user called `admin` with a trivial password like `admin`. Instead, during the installation the first individual user will be created automatically. This user has the admin role with all rights and permissions.

!!! info "Reset password"
    If you forgot your password or simply need to change it, you can contact our support. If wrong credentials are used for login, you will also be shown a link to contact our support, who will be pleased to help you.






Docupike with Serverye
Serverye integration für MSPs und Docupike
Der MSP fragt docupike an und bekommt dann eine instanz
Pro Kunde des MSP wird ein Mandant erstellt.
Der Sync läuft alle 6 Stunden
Objekttyp:
- Servereye import
Kategorien:
- CPU
- IP
- Memory
- Model
- Storage Devices
- Storage Volumes
Die Einträge in den aufgeführten Kategorien werden durch den Servereye sync aktualisiert. Manuelle Änderungen an synchronisierten Einträgen werden überschrieben.
Es gibt Mapping zu Objekten und Kategorie Einträgen.
## OAUTH
Benutzer werden automatisch synchronisiert und dem Mandanten zugewiesen. Matching via E-Mail.
Benutzer erhalten standard Rechte auf den Mandant(Organisation) und Leserechte auf alle Objekte darin.
Synchronisierte Benutzer haben keine Rechte!
Widget zeigt letzten sync und einen link zum servereye objekt

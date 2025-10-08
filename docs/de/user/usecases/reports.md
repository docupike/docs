---
title: Berichte
description: Mit der Berichtsfunktion können Sie viele nützliche Berichte erstellen. Klicken Sie dazu zunächst auf die Schaltfläche "Berichte" in der Menüleiste
lang: de
---

# Berichte

Mit der Berichtsfunktion können Sie viele nützliche Berichte erstellen. Klicken Sie dazu zunächst auf die Schaltfläche "Berichte" in der Menüleiste. Sie erstellen einen Bericht, indem Sie auf "Bericht hinzufügen" klicken. Als Beispiel erstellen wir einen Bericht für alle Kunden mit einem aktiven Vertrag, der vor 2024 endet. Als Erstes fügen wir einen Bericht hinzu und geben einen Titel ein. Als Nächstes legen wir fest, welche Objekte in den Bericht aufgenommen werden sollen. Dazu fügen wir `UND`- oder `ODER`-Verbindungen hinzu. In diesem Beispiel verwenden wir `UND`-Verbindungen.

Wir möchten alle Objekte mit der Klasse "Kunde", die den Vertragsstatus "aktiv" und das Vertragsende "vor 2024" haben.
Daher fügen wir die folgenden drei Bedingungen hinzu:

[![TEXT](../../img/screenshots/user/usecases/reports/customerconditions.png)](../../img/screenshots/user/usecases/reports/customerconditions.png){:target="_blank"}

Wenn Sie die Vorschau unten überprüfen, sehen Sie, dass nur die Namen der Kunden angezeigt werden. Um mehr zu sehen, können Sie die erforderlichen Attribute des Kunden hinzufügen.

[![TEXT](../../img/screenshots/user/usecases/reports/customerattributes.png)](../../img/screenshots/user/usecases/reports/customerattributes.png){:target="_blank"}

Jetzt speichern wir den Bericht und öffnen ihn in der Berichtsansicht.

[![TEXT](../../img/screenshots/user/usecases/reports/customerreport.png)](../../img/screenshots/user/usecases/reports/customerreport.png){:target="_blank"}

Ein weiteres Beispiel für einen Bericht könnte die Anzeige von Serverraumkomponenten wie Servern, Switches usw. sein. Dazu müssen wir "ODER"-Verbindungen für die Klassen hinzufügen.

[![TEXT](../../img/screenshots/user/usecases/reports/severroomconditions.png)](../../img/screenshots/user/usecases/reports/severroomconditions.png){:target="_blank"}

Als Nächstes fügen wir die Attribute hinzu, die wir von den Objekten sehen möchten.

[![TEXT](../../img/screenshots/user/usecases/reports/serverroomattributes.png)](../../img/screenshots/user/usecases/reports/serverroomattributes.png){:target="_blank"}

Jetzt können wir den Bericht nach dem Speichern in der Berichtsansicht anzeigen.

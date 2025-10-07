---
title: Objekte
description: Grundlagen der Dokumentation zu Objekten in i-doit up
lang: de
---

# Objekte

Ein Informationssatz für ein bestimmtes Asset wird als Objekt bezeichnet. Damit die Informationen vergleichbar sind, die du dokumentierst, verwendet i-doit up Klassen und Kategorien. Klassen definieren den Typ des Assets (z.B. Laptops) und haben einen festen Satz von Kategorien (z.B. CPU, Modell, IP-Netzwerk). Wie bei den Kollektionen stellen wir dir ein vordefiniertes Schema für die Daten zur Verfügung aber du kannst alles nach deinen Bedürfnissen anpassen.

## Vergleich zu Assets/Konfigurationselementen

Ein Objekt entspricht einem Asset in der Asset-Verwaltung oder einem Konfigurationselement (CI). In i-doit up nennen wir es Objekt, weil wir die Dinge gerne einfach halten.
Ein Objekt kann entweder ein physisches Gerät sein, z. B. ein Server, ein Router, ein Laptop usw., oder es kann sich um eine logische Information handeln, wie z. B. ein Wartungsvertrag oder sogar eine Person mit Kontaktdaten.

Die Entität selbst kann viele Informationen enthalten, die in Attributen und Werten gespeichert sind. Es gibt keine Begrenzung für die Anzahl der Informationen, die in einer einzelnen Entität gespeichert werden können.

Was ein einzelnes Objekt in Ihrer IT-Dokumentation darstellt, legen letztendlich Sie selbst fest. i-doit up enthält jedoch einen vordefinierten Standardsatz.

!!! info "Objekt oder Attribut?"
    Benutzer fragen oft, ob beispielsweise eine einzelne Festplatte ein Objekt oder ein Attribut ist.
    In dem mit i-doit up gelieferten vordefinierten Satz ist eine Festplatte ein Attribut. Wenn Sie jedoch der Meinung sind, dass es für Sie sehr wichtig ist, alle Ihre Festplatten im Detail zu verfolgen, können Sie eine eigene Klasse für Festplatten erstellen.

Die Behandlung von Festplatten als dedizierte Objekte bietet Ihnen mehrere Vorteile bei der Handhabung in der Software. So ist es beispielsweise einfacher, ihren Standort zu verfolgen.

## Objekte erstellen

Objekte können im Hauptbildschirm des Finder erstellt werden. Wählen Sie auf der linken Seite eine Klasse aus (z. B. Server) und klicken Sie oben in der Liste auf die Schaltfläche "Neues Objekt". Es öffnet sich ein Dialogfeld, in dem Sie einige zusätzliche Optionen für die Objekterstellung festlegen, z. B. das gleichzeitige Erstellen mehrerer Objekte.

## Objekte bearbeiten

Das Bearbeiten eines Objekts kann auf verschiedene Arten erfolgen. Am einfachsten ist es, ein einzelnes Objekt zu öffnen und in einer der Kategorien auf die Schaltfläche "Bearbeiten" zu klicken. Es gibt auch Inline-Bearbeitungs- und Mehrfachbearbeitungsfunktionen, die im Abschnitt Finder erläutert werden.

## Dokumentationsstatus von Objekten

Objekte haben verschiedene Dokumentationsstatus, die den Zustand ihrer Existenz in der Dokumentation definieren. Die Status sind "aktiv", "archiviert" oder "gelöscht". Ein typischer Lebenszyklus könnte wie folgt aussehen:

- Wenn ein Objekt erstellt wird, ist sein Standardstatus "aktiv". Sie können aktiv mit ihm arbeiten und es mit anderen Objekten verknüpfen.
- Wenn Sie nicht mehr aktiv mit einem Objekt arbeiten möchten, es aber aus dokumentarischen Gründen aufbewahren möchten, können Sie es "archivieren". Ein Beispiel hierfür ist ein Server, der nicht mehr verwendet wird, aber physisch aufbewahrt wird, da er in der Buchhaltung noch nicht abgeschrieben ist.
- Sie können ein Objekt aus dem Status "archiviert" wieder in den Status "aktiv" zurückversetzen ("wiederherstellen").
- Löschen Sie ein Objekt, das Sie nicht mehr verwenden und das nicht zu Dokumentationszwecken benötigt wird. Möglicherweise müssen Sie dessen Verlauf aufbewahren, um bestimmte gesetzliche Vorschriften, Zertifizierungsstandards oder interne Prozesse einzuhalten.

!!! Warnung "Verlieren Sie keine Daten!"
    Gelöschte Objekte werden endgültig gelöscht und können nicht wiederhergestellt werden. Die einzige Möglichkeit, ein gelöschtes Objekt wiederherzustellen, besteht darin, eine frühere Sicherung der Datenbank zu verwenden, die dieses Objekt enthält.

Wenn ein Objekt archiviert wird, wird es nicht in der CMDB angezeigt. Archivierte Objekte können nicht geändert oder mit anderen Objekten verknüpft werden. Um ein archiviertes Objekt zu ändern oder zu verknüpfen, muss es wieder in den aktiven Status zurückgesetzt werden.

Auf archivierte Objekte kann über Suchfilter zugegriffen werden, indem nach Kategorie gefiltert wird: "Allgemein → Attribut: Dokumentationsstatus → Wert: Archiviert".

Wenn ein Objekt bereits Beziehungen zu anderen Objekten hat und dann archiviert wird, werden diese Beziehungen ebenfalls archiviert und nicht in der CMDB angezeigt.

Wenn ein archiviertes Objekt mit archivierten Beziehungen wiederhergestellt wird, werden diese Beziehungen ebenfalls wiederhergestellt, sofern die zugehörigen Objekte noch in der CMDB aktiv sind.

## Verlauf

Jedes Objekt verfügt über einen Verlauf, in dem alle Ereignisse protokolliert werden, die mit einem Objekt geschehen sind. Ereignisse können entweder Operationen vom Typ "Erstellen", "Ändern", "Archivieren" oder "Wiederherstellen" sein.

Jedes Ereignis, das ein Objekt betrifft, wird in der Historie gespeichert, ergänzt durch einen Zeitstempel und Informationen über den Initiator des Ereignisses sowie technisch detailliertere Informationen über das Ereignis.

Sie können die Historie eines Objekts auf seiner Detailseite unter "Tools → Historie" aufrufen. Eine globale Historie für alle Objekte ist ebenfalls in der Hauptnavigationsleiste verfügbar.

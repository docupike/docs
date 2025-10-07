---
title: Rechte und Genehmigungen
description: Benutzer, Gruppen und Rollen autorisieren
lang: de
---

# Rechte und Berechtigungen

i-doit up unterscheidet zwischen funktionalen _Rechten_ und _Berechtigungen_ für den Zugriff auf bestimmte Informationen in der Dokumentation.

## Additiv und vererbbar

Sowohl Rechte als auch Berechtigungen können jeder [Benutzerin, jeder Gruppe oder Rolle](users-groups-roles.md) hinzugefügt werden. Sie können ein Recht/eine Berechtigung direkt einer Benutzerin hinzufügen. Andernfalls fügen Sie ein Recht/eine Berechtigung indirekt einer Gruppe oder Rolle hinzu, um es/sie an verknüpfte Benutzer*innen zu vererben.

!!! info "Beispiel"
    Auch komplexe Konfigurationen sind möglich: Verwenden Sie die Rolle `admin`, die bereits über alle Rechte und Berechtigungen verfügt. Erstellen Sie eine Gruppe `NetzwerktechnikerInnen` und verknüpfen Sie diese mit der Rolle `admin`. Erstellen Sie dann den Benutzer `Jane Doe` und verknüpfen Sie ihn mit der Gruppe `NetzwerktechnikerInnen`. Am Ende verfügt `Jane Doe` über alle Rechte/Berechtigungen, die von der Rolle `admin` vererbt wurden.

## Rechte

Ein Recht ermöglicht es einem Benutzer, eine bestimmte Funktion zu nutzen oder administrative Einstellungen vorzunehmen. Gehen Sie zu "Einstellungen > Rechte", um Rechte zu konfigurieren.

!!! info "Beispiele"
    -   Der Gruppe "Support" wird das Recht erteilt, [Berichte](../user/reporting.md) zu verwenden.
    -   Der/die Benutzer/in "Bob" wird das Recht erteilt, [Objekte zu löschen](../user/basics/objects.md).

## Zugriffsrechte

Ein Zugriffsrecht gewährt einer Person Zugriff auf einen bestimmten Satz dokumentierter Informationen. Gehen Sie zu "Einstellungen > Zugriffsrechte", um Zugriffsrechte zu konfigurieren.
Zugriffsrechte werden immer durchgesetzt, unabhängig davon, in welchem Kontext sich die Person befindet. Sie wirken sich beispielsweise auf die in [Berichten](../user/reporting.md) angezeigten Ergebnisse und auf die Antworten der [API](../dev/api.md) aus.

Es gibt zwei Arten von Berechtigungen: **Kategorie- und Attributberechtigungen** definieren die Parameter, mit denen ein Benutzer auf Informationen innerhalb von Objekten zugreifen kann, die als [Kategorien und Attribute](../user/basics/categories-and-attributes.md) verfügbar sind, während **Objektlebenszyklusberechtigungen** definieren, ob Benutzerinnen und Benutzer Objekte [erstellen, archivieren, wiederherstellen oder löschen](../user/basics/objects.md) dürfen.

### Kategorie- und Attributberechtigungen

Der erste Teil dieser Art von Berechtigung ist die Definition eines Bereichs von Objekten, für die die Berechtigung gilt. Der Bereich kann entweder

-   **Alle Objekte:** Die Berechtigung gilt für alle Objekte in der gesamten Dokumentation.
-   **Objekte in der Klasse:** Die Berechtigung gilt für alle Objekte, die sich in einer bestimmten Klasse befinden.
-   **Bestimmtes Objekt:** Die Berechtigung gilt für ein einzelnes ausgewähltes Objekt.
-   **Objekte an einem Ort:** Die Berechtigung gilt für alle Objekte, die sich an einem definierten Ort (oder sogar an einem hierarchisch darunter liegenden Ort) befinden.
-   **Eigene Objekte:** Die Berechtigung gilt für alle Objekte, die vom Benutzer selbst erstellt wurden.

Der zweite Teil ist die Auswahl der Kategorien und Attribute, für die die Berechtigung gelten soll, sowie der Aktionen, die speziell erlaubt sind. Sie können entweder eine bestimmte Kategorie oder alle Kategorien auswählen. Dasselbe gilt für Attribute. Sie können entweder alle Attribute oder ein bestimmtes Attribut auswählen. Der letzte Teil ist die Definition der zulässigen Aktionen, die der Benutzer ausführen darf: entweder Informationen erstellen, lesen, bearbeiten oder löschen oder eine beliebige Kombination davon.

!!! info "Beispiel"
    Die Gruppe "Kundensupport" darf alle Attribute in der Kategorie "Modell" für alle Objekte bearbeiten, die sich in der [Objektklasse](../user/basics/classes.md) "Drucker" befinden.

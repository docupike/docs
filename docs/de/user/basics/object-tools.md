# Objekt-Tools

Der Eintrag **Tools** am unteren Rand der Sidebar der [Objektdetailseite](object-details.md) fasst die objektbezogenen Verwaltungsfunktionen zusammen, die nicht zu den regulären Kategorien gehören.
Klicken Sie in der Sidebar *Overview* auf **Tools**, um die Gruppe aufzuklappen.

Aktuell enthält sie zwei Unterseiten.

## History

Die objektbezogene **History** listet jede Änderung an diesem Objekt: wer hat sie wann gemacht, und was hat sich geändert.

| Spalte | Anmerkungen |
|---|---|
| Aktion | *Set data*, *Created*, *Deleted*, *Restored*, *Archived*, … |
| Feld / Kategorie | Welches Attribut oder welche Kategorie betroffen ist. |
| Alter Wert | Wert vor der Änderung. |
| Neuer Wert | Wert nach der Änderung. |
| Benutzer | Wer die Änderung vorgenommen hat. |
| Zeitstempel | Wann die Änderung passierte (Mandanten-Zeitzone). |

Dieselben Daten fasst das **History**-Widget zusammen, das standardmäßig im rechten *Widgets*-Bereich der Objektdetailseite eingeblendet ist.

Das globale **History**-Popup oben rechts in der Seite (siehe [Obere Leiste](top-bar.md)) ist der mandantenweite Feed; diese objektbezogene Seite zeigt dieselben Daten, gefiltert auf ein einzelnes Objekt.

## Permissions

Die objektbezogene Seite **Permissions** listet jede Regel, die Zugriff auf dieses Objekt gewährt oder implizit verweigert.
Eine Zeile zeigt das **Subject** (Benutzer, Gruppe oder Rolle), den **Scope** (dieses Objekt, die Klasse oder *All Objects*) und die **Aktion**, die die Regel steuert (*Read*, *Edit*, *Archive*, *Delete*, *Object lifecycle*, …).

Verwaltet werden Berechtigungen zentral unter **Einstellungen ▸ Benutzerverwaltung ▸ Berechtigungen**; siehe [Berechtigungen](../../admin/permissions.md).
Die objektbezogene Ansicht ist read-only und beantwortet schnell die Frage *"Wer kann dieses Objekt ändern?"*, ohne dass Sie das Objekt verlassen müssen.

## Wann Tools, wann reguläre Kategorien?

- **Tools ▸ History**, wenn Sie *wer was* an diesem Objekt geändert hat nachvollziehen wollen.
- **Tools ▸ Permissions**, wenn Sie *wer was* an diesem Objekt tun darf prüfen oder klären wollen.
- Alles andere (Attributwerte, IP-Adressen, Verträge, …) lebt in den regulären [Kategorien](categories-and-attributes.md).

## Siehe auch

- [Objektdetailseite](object-details.md)
- [Obere Leiste](top-bar.md): der globale History-Feed.
- [Berechtigungen](../../admin/permissions.md)
- [Rechte und Berechtigungen](../../admin/rights-and-permissions.md)

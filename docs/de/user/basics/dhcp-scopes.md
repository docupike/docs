# DHCP-Bereiche

Die Kategorie **DHCP-Bereiche** erfasst die Adressbereiche, die ein DHCP-Dienst innerhalb eines Netzwerks vergibt.
Sobald Bereiche eingetragen sind, gruppiert die IP-Adresstabelle dynamische Bereiche optisch, und die Aufschlüsselung *In DHCP-Bereichen / Nicht in DHCP-Bereichen* im Nutzungsbereich der [Netzwerk-Detailseite](ipam.md) wird gespeist.

## Wo Sie es finden

DHCP-Bereiche sind eine Kategorie der Klasse **Network**.
Sie erscheinen an zwei Stellen:

- als Eintrag **DHCP scopes** in der Sidebar *All categories* eines Netzwerk-Objekts; siehe [Objektdetailseite](object-details.md).
- als Tab **DHCP scopes** auf der [Netzwerk-Detailseite](ipam.md), die Sie über *Inventar ▸ Networks* aufrufen.

Beide Oberflächen zeigen dieselben Daten und bieten dieselben Aktionen.

## Attribute eines DHCP-Bereichs

![Kategorie "DHCP scopes" in einem Netzwerk-Objekt: links die Sidebar mit "All categories" (DHCP scopes selektiert), in der Mitte eine Tabelle mit den Spalten "Title", "IP range" und "DHCP entry type" plus den Controls "New entry", "Delete", "Columns", "Filters" darüber, rechts der Widgets-Bereich mit dem suite-plus-Widget, "Information" und "History".](../../img/user/basics/dhcp-scopes.png)

Jeder Bereich hat folgende Attribute:

| Attribut | Anmerkungen |
|---|---|
| **Title** | Freitextname des Bereichs (zum Beispiel *Clients* oder *Phones*). Zwei Bereiche mit demselben Range-Typ aber unterschiedlichem Titel bleiben in der IP-Tabelle getrennte Gruppen. |
| **IP range** | Start- und Endadresse des Bereichs (zum Beispiel `10.0.0.1` bis `10.0.0.20`). |
| **DHCP entry type** | Die Rolle des Bereichs, etwa *Reserved*, *Excluded* oder *Dynamic*. |

## Einen DHCP-Bereich hinzufügen

1. Öffnen Sie ein Netzwerk-Objekt.
2. Wechseln Sie zur Kategorie **DHCP scopes** (Sidebar) oder zum Tab **DHCP scopes** auf der Netzwerk-Detailseite.
3. Klicken Sie oberhalb der Tabelle auf **Add +**.
4. Füllen Sie **Title**, **IP range** und **DHCP entry type**.
5. Speichern.

Der neue Bereich erscheint in der Tabelle, und die IP-Adresstabelle fasst alle Adressen innerhalb des Bereichs unter dem Bereichstitel zusammen.

## Bereich bearbeiten oder löschen

- Bearbeiten: Mauszeiger über die Zeile, dann den Stift in der Spalte *Actions* klicken.
- Löschen: Zeile anhaken, oberhalb der Tabelle **Delete** klicken, dann bestätigen.

## Auswirkung auf die IP-Nutzung

Der Bereich **Usage details** auf der Netzwerk-Detailseite teilt IPv4 (und IPv6) auf in:

- **Total**: die Größe des Netzwerks.
- **In DHCP scopes**: alle Adressen, die in einen der hier angelegten Bereiche fallen.
- **Not in DHCP scopes**: der Rest.

Jede Änderung an den Bereichen aktualisiert die Aufschlüsselung und das Donut-Chart sofort.

## Siehe auch

- [IP-Adressverwaltung](ipam.md)
- [IP-Netzwerke](ip-networking.md)
- [Objektdetailseite](object-details.md)
- [Kategorien und Attribute](categories-and-attributes.md)

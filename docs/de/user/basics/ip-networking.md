# IP-Vernetzung

Die Kategorie **IP-Netzwerk** erfasst eine IP-Adresse, die einem Objekt zugewiesen ist, typischerweise einem Server, einer Workstation oder einem anderen Gerät, das mit einem Netzwerk verbunden ist.
Eine separate Kategorie, **Netzwerkdefinition**, ist mit Netzwerkobjekten verknüpft und beschreibt das Netzwerk selbst.
Zusammen ermöglichen sie es Ihnen, zu dokumentieren, was in welchem Netzwerk erreichbar ist.

Eine dritte Kategorie, **IP-Adressen** (früher *IP-Liste*), ist bei einigen Objektklassen ebenfalls verfügbar; es handelt sich dabei um eine Variante der IP-Vernetzung mit mehreren Werten und einem zusätzlichen **Host**-Attribut.

## Rechte

Sie können IP-Netzwerkeinträge bei jedem Objekt bearbeiten, auf das Sie Schreibzugriff haben.
Siehe [Rechte und Berechtigungen](../../admin/rights-and-permissions.md).

## IP-Netzwerkattribute

Die Kategorie umfasst die folgenden fünf Attribute:

| Attribut | Beschreibung |
|---|---|
| **IP-Adresse** | Die IP-Adresse. Wird anhand der gewählten **Version** überprüft. |
| **Subnetzmaske** | CIDR-Notation der Netzmaske. Optional. Akzeptiert sowohl`24`  als auch `/24`. |
| **Netzwerk** | Ein Link zum Netzwerkobjekt, dessen **Netzwerkdefinition** den Adressbereich beschreibt. |
| **Konfiguration** | Wie die Adresse konfiguriert ist (z. B. *Statisch*). |
| **Version** | IPv4 oder IPv6. Wird nach der Erstellung des Eintrags festgelegt. |

## Eine IP-Adresse hinzufügen

1. Öffnen Sie das Objekt, zu dem die Adresse gehört.
2. Wechseln Sie in der Seitenleiste zur Kategorie **IP-Netzwerk**.
3. Klicken Sie je nach Adresstyp auf **IPv4-Adresse hinzufügen** oder **IPv6-Adresse hinzufügen**.
4. Wählen Sie das **Netzwerk** aus, zu dem die Adresse gehört.
5. Geben Sie die **IP-Adresse** ein.
6. Geben Sie optional die **Subnetzmaske** ein.
    Sie können den Wert entweder als reine Zahl (`24`) oder mit einem vorangestellten Schrägstrich (`/24`) eingeben.
    Beide Schreibweisen werden akzeptiert.
7. Speichern Sie den Eintrag.

## Netzwerkdefinition

Die Kategorie **Netzwerkdefinition** ist mit Netzwerkobjekten verknüpft.
Sie beschreibt das Netzwerk selbst, nicht eine einzelne Adresse.
Die Kategorie enthält fünf Attribute:

| Attribut | Beschreibung |
|---|---|
| **Abschnitt** | Die Adressklasse oder Zone, zu der das Netzwerk gehört. |
| **Version** | IPv4 oder IPv6. |
| **Netzwerkadresse** | Die Basisadresse des Netzwerks. |
| **Subnetzmaske** | CIDR des Netzwerks. |
| **Standardrouter** | Die IP-Adresse, die als Standardrouter für dieses Netzwerk reserviert ist. |

## Kategorie „IP-Adressen“

Die Kategorie **IP-Adressen** wird bei Objektklassen angezeigt, die viele Adressen enthalten, beispielsweise bei einem Server mit mehreren Schnittstellen.
Sie enthält dieselben netzwerkbezogenen Attribute wie „IP-Netzwerk“ sowie ein **Host**-Attribut, das die Schnittstelle oder den Host-Eintrag benennt:

| Attribut | Beschreibung |
|---|---|
| **Host** | Der Hostname oder die Schnittstellenbezeichnung der Adresse. |
| **IP-Adresse** | Die IP-Adresse. |
| **Subnetzmaske** | CIDR der Netzmaske. |
| **Konfiguration** | Wie die Adresse konfiguriert ist. |
| **Version** | IPv4 oder IPv6. |

Die Kategorie hieß zuvor **IP-Liste** und wurde in einer kürzlich veröffentlichten Version umbenannt.

## Siehe auch

- [IP-Adressverwaltung](ipam.md), Zuweisen und Entziehen von Adressen innerhalb eines Netzwerks.
- [Objekte](objects.md)
- [Kategorien und Attribute](categories-and-attributes.md)
- [Klassen](classes.md)

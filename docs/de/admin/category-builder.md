# Kategorie-Builder

Mit dem **Kategorien-Generator** können Administratoren benutzerdefinierte Kategorien direkt in der i-doit-Benutzeroberfläche erstellen und bearbeiten, ohne dass ein Entwickler oder Zugriff auf die Befehlszeile erforderlich ist.

Eine Einführung in Kategorien und Attribute finden Sie unter [Benutzerdefinierte Kategorien und Attribute](custom-categories.md).

## Rechte

Um benutzerdefinierte Kategorien zu erstellen oder zu bearbeiten, benötigen Sie:

- **Rechte > CMDB > Kategorien verwalten**: zum Erstellen und Bearbeiten von Kategorien.
- **Rechte > CMDB > Klassen verwalten**: zum Zuweisen von Kategorien zu Klassen.

Öffnen Sie im Benutzermenü (oben rechts) die **Einstellungen** und gehen Sie zu **Benutzerverwaltung > Rechte**, um die Rechte zu konfigurieren.

## Den Kategorie-Builder öffnen

Öffnen Sie im Benutzermenü (oben rechts) die **Einstellungen**, gehen Sie zu **CMDB-Konfiguration > Kategorien** und klicken Sie auf **Neue Kategorie +**, um den Kategorie-Builder für eine neue Kategorie zu öffnen.

Um eine vorhandene benutzerdefinierte Kategorie zu bearbeiten, klicken Sie in der Liste auf den Namen der Kategorie und anschließend auf **Bearbeiten**.

## Kategorie-Details

Stellen Sie oben im Category Builder Folgendes ein:

| Feld | Beschreibung |
|---|---|
| **Name** | Der Anzeigename der Kategorie. |
| **Kategorietyp** | **Einzelwert** (ein Eintrag pro Objekt) oder **Mehrfachwert** (mehrere Einträge pro Objekt). |

!!! Hinweis
    Der Kategorietyp kann nach dem ersten Speichern der Kategorie nicht mehr geändert werden.

## Attribute hinzufügen

Klicken Sie auf **Neues Attribut**, um der Kategorie ein Attribut hinzuzufügen. Für jedes Attribut müssen ein **Name** und ein **Typ** angegeben werden.

### Attributtypen

| Typ | Beschreibung |
|---|---|
| Text | Einzeiliger Klartext. |
| Mehrzeiliger Text | Mehrzeiliger Klartext. |
| Zahl | Dezimalzahl. |
| Boolescher Wert | Ja/Nein-Schalter. |
| Datum | Datumsauswahl. |
| Datum und Uhrzeit | Datums- und Uhrzeitauswahl. |
| Uhrzeit | Zeitauswahl. |
| Währung | Numerischer Wert mit Währungseinheit. |
| Farbe | Hex-Farbcode oder Farbauswahl. |
| Passwort | Maskierte Texteingabe. |
| URL | Anklickbarer Link. |
| E-Mail | E-Mail-Adresse. |
| Telefon | Telefonnummer. |
| Einfachauswahl | Dropdown-Menü mit einer auswählbaren Option aus einer vordefinierten Liste. |
| Mehrfachauswahl | Dropdown-Menü mit mehreren auswählbaren Optionen aus einer vordefinierten Liste. |
| Objektreferenz | Verweis auf ein einzelnes Objekt in der CMDB. |
| Mehrfachobjektreferenz | Verweis auf mehrere Objekte in der CMDB. |

### Attribute neu anordnen

Ziehe die Attribute in der Liste per Drag & Drop, um ihre Anzeigereihenfolge innerhalb der Kategorie zu ändern.

### Ein Attribut entfernen

Klicken Sie auf die Schaltfläche **×** auf einer Attributkarte, um diese zum Löschen zu markieren.
Das Attribut bleibt bis zum Speichern markiert.
Wenn Sie ein Attribut löschen, für das bereits Daten gespeichert sind, werden Sie vor dem Speichern darauf hingewiesen.

## Einer Klasse eine Kategorie zuweisen

Benutzerdefinierte Kategorien müssen mindestens einer Klasse zugewiesen werden, bevor sie bei Objekten angezeigt werden.

1. Öffnen Sie im Benutzermenü die **Einstellungen** und navigieren Sie zu **CMDB-Konfiguration > Klassen**.
2. Öffnen Sie die Klasse und klicken Sie auf **Bearbeiten**.
3. Fügen Sie der Klasse die benutzerdefinierte Kategorie hinzu und speichern Sie die Änderungen.

## Speichern und verwerfen

Klicken Sie auf **Speichern**, um Ihre Änderungen zu übernehmen.
Wenn Sie den Kategorie-Builder verlassen, ohne die Änderungen zu speichern, werden Sie in einem Bestätigungsdialog gefragt, ob Sie diese verwerfen möchten.

## Siehe auch

- [Benutzerdefinierte Kategorien erstellen](custom-categories.md)
- [Benutzerdefinierte Klassen erstellen](custom-classes.md)
- [Kategorien und Attribute](../user/basics/categories-and-attributes.md)

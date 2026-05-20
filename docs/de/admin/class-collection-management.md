# Klassen und Kollektionen verwalten

Administratoren konfigurieren die CMDB-Struktur, indem sie im Benutzermenü (oben rechts) den Punkt **Einstellungen** öffnen und zum Abschnitt **CMDB-Konfiguration** navigieren, der die Bereiche **Sammlungen**, **Klassen** und **Kategorien** enthält.
Diese Seite behandelt alltägliche Verwaltungsaufgaben für vorhandene Klassen, Sammlungen und Kategorien, darunter das Löschen dieser Elemente, das Aufheben von Zuordnungen zwischen ihnen und das Ändern des Klassensymbols.
Informationen zum Erstellen neuer Strukturen finden Sie unter [Benutzerdefinierte Klassen erstellen](custom-classes.md) und [Benutzerdefinierte Kategorien erstellen](custom-categories.md).
Eine konzeptionelle Einführung finden Sie unter [Klassen](../user/basics/classes.md) und [Sammlungen](../user/basics/collections.md).

## Rechte

Um Klassen, Sammlungen und Kategorien zu verwalten, benötigen Sie die entsprechenden Administratorrechte.
Öffnen Sie im Benutzermenü den Punkt **Einstellungen** und navigieren Sie zu **Benutzerverwaltung > Rechte**, um diese zu konfigurieren.
Siehe [Rechte und Berechtigungen](rights-and-permissions.md).

## Klassenmanagement

Gehen Sie zu **Einstellungen > CMDB-Konfiguration > Klassen** (Benutzermenü → Einstellungen → Klassen), um die Klassenliste zu öffnen.

Die Liste unterteilt die Klassen in drei Abschnitte:

- **Alle Klassen**: alle Klassen in der Instanz.
- **Klassen, die keiner Sammlung zugeordnet sind**: Klassen, die derzeit in keiner Sammlung enthalten sind.
- **Klassen, die einer Sammlung zugeordnet sind**: Klassen, die in mindestens einer Sammlung vorkommen.

Jedes Klassenelement zeigt Tags mit den Namen der Sammlungen an, zu denen es gehört.

### Eine Klasse löschen

1. Gehen Sie zu **Einstellungen > CMDB-Konfiguration > Klassen** (Benutzermenü → Einstellungen → Klassen).
2. Bewegen Sie den Mauszeiger über die Klasse, die Sie löschen möchten.
3. Klicken Sie auf das **Papierkorb-Symbol**, das in der Zeile erscheint.

Wenn die Klasse von bestehenden Objekten verwendet wird, erscheint ein Sperrdialog: *„Die Klasse wird in {N} Objekten verwendet.
Bitte löschen Sie die Objekte, bevor Sie die Klasse löschen.“*
Die Klasse kann erst gelöscht werden, wenn diese Objekte entfernt wurden.

Wenn die Klasse nicht verwendet wird, erscheint ein Bestätigungsdialog.
Klicken Sie auf **Löschen**, um den Vorgang zu bestätigen.
Die Klasse wird entfernt und eine Erfolgsmeldung angezeigt.

### Eine Kategorie aus einer Klasse entfernen

1. Öffnen Sie die Klasse, indem Sie in der Liste auf ihren Namen klicken.
2. Bewegen Sie den Mauszeiger in der Detailansicht der Klasse über die Kategorie, die Sie entfernen möchten.
3. Klicken Sie auf die Schaltfläche **(X)**, die auf dem Kategorieeintrag erscheint.

Die Kategorie wird aus dieser Klasse entfernt und eine Erfolgsmeldung angezeigt.
Die Kategorie selbst wird nicht gelöscht, sondern lediglich ihre Zuordnung zu dieser Klasse.

### Das Klassensymbol festlegen

1. Öffnen Sie die Klasse, indem Sie in der Liste auf ihren Namen klicken.
2. Doppelklicken Sie in der Detailansicht der Klasse oben auf das Symbolfeld.
3. Wählen Sie ein Symbol aus der Dropdown-Liste aus.

Die Auswahl wird sofort übernommen.
Die verfügbaren Symbole sind vordefiniert.

## Bestandsverwaltung

Gehen Sie zu **Einstellungen > CMDB-Konfiguration > Sammlungen**, um die Sammlungsliste zu öffnen.

### Eine Sammlung löschen

Sie können eine Sammlung entweder in der Listenansicht oder in der Detailansicht der Sammlung löschen.

**Aus der Liste:**

1. Bewegen Sie den Mauszeiger über die Sammlung, die Sie löschen möchten.
2. Klicken Sie auf das **Papierkorb-Symbol**, das in der Zeile erscheint.
3. Klicken Sie im Bestätigungsdialog auf **Löschen**.

**Aus der Detailansicht:**

1. Öffnen Sie die Sammlung, indem Sie in der Liste auf ihren Namen klicken.
2. Klicken Sie oben in den Sammlungsdetails auf die Schaltfläche **Fleischbällchen** (`⋮`).
3. Wählen Sie **Löschen**.
4. Klicken Sie im Bestätigungsdialogfeld auf **Löschen**.

Die Sammlung wird gelöscht und eine Erfolgsmeldung angezeigt.

### Eine Klasse aus einer Sammlung entfernen

1. Öffnen Sie die Sammlung, indem Sie in der Liste auf ihren Namen klicken.
2. Bewegen Sie den Mauszeiger in der Detailansicht der Sammlung über die Klasse, die Sie entfernen möchten.
3. Klicken Sie auf die Schaltfläche **(X)**, die auf dem Klassenelement erscheint.

Die Klasse wird aus dieser Sammlung entfernt.
Die Klasse selbst wird nicht gelöscht, sondern lediglich ihre Zuordnung zu dieser Sammlung.

## Kategorie-Management

Gehen Sie zu **Einstellungen > CMDB-Konfiguration > Kategorien**, um die Kategorieliste zu öffnen.

Standardkategorien können nicht gelöscht werden.
Es können nur benutzerdefinierte Kategorien entfernt werden.

### Eine benutzerdefinierte Kategorie löschen

1. Bewegen Sie den Mauszeiger über die benutzerdefinierte Kategorie, die Sie löschen möchten.
2. Klicken Sie auf das Symbol **Löschen**, das in der Zeile angezeigt wird.
3. Klicken Sie im Bestätigungsdialogfeld auf **Löschen**.

Bei Standardkategorien wird beim Darüberfahren mit der Maus keine Löschschaltfläche angezeigt.

## Siehe auch

- [Benutzerdefinierte Klassen erstellen](custom-classes.md)
- [Benutzerdefinierte Kategorien erstellen](custom-categories.md)
- [Klassen](../user/basics/classes.md)
- [Sammlungen](../user/basics/collections.md)
- [Kategorien und Attribute](../user/basics/categories-and-attributes.md)
- [Rechte und Berechtigungen](rights-and-permissions.md)

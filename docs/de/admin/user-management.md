# Benutzerverwaltung

Benutzer, Gruppen und Rollen legen fest, wer sich bei i-doit anmelden darf und welche Aktionen den jeweiligen Benutzern gestattet sind.
Auf dieser Seite wird die tägliche Verwaltung von Benutzern behandelt.

Einen konzeptionellen Überblick einschließlich der Rechte und Berechtigungen finden Sie unter [Rechte und Berechtigungen](rights-and-permissions.md).

## Rechte

Um Benutzer zu verwalten, benötigen Sie die Berechtigung **Rechte > Verwaltung > Benutzer verwalten**.

Um Gruppen und Rollen zu verwalten, benötigen Sie die Berechtigungen **Rechte > Verwaltung > Gruppen verwalten** und **Rechte > Verwaltung > Rollen verwalten**.

Öffnen Sie im Benutzermenü (oben rechts) die **Einstellungen** und navigieren Sie zu **Benutzerverwaltung > Rechte**, um die Rechte zu konfigurieren.

Der Abschnitt **Benutzerverwaltung** in den Einstellungen umfasst fünf Seiten: **Benutzer**, **Benutzergruppen**, **Rollen**, **Rechte** und **Berechtigungen**.

## Benutzer

### Einen Benutzer anlegen

1. Gehen Sie zu **Einstellungen > Benutzerverwaltung > Benutzer**.
2. Klicken Sie auf **Neuer Benutzer**.
3. Füllen Sie die Pflichtfelder aus: **Vorname**, **Nachname** und **E-Mail-Adresse**.
4. Legen Sie ein temporäres Passwort fest oder versenden Sie eine Einladungs-E-Mail.
5. Speichern.

### Einen Benutzer bearbeiten

Öffnen Sie einen Benutzer aus der Liste und klicken Sie auf **Bearbeiten**.
Sie können den Namen, die E-Mail-Adresse, das Passwort, die Standardsprache, den Standardmandanten sowie die Rollen- und Gruppenzuweisungen des Benutzers ändern.

### Einem Benutzer Rollen zuweisen

Öffnen Sie die Seite mit den Benutzerdetails und wechseln Sie zum Abschnitt **Rollen**.
Fügen Sie eine oder mehrere Rollen hinzu.
Der Benutzer erhält alle Rechte, die diesen Rollen zugewiesen sind.

### Einem Benutzer Gruppen zuweisen

Öffnen Sie die Seite mit den Benutzerdaten und wechseln Sie zum Abschnitt **Gruppen**.
Fügen Sie eine oder mehrere Gruppen hinzu.
Der Benutzer erhält alle Rechte, die diesen Gruppen zugewiesen sind.

### Einen Benutzer löschen

Öffnen Sie die Seite mit den Benutzerdaten und klicken Sie auf **Löschen**.
Bestätigen Sie den Dialog.
Gelöschte Benutzer können sich nicht mehr anmelden.

## Gruppen

Mit Gruppen können Sie mehreren Benutzern gleichzeitig dieselben Rechte zuweisen.

### Eine Gruppe erstellen

1. Gehen Sie zu **Einstellungen > Benutzerverwaltung > Benutzergruppen**.
2. Klicken Sie auf **Neue Gruppe**.
3. Geben Sie einen Namen ein und weisen Sie Benutzer und Rechte zu.
4. Speichern Sie die Änderungen.

### Benutzer zu einer Gruppe hinzufügen

Öffnen Sie eine Gruppe und wechseln Sie zum Abschnitt **Benutzer**.
Fügen Sie einen oder mehrere Benutzer hinzu.
Diese erhalten sofort die Berechtigungen der Gruppe.

## Rollen

Rollen sind benannte Rechtegruppen, die Benutzern oder Gruppen zugewiesen werden können.

### Eine Rolle erstellen

1. Gehen Sie zu **Einstellungen > Benutzerverwaltung > Rollen**.
2. Klicken Sie auf **Neue Rolle**.
3. Geben Sie einen Namen ein und fügen Sie Berechtigungen hinzu.
4. Speichern.

### Benutzer zu einer Rolle hinzufügen

Öffnen Sie eine Rolle und wechseln Sie zum Abschnitt **Benutzer**.
Sie können der Rolle einzelne Benutzer oder ganze Gruppen hinzufügen.

### Eine Rolle löschen

Öffnen Sie eine Rolle und klicken Sie auf **Löschen**.
Benutzer und Gruppen, denen diese Rolle zugewiesen war, verlieren sofort die damit verbundenen Rechte.

## Ein Passwort festlegen oder ändern

Beim Anlegen eines Benutzers werden Sie zur Eingabe eines Anfangspassworts aufgefordert.
Um das Passwort eines bestehenden Benutzers zu ändern, öffnen Sie den Benutzer und klicken Sie auf **Sicherheit**.
Geben Sie das neue Passwort zur Bestätigung zweimal ein.

Passwörter müssen mindestens 8 Zeichen lang sein (maximal 64), mindestens eine Ziffer enthalten und eine Mischung aus Groß- und Kleinbuchstaben aufweisen.
Durch die Verwendung von Sonderzeichen wird das Passwort sicherer.

## Vererbung

Rechte in i-doit up sind additiv und vererbbar:

- Einem Benutzer werden Rechte **direkt** oder über **Gruppen** und **Rollen** zugewiesen.
- Alle Quellen werden zusammengefasst, es gibt keinen Mechanismus zum Verweigern oder Überschreiben.

**Beispiel:** Die Benutzerin *Jane* gehört zur Gruppe *Netzwerktechniker*, die über die Rolle *Admin* verfügt.
Jane erhält über die Gruppe alle Rechte der Rolle *Admin*.

## Siehe auch

- [Rechte und Berechtigungen](rights-and-permissions.md)
- [Berechtigungen](permissions.md)
- [Mandanten](tenants.md)

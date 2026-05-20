# Leere Zustände

Ein **leerer Zustand** ist der Bildschirm, den i-doit up anzeigt, wenn nichts zum Anzeigen vorliegt, etwa eine Finder-Tabelle ohne passende Objekte oder eine 404-Seite.
Jeder Leerzustand kombiniert eine Überschrift, einen kurzen Hilfetext, eine illustrierende Grafik und, wo sinnvoll, einen Call-to-Action-Button, der Sie aus der Sackgasse führt.

Diese Seite katalogisiert die leeren Zustände, die im normalen Betrieb begegnen.

## Katalog

### *No objects found*: Finder

Wird auf `/finder` angezeigt, sobald die Kombination aus aktiver Klasse plus Filter null Zeilen liefert.

![Finder im leeren Zustand: eine Lupen-Illustration über der Überschrift "No objects found", darunter der Hinweis "Check your search terms or clear your search to try again" und ein Button "Clear filters".](../../img/user/basics/empty-no-objects.png)

- **Überschrift:** *No objects found*
- **Text:** *Check your search terms or clear your search to try again.*
- **Aktion:** **Clear filters** entfernt alle aktiven [Filter-Chips](../finder/set-filter.md); die Klassenauswahl selbst bleibt unberührt.

Derselbe Leerzustand greift in jeder klassen-gefilterten Finder-Tabelle, also auch in der [Klassenliste](../finder/class-list.md) und unter [Standorte](locations.md).

### *Missing network definition*: Tab IP addresses

Wird im Tab **IP addresses** eines Netzwerk-Objekts angezeigt, solange die **Network definition** fehlt.
Die vollständige Attributliste finden Sie unter [IP-Adressverwaltung](ipam.md).

- **Überschrift:** *Missing network definition*
- **Text:** *Please enter network definition first to be able to create IP addresses.*
- **Aktion:** **Add** öffnet das Formular *Network definition* mit Fokus auf dem Feld *Section*.

Die Buttons **Add +** und **Unassign** oberhalb der Tabelle bleiben deaktiviert, bis eine *Network definition* gespeichert ist.

### *No saved searches*: Edit-Dropdown

Wird im **Edit ⌄**-Dropdown oberhalb der Finder-Tabelle angezeigt, solange die aktive Klasse keine [gespeicherten Suchen](../finder/saved-views.md) hat.

- **Überschrift:** *No saved searches yet*
- **Text:** *Configure a filter, then save it as a view to see it here.*
- **Aktion:** Keine; der Hinweistext lenkt direkt zum **Set filter**-Dialog.

### *No reports*: Berichtsmanager

Wird auf `/report` angezeigt, solange der Mandant keine Berichte hat.
Siehe [Berichtsmanager](../reporting/report-manager.md).

- **Überschrift:** *No reports yet*
- **Text:** *Create your first report to combine attributes from multiple classes.*
- **Aktion:** **Add +** öffnet den Dialog zur Berichts-Erstellung.

### 404: *Page not found*

Wird angezeigt, wenn eine Deep-Link-URL nicht mehr auflöst, etwa weil das Objekt gelöscht wurde oder die Object-ID nicht gültig ist.

- **Überschrift:** *Page not found*
- **Text:** *The page you were looking for does not exist or you do not have access to it.*
- **Aktion:** **Back to Finder** bringt Sie nach `/finder`.

### *Access denied*

Wird angezeigt, wenn Sie eine Oberfläche aufrufen, die Ihre Rolle oder Berechtigungen nicht abdecken, zum Beispiel eine Settings-Unterseite, die das Recht *Manage Subscription* verlangt.
Siehe [Rechte und Berechtigungen](../../admin/rights-and-permissions.md).

- **Überschrift:** *You do not have access to this page*
- **Text:** *Ask your administrator to grant you the right or permission required for this surface.*
- **Aktion:** **Back to Finder**.

## Konventionen

- Die Illustration sitzt oberhalb der Überschrift.
- Der Aktions-Button verwendet denselben Primary-Stil wie überall sonst.
- Der Body ist ein kurzer Satz, nie ein Absatz.
- Ein Leerzustand ersetzt nie die globalen Bereiche (obere Leiste, Sidebar); er füllt nur den Content-Bereich.

## Siehe auch

- [Finder](../finder/finder.md)
- [IP-Adressverwaltung](ipam.md)
- [Berichtsmanager](../reporting/report-manager.md)
- [Benachrichtigungen](notifications.md): kurzlebige Rückmeldungen, die von selbst verschwinden.

# Logs und Verlauf

Flows hält jede Ausführung eines Flows in den **Logs** fest und jede Änderung an einem Flow im **Verlauf**.
Diese Seite beschreibt beide Ansichten.

!!! info
    Verfügbar ab i-doit up 3.3.0.

## Logs

**Logs** im linken Bereich listet die Ausführungen aller Flows, die neueste zuerst.
Jede Ausführung zeigt, wann sie ausgelöst wurde, den Flow und seine Gruppen, den Status, die Aktion, wer sie ausgelöst hat, den Auslöser und Details dazu, was passiert ist.

Der Status einer Ausführung ist einer dieser Werte:

- **Erfolgreich**: Die Aktionen wurden ausgeführt.
- **Übersprungen**: Eine Bedingung war nicht erfüllt.
- **Fehler**: Eine Aktion ist fehlgeschlagen.

Ausführungen im Testmodus beschreiben, was passiert wäre, zum Beispiel "Would create object …".
Diese Beschreibungen sind auch in der deutschen Oberfläche englisch.

Die Filterleiste bietet ein Suchfeld und Filter für **Status**, **Aktion**, **Ausgelöst am** (heute, diese Woche, dieser Monat oder ein Zeitraum), **Flow**, **Ausgelöst von**, **Auslöser** und **Details**.
Die Filter der Logs werden zurückgesetzt, wenn Sie die Ansicht verlassen.

**Öffnen** (→) in einer Zeile öffnet den Log-Eintrag rechts.
Er zeigt den Flow, den Status, **Ausgeführt als (Flow Operator)** und den Auslöser mit **Ausgelöst am**, **Ausgelöst von**, dem Auslösertyp sowie Titel und Typ des Auslöser-Objekts.
Wurde ein Flow gelöscht, ist sein Name als **Gelöscht** markiert.

Um die Ausführungen eines einzelnen Flows zu sehen, öffnen Sie den Flow und wählen Sie den Reiter **Logs**.

!!! example "Platzhalter für Screenshot: flows_log_entry_panel.png"
    Logs mit der Filterleiste und einem geöffneten Log-Eintrag mit Ausgeführt als (Flow Operator) und den Details zum Auslöser.

## Verzögerte Ausführungen

Werden sehr viele Ausführungen auf einmal ausgelöst, zum Beispiel durch einen Massenimport, der viele Ereignis-Auslöser anstößt, stellt Flows die zusätzlichen Ausführungen in eine Warteschlange und führt sie kurz danach aus.
Die Ausführungen gehen nicht verloren, sie erscheinen etwas später in den Logs.

Klicks auf Buttons werden nicht verzögert.
Kommen innerhalb einer Minute sehr viele Klicks an, zeigt Flows eine Meldung, und Sie können einen Moment später erneut klicken.

## Verlauf

**Verlauf** im linken Bereich listet alle Änderungen an Flows, die neueste zuerst.
Er zeigt Änderungen dieser Arten: **Erstellt**, **Importiert**, **Bearbeitet**, **Gelöscht**, **Aktiviert**, **Deaktiviert** und **In Testmodus versetzt**.
Jedes Speichern erzeugt einen eigenen Eintrag.

Jeder Eintrag zeigt Datum und Uhrzeit, die Art der Änderung, den Flow, **Geändert von**, die Flow-Gruppen und den Flow Operator nach der Änderung.

**Öffnen** (→) in einer Zeile öffnet die Details der Änderung:

- bei einem erstellten Flow seine erste Konfiguration,
- bei einem bearbeiteten Flow die geänderten Felder mit ihren Werten vorher und nachher,
- bei einem gelöschten Flow seine letzte Konfiguration.

Der Verlauf bleibt erhalten, wenn ein Flow gelöscht wird.

Die Filterleiste bietet ein Suchfeld und Filter für die Art der Änderung, **Datum**, **Flow**, **Geändert von**, Flow-Gruppe und Flow Operator.

Um die Änderungen eines einzelnen Flows zu sehen, öffnen Sie den Flow und wählen Sie den Reiter **Verlauf**.

!!! example "Platzhalter für Screenshot: flows_history.png"
    Verlauf mit der Filterleiste und einem geöffneten Eintrag mit den Werten vor und nach einer Bearbeitung.

## Weiterführende Informationen

-   [Flows](../flows.md)
-   [Flows erstellen und bearbeiten](create.md)

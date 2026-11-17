# Export und Import

Sie können Flows in eine JSON-Datei exportieren und wieder importieren, zum Beispiel um Flows in eine andere i-doit-up-Instanz zu übertragen oder als Sicherung.
Diese Seite beschreibt beide Schritte.

!!! info
    Verfügbar ab i-doit up 3.3.0.

## Flows exportieren

1. Markieren Sie in der Übersicht die Flows über die Kontrollkästchen.
2. Klicken Sie auf **Exportieren**.

i-doit up lädt die markierten Flows als JSON-Datei herunter.

## Flows importieren

1. Klicken Sie in der Übersicht auf **Importieren**.
2. Wählen Sie eine JSON-Datei, die aus Flows exportiert wurde.

Importierte Flows:

- sind **Inaktiv**, damit Sie sie prüfen können, bevor Sie sie aktivieren,
- laufen als **Standard-Flow-Benutzer**, weil der Flow Operator der Quellinstanz nicht importiert wird,
- erscheinen im [Verlauf](logs-history.md#verlauf) als **Importiert**.

Eine Meldung unten links zeigt das Ergebnis.
Bei mehreren Flows zeigt sie den Fortschritt und dann, wie viele Flows importiert wurden.
**Details anzeigen** listet jeden Flow mit **Öffnen** auf und fehlgeschlagene Flows mit **Erneut versuchen**.

## Weiterführende Informationen

-   [Flows](../flows.md)
-   [Flows erstellen und bearbeiten](create.md#flow-operator)

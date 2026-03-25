---
title: Data Protection
description: Datenschutz erstellen / Datenschutz-Grundverordnung
icon: :bootstrap-data-protection:
lang: de
---

# :bootstrap-data-protection: Data Protection

Die **Datenschutz-Grundverordnung (DSGVO)** legt detaillierte Anforderungen für Unternehmen und Organisationen zur Erhebung, Speicherung und Verwaltung personenbezogener Daten fest. Sie gilt für europäische Organisationen, die personenbezogene Daten von Personen in der EU verarbeiten, sowie für Organisationen außerhalb der EU, die sich an Personen mit Wohnsitz in der EU richten. Weitere Informationen finden Sie auf der [offiziellen Website](https://europa.eu/youreurope/business/dealing-with-customers/data-protection/data-protection-gdpr/index_en.htm) der EU.

!!! info "Das Datenschutz-Add-on ist für alle **Test**-Nutzer 30 Tage lang verfügbar."

!!! success "Für **Premium**- und **Pro**-Nutzer ist es uneingeschränkt verfügbar."

Risiken und Maßnahmen müssen ebenfalls dokumentiert werden. Maßnahmen für die Risiken können dann in der Organisation gespeichert werden. Zusätzlich kann der Status der Umsetzung der Maßnahmen und eine Überprüfung eingesehen werden.

Alle [Klassen](basics/classes.md), die zu **Datenschutz** gehören, werden in der [Kollektionen](basics/collections.md) "Datenschutz" gespeichert, die im Menü [Finder](finder/views-and-presets.md) zu finden ist.

## Rechte

Sie sollten die Rechte überprüfen und an Ihre Bedürfnisse anpassen. Derzeit sind folgende Rechte verfügbar: Herunterladen, Dokumente verwalten und Mailings verwalten. Darüber hinaus besteht die Möglichkeit, alle verfügbaren Rechte (einschließlich zukünftiger Updates) zuzuweisen.

## Kurzanleitung

Alle [Klassen](./basics/classes.md), die zu **Datenschutz** gehören, werden in der [Kollektionen](./basics/collections.md) **Datenschutz** gespeichert, die Sie im Menü [Finder](./finder/views-and-presets.md) finden.

Klicken Sie auf "Finder → Datenschutz". Die Übersicht "Datenschutz" finden Sie unter "Inventar → Datenschutz".

Beginnen wir mit der Übersicht über das Add-on. Grundsätzlich unterscheiden wir zwischen zwei Organisationseinheiten, die zur Durchführung der DSGVO-Dokumentation verwendet werden können. Die eine ist die **Organisation** und die andere die **Informationssicherheitsdomäne**. **Organisation** sind in der Regel das gesamte Unternehmen oder mehrere Unternehmen, für die Sie die Informationssicherheit dokumentieren möchten, während **Informationssicherheitsdomänen** Untereinheiten sind, z. B. wenn Sie unterschiedliche Anforderungen an die Informationssicherheit haben, die in verschiedene Abteilungen wie "Verwaltung" und "Produktion" unterteilt sind, möchten Sie hier unterschiedliche Dokumentationen erstellen.

Im Abschnitt **Verarbeitungsaktivitäten** und **Implementierte Maßnahmen (TOMs)** müssen die entsprechenden Objekte angelegt und alle über die Schaltfläche **Aktionen** angezeigten Informationen ausgefüllt werden.

[Detaillierterer Anwendungsfall](./usecases/data-protection.md){ .md-button .md-button--primary }

### Verarbeitungsaktivitäten

In diesem Abschnitt sollen alle notwendigen Informationen zu allen Verarbeitungsaktivitäten dokumentiert werden. Erstellen Sie ein Objekt der Klasse **Prozess** und füllen Sie die Kategorien **Verarbeitete Daten**, **Verarbeitungszweck und -verwaltung** und gegebenenfalls die Kategorie **Externe Verarbeiter** aus.

In diesem Abschnitt möchten wir folgende Fragen beantworten:

- Warum benötigen wir diesen Prozess?
- Welche Daten sind enthalten?
- Wessen Daten haben wir verwendet?
- Wer hat Zugriff auf diese Daten?
- Wurde eine Datenverarbeitungsvereinbarung unterzeichnet?

### Implementierte Maßnahmen (TOMs)

In diesem Abschnitt sollen alle notwendigen Informationen zu den implementierten Maßnahmen dokumentiert werden. Erstellen Sie Objekte der Klasse **Bedrohung**. Erstellen Sie anschließend Objekte der Klasse **Maßnahme (TOM)** und füllen Sie die Kategorie **Sicherheitsmaßnahme** aus. Öffnen Sie anschließend das Objekt **Informationssicherheitsbereich**, weisen Sie die **Bedrohung** der Kategorie **Risikomanagement** zu und fügen Sie das Objekt **Maßnahme** in der Kategorie **Maßnahmenimplementierungsstatus** hinzu. Wenn der Status der **Maßnahme** überprüft wurde, füllen wir auch die Daten der Kategorie **Überprüfung der Maßnahmenumsetzung** aus.

In diesem Abschnitt möchten wir folgende Fragen beantworten:

- Welche Bedrohungen gibt es?
- Welche Maßnahmen möchten wir umsetzen?
- Wie hoch ist die Wahrscheinlichkeit des Auftretens?

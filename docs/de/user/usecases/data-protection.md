---
title: Anwendungsfall Datenschutz
description: Anwendungsfall für Datenschutz erstellen / Anwendungsfall für die Datenschutz-Grundverordnung
icon: :bootstrap-data-protection:
lang: de
---

# :bootstrap-data-protection: Anwendungsfall Datenschutz

Das Add-on **Datenschutz** finden Sie in der Navigation unter **Bestandsaufnahme**.

Die Klassen des Add-ons finden Sie unter "Finder → Datenschutz". Dies ist eine Sammlung, die alle Klassen enthält, die für eine DSGVO-konforme Dokumentation erforderlich sind.

Das Add-on **Datenschutz** bietet zwei wichtige Bereiche: die **Verarbeitungsaktivitäten** (Datenverarbeitung von Informationen) und die **Implementierten Maßnahmen** (implementierte Maßnahmen TOMS).

Beginnen wir mit der Übersicht über das Add-on. Im Wesentlichen unterscheiden wir zwischen zwei Organisationseinheiten, die zur Durchführung der DSGVO-Dokumentation verwendet werden können. Die eine ist die **Organisation** und die andere die **Informationssicherheitsdomäne**. **Organisation** sind in der Regel das gesamte Unternehmen oder mehrere Unternehmen, für die Sie die Informationssicherheit dokumentieren möchten, während **Informationssicherheitsdomänen** Untereinheiten sind, z. B. wenn Sie unterschiedliche Anforderungen an die Informationssicherheit haben, die in verschiedene Abteilungen wie "Verwaltung" und "Produktion" unterteilt sind, möchten Sie hier unterschiedliche Dokumentationen erstellen.

## Verarbeitungsaktivitäten

In diesem Abschnitt sollen alle notwendigen Informationen zu allen Verarbeitungsaktivitäten dokumentiert werden. Hier erstellen wir ein Objekt der Klasse **Process** und füllen die Kategorien **Verarbeitete Daten**, **Verarbeitungszweck und -verwaltung** und gegebenenfalls die **Externe Verarbeiter** aus.

In diesem Abschnitt möchten wir folgende Fragen beantworten:

- Warum benötigen wir diesen Prozess?
- Welche Daten sind enthalten?
- Wessen Daten haben wir verwendet?
- Wer hat Zugriff auf diese Daten?
- Wurde eine Datenverarbeitungsvereinbarung unterzeichnet?

Zunächst müssen wir einen neuen Eintrag für **Verarbeitungsaktivitäten** erstellen. In der geöffneten Maske müssen wir ein Objekt der Klasse **Prozess** mit dem Namen "Newsletter" erstellen. Nach der Erstellung verknüpfen Sie das Objekt und schließen Sie die Erstellung des Eintrags ab. Dieses Objekt ist nun mit der **Verarbeitungsaktivität** verknüpft. Im nächsten Schritt öffnen Sie die **Aktionen** über die Schaltfläche vor "Newsletter", wo Sie **Details zu** dem dokumentierten Objekt sehen können. **Verarbeitete Daten** legen fest, welche Informationen verarbeitet werden. **Verarbeitungszweck** und Verwaltungsdokumente dokumentieren, warum diese Daten erhoben werden. **Externe Verarbeiter** dokumentieren die Übermittlung von Daten an externe Parteien.

### Processed data category

A new entry is created in the **Processed Data** category. There we specify what is being processed, for example `Sending emails`. Next, under **Data categories**, we enter the category of data to be processed, for example `Email addresses`. Also `First name` and `Last name`.
These are examples of **Data categories**; a scope can also be used here, for example `General data`.
We have now specified what is being processed. Under **Affected persons**, we now specify by whom the data is processed, for example by `Customers`.

Next, we document who can view this data in the **Organization** or **Information Security Domain**, for example a group of people called `Team Marketing`.
Now we define the **Legal basis** on which the data is processed, reasons must be given as to why personal data is processed.
There are predefined **Legal basis**, in this example we have a contract that states that we are allowed to send emails and we have also received consent via the website.
Further information can be stored under **Legal basis description**.

Next, **Is the data collected directly from the data subject?** asks where the data was obtained from, for example from a `Partner` or was this data collected by us. In our case, we received the data directly from the customer.
If the data was not collected by the customer, it must be explained under **Data origin** where the data comes from.
The last point **Transfer to third countries or international organizations** refers to whether the data is transferred to non-EU countries or to external parties, and where the data is transferred to is documented here.

### Verarbeitungszweck und Verwaltungskategorie

Der Grund wird in der Kategorie **Verarbeitungszweck und Verwaltung** dokumentiert, zum Beispiel **Ich möchte meinen Kunden regelmäßig einen Newsletter zusenden**.

Unter **Löschstrategie** wird dokumentiert, ob die verarbeiteten Daten auch gelöscht werden. Zum Beispiel **Wenn ein Kunde kündigt, wird die E-Mail-Adresse nach 2 Jahren gelöscht**.

Es ist wichtig zu dokumentieren, wann Daten gelöscht werden, wenn sie nicht mehr verwendet werden.

Unter "Schutzbedürfnis Vertraulichkeit" wird dokumentiert, wie wichtig es ist, dass die Daten vertraulich behandelt werden. Wir würden E-Mail-Adressen als "Normal" deklarieren, da E-Mail-Adressen beispielsweise keine besonders sensiblen Daten sind.

Unter "Schutzbedürfnis Verfügbarkeit" dokumentieren wir, wie wichtig die Verfügbarkeit der Daten ist. Für E-Mail-Adressen würden wir "Normal" deklarieren, da die Adressen nur für den Versand des Newsletters wichtig sind.

**Schutzbedürfnis Integrität** dokumentiert, wie wichtig die Richtigkeit der Daten ist. Auch für E-Mail-Adressen würden wir "Normal" angeben, da die E-Mail bei falschen Daten nicht zugestellt werden kann.

### Kategorie "Externe Prozessoren"

Ein **Externer Prozessor** kann eine **Organisation** sein, es gibt auch eine zusätzliche Klasse für den Link. Wir erstellen einen **Externen Datenprozessor**, zum Beispiel einen Dienst, der den Newsletter für uns versendet. Wir nennen diesen Dienst beispielsweise **Ext Pro** und es handelt sich um einen SaaS-Dienst, der die E-Mails versendet und Kampagnen verwaltet. In dem nun erstellten Objekt wird in der Kategorie unter **Datenverarbeitungsvereinbarung** eine Datenverarbeitungsvereinbarung ausgewählt und verknüpft.

## Implementierte Maßnahmen (TOMs)

In diesem Abschnitt sollen alle notwendigen Informationen zu den implementierten Maßnahmen dokumentiert werden. Hier erstellen wir Objekte der Klasse **Bedrohung** und **Maßnahme (TOM)** und füllen die Kategorie **Sicherheitsmaßnahme** aus.

In diesem Abschnitt möchten wir folgende Fragen beantworten:

- Welche Bedrohungen gibt es?
- Welche Maßnahmen möchten wir implementieren?
- Wie hoch ist die Wahrscheinlichkeit des Auftretens?

Zunächst müssen wir einen neuen Eintrag für **Implementierte Maßnahmen (TOMs)** erstellen. In der geöffneten Maske müssen wir ein neues Objekt der Klasse **Maßnahme** mit dem Namen "Gebäudeversicherung" erstellen. Wir tun dies, weil wir Risiken verwalten möchten. Wir bewerten, welche Risiken/Bedrohungen wir haben, z. B. "Feuer", und welche Maßnahmen wir dagegen ergreifen, z. B. eine "Gebäudeversicherung". Beim Erstellen des Eintrags "Implementierte Maßnahmen (TOMs)" können wir auch das "Implementierungsdatum" angeben, z. B. wann wir die "Gebäudeversicherung" abgeschlossen haben. Außerdem geben wir den "Implementierungsstatus" ein, z. B. "Implementiert".

Darüber hinaus kann unter **"Implementierung durch"** eine verantwortliche Person dokumentiert werden. Wenn die Person noch nicht dokumentiert ist, können Sie ein neues Objekt der Klasse **"Person"** erstellen.

In den Aktionsdetails können wir zu allen Kategorien springen und die erforderlichen Daten dokumentieren.

### Risikomanagement

Die Kategorie **Risikomanagement** befindet sich in der Objektklasse **Informationssicherheit** oder **Organisation**. Hier erstellen und ordnen wir Objekte der Klasse **Bedrohung** zu, wie z. B. "Feuer". "Feuer" ist eine **Bedrohung**, die wir

über die **Maßnahmen zur Gewährleistung eines angemessenen Schutzes (Artikel 32 EU-DSGVO)** der "Gebäudeversicherung" zuordnen. Das Risiko wird hier mit "Normal", "Hoch" und "Sehr hoch" bewertet. "Sehr hoch" ist in unserer Region kein so großes Risiko, daher würde ich es als "Normal" einstufen. In den **Sicherheitszielen** definiere ich, was betroffen ist, wenn mein Gebäude abbrennt, das ist sicherlich die "Verfügbarkeit", die Vertraulichkeit ist nicht betroffen, die Integrität der Daten ist nicht betroffen, Unverknüpfbarkeit, Eingriffsfreiheit und Transparenz sind in diesem Fall ebenfalls nicht betroffen, es geht eigentlich nur um die "Verfügbarkeit".

### Sicherheitsmaßnahme

Die Kategorie **Sicherheitsmaßnahme** befindet sich in der Klasse **Maßnahme (TOM)**. Hier können wir das Attribut **Kategorie** dokumentieren, das für "Gebäudeversicherung" "Versicherung" wäre. Außerdem können wir **Implementierungsdetails** und **Gründe** für diese **Maßnahme (TOM)** angeben. Hier können Sie weitere **Implementierungsdetails** dazu angeben, wie die Maßnahme durchgeführt werden soll. Mit wem Sie das Gebäude versichert haben, welche Vorgaben Sie für Ihre individuellen Maßnahmen am Standort haben und auch den Grund, warum Sie die Maßnahme durchführen.

### Status der Maßnahmenumsetzung

Die Kategorie "Status der Maßnahmenumsetzung" befindet sich in der Objektklasse "Informationssicherheitsdomäne" oder "Organisation" und kann mehrere Einträge enthalten. Hier dokumentieren Sie Informationen zum Status der Umsetzung der Maßnahme.

Zum Beispiel, wie der aktuelle Status der Umsetzung ist, wann die Maßnahme umgesetzt wurde oder wird und von wem.

### Überprüfung der Maßnahme

Die Kategorie **Überprüfung der Maßnahme** befindet sich in der Objektklasse **Informationssicherheit** oder **Organisation** und kann mehrere Einträge haben. Hier dokumentieren Sie Informationen darüber, wann die Umsetzung überprüft wurde.

Wir tragen das **Überprüfungsdatum**, den Namen der Person, die die Überprüfung durchgeführt hat, und das Ergebnis der Überprüfung ein.

## Exportieren oder Vorschau des Datenschutzprotokolls

Sie öffnen das Add-on über das Menü "Inventar → Datenschutz" und klicken auf die Schaltfläche "PDF exportieren" oder "Vorschau".

Die Schaltfläche "Vorschau" öffnet die PDF-Vorschau in i-doit up und die Schaltfläche "PDF exportieren" lädt die PDF-Datei herunter.

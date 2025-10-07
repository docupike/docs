---
title: API
description: Auf die i-doit up REST-API zugreifen
lang: de
---

# API

Auf die i-doit up-REST-API zugreifen

## Format

i-doit up verfügt über eine RESTful-API, die dem [OpenAPI `v3`-Standard](https://www.openapis.org/) entspricht. HTTP-Anfragen müssen den HTTP-Header `Content-Type: application/json` enthalten.

## Versionierung und Support

Die API hat eine eigene Versionierung, beginnend mit Version `2`. Bei größeren Releases mit grundlegenden Änderungen wird die Versionsnummer erhöht. Die vorherige Version wird zugunsten der neuen Version veraltet und in einem späteren Major Release entfernt.

## Authentifizierung

Die meisten API-Anfragen erfordern ein authentifiziertes Benutzerkonto. Die bevorzugte Authentifizierungsmethode ist die Verwendung eines API-Tokens. Jeder API-Token ist mit einem Benutzerkonto verknüpft. Daher verfügt er über dieselben [Rechte und Berechtigungen](../admin/rights-and-permissions.md) wie das Benutzerkonto. Jedes Benutzerkonto kann mehrere API-Tokens gleichzeitig haben. Sie können API-Tokens in der Web-Benutzeroberfläche unter `Einstellungen > Benutzer > <Benutzer> > Apps` verwalten.

## Automatisch generierte Referenz

Jede i-doit up-Instanz wird mit einer integrierten Referenz ausgeliefert. Aus Sicherheitsgründen müssen Sie authentifiziert sein, um darauf zugreifen zu können. Die Referenz ist in zwei Formaten verfügbar:

=== "HTML"
    `https://<Ihre_Subdomain>.docupike.cloud/api/v2/docs.html`

=== "JSON"
    `https://<Ihre_Subdomain>.docupike.cloud/api/v2/docs.json`

=== "YAML"
    `https://<Ihre_Subdomain>.docupike.cloud/api/v2/docs.yaml`

Die Referenz wird automatisch generiert und ist immer auf dem neuesten Stand.

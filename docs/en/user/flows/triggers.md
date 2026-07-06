---
title: Trigger use cases
description: Example use cases for every Flows trigger, with screenshots
lang: en
---

# Trigger use cases

A flow can be started by a **Button**, a **Time-based** schedule, an **Object event**, or a
**Category event**. Each example below shows a realistic scenario and the matching configuration. See
[Triggers, conditions, and actions](reference.md) for the full reference.

## Button: create a notebook from a person object

**Scenario:** during onboarding, the IT team wants to create a new notebook from a person object with a
single click.

- Choose the **Button** trigger and set **Button name** to "Issue notebook".
- Optionally assign a button group ("IT onboarding") and an icon.
- Under **Where the button appears**, choose the visibility: all objects, selected object classes, or selected objects — and optionally limit it to specific category views.

[![The Button trigger with name, icon, groups, and placement options](../../img/screenshots/flows/trigger-button.png)](../../img/screenshots/flows/trigger-button.png)
**Button trigger:** name, icon, groups, and placement and visibility options.

## Time-based: a weekly maintenance report

**Scenario:** every Monday at 08:00, an automatic reminder should reach the service desk.

- Choose the **Time-based** trigger and set the **Date of first execution** and **Time of execution**.
- Enable **Repeats every** with interval **1** and unit **Week**; for weeks, a weekday picker appears.
- For a one-off run, keep **Don't repeat** instead.

[![The Time-based trigger with date, time, and repeat settings](../../img/screenshots/flows/trigger-time.png)](../../img/screenshots/flows/trigger-time.png)
**Time-based trigger:** date and time with an optional repeat (day, week, month, or year).

## Object event: report every new object to another system

**Scenario:** whenever an object is created anywhere, an external compliance system should be notified.

- Choose the **Object event** trigger and select the **Created** event (others: updated, deleted, archived, restored).
- Under **Add event to**, set the scope: all objects, selected object classes, or selected objects (the last option is not offered for **Created**).

[![The Object event trigger with event type and object scope](../../img/screenshots/flows/trigger-object.png)](../../img/screenshots/flows/trigger-object.png)
**Object event trigger:** the event type and the affected object scope.

## Category event: react to changes in a specific category

**Scenario:** when an entry in the network category is created or updated, a follow-up step should run.

- Choose the **Category event** trigger and select the events (created, updated, deleted) under **Run when a category entry is…**.
- Limit **Categories** (empty means any category); then add individual **Attributes** as a condition (for created and updated events).

[![The Category event trigger with events and category or attribute scope](../../img/screenshots/flows/trigger-category.png)](../../img/screenshots/flows/trigger-category.png)
**Category event trigger:** events and the category or attribute scope.

!!! warning
    Avoid self-triggering loops. An event flow that creates or updates objects produces new events. The
    add-on ignores the change it made, but you should still narrow event flows with conditions.

## Further readings

- [Condition use cases](conditions.md)
- [Action use cases](actions.md)
- [End-to-end example](end-to-end.md)

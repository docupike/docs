---
title: Triggers, conditions, and actions
description: Reference of every Flows building block with a short description
lang: en
render_macros: false
---

# Triggers, conditions, and actions

The tables below list every available trigger, condition, and action with a short description. Detailed use
cases with screenshots follow in [Trigger use cases](triggers.md), [Condition use cases](conditions.md), and
[Action use cases](actions.md).

## Triggers

A flow has exactly one trigger; it determines _when_ the flow starts.

| Trigger | Description |
| --- | --- |
| **Button** | Adds a button to object detail views; the flow starts on click. Visibility can be limited to all objects, selected object classes, or selected objects (and to category views). |
| **Time-based** | Starts at a set date and time — once or repeating (every N days, weeks, months, or years; a weekday picker appears for weeks). |
| **Object event** | Starts on object events: created, updated, deleted, archived, or restored. Can be limited to object classes or selected objects. |
| **Category event** | Starts when a category entry is created, updated, or deleted. Can be limited to selected categories and attributes. |

## Conditions

Conditions are optional. Several can be combined, and they must _all_ be met, otherwise the run is skipped.

| Condition | Description |
| --- | --- |
| **Object-based** | Runs only when the trigger object matches the visual filter (several filters joined with _And_). |
| **Time-based** | Runs only inside the defined time windows (weekdays plus a from/to range; several windows possible). |
| **User / user group** | Runs only when triggered by selected users or members of selected user groups. |

## Actions

A flow has at least one action; several actions run in order, top to bottom.

| Action | Description |
| --- | --- |
| **Create object** | Creates a new object of the chosen class; the title can use placeholders and attributes are set through the attribute picker. |
| **Update object** | Sets attributes on the trigger object or on selected objects. A multi-value category gains a new entry per run. |
| **Rank object** | Changes the lifecycle state of an object (normal, archived, deleted). |
| **Send e-mail** | Sends an e-mail (Markdown body with preview) to one or more recipients. SMTP is configured server-side. |
| **Call API** | Sends an HTTP request (GET, POST, PUT, PATCH, DELETE) to an external API; the body can use placeholders, optionally routed through a proxy. |

## Placeholders

Several action fields accept `{{ … }}` placeholders that are replaced with live values when the flow runs.
The **Insert variable** control below each field inserts them at the cursor.

| Placeholder | Meaning |
| --- | --- |
| `{{object-name}}` | Name of the triggering object |
| `{{object-id}}` | ID of that object |
| `{{object-link}}` | Direct link to the object overview |
| `{{users-name}}` | First and last name of the triggering user |
| `{{users-e-mail}}` | E-mail address of that user |
| `{{counter}}` | An automatically increasing number, unique on each use |
| `{{date}}` | The date the flow runs |
| `{{time}}` | The time the flow runs |
| `{{date-time}}` | The date and time the flow runs |

Placeholders are available in the object title of a **Create object** action, in text values of an
**Update object** action, in the subject and body of a **Send e-mail** action, and in the body of a
**Call API** action.

## Further readings

- [Flows overview](index.md)
- [Trigger use cases](triggers.md)
- [Action use cases](actions.md)

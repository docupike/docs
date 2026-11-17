# Flows add-on

The Flows add-on automates repetitive tasks in i-doit up with triggers, conditions, and actions.
This page describes how the add-on works, where it appears in i-doit up, and what to check when something does not work.
For the user view, see [Flows](../user/flows.md).

!!! info
    Available as of i-doit up 3.3.0.

## How the add-on works

Flows is an external i-doit up add-on with the vendor `i-doit` and the ID `flows`.
It runs as a separate service with its own PostgreSQL database.
The database holds the flows, flow groups, logs, history, and the encrypted connection to i-doit up.

- i-doit up loads the user interface of the add-on under `/a/i-doit/flows/`.
- For event triggers, the add-on registers webhooks in i-doit up.
  i-doit up signs every notification, and the add-on rejects notifications with a wrong signature.
  There is nothing to configure.
- The actions of a flow call the i-doit up API as the [Flow Operator](flows/rights.md#flow-users) of the flow.
- The add-on sends e-mails with a mail server that is configured on the add-on service, not in i-doit up.

How to run and register the add-on yourself is described in [Run Flows yourself](flows/self-hosting.md).

## Where Flows appears in i-doit up

After the add-on is registered:

- **Flows** appears in the navigation under **Add-ons**.
- **Flow users** appears in the settings, in the group **Flows**.
- The rights **Manage Flows** and **Select Flow Operator** appear in the add-on rights.
- The **Flows** widget appears on objects for flows with a button trigger.

The names of the menu entries and rights are English, also on a German user interface.
The add-on itself follows the i-doit up language.

## Before users start

1. Grant the right **Manage Flows** to the users who build flows.
   This also applies to the admin role: after the registration, an administrator grants it under **Settings → User management → Rights**, *Add-on rights → Flows*.
2. Give the default flow user the access it needs.
   The first time an administrator with the right **Select Flow Operator** opens Flows, a dialog offers to do this.
3. Optionally add more flow users and grant **Select Flow Operator**.

All three steps are described in [Rights and flow users](flows/rights.md).

## Troubleshooting

**The Flows widget does not appear on objects**

Check that the flow is active or in test mode and has a button trigger that applies to the object.
Check that the widgets panel of the object view is shown.
If the widget is still missing, register the add-on again with `--force`, see [Run Flows yourself](flows/self-hosting.md#update-and-re-register).
This is needed after an upgrade of i-doit up.

**Flows with actions on objects do nothing or fail**

The Flow Operator needs access to the objects, classes, and categories the flow works with.
Check the rights of the default flow user, see [Rights and flow users](flows/rights.md#default-flow-user).

**Flows with a user / user group condition are always skipped**

Only button triggers have a triggering user.
For time-based and event triggers, this condition skips the run.

## Further readings

-   [Rights and flow users](flows/rights.md)
-   [Run Flows yourself](flows/self-hosting.md)
-   [Flows](../user/flows.md)
-   [Add-ons](addons.md)

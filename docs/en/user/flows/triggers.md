# Triggers

The trigger decides when a flow starts.
Every flow has exactly one trigger.
This page describes the four trigger types and how buttons appear on objects.

!!! info
    Available as of i-doit up 3.3.0.

## Trigger types

| Trigger | The flow starts when … |
| --- | --- |
| **Button** | a user clicks the flow's button on an object. |
| **Time-based** | the configured date and time is reached, once or repeatedly. |
| **Object event** | an object is created, updated, deleted, archived, or restored. |
| **Category event** | a category entry is created, updated, or deleted. |

To add a trigger, open the flow and click **Add trigger**.
Choose the type on the left and fill in the form on the right.

!!! example "Screenshot placeholder: flows_add_trigger_dialog.png"
    Dialog Add trigger with the four trigger types on the left and the Button form on the right.

## Button

A button trigger adds a button to objects.
A user clicks the button to run the flow for this object.

- **Button name**: the label users see.
- **Icon**: optional.
  Search by name.
  The list contains general icons and the icons of the object classes.
- **Button groups**: optional, see [Button groups](#button-groups).
- **Add button to**: where the button appears.
    - **Any object**: on every object.
    - **Only objects of selected object class**: only on objects of the selected object classes.
    - **Only selected objects**: only on the selected objects.
      Select them in **Objects** or with **Browse for objects**.
- **in**: **Any existing category** shows the button everywhere, **Only selected categories** limits it to the selected categories.
- **Show a confirmation when the button is clicked**: optional.
  When it is on, a dialog with **OK** and **Cancel** appears before the flow runs.
  In **Confirmation message (optional)** you can enter your own text.
  Without your own text, the dialog shows "Are you sure you want to execute this flow?".

For the two "Only selected" options, you must select at least one object class or object.

### The Flows widget on the object

Buttons of active flows and of flows in test mode appear in the **Flows** widget in the widgets panel of an object.
Buttons of inactive flows do not appear.

- Buttons of active flows are shown at the top.
- Buttons of flows in test mode are shown below a divider with the heading **Test flows**.
  Clicking such a button runs the flow in test mode: it shows what the flow would do, without changing data.

After the click, a message at the bottom left of the page shows the result, for example that an object was updated.

If the widgets panel is hidden, show it with the widgets toggle of the object view.
If the **Flows** widget does not appear at all, ask your administrator, see [Flows add-on](../../admin/flows.md#troubleshooting).

A button can also be disabled or hidden because of a condition of the flow, see [Conditions](conditions.md#conditions-and-buttons).

!!! example "Screenshot placeholder: flows_widget_buttons.png"
    Object view with the Flows widget, buttons of active flows, a button group, and the Test flows section.

!!! example "Screenshot placeholder: flows_button_confirmation.png"
    Confirmation dialog with OK and Cancel after clicking a button.

### Button groups

A button can belong to one or more button groups.
Select existing groups or enter a new name and click **Add**.

When two or more buttons share a group, the **Flows** widget shows them as one button with the group name:

- Clicking the group button runs all flows of the group.
- Clicking the arrow on the group button shows the single buttons.
  Clicking one of them runs only this flow.

**Group icon** sets the icon of the group button.
The group icon applies to the whole group: when you change or clear it for one button, it changes for all buttons of the group.
Without a group icon, the group button shows a play icon.

## Time-based

A time-based trigger starts the flow on a schedule.

- **Date of first execution** and **Time of execution**: when the flow runs first.
- **Don't repeat**: the flow runs once.
- **Repeats every**: the flow repeats every *n* days, weeks, months, or years.
  For weeks, **Repeat on** selects the weekdays.

## Object event

An object event trigger starts the flow when an object changes anywhere in i-doit up.
Choose the event: **Created**, **Updated**, **Deleted**, **Archived**, or **Restored**.
The object of the event is the object the flow acts on.

Under **Add event to**, choose which objects the trigger listens to:

- **Any object**
- **Only objects of selected object class**
- **Only selected objects**.
  This option is not available for **Created**, because the object does not exist yet.

## Category event

A category event trigger starts the flow when a category entry of an object is created, updated, or deleted.

1. Under **Run when a category entry is…**, select one or more events.
2. Optionally, select **Categories**.
   Without a selection, the trigger applies to all categories.
   **All categories** selects every category at once.
3. Optionally, select **Attributes**.
   The flow then only starts when one of these attributes changed.
   This field is available after you selected at least one category.
   It does not apply to deleted entries.

!!! warning "Avoid loops"
    A flow that creates or updates objects on an object or category event causes new events itself.
    The add-on ignores the change it just made, so a flow does not trigger itself again and again.
    Still, plan such flows carefully and use [conditions](conditions.md) so that they only act when they should.

## Who triggered the flow

The logs show who triggered a run:

- **Button**: the user who clicked the button.
- **Time-based**, **Object event**, and **Category event**: no user ("-").

This matters for the condition **User / user group**, see [Conditions](conditions.md).

## Further readings

-   [Conditions](conditions.md)
-   [Actions and placeholders](actions.md)
-   [Logs and history](logs-history.md)

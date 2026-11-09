# Conditions

Conditions limit when a flow runs.
They are optional.
This page describes the three condition types and how conditions affect buttons on objects.

!!! info
    Available as of i-doit up 3.3.0.

## How conditions work

All conditions of a flow must be met.
If one is not met, the run is skipped.
The logs show the skipped run with the reason, see [Logs and history](logs-history.md).

To add a condition, open the flow and click **Add condition**.

!!! example "Screenshot placeholder: flows_add_condition_dialog.png"
    Dialog Add condition with the three condition types on the left and the Time-based form on the right.

## Condition types

**Object-based**

The flow only runs when the trigger object matches the rules you build under **Restrict to objects matching:**, for example a certain CMDB status.
i-doit up checks the rules against the trigger object.

**Time-based**

The flow only runs when it is triggered within one of the time windows.
For each window, select weekdays and a time range with **From (HH:mm)** and **To (HH:mm)**.
Without selected weekdays, the window applies to every day.
**+ Add time window** adds another window.

**User / user group**

The flow only runs when it is triggered by one of the selected users or by a member of one of the selected user groups.

Only a button trigger has a triggering user.
For time-based, object event, and category event triggers, this condition has no user to check, so the run is skipped.

## Conditions and buttons

For flows with a button trigger, conditions also affect the button on the object:

- **User / user group**: users that the condition never allows do not see the button.
- **Object-based** and **Time-based**: the button is visible but disabled while the condition is not met.
  A tooltip explains why, for example "Time based condition is not met to run this flow.".

When the button is clicked, all conditions are checked again.

## Further readings

-   [Triggers](triggers.md)
-   [Actions and placeholders](actions.md)

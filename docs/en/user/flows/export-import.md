# Export and import

You can export flows to a JSON file and import them again, for example to move flows to another i-doit up instance or to keep a backup.
This page describes both steps.

!!! info
    Available as of i-doit up 3.3.0.

## Export flows

1. In the overview, select the flows with the check boxes.
2. Click **Export**.

i-doit up downloads the selected flows as a JSON file.

## Import flows

1. In the overview, click **Import**.
2. Select a JSON file that was exported from Flows.

Imported flows:

- are **Inactive**, so you can check them before you activate them,
- run as the **Default flow user**, because the Flow Operator of the source instance is not imported,
- appear in the [History](logs-history.md#history) as **Imported**.

A message at the bottom left shows the result.
For several flows, it shows the progress and then how many flows were imported.
**View details** lists every flow with **Open**, and failed flows with **Retry**.

## Further readings

-   [Flows](../flows.md)
-   [Create and edit flows](create.md#flow-operator)

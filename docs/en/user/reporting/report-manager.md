# Report Manager

The **Report Manager** is the central place to save, browse, and run object reports.
A report is a stored combination of a filter (which objects to include) and a column set (what to show about them), so the same question can be re-asked any time without rebuilding the filter.

Open it from **Reporting > Report Manager** in the top navigation.

## What you can answer

A report typically answers questions like *Which IT assets were purchased last quarter?* or *How many laptops are currently in repair?*
The first time you open the page a Quick tour walks you through the concept in two steps.

## Layout

The page is a single table inside a card titled **Reports** with the columns:

| Column | Notes |
|---|---|
| (checkbox) | Selects rows for the **Delete** bulk action. |
| **Actions** | Per-row actions including opening the report. |
| **Title** | Report name. Click the column header to sort. |
| **Last modified by** | User who last changed the report. |
| **Last modified date** | Timestamp of the last change. |

Above the table:

- **Add +** opens the report builder.
- **Delete** removes the rows selected via the checkboxes.

## Create a report

1. Click **Add +**.
2. Pick the attributes you want to **filter by**.
    You can use any attribute from any category as a filter; an object qualifies for the report if it matches every filter you set.
3. Pick the attributes you want to **show as columns**.
    This works the same way as [Preset configuration](../finder/preset-configuration.md).
4. Give the report a name and save.

The new report appears in the list and can be opened, edited, or duplicated.

## Run a report

Click the report's title (or the row's open action) to run it.
The report shows the matching objects in a table that you can filter, sort, export, and use as the basis for further searches.

## Delete a report

Tick the rows you want to remove and click **Delete** above the table.
Confirm the prompt to remove the saved report.
Deleting a report does not delete any of the objects inside it.

## Further readings

- [Preset configuration](../finder/preset-configuration.md)
- [Save search](../finder/saved-views.md)

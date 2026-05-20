# Bulk actions

The **Edit ⌄** dropdown above the Finder table is the entry point for actions that apply to many objects at once.
The dropdown is disabled until at least one row is selected, pick rows with the column-header checkbox or by ticking individual rows.

## Open the menu

1. Search or filter so only the rows you care about are visible (optional).
2. Tick the checkbox in the table header to select all visible rows, or tick individual row checkboxes.
3. Click the small **⌄** caret next to the **Edit** button.

## Menu structure

The menu is split into two groups.

### Edit

| Action | Notes |
|---|---|
| **Edit (n)** | Opens the multi-edit form on the selected objects. |
| **Duplicate** | Creates a copy of every selected object. The copy carries the original name plus a numeric suffix. |
| **Change class (n)** | Reassigns every selected object to a different class. A confirmation dialog warns about possible attribute loss. |

### Change state

| Action | Notes |
|---|---|
| **Restore (n)** | Returns archived objects to *active* state. Disabled if your selection has no archived objects. |
| **Archive (n)** | Marks the selected objects as *archived*: they stay searchable but are visually distinguished. |
| **Delete (n)** | Permanently flags the selected objects for deletion. Opens the confirmation modal described below. |

The number in parentheses always reflects how many of the selected objects the action will affect.

## Delete confirmation

Choosing **Delete (n)** opens a modal:

> **Delete object?**
> *You're about to change the state to delete.*
> *Are you sure you want to delete {n} objects?*

The modal has:

- A **Don't show again** checkbox (per-user preference).
- A **Cancel** button (closes the modal).
- A **Yes, delete** primary button.

After confirmation a toast appears in the bottom-left corner, *N objects were deleted*: and the table refreshes without the deleted rows.

## Tips

- A row stays selected even if you change pagination; the selection counter at the bottom (*N of M objects are selected*) shows the running total.
- Click **Deselect** (next to the selection counter) to clear all selections at once.
- The same actions are available from individual object detail pages by clicking the caret next to the **Edit** button in the header.

## Further readings

- [Object details page](../basics/object-details.md)
- [Filter the Finder](set-filter.md)

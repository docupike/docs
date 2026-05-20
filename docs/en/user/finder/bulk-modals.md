# Bulk-action modals

When you trigger a bulk action from the **Edit ⌄** dropdown above the Finder table (see [Bulk actions](bulk-actions.md)), the dropdown items that change data open a follow-up modal so you can confirm or refine the change.
This page describes each modal.

## Multi-edit modal, *Edit (n)*

Triggered by **Edit (n)** in the dropdown.

The modal lists the attributes that exist on **every** selected object, attributes that are class-specific are filtered out automatically.
For each attribute, you choose one of three actions:

- **Leave unchanged**: default; the attribute keeps its current per-object value.
- **Set value**: type a new value once; it is applied to every selected object.
- **Clear value**: empties the attribute on every selected object.

A summary banner at the top counts the affected objects.
Click **Save** to apply; click **Cancel** to leave without changing anything.

## Duplicate

Triggered by **Duplicate** in the dropdown.

The modal asks for a **Name suffix** that is appended to every copy.
The default suffix is *(copy)*; for multiple copies a numeric counter (`(copy 1)`, `(copy 2)`, …) is appended automatically.

Each copy carries:

- every attribute value from the original;
- a fresh **Object ID**;
- *Active* lifecycle state (the copy is never archived/deleted on creation).

References from other objects are not copied, the duplicate is a stand-alone object.

## Change class, *Change class (n)*

Triggered by **Change class (n)** in the dropdown.

The modal asks for the **Target class** in a single combobox.
A warning notes that:

- Categories that exist on the source class but not on the target class lose their data.
- Categories that exist on the target class but not on the source class start empty.
- Object IDs and history are preserved.

Click **Yes, change class** to apply.

## Delete confirmation, *Delete (n)*

Triggered by **Delete (n)** in the dropdown.
See [Bulk actions](bulk-actions.md) for the full description.
The dialog title is *Delete object?* and the body reads *You're about to change the state to delete. Are you sure you want to delete N objects?* with the confirm button **Yes, delete**.

## Toast feedback

Every successful bulk action surfaces a toast in the bottom-left corner:

- *N objects were edited.*
- *N objects were duplicated.*
- *N objects were moved to class X.*
- *N objects were deleted.*

See [Notifications](../basics/notifications.md) for the toast catalog.

## Further readings

- [Bulk actions](bulk-actions.md)
- [Notifications](../basics/notifications.md)
- [Object details page](../basics/object-details.md)

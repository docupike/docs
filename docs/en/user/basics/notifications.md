# Notifications

i-doit up shows two kinds of notifications: short **toast** messages that appear in the bottom-left corner after actions, and the **History** feed that records changes per object and per tenant.

This page covers toasts.
For the History feed see the *History* section in [Top bar reference](top-bar.md) and [Object Tools](object-tools.md).

## Toast anatomy

Every toast appears in the **bottom-left** corner of the page.
A toast has:

- a colored icon, usually a green check mark for success, a red triangle for errors;
- a **headline** in bold;
- an optional **body** with details;
- optional **action buttons** that perform a follow-up action;
- a **×** close button to dismiss it.

Toasts auto-dismiss after a few seconds; click the **×** to dismiss earlier.

## Catalogue

The most common toasts you will see, with the action that triggers them.

### Object created

| Triggered by | Headline | Body |
|---|---|---|
| **New object +** in any Finder-style table | *New object has been created.* | *A new object has been created successfully.* |

The toast carries two follow-up buttons:

- **Filter**: applies a temporary filter to show only the just-created object(s).
- **Open**: navigates straight to the object's detail page. (Only shown when one object was created.)

### Objects deleted

| Triggered by | Headline |
|---|---|
| **Edit ▸ Delete (n)** in the Finder | *N objects were deleted.* |

The body is empty; the toast disappears automatically.

### Entry created

| Triggered by | Headline |
|---|---|
| Saving a new entry in a multi-value category, for example *Network definition* on a Network object, or a new IP address on the IP addresses tab | *Entry created* |

### IP address assigned

| Triggered by | Headline | Body |
|---|---|---|
| Saving the *Edit IP address* dialog with an Object and a Configuration | *IP address {address} assigned successfully* | *IP address {address} was assigned to object {object name} successfully* |

### Validation error in a modal

| Triggered by | Banner |
|---|---|
| Saving a modal with required fields blank | *An error occurred, please check the marked fields* |

This message is shown as a red banner inside the modal rather than as a bottom-left toast.

## Behavior notes

- Multiple toasts stack vertically; older ones fade out first.
- Action buttons inside a toast remain clickable until the toast is dismissed or auto-fades.
- Errors and warnings stay on screen until you dismiss them with the **×**.

## Further readings

- [Top bar reference](top-bar.md), global History feed.
- [Object Tools](object-tools.md), per-object History.
- [Bulk actions](../finder/bulk-actions.md)
- [Create an object](create-object.md)

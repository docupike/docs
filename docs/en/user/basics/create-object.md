# Create an object

Use **New object +** in the Finder header to add objects to your CMDB.
A single dialog lets you create one object or several objects of the same class at once.

## Rights

To create an object you need write access to the object's class.
See [Rights and permissions](../../admin/rights-and-permissions.md).

## Open the dialog

In the Finder, click **New object +** above the object table.
The **Create new object** dialog opens.

## Fields

| Field | Required | Notes |
|---|---|---|
| **Name** | yes | Free text. The dialog placeholder is `Type an object name`. When you create more than one object at once, every new object receives the same name and is post-fixed automatically. |
| **Class** | yes | Combobox of available classes. If you opened **New object +** while a class filter was active in the Finder, the matching class is preselected; otherwise pick one from the dropdown. |
| **Number of objects** | yes | Default `1`. The dialog enforces an upper limit shown in the hint below the field. |

The **Save** button stays disabled until all required fields are filled.

## Save

Click **Save** to create the object or objects.
A success notification appears in the bottom-left corner:

> *New object has been created., A new object has been created successfully.*

The notification has two action buttons:

- **Filter**: applies a temporary filter so only the just-created object(s) remain in the Finder list.
- **Open**: opens the object's [details page](object-details.md) directly.
  When you create more than one object at once, **Open** is hidden because there is no single object to navigate to.

The new object is added to the Finder list under its class.

## Cancel

Click **Cancel** or the **`×`** in the dialog's top-right corner to close the dialog without saving.

## Further readings

- [Object details page](object-details.md)
- [Classes](classes.md)
- [Categories and attributes](categories-and-attributes.md)

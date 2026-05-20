# Manage classes and collections

Administrators configure the CMDB structure by opening **Settings** from the user menu (top right) and going to the **CMDB Configuration** section, which contains **Collections**, **Classes**, and **Categories**.
This page covers day-to-day management actions on existing classes, collections, and categories, deleting them, removing assignments between them, and changing the class icon.
For creating new structures, see [Create custom classes](custom-classes.md) and [Creating custom categories](custom-categories.md).
For the conceptual introduction, see [Classes](../user/basics/classes.md) and [Collections](../user/basics/collections.md).

## Rights

To manage classes, collections, and categories you need the corresponding administration rights.
Open **Settings** from the user menu and go to **User management > Rights** to configure them.
See [Rights and permissions](rights-and-permissions.md).

## Class management

Go to **Settings > CMDB Configuration > Classes** (user menu → Settings → Classes) to open the class list.

The list groups classes into three sections:

- **All classes**: every class in the instance.
- **Classes not assigned to any collection**: classes that no collection currently includes.
- **Classes assigned to a collection**: classes that appear in at least one collection.

Each class item shows tags with the names of the collections it belongs to.

### Delete a class

1. Go to **Settings > CMDB Configuration > Classes** (user menu → Settings → Classes).
2. Hover over the class you want to delete.
3. Click the **trash bin** icon that appears on the row.

If the class is used by existing objects, a blocking dialog appears: *"The class is used in {N} objects.
Before deleting the class, please delete the objects."*
The class cannot be deleted until those objects are removed.

If the class is unused, a confirmation dialog appears.
Click **Delete** to confirm.
The class is removed and a success notification is shown.

### Remove a category from a class

1. Open the class by clicking its name in the list.
2. In the class details view, hover over the category you want to remove.
3. Click the **(X)** button that appears on the category item.

The category is removed from this class and a success notification is shown.
The category itself is not deleted, only its assignment to this class.

### Set the class icon

1. Open the class by clicking its name in the list.
2. In the class details view, **double-click** the icon field at the top.
3. Select an icon from the dropdown.

The selection is applied immediately.
The available icons are predefined.

## Collection management

Go to **Settings > CMDB Configuration > Collections** to open the collection list.

### Delete a collection

You can delete a collection either from the list view or from the collection details view.

**From the list:**

1. Hover over the collection you want to delete.
2. Click the **trash bin** icon that appears on the row.
3. Click **Delete** in the confirmation dialog.

**From the details view:**

1. Open the collection by clicking its name in the list.
2. Click the **meatballs** button (`⋮`) at the top of the collection details.
3. Select **Delete**.
4. Click **Delete** in the confirmation dialog.

The collection is deleted and a success notification is shown.

### Remove a class from a collection

1. Open the collection by clicking its name in the list.
2. In the collection details view, hover over the class you want to remove.
3. Click the **(X)** button that appears on the class item.

The class is removed from this collection.
The class itself is not deleted, only its assignment to this collection.

## Category management

Go to **Settings > CMDB Configuration > Categories** to open the category list.

Standard categories cannot be deleted.
Only custom categories can be removed.

### Delete a custom category

1. Hover over the custom category you want to delete.
2. Click the **delete** icon that appears on the row.
3. Click **Delete** in the confirmation dialog.

Standard categories show no delete button when hovered.

## Further readings

- [Create custom classes](custom-classes.md)
- [Creating custom categories](custom-categories.md)
- [Classes](../user/basics/classes.md)
- [Collections](../user/basics/collections.md)
- [Categories and attributes](../user/basics/categories-and-attributes.md)
- [Rights and permissions](rights-and-permissions.md)

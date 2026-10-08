# Create custom classes

The classes shipped with i-doit up cover most IT documentation needs.
When the standard model is missing a concept, an administrator can define a **custom class**: a new object type with its own icon, its own attached categories, and its own collection memberships.

## Rights

Creating or editing a class needs the *Manage Classes* right under *Administration*.
See [Rights and permissions](rights-and-permissions.md).

## Open the class editor

1. Open **Settings** from the user menu (top-right avatar).
2. Go to **CMDB Configuration ▸ Classes**.
3. Click **New class +** above the list.

## Class details

The **New class** form asks for:

| Field | Notes |
|---|---|
| **Name** | Required. Display name shown in the Finder class list and on every object's details page header. |
| **Collection** | One or more [collections](../user/basics/collections.md) the class belongs to. A class without a collection stays hidden and users cannot use it. |

Save to create the class.
New classes appear in the Finder as soon as they belong to at least one collection.

Then open the class from the list and complete it on the **Details** tab:

- **Icon**: pick from a predefined icon set. The icon shows next to the class name everywhere.
- **Containing categories**: click **Add category** to attach built-in or [custom categories](custom-categories.md), see [Categories and attributes](../user/basics/categories-and-attributes.md).

## Edit and delete

Open an existing class from the list to change its icon, collection memberships, or category set.
See [Manage classes and collections](class-collection-management.md) for the delete flow and the implications when objects of that class still exist.

## Further readings

- [Classes](../user/basics/classes.md)
- [Collections](../user/basics/collections.md)
- [Categories and attributes](../user/basics/categories-and-attributes.md)
- [Manage classes and collections](class-collection-management.md)
- [Creating custom categories](custom-categories.md)

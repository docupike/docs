# Creating custom categories

Custom categories let you add data to objects that the built-in model does not cover, for example *Maintenance contract details* or *Compliance attestations*.

The page describes the high-level workflow.
For the actual builder UI see [Category Builder](category-builder.md).

## Rights

Creating or editing a category needs the *Manage Categories* right under *CMDB*.
Assigning a category to a class needs *Manage Classes*.
See [Rights and permissions](rights-and-permissions.md).

## Workflow

1. Open **Settings ▸ CMDB Configuration ▸ Categories**.
2. Click **New category +** to open the [Category Builder](category-builder.md).
3. Choose a **Name** and a **Category type**: *Single value* (one set of values per object) or *Multi value* (a table of entries).
4. Add attributes.
   Each attribute has a **Name** and a **Type** (text, number, date, boolean, single-select, object reference, …).
5. Save the category.
6. Assign it to one or more [classes](../user/basics/classes.md).
   The category only shows up on objects of those classes.

## Editing a custom category

Click the category name in the list to reopen the Category Builder for it.
Most fields can be changed at any time; the category type is fixed once data has been saved against the category.

## Deleting a custom category

Custom categories can be deleted when they have no values stored.
See [Manage classes and collections](class-collection-management.md) for the bulk-delete behavior and warnings.

## Further readings

- [Category Builder](category-builder.md)
- [Categories and attributes](../user/basics/categories-and-attributes.md)
- [Manage classes and collections](class-collection-management.md)

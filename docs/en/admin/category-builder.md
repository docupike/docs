# Category Builder

The **Category Builder** lets administrators create and edit custom categories directly in the i-doit up interface, without needing a developer or command-line access.

For an introduction to categories and attributes, see [Custom categories and attributes](custom-categories.md).

## Rights

To create or edit custom categories you need:

- **Rights > CMDB > Manage Categories**: to create and edit categories.
- **Rights > CMDB > Manage Classes**: to assign categories to classes.

Open **Settings** from the user menu (top right) and go to **User management > Rights** to configure rights.

## Open the Category Builder

Open **Settings** from the user menu (top right), go to **CMDB Configuration > Categories**, and click **New category +** to open the Category Builder for a new category.

To edit an existing custom category, click the category name in the list, then click **Edit**.

## Category details

At the top of the Category Builder, set:

| Field | Description |
|---|---|
| **Name** | The display name of the category. |
| **Category type** | **Single value** (one entry per object) or **Multi value** (multiple entries per object). |

!!! info
    The category type cannot be changed after the category is saved for the first time.

## Add attributes

Click **New attribute** to add an attribute to the category. Each attribute requires a **Name** and a **Type**.

### Attribute types

| Type | Description |
|---|---|
| Text | Single-line plain text. |
| Multiline text | Multi-line plain text. |
| Number | Decimal number. |
| Boolean | Yes / No toggle. |
| Date | Date picker. |
| Date and time | Date and time picker. |
| Time | Time picker. |
| Currency | Numeric value with currency unit. |
| Color | Hex color code or color picker. |
| Password | Masked text input. |
| URL | Clickable link. |
| Email | E-mail address. |
| Phone | Phone number. |
| Single select | Dropdown with one selectable option from a predefined list. |
| Multi select | Dropdown with multiple selectable options from a predefined list. |
| Object reference | Reference to a single object in the CMDB. |
| Multi object reference | Reference to multiple objects in the CMDB. |

### Reorder attributes

Drag and drop attributes in the list to change their display order within the category.

### Remove an attribute

Click the **×** button on an attribute card to mark it for removal.
The attribute is highlighted until you save.
If you remove an attribute that already has stored data, you are warned before saving.

## Assign a category to a class

Custom categories must be assigned to at least one class before they appear on objects.

1. Open **Settings** from the user menu and go to **CMDB Configuration > Classes**.
2. Open the class and click **Edit**.
3. Add the custom category to the class and save.

## Save and discard

Click **Save** to persist your changes.
If you leave the Category Builder with unsaved changes, a confirmation dialog asks whether to discard them.

## Further readings

- [Creating custom categories](custom-categories.md)
- [Create custom classes](custom-classes.md)
- [Categories and attributes](../user/basics/categories-and-attributes.md)

# Locations

The **Locations** view is a Finder-style browser focused on the *physical* placement of objects.
It uses the same table, filters, and column controls as the Finder, but the left sidebar shows a hierarchical **location tree** instead of a flat class list.

Open it from **Inventory > Locations** in the top navigation.

## Rights

You can browse Locations with read access to objects.
Editing locations on objects requires write access on the object.
See [Rights and permissions](../../admin/rights-and-permissions.md).

## Layout

The page has two regions side-by-side.

### Sidebar, location tree

A hierarchical tree showing where each object sits.
A typical chain is *Country → Building → Room → individual objects*.

- The top entry **All objects** lists every object regardless of location.
- Clicking any node in the tree filters the right pane to objects placed below that node.
- The tree expands and collapses by clicking a node.

The lower half of the sidebar reuses the *All classes* list from the Finder, so you can combine a location filter with a class filter.

### Main pane

The main pane behaves like the Finder table:

- **New object +** creates an object and assigns its location automatically to the currently selected node, see [Create an object](create-object.md).
- **Edit ⌄** drives bulk actions on selected rows.
- **Move ⌘** is the location-specific action, see *Move objects between locations* below.
- **Class default ⌄**, the **Edit** (pencil-on-list) icon, and **Widgets** work exactly as in the Finder; see [Preset configuration](../finder/preset-configuration.md).

## Move objects between locations

The **Move ⌘** button replaces the *Import from CSV file* upload button you see in the regular Finder.

1. Tick the rows of the objects you want to move.
2. Click **Move ⌘** above the table.
3. In the dialog, pick the new parent location.
4. Confirm.

Each moved object's *Location* category is updated to the new parent.

## Further readings

- [Class list](../finder/class-list.md)
- [Object details page](object-details.md)
- [Categories and attributes](categories-and-attributes.md)

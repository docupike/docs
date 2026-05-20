# Finder

The **Finder** is the central object browser of i-doit up.
Open it from **Inventory ▸ Finder** in the top navigation, or simply by visiting `/finder`.

## Layout

The Finder has four regions:

1. **Top bar**: search box (*What are you looking for?*), **Filters** button, **All classes (n)** dropdown.
2. **Left sidebar**: the [class list](class-list.md) with class icons, names, and counts.
3. **Toolbar above the table**: *New object +*, *Edit ⌄* (bulk actions), *Import from CSV file*, the **Class default ⌄** preset selector, the *Edit* (pencil-on-list) icon for column configuration, and the **Widgets** button.
4. **Main pane**: the object table with the columns from the active preset.

## What you can do

- **Search**: type in the top search box; press **Enter** to filter the table, see [Save search](saved-views.md) to save the result.
- **Filter**: click **Filters** to apply attribute filters, see [Filter the Finder](set-filter.md).
- **Pick a class**: click a class in the sidebar or use the *All classes* dropdown.
  The page URL becomes `/finder?class=<id>` and a **★** star appears next to the class name for [favoriting](../basics/favorites.md).
- **Open an object**: click the right-arrow on a row.
  The detail page loads at `/object/<id>/<category-id>`, see [Object details page](../basics/object-details.md).
- **Edit attributes inline**: click any cell in the table to reveal the inline editor (pencil) and the *More options* (meatballs) menu.
- **Bulk-edit**: tick rows and use the [Edit dropdown](bulk-actions.md).
- **Customize columns**: click the *Edit* icon to open [Preset configuration](preset-configuration.md).
- **Create an object**: use **New object +**: see [Create an object](../basics/create-object.md).

## Related browsers

- [Locations](../basics/locations.md), the same shell scoped to a location tree.
- [Networks](../basics/ipam.md), the same shell scoped to networks plus per-network IP-usage stats.
- [Report Manager](../reporting/report-manager.md), saved object reports.

## Further readings

- [Class list](class-list.md)
- [Preset configuration](preset-configuration.md)
- [Save search](saved-views.md)
- [Filter the Finder](set-filter.md)
- [Bulk actions](bulk-actions.md)

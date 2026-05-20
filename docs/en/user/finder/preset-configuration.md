# Preset configuration

A **preset** controls which attributes are shown as table columns in the Finder, in what order, and which classes the preset applies to.
The active preset is shown in the dropdown labelled with its name (for example **Class default**) above the Finder table.
## Rights

No administrative right is required to switch presets or to edit the column selection of your own personal preset.
Saving a column choice together with a search term and filters under a name uses the [Save search](saved-views.md) dialog and is also available to every user.

## Switch the active preset

Open the dropdown labelled with the current preset name (for example **Class default**).
Pick the preset you want.
The table redraws immediately with the new column set.

## Configure a preset

1. Click the **Edit** icon-button (pencil-on-list icon) to the right of the preset dropdown.
2. The **Configure preset** drawer opens from the right side of the page.

The drawer shows two side-by-side lists.

### Header of the drawer

- The drawer title is **Configure preset** with a **Close** (×) button at the far right.
- Below the title the active preset name is shown (for example **Class default**), followed by:
    - **Rename preset**: pencil icon.
    - **Delete**: trash icon (only enabled for custom presets, not built-ins).
- A class-context combobox (for example **All attributes ⌄**) and a **Search for attributes** input filter what appears in the lists.

### Left list, Available attributes (n)

A category-grouped tree of every attribute that *could* be added to the preset.

- Each category row shows a **+ Add 1 category** action at the right edge that adds every attribute of that category to the preset.
- Each attribute row shows a **+ Add 1 attribute** action that adds only that attribute.
- Two icon buttons above the list, **Expand all** and **Collapse all**: toggle the category tree open or closed.

### Right list, Columns in table (n)

The attributes currently in the preset, in display order.

- Each row shows a small **× (Close)** action that removes the attribute from the preset.
- Three reorder buttons sit at the top right of the list:
    - **↕**: move the selected row up or down.
    - **↑-bar**: move the selected row to the top.
    - **↓-bar**: move the selected row to the bottom.
- Rows can also be reordered with **drag and drop**: every row is `draggable` and can be picked up directly.

### Bottom of the drawer

- **+ Save as**: save the current configuration as a new personal preset.
- **Update**: write the changes back to the active preset.
- **Close**: close the drawer without saving.

## Save the column selection as a reusable search

The **Configure preset** drawer stores the column choice on the active preset.
To save the column choice together with the current search term and filters under a name you can re-apply later, use the [Save search](saved-views.md) dialog instead.

## Manage shared presets (admin)

Administrators manage presets that are available to all users from a separate page.

1. Open **Settings** from the user menu (top right).
2. Go to **Views and Theming > View presets**.
3. Click **New preset +** to create a new shared preset, or click an existing preset in the list to edit it.

### Create a new preset

Clicking **New preset +** opens a **Create new preset** modal with three fields:

- **Name** (required), free-text, placeholder `Type a name`.
- **Preset for**: combobox with classes; supports multiple selections, placeholder `Select values…`.
- **Set as default** (required), `Yes` or `No`.

The **Save** button is disabled until the required fields are filled.
The columns selection is configured **after** the preset is saved by opening it from the list (which uses the same **Configure preset** drawer described above).

### List view

The list groups presets by class scope, with **All classes** as the default group.
Each entry shows the preset name and the number of selected attributes.
A copy/duplicate icon next to each entry creates an independent copy.

## Further readings

- [Save search](saved-views.md), store a search term plus filters plus a preset under a name.
- [Search, filters, and reports](search-filters-and-reports.md)

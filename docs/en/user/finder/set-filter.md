# Filter the Finder

The **Filters** button above the Finder table opens a *Set filter* dialog that lets you narrow the result set by any attribute on any category.
Filters can be saved together with the column preset and the search term using [Save search](saved-views.md).

## Open the dialog

Click **Filters** at the top right of the Finder, above the table.
The **Set filter** dialog opens centered on the page.

## Layout

The dialog has three columns side-by-side.

### Column 1, Categories

A scrolling list of every attribute category in the instance (Access, Accounting, Address and contact, Category of data, Contacts, Contracts, Controllers, CPU, …).
Selecting a category drives column 2.

### Column 2, Attributes

The attributes of the currently selected category (for example *Access* lists *Title*, *URL*, *Username*, *Password*, …).
Selecting an attribute drives column 3.

### Column 3, Filter value

A label of the form **{Attribute} is like** with a single text input below it (placeholder *Type value*).
Type the value you want to filter on.
For attributes with limited choices the input becomes a dropdown of valid values.

## Search

A **Search** box at the top right of the dialog filters columns 1 and 2 by name so you can jump straight to an attribute without scrolling.

## Buttons

- **Show results**: applies all the filters you have set and closes the dialog.
  The button is disabled until at least one filter has a value.
- **Cancel**: closes the dialog without changing the table.

## Combining filters

Each row you fill in adds a filter; the table shows objects that match **every** filter (logical AND).
To remove a filter, open the dialog again and clear its value, then *Show results*.

## Save filters together with the search

Once a filter is active, the **Save** affordance appears next to the Finder search box.
Use it to store the filter combination together with the active column preset and any search term as a [saved search](saved-views.md).

## Further readings

- [Save search](saved-views.md)
- [Preset configuration](preset-configuration.md)

# Categories and attributes

A **category** is a group of related fields on an object, *General*, *Location*, *IP networking*, *Contracts*, *DHCP scopes*, and so on.
The fields inside a category are called **attributes**.

Each [class](classes.md) defines which categories an object exposes.
A *Server* has *Form factor*, *CPU*, *Memory*, *IP networking*, *Network device*; a *Person* has *Address and contact*, *Employee*; a *Network* has *Network definition*, *IP addresses*, *DHCP scopes*, *Subnets*.

## Single-value vs multi-value categories

A **single-value** category holds exactly one set of attribute values per object, for example *General*.
A **multi-value** category holds many entries per object, for example *IP networking* lists every IP address assigned to a server.

The two render differently on the [object details page](object-details.md): single-value categories show a stacked form; multi-value categories show a table you can sort, filter, and add rows to.

## Custom categories

Administrators can create their own categories to capture data the standard model does not cover, see [Category Builder](../../admin/category-builder.md) and [Creating custom categories](../../admin/custom-categories.md).
Custom categories follow the same rules as built-in ones; the *Category Builder* lets you pick attribute types from a list (text, number, date, boolean, single-select, object reference, …).

## Choosing which attributes you see

In the Finder, the active [column preset](../finder/preset-configuration.md) decides which attributes show as columns.
On an object's details page, the gear icon next to *Overview* in the sidebar lets you hide or show entire categories per user.

## Further readings

- [Object details page](object-details.md)
- [Preset configuration](../finder/preset-configuration.md)
- [Category Builder](../../admin/category-builder.md)
- [Creating custom categories](../../admin/custom-categories.md)

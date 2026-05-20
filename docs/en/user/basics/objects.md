# Objects

An **object** is the core unit of documentation in i-doit up.
Every server, person, location, network, license, contract, organization, and so on is stored as an object that belongs to a [class](classes.md) and is grouped into one or more [collections](collections.md).

## Anatomy of an object

An object has:

- a **class** that decides which categories it has and which attributes it can store;
- a unique **name** (visible everywhere) and a stable **Object ID**;
- a **lifecycle stage**: usually one of *In operation*, *Active*, *Archived*, or *Deleted*;
- a set of **categories** filled with attribute values; categories are reused across classes, for example *General*, *Location*, *IP networking*.

## Day-to-day workflows

- **Browse and find objects** in the [Finder](../finder/class-list.md).
    Filter the list down with [Set filter](../finder/set-filter.md) or save a search via [Save search](../finder/saved-views.md).
- **Add an object** with [Create an object](create-object.md).
- **Read and edit a single object** on its [details page](object-details.md).
- **Apply changes to many objects at once** with [bulk actions](../finder/bulk-actions.md).
- **Group objects** by location with [Locations](locations.md) or by network with [IP address management](ipam.md).

## Lifecycle states

Every object has a documentation state.
*Active* objects are in regular use; *Archived* objects stay in the CMDB for historical purposes; *Deleted* objects are flagged for removal but still recoverable until they are permanently purged.
You can change the state in bulk via the [Edit dropdown](../finder/bulk-actions.md) or per-object on the details page.

## Further readings

- [Classes](classes.md)
- [Collections](collections.md)
- [Categories and attributes](categories-and-attributes.md)
- [Object details page](object-details.md)

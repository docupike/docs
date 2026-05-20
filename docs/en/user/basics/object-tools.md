# Object Tools

The **Tools** entry at the bottom of the [object details page](object-details.md) sidebar bundles the per-object housekeeping surfaces that are not regular categories.
Click **Tools** in the *Overview* sidebar to expand it.

It currently contains two sub-pages.

## History

The per-object **History** lists every change made to this object, who did it, when, and what changed.

| Column | Notes |
|---|---|
| Action | *Set data*, *Created*, *Deleted*, *Restored*, *Archived*, … |
| Field / category | Which attribute or category was affected. |
| Old value | What the value was before the change. |
| New value | What it is now. |
| User | Who made the change. |
| Timestamp | When the change happened (tenant timezone). |

The same data is summarized in the **History** widget that the right-pane *Widgets* panel of the object detail page shows by default.

The global **History** popup at the top right of the page (see [Top bar reference](top-bar.md)) is a tenant-wide feed; this per-object page is the same data scoped to one object.

## Permissions

The per-object **Permissions** page lists every rule that grants or implicitly denies access to this object.
A row shows the **subject** (user, group, or role), the **scope** (this object, the class, or *All Objects*), and the **action** the rule controls (*Read*, *Edit*, *Archive*, *Delete*, *Object lifecycle*, …).

Permissions are managed centrally on **Settings ▸ User management ▸ Permissions**: see [Permissions](../../admin/permissions.md).
The per-object view is read-only and exists so you can quickly answer *who can change this object?* without leaving the object.

## When to use Tools vs the regular categories

- Use **Tools ▸ History** when you need to audit *who changed what* on this object.
- Use **Tools ▸ Permissions** when you need to verify or troubleshoot *who can do what* on this object.
- For everything else (attribute values, IP addresses, contracts, …) stay in the regular [categories](categories-and-attributes.md).

## Further readings

- [Object details page](object-details.md)
- [Top bar reference](top-bar.md), global History feed.
- [Permissions](../../admin/permissions.md)
- [Rights and permissions](../../admin/rights-and-permissions.md)

# DHCP scopes

The **DHCP scopes** category records the address ranges that a DHCP service hands out inside a network.
Adding scopes makes the IP-address table visually group dynamic ranges, and feeds the *In DHCP scopes / Not in DHCP scopes* breakdown in the [Network detail page](ipam.md) usage panel.

## Where it lives

DHCP scopes are a category of the **Network** class.
They show up in two places:

- As the **DHCP scopes** entry in the *All categories* sidebar of a Network object, see [Object details page](object-details.md).
- As the **DHCP scopes** tab on the [Network detail page](ipam.md) opened from *Inventory ▸ Networks*.

Both surfaces show the same data and offer the same actions.

## Scope attributes

![DHCP scopes category on a Network object: the category sidebar with All categories (DHCP scopes selected) on the left, a DHCP scopes table in the centre with columns Title, IP range, and DHCP entry type, plus New entry, Delete, Columns, and Filters controls above it, and the right Widgets pane with the suite plus jump widget, Information, and History.](../../img/user/basics/dhcp-scopes.png)

Every scope has these attributes:

| Attribute | Notes |
|---|---|
| **Title** | Free-text name of the scope (for example *Clients* or *Phones*). Two scopes with the same range type but different titles stay in separate groups in the IP table. |
| **IP range** | Start and end addresses of the scope (for example `10.0.0.1, 10.0.0.20`). |
| **DHCP entry type** | The role of the range, e.g. *Reserved*, *Excluded*, or *Dynamic*. |

## Add a DHCP scope

1. Open a Network object.
2. Go to the **DHCP scopes** category (sidebar) or the **DHCP scopes** tab on the Network detail page.
3. Click **Add +** above the table.
4. Fill in **Title**, **IP range**, and **DHCP entry type**.
5. Save.

The new scope appears in the table and the IP-addresses table groups any addresses inside the range under the scope title.

## Edit or delete a scope

- Edit: hover the row and click the pencil in the *Actions* cell.
- Delete: tick the row and click **Delete** above the table, then confirm.

## Effect on IP usage

The **Usage details** panel on the Network detail page splits IPv4 (and IPv6) addresses into:

- **Total**: the size of the network.
- **In DHCP scopes**: every address that falls inside any DHCP scope you created here.
- **Not in DHCP scopes**: the remainder.

Adding or removing scopes immediately updates the breakdown and the donut chart.

## Further readings

- [IP address management](ipam.md)
- [IP networking](ip-networking.md)
- [Object details page](object-details.md)
- [Categories and attributes](categories-and-attributes.md)

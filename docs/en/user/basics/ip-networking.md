# IP networking

The **IP networking** category records an IP address that is assigned to an object, typically a server, a workstation, or any other class that connects to a network.
A separate category, **Network definition**, lives on Network objects and describes the network itself.
Together they let you document what is reachable on which network.

A third category, **IP addresses** (formerly *IP List*), is also available on some object classes; it is a multi-value variant of IP networking with an additional **Host** attribute.

## Rights

You can edit IP networking entries on any object you have write access to.
See [Rights and permissions](../../admin/rights-and-permissions.md).

## IP networking attributes

The category contains the following five attributes:

| Attribute | Description |
|---|---|
| **IP address** | The IP address. Validated against the chosen **Version**. |
| **Subnetmask** | CIDR of the netmask. Optional. Accepts both `24` and `/24`. |
| **Network** | A link to the Network object whose **Network definition** describes the address range. |
| **Configuration** | How the address is configured (for example *Static*). |
| **Version** | IPv4 or IPv6. Fixed once the entry is created. |

## Add an IP address

1. Open the object the address belongs to.
2. Go to the **IP networking** category in the sidebar.
3. Click **Add IPv4 address** or **Add IPv6 address**, depending on the address type.
4. Choose the **Network** the address belongs to.
5. Enter the **IP address**.
6. Optionally enter the **Subnetmask**.
    You can write the value either as a plain number (`24`) or with a leading slash (`/24`).
    Both notations are accepted.
7. Save the entry.

## Network definition

The **Network definition** category is attached to Network objects.
It describes the network itself, not an individual address.
The category contains five attributes:

| Attribute | Description |
|---|---|
| **Section** | The address class or zone the network belongs to. |
| **Version** | IPv4 or IPv6. |
| **Network address** | The base address of the network. |
| **Subnetmask** | CIDR of the network. |
| **Default router** | The IP reserved as the default router for this network. |

## IP addresses category

The **IP addresses** category appears on object classes that hold many addresses, for example a server with multiple interfaces.
It contains the same network-related attributes as IP networking plus a **Host** attribute that names the interface or host record:

| Attribute | Description |
|---|---|
| **Host** | The hostname or interface label of the address. |
| **IP address** | The IP address. |
| **Subnetmask** | CIDR of the netmask. |
| **Configuration** | How the address is configured. |
| **Version** | IPv4 or IPv6. |

The category was previously called **IP List** and renamed in a recent release.

## Further readings

- [IP address management](ipam.md), assigning and unassigning addresses inside a network.
- [Objects](objects.md)
- [Categories and attributes](categories-and-attributes.md)
- [Classes](classes.md)

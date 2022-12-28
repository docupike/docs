# IP Address Management with Docupike

An essential part of an IT documentation is the maintenance of IP networks, IP addresses and various network components, the so-called IP Address Management (IPAM).
You can document IP addresses, Subnetsworks, Supernetworks and configuration. Also you can browse, filter and manage them conveniently.

## Overview

The main value is that you:

- can document and browse through IPv4 Super- and Subnetsworks
- have a detailed and editable overview of an IP-subnetworks and IP-supernetworks
- can generate IP-subnet statistics
- can document networking details to a subnet
- can quickly get and assign a free IP-address
- will be alerted if there are IP-address conflicts

Also docupike already provides all object types and categories in order to cover precisely your needs.
These include amongst others the following object types:

- Network
- Segmented subnetwork
- Supernet
- Supernetwork
- VLAN

## Network Section

In docupike you can create network `Sections` to organize your IP Networks so that you have a organized view and logical grouping over your networks. To create a `Section` you need to open the `Network view` by click `Inventory -> Network ` and then the `Add` button near the `Overview` text.

In this case you have two logical locations `A` and `B`, which stands for a location. With this feature you can document two locations which as the same IP address range.

[![Network view](/img/screenshots/ipam/section.png)](/img/screenshots/ipam/section.png)


## 1. Create a Supernetwork

To get a better overview you use the [Network collection](../basics/collections.md) to see only the network classes.

[![Network collection](/img/screenshots/ipam/network-finder.png)](/img/screenshots/ipam/network-finder.png)

Now you can focus on creating networks. You will start with a `Supernetwork`.
After the creation of the `Supernetwork` you edit the `Network definition` category. Here you define that this Supernet uses IPv4, the `Network address` and a `Subnetmask`. If you already created a Router object, you can set it here as `Default router` for the Supernetwork.

[![Create a Supernet](/img/screenshots/ipam/create-supernet.png)](/img/screenshots/ipam/create-supernet.png)

!!!tip
    You can either type the _dotted decimal notation_ `255.255.0.0` or the _suffix_ `8` into the Subnetmask field

## 2. Create a Network

There are two ways of creating a Network object:
can document their Ip-addresses, subnets, supernets and configurations, and can browse, filter and manage them conveniently
- Create it via the [Network class](../basics/classes.md)
- Create it via the `Supernetwork category -> Subnetworks`

You will create it via the `Supernetwork category -> Subnetworks`.
Here you type in the Network `Name`, select the IP `Version`, insert the `Network address` and `Subnetmask`. Also you can assign a `Default router` if available.

[![Create Network via Supernetwork](/img/screenshots/ipam/subnetwork-via-supernet-filled.png)](/img/screenshots/ipam/subnetwork-via-supernet-filled.png)

Now the Network will appear in the Subnetworks list of the Supernetwork.

TODO [![Subnetworks of Supernetwork](/img/screenshots/ipam/FILENAME.png)](/img/screenshots/ipam/FILENAME.png)

## 3. Define a DHCP scope

In the Network definition category you document the IP `Version`, the `Network address` and `Subnetmask`. Also you can assign a `Default router` if available.
In the `Network object` you can configure `DHCP scopes`. You will define a DHCP scope for Clients.

[![Create a DHCP scope](/img/screenshots/ipam/dhcp-client.png)](/img/screenshots/ipam/dhcp-client.png)

To set a `IP range` you click into the field or on the Edit button after the field.
Now you will specify the `IP range` there are different ways to do this.

The first way is to use the `List view`. Here you can either `enter the IP address` into the `IP range from` and `IP range to` fields or select a `IP range` via clicking on the wanted `IP address`. For this you also need to select a IP address for the field `IP range from` and for`IP range to`.

[![Select a IP address range via list](/img/screenshots/ipam/ip-range-list.png)](/img/screenshots/ipam/ip-range-list.png)

The second way is to use the `Map view`. In this view you can also `enter the IP address` into the `IP range from` and `IP range to` fields or select a `IP range` via clicking on the wanted `IP address`. For this you also need to select a IP address for the field `IP range from` and for`IP range to`.

[![Select a IP address range via map](/img/screenshots/ipam/ip-range-map.png)](/img/screenshots/ipam/ip-range-map.png)

Now you can save the entry. The list displays the `Title`, the `IP range` with `counter` and the `DHCP entry type`.

[![DHCP entry](/img/screenshots/ipam/dhcp-client-entry.png)](/img/screenshots/ipam/dhcp-client-entry.png)


## 4. Assign Clients to IP addresses

Since you are still in the IP list you can click the `Edit` button with the `pencil icon` in the `Actions` column.
Now you select a `object` and the assignment is done. The `IP list` is immediately updated.
The `link button` will open the `object` in a new tab.

[![IP list view](/img/screenshots/ipam/assign-client.png)](/img/screenshots/ipam/assign-client.png)

## 4.1 Assign IP address to Clients

You are also able to `import` the IP address assignment or add the IP address via the `IP networking` category in the `Client class`.

[![Add IP address via category IP networking](/img/screenshots/ipam/assign-ip.png)](/img/screenshots/ipam/assign-ip.png)

If you manually assigned a IP address, the `Configuration` column will set to `Statically assigned`.

[![IP list](/img/screenshots/ipam/assign-ip-conf.png)](/img/screenshots/ipam/assign-ip-conf.png)


## 5. Network overview

At the `Network overview` you can see details and statistics about your networks.

The overview for `All networks` displays the IP addresses usage details for all networks and also displays all networks.

[![TEXT](/img/screenshots/ipam/allnet-overview.png)](/img/screenshots/ipam/allnet-overview.png)

The overview for a `Section` displays the IP addresses usage details for the networks in the `Section` and the all networks.

[![TEXT](/img/screenshots/ipam/sec-overview.png)](/img/screenshots/ipam/sec-overview.png)

The overview for a `Network` will display the usage detail details for the selected network, a donut chart and the IP addresses.

[![TEXT](/img/screenshots/ipam/net-overview.png)](/img/screenshots/ipam/net-overview.png)


For later use
### IP list category

The IP list category provides a comprehensive overview of each net. All IP addresses are listed, including `IP address range` with `counter` and the `Configuration` of the IP address.
Here you can assign a IP address by click the `Edit` button with the `pencil icon`.

[![TEXT](/img/screenshots/ipam/ip-list.png)](/img/screenshots/ipam/ip-list.png)

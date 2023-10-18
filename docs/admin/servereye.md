---
title: servereye integration
description: Admin basics for using the servereye Add-on in Docupike
lang: en
---

# servereye integration

The servereye Add-on is designed to synchronize all data from servereye to docupike. The Add-on is passed ready configured.

## Overview

-   No Add-on configuration is needed
-   Synchronization occurs multiple times a day
-   Manual synchronization triggering is possible
-   Customer companies are synchronized as tenant
-   Users are synchronized as individuals
-   Users are assigned to tenant/s
-   Each user is assigned to the "servereye reader" group
-   The "servereye reader" group is only permitted to read data
-   Objects are synchronized for each tenant
-   Categories are synchronized for each Object

## Login

This gives you an oversight how-to login for the first time.<br>
Access your docupike.cloud instance using the following URL schema:

~~~
https://<your_subdomain>.docupike.cloud/
~~~

Navigate to the Web UI of docupike to view the login screen:

You can log in either through servereye or by using your username and password. This grants you access to the default tenant, which is not associated with any specific customer.

[![Login screen](../img/screenshots/admin/servereye/login.png)](../img/screenshots/admin/servereye/login.png)

[helpdesk]: mailto:help@docupike.com

!!! info "No default login"
    docupike has no default login. Instead, during installation, the first individual user will be created automatically. This user has the admin role with all rights and permissions.

!!! info "Reset password"
    If you forget your password or need to change it, use the `Reset Password` button on the login screen.

After logging in, the servereye Add-on is already configured and does not need further setup. It also automatically performs synchronization of the servereye data.

## Rights in docupike

As an admin, you can view all tenants and configure docupike.

However, synchronized users only the rights to view their designated tenant, **with permissions limited to reading all objects and categories**. You have the option to assign create, edit and additional [permissions](rights-and-permissions.md) as needed.

## Tenants

A separate tenant is created for each customer. Access these tenants through the dropdown menu located at the top left, next to the Docupike logo.

## User

Each user, which have at least access to one tenant, is synchronized from servereye. The [Users](users-groups-roles.md) can be found via `Settings > User management >> Users`. Users are matched via E-Mail address.

## Objects and categories

Objects are imported into the class **servereye import**, in the corresponding tenant. Users can change the class of the objects.

Synchronized categories are **CPU**, **IP**, **Memory**, **Model**, **Storage Devices**, and **Storage Volumes**.
Entries in the listed categories undergo updates through the servereye sync. **Manual alterations to synchronized entries are overridden**, as there is a mapping to both objects and category entries.

## servereye synchronization

You can check the servereye synchronization via `Add-ons > servereye settings`. Here you will find a **Sync**, **Refresh** and **Recent imports** button.
The **Sync** button will execute a complete Sync for user and objects.The **Refresh** button refreshes the page, while the **Recent Imports** button opens the "servereye Import" class view.

## Widget

Docupike has a [Widget](../user/finder/widgets.md) view.

There is a servereye widget, which displays "Last sync" with date/time and a Link to the object in servereye.

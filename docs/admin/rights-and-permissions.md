---
title: Rights and permissions
description: Authorize users, groups and roles
lang: en
---

# Rights and permissions

i-doit distinguishes between functional _rights_ and _permissions_ to access specific information in the documentation.

## Additive and inherited

Both rights and permissions can be add to any [user, group or role](users-groups-roles.md). You can add a right/permission directly to a user. Otherwise, add a right/permission indirectly to a group or role to inherit it to linked users.

!!! info "Example"

    Even complex configurations are possible: Use the role `admin` which already has all rights and permissions. Create a group `Network engineers` and link it to the role `admin`. Then, create the user `Jane Doe` and link it to the group `Network engineers`. In the end, `Jane Doe` has all rights/permissions inherited from the role `admin`.

## Rights

A right allows a user to use a certain function or to define administrative settings. Go to `Settings > Rights` to configure rights.

!!! info "Examples"

    -   Group `Support` is given the right to use [reporting](../user/reporting.md).
    -   User `Bob` is given the right to [purge objects](../user/basics/objects.md).

## Permissions

A permission grants a user access to a specific set of documented information. Got to `Settings > Permissions` to configure permissions.

Permissions are always enforced – no matter which context the user is in. For example, they affect the results shown in [reports](../user/reporting.md) and responses from the [API](../dev/api.md).

Permissions come in two flavors: **Category and attribute permissions** define the parameters in which a user can access information within objects available as [categories and attributes](../user/basics/categories-and-attributes.md), whereas **object lifecycle permissions** define whether users are allowed to [create, archive, restore or delete objects](../user/basics/objects.md).

### Category and attribute permissions

The first part for this kind of permission is the definition of a scope of objects where the permission applies to. The scope can be either

-   **All objects:** Permission applies to all objects in the whole documentation.
-   **Objects in class:** Permission applies to all objects that are within a specific class
-   **Specific object:** Permission applies to a single selected object.
-   **Objects in location:** Permission applies to all objects that reside in a defined location (or even in a location hierarchically below).
-   **Own created objects:** Permission applies to all objects that are created by the user itself.

The second part is the selection of categories and attributes the permission should apply to and of actions which are particularly allowed. You can either choose a specific category or all categories. The same applies to attributes. You can either choose all attributes or a specific one.

The last part is the definition of the permitted actions that the user is allowed to execute: either create, read, edit or delete information or any combination of them.

!!! info "Example"

    The group `Customer support` is allowed to edit all attributes in the category `Model` for all objects that are in the [object class](../user/basics/classes.md) `Printer`.

### Object lifecycle permissions

This kind of permissions are needed to enable a user to create, archive, restore or delete objects. You need to define which class (or all classes) a permission applies to and which permission actions the user is allowed to execute. These actions can also be combined.

!!! info "Example"

    As an network engineer the user `Jane Doe` is allowed to create, archive and delete objects within the [object class](../user/basics/classes.md) `Switch`.

# Permissions

The **Permissions** page is the per-scope rule table that decides what a user, group, or role can do on the data layer.
Rights gate the *UI surfaces* a user can reach; permissions gate the *actions* a user can take on objects, classes, or all objects of the active tenant.
See [Rights and permissions](rights-and-permissions.md) for the bigger picture.

Open the page from the user menu (avatar) ▸ **Settings** ▸ **User management** ▸ **Permissions**.

## Layout

The page is a single table inside a card titled **Permissions**, with a filter bar above it and a **New permission +** button.

### Filter bar

Three comboboxes plus a **More ⌄** expander filter the table:

| Filter | What it narrows |
|---|---|
| **User / Role / Group** | Show only rules granted to the selected subject. |
| **Scope** | *All Objects*, a specific class (for example *Server*), or a specific object lifecycle. |
| **Permission** | The action category (*Read*, *Edit*, *Archive*, *Delete*, *Object lifecycle*, *Configured permissions*, …). |
| **More** | Reveals additional filters such as scope details or the granting role. |

### Table columns

| Column | Notes |
|---|---|
| **Actions** | Trash icon to delete the rule. |
| **User / Role / Group** | The subject the rule applies to (avatar + name). |
| **Scope** | Which objects the rule covers, for example *Object lifecycle*, *All Objects*, or a specific class. |
| **Scope Details** | Class-specific or object-specific qualifiers (`n / a` if not applicable). |
| **Permission** | One or more actions: *Read*, *Edit*, *Archive*, *Delete*, *Create*, or composite labels such as *All permissions*. |

## Add a permission

1. Click **New permission +**.
2. Pick the **Subject**: a user, role, or group.
3. Pick the **Scope**: *All Objects*, a class, or *Object lifecycle*.
4. Pick one or more **Permission** values from the list.
5. Save.

The new rule is evaluated on the next request from the affected subject; no logout is necessary.

## Delete a permission

Use the trash icon in the row's *Actions* cell.
A confirmation dialog protects the action.

## Combining rules

Permissions are **additive**: every rule that grants something contributes to the user's effective access.
There is no deny override.
A user can act on an object if any rule that covers them grants the requested permission on a scope that includes the object.

## Tenant scope

Like every other configuration, permissions belong to the active tenant.
Granting a permission in tenant A does not give the same access in tenant B.

## Further readings

- [Rights and permissions](rights-and-permissions.md)
- [User management](user-management.md)
- [Object Tools, Permissions tab](../user/basics/object-tools.md)

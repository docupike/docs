# Tenants

i-doit up supports **multi-tenancy**: a single instance can be divided into isolated tenants.
Each tenant has its own documentation, objects, categories, and permissions are scoped per tenant and are not visible across tenant boundaries.

Multi-tenancy is an optional feature.
If only one tenant exists, the tenant switcher is not shown to regular users.

## Rights

To manage tenants you need the **Rights > Administration > Manage Tenants** right.

Open **Settings** from the user menu (top right) and go to **User management > Rights** to configure rights.
See [Rights and permissions](rights-and-permissions.md).

## Manage tenants

Open **Settings** from the user menu and go to **Administration > Tenants** to see a list of all tenants in the system.
The table has the columns **Title**, **Number of objects**, and **Number of users**.

### Create a tenant

1. Open **Settings** from the user menu and go to **Administration > Tenants**.
2. Click **New tenant**.
3. Enter a name and confirm.

### Rename a tenant

Open the tenant details page and click the tenant name inline to edit it directly in the table.

### Delete a tenant

1. Open the tenant details page.
2. Click **Delete tenant**.
3. Confirm the dialog.

!!! warning
    Deleting a tenant permanently removes all objects and documentation within that tenant.
    This action cannot be undone.

## Assign users to a tenant

Users must be explicitly assigned to a tenant before they can access it.

### From the tenant details page

1. Open **Settings** from the user menu and go to **Administration > Tenants** and open a tenant.
2. Click **Assign users**.
3. Select one or more users and confirm.

To remove a user from a tenant, select the user in the assigned users table and click **Unassign**.

### From the user details page

1. Go to **Settings > User management > Users** and open a user.
2. In the **Tenants** section, add or remove tenant assignments.

!!! info
    If a user has no tenant assigned, they see a message that they have no access to any tenant.
    Assign at least one tenant before the user can work with the system.

## Default tenant

Each user has a **default tenant**: the tenant that is automatically selected on login.

To change a user's default tenant, open the user details page and set the **Default tenant** field.

If the default tenant is deleted, the user needs a new default tenant assigned before they can log in.

## Switch between tenants

When a user has access to more than one tenant, a **tenant switcher** appears in the top navigation bar.
Click it to see all accessible tenants and select one.
The application reloads and shows only data belonging to the selected tenant.

The number of objects in each tenant is shown next to the tenant name in the switcher.

## Permissions and scoping

All permissions, category permissions, attribute permissions, and object lifecycle permissions, are evaluated within the scope of the currently active tenant.
A user switching tenants inherits the permissions defined for that tenant.

Network data (IP address collision checks, DHCP configurations) and sections are also scoped per tenant.

## Further readings

- [Rights and permissions](rights-and-permissions.md)
- [User management](user-management.md)
- [Tenant switcher](../user/basics/tenant-switcher.md)

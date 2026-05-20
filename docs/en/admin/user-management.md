# User management

Users, groups, and roles control who can log in to i-doit up and what they are allowed to do.
This page covers the day-to-day management of users.

For the conceptual overview including rights and permissions, see [Rights and permissions](rights-and-permissions.md).

## Rights

To manage users you need the **Rights > Administration > Manage Users** right.

To manage groups and roles you need the **Rights > Administration > Manage Groups** and **Rights > Administration > Manage Roles** rights.

Open **Settings** from the user menu (top right) and go to **User management > Rights** to configure rights.

The **User management** section of Settings contains five pages: **Users**, **User groups**, **Roles**, **Rights**, and **Permissions**.

## Users

### Create a user

1. Go to **Settings > User management > Users**.
2. Click **New user**.
3. Fill in the required fields: **First name**, **Last name**, and **Email address**.
4. Set a temporary password or send an invitation email.
5. Save.

### Edit a user

Open a user from the list and click **Edit**.
You can change the user's name, email, password, default language, default tenant, and role/group assignments.

### Assign roles to a user

Open the user details page and go to the **Roles** section.
Add one or more roles.
The user inherits all rights assigned to those roles.

### Assign groups to a user

Open the user details page and go to the **Groups** section.
Add one or more groups.
The user inherits all rights assigned to those groups.

### Delete a user

Open the user details page and click **Delete**.
Confirm the dialog.
Deleted users can no longer log in.

## Groups

Groups allow you to assign the same rights to multiple users at once.

### Create a group

1. Go to **Settings > User management > User groups**.
2. Click **New group**.
3. Enter a name and assign users and rights.
4. Save.

### Add users to a group

Open a group and go to the **Users** section.
Add one or more users.
They immediately inherit the group's rights.

## Roles

Roles are named sets of rights that can be assigned to users or groups.

### Create a role

1. Go to **Settings > User management > Roles**.
2. Click **New role**.
3. Enter a name and add rights.
4. Save.

### Add users to a role

Open a role and go to the **Users** section.
You can add individual users or entire groups to the role.

### Delete a role

Open a role and click **Delete**.
Users and groups that had this role assigned lose the associated rights immediately.

## Set or change a password

When creating a user you are prompted for an initial password.
To change an existing user's password, open the user and click **Security**.
Enter the new password twice to confirm.

Passwords must be at least 8 characters (max 64), contain at least one number, and use a mix of upper- and lowercase letters.
Adding special characters makes the password stronger.

## Inheritance

Rights in i-doit up are additive and inherited:

- A user gets rights assigned **directly** or via **groups** and **roles**.
- All sources are combined, there is no deny/override mechanism.

**Example:** User *Jane* is in group *Network engineers*, which has the role *Admin*.
Jane inherits all rights of the *Admin* role through the group.

## Further readings

- [Rights and permissions](rights-and-permissions.md)
- [Permissions](permissions.md)
- [Tenants](tenants.md)

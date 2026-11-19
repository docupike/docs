# Add-ons

Add-ons extend i-doit up with additional functionality.
They can add new menu entries, widgets, CMDB categories, rights, and API endpoints to the base product.

Available add-ons are listed under **Add-ons** in the user menu (top right).
You can also reach the same list from **Settings > Administration > Add-ons**.

## Rights

To manage add-ons you need the **Rights > Administration > Manage Add-ons** right.

Each add-on can also define its own rights.
These appear under **Rights > Add-ons** after the add-on is installed.

Open **Settings** from the user menu and go to **User management > Rights** to configure rights.

## Install an add-on

!!! info
    In the SaaS version of i-doit up, add-on installation is handled by i-doit GmbH.
    Contact support to request an add-on.

After installation, the add-on is automatically registered and its menu entries, widgets, and CMDB structures become available immediately.

## Manage installed add-ons

Open **Add-ons** in the user menu (top right) to see all installed add-ons and their current status.

### Install or uninstall an add-on

Select an add-on and click **Install** or **Uninstall**.
Uninstalling asks for confirmation and then deletes all data of the add-on.
For the Flows add-on, this includes all flows, flow groups, logs, and history.

!!! warning "Uninstalling deletes data"
    Uninstalled data cannot be restored.
    Export what you want to keep before you uninstall an add-on, for flows see [Export and import flows](../user/flows/export-import.md).

## Add-on rights

Add-ons restrict access to their features using the standard rights system.
After installation, add-on-specific rights appear in the **Rights > Add-ons** section.

Assign add-on rights to users, groups, or roles the same way as standard rights.
See [Rights and permissions](rights-and-permissions.md) for details.

## Available add-ons

### Data protection (GDPR)

The **Data protection** add-on helps you document processing activities, external data processors, and data protection measures in compliance with GDPR requirements.

After installation, a **Data protection** entry appears in the Inventory menu.
A 30-day trial is available directly from the Add-ons overview.

### Documents Creator

The **Documents Creator** add-on generates documents from your CMDB data using configurable templates.

## Further readings

- [Rights and permissions](rights-and-permissions.md)
- [Permissions](permissions.md)
- [Suite+ bridge](suite-plus.md)

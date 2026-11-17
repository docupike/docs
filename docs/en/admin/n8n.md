---
render_macros: false
---

# n8n integration

[n8n](https://n8n.io) is a workflow automation tool that connects applications through visual workflows.
This page describes how to connect n8n with i-doit up: install the i-doit up nodes in n8n, create an app token, and set up the credential in n8n.
It then describes the actions of the node and how to start a workflow from an i-doit up webhook.

## What the integration does

The i-doit up nodes for n8n call the i-doit up API from a workflow, for example to push an object from another system into your CMDB.
Every call goes through the i-doit up API with an app token, so the workflow sees exactly the data and has exactly the rights of the user who owns the token.
The node **i-doit up Actions** offers the following actions:

- **Push Object** creates or updates an object.
- **Find objects** searches objects.
- **Get tenants** lists the tenants that the token user can access.
- **Create user** creates an i-doit up user.

## Prerequisites

- An existing self-hosted n8n instance that you administer, in Docker or installed with npm.
  The i-doit up nodes are currently not available in n8n Cloud.
- The release zip of the i-doit up nodes, for example `i-doit-up-n8n-nodes-1.0.0.zip`.
- Network access from n8n to your i-doit up URL.
- An i-doit up user whose rights cover what the workflow should do, see [Rights and permissions](rights-and-permissions.md).

The i-doit up nodes 1.0.0 were tested with n8n 2.43.4.

## Install the i-doit up nodes in n8n

The release zip contains the ready-to-use node package in the folder `i-n8n-nodes`, so you do not have to build anything.
n8n loads the package as a custom extension from the folder that the environment variable `N8N_CUSTOM_EXTENSIONS` points to.

**n8n in Docker**

1. Extract the zip and copy the folder `i-n8n-nodes` next to the `docker-compose.yml` of your n8n instance.
2. Add the environment variable and the volume to the n8n service:

    ```yaml
    services:
      n8n:
        environment:
          N8N_CUSTOM_EXTENSIONS: /home/node/custom/i-n8n-nodes
        volumes:
          - ./i-n8n-nodes:/home/node/custom/i-n8n-nodes:ro
    ```

    Keep your existing entries, for example the volume for `/home/node/.n8n`, so that your workflows and credentials are kept.

3. Run `docker compose up -d` in that folder. Docker Compose recreates the n8n container with the new settings.

**n8n installed with npm**

1. Extract the zip and copy the folder `i-n8n-nodes` to a folder that n8n can read, for example `/opt/n8n/i-n8n-nodes`.
2. Set the environment variable and start n8n:

    ```bash
    export N8N_CUSTOM_EXTENSIONS=/opt/n8n/i-n8n-nodes
    n8n start
    ```

If `N8N_CUSTOM_EXTENSIONS` already points to another folder, separate the folders with `;`, for example `/home/node/custom/other;/home/node/custom/i-n8n-nodes`.

**Update to a new version**

Replace the folder `i-n8n-nodes` in the same place with the one from the new zip and restart n8n, in Docker with `docker compose restart`.
`docker compose up -d` alone does not restart the container when the configuration is unchanged, so n8n keeps running the old version.

After the restart, search for *i-doit up* in the n8n node panel.
The panel lists the node as **i-doit up Action Selector**, and on the canvas it is called **i-doit up Actions**.
The credential type is called **i-doit up API**.

![The node panel of n8n with "i-doit" entered in the search field. The result list shows the node "i-doit up Action Selector".](../img/n8n/n8n_node_panel.png)

## Create an app token

n8n authenticates with an i-doit up **app token**.
A token belongs to one user and carries that user's rights, so create it on the account that n8n should act as.

1. Open the user menu at the top right and select **Settings**.
2. Select **User management → Users** and click **Open** on the user that n8n should act as.
3. Select **Apps** in the left navigation of the user and click **Add app**.
4. Enter a name, for example *n8n*, and click **Save**.
5. Click **Copy token** in the dialog *Copy token* and store the token in a safe place.

![The Add app dialog in i-doit up. The Apps page of a user is open in the background, and the dialog in front has a Name field with the value "n8n" and the buttons Cancel and Save.](../img/n8n/n8n_add_app.png)

![The Copy token dialog in i-doit up. The text reads "Your token for app n8n screenshot was generated", followed by the token, which is masked in this screenshot, and the note that the token is shown only once, with the buttons Copy token and Close.](../img/n8n/n8n_app_token.png)

The token is shown **only once**.
If you lose it, delete the app and create a new one.

To revoke access for n8n later, hover over the app on the **Apps** page, click the trash icon, and click **Yes, delete** in the dialog *Delete Application*.

![The Apps page of a user in i-doit up with the button Add app and a table that lists one app named "n8n".](../img/n8n/n8n_apps_tab.png)

Because the token carries the user's rights, prefer a dedicated user with only the rights the workflow needs over an administrator account.

## Create the credential in n8n

1. In n8n, click **+** at the top left and select **New credential**.
   Alternatively, open **Overview**, switch to the **Credentials** tab, and click **Create credential**.
   On a new n8n instance, the **Credentials** tab only appears after the first workflow or credential exists.
2. Search for **i-doit up API**, select it, and click **Continue**.
3. In **URL**, enter the base URL of your i-doit up instance without a trailing slash, for example `https://your-instance.example.com`.
4. In **API Token**, paste the app token.
5. Click **Save**.

n8n tests the credential when you save it.
The test reads one tenant from the i-doit up API, and n8n shows *Connection tested successfully* when the URL and the token are correct.
If the test fails, n8n shows *Couldn't connect with these settings*, and **More details** shows the error message.

The screenshot shows the address of a test system in the **URL** field.
Enter the URL of your own i-doit up instance there instead.

![The i-doit up API credential in n8n. The URL field contains the address of a test system, the API Token field shows a masked token, and a green banner reads "Connection tested successfully".](../img/n8n/n8n_credential.png)

The node sends the token in the `X-API-TOKEN` header of every request.

## Actions of the node

Add the node **i-doit up Action Selector** to a workflow and choose an **Action**.
The fields below the action change with the selection.

![The parameters of the node "i-doit up Actions" in n8n. The credential "i-doit up" is selected, the action is "Find objects", the category "cmdb.general" is entered, the field "Criteria" holds an expression, and "Offset", "Per Page", and "Sort" are set to 0, 50, and "title:asc".](../img/n8n/n8n_node_parameters.png)

### Find objects

Searches objects of the active tenant.

| Field | Meaning |
|---|---|
| **Categories** | One or more category identifiers whose data is returned with each object, for example `cmdb.general`. |
| **Criteria** | Filter as JSON, see below. Leave `{}` to match all objects. |
| **Offset** | Number of objects to skip. |
| **Per Page** | Number of objects per run. This field currently has no effect, see below. |
| **Sort** | Sort field and direction, for example `title:asc`. |

- **Criteria** takes a filter as JSON. `type` sets the comparison, `field` names the category and the attribute, for example:

    ```json
    {"type": "eq", "field": "cmdb.general.title", "value": "web-01"}
    ```

    The available types are listed in the table below.
- An identifier in **Categories** that i-doit up does not know does not stop the node, the node then returns no items.
- One run returns at most 10 objects. **Per Page** currently has no effect.
  To get further objects, run the action again and raise **Offset** in steps of 10 (0, 10, 20, and so on).
- The node returns one item per object, with the object and its category data.
  Each item carries a field `_paging` with `offset`, `perPage` (the number of items in this run), and `total` (the number of all matching objects).

| Type | Fields | Matches objects where the attribute |
| --- | --- | --- |
| `eq`, `neq` | `field`, `value` | equals or does not equal the value |
| `lt`, `lte`, `gt`, `gte` | `field`, `value` | is less than, less than or equal to, greater than, or greater than or equal to the value. Text attributes are compared as text. |
| `like`, `not_like` | `field`, `value` | matches or does not match the pattern, `%` is the wildcard, for example `web-%` |
| `in`, `not_in` | `field`, `value` as a list | equals or does not equal one of the values, for example `["web-01", "web-02"]` |
| `range` | `field`, `start`, `end` | lies between `start` and `end`, both included |
| `isNull`, `isNotNull` | `field` | is empty or is filled |
| `and`, `or` | `items` as a list of criteria | meets all or at least one of the criteria |
| `not` | `item` with one criterion | does not meet the criterion |

Example that combines two criteria:

```json
{"type": "and", "items": [
  {"type": "like", "field": "cmdb.general.title", "value": "web-%"},
  {"type": "isNotNull", "field": "cmdb.general.description"}
]}
```

### Get tenants

Returns the tenants that the token user can access.

| Field | Meaning |
|---|---|
| **Limit** | Number of tenants to return. |
| **Offset** | Number of tenants to skip. |
| **ID** | Return only the tenant with this ID. |
| **Sort By** | Sort field and direction, for example `title:asc`. |
| **Filter** | Filter as JSON. |

### Push Object

Creates an object, or updates it when an object with the same reference already exists.
The reference consists of a **Reference ID** and a **Reference Type** of your choice, for example the ID of a record in the source system and the name of that system.
Running the action twice with the same reference therefore updates the object instead of creating a duplicate.

| Field | Meaning |
|---|---|
| **Title** | Title of the object. |
| **Class** | ID of the [class](../user/basics/classes.md), not its name. |
| **Reference ID** | External ID that identifies the object in the source system. |
| **Reference Type** | Name of the source system or another qualifier of the reference ID. |
| **Data** | Category data as JSON, keyed by category identifier. |

To find the ID of a class, run **Find objects** for an existing object of that class, the ID is in the field `classification.id` of the result.

**Data** holds one entry per category, with a strategy and the entries to write, keyed by a reference ID of the entry:

```json
{
    "cmdb.general": {
        "strategy": "overwrite",
        "data": {
            "main": {
                "description": "Imported from the inventory tool"
            }
        }
    }
}
```

### Create user

Creates a user account in i-doit up, see [User management](user-management.md).

| Field | Meaning |
|---|---|
| **Username** | Login name. |
| **Name** | Display name. |
| **Email** | Email address. |
| **Password**, **Password Confirmation** | 8 to 64 characters with at least one lowercase letter, one uppercase letter, and one digit. |
| **User Status** | *Enabled* or *Disabled*. |
| **Role** | *User* or *Admin*. |

## Start a workflow from i-doit up

i-doit up has no n8n node of its own that waits for events.
Instead, i-doit up calls a **webhook** URL when an event occurs, and the **Webhook** node of n8n receives the call.

### Register a webhook in i-doit up

Webhooks are managed through the [API](../dev/api.md).
Send the request with the app token of the user that the workflow acts as and with the `x-tenant` header of the tenant to watch:

```bash
curl --request POST https://your-instance.example.com/api/v2/webhook \
    --header "X-API-TOKEN: YOUR_APP_TOKEN" \
    --header "x-tenant: YOUR_TENANT_ID" \
    --header "Content-Type: application/json" \
    --data '{
        "title": "n8n: object created",
        "webhookUrl": "https://n8n.example.com/webhook/idoit-up-object-created",
        "enabled": true,
        "triggerInfo": { "type": "cmdb.object.created", "class": null, "tenant": null }
    }'
```

The response contains the ID and the **secret** of the webhook.
Store the secret, it is shown only once, and your workflow needs it to verify that a call really came from i-doit up.

`triggerInfo` selects the event.
The object and entry events accept an optional list of class identifiers under `class` to react only to objects of those classes.
The entry events additionally take the `category` to watch.

| `type` | Fires when |
|---|---|
| `cmdb.object.created` | an object was created |
| `cmdb.object.deleted` | an object was deleted |
| `cmdb.entry.created` | a category entry was created, `category` names the category |
| `cmdb.entry.updated` | a category entry was changed, `category` names the category |
| `system.user.created`, `system.user.updated`, `system.user.deleted` | a user account was created, changed, or deleted |
| `system.tenant.created`, `system.tenant.updated`, `system.tenant.deleted` | a tenant was created, changed, or deleted |

`GET /api/v2/webhook` lists the webhooks of the tenant, `PUT /api/v2/webhook/{id}` changes one, and `DELETE /api/v2/webhook/{id}` removes it.
Every call is recorded with its result, and `GET /api/v2/webhook-log` returns these records.

### What i-doit up sends

i-doit up sends a `POST` request with a JSON body to the webhook URL.
The body names the event in `type` and carries the data of the event, for an object for example its `id`, `title`, `class`, `tenantId`, and `time`.

Every call carries the header `X-Signature`.
It contains the HMAC-SHA256 of the raw request body, calculated with the secret of the webhook, as a hexadecimal string.
To verify a call, enable the option **Raw Body** in the **Webhook** node and calculate the HMAC-SHA256 over this raw body, for example in a **Code** node.
Do not calculate it over the parsed JSON, because serializing the JSON again can change the body and the signature no longer matches.

### Example workflow

1. Add a **Webhook** node, set **HTTP Method** to *POST*, and enter a **Path**, for example `idoit-up-object-created`.
    The node shows the production URL that you register in i-doit up.
2. Add the node **i-doit up Action Selector**, select the credential, and choose the action **Find objects**.
3. Enter `cmdb.general` under **Categories** and the following expression under **Criteria**, so that the node loads the object that triggered the call:

    ```text
    {{ JSON.stringify({ type: "eq", field: "id", value: $json.body.id }) }}
    ```

4. Add the nodes that process the object, for example a mail or ticket node.
5. Publish the workflow.

![A workflow in the n8n editor with two nodes. The "i-doit up webhook" node on the left is marked "POST" and connected to the "i-doit up Actions" node on the right, whose subtitle reads "findObjects".](../img/n8n/n8n_workflow.png)

Whenever an object is created in the watched tenant, i-doit up calls the webhook, n8n runs the workflow, and the i-doit up node returns the object with its category data.

## Troubleshooting

| Symptom | Cause and solution |
|---|---|
| The credential test fails with *Unauthorized*. | The token is wrong or the app was deleted. Create a new app and paste the new token. |
| The credential test fails with *Not Found* or *ERR_INVALID_URL*. | The URL is wrong. Enter only the base URL of your i-doit up instance including the protocol, for example `https://your-instance.example.com`, without an API path. |
| The credential test fails with a connection error such as *EHOSTUNREACH*, *ENOTFOUND*, *ECONNREFUSED*, or *ETIMEDOUT*. | n8n cannot reach your i-doit up instance. Check the host name and the port in the URL, and check that no firewall or proxy blocks the connection from the n8n server to your i-doit up URL. If n8n runs in Docker, `localhost` means the n8n container itself, so use the host name or IP address of your i-doit up server. |
| **Push Object** fails with *Unable to find class with id ...*. | **Class** contains a class name such as `server` instead of a class ID. Enter the ID of the class, see [Push Object](#push-object). |
| **Find objects** returns no items although matching objects exist. | **Categories** contains an identifier that i-doit up does not know. Check the spelling, for example `cmdb.general`. |
| The i-doit up nodes do not appear in the node panel. | n8n did not load the package. Check that `N8N_CUSTOM_EXTENSIONS` points to the folder that contains the file `package.json` of the package, and restart n8n. |

## Further readings

- [API](../dev/api.md), authentication and the built-in API reference of your instance.
- [User management](user-management.md), where the app token is created on a user account.
- [Rights and permissions](rights-and-permissions.md), control what the token user and therefore the workflow can do.
- [Tenants](tenants.md), webhooks and the node act within one tenant.
- [Model Context Protocol (MCP)](mcp.md), another integration that uses app tokens.
- [n8n documentation](https://docs.n8n.io), how to build, publish, and run workflows in n8n.

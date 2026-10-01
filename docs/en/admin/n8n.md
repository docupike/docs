# n8n integration

[n8n](https://n8n.io) is a workflow automation tool that connects applications through visual workflows.
This page describes how to connect n8n with i-doit up: install the i-doit up nodes in n8n, create an app token, and set up the credential in n8n.

## What the integration does

The i-doit up nodes for n8n call the i-doit up API from a workflow, for example to push an object from another system into your CMDB.
Every call goes through the i-doit up API with an app token, so the workflow sees exactly the data and has exactly the rights of the user who owns the token.
The node **i-doit up Actions** offers the following actions:

- **Push Object** creates or updates an object.
- **Find objects** searches objects.
- **Get tenants** lists the tenants that the token user can access.
- **Create user** creates an i-doit up user.

## Prerequisites

- A self-hosted n8n instance that you administer, for example n8n in Docker.
  The i-doit up nodes are currently not available in n8n Cloud.
- Network access from n8n to your i-doit up URL.
- An i-doit up user whose rights cover what the workflow should do, see [Rights and permissions](rights-and-permissions.md).

## Install the i-doit up nodes in n8n

The i-doit up nodes are an n8n node package called `i-n8n-nodes`.
n8n loads the package as a custom extension.
You can either use the Docker setup that comes with the package or add the nodes to an existing n8n instance.

### Use the Docker setup of the package

The package contains the folder `docker` with a Dockerfile and a compose file.
They build an n8n image that already contains the i-doit up nodes.
Run the following command in the package folder:

```bash
docker compose -f docker/docker-compose.yml up --build
```

n8n then listens on port 5678.
The compose file is set up for a local test on `http://localhost:5678`.
For productive use, adjust `N8N_EDITOR_BASE_URL`, `WEBHOOK_URL`, and `N8N_SECURE_COOKIE` to your environment, see the [n8n documentation](https://docs.n8n.io).

### Add the nodes to an existing n8n instance

For n8n in Docker, build your own image based on the official n8n image and copy the package into it:

1. Build the package with `npm ci`, `npm run build`, and `npm pack`.
   The result is a file such as `i-n8n-nodes-1.0.0.tgz`.
2. Extract the file into a folder in the n8n image, for example `/home/node/i-n8n-nodes`.
3. Set the environment variable `N8N_CUSTOM_EXTENSIONS` to that folder.
4. Start n8n with the new image.

```dockerfile
FROM n8nio/n8n:stable
USER root
COPY i-n8n-nodes-1.0.0.tgz /tmp/i-n8n-nodes.tgz
RUN tar -xzf /tmp/i-n8n-nodes.tgz -C /tmp \
 && mv /tmp/package /home/node/i-n8n-nodes \
 && chown -R node:node /home/node/i-n8n-nodes \
 && rm /tmp/i-n8n-nodes.tgz
USER node
ENV N8N_CUSTOM_EXTENSIONS=/home/node/i-n8n-nodes
```

After the restart, search for *i-doit up* in the n8n node panel.
The node is called **i-doit up Actions**, and the credential type is called **i-doit up API**.

## Create an app token

n8n authenticates with an i-doit up **app token**.
A token belongs to one user and carries that user's rights, so create it on the account that n8n should act as.

1. Go to **Settings → Users** and open the user that n8n should act as.
2. Switch to the **Apps** tab and click **Add app**.
3. Enter a name, for example *n8n*, and click **Save**.
4. Click **Copy token** in the dialog *Copy token* and store the token in a safe place.

![The Add app dialog in i-doit up. The Apps tab of a user is open in the background, and the dialog in front has a Name field with the value "n8n" and the buttons Cancel and Save.](../img/n8n/n8n_add_app.png)

![The Copy token dialog in i-doit up. The text reads "Your token for app n8n screenshot was generated", followed by the masked token and the note that the token is shown only once, with the buttons Copy token and Close.](../img/n8n/n8n_app_token.png)

The token is shown **only once**.
If you lose it, delete the app and create a new one.

To revoke access for n8n later, hover over the app on the **Apps** tab, click the trash icon, and confirm *Delete Application*.

![The Apps tab of a user in i-doit up with the button Add app and a table that lists one app named "n8n".](../img/n8n/n8n_apps_tab.png)

Because the token carries the user's rights, prefer a dedicated user with only the rights the workflow needs over an administrator account.

## Create the credential in n8n

1. In n8n, open **Overview**, switch to the **Credentials** tab, and click **Create credential**.
2. Search for **i-doit up API** and select it.
3. In **URL**, enter the base URL of your own i-doit up instance, for example `https://your-instance.example.com`.
4. In **API Token**, paste the app token.
5. Click **Save**.

n8n tests the credential when you save it.
The test reads one tenant from the i-doit up API, and n8n shows *Connection tested successfully* when the URL and the token are correct.

The screenshot shows the address of a test system in the **URL** field.
Enter the URL of your own i-doit up instance there instead.

![The i-doit up API credential in n8n. The URL field contains the address of a test system, the API Token field shows a masked token, and a green banner reads "Connection tested successfully".](../img/n8n/n8n_credential.png)

The node sends the token in the `X-API-TOKEN` header of every request.

## Troubleshooting

| Symptom | Cause and solution |
|---|---|
| The credential test fails with *Unauthorized*. | The token is wrong or the app was deleted. Create a new app and paste the new token. |
| The credential test fails, although the token is correct. | The URL is wrong. Enter only the base URL of your i-doit up instance including the protocol, for example `https://your-instance.example.com`, without an API path. |
| The credential test fails with a connection error such as *EHOSTUNREACH*, *ENOTFOUND*, or a timeout. | n8n cannot reach your i-doit up instance. Check that no firewall or proxy blocks the connection from the n8n server to your i-doit up URL. |
| The credential test succeeds, but the i-doit up nodes fail with *The resource you are requesting could not be found*. | The URL points to a different service or ends with more than one slash. Enter the base URL of your i-doit up instance with at most one trailing slash. |

## Further readings

- [API](../dev/api.md), authentication and the built-in API reference of your instance.
- [User management](user-management.md), where the app token is created on a user account.
- [Rights and permissions](rights-and-permissions.md), control what the token user and therefore the workflow can do.
- [Model Context Protocol (MCP)](mcp.md), another integration that uses app tokens.
- [n8n documentation](https://docs.n8n.io), how to build, publish, and run workflows in n8n.

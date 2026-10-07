# App tokens

An app token lets a program authenticate against i-doit up without a username and password.
Clients such as scripts using the [API](../dev/api.md), UPSCAN, and the [MCP add-on](mcp.md) use an app token.
This page describes how to create, copy, rename, and delete app tokens.

## How app tokens work

An app token always belongs to one user account.
A request made with the token runs as that user, so it has exactly the [rights and permissions](rights-and-permissions.md) of that user.
Create the token on the account the client should act as.
Prefer a dedicated user with only the rights the client needs over an administrator account.

In the user interface, each token is listed as an app on the **Apps** tab of its user.
In the [API](../dev/api.md) documentation, app tokens are also called API tokens.

- A user account can have several apps, each with its own token.
- An app token is a 32-character string.
- An app token has no expiry date.
    It stays valid until you delete its app.

## Required rights

App tokens are managed in **Settings > User management > Users**.
To open this page you need at least one of the rights **Add users**, **Edit users**, or **Remove users**.
To rename or delete an app you need **Add users** or **Edit users**.
See [Rights and permissions](rights-and-permissions.md).

In the i-doit up freemium plan, the number of app tokens is limited.
To create more app tokens, upgrade your plan, see [Subscription, billing, and upgrade](subscription.md).

## Create an app token

1. Open the user menu (avatar at the top right) and choose **Settings**.
2. Go to **User management > Users** and open the user the client should act as.
3. Switch to the **Apps** tab and click **Add app**.
4. Enter a **Name** for the app, for example the name of the client, and click **Save**.

The dialog **Copy token** opens and shows the new token.

## Copy the token

Click **Copy token** to copy the token to the clipboard, then click **Close**.

The token is shown only once.
i-doit up stores only a hash of the token, so it cannot display the token again later.
If you lose the token, delete the app and add a new one to get a new token.

## Rename an app

1. Open the **Apps** tab of the user.
2. Click the edit icon in the row of the app.
3. Change the **Name** in the dialog **Edit App** and click **Save**.

Renaming an app does not change its token.

## Delete an app and revoke its token

Delete an app to revoke its token, for example when a client is no longer used or a token may have been disclosed.

1. Open the **Apps** tab of the user.
2. Hover over the row of the app and click the delete icon.
3. Confirm the dialog **Delete Application** with **Yes, delete**.

After that, the token can no longer be used to authenticate.
Clients that still use the token need a new one.

## What you need app tokens for

| Client | How it uses the app token |
|---|---|
| [API](../dev/api.md) | Send the token in the HTTP header `X-API-TOKEN` of each request. |
| UPSCAN | Enter the token in the UPSCAN configuration for the export to i-doit up. |
| [Model Context Protocol (MCP)](mcp.md) | Paste the token into the **How to connect** tab, which builds the connection setup for your AI client. |

## Further readings

- [User management](user-management.md), where the user accounts that own app tokens are managed.
- [Rights and permissions](rights-and-permissions.md), control what a client may do with its app token.
- [API](../dev/api.md), the i-doit up REST API.
- [Model Context Protocol (MCP)](mcp.md), connect an AI client with an app token.

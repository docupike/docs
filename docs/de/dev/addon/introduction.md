# Introduction

i-doit up provides an integration interface which allows you to include special features that are not implemented in i-doit up by default.

Features can be anything and fully depend on the use-case:

-   Provide special CMDB structures like collections, classes and categories
-   Integrate a third-party application
-   Implement heavily UI based workflows to fulfill special tasks and missions

## What is an add-on?

An add-on is a service that can be registered into i-doit up in order to extend the application with additional functions or information.
That means any add-on can provide a range of CMDB structures, like

-   Collections
-   Classes
-   Categories
-   Properties

Additionally any add-on can access CMDB data through our REST API.
It is also possible to implement your own UI in i-doit up.

Each i-doit up add-on is a standalone application which can be registered.
The only requirement is that it is reachable via HTTP(S) and provides a `manifest` file.

### Possibilities of an add-on

#### What can an add-on do

An add-on can only interact with i-doit up through its REST API.
An add-on can implement a custom frontend in i-doit up via iframe or integration into the SPA.
That means an add-on can, for example, do the following things:

-   Read/Write/Update/Delete object and category information
-   Read/Write/Update/Delete object classes
-   Read/Write/Update/Delete classifications
-   Implement a custom frontend which will be displayed via iframe or as a part of the SPA

#### What can an add-on not do

Every i-doit up add-on is a standalone application which is not necessarily located on the same server.
Due to this strict separation an add-on **can not** modify any i-doit up files or directly access any code (both front- and backend).
An add-on can thereby not:

-   Change the i-doit up frontend or any HTML, JS or CSS files
-   React to internal i-doit up events
-   Extend the i-doit up REST-API
-   Execute i-doit up (CLI) commands
-   Implement custom code or services to the backend

## Technical add-on architecture

Every i-doit up add-on is an independent application.
The used technology is not limited by i-doit up, as long as the application can be reached via HTTP(S) request.

Every add-on application can be viewed as service which will only communicate with i-doit up via the REST API.
There is no integration on a filesystem level.

Since the add-on is an independent application/service and will only communicate via REST-API with i-doit up it is technically possible to use one add-on application for several i-doit up instances.

### Interaction with i-doit up

Whenever i-doit up sends a request to the add-on application, it will put specific information like URL, API key and add-on specific settings into the header.
This is done in order to keep the communication stateless.

## Structure of an add-on

### Manifest file

Every add-on is required to provide a manifest file.
This needs to be a JSON file with some specific data. This file needs to be accessible to i-doit up, when the add-on gets registered.

The manifest file needs be named `addon.json` and has to look like this by default:

```json
{
    "title": "Add-on name",
    "identifier": "example",
    "product": "example-addon",
    "vendor": "i-doit",
    "author": "i-doit GmbH",
    "version": "1.0.0",
    "description": "Example add-on that demonstrates the possibilities of add-ons"
}
```

The manifest file needs to be located in the "root" path of the add-on address.
For example, when the add-on address is `127.0.0.1:8000` the manifest file needs to be accessible via `127.0.0.1:8000/addon.json`.

#### CMDB structure

The manifest file can be used to implement certain CMDB structures to i-doit up, when registering and/or updating the add-on.
i-doit up will keep track of the changes (during update) and synchronize the structure accordingly.
For this you will need to put a `cmdb` section into your manifest file, like this:

```json
{
    "cmdb": {
        "categories": [
            {
                "id": "host_status",
                "title": "Host status",
                "multivalue": true,
                "properties": […]
            }
        ]
    }
}
```

Check out [CMDB Structures](cmdb-structures.md) for further information.

#### Settings

Another important part of the `addon.json` file is the possibility to include add-on specific settings that will be registered into i-doit up.
These settings (and their values) will then be passed to the add-on via proxy request like the i-doit up URL and API key.

Registering settings within the manifest file can look like this:

```json
{
    "settings": [
        {
            "type": "string",
            "id": "locale",
            "name": "Preferred locale",
            "default": "en-US"
        },
        {
            "type": "int",
            "id": "counter",
            "name": "Current counter",
            "default": 0
        }
    ]
}
```

Check out [Settings](settings.md) for further information.

### Frontend pages

There are two approaches on how to show frontend pages in i-doit up:

#### Implement a page via SPA

The SPA ("Single Page Application") option can be only used with React.
For this approach you will need to register your components in the manifest file so that i-doit up can directly access and present them within the i-doit up UI.

The benefits of this approach are that the React code can make use of i-doit up internal helpers and interfaces in order to communicate to our REST API.

Check out [Frontend > SPA](frontend.md#how-to-add-new-frontend-routes) for further information.

#### Implement a page via IFRAME

The `IFRAME` option can be used if you would like to use your own combination of backend and frontend.
In this case i-doit up will embed an `IFRAME` with your add-on application.
This solution gives you the most freedom of choice regarding your technology stack.

It does not matter if you use PHP, Python, Node, Java or anything else, as long as your add-on URL responds with a HTML page that can be displayed inside the i-doit up frame.

With this solution you can still communicate to the i-doit up backend with the help of our REST API – but you will need to implement this communication in your own add-on application with the help of the meta data of the proxy request.

Check out [Frontend > SPA](frontend.md#how-to-add-new-frontend-routes) for further information.

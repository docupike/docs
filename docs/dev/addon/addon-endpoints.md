---
id: addon-endpoints
title: Add-on endpoints following REST
---

## General Information

An add-on is able to hook on specific add-on endpoints from the main application.
These endpoints can then perform their own actions inside the add-on.

## Defining hooks

In order to listen on these hooks the add-on needs to register them inside the `addon.json file.
The definition is as followed:

```json
{
  ...
  "hooks": [
    {
      "type": "url",
      "trigger": "install",
      "url": "install"
    },
    {
      "type": "url",
      "trigger": "update",
      "url": "install"
    },
    {
      "type": "url",
      "trigger": "uninstall",
      "url": "uninstall"
    }
  ]
}
```

There are 5 different triggers to listen to:

* `register`: First time registration of the add-on
    * `bin/idoit idoit:addons:register http://127.0.0.1:9000`
* `update`: Update of already registered add-on. The register is also being used for the update procedure.
    * `bin/idoit idoit:addons:register http://127.0.0.1:9000`
* `unregister`: Removing the add-on from the main application
    * `bin/idoit idoit:addons:unregister vendor.identifier`
* `enable`: Activating the add-on
    * `bin/idoit idoit:addons:enable vendor.identifier`
* `disable`: Disabling the add-on
  * `bin/idoit idoit:addons:disable vendor.identifier`

The `vendor` and `identifier` are specified in the `addon.json` file.

## How to listen to an Add-on hook

Let's assume we want to create three endpoints which listens to the register, unregister and update trigger.

First we have to register the hooks in the `addon.json` file.
```json
{
  ...
  "hooks": [
    {
      "type": "url",
      "trigger": "register",
      "url": "install"
    }, 
    {
      "type": "url",
      "trigger": "update",
      "url": "update"
    },
    {
      "type": "url",
      "trigger": "unregister",
      "url": "uninstall"
    }
  ]
}
```

After that we just need to define the endpoints for `install`, `uninstall` and `update` inside the add-on.
To check it, create the file `public\index.php` if it has not been created yet and add this example code:

```php
<?php
$pathInfo = $_SERVER['PATH_INFO'];
$pathArray = explode('/', $pathInfo);
$method = $pathArray[1];

switch ($method) {
    case 'install':
        // install routine of the add-on
        break;
    case 'uninstall':
        // uninstall routine of the add-on
        break;
    case 'update':
        // update routine of the add-on
        break;
    default:
        break;
}
```

Now when we register/update or unregister the add-on then the defined routines will be called which contains add-on
specific code.

Add-on can specify which settings it needs to perform its job.

Add-ons are supposed to be multi tenant capable so these settings with the tenant identifier help you to identify the correct configuration for your tenant.

## How to define the settings?

In order to specify the possible settings of the add-on, you should declare the `settings` block in your `addon.json`.

You can define the following types for your settings:

*   `string`: contains the textual setting
*   `int`: contains the number setting

For example, let's create some settings for our add-on:

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

In order to receive the changes in i-doit up, you should register the add-on again. i-doit up finds these changes and applies them to the add-on.

```shell
bin/console docu:addons:register http://127.0.0.1:9000
```

<details>
    <summary>Updating to the same version</summary>

Usually, you have to increase the version of your add-on to show that it contains changes.

You can enforce the registration process for your add-on with the same version by passing `--force` flag to the register command.
</details>

**Beware**, not to store sensible data in the settings. User can change the settings in i-doit up.
If you need to store credentials or other information for the business logic for the tenant, prefer to store it in your application by tenant id.

## Receive the settings in your add-on

After we registered the settings, we will receive these values with all requests from the user.

The header `DATA` contains the parameters for the given user and tenant in JSON encoded format.

Let's extract the settings from this data:

**Extract and display settings**
<details>
    <summary>Node.js + Express</summary>

Adjust your `index.js` file to extract data from the `DATA` header and write it down to the response.

Let's create a helper function to extract the data from the header and use it in our endpoint:

```js
const express = require('express');
const app = express();
const port = 9000;
const extract = req => {
    const data = req.headers['data'] || '{}';
    return JSON.parse(data) || {};
};
app.use(express.static('public'));

app.get('/*', (req, res) => {
    const settings = extract(req).settings || {};
    res.send(JSON.stringify(settings));
});

app.listen(port, '0.0.0.0', () => {
    console.log(`Example app listening on port ${port}`);
});
```
</details>

<details>
    <summary>PHP</summary>

Create a `public/index.php` file with such content:

```php
<?php
$dataHeader = $_SERVER['HTTP_DATA'] ?? '{}';
$data = json_decode($dataHeader, true);
$settings = $data['settings'] ?? [];

echo json_encode($settings);
```
</details>

Now, when we log in into i-doit up and call some add-on URL (for example, `/a/your-company/myapp/`), we will see the response:

```json
{
    "locale": "en-US",
    "counter": 0
}
```

This way, you can adjust the behavior of your service according to the user's needs.

## Set the settings

If you want to let users change the settings, you can create an own settings page like it's described in [Frontend part](./frontend.md) and use frontend API to store the values:

```js
// Set setting for the current user
docu.Model.settings.setUserSetting('your-company.myapp.locale', 'de-DE');
// Set default setting for all users (if they didn't set setting for them)
docu.Model.settings.setSystemSetting('your-company.myapp.locale', 'de-DE');
// Remove user's setting that default one from system is used
docu.Model.settings.removeUserSetting('your-company.myapp.counter')
// Remove system setting that the default from the configuration is used
docu.Model.settings.removeSystemSetting('your-company.myapp.counter')
```

If you want to set the setting via backend of the add-on, you should use service API calls.

Let's create some end points to manipulate the settings:

**Set random value for counter setting**

<details>
    <summary>Node.js + Express</summary>

Let's add a new endpoint `/random` that will make an API call to set a random number to counter.

Install the library to make a call:

```shell
npm install axios
```

and add the code in `index.js`:

```js
const axios = require('axios');
// ...
app.get('/random', async (req, res) => {
    const {url, apikey} = extract(req).docu || {};
    const newValue = Math.round(Math.random() * 100);
    await axios.put(url + "/v2/setting/user/your-company.myapp.counter", {
        value: JSON.stringify(newValue),
        userId: null
    }, {
        headers: {
            "X-API-TOKEN": apikey
        }
    });
    res.send({
        value: newValue
    });
});
```

</details>

<details>
    <summary>PHP</summary>

Let's make a call using cURL. Put the following content into `public/index.php`:

```php
<?php
$dataHeader = $_SERVER['HTTP_DATA'] ?? '{}';
$data = json_decode($dataHeader, true);
$settings = $data['settings'] ?? [];

switch ($_GET['path'] ?? '') {
    case 'random':
    {
        $newValue = rand(0, 100);
        $curl = curl_init();
        $server = $data['docu']['url'];
        $apiToken = $data['docu']['apikey'];
        $body = json_encode([
            'value' => json_encode($newValue),
        ]);

        curl_setopt_array($curl, [
            CURLOPT_CUSTOMREQUEST => 'PUT',
            CURLOPT_HTTPHEADER => [
                'Content-Type: application/json',
                "CONTENT_TYPE: application/json",
                'Content-Length: ' . strlen($body),
                "X-API-TOKEN: $apiToken",
            ],
            CURLOPT_RETURNTRANSFER => 1,
            CURLOPT_URL => $server . '/v2/setting/user/your-company.myapp.counter',
            CURLOPT_POSTFIELDS => $body,
            CURLOPT_TIMEOUT => 1
        ]);
        curl_exec($curl);
        curl_close($curl);

        echo json_encode([
            'value' => $newValue,
        ]);
        exit;
    }
}

echo json_encode($data);
```

</details>

---

Now, when we call `/a/your-company/myapp/random`, the setting is changed, so when we call `/a/your-company/myapp/` again, we see the updated value.

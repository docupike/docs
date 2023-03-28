
docupike can help you start, run, and grow your business. This guide helps you to understand which model matches the best your business model.

## Init the project

Let's first start your add-on project.

First, let's create the base of our new project:

```shell
mkdir myapp
cd myapp
mkdir public
touch public/addon.json
```

We have created the folder for our application. `public` will contain our public resources and defines the root of our web-server.

`public/addon.json` is a manifest file. This file describes the add-on and defines its functionalities and integrations.

Here is an example of the `addon.json` that you can copy to `public/addon.json` and adjust it according to your needs.

```json
{
    "author": "Your company Ltd",
    "title": "Example add-on",
    "description": "",
    "identifier": "myapp",
    "vendor": "your-company",
    "product": "your-product",
    "version": "1.0.0"
}
```

Let's adjust the content in `addon.json` to describe your add-on:

`author` - is the name of your company.

`title` - name of your add-on.

`description` - informative description of the add-on.

`identifier`- is an identifier of the add-on. It has to contain only the letters, numbers, dashes and underscore (`-`, `_`).

`vendor` - is an identifier of your company. It has to contain only the letters, numbers, dashes and underscore (`-`, `_`).

The vendor and identifier pair is the unique identifier of your add-on.

`version` - current version of the add-on. The version is important for implementing update migrations.

## Start the add-on server and install the add-on

The add-on has to provide a web server.

docupike registers an add-on with by the URL and forwards the add-on's specific request to your add-on.

Here are some examples, how you can run the web server. You are free to use the technology you prefer.

**Start server**

<details>
  <summary>PHP built-in Server</summary>

For development purpose, you can run the built-in PHP server using the following snippet

```shell
php -S 127.0.0.1:9000 -t public
```

</details>

<details>
  <summary>Node.js + Express</summary>

Init the node project:

```shell
touch package.json
touch index.js
```

Put the following content and adjust it with your information.

```json
{
    "name": "myapp",
    "version": "1.0.0",
    "description": "",
    "main": "index.js",
    "scripts": {
        "start": "node index.js"
    },
    "author": "",
    "license": "ISC",
    "dependencies": {
        "express": "^4.18.2"
    }
}
```

Install the node dependencies:

```shell
npm install
```

Put the following content to `index.js`.

```js
const express = require('express');
const app = express();
const port = 9000;
app.use(express.static('public'));
app.get('/*', (req, res) => {
    console.log({
        query: req.query,
        path: req.path,
        headers: req.headers,
    });
    res.send('Hello World!');
});

app.listen(port, '0.0.0.0', () => {
    console.log(`Example app listening on port ${port}`);
});
```

Start the server:

```shell
npm start
```

</details>

In order to check that server returns correct result, open the `http://127.0.0.1:9000/addon.json` in browser. You should see the content of the `addon.json` file.

Now, we have the server running, so we can register the add-on in docupike.

In order to do it, you should open the terminal of your docupike instance and run the register command:

```shell
bin/console docu:addons:register http://127.0.0.1:9000
```

As result, you should receive a success message:

```

    [OK] Addon your-company.myapp is successfully registered.

```

<details>
    <summary>Tips to URL</summary>

The URL depends on your configuration. If you use docker installation of docupike, you might connect to the host system using:

```shell
cd docker
./cli.sh app bin/console docu:addons:register http://host.docker.internal:9000
```

</details>

Now we can log in into docupike and call the URL of the add-on: `/a/your-company/myapp/addon.json`. We should see the same content of `addon.json` file.

All the URLs starting with `/a/your-company/myapp/` are forwarded to your add-on.


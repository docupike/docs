
Add-ons can extend UI of docupike.

Add-on can define the frontend routes, create own pages and seamlessly add new functionality into docupike.

## How to add new frontend routes?

You can define your pages in the `routes` property of your `addon.json`.

Each item defines a frontend page of the application.

`routes` is an array of route definitions:

```json
{
    "routes": [
        {
            "type": "spa",
            "path": "",
            "name": "index",
            "component": "docu.addon.my-vendor.my-addon.Page",
            "resources": [
                "/frontend/assets/index.js",
                "/frontend/assets/index.css"
            ],
            "menu": "My Add-on"
        },
        {
            "path": "detail/{id}",
            "name": "details",
            "type": "spa",
            "component": "docu.addon.my-vendor.my-addon.Details",
            "resources": [
                "/frontend/assets/index.js",
                "/frontend/assets/index.css"
            ]
        }
    ]
}
```

You can define the following fields:

`path` - defines the URL of your page. All URLs are relative to your add-on root path. For example, if you define an empty string as a path, the URL to this page will be `/a/{vendor}/{addon}`.
If you define a `subpage`, it will be `/a/{vendor}/{addon}/subpage`

You can use the placeholders for variables in your path definition. Corresponding values will be passed to your component via props.
For example, if you define `detail/{id}`, your component will receive a `params` object with `id` inside. `/a/my-company/my-addon/details/123` will pass `params` `{ id: '123' }` to your component.

`name` - unique name of the route. Each defined route creates a unique route name like `addons.{my-company}.{addon}.{name}`.
For example, if you define an `index` as the name of your route, the corresponding `addons.my-company.my-addon.index` route will be created.

You can find all available routes by requesting `https://your-docupike-instance.docupike.com/api/js/routing`.

`type` - type of the route. Currently, there is only `spa` option available.

**SPA specific properties:**

`component` - defines the name of the React component to be rendered.
In order to register the component, you should call `docu.Registry.registerComponent` function with corresponding parameters in your add-on.

For example, if you define `"component": "docu.addon.my-company.my-addon.MyPage"`, you would need to call the following in your `index.js`
```
docu.Registry.registerComponent('docu.addon.my-company.my-addon.MyPage', MyPage);
```

`resources` - an array of resources to be loaded in docupike when the page is opened.

`menu` - if the page should have a link in the top navigation. Beware, only to define a `menu` property for the pages without parameters.

## Common practices

### Building resources

Your JS file(s) should be built as UMD. React/ReactDOM should be used as external resources from docupike. You should not pack React/ReactDOM in your JS file.

### Creating components

The components in docupike add-ons should be standard React components.

In order to register components, you should call:
```
docu.Registry.registerComponent(uniqueName: string, component: ComponentType)
```
This allows you to integrate your components seamless into docupike. The component itself can be structured as you like.

While opening the page, the route and query parameters are passed as a `params` object.

### Navigation

In order to navigate through the application without reloading the page, you should use the following methods:

`docu.Routing.goto(routeName: string, params: Record<string, any>)` - navigate to the other page by route name and applied parameters to the route.

For example, when you want to open your defined details page with some specific `id`, you can call:
```
docu.Routing.goto('addons.my-company.my-addon.details', { id: 'some-id' })
```
It will generate a link `/a/my-company/my-addon/detail/some-id` and navigate to the page.

You can pass additional parameters to pass query parameters also:

```
docu.Routing.goto('addons.my-company.my-addon.details', { id: 'some-id', other: 'parameter' })
```

To generate a link for your route name with parameters you can use:

```
docu.Routing.generate(routeName: string, params: Record<string, any>)
```

`docu.Routing.update(url)` opens the specified page directly by URL.

### Access the data models

External add-ons can access more internal API then `docu.Routing`.
Furthermore you can also access CMDB data directly from docupike using `docu.Models` without calling add-on specific endpoints.

Please check [JS Interface](/dev/addon/js-api.html) for further information.

`CMDB Structures` is a useful feature of docupike's add-on architecture. It allows add-ons to require several CMDB structures to function correctly
without the necessity to fire the corresponding API calls manually.

## Advantages

The main reason of introducing `CMDB Structures` was to make it as easy as possible to require CMDB structures for add-ons.
Nevertheless, it is still possible to create these resources over the API during the registration procedure for example.
Unfortunately this requires knowledge of docupike's backend API and impedes the accessibility of such structures.
Another disadvantage for add-on developers is that they have to react on API changes which might happen in the future and would require an update
of their add-on. By using `CMDB Structures` this responsibility can be shifted to docupike to not be forced to react on these changes.
Another valuable feature of `CMDB Structures` is its ability to perform updates on these structures safely.

## Supported Structures

Add-ons can require the following CMDB structures:

* Categories and properties
* Classifications
* Collections

## How to use?

CMDB structures are placed in `addon.json`. During registration and update procedure the `addon.json` will be interpreted by docupike.
If docupike finds a `cmdb` section it will start a procedure to reflect these definitions to its CMDB structures.

```json
{
  "title": "My special add-on",
  "identifier": "my-special-addon",
  [...]
  "cmdb": {
    # Definition of add-on specific cmdb structures
    [...]
  }
}
```

## Categories and properties

Categories and properties are strictly linked. Therefore, properties are embedded into category definitions.
Categories will be defined in `categories` key. The following is an example definition of a category and its properties:

```json
{
    "cmdb": {
        "categories": [
            {
                # ID of category
                "id": "host_status",
                # Title of category
                "title": "Host status",
                # Multivalue Yes/no
                "multivalue": true,
                # Properties of category
                "properties": [
                    {
                        # ID of property
                        "id": "url",
                        # Title of property
                        "title": "URL",
                        # Type of property
                        "type": "text"
                    },
                    [...]
                ]
            },
            # more categories...
            [...]
        ]
    }
}
```

#### Categories

A category definition consist of four essential information:

* `id`: This identifier will be used to generate the `id of the category. The final `id will be composed like `addon.vendor`.`addon.id`.`category.id`
* `title`: This information declares the title of the category and its naming
* `multivalue`: This will enable you to mark the category as `multivalue` to allow multiple entries for each object. Please check `CPU` and `Accounting` categories to understand the difference.
* `properties`: This key holds all related properties of the category

#### Properties

As mentioned properties are an embedded part of the category definition. A property consists of three simple information:

* `id`: The property `id` is only for composition. The final `id` will consist of `addon.vendor`.`addon.id`.`category.id`.`property.id`
* `title`: The `title` defines the naming of the property
* `type`: The `type` indicates the behavior and functionality of a property

The following section describes the most common types:

* `text` - simple text input
* `multiline-text`: Multi-line text input with larger capacity and better handling in the UI
* `number`: Simple number field - can hold integers and floats
* `bool`: Simple Yes/No field to query boolean information
* `object`: Allows references between two objects

A full list of possible types can be retrieved over docupike's API: `http://my.docupike.com/api/v2/property-type`.
As result, you will get all available property types in your docupike instance.

#### Limitations

The CMDB feature allows you to define categories and attributes within the scope of the add-on.
As result, you cannot alter the categories/attributes outside the add-on's scope - predefined, user-defined, coming from other add-ons.

* You cannot update base information of existing categories
* You cannot add custom properties to existing categories
* You cannot update type of existing properties - this is a general constraint!


### Classifications

Classifications are also manageable by `CMDB Structures`. You can define them in `classes` key:

```json
{
    "cmdb": {
        "classes": [
            {
                # ID of class
                "id": "air_plane",
                # Title of class
                "title": "Air plane",
                # Icon of class
                "icon": "airplane",
                # List of category ids assigned to class
                "categories": [
                    "cmdb.access",
                    "cmdb.formfactor"
                ]
            }
        ]
    }
}
```

* `id`: The `id` of the class - the final `id` will consist of `addon.vendor`.`addon.id`.`class.id`
* `title`: The `title` attribute defines its naming in the UI and is the human-readable presentation of the class
* `icon`: The `icon` cannot refer to external resources and have to reference built-in resources from docupike
* `categories`: Definition of assigned categories by using full ids of categories

#### Updating existing classes

There is also the possibility to update existing classes of docupike by using `ref_id`. A common use case for this case is to
add a custom category to docupike's stock classes. In this case all defined categories will be added to the existing assignments.
The `ref_id` should include the class constant. To find out the constant of a class you can use the API and open `http://my.docupike.cloud/api/v2/class`.
This will give you a full list of all available classes and also the `constant` information.

### Collections

Collections can be also created and updated in a declarative way. The following should give you an idea how to define collections:

```json
{
    "cmdb": {
        "collections": [
            {
                # ID of collection
                "id": "furniture",
                # Title of collection
                "title": "furniture",
                # List of class constants assigned to collection
                "classes": [
                    "chair",
                    "table"
                ]
            }
        ]
    }
}
```

#### Updating existing collections

Like classes, collections can also reference stock resources of docupike to update its attributes. You can use `ref_id`, which is simply the title
of the collection. You can get a list of all collection's and their ids over the API: `http://my.docupike.cloud/api/v2/collection`

#### Limitations

Unfortunately there are some limitations which might require to use the API:

* You cannot reference custom classes

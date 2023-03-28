In general all add-ons have the ability to access the docupike API.
With the API it is possible to interact or change the data of the application.
In this section we will describe how the add-on can gain access to it.

## Install the docupike API-Client

To install the docupike API-Client it can be done via `composer require docupike/api-client:^v1.0.0`.
After it has been installed the add-on can use the docupike API client which contains all necessary
methods to interact with the data of the docupike application.

## Connector to the API

The docupike API has an factory method which creates an object of the API. Here is a simple example which 
creates an API object.

```php
<?php declare(strict_types = 1);

use Docupike\Api\Api;
use Docupike\Api\ApiFactory;

class ApiConnector
{
    public function getApi(): Api
    {
        $httpData = json_decode($_SERVER['HTTP_DATA'], true);
        $data = $httpData['docu'];
        return ApiFactory::create($data['url'], $data['apikey']);
    }
}
```

## Basic examples of the API CRUD for (Object, Entry)

The docupike API contains topics and in each topic all CRUD operations can be called.

### Objects
```php

...
// Create an object
$id = $api->object->create([
    'title' => 'New Object',
    'class' => 'Class-ID'
]);

// Get the object data by id
$objectData = $api->object->get('object-id');

// Update an object
$api->object->update('object-id', ['title' => 'Modified Object']);

// Delete an object
$api->object->delete('object-id');
...
```

### Category entry
```php

...
// Create an entry in a category
$id = $api->entry->create(
    'category-id', 
    ['property01' => 'value01']
);

// Get category entry data by id
$entryData = $api->entry->get('category-id', 'entry-id');

// Update an entry
$api->entry->update('category-id', 'entry-id', ['property01' => 'modifiedValue01']);

// Delete an entry
$api->entry->delete('category-id', 'entry-id');
...
```

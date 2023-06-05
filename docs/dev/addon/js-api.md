The following section will describe docupike's internal interface exposed to add-ons.

With these methods, the add-on developer can work with the standard docupike entities in the same way as the application does.
When working through the Model API, changes made through the add-on will be immediately applied throughout the application
The methods described below are available for all model types.

## How to use?

### Create

Create method allows you to create an entry of the selected model.
Usually, it receives an object as argument with fields of the model.
Result of the call is a promise with the created entry. If there are some validation errors, promise will be declined.
For example, if we want to create a category, we can call:

```
const category = await docu.Model.categoryInfo.create({title:string});

console.log({ category });
```
To create new object:
```
const object = await docu.Model.object.create(title:string, classId: string)

console.log({ object });
```

To find existing classifications we can call:
```
const classification = await docu.Model.classification.find()

console.log({ classification });
```

### Update
Update method allows you to update an entry of the selected model.
Usually, it receives as first argument an `id` of the model and further an object with fields of the model that need to be updated.
Result of the call is a promise. If there are some validation errors, promise will be declined.
For example, if we want to update a category, we can call

```
const updatedCategory = await docu.Model.categoryInfo.update(id:string, changes:{})

console.log({ updatedCategory });
```
### Remove

Remove method allows you to remove an entry of the selected model.
Usually, it receives `id` as first argument.
Result of the call is a promise with updated entry. If there are some validation errors, promise will be declined.
For example, if we want to delete a category, we can call
```
const removeCategory = await docu.Model.categoryInfo.remove(id:string)
```
### Get

Get method fetches the current state of the model in application. If the model was not loaded yet, method fetches model from backend and caches it in local state. If the model is already in local state, method does not perform an API call, but directly returns the cached entity.
It takes an `id` of the entry and returns the corresponding entity as promise with loaded entry.
```
const category = await docu.Model.categoryInfo.get(id:string)

console.log({ category });
```
### Load

Load method always load the current state of the model from backend and overwrites it in the local state of the application.
It takes the `id` of the entry to load as an argument and returns a promise with loaded entry.
```
const category = await docu.Model.categoryInfo.load(id:string)

console.log({ category });
```
### Get from state

`GetFromState` method returns the current state of the model from local state. It does not trigger any API calls.
It takes the `id` of an entity and returns either current state of the entry or null if it is not already fetched.
```
const category = await docu.Model.categoryInfo.getFromState(id:string)

console.log({ category });
```
### Find

Find method allows you to search an entry of the selected model.
Usually, it receives an object as argument with `id` of the model.
Result of the call is a promise with search result. If there are some validation errors, promise will be declined.
For example, if we want to find a category, we can call

```
const result = await docu.Model.categoryInfo.find({id:string})

console.log({ result });
```

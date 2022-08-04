---
title: Objects
description: Documentation basics about objects in i-doit
lang: en
---

# Objects

An object is a single entity that you document in i-doit.

## Comparison to assets/configuration items

An object corresponds to an asset in asset management or configuration item (CI). At i-doit.cloud we call it object because we like to keep things simple.

An object can either be a piece of physical hardware, e.g. a server, a router, a laptop etc., it can be a piece of logical information such as a maintenance contract or even a human being with contact details.

The entity itself can hold lots of information, stored in attributes and values. There is no limit on how many information is stored to a single entity.

What a single object represents in your IT documentation is ultimately defined by yourself – but i-doit comes with a standard set that is predefined.

!!! info "Object or attribute?"

    Users often ask if for example a single hard drive is an object or an attribute.

    In the predefined set that ships with i-doit a hard drive is an attribute. But if you decide that it is very important for you to keep track of all your hard drives in detail then you might create an own object class for hard drives.

    Treating hard drives as dedicated objects gives you multiple advantages in handling them in the software. It is for example easier to track their location.

## Create objects

Objects can be created in the main screen of the `Finder`. You choose an object class on the left side (e.g. `Server`) and press the `New object +` button on top of the list. A dialog opens up that gives you the possibility to set some additional options for the object creation, such as creating multiple objects at once and numbering.

## Edit objects

Editing an object can be done in multiple ways. The easiest way is to open up a single object and press the `Edit` button on any of the categories. There is also in-line editing and multi-editing functions that are explained in the `Finder` section.

## Archive, delete and restore objects

Objects have different stages that define the condition in their documentation existence. The stages are `active`, `archived` and `deleted`. A typical life-cycle could be:

-   When an object is created its default stage is `active`. You can actively work with it and relate it to other objects.
-   If you don't want to actively work with an object anymore but you want to keep it for documentary reasons you can `archive` it. For example, a server that is not being used anymore but still physically kept because it is not depreciated in accounting.
-   You can `restore` an object from its `archived` state back to `active`.
-   `Delete` an object which you do not use anymore and which is not needed for documentary reasons. You might have to preserve its history to be compliant with certain legal rules, certification standards or internal processes. Deleting an object will remove it from any view and relation but the history will be kept.

## History

Each object has a history that keeps track of all events that happen to an object. Events can be either `create`, `update`, `archive`, `delete` or `restore` operations.

Every event that affects an object is being saved in the history, complemented with a timestamp and information about the initiator of the event as well as technically more detailed information about the event.

You can access the history of an object on its detail page under `Tools > History`. A global history for all objects is also available in the main navigation bar.

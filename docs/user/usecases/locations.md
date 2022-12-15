---
title: Location documentation
description: How to document locations
lang: en
---

# Locations

The location of hardware and other components is an essential part of docupike. This article explains the documentation of locations and how you place objects.

The default installation docupike already supplies classes which are suitable for the documentation of locations - you can use them or hide them:

- **Country**
- **City**
- **Building**
- **Floor**
- **Room**
- **Rack**
- **Blade Chassis**
- **Rack Mount**

!!! info "Please note"

    You can also use other classes as a location by setting them to "container class" in the settings.

Beside these classes there is a category for each object where you can store the location: 

- **Location**

# Building up a location tree

After documenting all of the needed objects, you are able to assign them to the objects from the corresponding classes. This can be done within the category "location" to build up the location tree.

As soon as the assignment of these objects is done, you can change the finder's view to "location" and see a cascade view of your locations. This can be opened until you reach your desired object within this tree.

An example for a location path within your location tree looks like this:

    Country → City → Building → Floor → Room → Rack → Server
    
Geographical Coordinates

In the Location category you can store geographical coordinates with latitude and longitude to identify the exact location on a map.

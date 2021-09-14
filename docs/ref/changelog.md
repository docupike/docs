# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

_tbd_

## 2.0.3 – 2021-09-10

### Fixed

-   Setup/update: Take care of custom attributes during update (`ID2-2567`)
-   Setup/update: Abort update command on error (`ID2-2568`)
-   Setup/update: Fix update errors related to class domain (`ID2-2573`)

## 2.0.2 – 2021-09-02

### Fixed

-   Setup/update: Fix problems while updating i-doit from `v2.0.0` to `v2.0.1` (`ID2-2527`)

## 2.0.1 – 2021-08-19

### Added

-   Class and attribute favorites: Add button to each class to be able to select it as a favorite (`ID2-1948`)
-   Create new object: Filter the objects by events operation-id (`ID2-1434`)
-   Finder: Add possibility to select/deselect all objects in object table (`ID2-1988`)
-   Navigation: Make main menu items bookmark-able (`ID2-1966`)
-   UI forms: Mark selected states of values in menus (`ID2-2015`)
-   UI forms: Improve search in comboboxes by fuzzy search (`ID2-2019`)
-   Users: Reset user password via CLI (`ID2-2244`)

### Changed

-   Object search and filter: Prevent automatically filling "To" while setting "From" in date range filter (`ID2-1975`)
-   Presets: Migrate preset views to CQRS events (`ID2-2333`)

### Removed

-   Create Entry: Remove dynamic attributes from "Create new entry" form field (`ID2-1963`)

### Fixed

-   Categories and attributes: Hide internal attribute "Physical location" from user (`ID2-2284`)
-   Categories and attributes: Remove pre-defined values from attribute "Vendor" (`ID2-2309`)
-   Categories and attributes: Allow to remove value from custom attribute with type "Number" (`ID2-2381`)
-   CMDB configuration: Fix usage of custom properties with numeric identifier (`ID2-2173`)
-   CMDB configuration: Enable deletion of custom properties without values (`ID2-2193`)
-   CMDB configuration: Fix user interaction in collection view settings (`ID2-2196`)
-   CMDB configuration: Allow to delete custom category after removing last attribute (`ID2-2273`)
-   CMDB configuration: Allow creating of multiple custom attributes with the same name (`ID2-2275`)
-   CMDB CRUD: Do not automatically change device size unit to GB  (`ID2-2304`)
-   CMDB CRUD: Handle HTTP status code 500 in category edit view (`ID2-2419`)
-   Create Entry: Prevent saving of child values with empty parent information on linked dialog+ fields (`ID2-1853`)
-   Create new object: Link new object to location by default (`ID2-1942`)
-   Create new object: Enforce positive number in number of objects (`ID2-2150`)
-   Create new object: Fix empty pulldown in create new object modal with limited permissions (`ID2-2238`)
-   Create new object: Use starting number when creating new objects (`ID2-2373`)
-   Duplicate objects: Do not show endless loading screen when duplicating an object twice with limited permissions (`ID2-2189`)
-   Edit: Fix table "jumps" when dropdown arrow is pressed  (`ID2-2184`)
-   Location view: Do not show "no locations" during loading process (`ID2-1940`)
-   Location view: Stay on locations page when refreshing instead of being redirected to finder (`ID2-1944`)
-   Location view: Hide archived locations from location view (`ID2-2168`)
-   Login: Show links and form fields properly on small screens (`ID2-2282`)
-   Login: Do not show endless loading screen on re-login (`ID2-2315`)
-   Login: Do not limit permissions on a newly created object after login (`ID2-2372`)
-   Navigation: Fix link to recent events (`ID2-2210`)
-   Object browser: Fix endless loading screen when changing location (`ID2-2380`)
-   Object ranking: Fix missing success notification after deleting object (`ID2-2239`)
-   Object search and filter: Fix filtering for attribute values (`ID2-1719`)
-   Object search and filter: Shorten long search tags to prevent the search bar from extending (`ID2-1958`)
-   Presets: Hide internal attributes in column modal (`ID2-2281`)
-   Presets: Close preset dropdown menu when not used (`ID2-2327`)
-   Reports: Do not show "No permission" in report columns (`ID2-2294`)
-   Rights and permissions: Collapse filters when showing newly added permissions (`ID2-2007`)
-   Rights and permissions: Fix to click on checkboxes when creating a new right (`ID2-2295`)
-   Rights and permissions: Do not show "No permission" to user with permission for specific location object (`ID2-2328`)
-   Security: Fix CSP violations in auto-generated API docs (`ID2-2214`)
-   Setup/update: Fix i-doit update when handling non-unique users/user groups/roles (`ID2-2285`)
-   UI components: Show selected value in pulldown menu (`ID2-1973`)
-   UI components: Don't overwrite user input in calendar while typing (`ID2-1977`)
-   UI components: Prevent tags overlapping the input box (`ID2-2149`)
-   Users: Fix button to delete a user (`ID2-2264`)

## 2.0.0 – 2021-05-28

Initial release!

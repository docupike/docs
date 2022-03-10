# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

_tbd_
## 2.2.0 – 2022-02-18

### Changed

-   Caching: Encrypt cached data (`ID2-2054`)
-   CQRS: Use separate database for CQRS events (`ID2-2665`)

### Fixed

-   Bugs - UI Modals & Components: Make all checkboxes to be selected with a single click on Multi Select Combobox (`ID2-2938`)
-   Categories and attributes: Prevent category page from scrolling to top after a dropdown is opened (`ID2-1733`)
-   CSV Import (Fixing and Performance): Hide overlapping tooltip when starting/executing CSV import  (`ID2-2675`)
-   Navigation: Keep bar layout in place when clicking on settings button (`ID2-2883`)
-   Object ranking: Redirect from linked edit page when object is archived (`ID2-2953`)
-   Object search and filter: Show recently searched values in search bar after search for text (`ID2-2366`)
-   Object search and filter: Produce new filter tag when select class after global search (`ID2-2661`)
-   Presets: Do not always highlight name of preset in settings area (`ID2-2509`)
-   QA offensive - CSV Import : Prevent crash on saving without selecting an attribute when mapping a CSV import (`ID2-2912`)
-   QA offensive - CSV Import : Map life-cycle attribute correctly in CSV-Import (`ID2-2915`)
-   QA offensive - Finder: Pre-select "All classes" after selecting a specific collection (`ID2-2374`)
-   QA offensive - Finder: Redirect the user to the selected collection  (`ID2-2631`)
-   QA offensive - Finder: Enable user to write inside table pagination (`ID2-2966`)
-   QA offensive - Object details: Allow to delete an object from its detail page (`ID2-2997`)
-   UI tooltips: Remove tooltip from scope input field in permission modal (`ID2-2261`)
-   User Management: Show error when accessing unknown user settings (`ID2-2629`)

### Security

-   Session timeout works as expected: Ensure inactive user session expires (`ID2-2921`)

## 2.1.1 – 2022-01-31

### Added

-   CMDB configuration: Customize attribute order (`ID2-2643`)
-   CMDB configuration: Activate/deactivate attributes (`ID2-2644`)
-   CQRS Export: Export data (`ID2-2265`)
-   CQRS Export: Grant right to export data (`ID2-2266`)
-   Create new object: Show info with link to show new all objects (`ID2-1017`)
-   Edit: Select all objects at once to edit them (`ID2-2653`)
-   Object ranking: Grant permission on archived object (`ID2-2691`)

### Changed

-   Caching: Encrypt cached data (`ID2-2054`)
-   CMDB configuration: Sort classes linked to a collection alphabetically (`ID2-2296`)
-   CMDB configuration: Add category "Contact" to default categories of the class "Printer" (`ID2-2308`)
-   CMDB configuration: Remove default category "Contacts (linked objects)" from class "Server" (`ID2-2311`)
-   Create new object: Re-style behavior to create one new object (`ID2-2176`)
-   Development/maintenance: Upgrade to RoadRunner v2 (`ID2-2036`)
-   Development/maintenance: Update frontend-related 3rd-party libraries (`ID2-2591`)
-   Framework: Notify about backend errors (HTTP status codes 5xx) (`ID2-2234`)
-   IP networking: Allow prefixed forward slash in IPv4 subnetmask (`ID2-2538`)

### Removed

-   Object ranking: Remove archive/restore permission for categories and attributes (`ID2-2312`)

### Fixed

-   Create new object: Remove hint with limited permissions after deleting an object (`ID2-2491`)
-   Edit: Disable attribute "Model" in category "CPU" (`ID2-2262`)
-   Edit: Require the attribute "Warranty period amount" in category "Warranty" (`ID2-2627`)
-   Object browser: Close searchbar dropdown automatically inside object browser (`ID2-2759`)
-   Object ranking: Allow user to see filter tag when filtering for archived objects (`ID2-2686`)
-   Object search and filter: Remove unnecessary documentation states "created", "removed" and "deleted" (`ID2-2634`)
-   Object search and filter: Fix "No Permission" text on document state archived filter (`ID2-2739`)
-   UI notifications: Fix notification on archive/restore an object (`ID2-2736`)

## 2.1.0 – 2021-12-08

### Added

-   API: Support all request types in batch request (`ID2-2623`)
-   CQRS: Add source into event meta data to filter by source (`ID2-2626`)
-   CSV Import: Validate data from CSV file (`ID2-2161`)
-   CSV Import: Import related category attributes or entries (`ID2-2162`)
-   CSV Import: Upload CSV file (`ID2-2246`)
-   CSV Import: Select CSV file format options (`ID2-2248`)
-   CSV Import: Select general object class (`ID2-2249`)
-   CSV Import: Map CSV columns to object attributes (`ID2-2251`)
-   CSV Import: Update existing objects while importing from CSV file (`ID2-2252`)
-   CSV Import: Preview result before importing data from CSV (`ID2-2253`)
-   CSV Import: Perform CSV import (`ID2-2254`)
-   CSV Import: Delete CSV file (`ID2-2255`)
-   CSV Import: Reload Finder page after import (`ID2-2386`)
-   Setup/update: Introduce new setting for URL configuration (`ID2-2585`)

### Changed

-   Add-ons: Rename add-on "install" and "uninstall" commands to "register" and "unregister" (`ID2-2609`)
-   Development/maintenance: Bump version of Symfony to 5.3 (`ID2-2590`)

### Fixed

-   Categories and attributes: Save number of CPU cores correctly (`ID2-2363`)
-   Categories and attributes: Allow to overwrite default values in category "form factor" (`ID2-2584`)
-   Class and attribute favorites: Ensure button icons are always shown (`ID2-2313`)
-   CMDB CRUD: Show validation errors in inline edit context (`ID2-2662`)
-   Edit: Load columns on any MV table on edit mask (`ID2-2603`)
-   History: Fix unexpected error when opening object history (`ID2-2658`)
-   Object details: Allow user to reload page inside an object (`ID2-2677`)
-   Object search and filter: Allow to close search bar modal (`ID2-2257`)
-   Object search and filter: Allow to filter and sort by referenced dynamic attributes (`ID2-2411`)
-   Object search and filter: Fix error while filtering/sorting by automatically calculated values (`ID2-2412`)
-   Object search and filter: Add date/time values to search index (`ID2-2539`)
-   Object search and filter: Allow to search over all collections (`ID2-2640`)
-   Presets: Close preset dropdown menu when not used (`ID2-2327`)
-   Reports: Make all location objects to be selected as a report condition (`ID2-2560`)
-   Setup/update: Run presets migration command only when needed (`ID2-2579`)
-   Setup/update: Handle unavailable tables during update (`ID2-2598`)

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

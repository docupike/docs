# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

_tbd_

## 0.2.7 – 2022-10-14

### Added

-   Development/maintenance: Extend API to update object to handle assigned category entries (`ID2-2628`)

### Changed

-   Navigation: Make Finder button in CMDB menu clickable (`ID2-3578`)

### Fixed

-   Categories and attributes: Allow to delete container object with multi value assignment (`ID2-3342`)
-   Categories and attributes: Do not allow user to disable system attributes with a right click (`ID2-3496`)
-   Categories and attributes: Expand all categories while using real-time search  (`ID2-3497`)
-   Categories and attributes: Remove unit type of Rack units  (`ID2-3580`)
-   Categories and attributes: Fix multi-select object browser field error in "Purchased at" (`ID2-3591`)
-   Categories and attributes: Fix server error inside Devices and volumes category (`ID2-3721`)
-   CMDB CRUD: Fix duplicate tag assignment (`ID2-3643`)
-   Duplicate objects: Do not show deleted category entries after object duplication (`ID2-3594`)
-   Login: Do not display "An error has occurred" after the session is expired (`ID2-3630`)
-   Object browser: Allow user to link objects with the object browser (`ID2-3610`)
-   Object details: Show only favorite attributes in Favorites (`ID2-3563`)
-   Object search and filter: Close the modal of searchbar after selecting a saved filter (`ID2-3435`)
-   Object search and filter: Fix the filtering in new object success notification (`ID2-3642`)
-   Presets: Class selection is ignored when a preset is created (`ID2-3536`)
-   Presets: Fix modal layout in presets (`ID2-3583`)
-   Presets: Allow user to hover over tooltips in preset area (`ID2-3585`)
-   QA offensive - Settings: Fix dropdown fields width and layout properly (`ID2-3180`)
-   Rights and permissions: Allow users to edit attributes if they have permission  (`ID2-3452`)
-   Rights & Permissions Refactoring: Allow user to carry out tasks they have a right to (`ID2-3355`)
-   UI Basic data table: Fix column sorting arrow direction (`ID2-3492`)
-   UI components: Allow user to re-size container with resizing button (`ID2-3569`)
-   UI Form Field Times and Dates: Adjust Inline Edit specific keyboard controls for Inline Form Field Calendar (`ID2-1263`)
-   Widgets: Allow user to open widgets (`ID2-3722`)

## 0.2.6 – 2022-08-23

### Added

-   Categories and attributes: Show a hint if an attribute can not be deactivated (`ID2-2943`)
-   Object details: Add button for showing/hiding attributes displayed in multi-value categories of object details page (`ID2-2288`)
-   Find, create, connect: Add real-time search to sidebar (`ID2-3391`)
-   Find, create, connect: Show/hide categories in sidebar (`ID2-3392`)
-   Create and connect infrastructure: Apply resizable sidebar to location view (`ID2-3378`)
-   Create new class with categories: Add collection option to "Add class" modal (`ID2-3315`)

### Changed

-   Find, create, connect: Add nested list to sidebar on object details page (`ID2-3389`)

### Fixed

-   Bugs - UI Modals & Components: Sort collections correctly in configuration modal (`ID2-3273`)
-   CMDB configuration: Allow user to create a collection (`ID2-3535`)
-   Navigation: Make all objects class string bold again (`ID2-3416`)
-   Object browser: Do not allow to edit a connection data if user does not have permission for both end-objects (`ID2-3464`)
-   Object browser: Show No permission message in category IP networking (`ID2-3465`)
-   Object search and filter: Add proper spacing between the range fields in the searchbar dropdown (`ID2-3434`)

## 0.2.5 – 2022-07-05

### Added

-   Development/maintenance: Create an API endpoint to work with the object data with assigned category data (`ID2-1391`)
-   Settings: Allow user to filter for boolean fields (`ID2-3146`)

### Changed

-   Environment variable based installation/update procedure: Make `InitCommand` and creation of `.env` optional (`ID2-3347`)
-   Navigation: Move views to finder menu (`ID2-3350`)
-   Object ranking: Change archived state in object details page (`ID2-3394`)
-   Reports: Update action buttons in Reports Add attribute list items (`ID2-1695`)
-   Rights & Permissions Refactoring: Remove purge right (`ID2-3363`)
-   Create new class with categories: Show category "General" as default in object details (`ID2-3313`)

### Fixed

-   Categories and attributes: Allow user to fill out category Invoices (`ID2-3312`)
-   Categories and attributes: Hide hidden attribute columns in multi-value category (`ID2-3359`)
-   Navigation: Correct redirection from Locations view (`ID2-3387`)
-   Object search and filter: Fix filtering by dynamic properties (`ID2-2537`)
-   Export Data: Record correct timestamp in export file name (`ID2-3182`)
-   Finder: Unify widget button (`ID2-3293`)
-   Object browser: Do not show "Open link" and context menu buttons in object reference field when user has no read right (`ID2-3377`)
-   Reports: Add missing attribute "Class" in Reports "Add attribute" Modal (`ID2-3358`)
-   Settings: Do not allow user with only delete right to open create/edit modals (`ID2-3164`)
-   Rights & Permissions: Do not display "Loading" when user with limited permission opens category with linked object (`ID2-3314`)
-   Rights & Permissions: Allow user with own created objects permission to create multi-value entries (`ID2-3318`)
-   Rights & Permissions: Allow user to access Permissions modal when user does not have edit users/roles/user groups right (`ID2-3320`)
-   Rights & Permissions: Delete Object option from Scope Details filter (`ID2-3369`)
-   UI basics: Unify spacing of "Add" and "New" buttons to headline in Settings area (`ID2-3267`)

## 0.2.4 – 2022-05-31

### Changed

-   UI Modals & Components: Change the sorting of selected objects differently in list view and active field (`ID2-3251`)
-   Development/maintenance: Require PHP 8.1 (`ID2-2914`)
-   Settings: Add timestamp to custom category name (`ID2-3153`)
-   Settings: Change container class wording and component (`ID2-3187`)
-   Settings: Disable Permissions modal fields when no dependency is selected (`ID2-3236`)

### Fixed

-   Categories and attributes: Save all duplicated category entries (`ID2-3296`)
-   Categories and attributes: Allow the user to see the content of a multi-value category (`ID2-3357`)
-   Location view: Update page navigation info when another location is selected (`ID2-3306`)
-   Finder: Close searchbar modal when suggestion is clicked (`ID2-3195`)
-   Search & Filters: Fix the order of relevant results in searchbar dropdown (`ID2-3051`)
-   Search & Filters: Correct sorting of values in multi-select combobox (`ID2-3287`)
-   Settings: Show default disabled attributes in Settings area (`ID2-3181`)
-   Settings: Show both unaccepted password and not matching password errors (`ID2-3191`)
-   Settings: Adjust the error banner for inline editing in settings (`ID2-3221`)
-   Settings: Remove language constants from list of available categories and attributes (`ID2-3228`)
-   Settings: Add name filter tag in field when filtering for new user (`ID2-3325`)
-   Reports UI is improved: Correct search pattern in frontend search of reports modal (`ID2-2959`)
-   Rights & Permissions Refactoring: Allow to read objects when permission to read category and attributes is given (`ID2-3283`)
-   UI replace table component: Do not allow to enter more than 255 characters in a text field (`ID2-2365`)

## 0.2.3 – 2022-05-12

### Added

-   Location view: Add pagination to location view (`ID2-3200`)

### Changed

-   Location view: Add class icons to location view (`ID2-3198`)
-   Location view: Display success message when object is archived (`ID2-3201`)
-   Search & Filters: Rework saved filters modal (`ID2-3099`)
-   Settings: Enable the user to edit the title of a custom category (`ID2-3149`)
-   Settings: Do not show success message for every added attribute in presets settings (`ID2-3150`)
-   Settings: Move export right to own section (`ID2-3185`)
-   Settings: Change live validation of repeat password to validation after confirm (`ID2-3242`)
-   Settings: Change the behavior of "Create" in Categories and Attributes Entries permission (`ID2-3263`)
-   Restyle single value entries: Update single-value view in UI kit (`ID2-3277`)

### Fixed

-   Categories: Missing success-notification after saving in category (`ID2-1666`)
-   Categories: Fix the warranty end date calculation logic (`ID2-3210`)
-   Categories: Allow user to save and close after duplicating multiple entries (`ID2-3247`)
-   Finder: Do not allow user to remove a name from a preset (`ID2-3178`)
-   Finder: Make content of "More" section in collection modal scrollable (`ID2-3217`)
-   Finder: Adjust saved views modal for 1280 x 800 resolution (`ID2-3289`)
-   Location view: Do not show object class icon in location sidebar when object is deleted (`ID2-3202`)
-   Object browser: Allow user to use a saved filter in the object browser (`ID2-3107`)
-   Object details: Do not show "Delete" and "Delete forever" on history page (`ID2-3001`)
-   Reports: Hide logbook category in reports context (`ID2-3203`)
-   Reports: Fix checkbox behavior in Reports (`ID2-3252`)
-   Reports: Do Not Overwrite selected Attributes (`ID2-3269`)
-   Settings: Move cut off search fields under title and buttons in Settings (`ID2-3128`)
-   Settings: Do not show system attributes in custom categories (`ID2-3138`)
-   Settings: Do not automatically open color picker for inline editing (`ID2-3140`)
-   Settings: Uniform modal and button names (`ID2-3144`)
-   Settings: Uniform success messages in settings area (`ID2-3145`)
-   Settings: Do not allow user to edit the name of the default presets (`ID2-3148`)
-   Settings: Fix focus state in set token modal (`ID2-3152`)
-   Settings: Custom categories should be sorted in the list of all categories (`ID2-3155`)
-   Settings: Abbreviate longer class name on class settings page (`ID2-3156`)
-   Settings: Show 404 error page when landed on unknown object page (`ID2-3162`)
-   Settings: Abbreviate user group description in user groups table (`ID2-3163`)
-   Settings: Do not allow user to remove his own role and save it (`ID2-3175`)
-   Settings: Mark repeat password field also with error banner when saving not successful (`ID2-3176`)
-   Settings: Do not allow user to remove the icon from a class (`ID2-3186`)
-   Settings: Remove language constants from list of available categories and attributes (`ID2-3228`)
-   Settings: Remove listed permission as soon as the user is removed (`ID2-3229`)
-   Settings: Correct the wordings of Permissions modal (`ID2-3232`)
-   Settings: Give admin rights to a user who is in admin group (`ID2-3238`)
-   Settings: Fix behavior of deleting custom class which contains objects (`ID2-3278`)
-   Settings: Allow user to open user settings page (`ID2-3288`)
-   Rights and permissions: List selected permissions in permissions table (`ID2-3304`)
-   UI Form Field Pulldown: Fix multiple issues with multi select pulldown component (`ID2-2974`)
-   UI Form Field Pulldown: Fix single select combobox component (`ID2-2975`)
-   User Management: Assign selected user group when creating the user (`ID2-3271`)

## 0.2.2 – 2022-04-11

### Changed

-   Archiving Refactoring: Do not show Documentation state in Object browser filter (`ID2-3141`)
-   Categories: Show buttons always in multi-value entry (`ID2-3060`)
-   Categories: Allow user to select existing devices by their names inside category Volumes (`ID2-3088`)
-   Categories: Add "Required" label to attribute Lifecycle stage (`ID2-3103`)
-   Object browser: Prevent inline editing inside Object browser (`ID2-3105`)
-   Object browser: Allow user to use table column filters in Object browser (`ID2-3108`)
-   Settings: Sort classes in Add class modal alphabetically (`ID2-3130`)

### Fixed

-   Categories: Allow user to be able to remove values from a date field (`ID2-3061`)
-   Categories: Remove Storage device, Application and Blade server from the list of default Contacts (linked objects) classes (`ID2-3065`)
-   Categories: Add space between new IP address buttons (`ID2-3079`)
-   Categories: Remove "Select next free IP address" from multi-value view page (`ID2-3081`)
-   Categories: Do not show all existing objects in object filter fields (`ID2-3089`)
-   Categories: Allow to document same IP address in IP list (`ID2-3093`)
-   Categories: Remove the "Model" value as soon as the parent "Vendor" value is removed (`ID2-3094`)
-   Categories: Add missing attribute "Academic degree" to Employee category (`ID2-3095`)
-   Categories: Show assigned controllers on multi-value view page (`ID2-3096`)
-   Categories: Show only Contracts objects in Contracts Object browser (`ID2-3097`)
-   Categories: Show Contract type in Contracts category (`ID2-3098`)
-   Categories: Unify the empty state of form fields (`ID2-3101`)
-   Categories: Prevent dropdown from going over the modal (`ID2-3102`)
-   Finder: Fix wrong pagination when no objects are found (`ID2-3120`)
-   Location view: Show text abbreviations and nested list in location view sidebar correctly (`ID2-3193`)
-   Location view: Show used filters as recent entries in Location View (`ID2-3196`)
-   Object browser: Allow user to click on recent searched entries in Object browser (`ID2-3106`)
-   Object browser: Sort values in multi-select Object browser field alphabetically (`ID2-3111`)
-   Reports: Extend and uniform feedback messages in Reports section (`ID2-3206`)
-   Settings: Abbreviate collection name in Finder (`ID2-3131`)
-   Settings: Hide the remove button from General category in CMDB settings (`ID2-3132`)
-   Settings: Do not allow user to remove his own role and save it (`ID2-3175`)
-   Settings: Fix the error of custom View Presets (`ID2-3255`)
-   Setup/update: Allow to update from `2.2.0` to `2.2.1` after deleting the classes of VLAN, Printer or Daemon (`ID2-3241`)

## 0.2.1 – 2022-03-29

### Added

-   Edit: Give feedback when trying to save changes on deleted objects (`ID2-2624`)

### Changed

-   Development/maintenance: Update Symfony dependencies (`ID2-3047`)
-   Finder UI Improvements: Change "Configure" title to "Collections" in collection configure modal and add "Cancel" button to close the modal (`ID2-2977`)
-   Object Browser Additional Features: Open Object browser on Click on form field (`ID2-3069`)
-   Object details: Add abbreviation to long object and class names in object details page (`ID2-3056`)
-   Categories: Rename copy action button to duplicate (`ID2-3070`)
-   Categories: Rework the validation of an IPv6 network address (`ID2-3092`)
-   Finder: Use icons for classes Printer, Daemon and VLAN (`ID2-2948`)
-   Finder: Switch back to default preset when the user deletes active preset (`ID2-3006`)
-   Object details: Hide e-mail and status of user in "created by" history field (`ID2-2998`)
-   Object details: Sort categories in category dropdown alphabetically (`ID2-3002`)
-   Restyle single value entries: Replace Single Value Entries with new Design (`ID2-2957`)
-   Restyle single value entries: Replace Single Value Entries in Edit Mask with new Design (`ID2-2960`)
-   UI basics: Add string/text abbreviation in application (`ID2-2992`)
-   UI sidebar: Add object ranking for archived objects on object details page (`ID2-2838`)

### Fixed

-   Categories and attributes: Fix sorting of pre-defined values (`ID2-1715`)
-   Categories and attributes: Allow float values in attributes latitude/longitude (`ID2-2841`)
-   Duplicate objects: Ignore category "Location assigned" while duplicating an object (`ID2-1655`)
-   Object Browser Additional Features: Preserve object selection when the class changes in object browser (`ID2-2853`)
-   Object search and filter: Add missing translations for object filters (`ID2-2790`)
-   Categories: Rename modal "my attributes" to "Edit attributes" (`ID2-3044`)
-   Categories: Show tooltips of mail and phone form fields (`ID2-3064`)
-   Categories: Do not show "more" section in modal to create new entry (`ID2-3067`)
-   Categories: Add space at the bottom of the page of single value edit and object details view (`ID2-3071`)
-   Categories: Do not remove employee data when employees entry is removed (`ID2-3073`)
-   Categories: Rename the category Employees to Employees (linked objects) (`ID2-3075`)
-   Categories: Add required label to attribute warranty period amount (`ID2-3076`)
-   Categories: Remove warranty ends from edit view (`ID2-3077`)
-   Categories: Allow user to filter for a subnetmask (`ID2-3082`)
-   Categories: Prevent in-line editing inside category "IP list" (`ID2-3083`)
-   Categories: Disable inline editing of attribute "Type" in category "Network definition" (`ID2-3090`)
-   Categories: Remove attributes "size" and "used" from the UI screens (`ID2-3091`)
-   CSV Import : Prevent creating data out of empty CSV file cells (`ID2-2994`)
-   CSV Import : Fix permission errors during CSV import (`ID2-3121`)
-   CSV Import : Do not close the browser tab when CSV import modal is closed (`ID2-3135`)
-   Edit Mask: Allow user to save and close after a single save (`ID2-3045`)
-   Finder: Allow to unselect inline editable field (`ID2-2849`)
-   Finder: Show visible collections as marked (`ID2-2925`)
-   Finder: Make collection view content scrollable (`ID2-2946`)
-   Finder: Allow the user to edit saved filters (`ID2-2950`)
-   Finder: Show correct success message after deleting saved filter (`ID2-2951`)
-   Finder: Replace link button in finder collection (`ID2-2955`)
-   Finder: Fix cut off preset button with long name (`ID2-2956`)
-   Finder: Align fields in manage presets modal (`ID2-2961`)
-   Finder: Fix preset modal layout with a long name (`ID2-2963`)
-   Finder: Adjust the object selection message handling (`ID2-2965`)
-   Finder: Show correct number of objects selected inside a class with select all (`ID2-2967`)
-   Finder: Make Cancel button of inline editing opaque in finder table (`ID2-2969`)
-   Finder: Keep widgets switched off (`ID2-2971`)
-   Finder: Show list of classes inside create new preset modal (`ID2-3007`)
-   Finder: Show selected items when Select all is selected (`ID2-3024`)
-   Finder: Allow user to open filters modal (`ID2-3188`)
-   Object browser: Allow to select multiple values in multi-value object browser in inline editing (`ID2-3112`)
-   Object browser: Allow user to change the page limit inside the object browser (`ID2-3119`)
-   Object browser: Do not relate renamed objects with their old names to connected objects (`ID2-3213`)
-   Object details: Do not allow user to add object tools to favorite page (`ID2-2996`)
-   Object details: Show filter tag after selecting filter on history tool page (`ID2-2999`)
-   Object details: Replace "Open" button with arrow icon and tooltip in multi-value table (`ID2-3031`)
-   Object details: Do not display more section on favorite page (`ID2-3034`)
-   Object details: Set focus in searchbar after clicking search button (`ID2-3036`)
-   Object details: Open multi-value entry in view mode after clicking suggestion in searchbar (`ID2-3037`)
-   Object details: Shorten names before open arrow in search dropdown (`ID2-3038`)
-   Object details: Show page limit on favorite category when limit is changed (`ID2-3139`)
-   Reports: Replace language constant with hint in report filter modal (`ID2-3205`)
-   Reports: Disallow empty values in report (`ID2-3209`)
-   Search & Filters: Close search bar when quick search is opened (`ID2-3019`)
-   Search & Filters: Include filter values to the filter range (`ID2-3063`)
-   Search & Filters: Compare number values instead of strings in filter range (`ID2-3066`)
-   Settings: Redirect logged in user to finder page (`ID2-3179`)
-   Settings: Show user no right page when user lands on a user link without right (`ID2-3192`)
-   Reports Main Feature: Remove category `idoit.basic.search` from reports page (`ID2-2840`)
-   UI components: Save dates like "2020-4-4" with "enter" key (`ID2-2362`)

### Security

-   Development/maintenance: Update PHP dependency twig/twig to fix security vulnerability (`ID2-3173`)

## 0.2.0 – 2022-02-18

### Changed

-   Caching: Encrypt cached data (`ID2-2054`)
-   CQRS: Use separate database for CQRS events (`ID2-2665`)

### Fixed

-   Bugs - UI Modals & Components: Make all checkboxes to be selected with a single click on Multi Select Combobox (`ID2-2938`)
-   Categories and attributes: Prevent category page from scrolling to top after a dropdown is opened (`ID2-1733`)
-   CSV Import (Fixing and Performance): Hide overlapping tooltip when starting/executing CSV import (`ID2-2675`)
-   Navigation: Keep bar layout in place when clicking on settings button (`ID2-2883`)
-   Object ranking: Redirect from linked edit page when object is archived (`ID2-2953`)
-   Object search and filter: Show recently searched values in search bar after search for text (`ID2-2366`)
-   Object search and filter: Produce new filter tag when select class after global search (`ID2-2661`)
-   Presets: Do not always highlight name of preset in settings area (`ID2-2509`)
-   CSV Import : Prevent crash on saving without selecting an attribute when mapping a CSV import (`ID2-2912`)
-   CSV Import : Map life-cycle attribute correctly in CSV-Import (`ID2-2915`)
-   Finder: Pre-select "All classes" after selecting a specific collection (`ID2-2374`)
-   Finder: Redirect the user to the selected collection (`ID2-2631`)
-   Finder: Enable user to write inside table pagination (`ID2-2966`)
-   Object details: Allow to delete an object from its detail page (`ID2-2997`)
-   UI tooltips: Remove tooltip from scope input field in permission modal (`ID2-2261`)
-   User Management: Show error when accessing unknown user settings (`ID2-2629`)

### Security

-   Session timeout works as expected: Ensure inactive user session expires (`ID2-2921`)

## 0.1.1 – 2022-01-31

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
-   Development/maintenance: Upgrade to RoadRunner `v2` (`ID2-2036`)
-   Development/maintenance: Update frontend-related 3rd-party libraries (`ID2-2591`)
-   Framework: Notify about backend errors (HTTP status codes `5xx`) (`ID2-2234`)
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

## 0.1.0 – 2021-12-08

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

## 0.0.3 – 2021-09-10

### Fixed

-   Setup/update: Take care of custom attributes during update (`ID2-2567`)
-   Setup/update: Abort update command on error (`ID2-2568`)
-   Setup/update: Fix update errors related to class domain (`ID2-2573`)

## 0.0.2 – 2021-09-02

### Fixed

-   Setup/update: Fix problems while updating from `v0.0.0` to `v0.0.1` (`ID2-2527`)

## 0.0.1 – 2021-08-19

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
-   CMDB CRUD: Do not automatically change device size unit to GB (`ID2-2304`)
-   CMDB CRUD: Handle HTTP status code 500 in category edit view (`ID2-2419`)
-   Create Entry: Prevent saving of child values with empty parent information on linked dialog+ fields (`ID2-1853`)
-   Create new object: Link new object to location by default (`ID2-1942`)
-   Create new object: Enforce positive number in number of objects (`ID2-2150`)
-   Create new object: Fix empty pulldown in create new object modal with limited permissions (`ID2-2238`)
-   Create new object: Use starting number when creating new objects (`ID2-2373`)
-   Duplicate objects: Do not show endless loading screen when duplicating an object twice with limited permissions (`ID2-2189`)
-   Edit: Fix table "jumps" when dropdown arrow is pressed (`ID2-2184`)
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
-   Setup/update: Fix update when handling non-unique users/user groups/roles (`ID2-2285`)
-   UI components: Show selected value in pulldown menu (`ID2-1973`)
-   UI components: Don't overwrite user input in calendar while typing (`ID2-1977`)
-   UI components: Prevent tags overlapping the input box (`ID2-2149`)
-   Users: Fix button to delete a user (`ID2-2264`)

## 0.0.0 – 2021-05-28

Initial release!

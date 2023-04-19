# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

_tbd_

## 1.0.4 – 2023-04-19

### Added

-   Category Builder: Inform User about unsaved changes in category builder (`ID2-4350`)
-   CSV Import (Fixing and Performance): Show object counter during csv import (`ID2-4337`)
-   Registration: Allow to set own initial password after registration (`ID2-4186`)
-   Registration: Create set initial password URLs and screens (`ID2-4250`)
-   Registration: Send activation e-mail to customer (`ID2-4288`)
-   Reports Improvements: Inform user about unsaved changes in Reports (`ID2-4331`)
-   UI Dialog+ Improvements: Allow editing of options in multi-select dialog+ attributes (`ID2-3795`)
-   UI Dialog+ Improvements: Add delete option to dialog+ modal (`ID2-4314`)

### Changed

-   CSV Import (Fixing and Performance): Improve CSV import performance (`ID2-4338`)
-   IPAM - Manage IP Address Table: Change default sorting to "ascending" in network & IP address table (`ID2-4178`)
-   Registration: Log in user when they set new password (`ID2-4289`)
-   Settings Refactoring: Add new table component to user area in settings (`ID2-3361`)
-   UI Form Field Pulldown: Adjust Inline Edit specific keyboard controls for Inline Form Field Single Select Pulldown menus (`ID2-1259`)
-   UI Form Field Pulldown: Adjust Inline Edit specific keyboard controls for Inline Form Field Multi Select Pulldown (`ID2-1260`)
-   UI Form Field Pulldown: Adjust Inline Edit specific keyboard controls for  Inline Form Field Single Select Combobox (`ID2-1261`)

### Fixed

-   Add attribute to category builder: Do not pre-fill time attribute in safari browser (`ID2-4342`)
-   API: Allow user to update object titles via API (`ID2-4272`)
-   Archiving Refactoring: Allow user to delete archived objects (`ID2-4355`)
-   Categories and attributes: Correct the number of categories displayed in the Settings area (`ID2-4291`)
-   Category Builder: Allow user to search for custom attribute values (`ID2-4119`)
-   Category Builder: Fix error when adding a single select pulldown in category builder (`ID2-4349`)
-   CMDB configuration: Do not close multi-select pulldown when user clicks checkbox (`ID2-3943`)
-   CMDB configuration: Do not allow user to remove title from item in CMDB configuration (`ID2-3944`)
-   CMDB configuration: Fix Hide option in mandatory system attributes (`ID2-4301`)
-   CMDB CRUD: Do not allow to change value property of category (`ID2-4360`)
-   CSV Import (Fixing and Performance): Do not keep tooltip on CSV import modal  (`ID2-3590`)
-   CSV Import (Fixing and Performance): Fix CSV-Import fail if date fields are part of the assigned attributes (`ID2-4343`)
-   CSV Import (Fixing and Performance): Correct the feedback on user should any part of CSV import fail (`ID2-4362`)
-   Duplicate objects: Duplicate also custom categories during object duplication (`ID2-4303`)
-   Duplicate objects: Show duplicatable categories (`ID2-4326`)
-   Inline editing: Fix inline edit button placement and sidebar dimensions in saved filters modal (`ID2-4324`)
-   IPAM: Show selected network section in view mode (`ID2-4340`)
-   IPAM: Fix range selector for DHCP scoping (`ID2-4341`)
-   IPAM: Show correct error message in network definition category (`ID2-4353`)
-   IPAM - Object Details Page: Add spacing between New Network Buttons in onboarding PopUp (`ID2-4345`)
-   Object search and filter: Do not show multiple recent filter tags in the searchbar dropdown (`ID2-3791`)
-   Presets: Make custom preset defined as default the default preset for selected class (`ID2-3737`)
-   Product Upgrade / Downgrade: Display correct success message when changing plan (`ID2-4274`)
-   QA Launch-check: Fix scroll container in saved filter modal (`ID2-3894`)
-   Types of custom attributes: Allow user to type in date fields (`ID2-4283`)
-   UI form fields: Fix styles in Calendar component in UI-Kit (`ID2-4323`)
-   UI Form Field Times and Dates: Do not fill date field with current date when pressing enter (`ID2-3598`)
-   Validation options in category builder: Do not allow the user to create multiple unique entries via inline edit (`ID2-4302`)
-   Validation options in category builder: Do not apply currency validations of an attribute to other currency attributes (`ID2-4365`)
-   Validation options in category builder: Keep required option in category builder after saving category (`ID2-4369`)

## 1.0.3 – 2023-02-13

### Added

-   Login: Add Privacy Policy to login page footer (`ID2-4236`)
-   Product Plans and Feature Sets: Add net prices to plans (`ID2-4203`)
-   Product Upgrade / Downgrade: Let users understand what will they pay during upgrade of the plan (`ID2-4205`)

### Changed

-   Inline editing: Replace the inline edit component with the one from the UI-kit (`ID2-4032`)
-   UT 20210317 Find, Create, Connect: Add medium toolbar to categories header and buttons in object details page (`ID2-3395`)
-   UT 20210317 Find, Create, Connect: Add large toolbar to object details page (`ID2-3396`)

### Fixed

-   Create new object: Allow to create objects with long names (`ID2-4160`)
-   Cloud 3rd Party Login: Re-direct to login with "Access denied" message after a disabled account passes 3rd party authentication  (`ID2-4008`)
-   History: Change wording of History actions (`ID2-3581`)
-   History: Show the documentation state for objects in History (`ID2-3742`)
-   IPAM: Do not allow limited user to see overview of other sections (`ID2-4113`)
-   IPAM: Allow to open in new tab action in network view in Firefox (`ID2-4180`)
-   IPAM: Fix duplicate behavior for network objects (`ID2-4181`)
-   IPAM: Add missing background on network segment dropdown (`ID2-4183`)
-   IPAM: Allow to switch networks tab when statistics are hidden (`ID2-4208`)
-   IPAM - Edit Object Assignment / IP List: Show a single scope in bar graph  (`ID2-4189`)
-   Navigation: Make all objects class string bold again (`ID2-3416`)
-   Navigation: Make Inventory menu button responsive to close (`ID2-3666`)
-   Object ranking: Do not highlight pagination when object state is adjusted on object details page (`ID2-3595`)
-   Object search and filter: Fix the layout when there is a validation error in date quick filters (`ID2-3727`)
-   Product Plans and Feature Sets: Change Date column of the Invoice table to use created date (`ID2-4201`)
-   QA Launch-check: Disable "Show Results" button until a valid filter is selected (`ID2-3861`)
-   QA Launch-check: Do not open calendar while quick filtering date attributes  (`ID2-3895`)
-   QA Launch-check: History filter fields should not move while selecting values (`ID2-3898`)
-   QA Launch-check: Fix focus state of button in restore object banner (`ID2-3900`)
-   Reports Improvements: Poor performance of the reports (`ID2-3872`)
-   UI advanced data table: Fix header gap and checkbox placement in UI Kit table (`ID2-4214`)
-   UI Form Field Pulldown: Allow user to click on a suggestion in the multi-select combobox if there is already a selected value (`ID2-3796`)
-   UI notifications: Do not show object name in modal headers  (`ID2-4166`)
-   UI sidebar: Fix scroll bar overlap in Finder  (`ID2-3584`)

## 1.0.2 – 2023-01-17

### Changed

-   Login: Change slogan on login page (`ID2-4192`)

## 1.0.1 – 2023-01-13

### Fixed

-   Categories and attributes: Adjust styling of multi-select object browser field in multi-value category (`ID2-3587`)
-   Categories and attributes: Allow user to use date fields (`ID2-4153`)
-   Category Builder: Use single loading animation for Save and Fetch process on Category Builder (`ID2-4152`)
-   CMDB configuration: Do not allow to change title of predefined categories (`ID2-4162`)
-   Edit an attribute in category builder: Show line breaks for long text field in view mode (`ID2-4144`)
-   IPAM: Fix IPv6 DHCP map range selection (`ID2-4107`)
-   IPAM: Do not allow to enter IP address not matching to Network via Edit function on Network view (`ID2-4164`)
-   IPAM: Do not allow to change IP Address of the assigned IP Address via Edit button on Network view (`ID2-4165`)
-   IPAM - Manage IP Address Table: Offer an option to expand IP range (`ID2-3948`)
-   Object ranking: Allow user to remove object with linked location object (`ID2-4097`)
-   Types of custom attributes: Show error in multi-select pulldown in edit mode (`ID2-4086`)
-   Types of custom attributes: Fix overlapping of error in multiselect pulldown (`ID2-4150`)
-   Validation options for custom attributes: Do not allow to set empty value for required text attribute (`ID2-4149`)

## 1.0.0 – 2023-01-04

Initial release!

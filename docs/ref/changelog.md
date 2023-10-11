# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

_tbd_

## 2.0.0 – 2023-09-26

### Added

-   Create Entry: Enable user to add new MV entry in Finder (`ID2-4655`)
-   Inline editing: Show additional actions of the control on hover (`ID2-4656`)
-   Multi-Tenancy: Create tenant overview table in settings area (`ID2-4562`)
-   Multi-Tenancy: Implement create tenant on manage tenants page (`ID2-4565`)
-   Multi-Tenancy: Add possibility to assign tenant(s) while creating user (`ID2-4573`)
-   Onboarding wizard for new users: Create an on-boarding journey for finder (`ID2-4585`)
-   Onboarding wizard for new users: Create an on-boarding journey for Object Details Page (`ID2-4586`)
-   Onboarding wizard for new users: Create an on-boarding journey for Report (`ID2-4587`)
-   Onboarding wizard for new users: Create an on-boarding journey for Settings (`ID2-4588`)
-   Onboarding wizard for new users: Create a general introduction (`ID2-4589`)
-   Onboarding wizard for new users: Create a general outro (`ID2-4590`)
-   Onboarding wizard for new users: Open Help-Center (`ID2-4591`)

### Changed

-   Duplicate objects: Allow user to duplicate object in finder (`ID2-4716`)
-   UI components: Select whole text when user focuses combobox (`ID2-4644`)

### Fixed

-   IPAM - Manage IP Address Table: Add missing open object button in IP table (`ID2-4696`)
-   Object browser: Show assigned classes in the object browser, even if no object of the class exists (`ID2-4604`)
-   Reports Main Feature: Fix loading data on report view (`ID2-4700`)
-   Settings: Fix retrieving user settings (`ID2-4611`)

## 1.1.0 – 2023-09-08

### Added

-   Add-ons: Add general loading state for loading add-on resources (`ID2-4504`)
-   Add-ons: Allow add-ons to register docupike widgets (`ID2-4624`)
-   Object browser: Add combobox to object browser (`ID2-4505`)
-   Object browser: Enable user to add new object in Object Browser (`ID2-4515`)
-   Settings: Add Help section to menu (`ID2-3806`)
-   UI form fields: Allow user to resize textarea fields (`ID2-4525`)

### Changed

-   IPAM - Network Overview: Show network statistic for network itself or underlying networks (`ID2-4204`)
-   IPAM - Network Overview: Improve visual grouping of network page (`ID2-4500`)
-   UT 20210317 Find, Create, Connect: Implement Attribute Search on Object Details Page (`ID2-3393`)
-   UT - 20220321 Create and Connect Infrastructure: Make empty table state dynamic in finder (`ID2-3385`)

### Fixed

-   Categories and attributes: Correctly calculate overall costs per period for assigned objects (`ID2-4078`)
-   IPAM - Bugfixing: Add open object button to IP networking category (`ID2-4110`)
-   IPAM - Bugfixing: Fix and adjust colors in IPAM Map (`ID2-4142`)
-   Object details: Fix losing selected category on Object details page after reloading the page (`ID2-4583`)
-   Object search and filter: Fix search for categories and attributes on Object details page (`ID2-4498`)
-   Object search and filter: Clean up search index when object is removed (`ID2-4499`)
-   Reports Main Feature: Show only selected attributes in create/edit report modal (`ID2-4002`)
-   Settings: Fix retrieving user settings (`ID2-4611`)
-   UT 20220530 Find / create / connect objects: Avoid endless loop in search of object browser (`ID2-4130`)

## 1.0.7 – 2023-07-07

### Added

-   Add-ons: Add general loading state for loading add-on resources (`ID2-4504`)
-   Settings: Add Help section to menu (`ID2-3806`)

### Fixed

-   UI buttons: Allow user to click open object button (`ID2-4528`)
-   UI Dialog+ Improvements: Show error message when user fills dialog plus field with more than 500 chars (`ID2-4527`)

## 1.0.6 – 2023-05-24

### Added

-   Add-ons: Create an Add-on menu group (`ID2-4435`)

### Changed

-   UI replace table component: Refactor the current table footer pagination in the application with the table Pagination from the UI-Kit (`ID2-4034`)

### Fixed

-   Categories and attributes: Allow user to edit date fields (`ID2-4432`)
-   IPAM - Adding network: Do not create object when network creation fails (`ID2-4427`)
-   Product plans and feature sets: Remove obsolete upgrade banners (`ID2-4447`)
-   QA Launch-check: Allow user to select first and last possible date in range (`ID2-3876`)
-   Rights and permissions: Allow limited user to create objects in class (`ID2-4431`)
-   UI buttons: Fix radio selector position in single object browser (`ID2-4329`)
-   User Management: Remove API tokens when removing User (`ID2-4415`)
-   Validation options for custom attributes: Reset error state in multi-value table when field value is edited (`ID2-4375`)
-   Validation options in category builder: Do not move general validations to the bottom (`ID2-4370`)
-   Validation options in category builder: Keep user defined "greater/smaller than" values after saving (`ID2-4372`)

## 1.0.5 – 2023-04-26

### Changed

-   Product Plans and Feature Sets: Remove "Basic" plan from tariffs (`ID2-4404`)

### Fixed

-   Add-ons: Do not allow user to license add-on when mailer DSN is not set (`ID2-4347`)
-   Category Builder: Limit and shorten category names (`ID2-4399`)
-   Inline editing: Do not re-open inline edit when submitting with enter key (`ID2-4263`)
-   IPAM - Bugfixing: Fix missing banner on "New Ipv{4,6}" entry modal for networks (`ID2-4389`)
-   IPAM - Object CRUD: Do not redirect to Finder after deleting last subnetwork entry (`ID2-4108`)
-   IPAM - Object CRUD: Allow user to remove network during IP address creation (`ID2-4109`)
-   UI Dialog+ Improvements: Refactor single select dialog+ options modal (`ID2-4356`)
-   UI Form Field Pulldown: Allow user to save longer values in pulldown fields (`ID2-4361`)

## 1.0.4 – 2023-04-19

### Added

-   Category Builder: Inform User about unsaved changes in category builder (`ID2-4350`)
-   CSV Import (Fixing and Performance): Show object counter during csv import (`ID2-4337`)
-   Registration : Allow to set own initial password after registration (`ID2-4186`)
-   Registration : Create set initial password URLs and screens (`ID2-4250`)
-   Registration : Send activation e-mail to customer (`ID2-4288`)
-   Reports Improvements : Inform user about unsaved changes in Reports (`ID2-4331`)
-   UI Dialog+ Improvements: Allow editing of options in multi-select dialog+ attributes (`ID2-3795`)
-   UI Dialog+ Improvements: Add delete option to dialog+ modal (`ID2-4314`)

### Changed

-   CSV Import (Fixing and Performance): Improve CSV import performance (`ID2-4338`)
-   IPAM - Manage IP Address Table: Change default sorting to "ascending" in network & IP address table (`ID2-4178`)
-   Registration : Log in user when they set new password (`ID2-4289`)
-   Settings Refactoring: Add new table component to user area in settings (`ID2-3361`)
-   UI Form Field Pulldown: Adjust Inline Edit specific keyboard controls for Inline Form Field Single Select Pulldown (`ID2-1259`)
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
-   IPAM - Bugfixing: Show selected network section in view mode (`ID2-4340`)
-   IPAM - Bugfixing: Fix range selector for DHCP scoping (`ID2-4341`)
-   IPAM - Bugfixing: Show correct error message in network definition category (`ID2-4353`)
-   IPAM - Object Details Page: Add spacing between New Network Buttons in onboarding PopUp (`ID2-4345`)
-   Object search and filter: Do not show multiple recent filter tags in the searchbar dropdown (`ID2-3791`)
-   Presets: Make custom preset defined as default the default preset for selected class (`ID2-3737`)
-   Product Upgrade / Downgrade : Display correct success message when changing plan (`ID2-4274`)
-   QA Launch-check : Fix scroll container in saved filter modal (`ID2-3894`)
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
-   Product Upgrade / Downgrade : Let users understand what will they pay during upgrade of the plan (`ID2-4205`)

### Changed

-   Inline editing: Replace the inline edit component with the one from the UI-kit (`ID2-4032`)
-   UT 20210317 Find, Create, Connect: Add medium toolbar to categories header and buttons in object details page (`ID2-3395`)
-   UT 20210317 Find, Create, Connect: Add large toolbar to object details page (`ID2-3396`)

### Fixed

-   Bugs - Create new object : Allow to create objects with long names (`ID2-4160`)
-   Cloud 3rd Party Login: Re-direct to login with "Access denied" message after a disabled account passes 3rd party authentication  (`ID2-4008`)
-   History: Change wording of History actions (`ID2-3581`)
-   History: Show the documentation state for objects in History (`ID2-3742`)
-   IPAM - Bugfixing: Do not allow limited user to see overview of other sections (`ID2-4113`)
-   IPAM - Bugfixing: Allow to open in new tab action in network view in Firefox (`ID2-4180`)
-   IPAM - Bugfixing: Fix duplicate behavior for network objects (`ID2-4181`)
-   IPAM - Bugfixing: Add missing background on network segment dropdown (`ID2-4183`)
-   IPAM - Bugfixing: Allow to switch networks tab when statistics are hidden (`ID2-4208`)
-   IPAM - Edit Object Assignment / IP List: Show a single scope in bar graph  (`ID2-4189`)
-   Navigation: Make all objects class string bold again (`ID2-3416`)
-   Navigation: Make Inventory menu button responsive to close (`ID2-3666`)
-   Object ranking: Do not highlight pagination when object state is adjusted from Object details page (`ID2-3595`)
-   Object search and filter: Fix the layout when there is a validation error in date quick filters (`ID2-3727`)
-   Product Plans and Feature Sets: Change Date column of the Invoice table to use created date (`ID2-4201`)
-   QA Launch-check : Disable "Show Results" button until a valid filter is selected (`ID2-3861`)
-   QA Launch-check : Do not open calendar while quick filtering date attributes  (`ID2-3895`)
-   QA Launch-check : History filter fields should not move while selecting values (`ID2-3898`)
-   QA Launch-check : Fix focus state of button in restore object banner (`ID2-3900`)
-   Reports Improvements : Poor performance of the reports (`ID2-3872`)
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
-   IPAM - Bugfixing: Fix IPv6 DHCP map range selection (`ID2-4107`)
-   IPAM - Bugfixing: Do not allow to enter IP address not matching to Network via Edit function on Network view (`ID2-4164`)
-   IPAM - Bugfixing: Do not allow to change IP Address of the assigned IP Address via Edit button on Network view (`ID2-4165`)
-   IPAM - Manage IP Address Table: Offer an option to expand IP range (`ID2-3948`)
-   Object ranking: Allow user to remove object with linked location object (`ID2-4097`)
-   Types of custom attributes: Show error in multi-select pulldown in edit mode (`ID2-4086`)
-   Types of custom attributes: Fix overlapping of error in multiselect pulldown (`ID2-4150`)
-   Validation options for custom attributes: Do not allow to set empty value for required text attribute (`ID2-4149`)

## 1.0.0 – 2023-01-04

Initial release!

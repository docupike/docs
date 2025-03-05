# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

_tbd_

## 2.6.2 – 2025-03-05

### Fixed

-   Setup/update: Fix update for duplicated references (`ID2-5202`)

## 2.6.1 – 2025-02-11

### Changed

-   Update and maintenance information: Use mailer sender and reply to from environment variables (`ID2-5160`)

### Fixed

-   Login: Set correct tenant id when user logs in directly to ODP (`ID2-5185`)
-   Update and maintenance information: Improve stability of updates on bigger instances (`ID2-5190`)

## 2.6.0 – 2024-11-18

### Changed

-   Categories and attributes: Improve read mode of password field (`ID2-5165`)
-   Categories and attributes: Use URL Field type for Access -> Url attribute (`ID2-5164`)
-   Development/maintenance: Update symfony cache to be compatible with Redis 6.1.0 (`ID2-5180`)

### Fixed

-   Cloud 3rd Party Login: Fix return URL after successful OAuth auth (`ID2-5173`)

## 2.5.0 – 2024-08-14

### Added

-   UI Dialog+ Improvements: Add “Select all” Checkbox to MV Dialog+ Modal (`ID2-2495`)
-   Update and maintenance information: Show public messages on login to docupike (`ID2-5129`)
-   User Management: Manage users of existing user group (`ID2-4988`)
-   User Management: Manage role on a user details page (`ID2-4992`)

### Changed

-   Development/maintenance: Support PHP 8.3 for docupike (`ID2-4536`)
-   Location view: Show all objects in All objects of Location view (`ID2-5018`)
-   Location view: Add badge information to container objects in location tree with number of included objects (`ID2-4944`)
-   Update React to v18: Update "react-router-dom" to v6 (`ID2-3057`)
-   User Management: Manage user groups on a user details page (`ID2-4989`)

### Fixed

-   Category Builder: Fix updating options of properties (`ID2-5117`)
-   Development/maintenance: Messenger ram usage too high (`ID2-5125`)
-   Object ranking: Set last change when archiving object (`ID2-5042`)
-   Servereye integration: Deletion of object with many entries leads to errors (`ID2-5163`)
-   Setup/update: Fix update of the instances with dependent entries (`ID2-5166`)

## 2.4.0 – 2024-05-27

### Added

-   Condition Builder: Add an inline Condition builder to reports edit page (`ID2-5050`)
-   Condition Builder: Add "Quick filter" to Add conditions block of reports (`ID2-5049`)
-   Documentation of software and installations: Add documentation for software/OS classes (`ID2-5096`)
-   Reports can be shared: Implement Export Report as CSV API (`ID2-4958`)
-   Reports can be shared: Export Reports as CSV (`ID2-4905`)
-   User Management: Manage users of existing role (`ID2-4991`)

### Changed

-   User Management: Add multiple users to a role when creating a role (`ID2-4990`)

### Fixed

-   API: TextApi fails when request criteria contains not existing category (`ID2-5017`)
-   CMDB configuration: Usage details shows "no access" banner in case when user has tenant access (`ID2-4844`)
-   Improvements of IP networking: Adjust Category Domain do not change order of hidden attributes on category update (`ID2-4984`)
-   Multi-Tenancy: Fix unassignment of users on deletion of tenant (`ID2-5092`)
-   Reports Main Feature: Show error notification on saving report with errors (`ID2-5130`)

## 2.3.3 – 2024-04-29

### Fixed

-   Setup/update: Fix creation of custom properties on docupike update (`ID2-5119`)

## 2.3.2 – 2024-03-28

### Fixed

-   Setup/update: Update should fail on failing update models (`ID2-5091`)

## 2.3.1 – 2024-03-25

### Added

-   CMDB configuration: Use url parameter to select the class on CMDB manage class page (`ID2-5004`)
-   Edit: Check missing categories when changing class (`ID2-4886`)

### Changed

-   CMDB configuration: Change icon of class "City" (`ID2-4939`)
-   Create Entry: Place "Number of entries" on the bottom of the add entry modals (`ID2-4928`)
-   Create Entry: Make multi-creation of category entries configurable (`ID2-4950`)
-   Documents creator: Support like operation for SingleSelect, Dialog+, MultiDialog+, ObjectBrowser, MultiObjectBrowser fields (`ID2-5048`)
-   Edit: Change class of one or more objects (`ID2-4881`)
-   Edit: Change class for an object on the object details page (`ID2-4882`)
-   Edit: Disable inline editing of class (`ID2-5003`)
-   Improvements of IP networking: Swap IP Address and Network in IP network category (`ID2-4924`)
-   Improvements of IP networking: Add additional information in IP Address Browser (`ID2-4933`)
-   Improvements of IP networking: Manage DHCP Scopes on network details page (`ID2-4935`)
-   IPAM - Edit Object Assignment / IP List: Show user the next free IP address in a masked way (`ID2-4266`)
-   Navigation: Add collection pulldown to finder (`ID2-4923`)
-   Object search and filter: Use single select combobox for filters with single selection (`ID2-5035`)
-   Reports can be shared: Adjust layout of Report overview page (`ID2-4961`)
-   Reports can be shared: Adjust layout of Report details page (`ID2-4962`)

### Fixed

-   API: Support "Not supported" attribute types for object text API (`ID2-4985`)
-   Class and attribute favorites: The hint is overlapped with the pagination in ODP Favorites (`ID2-4776`)
-   docupike GDPR Add-on: Fix handling of assigning an empty process to organization (`ID2-5051`)
-   Improvements of IP networking: Fix handling of "Select next free IP address" after changes in IP networking category (`ID2-4930`)
-   IPAM - Network Overview: Correct network usage percentage wording (`ID2-4100`)
-   Metrics of users are collected: Fix creation of sessions by async batch with API key (`ID2-5012`)
-   Rights and permissions: Allow the user to save objects in the location permission (`ID2-4771`)

## 2.3.0 – 2024-02-05

### Added

-   Documents creator: Add "Custom Table" section to chapter (`ID2-4815`)
-   Documents creator: Show scheduled mailings of the selected document (`ID2-4826`)
-   Documents creator: Open/Access documents creator feature (`ID2-4845`)
-   Documents creator: Provide onboarding for new users (`ID2-4869`)
-   Documents creator: Rights to manage documents (`ID2-4871`)
-   Documents creator: Provide object text API (`ID2-4880`)
-   Documents creator: Create automation domain (`ID2-4884`)

### Changed

-   Create Entry: Change order of attributes in CPU New Entry Modal (`ID2-4929`)
-   Documents creator: Extract the Condition Selector from the Report conditions modal (`ID2-4878`)
-   Improvements of IP networking: Make IP Ranges more understandable on Network Details Page (`ID2-4941`)
-   Location view: Adjust sorting in location table to always show container objects on top (`ID2-4946`)
-   Product plans and feature sets: Improve Manage plan page (`ID2-4983`)
-   Reports UI is improved: Add "select all" to attribute selector (`ID2-4794`)

### Fixed

-   CMDB CRUD: Fix missing creator of CI objects (`ID2-4910`)
-   Documents creator: Prevent unfocusing searchbox in attribute selector (`ID2-4914`)
-   Multi-Tenancy: Sync tenants in selector on assigning/unassigning tenants (`ID2-4888`)
-   Object browser: Show new object in object browser (`ID2-4873`)

## 2.2.1 – 2024-01-26

### Fixed

-   Scalable SaaS services: Improve performance of references (`ID2-4964`)

## 2.2.0 – 2023-12-18

### Added

-   Add-ons: Be able to define Add-on rights in add-on (`ID2-4801`)
-   CMDB configuration: Show usage of classes through tenants in CMDB settings (`ID2-4761`)
-   CMDB configuration: Show usage of categories through tenants in CMDB settings (`ID2-4762`)
-   Metrics of users are collected: Expose metrics about objects per class (`ID2-2874`)
-   Metrics of users are collected: Expose metrics about events per categories (`ID2-2876`)
-   Metrics of users are collected: Expose metrics about users (`ID2-2877`)

### Changed

-   CMDB configuration: Adjust usage details for classes/categories to use tabs (`ID2-4792`)
-   CQRS: Add category information to entry events (`ID2-4780`)
-   Documents creator: Extract the Attribute Selector from Report attributes (`ID2-4875`)
-   Edit: Enable user always to be able to Save on Edit objects page (`ID2-4713`)
-   Edit: Preselect all objects in edit mask (`ID2-4752`)
-   Multi-Tenancy: See assigned tenants on user details page (`ID2-4784`)
-   Multi-Tenancy: Change default tenant on user details page (`ID2-4786`)
-   Multi-Tenancy: Unassign tenant(s) from user (`ID2-4787`)

### Fixed

-   Add-ons: Use actual state of the routes provided by add-ons (`ID2-4866`)
-   API: Do not keep persistent session for API-token requests (`ID2-4774`)
-   Categories and attributes: Allow to enter values in boolean fields (`ID2-4803`)
-   Multi-Tenancy: Fix scrolling of tenant selector (`ID2-4766`)
-   Multi-Tenancy: Deleting default tenant leads to no tenants (`ID2-4769`)
-   UI form fields: Allow to set time for custom datetime attribute (`ID2-4841`)
-   UI replace table component: Use backend sorting for permissions table (`ID2-4781`)

## 2.1.0 – 2023-10-27

### Added

-   API: Create async batch API to perform requests via messenger (`ID2-4773`)
-   Create Entry: Enable user to create multiple MV entries at once (`ID2-4621`)
-   Duplication of MV entries: Enable user to duplicate MV entries in Finder (`ID2-4659`)
-   Duplication of MV entries: Enable user to duplicate MV entries on Edit page (`ID2-4661`)

### Changed

-   UI replace table component: Use UI-kit table in Roles (`ID2-4618`)
-   UI replace table component: Use UI-kit table in Rights (`ID2-4619`)
-   UI replace table component: Use UI-kit table in Permissions (`ID2-4620`)

### Fixed

-   CMDB CRUD: Emit entry data set events only if something has changed (`ID2-4770`)
-   Finder: Prevent opening multiple context menus in finder (`ID2-4692`)
-   Finder: Fix double loading of the finder results (`ID2-4707`)
-   Multi-Tenancy: Fix tenant migration to not update removed users (`ID2-4759`)
-   Rights and permissions: Clean up rights on removal users/roles/groups (`ID2-4767`)

## 2.0.1 – 2023-10-17

### Fixed

-   Multi-Tenancy: Fix tenant migration to not update removed users (`ID2-4759`)

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

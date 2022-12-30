---
title: CSV import
description: Import data from a CSV file
lang: en
---

# CSV import

The CSV import allows you to upload and import any CSV files into docupike. CSV stands for "comma separated value".



## Requirements

- A CSV file must not be greater than 128MB in size.
- A CSV file should contain less than 250 rows.
- One object Class per CSV File.
- The right to Import.

## Step #1

In the toolbar you will find the `Import from CSV file` icon which opens the CSV import dialog.
This dialog guides you through the import process via six steps.
Here you are able to select and upload a valid CSV file. After a successful upload you can continue to step #2.

## Step #2

The second step allows you to define if a column header exists in your CSV file. Furthermore, you can specify if your CSV file uses `Semicolon` [;] or `Comma` [,] as separator.
A small preview allows you to review your settings.

## Step #3

At the third step you declare the `object class`. Only one class can be selected for each import.

## Step #4

During step 4 each column gets its own row in the mapping. Thus, each row of the CSV file can be linked to an attribute. After clicking on the `Add` button, the appropriate attribute can be selected from the extended dialog menu or its name can be entered directly into the search bar to have suitable attributes suggested.

Now you pick the corresponding attribute via the `radio button` and click save to confirm the selection. This way, each column is assigned until all assignments are complete. Assignments can be solved later. Columns without assignment will be ignored during the import.

## Step #5

Here you can optionally choose if you want to `update` already existing objects or only `create new objects`. When you want to update objects you should add one or more `identifiers` for matching existing objects by a qualified assigned attribute. Now you have to choose if you want to `keep` or `delete` existing values in docupike. At last you define if multi-value category entries are `added` or completely `replace` the existing content.

## Step #6

The last step displays a `preview` of the import mapping. If everything is in order you can `start the import`. Otherwise you can go back and change the necessary settings.

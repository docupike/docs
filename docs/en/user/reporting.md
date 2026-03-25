---
title: Report Manager
description: Reports of objects
lang: en
---

# Report Manager

A report allows you to compile documentation data filtered in a targeted manner. It is in many ways similar to the [finder's search and filter](finder/search-filters-and-reports.md) but it offers more power to combine conditions with the formatted output.

The report manager of i-doit up is the easy way to find the right answers. First, filter which objects should be displayed in the report. You can use any attribute for filtering. As a result, the filtered objects are processed in tabular form and it is up to you to define which attributes should be displayed in the columns.

!!! tip "A use case can be found [here](usecases/reports.md)."

## Columns

In the first section you define the output format of the report where you select the attributes that will be displayed later as columns in the report. On attributes that link to other objects you can find a `+` button at the end of the line. This enables you to build a chain of linked attribute information.

!!! info "Example"
    Let's say you want to report all company cars and their owners' addresses. You select the attributes `Vendor` and `Model` from the category `Model`. To get the contact addresses from their owners you first select the attribute `Name` from the category `Contact`. Then, you press the button `+` to select the attributes `Street address`, `City` and `Postcode` from the category `Address and contact`.

## Conditions

To narrow down the result set, you can define conditions in the second section. A condition always consists of an attribute, an operator and a value. Multiple conditions can be combined with logical `AND` or `OR` operators.

You choose an attribute that you want to match against a given value. The operator gives you some flexibility on how the condition should exactly be matched.

| Operator           | Description                                                                                    |
| ------------------ | ---------------------------------------------------------------------------------------------- |
| `is`               | Matches exactly against the given value; case insensitive                                      |
| `is not`           | Matches if the value is exactly not found; case insensitive                                    |
| `in list`          | Matches against a list of values                                                               |
| `not in list`      | Matches if the value is not in the list of given values                                        |
| `like`             | Matches against the text in the value, but with wildcards, e.g. `cd` matches against `abcdefg` |
| `not like`         | Matches if the value is not found, but with wildcards                                          |
| `earlier than`     | Matches if the point in time was earlier than the given value                                  |
| `not earlier than` | Matches if the point in time was not earlier than the given value                              |
| `later than`       | Matches if the point in time was later than the given value                                    |
| `not later than`   | Matches if the point in time was not later than the given value                                |
| `in range`         | Matches if the point in time was within a range                                                |

## Result

When you execute a report a table is shown with your selected attributes as table columns. The list of objects is filtered by your selected conditions. Each row in the table represents an object.

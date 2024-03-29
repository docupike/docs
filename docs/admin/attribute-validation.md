---
title: Attribute validation
description: Validations are additive. Logical conflicts in validations can prevent users from adding values to this attribute.
lang: en
---

# Attribute validation

A CMDB should link information and make it centrally available to departments and employees. When assets are recorded, a pre-defined level of quality should be achieved and maintained. Ideally, this is documented in a Configuration Management Plan (CMP). This could be a specific naming scheme according to which assets (objects) should be named in the CMDB. But also certain mandatory fields that have to be filled in when a new asset is created.

## General validations

### Mark as required. Field cannot be blank.

Mark the field as required and the field cannot be blank.

### Mark as unique. Any value given must be unique for this attribute.

Mark the field as unique. Any value specified must be unique for this attribute.

## Operator validations

Not all operators are available to all attribute types. Here you can specify **Minimum Length** and  **Maximum Length**, **Later than** and  **Earlier than**, **From** and  **To**, **Greater than** and   **Smaller than**, **Equal to** and  **Not equal to**, **From** and **To** are available for a set of attributes.

## Other validations

### Regular expression

Regular expressions offer many ways to customize category entries. To check regular expressions in advance, please use your favorite testing tool. Specifically, we use [PCRE](https://en.wikipedia.org/wiki/Perl_Compatible_Regular_Expressions) for PHP, for more information on pattern syntax, see the manual page [here](https://www.php.net/manual/en/reference.pcre.pattern.syntax.php). For example, to test syntax, use regex101 [here](https://regex101.com/).

---
title: Archive, delete, purge and restore
description: Archive, delete, purge and restore objects in i-doit
lang: en
---

# Archive, delete, purge and restore

Objects have different stages that define their stage in their documentation existence. The stages are `active`, `archived` and `deleted`:

-   Archiving objects puts them in the `archived` stage,
-   deleting objects put them in the `deleted` stage,
-   restoring objects puts them in the `active` stage and
-   purging objects completely removes them from the database.

!!! warning "Don't lose you data!"
    To purge an object removes it permanently and irrevocably from the database. A purge operation cannot be undone. Only admins can do this operation.

Objects in the `active` stage are newly created objects and anything that you actively work with.

Objects in the `archived` stage are objects that you do not actively work with anymore, but you want to keep them for documentary reasons. An example could be a server that is not being used anymore, but still physically kept because it is not depreciated in accounting.

Objects in the `deleted` stage are objects that you do not use anymore and do not want to use anymore for documentary reasons. You might have to keep them to preserve the record to be compliant with certain legal rules, certification standards or internal processes. An other reason could be that your administrator defined a security rule that only allows purging objects from the database after a certain amount of time.

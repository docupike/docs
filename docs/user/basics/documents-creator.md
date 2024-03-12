---
title: Documents Creator
description: Create user-friendly PDF documents
lang: en
---

# Documents Creator

The Documents Creator converts your documentation data into user-friendly PDF documents. This allows you to reach a diverse audience - from tech-savvy stakeholders to the less digitally fluent decision-makers.

The documents can serve as a documentation basis for audits, conformity checks and customer reporting.The Documents Creator is available in the submenu of "Reports" in the main navigation bar.

## Rights

You should check the [Rights](../../admin/rights-and-permissions.md) and alter them to fit your needs. The rights currently available include Download, Manage documents, and Manage mailing. Additionally, there is an option to assign All available Rights (including future updates).

## Design your documents

One size doesn't fit all, especially in the world of IT Asset Management. Different stakeholders have different needs. Customize your document with different chapters and sections and decide what elements of your IT asset data take center stage.

### Global documents

Global documents are available in all tenants and aim to fulfill the need to share documents. Whenever you want to populate a document with data from different tenants, global documents are the solution.

### Tenant documents

Tenant documents are designed to be only available for specific tenants. They cannot be shared or even viewed by unauthorized parties.

### Document settings

Each document needs to have a Document title and can have a description.

### Chapters

`Title page` and `Table of content` are the default Chapter, which can not be deleted but reordered. You can a add chapter via the `Add` button to organize your document.

#### Sections

To fill a chapter with data you can choose from a list of sections:

* `Object details`
* `Text`
* `Headline`
* `Custom Table`

The `Headline` is added by default. In the `Text` section you can use supported [Markdown](https://www.markdownguide.org/basic-syntax/) to build high quality documents. Also sections can be reordered or deleted.

!!! tip "Text editor"
    If you click on the `Text editor` button you can easily edit your text in the `Text editor` popup with a Toolbar and preview.

In the `Object details` section the attributes are displayed per row.
The `Custom Table` section displays the result like a table.´

When editing the `Objects shown in section` and defining conditions you can narrow down the result set. Also you define the displayed `Attributes`.

### Sending documents to the target group

Accelerate your communication: Instead of manually crafting and distributing documents, you can use automated mailings to swiftly and regularly compile the latest and most relevant information and send it to your audience.

### Mailings

Each entry needs a title, recipient(s) which can also be added by direct input, a subject and a message.
After that you can set a execution date and configure if the mailing should be done in an interval.
When you check `Repeat execution` you can select a `End date of execution` and an interval.

When the configuration is done you see the mailing list with all configured mailings.
Here you can alter a mailing, pause the mailing or check the `Logs of execution` for errors.

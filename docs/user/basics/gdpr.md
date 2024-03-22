---
title: Data protection
description: Create Data protection / General Data Protection Regulation
icon: :bootstrap-data-protection:
lang: en
---

# :bootstrap-data-protection: Data protection

The **General Data Protection Regulation (GDPR)** sets out detailed requirements for companies and organizations to collect, store and manage personal data. It applies to European organizations that process personal data of individuals in the EU, as well as organizations outside the EU that target individuals living in the EU. For more information visit [official Website](https://europa.eu/youreurope/business/dealing-with-customers/data-protection/data-protection-gdpr/index_en.htm) of the EU.

The Data protection addon is available for all **trial** users for 30 days.
It is fully available for **Premium** and **Pro** users.

Risks and measures need to be documented, too. Measures for the risks can then be stored in the organization. In addition, the status of the implementation of measures and a review can be viewed.
All [Classes](../basics/classes.md) that belong to **Data protection** are stored in the data protection [Collection](../basics/collections.md) which can be found in the [Finder](../finder/views-and-presets.md) menu.

## Rights

You should check the Rights and alter them to fit your needs. The rights currently available include Download, Manage documents, and Manage mailing. Additionally, there is an option to assign All available Rights (including future updates).

## Quick guide

In each section, the respective objects must be created and all information displayed via the **Actions** button must be filled in.
Basically, we distinguish between two organizational units that can be used to store your GDPR documentation,
One is **Organization** and the other is **Information Security Domain**. **Organizations** are usually the entire company or several companies for which you want to document information security, while **Information Security Domain** are sub-units, for example, if you have different information security requirements that are divided into different departments, such as administration and production, you want to make different documentation here.

### Processing activities

The aim of this section is to document all the necessary information about all processing activities. Create a **Process** class object and fill in the Categories **Processed data**, **Processing purpose and management** and if needed the **External processors**.
We want to answer these questions in this section:

- Why do we need this process?
- What data is included?
- Whose data we have used?
- Who can access this data?
- Has a data processing agreement been signed?

### Implemented measures (TOMs)

The aim of this section is to document all the necessary information about the Implemented measures. Create **Threat** class objects. Then create **Measure (TOM)** class objects and fill in the Category **Security measure**. After that we open the **Information security domain** object and assign the **Threat** in the **Risk management** category and add the **Measure** object in the **Measure Implementation status** category. When the status of the **Measure** has been reviewed, we also fill in the **Measure Implementation review** category data.
We want to answer these questions in this section:

- Which threads do we have?
- Which measures do we want to implement?
- What is the probability of occurrence?

[More detailed use case](../usecases/data-protection.md){ .md-button .md-button--primary }

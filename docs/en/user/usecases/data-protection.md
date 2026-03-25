---
title: Data protection use case
description: Create Data protection use case / General Data Protection Regulation use case
icon: :bootstrap-data-protection:
lang: en
---

# :bootstrap-data-protection: Data protection use case

The **Data protection** add-on can be found in the Navigation at **Inventory**.
The classes of the add-on can be found under `Finder → Data protection`. This is a collection that contains all the classes required for GDPR-compliant documentation.

The **Date protection** add-on provides two important areas, the **Processing activities** (data processing of information) and **Implemented measures** (implemented measures TOMS).

Let's start with the overview of the add-on. Essentially, we distinguish between two organizational units that can be used to carry out the GDPR documentation. One is **Organization** and the other is **Information Security Domain**. **Organization** are usually the entire company or several companies for which you want to document information security, while **Information Security Domain** are sub-units, for example, if you have different information security requirements that are divided into different departments, such as `Administration` and `Production`, you want to make different documentation here.

## Processing activities

The aim of this section is to document all the necessary information about all processing activities. Here we will create **Process** class object and fill in the Categories **Processed data**, **Processing purpose and management** and if needed the **External processors**.
We want to answer these questions in this section:

- Why do we need this process?
- What data is included?
- Whose data we have used?
- Who can access this data?
- Has a data processing agreement been signed?

First we need to create a new entry for **Processing activities**, in the opened mask we need to create a **Process** class object called `Newsletter`. After the creation link the object and finish the entry creation.This object is now linked in the **Processing activity**. The next step is to open the **Actions** via the button in front of the `Newsletter`, where we can see **Detail of** the documented object. **Processes data** determines which information is processed. **Processing purpose** and management documents why this data is collected. **External processors** documents the transfer of data to external parties.

### Processed data category

A new entry is created in the **Processed Data** category. There we specify what is being processed, for example `Sending emails`. Next, under **Data categories**, we enter the category of data to be processed, for example `Email addresses`. Also `First name` and `Last name`.
These are examples of **Data categories**; a scope can also be used here, for example `General data`.
We have now specified what is being processed. Under **Affected persons**, we now specify by whom the data is processed, for example by `Customers`.

Next, we document who can view this data in the **Organization** or **Information Security Domain**, for example a group of people called `Team Marketing`.
Now we define the **Legal basis** on which the data is processed, reasons must be given as to why personal data is processed.
There are predefined **Legal basis**, in this example we have a contract that states that we are allowed to send emails and we have also received consent via the website.
Further information can be stored under **Legal basis description**.

Next, **Is the data collected directly from the data subject?** asks where the data was obtained from, for example from a `Partner` or was this data collected by us. In our case, we received the data directly from the customer.
If the data was not collected by the customer, it must be explained under **Data origin** where the data comes from.
The last point **Transfer to third countries or international organizations** refers to whether the data is transferred to non-EU countries or to external parties, and where the data is transferred to is documented here.

### Processing purpose and management category

The reason is documented in the **Processing purpose and management** category, for example **I would like to send my customers a regular newsletter**.
Under **Deletion strategy** it is documented whether the data that is processed is also deleted. for example **If a customer cancels, the e-mail address will be deleted after 2 years**.
It is important to document when data is deleted if it is no longer used.

At **Protection requirement confidentiality** it is documented how important it is that the data is kept confidential. We would declare e-mail addresses as `Normal`, as e-mail addresses, for example, are not highly sensitive data.
At **Protection requirement availability**, we document how important the availability of the data is. For email addresses, we would declare `Normal`, as the addresses are only important for sending the newsletter.
**Protection requirement integrity** documents how important the correctness of the data is. We would also declare `Normal` for e-mail addresses, as the e-mail cannot be delivered if the data is incorrect.

### External processors category

An **External processor** can be an **Organization**, there is also an extra class for the link. We create an **External data processor** for example a service that sends the newsletter for us. We call this service for example **Ext Pro** and is a SaaS service that sends the e-mail and manages campaigns. In the object that has now been created, a data processing agreement is selected in the category under **Data processing agreement** and linked.

## Implemented measures (TOMs)

The aim of this section is to document all the necessary information about the Implemented measures. Here we will create **Threat**, **Measure (TOM)** class objects and fill in the Category **Security measure**.
In this section, we want to answer these questions:

- Which threads do we have?
- Which measures do we want to implement?
- What is the probability of occurrence?

First we need to create a new entry for **Implemented measures (TOMs)**, in the opened mask we need to create a new **Measure** class object called `Building insurance`. We do this because we want to manage risk, we assess what risks/threats we have, such as `Fire`, and what measures we take to counter them is a `Building insurance`. While creating the **Implemented measures (TOMs)** entry we also can specify the **Implementation date**, for example when we obtained the `Building insurance`. We also enter the **Implementation status**, for example **Implemented**.
In addition, a responsible person can be documented under **Implementation by**, if the Person is not yet documented you can create a new **Person** class object.

In the Action details, we can jump to all categories and document the necessary data.

### Risk management

The **Risk management** category is located in the **Information security domain** or **Organization** object class. Here we create and assign **Threat** class objects, like `Fire`. `Fire` is a **Threat** which we
assign to the `Building insurance` via the **Measures for adequate protection (Article 32 EU GDPR)**. The risk that the assessment levels provided here are `Normal`, `High` and `Very high`. `Very high` is not such a big risk in our region, so I would rate it as `Normal`. In the **Security objectives** I define what is affected if my building burns down, that is certainly the `Availability`, the confidentiality is not affected, the integrity of the data is not affected, unlinkability, intervenability and transparency are also not affected in this case, it is actually only about the `Availability`.

### Security measure

The **Security measure** category is located in the **Measure (TOM)** Class. Here we can document the **Category** attribute, which for `Building insurance` would be `Insurance`. Also we can provide **Implementation details** and **Reasons** for this **Measure (TOM)**. Here you can provide more **Implementation details** on how it is to be carried out. With whom you have insured the Building, what specifications you have for your individual measures at the location and also the reason why you are carrying out the measure.

### Measure implementation status

The **Measure implementation status** category is located in the **Information security domain** or **Organization** object class and can have multiple entries. Here you document information about the implementation status of the measure.
Like what is the actual status of the implementation, when was or will the measure implemented and by whom.

### Measure implementation review

The **Measure implementation review** category is located in the **Information security domain** or **Organization** object class and can have multiple entries. Here you document information when the implementation has been reviewed.
We fill in the **Review date**, who has done the review and the result of the review.

## Export or Preview the data protection protocol

You open the add-on via the `Inventory → Data protection` menu and click on the `Export PDF` or `Preview` button.
The `Preview` button will open the PDF preview in i-doit up and the `Export PDF` button will download the PDF file.

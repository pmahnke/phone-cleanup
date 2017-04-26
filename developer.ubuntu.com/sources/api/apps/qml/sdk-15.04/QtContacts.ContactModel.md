<a href="https://developer.ubuntu.com/" class="logo-ubuntu"><img src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/img/logos/logo-ubuntu-orange.svg" width="106" height="25" /> <span>developer</span></a>

-   [Jump to content](index.html#main-content)
-   [Desktop](https://developer.ubuntu.com/en/desktop/)
-   [Phone](https://developer.ubuntu.com/en/phone/)
-   [Core](https://developer.ubuntu.com/core)
-   [Community](https://developer.ubuntu.com/en/community/)
-   [Publish](https://developer.ubuntu.com/en/publish/)
-   [My Apps](https://myapps.developer.ubuntu.com/)

Search

<img src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/img/search-white.svg" alt="Search" height="28" />

-   [APIs](../../../../index.html) ›
-   [Apps](../../../index.html) ›
-   [QML](../../index.html) ›
-   [SDK 15.04](../index.html) ›
-   [QtContacts](../QtContacts/index.html) ›

<!-- -->

-   ContactModel

ContactModel
============

<span class="subtitle"></span>
The ContactModel element provides access to contacts from the contacts store. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[StorageLocation](index.html#StorageLocation-prop)**** : enumeration
-   ****[autoUpdate](index.html#autoUpdate-prop)**** : bool
-   ****[availableManagers](index.html#availableManagers-prop)**** : list&lt;string&gt;
-   ****[contacts](index.html#contacts-prop)**** : list&lt;Contact&gt;
-   ****[error](index.html#error-prop)**** : string
-   ****[fetchHint](index.html#fetchHint-prop)**** : FetchHint
-   ****[filter](index.html#filter-prop)**** : Filter
-   ****[manager](index.html#manager-prop)**** : string
-   ****[sortOrders](index.html#sortOrders-prop)**** : list&lt;SortOrder&gt;
-   ****[storageLocations](index.html#storageLocations-prop)**** : int

<span id="signals"></span>
Signals
-------

-   ****[contactsFetched](index.html#contactsFetched-signal)****(int *requestId*, list&lt;Contact&gt; *fetchedContacts*)
-   ****[storageLocationsChanged](index.html#storageLocationsChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   void ****[exportContacts](index.html#exportContacts-method)****(url *url*, list&lt;string&gt; *profiles*, list&lt;variant&gt; *declarativeContacts*)
-   int ****[fetchContacts](index.html#fetchContacts-method)****(list&lt;string&gt; *contactIds*)
-   void ****[importContacts](index.html#importContacts-method)****(url *url*, list&lt;string&gt; *profiles*)
-   ****[removeContact](index.html#removeContact-method)****(string *contactId*)
-   ****[removeContacts](index.html#removeContacts-method)****(list&lt;string&gt; *contactIds*)
-   ****[saveContact](index.html#saveContact-method)****(Contact *contact*, StorageLocation *storageLocation*)

<span id="details"></span>
Detailed Description
--------------------

This element is part of the **QtContacts** module.

[ContactModel](index.html) provides a model of contacts from the contacts store. The contents of the model can be specified with [filter](index.html#filter-prop), [sortOrders](index.html#sortOrders-prop) and [fetchHint](index.html#fetchHint-prop) properties. Whether the model is automatically updated when the store or [contacts](index.html#contacts-prop) changes, can be controlled with [ContactModel::autoUpdate](index.html#autoUpdate-prop) property.

There are two ways of accessing the contact data: via model by using views and delegates, or alternatively via [contacts](index.html#contacts-prop) list property. Of the two, the model access is preferred. Direct list access (i.e. non-model) is not guaranteed to be in order set by sortOrder.

At the moment the model roles provided by [ContactModel](index.html) are display, decoration and `contact`. Through the `contact` role can access any data provided by the Contact element.

**See also** RelationshipModel, Contact, and QContactManager.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="StorageLocation-prop"></span><span class="name">StorageLocation</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Defines the different storage locations for saving contacts and model population purposes.

-   ContactModel::UserDataStorage A storage location where user data is stored.
-   ContactModel::SystemStorage A storage location where system files are stored.

Depending on the backend implementation, the access rights for different storage locations might vary.

**See also** [ContactModel::storageLocations](index.html#storageLocations-prop) and [ContactModel::saveContact](index.html#saveContact-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoUpdate-prop"></span><span class="name">autoUpdate</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether or not the contact model should be updated automatically, default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="availableManagers-prop"></span><span class="name">availableManagers</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of available manager names. This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contacts-prop"></span><span class="name">contacts</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtContacts.Contact/index.html">Contact</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of contacts.

**See also** [Contact](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtContacts.qtcontacts-overview/#contact).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="error-prop"></span><span class="name">error</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the latest error code returned by the contact manager.

This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fetchHint-prop"></span><span class="name">fetchHint</span> : <span class="type"><a href="../QtContacts.FetchHint/index.html">FetchHint</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the fetch hint instance used by the contact model.

**See also** [FetchHint](../QtContacts.FetchHint/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="filter-prop"></span><span class="name">filter</span> : <span class="type"><a href="../QtContacts.Filter/index.html">Filter</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the filter instance used by the contact model.

**See also** [Filter](../QtContacts.Filter/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="manager-prop"></span><span class="name">manager</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the manager uri of the contact backend engine.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sortOrders-prop"></span><span class="name">sortOrders</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtContacts.SortOrder/index.html">SortOrder</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of sort orders used by the contacts model.

**See also** [SortOrder](../QtContacts.SortOrder/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="storageLocations-prop"></span><span class="name">storageLocations</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property indicates which storage location is used to populate the model.

Only one storage location can be used for each model.

Storage location is a backend specific feature. Some backends support it and some might just ignore it. If backend is having some specific requirements and they're not met, backend returns StorageLocationsNotExistingError.

**See also** [ContactModel::StorageLocation](index.html#StorageLocation-prop) and [ContactModel::saveContact](index.html#saveContact-method).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contactsFetched-signal"></span><span class="name">contactsFetched</span>(<span class="type">int</span> <em>requestId</em>, <span class="type">list</span>&lt;<span class="type"><a href="../QtContacts.Contact/index.html">Contact</a></span>&gt; <em>fetchedContacts</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted, when a contact fetch request is finished.

**See also** [ContactModel::fetchContacts](index.html#fetchContacts-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="storageLocationsChanged-signal"></span><span class="name">storageLocationsChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted, when [ContactModel::storageLocations](index.html#storageLocations-prop) property changes.

**See also** [ContactModel::storageLocations](index.html#storageLocations-prop).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exportContacts-method"></span><span class="type">void</span> <span class="name">exportContacts</span>(<span class="type">url</span> <em>url</em>, <span class="type">list</span>&lt;<span class="type">string</span>&gt; <em>profiles</em>, <span class="type">list</span>&lt;<span class="type">variant</span>&gt; <em>declarativeContacts</em>)</p></td>
</tr>
</tbody>
</table>

Export all contacts of this model into a vcard file to the given *url* by optional *profiles*. The optional *declarativeContacts* list can be used to export an arbitrary list of QDeclarativeContact objects not necessarily belonging to the data set of this model. At the moment only the local file url is supported in export method. Also, only one export operation can be active at a time. Supported profiles are:

-   "Sync" exports contacts in sync mode, currently, this is the same as passing in an empty list, and is generally what you want.
-   "Backup" exports contacts in backup mode, this will add non-standard properties to the generated vCard to try to save every detail of the contacts. Only use this if the vCard is going to be imported using the backup profile. \#include "moc\_qdeclarativecontactmodel\_p.cpp"

**See also** QVersitContactHandlerFactory, QVersitContactHandlerFactory::ProfileSync(), and QVersitContactHandlerFactory::ProfileBackup().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fetchContacts-method"></span><span class="type">int</span> <span class="name">fetchContacts</span>(<span class="type">list</span>&lt;<span class="type">string</span>&gt; <em>contactIds</em>)</p></td>
</tr>
</tbody>
</table>

Starts a request to fetch contacts by the given *contactIds*, and returns the unique ID of this request. -1 is returned if the request can't be started.

Note that the contacts fetched won't be added to the model, but can be accessed through the [contactsFetched](index.html#contactsFetched-signal) signal handler.

**See also** [ContactModel::contactsFetched](index.html#contactsFetched-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="importContacts-method"></span><span class="type">void</span> <span class="name">importContacts</span>(<span class="type">url</span> <em>url</em>, <span class="type">list</span>&lt;<span class="type">string</span>&gt; <em>profiles</em>)</p></td>
</tr>
</tbody>
</table>

Import contacts from a vcard by the given *url* and optional *profiles*. Only one import operation can be active at a time. Supported profiles are:

-   "Sync" Imports contacts in sync mode, currently, this is the same as passing in an empty list, and is generally what you want.
-   "Backup" imports contacts in backup mode, use this mode if the vCard was generated by exporting in backup mode.

**See also** QVersitContactHandlerFactory, QVersitContactHandlerFactory::ProfileSync(), and QVersitContactHandlerFactory::ProfileBackup().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeContact-method"></span><span class="name">removeContact</span>(<span class="type">string</span> <em>contactId</em>)</p></td>
</tr>
</tbody>
</table>

Remove the contact from the contacts store by given *contactId*. After removing a contact it is not possible to save it again.

**See also** [Contact::contactId](../QtContacts.Contact/index.html#contactId-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeContacts-method"></span><span class="name">removeContacts</span>(<span class="type">list</span>&lt;<span class="type">string</span>&gt; <em>contactIds</em>)</p></td>
</tr>
</tbody>
</table>

Remove the list of contacts from the contacts store by given *contactIds*.

**See also** [Contact::contactId](../QtContacts.Contact/index.html#contactId-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="saveContact-method"></span><span class="name">saveContact</span>(<span class="type"><a href="../QtContacts.Contact/index.html">Contact</a></span> <em>contact</em>, <span class="type"><a href="index.html#StorageLocation-prop">StorageLocation</a></span> <em>storageLocation</em> = UserDataStorage)</p></td>
</tr>
</tbody>
</table>

Save the given *contact* into the contacts backend.

The location for storing the contact can be defined with *storageLocation* for new contacts. When the contact is updated, ie saved again, *storageLocation* is ignored and the contact is saved to the same location as it were before.

Once saved successfully, the dirty flags of this contact will be reset.

**See also** [Contact::modified](../QtContacts.Contact/index.html#modified-prop).

[Back to top](index.html#)

-   [Desktop](https://developer.ubuntu.com/en/desktop/)
    ---------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/desktop/)
    -   [Get started](http://snapcraft.io/?utm_source=developer.ubuntu.com&utm_medium=devportal&utm_term=snaps%20snapcraft%20desktop&utm_content=menu&utm_campaign=duc_snappers)
    -   [Examples](https://github.com/ubuntu/snappy-playpen)

-   [Phone](https://developer.ubuntu.com/en/phone/)
    -----------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/phone/)
    -   [Scopes](https://developer.ubuntu.com/en/phone/scopes/)
    -   [Apps](https://developer.ubuntu.com/en/phone/apps/)
    -   [Web Apps](https://developer.ubuntu.com/en/phone/web/)
    -   [Platform](https://developer.ubuntu.com/en/phone/platform/)
    -   [Devices](https://developer.ubuntu.com/en/phone/devices/)

-   [Core](https://developer.ubuntu.com/core)
    -----------------------------------------

    -   [Overview](https://developer.ubuntu.com/core)
    -   [Get started](https://developer.ubuntu.com/core/get-started)
    -   [Tutorials](https://developer.ubuntu.com/core/tutorials)
    -   [Examples](https://developer.ubuntu.com/core/examples)
    -   [Publish and distribute](https://developer.ubuntu.com/core/publish-and-distribute)
    -   [Documentation](https://developer.ubuntu.com/core/documentation)
    -   [Troubleshooting](https://developer.ubuntu.com/core/troubleshooting)

-   [Community](https://developer.ubuntu.com/en/community/)
    -------------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/community/)
    -   [App development training](https://developer.ubuntu.com/en/community/training/)
    -   [Core apps](https://developer.ubuntu.com/en/community/core-apps/)
    -   [Blog](https://developer.ubuntu.com/en/community/blog/)

-   [Publish](https://developer.ubuntu.com/en/publish/)
    ---------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/publish/)
    -   [Application states](https://developer.ubuntu.com/en/publish/application-states/)
    -   [Packaging click apps](https://developer.ubuntu.com/en/publish/packaging-click-apps/)
    -   [Creating a good icon](https://developer.ubuntu.com/en/publish/creating-a-good-icon/)
    -   [Web](https://developer.ubuntu.com/en/publish/web/)
    -   [Security policy groups](https://developer.ubuntu.com/en/publish/security-policy-groups/)
    -   [Choosing a license](https://developer.ubuntu.com/en/publish/choosing-a-license/)
    -   [Other forms of submitting apps](https://developer.ubuntu.com/en/publish/other-forms-of-submitting-apps/)
    -   [Scopes](https://developer.ubuntu.com/en/publish/scopes/)

-   View in:
    --------

    -   [English](index.html "Change to language: English")
    -   [Simplified Chinese](index.html "Change to language: Simplified Chinese")

-   [Download](http://ubuntu.com/download/)
    ---------------------------------------

    -   [Overview](http://ubuntu.com/download)
    -   [Cloud](http://ubuntu.com/download/cloud)
    -   [Server](http://ubuntu.com/download/server)
    -   [Desktop](http://ubuntu.com/download/desktop)
    -   [Ubuntu Kylin](http://ubuntu.com/download/ubuntu-kylin)
    -   [Alternative downloads](http://ubuntu.com/download/alternative-downloads)

-   [Support](http://ubuntu.com/support/)
    -------------------------------------

    -   [Overview](http://ubuntu.com/support)
    -   [Security notices](http://www.ubuntu.com/usn/)

-   [About](http://ubuntu.com/about/)
    ---------------------------------

    -   [About Ubuntu](http://ubuntu.com/about/about-ubuntu)
    -   [Careers](http://www.canonical.com/careers)
    -   [Canonical and Ubuntu](http://ubuntu.com/about/canonical-and-ubuntu)
    -   [Contact us](http://ubuntu.com/about/contact-us)
    -   [Canonical news feed](http://insights.ubuntu.com/feed/)

© 2015 Canonical Ltd. Ubuntu and Canonical are registered trademarks of Canonical Ltd.

-   [Legal information](http://www.ubuntu.com/legal)
-   [Report a bug on this site](https://bugs.launchpad.net/developer-ubuntu-com/)

<span class="accessibility-aid">[Go to the top of the page](index.html#)</span>

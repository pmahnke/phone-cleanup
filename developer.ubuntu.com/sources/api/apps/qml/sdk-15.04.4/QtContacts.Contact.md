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
-   [SDK 15.04.4](../index.html) ›
-   [QtContacts](../QtContacts/index.html) ›

<!-- -->

-   Contact

Contact
=======

<span class="subtitle"></span>
The Contact element represents an addressbook contact. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[address](index.html#address-prop)**** : Address
-   ****[addresses](index.html#addresses-prop)**** : list&lt;Address&gt;
-   ****[anniversary](index.html#anniversary-prop)**** : Anniversary
-   ****[avatar](index.html#avatar-prop)**** : Avatar
-   ****[birthday](index.html#birthday-prop)**** : Birthday
-   ****[contactDetails](index.html#contactDetails-prop)**** : list&lt;ContactDetail&gt;
-   ****[contactId](index.html#contactId-prop)**** : int
-   ****[displayLabel](index.html#displayLabel-prop)**** : DisplayLabel
-   ****[email](index.html#email-prop)**** : EmailAddress
-   ****[emails](index.html#emails-prop)**** : list&lt;EmailAddress&gt;
-   ****[extendedDetail](index.html#extendedDetail-prop)**** : ExtendedDetail
-   ****[extendedDetails](index.html#extendedDetails-prop)**** : list&lt;ExtendedDetail&gt;
-   ****[family](index.html#family-prop)**** : Family
-   ****[favorite](index.html#favorite-prop)**** : Favorite
-   ****[gender](index.html#gender-prop)**** : Gender
-   ****[geolocation](index.html#geolocation-prop)**** : GeoLocation
-   ****[globalPresence](index.html#globalPresence-prop)**** : GlobalPresence
-   ****[guid](index.html#guid-prop)**** : Guid
-   ****[hobby](index.html#hobby-prop)**** : Hobby
-   ****[manager](index.html#manager-prop)**** : string
-   ****[modified](index.html#modified-prop)**** : bool
-   ****[name](index.html#name-prop)**** : Name
-   ****[nickname](index.html#nickname-prop)**** : Nickname
-   ****[note](index.html#note-prop)**** : Note
-   ****[onlineAccount](index.html#onlineAccount-prop)**** : OnlineAccount
-   ****[organization](index.html#organization-prop)**** : Organization
-   ****[organizations](index.html#organizations-prop)**** : list&lt;Organization&gt;
-   ****[phoneNumber](index.html#phoneNumber-prop)**** : PhoneNumber
-   ****[phoneNumbers](index.html#phoneNumbers-prop)**** : list&lt;PhoneNumber&gt;
-   ****[presence](index.html#presence-prop)**** : Presence
-   ****[ringtone](index.html#ringtone-prop)**** : Ringtone
-   ****[syncTarget](index.html#syncTarget-prop)**** : SyncTarget
-   ****[tag](index.html#tag-prop)**** : Tag
-   ****[timestamp](index.html#timestamp-prop)**** : Timestamp
-   ****[type](index.html#type-prop)**** : enumeration
-   ****[url](index.html#url-prop)**** : Url
-   ****[urls](index.html#urls-prop)**** : list&lt;Url&gt;
-   ****[version](index.html#version-prop)**** : Version

<span id="methods"></span>
Methods
-------

-   ****[addDetail](index.html#addDetail-method)****(detail)
-   ****[clearDetails](index.html#clearDetails-method)****()
-   ****[isPreferredDetail](index.html#isPreferredDetail-method)****(actionName, detail)
-   ****[preferredDetail](index.html#preferredDetail-method)****(actionName, detail)
-   ****[removeDetail](index.html#removeDetail-method)****(detail)
-   ****[save](index.html#save-method)****()
-   ****[setPreferredDetail](index.html#setPreferredDetail-method)****(actionName, detail)

<span id="details"></span>
Detailed Description
--------------------

The Contact element is part of the **QtContacts** module.

A Contact object has a collection of details (like a name, phone numbers and email addresses). Each detail (which can have multiple fields) is stored in an appropriate subclass of [ContactDetail](../QtContacts.ContactDetail/index.html), and the Contact allows retrieving these details in various ways.

If some of the contact details are not unique details, all of this type of detail values can be accessed by the property with the name in plural. For example, if there are 3 phone numbers stored in a contact, they can be accessed by contact.[phoneNumbers](index.html#phoneNumbers-prop) property, which holds a list of all [PhoneNumber](../QtContacts.PhoneNumber/index.html) details. If a contact does not contain a detail of particular type, the value of the corresponding singular property (e.g. [phoneNumber](index.html#phoneNumber-prop)) in undefined and the plural (e.g. [phoneNumbers](index.html#phoneNumbers-prop)) is empty. The list of properties which support multiple detail instances depends on the contact engine implementations.

**See also** QContact.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="address-prop"></span><span class="name">address</span> : <span class="type"><a href="../QtContacts.Address/index.html">Address</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the address detail of the Contact object. In case a contact has several addresses then the first one is returned.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addresses-prop"></span><span class="name">addresses</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtContacts.Address/index.html">Address</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the address details of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="anniversary-prop"></span><span class="name">anniversary</span> : <span class="type"><a href="../QtContacts.Anniversary/index.html">Anniversary</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the anniversary detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="avatar-prop"></span><span class="name">avatar</span> : <span class="type"><a href="../QtContacts.Avatar/index.html">Avatar</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the avatar detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="birthday-prop"></span><span class="name">birthday</span> : <span class="type"><a href="../QtContacts.Birthday/index.html">Birthday</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the birthday detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contactDetails-prop"></span><span class="name">contactDetails</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtContacts.ContactDetail/index.html">ContactDetail</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of all the details that the contact has.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contactId-prop"></span><span class="name">contactId</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the id of the Contact object. This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="displayLabel-prop"></span><span class="name">displayLabel</span> : <span class="type"><a href="../QtContacts.DisplayLabel/index.html">DisplayLabel</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the displayLabel detail of the Contact object. display label is the one which gets displayed when a contact is created as per versit doc specs this is a "FN" property

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="email-prop"></span><span class="name">email</span> : <span class="type"><a href="../QtContacts.EmailAddress/index.html">EmailAddress</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the email address detail of the Contact object. In case a contact has several email addresses then the first one is returned.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="emails-prop"></span><span class="name">emails</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtContacts.EmailAddress/index.html">EmailAddress</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the email address details of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="extendedDetail-prop"></span><span class="name">extendedDetail</span> : <span class="type"><a href="../QtContacts.ExtendedDetail/index.html">ExtendedDetail</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the extended detail of the Contact object. In case a contact has several extended details then the first one is returned.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="extendedDetails-prop"></span><span class="name">extendedDetails</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtContacts.ExtendedDetail/index.html">ExtendedDetail</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the extended details of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="family-prop"></span><span class="name">family</span> : <span class="type"><a href="../QtContacts.Family/index.html">Family</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the family detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="favorite-prop"></span><span class="name">favorite</span> : <span class="type"><a href="../QtContacts.Favorite/index.html">Favorite</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the favorite detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="gender-prop"></span><span class="name">gender</span> : <span class="type"><a href="../QtContacts.Gender/index.html">Gender</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the gender detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="geolocation-prop"></span><span class="name">geolocation</span> : <span class="type"><a href="../QtContacts.GeoLocation/index.html">GeoLocation</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the geolocation detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="globalPresence-prop"></span><span class="name">globalPresence</span> : <span class="type"><a href="../QtContacts.GlobalPresence/index.html">GlobalPresence</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the globalPresence detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="guid-prop"></span><span class="name">guid</span> : <span class="type"><a href="../QtContacts.Guid/index.html">Guid</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the guid detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hobby-prop"></span><span class="name">hobby</span> : <span class="type"><a href="../QtContacts.Hobby/index.html">Hobby</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the hobby detail of the Contact object.

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

This property holds the manager name which the Contact object comes from.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="modified-prop"></span><span class="name">modified</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds the dirty flag of the Contact object. If the Contact has been changed, returns true, otherwise returns false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type"><a href="../QtContacts.Name/index.html">Name</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the name detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="nickname-prop"></span><span class="name">nickname</span> : <span class="type"><a href="../QtContacts.Nickname/index.html">Nickname</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the nickname detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="note-prop"></span><span class="name">note</span> : <span class="type"><a href="../QtContacts.Note/index.html">Note</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the note detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onlineAccount-prop"></span><span class="name">onlineAccount</span> : <span class="type"><a href="../QtContacts.OnlineAccount/index.html">OnlineAccount</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the onlineAccount detail of the Contact object. In case a contact has several accounts then the first one is returned.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="organization-prop"></span><span class="name">organization</span> : <span class="type"><a href="../QtContacts.Organization/index.html">Organization</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the organization detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="organizations-prop"></span><span class="name">organizations</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtContacts.Organization/index.html">Organization</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the organization details of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="phoneNumber-prop"></span><span class="name">phoneNumber</span> : <span class="type"><a href="../QtContacts.PhoneNumber/index.html">PhoneNumber</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the phone number detail of the Contact object. In case a contact has several numbers then the first one is returned.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="phoneNumbers-prop"></span><span class="name">phoneNumbers</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtContacts.PhoneNumber/index.html">PhoneNumber</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the phone number details of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="presence-prop"></span><span class="name">presence</span> : <span class="type"><a href="../QtContacts.Presence/index.html">Presence</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the presence detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ringtone-prop"></span><span class="name">ringtone</span> : <span class="type"><a href="../QtContacts.Ringtone/index.html">Ringtone</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the ringtone detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="syncTarget-prop"></span><span class="name">syncTarget</span> : <span class="type"><a href="../QtContacts.SyncTarget/index.html">SyncTarget</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the syncTarget detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tag-prop"></span><span class="name">tag</span> : <span class="type"><a href="../QtContacts.Tag/index.html">Tag</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the tag detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="timestamp-prop"></span><span class="name">timestamp</span> : <span class="type"><a href="../QtContacts.Timestamp/index.html">Timestamp</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the timestamp detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="type-prop"></span><span class="name">type</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds type of the Contact, the value can be one of:

-   Contact.Contact
-   Contact.Group

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="url-prop"></span><span class="name">url</span> : <span class="type"><a href="../QtContacts.Url/index.html">Url</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the url detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="urls-prop"></span><span class="name">urls</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtContacts.Url/index.html">Url</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the url details of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="version-prop"></span><span class="name">version</span> : <span class="type">Version</span></p></td>
</tr>
</tbody>
</table>

This property holds the version detail of the Contact object.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addDetail-method"></span><span class="name">addDetail</span>(<span class="type">detail</span>)</p></td>
</tr>
</tbody>
</table>

Adds the given contact *detail* to the contact, returns true if successful, otherwise returns false.

Note: If the *detail* has been added into the same contact before, this operation will be ignored, so if you want to add a *detail* multiple times, the *detail* should be copied before calling this function.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clearDetails-method"></span><span class="name">clearDetails</span>()</p></td>
</tr>
</tbody>
</table>

Remove all detail objects in this contact.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isPreferredDetail-method"></span><span class="name">isPreferredDetail</span>(<span class="type">actionName</span>, <span class="type">detail</span>)</p></td>
</tr>
</tbody>
</table>

Returns true if the given *detail* is a preferred detail for the given *actionName*, or for any action if the *actionName* is empty.

**See also** [preferredDetail()](index.html#preferredDetail-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="preferredDetail-method"></span><span class="name">preferredDetail</span>(<span class="type">actionName</span>, <span class="type">detail</span>)</p></td>
</tr>
</tbody>
</table>

Returns the preferred detail for a given *actionName*.

If the *actionName* is empty, or there is no preference recorded for the supplied *actionName*, returns null.

**See also** preferredDetails().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeDetail-method"></span><span class="name">removeDetail</span>(<span class="type">detail</span>)</p></td>
</tr>
</tbody>
</table>

Removes the given contact *detail* from the contact, returns true if successful, otherwise returns false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="save-method"></span><span class="name">save</span>()</p></td>
</tr>
</tbody>
</table>

Saves this Contact if the contact has been modified.

**See also** [Contact::modified](index.html#modified-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setPreferredDetail-method"></span><span class="name">setPreferredDetail</span>(<span class="type">actionName</span>, <span class="type">detail</span>)</p></td>
</tr>
</tbody>
</table>

Set a particular detail (*preferredDetail*) as the preferred detail for any actions with the given *actionName*.

The *preferredDetail* object must exist in this object, and the *actionName* cannot be empty.

Returns true if the preference could be recorded, and false otherwise.

**See also** [preferredDetail()](index.html#preferredDetail-method).

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

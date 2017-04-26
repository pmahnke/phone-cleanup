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
-   [SDK 15.04.1](../index.html) ›
-   [QtOrganizer](../QtOrganizer/index.html) ›

<!-- -->

-   OrganizerItem

OrganizerItem
=============

<span class="subtitle"></span>
The OrganizerItem element represents the in-memory version of a organizer item. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[collectionId](index.html#collectionId-prop)**** : string
-   ****[description](index.html#description-prop)**** : string
-   ****[displayLabel](index.html#displayLabel-prop)**** : string
-   ****[guid](index.html#guid-prop)**** : string
-   ****[itemDetails](index.html#itemDetails-prop)**** : list&lt;Detail&gt;
-   ****[itemId](index.html#itemId-prop)**** : string
-   ****[itemType](index.html#itemType-prop)**** : enum
-   ****[manager](index.html#manager-prop)**** : string
-   ****[modified](index.html#modified-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[onItemChanged](index.html#onItemChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[clearDetails](index.html#clearDetails-method)****()
-   Detail ****[detail](index.html#detail-method)****(type)
-   list&lt;Detail&gt; ****[details](index.html#details-method)****(type)
-   void ****[removeDetail](index.html#removeDetail-method)****(detail)
-   ****[save](index.html#save-method)****()
-   void ****[setDetail](index.html#setDetail-method)****(detail)

<span id="details"></span>
Detailed Description
--------------------

A [OrganizerItem](index.html) has a number of mandatory details. Different subclasses of [OrganizerItem](index.html) (i.e., Event, [EventOccurrence](../QtOrganizer.EventOccurrence/index.html), Journal, Todo, [TodoOccurrence](../QtOrganizer.TodoOccurrence/index.html), Note) may have more mandatory details.

Most frequently-used details can also be accessed through convenient properties, e.g. [displayLabel](index.html#displayLabel-prop), while all details can be accessed through [detail()](index.html#detail-method), [details()](index.html#details-method), saveDetail(), among others.

**See also** Event, EventOccurrence, Journal, Todo, TodoOccurrence, Note, QOrganizerManager, and QOrganizerItem.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="collectionId-prop"></span><span class="name">collectionId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the id of collection where the item belongs to.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="description-prop"></span><span class="name">description</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the description text of the organizer item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="displayLabel-prop"></span><span class="name">displayLabel</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the display label of the organizer item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="guid-prop"></span><span class="name">guid</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the GUID string of the organizer item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemDetails-prop"></span><span class="name">itemDetails</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtOrganizer.Detail/index.html">Detail</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the details of the [OrganizerItem](index.html) object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemId-prop"></span><span class="name">itemId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the id of the [OrganizerItem](index.html) object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemType-prop"></span><span class="name">itemType</span> : <span class="type">enum</span></p></td>
</tr>
</tbody>
</table>

This property holds the type of the [OrganizerItem](index.html) object.

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

This property holds the manager uri which the [OrganizerItem](index.html) object comes from.

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

This property holds the dirty flag of the [OrganizerItem](index.html) object.

**See also** [save](index.html#save-method).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onItemChanged-signal"></span><span class="name">onItemChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted, when any of the [OrganizerItem](index.html)'s or child element's (like Event, Todo etc) properties have been changed.

Method Documentation
--------------------

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

Removes all details from the organizer item.

**See also** [removeDetail](index.html#removeDetail-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="detail-method"></span><span class="type"><a href="../QtOrganizer.Detail/index.html">Detail</a></span> <span class="name">detail</span>(<span class="type">type</span>)</p></td>
</tr>
</tbody>
</table>

Returns the first detail stored in the organizer item with the given *type*.

**See also** [Detail::type](../QtOrganizer.Detail/index.html#type-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="details-method"></span><span class="type">list</span>&lt;<span class="type"><a href="../QtOrganizer.Detail/index.html">Detail</a></span>&gt; <span class="name">details</span>(<span class="type">type</span>)</p></td>
</tr>
</tbody>
</table>

Returns all the details stored in the organizer item with the given *type*.

**See also** [Detail::type](../QtOrganizer.Detail/index.html#type-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeDetail-method"></span><span class="type">void</span> <span class="name">removeDetail</span>(<span class="type"><a href="index.html#detail-method">detail</a></span>)</p></td>
</tr>
</tbody>
</table>

Removes given *detail* from the organizer item.

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

Saves this [OrganizerItem](index.html) if the item has been modified.

**See also** [modified](index.html#modified-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setDetail-method"></span><span class="type">void</span> <span class="name">setDetail</span>(<span class="type"><a href="index.html#detail-method">detail</a></span>)</p></td>
</tr>
</tbody>
</table>

Saves the given *detail* in the organizer item, and sets its id.

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

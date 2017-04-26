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
-   [QtOrganizer](../QtOrganizer/index.html) ›

<!-- -->

-   Detail

Detail
======

<span class="subtitle"></span>
The Detail element represents a single, complete detail about a organizer item. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[type](index.html#type-prop)**** : enumeration

<span id="signals"></span>
Signals
-------

-   ****[onDetailChanged](index.html#onDetailChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   bool ****[removeValue](index.html#removeValue-method)****(field)
-   bool ****[setValue](index.html#setValue-method)****(field, value)
-   variant ****[value](index.html#value-method)****(field)

<span id="details"></span>
Detailed Description
--------------------

**See also** QOrganizerItemDetail.

Property Documentation
----------------------

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

This property holds the type of the detail and is read only. It can be one of:

-   Detail.Undefined
-   Detail.Classification
-   Detail.Comment
-   Detail.Description
-   Detail.[DisplayLabel](../QtOrganizer.DisplayLabel/index.html)
-   Detail.[ItemType](../QtOrganizer.ItemType/index.html)
-   Detail.Guid
-   Detail.Location
-   Detail.Parent
-   Detail.Priority
-   Detail.Recurrence
-   Detail.Tag
-   Detail.Timestamp
-   Detail.Version
-   Detail.Reminder
-   Detail.[AudibleReminder](../QtOrganizer.AudibleReminder/index.html)
-   Detail.[EmailReminder](../QtOrganizer.EmailReminder/index.html)
-   Detail.[VisualReminder](../QtOrganizer.VisualReminder/index.html)
-   Detail.[ExtendedDetail](../QtOrganizer.ExtendedDetail/index.html)
-   Detail.[EventAttendee](../QtOrganizer.EventAttendee/index.html)
-   Detail.[EventRsvp](../QtOrganizer.EventRsvp/index.html)
-   Detail.[EventTime](../QtOrganizer.EventTime/index.html)
-   Detail.[JournalTime](../QtOrganizer.JournalTime/index.html)
-   Detail.[TodoTime](../QtOrganizer.TodoTime/index.html)
-   Detail.[TodoProgress](../QtOrganizer.TodoProgress/index.html)

**See also** [Classification](../QtOrganizer.Classification/index.html), [Comment](../QtOrganizer.Comment/index.html), [Description](../QtOrganizer.Description/index.html), [DisplayLabel](../QtOrganizer.DisplayLabel/index.html), [ItemType](../QtOrganizer.ItemType/index.html), [Guid](../QtOrganizer.Guid/index.html), [Location](../QtOrganizer.Location/index.html), [Parent](../QtOrganizer.Parent/index.html), [Priority](../QtOrganizer.Priority/index.html), [Recurrence](../QtOrganizer.Recurrence/index.html), [Tag](../QtOrganizer.Tag/index.html), [Timestamp](../QtOrganizer.Timestamp/index.html), [Version](../QtOrganizer.Version/index.html), [Reminder](../QtOrganizer.Reminder/index.html), [AudibleReminder](../QtOrganizer.AudibleReminder/index.html), [EmailReminder](../QtOrganizer.EmailReminder/index.html), [VisualReminder](../QtOrganizer.VisualReminder/index.html), [ExtendedDetail](../QtOrganizer.ExtendedDetail/index.html), [EventAttendee](../QtOrganizer.EventAttendee/index.html), [EventRsvp](../QtOrganizer.EventRsvp/index.html), [EventTime](../QtOrganizer.EventTime/index.html), [JournalTime](../QtOrganizer.JournalTime/index.html), [TodoTime](../QtOrganizer.TodoTime/index.html), and [TodoProgress](../QtOrganizer.TodoProgress/index.html).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onDetailChanged-signal"></span><span class="name">onDetailChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted, when any of the Details's or child element's (like [EventTime](../QtOrganizer.EventTime/index.html), [DisplayLabel](../QtOrganizer.DisplayLabel/index.html) etc) properties have been changed.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeValue-method"></span><span class="type">bool</span> <span class="name">removeValue</span>(<span class="type">field</span>)</p></td>
</tr>
</tbody>
</table>

Removes the value stored in this detail for the given *field*. Returns true if a value was stored for the given key and the operation succeeded, and false otherwise.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setValue-method"></span><span class="type">bool</span> <span class="name">setValue</span>(<span class="type">field</span>, <span class="type">value</span>)</p></td>
</tr>
</tbody>
</table>

Inserts *value* into the detail for the given *key* if value is valid. If value is invalid, removes the field with the given key from the detail. Returns true if the given value was set for the key (if the value was valid), or if the given key was removed from detail (if the value was invalid), otherwise returns false if the key was unable to be removed (and the value was invalid).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-method"></span><span class="type">variant</span> <span class="name">value</span>(<span class="type">field</span>)</p></td>
</tr>
</tbody>
</table>

Returns the value stored in this detail for the given *field*, or an empty variant if not available.

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

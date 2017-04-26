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

-   SortOrder

SortOrder
=========

<span class="subtitle"></span>
The SortOrder element defines how a list of organizer item should be ordered according to some criteria. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[blankPolicy](index.html#blankPolicy-prop)**** : enumeration
-   ****[caseSensitivity](index.html#caseSensitivity-prop)**** : enumeration
-   ****[detail](index.html#detail-prop)**** : string
-   ****[direction](index.html#direction-prop)**** : enumeration
-   ****[field](index.html#field-prop)**** : string

<span id="signals"></span>
Signals
-------

-   ****[onSortOrderChanged](index.html#onSortOrderChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="blankPolicy-prop"></span><span class="name">blankPolicy</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property enumerates the ways in which the sort order interprets blanks when sorting organizer.

-   [SortOrder](index.html).BlanksFirst Considers blank values to evaluate to less than all other values in comparisons.
-   [SortOrder](index.html).BlanksLast Considers blank values to evaluate to greater than all other values in comparisons.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="caseSensitivity-prop"></span><span class="name">caseSensitivity</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the case sensitivity of the sort order, the value can be one of:

-   Qt.CaseInsensitive Sets the case sensitivity of the sort order to insensitivity.
-   Qt.CaseSensitive Sets the case sensitivity of the sort order to sensitivity (default).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="detail-prop"></span><span class="name">detail</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the detail type of which the sorting will be performed to. The value should be the enumeration value of [Detail::type](../QtOrganizer.Detail/index.html#type-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="direction-prop"></span><span class="name">direction</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the direction of the sort order, the value can be one of:

-   Qt.AscendingOrder The items will be sorted by the ascending order (default).
-   Qt.DescendingOrder The items will be sorted by the descending order.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="field-prop"></span><span class="name">field</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the detail field type of which the sorting will be performed to. The value should be the filld enumeration value defined in each detail element.

**See also** [EventTime](../QtOrganizer.EventTime/index.html), [JournalTime](../QtOrganizer.JournalTime/index.html), [TodoTime](../QtOrganizer.TodoTime/index.html), [TodoProgress](../QtOrganizer.TodoProgress/index.html), [Reminder](../QtOrganizer.Reminder/index.html), [AudibleReminder](../QtOrganizer.AudibleReminder/index.html), [VisualReminder](../QtOrganizer.VisualReminder/index.html), [EmailReminder](../QtOrganizer.EmailReminder/index.html), [Comment](../QtOrganizer.Comment/index.html), [Description](../QtOrganizer.Description/index.html), [DisplayLabel](../QtOrganizer.DisplayLabel/index.html), [Guid](../QtOrganizer.Guid/index.html), [Location](../QtOrganizer.Location/index.html), [Parent](../QtOrganizer.Parent/index.html), [Priority](../QtOrganizer.Priority/index.html), [Recurrence](../QtOrganizer.Recurrence/index.html), [Timestamp](../QtOrganizer.Timestamp/index.html), [ItemType](../QtOrganizer.ItemType/index.html), and [Tag](../QtOrganizer.Tag/index.html).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onSortOrderChanged-signal"></span><span class="name">onSortOrderChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted, when any of the [SortOrder](index.html)'s properties have been changed.

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

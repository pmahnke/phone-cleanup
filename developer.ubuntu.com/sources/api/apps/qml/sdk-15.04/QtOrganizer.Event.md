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

-   Event

Event
=====

<span class="subtitle"></span>
The Event element provides an event in time which may reoccur. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[allDay](index.html#allDay-prop)**** : bool
-   ****[attendees](index.html#attendees-prop)**** : list&lt;Detail&gt;
-   ****[endDateTime](index.html#endDateTime-prop)**** : date
-   ****[location](index.html#location-prop)**** : string
-   ****[priority](index.html#priority-prop)**** : enumeration
-   ****[recurrence](index.html#recurrence-prop)**** : Recurrence
-   ****[startDateTime](index.html#startDateTime-prop)**** : date

<span id="signals"></span>
Signals
-------

-   ****[onItemChanged](index.html#onItemChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[clearDetails](index.html#clearDetails-method)****()
-   void ****[removeDetail](index.html#removeDetail-method)****(detail)
-   void ****[setDetail](index.html#setDetail-method)****(detail)

<span id="details"></span>
Detailed Description
--------------------

**See also** [OrganizerItem](../QtOrganizer.OrganizerItem/index.html), [EventOccurrence](../QtOrganizer.EventOccurrence/index.html), [Journal](../QtOrganizer.Journal/index.html), [Todo](../QtOrganizer.Todo/index.html), [TodoOccurrence](../QtOrganizer.TodoOccurrence/index.html), [Note](../QtOrganizer.Note/index.html), and QOrganizerEvent.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="allDay-prop"></span><span class="name">allDay</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether the time-of-day component of the event's start date-time or end date-time is insignificant. If allDay is true, the time-of-day component is considered insignificant, and the event will be an all-day item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="attendees-prop"></span><span class="name">attendees</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtOrganizer.Detail/index.html">Detail</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the attendees list of the event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="endDateTime-prop"></span><span class="name">endDateTime</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds the end date time of the event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="location-prop"></span><span class="name">location</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the label of the location at which the event occurs.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="priority-prop"></span><span class="name">priority</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the priority of the event. The value can be one of:

-   Priority.Unknown
-   Priority.Highest
-   Priority.ExtremelyHigh
-   Priority.VeryHigh
-   Priority.High
-   Priority.Medium
-   Priority.Low
-   Priority.VeryLow
-   Priority.ExtremelyLow
-   Priority.Lowest

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="recurrence-prop"></span><span class="name">recurrence</span> : <span class="type"><a href="../QtOrganizer.Recurrence/index.html">Recurrence</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the recurrence element of the event item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startDateTime-prop"></span><span class="name">startDateTime</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds the start date time of the event.

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

**See also** [OrganizerItem::onItemChanged](../QtOrganizer.OrganizerItem/index.html#onItemChanged-signal).

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

Removes all details from the organizer event.

**See also** [removeDetail()](index.html#removeDetail-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeDetail-method"></span><span class="type">void</span> <span class="name">removeDetail</span>(<span class="type">detail</span>)</p></td>
</tr>
</tbody>
</table>

Removes given *detail* from the organizer event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setDetail-method"></span><span class="type">void</span> <span class="name">setDetail</span>(<span class="type">detail</span>)</p></td>
</tr>
</tbody>
</table>

Saves the given *detail* in the organizer event, and sets its id.

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

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

-   EventRsvp

EventRsvp
=========

<span class="subtitle"></span>
The EventRsvp element contains Rsvp-information of an event. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[organizerEmail](index.html#organizerEmail-prop)**** : variant
-   ****[organizerName](index.html#organizerName-prop)**** : variant
-   ****[participationRole](index.html#participationRole-prop)**** : variant
-   ****[participationStatus](index.html#participationStatus-prop)**** : variant
-   ****[responseDate](index.html#responseDate-prop)**** : variant
-   ****[responseDeadline](index.html#responseDeadline-prop)**** : variant
-   ****[responseRequirement](index.html#responseRequirement-prop)**** : variant

<span id="signals"></span>
Signals
-------

-   ****[onDetailChanged](index.html#onDetailChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   bool ****[setValue](index.html#setValue-method)****(field, value)
-   variant ****[value](index.html#value-method)****(field)

<span id="details"></span>
Detailed Description
--------------------

[EventRsvp](index.html) detail contains user specific information about calendar event like participation status and role, information about response dates and information about organizer of the event. See more details from the properties themselves and the QOrganizerEventRsvp.

**See also** QOrganizerEventRsvp.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="organizerEmail-prop"></span><span class="name">organizerEmail</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds organizer's email of the event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="organizerName-prop"></span><span class="name">organizerName</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds organizer's name of the event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="participationRole-prop"></span><span class="name">participationRole</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the calendar user's participation role related to the event. See [EventAttendee::participationRole](../QtOrganizer.EventAttendee/index.html#participationRole-prop) for more details.

**See also** [EventAttendee::participationRole](../QtOrganizer.EventAttendee/index.html#participationRole-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="participationStatus-prop"></span><span class="name">participationStatus</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the calendar user's participation status related to the event. See [EventAttendee::participationStatus](../QtOrganizer.EventAttendee/index.html#participationStatus-prop) for more details.

**See also** [EventAttendee::participationStatus](../QtOrganizer.EventAttendee/index.html#participationStatus-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="responseDate-prop"></span><span class="name">responseDate</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the date when user responded to the event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="responseDeadline-prop"></span><span class="name">responseDeadline</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the last date for responding the event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="responseRequirement-prop"></span><span class="name">responseRequirement</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the response requirement of the event. The value can be one of:

-   [EventRsvp](index.html).ResponseNotRequired
-   [EventRsvp](index.html).ResponseRequired

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

**See also** [Detail::onDetailChanged](../QtOrganizer.Detail/index.html#onDetailChanged-signal).

Method Documentation
--------------------

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

**See also** [Detail::setValue](../QtOrganizer.Detail/index.html#setValue-method).

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

**See also** [Detail::value](../QtOrganizer.Detail/index.html#value-method).

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

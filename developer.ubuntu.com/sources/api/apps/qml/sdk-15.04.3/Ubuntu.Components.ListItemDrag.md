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
-   [SDK 15.04.3](../index.html) ›
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   ListItemDrag

ListItemDrag
============

<span class="subtitle"></span>
Provides information about a ListItem drag event. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |
| Since:            | Ubuntu.Components 1.2        |

<span id="properties"></span>
Properties
----------

-   ****[accept](index.html#accept-prop)**** : bool
-   ****[from](index.html#from-prop)**** : int
-   ****[maximumIndex](index.html#maximumIndex-prop)**** : int
-   ****[minimumIndex](index.html#minimumIndex-prop)**** : int
-   ****[status](index.html#status-prop)**** : enum
-   ****[to](index.html#to-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

The object cannot be instantiated and it is passed as parameter to [ViewItems::dragUpdated](../Ubuntu.Components.ViewItems/index.html#dragUpdated-signal) attached signal. Developer can decide whether to accept or restrict the dragging event based on the input provided by this event.

The direction of the drag can be found via the [status](index.html#status-prop) property and the source and destination the drag can be applied via [from](index.html#from-prop) and [to](index.html#to-prop) properties. The allowed directions can be configured through [minimumIndex](index.html#minimumIndex-prop) and [maximumIndex](index.html#maximumIndex-prop) properties, and the event acceptance through [accept](index.html#accept-prop) property. If the event is not accepted, the drag action will be considered as cancelled.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accept-prop"></span><span class="name">accept</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property can be used to dismiss the event. By default its value is true, meaning the drag event is accepted. The value of false blocks the drag event to be handled by the [ListItem](../Ubuntu.Components.ListItem/index.html)'s dragging mechanism.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="from-prop"></span><span class="qmlreadonly">read-only</span><span class="name">from</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Specifies the source index the [ListItem](../Ubuntu.Components.ListItem/index.html) is dragged from.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumIndex-prop"></span><span class="name">maximumIndex</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimumIndex-prop"></span><span class="name">minimumIndex</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

These properties configure the minimum and maximum indexes the item can be dragged. The properties can be set in [ViewItems::dragUpdated](../Ubuntu.Components.ViewItems/index.html#dragUpdated-signal) signal. A negative value means no restriction defined on the dragging interval side.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="qmlreadonly">read-only</span><span class="name">status</span> : <span class="type">enum</span></p></td>
</tr>
</tbody>
</table>

The property provides information about the status of the drag. Its value can be one of the following:

-   **ListItemDrag.Started** - indicates that the dragging is about to start, giving opportunities to define restrictions on the dragging indexes, like [minimumIndex](index.html#minimumIndex-prop), [maximumIndex](index.html#maximumIndex-prop)
-   **ListItemDrag.Moving** - the dragged item is moved upwards or downwards in the [ListItem](../Ubuntu.Components.ListItem/index.html)
-   **ListItemDrag.Dropped** - indicates that the drag event is finished, and the dragged item is about to be dropped to the given position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="to-prop"></span><span class="qmlreadonly">read-only</span><span class="name">to</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Specifies the index the [ListItem](../Ubuntu.Components.ListItem/index.html) is dragged to or dropped.

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

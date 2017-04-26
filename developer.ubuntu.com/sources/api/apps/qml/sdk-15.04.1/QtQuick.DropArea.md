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
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   DropArea

DropArea
========

<span class="subtitle"></span>
For specifying drag and drop handling in an area More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[containsDrag](index.html#containsDrag-prop)**** : bool
-   ****[drag](index.html#drag-prop)****
    -   ****[drag.x](index.html#drag.x-prop)**** : qreal
    -   ****[drag.y](index.html#drag.y-prop)**** : qreal
-   ****[drag.source](index.html#drag.source-prop)**** : Object
-   ****[keys](index.html#keys-prop)**** : stringlist

<span id="signals"></span>
Signals
-------

-   ****[dropped](index.html#dropped-signal)****(DragEvent *drop*)
-   ****[entered](index.html#entered-signal)****(DragEvent *drag*)
-   ****[exited](index.html#exited-signal)****()
-   ****[positionChanged](index.html#positionChanged-signal)****(DragEvent *drag*)

<span id="details"></span>
Detailed Description
--------------------

A [DropArea](index.html) is an invisible item which receives events when other items are dragged over it.

The [Drag](../QtQuick.Drag/index.html) attached property can be used to notify the [DropArea](index.html) when an Item is dragged over it.

The [keys](index.html#keys-prop) property can be used to filter drag events which don't include a matching key.

The [drag.source](index.html#drag.source-prop) property is communicated to the source of a drag event as the recipient of a drop on the drag target.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="containsDrag-prop"></span><span class="name">containsDrag</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property identifies whether the [DropArea](index.html) currently contains any dragged items.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="drag-prop"></span><strong>drag group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="drag.x-prop"></span><span class="name">drag.x</span> : <span class="type">qreal</span></p></td>
</tr>
<tr class="even">
<td><p><span id="drag.y-prop"></span><span class="name">drag.y</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

These properties hold the coordinates of the last drag event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="drag.source-prop"></span><span class="name">drag.source</span> : <span class="type">Object</span></p></td>
</tr>
</tbody>
</table>

This property holds the source of a drag.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="keys-prop"></span><span class="name">keys</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property holds a list of drag keys a [DropArea](index.html) will accept.

If no keys are listed the [DropArea](index.html) will accept events from any drag source, otherwise the drag source must have at least one compatible key.

**See also** [QtQuick::Drag::keys](../QtQuick.Drag/index.html#keys-attached-prop).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dropped-signal"></span><span class="name">dropped</span>(<span class="type"><a href="../QtQuick.DragEvent/index.html">DragEvent</a></span> <em>drop</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a drop event occurs within the bounds of a [DropArea](index.html).

The corresponding handler is `onDropped`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="entered-signal"></span><span class="name">entered</span>(<span class="type"><a href="../QtQuick.DragEvent/index.html">DragEvent</a></span> <em>drag</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a *drag* enters the bounds of a [DropArea](index.html).

The corresponding handler is `onEntered`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exited-signal"></span><span class="name">exited</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a drag exits the bounds of a [DropArea](index.html).

The corresponding handler is `onExited`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionChanged-signal"></span><span class="name">positionChanged</span>(<span class="type"><a href="../QtQuick.DragEvent/index.html">DragEvent</a></span> <em>drag</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the position of a drag has changed.

The corresponding handler is `onPositionChanged`.

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

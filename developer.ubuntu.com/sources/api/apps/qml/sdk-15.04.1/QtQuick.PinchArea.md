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

-   PinchArea

PinchArea
=========

<span class="subtitle"></span>
Enables simple pinch gesture handling More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick 2.4</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../QtQuick.Item/index.html">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[enabled](index.html#enabled-prop)**** : bool
-   ****[pinch](index.html#pinch-prop)****
    -   ****[pinch.target](index.html#pinch.target-prop)**** : Item
    -   ****[pinch.active](index.html#pinch.active-prop)**** : bool
    -   ****[pinch.minimumScale](index.html#pinch.minimumScale-prop)**** : real
    -   ****[pinch.maximumScale](index.html#pinch.maximumScale-prop)**** : real
    -   ****[pinch.minimumRotation](index.html#pinch.minimumRotation-prop)**** : real
    -   ****[pinch.maximumRotation](index.html#pinch.maximumRotation-prop)**** : real
    -   ****[pinch.dragAxis](index.html#pinch.dragAxis-prop)**** : enumeration
    -   ****[pinch.minimumX](index.html#pinch.minimumX-prop)**** : real
    -   ****[pinch.maximumX](index.html#pinch.maximumX-prop)**** : real
    -   ****[pinch.minimumY](index.html#pinch.minimumY-prop)**** : real
    -   ****[pinch.maximumY](index.html#pinch.maximumY-prop)**** : real

<span id="signals"></span>
Signals
-------

-   ****[pinchFinished](index.html#pinchFinished-signal)****()
-   ****[pinchStarted](index.html#pinchStarted-signal)****()
-   ****[pinchUpdated](index.html#pinchUpdated-signal)****()

<span id="details"></span>
Detailed Description
--------------------

**The PinchArea type was added in QtQuick 1.1**

A [PinchArea](index.html) is an invisible item that is typically used in conjunction with a visible item in order to provide pinch gesture handling for that item.

The [enabled](index.html#enabled-prop) property is used to enable and disable pinch handling for the proxied item. When disabled, the pinch area becomes transparent to mouse/touch events.

[PinchArea](index.html) can be used in two ways:

-   setting a `pinch.target` to provide automatic interaction with an item
-   using the onPinchStarted, onPinchUpdated and onPinchFinished handlers

**See also** [PinchEvent](../QtQuick.PinchEvent/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the item accepts pinch gestures.

This property defaults to true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="pinch-prop"></span><strong>pinch group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="pinch.target-prop"></span><span class="name">pinch.target</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
<tr class="even">
<td><p><span id="pinch.active-prop"></span><span class="name">pinch.active</span> : <span class="type">bool</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="pinch.minimumScale-prop"></span><span class="name">pinch.minimumScale</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="pinch.maximumScale-prop"></span><span class="name">pinch.maximumScale</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="pinch.minimumRotation-prop"></span><span class="name">pinch.minimumRotation</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="pinch.maximumRotation-prop"></span><span class="name">pinch.maximumRotation</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="pinch.dragAxis-prop"></span><span class="name">pinch.dragAxis</span> : <span class="type">enumeration</span></p></td>
</tr>
<tr class="even">
<td><p><span id="pinch.minimumX-prop"></span><span class="name">pinch.minimumX</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="pinch.maximumX-prop"></span><span class="name">pinch.maximumX</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="pinch.minimumY-prop"></span><span class="name">pinch.minimumY</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="pinch.maximumY-prop"></span><span class="name">pinch.maximumY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

`pinch` provides a convenient way to make an item react to pinch gestures.

-   `pinch.target` specifies the id of the item to drag.
-   `pinch.active` specifies if the target item is currently being dragged.
-   `pinch.minimumScale` and `pinch.maximumScale` limit the range of the Item.scale property, but not the `PinchEvent` [scale](../QtQuick.PinchEvent/index.html) property.
-   `pinch.minimumRotation` and `pinch.maximumRotation` limit the range of the Item.rotation property, but not the `PinchEvent` [rotation](../QtQuick.PinchEvent/index.html) property.
-   `pinch.dragAxis` specifies whether dragging in not allowed (`Pinch.NoDrag`), can be done horizontally (`Pinch.XAxis`), vertically (`Pinch.YAxis`), or both (`Pinch.XAndYAxis`)
-   `pinch.minimum` and `pinch.maximum` limit how far the target can be dragged along the corresponding axes.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pinchFinished-signal"></span><span class="name">pinchFinished</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the pinch area detects that a pinch gesture has finished.

The [pinch](../QtQuick.PinchEvent/index.html) parameter (not the same as the [pinch](index.html) property) provides information about the pinch gesture, including the scale, center and angle of the pinch.

The corresponding handler is `onPinchFinished`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pinchStarted-signal"></span><span class="name">pinchStarted</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the pinch area detects that a pinch gesture has started: two touch points (fingers) have been detected, and they have moved beyond the startDragDistance threshold for the gesture to begin.

The [pinch](../QtQuick.PinchEvent/index.html) parameter (not the same as the [pinch](index.html) property) provides information about the pinch gesture, including the scale, center and angle of the pinch. At the time of the `pinchStarted` signal, these values are reset to the default values, regardless of the results from previous gestures: pinch.scale will be `1.0` and pinch.rotation will be `0.0`. As the gesture progresses, [pinchUpdated](index.html#pinchUpdated-signal) will report the deviation from those defaults.

To ignore this gesture set the `pinch.accepted` property to false. The gesture will be canceled and no further events will be sent.

The corresponding handler is `onPinchStarted`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pinchUpdated-signal"></span><span class="name">pinchUpdated</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the pinch area detects that a pinch gesture has changed.

The [pinch](../QtQuick.PinchEvent/index.html) parameter provides information about the pinch gesture, including the scale, center and angle of the pinch. These values reflect changes only since the beginning of the current gesture, and therefore are not limited by the minimum and maximum limits in the [pinch](index.html) property.

The corresponding handler is `onPinchUpdated`.

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

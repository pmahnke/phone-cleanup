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
-   [SDK 14.10](../index.html) ›
-   [QtLocation](../QtLocation/index.html) ›

<!-- -->

-   MapGestureArea

MapGestureArea
==============

<span class="subtitle"></span>
The MapGestureArea type provides Map gesture interaction. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | `import QtLocation 5.3` |
| Since:            | Qt Location 5.0         |

<span id="properties"></span>
Properties
----------

-   ****[activeGestures](index.html#activeGestures-prop)**** : enumeration
-   ****[enabled](index.html#enabled-prop)**** : bool
-   ****[flickDeceleration](index.html#flickDeceleration-prop)**** : real
-   ****[isPanActive](index.html#isPanActive-prop)**** : bool
-   ****[isPinchActive](index.html#isPinchActive-prop)**** : bool
-   ****[maximumZoomLevelChange](index.html#maximumZoomLevelChange-prop)**** : real
-   ****[panEnabled](index.html#panEnabled-prop)**** : bool
-   ****[pinchEnabled](index.html#pinchEnabled-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[flickFinished](index.html#flickFinished-signal)****()
-   ****[flickStarted](index.html#flickStarted-signal)****()
-   ****[panFinished](index.html#panFinished-signal)****()
-   ****[panStarted](index.html#panStarted-signal)****()
-   ****[pinchFinished](index.html#pinchFinished-signal)****(PinchEvent *event*)
-   ****[pinchStarted](index.html#pinchStarted-signal)****(PinchEvent *event*)
-   ****[pinchUpdated](index.html#pinchUpdated-signal)****(PinchEvent *event*)

<span id="details"></span>
Detailed Description
--------------------

MapGestureArea objects are used as part of a Map, to provide for panning, flicking and pinch-to-zoom gesture used on touch displays.

A MapGestureArea is automatically created with a new Map and available with the [gesture](../QtLocation.Map/index.html#gesture-prop) property. This is the only way to create a MapGestureArea, and once created this way cannot be destroyed without its parent Map.

The two most commonly used properties of the MapGestureArea are the [enabled](index.html#enabled-prop) and [activeGestures](index.html#activeGestures-prop) properties. Both of these must be set before a MapGestureArea will have any effect upon interaction with the Map. The [flickDeceleration](index.html#flickDeceleration-prop) property controls how quickly the map pan slows after contact is released while panning the map.

<span id="performance"></span>
### Performance

The MapGestureArea, when enabled, must process all incoming touch events in order to track the shape and size of the "pinch". The overhead added on touch events can be considered constant time.

<span id="example-usage"></span>
### Example Usage

The following example enables the zoom and pan gestures on the map, but not flicking. So the map scrolling will halt immediately on releasing the mouse button / touch.

``` cpp
Map {
    gesture.enabled: true
    gesture.activeGestures: MapGestureArea.ZoomGesture | MapGestureArea.PanGesture
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activeGestures-prop"></span><span class="name">activeGestures</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the gestures that will be active. By default the zoom, pan and flick gestures are enabled.

-   [MapGestureArea](index.html).NoGesture - Don't support any additional gestures (value: 0x0000).
-   [MapGestureArea](index.html).ZoomGesture - Support the map zoom gesture (value: 0x0001).
-   [MapGestureArea](index.html).PanGesture - Support the map pan gesture (value: 0x0002).
-   [MapGestureArea](index.html).FlickGesture - Support the map flick gesture (value: 0x0004).

**Note:** For the time being, only [MapGestureArea](index.html).ZoomGesture is supported.

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

This property holds whether the gestures are enabled. Note: disabling gestures during an active gesture does not have effect on the potentially active current gesture.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickDeceleration-prop"></span><span class="name">flickDeceleration</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the rate at which a flick will decelerate.

The default value is 2500.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isPanActive-prop"></span><span class="name">isPanActive</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds whether any pan gesture (panning or flicking) is active.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isPinchActive-prop"></span><span class="name">isPinchActive</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds whether any pinch gesture is active.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumZoomLevelChange-prop"></span><span class="name">maximumZoomLevelChange</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the maximum zoom level change per pinch, essentially meant to be used for setting the zoom sensitivity.

It is an indicative measure calculated from the dimensions of the map area, roughly corresponding how much zoom level could change with maximum pinch zoom. Default value is 2.0, maximum value is 10.0

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="panEnabled-prop"></span><span class="name">panEnabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the pan gestures are enabled. Note: disabling gestures during an active gesture does not have effect on the potentially active current gesture.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pinchEnabled-prop"></span><span class="name">pinchEnabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the pinch gestures are enabled. Note: disabling gestures during an active gesture does not have effect on the potentially active current gesture.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickFinished-signal"></span><span class="name">flickFinished</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the view stops moving due to a flick. The order of panFinished() and flickFinished() is not specified.

The corresponding handler is `onFlickFinished`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickStarted-signal"></span><span class="name">flickStarted</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the view is flicked. A flick starts from the point that the mouse or touch is released, while still in motion.

The corresponding handler is `onFlichStarted`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="panFinished-signal"></span><span class="name">panFinished</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the view stops moving due to user interaction. If a flick was generated, this signal is emitted when the flick stops. If a flick was not generated, this signal is emitted when the user stops dragging - that is a mouse or touch release.

The corresponding handler is `onPanFinished`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="panStarted-signal"></span><span class="name">panStarted</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the view begins moving due to user interaction. Typically this means that the user is dragging a finger - or a mouse with one of more mouse buttons pressed - on the map.

The corresponding handler is `onPanStarted`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pinchFinished-signal"></span><span class="name">pinchFinished</span>(<span class="type">PinchEvent</span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted at the end of a pinch gesture.

The corresponding handler is `onPinchFinished`.

**See also** [pinchStarted](index.html#pinchStarted-signal) and [pinchUpdated](index.html#pinchUpdated-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pinchStarted-signal"></span><span class="name">pinchStarted</span>(<span class="type">PinchEvent</span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a pinch gesture is started.

The corresponding handler is `onPinchStarted`.

**See also** [pinchUpdated](index.html#pinchUpdated-signal) and [pinchFinished](index.html#pinchFinished-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pinchUpdated-signal"></span><span class="name">pinchUpdated</span>(<span class="type">PinchEvent</span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted as the user's fingers move across the map, after the [pinchStarted](index.html#pinchStarted-signal) signal is emitted.

The corresponding handler is `onPinchUpdated`.

**See also** [pinchStarted](index.html#pinchStarted-signal) and [pinchFinished](index.html#pinchFinished-signal).

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

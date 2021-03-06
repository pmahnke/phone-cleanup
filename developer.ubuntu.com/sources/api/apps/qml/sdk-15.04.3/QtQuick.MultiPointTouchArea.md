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
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   MultiPointTouchArea

MultiPointTouchArea
===================

<span class="subtitle"></span>
Enables handling of multiple touch points More...

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

-   ****[maximumTouchPoints](index.html#maximumTouchPoints-prop)**** : int
-   ****[minimumTouchPoints](index.html#minimumTouchPoints-prop)**** : int
-   ****[mouseEnabled](index.html#mouseEnabled-prop)**** : bool
-   ****[touchPoints](index.html#touchPoints-prop)**** : list&lt;TouchPoint&gt;

<span id="signals"></span>
Signals
-------

-   ****[canceled](index.html#canceled-signal)****(list&lt;TouchPoint&gt; *touchPoints*)
-   ****[gestureStarted](index.html#gestureStarted-signal)****(GestureEvent *gesture*)
-   ****[pressed](index.html#pressed-signal)****(list&lt;TouchPoint&gt; *touchPoints*)
-   ****[released](index.html#released-signal)****(list&lt;TouchPoint&gt; *touchPoints*)
-   ****[touchUpdated](index.html#touchUpdated-signal)****(list&lt;TouchPoint&gt; *touchPoints*)
-   ****[updated](index.html#updated-signal)****(list&lt;TouchPoint&gt; *touchPoints*)

<span id="details"></span>
Detailed Description
--------------------

A [MultiPointTouchArea](index.html) is an invisible item that is used to track multiple touch points.

The [Item::enabled](../QtQuick.Item/index.html#enabled-prop) property is used to enable and disable touch handling. When disabled, the touch area becomes transparent to mouse and touch events.

By default, the mouse will be handled the same way as a single touch point, and items under the touch area will not receive mouse events because the touch area is handling them. But if the [mouseEnabled](index.html#mouseEnabled-prop) property is set to false, it becomes transparent to mouse events so that another mouse-sensitive Item (such as a [MouseArea](../QtQuick.MouseArea/index.html)) can be used to handle mouse interaction separately.

[MultiPointTouchArea](index.html) can be used in two ways:

-   setting `touchPoints` to provide touch point objects with properties that can be bound to
-   using the onTouchUpdated or onPressed, onUpdated and onReleased handlers

While a [MultiPointTouchArea](index.html) *can* take exclusive ownership of certain touch points, it is also possible to have multiple MultiPointTouchAreas active at the same time, each operating on a different set of touch points.

**See also** [TouchPoint](../QtQuick.TouchPoint/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumTouchPoints-prop"></span><span class="name">maximumTouchPoints</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

These properties hold the range of touch points to be handled by the touch area.

These are convenience that allow you to, for example, have nested MultiPointTouchAreas, one handling two finger touches, and another handling three finger touches.

By default, all touch points within the touch area are handled.

If [mouseEnabled](index.html#mouseEnabled-prop) is true, the mouse acts as a touch point, so it is also subject to these constraints: for example if maximumTouchPoints is two, you can use the mouse as one touch point and a finger as another touch point for a total of two.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimumTouchPoints-prop"></span><span class="name">minimumTouchPoints</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

These properties hold the range of touch points to be handled by the touch area.

These are convenience that allow you to, for example, have nested MultiPointTouchAreas, one handling two finger touches, and another handling three finger touches.

By default, all touch points within the touch area are handled.

If [mouseEnabled](index.html#mouseEnabled-prop) is true, the mouse acts as a touch point, so it is also subject to these constraints: for example if [maximumTouchPoints](index.html#maximumTouchPoints-prop) is two, you can use the mouse as one touch point and a finger as another touch point for a total of two.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mouseEnabled-prop"></span><span class="name">mouseEnabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property controls whether the [MultiPointTouchArea](index.html) will handle mouse events too. If it is true (the default), the touch area will treat the mouse the same as a single touch point; if it is false, the touch area will ignore mouse events and allow them to "pass through" so that they can be handled by other items underneath.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touchPoints-prop"></span><span class="name">touchPoints</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtQuick.TouchPoint/index.html">TouchPoint</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a set of user-defined touch point objects that can be bound to.

If [mouseEnabled](index.html#mouseEnabled-prop) is true (the default) and the left mouse button is pressed while the mouse is over the touch area, the current mouse position will be one of these touch points.

In the following example, we have two small rectangles that follow our touch points.

``` qml
import QtQuick 2.0
Rectangle {
    width: 400; height: 400
    MultiPointTouchArea {
        anchors.fill: parent
        touchPoints: [
            TouchPoint { id: point1 },
            TouchPoint { id: point2 }
        ]
    }
    Rectangle {
        width: 30; height: 30
        color: "green"
        x: point1.x
        y: point1.y
    }
    Rectangle {
        width: 30; height: 30
        color: "yellow"
        x: point2.x
        y: point2.y
    }
}
```

By default this property holds an empty list.

**See also** [TouchPoint](../QtQuick.TouchPoint/index.html).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="canceled-signal"></span><span class="name">canceled</span>(<span class="type">list</span>&lt;<span class="type"><a href="../QtQuick.TouchPoint/index.html">TouchPoint</a></span>&gt; <em>touchPoints</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when new touch events have been canceled because another item stole the touch event handling.

This signal is for advanced use: it is useful when there is more than one [MultiPointTouchArea](index.html) that is handling input, or when there is a [MultiPointTouchArea](index.html) inside a [Flickable](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.3/QtQuick.touchinteraction/#flickable). In the latter case, if you execute some logic in the `onPressed` signal handler and then start dragging, the [Flickable](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.3/QtQuick.touchinteraction/#flickable) may steal the touch handling from the [MultiPointTouchArea](index.html). In these cases, to reset the logic when the [MultiPointTouchArea](index.html) has lost the touch handling to the [Flickable](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.3/QtQuick.touchinteraction/#flickable), `canceled` should be handled in addition to [released](index.html#released-signal).

*touchPoints* is the list of canceled points.

The corresponding handler is `onCanceled`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="gestureStarted-signal"></span><span class="name">gestureStarted</span>(<span class="type">GestureEvent</span> <em>gesture</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the global drag threshold has been reached.

This signal is typically used when a [MultiPointTouchArea](index.html) has been nested in a Flickable or another [MultiPointTouchArea](index.html). When the threshold has been reached and the signal is handled, you can determine whether or not the touch area should grab the current touch points. By default they will not be grabbed; to grab them call `gesture.grab()`. If the gesture is not grabbed, the nesting Flickable, for example, would also have an opportunity to grab.

The gesture object also includes information on the current set of `touchPoints` and the `dragThreshold`.

The corresponding handler is `onGestureStarted`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressed-signal"></span><span class="name">pressed</span>(<span class="type">list</span>&lt;<span class="type"><a href="../QtQuick.TouchPoint/index.html">TouchPoint</a></span>&gt; <em>touchPoints</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when new touch points are added. *touchPoints* is a list of these new points.

If [minimumTouchPoints](index.html#minimumTouchPoints-prop) is set to a value greater than one, this signal will not be emitted until the minimum number of required touch points has been reached.

The corresponding handler is `onPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="released-signal"></span><span class="name">released</span>(<span class="type">list</span>&lt;<span class="type"><a href="../QtQuick.TouchPoint/index.html">TouchPoint</a></span>&gt; <em>touchPoints</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when existing touch points are removed. *touchPoints* is a list of these removed points.

The corresponding handler is `onReleased`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touchUpdated-signal"></span><span class="name">touchUpdated</span>(<span class="type">list</span>&lt;<span class="type"><a href="../QtQuick.TouchPoint/index.html">TouchPoint</a></span>&gt; <em>touchPoints</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the touch points handled by the [MultiPointTouchArea](index.html) change. This includes adding new touch points, removing or canceling previous touch points, as well as updating current touch point data. *touchPoints* is the list of all current touch points.

The corresponding handler is `onTouchUpdated`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="updated-signal"></span><span class="name">updated</span>(<span class="type">list</span>&lt;<span class="type"><a href="../QtQuick.TouchPoint/index.html">TouchPoint</a></span>&gt; <em>touchPoints</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when existing touch points are updated. *touchPoints* is a list of these updated points.

The corresponding handler is `onUpdated`.

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

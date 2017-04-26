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

-   PinchEvent

PinchEvent
==========

<span class="subtitle"></span>
For specifying information about a pinch event More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[accepted](index.html#accepted-prop)**** : bool
-   ****[angle](index.html#angle-prop)**** : real
-   ****[center](index.html#center-prop)**** : QPointF
-   ****[point1](index.html#point1-prop)**** : QPointF
-   ****[point2](index.html#point2-prop)**** : QPointF
-   ****[pointCount](index.html#pointCount-prop)**** : int
-   ****[previousAngle](index.html#previousAngle-prop)**** : real
-   ****[previousCenter](index.html#previousCenter-prop)**** : QPointF
-   ****[previousScale](index.html#previousScale-prop)**** : real
-   ****[rotation](index.html#rotation-prop)**** : real
-   ****[scale](index.html#scale-prop)**** : real
-   ****[startCenter](index.html#startCenter-prop)**** : QPointF
-   ****[startPoint1](index.html#startPoint1-prop)**** : QPointF
-   ****[startPoint2](index.html#startPoint2-prop)**** : QPointF

<span id="details"></span>
Detailed Description
--------------------

**The PinchEvent type was added in QtQuick 1.1**

The `center`, `startCenter`, `previousCenter` properties provide the center position between the two touch points.

The `scale` and `previousScale` properties provide the scale factor.

The `angle`, `previousAngle` and `rotation` properties provide the angle between the two points and the amount of rotation.

The `point1`, `point2`, `startPoint1`, `startPoint2` properties provide the positions of the touch points.

The `accepted` property may be set to false in the `onPinchStarted` handler if the gesture should not be handled.

**See also** [PinchArea](../QtQuick.PinchArea/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accepted-prop"></span><span class="name">accepted</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Setting this property to false in the `PinchArea::onPinchStarted` handler will result in no further pinch events being generated, and the gesture ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="angle-prop"></span><span class="name">angle</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the angle between the two touch points.

-   `angle` is the current angle between the two points in the range -180 to 180.
-   `previousAngle` is the angle of the previous event.
-   `rotation` is the total rotation since the pinch gesture started.

When a pinch gesture is started, the rotation is `0.0`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="center-prop"></span><span class="name">center</span> : <span class="type">QPointF</span></p></td>
</tr>
</tbody>
</table>

These properties hold the position of the center point between the two touch points.

-   `center` is the current center point
-   `previousCenter` is the center point of the previous event.
-   `startCenter` is the center point when the gesture began

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="point1-prop"></span><span class="name">point1</span> : <span class="type">QPointF</span></p></td>
</tr>
</tbody>
</table>

These properties provide the actual touch points generating the pinch.

-   `point1` and `point2` hold the current positions of the points.
-   `startPoint1` and `startPoint2` hold the positions of the points when the second point was touched.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="point2-prop"></span><span class="name">point2</span> : <span class="type">QPointF</span></p></td>
</tr>
</tbody>
</table>

These properties provide the actual touch points generating the pinch.

-   `point1` and `point2` hold the current positions of the points.
-   `startPoint1` and `startPoint2` hold the positions of the points when the second point was touched.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pointCount-prop"></span><span class="name">pointCount</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Holds the number of points currently touched. The [PinchArea](../QtQuick.PinchArea/index.html) will not react until two touch points have initited a gesture, but will remain active until all touch points have been released.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="previousAngle-prop"></span><span class="name">previousAngle</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the angle between the two touch points.

-   `angle` is the current angle between the two points in the range -180 to 180.
-   `previousAngle` is the angle of the previous event.
-   `rotation` is the total rotation since the pinch gesture started.

When a pinch gesture is started, the rotation is `0.0`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="previousCenter-prop"></span><span class="name">previousCenter</span> : <span class="type">QPointF</span></p></td>
</tr>
</tbody>
</table>

These properties hold the position of the center point between the two touch points.

-   `center` is the current center point
-   `previousCenter` is the center point of the previous event.
-   `startCenter` is the center point when the gesture began

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="previousScale-prop"></span><span class="name">previousScale</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the scale factor determined by the change in distance between the two touch points.

-   `scale` is the current scale factor.
-   `previousScale` is the scale factor of the previous event.

When a pinch gesture is started, the scale is `1.0`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rotation-prop"></span><span class="name">rotation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the angle between the two touch points.

-   `angle` is the current angle between the two points in the range -180 to 180.
-   `previousAngle` is the angle of the previous event.
-   `rotation` is the total rotation since the pinch gesture started.

When a pinch gesture is started, the rotation is `0.0`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="scale-prop"></span><span class="name">scale</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the scale factor determined by the change in distance between the two touch points.

-   `scale` is the current scale factor.
-   `previousScale` is the scale factor of the previous event.

When a pinch gesture is started, the scale is `1.0`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startCenter-prop"></span><span class="name">startCenter</span> : <span class="type">QPointF</span></p></td>
</tr>
</tbody>
</table>

These properties hold the position of the center point between the two touch points.

-   `center` is the current center point
-   `previousCenter` is the center point of the previous event.
-   `startCenter` is the center point when the gesture began

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startPoint1-prop"></span><span class="name">startPoint1</span> : <span class="type">QPointF</span></p></td>
</tr>
</tbody>
</table>

These properties provide the actual touch points generating the pinch.

-   `point1` and `point2` hold the current positions of the points.
-   `startPoint1` and `startPoint2` hold the positions of the points when the second point was touched.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startPoint2-prop"></span><span class="name">startPoint2</span> : <span class="type">QPointF</span></p></td>
</tr>
</tbody>
</table>

These properties provide the actual touch points generating the pinch.

-   `point1` and `point2` hold the current positions of the points.
-   `startPoint1` and `startPoint2` hold the positions of the points when the second point was touched.

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

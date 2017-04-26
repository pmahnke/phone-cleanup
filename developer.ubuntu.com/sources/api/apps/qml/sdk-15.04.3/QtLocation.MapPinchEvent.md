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
-   [QtLocation](../QtLocation/index.html) ›

<!-- -->

-   MapPinchEvent

MapPinchEvent
=============

<span class="subtitle"></span>
MapPinchEvent type provides basic information about pinch event. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[accepted](../../sdk-15.04.1/QtLocation.MapPinchEvent/index.html#accepted-prop)**** : bool
-   ****[angle](../../sdk-15.04.1/QtLocation.MapPinchEvent/index.html#angle-prop)**** : real
-   ****[center](../../sdk-15.04.1/QtLocation.MapPinchEvent/index.html#center-prop)**** : QPoint
-   ****[point1](../../sdk-15.04.1/QtLocation.MapPinchEvent/index.html#point1-prop)**** : QPoint
-   ****[point2](../../sdk-15.04.1/QtLocation.MapPinchEvent/index.html#point2-prop)**** : QPoint
-   ****[pointCount](../../sdk-15.04.1/QtLocation.MapPinchEvent/index.html#pointCount-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

[MapPinchEvent](../../sdk-15.04.1/QtLocation.MapPinchEvent/index.html) type provides basic information about pinch event. They are present in handlers of MapPinch (for example pinchStarted/pinchUpdated). Events are only guaranteed to be valid for the duration of the handler.

Except for the [accepted](../../sdk-15.04.1/QtLocation.MapPinchEvent/index.html#accepted-prop) property, all properties are read-only.

<span id="example-usage"></span>
### Example Usage

The following example enables the pinch gesture on a map and reacts to the finished event.

``` cpp
Map {
    id: map
    gesture.enabled: true
    gesture.onPinchFinished:{
        var coordinate1 = map.toCoordinate(gesture.point1)
        var coordinate2 = map.toCoordinate(gesture.point2)
        console.log("Pinch started at:")
        console.log("        Points (" + gesture.point1.x + ", " + gesture.point1.y + ") - (" + gesture.point2.x + ", " + gesture.point2.y + ")")
        console.log("   Coordinates (" + coordinate1.latitude + ", " + coordinate1.longitude + ") - (" + coordinate2.latitude + ", " + coordinate2.longitude + ")")
    }
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
<td><p><span id="accepted-prop"></span><span class="name">accepted</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Setting this property to false in the `MapPinch::onPinchStarted` handler will result in no further pinch events being generated, and the gesture ignored.

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

This read-only property holds the current angle between the two points in the range -180 to 180. Positive values for the angles mean counter-clockwise while negative values mean the clockwise direction. Zero degrees is at the 3 o'clock position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="center-prop"></span><span class="name">center</span> : <span class="type">QPoint</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds the current center point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="point1-prop"></span><span class="name">point1</span> : <span class="type">QPoint</span></p></td>
</tr>
</tbody>
</table>

These read-only properties hold the actual touch points generating the pinch. The points are not in any particular order.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="point2-prop"></span><span class="name">point2</span> : <span class="type">QPoint</span></p></td>
</tr>
</tbody>
</table>

These read-only properties hold the actual touch points generating the pinch. The points are not in any particular order.

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

This read-only property holds the number of points currently touched. The MapPinch will not react until two touch points have initiated a gesture, but will remain active until all touch points have been released.

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

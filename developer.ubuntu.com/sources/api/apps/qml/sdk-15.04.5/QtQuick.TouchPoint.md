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
-   [SDK 15.04.5](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   TouchPoint

TouchPoint
==========

<span class="subtitle"></span>
Describes a touch point in a MultiPointTouchArea More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[area](index.html#area-prop)**** : rectangle
-   ****[pointId](index.html#pointId-prop)**** : int
-   ****[pressed](index.html#pressed-prop)**** : bool
-   ****[pressure](index.html#pressure-prop)**** : real
-   ****[previousX](index.html#previousX-prop)**** : real
-   ****[previousY](index.html#previousY-prop)**** : real
-   ****[sceneX](index.html#sceneX-prop)**** : real
-   ****[sceneY](index.html#sceneY-prop)**** : real
-   ****[startX](index.html#startX-prop)**** : real
-   ****[startY](index.html#startY-prop)**** : real
-   ****[velocity](index.html#velocity-prop)**** : vector2d
-   ****[x](index.html#x-prop)**** : real
-   ****[y](index.html#y-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The [TouchPoint](index.html) type contains information about a touch point, such as the current position, pressure, and area.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="area-prop"></span><span class="name">area</span> : <span class="type">rectangle</span></p></td>
</tr>
</tbody>
</table>

These properties hold additional information about the current state of the touch point.

-   `pressure` is a value in the range of 0.0 to 1.0.
-   `velocity` is a vector with magnitude reported in pixels per second.
-   `area` is a rectangle covering the area of the touch point, centered on the current position of the touch point.

Not all touch devices support velocity. If velocity is not supported, it will be reported as 0,0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pointId-prop"></span><span class="name">pointId</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the point id of the touch point.

Each touch point within a [MultiPointTouchArea](../QtQuick.MultiPointTouchArea/index.html) will have a unique id.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressed-prop"></span><span class="name">pressed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the touch point is currently pressed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressure-prop"></span><span class="name">pressure</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold additional information about the current state of the touch point.

-   `pressure` is a value in the range of 0.0 to 1.0.
-   `velocity` is a vector with magnitude reported in pixels per second.
-   `area` is a rectangle covering the area of the touch point, centered on the current position of the touch point.

Not all touch devices support velocity. If velocity is not supported, it will be reported as 0,0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="previousX-prop"></span><span class="name">previousX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the previous position of the touch point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="previousY-prop"></span><span class="name">previousY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the previous position of the touch point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sceneX-prop"></span><span class="name">sceneX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the current position of the touch point in scene coordinates.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sceneY-prop"></span><span class="name">sceneY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the current position of the touch point in scene coordinates.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startX-prop"></span><span class="name">startX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the starting position of the touch point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startY-prop"></span><span class="name">startY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the starting position of the touch point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="velocity-prop"></span><span class="name">velocity</span> : <span class="type">vector2d</span></p></td>
</tr>
</tbody>
</table>

These properties hold additional information about the current state of the touch point.

-   `pressure` is a value in the range of 0.0 to 1.0.
-   `velocity` is a vector with magnitude reported in pixels per second.
-   `area` is a rectangle covering the area of the touch point, centered on the current position of the touch point.

Not all touch devices support velocity. If velocity is not supported, it will be reported as 0,0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="x-prop"></span><span class="name">x</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the current position of the touch point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="y-prop"></span><span class="name">y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the current position of the touch point.

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

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
-   [SDK 15.04.4](../index.html) ›
-   [QtLocation](../QtLocation/index.html) ›

<!-- -->

-   MapRoute

MapRoute
========

<span class="subtitle"></span>
The MapRoute type displays a Route on a Map. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[line](../../sdk-15.04.1/QtLocation.MapRoute/index.html#line-prop)****
    -   ****[line.width](../../sdk-15.04.1/QtLocation.MapRoute/index.html#line.width-prop)**** : int
    -   ****[line.color](../../sdk-15.04.1/QtLocation.MapRoute/index.html#line.color-prop)**** : color
-   ****[route](../../sdk-15.04.1/QtLocation.MapRoute/index.html#route-prop)**** : Route

<span id="details"></span>
Detailed Description
--------------------

The [MapRoute](../../sdk-15.04.1/QtLocation.MapRoute/index.html) type displays a Route obtained through a [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel/index.html) or other means, on the Map as a Polyline following the path of the Route.

[MapRoute](../../sdk-15.04.1/QtLocation.MapRoute/index.html) is really a [MapPolyline](../../sdk-15.04.1/QtLocation.MapPolyline/index.html), but with the path specified using the [route](../../sdk-15.04.1/QtLocation.MapRoute/index.html#route-prop) property instead of directly in coordinates.

By default, the route is displayed as a 1-pixel thick black line. This can be changed using the [line.width](../../sdk-15.04.1/QtLocation.MapRoute/index.html#line.width-prop) and [line.color](../../sdk-15.04.1/QtLocation.MapRoute/index.html#line.color-prop) properties.

<span id="performance"></span>
### Performance

For notes about the performance on [MapRoute](../../sdk-15.04.1/QtLocation.MapRoute/index.html), refer to the documentation for [MapPolyline](../../sdk-15.04.1/QtLocation.MapPolyline/index.html).

<span id="example-usage"></span>
### Example Usage

Here is how to draw a [route](../../sdk-15.04.1/QtLocation.Route/index.html) on a [map](../../sdk-15.04.1/QtLocation.Map/index.html):

``` qml
import QtQuick 2.0
import QtLocation 5.3
Map {
    RouteModel {
        id: routeModel
    }
    MapItemView {
        model: routeModel
        delegate: routeDelegate
    }
    Component {
        id: routeDelegate
        MapRoute {
            route: routeData
            line.color: "blue"
            line.width: 5
            smooth: true
            opacity: 0.8
        }
    }
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="line-prop"></span><strong>line group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="line.width-prop"></span><span class="name">line.width</span> : <span class="type">int</span></p></td>
</tr>
<tr class="even">
<td><p><span id="line.color-prop"></span><span class="name">line.color</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

This property is part of the line property group. The line property group holds the width and color used to draw the line.

The width is in pixels and is independent of the zoom level of the map. The default values correspond to a black border with a width of 1 pixel.

For no line, use a width of 0 or a transparent color.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="route-prop"></span><span class="name">route</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.Route/index.html">Route</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the route to be drawn which can be used to represent one geographical route.

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

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
-   [SDK 15.04](../index.html) ›
-   [QtLocation](../QtLocation/index.html) ›

<!-- -->

-   MapCircle

MapCircle
=========

<span class="subtitle"></span>
The MapCircle type displays a geographic circle on a Map. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[border](index.html#border-prop)****
    -   ****[border.width](index.html#border.width-prop)**** : int
    -   ****[border.color](index.html#border.color-prop)**** : color
-   ****[center](index.html#center-prop)**** : coordinate
-   ****[color](index.html#color-prop)**** : color
-   ****[opacity](index.html#opacity-prop)**** : real
-   ****[radius](index.html#radius-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The [MapCircle](index.html) type displays a geographic circle on a Map, which consists of all points that are within a set distance from one central point. Depending on map projection, a geographic circle may not always be a perfect circle on the screen: for instance, in the Mercator projection, circles become ovoid in shape as they near the poles. To display a perfect screen circle around a point, use a [MapQuickItem](../QtLocation.MapQuickItem/index.html) containing a relevant Qt Quick type instead.

By default, the circle is displayed as a 1 pixel black border with no fill. To change its appearance, use the color, border.color and border.width properties.

Internally, a [MapCircle](index.html) is implemented as a many-sided polygon. To calculate the radius points it uses a spherical model of the Earth, similar to the atDistanceAndAzimuth method of the coordinate type. These two things can occasionally have implications for the accuracy of the circle's shape, depending on position and map projection.

**Note:** Dragging a [MapCircle](index.html) (through the use of MouseArea) causes new points to be generated at the same distance (in meters) from the center. This is in contrast to other map items which store their dimensions in terms of latitude and longitude differences between vertices.

<span id="performance"></span>
### Performance

[MapCircle](index.html) performance is almost equivalent to that of a [MapPolygon](../QtLocation.MapPolygon/index.html) with 125 vertices. There is a small amount of additional overhead with respect to calculating the vertices first.

Like the other map objects, [MapCircle](index.html) is normally drawn without a smooth appearance. Setting the opacity property will force the object to be blended, which decreases performance considerably depending on the graphics hardware in use.

<span id="example-usage"></span>
### Example Usage

The following snippet shows a map containing a [MapCircle](index.html), centered at the coordinate (-27, 153) with a radius of 5km. The circle is filled in green, with a 3 pixel black border.

``` cpp
Map {
    MapCircle {
        center {
            latitude: -27.5
            longitude: 153.0
        }
        radius: 5000.0
        color: 'green'
        border.width: 3
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/05c4e7d2-1b43-4353-a83c-081e27152715-api/apps/qml/sdk-15.04/QtLocation.MapCircle/images/api-mapcircle.png)

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="border-prop"></span><strong>border group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="border.width-prop"></span><span class="name">border.width</span> : <span class="type">int</span></p></td>
</tr>
<tr class="even">
<td><p><span id="border.color-prop"></span><span class="name">border.color</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

This property is part of the border group property. The border property holds the width and color used to draw the border of the circle. The width is in pixels and is independent of the zoom level of the map.

The default values correspond to a black border with a width of 1 pixel. For no line, use a width of 0 or a transparent color.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="center-prop"></span><span class="name">center</span> : <span class="type">coordinate</span></p></td>
</tr>
</tbody>
</table>

This property holds the central point about which the circle is defined.

**See also** [radius](index.html#radius-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="color-prop"></span><span class="name">color</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

This property holds the fill color of the circle when drawn. For no fill, use a transparent color.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="opacity-prop"></span><span class="name">opacity</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the opacity of the item. Opacity is specified as a number between 0 (fully transparent) and 1 (fully opaque). The default is 1.

An item with 0 opacity will still receive mouse events. To stop mouse events, set the visible property of the item to false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="radius-prop"></span><span class="name">radius</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the radius of the circle, in meters on the ground.

**See also** [center](index.html#center-prop).

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

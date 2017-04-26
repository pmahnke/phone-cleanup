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

-   MapRectangle

MapRectangle
============

<span class="subtitle"></span>
The MapRectangle type displays a rectangle on a Map. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[border](../../sdk-15.04.1/QtLocation.MapRectangle/index.html#border-prop)****
    -   ****[border.width](../../sdk-15.04.1/QtLocation.MapRectangle/index.html#border.width-prop)**** : int
    -   ****[border.color](../../sdk-15.04.1/QtLocation.MapRectangle/index.html#border.color-prop)**** : color
-   ****[bottomRight](../../sdk-15.04.1/QtLocation.MapRectangle/index.html#bottomRight-prop)**** : coordinate
-   ****[color](../../sdk-15.04.1/QtLocation.MapRectangle/index.html#color-prop)**** : color
-   ****[opacity](../../sdk-15.04.1/QtLocation.MapRectangle/index.html#opacity-prop)**** : real
-   ****[topLeft](../../sdk-15.04.1/QtLocation.MapRectangle/index.html#topLeft-prop)**** : coordinate

<span id="details"></span>
Detailed Description
--------------------

The [MapRectangle](../../sdk-15.04.1/QtLocation.MapRectangle/index.html) type displays a rectangle on a Map. Rectangles are a special case of Polygon with exactly 4 vertices and 4 "straight" edges. In this case, "straight" means that the top-left point has the same latitude as the top-right point (the top edge), and the bottom-left point has the same latitude as the bottom-right point (the bottom edge). Similarly, the points on the left side have the same longitude, and the points on the right side have the same longitude.

To specify the rectangle, it requires a [topLeft](../../sdk-15.04.1/QtLocation.MapRectangle/index.html#topLeft-prop) and [bottomRight](../../sdk-15.04.1/QtLocation.MapRectangle/index.html#bottomRight-prop) point, both given by a coordinate.

By default, the rectangle is displayed with transparent fill and a 1-pixel thick black border. This can be changed using the [color](../../sdk-15.04.1/QtLocation.MapRectangle/index.html#color-prop), [border.color](../../sdk-15.04.1/QtLocation.MapRectangle/index.html#border.color-prop) and [border.width](../../sdk-15.04.1/QtLocation.MapRectangle/index.html#border.width-prop) properties.

**Note:** Similar to the [MapPolygon](../../sdk-15.04.1/QtLocation.MapPolygon/index.html) type, MapRectangles are geographic items, thus dragging a [MapRectangle](../../sdk-15.04.1/QtLocation.MapRectangle/index.html) causes its vertices to be recalculated in the geographic coordinate space. Apparent stretching of the item occurs when dragged to the a different latitude, however, its edges remain straight.

<span id="performance"></span>
### Performance

MapRectangles have a rendering cost identical to a [MapPolygon](../../sdk-15.04.1/QtLocation.MapPolygon/index.html) with 4 vertices.

Like the other map objects, [MapRectangle](../../sdk-15.04.1/QtLocation.MapRectangle/index.html) is normally drawn without a smooth appearance. Setting the [opacity](../../sdk-15.04.1/QtLocation.MapRectangle/index.html#opacity-prop) property will force the object to be blended, which decreases performance considerably depending on the hardware in use.

<span id="example-usage"></span>
### Example Usage

The following snippet shows a map containing a [MapRectangle](../../sdk-15.04.1/QtLocation.MapRectangle/index.html), spanning from (-27, 153) to (-28, 153.5), near Brisbane, Australia. The rectangle is filled in green, with a 2 pixel black border.

``` cpp
Map {
    MapRectangle {
        color: 'green'
        border.width: 2
        topLeft {
            latitude: -27
            longitude: 153
        }
        bottomRight {
            latitude: -28
            longitude: 153.5
        }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/bddd67c8-f5f1-4518-bb46-08d1bcbb8201-api/apps/qml/sdk-15.04.1/QtLocation.MapRectangle/images/api-maprectangle.png)

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

This property is part of the border property group. The border property group holds the width and color used to draw the border of the rectangle. The width is in pixels and is independent of the zoom level of the map.

The default values correspond to a black border with a width of 1 pixel. For no line, use a width of 0 or a transparent color.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="bottomRight-prop"></span><span class="name">bottomRight</span> : <span class="type">coordinate</span></p></td>
</tr>
</tbody>
</table>

This property holds the bottom-right coordinate of the [MapRectangle](../../sdk-15.04.1/QtLocation.MapRectangle/index.html) which can be used to retrieve its longitude, latitude and altitude.

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

This property holds the fill color of the rectangle. For no fill, use a transparent color.

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
<td><p><span id="topLeft-prop"></span><span class="name">topLeft</span> : <span class="type">coordinate</span></p></td>
</tr>
</tbody>
</table>

This property holds the top-left coordinate of the [MapRectangle](../../sdk-15.04.1/QtLocation.MapRectangle/index.html) which can be used to retrieve its longitude, latitude and altitude.

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

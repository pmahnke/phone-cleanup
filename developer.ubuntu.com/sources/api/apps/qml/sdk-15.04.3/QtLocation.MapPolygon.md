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

-   MapPolygon

MapPolygon
==========

<span class="subtitle"></span>
The MapPolygon type displays a polygon on a Map More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[border](../../sdk-15.04.1/QtLocation.MapPolygon/index.html#border-prop)****
    -   ****[border.width](../../sdk-15.04.1/QtLocation.MapPolygon/index.html#border.width-prop)**** : int
    -   ****[border.color](../../sdk-15.04.1/QtLocation.MapPolygon/index.html#border.color-prop)**** : color
-   ****[color](../../sdk-15.04.1/QtLocation.MapPolygon/index.html#color-prop)**** : color
-   ****[path](../../sdk-15.04.1/QtLocation.MapPolygon/index.html#path-prop)**** : list&lt;coordinate&gt;

<span id="methods"></span>
Methods
-------

-   ****[addCoordinate](../../sdk-15.04.1/QtLocation.MapPolygon/index.html#addCoordinate-method)****(coordinate)
-   ****[removeCoordinate](../../sdk-15.04.1/QtLocation.MapPolygon/index.html#removeCoordinate-method)****(coordinate)

<span id="details"></span>
Detailed Description
--------------------

The [MapPolygon](../../sdk-15.04.1/QtLocation.MapPolygon/index.html) type displays a polygon on a Map, specified in terms of an ordered list of coordinates. For best appearance and results, polygons should be simple (not self-intersecting).

The coordinates on the path cannot be directly changed after being added to the Polygon. Instead, copy the [path](../../sdk-15.04.1/QtLocation.MapPolygon/index.html#path-prop) into a var, modify the copy and reassign the copy back to the [path](../../sdk-15.04.1/QtLocation.MapPolygon/index.html#path-prop).

``` cpp
var path = mapPolygon.path;
path[0].latitude = 5;
mapPolygon.path = path;
```

Coordinates can also be added and removed at any time using the [addCoordinate](../../sdk-15.04.1/QtLocation.MapPolygon/index.html#addCoordinate-method) and [removeCoordinate](../../sdk-15.04.1/QtLocation.MapPolygon/index.html#removeCoordinate-method) methods.

For drawing rectangles with "straight" edges (same latitude across one edge, same latitude across the other), the [MapRectangle](../../sdk-15.04.1/QtLocation.MapRectangle/index.html) type provides a simpler, two-point API.

By default, the polygon is displayed as a 1 pixel black border with no fill. To change its appearance, use the [color](../../sdk-15.04.1/QtLocation.MapPolygon/index.html#color-prop), [border.color](../../sdk-15.04.1/QtLocation.MapPolygon/index.html#border.color-prop) and [border.width](../../sdk-15.04.1/QtLocation.MapPolygon/index.html#border.width-prop) properties.

**Note:** Since MapPolygons are geographic items, dragging a [MapPolygon](../../sdk-15.04.1/QtLocation.MapPolygon/index.html) (through the use of MouseArea) causes its vertices to be recalculated in the geographic coordinate space. The edges retain the same geographic lengths (latitude and longitude differences between the vertices), but they remain straight. Apparent stretching of the item occurs when dragged to a different latitude.

<span id="performance"></span>
### Performance

MapPolygons have a rendering cost that is O(n) with respect to the number of vertices. This means that the per frame cost of having a Polygon on the Map grows in direct proportion to the number of points on the Polygon. There is an additional triangulation cost (approximately O(n log n)) which is currently paid with each frame, but in future may be paid only upon adding or removing points.

Like the other map objects, [MapPolygon](../../sdk-15.04.1/QtLocation.MapPolygon/index.html) is normally drawn without a smooth appearance. Setting the opacity property will force the object to be blended, which decreases performance considerably depending on the hardware in use.

<span id="example-usage"></span>
### Example Usage

The following snippet shows a [MapPolygon](../../sdk-15.04.1/QtLocation.MapPolygon/index.html) being used to display a triangle, with three vertices near Brisbane, Australia. The triangle is filled in green, with a 1 pixel black border.

``` cpp
Map {
    MapPolygon {
        color: 'green'
        path: [
            { latitude: -27, longitude: 153.0 },
            { latitude: -27, longitude: 154.1 },
            { latitude: -28, longitude: 153.5 }
        ]
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/29a2920b-1ce7-48db-96e5-c81cae609c77-api/apps/qml/sdk-15.04.1/QtLocation.MapPolygon/images/api-mappolygon.png)

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

This property is part of the border property group. The border property group holds the width and color used to draw the border of the polygon.

The width is in pixels and is independent of the zoom level of the map.

The default values correspond to a black border with a width of 1 pixel. For no line, use a width of 0 or a transparent color.

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

This property holds the color used to fill the polygon.

The default value is transparent.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="path-prop"></span><span class="name">path</span> : <span class="type">list</span>&lt;<span class="type">coordinate</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the ordered list of coordinates which define the polygon.

**See also** [addCoordinate](../../sdk-15.04.1/QtLocation.MapPolygon/index.html#addCoordinate-method) and [removeCoordinate](../../sdk-15.04.1/QtLocation.MapPolygon/index.html#removeCoordinate-method).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addCoordinate-method"></span><span class="name">addCoordinate</span>(<span class="type">coordinate</span>)</p></td>
</tr>
</tbody>
</table>

Adds a coordinate to the path.

**See also** [removeCoordinate](../../sdk-15.04.1/QtLocation.MapPolygon/index.html#removeCoordinate-method) and [path](../../sdk-15.04.1/QtLocation.MapPolygon/index.html#path-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeCoordinate-method"></span><span class="name">removeCoordinate</span>(<span class="type">coordinate</span>)</p></td>
</tr>
</tbody>
</table>

Removes a coordinate from the path. If there are multiple instances of the same coordinate, the one added last is removed.

**See also** [addCoordinate](../../sdk-15.04.1/QtLocation.MapPolygon/index.html#addCoordinate-method) and [path](../../sdk-15.04.1/QtLocation.MapPolygon/index.html#path-prop).

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

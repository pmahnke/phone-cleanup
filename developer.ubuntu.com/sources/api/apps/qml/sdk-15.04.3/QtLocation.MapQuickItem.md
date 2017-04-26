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

-   MapQuickItem

MapQuickItem
============

<span class="subtitle"></span>
The MapQuickItem type displays an arbitrary Qt Quick object on a Map. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[anchorPoint](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html#anchorPoint-prop)**** : QPointF
-   ****[coordinate](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html#coordinate-prop)**** : coordinate
-   ****[sourceItem](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html#sourceItem-prop)**** : object
-   ****[zoomLevel](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html#zoomLevel-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The [MapQuickItem](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html) type is used to place an arbitrary Qt Quick object on a Map at a specified location and size. Compared to floating an item above the Map, a [MapQuickItem](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html) will follow the panning (and optionally, the zooming) of the Map as if it is on the Map surface.

The [sourceItem](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html#sourceItem-prop) property contains the Qt Quick item to be drawn, which can be any kind of visible type.

<span id="positioning-and-sizing"></span>
### Positioning and Sizing

The positioning of the [MapQuickItem](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html) on the Map is controlled by two properties: [coordinate](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html#coordinate-prop) and [anchorPoint](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html#anchorPoint-prop). If only [coordinate](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html#coordinate-prop) is set, it specifies a longitude/latitude coordinate for the item to be placed at. The set coordinate will line up with the top-left corner of the contained item when shown on the screen.

The [anchorPoint](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html#anchorPoint-prop) property provides a way to line up the coordinate with other parts of the item than just the top-left corner, by setting a number of pixels the item will be offset by. A simple way to think about it is to note that the point given by [anchorPoint](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html#anchorPoint-prop) on the item itself is the point that will line up with the given [coordinate](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html#coordinate-prop) when displayed.

In addition to being anchored to the map, the [MapQuickItem](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html) can optionally follow the scale of the map, and change size when the Map is zoomed in or zoomed out. This behaviour is controlled by the [zoomLevel](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html#zoomLevel-prop) property. The default behaviour if [zoomLevel](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html#zoomLevel-prop) is not set is for the item to be drawn "on the screen" rather than "on the map", so that its size remains the same regardless of the zoom level of the Map.

<span id="performance"></span>
### Performance

Performance of a [MapQuickItem](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html) is normally in the same ballpark as the contained Qt Quick item alone. Overheads added amount to a translation and (possibly) scaling of the original item, as well as a transformation from longitude and latitude to screen position.

<span id="limitations"></span>
### Limitations

**Note:** Due to an implementation detail, items placed inside a [MapQuickItem](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html) will have a `parent` item which is not the [MapQuickItem](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html). Refer to the [MapQuickItem](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html) by its `id`, and avoid the use of `anchor` in the `sourceItem`.

<span id="example-usage"></span>
### Example Usage

The following snippet shows a [MapQuickItem](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html) containing an Image object, to display a Marker on the Map. This strategy is used to show the map markers in the MapViewer example.

``` qml
MapQuickItem {
    id: marker
    anchorPoint.x: image.width/4
    anchorPoint.y: image.height
    sourceItem: Image {
        id: image
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/25dc5576-cab8-47b0-b5ad-283091110cc7-api/apps/qml/sdk-15.04.1/QtLocation.MapQuickItem/images/api-mapquickitem.png)

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="anchorPoint-prop"></span><span class="name">anchorPoint</span> : <span class="type">QPointF</span></p></td>
</tr>
</tbody>
</table>

This property determines which point on the sourceItem that will be lined up with the coordinate on the map.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="coordinate-prop"></span><span class="name">coordinate</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.MapQuickItem/index.html#coordinate-prop">coordinate</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the anchor coordinate of the [MapQuickItem](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html). The point on the [sourceItem](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html#sourceItem-prop) that is specified by [anchorPoint](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html#anchorPoint-prop) is kept aligned with this coordinate when drawn on the map.

In the image below, there are 3 MapQuickItems that are identical except for the value of their [anchorPoint](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html#anchorPoint-prop) properties. The values of [anchorPoint](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html#anchorPoint-prop) for each are written on top of the item.

![](https://developer.ubuntu.com/static/devportal_uploaded/b69ec52f-c5a9-4581-88e2-c819f40d97ba-api/apps/qml/sdk-15.04.1/QtLocation.MapQuickItem/images/api-mapquickitem-anchor.png)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceItem-prop"></span><span class="name">sourceItem</span> : <span class="type">object</span></p></td>
</tr>
</tbody>
</table>

This property holds the source item that will be drawn on the map.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="zoomLevel-prop"></span><span class="name">zoomLevel</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property controls the scaling behaviour of the contents of the [MapQuickItem](../../sdk-15.04.1/QtLocation.MapQuickItem/index.html). In particular, by setting this property it is possible to choose between objects that are drawn on the screen (and sized in screen pixels), and those drawn on the map surface (which change size with the zoom level of the map).

The default value for this property is 0.0, which corresponds to drawing the object on the screen surface. If set to another value, the object will be drawn on the map surface instead. The value (if not zero) specifies the zoomLevel at which the object will be visible at a scale of 1:1 (ie, where object pixels and screen pixels are the same). At zoom levels lower than this, the object will appear smaller, and at higher zoom levels, appear larger. This is in contrast to when this property is set to zero, where the object remains the same size on the screen at all zoom levels.

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

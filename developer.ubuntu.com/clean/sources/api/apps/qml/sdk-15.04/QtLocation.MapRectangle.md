---
Title: QtLocation.MapRectangle
---
        
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

-   ****[border](#border-prop)****
    -   ****[border.width](#border.width-prop)**** : int
    -   ****[border.color](#border.color-prop)**** : color
-   ****[bottomRight](#bottomRight-prop)**** : coordinate
-   ****[color](#color-prop)**** : color
-   ****[opacity](#opacity-prop)**** : real
-   ****[topLeft](#topLeft-prop)**** : coordinate

<span id="details"></span>
Detailed Description
--------------------

The [MapRectangle](index.html) type displays a rectangle on a Map. Rectangles are a special case of Polygon with exactly 4 vertices and 4 "straight" edges. In this case, "straight" means that the top-left point has the same latitude as the top-right point (the top edge), and the bottom-left point has the same latitude as the bottom-right point (the bottom edge). Similarly, the points on the left side have the same longitude, and the points on the right side have the same longitude.

To specify the rectangle, it requires a [topLeft](#topLeft-prop) and [bottomRight](#bottomRight-prop) point, both given by a coordinate.

By default, the rectangle is displayed with transparent fill and a 1-pixel thick black border. This can be changed using the [color](#color-prop), [border.color](#border.color-prop) and [border.width](#border.width-prop) properties.

**Note:** Similar to the [MapPolygon](../QtLocation.MapPolygon.md) type, MapRectangles are geographic items, thus dragging a [MapRectangle](index.html) causes its vertices to be recalculated in the geographic coordinate space. Apparent stretching of the item occurs when dragged to the a different latitude, however, its edges remain straight.

<span id="performance"></span>
### Performance

MapRectangles have a rendering cost identical to a [MapPolygon](../QtLocation.MapPolygon.md) with 4 vertices.

Like the other map objects, [MapRectangle](index.html) is normally drawn without a smooth appearance. Setting the [opacity](#opacity-prop) property will force the object to be blended, which decreases performance considerably depending on the hardware in use.

<span id="example-usage"></span>
### Example Usage

The following snippet shows a map containing a [MapRectangle](index.html), spanning from (-27, 153) to (-28, 153.5), near Brisbane, Australia. The rectangle is filled in green, with a 2 pixel black border.

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

![](https://developer.ubuntu.com/static/devportal_uploaded/62f4c91b-5c9b-40cf-876f-31bdad53a6fa-api/apps/qml/sdk-15.04/QtLocation.MapRectangle/images/api-maprectangle.png)

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

This property holds the bottom-right coordinate of the [MapRectangle](index.html) which can be used to retrieve its longitude, latitude and altitude.

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

This property holds the top-left coordinate of the [MapRectangle](index.html) which can be used to retrieve its longitude, latitude and altitude.


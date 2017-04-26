---
Title: QtLocation.MapPolygon
---
        
MapPolygon
==========

<span class="subtitle"></span>
The MapPolygon type displays a polygon on a Map More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | `import QtLocation 5.3` |
| Since:            | Qt Location 5.0         |

<span id="properties"></span>
Properties
----------

-   ****[border.color](#border.color-prop)**** : color
-   ****[border.width](#border.width-prop)**** : int
-   ****[color](#color-prop)**** : color
-   ****[path](#path-prop)**** : list&lt;coordinate&gt;

<span id="methods"></span>
Methods
-------

-   ****[addCoordinate](#addCoordinate-method)****(coordinate)
-   ****[removeCoordinate](#removeCoordinate-method)****(coordinate)

<span id="details"></span>
Detailed Description
--------------------

The MapPolygon type displays a polygon on a Map, specified in terms of an ordered list of coordinates. For best appearance and results, polygons should be simple (not self-intersecting).

The coordinates on the path cannot be directly changed after being added to the Polygon. Instead, copy the [path](#path-prop) into a var, modify the copy and reassign the copy back to the [path](#path-prop).

``` cpp
var path = mapPolygon.path;
path[0].latitude = 5;
mapPolygon.path = path;
```

Coordinates can also be added and removed at any time using the [addCoordinate](#addCoordinate-method) and [removeCoordinate](#removeCoordinate-method) methods.

For drawing rectangles with "straight" edges (same latitude across one edge, same latitude across the other), the [MapRectangle](../QtLocation.MapRectangle.md) type provides a simpler, two-point API.

By default, the polygon is displayed as a 1 pixel black border with no fill. To change its appearance, use the [color](#color-prop), [border.color](#border.color-prop) and [border.width](#border.width-prop) properties.

**Note:** Since MapPolygons are geographic items, dragging a MapPolygon (through the use of MouseArea) causes its vertices to be recalculated in the geographic coordinate space. The edges retain the same geographic lengths (latitude and longitude differences between the vertices), but they remain straight. Apparent stretching of the item occurs when dragged to a different latitude.

<span id="performance"></span>
### Performance

MapPolygons have a rendering cost that is O(n) with respect to the number of vertices. This means that the per frame cost of having a Polygon on the Map grows in direct proportion to the number of points on the Polygon. There is an additional triangulation cost (approximately O(n log n)) which is currently paid with each frame, but in future may be paid only upon adding or removing points.

Like the other map objects, MapPolygon is normally drawn without a smooth appearance. Setting the opacity property will force the object to be blended, which decreases performance considerably depending on the hardware in use.

<span id="example-usage"></span>
### Example Usage

The following snippet shows a MapPolygon being used to display a triangle, with three vertices near Brisbane, Australia. The triangle is filled in green, with a 1 pixel black border.

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

![](https://developer.ubuntu.com/static/devportal_uploaded/bb1d3c2d-7647-48ee-ba76-21cbd6f1f3b0-api/apps/qml/sdk-14.10/QtLocation.MapPolygon/images/api-mappolygon.png)

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="border.color-prop"></span><span class="name">border.color</span> : <span class="type"><a href="#color-prop">color</a></span></p></td>
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
<td><p><span id="border.width-prop"></span><span class="name">border.width</span> : <span class="type">int</span></p></td>
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

**See also** [addCoordinate](#addCoordinate-method) and [removeCoordinate](#removeCoordinate-method).

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

**See also** [removeCoordinate](#removeCoordinate-method) and [path](#path-prop).

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

**See also** [addCoordinate](#addCoordinate-method) and [path](#path-prop).


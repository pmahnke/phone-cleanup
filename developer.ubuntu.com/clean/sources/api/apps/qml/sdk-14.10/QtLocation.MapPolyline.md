---
Title: QtLocation.MapPolyline
---
        
MapPolyline
===========

<span class="subtitle"></span>
The MapPolyline type displays a polyline on a map. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | `import QtLocation 5.3` |
| Since:            | Qt Location 5.0         |

<span id="properties"></span>
Properties
----------

-   ****[line.color](#line.color-prop)**** : color
-   ****[line.width](#line.width-prop)**** : int
-   ****[path](#path-prop)**** : list&lt;coordinate&gt;

<span id="methods"></span>
Methods
-------

-   ****[addCoordinate](#addCoordinate-method)****(coordinate)
-   ****[removeCoordinate](#removeCoordinate-method)****(coordinate)

<span id="details"></span>
Detailed Description
--------------------

The MapPolyline type displays a polyline on a map, specified in terms of an ordered list of coordinates. The coordinates on the path cannot be directly changed after being added to the Polyline. Instead, copy the [path](#path-prop) into a var, modify the copy and reassign the copy back to the [path](#path-prop).

``` cpp
var path = mapPolyline.path;
path[0].latitude = 5;
mapPolyline.path = path;
```

Coordinates can also be added and removed at any time using the [addCoordinate](#addCoordinate-method) and [removeCoordinate](#removeCoordinate-method) methods.

By default, the polyline is displayed as a 1-pixel thick black line. This can be changed using the [line.width](#line.width-prop) and [line.color](#line.color-prop) properties.

<span id="performance"></span>
### Performance

MapPolylines have a rendering cost that is O(n) with respect to the number of vertices. This means that the per frame cost of having a polyline on the Map grows in direct proportion to the number of points in the polyline.

Like the other map objects, MapPolyline is normally drawn without a smooth appearance. Setting the opacity property will force the object to be blended, which decreases performance considerably depending on the hardware in use.

**Note:** MapPolylines are implemented using the OpenGL GL\_LINES primitive. There have been occasional reports of issues and rendering inconsistencies on some (particularly quite old) platforms. No workaround is yet available for these issues.

<span id="example-usage"></span>
### Example Usage

The following snippet shows a MapPolyline with 4 points, making a shape like the top part of a "question mark" (?), near Brisbane, Australia. The line drawn is 3 pixels in width and green in color.

``` cpp
Map {
    MapPolyline {
        line.width: 3
        line.color: 'green'
        path: [
            { latitude: -27, longitude: 153.0 },
            { latitude: -27, longitude: 154.1 },
            { latitude: -28, longitude: 153.5 },
            { latitude: -29, longitude: 153.5 }
        ]
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/d7e350ac-025c-4160-a9c0-7c7a43155bbe-api/apps/qml/sdk-14.10/QtLocation.MapPolyline/images/api-mappolyline.png)

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
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
<td><p><span id="line.width-prop"></span><span class="name">line.width</span> : <span class="type">int</span></p></td>
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
<td><p><span id="path-prop"></span><span class="name">path</span> : <span class="type">list</span>&lt;<span class="type">coordinate</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the ordered list of coordinates which define the polyline.

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


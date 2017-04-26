---
Title: QtLocation.MapRoute
---
        
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

-   ****[line](#line-prop)****
    -   ****[line.width](#line.width-prop)**** : int
    -   ****[line.color](#line.color-prop)**** : color
-   ****[route](#route-prop)**** : Route

<span id="details"></span>
Detailed Description
--------------------

The [MapRoute](index.html) type displays a Route obtained through a [RouteModel](../QtLocation.RouteModel.md) or other means, on the Map as a Polyline following the path of the Route.

[MapRoute](index.html) is really a [MapPolyline](../QtLocation.MapPolyline.md), but with the path specified using the [route](#route-prop) property instead of directly in coordinates.

By default, the route is displayed as a 1-pixel thick black line. This can be changed using the [line.width](#line.width-prop) and [line.color](#line.color-prop) properties.

<span id="performance"></span>
### Performance

For notes about the performance on [MapRoute](index.html), refer to the documentation for [MapPolyline](../QtLocation.MapPolyline.md).

<span id="example-usage"></span>
### Example Usage

Here is how to draw a [route](../QtLocation.Route.md) on a [map](../QtLocation.Map.md):

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
<td><p><span id="route-prop"></span><span class="name">route</span> : <span class="type"><a href="QtLocation.Route.md">Route</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the route to be drawn which can be used to represent one geographical route.


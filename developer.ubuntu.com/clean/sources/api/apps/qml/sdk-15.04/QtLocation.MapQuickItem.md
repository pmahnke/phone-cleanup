---
Title: QtLocation.MapQuickItem
---
        
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

-   ****[anchorPoint](#anchorPoint-prop)**** : QPointF
-   ****[coordinate](#coordinate-prop)**** : coordinate
-   ****[sourceItem](#sourceItem-prop)**** : object
-   ****[zoomLevel](#zoomLevel-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The [MapQuickItem](index.html) type is used to place an arbitrary Qt Quick object on a Map at a specified location and size. Compared to floating an item above the Map, a [MapQuickItem](index.html) will follow the panning (and optionally, the zooming) of the Map as if it is on the Map surface.

The [sourceItem](#sourceItem-prop) property contains the Qt Quick item to be drawn, which can be any kind of visible type.

<span id="positioning-and-sizing"></span>
### Positioning and Sizing

The positioning of the [MapQuickItem](index.html) on the Map is controlled by two properties: [coordinate](#coordinate-prop) and [anchorPoint](#anchorPoint-prop). If only [coordinate](#coordinate-prop) is set, it specifies a longitude/latitude coordinate for the item to be placed at. The set coordinate will line up with the top-left corner of the contained item when shown on the screen.

The [anchorPoint](#anchorPoint-prop) property provides a way to line up the coordinate with other parts of the item than just the top-left corner, by setting a number of pixels the item will be offset by. A simple way to think about it is to note that the point given by [anchorPoint](#anchorPoint-prop) on the item itself is the point that will line up with the given [coordinate](#coordinate-prop) when displayed.

In addition to being anchored to the map, the [MapQuickItem](index.html) can optionally follow the scale of the map, and change size when the Map is zoomed in or zoomed out. This behaviour is controlled by the [zoomLevel](#zoomLevel-prop) property. The default behaviour if [zoomLevel](#zoomLevel-prop) is not set is for the item to be drawn "on the screen" rather than "on the map", so that its size remains the same regardless of the zoom level of the Map.

<span id="performance"></span>
### Performance

Performance of a [MapQuickItem](index.html) is normally in the same ballpark as the contained Qt Quick item alone. Overheads added amount to a translation and (possibly) scaling of the original item, as well as a transformation from longitude and latitude to screen position.

<span id="limitations"></span>
### Limitations

**Note:** Due to an implementation detail, items placed inside a [MapQuickItem](index.html) will have a `parent` item which is not the [MapQuickItem](index.html). Refer to the [MapQuickItem](index.html) by its `id`, and avoid the use of `anchor` in the `sourceItem`.

<span id="example-usage"></span>
### Example Usage

The following snippet shows a [MapQuickItem](index.html) containing an Image object, to display a Marker on the Map. This strategy is used to show the map markers in the MapViewer example.

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

![](https://developer.ubuntu.com/static/devportal_uploaded/6465de9c-a02a-4c5f-9227-b7658ba808fb-api/apps/qml/sdk-15.04/QtLocation.MapQuickItem/images/api-mapquickitem.png)

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
<td><p><span id="coordinate-prop"></span><span class="name">coordinate</span> : <span class="type"><a href="#coordinate-prop">coordinate</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the anchor coordinate of the [MapQuickItem](index.html). The point on the [sourceItem](#sourceItem-prop) that is specified by [anchorPoint](#anchorPoint-prop) is kept aligned with this coordinate when drawn on the map.

In the image below, there are 3 MapQuickItems that are identical except for the value of their [anchorPoint](#anchorPoint-prop) properties. The values of [anchorPoint](#anchorPoint-prop) for each are written on top of the item.

![](https://developer.ubuntu.com/static/devportal_uploaded/6b2fe39a-ca31-446b-a5dd-92d37323c0a6-api/apps/qml/sdk-15.04/QtLocation.MapQuickItem/images/api-mapquickitem-anchor.png)

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

This property controls the scaling behaviour of the contents of the [MapQuickItem](index.html). In particular, by setting this property it is possible to choose between objects that are drawn on the screen (and sized in screen pixels), and those drawn on the map surface (which change size with the zoom level of the map).

The default value for this property is 0.0, which corresponds to drawing the object on the screen surface. If set to another value, the object will be drawn on the map surface instead. The value (if not zero) specifies the zoomLevel at which the object will be visible at a scale of 1:1 (ie, where object pixels and screen pixels are the same). At zoom levels lower than this, the object will appear smaller, and at higher zoom levels, appear larger. This is in contrast to when this property is set to zero, where the object remains the same size on the screen at all zoom levels.


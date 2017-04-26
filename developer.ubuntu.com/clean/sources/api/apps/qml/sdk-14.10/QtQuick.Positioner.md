---
Title: QtQuick.Positioner
---
        
Positioner
==========

<span class="subtitle"></span>
Provides attached properties that contain details on where an item exists in a positioner More...

|                   |                      |
|-------------------|----------------------|
| Import Statement: | `import QtQuick 2.2` |

<span id="attached-properties"></span>
Attached Properties
-------------------

-   ****[index](#index-prop)**** : int
-   ****[isFirstItem](#isFirstItem-prop)**** : bool
-   ****[isLastItem](#isLastItem-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

An object of type Positioner is attached to the top-level child item within a Column, Row, Flow or Grid. It provides properties that allow a child item to determine where it exists within the layout of its parent Column, Row, Flow or Grid.

For example, below is a [Grid](../QtQuick.Grid.md) with 16 child rectangles, as created through a [Repeater](../QtQuick.Repeater.md). Each [Rectangle](../QtQuick.Rectangle.md) displays its index in the Grid using [Positioner.index](#index-prop), and the first item is colored differently by taking [Positioner.isFirstItem](#isFirstItem-prop) into account:

``` cpp
Grid {
    Repeater {
        model: 16
        Rectangle {
            id: rect
            width: 30; height: 30
            border.width: 1
            color: Positioner.isFirstItem ? "yellow" : "lightsteelblue"
            Text { text: rect.Positioner.index }
        }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/6f58a5cf-7903-41a0-8c08-441182d9dbce-api/apps/qml/sdk-14.10/QtQuick.Positioner/images/positioner-example.png)

Attached Property Documentation
-------------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="index-prop"></span><span class="name">.index</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property allows the item to determine its index within the positioner.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isFirstItem-prop"></span><span class="name">.isFirstItem</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

These properties allow the item to determine if it is the first or last item in the positioner, respectively.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isLastItem-prop"></span><span class="name">.isLastItem</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

These properties allow the item to determine if it is the first or last item in the positioner, respectively.


---
Title: QtQuick.Translate
---
        
Translate
=========

<span class="subtitle"></span>
Provides a way to move an Item without changing its x or y properties More...

|                   |                      |
|-------------------|----------------------|
| Import Statement: | `import QtQuick 2.2` |

<span id="properties"></span>
Properties
----------

-   ****[x](#x-prop)**** : real
-   ****[y](#y-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The Translate type provides independent control over position in addition to the Item's x and y properties.

The following example moves the Y axis of the [Rectangle](../QtQuick.Rectangle.md) items while still allowing the [Row](../QtQuick.Row.md) to lay the items out as if they had not been transformed:

``` qml
import QtQuick 2.0
Row {
    Rectangle {
        width: 100; height: 100
        color: "blue"
        transform: Translate { y: 20 }
    }
    Rectangle {
        width: 100; height: 100
        color: "red"
        transform: Translate { y: -20 }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/b7aff4c9-c6f8-4312-b2a6-db7ae3caadae-api/apps/qml/sdk-14.10/QtQuick.Translate/images/translate.png)

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="x-prop"></span><span class="name">x</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The translation along the X axis.

The default value is 0.0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="y-prop"></span><span class="name">y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The translation along the Y axis.

The default value is 0.0.


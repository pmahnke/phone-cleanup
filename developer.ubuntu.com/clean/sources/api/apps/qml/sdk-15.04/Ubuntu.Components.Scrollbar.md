---
Title: Ubuntu.Components.Scrollbar
---
        
Scrollbar
=========

<span class="subtitle"></span>
The ScrollBar component provides scrolling functionality for scrollable views (i.e. Flickable, ListView). More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.2</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[activeFocusOnPress](#activeFocusOnPress-prop)**** : bool
-   ****[align](#align-prop)**** : int
-   ****[flickableItem](#flickableItem-prop)**** : Flickable
-   ****[style](#style-prop)**** : Component

<span id="details"></span>
Detailed Description
--------------------

The ScrollBar can be set to any flickable and has built-in anchoring setup to the attached flickable's front, rear, top or bottom. the scrollbar can also be aligned using anchors, however the built-in align functionality makes sure to have the proper alignemt applied based on theme and layout direction (RTL or LTR).

The content position is driven through the attached Flickable. Therefore every style implementation should drive the position through contentX/contentY properties, depending on whether the orientation is vertical or horizontal.

Example:

``` qml
Item {
    ListView {
        id: list
        width: units.gu(37)
        height: units.gu(37)
        model: 30
        delegate: Rectangle {
            width: ListView.view.width
            height: units.gu(5)
            Text {
                anchors.fill: parent
                text: "Item " + modelData
            }
        }
    }
    Scrollbar {
        flickableItem: list
        align: Qt.AlignTrailing
    }
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activeFocusOnPress-prop"></span><span class="name">activeFocusOnPress</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property specifies whether the [StyledItem](../Ubuntu.Components.StyledItem.md) can gain focus on a mouse press/touch or not. When the value is true, the focus will be set on the component when the mouse is pressed over it or touched. However if one of the component's ancestor [StyledItem](../Ubuntu.Components.StyledItem.md) or derived is having the property value false, the focus will not be gained automatically.

In the following example the [TextField](../Ubuntu.Components.TextField.md) will stay focused when clicked on the red rectangle.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
Column {
    width: units.gu(50)
    height: units.gu(100)
    StyledItem {
        objectName: "passiveScope"
        width: parent.width
        height: units.gu(30)
        Rectangle {
            anchors.fill: parent
            color: "red"
            StyledItem {
                objectName: "activeScope"
                activeFocusOnPress: true
                anchors.fill: parent
            }
        }
    }
    TextField {
        id: input
        text: "The input stays focus even if red box is clicked"
    }
    Component.onCompleted: input.forceActiveFocus()
    Connections {
        target: window
        onActiveFocusItemChanged: console.debug("focus on", window.activeFocusItem)
    }
}
```

The default value is `false`.

This QML property was introduced in Ubuntu.Components 1.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="align-prop"></span><span class="name">align</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The property defines the alignment of the scrollbar to the [flickableItem](#flickableItem-prop). The implementation handles the alignment as follows:

-   Qt.AlignLeading anchors to the left on LTR and to the right on RTL layouts
-   Qt.AlignTrailing anchors to the right on LTR and to the left on RTL layouts
-   Qt.AlignTop anchors to the top
-   Qt.AlignBottom anchors to the bottom

The default value is **Qt.AlignTrailing**.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickableItem-prop"></span><span class="name">flickableItem</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Flickable.md">Flickable</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the flickable item (Flickable, [ListView](../../sdk-14.10/QtQuick.ListView.md) or [GridView](../../sdk-14.10/QtQuick.qtquick-draganddrop-example.md#gridview)) the Scrollbar is attached to.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="style-prop"></span><span class="name">style</span> : <span class="type"><a href="../sdk-14.10/QtQml.Component.md">Component</a></span></p></td>
</tr>
</tbody>
</table>

Component instantiated immediately and placed below everything else.


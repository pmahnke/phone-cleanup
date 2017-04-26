---
Title: Ubuntu.Components.Pickers.Dialer
---
        
Dialer
======

<span class="subtitle"></span>
Dialer is a phone dialer style picker component. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td><code>import Ubuntu.Components.Pickers 1.0</code></td>
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
-   ****[centerContent](#centerContent-prop)**** : list&lt;var&gt;
-   ****[centerItem](#centerItem-prop)**** : Item
-   ****[handSpace](#handSpace-prop)**** : real
-   ****[hands](#hands-prop)**** : list&lt;DialerHands&gt;
-   ****[maximumValue:](https://developer.ubuntu.comapps/qml/sdk-14.10/Ubuntu.Components.Pickers.Dialer/qml-ubuntu-components-pickers-dialer.html#maximumValue:-prop)**** : real
-   ****[minimumValue](#minimumValue-prop)**** : real
-   ****[minimumValue:](https://developer.ubuntu.comapps/qml/sdk-14.10/Ubuntu.Components.Pickers.Dialer/qml-ubuntu-components-pickers-dialer.html#minimumValue:-prop)**** : real
-   ****[size](#size-prop)**** : real
-   ****[style](#style-prop)**** : Component

<span id="signals"></span>
Signals
-------

-   ****[handUpdated](#handUpdated-signal)****(var *hand*)

<span id="details"></span>
Detailed Description
--------------------

The Dialer component is dedicated for value selection where the value is compound of several sections, i.e. hour, minute and second, or integral and decimal values. Each section is defined by a [DialerHand](../Ubuntu.Components.Pickers.DialerHand.md), which shares the same range as the dialer is having. Dialer hand visuals are placed on the same dialer disk, however this can be altered by setting different values to [DialerHand](../Ubuntu.Components.Pickers.DialerHand.md) propertries.

The following example shows how to create a dialer component to select a value between 0 and 50.

``` qml
import QtQuick 2.0
import Ubuntu.Components.Pickers 1.0
Dialer {
    size: units.gu(20)
    minimumValue: 0
    maximumValue: 50
    DialerHand {
        id: mainHand
        onValueChanged: console.log(value)
    }
}
```

**See also** [DialerHand](../Ubuntu.Components.Pickers.DialerHand.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activeFocusOnPress-prop"></span><span class="name">activeFocusOnPress</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

The property specifies whether the [StyledItem](../Ubuntu.Components.StyledItem.md) can gain focus on a mouse press/touch or not. When the value is true, the focus will be set on the component when the mouse is pressed over it or touched. However if one of the component's ancestor [StyledItem](../Ubuntu.Components.StyledItem.md) or derived is having the property value false, the focus will not be gained automatically.

In the following example the [TextField](../Ubuntu.Components.TextField.md) will stay focused when clicked on the red rectangle.

``` qml
import QtQuick 2.2
import Ubuntu.Components 1.1
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
<td><p><span id="centerContent-prop"></span><span class="name">centerContent</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-list.html">list</a></span>&lt;<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-var.html">var</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

The property holds the list of items to be placed inside of the center disk. Items placed inside the center disk can either be listed in this property or reparented to [centerItem](#centerItem-prop) property.

``` qml
Dialer {
    DialerHand {
        id: hand
        centerContent: [
            Label {
                // [...]
            }
            // [...]
        ]
    }
    // [...]
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="centerItem-prop"></span><span class="qmlreadonly">read-only</span><span class="name">centerItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the component from the center of the Dialer. Items wanted to be placed into the center of the Dialer must be reparented to this component, or listed in the [centerContent](#centerContent-prop) property.

Beside that, the property helps anchoring the center disk content to the item.

``` qml
Dialer {
    DialerHand {
        id: hand
        Label {
            parent: hand.centerItem
            // [...]
        }
    }
    // [...]
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="handSpace-prop"></span><span class="name">handSpace</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the height reserved for the dialer hands, being the distance between the outer and the inner dialer disks. This value cannot be higher than the half of the dialer [size](#size-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hands-prop"></span><span class="qmlreadonly">read-only</span><span class="name">hands</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-list.html">list</a></span>&lt;<span class="type">DialerHands</span>&gt;</p></td>
</tr>
</tbody>
</table>

The property holds the list of DialerHands added to Dialer. This may be the same as the children, however will contain only [DialerHand](../Ubuntu.Components.Pickers.DialerHand.md) objects.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumValue:-prop"></span><span class="name">maximumValue:</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td>
</tr>
</tbody>
</table>

These properties define the value range the dialer hand values can take. The default values are 0 and 360.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimumValue-prop"></span><span class="name">minimumValue</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td>
</tr>
</tbody>
</table>

These properties define the value range the dialer hand values can take. The default values are 0 and 360.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimumValue:-prop"></span><span class="name">minimumValue:</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td>
</tr>
</tbody>
</table>

These properties define the value range the dialer hand values can take. The default values are 0 and 360.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="size-prop"></span><span class="name">size</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the size of the dialer. The component should be sized using this property instead of using width and/or height properties. Sizing with this property it is made sure that the component will scale evenly.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="style-prop"></span><span class="name">style</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td>
</tr>
</tbody>
</table>

Component instantiated immediately and placed below everything else.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="handUpdated-signal"></span><span class="name">handUpdated</span>(<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-var.html">var</a></span> <em>hand</em>)</p></td>
</tr>
</tbody>
</table>

The signal is emited when the hand value is updated.


---
Title: Ubuntu.Components.Pickers.DialerHand
---
        
DialerHand
==========

<span class="subtitle"></span>
DialerHand represents a value selector on a Dialer. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components.Pickers 1.0</td>
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
-   ****[dialer](#dialer-prop)**** : Dialer
-   ****[hand](#hand-prop)**** : DialerHandGroup
-   ****[hand.draggable](#hand.draggable-prop)**** : bool
-   ****[hand.height](#hand.height-prop)**** : real
-   ****[hand.toCenterItem](#hand.toCenterItem-prop)**** : bool
-   ****[hand.visible](#hand.visible-prop)**** : bool
-   ****[hand.width](#hand.width-prop)**** : real
-   ****[index](#index-prop)**** : int
-   ****[overlay](#overlay-prop)**** : list&lt;QtObject&gt;
-   ****[style](#style-prop)**** : Component
-   ****[value](#value-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

[DialerHand](index.html) components have meaning only if those are placed inside Dialer components. The dialer hand presents a value selection from the given dialer's minimum and maximum values.

By default all hands are placed on the dialer's hand space, on the outer dialer disk. By default all hands have teh same size, 0.5GU width and height same as the handSpace specified in [Dialer](../Ubuntu.Components.Pickers.Dialer.md), however themes can specify preset values for each hand.

Hands can also be placed onto the inner disk by setting *hand.toCenterItem* property to true.

``` qml
Dialer {
    DialerHand {
        // this dialer hand will take the space as defined by the theme.
    }
    DialerHand {
        hand.height: units.gu(3)
        // this hand will have its width as defined by the theme
        // but height as 3 GU
    }
}
```

Items declared as children will be placed over the hands. These items will not be rotated togehther with the hand, these will always be shown horizontally. The hand can be hidden by setting false to *hand.visible* property, but that does not hide the overlay content.

The following example demonstrates how to create a hidden dialer hand having an overlay component on the hand.

``` qml
Dialer {
    DialerHand {
        id: selector
        hand.visible: false
        Rectangle {
            anchors.centerIn: parent
            width: height
            height: units.gu(3)
            radius: width / 2
            color: Theme.palette.normal.background
            antialiasing: true
            Label {
                text: Math.round(selector.value)
                anchors.centerIn: parent
            }
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
<td><p><span id="dialer-prop"></span><span class="qmlreadonly">read-only</span><span class="name">dialer</span> : <span class="type"><a href="Ubuntu.Components.Pickers.Dialer.md">Dialer</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the dialer instance the hand is assigned to. This is a helper property to enable access to the dialer component hosting the hand.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hand-prop"></span><span class="name">hand</span> : <span class="type"><a href="https://developer.ubuntu.comapps/qml/sdk-15.04/Ubuntu.Components.DialerHandGroup/">DialerHandGroup</a></span></p></td>
</tr>
</tbody>
</table>

The **hand.width** and **hand.height** properties define the size of the hand. The height of the hand must be in the \[0..dialer.handSpace\] range in order to have the hand displayed in the hand area, however there is no restriction applied on the size of the dialer hand. If no value is set, the width and height will be defined by the style.

**draggable** property specifies whether the hand is draggable or not. When set to not draggable, the hand is used only to indicate the given value. The default value is true.

**toCenterItem** property specifies whether the hand should be placed on the hand space (on the outer disk - false) or onto the center disk (inner disk - true). The default value is false, meaning the hand will be placed onto the hand space disk.

**visible** property specifies whether to show the hand marker or not. The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hand.draggable-prop"></span><span class="name">hand.draggable</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The **hand.width** and **hand.height** properties define the size of the hand. The height of the hand must be in the \[0..dialer.handSpace\] range in order to have the hand displayed in the hand area, however there is no restriction applied on the size of the dialer hand. If no value is set, the width and height will be defined by the style.

**draggable** property specifies whether the hand is draggable or not. When set to not draggable, the hand is used only to indicate the given value. The default value is true.

**toCenterItem** property specifies whether the hand should be placed on the hand space (on the outer disk - false) or onto the center disk (inner disk - true). The default value is false, meaning the hand will be placed onto the hand space disk.

**visible** property specifies whether to show the hand marker or not. The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hand.height-prop"></span><span class="name">hand.height</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The **hand.width** and **hand.height** properties define the size of the hand. The height of the hand must be in the \[0..dialer.handSpace\] range in order to have the hand displayed in the hand area, however there is no restriction applied on the size of the dialer hand. If no value is set, the width and height will be defined by the style.

**draggable** property specifies whether the hand is draggable or not. When set to not draggable, the hand is used only to indicate the given value. The default value is true.

**toCenterItem** property specifies whether the hand should be placed on the hand space (on the outer disk - false) or onto the center disk (inner disk - true). The default value is false, meaning the hand will be placed onto the hand space disk.

**visible** property specifies whether to show the hand marker or not. The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hand.toCenterItem-prop"></span><span class="name">hand.toCenterItem</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The **hand.width** and **hand.height** properties define the size of the hand. The height of the hand must be in the \[0..dialer.handSpace\] range in order to have the hand displayed in the hand area, however there is no restriction applied on the size of the dialer hand. If no value is set, the width and height will be defined by the style.

**draggable** property specifies whether the hand is draggable or not. When set to not draggable, the hand is used only to indicate the given value. The default value is true.

**toCenterItem** property specifies whether the hand should be placed on the hand space (on the outer disk - false) or onto the center disk (inner disk - true). The default value is false, meaning the hand will be placed onto the hand space disk.

**visible** property specifies whether to show the hand marker or not. The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hand.visible-prop"></span><span class="name">hand.visible</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The **hand.width** and **hand.height** properties define the size of the hand. The height of the hand must be in the \[0..dialer.handSpace\] range in order to have the hand displayed in the hand area, however there is no restriction applied on the size of the dialer hand. If no value is set, the width and height will be defined by the style.

**draggable** property specifies whether the hand is draggable or not. When set to not draggable, the hand is used only to indicate the given value. The default value is true.

**toCenterItem** property specifies whether the hand should be placed on the hand space (on the outer disk - false) or onto the center disk (inner disk - true). The default value is false, meaning the hand will be placed onto the hand space disk.

**visible** property specifies whether to show the hand marker or not. The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hand.width-prop"></span><span class="name">hand.width</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The **hand.width** and **hand.height** properties define the size of the hand. The height of the hand must be in the \[0..dialer.handSpace\] range in order to have the hand displayed in the hand area, however there is no restriction applied on the size of the dialer hand. If no value is set, the width and height will be defined by the style.

**draggable** property specifies whether the hand is draggable or not. When set to not draggable, the hand is used only to indicate the given value. The default value is true.

**toCenterItem** property specifies whether the hand should be placed on the hand space (on the outer disk - false) or onto the center disk (inner disk - true). The default value is false, meaning the hand will be placed onto the hand space disk.

**visible** property specifies whether to show the hand marker or not. The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="index-prop"></span><span class="qmlreadonly">read-only</span><span class="name">index</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The property holds the index of the hand. Note that this is not the child index of the dialer children, this represents the index of the [DialerHand](index.html) component added to the [dialer](#dialer-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="overlay-prop"></span><span class="qmldefault">default</span><span class="name">overlay</span> : <span class="type">list</span>&lt;<span class="type"><a href="../sdk-14.10/QtQml.QtObject.md">QtObject</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

The property holds the items that can be added on top of the hand. Note that these items will not be rotated together with the hand pointer and pointer visibility does not affect the overlay items visibility.

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

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-prop"></span><span class="name">value</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property holds the selected value the dialer hand points to.

